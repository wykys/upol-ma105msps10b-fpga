-------------------------------------------------------------------------------
-- wykys 2019
-- module for memory contol
-- for SRAM IS61WV12816EDBLL
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ram_driver is
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
        -- CONTROL ------------------------------------------------------------
        -----------------------------------------------------------------------
        control_read_i       : in std_logic;
        control_write_i      : in std_logic;
        control_address_i    : in std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0);
        control_data_write_i : in std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);
        control_data_read_o  : out std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);
        -----------------------------------------------------------------------
        -- RAM IO -------------------------------------------------------------
        -----------------------------------------------------------------------
        ram_ce_n_o : out std_logic := '1';
        ram_oe_n_o : out std_logic := '1';
        ram_we_n_o : out std_logic := '1';
        ram_lb_n_o : out std_logic := '1';
        ram_ub_n_o : out std_logic := '1';
        -----------------------------------------------------------------------
        ram_address_o : out std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0);
        ram_data_io   : inout std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0) := (others => 'Z')
    );
end entity ram_driver;

architecture rtl of ram_driver is

    type ram_opcode_t is (WAIT_FOR_CMD, WRITE_DATA, READ_DATA);
    signal opcode : ram_opcode_t := WAIT_FOR_CMD;

begin

    ram_ce_n_o <= '0'; -- chip enable in L, in H standby mode
    ram_lb_n_o <= '0';
    ram_ub_n_o <= '0';

    process (clk_i) begin
        if rising_edge(clk_i) then

            case opcode is
                when WRITE_DATA =>
                    opcode     <= WAIT_FOR_CMD;
                    ram_we_n_o <= '0';

                when READ_DATA =>
                    opcode         <= WAIT_FOR_CMD;
                    control_data_read_o <= ram_data_io;

                when others =>
                    ram_oe_n_o    <= '1';
                    ram_we_n_o    <= '1';
                    ram_address_o <= control_address_i;
                    ram_data_io   <= (others => 'Z');

                    if control_write_i = '1' then
                        -- write to memory ------------------------------------
                        opcode      <= WRITE_DATA;
                        ram_data_io <= control_data_write_i;
                    elsif control_read_i = '1' then
                        -- read from memory -----------------------------------
                        opcode     <= READ_DATA;
                        ram_oe_n_o <= '0';
                    end if;

            end case;

        end if;
    end process;
end architecture rtl;