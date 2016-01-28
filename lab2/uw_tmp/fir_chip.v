// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

// DATE "01/23/2016 20:54:04"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module fir_chip (	clk,
	i_data,
	o_data);
input 	clk;
input 	[15:0] i_data;
output 	[15:0] o_data;

wire gnd = 1'b0;
wire vcc = 1'b1;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("fir_v.sdo");
// synopsys translate_on

wire sum2_add15_2_anx38970z1;
wire sum2_add15_2_anx42958z1;
wire sum2_add15_2_anx43955z1;
wire sum2_add15_2_anx44952z1;
wire sum2_add15_2_anx63795z1;
wire sum2_add15_2_anx253z1;
wire clk_acombout;
wire clk_aclkctrl_outclk;
wire tap1_2_;
wire sum2_add15_2_anx37973z1;
wire sum3_add16_0_anx37973z1;
wire tap2_2_;
wire tap3_2__afeeder_combout;
wire tap3_2_;
wire tap4_2__afeeder_combout;
wire tap4_2_;
wire o_data_add16_1_anx37973z1;
wire tap1_3_;
wire tap2_3_;
wire tap3_3__afeeder_combout;
wire tap3_3_;
wire sum3_add16_0_anx2247z43;
wire sum3_add16_0_anx38970z1;
wire tap4_3__afeeder_combout;
wire tap4_3_;
wire o_data_add16_1_anx2247z44;
wire o_data_add16_1_anx38970z1;
wire tap1_4_;
wire tap2_4_;
wire sum2_add15_2_anx1250z41;
wire sum2_add15_2_anx1250z38;
wire sum2_add15_2_anx39967z1;
wire sum3_add16_0_anx2247z40;
wire sum3_add16_0_anx39967z1;
wire tap3_4__afeeder_combout;
wire tap3_4_;
wire tap4_4__afeeder_combout;
wire tap4_4_;
wire o_data_add16_1_anx2247z41;
wire o_data_add16_1_anx39967z1;
wire tap1_5_;
wire tap2_5_;
wire tap3_5_;
wire tap4_5__afeeder_combout;
wire tap4_5_;
wire sum2_add15_2_anx1250z35;
wire sum2_add15_2_anx40964z1;
wire sum3_add16_0_anx2247z37;
wire sum3_add16_0_anx40964z1;
wire o_data_add16_1_anx2247z38;
wire o_data_add16_1_anx40964z1;
wire tap1_6_;
wire tap2_6_;
wire sum2_add15_2_anx1250z32;
wire sum2_add15_2_anx41961z1;
wire sum3_add16_0_anx2247z34;
wire sum3_add16_0_anx41961z1;
wire tap3_6__afeeder_combout;
wire tap3_6_;
wire tap4_6__afeeder_combout;
wire tap4_6_;
wire o_data_add16_1_anx2247z35;
wire o_data_add16_1_anx41961z1;
wire tap1_7_;
wire tap2_7_;
wire tap3_7__afeeder_combout;
wire tap3_7_;
wire sum3_add16_0_anx2247z31;
wire sum3_add16_0_anx42958z1;
wire tap4_7__afeeder_combout;
wire tap4_7_;
wire o_data_add16_1_anx2247z32;
wire o_data_add16_1_anx42958z1;
wire tap1_8_;
wire tap2_8_;
wire tap3_8__afeeder_combout;
wire tap3_8_;
wire sum3_add16_0_anx2247z28;
wire sum3_add16_0_anx43955z1;
wire tap4_8__afeeder_combout;
wire tap4_8_;
wire o_data_add16_1_anx2247z29;
wire o_data_add16_1_anx43955z1;
wire tap1_9_;
wire tap2_9_;
wire tap3_9__afeeder_combout;
wire tap3_9_;
wire sum3_add16_0_anx2247z25;
wire sum3_add16_0_anx44952z1;
wire tap4_9__afeeder_combout;
wire tap4_9_;
wire o_data_add16_1_anx2247z26;
wire o_data_add16_1_anx44952z1;
wire tap1_10_;
wire tap2_10_;
wire sum2_add15_2_anx1250z29;
wire sum2_add15_2_anx1250z26;
wire sum2_add15_2_anx1250z23;
wire sum2_add15_2_anx1250z20;
wire sum2_add15_2_anx45949z1;
wire sum3_add16_0_anx2247z22;
wire sum3_add16_0_anx45949z1;
wire tap3_10__afeeder_combout;
wire tap3_10_;
wire tap4_10__afeeder_combout;
wire tap4_10_;
wire o_data_add16_1_anx2247z23;
wire o_data_add16_1_anx45949z1;
wire tap1_11_;
wire tap2_11_;
wire tap3_11__afeeder_combout;
wire tap3_11_;
wire tap4_11__afeeder_combout;
wire tap4_11_;
wire sum2_add15_2_anx1250z17;
wire sum2_add15_2_anx46946z1;
wire sum3_add16_0_anx2247z19;
wire sum3_add16_0_anx46946z1;
wire o_data_add16_1_anx2247z20;
wire o_data_add16_1_anx46946z1;
wire tap1_12_;
wire tap2_12_;
wire sum2_add15_2_anx1250z14;
wire sum2_add15_2_anx62798z1;
wire sum3_add16_0_anx2247z16;
wire sum3_add16_0_anx62798z1;
wire tap3_12__afeeder_combout;
wire tap3_12_;
wire tap4_12__afeeder_combout;
wire tap4_12_;
wire o_data_add16_1_anx2247z17;
wire o_data_add16_1_anx62798z1;
wire tap1_13_;
wire tap2_13_;
wire tap3_13_;
wire tap4_13__afeeder_combout;
wire tap4_13_;
wire sum3_add16_0_anx2247z13;
wire sum3_add16_0_anx63795z1;
wire o_data_add16_1_anx2247z14;
wire o_data_add16_1_anx63795z1;
wire tap1_14_;
wire tap2_14_;
wire tap3_14__afeeder_combout;
wire tap3_14_;
wire tap4_14__afeeder_combout;
wire tap4_14_;
wire sum2_add15_2_anx1250z11;
wire sum2_add15_2_anx1250z8;
wire sum2_add15_2_anx64792z1;
wire sum3_add16_0_anx2247z10;
wire sum3_add16_0_anx64792z1;
wire o_data_add16_1_anx2247z11;
wire o_data_add16_1_anx64792z1;
wire tap1_15_;
wire tap2_15_;
wire tap3_15__afeeder_combout;
wire tap3_15_;
wire sum3_add16_0_anx2247z7;
wire sum3_add16_0_anx253z1;
wire tap4_15__afeeder_combout;
wire tap4_15_;
wire o_data_add16_1_anx2247z8;
wire o_data_add16_1_anx253z1;
wire sum2_add15_2_anx1250z5;
wire sum2_add15_2_anx1250z4;
wire sum2_add15_2_anx1250z1;
wire sum3_add16_0_anx2247z5;
wire sum3_add16_0_anx1250z1;
wire o_data_add16_1_anx2247z6;
wire o_data_add16_1_anx1250z1;
wire sum3_add16_0_anx2247z4;
wire sum3_add16_0_anx2247z1;
wire o_data_add16_1_anx2247z4;
wire o_data_add16_1_anx2247z1;


// atom is at LCCOMB_X60_Y28_N4
cycloneii_lcell_comb sum2_add15_2_aix1250z52937(
// Equation(s):
// sum2_add15_2_anx38970z1 = tap1_3_ & (tap2_3_ & sum2_add15_2_anx1250z41 & VCC # !tap2_3_ & !sum2_add15_2_anx1250z41) # !tap1_3_ & (tap2_3_ & !sum2_add15_2_anx1250z41 # !tap2_3_ & (sum2_add15_2_anx1250z41 # GND))
// sum2_add15_2_anx1250z38 = CARRY(tap1_3_ & !tap2_3_ & !sum2_add15_2_anx1250z41 # !tap1_3_ & (!sum2_add15_2_anx1250z41 # !tap2_3_))

	.dataa(tap1_3_),
	.datab(tap2_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z41),
	.combout(sum2_add15_2_anx38970z1),
	.cout(sum2_add15_2_anx1250z38));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52937.lut_mask = 16'h9617;
defparam sum2_add15_2_aix1250z52937.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y28_N12
cycloneii_lcell_comb sum2_add15_2_aix1250z52933(
// Equation(s):
// sum2_add15_2_anx42958z1 = tap1_7_ & (tap2_7_ & sum2_add15_2_anx1250z29 & VCC # !tap2_7_ & !sum2_add15_2_anx1250z29) # !tap1_7_ & (tap2_7_ & !sum2_add15_2_anx1250z29 # !tap2_7_ & (sum2_add15_2_anx1250z29 # GND))
// sum2_add15_2_anx1250z26 = CARRY(tap1_7_ & !tap2_7_ & !sum2_add15_2_anx1250z29 # !tap1_7_ & (!sum2_add15_2_anx1250z29 # !tap2_7_))

	.dataa(tap1_7_),
	.datab(tap2_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z29),
	.combout(sum2_add15_2_anx42958z1),
	.cout(sum2_add15_2_anx1250z26));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52933.lut_mask = 16'h9617;
defparam sum2_add15_2_aix1250z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y28_N14
cycloneii_lcell_comb sum2_add15_2_aix1250z52932(
// Equation(s):
// sum2_add15_2_anx43955z1 = (tap2_8_ $ tap1_8_ $ !sum2_add15_2_anx1250z26) # GND
// sum2_add15_2_anx1250z23 = CARRY(tap2_8_ & (tap1_8_ # !sum2_add15_2_anx1250z26) # !tap2_8_ & tap1_8_ & !sum2_add15_2_anx1250z26)

	.dataa(tap2_8_),
	.datab(tap1_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z26),
	.combout(sum2_add15_2_anx43955z1),
	.cout(sum2_add15_2_anx1250z23));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52932.lut_mask = 16'h698E;
defparam sum2_add15_2_aix1250z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y28_N16
cycloneii_lcell_comb sum2_add15_2_aix1250z52931(
// Equation(s):
// sum2_add15_2_anx44952z1 = tap2_9_ & (tap1_9_ & sum2_add15_2_anx1250z23 & VCC # !tap1_9_ & !sum2_add15_2_anx1250z23) # !tap2_9_ & (tap1_9_ & !sum2_add15_2_anx1250z23 # !tap1_9_ & (sum2_add15_2_anx1250z23 # GND))
// sum2_add15_2_anx1250z20 = CARRY(tap2_9_ & !tap1_9_ & !sum2_add15_2_anx1250z23 # !tap2_9_ & (!sum2_add15_2_anx1250z23 # !tap1_9_))

	.dataa(tap2_9_),
	.datab(tap1_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z23),
	.combout(sum2_add15_2_anx44952z1),
	.cout(sum2_add15_2_anx1250z20));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52931.lut_mask = 16'h9617;
defparam sum2_add15_2_aix1250z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y28_N24
cycloneii_lcell_comb sum2_add15_2_aix1250z52927(
// Equation(s):
// sum2_add15_2_anx63795z1 = tap2_13_ & (tap1_13_ & sum2_add15_2_anx1250z11 & VCC # !tap1_13_ & !sum2_add15_2_anx1250z11) # !tap2_13_ & (tap1_13_ & !sum2_add15_2_anx1250z11 # !tap1_13_ & (sum2_add15_2_anx1250z11 # GND))
// sum2_add15_2_anx1250z8 = CARRY(tap2_13_ & !tap1_13_ & !sum2_add15_2_anx1250z11 # !tap2_13_ & (!sum2_add15_2_anx1250z11 # !tap1_13_))

	.dataa(tap2_13_),
	.datab(tap1_13_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z11),
	.combout(sum2_add15_2_anx63795z1),
	.cout(sum2_add15_2_anx1250z8));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52927.lut_mask = 16'h9617;
