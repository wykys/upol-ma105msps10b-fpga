library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity data_validator is
    port (
        clk_i     : in std_logic;
        trigger_i : in std_logic;
        valid_o   : out std_logic
    );
end entity data_validator;

architecture rtl of data_validator is
    signal trigger_old : std_logic;
begin

    process (clk_i) begin
        if rising_edge(clk_i) then
            if trigger_i = '0' and trigger_old = '1' then
                valid_o <= '1';
            else
                valid_o <= '0';
            end if;
            trigger_old <= trigger_i;
        end if;
    end process;

end architecture rtl;