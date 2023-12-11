// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 13 12:03:42 2023
// Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Spi_interface_debug_Top_Spi_Master_0_0_sim_netlist.v
// Design      : Spi_interface_debug_Top_Spi_Master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Spi_interface_debug_Top_Spi_Master_0_0,Top_Spi_Master,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Top_Spi_Master,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_clk,
    i_rstn,
    i_data,
    i_data_valid,
    i_sel_mode,
    o_SSCLK,
    slave_data_out,
    byte_cnt,
    chip_sel,
    mosi_out,
    debug_p_state);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_rstn;
  input [7:0]i_data;
  input i_data_valid;
  input i_sel_mode;
  output o_SSCLK;
  output [7:0]slave_data_out;
  output [2:0]byte_cnt;
  output chip_sel;
  output mosi_out;
  output [2:0]debug_p_state;

  wire \<const0> ;
  wire [2:0]byte_cnt;
  wire chip_sel;
  wire [2:0]debug_p_state;
  wire i_clk;
  wire [7:0]i_data;
  wire i_data_valid;
  wire i_rstn;
  wire i_sel_mode;
  wire mosi_out;
  wire o_SSCLK;

  assign slave_data_out[7] = \<const0> ;
  assign slave_data_out[6] = \<const0> ;
  assign slave_data_out[5] = \<const0> ;
  assign slave_data_out[4] = \<const0> ;
  assign slave_data_out[3] = \<const0> ;
  assign slave_data_out[2] = \<const0> ;
  assign slave_data_out[1] = \<const0> ;
  assign slave_data_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Top_Spi_Master inst
       (.Cs_n_reg_0(chip_sel),
        .byte_cnt(byte_cnt[2]),
        .\byte_count_reg[0]_0 (byte_cnt[0]),
        .\byte_count_reg[1]_0 (byte_cnt[1]),
        .debug_p_state(debug_p_state),
        .i_clk(i_clk),
        .i_data(i_data),
        .i_data_valid(i_data_valid),
        .i_rstn(i_rstn),
        .i_sel_mode(i_sel_mode),
        .mosi_out(mosi_out),
        .o_SSCLK(o_SSCLK));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Top_Spi_Master
   (Cs_n_reg_0,
    o_SSCLK,
    \byte_count_reg[0]_0 ,
    \byte_count_reg[1]_0 ,
    byte_cnt,
    debug_p_state,
    mosi_out,
    i_rstn,
    i_clk,
    i_data_valid,
    i_data,
    i_sel_mode);
  output Cs_n_reg_0;
  output o_SSCLK;
  output \byte_count_reg[0]_0 ;
  output \byte_count_reg[1]_0 ;
  output [0:0]byte_cnt;
  output [2:0]debug_p_state;
  output mosi_out;
  input i_rstn;
  input i_clk;
  input i_data_valid;
  input [7:0]i_data;
  input i_sel_mode;

  wire Cs_n_i_7_n_0;
  wire Cs_n_reg_0;
  wire \FSM_sequential_p_state[0]_i_3_n_0 ;
  wire \FSM_sequential_p_state[0]_i_4_n_0 ;
  wire \FSM_sequential_p_state[2]_i_1_n_0 ;
  wire \FSM_sequential_p_state[2]_i_2_n_0 ;
  wire UO_SPI_MASTER_IP_n_1;
  wire UO_SPI_MASTER_IP_n_4;
  wire UO_SPI_MASTER_IP_n_5;
  wire UO_SPI_MASTER_IP_n_7;
  wire [0:0]byte_cnt;
  wire byte_count;
  wire \byte_count[0]_i_1_n_0 ;
  wire \byte_count[1]_i_1_n_0 ;
  wire \byte_count[2]_i_1_n_0 ;
  wire \byte_count_reg[0]_0 ;
  wire \byte_count_reg[1]_0 ;
  wire byte_transfer;
  wire count_wait;
  wire \count_wait[0]_i_1_n_0 ;
  wire \count_wait[1]_i_1_n_0 ;
  wire \count_wait[2]_i_1_n_0 ;
  wire \count_wait_reg_n_0_[0] ;
  wire \count_wait_reg_n_0_[1] ;
  wire \count_wait_reg_n_0_[2] ;
  wire [2:0]debug_p_state;
  wire done_t_i_1_n_0;
  wire done_t_reg_n_0;
  wire i_clk;
  wire [7:0]i_data;
  wire i_data_valid;
  wire i_rstn;
  wire i_sel_mode;
  wire [7:0]latch_reg_data;
  wire [7:0]latch_reg_data1_in;
  wire latch_reg_data_0;
  wire mosi_out;
  wire o_SSCLK;
  wire [2:0]p_state__0;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    Cs_n_i_4
       (.I0(p_state__0[2]),
        .I1(p_state__0[1]),
        .I2(p_state__0[0]),
        .O(count_wait));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    Cs_n_i_7
       (.I0(p_state__0[1]),
        .I1(p_state__0[2]),
        .O(Cs_n_i_7_n_0));
  FDSE #(
    .INIT(1'b1)) 
    Cs_n_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(UO_SPI_MASTER_IP_n_7),
        .Q(Cs_n_reg_0),
        .S(UO_SPI_MASTER_IP_n_1));
  LUT6 #(
    .INIT(64'h40400000404F0000)) 
    \FSM_sequential_p_state[0]_i_3 
       (.I0(\FSM_sequential_p_state[2]_i_2_n_0 ),
        .I1(i_data_valid),
        .I2(p_state__0[1]),
        .I3(p_state__0[0]),
        .I4(p_state__0[2]),
        .I5(\FSM_sequential_p_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_p_state[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_p_state[0]_i_4 
       (.I0(\count_wait_reg_n_0_[0] ),
        .I1(\count_wait_reg_n_0_[1] ),
        .I2(\count_wait_reg_n_0_[2] ),
        .O(\FSM_sequential_p_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hDCCC4CCC)) 
    \FSM_sequential_p_state[2]_i_1 
       (.I0(\FSM_sequential_p_state[2]_i_2_n_0 ),
        .I1(p_state__0[2]),
        .I2(i_rstn),
        .I3(p_state__0[1]),
        .I4(p_state__0[0]),
        .O(\FSM_sequential_p_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_p_state[2]_i_2 
       (.I0(\byte_count_reg[0]_0 ),
        .I1(\byte_count_reg[1]_0 ),
        .I2(byte_cnt),
        .O(\FSM_sequential_p_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_DATA_COUNT:001,WAIT_INSTR_BYTE_DONE:010,WAIT_FEW_CLK_CYCLES:100,CHECK_DATA_READY:000,WAIT_TRANSFER_DONE:101,WAIT_DATA_VALID:110,CHECK_WRITE_READ:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_p_state_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(UO_SPI_MASTER_IP_n_5),
        .Q(p_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WAIT_DATA_COUNT:001,WAIT_INSTR_BYTE_DONE:010,WAIT_FEW_CLK_CYCLES:100,CHECK_DATA_READY:000,WAIT_TRANSFER_DONE:101,WAIT_DATA_VALID:110,CHECK_WRITE_READ:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_p_state_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(UO_SPI_MASTER_IP_n_4),
        .Q(p_state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WAIT_DATA_COUNT:001,WAIT_INSTR_BYTE_DONE:010,WAIT_FEW_CLK_CYCLES:100,CHECK_DATA_READY:000,WAIT_TRANSFER_DONE:101,WAIT_DATA_VALID:110,CHECK_WRITE_READ:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_p_state_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_p_state[2]_i_1_n_0 ),
        .Q(p_state__0[2]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master UO_SPI_MASTER_IP
       (.Cs_n_reg(UO_SPI_MASTER_IP_n_7),
        .Cs_n_reg_0(\count_wait_reg_n_0_[0] ),
        .Cs_n_reg_1(\count_wait_reg_n_0_[1] ),
        .Cs_n_reg_2(\count_wait_reg_n_0_[2] ),
        .Cs_n_reg_3(Cs_n_i_7_n_0),
        .\FSM_sequential_p_state_reg[0] (\FSM_sequential_p_state[0]_i_3_n_0 ),
        .\FSM_sequential_p_state_reg[1] (\FSM_sequential_p_state[2]_i_2_n_0 ),
        .\FSM_sequential_p_state_reg[2] (UO_SPI_MASTER_IP_n_4),
        .\FSM_sequential_p_state_reg[2]_0 (UO_SPI_MASTER_IP_n_5),
        .Q(latch_reg_data),
        .byte_count(byte_count),
        .byte_transfer(byte_transfer),
        .count_wait(count_wait),
        .i_clk(i_clk),
        .i_data_valid(i_data_valid),
        .i_rstn(i_rstn),
        .i_rstn_0(UO_SPI_MASTER_IP_n_1),
        .i_sel_mode(i_sel_mode),
        .init_tx_transfer_reg_0(Cs_n_reg_0),
        .mosi_out(mosi_out),
        .msb_first_reg_0(done_t_reg_n_0),
        .o_SSCLK(o_SSCLK),
        .p_state__0(p_state__0));
  LUT6 #(
    .INIT(64'hFFFF7C7F00008080)) 
    \byte_count[0]_i_1 
       (.I0(byte_transfer),
        .I1(p_state__0[0]),
        .I2(p_state__0[2]),
        .I3(i_data_valid),
        .I4(p_state__0[1]),
        .I5(\byte_count_reg[0]_0 ),
        .O(\byte_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h75FF5700)) 
    \byte_count[1]_i_1 
       (.I0(p_state__0[0]),
        .I1(p_state__0[1]),
        .I2(\byte_count_reg[0]_0 ),
        .I3(byte_count),
        .I4(\byte_count_reg[1]_0 ),
        .O(\byte_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4440FFFF00040000)) 
    \byte_count[2]_i_1 
       (.I0(p_state__0[1]),
        .I1(p_state__0[2]),
        .I2(\byte_count_reg[0]_0 ),
        .I3(\byte_count_reg[1]_0 ),
        .I4(byte_count),
        .I5(byte_cnt),
        .O(\byte_count[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_count_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\byte_count[0]_i_1_n_0 ),
        .Q(\byte_count_reg[0]_0 ),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \byte_count_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\byte_count[1]_i_1_n_0 ),
        .Q(\byte_count_reg[1]_0 ),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \byte_count_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\byte_count[2]_i_1_n_0 ),
        .Q(byte_cnt),
        .R(UO_SPI_MASTER_IP_n_1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFD02)) 
    \count_wait[0]_i_1 
       (.I0(p_state__0[2]),
        .I1(p_state__0[1]),
        .I2(p_state__0[0]),
        .I3(\count_wait_reg_n_0_[0] ),
        .O(\count_wait[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFF70008)) 
    \count_wait[1]_i_1 
       (.I0(\count_wait_reg_n_0_[0] ),
        .I1(p_state__0[2]),
        .I2(p_state__0[1]),
        .I3(p_state__0[0]),
        .I4(\count_wait_reg_n_0_[1] ),
        .O(\count_wait[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000080)) 
    \count_wait[2]_i_1 
       (.I0(\count_wait_reg_n_0_[0] ),
        .I1(\count_wait_reg_n_0_[1] ),
        .I2(p_state__0[2]),
        .I3(p_state__0[1]),
        .I4(p_state__0[0]),
        .I5(\count_wait_reg_n_0_[2] ),
        .O(\count_wait[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_wait_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\count_wait[0]_i_1_n_0 ),
        .Q(\count_wait_reg_n_0_[0] ),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_wait_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\count_wait[1]_i_1_n_0 ),
        .Q(\count_wait_reg_n_0_[1] ),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \count_wait_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\count_wait[2]_i_1_n_0 ),
        .Q(\count_wait_reg_n_0_[2] ),
        .R(UO_SPI_MASTER_IP_n_1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \debug_p_state[0]_INST_0 
       (.I0(p_state__0[2]),
        .I1(p_state__0[1]),
        .I2(p_state__0[0]),
        .O(debug_p_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h1C)) 
    \debug_p_state[1]_INST_0 
       (.I0(p_state__0[0]),
        .I1(p_state__0[1]),
        .I2(p_state__0[2]),
        .O(debug_p_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h4C)) 
    \debug_p_state[2]_INST_0 
       (.I0(p_state__0[0]),
        .I1(p_state__0[2]),
        .I2(p_state__0[1]),
        .O(debug_p_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFC2800)) 
    done_t_i_1
       (.I0(\FSM_sequential_p_state[2]_i_2_n_0 ),
        .I1(p_state__0[0]),
        .I2(p_state__0[2]),
        .I3(p_state__0[1]),
        .I4(done_t_reg_n_0),
        .O(done_t_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_t_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(done_t_i_1_n_0),
        .Q(done_t_reg_n_0),
        .R(UO_SPI_MASTER_IP_n_1));
  LUT2 #(
    .INIT(4'h8)) 
    \latch_reg_data[0]_i_1 
       (.I0(p_state__0[2]),
        .I1(i_data[0]),
        .O(latch_reg_data1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \latch_reg_data[1]_i_1 
       (.I0(p_state__0[2]),
        .I1(i_data[1]),
        .O(latch_reg_data1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \latch_reg_data[2]_i_1 
       (.I0(p_state__0[2]),
        .I1(i_data[2]),
        .O(latch_reg_data1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \latch_reg_data[3]_i_1 
       (.I0(p_state__0[2]),
        .I1(i_data[3]),
        .O(latch_reg_data1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \latch_reg_data[4]_i_1 
       (.I0(p_state__0[2]),
        .I1(i_data[4]),
        .O(latch_reg_data1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \latch_reg_data[5]_i_1 
       (.I0(i_data[5]),
        .I1(p_state__0[2]),
        .O(latch_reg_data1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \latch_reg_data[6]_i_1 
       (.I0(p_state__0[2]),
        .I1(i_data[6]),
        .O(latch_reg_data1_in[6]));
  LUT5 #(
    .INIT(32'h10000300)) 
    \latch_reg_data[7]_i_1 
       (.I0(\FSM_sequential_p_state[2]_i_2_n_0 ),
        .I1(p_state__0[0]),
        .I2(p_state__0[2]),
        .I3(i_data_valid),
        .I4(p_state__0[1]),
        .O(latch_reg_data_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \latch_reg_data[7]_i_2 
       (.I0(p_state__0[2]),
        .I1(i_data[7]),
        .O(latch_reg_data1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \latch_reg_data_reg[0] 
       (.C(i_clk),
        .CE(latch_reg_data_0),
        .D(latch_reg_data1_in[0]),
        .Q(latch_reg_data[0]),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \latch_reg_data_reg[1] 
       (.C(i_clk),
        .CE(latch_reg_data_0),
        .D(latch_reg_data1_in[1]),
        .Q(latch_reg_data[1]),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \latch_reg_data_reg[2] 
       (.C(i_clk),
        .CE(latch_reg_data_0),
        .D(latch_reg_data1_in[2]),
        .Q(latch_reg_data[2]),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \latch_reg_data_reg[3] 
       (.C(i_clk),
        .CE(latch_reg_data_0),
        .D(latch_reg_data1_in[3]),
        .Q(latch_reg_data[3]),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \latch_reg_data_reg[4] 
       (.C(i_clk),
        .CE(latch_reg_data_0),
        .D(latch_reg_data1_in[4]),
        .Q(latch_reg_data[4]),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \latch_reg_data_reg[5] 
       (.C(i_clk),
        .CE(latch_reg_data_0),
        .D(latch_reg_data1_in[5]),
        .Q(latch_reg_data[5]),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \latch_reg_data_reg[6] 
       (.C(i_clk),
        .CE(latch_reg_data_0),
        .D(latch_reg_data1_in[6]),
        .Q(latch_reg_data[6]),
        .R(UO_SPI_MASTER_IP_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \latch_reg_data_reg[7] 
       (.C(i_clk),
        .CE(latch_reg_data_0),
        .D(latch_reg_data1_in[7]),
        .Q(latch_reg_data[7]),
        .R(UO_SPI_MASTER_IP_n_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_posedge_detector
   (transfer_done_byte,
    i_clk,
    d_out_reg_0,
    d_out_reg_1,
    Q,
    byte_sent_reg);
  output transfer_done_byte;
  input i_clk;
  input d_out_reg_0;
  input d_out_reg_1;
  input [3:0]Q;
  input byte_sent_reg;

  wire [3:0]Q;
  wire byte_sent_reg;
  wire d_in;
  wire d_out;
  wire d_out_reg_0;
  wire d_out_reg_1;
  wire i_clk;
  wire transfer_done_byte;

  LUT3 #(
    .INIT(8'h04)) 
    byte_sent_i_1
       (.I0(d_out),
        .I1(d_out_reg_0),
        .I2(byte_sent_reg),
        .O(transfer_done_byte));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    d_out_i_1
       (.I0(d_out_reg_0),
        .I1(d_out_reg_1),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(d_in));
  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(d_in),
        .Q(d_out),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master
   (byte_transfer,
    i_rstn_0,
    o_SSCLK,
    mosi_out,
    \FSM_sequential_p_state_reg[2] ,
    \FSM_sequential_p_state_reg[2]_0 ,
    byte_count,
    Cs_n_reg,
    i_clk,
    i_data_valid,
    p_state__0,
    i_rstn,
    \FSM_sequential_p_state_reg[0] ,
    init_tx_transfer_reg_0,
    \FSM_sequential_p_state_reg[1] ,
    Cs_n_reg_0,
    Cs_n_reg_1,
    Cs_n_reg_2,
    Cs_n_reg_3,
    i_sel_mode,
    msb_first_reg_0,
    count_wait,
    Q);
  output byte_transfer;
  output i_rstn_0;
  output o_SSCLK;
  output mosi_out;
  output \FSM_sequential_p_state_reg[2] ;
  output \FSM_sequential_p_state_reg[2]_0 ;
  output byte_count;
  output Cs_n_reg;
  input i_clk;
  input i_data_valid;
  input [2:0]p_state__0;
  input i_rstn;
  input \FSM_sequential_p_state_reg[0] ;
  input init_tx_transfer_reg_0;
  input \FSM_sequential_p_state_reg[1] ;
  input Cs_n_reg_0;
  input Cs_n_reg_1;
  input Cs_n_reg_2;
  input Cs_n_reg_3;
  input i_sel_mode;
  input msb_first_reg_0;
  input count_wait;
  input [7:0]Q;

  wire Cs_n_i_2_n_0;
  wire Cs_n_i_3_n_0;
  wire Cs_n_i_5_n_0;
  wire Cs_n_i_6_n_0;
  wire Cs_n_reg;
  wire Cs_n_reg_0;
  wire Cs_n_reg_1;
  wire Cs_n_reg_2;
  wire Cs_n_reg_3;
  wire \FSM_sequential_p_state[0]_i_2_n_0 ;
  wire \FSM_sequential_p_state_reg[0] ;
  wire \FSM_sequential_p_state_reg[1] ;
  wire \FSM_sequential_p_state_reg[2] ;
  wire \FSM_sequential_p_state_reg[2]_0 ;
  wire [7:0]Q;
  wire _trailing_edge_i_1_n_0;
  wire _trailing_edge_reg_n_0;
  wire byte_count;
  wire byte_sent_i_2_n_0;
  wire byte_transfer;
  wire count_wait;
  wire i_clk;
  wire i_data_valid;
  wire i_rstn;
  wire i_rstn_0;
  wire i_sel_mode;
  wire init_tx_transfer_i_1_n_0;
  wire init_tx_transfer_reg_0;
  wire init_tx_transfer_reg_n_0;
  wire initialize_transmit_i_1_n_0;
  wire initialize_transmit_reg_n_0;
  wire io_SDIO_i_1_n_0;
  wire io_SDIO_i_2_n_0;
  wire io_SDIO_i_3_n_0;
  wire io_SDIO_i_4_n_0;
  wire io_SDIO_i_5_n_0;
  wire io_SDIO_i_6_n_0;
  wire io_SDIO_i_7_n_0;
  wire io_SDIO_i_8_n_0;
  wire io_SDIO_i_9_n_0;
  wire latch_data_transfer_mode_i_1_n_0;
  wire lsb_first;
  wire master_rdy_i_1_n_0;
  wire master_spi_rdy;
  wire mosi_out;
  wire msb_first_i_1_n_0;
  wire msb_first_reg_0;
  wire msb_first_reg_n_0;
  wire o_SSCLK;
  wire [7:0]o_latch_data;
  wire [2:0]p_state__0;
  wire [1:1]p_state__1;
  wire [1:0]spi_clk_count;
  wire spi_clk_count0;
  wire \spi_clk_count[0]_i_1_n_0 ;
  wire \spi_clk_count[1]_i_1_n_0 ;
  wire [3:0]spi_clk_edges0;
  wire \spi_clk_edges[3]_i_1_n_0 ;
  wire \spi_clk_edges[4]_i_1_n_0 ;
  wire \spi_clk_edges[4]_i_2_n_0 ;
  wire \spi_clk_edges_reg_n_0_[0] ;
  wire \spi_clk_edges_reg_n_0_[1] ;
  wire \spi_clk_edges_reg_n_0_[2] ;
  wire \spi_clk_edges_reg_n_0_[3] ;
  wire \spi_clk_edges_reg_n_0_[4] ;
  wire spi_clock7_out;
  wire spi_clock_i_1_n_0;
  wire spi_clock_reg_n_0;
  wire start_serialize;
  wire transfer_done_byte;
  wire \tx_byte_count[0]_i_1_n_0 ;
  wire \tx_byte_count[0]_i_2_n_0 ;
  wire \tx_byte_count[1]_i_1_n_0 ;
  wire \tx_byte_count[1]_i_2_n_0 ;
  wire \tx_byte_count[1]_i_3_n_0 ;
  wire \tx_byte_count[2]_i_1_n_0 ;
  wire \tx_byte_count[2]_i_2_n_0 ;
  wire \tx_byte_count[2]_i_3_n_0 ;
  wire \tx_byte_count[2]_i_4_n_0 ;
  wire \tx_byte_count[2]_i_5_n_0 ;
  wire \tx_byte_count[2]_i_6_n_0 ;
  wire \tx_byte_count_reg_n_0_[0] ;
  wire \tx_byte_count_reg_n_0_[1] ;
  wire \tx_byte_count_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'hEEEEEEEFEEEEEEE0)) 
    Cs_n_i_1
       (.I0(Cs_n_i_2_n_0),
        .I1(Cs_n_i_3_n_0),
        .I2(count_wait),
        .I3(Cs_n_i_5_n_0),
        .I4(Cs_n_i_6_n_0),
        .I5(init_tx_transfer_reg_0),
        .O(Cs_n_reg));
  LUT6 #(
    .INIT(64'hC4C4C0CCC4C4C000)) 
    Cs_n_i_2
       (.I0(i_data_valid),
        .I1(p_state__0[1]),
        .I2(\FSM_sequential_p_state_reg[1] ),
        .I3(p_state__0[0]),
        .I4(p_state__0[2]),
        .I5(master_spi_rdy),
        .O(Cs_n_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000AAAA00003FFF)) 
    Cs_n_i_3
       (.I0(byte_transfer),
        .I1(Cs_n_reg_0),
        .I2(Cs_n_reg_1),
        .I3(Cs_n_reg_2),
        .I4(Cs_n_reg_3),
        .I5(p_state__0[0]),
        .O(Cs_n_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    Cs_n_i_5
       (.I0(byte_transfer),
        .I1(p_state__0[2]),
        .I2(p_state__0[1]),
        .O(Cs_n_i_5_n_0));
  LUT6 #(
    .INIT(64'hFECE0303FE020000)) 
    Cs_n_i_6
       (.I0(master_spi_rdy),
        .I1(p_state__0[2]),
        .I2(p_state__0[0]),
        .I3(\FSM_sequential_p_state_reg[1] ),
        .I4(p_state__0[1]),
        .I5(i_data_valid),
        .O(Cs_n_i_6_n_0));
  LUT6 #(
    .INIT(64'hFEFFEEFFEE00EE00)) 
    \FSM_sequential_p_state[0]_i_1 
       (.I0(\FSM_sequential_p_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_p_state_reg[0] ),
        .I2(p_state__0[2]),
        .I3(i_rstn),
        .I4(p_state__0[1]),
        .I5(p_state__0[0]),
        .O(\FSM_sequential_p_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h000000CA0F0000CA)) 
    \FSM_sequential_p_state[0]_i_2 
       (.I0(i_data_valid),
        .I1(master_spi_rdy),
        .I2(p_state__0[1]),
        .I3(p_state__0[0]),
        .I4(p_state__0[2]),
        .I5(byte_transfer),
        .O(\FSM_sequential_p_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFA0AFA0)) 
    \FSM_sequential_p_state[1]_i_1 
       (.I0(p_state__1),
        .I1(p_state__0[2]),
        .I2(i_rstn),
        .I3(p_state__0[1]),
        .I4(p_state__0[0]),
        .O(\FSM_sequential_p_state_reg[2] ));
  LUT6 #(
    .INIT(64'h46464EEE06060EAE)) 
    \FSM_sequential_p_state[1]_i_2 
       (.I0(p_state__0[1]),
        .I1(p_state__0[0]),
        .I2(p_state__0[2]),
        .I3(i_data_valid),
        .I4(\FSM_sequential_p_state_reg[1] ),
        .I5(byte_transfer),
        .O(p_state__1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_posedge_detector UO_POSEDGE_DETECT
       (.Q({\spi_clk_edges_reg_n_0_[3] ,\spi_clk_edges_reg_n_0_[2] ,\spi_clk_edges_reg_n_0_[1] ,\spi_clk_edges_reg_n_0_[0] }),
        .byte_sent_reg(byte_sent_i_2_n_0),
        .d_out_reg_0(_trailing_edge_reg_n_0),
        .d_out_reg_1(\spi_clk_edges_reg_n_0_[4] ),
        .i_clk(i_clk),
        .transfer_done_byte(transfer_done_byte));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    _trailing_edge_i_1
       (.I0(spi_clk_count[0]),
        .I1(spi_clk_count[1]),
        .I2(spi_clk_count0),
        .I3(_trailing_edge_reg_n_0),
        .O(_trailing_edge_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    _trailing_edge_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(_trailing_edge_i_1_n_0),
        .Q(_trailing_edge_reg_n_0),
        .R(i_rstn_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00008380)) 
    \byte_count[2]_i_2 
       (.I0(byte_transfer),
        .I1(p_state__0[0]),
        .I2(p_state__0[2]),
        .I3(i_data_valid),
        .I4(p_state__0[1]),
        .O(byte_count));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    byte_sent_i_2
       (.I0(\spi_clk_edges_reg_n_0_[3] ),
        .I1(\spi_clk_edges_reg_n_0_[0] ),
        .I2(\spi_clk_edges_reg_n_0_[1] ),
        .I3(\spi_clk_edges_reg_n_0_[2] ),
        .I4(\spi_clk_edges_reg_n_0_[4] ),
        .O(byte_sent_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    byte_sent_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(transfer_done_byte),
        .Q(byte_transfer),
        .R(i_rstn_0));
  LUT6 #(
    .INIT(64'hAA000008AA00AA88)) 
    init_tx_transfer_i_1
       (.I0(i_rstn),
        .I1(start_serialize),
        .I2(io_SDIO_i_6_n_0),
        .I3(init_tx_transfer_reg_n_0),
        .I4(init_tx_transfer_reg_0),
        .I5(initialize_transmit_reg_n_0),
        .O(init_tx_transfer_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    init_tx_transfer_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(init_tx_transfer_i_1_n_0),
        .Q(init_tx_transfer_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hEA)) 
    initialize_transmit_i_1
       (.I0(start_serialize),
        .I1(byte_sent_i_2_n_0),
        .I2(initialize_transmit_reg_n_0),
        .O(initialize_transmit_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    initialize_transmit_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(initialize_transmit_i_1_n_0),
        .Q(initialize_transmit_reg_n_0),
        .R(i_rstn_0));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8B8B8)) 
    io_SDIO_i_1
       (.I0(mosi_out),
        .I1(io_SDIO_i_2_n_0),
        .I2(io_SDIO_i_3_n_0),
        .I3(io_SDIO_i_4_n_0),
        .I4(io_SDIO_i_5_n_0),
        .I5(io_SDIO_i_6_n_0),
        .O(io_SDIO_i_1_n_0));
  LUT6 #(
    .INIT(64'hDDDDDDDFDFDFDFDF)) 
    io_SDIO_i_2
       (.I0(initialize_transmit_reg_n_0),
        .I1(init_tx_transfer_reg_0),
        .I2(init_tx_transfer_reg_n_0),
        .I3(msb_first_reg_n_0),
        .I4(lsb_first),
        .I5(_trailing_edge_reg_n_0),
        .O(io_SDIO_i_2_n_0));
  LUT6 #(
    .INIT(64'h232F333F20200000)) 
    io_SDIO_i_3
       (.I0(o_latch_data[0]),
        .I1(_trailing_edge_reg_n_0),
        .I2(lsb_first),
        .I3(msb_first_reg_n_0),
        .I4(init_tx_transfer_reg_n_0),
        .I5(o_latch_data[7]),
        .O(io_SDIO_i_3_n_0));
  LUT6 #(
    .INIT(64'hEEEEFFFEEEEEEFEE)) 
    io_SDIO_i_4
       (.I0(io_SDIO_i_7_n_0),
        .I1(io_SDIO_i_8_n_0),
        .I2(\tx_byte_count_reg_n_0_[2] ),
        .I3(o_latch_data[0]),
        .I4(io_SDIO_i_9_n_0),
        .I5(o_latch_data[4]),
        .O(io_SDIO_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h8080C000)) 
    io_SDIO_i_5
       (.I0(o_latch_data[7]),
        .I1(\tx_byte_count_reg_n_0_[1] ),
        .I2(\tx_byte_count_reg_n_0_[0] ),
        .I3(o_latch_data[3]),
        .I4(\tx_byte_count_reg_n_0_[2] ),
        .O(io_SDIO_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    io_SDIO_i_6
       (.I0(msb_first_reg_n_0),
        .I1(lsb_first),
        .I2(_trailing_edge_reg_n_0),
        .O(io_SDIO_i_6_n_0));
  LUT5 #(
    .INIT(32'h44400040)) 
    io_SDIO_i_7
       (.I0(\tx_byte_count_reg_n_0_[0] ),
        .I1(\tx_byte_count_reg_n_0_[1] ),
        .I2(o_latch_data[2]),
        .I3(\tx_byte_count_reg_n_0_[2] ),
        .I4(o_latch_data[6]),
        .O(io_SDIO_i_7_n_0));
  LUT5 #(
    .INIT(32'h44400040)) 
    io_SDIO_i_8
       (.I0(\tx_byte_count_reg_n_0_[1] ),
        .I1(\tx_byte_count_reg_n_0_[0] ),
        .I2(o_latch_data[1]),
        .I3(\tx_byte_count_reg_n_0_[2] ),
        .I4(o_latch_data[5]),
        .O(io_SDIO_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    io_SDIO_i_9
       (.I0(\tx_byte_count_reg_n_0_[1] ),
        .I1(\tx_byte_count_reg_n_0_[0] ),
        .O(io_SDIO_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    io_SDIO_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(io_SDIO_i_1_n_0),
        .Q(mosi_out),
        .R(i_rstn_0));
  LUT3 #(
    .INIT(8'hBA)) 
    latch_data_transfer_mode_i_1
       (.I0(i_sel_mode),
        .I1(msb_first_reg_0),
        .I2(lsb_first),
        .O(latch_data_transfer_mode_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    latch_data_transfer_mode_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(latch_data_transfer_mode_i_1_n_0),
        .Q(lsb_first),
        .R(i_rstn_0));
  LUT2 #(
    .INIT(4'h2)) 
    master_rdy_i_1
       (.I0(i_rstn),
        .I1(spi_clk_count0),
        .O(master_rdy_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    master_rdy_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(master_rdy_i_1_n_0),
        .Q(master_spi_rdy),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h10)) 
    msb_first_i_1
       (.I0(i_sel_mode),
        .I1(msb_first_reg_0),
        .I2(msb_first_reg_n_0),
        .O(msb_first_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    msb_first_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(msb_first_i_1_n_0),
        .Q(msb_first_reg_n_0),
        .S(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_latch_data_reg[0] 
       (.C(i_clk),
        .CE(start_serialize),
        .D(Q[0]),
        .Q(o_latch_data[0]),
        .R(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_latch_data_reg[1] 
       (.C(i_clk),
        .CE(start_serialize),
        .D(Q[1]),
        .Q(o_latch_data[1]),
        .R(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_latch_data_reg[2] 
       (.C(i_clk),
        .CE(start_serialize),
        .D(Q[2]),
        .Q(o_latch_data[2]),
        .R(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_latch_data_reg[3] 
       (.C(i_clk),
        .CE(start_serialize),
        .D(Q[3]),
        .Q(o_latch_data[3]),
        .R(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_latch_data_reg[4] 
       (.C(i_clk),
        .CE(start_serialize),
        .D(Q[4]),
        .Q(o_latch_data[4]),
        .R(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_latch_data_reg[5] 
       (.C(i_clk),
        .CE(start_serialize),
        .D(Q[5]),
        .Q(o_latch_data[5]),
        .R(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_latch_data_reg[6] 
       (.C(i_clk),
        .CE(start_serialize),
        .D(Q[6]),
        .Q(o_latch_data[6]),
        .R(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    \o_latch_data_reg[7] 
       (.C(i_clk),
        .CE(start_serialize),
        .D(Q[7]),
        .Q(o_latch_data[7]),
        .R(i_rstn_0));
  LUT1 #(
    .INIT(2'h1)) 
    spi_cclk_i_1
       (.I0(i_rstn),
        .O(i_rstn_0));
  FDSE #(
    .INIT(1'b0)) 
    spi_cclk_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(spi_clock_reg_n_0),
        .Q(o_SSCLK),
        .S(i_rstn_0));
  LUT2 #(
    .INIT(4'h6)) 
    \spi_clk_count[0]_i_1 
       (.I0(spi_clk_count0),
        .I1(spi_clk_count[0]),
        .O(\spi_clk_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spi_clk_count[1]_i_1 
       (.I0(spi_clk_count[0]),
        .I1(spi_clk_count0),
        .I2(spi_clk_count[1]),
        .O(\spi_clk_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \spi_clk_count[1]_i_2 
       (.I0(\spi_clk_edges_reg_n_0_[4] ),
        .I1(\spi_clk_edges_reg_n_0_[2] ),
        .I2(\spi_clk_edges_reg_n_0_[1] ),
        .I3(\spi_clk_edges_reg_n_0_[0] ),
        .I4(\spi_clk_edges_reg_n_0_[3] ),
        .I5(init_tx_transfer_reg_0),
        .O(spi_clk_count0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clk_count_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\spi_clk_count[0]_i_1_n_0 ),
        .Q(spi_clk_count[0]),
        .R(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clk_count_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\spi_clk_count[1]_i_1_n_0 ),
        .Q(spi_clk_count[1]),
        .R(i_rstn_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \spi_clk_edges[0]_i_1 
       (.I0(\spi_clk_edges_reg_n_0_[0] ),
        .O(spi_clk_edges0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \spi_clk_edges[1]_i_1 
       (.I0(\spi_clk_edges_reg_n_0_[0] ),
        .I1(\spi_clk_edges_reg_n_0_[1] ),
        .O(spi_clk_edges0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \spi_clk_edges[2]_i_1 
       (.I0(\spi_clk_edges_reg_n_0_[2] ),
        .I1(\spi_clk_edges_reg_n_0_[1] ),
        .I2(\spi_clk_edges_reg_n_0_[0] ),
        .O(spi_clk_edges0[2]));
  LUT3 #(
    .INIT(8'h4F)) 
    \spi_clk_edges[3]_i_1 
       (.I0(spi_clk_count0),
        .I1(i_data_valid),
        .I2(i_rstn),
        .O(\spi_clk_edges[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_clk_edges[3]_i_2 
       (.I0(spi_clk_count0),
        .I1(spi_clk_count[0]),
        .O(spi_clock7_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \spi_clk_edges[3]_i_3 
       (.I0(\spi_clk_edges_reg_n_0_[3] ),
        .I1(\spi_clk_edges_reg_n_0_[0] ),
        .I2(\spi_clk_edges_reg_n_0_[1] ),
        .I3(\spi_clk_edges_reg_n_0_[2] ),
        .O(spi_clk_edges0[3]));
  LUT5 #(
    .INIT(32'hFFC7CCC4)) 
    \spi_clk_edges[4]_i_1 
       (.I0(spi_clk_count[0]),
        .I1(\spi_clk_edges_reg_n_0_[4] ),
        .I2(\spi_clk_edges[4]_i_2_n_0 ),
        .I3(init_tx_transfer_reg_0),
        .I4(i_data_valid),
        .O(\spi_clk_edges[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spi_clk_edges[4]_i_2 
       (.I0(\spi_clk_edges_reg_n_0_[2] ),
        .I1(\spi_clk_edges_reg_n_0_[1] ),
        .I2(\spi_clk_edges_reg_n_0_[0] ),
        .I3(\spi_clk_edges_reg_n_0_[3] ),
        .O(\spi_clk_edges[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clk_edges_reg[0] 
       (.C(i_clk),
        .CE(spi_clock7_out),
        .D(spi_clk_edges0[0]),
        .Q(\spi_clk_edges_reg_n_0_[0] ),
        .R(\spi_clk_edges[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clk_edges_reg[1] 
       (.C(i_clk),
        .CE(spi_clock7_out),
        .D(spi_clk_edges0[1]),
        .Q(\spi_clk_edges_reg_n_0_[1] ),
        .R(\spi_clk_edges[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clk_edges_reg[2] 
       (.C(i_clk),
        .CE(spi_clock7_out),
        .D(spi_clk_edges0[2]),
        .Q(\spi_clk_edges_reg_n_0_[2] ),
        .R(\spi_clk_edges[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clk_edges_reg[3] 
       (.C(i_clk),
        .CE(spi_clock7_out),
        .D(spi_clk_edges0[3]),
        .Q(\spi_clk_edges_reg_n_0_[3] ),
        .R(\spi_clk_edges[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_clk_edges_reg[4] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\spi_clk_edges[4]_i_1_n_0 ),
        .Q(\spi_clk_edges_reg_n_0_[4] ),
        .R(i_rstn_0));
  LUT3 #(
    .INIT(8'h78)) 
    spi_clock_i_1
       (.I0(spi_clk_count[0]),
        .I1(spi_clk_count0),
        .I2(spi_clock_reg_n_0),
        .O(spi_clock_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    spi_clock_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(spi_clock_i_1_n_0),
        .Q(spi_clock_reg_n_0),
        .S(i_rstn_0));
  FDRE #(
    .INIT(1'b0)) 
    start_serialize_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(i_data_valid),
        .Q(start_serialize),
        .R(i_rstn_0));
  LUT6 #(
    .INIT(64'hEEAEAAAA22A2AAAA)) 
    \tx_byte_count[0]_i_1 
       (.I0(\tx_byte_count[0]_i_2_n_0 ),
        .I1(i_rstn),
        .I2(start_serialize),
        .I3(init_tx_transfer_reg_0),
        .I4(io_SDIO_i_2_n_0),
        .I5(\tx_byte_count_reg_n_0_[0] ),
        .O(\tx_byte_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00509050F0509050)) 
    \tx_byte_count[0]_i_2 
       (.I0(lsb_first),
        .I1(init_tx_transfer_reg_n_0),
        .I2(i_rstn),
        .I3(initialize_transmit_reg_n_0),
        .I4(io_SDIO_i_6_n_0),
        .I5(\tx_byte_count_reg_n_0_[0] ),
        .O(\tx_byte_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEAAAA22A2AAAA)) 
    \tx_byte_count[1]_i_1 
       (.I0(\tx_byte_count[1]_i_2_n_0 ),
        .I1(i_rstn),
        .I2(start_serialize),
        .I3(init_tx_transfer_reg_0),
        .I4(io_SDIO_i_2_n_0),
        .I5(\tx_byte_count_reg_n_0_[1] ),
        .O(\tx_byte_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AA00AA082A00AA)) 
    \tx_byte_count[1]_i_2 
       (.I0(i_rstn),
        .I1(initialize_transmit_reg_n_0),
        .I2(msb_first_reg_n_0),
        .I3(lsb_first),
        .I4(_trailing_edge_reg_n_0),
        .I5(\tx_byte_count[1]_i_3_n_0 ),
        .O(\tx_byte_count[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \tx_byte_count[1]_i_3 
       (.I0(\tx_byte_count_reg_n_0_[1] ),
        .I1(\tx_byte_count_reg_n_0_[0] ),
        .O(\tx_byte_count[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAEAFFFFFAEA0000)) 
    \tx_byte_count[2]_i_1 
       (.I0(\tx_byte_count[2]_i_2_n_0 ),
        .I1(\tx_byte_count[2]_i_3_n_0 ),
        .I2(\tx_byte_count[2]_i_4_n_0 ),
        .I3(\tx_byte_count[2]_i_5_n_0 ),
        .I4(\tx_byte_count[2]_i_6_n_0 ),
        .I5(\tx_byte_count_reg_n_0_[2] ),
        .O(\tx_byte_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h002A00AA)) 
    \tx_byte_count[2]_i_2 
       (.I0(i_rstn),
        .I1(initialize_transmit_reg_n_0),
        .I2(msb_first_reg_n_0),
        .I3(lsb_first),
        .I4(_trailing_edge_reg_n_0),
        .O(\tx_byte_count[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040400040004000)) 
    \tx_byte_count[2]_i_3 
       (.I0(msb_first_reg_n_0),
        .I1(_trailing_edge_reg_n_0),
        .I2(lsb_first),
        .I3(\tx_byte_count_reg_n_0_[2] ),
        .I4(\tx_byte_count_reg_n_0_[1] ),
        .I5(\tx_byte_count_reg_n_0_[0] ),
        .O(\tx_byte_count[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88800000)) 
    \tx_byte_count[2]_i_4 
       (.I0(i_rstn),
        .I1(initialize_transmit_reg_n_0),
        .I2(msb_first_reg_n_0),
        .I3(lsb_first),
        .I4(_trailing_edge_reg_n_0),
        .O(\tx_byte_count[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hA9000000)) 
    \tx_byte_count[2]_i_5 
       (.I0(\tx_byte_count_reg_n_0_[2] ),
        .I1(\tx_byte_count_reg_n_0_[1] ),
        .I2(\tx_byte_count_reg_n_0_[0] ),
        .I3(_trailing_edge_reg_n_0),
        .I4(msb_first_reg_n_0),
        .O(\tx_byte_count[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FFFD5555DDDD)) 
    \tx_byte_count[2]_i_6 
       (.I0(i_rstn),
        .I1(start_serialize),
        .I2(io_SDIO_i_6_n_0),
        .I3(init_tx_transfer_reg_n_0),
        .I4(init_tx_transfer_reg_0),
        .I5(initialize_transmit_reg_n_0),
        .O(\tx_byte_count[2]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_count_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\tx_byte_count[0]_i_1_n_0 ),
        .Q(\tx_byte_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_count_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\tx_byte_count[1]_i_1_n_0 ),
        .Q(\tx_byte_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_count_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\tx_byte_count[2]_i_1_n_0 ),
        .Q(\tx_byte_count_reg_n_0_[2] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
