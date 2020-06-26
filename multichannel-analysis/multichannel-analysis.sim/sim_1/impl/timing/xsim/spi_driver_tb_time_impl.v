// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Jun 26 18:44:24 2020
// Host        : wpc running 64-bit Linux Mint 19.3 Tricia
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/wykys/projects/upol-ma105msps10b-fpga/multichannel-analysis/multichannel-analysis.sim/sim_1/impl/timing/xsim/spi_driver_tb_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s15ftgb196-1IL
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module led_driver
   (Q,
    clk_i_IBUF_BUFG);
  output [3:0]Q;
  input clk_i_IBUF_BUFG;

  wire [3:0]Q;
  wire clk_i_IBUF_BUFG;
  wire \cnt[0]_i_2_n_0 ;
  wire [26:23]cnt_reg;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[0]_i_1_n_4 ;
  wire \cnt_reg[0]_i_1_n_5 ;
  wire \cnt_reg[0]_i_1_n_6 ;
  wire \cnt_reg[0]_i_1_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[20]_i_1_n_0 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[24]_i_1_n_5 ;
  wire \cnt_reg[24]_i_1_n_6 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire [2:0]\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1_n_0 ,\NLW_cnt_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1_n_4 ,\cnt_reg[0]_i_1_n_5 ,\cnt_reg[0]_i_1_n_6 ,\cnt_reg[0]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[12] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[16] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] ,\cnt_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[20] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO({\cnt_reg[20]_i_1_n_0 ,\NLW_cnt_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S({cnt_reg[23],\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] ,\cnt_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[22] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[23] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(cnt_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[24] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[24]_i_1_n_7 ),
        .Q(cnt_reg[24]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[20]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[24]_i_1_O_UNCONNECTED [3],\cnt_reg[24]_i_1_n_5 ,\cnt_reg[24]_i_1_n_6 ,\cnt_reg[24]_i_1_n_7 }),
        .S({1'b0,cnt_reg[26:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[25] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[24]_i_1_n_6 ),
        .Q(cnt_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[26] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[24]_i_1_n_5 ),
        .Q(cnt_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_1_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\NLW_cnt_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\NLW_cnt_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_o_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_reg[23]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_o_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_reg[24]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_o_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_reg[25]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_o_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_reg[26]),
        .Q(Q[0]),
        .R(1'b0));
endmodule

module spi_driver
   (miso_o_OBUF,
    sck_i_IBUF,
    clk_i_IBUF_BUFG,
    rst_i_IBUF,
    miso_o_TRI);
  output miso_o_OBUF;
  input sck_i_IBUF;
  input clk_i_IBUF_BUFG;
  input rst_i_IBUF;
  input miso_o_TRI;

  wire \FSM_onehot_opcode[0]_i_1_n_0 ;
  wire \FSM_onehot_opcode[1]_i_1_n_0 ;
  wire \FSM_onehot_opcode[3]_i_2_n_0 ;
  wire \FSM_onehot_opcode[3]_i_3_n_0 ;
  wire \FSM_onehot_opcode[3]_i_4_n_0 ;
  wire \FSM_onehot_opcode_reg_n_0_[0] ;
  wire \FSM_onehot_opcode_reg_n_0_[1] ;
  wire \FSM_onehot_opcode_reg_n_0_[2] ;
  wire \FSM_onehot_opcode_reg_n_0_[3] ;
  wire clk_i_IBUF_BUFG;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index[2]_i_2_n_0 ;
  wire \index[2]_i_3_n_0 ;
  wire \index_reg_n_0_[0] ;
  wire \index_reg_n_0_[1] ;
  wire \index_reg_n_0_[2] ;
  wire miso_i_1_n_0;
  wire miso_i_2_n_0;
  wire miso_o_OBUF;
  wire miso_o_TRI;
  wire rst;
  wire rst_i_IBUF;
  wire sck_i_IBUF;
  wire sck_old;
  wire start_frame_en_i_1_n_0;
  wire start_frame_en_i_2_n_0;
  wire start_frame_en_reg_n_0;

  LUT4 #(
    .INIT(16'hEF00)) 
    \FSM_onehot_opcode[0]_i_1 
       (.I0(miso_o_TRI),
        .I1(sck_old),
        .I2(sck_i_IBUF),
        .I3(\FSM_onehot_opcode_reg_n_0_[2] ),
        .O(\FSM_onehot_opcode[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_opcode[1]_i_1 
       (.I0(\FSM_onehot_opcode_reg_n_0_[0] ),
        .I1(\FSM_onehot_opcode_reg_n_0_[3] ),
        .O(\FSM_onehot_opcode[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_opcode[3]_i_1 
       (.I0(rst_i_IBUF),
        .O(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFABABA)) 
    \FSM_onehot_opcode[3]_i_2 
       (.I0(\FSM_onehot_opcode_reg_n_0_[0] ),
        .I1(miso_o_TRI),
        .I2(\FSM_onehot_opcode_reg_n_0_[1] ),
        .I3(\FSM_onehot_opcode[3]_i_4_n_0 ),
        .I4(\FSM_onehot_opcode_reg_n_0_[2] ),
        .I5(\FSM_onehot_opcode_reg_n_0_[3] ),
        .O(\FSM_onehot_opcode[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_onehot_opcode[3]_i_3 
       (.I0(miso_o_TRI),
        .I1(sck_i_IBUF),
        .I2(sck_old),
        .I3(\FSM_onehot_opcode_reg_n_0_[2] ),
        .O(\FSM_onehot_opcode[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \FSM_onehot_opcode[3]_i_4 
       (.I0(sck_old),
        .I1(\index_reg_n_0_[2] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[0] ),
        .I4(sck_i_IBUF),
        .I5(miso_o_TRI),
        .O(\FSM_onehot_opcode[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "spi_ready:0010,spi_rtx:0100,spi_reset:0001,spi_complete:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_opcode_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\FSM_onehot_opcode[3]_i_2_n_0 ),
        .D(\FSM_onehot_opcode[0]_i_1_n_0 ),
        .Q(\FSM_onehot_opcode_reg_n_0_[0] ),
        .S(rst));
  (* FSM_ENCODED_STATES = "spi_ready:0010,spi_rtx:0100,spi_reset:0001,spi_complete:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_opcode_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\FSM_onehot_opcode[3]_i_2_n_0 ),
        .D(\FSM_onehot_opcode[1]_i_1_n_0 ),
        .Q(\FSM_onehot_opcode_reg_n_0_[1] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "spi_ready:0010,spi_rtx:0100,spi_reset:0001,spi_complete:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_opcode_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\FSM_onehot_opcode[3]_i_2_n_0 ),
        .D(\FSM_onehot_opcode_reg_n_0_[1] ),
        .Q(\FSM_onehot_opcode_reg_n_0_[2] ),
        .R(rst));
  (* FSM_ENCODED_STATES = "spi_ready:0010,spi_rtx:0100,spi_reset:0001,spi_complete:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_opcode_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\FSM_onehot_opcode[3]_i_2_n_0 ),
        .D(\FSM_onehot_opcode[3]_i_3_n_0 ),
        .Q(\FSM_onehot_opcode_reg_n_0_[3] ),
        .R(rst));
  LUT5 #(
    .INIT(32'hDEEEAAAA)) 
    \index[0]_i_1 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\FSM_onehot_opcode_reg_n_0_[1] ),
        .I2(\index[2]_i_3_n_0 ),
        .I3(\FSM_onehot_opcode_reg_n_0_[2] ),
        .I4(rst_i_IBUF),
        .O(\index[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9FAFAFAAAAAAAAA)) 
    \index[1]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\FSM_onehot_opcode_reg_n_0_[1] ),
        .I3(\index[2]_i_3_n_0 ),
        .I4(\FSM_onehot_opcode_reg_n_0_[2] ),
        .I5(rst_i_IBUF),
        .O(\index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF6FAFAFAAAAAAAAA)) 
    \index[2]_i_1 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index[2]_i_2_n_0 ),
        .I2(\FSM_onehot_opcode_reg_n_0_[1] ),
        .I3(\index[2]_i_3_n_0 ),
        .I4(\FSM_onehot_opcode_reg_n_0_[2] ),
        .I5(rst_i_IBUF),
        .O(\index[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \index[2]_i_2 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .O(\index[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055540000)) 
    \index[2]_i_3 
       (.I0(sck_old),
        .I1(\index_reg_n_0_[2] ),
        .I2(\index_reg_n_0_[0] ),
        .I3(\index_reg_n_0_[1] ),
        .I4(sck_i_IBUF),
        .I5(miso_o_TRI),
        .O(\index[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \index_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\index[0]_i_1_n_0 ),
        .Q(\index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \index_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\index[1]_i_1_n_0 ),
        .Q(\index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \index_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(\index[2]_i_1_n_0 ),
        .Q(\index_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBABFFFF08A80000)) 
    miso_i_1
       (.I0(miso_i_2_n_0),
        .I1(start_frame_en_i_2_n_0),
        .I2(\FSM_onehot_opcode_reg_n_0_[1] ),
        .I3(miso_o_TRI),
        .I4(rst_i_IBUF),
        .I5(miso_o_OBUF),
        .O(miso_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFC8)) 
    miso_i_2
       (.I0(\FSM_onehot_opcode_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\FSM_onehot_opcode_reg_n_0_[1] ),
        .I3(\FSM_onehot_opcode_reg_n_0_[0] ),
        .O(miso_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    miso_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(miso_i_1_n_0),
        .Q(miso_o_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sck_old_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(sck_i_IBUF),
        .Q(sck_old),
        .R(rst));
  LUT4 #(
    .INIT(16'hBFA0)) 
    start_frame_en_i_1
       (.I0(\FSM_onehot_opcode_reg_n_0_[1] ),
        .I1(start_frame_en_i_2_n_0),
        .I2(rst_i_IBUF),
        .I3(start_frame_en_reg_n_0),
        .O(start_frame_en_i_1_n_0));
  LUT5 #(
    .INIT(32'h40540000)) 
    start_frame_en_i_2
       (.I0(miso_o_TRI),
        .I1(start_frame_en_reg_n_0),
        .I2(sck_old),
        .I3(sck_i_IBUF),
        .I4(\FSM_onehot_opcode_reg_n_0_[2] ),
        .O(start_frame_en_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_frame_en_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .D(start_frame_en_i_1_n_0),
        .Q(start_frame_en_reg_n_0),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "d28c6ce" *) 
(* NotValidForBitStream *)
module top
   (clk_i,
    rst_i,
    nss_i,
    sck_i,
    mosi_i,
    miso_o,
    led_o);
  input clk_i;
  input rst_i;
  input nss_i;
  input sck_i;
  input mosi_i;
  output miso_o;
  output [1:4]led_o;

  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire [1:4]led_o;
  wire [1:4]led_o_OBUF;
  wire miso_o;
  wire miso_o_OBUF;
  wire miso_o_TRI;
  wire nss_i;
  wire rst_i;
  wire rst_i_IBUF;
  wire sck_i;
  wire sck_i_IBUF;

initial begin
 $sdf_annotate("spi_driver_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  led_driver led_driver_intance
       (.Q({led_o_OBUF[1],led_o_OBUF[2],led_o_OBUF[3],led_o_OBUF[4]}),
        .clk_i_IBUF_BUFG(clk_i_IBUF_BUFG));
  OBUF \led_o_OBUF[1]_inst 
       (.I(led_o_OBUF[1]),
        .O(led_o[1]));
  OBUF \led_o_OBUF[2]_inst 
       (.I(led_o_OBUF[2]),
        .O(led_o[2]));
  OBUF \led_o_OBUF[3]_inst 
       (.I(led_o_OBUF[3]),
        .O(led_o[3]));
  OBUF \led_o_OBUF[4]_inst 
       (.I(led_o_OBUF[4]),
        .O(led_o[4]));
  OBUFT miso_o_OBUFT_inst
       (.I(miso_o_OBUF),
        .O(miso_o),
        .T(miso_o_TRI));
  IBUF nss_i_IBUF_inst
       (.I(nss_i),
        .O(miso_o_TRI));
  IBUF rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
  IBUF sck_i_IBUF_inst
       (.I(sck_i),
        .O(sck_i_IBUF));
  spi_driver spi_driver_intance
       (.clk_i_IBUF_BUFG(clk_i_IBUF_BUFG),
        .miso_o_OBUF(miso_o_OBUF),
        .miso_o_TRI(miso_o_TRI),
        .rst_i_IBUF(rst_i_IBUF),
        .sck_i_IBUF(sck_i_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
