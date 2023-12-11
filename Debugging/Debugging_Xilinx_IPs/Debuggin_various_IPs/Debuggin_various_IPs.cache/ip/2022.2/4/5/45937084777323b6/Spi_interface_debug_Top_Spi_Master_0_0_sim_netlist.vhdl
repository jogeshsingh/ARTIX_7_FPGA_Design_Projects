-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Nov 13 12:03:42 2023
-- Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Spi_interface_debug_Top_Spi_Master_0_0_sim_netlist.vhdl
-- Design      : Spi_interface_debug_Top_Spi_Master_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_posedge_detector is
  port (
    transfer_done_byte : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    d_out_reg_0 : in STD_LOGIC;
    d_out_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    byte_sent_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_posedge_detector;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_posedge_detector is
  signal d_in : STD_LOGIC;
  signal d_out : STD_LOGIC;
begin
byte_sent_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => d_out,
      I1 => d_out_reg_0,
      I2 => byte_sent_reg,
      O => transfer_done_byte
    );
d_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => d_out_reg_0,
      I1 => d_out_reg_1,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(3),
      O => d_in
    );
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => d_in,
      Q => d_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master is
  port (
    byte_transfer : out STD_LOGIC;
    i_rstn_0 : out STD_LOGIC;
    o_SSCLK : out STD_LOGIC;
    mosi_out : out STD_LOGIC;
    \FSM_sequential_p_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_p_state_reg[2]_0\ : out STD_LOGIC;
    byte_count : out STD_LOGIC;
    Cs_n_reg : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_data_valid : in STD_LOGIC;
    \p_state__0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_rstn : in STD_LOGIC;
    \FSM_sequential_p_state_reg[0]\ : in STD_LOGIC;
    init_tx_transfer_reg_0 : in STD_LOGIC;
    \FSM_sequential_p_state_reg[1]\ : in STD_LOGIC;
    Cs_n_reg_0 : in STD_LOGIC;
    Cs_n_reg_1 : in STD_LOGIC;
    Cs_n_reg_2 : in STD_LOGIC;
    Cs_n_reg_3 : in STD_LOGIC;
    i_sel_mode : in STD_LOGIC;
    msb_first_reg_0 : in STD_LOGIC;
    count_wait : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master is
  signal Cs_n_i_2_n_0 : STD_LOGIC;
  signal Cs_n_i_3_n_0 : STD_LOGIC;
  signal Cs_n_i_5_n_0 : STD_LOGIC;
  signal Cs_n_i_6_n_0 : STD_LOGIC;
  signal \FSM_sequential_p_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \_trailing_edge_i_1_n_0\ : STD_LOGIC;
  signal \_trailing_edge_reg_n_0\ : STD_LOGIC;
  signal byte_sent_i_2_n_0 : STD_LOGIC;
  signal \^byte_transfer\ : STD_LOGIC;
  signal \^i_rstn_0\ : STD_LOGIC;
  signal init_tx_transfer_i_1_n_0 : STD_LOGIC;
  signal init_tx_transfer_reg_n_0 : STD_LOGIC;
  signal initialize_transmit_i_1_n_0 : STD_LOGIC;
  signal initialize_transmit_reg_n_0 : STD_LOGIC;
  signal io_SDIO_i_1_n_0 : STD_LOGIC;
  signal io_SDIO_i_2_n_0 : STD_LOGIC;
  signal io_SDIO_i_3_n_0 : STD_LOGIC;
  signal io_SDIO_i_4_n_0 : STD_LOGIC;
  signal io_SDIO_i_5_n_0 : STD_LOGIC;
  signal io_SDIO_i_6_n_0 : STD_LOGIC;
  signal io_SDIO_i_7_n_0 : STD_LOGIC;
  signal io_SDIO_i_8_n_0 : STD_LOGIC;
  signal io_SDIO_i_9_n_0 : STD_LOGIC;
  signal latch_data_transfer_mode_i_1_n_0 : STD_LOGIC;
  signal lsb_first : STD_LOGIC;
  signal master_rdy_i_1_n_0 : STD_LOGIC;
  signal master_spi_rdy : STD_LOGIC;
  signal \^mosi_out\ : STD_LOGIC;
  signal msb_first_i_1_n_0 : STD_LOGIC;
  signal msb_first_reg_n_0 : STD_LOGIC;
  signal o_latch_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_state__1\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_clk_count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal spi_clk_count0 : STD_LOGIC;
  signal \spi_clk_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_clk_count[1]_i_1_n_0\ : STD_LOGIC;
  signal spi_clk_edges0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \spi_clk_edges[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_clk_edges[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_clk_edges[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_clk_edges_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_clk_edges_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_clk_edges_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_clk_edges_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_clk_edges_reg_n_0_[4]\ : STD_LOGIC;
  signal spi_clock7_out : STD_LOGIC;
  signal spi_clock_i_1_n_0 : STD_LOGIC;
  signal spi_clock_reg_n_0 : STD_LOGIC;
  signal start_serialize : STD_LOGIC;
  signal transfer_done_byte : STD_LOGIC;
  signal \tx_byte_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \tx_byte_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \tx_byte_count[1]_i_3_n_0\ : STD_LOGIC;
  signal \tx_byte_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \tx_byte_count[2]_i_3_n_0\ : STD_LOGIC;
  signal \tx_byte_count[2]_i_4_n_0\ : STD_LOGIC;
  signal \tx_byte_count[2]_i_5_n_0\ : STD_LOGIC;
  signal \tx_byte_count[2]_i_6_n_0\ : STD_LOGIC;
  signal \tx_byte_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_byte_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_byte_count_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cs_n_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \_trailing_edge_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \byte_count[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of byte_sent_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of io_SDIO_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of io_SDIO_i_6 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of io_SDIO_i_9 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of msb_first_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \spi_clk_count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spi_clk_edges[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spi_clk_edges[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \spi_clk_edges[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spi_clk_edges[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_clk_edges[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tx_byte_count[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tx_byte_count[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tx_byte_count[2]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tx_byte_count[2]_i_5\ : label is "soft_lutpair2";
begin
  byte_transfer <= \^byte_transfer\;
  i_rstn_0 <= \^i_rstn_0\;
  mosi_out <= \^mosi_out\;
Cs_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFEEEEEEE0"
    )
        port map (
      I0 => Cs_n_i_2_n_0,
      I1 => Cs_n_i_3_n_0,
      I2 => count_wait,
      I3 => Cs_n_i_5_n_0,
      I4 => Cs_n_i_6_n_0,
      I5 => init_tx_transfer_reg_0,
      O => Cs_n_reg
    );
Cs_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C0CCC4C4C000"
    )
        port map (
      I0 => i_data_valid,
      I1 => \p_state__0\(1),
      I2 => \FSM_sequential_p_state_reg[1]\,
      I3 => \p_state__0\(0),
      I4 => \p_state__0\(2),
      I5 => master_spi_rdy,
      O => Cs_n_i_2_n_0
    );
Cs_n_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA00003FFF"
    )
        port map (
      I0 => \^byte_transfer\,
      I1 => Cs_n_reg_0,
      I2 => Cs_n_reg_1,
      I3 => Cs_n_reg_2,
      I4 => Cs_n_reg_3,
      I5 => \p_state__0\(0),
      O => Cs_n_i_3_n_0
    );
Cs_n_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^byte_transfer\,
      I1 => \p_state__0\(2),
      I2 => \p_state__0\(1),
      O => Cs_n_i_5_n_0
    );
Cs_n_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FECE0303FE020000"
    )
        port map (
      I0 => master_spi_rdy,
      I1 => \p_state__0\(2),
      I2 => \p_state__0\(0),
      I3 => \FSM_sequential_p_state_reg[1]\,
      I4 => \p_state__0\(1),
      I5 => i_data_valid,
      O => Cs_n_i_6_n_0
    );
\FSM_sequential_p_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFEEFFEE00EE00"
    )
        port map (
      I0 => \FSM_sequential_p_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_p_state_reg[0]\,
      I2 => \p_state__0\(2),
      I3 => i_rstn,
      I4 => \p_state__0\(1),
      I5 => \p_state__0\(0),
      O => \FSM_sequential_p_state_reg[2]_0\
    );
\FSM_sequential_p_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000CA0F0000CA"
    )
        port map (
      I0 => i_data_valid,
      I1 => master_spi_rdy,
      I2 => \p_state__0\(1),
      I3 => \p_state__0\(0),
      I4 => \p_state__0\(2),
      I5 => \^byte_transfer\,
      O => \FSM_sequential_p_state[0]_i_2_n_0\
    );
\FSM_sequential_p_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFA0AFA0"
    )
        port map (
      I0 => \p_state__1\(1),
      I1 => \p_state__0\(2),
      I2 => i_rstn,
      I3 => \p_state__0\(1),
      I4 => \p_state__0\(0),
      O => \FSM_sequential_p_state_reg[2]\
    );
\FSM_sequential_p_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"46464EEE06060EAE"
    )
        port map (
      I0 => \p_state__0\(1),
      I1 => \p_state__0\(0),
      I2 => \p_state__0\(2),
      I3 => i_data_valid,
      I4 => \FSM_sequential_p_state_reg[1]\,
      I5 => \^byte_transfer\,
      O => \p_state__1\(1)
    );
UO_POSEDGE_DETECT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_posedge_detector
     port map (
      Q(3) => \spi_clk_edges_reg_n_0_[3]\,
      Q(2) => \spi_clk_edges_reg_n_0_[2]\,
      Q(1) => \spi_clk_edges_reg_n_0_[1]\,
      Q(0) => \spi_clk_edges_reg_n_0_[0]\,
      byte_sent_reg => byte_sent_i_2_n_0,
      d_out_reg_0 => \_trailing_edge_reg_n_0\,
      d_out_reg_1 => \spi_clk_edges_reg_n_0_[4]\,
      i_clk => i_clk,
      transfer_done_byte => transfer_done_byte
    );
\_trailing_edge_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => spi_clk_count(0),
      I1 => spi_clk_count(1),
      I2 => spi_clk_count0,
      I3 => \_trailing_edge_reg_n_0\,
      O => \_trailing_edge_i_1_n_0\
    );
\_trailing_edge_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \_trailing_edge_i_1_n_0\,
      Q => \_trailing_edge_reg_n_0\,
      R => \^i_rstn_0\
    );
\byte_count[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008380"
    )
        port map (
      I0 => \^byte_transfer\,
      I1 => \p_state__0\(0),
      I2 => \p_state__0\(2),
      I3 => i_data_valid,
      I4 => \p_state__0\(1),
      O => byte_count
    );
byte_sent_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \spi_clk_edges_reg_n_0_[3]\,
      I1 => \spi_clk_edges_reg_n_0_[0]\,
      I2 => \spi_clk_edges_reg_n_0_[1]\,
      I3 => \spi_clk_edges_reg_n_0_[2]\,
      I4 => \spi_clk_edges_reg_n_0_[4]\,
      O => byte_sent_i_2_n_0
    );
