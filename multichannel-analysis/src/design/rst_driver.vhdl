-------------------------------------------------------------------------------
-- Reset driver
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rst_driver is
    generic (
        RST_POWER_ON_CNT_NUMBER_OF_BITS : positive := 10
    );
    port (
        -----------------------------------------------------------------------
        -- Clock --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- Reset interface ----------------------------------------------------
        -----------------------------------------------------------------------
        nrst_i : in std_logic;
        rst_o : out std_logic
    );
end entity rst_driver;

architecture rtl of rst_driver is
    constant CNT_TOP    : unsigned(RST_POWER_ON_CNT_NUMBER_OF_BITS - 1 downto 0) := (others => '1');
    signal cnt          : unsigned(RST_POWER_ON_CNT_NUMBER_OF_BITS - 1 downto 0) := (others => '0');
    signal rst_pin      : std_logic                                              := '1';
    signal rst_power_on : std_logic                                              := '1';
begin
    ---------------------------------------------------------------------------
    -- Synchronizace vstupních signálů.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            rst_pin <= not nrst_i;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Automatický reset po spuštění.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_power_on = '1' then
                cnt <= cnt + 1;
                if cnt = CNT_TOP then
                    rst_power_on <= '0';
                end if;
            end if;

        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Výsledný reset.
    ---------------------------------------------------------------------------
    rst_o <= rst_power_on or rst_pin;
end architecture rtl;