defparam sum2_add15_2_aix1250z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y28_N28
cycloneii_lcell_comb sum2_add15_2_aix1250z52925(
// Equation(s):
// sum2_add15_2_anx253z1 = tap1_15_ & (tap2_15_ & sum2_add15_2_anx1250z5 & VCC # !tap2_15_ & !sum2_add15_2_anx1250z5) # !tap1_15_ & (tap2_15_ & !sum2_add15_2_anx1250z5 # !tap2_15_ & (sum2_add15_2_anx1250z5 # GND))
// sum2_add15_2_anx1250z4 = CARRY(tap1_15_ & !tap2_15_ & !sum2_add15_2_anx1250z5 # !tap1_15_ & (!sum2_add15_2_anx1250z5 # !tap2_15_))

	.dataa(tap1_15_),
	.datab(tap2_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z5),
	.combout(sum2_add15_2_anx253z1),
	.cout(sum2_add15_2_anx1250z4));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52925.lut_mask = 16'h9617;
defparam sum2_add15_2_aix1250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_P2
cycloneii_io clk_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(clk_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clk));
// synopsys translate_off
defparam clk_ibuf.input_async_reset = "none";
defparam clk_ibuf.input_power_up = "low";
defparam clk_ibuf.input_register_mode = "none";
defparam clk_ibuf.input_sync_reset = "none";
defparam clk_ibuf.oe_async_reset = "none";
defparam clk_ibuf.oe_power_up = "low";
defparam clk_ibuf.oe_register_mode = "none";
defparam clk_ibuf.oe_sync_reset = "none";
defparam clk_ibuf.operation_mode = "input";
defparam clk_ibuf.output_async_reset = "none";
defparam clk_ibuf.output_power_up = "low";
defparam clk_ibuf.output_register_mode = "none";
defparam clk_ibuf.output_sync_reset = "none";
// synopsys translate_on

// atom is at CLKCTRL_G3
cycloneii_clkctrl clk_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,clk_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(clk_aclkctrl_outclk));
// synopsys translate_off
defparam clk_aclkctrl.clock_type = "global clock";
defparam clk_aclkctrl.ena_register_mode = "falling edge";
// synopsys translate_on

// atom is at PIN_J16
cycloneii_io i_data_ibuf_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_2_),
	.differentialout(),
	.linkout(),
	.padio(i_data[2]));
// synopsys translate_off
defparam i_data_ibuf_2_.input_async_reset = "none";
defparam i_data_ibuf_2_.input_power_up = "low";
defparam i_data_ibuf_2_.input_register_mode = "register";
defparam i_data_ibuf_2_.input_sync_reset = "none";
defparam i_data_ibuf_2_.oe_async_reset = "none";
defparam i_data_ibuf_2_.oe_power_up = "low";
defparam i_data_ibuf_2_.oe_register_mode = "none";
defparam i_data_ibuf_2_.oe_sync_reset = "none";
defparam i_data_ibuf_2_.operation_mode = "input";
defparam i_data_ibuf_2_.output_async_reset = "none";
defparam i_data_ibuf_2_.output_power_up = "low";
defparam i_data_ibuf_2_.output_register_mode = "none";
defparam i_data_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCCOMB_X60_Y28_N2
cycloneii_lcell_comb sum2_add15_2_aix1250z52938(
// Equation(s):
// sum2_add15_2_anx37973z1 = tap2_2_ & (tap1_2_ $ VCC) # !tap2_2_ & tap1_2_ & VCC
// sum2_add15_2_anx1250z41 = CARRY(tap2_2_ & tap1_2_)

	.dataa(tap2_2_),
	.datab(tap1_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(sum2_add15_2_anx37973z1),
	.cout(sum2_add15_2_anx1250z41));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52938.lut_mask = 16'h6688;
defparam sum2_add15_2_aix1250z52938.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N0
cycloneii_lcell_comb sum3_add16_0_aix2247z52939(
// Equation(s):
// sum3_add16_0_anx37973z1 = tap3_2_ & (sum2_add15_2_anx37973z1 $ VCC) # !tap3_2_ & sum2_add15_2_anx37973z1 & VCC
// sum3_add16_0_anx2247z43 = CARRY(tap3_2_ & sum2_add15_2_anx37973z1)

	.dataa(tap3_2_),
	.datab(sum2_add15_2_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(sum3_add16_0_anx37973z1),
	.cout(sum3_add16_0_anx2247z43));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52939.lut_mask = 16'h6688;
defparam sum3_add16_0_aix2247z52939.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N3
cycloneii_lcell_ff reg_tap2_2_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_2_));

// atom is at LCCOMB_X60_Y27_N0
cycloneii_lcell_comb tap3_2__afeeder(
// Equation(s):
// tap3_2__afeeder_combout = tap2_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_2_),
	.cin(gnd),
	.combout(tap3_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_2__afeeder.lut_mask = 16'hFF00;
defparam tap3_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y27_N1
cycloneii_lcell_ff reg_tap3_2_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_2_));

// atom is at LCCOMB_X60_Y27_N2
cycloneii_lcell_comb tap4_2__afeeder(
// Equation(s):
// tap4_2__afeeder_combout = tap3_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_2_),
	.cin(gnd),
	.combout(tap4_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_2__afeeder.lut_mask = 16'hFF00;
defparam tap4_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y27_N3
cycloneii_lcell_ff reg_tap4_2_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_2_));

// atom is at LCCOMB_X61_Y29_N0
cycloneii_lcell_comb o_data_add16_1_aix2247z52939(
// Equation(s):
// o_data_add16_1_anx37973z1 = sum3_add16_0_anx37973z1 & (tap4_2_ $ VCC) # !sum3_add16_0_anx37973z1 & tap4_2_ & VCC
// o_data_add16_1_anx2247z44 = CARRY(sum3_add16_0_anx37973z1 & tap4_2_)

	.dataa(sum3_add16_0_anx37973z1),
	.datab(tap4_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(o_data_add16_1_anx37973z1),
	.cout(o_data_add16_1_anx2247z44));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52939.lut_mask = 16'h6688;
defparam o_data_add16_1_aix2247z52939.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at PIN_F2
cycloneii_io i_data_ibuf_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_3_),
	.differentialout(),
	.linkout(),
	.padio(i_data[3]));
// synopsys translate_off
defparam i_data_ibuf_3_.input_async_reset = "none";
defparam i_data_ibuf_3_.input_power_up = "low";
defparam i_data_ibuf_3_.input_register_mode = "register";
defparam i_data_ibuf_3_.input_sync_reset = "none";
defparam i_data_ibuf_3_.oe_async_reset = "none";
defparam i_data_ibuf_3_.oe_power_up = "low";
defparam i_data_ibuf_3_.oe_register_mode = "none";
defparam i_data_ibuf_3_.oe_sync_reset = "none";
defparam i_data_ibuf_3_.operation_mode = "input";
defparam i_data_ibuf_3_.output_async_reset = "none";
defparam i_data_ibuf_3_.output_power_up = "low";
defparam i_data_ibuf_3_.output_register_mode = "none";
defparam i_data_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N5
cycloneii_lcell_ff reg_tap2_3_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_3_));

// atom is at LCCOMB_X62_Y27_N2
cycloneii_lcell_comb tap3_3__afeeder(
// Equation(s):
// tap3_3__afeeder_combout = tap2_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_3_),
	.cin(gnd),
	.combout(tap3_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_3__afeeder.lut_mask = 16'hFF00;
defparam tap3_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y27_N3
cycloneii_lcell_ff reg_tap3_3_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_3_));

// atom is at LCCOMB_X60_Y29_N2
cycloneii_lcell_comb sum3_add16_0_aix2247z52938(
// Equation(s):
// sum3_add16_0_anx38970z1 = sum2_add15_2_anx38970z1 & (tap3_3_ & sum3_add16_0_anx2247z43 & VCC # !tap3_3_ & !sum3_add16_0_anx2247z43) # !sum2_add15_2_anx38970z1 & (tap3_3_ & !sum3_add16_0_anx2247z43 # !tap3_3_ & (sum3_add16_0_anx2247z43 # GND))
// sum3_add16_0_anx2247z40 = CARRY(sum2_add15_2_anx38970z1 & !tap3_3_ & !sum3_add16_0_anx2247z43 # !sum2_add15_2_anx38970z1 & (!sum3_add16_0_anx2247z43 # !tap3_3_))

	.dataa(sum2_add15_2_anx38970z1),
	.datab(tap3_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z43),
	.combout(sum3_add16_0_anx38970z1),
	.cout(sum3_add16_0_anx2247z40));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52938.lut_mask = 16'h9617;
defparam sum3_add16_0_aix2247z52938.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y27_N8
cycloneii_lcell_comb tap4_3__afeeder(
// Equation(s):
// tap4_3__afeeder_combout = tap3_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_3_),
	.cin(gnd),
	.combout(tap4_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_3__afeeder.lut_mask = 16'hFF00;
defparam tap4_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y27_N9
cycloneii_lcell_ff reg_tap4_3_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_3_));

// atom is at LCCOMB_X61_Y29_N2
cycloneii_lcell_comb o_data_add16_1_aix2247z52938(
// Equation(s):
// o_data_add16_1_anx38970z1 = sum3_add16_0_anx38970z1 & (tap4_3_ & o_data_add16_1_anx2247z44 & VCC # !tap4_3_ & !o_data_add16_1_anx2247z44) # !sum3_add16_0_anx38970z1 & (tap4_3_ & !o_data_add16_1_anx2247z44 # !tap4_3_ & (o_data_add16_1_anx2247z44 # GND))
// o_data_add16_1_anx2247z41 = CARRY(sum3_add16_0_anx38970z1 & !tap4_3_ & !o_data_add16_1_anx2247z44 # !sum3_add16_0_anx38970z1 & (!o_data_add16_1_anx2247z44 # !tap4_3_))

	.dataa(sum3_add16_0_anx38970z1),
	.datab(tap4_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z44),
	.combout(o_data_add16_1_anx38970z1),
	.cout(o_data_add16_1_anx2247z41));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52938.lut_mask = 16'h9617;
defparam o_data_add16_1_aix2247z52938.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_F17
cycloneii_io i_data_ibuf_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_4_),
	.differentialout(),
	.linkout(),
	.padio(i_data[4]));
// synopsys translate_off
defparam i_data_ibuf_4_.input_async_reset = "none";
defparam i_data_ibuf_4_.input_power_up = "low";
defparam i_data_ibuf_4_.input_register_mode = "register";
defparam i_data_ibuf_4_.input_sync_reset = "none";
defparam i_data_ibuf_4_.oe_async_reset = "none";
defparam i_data_ibuf_4_.oe_power_up = "low";
defparam i_data_ibuf_4_.oe_register_mode = "none";
defparam i_data_ibuf_4_.oe_sync_reset = "none";
defparam i_data_ibuf_4_.operation_mode = "input";
defparam i_data_ibuf_4_.output_async_reset = "none";
defparam i_data_ibuf_4_.output_power_up = "low";
defparam i_data_ibuf_4_.output_register_mode = "none";
defparam i_data_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N7
cycloneii_lcell_ff reg_tap2_4_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_4_));

// atom is at LCCOMB_X60_Y28_N6
cycloneii_lcell_comb sum2_add15_2_aix1250z52936(
// Equation(s):
// sum2_add15_2_anx39967z1 = (tap1_4_ $ tap2_4_ $ !sum2_add15_2_anx1250z38) # GND
// sum2_add15_2_anx1250z35 = CARRY(tap1_4_ & (tap2_4_ # !sum2_add15_2_anx1250z38) # !tap1_4_ & tap2_4_ & !sum2_add15_2_anx1250z38)

	.dataa(tap1_4_),
	.datab(tap2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z38),
	.combout(sum2_add15_2_anx39967z1),
	.cout(sum2_add15_2_anx1250z35));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52936.lut_mask = 16'h698E;
