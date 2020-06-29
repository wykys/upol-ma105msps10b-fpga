-------------------------------------------------------------------------------
-- Control
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity spi_driver is
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
        spi_data_o     : in std_logic_vector(7 downto 0);  -- Data co budou vysílána.
        spi_data_i     : out std_logic_vector(7 downto 0); -- Přijatá data.
        spi_data_vld_o : in std_logic;                     -- Vstupní data jsou validní.
        spi_data_vld_i : out std_logic;                    -- Výstupní data jsou validní.
        spi_ready_i    : out std_logic;                    -- Vstupní data byla přesunuta do bufferu.
        spi_first_i    : out std_logic;                    -- Příznak prvního bytu v rámci.
        -----------------------------------------------------------------------
        -- RAM USER interface -------------------------------------------------
        -----------------------------------------------------------------------
        ram_address_o  : in std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0); -- Adresa.
        ram_data_o     : in std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);    -- Data co budou zapsána.
        ram_data_i     : out std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);   -- Přečtená data.
        ram_data_vld_i : in std_logic;                                                 -- Vstupní data jsou validní.
        ram_data_vld_o : out std_logic := '0';                                         -- Výstupní data jsou validní.
        ram_ready_i    : out std_logic                                                 -- Signalizace připravenosti.
    );
end entity spi_driver;

architecture rtl of spi_driver is
    signal cmd : std_logic_vector(7 downto 0) := (others => '0');

    constant SPI_CMD_MEASUREMENT_START : std_logic_vector(7 downto 0) := x"01";
    constant SPI_CMD_MEASUREMENT_STOP  : std_logic_vector(7 downto 0) := x"02";
    constant SPI_CMD_MEMORY_CLEAR      : std_logic_vector(7 downto 0) := x"03";
    constant SPI_CMD_MEMORY_READ       : std_logic_vector(7 downto 0) := x"04";

begin

    ---------------------------------------------------------------------------
    -- SPI komunikace.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            data_vld_o <= '0';
            tx_empty   <= '0';
            if rst_i = '1' then
                cmd <= (others => '0');

            else
                if spi_data_vld_i = '1' and spi_first_i = '1' then
                    -----------------------------------------------------------
                    -- Přijde příkaz
                    -----------------------------------------------------------
                    cmd <= spi_data_i;
                end if;
            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Reakce na příkaz.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                null;

            else

            end if;
        end if;
    end process;

end architecture rtl;