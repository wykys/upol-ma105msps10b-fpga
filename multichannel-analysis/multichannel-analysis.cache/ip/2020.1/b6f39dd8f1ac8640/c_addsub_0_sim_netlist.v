// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Aug  3 00:57:07 2020
// Host        : wpc running 64-bit Linux Mint 19.3 Tricia
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s15ftgb196-1IL
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [10:0]S;

  wire [9:0]A;
  wire [9:0]B;
  wire CLK;
  wire [10:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "10" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000" *) 
  (* c_b_width = "10" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "11" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "10" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0000000000" *) 
(* C_B_WIDTH = "10" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "11" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "spartan7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [9:0]A;
  input [9:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [10:0]S;

  wire \<const0> ;
  wire [9:0]A;
  wire [9:0]B;
  wire CLK;
  wire [10:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "10" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000" *) 
  (* c_b_width = "10" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "11" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EJFZwtxl4g9/OL6+bopUV8BP4e67HNukCIy7Ih3E75y7soa6GhqEucPXMiOy+mJrcrNwD+HjZ0/I
BwEKIiA4mA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rZCGWdmPJXoOuANoS8fyUXk7SyF+uTNJL18BfeKc+fxcyRrCB++WrM02adxoUdICz4/92yY8TQgj
xyPC0eaHZcjSLepbnHHgSReIQ1PL0hmufLbye7QTD0ygUXC4MvFVY8s3KeW9cPCqOxkyCSziJQzs
J5OT9XLQno1e9rIBr9M=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I7Zo4frj3tO6FFzeDhpSENS0yd34dQZBtiyIrI/GMASFBUeny6muOD2l0HK69ImRJIOyobvK1+9O
DhxptAc4NzRpY4xUZvr4ix1AhM1Kars1OkrQCWz4a7ciGU/XDblidF3IL0Fa7c41gHIZR9c/Usa6
XL7UEu3aSPQYbZLSDOzeao4VtSSn+dCcjsH4X8zVjSqXg8dcN3fd5C15JaMYg00F2yOFtxwWwZWq
Yvwe1q1PG/wcA1cKAOscANbj4o3O4LjfylNIB6L+Mssxosh+e0+oobWNk/ouBa4k1c3/IzXGSCAs
hEvbI+iqkWJJKZrSb9PZk7S7XSJcScrJO/DGkQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DDRecdVJcCPEpbUqhuwKtKWXteF7XhGc5d+lQn2uiREzbHyuZvQ1wDwAGGrPwE75gjqc7CdHPMOY
8+3nqcEwR4Q5USgQcou3Cyc6C0TnzzDD/dLKPHDWA1s52x8Rx+LBH9WCvBpD5BKkE4o1s3rN1tL2
wTdCqzzKD8YlryKQ4U0lr2bX6Mlf4/nIt2K1eyPKbIrHIvKDThmaIF/qLnLnkE04pksWJ9Af1OVB
46iqBssrR5p6wZc241D4CqSRCRamfP/s1JrTi8bBNCcXhC0f0Aa35UAoG8vnFngHlFd3G2J88cas
Fo7UH4k1BTTfgbQ35ec0XfSbS/qQWS+EgAF+wA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
L11p2bsABDhO9HvT3IM+HulCClFvs/UPexuAVExicKtzrLN7tNvUjSouZSn9KwAjR2hg5ZIJ23uy
1elB+eyEl65vQnoH4+s6Q5K4EIcMo5WVKfIKwgu5Q3Sg/jYW+aWT/kGuc7CazRsTxJ7XPFndpMIM
cxYWx2DLps320t+Be0c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uublhc2r9VmPPq1tMATsd3XJltn9QRg1/PdCtSlxgFBDDAk13md52Fz+h+DOWptR3Q4i+Sx5IhIP
QIONVNTf1DnoK/wa1lkbd1dROJam8/cZQFiIxnsnSPGXzOGoc0c04xDSCJCCDxiDMF1YTtAqt6nw
yZh1RwOhPpgwUKjeJ4o4TY6/i0xuYAYVc83O6KwI9Ywk9UsfyIQQS8UXFo8zA9eniU2n2NcyAVNj
Y8xZ9PYJfzfDo6dHWsj4Ik588uhfO/bmsf2/ZuY5HCAMQpnda9XzPkVomNjRfsUghko7KipIl2ur
aHh+4i2kI/+cHaihhw3z14aGidBkuYKaopasbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VYqlyQSuRywWcSrUprXX2UzoaWsJXTTbptzDY9ycgFR91H2uYfY43f80gn0E87Gvj90Qmn0Dl6ck
2VjO2Zn9yATmqtuzi/Etuf29dkl3uyKtk02OitZJEhD1CDyUJHDXKHkPMXOZCBU5CfkrIWw2SsSq
YuQKmvxp4BrhcwXypr+vRSsYd1liMxxuXOdBN5AIyzibGfcR4YUeOokIoP05xZoQOfPQkotMC1B6
SHVKEaBxe37YkyKAkQ0f9eKfnPPLG/G5qeLrFPAiIar0HHpOvdCOO69vi3RG1XqoxtTm/wGwRb5J
ZqzZyTn1Fm55PXyKhlElzXXAv1xPOTbkJXRZNQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EktM4icAEVQRmfzXBBFeRr7d3ZTOU9f+J40sQAiff114nDU+fxlewcv+twlytUk9LMSR67RJlLt4
+ZBTwcuSPZ2Cvrommkp++7rNze0VCD8pSAdj4uo1ZnYWVWmPMQaRIqI88lnAzc5+T/LxEiXKn4ji
AYGs9fja4ME8C0CHbBsg+jfUryleVk1D8jEMCetM7qDx64s/7AGfwzDqMiW2DPCPLKNUsdlOlBYT
JAOnfy6deN7/o7BYxBsE1P4Pib1x1hvR8RwEm38pBOLKGade6KL/1SHmz5N1KGLPSXQXlK53RLTI
Exc4wN04Kg72tf503oGq6Vp90c5pksQ9cc0M+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzYsaSn6YzxyfrxIwv3eyowRK7ZyzZmQHzUmV2AITf6g43c7IV/fwNBDik+XFhLScW2SxsyaGGI7
5n6kAt9uM3GerkCXA+LJQrqshcEyjuvm17vWVovBURqxhTARgZaTs5OtXdhc/wLi5e6lsdyyLtQo
bt66ubjErMgf5+tD8rpn0HkjUYmGv/MBZ0i4bGui735H12aK+wTfhGVOOiuWHCk2zCJJSx3vH4sl
dKtlpg4W0hPEM3TBPHaLnOpIDkrIUaGGN5fm6NJL6US59+Lr8/3mplbD8ld21OKzgLH+5YPRMoo4
1Pbjxkawu5Kk60AsuaR/OxngawaRMd9N4niRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PeJJ9WgzMYTG9IxBORQRoWOLrsd5AuULYETW6lxkldYGmV5rrcDRRDEczPogJCfXNrSx2gHP+6Ac
vrwuTnTLPWaDu5J7HZaVRVQ9utK0upYQamDpwx4f+dWBcvyqJ8tAA7JhYvT5ayWpZGocRp/4ewJG
HKirDxVib/WgTu9p4/YbPO6q3qA0cFk5idJvja26CUQesPXq8LJHBOeN1PP8V1gFHhNCz1suNwKY
xEVwDubRLLT+d9598jyQ67hXeS/rhASvhTiXo9oQiiqsq2zpY394qeYIzpfZ3HHbeKDn4cKBn4+f
CagpKl6HfjOYXP20sXXw8YymHpiuNmYxqkOwbQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
J/99ntv54mKeO2HJP7YVgzHJhiXXSOIB9wEyPIM9Sy3dpFCzmRg5SEseENBQDS/dSQJxu5r8a98M
Y9eJZA1ZdKyMPHS9sD+fjBCrr30GnFgu86xU4Bdee7nL+uYU5HT8vBI6xu3EpKx1mWIAzzotS0Dm
0+zuSqzi9WyIk5pMYF9BdAhyz+r/ltbeBvnexSSkDp6YTcM/yspwHFyei3sgWRDgRWFhBv9tHOGZ
SWhzkmtLNzYKbdEgRxb3ol45rGelc11lenzH50l5ZtYGTnduJPBUFvWNI7FxY5t7MJXunbGgTff8
DT83YBkrkLqTJnuyat2kSlQZtz+UcrpoVzYp/g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9632)
`pragma protect data_block
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
`pragma protect end_protected
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
