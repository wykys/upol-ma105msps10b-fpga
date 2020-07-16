-------------------------------------------------------------------------------
-- Obvod generuje validační signál,
-- pokud je signál aktivní, tak jsou
-- vyhodnocená data platná.
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity data_validator is
    port (
        clk_i     : in std_logic;
        rst_i     : in std_logic;
        trigger_i : in std_logic;
        valid_o   : out std_logic
    );
end entity data_validator;

architecture rtl of data_validator is
    signal trigger_old     : std_logic;
    signal trigger_negedge : std_logic;
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
    -- Generovaní validačního signálu.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Reset.
                ---------------------------------------------------------------
                valid_o <= '0';
            else
                ---------------------------------------------------------------
                -- Běžná činnost obvodu.
                ---------------------------------------------------------------
                if trigger_negedge = '1' then
                    valid_o <= '1';
                else
                    valid_o <= '0';
                end if;
            end if;
        end if;
    end process;

end architecture rtl;