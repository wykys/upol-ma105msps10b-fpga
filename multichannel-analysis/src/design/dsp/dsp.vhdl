library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dsp is
    generic (
        ADC_NUMBER_OF_BITS          : positive := 10;
        PULSE_LENGTH_NUMBER_OF_BITS : positive := 16
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
        -- ADC  driver interface ----------------------------------------------
        -----------------------------------------------------------------------
        adc_ovrng_i : in std_logic;
        adc_data_i  : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        -----------------------------------------------------------------------
        -- Digital signal processing ------------------------------------------
        -----------------------------------------------------------------------
        pulse_rising_lvl_i  : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        pulse_falling_lvl_i : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        -----------------------------------------------------------------------
        pulse_peak_o   : out std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        pulse_length_o : out std_logic_vector(PULSE_LENGTH_NUMBER_OF_BITS - 1 downto 0);
        pulse_vld_o    : out std_logic
    );
end entity dsp;

architecture rtl of dsp is

    signal trigger : std_logic;

begin

    trigger_inst : entity work.trigger
        generic map(
            ADC_NUMBER_OF_BITS => ADC_NUMBER_OF_BITS
        )
        port map(
            clk_i               => clk_i,
            rst_i               => rst_i,
            adc_data_i          => adc_data_i,
            pulse_rising_lvl_i  => pulse_rising_lvl_i,
            pulse_falling_lvl_i => pulse_falling_lvl_i,
            trigger_o           => trigger
        );

    maximum_seeker_inst : entity work.maximum_seeker
        generic map(
            ADC_NUMBER_OF_BITS => ADC_NUMBER_OF_BITS
        )
        port map(
            clk_i      => clk_i,
            rst_i      => rst_i,
            trigger_i  => trigger,
            adc_data_i => adc_data_i,
            peak_o     => pulse_peak_o
        );

    pulse_length_measurement_inst : entity work.pulse_length_measurement
        port map(
            clk_i          => clk_i,
            rst_i          => rst_i,
            trigger_i      => trigger,
            pulse_length_o => pulse_length_o
        );

    data_validator_inst : entity work.data_validator
        port map(
            clk_i     => clk_i,
            rst_i     => rst_i,
            trigger_i => trigger,
            valid_o   => pulse_vld_o
        );

end architecture rtl;