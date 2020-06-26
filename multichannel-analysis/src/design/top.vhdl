-------------------------------------------------------------------------------
-- Multichannel analysis
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top is
    port (
        -----------------------------------------------------------------------
        -- CLOCK --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- RESET active in low ------------------------------------------------
        -----------------------------------------------------------------------
        nrst_i : in std_logic;
        -----------------------------------------------------------------------
        -- SPI ----------------------------------------------------------------
        -----------------------------------------------------------------------
        nss_i  : in std_logic;
        sck_i  : in std_logic;
        mosi_i : in std_logic;
        miso_o : out std_logic;
        -----------------------------------------------------------------------
        -- LED OUTPUT ---------------------------------------------------------
        -----------------------------------------------------------------------
        led_o : out std_logic_vector(1 to 4) := (others => '0')
    );
end entity top;

architecture rtl of top is
    signal clk : std_logic;
    signal rst : std_logic;
begin

    clk <= clk_i;
    rst <= not nrst_i;

    led_driver_intance : entity work.led_driver
        port map(
            clk_i => clk,
            led_o => led_o
        );

    spi_driver_intance : entity work.spi_driver
        port map(
            clk_i      => clk,
            rst_i      => rst,
            nss_i      => nss_i,
            sck_i      => sck_i,
            mosi_i     => mosi_i,
            miso_o     => miso_o,
            data_i     => x"AA",
            data_o     => open,
            data_vld_i => '1',
            data_vld_o => open,
            ready_o    => open
        );

end architecture rtl;