defparam sum2_add15_2_aix1250z52936.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N4
cycloneii_lcell_comb sum3_add16_0_aix2247z52937(
// Equation(s):
// sum3_add16_0_anx39967z1 = (tap3_4_ $ sum2_add15_2_anx39967z1 $ !sum3_add16_0_anx2247z40) # GND
// sum3_add16_0_anx2247z37 = CARRY(tap3_4_ & (sum2_add15_2_anx39967z1 # !sum3_add16_0_anx2247z40) # !tap3_4_ & sum2_add15_2_anx39967z1 & !sum3_add16_0_anx2247z40)

	.dataa(tap3_4_),
	.datab(sum2_add15_2_anx39967z1),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z40),
	.combout(sum3_add16_0_anx39967z1),
	.cout(sum3_add16_0_anx2247z37));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52937.lut_mask = 16'h698E;
defparam sum3_add16_0_aix2247z52937.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X63_Y28_N2
cycloneii_lcell_comb tap3_4__afeeder(
// Equation(s):
// tap3_4__afeeder_combout = tap2_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_4_),
	.cin(gnd),
	.combout(tap3_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_4__afeeder.lut_mask = 16'hFF00;
defparam tap3_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X63_Y28_N3
cycloneii_lcell_ff reg_tap3_4_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_4_));

// atom is at LCCOMB_X63_Y28_N0
cycloneii_lcell_comb tap4_4__afeeder(
// Equation(s):
// tap4_4__afeeder_combout = tap3_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_4_),
	.cin(gnd),
	.combout(tap4_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_4__afeeder.lut_mask = 16'hFF00;
defparam tap4_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X63_Y28_N1
cycloneii_lcell_ff reg_tap4_4_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_4_));

// atom is at LCCOMB_X61_Y29_N4
cycloneii_lcell_comb o_data_add16_1_aix2247z52937(
// Equation(s):
// o_data_add16_1_anx39967z1 = (sum3_add16_0_anx39967z1 $ tap4_4_ $ !o_data_add16_1_anx2247z41) # GND
// o_data_add16_1_anx2247z38 = CARRY(sum3_add16_0_anx39967z1 & (tap4_4_ # !o_data_add16_1_anx2247z41) # !sum3_add16_0_anx39967z1 & tap4_4_ & !o_data_add16_1_anx2247z41)

	.dataa(sum3_add16_0_anx39967z1),
	.datab(tap4_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z41),
	.combout(o_data_add16_1_anx39967z1),
	.cout(o_data_add16_1_anx2247z38));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52937.lut_mask = 16'h698E;
defparam o_data_add16_1_aix2247z52937.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_J18
cycloneii_io i_data_ibuf_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_5_),
	.differentialout(),
	.linkout(),
	.padio(i_data[5]));
// synopsys translate_off
defparam i_data_ibuf_5_.input_async_reset = "none";
defparam i_data_ibuf_5_.input_power_up = "low";
defparam i_data_ibuf_5_.input_register_mode = "register";
defparam i_data_ibuf_5_.input_sync_reset = "none";
defparam i_data_ibuf_5_.oe_async_reset = "none";
defparam i_data_ibuf_5_.oe_power_up = "low";
defparam i_data_ibuf_5_.oe_register_mode = "none";
defparam i_data_ibuf_5_.oe_sync_reset = "none";
defparam i_data_ibuf_5_.operation_mode = "input";
defparam i_data_ibuf_5_.output_async_reset = "none";
defparam i_data_ibuf_5_.output_power_up = "low";
defparam i_data_ibuf_5_.output_register_mode = "none";
defparam i_data_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N9
cycloneii_lcell_ff reg_tap2_5_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_5_));

// atom is at LCFF_X59_Y28_N3
cycloneii_lcell_ff reg_tap3_5_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap2_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_5_));

// atom is at LCCOMB_X59_Y28_N0
cycloneii_lcell_comb tap4_5__afeeder(
// Equation(s):
// tap4_5__afeeder_combout = tap3_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_5_),
	.cin(gnd),
	.combout(tap4_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_5__afeeder.lut_mask = 16'hFF00;
defparam tap4_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X59_Y28_N1
cycloneii_lcell_ff reg_tap4_5_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_5_));

// atom is at LCCOMB_X60_Y28_N8
cycloneii_lcell_comb sum2_add15_2_aix1250z52935(
// Equation(s):
// sum2_add15_2_anx40964z1 = tap2_5_ & (tap1_5_ & sum2_add15_2_anx1250z35 & VCC # !tap1_5_ & !sum2_add15_2_anx1250z35) # !tap2_5_ & (tap1_5_ & !sum2_add15_2_anx1250z35 # !tap1_5_ & (sum2_add15_2_anx1250z35 # GND))
// sum2_add15_2_anx1250z32 = CARRY(tap2_5_ & !tap1_5_ & !sum2_add15_2_anx1250z35 # !tap2_5_ & (!sum2_add15_2_anx1250z35 # !tap1_5_))

	.dataa(tap2_5_),
	.datab(tap1_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z35),
	.combout(sum2_add15_2_anx40964z1),
	.cout(sum2_add15_2_anx1250z32));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52935.lut_mask = 16'h9617;
defparam sum2_add15_2_aix1250z52935.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N6
cycloneii_lcell_comb sum3_add16_0_aix2247z52936(
// Equation(s):
// sum3_add16_0_anx40964z1 = tap3_5_ & (sum2_add15_2_anx40964z1 & sum3_add16_0_anx2247z37 & VCC # !sum2_add15_2_anx40964z1 & !sum3_add16_0_anx2247z37) # !tap3_5_ & (sum2_add15_2_anx40964z1 & !sum3_add16_0_anx2247z37 # !sum2_add15_2_anx40964z1 & 
// (sum3_add16_0_anx2247z37 # GND))
// sum3_add16_0_anx2247z34 = CARRY(tap3_5_ & !sum2_add15_2_anx40964z1 & !sum3_add16_0_anx2247z37 # !tap3_5_ & (!sum3_add16_0_anx2247z37 # !sum2_add15_2_anx40964z1))

	.dataa(tap3_5_),
	.datab(sum2_add15_2_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z37),
	.combout(sum3_add16_0_anx40964z1),
	.cout(sum3_add16_0_anx2247z34));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52936.lut_mask = 16'h9617;
defparam sum3_add16_0_aix2247z52936.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y29_N6
cycloneii_lcell_comb o_data_add16_1_aix2247z52936(
// Equation(s):
// o_data_add16_1_anx40964z1 = tap4_5_ & (sum3_add16_0_anx40964z1 & o_data_add16_1_anx2247z38 & VCC # !sum3_add16_0_anx40964z1 & !o_data_add16_1_anx2247z38) # !tap4_5_ & (sum3_add16_0_anx40964z1 & !o_data_add16_1_anx2247z38 # !sum3_add16_0_anx40964z1 & 
// (o_data_add16_1_anx2247z38 # GND))
// o_data_add16_1_anx2247z35 = CARRY(tap4_5_ & !sum3_add16_0_anx40964z1 & !o_data_add16_1_anx2247z38 # !tap4_5_ & (!o_data_add16_1_anx2247z38 # !sum3_add16_0_anx40964z1))

	.dataa(tap4_5_),
	.datab(sum3_add16_0_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z38),
	.combout(o_data_add16_1_anx40964z1),
	.cout(o_data_add16_1_anx2247z35));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52936.lut_mask = 16'h9617;
defparam o_data_add16_1_aix2247z52936.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_A21
cycloneii_io i_data_ibuf_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_6_),
	.differentialout(),
	.linkout(),
	.padio(i_data[6]));
// synopsys translate_off
defparam i_data_ibuf_6_.input_async_reset = "none";
defparam i_data_ibuf_6_.input_power_up = "low";
defparam i_data_ibuf_6_.input_register_mode = "register";
defparam i_data_ibuf_6_.input_sync_reset = "none";
defparam i_data_ibuf_6_.oe_async_reset = "none";
defparam i_data_ibuf_6_.oe_power_up = "low";
defparam i_data_ibuf_6_.oe_register_mode = "none";
defparam i_data_ibuf_6_.oe_sync_reset = "none";
defparam i_data_ibuf_6_.operation_mode = "input";
defparam i_data_ibuf_6_.output_async_reset = "none";
defparam i_data_ibuf_6_.output_power_up = "low";
defparam i_data_ibuf_6_.output_register_mode = "none";
defparam i_data_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N11
cycloneii_lcell_ff reg_tap2_6_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_6_));

// atom is at LCCOMB_X60_Y28_N10
cycloneii_lcell_comb sum2_add15_2_aix1250z52934(
// Equation(s):
// sum2_add15_2_anx41961z1 = (tap1_6_ $ tap2_6_ $ !sum2_add15_2_anx1250z32) # GND
// sum2_add15_2_anx1250z29 = CARRY(tap1_6_ & (tap2_6_ # !sum2_add15_2_anx1250z32) # !tap1_6_ & tap2_6_ & !sum2_add15_2_anx1250z32)

	.dataa(tap1_6_),
	.datab(tap2_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z32),
	.combout(sum2_add15_2_anx41961z1),
	.cout(sum2_add15_2_anx1250z29));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52934.lut_mask = 16'h698E;
defparam sum2_add15_2_aix1250z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N8
cycloneii_lcell_comb sum3_add16_0_aix2247z52935(
// Equation(s):
// sum3_add16_0_anx41961z1 = (tap3_6_ $ sum2_add15_2_anx41961z1 $ !sum3_add16_0_anx2247z34) # GND
// sum3_add16_0_anx2247z31 = CARRY(tap3_6_ & (sum2_add15_2_anx41961z1 # !sum3_add16_0_anx2247z34) # !tap3_6_ & sum2_add15_2_anx41961z1 & !sum3_add16_0_anx2247z34)

	.dataa(tap3_6_),
	.datab(sum2_add15_2_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z34),
	.combout(sum3_add16_0_anx41961z1),
	.cout(sum3_add16_0_anx2247z31));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52935.lut_mask = 16'h698E;
defparam sum3_add16_0_aix2247z52935.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y26_N2
cycloneii_lcell_comb tap3_6__afeeder(
// Equation(s):
// tap3_6__afeeder_combout = tap2_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_6_),
	.cin(gnd),
	.combout(tap3_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_6__afeeder.lut_mask = 16'hFF00;
defparam tap3_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y26_N3
cycloneii_lcell_ff reg_tap3_6_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_6_));

// atom is at LCCOMB_X61_Y26_N8
cycloneii_lcell_comb tap4_6__afeeder(
// Equation(s):
// tap4_6__afeeder_combout = tap3_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_6_),
	.cin(gnd),
	.combout(tap4_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_6__afeeder.lut_mask = 16'hFF00;
defparam tap4_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y26_N9
cycloneii_lcell_ff reg_tap4_6_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_6_));

// atom is at LCCOMB_X61_Y29_N8
cycloneii_lcell_comb o_data_add16_1_aix2247z52935(
// Equation(s):
// o_data_add16_1_anx41961z1 = (sum3_add16_0_anx41961z1 $ tap4_6_ $ !o_data_add16_1_anx2247z35) # GND
// o_data_add16_1_anx2247z32 = CARRY(sum3_add16_0_anx41961z1 & (tap4_6_ # !o_data_add16_1_anx2247z35) # !sum3_add16_0_anx41961z1 & tap4_6_ & !o_data_add16_1_anx2247z35)

	.dataa(sum3_add16_0_anx41961z1),
	.datab(tap4_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z35),
	.combout(o_data_add16_1_anx41961z1),
	.cout(o_data_add16_1_anx2247z32));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52935.lut_mask = 16'h698E;
defparam o_data_add16_1_aix2247z52935.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_F25
cycloneii_io i_data_ibuf_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_7_),
	.differentialout(),
	.linkout(),
	.padio(i_data[7]));
