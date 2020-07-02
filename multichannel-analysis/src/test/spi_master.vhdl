-------------------------------------------------------------------------------
-- Simulátor SPI vysílače a implementace simulačních
-- procedur generujících příkazy.
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library work;
use work.spi_cmd.all;

package sim_spi_master is

    procedure spi_tx(
        constant data : in std_logic_vector(7 downto 0);
        signal mosi   : out std_logic;
        signal sck    : out std_logic
    );

    procedure spi_frame_start(
        signal nss : out std_logic
    );

    procedure spi_frame_stop(
        signal nss : out std_logic
    );

    procedure spi_tx_cmd_get_state(
        signal mosi : out std_logic;
        signal sck  : out std_logic;
        signal nss  : out std_logic
    );

    procedure spi_tx_cmd_measurement_start(
        signal mosi : out std_logic;
        signal sck  : out std_logic;
        signal nss  : out std_logic
    );

    procedure spi_tx_cmd_stop(
        signal mosi : out std_logic;
        signal sck  : out std_logic;
        signal nss  : out std_logic
    );

    procedure spi_tx_cmd_read(
        constant address : in std_logic_vector(15 downto 0);
        constant size    : in natural;
        signal mosi      : out std_logic;
        signal sck       : out std_logic;
        signal nss       : out std_logic
    );

end package;
package body sim_spi_master is

    constant SCK_FREQUENCY          : real := 1.6; -- [MHz]
    constant SCK_HALF_PERIOD        : time := ((1 us) / SCK_FREQUENCY) / 2;
    constant NSS_DELAY_AFTER_CHANGE : time := 1 us;
    constant FRAME_SAPCE            : time := 2 us;

    ---------------------------------------------------------------------------
    -- SPI vysílač (MASTER).
    -- Klidový stav hodin je 0.
    -- Data jsou korektní na náběžnou hranu.
    ---------------------------------------------------------------------------
    procedure spi_tx(
        constant data : in std_logic_vector(7 downto 0);
        signal mosi   : out std_logic;
        signal sck    : out std_logic
    ) is
    begin
        for i in data'range loop
            sck  <= '0';
            mosi <= data(i);
            wait for SCK_HALF_PERIOD;
            sck <= '1';
            wait for SCK_HALF_PERIOD;
        end loop;
        sck <= '0';
    end spi_tx;

    ---------------------------------------------------------------------------
    -- Začátek přemosu.
    ---------------------------------------------------------------------------
    procedure spi_frame_start(
        signal nss : out std_logic
    ) is
    begin
        wait for FRAME_SAPCE;
        nss <= '0';
        wait for NSS_DELAY_AFTER_CHANGE;
    end spi_frame_start;

    ---------------------------------------------------------------------------
    -- Ukončení přenosu.
    ---------------------------------------------------------------------------
    procedure spi_frame_stop(
        signal nss : out std_logic
    ) is
    begin
        wait for NSS_DELAY_AFTER_CHANGE;
        nss <= '1';
    end spi_frame_stop;

    ---------------------------------------------------------------------------
    -- CMD: Získání stavu zařízení.
    ---------------------------------------------------------------------------
    procedure spi_tx_cmd_get_state(
        signal mosi : out std_logic;
        signal sck  : out std_logic;
        signal nss  : out std_logic
    ) is
    begin
        spi_frame_start(nss);
        spi_tx(SPI_CMD_GET_STATE, mosi, sck);
        spi_tx(x"00", mosi, sck);
        spi_frame_stop(nss);
    end spi_tx_cmd_get_state;

    ---------------------------------------------------------------------------
    -- CMD: Zahájení měření.
    ---------------------------------------------------------------------------
    procedure spi_tx_cmd_measurement_start(
        signal mosi : out std_logic;
        signal sck  : out std_logic;
        signal nss  : out std_logic
    ) is
    begin
        spi_frame_start(nss);
        spi_tx(SPI_CMD_MEASUREMENT_START, mosi, sck);
        spi_frame_stop(nss);
    end spi_tx_cmd_measurement_start;

    ---------------------------------------------------------------------------
    -- CMD: Zastavení činnosti.
    ---------------------------------------------------------------------------
    procedure spi_tx_cmd_stop(
        signal mosi : out std_logic;
        signal sck  : out std_logic;
        signal nss  : out std_logic
    ) is
    begin
        spi_frame_start(nss);
        spi_tx(SPI_CMD_STOP, mosi, sck);
        spi_frame_stop(nss);
    end spi_tx_cmd_stop;

    ---------------------------------------------------------------------------
    -- CMD: Čtení.
    ---------------------------------------------------------------------------
    procedure spi_tx_cmd_read(
        constant address : in std_logic_vector(15 downto 0);
        constant size    : in natural;
        signal mosi      : out std_logic;
        signal sck       : out std_logic;
        signal nss       : out std_logic
    ) is
    begin
        spi_frame_start(nss);
        spi_tx(SPI_CMD_MEMORY_READ, mosi, sck);
        spi_tx(address(15 downto 8), mosi, sck);
        spi_tx(address(7 downto 0), mosi, sck);
        for i in 1 to size loop
            spi_tx(x"00", mosi, sck);
            spi_tx(x"00", mosi, sck);
        end loop;
        spi_frame_stop(nss);
    end spi_tx_cmd_read;

end package body sim_spi_master;