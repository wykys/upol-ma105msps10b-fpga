-------------------------------------------------------------------------------
-- SPI driver - CPOL=0, CPHA=0
-- wykys 2020
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity spi_driver is
    port (
        -----------------------------------------------------------------------
        -- Clock --------------------------------------------------------------
        -----------------------------------------------------------------------
        clk_i : in std_logic;
        -----------------------------------------------------------------------
        -- Reset --------------------------------------------------------------
        -----------------------------------------------------------------------
        rst_i : in std_logic; -- Aktivní v log. 1
        -----------------------------------------------------------------------
        -- SPI interface ------------------------------------------------------
        -----------------------------------------------------------------------
        nss_i  : in std_logic;
        sck_i  : in std_logic;
        mosi_i : in std_logic;
        miso_o : out std_logic;
        -----------------------------------------------------------------------
        -- Driver interface ---------------------------------------------------
        -----------------------------------------------------------------------
        data_i     : in std_logic_vector(7 downto 0);  -- Data co budou vysílána.
        data_o     : out std_logic_vector(7 downto 0); -- Přijatá data.
        data_vld_i : in std_logic;                     -- Vstupní data jsou validní.
        data_vld_o : out std_logic;                    -- Výstupní data jsou validní.
        ready_o    : out std_logic;                    -- Vstupní data byla přesunuta do bufferu.
        first_o    : out std_logic;                    -- Příznak prvního batu v rámci.
        ss_o       : out std_logic                     -- Příznak SPI slave je aktivní.
    );
end entity spi_driver;

architecture rtl of spi_driver is
    signal mosi : std_logic;
    signal miso : std_logic;
    signal nss  : std_logic;
    signal sck  : std_logic;

    signal sck_old     : std_logic := '0';
    signal sck_posedge : std_logic;
    signal sck_negedge : std_logic;

    signal nss_old     : std_logic := '1';
    signal nss_negedge : std_logic;

    signal bit_cnt   : unsigned(2 downto 0);
    signal buffer_tx : std_logic_vector(7 downto 0);
    signal data_rx   : std_logic_vector(7 downto 0);
    signal data_tx   : std_logic_vector(7 downto 0);

    signal tx_empty     : std_logic;
    signal tx_empty_old : std_logic := '0';
    signal tx_ready     : std_logic;
begin
    ---------------------------------------------------------------------------
    -- Synchronizace vstupních signálů.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            mosi <= mosi_i;
            sck  <= sck_i;
            nss  <= nss_i;
        end if;
    end process;
    ss_o <= not nss;

    ---------------------------------------------------------------------------
    -- Výstup je aktivní pouze pokud je aktivován slave.
    ---------------------------------------------------------------------------
    miso_o <= miso when (nss_i = '0') else
        'Z';

    ---------------------------------------------------------------------------
    -- Získání dat k odeslání.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Reset je aktivní.
                ---------------------------------------------------------------
                tx_empty_old <= '0';
                tx_ready     <= '0';
                buffer_tx    <= (others => '0');
            else
                ---------------------------------------------------------------
                -- Detekce připravenosti
                ---------------------------------------------------------------
                tx_empty_old <= tx_empty;
                if tx_empty = '1' and tx_empty_old = '0' then
                    tx_ready <= '1';
                end if;

                ---------------------------------------------------------------
                -- Zápis do vstupního datového vysílacího registru.
                ---------------------------------------------------------------
                if tx_ready = '1' then
                    if data_vld_i = '1' then
                        buffer_tx <= data_i;
                        tx_ready  <= '0';
                    else
                        buffer_tx <= (others => '0');
                    end if;
                end if;
            end if;
        end if;
    end process;
    ready_o <= tx_ready and not data_vld_i;

    ---------------------------------------------------------------------------
    -- Detekce hran SCK.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                sck_old <= '0';
            else
                sck_old <= sck;
            end if;
        end if;
    end process;
    sck_posedge <= sck and not sck_old;
    sck_negedge <= not sck and sck_old;

    ---------------------------------------------------------------------------
    -- Detekce hran NSS.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                nss_old <= '1';
            else
                nss_old <= nss;
            end if;
        end if;
    end process;
    nss_negedge <= not nss and nss_old;

    ---------------------------------------------------------------------------
    -- Signalizace prvního bajtu v rámci.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                first_o <= '0';
            elsif nss_negedge = '1' then
                first_o <= '1';
            elsif sck_negedge = '1' and bit_cnt = "000" then
                first_o <= '0';
            end if;
        end if;
    end process;
    nss_negedge <= not nss and nss_old;

    ---------------------------------------------------------------------------
    -- Přenos dat.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if rising_edge(clk_i) then
            data_vld_o <= '0';
            tx_empty   <= '0';

            if rst_i = '1' then
                ---------------------------------------------------------------
                -- Reset.
                ---------------------------------------------------------------
                data_o <= (others => '0');
            end if;

            if rst_i = '1' or nss = '1' then
                ---------------------------------------------------------------
                -- Reset je aktivní nebo slave je deaktitován.
                -- Čekání na aktivování slave.
                -- Příprava dat prvního bajtu v rámci.
                ---------------------------------------------------------------
                bit_cnt  <= (others => '0');
                miso     <= buffer_tx(7);
                data_tx  <= buffer_tx(6 downto 0) & '0';
                tx_empty <= '1';

            else
                ---------------------------------------------------------------
                -- Přenos.
                ---------------------------------------------------------------
                if sck_posedge = '1' then
                    -----------------------------------------------------------
                    -- Na nástupnou hranu data čtu.
                    -----------------------------------------------------------
                    data_rx <= data_rx(6 downto 0) & mosi;
                    bit_cnt <= bit_cnt + 1;
                    if bit_cnt = "111" then
                        data_o     <= data_rx(6 downto 0) & mosi;
                        data_vld_o <= '1';
                    end if;

                elsif sck_negedge = '1' then
                    -----------------------------------------------------------
                    -- Na sestupnou hranu data zapisuji.
                    -----------------------------------------------------------
                    miso    <= data_tx(7);
                    data_tx <= data_tx(6 downto 0) & '0';

                    if bit_cnt = "000" then
                        -------------------------------------------------------
                        -- Příprava nových dat k vysílání.
                        -------------------------------------------------------
                        miso     <= buffer_tx(7);
                        data_tx  <= buffer_tx(6 downto 0) & '0';
                        tx_empty <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;
end architecture rtl;