// synopsys translate_off
defparam i_data_ibuf_7_.input_async_reset = "none";
defparam i_data_ibuf_7_.input_power_up = "low";
defparam i_data_ibuf_7_.input_register_mode = "register";
defparam i_data_ibuf_7_.input_sync_reset = "none";
defparam i_data_ibuf_7_.oe_async_reset = "none";
defparam i_data_ibuf_7_.oe_power_up = "low";
defparam i_data_ibuf_7_.oe_register_mode = "none";
defparam i_data_ibuf_7_.oe_sync_reset = "none";
defparam i_data_ibuf_7_.operation_mode = "input";
defparam i_data_ibuf_7_.output_async_reset = "none";
defparam i_data_ibuf_7_.output_power_up = "low";
defparam i_data_ibuf_7_.output_register_mode = "none";
defparam i_data_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N13
cycloneii_lcell_ff reg_tap2_7_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_7_));

// atom is at LCCOMB_X61_Y28_N2
cycloneii_lcell_comb tap3_7__afeeder(
// Equation(s):
// tap3_7__afeeder_combout = tap2_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_7_),
	.cin(gnd),
	.combout(tap3_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_7__afeeder.lut_mask = 16'hFF00;
defparam tap3_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y28_N3
cycloneii_lcell_ff reg_tap3_7_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_7_));

// atom is at LCCOMB_X60_Y29_N10
cycloneii_lcell_comb sum3_add16_0_aix2247z52934(
// Equation(s):
// sum3_add16_0_anx42958z1 = sum2_add15_2_anx42958z1 & (tap3_7_ & sum3_add16_0_anx2247z31 & VCC # !tap3_7_ & !sum3_add16_0_anx2247z31) # !sum2_add15_2_anx42958z1 & (tap3_7_ & !sum3_add16_0_anx2247z31 # !tap3_7_ & (sum3_add16_0_anx2247z31 # GND))
// sum3_add16_0_anx2247z28 = CARRY(sum2_add15_2_anx42958z1 & !tap3_7_ & !sum3_add16_0_anx2247z31 # !sum2_add15_2_anx42958z1 & (!sum3_add16_0_anx2247z31 # !tap3_7_))

	.dataa(sum2_add15_2_anx42958z1),
	.datab(tap3_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z31),
	.combout(sum3_add16_0_anx42958z1),
	.cout(sum3_add16_0_anx2247z28));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52934.lut_mask = 16'h9617;
defparam sum3_add16_0_aix2247z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y28_N0
cycloneii_lcell_comb tap4_7__afeeder(
// Equation(s):
// tap4_7__afeeder_combout = tap3_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_7_),
	.cin(gnd),
	.combout(tap4_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_7__afeeder.lut_mask = 16'hFF00;
defparam tap4_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y28_N1
cycloneii_lcell_ff reg_tap4_7_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_7_));

// atom is at LCCOMB_X61_Y29_N10
cycloneii_lcell_comb o_data_add16_1_aix2247z52934(
// Equation(s):
// o_data_add16_1_anx42958z1 = sum3_add16_0_anx42958z1 & (tap4_7_ & o_data_add16_1_anx2247z32 & VCC # !tap4_7_ & !o_data_add16_1_anx2247z32) # !sum3_add16_0_anx42958z1 & (tap4_7_ & !o_data_add16_1_anx2247z32 # !tap4_7_ & (o_data_add16_1_anx2247z32 # GND))
// o_data_add16_1_anx2247z29 = CARRY(sum3_add16_0_anx42958z1 & !tap4_7_ & !o_data_add16_1_anx2247z32 # !sum3_add16_0_anx42958z1 & (!o_data_add16_1_anx2247z32 # !tap4_7_))

	.dataa(sum3_add16_0_anx42958z1),
	.datab(tap4_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z32),
	.combout(o_data_add16_1_anx42958z1),
	.cout(o_data_add16_1_anx2247z29));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52934.lut_mask = 16'h9617;
defparam o_data_add16_1_aix2247z52934.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_A20
cycloneii_io i_data_ibuf_8_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_8_),
	.differentialout(),
	.linkout(),
	.padio(i_data[8]));
// synopsys translate_off
defparam i_data_ibuf_8_.input_async_reset = "none";
defparam i_data_ibuf_8_.input_power_up = "low";
defparam i_data_ibuf_8_.input_register_mode = "register";
defparam i_data_ibuf_8_.input_sync_reset = "none";
defparam i_data_ibuf_8_.oe_async_reset = "none";
defparam i_data_ibuf_8_.oe_power_up = "low";
defparam i_data_ibuf_8_.oe_register_mode = "none";
defparam i_data_ibuf_8_.oe_sync_reset = "none";
defparam i_data_ibuf_8_.operation_mode = "input";
defparam i_data_ibuf_8_.output_async_reset = "none";
defparam i_data_ibuf_8_.output_power_up = "low";
defparam i_data_ibuf_8_.output_register_mode = "none";
defparam i_data_ibuf_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N15
cycloneii_lcell_ff reg_tap2_8_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_8_));

// atom is at LCCOMB_X61_Y27_N2
cycloneii_lcell_comb tap3_8__afeeder(
// Equation(s):
// tap3_8__afeeder_combout = tap2_8_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_8_),
	.cin(gnd),
	.combout(tap3_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_8__afeeder.lut_mask = 16'hFF00;
defparam tap3_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y27_N3
cycloneii_lcell_ff reg_tap3_8_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_8__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_8_));

// atom is at LCCOMB_X60_Y29_N12
cycloneii_lcell_comb sum3_add16_0_aix2247z52933(
// Equation(s):
// sum3_add16_0_anx43955z1 = (sum2_add15_2_anx43955z1 $ tap3_8_ $ !sum3_add16_0_anx2247z28) # GND
// sum3_add16_0_anx2247z25 = CARRY(sum2_add15_2_anx43955z1 & (tap3_8_ # !sum3_add16_0_anx2247z28) # !sum2_add15_2_anx43955z1 & tap3_8_ & !sum3_add16_0_anx2247z28)

	.dataa(sum2_add15_2_anx43955z1),
	.datab(tap3_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z28),
	.combout(sum3_add16_0_anx43955z1),
	.cout(sum3_add16_0_anx2247z25));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52933.lut_mask = 16'h698E;
defparam sum3_add16_0_aix2247z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y27_N24
cycloneii_lcell_comb tap4_8__afeeder(
// Equation(s):
// tap4_8__afeeder_combout = tap3_8_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_8_),
	.cin(gnd),
	.combout(tap4_8__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_8__afeeder.lut_mask = 16'hFF00;
defparam tap4_8__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y27_N25
cycloneii_lcell_ff reg_tap4_8_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_8__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_8_));

// atom is at LCCOMB_X61_Y29_N12
cycloneii_lcell_comb o_data_add16_1_aix2247z52933(
// Equation(s):
// o_data_add16_1_anx43955z1 = (sum3_add16_0_anx43955z1 $ tap4_8_ $ !o_data_add16_1_anx2247z29) # GND
// o_data_add16_1_anx2247z26 = CARRY(sum3_add16_0_anx43955z1 & (tap4_8_ # !o_data_add16_1_anx2247z29) # !sum3_add16_0_anx43955z1 & tap4_8_ & !o_data_add16_1_anx2247z29)

	.dataa(sum3_add16_0_anx43955z1),
	.datab(tap4_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z29),
	.combout(o_data_add16_1_anx43955z1),
	.cout(o_data_add16_1_anx2247z26));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52933.lut_mask = 16'h698E;
defparam o_data_add16_1_aix2247z52933.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_C22
cycloneii_io i_data_ibuf_9_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_9_),
	.differentialout(),
	.linkout(),
	.padio(i_data[9]));
// synopsys translate_off
defparam i_data_ibuf_9_.input_async_reset = "none";
defparam i_data_ibuf_9_.input_power_up = "low";
defparam i_data_ibuf_9_.input_register_mode = "register";
defparam i_data_ibuf_9_.input_sync_reset = "none";
defparam i_data_ibuf_9_.oe_async_reset = "none";
defparam i_data_ibuf_9_.oe_power_up = "low";
defparam i_data_ibuf_9_.oe_register_mode = "none";
defparam i_data_ibuf_9_.oe_sync_reset = "none";
defparam i_data_ibuf_9_.operation_mode = "input";
defparam i_data_ibuf_9_.output_async_reset = "none";
defparam i_data_ibuf_9_.output_power_up = "low";
defparam i_data_ibuf_9_.output_register_mode = "none";
defparam i_data_ibuf_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N17
cycloneii_lcell_ff reg_tap2_9_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_9_));

// atom is at LCCOMB_X62_Y29_N2
cycloneii_lcell_comb tap3_9__afeeder(
// Equation(s):
// tap3_9__afeeder_combout = tap2_9_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_9_),
	.cin(gnd),
	.combout(tap3_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_9__afeeder.lut_mask = 16'hFF00;
defparam tap3_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y29_N3
cycloneii_lcell_ff reg_tap3_9_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_9__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_9_));

// atom is at LCCOMB_X60_Y29_N14
cycloneii_lcell_comb sum3_add16_0_aix2247z52932(
// Equation(s):
// sum3_add16_0_anx44952z1 = sum2_add15_2_anx44952z1 & (tap3_9_ & sum3_add16_0_anx2247z25 & VCC # !tap3_9_ & !sum3_add16_0_anx2247z25) # !sum2_add15_2_anx44952z1 & (tap3_9_ & !sum3_add16_0_anx2247z25 # !tap3_9_ & (sum3_add16_0_anx2247z25 # GND))
// sum3_add16_0_anx2247z22 = CARRY(sum2_add15_2_anx44952z1 & !tap3_9_ & !sum3_add16_0_anx2247z25 # !sum2_add15_2_anx44952z1 & (!sum3_add16_0_anx2247z25 # !tap3_9_))

	.dataa(sum2_add15_2_anx44952z1),
	.datab(tap3_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z25),
	.combout(sum3_add16_0_anx44952z1),
	.cout(sum3_add16_0_anx2247z22));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52932.lut_mask = 16'h9617;
defparam sum3_add16_0_aix2247z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X62_Y29_N0
cycloneii_lcell_comb tap4_9__afeeder(
// Equation(s):
// tap4_9__afeeder_combout = tap3_9_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_9_),
	.cin(gnd),
	.combout(tap4_9__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_9__afeeder.lut_mask = 16'hFF00;
defparam tap4_9__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y29_N1
cycloneii_lcell_ff reg_tap4_9_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_9__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_9_));

// atom is at LCCOMB_X61_Y29_N14
cycloneii_lcell_comb o_data_add16_1_aix2247z52932(
// Equation(s):
// o_data_add16_1_anx44952z1 = sum3_add16_0_anx44952z1 & (tap4_9_ & o_data_add16_1_anx2247z26 & VCC # !tap4_9_ & !o_data_add16_1_anx2247z26) # !sum3_add16_0_anx44952z1 & (tap4_9_ & !o_data_add16_1_anx2247z26 # !tap4_9_ & (o_data_add16_1_anx2247z26 # GND))
// o_data_add16_1_anx2247z23 = CARRY(sum3_add16_0_anx44952z1 & !tap4_9_ & !o_data_add16_1_anx2247z26 # !sum3_add16_0_anx44952z1 & (!o_data_add16_1_anx2247z26 # !tap4_9_))

	.dataa(sum3_add16_0_anx44952z1),
	.datab(tap4_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z26),
	.combout(o_data_add16_1_anx44952z1),
	.cout(o_data_add16_1_anx2247z23));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52932.lut_mask = 16'h9617;
defparam o_data_add16_1_aix2247z52932.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_AE22
cycloneii_io i_data_ibuf_10_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_10_),
	.differentialout(),
	.linkout(),
	.padio(i_data[10]));
