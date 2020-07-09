-------------------------------------------------------------------------------
-- Control
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.spi_cmd.all;

entity brain is
    port (
        -----------------------------------------------------------------------
        -- CLOCK --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- RESET active in hight ----------------------------------------------
        -----------------------------------------------------------------------
        rst_i : in std_logic;
        -----------------------------------------------------------------------
        -- SPI driver interface -----------------------------------------------
        -----------------------------------------------------------------------
        spi_data_o     : out std_logic_vector(7 downto 0); -- Data co budou vysílána.
        spi_data_i     : in std_logic_vector(7 downto 0);  -- Přijatá data.
        spi_data_vld_o : out std_logic;                    -- Vstupní data jsou validní.
        spi_data_vld_i : in std_logic;                     -- Výstupní data jsou validní.
        spi_ready_i    : in std_logic;                     -- Vstupní data byla přesunuta do bufferu.
        spi_first_i    : in std_logic;                     -- Příznak prvního bytu v rámci.
        -----------------------------------------------------------------------
        -- RAM USER interface -------------------------------------------------
        -----------------------------------------------------------------------
        sram_address_o : out std_logic_vector(16 downto 0); -- Adresa.
        sram_data_o    : out std_logic_vector(15 downto 0); -- Data co budou zapsána.
        sram_data_i    : in std_logic_vector(15 downto 0);  -- Přečtená data.
        sram_read_o    : out std_logic;                     -- Přečíst z paměti.
        sram_write_o   : out std_logic;                     -- Zapsat do paměti.
        -----------------------------------------------------------------------
        -- ADC USER interface -------------------------------------------------
        -----------------------------------------------------------------------
        adc_data_i  : in std_logic_vector(9 downto 0); -- Vzorek
        adc_ovrng_i : in std_logic;                    -- Mimo rozsah.
        -----------------------------------------------------------------------
        -- DSP ----------------------------------------------------------------
        -----------------------------------------------------------------------
        pulse_vld_i  : in std_logic;
        pulse_peak_i : in std_logic_vector(9 downto 0);
        -----------------------------------------------------------------------
        -- LED ----------------------------------------------------------------
        -----------------------------------------------------------------------
        led_o : out std_logic_vector(1 to 4) := (others => '0') -- Aktivní v H.
    );
end entity brain;

