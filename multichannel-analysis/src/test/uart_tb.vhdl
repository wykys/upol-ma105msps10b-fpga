-------------------------------------------------------------------------------
-- test bench to stimulate the SRAM driver
-- wykys 2019
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library STD;
use STD.env.all;

entity uart_tb is
end entity uart_tb;

architecture behavioral of uart_tb is

    constant CLK_FREQUENCY   : natural := 50; -- [MHz]
    constant CLK_HALF_PERIOD : time    := ((1 us) / CLK_FREQUENCY) / 2;

    ---------------------------------------------------------------------------
    -- CLOCK ------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal clk : std_logic := '0';
    ---------------------------------------------------------------------------
    -- UART ----------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal uart_rx : std_logic;
    signal uart_tx : std_logic;
    ---------------------------------------------------------------------------
    -- TRANSMIT ---------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal data_is_processed : std_logic;
    signal data_is_ready     : std_logic := '1';
    signal data              : std_logic_vector(15 downto 0) := (others => '0');

begin

    dut : entity work.uart
        generic map(
            FREQUENCY           => 50000000,
            BAUDRATE            => 115200,
            NUMBER_OF_DATA_BITS => 8
        )
        port map(
            clk_i               => clk,
            uart_rx_i           => uart_rx,
            uart_tx_o           => uart_tx,
            data_is_processed_o => data_is_processed,
            data_is_ready_i     => data_is_ready,
            data_i              => data
        );

    stim : process begin
        for i in 0 to 10000 loop
            clk <= '0';
            wait for CLK_HALF_PERIOD;
            clk <= '1';
            wait for CLK_HALF_PERIOD;
        end loop;

    end process stim;

end architecture behavioral;