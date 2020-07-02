-------------------------------------------------------------------------------
-- Příkazy používané v SPI komunikaci.
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

package spi_cmd is

    constant SPI_CMD_UNKNOWN           : std_logic_vector(7 downto 0) := x"00";
    constant SPI_CMD_STOP              : std_logic_vector(7 downto 0) := x"01";
    constant SPI_CMD_GET_STATE         : std_logic_vector(7 downto 0) := x"02";
    constant SPI_CMD_MEMORY_CLEAR      : std_logic_vector(7 downto 0) := x"03";
    constant SPI_CMD_MEMORY_READ       : std_logic_vector(7 downto 0) := x"04";
    constant SPI_CMD_MEASUREMENT_START : std_logic_vector(7 downto 0) := x"05";

end package;