byte_sent_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => transfer_done_byte,
      Q => \^byte_transfer\,
      R => \^i_rstn_0\
    );
init_tx_transfer_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA000008AA00AA88"
    )
        port map (
      I0 => i_rstn,
      I1 => start_serialize,
      I2 => io_SDIO_i_6_n_0,
      I3 => init_tx_transfer_reg_n_0,
      I4 => init_tx_transfer_reg_0,
      I5 => initialize_transmit_reg_n_0,
      O => init_tx_transfer_i_1_n_0
    );
init_tx_transfer_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => init_tx_transfer_i_1_n_0,
      Q => init_tx_transfer_reg_n_0,
      R => '0'
    );
initialize_transmit_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => start_serialize,
      I1 => byte_sent_i_2_n_0,
      I2 => initialize_transmit_reg_n_0,
      O => initialize_transmit_i_1_n_0
    );
initialize_transmit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => initialize_transmit_i_1_n_0,
      Q => initialize_transmit_reg_n_0,
      R => \^i_rstn_0\
    );
io_SDIO_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8B8B8B8B8"
    )
        port map (
      I0 => \^mosi_out\,
      I1 => io_SDIO_i_2_n_0,
      I2 => io_SDIO_i_3_n_0,
      I3 => io_SDIO_i_4_n_0,
      I4 => io_SDIO_i_5_n_0,
      I5 => io_SDIO_i_6_n_0,
      O => io_SDIO_i_1_n_0
    );