// synopsys translate_off
defparam i_data_ibuf_10_.input_async_reset = "none";
defparam i_data_ibuf_10_.input_power_up = "low";
defparam i_data_ibuf_10_.input_register_mode = "register";
defparam i_data_ibuf_10_.input_sync_reset = "none";
defparam i_data_ibuf_10_.oe_async_reset = "none";
defparam i_data_ibuf_10_.oe_power_up = "low";
defparam i_data_ibuf_10_.oe_register_mode = "none";
defparam i_data_ibuf_10_.oe_sync_reset = "none";
defparam i_data_ibuf_10_.operation_mode = "input";
defparam i_data_ibuf_10_.output_async_reset = "none";
defparam i_data_ibuf_10_.output_power_up = "low";
defparam i_data_ibuf_10_.output_register_mode = "none";
defparam i_data_ibuf_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N19
cycloneii_lcell_ff reg_tap2_10_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_10_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_10_));

// atom is at LCCOMB_X60_Y28_N18
cycloneii_lcell_comb sum2_add15_2_aix1250z52930(
// Equation(s):
// sum2_add15_2_anx45949z1 = (tap1_10_ $ tap2_10_ $ !sum2_add15_2_anx1250z20) # GND
// sum2_add15_2_anx1250z17 = CARRY(tap1_10_ & (tap2_10_ # !sum2_add15_2_anx1250z20) # !tap1_10_ & tap2_10_ & !sum2_add15_2_anx1250z20)

	.dataa(tap1_10_),
	.datab(tap2_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z20),
	.combout(sum2_add15_2_anx45949z1),
	.cout(sum2_add15_2_anx1250z17));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52930.lut_mask = 16'h698E;
defparam sum2_add15_2_aix1250z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N16
cycloneii_lcell_comb sum3_add16_0_aix2247z52931(
// Equation(s):
// sum3_add16_0_anx45949z1 = (tap3_10_ $ sum2_add15_2_anx45949z1 $ !sum3_add16_0_anx2247z22) # GND
// sum3_add16_0_anx2247z19 = CARRY(tap3_10_ & (sum2_add15_2_anx45949z1 # !sum3_add16_0_anx2247z22) # !tap3_10_ & sum2_add15_2_anx45949z1 & !sum3_add16_0_anx2247z22)

	.dataa(tap3_10_),
	.datab(sum2_add15_2_anx45949z1),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z22),
	.combout(sum3_add16_0_anx45949z1),
	.cout(sum3_add16_0_anx2247z19));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52931.lut_mask = 16'h698E;
defparam sum3_add16_0_aix2247z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X64_Y28_N2
cycloneii_lcell_comb tap3_10__afeeder(
// Equation(s):
// tap3_10__afeeder_combout = tap2_10_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_10_),
	.cin(gnd),
	.combout(tap3_10__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_10__afeeder.lut_mask = 16'hFF00;
defparam tap3_10__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y28_N3
cycloneii_lcell_ff reg_tap3_10_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_10__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_10_));

// atom is at LCCOMB_X64_Y28_N0
cycloneii_lcell_comb tap4_10__afeeder(
// Equation(s):
// tap4_10__afeeder_combout = tap3_10_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_10_),
	.cin(gnd),
	.combout(tap4_10__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_10__afeeder.lut_mask = 16'hFF00;
defparam tap4_10__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X64_Y28_N1
cycloneii_lcell_ff reg_tap4_10_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_10__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_10_));

// atom is at LCCOMB_X61_Y29_N16
cycloneii_lcell_comb o_data_add16_1_aix2247z52931(
// Equation(s):
// o_data_add16_1_anx45949z1 = (sum3_add16_0_anx45949z1 $ tap4_10_ $ !o_data_add16_1_anx2247z23) # GND
// o_data_add16_1_anx2247z20 = CARRY(sum3_add16_0_anx45949z1 & (tap4_10_ # !o_data_add16_1_anx2247z23) # !sum3_add16_0_anx45949z1 & tap4_10_ & !o_data_add16_1_anx2247z23)

	.dataa(sum3_add16_0_anx45949z1),
	.datab(tap4_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z23),
	.combout(o_data_add16_1_anx45949z1),
	.cout(o_data_add16_1_anx2247z20));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52931.lut_mask = 16'h698E;
defparam o_data_add16_1_aix2247z52931.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_B23
cycloneii_io i_data_ibuf_11_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_11_),
	.differentialout(),
	.linkout(),
	.padio(i_data[11]));
// synopsys translate_off
defparam i_data_ibuf_11_.input_async_reset = "none";
defparam i_data_ibuf_11_.input_power_up = "low";
defparam i_data_ibuf_11_.input_register_mode = "register";
defparam i_data_ibuf_11_.input_sync_reset = "none";
defparam i_data_ibuf_11_.oe_async_reset = "none";
defparam i_data_ibuf_11_.oe_power_up = "low";
defparam i_data_ibuf_11_.oe_register_mode = "none";
defparam i_data_ibuf_11_.oe_sync_reset = "none";
defparam i_data_ibuf_11_.operation_mode = "input";
defparam i_data_ibuf_11_.output_async_reset = "none";
defparam i_data_ibuf_11_.output_power_up = "low";
defparam i_data_ibuf_11_.output_register_mode = "none";
defparam i_data_ibuf_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N21
cycloneii_lcell_ff reg_tap2_11_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_11_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_11_));

// atom is at LCCOMB_X62_Y28_N2
cycloneii_lcell_comb tap3_11__afeeder(
// Equation(s):
// tap3_11__afeeder_combout = tap2_11_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_11_),
	.cin(gnd),
	.combout(tap3_11__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_11__afeeder.lut_mask = 16'hFF00;
defparam tap3_11__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y28_N3
cycloneii_lcell_ff reg_tap3_11_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_11__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_11_));

// atom is at LCCOMB_X62_Y28_N0
cycloneii_lcell_comb tap4_11__afeeder(
// Equation(s):
// tap4_11__afeeder_combout = tap3_11_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_11_),
	.cin(gnd),
	.combout(tap4_11__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_11__afeeder.lut_mask = 16'hFF00;
defparam tap4_11__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X62_Y28_N1
cycloneii_lcell_ff reg_tap4_11_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_11__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_11_));

// atom is at LCCOMB_X60_Y28_N20
cycloneii_lcell_comb sum2_add15_2_aix1250z52929(
// Equation(s):
// sum2_add15_2_anx46946z1 = tap2_11_ & (tap1_11_ & sum2_add15_2_anx1250z17 & VCC # !tap1_11_ & !sum2_add15_2_anx1250z17) # !tap2_11_ & (tap1_11_ & !sum2_add15_2_anx1250z17 # !tap1_11_ & (sum2_add15_2_anx1250z17 # GND))
// sum2_add15_2_anx1250z14 = CARRY(tap2_11_ & !tap1_11_ & !sum2_add15_2_anx1250z17 # !tap2_11_ & (!sum2_add15_2_anx1250z17 # !tap1_11_))

	.dataa(tap2_11_),
	.datab(tap1_11_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z17),
	.combout(sum2_add15_2_anx46946z1),
	.cout(sum2_add15_2_anx1250z14));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52929.lut_mask = 16'h9617;
defparam sum2_add15_2_aix1250z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N18
cycloneii_lcell_comb sum3_add16_0_aix2247z52930(
// Equation(s):
// sum3_add16_0_anx46946z1 = tap3_11_ & (sum2_add15_2_anx46946z1 & sum3_add16_0_anx2247z19 & VCC # !sum2_add15_2_anx46946z1 & !sum3_add16_0_anx2247z19) # !tap3_11_ & (sum2_add15_2_anx46946z1 & !sum3_add16_0_anx2247z19 # !sum2_add15_2_anx46946z1 & 
// (sum3_add16_0_anx2247z19 # GND))
// sum3_add16_0_anx2247z16 = CARRY(tap3_11_ & !sum2_add15_2_anx46946z1 & !sum3_add16_0_anx2247z19 # !tap3_11_ & (!sum3_add16_0_anx2247z19 # !sum2_add15_2_anx46946z1))

	.dataa(tap3_11_),
	.datab(sum2_add15_2_anx46946z1),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z19),
	.combout(sum3_add16_0_anx46946z1),
	.cout(sum3_add16_0_anx2247z16));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52930.lut_mask = 16'h9617;
defparam sum3_add16_0_aix2247z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y29_N18
cycloneii_lcell_comb o_data_add16_1_aix2247z52930(
// Equation(s):
// o_data_add16_1_anx46946z1 = tap4_11_ & (sum3_add16_0_anx46946z1 & o_data_add16_1_anx2247z20 & VCC # !sum3_add16_0_anx46946z1 & !o_data_add16_1_anx2247z20) # !tap4_11_ & (sum3_add16_0_anx46946z1 & !o_data_add16_1_anx2247z20 # !sum3_add16_0_anx46946z1 & 
// (o_data_add16_1_anx2247z20 # GND))
// o_data_add16_1_anx2247z17 = CARRY(tap4_11_ & !sum3_add16_0_anx46946z1 & !o_data_add16_1_anx2247z20 # !tap4_11_ & (!o_data_add16_1_anx2247z20 # !sum3_add16_0_anx46946z1))

	.dataa(tap4_11_),
	.datab(sum3_add16_0_anx46946z1),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z20),
	.combout(o_data_add16_1_anx46946z1),
	.cout(o_data_add16_1_anx2247z17));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52930.lut_mask = 16'h9617;
defparam o_data_add16_1_aix2247z52930.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_AD23
cycloneii_io i_data_ibuf_12_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_12_),
	.differentialout(),
	.linkout(),
	.padio(i_data[12]));
// synopsys translate_off
defparam i_data_ibuf_12_.input_async_reset = "none";
defparam i_data_ibuf_12_.input_power_up = "low";
defparam i_data_ibuf_12_.input_register_mode = "register";
defparam i_data_ibuf_12_.input_sync_reset = "none";
defparam i_data_ibuf_12_.oe_async_reset = "none";
defparam i_data_ibuf_12_.oe_power_up = "low";
defparam i_data_ibuf_12_.oe_register_mode = "none";
defparam i_data_ibuf_12_.oe_sync_reset = "none";
defparam i_data_ibuf_12_.operation_mode = "input";
defparam i_data_ibuf_12_.output_async_reset = "none";
defparam i_data_ibuf_12_.output_power_up = "low";
defparam i_data_ibuf_12_.output_register_mode = "none";
defparam i_data_ibuf_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N23
cycloneii_lcell_ff reg_tap2_12_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_12_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_12_));

// atom is at LCCOMB_X60_Y28_N22
cycloneii_lcell_comb sum2_add15_2_aix1250z52928(
// Equation(s):
// sum2_add15_2_anx62798z1 = (tap1_12_ $ tap2_12_ $ !sum2_add15_2_anx1250z14) # GND
// sum2_add15_2_anx1250z11 = CARRY(tap1_12_ & (tap2_12_ # !sum2_add15_2_anx1250z14) # !tap1_12_ & tap2_12_ & !sum2_add15_2_anx1250z14)

	.dataa(tap1_12_),
	.datab(tap2_12_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z14),
	.combout(sum2_add15_2_anx62798z1),
	.cout(sum2_add15_2_anx1250z11));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52928.lut_mask = 16'h698E;
defparam sum2_add15_2_aix1250z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N20
cycloneii_lcell_comb sum3_add16_0_aix2247z52929(
// Equation(s):
// sum3_add16_0_anx62798z1 = (tap3_12_ $ sum2_add15_2_anx62798z1 $ !sum3_add16_0_anx2247z16) # GND
// sum3_add16_0_anx2247z13 = CARRY(tap3_12_ & (sum2_add15_2_anx62798z1 # !sum3_add16_0_anx2247z16) # !tap3_12_ & sum2_add15_2_anx62798z1 & !sum3_add16_0_anx2247z16)

	.dataa(tap3_12_),
	.datab(sum2_add15_2_anx62798z1),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z16),
	.combout(sum3_add16_0_anx62798z1),
	.cout(sum3_add16_0_anx2247z13));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52929.lut_mask = 16'h698E;
