-------------------------------------------------------------------------------
-- SPI driver
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
        -- SPI interface ------------------------------------------------------
        -----------------------------------------------------------------------
        nss_i  : in std_logic;
        sck_i  : in std_logic;
        mosi_i : in std_logic;
        miso_o : out std_logic;
        -----------------------------------------------------------------------
        -- USER interface -----------------------------------------------------
        -----------------------------------------------------------------------
        data_i     : in std_logic_vector(7 downto 0);  -- input data
        data_o     : out std_logic_vector(7 downto 0); -- output data
        data_vld_i : in std_logic;                     -- input data are valid
        data_vld_o : out std_logic;                    -- output data are valid
        ready_o    : out std_logic;                    -- validi nput data are accept
        first_o    : out std_logic                     -- flag of the first byte of the frame
    );
end entity spi_driver;

architecture rtl of spi_driver is
    type spi_slave_opcode_t is (
        SPI_RESET,
        SPI_READY,
        SPI_RTX,
        SPI_COMPLETE
    );

    signal opcode : spi_slave_opcode_t := SPI_RESET;

    signal sck_old : std_logic := '0';

    signal index : natural range 0 to 7 := 7;

    signal data_rx : std_logic_vector(7 downto 0);
    signal data_tx : std_logic_vector(7 downto 0);

    signal start_frame_en : std_logic;

    signal mosi : std_logic;
    signal miso : std_logic;
    signal sck  : std_logic;
    signal nss  : std_logic;

begin
    ---------------------------------------------------------------------------
    -- Synchronizace vstupních signálů.
    ---------------------------------------------------------------------------
    process (clk_i)
    begin
        if falling_edge(clk_i) then
            mosi <= mosi_i;
            sck  <= sck_i;
            nss  <= nss_i;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Výstup je aktivní pouze pokud je aktivován slave.
    ---------------------------------------------------------------------------
    miso_o <= miso when (nss_i = '0') else
        'Z';

    ---------------------------------------------------------------------------
    -- Stavový automat SPI.
    ---------------------------------------------------------------------------
    process (clk_i)
        variable sck_posedge_en : std_logic;
        variable sck_negedge_en : std_logic;
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                opcode  <= SPI_RESET;
                sck_old <= '0';

            else
                ---------------------------------------------------------------
                -- Detekce hran SCK.
                ---------------------------------------------------------------
                sck_old <= sck;
                sck_posedge_en := sck and not sck_old;
                sck_negedge_en := not sck and sck_old;
                ---------------------------------------------------------------
                -- SPI SLAVE stavový automat.
                ---------------------------------------------------------------
                case opcode is
                    when SPI_RESET =>
                        ready_o    <= '1';
                        data_vld_o <= '0';
                        opcode     <= SPI_READY;

                    when SPI_READY =>
                        -------------------------------------------------------
                        -- Čekání na data k vysílání a výběr slave.
                        -------------------------------------------------------
                        start_frame_en <= '1';
                        index          <= 7;
                        data_vld_o     <= '0';

                        if nss = '1' then
                            ---------------------------------------------------
                            -- Slave je deaktivován.
                            ---------------------------------------------------
                            null;

                        else
                            ---------------------------------------------------
                            -- Pokud je aktivován slave.
                            ---------------------------------------------------
                            if data_vld_i = '1' then
                                -----------------------------------------------
                                -- Pokud jsou na vsupu data tak je použiju.
                                -----------------------------------------------
                                data_tx <= data_i;
                                miso    <= data_i(index);
                                ready_o <= '0';
                            else
                                -----------------------------------------------
                                -- Jinak odesílám nuly.
                                -----------------------------------------------
                                data_tx <= (others => '0');
                            end if;
                            opcode <= SPI_RTX;
                        end if;

                    when SPI_RTX =>
                        -------------------------------------------------------
                        -- Vysílání a příjem dat.
                        -------------------------------------------------------
                        ready_o <= '0';

                        if nss = '1' then
                            ---------------------------------------------------
                            -- Chyba NSS je v H před dokončením rámce.
                            ---------------------------------------------------
                            opcode <= SPI_RESET;

                        elsif sck_posedge_en = '1' then
                            ---------------------------------------------------
                            -- Na nástupnou hranu čtu data s MOSI.
                            ---------------------------------------------------
                            data_rx(index) <= mosi;

                            if index /= 0 then
                                index <= index - 1;
                            else
                                opcode <= SPI_COMPLETE;

                            end if;

                        elsif sck_negedge_en = '1' or start_frame_en = '1' then
                            ---------------------------------------------------
                            -- Data k vasílání musí být připravena na
                            -- sestupnou hranu SCK.
                            ---------------------------------------------------
                            miso           <= data_tx(index);
                            start_frame_en <= '0';
                        end if;

                    when SPI_COMPLETE =>
                        -------------------------------------------------------
                        -- Dokončení přenosu.
                        -------------------------------------------------------
                        ready_o    <= '1';
                        data_o     <= data_rx;
                        data_vld_o <= '1';
                        opcode     <= SPI_READY;

                    when others =>
                        -------------------------------------------------------
                        -- Ostatní stavy kvůli varování syntetizéru.
                        -------------------------------------------------------
                        null;
                end case;
            end if;
        end if;
    end process;

end architecture rtl;