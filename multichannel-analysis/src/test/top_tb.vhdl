-------------------------------------------------------------------------------
-- Simulace entity nejvyšší úrovně.
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library STD;
use STD.textio.all;
use STD.env.stop;

library work;
use work.spi_cmd.all;
use work.sim_spi_master.all;

entity top_tb is
end entity top_tb;

architecture behavioral of top_tb is

    constant CLK_FREQUENCY    : natural := 100; -- [MHz]
    constant CLK_HALF_PERIOD  : time    := ((1 us) / CLK_FREQUENCY) / 2;
    constant STIMULATION_FILE : string  := "/home/wykys/projects/diplomka/sw/detector/data-10b-80MSPS.csv";

    ---------------------------------------------------------------------------
    -- CLOCK ------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal clk : std_logic := '0';
    ---------------------------------------------------------------------------
    -- RESET active in low ----------------------------------------------------
    ---------------------------------------------------------------------------
    signal nrst : std_logic := '1';
    ---------------------------------------------------------------------------
    -- SPI --------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal spi_nss  : std_logic := '1';
    signal spi_sck  : std_logic := '0';
    signal spi_mosi : std_logic := '0';
    signal spi_miso : std_logic;
    ---------------------------------------------------------------------------
    -- RESERVED IO beetwen MCU and FPGA ---------------------------------------
    ---------------------------------------------------------------------------
    signal nu_io : std_logic_vector(3 downto 0);
    ---------------------------------------------------------------------------
    -- ADC --------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal adc_data  : std_logic_vector(9 downto 0);
    signal adc_ovrng : std_logic;
    ---------------------------------------------------------------------------
    -- SRAM ------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal sram_data    : std_logic_vector(15 downto 0);
    signal sram_address : std_logic_vector(16 downto 0);
    signal sram_ce_n    : std_logic;
    signal sram_oe_n    : std_logic;
    signal sram_we_n    : std_logic;
    signal sram_lb_n    : std_logic;
    signal sram_ub_n    : std_logic;
    ---------------------------------------------------------------------------
    -- LED --------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal led : std_logic_vector(1 to 4) := (others => '0');
    ---------------------------------------------------------------------------
    -- GPIO for DEBUG ---------------------------------------------------------
    ---------------------------------------------------------------------------
    signal gpio : std_logic_vector(3 downto 0);

begin

    dut : entity work.top
        port map(
            -------------------------------------------------------------------
            -- CLOCK ----------------------------------------------------------
            -------------------------------------------------------------------
            clk_i => clk,
            -------------------------------------------------------------------
            -- RESET active in low --------------------------------------------
            -------------------------------------------------------------------
            nrst_i => nrst,
            -------------------------------------------------------------------
            -- SPI ------------------------------------------------------------
            -------------------------------------------------------------------
            spi_nss_i  => spi_nss,
            spi_sck_i  => spi_sck,
            spi_mosi_i => spi_mosi,
            spi_miso_o => spi_miso,
            -------------------------------------------------------------------
            -- RESERVED IO beetwen MCU and FPGA -------------------------------
            -------------------------------------------------------------------
            nu_io => nu_io,
            -------------------------------------------------------------------
            -- ADC ------------------------------------------------------------
            -------------------------------------------------------------------
            adc_data_i  => adc_data,
            adc_ovrng_i => adc_ovrng,
            -------------------------------------------------------------------
            -- SRAM -----------------------------------------------------------
            -------------------------------------------------------------------
            sram_data_io   => sram_data,
            sram_address_o => sram_address,
            sram_ce_n_o    => sram_ce_n,
            sram_oe_n_o    => sram_oe_n,
            sram_we_n_o    => sram_we_n,
            sram_lb_n_o    => sram_lb_n,
            sram_ub_n_o    => sram_ub_n,
            -------------------------------------------------------------------
            -- LED ------------------------------------------------------------
            -------------------------------------------------------------------
            led_o => led,
            -------------------------------------------------------------------
            -- GPIO for DEBUG -------------------------------------------------
            -------------------------------------------------------------------
            gpio_io => gpio
        );

    async_sram_inst : entity work.async_128Kx16
        port map(
            CE_b  => sram_ce_n,
            WE_b  => sram_we_n,
            OE_b  => sram_oe_n,
            BHE_b => sram_ub_n,
            BLE_b => sram_lb_n,
            A     => sram_address,
            DQ    => sram_data
        );

    clock : process
    begin
        wait for CLK_HALF_PERIOD;
        clk <= not clk;
    end process clock;

    stim : process
        file fr        : text;
        variable row   : line;
        variable value : integer;
    begin
        wait for 1 ms;

        file_open(fr, STIMULATION_FILE, read_mode);
        while not endfile(fr) loop
            readline(fr, row);
            read(row, value);
            adc_data <= std_logic_vector(to_unsigned(value, adc_data'length));
            wait until rising_edge(clk);
        end loop;
        -- file_close(fr);
    end process stim;

    spi : process
    begin
        -----------------------------------------------------------------------
        -- Čekání na reset systému.
        -----------------------------------------------------------------------
        wait for 500 ns;
        -----------------------------------------------------------------------
        -- SPI příkazy.
        -----------------------------------------------------------------------
        spi_tx_cmd_get_state(spi_mosi, spi_sck, spi_nss);
        spi_tx_cmd_measurement_start(spi_mosi, spi_sck, spi_nss);
        spi_tx_cmd_get_state(spi_mosi, spi_sck, spi_nss);
        -- wait for 3 ms;
        spi_tx_cmd_read(x"0000", 10, spi_mosi, spi_sck, spi_nss);
        -----------------------------------------------------------------------
        -- Čekání do konce simulace.
        -----------------------------------------------------------------------
        wait;
    end process spi;

end architecture behavioral;