defparam sum3_add16_0_aix2247z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y30_N2
cycloneii_lcell_comb tap3_12__afeeder(
// Equation(s):
// tap3_12__afeeder_combout = tap2_12_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_12_),
	.cin(gnd),
	.combout(tap3_12__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_12__afeeder.lut_mask = 16'hFF00;
defparam tap3_12__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y30_N3
cycloneii_lcell_ff reg_tap3_12_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_12__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_12_));

// atom is at LCCOMB_X60_Y30_N16
cycloneii_lcell_comb tap4_12__afeeder(
// Equation(s):
// tap4_12__afeeder_combout = tap3_12_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_12_),
	.cin(gnd),
	.combout(tap4_12__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_12__afeeder.lut_mask = 16'hFF00;
defparam tap4_12__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y30_N17
cycloneii_lcell_ff reg_tap4_12_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_12__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_12_));

// atom is at LCCOMB_X61_Y29_N20
cycloneii_lcell_comb o_data_add16_1_aix2247z52929(
// Equation(s):
// o_data_add16_1_anx62798z1 = (sum3_add16_0_anx62798z1 $ tap4_12_ $ !o_data_add16_1_anx2247z17) # GND
// o_data_add16_1_anx2247z14 = CARRY(sum3_add16_0_anx62798z1 & (tap4_12_ # !o_data_add16_1_anx2247z17) # !sum3_add16_0_anx62798z1 & tap4_12_ & !o_data_add16_1_anx2247z17)

	.dataa(sum3_add16_0_anx62798z1),
	.datab(tap4_12_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z17),
	.combout(o_data_add16_1_anx62798z1),
	.cout(o_data_add16_1_anx2247z14));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52929.lut_mask = 16'h698E;
defparam o_data_add16_1_aix2247z52929.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_D21
cycloneii_io i_data_ibuf_13_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_13_),
	.differentialout(),
	.linkout(),
	.padio(i_data[13]));
// synopsys translate_off
defparam i_data_ibuf_13_.input_async_reset = "none";
defparam i_data_ibuf_13_.input_power_up = "low";
defparam i_data_ibuf_13_.input_register_mode = "register";
defparam i_data_ibuf_13_.input_sync_reset = "none";
defparam i_data_ibuf_13_.oe_async_reset = "none";
defparam i_data_ibuf_13_.oe_power_up = "low";
defparam i_data_ibuf_13_.oe_register_mode = "none";
defparam i_data_ibuf_13_.oe_sync_reset = "none";
defparam i_data_ibuf_13_.operation_mode = "input";
defparam i_data_ibuf_13_.output_async_reset = "none";
defparam i_data_ibuf_13_.output_power_up = "low";
defparam i_data_ibuf_13_.output_register_mode = "none";
defparam i_data_ibuf_13_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N25
cycloneii_lcell_ff reg_tap2_13_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_13_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_13_));

// atom is at LCFF_X61_Y30_N3
cycloneii_lcell_ff reg_tap3_13_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap2_13_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_13_));

// atom is at LCCOMB_X61_Y30_N16
cycloneii_lcell_comb tap4_13__afeeder(
// Equation(s):
// tap4_13__afeeder_combout = tap3_13_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_13_),
	.cin(gnd),
	.combout(tap4_13__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_13__afeeder.lut_mask = 16'hFF00;
defparam tap4_13__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y30_N17
cycloneii_lcell_ff reg_tap4_13_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_13__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_13_));

// atom is at LCCOMB_X60_Y29_N22
cycloneii_lcell_comb sum3_add16_0_aix2247z52928(
// Equation(s):
// sum3_add16_0_anx63795z1 = sum2_add15_2_anx63795z1 & (tap3_13_ & sum3_add16_0_anx2247z13 & VCC # !tap3_13_ & !sum3_add16_0_anx2247z13) # !sum2_add15_2_anx63795z1 & (tap3_13_ & !sum3_add16_0_anx2247z13 # !tap3_13_ & (sum3_add16_0_anx2247z13 # GND))
// sum3_add16_0_anx2247z10 = CARRY(sum2_add15_2_anx63795z1 & !tap3_13_ & !sum3_add16_0_anx2247z13 # !sum2_add15_2_anx63795z1 & (!sum3_add16_0_anx2247z13 # !tap3_13_))

	.dataa(sum2_add15_2_anx63795z1),
	.datab(tap3_13_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z13),
	.combout(sum3_add16_0_anx63795z1),
	.cout(sum3_add16_0_anx2247z10));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52928.lut_mask = 16'h9617;
defparam sum3_add16_0_aix2247z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y29_N22
cycloneii_lcell_comb o_data_add16_1_aix2247z52928(
// Equation(s):
// o_data_add16_1_anx63795z1 = tap4_13_ & (sum3_add16_0_anx63795z1 & o_data_add16_1_anx2247z14 & VCC # !sum3_add16_0_anx63795z1 & !o_data_add16_1_anx2247z14) # !tap4_13_ & (sum3_add16_0_anx63795z1 & !o_data_add16_1_anx2247z14 # !sum3_add16_0_anx63795z1 & 
// (o_data_add16_1_anx2247z14 # GND))
// o_data_add16_1_anx2247z11 = CARRY(tap4_13_ & !sum3_add16_0_anx63795z1 & !o_data_add16_1_anx2247z14 # !tap4_13_ & (!o_data_add16_1_anx2247z14 # !sum3_add16_0_anx63795z1))

	.dataa(tap4_13_),
	.datab(sum3_add16_0_anx63795z1),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z14),
	.combout(o_data_add16_1_anx63795z1),
	.cout(o_data_add16_1_anx2247z11));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52928.lut_mask = 16'h9617;
defparam o_data_add16_1_aix2247z52928.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_G22
cycloneii_io i_data_ibuf_14_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_14_),
	.differentialout(),
	.linkout(),
	.padio(i_data[14]));
// synopsys translate_off
defparam i_data_ibuf_14_.input_async_reset = "none";
defparam i_data_ibuf_14_.input_power_up = "low";
defparam i_data_ibuf_14_.input_register_mode = "register";
defparam i_data_ibuf_14_.input_sync_reset = "none";
defparam i_data_ibuf_14_.oe_async_reset = "none";
defparam i_data_ibuf_14_.oe_power_up = "low";
defparam i_data_ibuf_14_.oe_register_mode = "none";
defparam i_data_ibuf_14_.oe_sync_reset = "none";
defparam i_data_ibuf_14_.operation_mode = "input";
defparam i_data_ibuf_14_.output_async_reset = "none";
defparam i_data_ibuf_14_.output_power_up = "low";
defparam i_data_ibuf_14_.output_register_mode = "none";
defparam i_data_ibuf_14_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N27
cycloneii_lcell_ff reg_tap2_14_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_14_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_14_));

// atom is at LCCOMB_X61_Y31_N18
cycloneii_lcell_comb tap3_14__afeeder(
// Equation(s):
// tap3_14__afeeder_combout = tap2_14_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_14_),
	.cin(gnd),
	.combout(tap3_14__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_14__afeeder.lut_mask = 16'hFF00;
defparam tap3_14__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y31_N19
cycloneii_lcell_ff reg_tap3_14_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_14__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_14_));

// atom is at LCCOMB_X61_Y31_N16
cycloneii_lcell_comb tap4_14__afeeder(
// Equation(s):
// tap4_14__afeeder_combout = tap3_14_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_14_),
	.cin(gnd),
	.combout(tap4_14__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_14__afeeder.lut_mask = 16'hFF00;
defparam tap4_14__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X61_Y31_N17
cycloneii_lcell_ff reg_tap4_14_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_14__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_14_));

// atom is at LCCOMB_X60_Y28_N26
cycloneii_lcell_comb sum2_add15_2_aix1250z52926(
// Equation(s):
// sum2_add15_2_anx64792z1 = (tap1_14_ $ tap2_14_ $ !sum2_add15_2_anx1250z8) # GND
// sum2_add15_2_anx1250z5 = CARRY(tap1_14_ & (tap2_14_ # !sum2_add15_2_anx1250z8) # !tap1_14_ & tap2_14_ & !sum2_add15_2_anx1250z8)

	.dataa(tap1_14_),
	.datab(tap2_14_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum2_add15_2_anx1250z8),
	.combout(sum2_add15_2_anx64792z1),
	.cout(sum2_add15_2_anx1250z5));
// synopsys translate_off
defparam sum2_add15_2_aix1250z52926.lut_mask = 16'h698E;
defparam sum2_add15_2_aix1250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N24
cycloneii_lcell_comb sum3_add16_0_aix2247z52927(
// Equation(s):
// sum3_add16_0_anx64792z1 = (tap3_14_ $ sum2_add15_2_anx64792z1 $ !sum3_add16_0_anx2247z10) # GND
// sum3_add16_0_anx2247z7 = CARRY(tap3_14_ & (sum2_add15_2_anx64792z1 # !sum3_add16_0_anx2247z10) # !tap3_14_ & sum2_add15_2_anx64792z1 & !sum3_add16_0_anx2247z10)

	.dataa(tap3_14_),
	.datab(sum2_add15_2_anx64792z1),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z10),
	.combout(sum3_add16_0_anx64792z1),
	.cout(sum3_add16_0_anx2247z7));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52927.lut_mask = 16'h698E;
defparam sum3_add16_0_aix2247z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y29_N24
cycloneii_lcell_comb o_data_add16_1_aix2247z52927(
// Equation(s):
// o_data_add16_1_anx64792z1 = (tap4_14_ $ sum3_add16_0_anx64792z1 $ !o_data_add16_1_anx2247z11) # GND
// o_data_add16_1_anx2247z8 = CARRY(tap4_14_ & (sum3_add16_0_anx64792z1 # !o_data_add16_1_anx2247z11) # !tap4_14_ & sum3_add16_0_anx64792z1 & !o_data_add16_1_anx2247z11)

	.dataa(tap4_14_),
	.datab(sum3_add16_0_anx64792z1),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z11),
	.combout(o_data_add16_1_anx64792z1),
	.cout(o_data_add16_1_anx2247z8));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52927.lut_mask = 16'h698E;
defparam o_data_add16_1_aix2247z52927.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_A23
cycloneii_io i_data_ibuf_15_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(clk_aclkctrl_outclk),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(tap1_15_),
	.differentialout(),
	.linkout(),
	.padio(i_data[15]));
// synopsys translate_off
defparam i_data_ibuf_15_.input_async_reset = "none";
defparam i_data_ibuf_15_.input_power_up = "low";
defparam i_data_ibuf_15_.input_register_mode = "register";
defparam i_data_ibuf_15_.input_sync_reset = "none";
defparam i_data_ibuf_15_.oe_async_reset = "none";
defparam i_data_ibuf_15_.oe_power_up = "low";
defparam i_data_ibuf_15_.oe_register_mode = "none";
defparam i_data_ibuf_15_.oe_sync_reset = "none";
defparam i_data_ibuf_15_.operation_mode = "input";
defparam i_data_ibuf_15_.output_async_reset = "none";
defparam i_data_ibuf_15_.output_power_up = "low";
defparam i_data_ibuf_15_.output_register_mode = "none";
defparam i_data_ibuf_15_.output_sync_reset = "none";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N29
cycloneii_lcell_ff reg_tap2_15_(
	.clk(clk_aclkctrl_outclk),
	.datain(gnd),
	.sdata(tap1_15_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap2_15_));

