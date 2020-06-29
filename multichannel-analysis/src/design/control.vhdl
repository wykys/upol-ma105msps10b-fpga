-------------------------------------------------------------------------------
-- Control
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity control is
    port (
        -----------------------------------------------------------------------
        -- CLOCK --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- RESET active in hight ----------------------------------------------
        -----------------------------------------------------------------------
        rst_i : in std_logic;
        -----------------------------------------------------------------------
        -- SPI driver interface -----------------------------------------------
        -----------------------------------------------------------------------
        spi_data_o     : out std_logic_vector(7 downto 0); -- Data co budou vysílána.
        spi_data_i     : in std_logic_vector(7 downto 0);  -- Přijatá data.
        spi_data_vld_o : out std_logic;                    -- Vstupní data jsou validní.
        spi_data_vld_i : in std_logic;                     -- Výstupní data jsou validní.
        spi_ready_i    : in std_logic;                     -- Vstupní data byla přesunuta do bufferu.
        spi_first_i    : in std_logic;                     -- Příznak prvního bytu v rámci.
        -----------------------------------------------------------------------
        -- RAM USER interface -------------------------------------------------
        -----------------------------------------------------------------------
        sram_address_o  : out std_logic_vector(16 downto 0); -- Adresa.
        sram_data_o     : out std_logic_vector(15 downto 0); -- Data co budou zapsána.
        sram_data_i     : in std_logic_vector(15 downto 0);  -- Přečtená data.
        sram_data_vld_i : in std_logic;                      -- Vstupní data jsou validní.
        sram_data_vld_o : out std_logic := '0';              -- Výstupní data jsou validní.
        sram_ready_i    : in std_logic;                      -- Signalizace připravenosti.
        -----------------------------------------------------------------------
        -- ADC USER interface -------------------------------------------------
        -----------------------------------------------------------------------
        adc_ovrng_i : in std_logic;                   -- Mimo rozsah
        adc_data_i  : in std_logic_vector(9 downto 0) -- Vzorek
    );
end entity control;

architecture rtl of control is
    signal cmd : std_logic_vector(7 downto 0) := (others => '0');

    constant SPI_CMD_MEASUREMENT_START : std_logic_vector(7 downto 0) := x"01";
    constant SPI_CMD_MEASUREMENT_STOP  : std_logic_vector(7 downto 0) := x"02";
    constant SPI_CMD_MEMORY_CLEAR      : std_logic_vector(7 downto 0) := x"03";
    constant SPI_CMD_MEMORY_READ       : std_logic_vector(7 downto 0) := x"04";

begin

    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if spi_data_vld_i = '1' then
                spi_data_o     <= spi_data_i;
                spi_data_vld_o <= '1';
            else
                spi_data_vld_o <= '0';
            end if;
        end if;
    end process;

end architecture rtl;