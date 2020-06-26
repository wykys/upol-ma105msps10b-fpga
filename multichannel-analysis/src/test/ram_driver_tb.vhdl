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
    -- CONTROL ----------------------------------------------------------------
    ---------------------------------------------------------------------------
    signal control_read       : std_logic;
    signal control_write      : std_logic;
    signal control_address    : std_logic_vector(RAM_ADDRESS_NUMBER_OF_BITS - 1 downto 0);
    signal control_data_write : std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);
    signal control_data_read  : std_logic_vector(RAM_DATA_NUMBER_OF_BITS - 1 downto 0);
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

begin

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

    dut : entity work.ram_driver
        port map(
            clk_i                => clk,
            control_read_i       => control_read,
            control_write_i      => control_write,
            control_address_i    => control_address,
            control_data_write_i => control_data_write,
            control_data_read_o  => control_data_read,
            ram_ce_n_o           => ram_ce_n,
            ram_oe_n_o           => ram_oe_n,
            ram_we_n_o           => ram_we_n,
            ram_lb_n_o           => ram_lb_n,
            ram_ub_n_o           => ram_ub_n,
            ram_address_o        => ram_address,
            ram_data_io          => ram_data_io
        );

    stim : process begin
        clk                <= '0';
        control_read       <= '0';
        control_write      <= '0';
        control_address    <= (others => '0');
        control_data_write <= (others => '0');

        wait for 1 ns;

        for i in 0 to 10 loop
            clk <= '0';
            wait for CLK_HALF_PERIOD;

            control_address    <= std_logic_vector(to_unsigned(i, control_address'length));
            control_data_write <= std_logic_vector(to_unsigned(i + 51, control_data_write'length));

            if i = 2 then
                control_write <= '1';
            elsif i = 9 then
                control_write <= '0';
            end if;

            clk <= '1';
            wait for CLK_HALF_PERIOD;
        end loop;

        for i in 0 to 10 loop
            clk <= '0';
            wait for CLK_HALF_PERIOD;

            control_address <= std_logic_vector(to_unsigned(i, control_address'length));

            if i = 2 then
                control_read <= '1';
            elsif i = 9 then
                control_read <= '0';
            end if;

            clk <= '1';
            wait for CLK_HALF_PERIOD;
        end loop;

        finish(0);
    end process stim;

end architecture behavioral;