io_SDIO_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDFDFDFDFDF"
    )
        port map (
      I0 => initialize_transmit_reg_n_0,
      I1 => init_tx_transfer_reg_0,
      I2 => init_tx_transfer_reg_n_0,
      I3 => msb_first_reg_n_0,
      I4 => lsb_first,
      I5 => \_trailing_edge_reg_n_0\,
      O => io_SDIO_i_2_n_0
    );
io_SDIO_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"232F333F20200000"
    )
        port map (
      I0 => o_latch_data(0),
      I1 => \_trailing_edge_reg_n_0\,
      I2 => lsb_first,
      I3 => msb_first_reg_n_0,
      I4 => init_tx_transfer_reg_n_0,
      I5 => o_latch_data(7),
      O => io_SDIO_i_3_n_0
    );
io_SDIO_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFFFEEEEEEFEE"
    )
        port map (
      I0 => io_SDIO_i_7_n_0,
      I1 => io_SDIO_i_8_n_0,
      I2 => \tx_byte_count_reg_n_0_[2]\,
      I3 => o_latch_data(0),
      I4 => io_SDIO_i_9_n_0,
      I5 => o_latch_data(4),
      O => io_SDIO_i_4_n_0
    );
io_SDIO_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080C000"
    )
        port map (
      I0 => o_latch_data(7),
      I1 => \tx_byte_count_reg_n_0_[1]\,
      I2 => \tx_byte_count_reg_n_0_[0]\,
      I3 => o_latch_data(3),
      I4 => \tx_byte_count_reg_n_0_[2]\,
      O => io_SDIO_i_5_n_0
    );
io_SDIO_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => msb_first_reg_n_0,
      I1 => lsb_first,
      I2 => \_trailing_edge_reg_n_0\,
      O => io_SDIO_i_6_n_0
    );
io_SDIO_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \tx_byte_count_reg_n_0_[0]\,
      I1 => \tx_byte_count_reg_n_0_[1]\,
      I2 => o_latch_data(2),
      I3 => \tx_byte_count_reg_n_0_[2]\,
      I4 => o_latch_data(6),
      O => io_SDIO_i_7_n_0
    );
io_SDIO_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => \tx_byte_count_reg_n_0_[1]\,
      I1 => \tx_byte_count_reg_n_0_[0]\,
      I2 => o_latch_data(1),
      I3 => \tx_byte_count_reg_n_0_[2]\,
      I4 => o_latch_data(5),
      O => io_SDIO_i_8_n_0
    );
io_SDIO_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tx_byte_count_reg_n_0_[1]\,
      I1 => \tx_byte_count_reg_n_0_[0]\,
      O => io_SDIO_i_9_n_0
    );
io_SDIO_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => io_SDIO_i_1_n_0,
      Q => \^mosi_out\,
      R => \^i_rstn_0\
    );
latch_data_transfer_mode_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => i_sel_mode,
      I1 => msb_first_reg_0,
      I2 => lsb_first,
      O => latch_data_transfer_mode_i_1_n_0
    );
latch_data_transfer_mode_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => latch_data_transfer_mode_i_1_n_0,
      Q => lsb_first,
      R => \^i_rstn_0\
    );
master_rdy_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_rstn,
      I1 => spi_clk_count0,
      O => master_rdy_i_1_n_0
    );
master_rdy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => master_rdy_i_1_n_0,
      Q => master_spi_rdy,
      R => '0'
    );
msb_first_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => i_sel_mode,
      I1 => msb_first_reg_0,
      I2 => msb_first_reg_n_0,
      O => msb_first_i_1_n_0
    );
msb_first_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => msb_first_i_1_n_0,
      Q => msb_first_reg_n_0,
      S => \^i_rstn_0\
    );
