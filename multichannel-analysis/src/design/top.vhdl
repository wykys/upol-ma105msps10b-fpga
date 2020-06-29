-------------------------------------------------------------------------------
-- Multichannel analysis
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top is
    port (
        -----------------------------------------------------------------------
        -- CLOCK --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- RESET active in low ------------------------------------------------
        -----------------------------------------------------------------------
        nrst_i : in std_logic;
        -----------------------------------------------------------------------
        -- SPI ----------------------------------------------------------------
        -----------------------------------------------------------------------
        spi_nss_i  : in std_logic;
        spi_sck_i  : in std_logic;
        spi_mosi_i : in std_logic;
        spi_miso_o : out std_logic;
        -----------------------------------------------------------------------
        -- RESERVED IO beetwen MCU and FPGA -----------------------------------
        -----------------------------------------------------------------------
        nu_io : inout std_logic_vector(3 downto 0);
        -----------------------------------------------------------------------
        -- ADC ----------------------------------------------------------------
        -----------------------------------------------------------------------
        adc_data_i  : std_logic_vector(9 downto 0);
        adc_ovrng_i : std_logic;
        -----------------------------------------------------------------------
        -- SRAM ---------------------------------------------------------------
        -----------------------------------------------------------------------
        sram_data_io   : inout std_logic_vector(15 downto 0);
        sram_address_o : out std_logic_vector(16 downto 0);
        sram_ce_n_o    : out std_logic;
        sram_oe_n_o    : out std_logic;
        sram_we_n_o    : out std_logic;
        sram_lb_n_o    : out std_logic;
        sram_ub_n_o    : out std_logic;
        -----------------------------------------------------------------------
        -- LED ----------------------------------------------------------------
        -----------------------------------------------------------------------
        led_o : out std_logic_vector(1 to 4) := (others => '0');
        -----------------------------------------------------------------------
        -- GPIO for DEBUG -----------------------------------------------------
        -----------------------------------------------------------------------
        gpio_io : inout std_logic_vector(3 downto 0)
    );
end entity top;

architecture rtl of top is
    signal clk : std_logic;
    signal rst : std_logic;

    signal spi_data_rx       : std_logic_vector(7 downto 0) := (others => '1');
    signal spi_data_tx       : std_logic_vector(7 downto 0) := (others => '1');
    signal spi_data_rx_valid : std_logic;
    signal spi_data_tx_valid : std_logic := '0';
    signal spi_ready         : std_logic;
    signal spi_first         : std_logic;

    signal sram_address        : std_logic_vector(16 downto 0) := (others => '0');
    signal sram_data_write     : std_logic_vector(15 downto 0);
    signal sram_data_read      : std_logic_vector(15 downto 0);
    signal sram_data_vld_write : std_logic := '1';
    signal sram_data_vld_read  : std_logic;
    signal sram_ready          : std_logic;
begin

    ---------------------------------------------------------------------------
    -- Resetovací obvod.
    ---------------------------------------------------------------------------
    rst_driver_inst : entity work.rst_driver
        port map
        (
            clk_i  => clk_i,
            nrst_i => nrst_i,
            rst_o  => rst
        );

    ---------------------------------------------------------------------------
    -- Posunutí hodin z důvodu korektního časování čtení z ADC.
    ---------------------------------------------------------------------------
    clk_wiz_0_inst : entity work.clk_wiz_0
        port map
        (
            reset   => '0',
            clk_in  => clk_i,
            clk_out => clk
        );

    ---------------------------------------------------------------------------
    -- LED driver.
    ---------------------------------------------------------------------------
    led_driver_inst : entity work.led_driver
        port map(
            clk_i => clk,
            led_o => led_o
        );

    ---------------------------------------------------------------------------
    -- HW rozhranní pro SPI.
    ---------------------------------------------------------------------------
    spi_driver_inst : entity work.spi_driver
        port map(
            clk_i      => clk,
            rst_i      => rst,
            nss_i      => spi_nss_i,
            sck_i      => spi_sck_i,
            mosi_i     => spi_mosi_i,
            miso_o     => spi_miso_o,
            data_i     => spi_data_tx,
            data_o     => spi_data_rx,
            data_vld_i => spi_data_tx_valid,
            data_vld_o => spi_data_rx_valid,
            ready_o    => spi_ready,
            first_o    => spi_first
        );

    ---------------------------------------------------------------------------
    -- HW rozhranní pro ADC.
    ---------------------------------------------------------------------------
    adc_driver_inst : entity work.adc_driver
        port map(
            clk_i       => clk,
            adc_ovrng_i => adc_ovrng_i,
            adc_data_i  => adc_data_i,
            ovrng_o     => open,
            sample_o    => open
        );

    ---------------------------------------------------------------------------
    -- HW rozhranní pro SRAM.
    ---------------------------------------------------------------------------
    sram_driver_inst : entity work.sram_driver
        port map(
            clk_i          => clk,
            sram_ce_n_o    => sram_ce_n_o,
            sram_oe_n_o    => sram_oe_n_o,
            sram_we_n_o    => sram_we_n_o,
            sram_lb_n_o    => sram_lb_n_o,
            sram_ub_n_o    => sram_ub_n_o,
            sram_address_o => sram_address_o,
            sram_data_io   => sram_data_io,
            address_i      => sram_address,
            data_i         => sram_data_write,
            data_o         => sram_data_read,
            data_vld_i     => sram_data_vld_write,
            data_vld_o     => sram_data_vld_read,
            ready_o        => sram_ready
        );

end architecture rtl;