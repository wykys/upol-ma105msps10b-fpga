-------------------------------------------------------------------------------
-- Test bench to stimulate the SPI driver
-- wykys 2019
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library STD;
use STD.env.all;

entity spi_driver_tb is
end entity spi_driver_tb;

architecture behavioral of spi_driver_tb is

    constant CLK_FREQUENCY   : natural := 100; -- [MHz]
    constant CLK_HALF_PERIOD : time    := ((1 us) / CLK_FREQUENCY) / 2;

    ---------------------------------------------------------------------------
    -- CLOCK ------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal clk : std_logic := '0';
    ---------------------------------------------------------------------------
    -- RESET ------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal rst : std_logic := '0';
    ---------------------------------------------------------------------------
    -- SPI interface ----------------------------------------------------------
    ---------------------------------------------------------------------------
    signal nss : std_logic := '0';
    signal sck : std_logic;
    signal miso : std_logic;
    signal mosi : std_logic := '1';
    ---------------------------------------------------------------------------
    -- USER interface ---------------------------------------------------------
    ---------------------------------------------------------------------------
    signal data_in_valid  : std_logic := '1';
    signal data_out_valid : std_logic;

    signal data_in  : std_logic_vector(7 downto 0) := x"AA";
    signal data_out : std_logic_vector(7 downto 0);

    signal ready : std_logic;


begin

    dut : entity work.spi_driver
        port map(
            clk_i      => clk,
            rst_i      => rst,
            nss_i      => nss,
            sck_i      => sck,
            mosi_i     => mosi,
            miso_o     => miso,
            data_i     => data_in,
            data_o     => data_out,
            data_vld_i => data_in_valid,
            data_vld_o => data_out_valid,
            ready_o    => ready
        );

    stim_clk : process begin
        clk <= '0';
        wait for CLK_HALF_PERIOD;
        clk <= '1';
        wait for CLK_HALF_PERIOD;
    end process stim_clk;

    stim_sck : process begin
        for i in 0 to 100 loop
            sck <= '0';
            wait for CLK_HALF_PERIOD*10;
            sck <= '1';
            wait for CLK_HALF_PERIOD*10;
        end loop;
    end process stim_sck;

    stim_nss : process begin
        nss <= '1';
        wait for CLK_HALF_PERIOD*10*8*2;
        nss <= '0';
        wait for CLK_HALF_PERIOD*10*8*2*42;
    end process stim_nss;

end architecture behavioral;