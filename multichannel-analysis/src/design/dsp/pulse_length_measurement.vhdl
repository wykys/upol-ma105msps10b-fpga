library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pulse_length_measurement is
    generic (
        PULSE_LENGTH_NUMBER_OF_BITS : positive := 16
    );
    port (
        clk_i          : in std_logic;
        rst_i          : in std_logic;
        trigger_i      : in std_logic;
        pulse_length_o : out std_logic_vector(PULSE_LENGTH_NUMBER_OF_BITS - 1 downto 0)
    );
end entity pulse_length_measurement;

architecture rtl of pulse_length_measurement is
    signal clk          : std_logic;
    signal cnt          : unsigned(PULSE_LENGTH_NUMBER_OF_BITS - 1 downto 0) := (others => '0');
    signal pulse_length : unsigned(PULSE_LENGTH_NUMBER_OF_BITS - 1 downto 0) := (others => '0');
    signal trigger      : std_logic                                          := '0';
    signal trigger_old  : std_logic                                          := '0';
begin

    clk     <= clk_i;
    trigger <= trigger_i;

    process (clk) begin
        if rising_edge(clk) then
            trigger_old <= trigger;

            if rst_i = '1' then
                cnt <= (others => '0');
            elsif trigger = '1' then
                cnt <= cnt + 1;
            elsif trigger = '0' and trigger_old = '1' then
                pulse_length <= cnt;
                cnt          <= (others => '0');
            end if;
        end if;
    end process;

    pulse_length_o <= std_logic_vector(pulse_length);

end architecture rtl;