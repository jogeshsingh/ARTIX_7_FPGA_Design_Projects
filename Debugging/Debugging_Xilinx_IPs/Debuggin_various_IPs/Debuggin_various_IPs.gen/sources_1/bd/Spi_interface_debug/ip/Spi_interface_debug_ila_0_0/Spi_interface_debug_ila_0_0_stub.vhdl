-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Nov 13 16:18:08 2023
-- Host        : LAPTOP-GBNTDCHP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/VIVADO_2022/ARTIX_A7_FPGA/Debugging/Debugging_Xilinx_IPs/Debuggin_various_IPs/Debuggin_various_IPs.gen/sources_1/bd/Spi_interface_debug/ip/Spi_interface_debug_ila_0_0/Spi_interface_debug_ila_0_0_stub.vhdl
-- Design      : Spi_interface_debug_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Spi_interface_debug_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end Spi_interface_debug_ila_0_0;

architecture stub of Spi_interface_debug_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[0:0],probe1[0:0],probe2[7:0],probe3[0:0],probe4[2:0],probe5[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2022.2";
begin
end;
