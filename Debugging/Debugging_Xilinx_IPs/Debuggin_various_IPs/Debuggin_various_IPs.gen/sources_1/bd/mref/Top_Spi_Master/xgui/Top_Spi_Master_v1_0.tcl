# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CLK_DIV" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_OF_BYTES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REG_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RW" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SPI_MODE" -parent ${Page_0}


}

proc update_PARAM_VALUE.CLK_DIV { PARAM_VALUE.CLK_DIV } {
	# Procedure called to update CLK_DIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_DIV { PARAM_VALUE.CLK_DIV } {
	# Procedure called to validate CLK_DIV
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.N_OF_BYTES { PARAM_VALUE.N_OF_BYTES } {
	# Procedure called to update N_OF_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_OF_BYTES { PARAM_VALUE.N_OF_BYTES } {
	# Procedure called to validate N_OF_BYTES
	return true
}

proc update_PARAM_VALUE.REG_ADDR { PARAM_VALUE.REG_ADDR } {
	# Procedure called to update REG_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REG_ADDR { PARAM_VALUE.REG_ADDR } {
	# Procedure called to validate REG_ADDR
	return true
}

proc update_PARAM_VALUE.RW { PARAM_VALUE.RW } {
	# Procedure called to update RW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RW { PARAM_VALUE.RW } {
	# Procedure called to validate RW
	return true
}

proc update_PARAM_VALUE.SPI_MODE { PARAM_VALUE.SPI_MODE } {
	# Procedure called to update SPI_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SPI_MODE { PARAM_VALUE.SPI_MODE } {
	# Procedure called to validate SPI_MODE
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.CLK_DIV { MODELPARAM_VALUE.CLK_DIV PARAM_VALUE.CLK_DIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_DIV}] ${MODELPARAM_VALUE.CLK_DIV}
}

proc update_MODELPARAM_VALUE.N_OF_BYTES { MODELPARAM_VALUE.N_OF_BYTES PARAM_VALUE.N_OF_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_OF_BYTES}] ${MODELPARAM_VALUE.N_OF_BYTES}
}

proc update_MODELPARAM_VALUE.SPI_MODE { MODELPARAM_VALUE.SPI_MODE PARAM_VALUE.SPI_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPI_MODE}] ${MODELPARAM_VALUE.SPI_MODE}
}

proc update_MODELPARAM_VALUE.REG_ADDR { MODELPARAM_VALUE.REG_ADDR PARAM_VALUE.REG_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REG_ADDR}] ${MODELPARAM_VALUE.REG_ADDR}
}

proc update_MODELPARAM_VALUE.RW { MODELPARAM_VALUE.RW PARAM_VALUE.RW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RW}] ${MODELPARAM_VALUE.RW}
}

