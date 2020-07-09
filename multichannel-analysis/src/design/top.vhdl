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
        adc_data_i  : in std_logic_vector(9 downto 0);
        adc_ovrng_i : in std_logic;
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

    signal spi_data_rx     : std_logic_vector(7 downto 0);
    signal spi_data_tx     : std_logic_vector(7 downto 0);
    signal spi_data_rx_vld : std_logic;
    signal spi_data_tx_vld : std_logic;
    signal spi_ready       : std_logic;
    signal spi_first       : std_logic;

    signal sram_address    : std_logic_vector(16 downto 0);
    signal sram_data_write : std_logic_vector(15 downto 0);
    signal sram_data_read  : std_logic_vector(15 downto 0);
    signal sram_write      : std_logic;
    signal sram_read       : std_logic;

    signal adc_data  : std_logic_vector(adc_data_i'range);
    signal adc_ovrng : std_logic;

    signal pulse_vld  : std_logic;
    signal pulse_peak : std_logic_vector(adc_data_i'range);

begin

    ---------------------------------------------------------------------------
    -- Logický analyzátor.
    ---------------------------------------------------------------------------
    -- ila_0_inst : entity work.ila_0
    --     port map
    --     (
    --         clk    => clk,
    --         probe0 => adc_data_i
    --     );

    ---------------------------------------------------------------------------
    -- Resetovací obvod.
    ---------------------------------------------------------------------------
    rst_driver_inst : entity work.rst_driver
        generic map(
            RST_POWER_ON_CNT_NUMBER_OF_BITS => 3
        )
        port map
        (
            clk_i  => clk,
            nrst_i => nrst_i,
            rst_o  => rst
        );

    ---------------------------------------------------------------------------
    -- Posunutí hodin z důvodu korektního časování čtení z ADC.
    ---------------------------------------------------------------------------
    clk_wiz_0_inst : entity work.clk_wiz_0
        port map
        (
            clk_i => clk_i,
            clk_o => clk
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
            data_vld_i => spi_data_tx_vld,
            data_vld_o => spi_data_rx_vld,
            ready_o    => spi_ready,
            first_o    => spi_first
        );

    ---------------------------------------------------------------------------
    -- HW rozhranní pro ADC.
    ---------------------------------------------------------------------------
    adc_driver_inst : entity work.adc_driver
        port map(
            clk_i       => clk,
            rst_i       => rst,
            adc_ovrng_i => adc_ovrng_i,
            adc_data_i  => adc_data_i,
            adc_ovrng_o => adc_ovrng,
            adc_data_o  => adc_data
        );

    ---------------------------------------------------------------------------
    -- HW rozhranní pro SRAM.
    ---------------------------------------------------------------------------
    sram_driver_inst : entity work.sram_driver
        port map(
            clk_i          => clk,
            rst_i          => rst,
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
            read_i         => sram_read,
            write_i        => sram_write
        );

    ---------------------------------------------------------------------------
    -- Zpracování signálu.
    ---------------------------------------------------------------------------
    dsp_inst : entity work.dsp
        port map(
            clk_i          => clk_i,
            adc_ovrng_i    => adc_ovrng,
            adc_data_i     => adc_data,
            pulse_peak_o   => pulse_peak,
            pulse_length_o => open,
            pulse_vld_o    => pulse_vld
        );

    ---------------------------------------------------------------------------
    -- Řídící logika.
    ---------------------------------------------------------------------------
    brain_inst : entity work.brain
        port map(
            clk_i => clk,
            rst_i => rst,
            -------------------------------------------------------------------
            spi_data_o     => spi_data_tx,
            spi_data_i     => spi_data_rx,
            spi_data_vld_o => spi_data_tx_vld,
            spi_data_vld_i => spi_data_rx_vld,
            spi_ready_i    => spi_ready,
            spi_first_i    => spi_first,
            -------------------------------------------------------------------
            sram_address_o => sram_address,
            sram_data_o    => sram_data_write,
            sram_data_i    => sram_data_read,
            sram_read_o    => sram_read,
            sram_write_o   => sram_write,
            -------------------------------------------------------------------
            adc_data_i  => adc_data,
            adc_ovrng_i => adc_ovrng,
            -------------------------------------------------------------------
            pulse_peak_i => pulse_peak,
            pulse_vld_i  => pulse_vld,
            -------------------------------------------------------------------
            led_o => led_o
        );

end architecture rtl;