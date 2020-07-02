// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Jul  2 21:59:06 2020
// Host        : wpc running 64-bit Linux Mint 19.3 Tricia
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/wykys/projects/upol-ma105msps10b-fpga/multichannel-analysis/multichannel-analysis.sim/sim_1/impl/timing/xsim/top_tb_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s15ftgb196-1IL
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD1
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD2
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD3
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD4
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD5
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD6
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module IOBUF_HD7
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module adc_driver
   (led_o_OBUF,
    adc_ovrng_i_IBUF,
    clk_out);
  output [0:0]led_o_OBUF;
  input adc_ovrng_i_IBUF;
  input clk_out;

  wire adc_ovrng;
  wire adc_ovrng_i_IBUF;
  wire clk_out;
  wire [0:0]led_o_OBUF;

  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    adc_ovrng_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(adc_ovrng_i_IBUF),
        .Q(adc_ovrng),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[15] 
       (.C(clk_out),
        .CE(1'b1),
        .D(adc_ovrng),
        .Q(led_o_OBUF),
        .R(1'b0));
endmodule

module clk_wiz_0
   (clk_out,
    reset,
    clk_in);
  output clk_out;
  input reset;
  input clk_in;

  wire clk_in;
  wire clk_out;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in(clk_in),
        .clk_out(clk_out),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out,
    reset,
    clk_in);
  output clk_out;
  input reset;
  input clk_in;

  wire clk_in;
  wire clk_in_clk_wiz_0;
  wire clk_out;
  wire clk_out_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in),
        .O(clk_in_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out_clk_wiz_0),
        .O(clk_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(180.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module control
   (spi_byte_second,
    spi_byte_first,
    spi_data_tx_vld,
    sram_data_write_vld,
    \spi_byte_cmd_reg[4]_0 ,
    S,
    Q,
    \cmd_reg[2]_0 ,
    \cmd_reg[1]_0 ,
    \FSM_sequential_opcode_reg[0]_0 ,
    D,
    \sram_data_o_reg[15]_0 ,
    clk_out,
    \FSM_onehot_spi_byte_order_reg[0]_0 ,
    rst,
    spi_data_rx_vld,
    \FSM_onehot_spi_byte_order_reg[2]_0 ,
    rst_pin,
    spi_first,
    \spi_data_o_reg[0]_0 ,
    sram_data_read_vld,
    sram_ready,
    ready_reg_0,
    tx_ready,
    spi_new_cmd_reg_0,
    \FSM_sequential_opcode_reg[1]_0 ,
    opcode1_carry__0,
    \ram_data_reg[7]_0 ,
    E,
    \spi_byte_second_reg[7]_0 ,
    \spi_byte_first_reg[7]_0 ,
    \spi_byte_cmd_reg[7]_0 ,
    \sram_data_o_reg[0]_0 );
  output spi_byte_second;
  output spi_byte_first;
  output spi_data_tx_vld;
  output sram_data_write_vld;
  output \spi_byte_cmd_reg[4]_0 ;
  output [0:0]S;
  output [16:0]Q;
  output \cmd_reg[2]_0 ;
  output \cmd_reg[1]_0 ;
  output \FSM_sequential_opcode_reg[0]_0 ;
  output [7:0]D;
  output [15:0]\sram_data_o_reg[15]_0 ;
  input clk_out;
  input \FSM_onehot_spi_byte_order_reg[0]_0 ;
  input rst;
  input spi_data_rx_vld;
  input \FSM_onehot_spi_byte_order_reg[2]_0 ;
  input rst_pin;
  input spi_first;
  input \spi_data_o_reg[0]_0 ;
  input sram_data_read_vld;
  input sram_ready;
  input ready_reg_0;
  input tx_ready;
  input spi_new_cmd_reg_0;
  input \FSM_sequential_opcode_reg[1]_0 ;
  input [1:0]opcode1_carry__0;
  input [7:0]\ram_data_reg[7]_0 ;
  input [0:0]E;
  input [7:0]\spi_byte_second_reg[7]_0 ;
  input [0:0]\spi_byte_first_reg[7]_0 ;
  input [0:0]\spi_byte_cmd_reg[7]_0 ;
  input \sram_data_o_reg[0]_0 ;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_spi_byte_order[1]_i_1_n_0 ;
  wire \FSM_onehot_spi_byte_order[2]_i_1_n_0 ;
  wire \FSM_onehot_spi_byte_order_reg[0]_0 ;
  wire \FSM_onehot_spi_byte_order_reg[2]_0 ;
  wire \FSM_onehot_spi_byte_order_reg_n_0_[2] ;
  wire \FSM_sequential_opcode[0]_i_1_n_0 ;
  wire \FSM_sequential_opcode[0]_i_2_n_0 ;
  wire \FSM_sequential_opcode[1]_i_10_n_0 ;
  wire \FSM_sequential_opcode[1]_i_1_n_0 ;
  wire \FSM_sequential_opcode[1]_i_2_n_0 ;
  wire \FSM_sequential_opcode[1]_i_3_n_0 ;
  wire \FSM_sequential_opcode[1]_i_4_n_0 ;
  wire \FSM_sequential_opcode[1]_i_5_n_0 ;
  wire \FSM_sequential_opcode[1]_i_6_n_0 ;
  wire \FSM_sequential_opcode[1]_i_7_n_0 ;
  wire \FSM_sequential_opcode[1]_i_8_n_0 ;
  wire \FSM_sequential_opcode[1]_i_9_n_0 ;
  wire \FSM_sequential_opcode[2]_i_1_n_0 ;
  wire \FSM_sequential_opcode[2]_i_2_n_0 ;
  wire \FSM_sequential_opcode[2]_i_3_n_0 ;
  wire \FSM_sequential_opcode[2]_i_4_n_0 ;
  wire \FSM_sequential_opcode[2]_i_5_n_0 ;
  wire \FSM_sequential_opcode[2]_i_6_n_0 ;
  wire \FSM_sequential_opcode[2]_i_7_n_0 ;
  wire \FSM_sequential_opcode[2]_i_8_n_0 ;
  wire \FSM_sequential_opcode[2]_i_9_n_0 ;
  wire \FSM_sequential_opcode_reg[0]_0 ;
  wire \FSM_sequential_opcode_reg[1]_0 ;
  wire [16:0]Q;
  wire [0:0]S;
  wire _carry__0_n_0;
  wire _carry__1_n_0;
  wire _carry_n_0;
  wire clk_out;
  wire cmd;
  wire \cmd[0]_i_1_n_0 ;
  wire \cmd[1]_i_1_n_0 ;
  wire \cmd[2]_i_1_n_0 ;
  wire \cmd_reg[1]_0 ;
  wire \cmd_reg[2]_0 ;
  wire \cmd_reg_n_0_[0] ;
  wire [1:0]opcode1_carry__0;
  wire [2:0]opcode__0;
  wire [16:0]p_0_out;
  wire [7:0]ram_data;
  wire ram_data_1;
  wire [7:0]\ram_data_reg[7]_0 ;
  wire [15:0]ram_start_read_address;
  wire ram_start_read_address_0;
  wire ready;
  wire ready_i_1_n_0;
  wire ready_i_2_n_0;
  wire ready_i_3_n_0;
  wire ready_reg_0;
  wire rst;
  wire rst_pin;
  wire \spi_byte_cmd_reg[4]_0 ;
  wire [0:0]\spi_byte_cmd_reg[7]_0 ;
  wire \spi_byte_cmd_reg_n_0_[0] ;
  wire \spi_byte_cmd_reg_n_0_[1] ;
  wire \spi_byte_cmd_reg_n_0_[2] ;
  wire \spi_byte_cmd_reg_n_0_[3] ;
  wire \spi_byte_cmd_reg_n_0_[4] ;
  wire \spi_byte_cmd_reg_n_0_[5] ;
  wire \spi_byte_cmd_reg_n_0_[6] ;
  wire \spi_byte_cmd_reg_n_0_[7] ;
  wire spi_byte_first;
  wire [7:0]spi_byte_first__0;
  wire [0:0]\spi_byte_first_reg[7]_0 ;
  wire spi_byte_second;
  wire [7:0]spi_byte_second__0;
  wire [7:0]\spi_byte_second_reg[7]_0 ;
  wire [6:0]spi_data_o0_in;
  wire \spi_data_o[1]_i_1_n_0 ;
  wire \spi_data_o[3]_i_1_n_0 ;
  wire \spi_data_o[5]_i_1_n_0 ;
  wire \spi_data_o[7]_i_1_n_0 ;
  wire \spi_data_o_reg[0]_0 ;
  wire \spi_data_o_reg_n_0_[0] ;
  wire \spi_data_o_reg_n_0_[1] ;
  wire \spi_data_o_reg_n_0_[2] ;
  wire \spi_data_o_reg_n_0_[3] ;
  wire \spi_data_o_reg_n_0_[4] ;
  wire \spi_data_o_reg_n_0_[5] ;
  wire \spi_data_o_reg_n_0_[6] ;
  wire \spi_data_o_reg_n_0_[7] ;
  wire spi_data_rx_vld;
  wire spi_data_tx_vld;
  wire spi_data_vld_o_i_1_n_0;
  wire spi_data_vld_o_i_2_n_0;
  wire spi_first;
  wire spi_new_cmd_i_1_n_0;
  wire spi_new_cmd_reg_0;
  wire spi_new_cmd_reg_n_0;
  wire spi_new_data;
  wire sram_address_cnt;
  wire sram_address_cnt0;
  wire [16:0]sram_address_cnt0_in;
  wire \sram_address_cnt[16]_i_3_n_0 ;
  wire \sram_address_cnt_reg_n_0_[0] ;
  wire \sram_address_cnt_reg_n_0_[10] ;
  wire \sram_address_cnt_reg_n_0_[11] ;
  wire \sram_address_cnt_reg_n_0_[12] ;
  wire \sram_address_cnt_reg_n_0_[13] ;
  wire \sram_address_cnt_reg_n_0_[14] ;
  wire \sram_address_cnt_reg_n_0_[15] ;
  wire \sram_address_cnt_reg_n_0_[16] ;
  wire \sram_address_cnt_reg_n_0_[1] ;
  wire \sram_address_cnt_reg_n_0_[2] ;
  wire \sram_address_cnt_reg_n_0_[3] ;
  wire \sram_address_cnt_reg_n_0_[4] ;
  wire \sram_address_cnt_reg_n_0_[5] ;
  wire \sram_address_cnt_reg_n_0_[6] ;
  wire \sram_address_cnt_reg_n_0_[7] ;
  wire \sram_address_cnt_reg_n_0_[8] ;
  wire \sram_address_cnt_reg_n_0_[9] ;
  wire [16:0]sram_address_o0_in;
  wire \sram_address_o[16]_i_1_n_0 ;
  wire \sram_address_o[16]_i_3_n_0 ;
  wire \sram_data_o[15]_i_2_n_0 ;
  wire \sram_data_o[15]_i_4_n_0 ;
  wire \sram_data_o_reg[0]_0 ;
  wire [15:0]\sram_data_o_reg[15]_0 ;
  wire sram_data_read_vld;
  wire sram_data_vld_o_i_1_n_0;
  wire sram_data_vld_o_i_2_n_0;
  wire sram_data_vld_o_i_3_n_0;
  wire sram_data_write_vld;
  wire sram_ready;
  wire tx_ready;
  wire [2:0]NLW__carry_CO_UNCONNECTED;
  wire [2:0]NLW__carry__0_CO_UNCONNECTED;
  wire [2:0]NLW__carry__1_CO_UNCONNECTED;
  wire [3:0]NLW__carry__2_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000C000A000A)) 
    \FSM_onehot_spi_byte_order[1]_i_1 
       (.I0(spi_byte_second),
        .I1(spi_byte_first),
        .I2(\FSM_onehot_spi_byte_order_reg[2]_0 ),
        .I3(rst_pin),
        .I4(spi_first),
        .I5(spi_data_rx_vld),
        .O(\FSM_onehot_spi_byte_order[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C000A000A)) 
    \FSM_onehot_spi_byte_order[2]_i_1 
       (.I0(\FSM_onehot_spi_byte_order_reg_n_0_[2] ),
        .I1(spi_byte_second),
        .I2(\FSM_onehot_spi_byte_order_reg[2]_0 ),
        .I3(rst_pin),
        .I4(spi_first),
        .I5(spi_data_rx_vld),
        .O(\FSM_onehot_spi_byte_order[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:1000,iSTATE0:0100,spi_byte_order_cmd:0001,spi_byte_order_first:0010," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_spi_byte_order_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_onehot_spi_byte_order_reg[0]_0 ),
        .Q(spi_byte_first),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:1000,iSTATE0:0100,spi_byte_order_cmd:0001,spi_byte_order_first:0010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_byte_order_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_onehot_spi_byte_order[1]_i_1_n_0 ),
        .Q(spi_byte_second),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:1000,iSTATE0:0100,spi_byte_order_cmd:0001,spi_byte_order_first:0010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_spi_byte_order_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_onehot_spi_byte_order[2]_i_1_n_0 ),
        .Q(\FSM_onehot_spi_byte_order_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \FSM_sequential_opcode[0]_i_1 
       (.I0(\FSM_sequential_opcode[0]_i_2_n_0 ),
        .I1(\FSM_sequential_opcode[2]_i_3_n_0 ),
        .I2(\FSM_sequential_opcode[2]_i_2_n_0 ),
        .I3(\FSM_sequential_opcode[2]_i_5_n_0 ),
        .I4(opcode__0[0]),
        .O(\FSM_sequential_opcode[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8088AAAAA8A8AAAA)) 
    \FSM_sequential_opcode[0]_i_2 
       (.I0(\FSM_sequential_opcode[1]_i_5_n_0 ),
        .I1(opcode__0[1]),
        .I2(opcode__0[2]),
        .I3(sram_ready),
        .I4(opcode__0[0]),
        .I5(sram_data_read_vld),
        .O(\FSM_sequential_opcode[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAFFFFABAA0000)) 
    \FSM_sequential_opcode[1]_i_1 
       (.I0(\FSM_sequential_opcode[1]_i_2_n_0 ),
        .I1(\FSM_sequential_opcode[1]_i_3_n_0 ),
        .I2(\FSM_sequential_opcode[1]_i_4_n_0 ),
        .I3(\FSM_sequential_opcode[1]_i_5_n_0 ),
        .I4(\FSM_sequential_opcode[2]_i_5_n_0 ),
        .I5(opcode__0[1]),
        .O(\FSM_sequential_opcode[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_opcode[1]_i_10 
       (.I0(\sram_address_cnt_reg_n_0_[14] ),
        .I1(\sram_address_cnt_reg_n_0_[9] ),
        .I2(\sram_address_cnt_reg_n_0_[15] ),
        .O(\FSM_sequential_opcode[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h04F000F0040000F0)) 
    \FSM_sequential_opcode[1]_i_2 
       (.I0(spi_data_tx_vld),
        .I1(tx_ready),
        .I2(opcode__0[0]),
        .I3(opcode__0[1]),
        .I4(opcode__0[2]),
        .I5(sram_data_read_vld),
        .O(\FSM_sequential_opcode[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_opcode[1]_i_3 
       (.I0(spi_data_tx_vld),
        .I1(tx_ready),
        .I2(opcode__0[1]),
        .I3(opcode__0[0]),
        .I4(opcode__0[2]),
        .O(\FSM_sequential_opcode[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00880300)) 
    \FSM_sequential_opcode[1]_i_4 
       (.I0(sram_ready),
        .I1(opcode__0[0]),
        .I2(opcode__0[1]),
        .I3(opcode__0[2]),
        .I4(sram_data_read_vld),
        .I5(\cmd_reg_n_0_[0] ),
        .O(\FSM_sequential_opcode[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFB)) 
    \FSM_sequential_opcode[1]_i_5 
       (.I0(\FSM_sequential_opcode[1]_i_6_n_0 ),
        .I1(\FSM_sequential_opcode[1]_i_7_n_0 ),
        .I2(\FSM_sequential_opcode[1]_i_8_n_0 ),
        .I3(\FSM_sequential_opcode[1]_i_9_n_0 ),
        .I4(\FSM_sequential_opcode[1]_i_10_n_0 ),
        .I5(\FSM_sequential_opcode_reg[1]_0 ),
        .O(\FSM_sequential_opcode[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_opcode[1]_i_6 
       (.I0(opcode__0[1]),
        .I1(opcode__0[2]),
        .I2(sram_ready),
        .I3(opcode__0[0]),
        .O(\FSM_sequential_opcode[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_opcode[1]_i_7 
       (.I0(\sram_address_cnt_reg_n_0_[7] ),
        .I1(\sram_address_cnt_reg_n_0_[13] ),
        .I2(\sram_address_cnt_reg_n_0_[10] ),
        .I3(\sram_address_cnt_reg_n_0_[6] ),
        .I4(\sram_address_cnt_reg_n_0_[5] ),
        .I5(\sram_address_cnt_reg_n_0_[2] ),
        .O(\FSM_sequential_opcode[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_opcode[1]_i_8 
       (.I0(\sram_address_cnt_reg_n_0_[11] ),
        .I1(\sram_address_cnt_reg_n_0_[12] ),
        .I2(\sram_address_cnt_reg_n_0_[16] ),
        .I3(\sram_address_cnt_reg_n_0_[4] ),
        .O(\FSM_sequential_opcode[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_opcode[1]_i_9 
       (.I0(\sram_address_cnt_reg_n_0_[1] ),
        .I1(\sram_address_cnt_reg_n_0_[8] ),
        .I2(\sram_address_cnt_reg_n_0_[0] ),
        .I3(\sram_address_cnt_reg_n_0_[3] ),
        .O(\FSM_sequential_opcode[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \FSM_sequential_opcode[2]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_2_n_0 ),
        .I1(ram_data_1),
        .I2(\FSM_sequential_opcode[2]_i_3_n_0 ),
        .I3(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I4(\FSM_sequential_opcode[2]_i_5_n_0 ),
        .I5(opcode__0[2]),
        .O(\FSM_sequential_opcode[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_opcode[2]_i_2 
       (.I0(opcode__0[1]),
        .I1(tx_ready),
        .I2(spi_data_tx_vld),
        .I3(opcode__0[2]),
        .O(\FSM_sequential_opcode[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_sequential_opcode[2]_i_3 
       (.I0(opcode__0[0]),
        .I1(opcode__0[1]),
        .I2(opcode__0[2]),
        .I3(sram_data_read_vld),
        .O(\FSM_sequential_opcode[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_sequential_opcode[2]_i_4 
       (.I0(sram_data_read_vld),
        .I1(opcode__0[0]),
        .I2(sram_ready),
        .I3(opcode__0[1]),
        .I4(opcode__0[2]),
        .O(\FSM_sequential_opcode[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCC540054)) 
    \FSM_sequential_opcode[2]_i_5 
       (.I0(\FSM_sequential_opcode[2]_i_6_n_0 ),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(opcode__0[2]),
        .I4(\spi_data_o_reg[0]_0 ),
        .I5(\FSM_sequential_opcode[2]_i_7_n_0 ),
        .O(\FSM_sequential_opcode[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \FSM_sequential_opcode[2]_i_6 
       (.I0(\FSM_sequential_opcode[2]_i_8_n_0 ),
        .I1(\FSM_sequential_opcode[2]_i_9_n_0 ),
        .I2(\FSM_sequential_opcode[1]_i_7_n_0 ),
        .I3(\FSM_sequential_opcode[1]_i_8_n_0 ),
        .I4(\FSM_sequential_opcode[1]_i_9_n_0 ),
        .I5(\FSM_sequential_opcode[1]_i_10_n_0 ),
        .O(\FSM_sequential_opcode[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAABAA)) 
    \FSM_sequential_opcode[2]_i_7 
       (.I0(ready_i_2_n_0),
        .I1(opcode__0[0]),
        .I2(opcode__0[1]),
        .I3(opcode__0[2]),
        .I4(sram_data_read_vld),
        .O(\FSM_sequential_opcode[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \FSM_sequential_opcode[2]_i_8 
       (.I0(opcode__0[1]),
        .I1(sram_data_read_vld),
        .I2(opcode__0[0]),
        .I3(sram_ready),
        .O(\FSM_sequential_opcode[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_opcode[2]_i_9 
       (.I0(opcode__0[0]),
        .I1(sram_ready),
        .O(\FSM_sequential_opcode[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "opcode_measurement_process:010,opcode_read_wait_for_ram:100,opcode_read_send_msb:110,opcode_read_send_lsb:111,opcode_read_wait_for_data:101,iSTATE:000,opcode_measurement_init:001,opcode_read_init:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_opcode_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_sequential_opcode[0]_i_1_n_0 ),
        .Q(opcode__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "opcode_measurement_process:010,opcode_read_wait_for_ram:100,opcode_read_send_msb:110,opcode_read_send_lsb:111,opcode_read_wait_for_data:101,iSTATE:000,opcode_measurement_init:001,opcode_read_init:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_opcode_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_sequential_opcode[1]_i_1_n_0 ),
        .Q(opcode__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "opcode_measurement_process:010,opcode_read_wait_for_ram:100,opcode_read_send_msb:110,opcode_read_send_lsb:111,opcode_read_wait_for_data:101,iSTATE:000,opcode_measurement_init:001,opcode_read_init:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_opcode_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_sequential_opcode[2]_i_1_n_0 ),
        .Q(opcode__0[2]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,NLW__carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(p_0_out[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sram_address_cnt0_in[4:1]),
        .S(p_0_out[4:1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,NLW__carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sram_address_cnt0_in[8:5]),
        .S(p_0_out[8:5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__0_i_1
       (.I0(ram_start_read_address[8]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[8] ),
        .O(p_0_out[8]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__0_i_2
       (.I0(ram_start_read_address[7]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[7] ),
        .O(p_0_out[7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__0_i_3
       (.I0(ram_start_read_address[6]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[6] ),
        .O(p_0_out[6]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__0_i_4
       (.I0(ram_start_read_address[5]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[5] ),
        .O(p_0_out[5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,NLW__carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sram_address_cnt0_in[12:9]),
        .S(p_0_out[12:9]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__1_i_1
       (.I0(ram_start_read_address[12]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[12] ),
        .O(p_0_out[12]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__1_i_2
       (.I0(ram_start_read_address[11]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[11] ),
        .O(p_0_out[11]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__1_i_3
       (.I0(ram_start_read_address[10]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[10] ),
        .O(p_0_out[10]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__1_i_4
       (.I0(ram_start_read_address[9]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[9] ),
        .O(p_0_out[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO(NLW__carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(sram_address_cnt0_in[16:13]),
        .S(p_0_out[16:13]));
  LUT3 #(
    .INIT(8'h2A)) 
    _carry__2_i_1
       (.I0(\sram_address_cnt_reg_n_0_[16] ),
        .I1(opcode__0[0]),
        .I2(opcode__0[1]),
        .O(p_0_out[16]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__2_i_2
       (.I0(ram_start_read_address[15]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[15] ),
        .O(p_0_out[15]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__2_i_3
       (.I0(ram_start_read_address[14]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[14] ),
        .O(p_0_out[14]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry__2_i_4
       (.I0(ram_start_read_address[13]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[13] ),
        .O(p_0_out[13]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry_i_1
       (.I0(ram_start_read_address[0]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[0] ),
        .O(p_0_out[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry_i_2
       (.I0(ram_start_read_address[4]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[4] ),
        .O(p_0_out[4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry_i_3
       (.I0(ram_start_read_address[3]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[3] ),
        .O(p_0_out[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry_i_4
       (.I0(ram_start_read_address[2]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[2] ),
        .O(p_0_out[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    _carry_i_5
       (.I0(ram_start_read_address[1]),
        .I1(opcode__0[1]),
        .I2(opcode__0[0]),
        .I3(\sram_address_cnt_reg_n_0_[1] ),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buffer_tx[0]_i_1 
       (.I0(spi_data_tx_vld),
        .I1(\spi_data_o_reg_n_0_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buffer_tx[1]_i_1 
       (.I0(spi_data_tx_vld),
        .I1(\spi_data_o_reg_n_0_[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buffer_tx[2]_i_1 
       (.I0(spi_data_tx_vld),
        .I1(\spi_data_o_reg_n_0_[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buffer_tx[3]_i_1 
       (.I0(spi_data_tx_vld),
        .I1(\spi_data_o_reg_n_0_[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buffer_tx[4]_i_1 
       (.I0(spi_data_tx_vld),
        .I1(\spi_data_o_reg_n_0_[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buffer_tx[5]_i_1 
       (.I0(spi_data_tx_vld),
        .I1(\spi_data_o_reg_n_0_[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buffer_tx[6]_i_1 
       (.I0(spi_data_tx_vld),
        .I1(\spi_data_o_reg_n_0_[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \buffer_tx[7]_i_1 
       (.I0(spi_data_tx_vld),
        .I1(\spi_data_o_reg_n_0_[7] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h8F80)) 
    \cmd[0]_i_1 
       (.I0(\spi_byte_cmd_reg_n_0_[2] ),
        .I1(\spi_byte_cmd_reg_n_0_[0] ),
        .I2(cmd),
        .I3(\cmd_reg_n_0_[0] ),
        .O(\cmd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cmd[1]_i_1 
       (.I0(\spi_byte_cmd_reg_n_0_[2] ),
        .I1(cmd),
        .I2(\cmd_reg[1]_0 ),
        .O(\cmd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cmd[2]_i_1 
       (.I0(\spi_byte_cmd_reg_n_0_[1] ),
        .I1(cmd),
        .I2(\cmd_reg[2]_0 ),
        .O(\cmd[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000B280828)) 
    \cmd[2]_i_2 
       (.I0(spi_byte_first),
        .I1(\spi_byte_cmd_reg_n_0_[0] ),
        .I2(\spi_byte_cmd_reg_n_0_[1] ),
        .I3(\spi_byte_cmd_reg_n_0_[2] ),
        .I4(\FSM_onehot_spi_byte_order_reg_n_0_[2] ),
        .I5(\spi_byte_cmd_reg[4]_0 ),
        .O(cmd));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\cmd[0]_i_1_n_0 ),
        .Q(\cmd_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\cmd[1]_i_1_n_0 ),
        .Q(\cmd_reg[1]_0 ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \cmd_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\cmd[2]_i_1_n_0 ),
        .Q(\cmd_reg[2]_0 ),
        .R(rst));
  LUT4 #(
    .INIT(16'h9009)) 
    opcode1_carry__0_i_1
       (.I0(Q[16]),
        .I1(opcode1_carry__0[1]),
        .I2(Q[15]),
        .I3(opcode1_carry__0[0]),
        .O(S));
  LUT4 #(
    .INIT(16'h0080)) 
    \ram_data[7]_i_1 
       (.I0(opcode__0[0]),
        .I1(sram_data_read_vld),
        .I2(opcode__0[2]),
        .I3(opcode__0[1]),
        .O(ram_data_1));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[0] 
       (.C(clk_out),
        .CE(ram_data_1),
        .D(\ram_data_reg[7]_0 [0]),
        .Q(ram_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[1] 
       (.C(clk_out),
        .CE(ram_data_1),
        .D(\ram_data_reg[7]_0 [1]),
        .Q(ram_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[2] 
       (.C(clk_out),
        .CE(ram_data_1),
        .D(\ram_data_reg[7]_0 [2]),
        .Q(ram_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[3] 
       (.C(clk_out),
        .CE(ram_data_1),
        .D(\ram_data_reg[7]_0 [3]),
        .Q(ram_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[4] 
       (.C(clk_out),
        .CE(ram_data_1),
        .D(\ram_data_reg[7]_0 [4]),
        .Q(ram_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[5] 
       (.C(clk_out),
        .CE(ram_data_1),
        .D(\ram_data_reg[7]_0 [5]),
        .Q(ram_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[6] 
       (.C(clk_out),
        .CE(ram_data_1),
        .D(\ram_data_reg[7]_0 [6]),
        .Q(ram_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_data_reg[7] 
       (.C(clk_out),
        .CE(ram_data_1),
        .D(\ram_data_reg[7]_0 [7]),
        .Q(ram_data[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \ram_start_read_address[15]_i_1 
       (.I0(\spi_byte_cmd_reg_n_0_[0] ),
        .I1(\spi_byte_cmd_reg_n_0_[1] ),
        .I2(\spi_byte_cmd_reg_n_0_[2] ),
        .I3(\FSM_onehot_spi_byte_order_reg_n_0_[2] ),
        .I4(ready_reg_0),
        .I5(\spi_byte_cmd_reg[4]_0 ),
        .O(ram_start_read_address_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \ram_start_read_address[15]_i_2 
       (.I0(\spi_byte_cmd_reg_n_0_[4] ),
        .I1(\spi_byte_cmd_reg_n_0_[6] ),
        .I2(\spi_byte_cmd_reg_n_0_[5] ),
        .I3(\spi_byte_cmd_reg_n_0_[7] ),
        .I4(\spi_byte_cmd_reg_n_0_[3] ),
        .I5(spi_new_data),
        .O(\spi_byte_cmd_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[0] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_second__0[0]),
        .Q(ram_start_read_address[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[10] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_first__0[2]),
        .Q(ram_start_read_address[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[11] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_first__0[3]),
        .Q(ram_start_read_address[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[12] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_first__0[4]),
        .Q(ram_start_read_address[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[13] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_first__0[5]),
        .Q(ram_start_read_address[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[14] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_first__0[6]),
        .Q(ram_start_read_address[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[15] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_first__0[7]),
        .Q(ram_start_read_address[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[1] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_second__0[1]),
        .Q(ram_start_read_address[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[2] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_second__0[2]),
        .Q(ram_start_read_address[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[3] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_second__0[3]),
        .Q(ram_start_read_address[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[4] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_second__0[4]),
        .Q(ram_start_read_address[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[5] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_second__0[5]),
        .Q(ram_start_read_address[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[6] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_second__0[6]),
        .Q(ram_start_read_address[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[7] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_second__0[7]),
        .Q(ram_start_read_address[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[8] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_first__0[0]),
        .Q(ram_start_read_address[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_start_read_address_reg[9] 
       (.C(clk_out),
        .CE(ram_start_read_address_0),
        .D(spi_byte_first__0[1]),
        .Q(ram_start_read_address[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFDF00)) 
    ready_i_1
       (.I0(ready_reg_0),
        .I1(\cmd_reg[2]_0 ),
        .I2(\cmd_reg[1]_0 ),
        .I3(ready_i_2_n_0),
        .I4(ready_i_3_n_0),
        .I5(ready),
        .O(ready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFD00)) 
    ready_i_2
       (.I0(\cmd_reg[2]_0 ),
        .I1(\cmd_reg[1]_0 ),
        .I2(\cmd_reg_n_0_[0] ),
        .I3(spi_new_cmd_reg_n_0),
        .I4(rst_pin),
        .I5(\FSM_onehot_spi_byte_order_reg[2]_0 ),
        .O(ready_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000100)) 
    ready_i_3
       (.I0(\FSM_sequential_opcode[1]_i_10_n_0 ),
        .I1(\FSM_sequential_opcode[1]_i_9_n_0 ),
        .I2(\FSM_sequential_opcode[1]_i_8_n_0 ),
        .I3(\FSM_sequential_opcode[1]_i_7_n_0 ),
        .I4(\FSM_sequential_opcode[1]_i_6_n_0 ),
        .O(ready_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ready_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_cmd_reg[0] 
       (.C(clk_out),
        .CE(\spi_byte_cmd_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [0]),
        .Q(\spi_byte_cmd_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_cmd_reg[1] 
       (.C(clk_out),
        .CE(\spi_byte_cmd_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [1]),
        .Q(\spi_byte_cmd_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_cmd_reg[2] 
       (.C(clk_out),
        .CE(\spi_byte_cmd_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [2]),
        .Q(\spi_byte_cmd_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_cmd_reg[3] 
       (.C(clk_out),
        .CE(\spi_byte_cmd_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [3]),
        .Q(\spi_byte_cmd_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_cmd_reg[4] 
       (.C(clk_out),
        .CE(\spi_byte_cmd_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [4]),
        .Q(\spi_byte_cmd_reg_n_0_[4] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_cmd_reg[5] 
       (.C(clk_out),
        .CE(\spi_byte_cmd_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [5]),
        .Q(\spi_byte_cmd_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_cmd_reg[6] 
       (.C(clk_out),
        .CE(\spi_byte_cmd_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [6]),
        .Q(\spi_byte_cmd_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_cmd_reg[7] 
       (.C(clk_out),
        .CE(\spi_byte_cmd_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [7]),
        .Q(\spi_byte_cmd_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_first_reg[0] 
       (.C(clk_out),
        .CE(\spi_byte_first_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [0]),
        .Q(spi_byte_first__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_first_reg[1] 
       (.C(clk_out),
        .CE(\spi_byte_first_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [1]),
        .Q(spi_byte_first__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_first_reg[2] 
       (.C(clk_out),
        .CE(\spi_byte_first_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [2]),
        .Q(spi_byte_first__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_first_reg[3] 
       (.C(clk_out),
        .CE(\spi_byte_first_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [3]),
        .Q(spi_byte_first__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_first_reg[4] 
       (.C(clk_out),
        .CE(\spi_byte_first_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [4]),
        .Q(spi_byte_first__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_first_reg[5] 
       (.C(clk_out),
        .CE(\spi_byte_first_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [5]),
        .Q(spi_byte_first__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_first_reg[6] 
       (.C(clk_out),
        .CE(\spi_byte_first_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [6]),
        .Q(spi_byte_first__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_first_reg[7] 
       (.C(clk_out),
        .CE(\spi_byte_first_reg[7]_0 ),
        .D(\spi_byte_second_reg[7]_0 [7]),
        .Q(spi_byte_first__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_second_reg[0] 
       (.C(clk_out),
        .CE(E),
        .D(\spi_byte_second_reg[7]_0 [0]),
        .Q(spi_byte_second__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_second_reg[1] 
       (.C(clk_out),
        .CE(E),
        .D(\spi_byte_second_reg[7]_0 [1]),
        .Q(spi_byte_second__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_second_reg[2] 
       (.C(clk_out),
        .CE(E),
        .D(\spi_byte_second_reg[7]_0 [2]),
        .Q(spi_byte_second__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_second_reg[3] 
       (.C(clk_out),
        .CE(E),
        .D(\spi_byte_second_reg[7]_0 [3]),
        .Q(spi_byte_second__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_second_reg[4] 
       (.C(clk_out),
        .CE(E),
        .D(\spi_byte_second_reg[7]_0 [4]),
        .Q(spi_byte_second__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_second_reg[5] 
       (.C(clk_out),
        .CE(E),
        .D(\spi_byte_second_reg[7]_0 [5]),
        .Q(spi_byte_second__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_second_reg[6] 
       (.C(clk_out),
        .CE(E),
        .D(\spi_byte_second_reg[7]_0 [6]),
        .Q(spi_byte_second__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_byte_second_reg[7] 
       (.C(clk_out),
        .CE(E),
        .D(\spi_byte_second_reg[7]_0 [7]),
        .Q(spi_byte_second__0[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEA2AAAAA2A2AAAAA)) 
    \spi_data_o[0]_i_1 
       (.I0(ready),
        .I1(\spi_data_o_reg[0]_0 ),
        .I2(opcode__0[1]),
        .I3(opcode__0[0]),
        .I4(opcode__0[2]),
        .I5(ram_data[0]),
        .O(spi_data_o0_in[0]));
  LUT6 #(
    .INIT(64'h2000000020002000)) 
    \spi_data_o[1]_i_1 
       (.I0(opcode__0[2]),
        .I1(spi_data_tx_vld),
        .I2(tx_ready),
        .I3(opcode__0[1]),
        .I4(ram_data[1]),
        .I5(opcode__0[0]),
        .O(\spi_data_o[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \spi_data_o[2]_i_1 
       (.I0(ram_data[2]),
        .I1(opcode__0[2]),
        .I2(opcode__0[0]),
        .I3(opcode__0[1]),
        .I4(tx_ready),
        .I5(spi_data_tx_vld),
        .O(spi_data_o0_in[2]));
  LUT6 #(
    .INIT(64'h2000000020002000)) 
    \spi_data_o[3]_i_1 
       (.I0(opcode__0[2]),
        .I1(spi_data_tx_vld),
        .I2(tx_ready),
        .I3(opcode__0[1]),
        .I4(ram_data[3]),
        .I5(opcode__0[0]),
        .O(\spi_data_o[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \spi_data_o[4]_i_1 
       (.I0(ram_data[4]),
        .I1(opcode__0[2]),
        .I2(opcode__0[0]),
        .I3(opcode__0[1]),
        .I4(tx_ready),
        .I5(spi_data_tx_vld),
        .O(spi_data_o0_in[4]));
  LUT6 #(
    .INIT(64'h2000000020002000)) 
    \spi_data_o[5]_i_1 
       (.I0(opcode__0[2]),
        .I1(spi_data_tx_vld),
        .I2(tx_ready),
        .I3(opcode__0[1]),
        .I4(ram_data[5]),
        .I5(opcode__0[0]),
        .O(\spi_data_o[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \spi_data_o[6]_i_1 
       (.I0(ram_data[6]),
        .I1(opcode__0[2]),
        .I2(opcode__0[0]),
        .I3(opcode__0[1]),
        .I4(tx_ready),
        .I5(spi_data_tx_vld),
        .O(spi_data_o0_in[6]));
  LUT6 #(
    .INIT(64'h2000000020002000)) 
    \spi_data_o[7]_i_1 
       (.I0(opcode__0[2]),
        .I1(spi_data_tx_vld),
        .I2(tx_ready),
        .I3(opcode__0[1]),
        .I4(ram_data[7]),
        .I5(opcode__0[0]),
        .O(\spi_data_o[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_data_o_reg[0] 
       (.C(clk_out),
        .CE(spi_data_vld_o_i_1_n_0),
        .D(spi_data_o0_in[0]),
        .Q(\spi_data_o_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_data_o_reg[1] 
       (.C(clk_out),
        .CE(spi_data_vld_o_i_1_n_0),
        .D(\spi_data_o[1]_i_1_n_0 ),
        .Q(\spi_data_o_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_data_o_reg[2] 
       (.C(clk_out),
        .CE(spi_data_vld_o_i_1_n_0),
        .D(spi_data_o0_in[2]),
        .Q(\spi_data_o_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_data_o_reg[3] 
       (.C(clk_out),
        .CE(spi_data_vld_o_i_1_n_0),
        .D(\spi_data_o[3]_i_1_n_0 ),
        .Q(\spi_data_o_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_data_o_reg[4] 
       (.C(clk_out),
        .CE(spi_data_vld_o_i_1_n_0),
        .D(spi_data_o0_in[4]),
        .Q(\spi_data_o_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_data_o_reg[5] 
       (.C(clk_out),
        .CE(spi_data_vld_o_i_1_n_0),
        .D(\spi_data_o[5]_i_1_n_0 ),
        .Q(\spi_data_o_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_data_o_reg[6] 
       (.C(clk_out),
        .CE(spi_data_vld_o_i_1_n_0),
        .D(spi_data_o0_in[6]),
        .Q(\spi_data_o_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_data_o_reg[7] 
       (.C(clk_out),
        .CE(spi_data_vld_o_i_1_n_0),
        .D(\spi_data_o[7]_i_1_n_0 ),
        .Q(\spi_data_o_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    spi_data_vld_o_i_1
       (.I0(\FSM_sequential_opcode[2]_i_2_n_0 ),
        .I1(tx_ready),
        .I2(spi_data_tx_vld),
        .I3(spi_new_cmd_reg_n_0),
        .I4(ready_reg_0),
        .I5(spi_data_vld_o_i_2_n_0),
        .O(spi_data_vld_o_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    spi_data_vld_o_i_2
       (.I0(\cmd_reg[2]_0 ),
        .I1(\cmd_reg[1]_0 ),
        .I2(\cmd_reg_n_0_[0] ),
        .O(spi_data_vld_o_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_data_vld_o_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(spi_data_vld_o_i_1_n_0),
        .Q(spi_data_tx_vld),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000B280828)) 
    spi_new_cmd_i_1
       (.I0(spi_byte_first),
        .I1(\spi_byte_cmd_reg_n_0_[0] ),
        .I2(\spi_byte_cmd_reg_n_0_[1] ),
        .I3(\spi_byte_cmd_reg_n_0_[2] ),
        .I4(\FSM_onehot_spi_byte_order_reg_n_0_[2] ),
        .I5(spi_new_cmd_reg_0),
        .O(spi_new_cmd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_new_cmd_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(spi_new_cmd_i_1_n_0),
        .Q(spi_new_cmd_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    spi_new_data_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(spi_data_rx_vld),
        .Q(spi_new_data),
        .R(rst));
  LUT4 #(
    .INIT(16'h15D5)) 
    \sram_address_cnt[0]_i_1 
       (.I0(\sram_address_cnt_reg_n_0_[0] ),
        .I1(opcode__0[0]),
        .I2(opcode__0[1]),
        .I3(ram_start_read_address[0]),
        .O(sram_address_cnt0_in[0]));
  LUT3 #(
    .INIT(8'h04)) 
    \sram_address_cnt[16]_i_1 
       (.I0(opcode__0[1]),
        .I1(opcode__0[0]),
        .I2(opcode__0[2]),
        .O(sram_address_cnt0));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \sram_address_cnt[16]_i_2 
       (.I0(opcode__0[2]),
        .I1(opcode__0[1]),
        .I2(sram_ready),
        .I3(opcode__0[0]),
        .I4(sram_data_read_vld),
        .I5(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_cnt));
  LUT6 #(
    .INIT(64'hDFDFFFFFDFDFF3FF)) 
    \sram_address_cnt[16]_i_3 
       (.I0(sram_data_read_vld),
        .I1(opcode__0[1]),
        .I2(opcode__0[2]),
        .I3(sram_ready),
        .I4(opcode__0[0]),
        .I5(\sram_data_o[15]_i_4_n_0 ),
        .O(\sram_address_cnt[16]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[0] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[0]),
        .Q(\sram_address_cnt_reg_n_0_[0] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[10] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[10]),
        .Q(\sram_address_cnt_reg_n_0_[10] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[11] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[11]),
        .Q(\sram_address_cnt_reg_n_0_[11] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[12] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[12]),
        .Q(\sram_address_cnt_reg_n_0_[12] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[13] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[13]),
        .Q(\sram_address_cnt_reg_n_0_[13] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[14] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[14]),
        .Q(\sram_address_cnt_reg_n_0_[14] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[15] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[15]),
        .Q(\sram_address_cnt_reg_n_0_[15] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[16] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[16]),
        .Q(\sram_address_cnt_reg_n_0_[16] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[1] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[1]),
        .Q(\sram_address_cnt_reg_n_0_[1] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[2] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[2]),
        .Q(\sram_address_cnt_reg_n_0_[2] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[3] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[3]),
        .Q(\sram_address_cnt_reg_n_0_[3] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[4] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[4]),
        .Q(\sram_address_cnt_reg_n_0_[4] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[5] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[5]),
        .Q(\sram_address_cnt_reg_n_0_[5] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[6] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[6]),
        .Q(\sram_address_cnt_reg_n_0_[6] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[7] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[7]),
        .Q(\sram_address_cnt_reg_n_0_[7] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[8] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[8]),
        .Q(\sram_address_cnt_reg_n_0_[8] ),
        .R(sram_address_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_cnt_reg[9] 
       (.C(clk_out),
        .CE(sram_address_cnt),
        .D(sram_address_cnt0_in[9]),
        .Q(\sram_address_cnt_reg_n_0_[9] ),
        .R(sram_address_cnt0));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[0]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[0]),
        .I2(\sram_address_cnt_reg_n_0_[0] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[0]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[10]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[10]),
        .I2(\sram_address_cnt_reg_n_0_[10] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[10]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[11]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[11]),
        .I2(\sram_address_cnt_reg_n_0_[11] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[11]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[12]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[12]),
        .I2(\sram_address_cnt_reg_n_0_[12] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[12]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[13]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[13]),
        .I2(\sram_address_cnt_reg_n_0_[13] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[13]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[14]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[14]),
        .I2(\sram_address_cnt_reg_n_0_[14] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[14]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[15]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[15]),
        .I2(\sram_address_cnt_reg_n_0_[15] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[15]));
  LUT5 #(
    .INIT(32'hFFFF0600)) 
    \sram_address_o[16]_i_1 
       (.I0(opcode__0[1]),
        .I1(opcode__0[0]),
        .I2(opcode__0[2]),
        .I3(\sram_data_o[15]_i_2_n_0 ),
        .I4(\sram_address_o[16]_i_3_n_0 ),
        .O(\sram_address_o[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sram_address_o[16]_i_2 
       (.I0(\sram_address_cnt_reg_n_0_[16] ),
        .I1(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[16]));
  LUT6 #(
    .INIT(64'h20C00000FCCFFCCF)) 
    \sram_address_o[16]_i_3 
       (.I0(sram_ready),
        .I1(opcode__0[2]),
        .I2(opcode__0[0]),
        .I3(opcode__0[1]),
        .I4(sram_data_read_vld),
        .I5(ready_reg_0),
        .O(\sram_address_o[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[1]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[1]),
        .I2(\sram_address_cnt_reg_n_0_[1] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[1]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[2]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[2]),
        .I2(\sram_address_cnt_reg_n_0_[2] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[2]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[3]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[3]),
        .I2(\sram_address_cnt_reg_n_0_[3] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[3]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[4]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[4]),
        .I2(\sram_address_cnt_reg_n_0_[4] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[4]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[5]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[5]),
        .I2(\sram_address_cnt_reg_n_0_[5] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[5]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[6]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[6]),
        .I2(\sram_address_cnt_reg_n_0_[6] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[6]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[7]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[7]),
        .I2(\sram_address_cnt_reg_n_0_[7] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[7]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[8]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[8]),
        .I2(\sram_address_cnt_reg_n_0_[8] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[8]));
  LUT4 #(
    .INIT(16'h88F8)) 
    \sram_address_o[9]_i_1 
       (.I0(\FSM_sequential_opcode[2]_i_4_n_0 ),
        .I1(ram_start_read_address[9]),
        .I2(\sram_address_cnt_reg_n_0_[9] ),
        .I3(\sram_address_cnt[16]_i_3_n_0 ),
        .O(sram_address_o0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[0] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[10] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[11] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[12] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[13] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[14] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[15] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[16] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[1] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[2] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[3] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[4] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[5] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[6] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[7] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[8] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[9] 
       (.C(clk_out),
        .CE(\sram_address_o[16]_i_1_n_0 ),
        .D(sram_address_o0_in[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000020FFFFFFFF)) 
    \sram_data_o[15]_i_2 
       (.I0(opcode__0[1]),
        .I1(opcode__0[2]),
        .I2(sram_ready),
        .I3(opcode__0[0]),
        .I4(\sram_data_o[15]_i_4_n_0 ),
        .I5(ready_reg_0),
        .O(\sram_data_o[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sram_data_o[15]_i_3 
       (.I0(\sram_data_o[15]_i_4_n_0 ),
        .I1(opcode__0[0]),
        .I2(sram_ready),
        .I3(opcode__0[2]),
        .I4(opcode__0[1]),
        .O(\FSM_sequential_opcode_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \sram_data_o[15]_i_4 
       (.I0(\FSM_sequential_opcode[1]_i_7_n_0 ),
        .I1(\FSM_sequential_opcode[1]_i_8_n_0 ),
        .I2(\FSM_sequential_opcode[1]_i_9_n_0 ),
        .I3(\sram_address_cnt_reg_n_0_[14] ),
        .I4(\sram_address_cnt_reg_n_0_[9] ),
        .I5(\sram_address_cnt_reg_n_0_[15] ),
        .O(\sram_data_o[15]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[0] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[0] ),
        .Q(\sram_data_o_reg[15]_0 [0]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[10] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[10] ),
        .Q(\sram_data_o_reg[15]_0 [10]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[11] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[11] ),
        .Q(\sram_data_o_reg[15]_0 [11]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[12] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[12] ),
        .Q(\sram_data_o_reg[15]_0 [12]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[13] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[13] ),
        .Q(\sram_data_o_reg[15]_0 [13]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[14] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[14] ),
        .Q(\sram_data_o_reg[15]_0 [14]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[15] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[15] ),
        .Q(\sram_data_o_reg[15]_0 [15]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[1] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[1] ),
        .Q(\sram_data_o_reg[15]_0 [1]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[2] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[2] ),
        .Q(\sram_data_o_reg[15]_0 [2]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[3] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[3] ),
        .Q(\sram_data_o_reg[15]_0 [3]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[4] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[4] ),
        .Q(\sram_data_o_reg[15]_0 [4]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[5] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[5] ),
        .Q(\sram_data_o_reg[15]_0 [5]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[6] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[6] ),
        .Q(\sram_data_o_reg[15]_0 [6]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[7] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[7] ),
        .Q(\sram_data_o_reg[15]_0 [7]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[8] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[8] ),
        .Q(\sram_data_o_reg[15]_0 [8]),
        .R(\sram_data_o_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_o_reg[9] 
       (.C(clk_out),
        .CE(\sram_data_o[15]_i_2_n_0 ),
        .D(\sram_address_cnt_reg_n_0_[9] ),
        .Q(\sram_data_o_reg[15]_0 [9]),
        .R(\sram_data_o_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFF2F00FFFF0000)) 
    sram_data_vld_o_i_1
       (.I0(sram_data_vld_o_i_2_n_0),
        .I1(sram_data_vld_o_i_3_n_0),
        .I2(spi_new_cmd_reg_n_0),
        .I3(ready_reg_0),
        .I4(\FSM_sequential_opcode_reg[0]_0 ),
        .I5(sram_data_write_vld),
        .O(sram_data_vld_o_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    sram_data_vld_o_i_2
       (.I0(\spi_byte_cmd_reg_n_0_[0] ),
        .I1(\spi_byte_cmd_reg_n_0_[1] ),
        .I2(\spi_byte_cmd_reg_n_0_[2] ),
        .O(sram_data_vld_o_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sram_data_vld_o_i_3
       (.I0(\spi_byte_cmd_reg_n_0_[3] ),
        .I1(\spi_byte_cmd_reg_n_0_[7] ),
        .I2(\spi_byte_cmd_reg_n_0_[5] ),
        .I3(\spi_byte_cmd_reg_n_0_[6] ),
        .I4(\spi_byte_cmd_reg_n_0_[4] ),
        .O(sram_data_vld_o_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sram_data_vld_o_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(sram_data_vld_o_i_1_n_0),
        .Q(sram_data_write_vld),
        .R(1'b0));
endmodule

module rst_driver
   (rst_pin,
    rst_power_on_reg_0,
    \FSM_onehot_spi_byte_order_reg[0] ,
    rst_pin_reg_0,
    E,
    \FSM_onehot_opcode_reg[2] ,
    \FSM_onehot_opcode_reg[0] ,
    nss_reg,
    SR,
    rst_power_on_reg_1,
    rst_power_on_reg_2,
    rst_pin_reg_1,
    rst_pin_reg_2,
    clk_out,
    spi_byte_first,
    spi_first,
    spi_data_rx_vld,
    \FSM_sequential_opcode[1]_i_5 ,
    \FSM_sequential_opcode[1]_i_5_0 ,
    sram_data_write_vld,
    \sram_data_io_tristate_oe_reg[14] ,
    opcode_reg,
    nss,
    nrst_i_IBUF,
    \sram_data_o_reg[0] ,
    spi_new_cmd_reg);
  output rst_pin;
  output rst_power_on_reg_0;
  output \FSM_onehot_spi_byte_order_reg[0] ;
  output rst_pin_reg_0;
  output [0:0]E;
  output [0:0]\FSM_onehot_opcode_reg[2] ;
  output [0:0]\FSM_onehot_opcode_reg[0] ;
  output nss_reg;
  output [0:0]SR;
  output rst_power_on_reg_1;
  output rst_power_on_reg_2;
  output rst_pin_reg_1;
  output rst_pin_reg_2;
  input clk_out;
  input spi_byte_first;
  input spi_first;
  input spi_data_rx_vld;
  input \FSM_sequential_opcode[1]_i_5 ;
  input \FSM_sequential_opcode[1]_i_5_0 ;
  input sram_data_write_vld;
  input \sram_data_io_tristate_oe_reg[14] ;
  input [0:0]opcode_reg;
  input nss;
  input nrst_i_IBUF;
  input \sram_data_o_reg[0] ;
  input spi_new_cmd_reg;

  wire [0:0]E;
  wire [0:0]\FSM_onehot_opcode_reg[0] ;
  wire [0:0]\FSM_onehot_opcode_reg[2] ;
  wire \FSM_onehot_spi_byte_order_reg[0] ;
  wire \FSM_sequential_opcode[1]_i_5 ;
  wire \FSM_sequential_opcode[1]_i_5_0 ;
  wire [0:0]SR;
  wire clk_out;
  wire [2:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire nrst_i_IBUF;
  wire nss;
  wire nss_reg;
  wire [0:0]opcode_reg;
  wire rst_pin;
  wire rst_pin_i_1_n_0;
  wire rst_pin_reg_0;
  wire rst_pin_reg_1;
  wire rst_pin_reg_2;
  wire rst_power_on_i_1_n_0;
  wire rst_power_on_reg_0;
  wire rst_power_on_reg_1;
  wire rst_power_on_reg_2;
  wire spi_byte_first;
  wire spi_data_rx_vld;
  wire spi_first;
  wire spi_new_cmd_reg;
  wire \sram_data_io_tristate_oe_reg[14] ;
  wire \sram_data_o_reg[0] ;
  wire sram_data_write_vld;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_opcode[2]_i_1 
       (.I0(rst_pin),
        .I1(rst_power_on_reg_0),
        .O(SR));
  LUT5 #(
    .INIT(32'hFFFCFEFE)) 
    \FSM_onehot_spi_byte_order[0]_i_1 
       (.I0(spi_byte_first),
        .I1(rst_power_on_reg_0),
        .I2(rst_pin),
        .I3(spi_first),
        .I4(spi_data_rx_vld),
        .O(\FSM_onehot_spi_byte_order_reg[0] ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \FSM_sequential_opcode[1]_i_11 
       (.I0(rst_pin),
        .I1(rst_power_on_reg_0),
        .I2(\FSM_sequential_opcode[1]_i_5 ),
        .I3(\FSM_sequential_opcode[1]_i_5_0 ),
        .O(rst_pin_reg_0));
  LUT3 #(
    .INIT(8'h02)) 
    \address_old[16]_i_1 
       (.I0(\sram_data_io_tristate_oe_reg[14] ),
        .I1(rst_pin),
        .I2(rst_power_on_reg_0),
        .O(\FSM_onehot_opcode_reg[0] ));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_cnt[1]_i_2 
       (.I0(rst_power_on_reg_0),
        .I1(rst_pin),
        .O(rst_power_on_reg_1));
  LUT3 #(
    .INIT(8'hFE)) 
    \bit_cnt[2]_i_2 
       (.I0(nss),
        .I1(rst_power_on_reg_0),
        .I2(rst_pin),
        .O(nss_reg));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[0]_i_1 
       (.I0(rst_power_on_reg_0),
        .I1(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[1]_i_1 
       (.I0(cnt[0]),
        .I1(rst_power_on_reg_0),
        .I2(cnt[1]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[2]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(rst_power_on_reg_0),
        .I3(cnt[2]),
        .O(\cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \data_o[7]_i_1 
       (.I0(opcode_reg),
        .I1(rst_pin),
        .I2(rst_power_on_reg_0),
        .O(\FSM_onehot_opcode_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    rst_pin_i_1
       (.I0(nrst_i_IBUF),
        .O(rst_pin_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rst_pin_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(rst_pin_i_1_n_0),
        .Q(rst_pin),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    rst_power_on_i_1
       (.I0(cnt[2]),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(rst_power_on_reg_0),
        .O(rst_power_on_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rst_power_on_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(rst_power_on_i_1_n_0),
        .Q(rst_power_on_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    spi_new_cmd_i_2
       (.I0(spi_new_cmd_reg),
        .I1(rst_pin),
        .I2(rst_power_on_reg_0),
        .O(rst_pin_reg_1));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \sram_data_io_OBUFT[15]_inst_i_3 
       (.I0(rst_pin),
        .I1(rst_power_on_reg_0),
        .I2(sram_data_write_vld),
        .I3(\sram_data_io_tristate_oe_reg[14] ),
        .O(rst_pin_reg_2));
  LUT3 #(
    .INIT(8'hFE)) 
    \sram_data_io_tristate_oe[15]_i_1 
       (.I0(\sram_data_io_tristate_oe_reg[14] ),
        .I1(rst_pin),
        .I2(rst_power_on_reg_0),
        .O(E));
  LUT3 #(
    .INIT(8'h0E)) 
    \sram_data_o[15]_i_1 
       (.I0(rst_power_on_reg_0),
        .I1(rst_pin),
        .I2(\sram_data_o_reg[0] ),
        .O(rst_power_on_reg_2));
endmodule

module spi_driver
   (nss,
    spi_miso_o_OBUF,
    spi_data_rx_vld,
    tx_ready,
    spi_first,
    \FSM_onehot_spi_byte_order_reg[0] ,
    E,
    first_o_reg_0,
    tx_ready_reg_0,
    \data_o_reg[7]_0 ,
    spi_miso_o_TRI,
    clk_out,
    spi_sck_i_IBUF,
    SR,
    spi_mosi_i_IBUF,
    spi_byte_first,
    \bit_cnt_reg[0]_0 ,
    rst_pin,
    spi_byte_second,
    \bit_cnt_reg[1]_0 ,
    spi_data_tx_vld,
    \bit_cnt_reg[2]_0 ,
    D);
  output nss;
  output spi_miso_o_OBUF;
  output spi_data_rx_vld;
  output tx_ready;
  output spi_first;
  output [0:0]\FSM_onehot_spi_byte_order_reg[0] ;
  output [0:0]E;
  output [0:0]first_o_reg_0;
  output tx_ready_reg_0;
  output [7:0]\data_o_reg[7]_0 ;
  input spi_miso_o_TRI;
  input clk_out;
  input spi_sck_i_IBUF;
  input [0:0]SR;
  input spi_mosi_i_IBUF;
  input spi_byte_first;
  input \bit_cnt_reg[0]_0 ;
  input rst_pin;
  input spi_byte_second;
  input \bit_cnt_reg[1]_0 ;
  input spi_data_tx_vld;
  input \bit_cnt_reg[2]_0 ;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_spi_byte_order_reg[0] ;
  wire [0:0]SR;
  wire [2:0]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt_reg[0]_0 ;
  wire \bit_cnt_reg[1]_0 ;
  wire \bit_cnt_reg[2]_0 ;
  wire \buffer_tx_reg_n_0_[0] ;
  wire \buffer_tx_reg_n_0_[1] ;
  wire \buffer_tx_reg_n_0_[2] ;
  wire \buffer_tx_reg_n_0_[3] ;
  wire \buffer_tx_reg_n_0_[4] ;
  wire \buffer_tx_reg_n_0_[5] ;
  wire \buffer_tx_reg_n_0_[6] ;
  wire clk_out;
  wire \data_o[7]_i_1_n_0 ;
  wire \data_o[7]_i_2_n_0 ;
  wire [7:0]\data_o_reg[7]_0 ;
  wire [6:0]data_rx;
  wire data_rx_0;
  wire \data_tx[1]_i_1_n_0 ;
  wire \data_tx[2]_i_1_n_0 ;
  wire \data_tx[3]_i_1_n_0 ;
  wire \data_tx[4]_i_1_n_0 ;
  wire \data_tx[5]_i_1_n_0 ;
  wire \data_tx[6]_i_1_n_0 ;
  wire \data_tx[7]_i_1_n_0 ;
  wire \data_tx[7]_i_2_n_0 ;
  wire \data_tx[7]_i_3_n_0 ;
  wire \data_tx_reg_n_0_[1] ;
  wire \data_tx_reg_n_0_[2] ;
  wire \data_tx_reg_n_0_[3] ;
  wire \data_tx_reg_n_0_[4] ;
  wire \data_tx_reg_n_0_[5] ;
  wire \data_tx_reg_n_0_[6] ;
  wire \data_tx_reg_n_0_[7] ;
  wire data_vld_o_i_1__0_n_0;
  wire first_o_i_1_n_0;
  wire [0:0]first_o_reg_0;
  wire miso_i_1_n_0;
  wire mosi;
  wire nss;
  wire nss_old;
  wire p_1_in;
  wire rst_pin;
  wire sck;
  wire sck_old;
  wire spi_byte_first;
  wire spi_byte_second;
  wire spi_data_rx_vld;
  wire spi_data_tx_vld;
  wire spi_first;
  wire spi_miso_o_OBUF;
  wire spi_miso_o_TRI;
  wire spi_mosi_i_IBUF;
  wire spi_sck_i_IBUF;
  wire tx_empty5_out;
  wire tx_empty_i_1_n_0;
  wire tx_empty_old;
  wire tx_empty_reg_n_0;
  wire tx_ready;
  wire tx_ready_i_1_n_0;
  wire tx_ready_reg_0;

  LUT6 #(
    .INIT(64'h00000000000000A6)) 
    \bit_cnt[0]_i_1 
       (.I0(bit_cnt[0]),
        .I1(sck),
        .I2(sck_old),
        .I3(rst_pin),
        .I4(\bit_cnt_reg[0]_0 ),
        .I5(nss),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009AAA0000)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt[1]),
        .I1(sck_old),
        .I2(sck),
        .I3(bit_cnt[0]),
        .I4(\bit_cnt_reg[1]_0 ),
        .I5(nss),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009AAAAAAA)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt[2]),
        .I1(sck_old),
        .I2(sck),
        .I3(bit_cnt[0]),
        .I4(bit_cnt[1]),
        .I5(\bit_cnt_reg[2]_0 ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(bit_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(bit_cnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(bit_cnt[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_tx_reg[0] 
       (.C(clk_out),
        .CE(tx_ready),
        .D(D[0]),
        .Q(\buffer_tx_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_tx_reg[1] 
       (.C(clk_out),
        .CE(tx_ready),
        .D(D[1]),
        .Q(\buffer_tx_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_tx_reg[2] 
       (.C(clk_out),
        .CE(tx_ready),
        .D(D[2]),
        .Q(\buffer_tx_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_tx_reg[3] 
       (.C(clk_out),
        .CE(tx_ready),
        .D(D[3]),
        .Q(\buffer_tx_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_tx_reg[4] 
       (.C(clk_out),
        .CE(tx_ready),
        .D(D[4]),
        .Q(\buffer_tx_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_tx_reg[5] 
       (.C(clk_out),
        .CE(tx_ready),
        .D(D[5]),
        .Q(\buffer_tx_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_tx_reg[6] 
       (.C(clk_out),
        .CE(tx_ready),
        .D(D[6]),
        .Q(\buffer_tx_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_tx_reg[7] 
       (.C(clk_out),
        .CE(tx_ready),
        .D(D[7]),
        .Q(p_1_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFF0000)) 
    \data_o[7]_i_1 
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[2]),
        .I3(data_rx_0),
        .I4(\bit_cnt_reg[0]_0 ),
        .I5(rst_pin),
        .O(\data_o[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
    \data_o[7]_i_2 
       (.I0(rst_pin),
        .I1(\bit_cnt_reg[0]_0 ),
        .I2(data_rx_0),
        .I3(bit_cnt[2]),
        .I4(bit_cnt[1]),
        .I5(bit_cnt[0]),
        .O(\data_o[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[0] 
       (.C(clk_out),
        .CE(\data_o[7]_i_2_n_0 ),
        .D(mosi),
        .Q(\data_o_reg[7]_0 [0]),
        .R(\data_o[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[1] 
       (.C(clk_out),
        .CE(\data_o[7]_i_2_n_0 ),
        .D(data_rx[0]),
        .Q(\data_o_reg[7]_0 [1]),
        .R(\data_o[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[2] 
       (.C(clk_out),
        .CE(\data_o[7]_i_2_n_0 ),
        .D(data_rx[1]),
        .Q(\data_o_reg[7]_0 [2]),
        .R(\data_o[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[3] 
       (.C(clk_out),
        .CE(\data_o[7]_i_2_n_0 ),
        .D(data_rx[2]),
        .Q(\data_o_reg[7]_0 [3]),
        .R(\data_o[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[4] 
       (.C(clk_out),
        .CE(\data_o[7]_i_2_n_0 ),
        .D(data_rx[3]),
        .Q(\data_o_reg[7]_0 [4]),
        .R(\data_o[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[5] 
       (.C(clk_out),
        .CE(\data_o[7]_i_2_n_0 ),
        .D(data_rx[4]),
        .Q(\data_o_reg[7]_0 [5]),
        .R(\data_o[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[6] 
       (.C(clk_out),
        .CE(\data_o[7]_i_2_n_0 ),
        .D(data_rx[5]),
        .Q(\data_o_reg[7]_0 [6]),
        .R(\data_o[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[7] 
       (.C(clk_out),
        .CE(\data_o[7]_i_2_n_0 ),
        .D(data_rx[6]),
        .Q(\data_o_reg[7]_0 [7]),
        .R(\data_o[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \data_rx[6]_i_1 
       (.I0(nss),
        .I1(\bit_cnt_reg[0]_0 ),
        .I2(rst_pin),
        .I3(sck_old),
        .I4(sck),
        .O(data_rx_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_reg[0] 
       (.C(clk_out),
        .CE(data_rx_0),
        .D(mosi),
        .Q(data_rx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_reg[1] 
       (.C(clk_out),
        .CE(data_rx_0),
        .D(data_rx[0]),
        .Q(data_rx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_reg[2] 
       (.C(clk_out),
        .CE(data_rx_0),
        .D(data_rx[1]),
        .Q(data_rx[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_reg[3] 
       (.C(clk_out),
        .CE(data_rx_0),
        .D(data_rx[2]),
        .Q(data_rx[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_reg[4] 
       (.C(clk_out),
        .CE(data_rx_0),
        .D(data_rx[3]),
        .Q(data_rx[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_reg[5] 
       (.C(clk_out),
        .CE(data_rx_0),
        .D(data_rx[4]),
        .Q(data_rx[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_rx_reg[6] 
       (.C(clk_out),
        .CE(data_rx_0),
        .D(data_rx[5]),
        .Q(data_rx[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAA0002AAAA)) 
    \data_tx[1]_i_1 
       (.I0(\buffer_tx_reg_n_0_[0] ),
        .I1(bit_cnt[2]),
        .I2(bit_cnt[1]),
        .I3(bit_cnt[0]),
        .I4(\bit_cnt_reg[1]_0 ),
        .I5(nss),
        .O(\data_tx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx[2]_i_1 
       (.I0(\data_tx_reg_n_0_[1] ),
        .I1(\data_tx[7]_i_3_n_0 ),
        .I2(\buffer_tx_reg_n_0_[1] ),
        .O(\data_tx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx[3]_i_1 
       (.I0(\data_tx_reg_n_0_[2] ),
        .I1(\data_tx[7]_i_3_n_0 ),
        .I2(\buffer_tx_reg_n_0_[2] ),
        .O(\data_tx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx[4]_i_1 
       (.I0(\data_tx_reg_n_0_[3] ),
        .I1(\data_tx[7]_i_3_n_0 ),
        .I2(\buffer_tx_reg_n_0_[3] ),
        .O(\data_tx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx[5]_i_1 
       (.I0(\data_tx_reg_n_0_[4] ),
        .I1(\data_tx[7]_i_3_n_0 ),
        .I2(\buffer_tx_reg_n_0_[4] ),
        .O(\data_tx[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx[6]_i_1 
       (.I0(\data_tx_reg_n_0_[5] ),
        .I1(\data_tx[7]_i_3_n_0 ),
        .I2(\buffer_tx_reg_n_0_[5] ),
        .O(\data_tx[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \data_tx[7]_i_1 
       (.I0(sck),
        .I1(sck_old),
        .I2(nss),
        .I3(\bit_cnt_reg[0]_0 ),
        .I4(rst_pin),
        .O(\data_tx[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_tx[7]_i_2 
       (.I0(\data_tx_reg_n_0_[6] ),
        .I1(\data_tx[7]_i_3_n_0 ),
        .I2(\buffer_tx_reg_n_0_[6] ),
        .O(\data_tx[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101010100)) 
    \data_tx[7]_i_3 
       (.I0(nss),
        .I1(\bit_cnt_reg[0]_0 ),
        .I2(rst_pin),
        .I3(bit_cnt[0]),
        .I4(bit_cnt[1]),
        .I5(bit_cnt[2]),
        .O(\data_tx[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[1] 
       (.C(clk_out),
        .CE(\data_tx[7]_i_1_n_0 ),
        .D(\data_tx[1]_i_1_n_0 ),
        .Q(\data_tx_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[2] 
       (.C(clk_out),
        .CE(\data_tx[7]_i_1_n_0 ),
        .D(\data_tx[2]_i_1_n_0 ),
        .Q(\data_tx_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[3] 
       (.C(clk_out),
        .CE(\data_tx[7]_i_1_n_0 ),
        .D(\data_tx[3]_i_1_n_0 ),
        .Q(\data_tx_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[4] 
       (.C(clk_out),
        .CE(\data_tx[7]_i_1_n_0 ),
        .D(\data_tx[4]_i_1_n_0 ),
        .Q(\data_tx_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[5] 
       (.C(clk_out),
        .CE(\data_tx[7]_i_1_n_0 ),
        .D(\data_tx[5]_i_1_n_0 ),
        .Q(\data_tx_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[6] 
       (.C(clk_out),
        .CE(\data_tx[7]_i_1_n_0 ),
        .D(\data_tx[6]_i_1_n_0 ),
        .Q(\data_tx_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_tx_reg[7] 
       (.C(clk_out),
        .CE(\data_tx[7]_i_1_n_0 ),
        .D(\data_tx[7]_i_2_n_0 ),
        .Q(\data_tx_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    data_vld_o_i_1__0
       (.I0(bit_cnt[2]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(sck),
        .I4(sck_old),
        .I5(\bit_cnt_reg[2]_0 ),
        .O(data_vld_o_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_vld_o_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(data_vld_o_i_1__0_n_0),
        .Q(spi_data_rx_vld),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4F44)) 
    first_o_i_1
       (.I0(nss),
        .I1(nss_old),
        .I2(tx_empty5_out),
        .I3(spi_first),
        .O(first_o_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    first_o_i_2
       (.I0(sck),
        .I1(sck_old),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(bit_cnt[2]),
        .O(tx_empty5_out));
  FDRE #(
    .INIT(1'b0)) 
    first_o_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(first_o_i_1_n_0),
        .Q(spi_first),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    miso_i_1
       (.I0(\data_tx_reg_n_0_[7] ),
        .I1(\data_tx[7]_i_3_n_0 ),
        .I2(p_1_in),
        .O(miso_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    miso_reg
       (.C(clk_out),
        .CE(\data_tx[7]_i_1_n_0 ),
        .D(miso_i_1_n_0),
        .Q(spi_miso_o_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    mosi_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(spi_mosi_i_IBUF),
        .Q(mosi),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    nss_old_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(nss),
        .Q(nss_old),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    nss_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(spi_miso_o_TRI),
        .Q(nss),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sck_old_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(sck),
        .Q(sck_old),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    sck_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(spi_sck_i_IBUF),
        .Q(sck),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_byte_cmd[7]_i_1 
       (.I0(spi_first),
        .I1(spi_data_rx_vld),
        .O(first_o_reg_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    \spi_byte_first[7]_i_1 
       (.I0(spi_byte_first),
        .I1(spi_data_rx_vld),
        .I2(spi_first),
        .I3(\bit_cnt_reg[0]_0 ),
        .I4(rst_pin),
        .O(\FSM_onehot_spi_byte_order_reg[0] ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \spi_byte_second[7]_i_1 
       (.I0(spi_byte_second),
        .I1(spi_data_rx_vld),
        .I2(spi_first),
        .I3(\bit_cnt_reg[0]_0 ),
        .I4(rst_pin),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \spi_data_o[0]_i_2 
       (.I0(tx_ready),
        .I1(spi_data_tx_vld),
        .O(tx_ready_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    tx_empty_i_1
       (.I0(bit_cnt[2]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(sck_old),
        .I4(sck),
        .I5(\bit_cnt_reg[2]_0 ),
        .O(tx_empty_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_empty_old_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(tx_empty_reg_n_0),
        .Q(tx_empty_old),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_empty_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(tx_empty_i_1_n_0),
        .Q(tx_empty_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0F44)) 
    tx_ready_i_1
       (.I0(tx_empty_old),
        .I1(tx_empty_reg_n_0),
        .I2(spi_data_tx_vld),
        .I3(tx_ready),
        .O(tx_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_ready_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(tx_ready_i_1_n_0),
        .Q(tx_ready),
        .R(SR));
endmodule

module sram_driver
   (sram_oe_n_o_OBUF,
    \FSM_onehot_opcode_reg[0]_0 ,
    sram_we_n_o_OBUF,
    sram_data_read_vld,
    sram_ready,
    \FSM_onehot_opcode_reg[2]_0 ,
    Q,
    \sram_data_io_tristate_oe_reg[15]_0 ,
    \data_o_reg[7]_0 ,
    \sram_address_o_reg[16]_0 ,
    SR,
    clk_out,
    S,
    sram_data_write_vld,
    D,
    E,
    \sram_data_io_tristate_oe_reg[15]_1 ,
    \data_o_reg[7]_1 ,
    \data_o_reg[7]_2 ,
    \address_old_reg[16]_0 );
  output sram_oe_n_o_OBUF;
  output \FSM_onehot_opcode_reg[0]_0 ;
  output sram_we_n_o_OBUF;
  output sram_data_read_vld;
  output sram_ready;
  output [0:0]\FSM_onehot_opcode_reg[2]_0 ;
  output [1:0]Q;
  output [15:0]\sram_data_io_tristate_oe_reg[15]_0 ;
  output [7:0]\data_o_reg[7]_0 ;
  output [16:0]\sram_address_o_reg[16]_0 ;
  input [0:0]SR;
  input clk_out;
  input [0:0]S;
  input sram_data_write_vld;
  input [16:0]D;
  input [0:0]E;
  input [15:0]\sram_data_io_tristate_oe_reg[15]_1 ;
  input [0:0]\data_o_reg[7]_1 ;
  input [7:0]\data_o_reg[7]_2 ;
  input [0:0]\address_old_reg[16]_0 ;

  wire [16:0]D;
  wire [0:0]E;
  wire \FSM_onehot_opcode[0]_i_1_n_0 ;
  wire \FSM_onehot_opcode[1]_i_1_n_0 ;
  wire \FSM_onehot_opcode[2]_i_2_n_0 ;
  wire \FSM_onehot_opcode[2]_i_3_n_0 ;
  wire \FSM_onehot_opcode_reg[0]_0 ;
  wire [0:0]\FSM_onehot_opcode_reg[2]_0 ;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [14:0]address_old;
  wire [0:0]\address_old_reg[16]_0 ;
  wire clk_out;
  wire [7:0]\data_o_reg[7]_0 ;
  wire [0:0]\data_o_reg[7]_1 ;
  wire [7:0]\data_o_reg[7]_2 ;
  wire data_vld_o_i_1_n_0;
  wire opcode1_carry__0_i_2_n_0;
  wire opcode1_carry__0_n_2;
  wire opcode1_carry_i_1_n_0;
  wire opcode1_carry_i_2_n_0;
  wire opcode1_carry_i_3_n_0;
  wire opcode1_carry_i_4_n_0;
  wire opcode1_carry_n_0;
  wire [1:0]opcode_old;
  wire [0:0]opcode_reg;
  wire ready_o_i_1_n_0;
  wire ready_o_i_2_n_0;
  wire [16:0]\sram_address_o_reg[16]_0 ;
  wire [15:0]\sram_data_io_tristate_oe_reg[15]_0 ;
  wire [15:0]\sram_data_io_tristate_oe_reg[15]_1 ;
  wire sram_data_read_vld;
  wire sram_data_write_vld;
  wire sram_oe_n_o_OBUF;
  wire sram_oe_n_o_i_1_n_0;
  wire sram_ready;
  wire sram_we_n_o_OBUF;
  wire sram_we_n_o_i_1_n_0;
  wire [2:0]NLW_opcode1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_opcode1_carry_O_UNCONNECTED;
  wire [3:0]NLW_opcode1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_opcode1_carry__0_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hEFEC)) 
    \FSM_onehot_opcode[0]_i_1 
       (.I0(\FSM_onehot_opcode_reg[2]_0 ),
        .I1(opcode_reg),
        .I2(\FSM_onehot_opcode[2]_i_3_n_0 ),
        .I3(\FSM_onehot_opcode_reg[0]_0 ),
        .O(\FSM_onehot_opcode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \FSM_onehot_opcode[1]_i_1 
       (.I0(\FSM_onehot_opcode_reg[0]_0 ),
        .I1(sram_data_write_vld),
        .I2(opcode_reg),
        .I3(\FSM_onehot_opcode[2]_i_3_n_0 ),
        .O(\FSM_onehot_opcode[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h222F2220)) 
    \FSM_onehot_opcode[2]_i_2 
       (.I0(\FSM_onehot_opcode_reg[0]_0 ),
        .I1(sram_data_write_vld),
        .I2(opcode_reg),
        .I3(\FSM_onehot_opcode[2]_i_3_n_0 ),
        .I4(\FSM_onehot_opcode_reg[2]_0 ),
        .O(\FSM_onehot_opcode[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFEAAAAAAAA)) 
    \FSM_onehot_opcode[2]_i_3 
       (.I0(\FSM_onehot_opcode_reg[2]_0 ),
        .I1(sram_data_write_vld),
        .I2(opcode_old[0]),
        .I3(opcode_old[1]),
        .I4(opcode1_carry__0_n_2),
        .I5(\FSM_onehot_opcode_reg[0]_0 ),
        .O(\FSM_onehot_opcode[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "wait_for_cmd:001,read_data:100,write_data:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_opcode_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_onehot_opcode[0]_i_1_n_0 ),
        .Q(\FSM_onehot_opcode_reg[0]_0 ),
        .S(SR));
  (* FSM_ENCODED_STATES = "wait_for_cmd:001,read_data:100,write_data:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_opcode_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_onehot_opcode[1]_i_1_n_0 ),
        .Q(opcode_reg),
        .R(SR));
  (* FSM_ENCODED_STATES = "wait_for_cmd:001,read_data:100,write_data:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_opcode_reg[2] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_onehot_opcode[2]_i_2_n_0 ),
        .Q(\FSM_onehot_opcode_reg[2]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[0] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[0]),
        .Q(address_old[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[10] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[10]),
        .Q(address_old[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[11] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[11]),
        .Q(address_old[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[12] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[12]),
        .Q(address_old[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[13] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[13]),
        .Q(address_old[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[14] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[14]),
        .Q(address_old[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[15] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[15]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[16] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[16]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[1] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[1]),
        .Q(address_old[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[2] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[2]),
        .Q(address_old[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[3] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[3]),
        .Q(address_old[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[4] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[4]),
        .Q(address_old[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[5] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[5]),
        .Q(address_old[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[6] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[6]),
        .Q(address_old[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[7] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[7]),
        .Q(address_old[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[8] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[8]),
        .Q(address_old[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \address_old_reg[9] 
       (.C(clk_out),
        .CE(\address_old_reg[16]_0 ),
        .D(D[9]),
        .Q(address_old[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[0] 
       (.C(clk_out),
        .CE(\data_o_reg[7]_1 ),
        .D(\data_o_reg[7]_2 [0]),
        .Q(\data_o_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[1] 
       (.C(clk_out),
        .CE(\data_o_reg[7]_1 ),
        .D(\data_o_reg[7]_2 [1]),
        .Q(\data_o_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[2] 
       (.C(clk_out),
        .CE(\data_o_reg[7]_1 ),
        .D(\data_o_reg[7]_2 [2]),
        .Q(\data_o_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[3] 
       (.C(clk_out),
        .CE(\data_o_reg[7]_1 ),
        .D(\data_o_reg[7]_2 [3]),
        .Q(\data_o_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[4] 
       (.C(clk_out),
        .CE(\data_o_reg[7]_1 ),
        .D(\data_o_reg[7]_2 [4]),
        .Q(\data_o_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[5] 
       (.C(clk_out),
        .CE(\data_o_reg[7]_1 ),
        .D(\data_o_reg[7]_2 [5]),
        .Q(\data_o_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[6] 
       (.C(clk_out),
        .CE(\data_o_reg[7]_1 ),
        .D(\data_o_reg[7]_2 [6]),
        .Q(\data_o_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_o_reg[7] 
       (.C(clk_out),
        .CE(\data_o_reg[7]_1 ),
        .D(\data_o_reg[7]_2 [7]),
        .Q(\data_o_reg[7]_0 [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_vld_o_i_1
       (.I0(\FSM_onehot_opcode_reg[2]_0 ),
        .I1(\FSM_onehot_opcode[2]_i_3_n_0 ),
        .I2(sram_data_read_vld),
        .O(data_vld_o_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_vld_o_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(data_vld_o_i_1_n_0),
        .Q(sram_data_read_vld),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 opcode1_carry
       (.CI(1'b0),
        .CO({opcode1_carry_n_0,NLW_opcode1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_opcode1_carry_O_UNCONNECTED[3:0]),
        .S({opcode1_carry_i_1_n_0,opcode1_carry_i_2_n_0,opcode1_carry_i_3_n_0,opcode1_carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 opcode1_carry__0
       (.CI(opcode1_carry_n_0),
        .CO({NLW_opcode1_carry__0_CO_UNCONNECTED[3:2],opcode1_carry__0_n_2,NLW_opcode1_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_opcode1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,S,opcode1_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    opcode1_carry__0_i_2
       (.I0(address_old[12]),
        .I1(D[12]),
        .I2(address_old[13]),
        .I3(D[13]),
        .I4(D[14]),
        .I5(address_old[14]),
        .O(opcode1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    opcode1_carry_i_1
       (.I0(address_old[9]),
        .I1(D[9]),
        .I2(address_old[10]),
        .I3(D[10]),
        .I4(D[11]),
        .I5(address_old[11]),
        .O(opcode1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    opcode1_carry_i_2
       (.I0(address_old[6]),
        .I1(D[6]),
        .I2(address_old[7]),
        .I3(D[7]),
        .I4(D[8]),
        .I5(address_old[8]),
        .O(opcode1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    opcode1_carry_i_3
       (.I0(address_old[3]),
        .I1(D[3]),
        .I2(address_old[4]),
        .I3(D[4]),
        .I4(D[5]),
        .I5(address_old[5]),
        .O(opcode1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    opcode1_carry_i_4
       (.I0(address_old[2]),
        .I1(D[2]),
        .I2(address_old[0]),
        .I3(D[0]),
        .I4(D[1]),
        .I5(address_old[1]),
        .O(opcode1_carry_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \opcode_old_reg[0] 
       (.C(clk_out),
        .CE(1'b1),
        .D(opcode_reg),
        .Q(opcode_old[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \opcode_old_reg[1] 
       (.C(clk_out),
        .CE(1'b1),
        .D(\FSM_onehot_opcode_reg[2]_0 ),
        .Q(opcode_old[1]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFBF8)) 
    ready_o_i_1
       (.I0(ready_o_i_2_n_0),
        .I1(\FSM_onehot_opcode_reg[0]_0 ),
        .I2(opcode_reg),
        .I3(sram_ready),
        .O(ready_o_i_1_n_0));
  LUT4 #(
    .INIT(16'h0051)) 
    ready_o_i_2
       (.I0(sram_data_write_vld),
        .I1(opcode_old[0]),
        .I2(opcode_old[1]),
        .I3(opcode1_carry__0_n_2),
        .O(ready_o_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_o_reg
       (.C(clk_out),
        .CE(1'b1),
        .D(ready_o_i_1_n_0),
        .Q(sram_ready),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[0] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[0]),
        .Q(\sram_address_o_reg[16]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[10] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[10]),
        .Q(\sram_address_o_reg[16]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[11] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[11]),
        .Q(\sram_address_o_reg[16]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[12] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[12]),
        .Q(\sram_address_o_reg[16]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[13] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[13]),
        .Q(\sram_address_o_reg[16]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[14] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[14]),
        .Q(\sram_address_o_reg[16]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[15] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[15]),
        .Q(\sram_address_o_reg[16]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[16] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[16]),
        .Q(\sram_address_o_reg[16]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[1] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[1]),
        .Q(\sram_address_o_reg[16]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[2] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[2]),
        .Q(\sram_address_o_reg[16]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[3] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[3]),
        .Q(\sram_address_o_reg[16]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[4] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[4]),
        .Q(\sram_address_o_reg[16]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[5] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[5]),
        .Q(\sram_address_o_reg[16]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[6] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[6]),
        .Q(\sram_address_o_reg[16]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[7] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[7]),
        .Q(\sram_address_o_reg[16]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[8] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[8]),
        .Q(\sram_address_o_reg[16]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_address_o_reg[9] 
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(D[9]),
        .Q(\sram_address_o_reg[16]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[0] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [0]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[10] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [10]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[11] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [11]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[12] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [12]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[13] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [13]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[14] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [14]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[15] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [15]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[1] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [1]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[2] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [2]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[3] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [3]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[4] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [4]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[5] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [5]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[6] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [6]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[7] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [7]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[8] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [8]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_tristate_oe_reg[9] 
       (.C(clk_out),
        .CE(E),
        .D(\sram_data_io_tristate_oe_reg[15]_1 [9]),
        .Q(\sram_data_io_tristate_oe_reg[15]_0 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAFB)) 
    sram_oe_n_o_i_1
       (.I0(sram_data_write_vld),
        .I1(opcode_old[0]),
        .I2(opcode_old[1]),
        .I3(opcode1_carry__0_n_2),
        .O(sram_oe_n_o_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sram_oe_n_o_reg
       (.C(clk_out),
        .CE(\FSM_onehot_opcode_reg[0]_0 ),
        .D(sram_oe_n_o_i_1_n_0),
        .Q(sram_oe_n_o_OBUF),
        .S(SR));
  LUT2 #(
    .INIT(4'hE)) 
    sram_we_n_o_i_1
       (.I0(\FSM_onehot_opcode_reg[0]_0 ),
        .I1(opcode_reg),
        .O(sram_we_n_o_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sram_we_n_o_reg
       (.C(clk_out),
        .CE(sram_we_n_o_i_1_n_0),
        .D(\FSM_onehot_opcode_reg[0]_0 ),
        .Q(sram_we_n_o_OBUF),
        .S(SR));
endmodule

(* ECO_CHECKSUM = "41556698" *) 
(* NotValidForBitStream *)
module top
   (clk_i,
    nrst_i,
    spi_nss_i,
    spi_sck_i,
    spi_mosi_i,
    spi_miso_o,
    nu_io,
    adc_data_i,
    adc_ovrng_i,
    sram_data_io,
    sram_address_o,
    sram_ce_n_o,
    sram_oe_n_o,
    sram_we_n_o,
    sram_lb_n_o,
    sram_ub_n_o,
    led_o,
    gpio_io);
  input clk_i;
  input nrst_i;
  input spi_nss_i;
  input spi_sck_i;
  input spi_mosi_i;
  output spi_miso_o;
  inout [3:0]nu_io;
  (* IOB = "TRUE" *) input [9:0]adc_data_i;
  input adc_ovrng_i;
  inout [15:0]sram_data_io;
  output [16:0]sram_address_o;
  output sram_ce_n_o;
  output sram_oe_n_o;
  output sram_we_n_o;
  output sram_lb_n_o;
  output sram_ub_n_o;
  output [1:4]led_o;
  inout [3:0]gpio_io;

  wire adc_ovrng_i;
  wire adc_ovrng_i_IBUF;
  wire [16:15]address_old;
  wire address_old_0;
  wire clk;
  (* IBUF_LOW_PWR *) wire clk_i;
  wire control_inst_n_10;
  wire control_inst_n_11;
  wire control_inst_n_12;
  wire control_inst_n_13;
  wire control_inst_n_14;
  wire control_inst_n_15;
  wire control_inst_n_16;
  wire control_inst_n_17;
  wire control_inst_n_18;
  wire control_inst_n_19;
  wire control_inst_n_20;
  wire control_inst_n_21;
  wire control_inst_n_22;
  wire control_inst_n_23;
  wire control_inst_n_24;
  wire control_inst_n_25;
  wire control_inst_n_26;
  wire control_inst_n_27;
  wire control_inst_n_28;
  wire control_inst_n_29;
  wire control_inst_n_30;
  wire control_inst_n_31;
  wire control_inst_n_32;
  wire control_inst_n_33;
  wire control_inst_n_4;
  wire control_inst_n_5;
  wire control_inst_n_6;
  wire control_inst_n_7;
  wire control_inst_n_8;
  wire control_inst_n_9;
  wire [7:0]data_o;
  wire [1:4]led_o;
  wire [1:1]led_o_OBUF;
  wire nrst_i;
  wire nrst_i_IBUF;
  wire nss;
  wire [1:1]opcode_reg;
  wire rst;
  wire rst_driver_inst_n_1;
  wire rst_driver_inst_n_10;
  wire rst_driver_inst_n_11;
  wire rst_driver_inst_n_12;
  wire rst_driver_inst_n_2;
  wire rst_driver_inst_n_3;
  wire rst_driver_inst_n_4;
  wire rst_driver_inst_n_5;
  wire rst_driver_inst_n_7;
  wire rst_driver_inst_n_9;
  wire rst_pin;
  wire spi_byte_cmd;
  wire spi_byte_first;
  wire spi_byte_second;
  wire spi_data_rx_vld;
  wire spi_data_tx_vld;
  wire spi_driver_inst_n_5;
  wire spi_driver_inst_n_6;
  wire spi_driver_inst_n_8;
  wire spi_first;
  wire spi_miso_o;
  wire spi_miso_o_OBUF;
  wire spi_miso_o_TRI;
  wire spi_mosi_i;
  wire spi_mosi_i_IBUF;
  wire spi_nss_i;
  wire spi_sck_i;
  wire spi_sck_i_IBUF;
  wire [16:0]sram_address_o;
  wire [16:0]sram_address_o_OBUF;
  wire sram_ce_n_o;
  wire [15:0]sram_data_io;
  wire [7:0]sram_data_io_IBUF;
  wire [15:0]sram_data_io_OBUF;
  wire \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_1 ;
  wire \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_2_1 ;
  wire \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_3_1 ;
  wire \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_4_1 ;
  wire \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_5_1 ;
  wire \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_6_1 ;
  wire \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_7_1 ;
  wire \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_8_1 ;
  wire \sram_data_io_TRI[0] ;
  wire sram_data_read_vld;
  wire [15:0]sram_data_write;
  wire sram_data_write_vld;
  wire sram_driver_inst_n_1;
  wire sram_driver_inst_n_24;
  wire sram_driver_inst_n_25;
  wire sram_driver_inst_n_26;
  wire sram_driver_inst_n_27;
  wire sram_driver_inst_n_28;
  wire sram_driver_inst_n_29;
  wire sram_driver_inst_n_30;
  wire sram_driver_inst_n_31;
  wire sram_lb_n_o;
  wire sram_oe_n_o;
  wire sram_oe_n_o_OBUF;
  wire sram_ready;
  wire sram_ub_n_o;
  wire sram_we_n_o;
  wire sram_we_n_o_OBUF;
  wire tx_ready;
PULLDOWN pulldown_adc_ovrng_i
       (.O(adc_ovrng_i));
PULLDOWN pulldown_adc_data_i_0
       (.O(adc_data_i[0]));
PULLDOWN pulldown_adc_data_i_1
       (.O(adc_data_i[1]));
PULLDOWN pulldown_adc_data_i_2
       (.O(adc_data_i[2]));
PULLDOWN pulldown_adc_data_i_3
       (.O(adc_data_i[3]));
PULLDOWN pulldown_adc_data_i_4
       (.O(adc_data_i[4]));
PULLDOWN pulldown_adc_data_i_5
       (.O(adc_data_i[5]));
PULLDOWN pulldown_adc_data_i_6
       (.O(adc_data_i[6]));
PULLDOWN pulldown_adc_data_i_7
       (.O(adc_data_i[7]));
PULLDOWN pulldown_adc_data_i_8
       (.O(adc_data_i[8]));
PULLDOWN pulldown_adc_data_i_9
       (.O(adc_data_i[9]));

initial begin
 $sdf_annotate("top_tb_time_impl.sdf",,,,"tool_control");
end
  adc_driver adc_driver_inst
       (.adc_ovrng_i_IBUF(adc_ovrng_i_IBUF),
        .clk_out(clk),
        .led_o_OBUF(led_o_OBUF));
  (* IOB = "TRUE" *) 
  IBUF adc_ovrng_i_IBUF_inst
       (.I(adc_ovrng_i),
        .O(adc_ovrng_i_IBUF));
  (* syn_black_box = "TRUE" *) 
  clk_wiz_0 clk_wiz_0_inst
       (.clk_in(clk_i),
        .clk_out(clk),
        .reset(1'b0));
  control control_inst
       (.D({control_inst_n_26,control_inst_n_27,control_inst_n_28,control_inst_n_29,control_inst_n_30,control_inst_n_31,control_inst_n_32,control_inst_n_33}),
        .E(spi_driver_inst_n_6),
        .\FSM_onehot_spi_byte_order_reg[0]_0 (rst_driver_inst_n_2),
        .\FSM_onehot_spi_byte_order_reg[2]_0 (rst_driver_inst_n_1),
        .\FSM_sequential_opcode_reg[0]_0 (control_inst_n_25),
        .\FSM_sequential_opcode_reg[1]_0 (rst_driver_inst_n_3),
        .Q({control_inst_n_6,control_inst_n_7,control_inst_n_8,control_inst_n_9,control_inst_n_10,control_inst_n_11,control_inst_n_12,control_inst_n_13,control_inst_n_14,control_inst_n_15,control_inst_n_16,control_inst_n_17,control_inst_n_18,control_inst_n_19,control_inst_n_20,control_inst_n_21,control_inst_n_22}),
        .S(control_inst_n_5),
        .clk_out(clk),
        .\cmd_reg[1]_0 (control_inst_n_24),
        .\cmd_reg[2]_0 (control_inst_n_23),
        .opcode1_carry__0(address_old),
        .\ram_data_reg[7]_0 ({sram_driver_inst_n_24,sram_driver_inst_n_25,sram_driver_inst_n_26,sram_driver_inst_n_27,sram_driver_inst_n_28,sram_driver_inst_n_29,sram_driver_inst_n_30,sram_driver_inst_n_31}),
        .ready_reg_0(rst_driver_inst_n_9),
        .rst(rst),
        .rst_pin(rst_pin),
        .\spi_byte_cmd_reg[4]_0 (control_inst_n_4),
        .\spi_byte_cmd_reg[7]_0 (spi_byte_cmd),
        .spi_byte_first(spi_byte_first),
        .\spi_byte_first_reg[7]_0 (spi_driver_inst_n_5),
        .spi_byte_second(spi_byte_second),
        .\spi_byte_second_reg[7]_0 (data_o),
        .\spi_data_o_reg[0]_0 (spi_driver_inst_n_8),
        .spi_data_rx_vld(spi_data_rx_vld),
        .spi_data_tx_vld(spi_data_tx_vld),
        .spi_first(spi_first),
        .spi_new_cmd_reg_0(rst_driver_inst_n_11),
        .\sram_data_o_reg[0]_0 (rst_driver_inst_n_10),
        .\sram_data_o_reg[15]_0 (sram_data_write),
        .sram_data_read_vld(sram_data_read_vld),
        .sram_data_write_vld(sram_data_write_vld),
        .sram_ready(sram_ready),
        .tx_ready(tx_ready));
  OBUF \led_o_OBUF[1]_inst 
       (.I(led_o_OBUF),
        .O(led_o[1]));
  OBUF \led_o_OBUF[2]_inst 
       (.I(1'b0),
        .O(led_o[2]));
  OBUF \led_o_OBUF[3]_inst 
       (.I(1'b0),
        .O(led_o[3]));
  OBUF \led_o_OBUF[4]_inst 
       (.I(1'b0),
        .O(led_o[4]));
  IBUF nrst_i_IBUF_inst
       (.I(nrst_i),
        .O(nrst_i_IBUF));
  rst_driver rst_driver_inst
       (.E(rst_driver_inst_n_4),
        .\FSM_onehot_opcode_reg[0] (address_old_0),
        .\FSM_onehot_opcode_reg[2] (rst_driver_inst_n_5),
        .\FSM_onehot_spi_byte_order_reg[0] (rst_driver_inst_n_2),
        .\FSM_sequential_opcode[1]_i_5 (control_inst_n_23),
        .\FSM_sequential_opcode[1]_i_5_0 (control_inst_n_24),
        .SR(rst),
        .clk_out(clk),
        .nrst_i_IBUF(nrst_i_IBUF),
        .nss(nss),
        .nss_reg(rst_driver_inst_n_7),
        .opcode_reg(opcode_reg),
        .rst_pin(rst_pin),
        .rst_pin_reg_0(rst_driver_inst_n_3),
        .rst_pin_reg_1(rst_driver_inst_n_11),
        .rst_pin_reg_2(rst_driver_inst_n_12),
        .rst_power_on_reg_0(rst_driver_inst_n_1),
        .rst_power_on_reg_1(rst_driver_inst_n_9),
        .rst_power_on_reg_2(rst_driver_inst_n_10),
        .spi_byte_first(spi_byte_first),
        .spi_data_rx_vld(spi_data_rx_vld),
        .spi_first(spi_first),
        .spi_new_cmd_reg(control_inst_n_4),
        .\sram_data_io_tristate_oe_reg[14] (sram_driver_inst_n_1),
        .\sram_data_o_reg[0] (control_inst_n_25),
        .sram_data_write_vld(sram_data_write_vld));
  spi_driver spi_driver_inst
       (.D({control_inst_n_26,control_inst_n_27,control_inst_n_28,control_inst_n_29,control_inst_n_30,control_inst_n_31,control_inst_n_32,control_inst_n_33}),
        .E(spi_driver_inst_n_6),
        .\FSM_onehot_spi_byte_order_reg[0] (spi_driver_inst_n_5),
        .SR(rst),
        .\bit_cnt_reg[0]_0 (rst_driver_inst_n_1),
        .\bit_cnt_reg[1]_0 (rst_driver_inst_n_9),
        .\bit_cnt_reg[2]_0 (rst_driver_inst_n_7),
        .clk_out(clk),
        .\data_o_reg[7]_0 (data_o),
        .first_o_reg_0(spi_byte_cmd),
        .nss(nss),
        .rst_pin(rst_pin),
        .spi_byte_first(spi_byte_first),
        .spi_byte_second(spi_byte_second),
        .spi_data_rx_vld(spi_data_rx_vld),
        .spi_data_tx_vld(spi_data_tx_vld),
        .spi_first(spi_first),
        .spi_miso_o_OBUF(spi_miso_o_OBUF),
        .spi_miso_o_TRI(spi_miso_o_TRI),
        .spi_mosi_i_IBUF(spi_mosi_i_IBUF),
        .spi_sck_i_IBUF(spi_sck_i_IBUF),
        .tx_ready(tx_ready),
        .tx_ready_reg_0(spi_driver_inst_n_8));
  OBUFT spi_miso_o_OBUFT_inst
       (.I(spi_miso_o_OBUF),
        .O(spi_miso_o),
        .T(spi_miso_o_TRI));
  IBUF spi_mosi_i_IBUF_inst
       (.I(spi_mosi_i),
        .O(spi_mosi_i_IBUF));
  IBUF spi_nss_i_IBUF_inst
       (.I(spi_nss_i),
        .O(spi_miso_o_TRI));
  IBUF spi_sck_i_IBUF_inst
       (.I(spi_sck_i),
        .O(spi_sck_i_IBUF));
  OBUF \sram_address_o_OBUF[0]_inst 
       (.I(sram_address_o_OBUF[0]),
        .O(sram_address_o[0]));
  OBUF \sram_address_o_OBUF[10]_inst 
       (.I(sram_address_o_OBUF[10]),
        .O(sram_address_o[10]));
  OBUF \sram_address_o_OBUF[11]_inst 
       (.I(sram_address_o_OBUF[11]),
        .O(sram_address_o[11]));
  OBUF \sram_address_o_OBUF[12]_inst 
       (.I(sram_address_o_OBUF[12]),
        .O(sram_address_o[12]));
  OBUF \sram_address_o_OBUF[13]_inst 
       (.I(sram_address_o_OBUF[13]),
        .O(sram_address_o[13]));
  OBUF \sram_address_o_OBUF[14]_inst 
       (.I(sram_address_o_OBUF[14]),
        .O(sram_address_o[14]));
  OBUF \sram_address_o_OBUF[15]_inst 
       (.I(sram_address_o_OBUF[15]),
        .O(sram_address_o[15]));
  OBUF \sram_address_o_OBUF[16]_inst 
       (.I(sram_address_o_OBUF[16]),
        .O(sram_address_o[16]));
  OBUF \sram_address_o_OBUF[1]_inst 
       (.I(sram_address_o_OBUF[1]),
        .O(sram_address_o[1]));
  OBUF \sram_address_o_OBUF[2]_inst 
       (.I(sram_address_o_OBUF[2]),
        .O(sram_address_o[2]));
  OBUF \sram_address_o_OBUF[3]_inst 
       (.I(sram_address_o_OBUF[3]),
        .O(sram_address_o[3]));
  OBUF \sram_address_o_OBUF[4]_inst 
       (.I(sram_address_o_OBUF[4]),
        .O(sram_address_o[4]));
  OBUF \sram_address_o_OBUF[5]_inst 
       (.I(sram_address_o_OBUF[5]),
        .O(sram_address_o[5]));
  OBUF \sram_address_o_OBUF[6]_inst 
       (.I(sram_address_o_OBUF[6]),
        .O(sram_address_o[6]));
  OBUF \sram_address_o_OBUF[7]_inst 
       (.I(sram_address_o_OBUF[7]),
        .O(sram_address_o[7]));
  OBUF \sram_address_o_OBUF[8]_inst 
       (.I(sram_address_o_OBUF[8]),
        .O(sram_address_o[8]));
  OBUF \sram_address_o_OBUF[9]_inst 
       (.I(sram_address_o_OBUF[9]),
        .O(sram_address_o[9]));
  OBUF sram_ce_n_o_OBUF_inst
       (.I(1'b0),
        .O(sram_ce_n_o));
  (* IS_CCIO = "FALSE" *) 
  IOBUF_UNIQ_BASE_ \sram_data_io_IOBUF[0]_inst 
       (.I(sram_data_io_OBUF[0]),
        .IO(sram_data_io[0]),
        .O(sram_data_io_IBUF[0]),
        .T(\sram_data_io_TRI[0] ));
  (* IS_CCIO = "FALSE" *) 
  IOBUF_HD1 \sram_data_io_IOBUF[1]_inst 
       (.I(sram_data_io_OBUF[1]),
        .IO(sram_data_io[1]),
        .O(sram_data_io_IBUF[1]),
        .T(\sram_data_io_TRI[0] ));
  (* IS_CCIO = "FALSE" *) 
  IOBUF_HD2 \sram_data_io_IOBUF[2]_inst 
       (.I(sram_data_io_OBUF[2]),
        .IO(sram_data_io[2]),
        .O(sram_data_io_IBUF[2]),
        .T(\sram_data_io_TRI[0] ));
  (* IS_CCIO = "FALSE" *) 
  IOBUF_HD3 \sram_data_io_IOBUF[3]_inst 
       (.I(sram_data_io_OBUF[3]),
        .IO(sram_data_io[3]),
        .O(sram_data_io_IBUF[3]),
        .T(\sram_data_io_TRI[0] ));
  (* IS_CCIO = "FALSE" *) 
  IOBUF_HD4 \sram_data_io_IOBUF[4]_inst 
       (.I(sram_data_io_OBUF[4]),
        .IO(sram_data_io[4]),
        .O(sram_data_io_IBUF[4]),
        .T(\sram_data_io_TRI[0] ));
  (* IS_CCIO = "FALSE" *) 
  IOBUF_HD5 \sram_data_io_IOBUF[5]_inst 
       (.I(sram_data_io_OBUF[5]),
        .IO(sram_data_io[5]),
        .O(sram_data_io_IBUF[5]),
        .T(\sram_data_io_TRI[0] ));
  (* IS_CCIO = "FALSE" *) 
  IOBUF_HD6 \sram_data_io_IOBUF[6]_inst 
       (.I(sram_data_io_OBUF[6]),
        .IO(sram_data_io[6]),
        .O(sram_data_io_IBUF[6]),
        .T(\sram_data_io_TRI[0] ));
  (* IS_CCIO = "FALSE" *) 
  IOBUF_HD7 \sram_data_io_IOBUF[7]_inst 
       (.I(sram_data_io_OBUF[7]),
        .IO(sram_data_io[7]),
        .O(sram_data_io_IBUF[7]),
        .T(\sram_data_io_TRI[0] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUFT \sram_data_io_OBUFT[10]_inst 
       (.I(sram_data_io_OBUF[10]),
        .O(sram_data_io[10]),
        .T(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUFT \sram_data_io_OBUFT[11]_inst 
       (.I(sram_data_io_OBUF[11]),
        .O(sram_data_io[11]),
        .T(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_2_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUFT \sram_data_io_OBUFT[12]_inst 
       (.I(sram_data_io_OBUF[12]),
        .O(sram_data_io[12]),
        .T(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_3_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUFT \sram_data_io_OBUFT[13]_inst 
       (.I(sram_data_io_OBUF[13]),
        .O(sram_data_io[13]),
        .T(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_4_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUFT \sram_data_io_OBUFT[14]_inst 
       (.I(sram_data_io_OBUF[14]),
        .O(sram_data_io[14]),
        .T(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_5_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUFT \sram_data_io_OBUFT[15]_inst 
       (.I(sram_data_io_OBUF[15]),
        .O(sram_data_io[15]),
        .T(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_6_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_OBUFT[15]_inst_i_1 
       (.C(clk),
        .CE(rst_driver_inst_n_4),
        .D(rst_driver_inst_n_12),
        .Q(\sram_data_io_TRI[0] ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica 
       (.C(clk),
        .CE(rst_driver_inst_n_4),
        .D(rst_driver_inst_n_12),
        .Q(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_2 
       (.C(clk),
        .CE(rst_driver_inst_n_4),
        .D(rst_driver_inst_n_12),
        .Q(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_2_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_3 
       (.C(clk),
        .CE(rst_driver_inst_n_4),
        .D(rst_driver_inst_n_12),
        .Q(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_3_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_4 
       (.C(clk),
        .CE(rst_driver_inst_n_4),
        .D(rst_driver_inst_n_12),
        .Q(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_4_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_5 
       (.C(clk),
        .CE(rst_driver_inst_n_4),
        .D(rst_driver_inst_n_12),
        .Q(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_5_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_6 
       (.C(clk),
        .CE(rst_driver_inst_n_4),
        .D(rst_driver_inst_n_12),
        .Q(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_6_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_7 
       (.C(clk),
        .CE(rst_driver_inst_n_4),
        .D(rst_driver_inst_n_12),
        .Q(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_7_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_8 
       (.C(clk),
        .CE(rst_driver_inst_n_4),
        .D(rst_driver_inst_n_12),
        .Q(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_8_1 ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUFT \sram_data_io_OBUFT[8]_inst 
       (.I(sram_data_io_OBUF[8]),
        .O(sram_data_io[8]),
        .T(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_7_1 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUFT \sram_data_io_OBUFT[9]_inst 
       (.I(sram_data_io_OBUF[9]),
        .O(sram_data_io[9]),
        .T(\sram_data_io_OBUFT[15]_inst_i_1_lopt_replica_8_1 ));
  sram_driver sram_driver_inst
       (.D({control_inst_n_6,control_inst_n_7,control_inst_n_8,control_inst_n_9,control_inst_n_10,control_inst_n_11,control_inst_n_12,control_inst_n_13,control_inst_n_14,control_inst_n_15,control_inst_n_16,control_inst_n_17,control_inst_n_18,control_inst_n_19,control_inst_n_20,control_inst_n_21,control_inst_n_22}),
        .E(rst_driver_inst_n_4),
        .\FSM_onehot_opcode_reg[0]_0 (sram_driver_inst_n_1),
        .\FSM_onehot_opcode_reg[2]_0 (opcode_reg),
        .Q(address_old),
        .S(control_inst_n_5),
        .SR(rst),
        .\address_old_reg[16]_0 (address_old_0),
        .clk_out(clk),
        .\data_o_reg[7]_0 ({sram_driver_inst_n_24,sram_driver_inst_n_25,sram_driver_inst_n_26,sram_driver_inst_n_27,sram_driver_inst_n_28,sram_driver_inst_n_29,sram_driver_inst_n_30,sram_driver_inst_n_31}),
        .\data_o_reg[7]_1 (rst_driver_inst_n_5),
        .\data_o_reg[7]_2 (sram_data_io_IBUF),
        .\sram_address_o_reg[16]_0 (sram_address_o_OBUF),
        .\sram_data_io_tristate_oe_reg[15]_0 (sram_data_io_OBUF),
        .\sram_data_io_tristate_oe_reg[15]_1 (sram_data_write),
        .sram_data_read_vld(sram_data_read_vld),
        .sram_data_write_vld(sram_data_write_vld),
        .sram_oe_n_o_OBUF(sram_oe_n_o_OBUF),
        .sram_ready(sram_ready),
        .sram_we_n_o_OBUF(sram_we_n_o_OBUF));
  OBUF sram_lb_n_o_OBUF_inst
       (.I(1'b0),
        .O(sram_lb_n_o));
  OBUF sram_oe_n_o_OBUF_inst
       (.I(sram_oe_n_o_OBUF),
        .O(sram_oe_n_o));
  OBUF sram_ub_n_o_OBUF_inst
       (.I(1'b0),
        .O(sram_ub_n_o));
  OBUF sram_we_n_o_OBUF_inst
       (.I(sram_we_n_o_OBUF),
        .O(sram_we_n_o));
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