\o_latch_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => start_serialize,
      D => Q(0),
      Q => o_latch_data(0),
      R => \^i_rstn_0\
    );
\o_latch_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => start_serialize,
      D => Q(1),
      Q => o_latch_data(1),
      R => \^i_rstn_0\
    );
\o_latch_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => start_serialize,
      D => Q(2),
      Q => o_latch_data(2),
      R => \^i_rstn_0\
    );
\o_latch_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => start_serialize,
      D => Q(3),
      Q => o_latch_data(3),
      R => \^i_rstn_0\
    );
\o_latch_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => start_serialize,
      D => Q(4),
      Q => o_latch_data(4),
      R => \^i_rstn_0\
    );
\o_latch_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => start_serialize,
      D => Q(5),
      Q => o_latch_data(5),
      R => \^i_rstn_0\
    );
\o_latch_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => start_serialize,
      D => Q(6),
      Q => o_latch_data(6),
      R => \^i_rstn_0\
    );
\o_latch_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => start_serialize,
      D => Q(7),
      Q => o_latch_data(7),
      R => \^i_rstn_0\
    );
spi_cclk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rstn,
      O => \^i_rstn_0\
    );
spi_cclk_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => spi_clock_reg_n_0,
      Q => o_SSCLK,
      S => \^i_rstn_0\
    );
\spi_clk_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => spi_clk_count0,
      I1 => spi_clk_count(0),
      O => \spi_clk_count[0]_i_1_n_0\
    );
\spi_clk_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => spi_clk_count(0),
      I1 => spi_clk_count0,
      I2 => spi_clk_count(1),
      O => \spi_clk_count[1]_i_1_n_0\
    );
\spi_clk_count[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \spi_clk_edges_reg_n_0_[4]\,
      I1 => \spi_clk_edges_reg_n_0_[2]\,
      I2 => \spi_clk_edges_reg_n_0_[1]\,
      I3 => \spi_clk_edges_reg_n_0_[0]\,
      I4 => \spi_clk_edges_reg_n_0_[3]\,
      I5 => init_tx_transfer_reg_0,
      O => spi_clk_count0
    );
\spi_clk_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \spi_clk_count[0]_i_1_n_0\,
      Q => spi_clk_count(0),
      R => \^i_rstn_0\
    );
\spi_clk_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \spi_clk_count[1]_i_1_n_0\,
      Q => spi_clk_count(1),
      R => \^i_rstn_0\
    );
\spi_clk_edges[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \spi_clk_edges_reg_n_0_[0]\,
      O => spi_clk_edges0(0)
    );
\spi_clk_edges[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \spi_clk_edges_reg_n_0_[0]\,
      I1 => \spi_clk_edges_reg_n_0_[1]\,
      O => spi_clk_edges0(1)
    );
\spi_clk_edges[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \spi_clk_edges_reg_n_0_[2]\,
      I1 => \spi_clk_edges_reg_n_0_[1]\,
      I2 => \spi_clk_edges_reg_n_0_[0]\,
      O => spi_clk_edges0(2)
    );
\spi_clk_edges[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => spi_clk_count0,
      I1 => i_data_valid,
      I2 => i_rstn,
      O => \spi_clk_edges[3]_i_1_n_0\
    );
\spi_clk_edges[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => spi_clk_count0,
      I1 => spi_clk_count(0),
      O => spi_clock7_out
    );
\spi_clk_edges[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \spi_clk_edges_reg_n_0_[3]\,
      I1 => \spi_clk_edges_reg_n_0_[0]\,
      I2 => \spi_clk_edges_reg_n_0_[1]\,
      I3 => \spi_clk_edges_reg_n_0_[2]\,
      O => spi_clk_edges0(3)
    );
\spi_clk_edges[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC7CCC4"
    )
        port map (
      I0 => spi_clk_count(0),
      I1 => \spi_clk_edges_reg_n_0_[4]\,
      I2 => \spi_clk_edges[4]_i_2_n_0\,
      I3 => init_tx_transfer_reg_0,
      I4 => i_data_valid,
      O => \spi_clk_edges[4]_i_1_n_0\
    );
\spi_clk_edges[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \spi_clk_edges_reg_n_0_[2]\,
      I1 => \spi_clk_edges_reg_n_0_[1]\,
      I2 => \spi_clk_edges_reg_n_0_[0]\,
      I3 => \spi_clk_edges_reg_n_0_[3]\,
      O => \spi_clk_edges[4]_i_2_n_0\
    );
\spi_clk_edges_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => spi_clock7_out,
      D => spi_clk_edges0(0),
      Q => \spi_clk_edges_reg_n_0_[0]\,
      R => \spi_clk_edges[3]_i_1_n_0\
    );
\spi_clk_edges_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => spi_clock7_out,
      D => spi_clk_edges0(1),
      Q => \spi_clk_edges_reg_n_0_[1]\,
      R => \spi_clk_edges[3]_i_1_n_0\
    );
\spi_clk_edges_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => spi_clock7_out,
      D => spi_clk_edges0(2),
      Q => \spi_clk_edges_reg_n_0_[2]\,
      R => \spi_clk_edges[3]_i_1_n_0\
    );
\spi_clk_edges_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => spi_clock7_out,
      D => spi_clk_edges0(3),
      Q => \spi_clk_edges_reg_n_0_[3]\,
      R => \spi_clk_edges[3]_i_1_n_0\
    );
