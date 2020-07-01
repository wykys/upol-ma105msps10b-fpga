-------------------------------------------------------------------------------
-- wykys 2019
-- module for memory contol
-- for SRAM IS61WV12816EDBLL
-- 128K * 16b = 2Mib
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sram_driver is
    generic (
        RAM_DATA_NUMBER_OF_BITS    : positive := 16;
        RAM_ADDRESS_NUMBER_OF_BITS : positive := 17
    );
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
        -- USER interface -----------------------------------------------------
        -----------------------------------------------------------------------
        address_i  : in std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0); -- Adresa.
        data_i     : in std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);    -- Data co budou zapsána.
        data_o     : out std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);   -- Přečtená data.
        data_vld_i : in std_logic;                                                 -- Vstupní data jsou validní.
        data_vld_o : out std_logic := '0';                                         -- Výstupní data jsou validní.
        ready_o    : out std_logic := '0';                                         -- Signalizace připravenosti.
        -----------------------------------------------------------------------
        -- RAM IO -------------------------------------------------------------
        -----------------------------------------------------------------------
        sram_ce_n_o : out std_logic := '1'; -- Aktivace RAM, aktivní v L.
        sram_oe_n_o : out std_logic := '1'; -- Povolení výstupu, aktivní v L.
        sram_we_n_o : out std_logic := '1'; -- Povolení zápisu, aktivní v L.
        sram_lb_n_o : out std_logic := '1'; -- Povolení nižšího bajtu, aktivní v L.
        sram_ub_n_o : out std_logic := '1'; -- Povolení vyššího bajtu, aktivní v L.
        -----------------------------------------------------------------------
        sram_address_o : out std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0);
        sram_data_io   : inout std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0) := (others => 'Z')
    );
end entity sram_driver;

architecture rtl of sram_driver is

    type ram_opcode_t is (
        WAIT_FOR_CMD,
        WRITE_DATA,
        READ_DATA
    );

    signal opcode      : ram_opcode_t := WAIT_FOR_CMD;
    signal opcode_old  : ram_opcode_t := WAIT_FOR_CMD;
    signal address_old : std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0);

begin

    sram_ce_n_o <= '0';
    sram_lb_n_o <= '0';
    sram_ub_n_o <= '0';

    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Reset je aktivní.
                ---------------------------------------------------------------
                opcode         <= WAIT_FOR_CMD;
                opcode_old     <= WAIT_FOR_CMD;
                sram_oe_n_o    <= '1';
                sram_we_n_o    <= '1';
                sram_data_io   <= (others => 'Z');
                sram_address_o <= (others => '0');
                ready_o        <= '0';

            else
                ---------------------------------------------------------------
                -- Obvod není resetován.
                ---------------------------------------------------------------
                opcode_old <= opcode;
                case opcode is
                    when WAIT_FOR_CMD =>
                        -------------------------------------------------------
                        -- Čekání na data k zápisu, nebo na změnu adresy.
                        -------------------------------------------------------
                        sram_oe_n_o    <= '1';
                        sram_we_n_o    <= '1';
                        sram_data_io   <= (others => 'Z');
                        sram_address_o <= address_i;

                        ready_o     <= '1';
                        address_old <= address_i;

                        if data_vld_i = '1' then
                            ---------------------------------------------------
                            -- Mám validní data k zápisu do RAM.
                            ---------------------------------------------------
                            opcode       <= WRITE_DATA;
                            ready_o      <= '0';
                            sram_data_io <= data_i;
                            data_vld_o   <= '0';

                        elsif address_old /= address_i or opcode_old = WRITE_DATA then
                            ---------------------------------------------------
                            -- Změna adresy, nebo předcházející zápis,
                            -- tedy chci číst obsah RAM.
                            ---------------------------------------------------
                            opcode      <= READ_DATA;
                            ready_o     <= '0';
                            sram_oe_n_o <= '0';
                            data_vld_o  <= '0';
                        end if;

                    when WRITE_DATA =>
                        -------------------------------------------------------
                        -- Zápis dat do RAM.
                        -------------------------------------------------------
                        opcode      <= WAIT_FOR_CMD;
                        sram_we_n_o <= '0';
                        ready_o     <= '1';

                    when READ_DATA =>
                        -------------------------------------------------------
                        -- Přečtení dat z RAM.
                        -------------------------------------------------------
                        opcode     <= WAIT_FOR_CMD;
                        data_o     <= sram_data_io;
                        data_vld_o <= '1';

                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

end architecture rtl;