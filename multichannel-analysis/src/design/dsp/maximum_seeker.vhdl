library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity maximum_seeker is
    generic (
        ADC_NUMBER_OF_BITS : positive := 14
    );
    port (
        clk_i      : in std_logic;
        trigger_i  : in std_logic;
        adc_data_i : in std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
        peak_o     : out std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0)
    );
end entity maximum_seeker;

architecture rtl of maximum_seeker is
    type state_t is (BEFORE_MAXIMUM, AFRET_MAXIMUM);
    type max_t is record
        b : std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0); -- before maximum
        v : std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0); -- maximum value
        a : std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0); -- after maximum
    end record;

    signal state : state_t := BEFORE_MAXIMUM;
    signal max   : max_t   := (
    b => (others => '0'),
    v => (others => '0'),
    a => (others => '0')
    );

    signal data     : std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0);
    signal data_old : std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0) := (others => '0');

    signal peak : std_logic_vector(ADC_NUMBER_OF_BITS - 1 downto 0) := (others => '0');

    signal clk         : std_logic;
    signal trigger     : std_logic;
    signal trigger_old : std_logic;

begin

    clk     <= clk_i;
    trigger <= trigger_i;
    data    <= adc_data_i;
    peak_o  <= peak;

    process (clk)
        variable b, v, a : integer;
    begin
        if rising_edge(clk) then
            trigger_old <= trigger;
            data_old <= data;
            if trigger = '1' then
                if data > max.v then
                    max.v <= data;
                    max.b <= data_old;
                    state <= AFRET_MAXIMUM;
                elsif state = AFRET_MAXIMUM then
                    max.a <= data;
                    state <= BEFORE_MAXIMUM;
                end if;
            elsif trigger_old = '1' and trigger = '0' then
                b := to_integer(unsigned(max.b));
                v := to_integer(unsigned(max.v));
                a := to_integer(unsigned(max.a));
                --peak  <= std_logic_vector(to_unsigned(((b + v + a) / 3), ADC_NUMBER_OF_BITS));
                peak  <= std_logic_vector(to_unsigned(v, ADC_NUMBER_OF_BITS));
                max.b <= (others => '0');
                max.v <= (others => '0');
                max.a <= (others => '0');
            end if;
        end if;
    end process;

end architecture rtl;