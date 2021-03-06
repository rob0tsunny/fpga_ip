# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_S00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of the S_AXI addr bus.} ${C_S00_AXI_ADDR_WIDTH}
  set C_S00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of the S_AXI data bus.} ${C_S00_AXI_DATA_WIDTH}
  set DFLT_PRESC [ipgui::add_param $IPINST -name "DFLT_PRESC" -parent ${Page_0}]
  set_property tooltip {Default Prescaler.} ${DFLT_PRESC}
  ipgui::add_param $IPINST -name "PRESC_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DFLT_PRESC { PARAM_VALUE.DFLT_PRESC } {
	# Procedure called to update DFLT_PRESC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DFLT_PRESC { PARAM_VALUE.DFLT_PRESC } {
	# Procedure called to validate DFLT_PRESC
	return true
}

proc update_PARAM_VALUE.PRESC_SIZE { PARAM_VALUE.PRESC_SIZE } {
	# Procedure called to update PRESC_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PRESC_SIZE { PARAM_VALUE.PRESC_SIZE } {
	# Procedure called to validate PRESC_SIZE
	return true
}


proc update_MODELPARAM_VALUE.DFLT_PRESC { MODELPARAM_VALUE.DFLT_PRESC PARAM_VALUE.DFLT_PRESC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DFLT_PRESC}] ${MODELPARAM_VALUE.DFLT_PRESC}
}

proc update_MODELPARAM_VALUE.PRESC_SIZE { MODELPARAM_VALUE.PRESC_SIZE PARAM_VALUE.PRESC_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PRESC_SIZE}] ${MODELPARAM_VALUE.PRESC_SIZE}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

