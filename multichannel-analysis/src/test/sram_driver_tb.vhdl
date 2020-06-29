-------------------------------------------------------------------------------
-- test bench to stimulate the SRAM driver
-- wykys 2019
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library STD;
use STD.env.all;

entity ram_driver_tb is
end entity ram_driver_tb;

architecture behavioral of ram_driver_tb is

    constant CLK_FREQUENCY   : natural := 100; -- [MHz]
    constant CLK_HALF_PERIOD : time    := ((1 us) / CLK_FREQUENCY) / 2;

    constant RAM_DATA_NUMBER_OF_BITS    : positive := 16;
    constant RAM_ADDRESS_NUMBER_OF_BITS : positive := 17;

    ---------------------------------------------------------------------------
    -- CLOCK ------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal clk : std_logic;
    ---------------------------------------------------------------------------
    -- USER interface ---------------------------------------------------------
    ---------------------------------------------------------------------------
    signal address        : std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0);
    signal data_read      : std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);
    signal data_write     : std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);
    signal data_vld_read  : std_logic;
    signal data_vld_write : std_logic;
    signal ready          : std_logic;
    ---------------------------------------------------------------------------
    -- RAM --------------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal sram_ce_n : std_logic;
    signal sram_oe_n : std_logic;
    signal sram_we_n : std_logic;
    signal sram_lb_n : std_logic;
    signal sram_ub_n : std_logic;
    ---------------------------------------------------------------------------
    signal sram_address : std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0);
    signal sram_data_io : std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);

begin

    async_sram_inst : entity work.async_128Kx16
        port map(
            CE_b  => sram_ce_n,
            WE_b  => sram_we_n,
            OE_b  => sram_oe_n,
            BHE_b => sram_ub_n,
            BLE_b => sram_lb_n,
            A     => sram_address,
            DQ    => sram_data_io
        );

    dut : entity work.sram_driver
        port map(
            clk_i          => clk,
            sram_ce_n_o    => sram_ce_n,
            sram_oe_n_o    => sram_oe_n,
            sram_we_n_o    => sram_we_n,
            sram_lb_n_o    => sram_lb_n,
            sram_ub_n_o    => sram_ub_n,
            sram_address_o => sram_address,
            sram_data_io   => sram_data_io,
            address_i      => address,
            data_i         => data_write,
            data_o         => data_read,
            data_vld_i     => data_vld_write,
            data_vld_o     => data_vld_read,
            ready_o        => ready
        );

    clock : process begin
        clk <= '0';
        wait for CLK_HALF_PERIOD;
        clk <= '1';
        wait for CLK_HALF_PERIOD;
    end process clock;

    stim : process begin
        data_vld_write <= '0';
        address        <= (others => '0');
        data_write     <= (others => '0');

        wait until ready = '1';

        for i in 0 to 5 loop
            address        <= std_logic_vector(to_unsigned(i, address'length));
            data_write     <= std_logic_vector(to_unsigned(i, data_write'length));
            data_vld_write <= '1';
            wait until ready = '1';
        end loop;
        data_vld_write <= '0';

        wait for CLK_HALF_PERIOD * 10;

        for i in 0 to 5 loop
            address <= std_logic_vector(to_unsigned(i, address'length));
            wait until data_vld_read = '1';
        end loop;

        wait until ready = '1';
        wait for 1 ns;

        finish(0);
    end process stim;

end architecture behavioral;