\spi_clk_edges_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \spi_clk_edges[4]_i_1_n_0\,
      Q => \spi_clk_edges_reg_n_0_[4]\,
      R => \^i_rstn_0\
    );
spi_clock_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => spi_clk_count(0),
      I1 => spi_clk_count0,
      I2 => spi_clock_reg_n_0,
      O => spi_clock_i_1_n_0
    );
spi_clock_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => spi_clock_i_1_n_0,
      Q => spi_clock_reg_n_0,
      S => \^i_rstn_0\
    );
start_serialize_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => i_data_valid,
      Q => start_serialize,
      R => \^i_rstn_0\
    );
\tx_byte_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEAAAA22A2AAAA"
    )
        port map (
      I0 => \tx_byte_count[0]_i_2_n_0\,
      I1 => i_rstn,
      I2 => start_serialize,
      I3 => init_tx_transfer_reg_0,
      I4 => io_SDIO_i_2_n_0,
      I5 => \tx_byte_count_reg_n_0_[0]\,
      O => \tx_byte_count[0]_i_1_n_0\
    );
\tx_byte_count[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00509050F0509050"
    )
        port map (
      I0 => lsb_first,
      I1 => init_tx_transfer_reg_n_0,
      I2 => i_rstn,
      I3 => initialize_transmit_reg_n_0,
      I4 => io_SDIO_i_6_n_0,
      I5 => \tx_byte_count_reg_n_0_[0]\,
      O => \tx_byte_count[0]_i_2_n_0\
    );
\tx_byte_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEAAAA22A2AAAA"
    )
        port map (
      I0 => \tx_byte_count[1]_i_2_n_0\,
      I1 => i_rstn,
      I2 => start_serialize,
      I3 => init_tx_transfer_reg_0,
      I4 => io_SDIO_i_2_n_0,
      I5 => \tx_byte_count_reg_n_0_[1]\,
      O => \tx_byte_count[1]_i_1_n_0\
    );
\tx_byte_count[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA00AA082A00AA"
    )
        port map (
      I0 => i_rstn,
      I1 => initialize_transmit_reg_n_0,
      I2 => msb_first_reg_n_0,
      I3 => lsb_first,
      I4 => \_trailing_edge_reg_n_0\,
      I5 => \tx_byte_count[1]_i_3_n_0\,
      O => \tx_byte_count[1]_i_2_n_0\
    );
\tx_byte_count[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \tx_byte_count_reg_n_0_[1]\,
      I1 => \tx_byte_count_reg_n_0_[0]\,
      O => \tx_byte_count[1]_i_3_n_0\
    );
\tx_byte_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEAFFFFFAEA0000"
    )
        port map (
      I0 => \tx_byte_count[2]_i_2_n_0\,
      I1 => \tx_byte_count[2]_i_3_n_0\,
      I2 => \tx_byte_count[2]_i_4_n_0\,
      I3 => \tx_byte_count[2]_i_5_n_0\,
      I4 => \tx_byte_count[2]_i_6_n_0\,
      I5 => \tx_byte_count_reg_n_0_[2]\,
      O => \tx_byte_count[2]_i_1_n_0\
    );
\tx_byte_count[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A00AA"
    )
        port map (
      I0 => i_rstn,
      I1 => initialize_transmit_reg_n_0,
      I2 => msb_first_reg_n_0,
      I3 => lsb_first,
      I4 => \_trailing_edge_reg_n_0\,
      O => \tx_byte_count[2]_i_2_n_0\
    );
\tx_byte_count[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400040004000"
    )
        port map (
      I0 => msb_first_reg_n_0,
      I1 => \_trailing_edge_reg_n_0\,
      I2 => lsb_first,
      I3 => \tx_byte_count_reg_n_0_[2]\,
      I4 => \tx_byte_count_reg_n_0_[1]\,
      I5 => \tx_byte_count_reg_n_0_[0]\,
      O => \tx_byte_count[2]_i_3_n_0\
    );
\tx_byte_count[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800000"
    )
        port map (
      I0 => i_rstn,
      I1 => initialize_transmit_reg_n_0,
      I2 => msb_first_reg_n_0,
      I3 => lsb_first,
      I4 => \_trailing_edge_reg_n_0\,
      O => \tx_byte_count[2]_i_4_n_0\
    );
\tx_byte_count[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9000000"
    )
        port map (
      I0 => \tx_byte_count_reg_n_0_[2]\,
      I1 => \tx_byte_count_reg_n_0_[1]\,
      I2 => \tx_byte_count_reg_n_0_[0]\,
      I3 => \_trailing_edge_reg_n_0\,
      I4 => msb_first_reg_n_0,
      O => \tx_byte_count[2]_i_5_n_0\
    );
\tx_byte_count[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFD5555DDDD"
    )
        port map (
      I0 => i_rstn,
      I1 => start_serialize,
      I2 => io_SDIO_i_6_n_0,
      I3 => init_tx_transfer_reg_n_0,
      I4 => init_tx_transfer_reg_0,
      I5 => initialize_transmit_reg_n_0,
      O => \tx_byte_count[2]_i_6_n_0\
    );
\tx_byte_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \tx_byte_count[0]_i_1_n_0\,
      Q => \tx_byte_count_reg_n_0_[0]\,
      R => '0'
    );
\tx_byte_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \tx_byte_count[1]_i_1_n_0\,
      Q => \tx_byte_count_reg_n_0_[1]\,
      R => '0'
    );
