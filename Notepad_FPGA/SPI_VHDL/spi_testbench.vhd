library IEEE;
use ieee.std_logic_1164.all;

entity spi_testbench is 
end entity spi_testbench;

architecture rtl_test of spi_testbench is

  component Top_spi_module 
    port (
      i_clk          : in std_logic;
      i_rst          : in std_logic;
      i_init         : in std_logic;
      sp_sdio        : inout std_logic;
      spi_cclk       : out std_logic;
      o_spi_rd_done  : out std_logic;
      s_start_rd     : out std_logic;
      s_spi_rd_reqs  : out std_logic                                               ;
      spi_read_data  : out std_logic_vector(7 downto 0)
    );
  end component Top_spi_module;

  signal spi_clock   : std_logic := '0';
  signal spi_rd_dn   : std_logic := '0';
  signal spi_rd_data : std_logic_vector(7 downto 0) := (others => '0');
  signal i_clk       : std_logic := '0';
  signal i_rst       : std_logic := '1';
  signal i_init      : std_logic := '0';
  signal start_read  : std_logic := '0';

  signal sd_in : std_logic := '0';
  signal sd_io : std_logic := '0';
  signal nxt_transfer : std_logic := '0';
  signal byte_transfer_done : std_logic := '0';
  signal s_spi_rd : std_logic := '0' ;
  
begin

  sd_in <= sd_io when (s_spi_rd = '1') else 'Z' ;

  SPI_DUT : Top_spi_module 
    port map (
      i_clk        => i_clk,
      i_rst        => i_rst,
      i_init       => i_init,
      sp_sdio      => sd_in,
      spi_cclk     => spi_clock,
      o_spi_rd_done => spi_rd_dn,
      s_start_rd   => start_read,
      s_spi_rd_reqs=> s_spi_rd , 
      spi_read_data => spi_rd_data
    );

  rtl_clk_proc : process 
  begin
    wait for 5 ns;
    i_clk <= not i_clk;
  end process rtl_clk_proc;

  rtl_reset_proc : process 
  begin
    wait for 5 ns;
    --wait until rising_edge(i_clk);
    wait for 10 ns;
    i_rst <= '0';
  end process rtl_reset_proc;

  rtl_init_gen_proc : process 
  begin
    wait for 100 ns;
   -- wait until rising_edge(i_clk);
    wait for 5 ns;
    i_init <= '1';
    wait for 20 ns;
    i_init <= '0';
  end process rtl_init_gen_proc;

 
end architecture rtl_test;
