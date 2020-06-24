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
        -- LED OUTPUT ---------------------------------------------------------
        -----------------------------------------------------------------------
        led_o : out std_logic_vector(1 to 4) := (others => '0')
    );
end entity top;

architecture rtl of top is
    signal clk : std_logic;
begin

    clk <= clk_i;

    led_driver_intance : entity work.led_driver
        port map(
            clk_i => clk,
            led_o => led_o
        );

end architecture rtl;