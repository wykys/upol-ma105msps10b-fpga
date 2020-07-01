-------------------------------------------------------------------------------
-- Control
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity control is
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
        sram_address_o  : out std_logic_vector(16 downto 0); -- Adresa.
        sram_data_o     : out std_logic_vector(15 downto 0); -- Data co budou zapsána.
        sram_data_i     : in std_logic_vector(15 downto 0);  -- Přečtená data.
        sram_data_vld_i : in std_logic;                      -- Vstupní data jsou validní.
        sram_data_vld_o : out std_logic := '0';              -- Výstupní data jsou validní.
        sram_ready_i    : in std_logic;                      -- Signalizace připravenosti.
        -----------------------------------------------------------------------
        -- ADC USER interface -------------------------------------------------
        -----------------------------------------------------------------------
        adc_data_i : in std_logic_vector(15 downto 0); -- Vzorek
        -----------------------------------------------------------------------
        -- LED ----------------------------------------------------------------
        -----------------------------------------------------------------------
        led_o : out std_logic_vector(1 to 4) := (others => '0') -- Aktivní v H.
    );
end entity control;

architecture rtl of control is

    constant SPI_CMD_UNKNOWN           : std_logic_vector(7 downto 0) := x"00";
    constant SPI_CMD_MEASUREMENT_START : std_logic_vector(7 downto 0) := x"01";
    constant SPI_CMD_MEASUREMENT_STOP  : std_logic_vector(7 downto 0) := x"02";
    constant SPI_CMD_MEMORY_CLEAR      : std_logic_vector(7 downto 0) := x"03";
    constant SPI_CMD_MEMORY_READ       : std_logic_vector(7 downto 0) := x"04";
    constant SPI_CMD_GET_STATE         : std_logic_vector(7 downto 0) := x"05";

    type spi_byte_order_t is (
        SPI_BYTE_ORDER_CMD,
        SPI_BYTE_ORDER_FIRST,
        SPI_BYTE_ORDER_SECOND,
        SPI_BYTE_ORDER_OTHERS
    );

    type cmd_t is (
        CMD_NOP,
        CMD_CLEAN,
        CMD_READ,
        CMD_MEASURE,
        CMD_GET_STATE
    );
    signal cmd   : cmd_t     := CMD_NOP;
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

    signal ram_start_read_address : std_logic_vector(sram_address_o'range);
    signal ram_data               : std_logic_vector(sram_data_o'range);

    type opcode_t is (
        OPCODE_MEASUREMENT_INIT,
        OPCODE_MEASUREMENT_PROCESS,
        OPCODE_MEASUREMENT_COMPLETE,
        -----------------------------------------------------------------------
        OPCODE_READ_INIT,
        OPCODE_READ_WAIT_FOR_DATA,
        OPCODE_READ_SEND_MSB,
        OPCODE_READ_SEND_LSB,
        -----------------------------------------------------------------------
        OPCODE_NOP
    );

    signal opcode : opcode_t := OPCODE_NOP;

begin

    led_o(1) <= adc_data_i(15);
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

                    when SPI_CMD_MEASUREMENT_STOP =>
                        if spi_byte_order = SPI_BYTE_ORDER_CMD then
                            spi_new_cmd <= '1';
                            cmd         <= CMD_NOP;
                        end if;

                    when SPI_CMD_MEMORY_READ =>
                        if spi_byte_order = SPI_BYTE_ORDER_SECOND then
                            spi_new_cmd                         <= '1';
                            cmd                                 <= CMD_READ;
                            ram_start_read_address              <= (others => '0');
                            ram_start_read_address(15 downto 8) <= spi_byte_first;
                            ram_start_read_address(7 downto 0)  <= spi_byte_second;
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
            spi_data_vld_o <= '0';

            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Pokud je aktivní reset.
                ---------------------------------------------------------------
                ready           <= '1';
                opcode          <= OPCODE_NOP;
                sram_data_o     <= (others => '0');
                sram_address_o  <= (others => '0');
                sram_data_vld_o <= '0';

            elsif spi_new_cmd = '1' then
                ---------------------------------------------------------------
                -- Pokud přijde nový příkaz.
                ---------------------------------------------------------------
                if spi_byte_cmd /= SPI_CMD_GET_STATE then
                    -----------------------------------------------------------
                    -- Pokud nejde o zjištění aktuálního stavu.
                    -----------------------------------------------------------
                    sram_data_vld_o <= '0';
                end if;

                ---------------------------------------------------------------
                -- Inicializuji stavový automat pro danný příkaz.
                ---------------------------------------------------------------
                case cmd is
                    when CMD_READ =>
                        ready  <= '0';
                        opcode <= OPCODE_READ_INIT;

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
                        opcode <= OPCODE_NOP;

                end case;
            end if;

            -------------------------------------------------------------------
            -- Příkazový stavový automat.
            -- Vykonává jednotlivé příkazy.
            -------------------------------------------------------------------
            case opcode is
                when OPCODE_MEASUREMENT_INIT =>
                    -----------------------------------------------------------
                    -- Inicializace měření.
                    -----------------------------------------------------------
                    sram_address_cnt <= (others => '0');
                    opcode           <= OPCODE_MEASUREMENT_PROCESS;

                when OPCODE_MEASUREMENT_PROCESS =>
                    -----------------------------------------------------------
                    -- Vlastní měření.
                    -----------------------------------------------------------
                    if sram_ready_i = '1' then
                        if sram_address_cnt /= SRAM_ADDRESS_MAX then
                            sram_address_cnt <= sram_address_cnt + 1;
                            sram_address_o   <= std_logic_vector(sram_address_cnt);
                            sram_data_o      <= std_logic_vector(sram_address_cnt(sram_data_o'range));
                            sram_data_vld_o  <= '1';
                        else
                            ready  <= '1';
                            opcode <= OPCODE_NOP;
                        end if;
                    end if;

                when OPCODE_READ_INIT =>
                    -----------------------------------------------------------
                    -- Inicializace čtení.
                    -----------------------------------------------------------
                    sram_address_o   <= ram_start_read_address;
                    sram_address_cnt <= unsigned(ram_start_read_address) + 1;
                    opcode           <= OPCODE_READ_WAIT_FOR_DATA;

                when OPCODE_READ_WAIT_FOR_DATA =>
                    -----------------------------------------------------------
                    -- Čekání na vybavení dat z RAM.
                    -----------------------------------------------------------
                    if sram_data_vld_i = '1' then
                        ram_data         <= sram_data_i;
                        sram_address_o   <= std_logic_vector(sram_address_cnt);
                        sram_address_cnt <= sram_address_cnt + 1;
                        opcode           <= OPCODE_READ_SEND_MSB;
                    end if;

                when OPCODE_READ_SEND_MSB =>
                    -----------------------------------------------------------
                    -- Odeslání významějšího bajtu s 16b slova RAM.
                    -----------------------------------------------------------
                    if spi_ready_i = '1' then
                        spi_data_o     <= ram_data(15 downto 8);
                        spi_data_o     <= x"AA";
                        spi_data_vld_o <= '1';
                        opcode         <= OPCODE_READ_SEND_LSB;
                    end if;

                when OPCODE_READ_SEND_LSB =>
                    -----------------------------------------------------------
                    -- Odeslání méně významného bajtu s 16b slova RAM.
                    -----------------------------------------------------------
                    if spi_ready_i = '1' then
                        spi_data_o     <= ram_data(7 downto 0);
                        spi_data_o     <= (others => '0');
                        spi_data_vld_o <= '1';
                        opcode         <= OPCODE_READ_WAIT_FOR_DATA;
                    end if;

                when others =>
                    -----------------------------------------------------------
                    -- Žádná operace.
                    -----------------------------------------------------------
                    null;
            end case;

        end if;
    end process;

end architecture rtl;