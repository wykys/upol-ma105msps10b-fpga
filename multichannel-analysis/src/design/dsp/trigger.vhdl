library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity trigger is
    generic (
        ADC_NUMBER_OF_BITS : positive := 14
    );
    port (
        clk_i      : in std_logic;
        adc_data_i : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        trigger_o  : out std_logic
    );
end entity trigger;

architecture rtl of trigger is
    signal clk     : std_logic;
    signal compare : std_logic := '0';

    function set_threshold (percent : natural) return natural is
    begin
        return natural(((2.0 ** real(ADC_NUMBER_OF_BITS)) - 1.0) * (real(percent)/100.0));
    end set_threshold;

    constant TRESHOLD_POSEDGE : natural := set_threshold(50); -- 12
    constant TRESHOLD_NEGEDGE : natural := set_threshold(20); -- 9
begin

    clk       <= clk_i;
    trigger_o <= compare;

    process (clk) begin
        if rising_edge(clk) then
            if adc_data_i > std_logic_vector(to_unsigned(TRESHOLD_POSEDGE, ADC_NUMBER_OF_BITS)) then
                compare <= '1';
            elsif adc_data_i < std_logic_vector(to_unsigned(TRESHOLD_NEGEDGE, ADC_NUMBER_OF_BITS)) then
                compare <= '0';
            end if;
        end if;
    end process;

end architecture rtl;