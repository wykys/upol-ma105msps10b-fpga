# XDC config for Spartn 7 (XC7S15 FTBGA196)
# Multichannel analysis
# wykys 2020

###############################################################################
# ADC - data
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {adc_data_i[*]}]

set_property PACKAGE_PIN F14 [get_ports {adc_data_i[0]}]
set_property PACKAGE_PIN G14 [get_ports {adc_data_i[1]}]
set_property PACKAGE_PIN H14 [get_ports {adc_data_i[2]}]
set_property PACKAGE_PIN H13 [get_ports {adc_data_i[3]}]
set_property PACKAGE_PIN J14 [get_ports {adc_data_i[4]}]
set_property PACKAGE_PIN J13 [get_ports {adc_data_i[5]}]
set_property PACKAGE_PIN L14 [get_ports {adc_data_i[6]}]
set_property PACKAGE_PIN L13 [get_ports {adc_data_i[7]}]
set_property PACKAGE_PIN M14 [get_ports {adc_data_i[8]}]
set_property PACKAGE_PIN M13 [get_ports {adc_data_i[9]}]

###############################################################################
# ADC - overrange
###############################################################################
set_property IOSTANDARD LVCMOS33 [get_ports {adc_ovrng_i}]

set_property PACKAGE_PIN N14 [get_ports {adc_ovrng_i}]