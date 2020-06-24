# XDC config for Spartn 7 (XC7S15 FTBGA196)
# Multichannel analysis
# wykys 2020

###############################################################################
# SRAM - data
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {sram_data_io[*]}]

set_property PACKAGE_PIN A5 [get_ports {sram_data_io[0]}]
set_property PACKAGE_PIN C3 [get_ports {sram_data_io[1]}]
set_property PACKAGE_PIN D4 [get_ports {sram_data_io[2]}]
set_property PACKAGE_PIN B3 [get_ports {sram_data_io[3]}]
set_property PACKAGE_PIN C4 [get_ports {sram_data_io[4]}]
set_property PACKAGE_PIN D3 [get_ports {sram_data_io[5]}]
set_property PACKAGE_PIN E4 [get_ports {sram_data_io[6]}]
set_property PACKAGE_PIN D2 [get_ports {sram_data_io[7]}]
set_property PACKAGE_PIN H4 [get_ports {sram_data_io[8]}]
set_property PACKAGE_PIN H3 [get_ports {sram_data_io[9]}]
set_property PACKAGE_PIN H2 [get_ports {sram_data_io[10]}]
set_property PACKAGE_PIN J4 [get_ports {sram_data_io[11]}]
set_property PACKAGE_PIN L2 [get_ports {sram_data_io[12]}]
set_property PACKAGE_PIN M2 [get_ports {sram_data_io[13]}]
set_property PACKAGE_PIN N4 [get_ports {sram_data_io[14]}]
set_property PACKAGE_PIN M4 [get_ports {sram_data_io[15]}]


###############################################################################
# SRAM - address
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {sram_address_o[*]}]

set_property PACKAGE_PIN A3 [get_ports {sram_address_o[0]}]
set_property PACKAGE_PIN A2 [get_ports {sram_address_o[1]}]
set_property PACKAGE_PIN B2 [get_ports {sram_address_o[2]}]
set_property PACKAGE_PIN B1 [get_ports {sram_address_o[3]}]
set_property PACKAGE_PIN C1 [get_ports {sram_address_o[4]}]
set_property PACKAGE_PIN M1 [get_ports {sram_address_o[5]}]
set_property PACKAGE_PIN N1 [get_ports {sram_address_o[6]}]
set_property PACKAGE_PIN P2 [get_ports {sram_address_o[7]}]
set_property PACKAGE_PIN L1 [get_ports {sram_address_o[8]}]
set_property PACKAGE_PIN J2 [get_ports {sram_address_o[9]}]
set_property PACKAGE_PIN J1 [get_ports {sram_address_o[10]}]
set_property PACKAGE_PIN H1 [get_ports {sram_address_o[11]}]
set_property PACKAGE_PIN G1 [get_ports {sram_address_o[12]}]
set_property PACKAGE_PIN F1 [get_ports {sram_address_o[13]}]
set_property PACKAGE_PIN F2 [get_ports {sram_address_o[14]}]
set_property PACKAGE_PIN D1 [get_ports {sram_address_o[15]}]
set_property PACKAGE_PIN F3 [get_ports {sram_address_o[16]}]


###############################################################################
# SRAM - control
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {sram_control_ce_o}]
set_property IOSTANDARD LVCMOS33 [get_ports {sram_control_oe_o}]
set_property IOSTANDARD LVCMOS33 [get_ports {sram_control_we_o}]
set_property IOSTANDARD LVCMOS33 [get_ports {sram_control_lb_o}]
set_property IOSTANDARD LVCMOS33 [get_ports {sram_control_ub_o}]

set_property PACKAGE_PIN A4 [get_ports {sram_control_ce_o}]
set_property PACKAGE_PIN P3 [get_ports {sram_control_oe_o}]
set_property PACKAGE_PIN E2 [get_ports {sram_control_we_o}]
set_property PACKAGE_PIN P5 [get_ports {sram_control_lb_o}]
set_property PACKAGE_PIN P4 [get_ports {sram_control_ub_o}]