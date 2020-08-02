// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Aug  3 00:57:08 2020
// Host        : wpc running 64-bit Linux Mint 19.3 Tricia
// Command     : write_verilog -force -mode funcsim
//               /home/wykys/projects/upol-ma105msps10b-fpga/multichannel-analysis/multichannel-analysis.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s15ftgb196-1IL
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module c_addsub_0
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
  c_addsub_0_c_addsub_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "spartan7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_14
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
  c_addsub_0_c_addsub_v12_0_14_viv xst_addsub
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
Ye0CSozE8IQGoZKUTlO5KWkw32B07tev4TK1mlvF+zgOUe2jFBt0Of6dP5JPbGQSFvy+ztzZKAxU
KK/Eegk8CzEtk+gTmq28UkOiDI3/xYSYmW/iA9ujXBz7jpkrI4Sdd0tgqZEhg3PKP4ZkXKTSt1tw
tXPn1/DkRtyXbj7QOHGyIYpAmi8UP4WlF/hCS7NGdDMUndxM8Lzua02NKS1OtlZX6NnilknDZ0h7
OL+yIVmEt2/o0fQsCPjh/Z836LbtESyqi4I4KE7BW4t2WyJmgNQu72r3e9pd5+KnAxXLBVZ/Sapg
tieV0MveDFRsI/4wDSvhqbhS/JmbzkukLS87ow==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
40zFKzYkdR7lYo73ons00IabvE+4HIUIIH9+8NUoVF/LpcI+3/4LIY0XQcL0GFMoMs/92PWoECSC
mzaHqS3I1t3pnqxUN1HAW8OeVS1LINTiGZb1Z+zI7Zj9zzHRtxK/wBT2/wmtm4bu4lcWcEVQK612
9waKJMpdg0Np4VR8VaP15uE+BbhIEI6xw1g9cv7/bUa8D8XaqhLKTxMhi1cePVoA2lpybuouiWxu
EI3ab5wEqWIOt2e7byFCBgpvFZKr3KQDM3Z7FvokjvurPTt2o/a4Vq6p9QhiPrITnBztHRA8lvL4
4Nsp7/3GVrdc8jsKwahSkWFwenDTE+XsEtWH0w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9616)
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
