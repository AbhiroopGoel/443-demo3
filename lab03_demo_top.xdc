##==============================================================
## lab03_demo_top.xdc
## Use ONLY this constraints file
## Do NOT also add Nexys4DDR_Master.xdc
##==============================================================

##-------------------------
## Switches swt[9:0]
##-------------------------
set_property PACKAGE_PIN J15 [get_ports {swt[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt[0]}]

set_property PACKAGE_PIN L16 [get_ports {swt[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt[1]}]

set_property PACKAGE_PIN M13 [get_ports {swt[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt[2]}]

set_property PACKAGE_PIN R15 [get_ports {swt[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt[3]}]

set_property PACKAGE_PIN R17 [get_ports {swt[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt[4]}]

set_property PACKAGE_PIN T18 [get_ports {swt[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt[5]}]

set_property PACKAGE_PIN U18 [get_ports {swt[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt[6]}]

set_property PACKAGE_PIN R13 [get_ports {swt[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {swt[7]}]

set_property PACKAGE_PIN T8 [get_ports {swt[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {swt[8]}]

set_property PACKAGE_PIN U8 [get_ports {swt[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {swt[9]}]

##-------------------------
## LEDs led[7:0]
##-------------------------
set_property PACKAGE_PIN H17 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN K15 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN J13 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN N14 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

set_property PACKAGE_PIN R18 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

set_property PACKAGE_PIN V17 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]

set_property PACKAGE_PIN U17 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

set_property PACKAGE_PIN U16 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]

##-------------------------
## Seven-segment segments
## seg[6:0]
##-------------------------
set_property PACKAGE_PIN T10 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]

set_property PACKAGE_PIN R10 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]

set_property PACKAGE_PIN K16 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]

set_property PACKAGE_PIN K13 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]

set_property PACKAGE_PIN P15 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]

set_property PACKAGE_PIN T11 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]

set_property PACKAGE_PIN L18 [get_ports {seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

## Decimal point
set_property PACKAGE_PIN H15 [get_ports {dp}]
set_property IOSTANDARD LVCMOS33 [get_ports {dp}]

##-------------------------
## Seven-segment anodes
## an[7:0]
##-------------------------
set_property PACKAGE_PIN J17 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]

set_property PACKAGE_PIN J18 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]

set_property PACKAGE_PIN T9 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]

set_property PACKAGE_PIN J14 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]

set_property PACKAGE_PIN P14 [get_ports {an[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[4]}]

set_property PACKAGE_PIN T14 [get_ports {an[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[5]}]

set_property PACKAGE_PIN K2 [get_ports {an[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[6]}]

set_property PACKAGE_PIN U13 [get_ports {an[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[7]}]
