## This file is a general .xdc for the EDGE Artix 7 board
## To use it in a project:
## - comment the lines corresponding to unused pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property -dict {PACKAGE_PIN N11 IOSTANDARD LVCMOS33} [get_ports i_clk]
create_clock -period 20.000 -name sys_clk [get_ports i_clk]

# Switches
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS33} [get_ports i_rst_n]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS33} [get_ports i_in_seq]


# LEDs
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports o_seq]
#set_property -dict { PACKAGE_PIN E11 IOSTANDARD LVCMOS33 } [get_ports {sram_oe_n}];
#set_property -dict { PACKAGE_PIN D11 IOSTANDARD LVCMOS33 } [get_ports {sram_ce_a_n}];


set_property BEL AFF [get_cells o_seq_reg]
set_property BEL BUFG [get_cells i_clk_IBUF_BUFG_inst]
set_property BEL AFF [get_cells {rst_reg_reg[1]}]
set_property BEL B6LUT [get_cells o_seq_i_1]
set_property LOC SLICE_X65Y49 [get_cells o_seq_reg]
set_property LOC BUFGCTRL_X0Y0 [get_cells i_clk_IBUF_BUFG_inst]
set_property LOC SLICE_X65Y48 [get_cells {rst_reg_reg[1]}]
set_property LOC SLICE_X65Y49 [get_cells o_seq_i_1]
set_property BEL BFF [get_cells {FSM_sequential_p_state_reg[2]}]
set_property BEL C6LUT [get_cells {FSM_sequential_p_state[0]_i_1}]
set_property BEL CFF [get_cells {FSM_sequential_p_state_reg[0]}]
set_property LOC SLICE_X64Y49 [get_cells {FSM_sequential_p_state_reg[2]}]
set_property LOC SLICE_X64Y49 [get_cells {FSM_sequential_p_state[0]_i_1}]
set_property LOC SLICE_X64Y49 [get_cells {FSM_sequential_p_state_reg[0]}]
set_property BEL A5FF [get_cells {rst_reg_reg[0]}]
set_property BEL A6LUT [get_cells {rst_reg[1]_i_1}]
set_property LOC SLICE_X65Y48 [get_cells {rst_reg_reg[0]}]
set_property LOC SLICE_X65Y48 [get_cells {rst_reg[1]_i_1}]
