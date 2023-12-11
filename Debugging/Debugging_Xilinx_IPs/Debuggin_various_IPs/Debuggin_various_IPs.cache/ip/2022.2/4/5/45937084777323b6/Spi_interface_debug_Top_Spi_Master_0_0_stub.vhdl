-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Nov 13 12:03:42 2023
-- Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Spi_interface_debug_Top_Spi_Master_0_0_stub.vhdl
-- Design      : Spi_interface_debug_Top_Spi_Master_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_rstn,i_data[7:0],i_data_valid,i_sel_mode,o_SSCLK,slave_data_out[7:0],byte_cnt[2:0],chip_sel,mosi_out,debug_p_state[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Top_Spi_Master,Vivado 2022.2";
begin
end;
