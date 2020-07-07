-------------------------------------------------------------------------------
-- ADC driver for AD9214
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adc_driver is
    generic (
        ADC_DATA_NUMBER_OF_BITS : positive := 10
    );
    port (
        -----------------------------------------------------------------------
        -- CLOCK --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- ADC IO -------------------------------------------------------------
        -----------------------------------------------------------------------
        adc_ovrng_i : in std_logic                                              := '0';
        adc_data_i  : in std_logic_vector(ADC_DATA_NUMBER_OF_BITS - 1 downto 0) := (others => '0');
        -----------------------------------------------------------------------
        -- USER interface -----------------------------------------------------
        -----------------------------------------------------------------------
        data_o : out std_logic_vector(15 downto 0) := (others => '0')
    );
end entity adc_driver;

architecture rtl of adc_driver is

    signal adc_ovrng : std_logic;
    signal adc_data  : std_logic_vector(adc_data_i'range);

begin

    ---------------------------------------------------------------------------
    -- Synchronizace dat.
    ---------------------------------------------------------------------------
    process (clk_i) begin
        if rising_edge(clk_i) then
            adc_data  <= adc_data_i;
            adc_ovrng <= adc_ovrng_i;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Předzpracování dat z ADC.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if adc_ovrng = '1' then
                data_o <= (others => '1');
            else
                data_o                 <= (others => '0');
                data_o(adc_data'range) <= adc_data;
            end if;
        end if;
    end process;

end architecture rtl;