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
        ovrng_o  : out std_logic                                              := '0';
        data_o : out std_logic_vector(ADC_DATA_NUMBER_OF_BITS - 1 downto 0) := (others => '0')
    );
end entity adc_driver;

architecture rtl of adc_driver is

    attribute IOB : string;
    ---------------------------------------------------------------------------
    attribute IOB of adc_data_i  : signal is "TRUE";
    attribute IOB of adc_ovrng_i : signal is "TRUE";

begin

    process (clk_i) begin
        if rising_edge(clk_i) then
            data_o <= adc_data_i;
            ovrng_o  <= adc_ovrng_i;
        end if;
    end process;

end architecture rtl;