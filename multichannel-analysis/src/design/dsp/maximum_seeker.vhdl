-------------------------------------------------------------------------------
-- Hledání maxima pulzu.
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity maximum_seeker is
    generic (
        ADC_NUMBER_OF_BITS : positive := 14
    );
    port (
        clk_i      : in std_logic;
        rst_i      : in std_logic;
        trigger_i  : in std_logic;
        adc_data_i : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        peak_o     : out std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0)
    );
end entity maximum_seeker;

architecture rtl of maximum_seeker is
    signal trigger_old     : std_logic;
    signal trigger_negedge : std_logic;

    signal max1 : std_logic_vector(adc_data_i'range);
    signal max2 : std_logic_vector(adc_data_i'range);

begin

    ---------------------------------------------------------------------------
    -- Detekce sestupné hrany trigger signálu.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Reset.
                ---------------------------------------------------------------
                trigger_old <= '0';
            else
                ---------------------------------------------------------------
                -- Uložení předchozí hodnoty.
                ---------------------------------------------------------------
                trigger_old <= trigger_i;
            end if;
        end if;
    end process;
    trigger_negedge <= trigger_old and not trigger_i;

    ---------------------------------------------------------------------------
    -- Detekce maxima.
    ---------------------------------------------------------------------------
    process (clk_i)
        variable sum : unsigned(ADC_NUMBER_OF_BITS downto 0);
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Reset.
                ---------------------------------------------------------------
                peak_o <= (others => '0');
                max1   <= (others => '0');
                max2   <= (others => '0');

            elsif trigger_i = '1' then
                ---------------------------------------------------------------
                -- Hledání maxima.
                ---------------------------------------------------------------
                if adc_data_i > max1 then
                    max2 <= max1;
                    max1 <= adc_data_i;
                end if;

            elsif trigger_negedge = '1' then
                ---------------------------------------------------------------
                -- Výpočet maxima.
                ---------------------------------------------------------------
                sum := unsigned("0" & max1) + unsigned("0" & max2);
                sum := sum / 2;
                peak_o <= std_logic_vector(sum(adc_data_i'range));
                max1   <= (others => '0');
                max2   <= (others => '0');
            end if;
        end if;
    end process;

end architecture rtl;