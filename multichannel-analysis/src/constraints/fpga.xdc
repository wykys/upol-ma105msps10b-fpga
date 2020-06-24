# XDC config for Spartn 7 (XC7S15 FTBGA196)
# Multichannel analysis
# wykys 2020

###############################################################################
# System configuraton
###############################################################################
# configuration bank voltage select pin for dedicated configuration bank 0
# set to VCCO for I/O for 3.3V/2.5V or GND for 1.8V operation
set_property CFGBVS VCCO [current_design]

# configuration bank voltage: 1.8 | 2.5 | 3.3
set_property CONFIG_VOLTAGE 3.3 [current_design]


###############################################################################
# Unused pins
###############################################################################
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLUP [current_design]


###############################################################################
# Memmory
###############################################################################
# set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