\tx_byte_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \tx_byte_count[2]_i_1_n_0\,
      Q => \tx_byte_count_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Top_Spi_Master is
  port (
    Cs_n_reg_0 : out STD_LOGIC;
    o_SSCLK : out STD_LOGIC;
    \byte_count_reg[0]_0\ : out STD_LOGIC;
    \byte_count_reg[1]_0\ : out STD_LOGIC;
    byte_cnt : out STD_LOGIC_VECTOR ( 0 to 0 );
    debug_p_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mosi_out : out STD_LOGIC;
    i_rstn : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_data_valid : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_sel_mode : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Top_Spi_Master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Top_Spi_Master is
  signal Cs_n_i_7_n_0 : STD_LOGIC;
  signal \^cs_n_reg_0\ : STD_LOGIC;
  signal \FSM_sequential_p_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_p_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_p_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_p_state[2]_i_2_n_0\ : STD_LOGIC;
  signal UO_SPI_MASTER_IP_n_1 : STD_LOGIC;
  signal UO_SPI_MASTER_IP_n_4 : STD_LOGIC;
  signal UO_SPI_MASTER_IP_n_5 : STD_LOGIC;
  signal UO_SPI_MASTER_IP_n_7 : STD_LOGIC;
  signal \^byte_cnt\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal byte_count : STD_LOGIC;
  signal \byte_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \^byte_count_reg[0]_0\ : STD_LOGIC;
  signal \^byte_count_reg[1]_0\ : STD_LOGIC;
  signal byte_transfer : STD_LOGIC;
  signal count_wait : STD_LOGIC;
  signal \count_wait[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_wait[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_wait[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_wait_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_wait_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_wait_reg_n_0_[2]\ : STD_LOGIC;
  signal done_t_i_1_n_0 : STD_LOGIC;
  signal done_t_reg_n_0 : STD_LOGIC;
  signal latch_reg_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal latch_reg_data1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal latch_reg_data_0 : STD_LOGIC;
  signal \p_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cs_n_i_4 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of Cs_n_i_7 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_p_state[2]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_p_state_reg[0]\ : label is "WAIT_DATA_COUNT:001,WAIT_INSTR_BYTE_DONE:010,WAIT_FEW_CLK_CYCLES:100,CHECK_DATA_READY:000,WAIT_TRANSFER_DONE:101,WAIT_DATA_VALID:110,CHECK_WRITE_READ:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_p_state_reg[1]\ : label is "WAIT_DATA_COUNT:001,WAIT_INSTR_BYTE_DONE:010,WAIT_FEW_CLK_CYCLES:100,CHECK_DATA_READY:000,WAIT_TRANSFER_DONE:101,WAIT_DATA_VALID:110,CHECK_WRITE_READ:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_p_state_reg[2]\ : label is "WAIT_DATA_COUNT:001,WAIT_INSTR_BYTE_DONE:010,WAIT_FEW_CLK_CYCLES:100,CHECK_DATA_READY:000,WAIT_TRANSFER_DONE:101,WAIT_DATA_VALID:110,CHECK_WRITE_READ:011";
  attribute SOFT_HLUTNM of \count_wait[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_wait[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \debug_p_state[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \debug_p_state[1]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \debug_p_state[2]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of done_t_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \latch_reg_data[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \latch_reg_data[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \latch_reg_data[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \latch_reg_data[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \latch_reg_data[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \latch_reg_data[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \latch_reg_data[7]_i_2\ : label is "soft_lutpair13";
begin
  Cs_n_reg_0 <= \^cs_n_reg_0\;
  byte_cnt(0) <= \^byte_cnt\(0);
  \byte_count_reg[0]_0\ <= \^byte_count_reg[0]_0\;
  \byte_count_reg[1]_0\ <= \^byte_count_reg[1]_0\;
Cs_n_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => \p_state__0\(1),
      I2 => \p_state__0\(0),
      O => count_wait
    );
Cs_n_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \p_state__0\(1),
      I1 => \p_state__0\(2),
      O => Cs_n_i_7_n_0
    );
Cs_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => UO_SPI_MASTER_IP_n_7,
      Q => \^cs_n_reg_0\,
      S => UO_SPI_MASTER_IP_n_1
    );
\FSM_sequential_p_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40400000404F0000"
    )
        port map (
      I0 => \FSM_sequential_p_state[2]_i_2_n_0\,
      I1 => i_data_valid,
      I2 => \p_state__0\(1),
      I3 => \p_state__0\(0),
      I4 => \p_state__0\(2),
      I5 => \FSM_sequential_p_state[0]_i_4_n_0\,
      O => \FSM_sequential_p_state[0]_i_3_n_0\
    );
\FSM_sequential_p_state[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \count_wait_reg_n_0_[0]\,
      I1 => \count_wait_reg_n_0_[1]\,
      I2 => \count_wait_reg_n_0_[2]\,
      O => \FSM_sequential_p_state[0]_i_4_n_0\
    );
\FSM_sequential_p_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DCCC4CCC"
    )
        port map (
      I0 => \FSM_sequential_p_state[2]_i_2_n_0\,
      I1 => \p_state__0\(2),
      I2 => i_rstn,
      I3 => \p_state__0\(1),
      I4 => \p_state__0\(0),
      O => \FSM_sequential_p_state[2]_i_1_n_0\
    );
\FSM_sequential_p_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^byte_count_reg[0]_0\,
      I1 => \^byte_count_reg[1]_0\,
      I2 => \^byte_cnt\(0),
      O => \FSM_sequential_p_state[2]_i_2_n_0\
    );
\FSM_sequential_p_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => UO_SPI_MASTER_IP_n_5,
      Q => \p_state__0\(0),
      R => '0'
    );
\FSM_sequential_p_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => UO_SPI_MASTER_IP_n_4,
      Q => \p_state__0\(1),
      R => '0'
    );
\FSM_sequential_p_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \FSM_sequential_p_state[2]_i_1_n_0\,
      Q => \p_state__0\(2),
      R => '0'
    );
UO_SPI_MASTER_IP: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master
     port map (
      Cs_n_reg => UO_SPI_MASTER_IP_n_7,
      Cs_n_reg_0 => \count_wait_reg_n_0_[0]\,
      Cs_n_reg_1 => \count_wait_reg_n_0_[1]\,
      Cs_n_reg_2 => \count_wait_reg_n_0_[2]\,
      Cs_n_reg_3 => Cs_n_i_7_n_0,
      \FSM_sequential_p_state_reg[0]\ => \FSM_sequential_p_state[0]_i_3_n_0\,
      \FSM_sequential_p_state_reg[1]\ => \FSM_sequential_p_state[2]_i_2_n_0\,
      \FSM_sequential_p_state_reg[2]\ => UO_SPI_MASTER_IP_n_4,
      \FSM_sequential_p_state_reg[2]_0\ => UO_SPI_MASTER_IP_n_5,
      Q(7 downto 0) => latch_reg_data(7 downto 0),
      byte_count => byte_count,
      byte_transfer => byte_transfer,
      count_wait => count_wait,
      i_clk => i_clk,
      i_data_valid => i_data_valid,
      i_rstn => i_rstn,
      i_rstn_0 => UO_SPI_MASTER_IP_n_1,
      i_sel_mode => i_sel_mode,
      init_tx_transfer_reg_0 => \^cs_n_reg_0\,
      mosi_out => mosi_out,
      msb_first_reg_0 => done_t_reg_n_0,
      o_SSCLK => o_SSCLK,
      \p_state__0\(2 downto 0) => \p_state__0\(2 downto 0)
    );
\byte_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7C7F00008080"
    )
        port map (
      I0 => byte_transfer,
      I1 => \p_state__0\(0),
      I2 => \p_state__0\(2),
      I3 => i_data_valid,
      I4 => \p_state__0\(1),
      I5 => \^byte_count_reg[0]_0\,
      O => \byte_count[0]_i_1_n_0\
    );
\byte_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75FF5700"
    )
        port map (
      I0 => \p_state__0\(0),
      I1 => \p_state__0\(1),
      I2 => \^byte_count_reg[0]_0\,
      I3 => byte_count,
      I4 => \^byte_count_reg[1]_0\,
      O => \byte_count[1]_i_1_n_0\
    );
\byte_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440FFFF00040000"
    )
        port map (
      I0 => \p_state__0\(1),
      I1 => \p_state__0\(2),
      I2 => \^byte_count_reg[0]_0\,
      I3 => \^byte_count_reg[1]_0\,
      I4 => byte_count,
      I5 => \^byte_cnt\(0),
      O => \byte_count[2]_i_1_n_0\
    );
\byte_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \byte_count[0]_i_1_n_0\,
      Q => \^byte_count_reg[0]_0\,
      R => UO_SPI_MASTER_IP_n_1
    );
