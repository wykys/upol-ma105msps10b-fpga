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
        -- CLOCK --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- ADC ----------------------------------------------------------------
        -----------------------------------------------------------------------
        adc_ovrnd_i  : in std_logic;
        adc_sample_i : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        -----------------------------------------------------------------------
        -- OUTPUT SIGNALS -----------------------------------------------------
        -----------------------------------------------------------------------
        pulse_peak_o          : out std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        pulse_length_o        : out std_logic_vector(PULSE_LENGTH_NUMBER_OF_BITS - 1 downto 0);
        pulse_data_is_ready_o : out std_logic
    );
end entity dsp;

architecture rtl of dsp is

    signal clk     : std_logic;
    signal trigger : std_logic;

begin

    clk <= clk_i;

    trigger_inst : entity work.trigger
        generic map(
            ADC_NUMBER_OF_BITS => ADC_NUMBER_OF_BITS
        )
        port map(
            clk_i      => clk,
            adc_data_i => adc_sample_i,
            trigger_o  => trigger
        );

    maximum_seeker_inst : entity work.maximum_seeker
        generic map(
            ADC_NUMBER_OF_BITS => ADC_NUMBER_OF_BITS
        )
        port map(
            clk_i      => clk,
            trigger_i  => trigger,
            adc_data_i => adc_sample_i,
            peak_o     => pulse_peak_o
        );

    pulse_length_measurement_inst : entity work.pulse_length_measurement
        port map(
            clk_i          => clk,
            rst_i          => '0',
            trigger_i      => trigger,
            pulse_length_o => pulse_length_o
        );

    data_validator_inst : entity work.data_validator
        port map(
            clk_i           => clk,
            trigger_i       => trigger,
            data_is_ready_o => pulse_data_is_ready_o
        );

end architecture rtl;