// atom is at LCCOMB_X60_Y28_N0
cycloneii_lcell_comb tap3_15__afeeder(
// Equation(s):
// tap3_15__afeeder_combout = tap2_15_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap2_15_),
	.cin(gnd),
	.combout(tap3_15__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap3_15__afeeder.lut_mask = 16'hFF00;
defparam tap3_15__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X60_Y28_N1
cycloneii_lcell_ff reg_tap3_15_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap3_15__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap3_15_));

// atom is at LCCOMB_X60_Y29_N26
cycloneii_lcell_comb sum3_add16_0_aix2247z52926(
// Equation(s):
// sum3_add16_0_anx253z1 = sum2_add15_2_anx253z1 & (tap3_15_ & sum3_add16_0_anx2247z7 & VCC # !tap3_15_ & !sum3_add16_0_anx2247z7) # !sum2_add15_2_anx253z1 & (tap3_15_ & !sum3_add16_0_anx2247z7 # !tap3_15_ & (sum3_add16_0_anx2247z7 # GND))
// sum3_add16_0_anx2247z5 = CARRY(sum2_add15_2_anx253z1 & !tap3_15_ & !sum3_add16_0_anx2247z7 # !sum2_add15_2_anx253z1 & (!sum3_add16_0_anx2247z7 # !tap3_15_))

	.dataa(sum2_add15_2_anx253z1),
	.datab(tap3_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z7),
	.combout(sum3_add16_0_anx253z1),
	.cout(sum3_add16_0_anx2247z5));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52926.lut_mask = 16'h9617;
defparam sum3_add16_0_aix2247z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X63_Y27_N0
cycloneii_lcell_comb tap4_15__afeeder(
// Equation(s):
// tap4_15__afeeder_combout = tap3_15_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(tap3_15_),
	.cin(gnd),
	.combout(tap4_15__afeeder_combout),
	.cout());