\byte_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \byte_count[1]_i_1_n_0\,
      Q => \^byte_count_reg[1]_0\,
      R => UO_SPI_MASTER_IP_n_1
    );
\byte_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \byte_count[2]_i_1_n_0\,
      Q => \^byte_cnt\(0),
      R => UO_SPI_MASTER_IP_n_1
    );
\count_wait[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD02"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => \p_state__0\(1),
      I2 => \p_state__0\(0),
      I3 => \count_wait_reg_n_0_[0]\,
      O => \count_wait[0]_i_1_n_0\
    );
\count_wait[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70008"
    )
        port map (
      I0 => \count_wait_reg_n_0_[0]\,
      I1 => \p_state__0\(2),
      I2 => \p_state__0\(1),
      I3 => \p_state__0\(0),
      I4 => \count_wait_reg_n_0_[1]\,
      O => \count_wait[1]_i_1_n_0\
    );
\count_wait[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000080"
    )
        port map (
      I0 => \count_wait_reg_n_0_[0]\,
      I1 => \count_wait_reg_n_0_[1]\,
      I2 => \p_state__0\(2),
      I3 => \p_state__0\(1),
      I4 => \p_state__0\(0),
      I5 => \count_wait_reg_n_0_[2]\,
      O => \count_wait[2]_i_1_n_0\
    );
\count_wait_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \count_wait[0]_i_1_n_0\,
      Q => \count_wait_reg_n_0_[0]\,
      R => UO_SPI_MASTER_IP_n_1
    );
\count_wait_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \count_wait[1]_i_1_n_0\,
      Q => \count_wait_reg_n_0_[1]\,
      R => UO_SPI_MASTER_IP_n_1
    );
\count_wait_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => \count_wait[2]_i_1_n_0\,
      Q => \count_wait_reg_n_0_[2]\,
      R => UO_SPI_MASTER_IP_n_1
    );
