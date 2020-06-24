-------------------------------------------------------------------------------
-- LED driver
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity led_driver is
    port (
        -----------------------------------------------------------------------
        -- CLOCK --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- LED OUTPUT ---------------------------------------------------------
        -----------------------------------------------------------------------
        led_o : out std_logic_vector(1 to 4)
    );
end entity led_driver;

architecture rtl of led_driver is
    signal cnt : unsigned(26 downto 0) := (others => '0');
begin

    process (clk_i) begin
        if rising_edge(clk_i) then
            cnt      <= cnt + 1;
            led_o(1) <= cnt(cnt'high - 3);
            led_o(2) <= cnt(cnt'high - 2);
            led_o(3) <= cnt(cnt'high - 1);
            led_o(4) <= cnt(cnt'high);
        end if;
    end process;

end architecture rtl;