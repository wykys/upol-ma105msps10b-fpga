-------------------------------------------------------------------------------
-- Generování spouštěcího signálu,
-- během kterého bude analyzován pulz.
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity trigger is
    generic (
        ADC_NUMBER_OF_BITS : positive := 10
    );
    port (
        clk_i               : in std_logic;
        rst_i               : in std_logic;
        adc_data_i          : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        pulse_rising_lvl_i  : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        pulse_falling_lvl_i : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        trigger_o           : out std_logic
    );
end entity trigger;

architecture rtl of trigger is
    signal trigger          : std_logic;
    signal treshold_posedge : std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
    signal treshold_negedge : std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);

    ---------------------------------------------------------------------------
    -- Funkce přepočítá procentuální hodnotu prahu
    -- na odpovídající binární hodnotu.
    ---------------------------------------------------------------------------
    function set_threshold (percent : natural) return std_logic_vector is
    begin
        return std_logic_vector(to_unsigned(natural(((2.0 ** real(ADC_NUMBER_OF_BITS)) - 1.0) * (real(percent) / 100.0)), ADC_NUMBER_OF_BITS));
    end set_threshold;
begin

    ---------------------------------------------------------------------------
    -- Nastavení komparačních hladin.
    ---------------------------------------------------------------------------
    process (clk_i) begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Pokud je zařízení resetováno.
                -- nastav prahové hodnoty na výchozí.
                ---------------------------------------------------------------
                treshold_posedge <= set_threshold(55);
                treshold_negedge <= set_threshold(55);

            else
                ---------------------------------------------------------------
                -- Jinak aktualizuji komparační úrovně.
                ---------------------------------------------------------------
                treshold_posedge <= pulse_rising_lvl_i;
                treshold_negedge <= pulse_falling_lvl_i;
            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Generování masky pulzu (trigger), ve které bude pulz analyzován.
    ---------------------------------------------------------------------------
    process (clk_i) begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Pokud je zařízení resetováno.
                -- deaktivuj spouštění.
                ---------------------------------------------------------------
                trigger <= '0';

            elsif adc_data_i > treshold_posedge then
                ---------------------------------------------------------------
                -- Pokud hodnota vzorku z ADC překročí práh
                -- pro nástupnou hranu,
                -- aktivuji spouštěcí signál.
                ---------------------------------------------------------------
                trigger <= '1';

            elsif adc_data_i < treshold_negedge then
                ---------------------------------------------------------------
                -- Pokud hodnota vzorku z ADC klesne pod práh
                -- pro sestupnou hranu,
                -- deaktivuji spouštěcí signál.
                ---------------------------------------------------------------
                trigger <= '0';
            end if;
        end if;
    end process;
    trigger_o <= trigger;

end architecture rtl;