\debug_p_state[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => \p_state__0\(1),
      I2 => \p_state__0\(0),
      O => debug_p_state(0)
    );
\debug_p_state[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1C"
    )
        port map (
      I0 => \p_state__0\(0),
      I1 => \p_state__0\(1),
      I2 => \p_state__0\(2),
      O => debug_p_state(1)
    );
\debug_p_state[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4C"
    )
        port map (
      I0 => \p_state__0\(0),
      I1 => \p_state__0\(2),
      I2 => \p_state__0\(1),
      O => debug_p_state(2)
    );
done_t_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFC2800"
    )
        port map (
      I0 => \FSM_sequential_p_state[2]_i_2_n_0\,
      I1 => \p_state__0\(0),
      I2 => \p_state__0\(2),
      I3 => \p_state__0\(1),
      I4 => done_t_reg_n_0,
      O => done_t_i_1_n_0
    );
done_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => '1',
      D => done_t_i_1_n_0,
      Q => done_t_reg_n_0,
      R => UO_SPI_MASTER_IP_n_1
    );
\latch_reg_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => i_data(0),
      O => latch_reg_data1_in(0)
    );
\latch_reg_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => i_data(1),
      O => latch_reg_data1_in(1)
    );
\latch_reg_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => i_data(2),
      O => latch_reg_data1_in(2)
    );
\latch_reg_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => i_data(3),
      O => latch_reg_data1_in(3)
    );
\latch_reg_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => i_data(4),
      O => latch_reg_data1_in(4)
    );
\latch_reg_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_data(5),
      I1 => \p_state__0\(2),
      O => latch_reg_data1_in(5)
    );
\latch_reg_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => i_data(6),
      O => latch_reg_data1_in(6)
    );
\latch_reg_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000300"
    )
        port map (
      I0 => \FSM_sequential_p_state[2]_i_2_n_0\,
      I1 => \p_state__0\(0),
      I2 => \p_state__0\(2),
      I3 => i_data_valid,
      I4 => \p_state__0\(1),
      O => latch_reg_data_0
    );
\latch_reg_data[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_state__0\(2),
      I1 => i_data(7),
      O => latch_reg_data1_in(7)
    );
\latch_reg_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => latch_reg_data_0,
      D => latch_reg_data1_in(0),
      Q => latch_reg_data(0),
      R => UO_SPI_MASTER_IP_n_1
    );
\latch_reg_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => latch_reg_data_0,
      D => latch_reg_data1_in(1),
      Q => latch_reg_data(1),
      R => UO_SPI_MASTER_IP_n_1
    );
\latch_reg_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => latch_reg_data_0,
      D => latch_reg_data1_in(2),
      Q => latch_reg_data(2),
      R => UO_SPI_MASTER_IP_n_1
    );
\latch_reg_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => latch_reg_data_0,
      D => latch_reg_data1_in(3),
      Q => latch_reg_data(3),
      R => UO_SPI_MASTER_IP_n_1
    );
\latch_reg_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => latch_reg_data_0,
      D => latch_reg_data1_in(4),
      Q => latch_reg_data(4),
      R => UO_SPI_MASTER_IP_n_1
    );
\latch_reg_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => latch_reg_data_0,
      D => latch_reg_data1_in(5),
      Q => latch_reg_data(5),
      R => UO_SPI_MASTER_IP_n_1
    );
\latch_reg_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => latch_reg_data_0,
      D => latch_reg_data1_in(6),
      Q => latch_reg_data(6),
      R => UO_SPI_MASTER_IP_n_1
    );
\latch_reg_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk,
      CE => latch_reg_data_0,
      D => latch_reg_data1_in(7),
      Q => latch_reg_data(7),
      R => UO_SPI_MASTER_IP_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_clk : in STD_LOGIC;
    i_rstn : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_data_valid : in STD_LOGIC;
    i_sel_mode : in STD_LOGIC;
    o_SSCLK : out STD_LOGIC;
    slave_data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    byte_cnt : out STD_LOGIC_VECTOR ( 2 downto 0 );
    chip_sel : out STD_LOGIC;
    mosi_out : out STD_LOGIC;
    debug_p_state : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Spi_interface_debug_Top_Spi_Master_0_0,Top_Spi_Master,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Top_Spi_Master,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_rstn : signal is "xilinx.com:signal:reset:1.0 i_rstn RST";
  attribute X_INTERFACE_PARAMETER of i_rstn : signal is "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  slave_data_out(7) <= \<const0>\;
  slave_data_out(6) <= \<const0>\;
  slave_data_out(5) <= \<const0>\;
  slave_data_out(4) <= \<const0>\;
  slave_data_out(3) <= \<const0>\;
  slave_data_out(2) <= \<const0>\;
  slave_data_out(1) <= \<const0>\;
  slave_data_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Top_Spi_Master
     port map (
      Cs_n_reg_0 => chip_sel,
      byte_cnt(0) => byte_cnt(2),
      \byte_count_reg[0]_0\ => byte_cnt(0),
      \byte_count_reg[1]_0\ => byte_cnt(1),
      debug_p_state(2 downto 0) => debug_p_state(2 downto 0),
      i_clk => i_clk,
      i_data(7 downto 0) => i_data(7 downto 0),
      i_data_valid => i_data_valid,
      i_rstn => i_rstn,
      i_sel_mode => i_sel_mode,
      mosi_out => mosi_out,
      o_SSCLK => o_SSCLK
    );
end STRUCTURE;