// synopsys translate_off
defparam tap4_15__afeeder.lut_mask = 16'hFF00;
defparam tap4_15__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// atom is at LCFF_X63_Y27_N1
cycloneii_lcell_ff reg_tap4_15_(
	.clk(clk_aclkctrl_outclk),
	.datain(tap4_15__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(tap4_15_));

// atom is at LCCOMB_X61_Y29_N26
cycloneii_lcell_comb o_data_add16_1_aix2247z52926(
// Equation(s):
// o_data_add16_1_anx253z1 = sum3_add16_0_anx253z1 & (tap4_15_ & o_data_add16_1_anx2247z8 & VCC # !tap4_15_ & !o_data_add16_1_anx2247z8) # !sum3_add16_0_anx253z1 & (tap4_15_ & !o_data_add16_1_anx2247z8 # !tap4_15_ & (o_data_add16_1_anx2247z8 # GND))
// o_data_add16_1_anx2247z6 = CARRY(sum3_add16_0_anx253z1 & !tap4_15_ & !o_data_add16_1_anx2247z8 # !sum3_add16_0_anx253z1 & (!o_data_add16_1_anx2247z8 # !tap4_15_))

	.dataa(sum3_add16_0_anx253z1),
	.datab(tap4_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z8),
	.combout(o_data_add16_1_anx253z1),
	.cout(o_data_add16_1_anx2247z6));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52926.lut_mask = 16'h9617;
defparam o_data_add16_1_aix2247z52926.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y28_N30
cycloneii_lcell_comb sum2_add15_2_aix1250z52923(
// Equation(s):
// sum2_add15_2_anx1250z1 = tap1_15_ $ sum2_add15_2_anx1250z4 $ !tap2_15_

	.dataa(vcc),
	.datab(tap1_15_),
	.datac(vcc),
	.datad(tap2_15_),
	.cin(sum2_add15_2_anx1250z4),
	.combout(sum2_add15_2_anx1250z1),
	.cout());
// synopsys translate_off
defparam sum2_add15_2_aix1250z52923.lut_mask = 16'h3CC3;
defparam sum2_add15_2_aix1250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N28
cycloneii_lcell_comb sum3_add16_0_aix2247z52925(
// Equation(s):
// sum3_add16_0_anx1250z1 = (tap3_15_ $ sum2_add15_2_anx1250z1 $ !sum3_add16_0_anx2247z5) # GND
// sum3_add16_0_anx2247z4 = CARRY(tap3_15_ & (sum2_add15_2_anx1250z1 # !sum3_add16_0_anx2247z5) # !tap3_15_ & sum2_add15_2_anx1250z1 & !sum3_add16_0_anx2247z5)

	.dataa(tap3_15_),
	.datab(sum2_add15_2_anx1250z1),
	.datac(vcc),
	.datad(vcc),
	.cin(sum3_add16_0_anx2247z5),
	.combout(sum3_add16_0_anx1250z1),
	.cout(sum3_add16_0_anx2247z4));
// synopsys translate_off
defparam sum3_add16_0_aix2247z52925.lut_mask = 16'h698E;
defparam sum3_add16_0_aix2247z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y29_N28
cycloneii_lcell_comb o_data_add16_1_aix2247z52925(
// Equation(s):
// o_data_add16_1_anx1250z1 = (sum3_add16_0_anx1250z1 $ tap4_15_ $ !o_data_add16_1_anx2247z6) # GND
// o_data_add16_1_anx2247z4 = CARRY(sum3_add16_0_anx1250z1 & (tap4_15_ # !o_data_add16_1_anx2247z6) # !sum3_add16_0_anx1250z1 & tap4_15_ & !o_data_add16_1_anx2247z6)

	.dataa(sum3_add16_0_anx1250z1),
	.datab(tap4_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(o_data_add16_1_anx2247z6),
	.combout(o_data_add16_1_anx1250z1),
	.cout(o_data_add16_1_anx2247z4));
// synopsys translate_off
defparam o_data_add16_1_aix2247z52925.lut_mask = 16'h698E;
defparam o_data_add16_1_aix2247z52925.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X60_Y29_N30
cycloneii_lcell_comb sum3_add16_0_aix2247z52923(
// Equation(s):
// sum3_add16_0_anx2247z1 = sum2_add15_2_anx1250z1 $ sum3_add16_0_anx2247z4 $ tap3_15_

	.dataa(vcc),
	.datab(sum2_add15_2_anx1250z1),
	.datac(vcc),
	.datad(tap3_15_),
	.cin(sum3_add16_0_anx2247z4),
	.combout(sum3_add16_0_anx2247z1),
	.cout());
// synopsys translate_off
defparam sum3_add16_0_aix2247z52923.lut_mask = 16'hC33C;
defparam sum3_add16_0_aix2247z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at LCCOMB_X61_Y29_N30
cycloneii_lcell_comb o_data_add16_1_aix2247z52923(
// Equation(s):
// o_data_add16_1_anx2247z1 = sum3_add16_0_anx2247z1 $ o_data_add16_1_anx2247z4 $ tap4_15_

	.dataa(sum3_add16_0_anx2247z1),
	.datab(vcc),
	.datac(vcc),
	.datad(tap4_15_),
	.cin(o_data_add16_1_anx2247z4),
	.combout(o_data_add16_1_anx2247z1),
	.cout());
// synopsys translate_off
defparam o_data_add16_1_aix2247z52923.lut_mask = 16'hA55A;
defparam o_data_add16_1_aix2247z52923.sum_lutc_input = "cin";
// synopsys translate_on

// atom is at PIN_D19
cycloneii_io o_data_obuf_0_(
	.datain(o_data_add16_1_anx37973z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[0]));
// synopsys translate_off
defparam o_data_obuf_0_.input_async_reset = "none";
defparam o_data_obuf_0_.input_power_up = "low";
defparam o_data_obuf_0_.input_register_mode = "none";
defparam o_data_obuf_0_.input_sync_reset = "none";
defparam o_data_obuf_0_.oe_async_reset = "none";
defparam o_data_obuf_0_.oe_power_up = "low";
defparam o_data_obuf_0_.oe_register_mode = "none";
defparam o_data_obuf_0_.oe_sync_reset = "none";
defparam o_data_obuf_0_.operation_mode = "output";
defparam o_data_obuf_0_.output_async_reset = "none";
defparam o_data_obuf_0_.output_power_up = "low";
defparam o_data_obuf_0_.output_register_mode = "none";
defparam o_data_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K16
cycloneii_io o_data_obuf_1_(
	.datain(o_data_add16_1_anx38970z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[1]));
// synopsys translate_off
defparam o_data_obuf_1_.input_async_reset = "none";
defparam o_data_obuf_1_.input_power_up = "low";
defparam o_data_obuf_1_.input_register_mode = "none";
defparam o_data_obuf_1_.input_sync_reset = "none";
defparam o_data_obuf_1_.oe_async_reset = "none";
defparam o_data_obuf_1_.oe_power_up = "low";
defparam o_data_obuf_1_.oe_register_mode = "none";
defparam o_data_obuf_1_.oe_sync_reset = "none";
defparam o_data_obuf_1_.operation_mode = "output";
defparam o_data_obuf_1_.output_async_reset = "none";
defparam o_data_obuf_1_.output_power_up = "low";
defparam o_data_obuf_1_.output_register_mode = "none";
defparam o_data_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_E20
cycloneii_io o_data_obuf_2_(
	.datain(o_data_add16_1_anx39967z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[2]));
// synopsys translate_off
defparam o_data_obuf_2_.input_async_reset = "none";
defparam o_data_obuf_2_.input_power_up = "low";
defparam o_data_obuf_2_.input_register_mode = "none";
defparam o_data_obuf_2_.input_sync_reset = "none";
defparam o_data_obuf_2_.oe_async_reset = "none";
defparam o_data_obuf_2_.oe_power_up = "low";
defparam o_data_obuf_2_.oe_register_mode = "none";
defparam o_data_obuf_2_.oe_sync_reset = "none";
defparam o_data_obuf_2_.operation_mode = "output";
defparam o_data_obuf_2_.output_async_reset = "none";
defparam o_data_obuf_2_.output_power_up = "low";
defparam o_data_obuf_2_.output_register_mode = "none";
defparam o_data_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AD21
cycloneii_io o_data_obuf_3_(
	.datain(o_data_add16_1_anx40964z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[3]));
// synopsys translate_off
defparam o_data_obuf_3_.input_async_reset = "none";
defparam o_data_obuf_3_.input_power_up = "low";
defparam o_data_obuf_3_.input_register_mode = "none";
defparam o_data_obuf_3_.input_sync_reset = "none";
defparam o_data_obuf_3_.oe_async_reset = "none";
defparam o_data_obuf_3_.oe_power_up = "low";
defparam o_data_obuf_3_.oe_register_mode = "none";
defparam o_data_obuf_3_.oe_sync_reset = "none";
defparam o_data_obuf_3_.operation_mode = "output";
defparam o_data_obuf_3_.output_async_reset = "none";
defparam o_data_obuf_3_.output_power_up = "low";
defparam o_data_obuf_3_.output_register_mode = "none";
defparam o_data_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_H23
cycloneii_io o_data_obuf_4_(
	.datain(o_data_add16_1_anx41961z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[4]));
// synopsys translate_off
defparam o_data_obuf_4_.input_async_reset = "none";
defparam o_data_obuf_4_.input_power_up = "low";
defparam o_data_obuf_4_.input_register_mode = "none";
defparam o_data_obuf_4_.input_sync_reset = "none";
defparam o_data_obuf_4_.oe_async_reset = "none";
defparam o_data_obuf_4_.oe_power_up = "low";
defparam o_data_obuf_4_.oe_register_mode = "none";
defparam o_data_obuf_4_.oe_sync_reset = "none";
defparam o_data_obuf_4_.operation_mode = "output";
defparam o_data_obuf_4_.output_async_reset = "none";
defparam o_data_obuf_4_.output_power_up = "low";
defparam o_data_obuf_4_.output_register_mode = "none";
defparam o_data_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D20
cycloneii_io o_data_obuf_5_(
	.datain(o_data_add16_1_anx42958z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[5]));
// synopsys translate_off
defparam o_data_obuf_5_.input_async_reset = "none";
defparam o_data_obuf_5_.input_power_up = "low";
defparam o_data_obuf_5_.input_register_mode = "none";
defparam o_data_obuf_5_.input_sync_reset = "none";
defparam o_data_obuf_5_.oe_async_reset = "none";
defparam o_data_obuf_5_.oe_power_up = "low";
defparam o_data_obuf_5_.oe_register_mode = "none";
defparam o_data_obuf_5_.oe_sync_reset = "none";
defparam o_data_obuf_5_.operation_mode = "output";
defparam o_data_obuf_5_.output_async_reset = "none";
defparam o_data_obuf_5_.output_power_up = "low";
defparam o_data_obuf_5_.output_register_mode = "none";
defparam o_data_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G3
cycloneii_io o_data_obuf_6_(
	.datain(o_data_add16_1_anx43955z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[6]));
// synopsys translate_off
defparam o_data_obuf_6_.input_async_reset = "none";
defparam o_data_obuf_6_.input_power_up = "low";
defparam o_data_obuf_6_.input_register_mode = "none";
defparam o_data_obuf_6_.input_sync_reset = "none";
defparam o_data_obuf_6_.oe_async_reset = "none";
defparam o_data_obuf_6_.oe_power_up = "low";
defparam o_data_obuf_6_.oe_register_mode = "none";
defparam o_data_obuf_6_.oe_sync_reset = "none";
defparam o_data_obuf_6_.operation_mode = "output";
defparam o_data_obuf_6_.output_async_reset = "none";
defparam o_data_obuf_6_.output_power_up = "low";
defparam o_data_obuf_6_.output_register_mode = "none";
defparam o_data_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_G24
cycloneii_io o_data_obuf_7_(
	.datain(o_data_add16_1_anx44952z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[7]));
// synopsys translate_off
defparam o_data_obuf_7_.input_async_reset = "none";
defparam o_data_obuf_7_.input_power_up = "low";
defparam o_data_obuf_7_.input_register_mode = "none";
defparam o_data_obuf_7_.input_sync_reset = "none";
defparam o_data_obuf_7_.oe_async_reset = "none";
defparam o_data_obuf_7_.oe_power_up = "low";
defparam o_data_obuf_7_.oe_register_mode = "none";
defparam o_data_obuf_7_.oe_sync_reset = "none";
defparam o_data_obuf_7_.operation_mode = "output";
defparam o_data_obuf_7_.output_async_reset = "none";
defparam o_data_obuf_7_.output_power_up = "low";
defparam o_data_obuf_7_.output_register_mode = "none";
defparam o_data_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AC14
cycloneii_io o_data_obuf_8_(
	.datain(o_data_add16_1_anx45949z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[8]));
// synopsys translate_off
defparam o_data_obuf_8_.input_async_reset = "none";
defparam o_data_obuf_8_.input_power_up = "low";
defparam o_data_obuf_8_.input_register_mode = "none";
defparam o_data_obuf_8_.input_sync_reset = "none";
defparam o_data_obuf_8_.oe_async_reset = "none";
defparam o_data_obuf_8_.oe_power_up = "low";
defparam o_data_obuf_8_.oe_register_mode = "none";
defparam o_data_obuf_8_.oe_sync_reset = "none";
defparam o_data_obuf_8_.operation_mode = "output";
defparam o_data_obuf_8_.output_async_reset = "none";
defparam o_data_obuf_8_.output_power_up = "low";
defparam o_data_obuf_8_.output_register_mode = "none";
defparam o_data_obuf_8_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_K17
cycloneii_io o_data_obuf_9_(
	.datain(o_data_add16_1_anx46946z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[9]));
// synopsys translate_off
defparam o_data_obuf_9_.input_async_reset = "none";
defparam o_data_obuf_9_.input_power_up = "low";
defparam o_data_obuf_9_.input_register_mode = "none";
defparam o_data_obuf_9_.input_sync_reset = "none";
defparam o_data_obuf_9_.oe_async_reset = "none";
defparam o_data_obuf_9_.oe_power_up = "low";
defparam o_data_obuf_9_.oe_register_mode = "none";
defparam o_data_obuf_9_.oe_sync_reset = "none";
defparam o_data_obuf_9_.operation_mode = "output";
defparam o_data_obuf_9_.output_async_reset = "none";
defparam o_data_obuf_9_.output_power_up = "low";
defparam o_data_obuf_9_.output_register_mode = "none";
defparam o_data_obuf_9_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C17
cycloneii_io o_data_obuf_10_(
	.datain(o_data_add16_1_anx62798z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[10]));
// synopsys translate_off
defparam o_data_obuf_10_.input_async_reset = "none";
defparam o_data_obuf_10_.input_power_up = "low";
defparam o_data_obuf_10_.input_register_mode = "none";
defparam o_data_obuf_10_.input_sync_reset = "none";
defparam o_data_obuf_10_.oe_async_reset = "none";
defparam o_data_obuf_10_.oe_power_up = "low";
defparam o_data_obuf_10_.oe_register_mode = "none";
defparam o_data_obuf_10_.oe_sync_reset = "none";
defparam o_data_obuf_10_.operation_mode = "output";
defparam o_data_obuf_10_.output_async_reset = "none";
defparam o_data_obuf_10_.output_power_up = "low";
defparam o_data_obuf_10_.output_register_mode = "none";
defparam o_data_obuf_10_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C21
cycloneii_io o_data_obuf_11_(
	.datain(o_data_add16_1_anx63795z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[11]));
// synopsys translate_off
defparam o_data_obuf_11_.input_async_reset = "none";
defparam o_data_obuf_11_.input_power_up = "low";
defparam o_data_obuf_11_.input_register_mode = "none";
defparam o_data_obuf_11_.input_sync_reset = "none";
defparam o_data_obuf_11_.oe_async_reset = "none";
defparam o_data_obuf_11_.oe_power_up = "low";
defparam o_data_obuf_11_.oe_register_mode = "none";
defparam o_data_obuf_11_.oe_sync_reset = "none";
defparam o_data_obuf_11_.operation_mode = "output";
defparam o_data_obuf_11_.output_async_reset = "none";
defparam o_data_obuf_11_.output_power_up = "low";
defparam o_data_obuf_11_.output_register_mode = "none";
defparam o_data_obuf_11_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_A22
cycloneii_io o_data_obuf_12_(
	.datain(o_data_add16_1_anx64792z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[12]));
// synopsys translate_off
defparam o_data_obuf_12_.input_async_reset = "none";
defparam o_data_obuf_12_.input_power_up = "low";
defparam o_data_obuf_12_.input_register_mode = "none";
defparam o_data_obuf_12_.input_sync_reset = "none";
defparam o_data_obuf_12_.oe_async_reset = "none";
defparam o_data_obuf_12_.oe_power_up = "low";
defparam o_data_obuf_12_.oe_register_mode = "none";
defparam o_data_obuf_12_.oe_sync_reset = "none";
defparam o_data_obuf_12_.operation_mode = "output";
defparam o_data_obuf_12_.output_async_reset = "none";
defparam o_data_obuf_12_.output_power_up = "low";
defparam o_data_obuf_12_.output_register_mode = "none";
defparam o_data_obuf_12_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_AF22
cycloneii_io o_data_obuf_13_(
	.datain(o_data_add16_1_anx253z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[13]));
// synopsys translate_off
defparam o_data_obuf_13_.input_async_reset = "none";
defparam o_data_obuf_13_.input_power_up = "low";
defparam o_data_obuf_13_.input_register_mode = "none";
defparam o_data_obuf_13_.input_sync_reset = "none";
defparam o_data_obuf_13_.oe_async_reset = "none";
defparam o_data_obuf_13_.oe_power_up = "low";
defparam o_data_obuf_13_.oe_register_mode = "none";
defparam o_data_obuf_13_.oe_sync_reset = "none";
defparam o_data_obuf_13_.operation_mode = "output";
defparam o_data_obuf_13_.output_async_reset = "none";
defparam o_data_obuf_13_.output_power_up = "low";
defparam o_data_obuf_13_.output_register_mode = "none";
defparam o_data_obuf_13_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B21
cycloneii_io o_data_obuf_14_(
	.datain(o_data_add16_1_anx1250z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[14]));
// synopsys translate_off
defparam o_data_obuf_14_.input_async_reset = "none";
defparam o_data_obuf_14_.input_power_up = "low";
defparam o_data_obuf_14_.input_register_mode = "none";
defparam o_data_obuf_14_.input_sync_reset = "none";
defparam o_data_obuf_14_.oe_async_reset = "none";
defparam o_data_obuf_14_.oe_power_up = "low";
defparam o_data_obuf_14_.oe_register_mode = "none";
defparam o_data_obuf_14_.oe_sync_reset = "none";
defparam o_data_obuf_14_.operation_mode = "output";
defparam o_data_obuf_14_.output_async_reset = "none";
defparam o_data_obuf_14_.output_power_up = "low";
defparam o_data_obuf_14_.output_register_mode = "none";
defparam o_data_obuf_14_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_B22
cycloneii_io o_data_obuf_15_(
	.datain(o_data_add16_1_anx2247z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_data[15]));
// synopsys translate_off
defparam o_data_obuf_15_.input_async_reset = "none";
defparam o_data_obuf_15_.input_power_up = "low";
defparam o_data_obuf_15_.input_register_mode = "none";
defparam o_data_obuf_15_.input_sync_reset = "none";
defparam o_data_obuf_15_.oe_async_reset = "none";
defparam o_data_obuf_15_.oe_power_up = "low";
defparam o_data_obuf_15_.oe_register_mode = "none";
defparam o_data_obuf_15_.oe_sync_reset = "none";
defparam o_data_obuf_15_.operation_mode = "output";
defparam o_data_obuf_15_.output_async_reset = "none";
defparam o_data_obuf_15_.output_power_up = "low";
defparam o_data_obuf_15_.output_register_mode = "none";
defparam o_data_obuf_15_.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_C13
cycloneii_io i_data_a0_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[0]));
// synopsys translate_off
defparam i_data_a0_a_aI.input_async_reset = "none";
defparam i_data_a0_a_aI.input_power_up = "low";
defparam i_data_a0_a_aI.input_register_mode = "none";
defparam i_data_a0_a_aI.input_sync_reset = "none";
defparam i_data_a0_a_aI.oe_async_reset = "none";
defparam i_data_a0_a_aI.oe_power_up = "low";
defparam i_data_a0_a_aI.oe_register_mode = "none";
defparam i_data_a0_a_aI.oe_sync_reset = "none";
defparam i_data_a0_a_aI.operation_mode = "input";
defparam i_data_a0_a_aI.output_async_reset = "none";
defparam i_data_a0_a_aI.output_power_up = "low";
defparam i_data_a0_a_aI.output_register_mode = "none";
defparam i_data_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// atom is at PIN_D13
cycloneii_io i_data_a1_a_aI(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_data[1]));
// synopsys translate_off
defparam i_data_a1_a_aI.input_async_reset = "none";
defparam i_data_a1_a_aI.input_power_up = "low";
defparam i_data_a1_a_aI.input_register_mode = "none";
defparam i_data_a1_a_aI.input_sync_reset = "none";
defparam i_data_a1_a_aI.oe_async_reset = "none";
defparam i_data_a1_a_aI.oe_power_up = "low";
defparam i_data_a1_a_aI.oe_register_mode = "none";
defparam i_data_a1_a_aI.oe_sync_reset = "none";
defparam i_data_a1_a_aI.operation_mode = "input";
defparam i_data_a1_a_aI.output_async_reset = "none";
defparam i_data_a1_a_aI.output_power_up = "low";
defparam i_data_a1_a_aI.output_register_mode = "none";
defparam i_data_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

endmodule
