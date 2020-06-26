-------------------------------------------------------------------------------
-- test bench to stimulate TOP entity
-- wykys 2019
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library STD;
use STD.textio.all;
use STD.env.stop;

entity top_tb is
end entity top_tb;

architecture behavioral of top_tb is

    constant CLK_FREQUENCY   : natural := 80; -- [MHz]
    constant CLK_HALF_PERIOD : time    := ((1 us) / CLK_FREQUENCY) / 2;

    constant RAM_DATA_NUMBER_OF_BITS     : positive := 16;
    constant RAM_ADDRESS_NUMBER_OF_BITS  : positive := 17;
    constant ADC_DATA_NUMBER_OF_BITS     : positive := 10;
    constant PULSE_LENGTH_NUMBER_OF_BITS : positive := 16;
    constant STIMULATION_FILE            : string   := "/home/wykys/projects/diplomka/sw/detector/data-10b-80MSPS.csv";

    ---------------------------------------------------------------------------
    -- CLOCK ------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal clk : std_logic := '0';
    ---------------------------------------------------------------------------
    -- UART ----------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal uart_rx : std_logic;
    signal uart_tx : std_logic;
    ---------------------------------------------------------------------------
    -- RAM --------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal ram_ce_n : std_logic;
    signal ram_oe_n : std_logic;
    signal ram_we_n : std_logic;
    signal ram_lb_n : std_logic;
    signal ram_ub_n : std_logic;
    ---------------------------------------------------------------------------
    signal ram_address : std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0);
    signal ram_data_io : std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);
    ---------------------------------------------------------------------------
    -- ADC IO -----------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal adc_ovrng : std_logic                                              := '0';
    signal adc_data  : std_logic_vector(ADC_DATA_NUMBER_OF_BITS - 1 downto 0) := (others => '0');

begin

    dut : entity work.top
        generic map(
            RAM_DATA_NUMBER_OF_BITS    => RAM_DATA_NUMBER_OF_BITS,
            RAM_ADDRESS_NUMBER_OF_BITS => RAM_ADDRESS_NUMBER_OF_BITS
        )
        port map(
            -------------------------------------------------------------------
            -- CLOCK ----------------------------------------------------------
            -------------------------------------------------------------------
            clk_50MHz_i => '0',
            clk_80MHz_i => clk,
            -------------------------------------------------------------------
            -- BASIC IO -------------------------------------------------------
            -------------------------------------------------------------------
            btn_i => (others => '0'),
            led_o => open,
            -------------------------------------------------------------------
            -- UART -----------------------------------------------------------
            -------------------------------------------------------------------
            uart_rx_i => uart_rx,
            uart_tx_o => uart_tx,
            -------------------------------------------------------------------
            -- ADC IO ---------------------------------------------------------
            -------------------------------------------------------------------
            adc_ovrng_i => adc_ovrng,
            adc_data_i  => adc_data,
            -------------------------------------------------------------------
            -- RAM IO ---------------------------------------------------------
            -------------------------------------------------------------------
            ram_ce_n_o => ram_ce_n,
            ram_oe_n_o => ram_oe_n,
            ram_we_n_o => ram_we_n,
            ram_lb_n_o => ram_lb_n,
            ram_ub_n_o => ram_ub_n,
            -------------------------------------------------------------------
            ram_address_o => ram_address,
            ram_data_io   => ram_data_io
        );

    async_sram_inst : entity work.async_128Kx16
        port map(
            CE_b  => ram_ce_n,
            WE_b  => ram_we_n,
            OE_b  => ram_oe_n,
            BHE_b => ram_ub_n,
            BLE_b => ram_lb_n,
            A     => ram_address,
            DQ    => ram_data_io
        );

    stim : process
        file fr        : text;
        variable row   : line;
        variable value : integer;
    begin
        file_open(fr, STIMULATION_FILE, read_mode);
        while not endfile(fr) loop
            readline(fr, row);
            read(row, value);
            adc_data <= std_logic_vector(to_unsigned(value, ADC_DATA_NUMBER_OF_BITS));
            clk      <= '0';
            wait for CLK_HALF_PERIOD;
            clk <= '1';
            wait for CLK_HALF_PERIOD;
        end loop;
        file_close(fr);
        -- stop;
    end process stim;

end architecture behavioral;