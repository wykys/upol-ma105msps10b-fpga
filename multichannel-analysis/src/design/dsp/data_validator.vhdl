library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity data_validator is
    port (
        clk_i           : in std_logic;
        trigger_i       : in std_logic;
        data_is_ready_o : out std_logic
    );
end entity data_validator;

architecture rtl of data_validator is
    signal clk           : std_logic;
    signal trigger       : std_logic;
    signal trigger_old   : std_logic;
    signal data_is_ready : std_logic;
begin

    clk             <= clk_i;
    trigger         <= trigger_i;
    data_is_ready_o <= data_is_ready;

    process (clk) begin
        if rising_edge(clk) then
            if trigger = '0' and trigger_old = '1' then
                data_is_ready <= '1';
            else
                data_is_ready <= '0';
            end if;
            trigger_old <= trigger;
        end if;
    end process;

end architecture rtl;