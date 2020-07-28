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
        -- Clock --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- Reset --------------------------------------------------------------
        -----------------------------------------------------------------------
        rst_i : in std_logic;
        -----------------------------------------------------------------------
        -- Driver interface ---------------------------------------------------
        -----------------------------------------------------------------------
        address_i : in std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0); -- Adresa.
        data_i    : in std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);    -- Data co budou zapsána.
        data_o    : out std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);   -- Přečtená data.
        read_i    : in std_logic;                                                 -- Přečte data.
        write_i   : in std_logic;                                                 -- Zapíše data.
        -----------------------------------------------------------------------
        -- SRAM interface -----------------------------------------------------
        -----------------------------------------------------------------------
        sram_ce_n_o : out std_logic; -- Aktivace RAM, aktivní v L.
        sram_oe_n_o : out std_logic; -- Povolení výstupu, aktivní v L.
        sram_we_n_o : out std_logic; -- Povolení zápisu, aktivní v L.
        sram_lb_n_o : out std_logic; -- Povolení nižšího bajtu, aktivní v L.
        sram_ub_n_o : out std_logic; -- Povolení vyššího bajtu, aktivní v L.
        -----------------------------------------------------------------------
        sram_address_o : out std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0);
        sram_data_io   : inout std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0)
    );
end entity sram_driver;

architecture rtl of sram_driver is

    type ram_opcode_t is (
        WAIT_FOR_CMD,
        WRITE_DATA,
        READ_DATA
    );

    signal opcode : ram_opcode_t;

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
                sram_oe_n_o    <= '1';
                sram_we_n_o    <= '1';
                sram_data_io   <= (others => 'Z');
                sram_address_o <= (others => '0');

            else
                ---------------------------------------------------------------
                -- Běžná činnost obvodu.
                ---------------------------------------------------------------
                case opcode is
                    when WAIT_FOR_CMD =>
                        -------------------------------------------------------
                        -- Čekání na data k zápisu, nebo na změnu adresy.
                        -------------------------------------------------------
                        sram_oe_n_o    <= '1';
                        sram_we_n_o    <= '1';
                        sram_data_io   <= (others => 'Z');
                        sram_address_o <= address_i;

                        if write_i = '1' then
                            ---------------------------------------------------
                            -- Požadavek na zápis do paměti.
                            ---------------------------------------------------
                            opcode       <= WRITE_DATA;
                            sram_data_io <= data_i;

                        elsif read_i = '1' then
                            ---------------------------------------------------
                            -- Požadavek na čtení z paměti.
                            ---------------------------------------------------
                            opcode      <= READ_DATA;
                            sram_oe_n_o <= '0';

                        end if;

                    when WRITE_DATA =>
                        -------------------------------------------------------
                        -- Zápis dat do RAM.
                        -------------------------------------------------------
                        opcode      <= WAIT_FOR_CMD;
                        sram_we_n_o <= '0';

                    when READ_DATA =>
                        -------------------------------------------------------
                        -- Přečtení dat z RAM.
                        -------------------------------------------------------
                        opcode <= WAIT_FOR_CMD;
                        data_o <= sram_data_io;

                    when others =>
                        -------------------------------------------------------
                        -- Prázdný case kvůli varování syntetizátoru.
                        -------------------------------------------------------
                        null;
                end case;
            end if;
        end if;
    end process;

end architecture rtl;