architecture rtl of brain is

    type spi_byte_order_t is (
        SPI_BYTE_ORDER_CMD,
        SPI_BYTE_ORDER_FIRST,
        SPI_BYTE_ORDER_SECOND,
        SPI_BYTE_ORDER_OTHERS
    );

    type cmd_t is (
        CMD_NOP,
        CMD_ERASE,
        CMD_READ,
        CMD_MEASURE,
        CMD_GET_STATE
    );
    signal cmd : cmd_t := CMD_NOP;
    signal ready : std_logic := '1';

    signal spi_new_data    : std_logic                    := '0';
    signal spi_new_cmd     : std_logic                    := '0';
    signal spi_byte_order  : spi_byte_order_t             := SPI_BYTE_ORDER_CMD;
    signal spi_byte_cmd    : std_logic_vector(7 downto 0) := (others => '0');
    signal spi_byte_first  : std_logic_vector(7 downto 0) := (others => '0');
    signal spi_byte_second : std_logic_vector(7 downto 0) := (others => '0');
    signal spi_byte_others : std_logic_vector(7 downto 0) := (others => '0');

    signal sram_address_cnt   : unsigned(sram_address_o'range) := (others => '0');
    constant SRAM_ADDRESS_MAX : unsigned(sram_address_o'range) := (others => '1');

    signal sram_start_read_address : std_logic_vector(sram_address_o'range);
    signal sram_data               : std_logic_vector(sram_data_o'range);

    type opcode_t is (
        OPCODE_MEASUREMENT_INIT,
        OPCODE_MEASUREMENT_WAIT_FOR_PULSE,
        OPCODE_MEASUREMENT_PROCESS,
        -----------------------------------------------------------------------
        OPCODE_MEMORY_ERASE_INIT,
        OPCODE_MEMORY_ERASE_PROCESS,
        -----------------------------------------------------------------------
        OPCODE_MEMORY_READ_INIT,
        OPCODE_MEMORY_READ_WAIT_FOR_DATA,
        OPCODE_MEMORY_READ_SEND_MSB,
        OPCODE_MEMORY_READ_SEND_LSB,
        -----------------------------------------------------------------------
        OPCODE_SRAM_READ,
        OPCODE_SRAM_READ_WAIT_FOR_DATA_STEP1,
        OPCODE_SRAM_READ_WAIT_FOR_DATA_STEP2,
        OPCODE_SRAM_READ_COMPLETE,
        -----------------------------------------------------------------------
        OPCODE_SRAM_WRITE,
        -----------------------------------------------------------------------
        OPCODE_NOP
    );

    signal opcode      : opcode_t;
    signal opcode_jump : opcode_t;

begin

    led_o(1) <= adc_ovrng_i;
    ---------------------------------------------------------------------------
    -- SPI získání dat.
    -- Přijímá data a podle jejich pořadí v rámci, je přiřazuje do příslušných
    -- signálů k dalšímu zpracování.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            -------------------------------------------------------------------
            -- Nastavení výchozích hodnot signálů.
            -------------------------------------------------------------------
            spi_new_data <= '0';

            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Pokud je aktivní reset.
                ---------------------------------------------------------------
                spi_byte_cmd   <= SPI_CMD_UNKNOWN;
                spi_byte_order <= SPI_BYTE_ORDER_CMD;

            elsif spi_data_vld_i = '1' then
                spi_new_data <= '1';
                if spi_first_i = '1' then
                    spi_byte_order <= SPI_BYTE_ORDER_CMD;
                    spi_byte_cmd   <= spi_data_i;
                else
                    case spi_byte_order is
                        when SPI_BYTE_ORDER_CMD =>
                            spi_byte_order <= SPI_BYTE_ORDER_FIRST;
                            spi_byte_first <= spi_data_i;

                        when SPI_BYTE_ORDER_FIRST =>
                            spi_byte_order  <= SPI_BYTE_ORDER_SECOND;
                            spi_byte_second <= spi_data_i;

                        when others =>
                            spi_byte_order  <= SPI_BYTE_ORDER_OTHERS;
                            spi_byte_others <= spi_data_i;
                    end case;
                end if;
            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- SPI kontrola příkazu.
    -- Pokud je příkaz kompletní vygeneruje pulz k jeho zpracování.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            -------------------------------------------------------------------
            -- Nastavení výchozích hodnot signálů.
            -------------------------------------------------------------------
            spi_new_cmd <= '0';

            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Pokud je aktivní reset.
                ---------------------------------------------------------------
                cmd <= CMD_NOP;

            elsif spi_new_data = '1' then
                ---------------------------------------------------------------
                -- Pokud přišla nová data.
                ---------------------------------------------------------------
                case spi_byte_cmd is

                    when SPI_CMD_MEASUREMENT_START =>
                        if spi_byte_order = SPI_BYTE_ORDER_CMD then
                            spi_new_cmd <= '1';
                            cmd         <= CMD_MEASURE;
                        end if;

                    when SPI_CMD_STOP =>
                        if spi_byte_order = SPI_BYTE_ORDER_CMD then
                            spi_new_cmd <= '1';
                            cmd         <= CMD_NOP;
                        end if;

                    when SPI_CMD_MEMORY_ERASE =>
                        if spi_byte_order = SPI_BYTE_ORDER_CMD then
                            spi_new_cmd <= '1';
                            cmd         <= CMD_ERASE;
                        end if;

                    when SPI_CMD_MEMORY_READ =>
                        if spi_byte_order = SPI_BYTE_ORDER_SECOND then
                            spi_new_cmd                          <= '1';
                            cmd                                  <= CMD_READ;
                            sram_start_read_address              <= (others => '0');
                            sram_start_read_address(15 downto 8) <= spi_byte_first;
                            sram_start_read_address(7 downto 0)  <= spi_byte_second;
                        end if;

                    when SPI_CMD_GET_STATE =>
                        if spi_byte_order = SPI_BYTE_ORDER_CMD then
                            spi_new_cmd <= '1';
                            cmd         <= CMD_GET_STATE;
                        end if;

                    when others =>
                        null;

                end case;

            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Zpracování příkazu.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            -------------------------------------------------------------------
            -- Výhozí hodnoty signálů.
            -------------------------------------------------------------------
            sram_read_o    <= '0';
            sram_write_o   <= '0';
            spi_data_vld_o <= '0';

            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Pokud je aktivní reset.
                ---------------------------------------------------------------
                ready          <= '1';
                opcode         <= OPCODE_NOP;
                opcode_jump    <= OPCODE_NOP;
                sram_data_o    <= (others => '0');
                sram_address_o <= (others => '0');
                spi_data_o     <= (others => '0');
                spi_data_vld_o <= '0';

            elsif spi_new_cmd = '1' then
                ---------------------------------------------------------------
                -- Pokud přijde nový příkaz.
                -- Inicializuji stavový automat pro danný příkaz.
                ---------------------------------------------------------------
                case cmd is
                    when CMD_ERASE =>
                        ready  <= '0';
                        opcode <= OPCODE_MEMORY_ERASE_INIT;

                    when CMD_READ =>
                        ready  <= '0';
                        opcode <= OPCODE_MEMORY_READ_INIT;

                    when CMD_MEASURE =>
                        ready  <= '0';
                        opcode <= OPCODE_MEASUREMENT_INIT;

                    when CMD_GET_STATE =>
                        -------------------------------------------------------
                        -- Odeslání stavu zařízení:
                        --                          0 - čekání na příkaz
                        --                          1 - zařízení pracuje
                        -------------------------------------------------------
                        if spi_ready_i = '1' then
                            if ready = '1' then
                                spi_data_o <= x"01";
                            else
                                spi_data_o <= x"00";
                            end if;
                            spi_data_vld_o <= '1';
                        end if;

                    when others =>
                        -------------------------------------------------------
                        -- CMD: Stop.
                        -------------------------------------------------------
                        ready  <= '1';
                        opcode <= OPCODE_NOP;

                end case;

            else
                ---------------------------------------------------------------
                -- Příkazový stavový automat.
                -- Vykonává jednotlivé příkazy.
                ---------------------------------------------------------------
                case opcode is
                    when OPCODE_MEASUREMENT_INIT =>
                        -------------------------------------------------------
                        -- Inicializace měření.
                        -------------------------------------------------------
                        opcode <= OPCODE_MEASUREMENT_WAIT_FOR_PULSE;

                    when OPCODE_MEASUREMENT_WAIT_FOR_PULSE =>
                        -------------------------------------------------------
                        -- čekání na puls
                        -------------------------------------------------------
                        if pulse_vld_i = '1' then
                            sram_address_o                     <= (others => '0');
                            sram_address_o(pulse_peak_i'range) <= pulse_peak_i;
                            opcode                             <= OPCODE_SRAM_READ;
                            opcode_jump                        <= OPCODE_MEASUREMENT_PROCESS;
                        end if;

                    when OPCODE_MEASUREMENT_PROCESS =>
                        -------------------------------------------------------
                        -- Vyhodnocení hodnoty čítače amplitud.
                        -------------------------------------------------------
                        if sram_data /= std_logic_vector(to_unsigned(1023, sram_data'length)) then
                            ---------------------------------------------------
                            -- Pokud nehrozí přetečeníp okračuj v měření.
                            ---------------------------------------------------
                            sram_data_o <= std_logic_vector(unsigned(sram_data) + 1);
                            opcode      <= OPCODE_SRAM_WRITE;
                            opcode_jump <= OPCODE_MEASUREMENT_WAIT_FOR_PULSE;
                        else
                            ---------------------------------------------------
                            -- Jinak ukončit měření.
                            ---------------------------------------------------
                            ready  <= '1';
                            opcode <= OPCODE_NOP;
                        end if;

                    when OPCODE_MEMORY_ERASE_INIT =>
                        -------------------------------------------------------
                        -- Inicializace mazání.
                        -------------------------------------------------------
                        sram_address_cnt <= (others => '0');
                        opcode           <= OPCODE_MEMORY_ERASE_PROCESS;
                        opcode_jump      <= OPCODE_MEMORY_ERASE_PROCESS;

                    when OPCODE_MEMORY_ERASE_PROCESS =>
                        -------------------------------------------------------
                        -- Vlastní mazání.
                        -------------------------------------------------------
                        if sram_address_cnt /= SRAM_ADDRESS_MAX then
                            sram_address_cnt <= sram_address_cnt + 1;
                            sram_address_o   <= std_logic_vector(sram_address_cnt);
                            sram_data_o      <= (others => '0');
                            opcode           <= OPCODE_SRAM_WRITE;
                        else
                            ready  <= '1';
                            opcode <= OPCODE_NOP;
                        end if;

                    when OPCODE_MEMORY_READ_INIT =>
                        -------------------------------------------------------
                        -- Inicializace čtení.
                        -------------------------------------------------------
                        opcode           <= OPCODE_MEMORY_READ_WAIT_FOR_DATA;
                        opcode_jump      <= OPCODE_MEMORY_READ_SEND_MSB;
                        sram_address_cnt <= unsigned(sram_start_read_address);

                    when OPCODE_MEMORY_READ_WAIT_FOR_DATA =>
                        -------------------------------------------------------
                        -- Čekání na vybavení dat z RAM.
                        -------------------------------------------------------
                        sram_address_o   <= std_logic_vector(sram_address_cnt);
                        sram_address_cnt <= sram_address_cnt + 1;
                        opcode           <= OPCODE_SRAM_READ;

                    when OPCODE_MEMORY_READ_SEND_MSB =>
                        -------------------------------------------------------
                        -- Odeslání významějšího bajtu s 16b slova RAM.
                        -------------------------------------------------------
                        if spi_ready_i = '1' then
                            spi_data_o     <= sram_data(15 downto 8);
                            spi_data_vld_o <= '1';
                            opcode         <= OPCODE_MEMORY_READ_SEND_LSB;
                        end if;

                    when OPCODE_MEMORY_READ_SEND_LSB =>
                        -------------------------------------------------------
                        -- Odeslání méně významného bajtu s 16b slova RAM.
                        -------------------------------------------------------
                        if spi_ready_i = '1' then
                            spi_data_o     <= sram_data(7 downto 0);
                            spi_data_vld_o <= '1';
                            opcode         <= OPCODE_MEMORY_READ_WAIT_FOR_DATA;
                        end if;

                    when OPCODE_SRAM_READ =>
                        -------------------------------------------------------
                        -- Čtení ze SRAM.
                        -- Odešle řícící signál pro řadič paměti.
                        -- Tento stav předpokládá, že v předchozím hodinovém
                        -- cyklu byla nastavena adresa čtení na sram_address_o.
                        -------------------------------------------------------
                        sram_read_o <= '1';
                        opcode      <= OPCODE_SRAM_READ_WAIT_FOR_DATA_STEP1;

                    when OPCODE_SRAM_READ_WAIT_FOR_DATA_STEP1 =>
                        -------------------------------------------------------
                        -- Čekání na stabilní data krok 1.
                        -------------------------------------------------------
                        opcode <= OPCODE_SRAM_READ_WAIT_FOR_DATA_STEP2;

                    when OPCODE_SRAM_READ_WAIT_FOR_DATA_STEP2 =>
                        -------------------------------------------------------
                        -- Čekání na stabilní data krok 2.
                        -------------------------------------------------------
                        opcode <= OPCODE_SRAM_READ_COMPLETE;

                    when OPCODE_SRAM_READ_COMPLETE =>
                        -------------------------------------------------------
                        -- Přečtení dat a odskok na požadovaný stav.
                        -------------------------------------------------------
                        sram_data <= sram_data_i;
                        opcode    <= opcode_jump;

                    when OPCODE_SRAM_WRITE =>
                        -------------------------------------------------------
                        -- Zápis do SRAM.
                        -- Tento stav předpokládá, že v předchozím hodinovém
                        -- cyklu byly nastaveny sram_data_o, sram_address_o.
                        -- Po dokončení zápisu je proveden odskok
                        -- na požadovaný stav.
                        -------------------------------------------------------
                        sram_write_o <= '1';
                        opcode       <= opcode_jump;

                    when others =>
                        -------------------------------------------------------
                        -- Žádná operace.
                        -------------------------------------------------------
                        null;
                end case;

            end if;
        end if;
    end process;

end architecture rtl;