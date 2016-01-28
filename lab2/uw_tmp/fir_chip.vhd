-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "01/23/2016 20:54:03"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	fir_chip IS
    PORT (
	clk : IN std_logic;
	i_data : IN std_logic_vector(15 DOWNTO 0);
	o_data : OUT std_logic_vector(15 DOWNTO 0)
	);
END fir_chip;

ARCHITECTURE structure OF fir_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_i_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_data : std_logic_vector(15 DOWNTO 0);
SIGNAL clk_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL sum2_add15_2_anx38970z1 : std_logic;
SIGNAL sum2_add15_2_anx42958z1 : std_logic;
SIGNAL sum2_add15_2_anx43955z1 : std_logic;
SIGNAL sum2_add15_2_anx44952z1 : std_logic;
SIGNAL sum2_add15_2_anx63795z1 : std_logic;
SIGNAL sum2_add15_2_anx253z1 : std_logic;
SIGNAL clk_acombout : std_logic;
SIGNAL clk_aclkctrl_outclk : std_logic;
SIGNAL tap1_2_a : std_logic;
SIGNAL sum2_add15_2_anx37973z1 : std_logic;
SIGNAL sum3_add16_0_anx37973z1 : std_logic;
SIGNAL tap2_2_a : std_logic;
SIGNAL tap3_2_afeeder_combout : std_logic;
SIGNAL tap3_2_a : std_logic;
SIGNAL tap4_2_afeeder_combout : std_logic;
SIGNAL tap4_2_a : std_logic;
SIGNAL o_data_add16_1_anx37973z1 : std_logic;
SIGNAL tap1_3_a : std_logic;
SIGNAL tap2_3_a : std_logic;
SIGNAL tap3_3_afeeder_combout : std_logic;
SIGNAL tap3_3_a : std_logic;
SIGNAL sum3_add16_0_anx2247z43 : std_logic;
SIGNAL sum3_add16_0_anx38970z1 : std_logic;
SIGNAL tap4_3_afeeder_combout : std_logic;
SIGNAL tap4_3_a : std_logic;
SIGNAL o_data_add16_1_anx2247z44 : std_logic;
SIGNAL o_data_add16_1_anx38970z1 : std_logic;
SIGNAL tap1_4_a : std_logic;
SIGNAL tap2_4_a : std_logic;
SIGNAL sum2_add15_2_anx1250z41 : std_logic;
SIGNAL sum2_add15_2_anx1250z38 : std_logic;
SIGNAL sum2_add15_2_anx39967z1 : std_logic;
SIGNAL sum3_add16_0_anx2247z40 : std_logic;
SIGNAL sum3_add16_0_anx39967z1 : std_logic;
SIGNAL tap3_4_afeeder_combout : std_logic;
SIGNAL tap3_4_a : std_logic;
SIGNAL tap4_4_afeeder_combout : std_logic;
SIGNAL tap4_4_a : std_logic;
SIGNAL o_data_add16_1_anx2247z41 : std_logic;
SIGNAL o_data_add16_1_anx39967z1 : std_logic;
SIGNAL tap1_5_a : std_logic;
SIGNAL tap2_5_a : std_logic;
SIGNAL tap3_5_a : std_logic;
SIGNAL tap4_5_afeeder_combout : std_logic;
SIGNAL tap4_5_a : std_logic;
SIGNAL sum2_add15_2_anx1250z35 : std_logic;
SIGNAL sum2_add15_2_anx40964z1 : std_logic;
SIGNAL sum3_add16_0_anx2247z37 : std_logic;
SIGNAL sum3_add16_0_anx40964z1 : std_logic;
SIGNAL o_data_add16_1_anx2247z38 : std_logic;
SIGNAL o_data_add16_1_anx40964z1 : std_logic;
SIGNAL tap1_6_a : std_logic;
SIGNAL tap2_6_a : std_logic;
SIGNAL sum2_add15_2_anx1250z32 : std_logic;
SIGNAL sum2_add15_2_anx41961z1 : std_logic;
SIGNAL sum3_add16_0_anx2247z34 : std_logic;
SIGNAL sum3_add16_0_anx41961z1 : std_logic;
SIGNAL tap3_6_afeeder_combout : std_logic;
SIGNAL tap3_6_a : std_logic;
SIGNAL tap4_6_afeeder_combout : std_logic;
SIGNAL tap4_6_a : std_logic;
SIGNAL o_data_add16_1_anx2247z35 : std_logic;
SIGNAL o_data_add16_1_anx41961z1 : std_logic;
SIGNAL tap1_7_a : std_logic;
SIGNAL tap2_7_a : std_logic;
SIGNAL tap3_7_afeeder_combout : std_logic;
SIGNAL tap3_7_a : std_logic;
SIGNAL sum3_add16_0_anx2247z31 : std_logic;
SIGNAL sum3_add16_0_anx42958z1 : std_logic;
SIGNAL tap4_7_afeeder_combout : std_logic;
SIGNAL tap4_7_a : std_logic;
SIGNAL o_data_add16_1_anx2247z32 : std_logic;
SIGNAL o_data_add16_1_anx42958z1 : std_logic;
SIGNAL tap1_8_a : std_logic;
SIGNAL tap2_8_a : std_logic;
SIGNAL tap3_8_afeeder_combout : std_logic;
SIGNAL tap3_8_a : std_logic;
SIGNAL sum3_add16_0_anx2247z28 : std_logic;
SIGNAL sum3_add16_0_anx43955z1 : std_logic;
SIGNAL tap4_8_afeeder_combout : std_logic;
SIGNAL tap4_8_a : std_logic;
SIGNAL o_data_add16_1_anx2247z29 : std_logic;
SIGNAL o_data_add16_1_anx43955z1 : std_logic;
SIGNAL tap1_9_a : std_logic;
SIGNAL tap2_9_a : std_logic;
SIGNAL tap3_9_afeeder_combout : std_logic;
SIGNAL tap3_9_a : std_logic;
SIGNAL sum3_add16_0_anx2247z25 : std_logic;
SIGNAL sum3_add16_0_anx44952z1 : std_logic;
SIGNAL tap4_9_afeeder_combout : std_logic;
SIGNAL tap4_9_a : std_logic;
SIGNAL o_data_add16_1_anx2247z26 : std_logic;
SIGNAL o_data_add16_1_anx44952z1 : std_logic;
SIGNAL tap1_10_a : std_logic;
SIGNAL tap2_10_a : std_logic;
SIGNAL sum2_add15_2_anx1250z29 : std_logic;
SIGNAL sum2_add15_2_anx1250z26 : std_logic;
SIGNAL sum2_add15_2_anx1250z23 : std_logic;
SIGNAL sum2_add15_2_anx1250z20 : std_logic;
SIGNAL sum2_add15_2_anx45949z1 : std_logic;
SIGNAL sum3_add16_0_anx2247z22 : std_logic;
SIGNAL sum3_add16_0_anx45949z1 : std_logic;
SIGNAL tap3_10_afeeder_combout : std_logic;
SIGNAL tap3_10_a : std_logic;
SIGNAL tap4_10_afeeder_combout : std_logic;
SIGNAL tap4_10_a : std_logic;
SIGNAL o_data_add16_1_anx2247z23 : std_logic;
SIGNAL o_data_add16_1_anx45949z1 : std_logic;
SIGNAL tap1_11_a : std_logic;
SIGNAL tap2_11_a : std_logic;
SIGNAL tap3_11_afeeder_combout : std_logic;
SIGNAL tap3_11_a : std_logic;
SIGNAL tap4_11_afeeder_combout : std_logic;
SIGNAL tap4_11_a : std_logic;
SIGNAL sum2_add15_2_anx1250z17 : std_logic;
SIGNAL sum2_add15_2_anx46946z1 : std_logic;
SIGNAL sum3_add16_0_anx2247z19 : std_logic;
SIGNAL sum3_add16_0_anx46946z1 : std_logic;
SIGNAL o_data_add16_1_anx2247z20 : std_logic;
SIGNAL o_data_add16_1_anx46946z1 : std_logic;
SIGNAL tap1_12_a : std_logic;
SIGNAL tap2_12_a : std_logic;
SIGNAL sum2_add15_2_anx1250z14 : std_logic;
SIGNAL sum2_add15_2_anx62798z1 : std_logic;
SIGNAL sum3_add16_0_anx2247z16 : std_logic;
SIGNAL sum3_add16_0_anx62798z1 : std_logic;
SIGNAL tap3_12_afeeder_combout : std_logic;
SIGNAL tap3_12_a : std_logic;
SIGNAL tap4_12_afeeder_combout : std_logic;
SIGNAL tap4_12_a : std_logic;
SIGNAL o_data_add16_1_anx2247z17 : std_logic;
SIGNAL o_data_add16_1_anx62798z1 : std_logic;
SIGNAL tap1_13_a : std_logic;
SIGNAL tap2_13_a : std_logic;
SIGNAL tap3_13_a : std_logic;
SIGNAL tap4_13_afeeder_combout : std_logic;
SIGNAL tap4_13_a : std_logic;
SIGNAL sum3_add16_0_anx2247z13 : std_logic;
SIGNAL sum3_add16_0_anx63795z1 : std_logic;
SIGNAL o_data_add16_1_anx2247z14 : std_logic;
SIGNAL o_data_add16_1_anx63795z1 : std_logic;
SIGNAL tap1_14_a : std_logic;
SIGNAL tap2_14_a : std_logic;
SIGNAL tap3_14_afeeder_combout : std_logic;
SIGNAL tap3_14_a : std_logic;
SIGNAL tap4_14_afeeder_combout : std_logic;
SIGNAL tap4_14_a : std_logic;
SIGNAL sum2_add15_2_anx1250z11 : std_logic;
SIGNAL sum2_add15_2_anx1250z8 : std_logic;
SIGNAL sum2_add15_2_anx64792z1 : std_logic;
SIGNAL sum3_add16_0_anx2247z10 : std_logic;
SIGNAL sum3_add16_0_anx64792z1 : std_logic;
SIGNAL o_data_add16_1_anx2247z11 : std_logic;
SIGNAL o_data_add16_1_anx64792z1 : std_logic;
SIGNAL tap1_15_a : std_logic;
SIGNAL tap2_15_a : std_logic;
SIGNAL tap3_15_afeeder_combout : std_logic;
SIGNAL tap3_15_a : std_logic;
SIGNAL sum3_add16_0_anx2247z7 : std_logic;
SIGNAL sum3_add16_0_anx253z1 : std_logic;
SIGNAL tap4_15_afeeder_combout : std_logic;
SIGNAL tap4_15_a : std_logic;
SIGNAL o_data_add16_1_anx2247z8 : std_logic;
SIGNAL o_data_add16_1_anx253z1 : std_logic;
SIGNAL sum2_add15_2_anx1250z5 : std_logic;
SIGNAL sum2_add15_2_anx1250z4 : std_logic;
SIGNAL sum2_add15_2_anx1250z1 : std_logic;
SIGNAL sum3_add16_0_anx2247z5 : std_logic;
SIGNAL sum3_add16_0_anx1250z1 : std_logic;
SIGNAL o_data_add16_1_anx2247z6 : std_logic;
SIGNAL o_data_add16_1_anx1250z1 : std_logic;
SIGNAL sum3_add16_0_anx2247z4 : std_logic;
SIGNAL sum3_add16_0_anx2247z1 : std_logic;
SIGNAL o_data_add16_1_anx2247z4 : std_logic;
SIGNAL o_data_add16_1_anx2247z1 : std_logic;

BEGIN

ww_clk <= clk;
ww_i_data <= i_data;
o_data <= ww_o_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

clk_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & clk_acombout);

sum2_add15_2_aix1250z52937 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx38970z1 = tap1_3_a & (tap2_3_a & sum2_add15_2_anx1250z41 & VCC # !tap2_3_a & !sum2_add15_2_anx1250z41) # !tap1_3_a & (tap2_3_a & !sum2_add15_2_anx1250z41 # !tap2_3_a & (sum2_add15_2_anx1250z41 # GND))
-- sum2_add15_2_anx1250z38 = CARRY(tap1_3_a & !tap2_3_a & !sum2_add15_2_anx1250z41 # !tap1_3_a & (!sum2_add15_2_anx1250z41 # !tap2_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap1_3_a,
	datab => tap2_3_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z41,
	combout => sum2_add15_2_anx38970z1,
	cout => sum2_add15_2_anx1250z38);

sum2_add15_2_aix1250z52933 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx42958z1 = tap1_7_a & (tap2_7_a & sum2_add15_2_anx1250z29 & VCC # !tap2_7_a & !sum2_add15_2_anx1250z29) # !tap1_7_a & (tap2_7_a & !sum2_add15_2_anx1250z29 # !tap2_7_a & (sum2_add15_2_anx1250z29 # GND))
-- sum2_add15_2_anx1250z26 = CARRY(tap1_7_a & !tap2_7_a & !sum2_add15_2_anx1250z29 # !tap1_7_a & (!sum2_add15_2_anx1250z29 # !tap2_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap1_7_a,
	datab => tap2_7_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z29,
	combout => sum2_add15_2_anx42958z1,
	cout => sum2_add15_2_anx1250z26);

sum2_add15_2_aix1250z52932 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx43955z1 = (tap2_8_a $ tap1_8_a $ !sum2_add15_2_anx1250z26) # GND
-- sum2_add15_2_anx1250z23 = CARRY(tap2_8_a & (tap1_8_a # !sum2_add15_2_anx1250z26) # !tap2_8_a & tap1_8_a & !sum2_add15_2_anx1250z26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap2_8_a,
	datab => tap1_8_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z26,
	combout => sum2_add15_2_anx43955z1,
	cout => sum2_add15_2_anx1250z23);

sum2_add15_2_aix1250z52931 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx44952z1 = tap2_9_a & (tap1_9_a & sum2_add15_2_anx1250z23 & VCC # !tap1_9_a & !sum2_add15_2_anx1250z23) # !tap2_9_a & (tap1_9_a & !sum2_add15_2_anx1250z23 # !tap1_9_a & (sum2_add15_2_anx1250z23 # GND))
-- sum2_add15_2_anx1250z20 = CARRY(tap2_9_a & !tap1_9_a & !sum2_add15_2_anx1250z23 # !tap2_9_a & (!sum2_add15_2_anx1250z23 # !tap1_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap2_9_a,
	datab => tap1_9_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z23,
	combout => sum2_add15_2_anx44952z1,
	cout => sum2_add15_2_anx1250z20);

sum2_add15_2_aix1250z52927 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx63795z1 = tap2_13_a & (tap1_13_a & sum2_add15_2_anx1250z11 & VCC # !tap1_13_a & !sum2_add15_2_anx1250z11) # !tap2_13_a & (tap1_13_a & !sum2_add15_2_anx1250z11 # !tap1_13_a & (sum2_add15_2_anx1250z11 # GND))
-- sum2_add15_2_anx1250z8 = CARRY(tap2_13_a & !tap1_13_a & !sum2_add15_2_anx1250z11 # !tap2_13_a & (!sum2_add15_2_anx1250z11 # !tap1_13_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap2_13_a,
	datab => tap1_13_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z11,
	combout => sum2_add15_2_anx63795z1,
	cout => sum2_add15_2_anx1250z8);

sum2_add15_2_aix1250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx253z1 = tap1_15_a & (tap2_15_a & sum2_add15_2_anx1250z5 & VCC # !tap2_15_a & !sum2_add15_2_anx1250z5) # !tap1_15_a & (tap2_15_a & !sum2_add15_2_anx1250z5 # !tap2_15_a & (sum2_add15_2_anx1250z5 # GND))
-- sum2_add15_2_anx1250z4 = CARRY(tap1_15_a & !tap2_15_a & !sum2_add15_2_anx1250z5 # !tap1_15_a & (!sum2_add15_2_anx1250z5 # !tap2_15_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap1_15_a,
	datab => tap2_15_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z5,
	combout => sum2_add15_2_anx253z1,
	cout => sum2_add15_2_anx1250z4);

clk_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => clk_acombout);

clk_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => clk_aclkctrl_outclk);

i_data_ibuf_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(2),
	regout => tap1_2_a);

sum2_add15_2_aix1250z52938 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx37973z1 = tap2_2_a & (tap1_2_a $ VCC) # !tap2_2_a & tap1_2_a & VCC
-- sum2_add15_2_anx1250z41 = CARRY(tap2_2_a & tap1_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tap2_2_a,
	datab => tap1_2_a,
	datad => VCC,
	combout => sum2_add15_2_anx37973z1,
	cout => sum2_add15_2_anx1250z41);

sum3_add16_0_aix2247z52939 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx37973z1 = tap3_2_a & (sum2_add15_2_anx37973z1 $ VCC) # !tap3_2_a & sum2_add15_2_anx37973z1 & VCC
-- sum3_add16_0_anx2247z43 = CARRY(tap3_2_a & sum2_add15_2_anx37973z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tap3_2_a,
	datab => sum2_add15_2_anx37973z1,
	datad => VCC,
	combout => sum3_add16_0_anx37973z1,
	cout => sum3_add16_0_anx2247z43);

reg_tap2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_2_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_2_a);

tap3_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_2_afeeder_combout = tap2_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_2_a,
	combout => tap3_2_afeeder_combout);

reg_tap3_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_2_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_2_a);

tap4_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_2_afeeder_combout = tap3_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_2_a,
	combout => tap4_2_afeeder_combout);

reg_tap4_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_2_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_2_a);

o_data_add16_1_aix2247z52939 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx37973z1 = sum3_add16_0_anx37973z1 & (tap4_2_a $ VCC) # !sum3_add16_0_anx37973z1 & tap4_2_a & VCC
-- o_data_add16_1_anx2247z44 = CARRY(sum3_add16_0_anx37973z1 & tap4_2_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx37973z1,
	datab => tap4_2_a,
	datad => VCC,
	combout => o_data_add16_1_anx37973z1,
	cout => o_data_add16_1_anx2247z44);

i_data_ibuf_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(3),
	regout => tap1_3_a);

reg_tap2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_3_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_3_a);

tap3_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_3_afeeder_combout = tap2_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_3_a,
	combout => tap3_3_afeeder_combout);

reg_tap3_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_3_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_3_a);

sum3_add16_0_aix2247z52938 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx38970z1 = sum2_add15_2_anx38970z1 & (tap3_3_a & sum3_add16_0_anx2247z43 & VCC # !tap3_3_a & !sum3_add16_0_anx2247z43) # !sum2_add15_2_anx38970z1 & (tap3_3_a & !sum3_add16_0_anx2247z43 # !tap3_3_a & (sum3_add16_0_anx2247z43 # GND))
-- sum3_add16_0_anx2247z40 = CARRY(sum2_add15_2_anx38970z1 & !tap3_3_a & !sum3_add16_0_anx2247z43 # !sum2_add15_2_anx38970z1 & (!sum3_add16_0_anx2247z43 # !tap3_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum2_add15_2_anx38970z1,
	datab => tap3_3_a,
	datad => VCC,
	cin => sum3_add16_0_anx2247z43,
	combout => sum3_add16_0_anx38970z1,
	cout => sum3_add16_0_anx2247z40);

tap4_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_3_afeeder_combout = tap3_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_3_a,
	combout => tap4_3_afeeder_combout);

reg_tap4_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_3_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_3_a);

o_data_add16_1_aix2247z52938 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx38970z1 = sum3_add16_0_anx38970z1 & (tap4_3_a & o_data_add16_1_anx2247z44 & VCC # !tap4_3_a & !o_data_add16_1_anx2247z44) # !sum3_add16_0_anx38970z1 & (tap4_3_a & !o_data_add16_1_anx2247z44 # !tap4_3_a & (o_data_add16_1_anx2247z44 # 
-- GND))
-- o_data_add16_1_anx2247z41 = CARRY(sum3_add16_0_anx38970z1 & !tap4_3_a & !o_data_add16_1_anx2247z44 # !sum3_add16_0_anx38970z1 & (!o_data_add16_1_anx2247z44 # !tap4_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx38970z1,
	datab => tap4_3_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z44,
	combout => o_data_add16_1_anx38970z1,
	cout => o_data_add16_1_anx2247z41);

i_data_ibuf_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(4),
	regout => tap1_4_a);

reg_tap2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_4_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_4_a);

sum2_add15_2_aix1250z52936 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx39967z1 = (tap1_4_a $ tap2_4_a $ !sum2_add15_2_anx1250z38) # GND
-- sum2_add15_2_anx1250z35 = CARRY(tap1_4_a & (tap2_4_a # !sum2_add15_2_anx1250z38) # !tap1_4_a & tap2_4_a & !sum2_add15_2_anx1250z38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap1_4_a,
	datab => tap2_4_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z38,
	combout => sum2_add15_2_anx39967z1,
	cout => sum2_add15_2_anx1250z35);

sum3_add16_0_aix2247z52937 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx39967z1 = (tap3_4_a $ sum2_add15_2_anx39967z1 $ !sum3_add16_0_anx2247z40) # GND
-- sum3_add16_0_anx2247z37 = CARRY(tap3_4_a & (sum2_add15_2_anx39967z1 # !sum3_add16_0_anx2247z40) # !tap3_4_a & sum2_add15_2_anx39967z1 & !sum3_add16_0_anx2247z40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap3_4_a,
	datab => sum2_add15_2_anx39967z1,
	datad => VCC,
	cin => sum3_add16_0_anx2247z40,
	combout => sum3_add16_0_anx39967z1,
	cout => sum3_add16_0_anx2247z37);

tap3_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_4_afeeder_combout = tap2_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_4_a,
	combout => tap3_4_afeeder_combout);

reg_tap3_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_4_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_4_a);

tap4_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_4_afeeder_combout = tap3_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_4_a,
	combout => tap4_4_afeeder_combout);

reg_tap4_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_4_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_4_a);

o_data_add16_1_aix2247z52937 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx39967z1 = (sum3_add16_0_anx39967z1 $ tap4_4_a $ !o_data_add16_1_anx2247z41) # GND
-- o_data_add16_1_anx2247z38 = CARRY(sum3_add16_0_anx39967z1 & (tap4_4_a # !o_data_add16_1_anx2247z41) # !sum3_add16_0_anx39967z1 & tap4_4_a & !o_data_add16_1_anx2247z41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx39967z1,
	datab => tap4_4_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z41,
	combout => o_data_add16_1_anx39967z1,
	cout => o_data_add16_1_anx2247z38);

i_data_ibuf_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(5),
	regout => tap1_5_a);

reg_tap2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_5_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_5_a);

reg_tap3_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap2_5_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_5_a);

tap4_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_5_afeeder_combout = tap3_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_5_a,
	combout => tap4_5_afeeder_combout);

reg_tap4_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_5_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_5_a);

sum2_add15_2_aix1250z52935 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx40964z1 = tap2_5_a & (tap1_5_a & sum2_add15_2_anx1250z35 & VCC # !tap1_5_a & !sum2_add15_2_anx1250z35) # !tap2_5_a & (tap1_5_a & !sum2_add15_2_anx1250z35 # !tap1_5_a & (sum2_add15_2_anx1250z35 # GND))
-- sum2_add15_2_anx1250z32 = CARRY(tap2_5_a & !tap1_5_a & !sum2_add15_2_anx1250z35 # !tap2_5_a & (!sum2_add15_2_anx1250z35 # !tap1_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap2_5_a,
	datab => tap1_5_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z35,
	combout => sum2_add15_2_anx40964z1,
	cout => sum2_add15_2_anx1250z32);

sum3_add16_0_aix2247z52936 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx40964z1 = tap3_5_a & (sum2_add15_2_anx40964z1 & sum3_add16_0_anx2247z37 & VCC # !sum2_add15_2_anx40964z1 & !sum3_add16_0_anx2247z37) # !tap3_5_a & (sum2_add15_2_anx40964z1 & !sum3_add16_0_anx2247z37 # !sum2_add15_2_anx40964z1 & 
-- (sum3_add16_0_anx2247z37 # GND))
-- sum3_add16_0_anx2247z34 = CARRY(tap3_5_a & !sum2_add15_2_anx40964z1 & !sum3_add16_0_anx2247z37 # !tap3_5_a & (!sum3_add16_0_anx2247z37 # !sum2_add15_2_anx40964z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap3_5_a,
	datab => sum2_add15_2_anx40964z1,
	datad => VCC,
	cin => sum3_add16_0_anx2247z37,
	combout => sum3_add16_0_anx40964z1,
	cout => sum3_add16_0_anx2247z34);

o_data_add16_1_aix2247z52936 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx40964z1 = tap4_5_a & (sum3_add16_0_anx40964z1 & o_data_add16_1_anx2247z38 & VCC # !sum3_add16_0_anx40964z1 & !o_data_add16_1_anx2247z38) # !tap4_5_a & (sum3_add16_0_anx40964z1 & !o_data_add16_1_anx2247z38 # !sum3_add16_0_anx40964z1 & 
-- (o_data_add16_1_anx2247z38 # GND))
-- o_data_add16_1_anx2247z35 = CARRY(tap4_5_a & !sum3_add16_0_anx40964z1 & !o_data_add16_1_anx2247z38 # !tap4_5_a & (!o_data_add16_1_anx2247z38 # !sum3_add16_0_anx40964z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap4_5_a,
	datab => sum3_add16_0_anx40964z1,
	datad => VCC,
	cin => o_data_add16_1_anx2247z38,
	combout => o_data_add16_1_anx40964z1,
	cout => o_data_add16_1_anx2247z35);

i_data_ibuf_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(6),
	regout => tap1_6_a);

reg_tap2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_6_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_6_a);

sum2_add15_2_aix1250z52934 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx41961z1 = (tap1_6_a $ tap2_6_a $ !sum2_add15_2_anx1250z32) # GND
-- sum2_add15_2_anx1250z29 = CARRY(tap1_6_a & (tap2_6_a # !sum2_add15_2_anx1250z32) # !tap1_6_a & tap2_6_a & !sum2_add15_2_anx1250z32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap1_6_a,
	datab => tap2_6_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z32,
	combout => sum2_add15_2_anx41961z1,
	cout => sum2_add15_2_anx1250z29);

sum3_add16_0_aix2247z52935 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx41961z1 = (tap3_6_a $ sum2_add15_2_anx41961z1 $ !sum3_add16_0_anx2247z34) # GND
-- sum3_add16_0_anx2247z31 = CARRY(tap3_6_a & (sum2_add15_2_anx41961z1 # !sum3_add16_0_anx2247z34) # !tap3_6_a & sum2_add15_2_anx41961z1 & !sum3_add16_0_anx2247z34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap3_6_a,
	datab => sum2_add15_2_anx41961z1,
	datad => VCC,
	cin => sum3_add16_0_anx2247z34,
	combout => sum3_add16_0_anx41961z1,
	cout => sum3_add16_0_anx2247z31);

tap3_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_6_afeeder_combout = tap2_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_6_a,
	combout => tap3_6_afeeder_combout);

reg_tap3_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_6_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_6_a);

tap4_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_6_afeeder_combout = tap3_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_6_a,
	combout => tap4_6_afeeder_combout);

reg_tap4_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_6_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_6_a);

o_data_add16_1_aix2247z52935 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx41961z1 = (sum3_add16_0_anx41961z1 $ tap4_6_a $ !o_data_add16_1_anx2247z35) # GND
-- o_data_add16_1_anx2247z32 = CARRY(sum3_add16_0_anx41961z1 & (tap4_6_a # !o_data_add16_1_anx2247z35) # !sum3_add16_0_anx41961z1 & tap4_6_a & !o_data_add16_1_anx2247z35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx41961z1,
	datab => tap4_6_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z35,
	combout => o_data_add16_1_anx41961z1,
	cout => o_data_add16_1_anx2247z32);

i_data_ibuf_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(7),
	regout => tap1_7_a);

reg_tap2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_7_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_7_a);

tap3_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_7_afeeder_combout = tap2_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_7_a,
	combout => tap3_7_afeeder_combout);

reg_tap3_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_7_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_7_a);

sum3_add16_0_aix2247z52934 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx42958z1 = sum2_add15_2_anx42958z1 & (tap3_7_a & sum3_add16_0_anx2247z31 & VCC # !tap3_7_a & !sum3_add16_0_anx2247z31) # !sum2_add15_2_anx42958z1 & (tap3_7_a & !sum3_add16_0_anx2247z31 # !tap3_7_a & (sum3_add16_0_anx2247z31 # GND))
-- sum3_add16_0_anx2247z28 = CARRY(sum2_add15_2_anx42958z1 & !tap3_7_a & !sum3_add16_0_anx2247z31 # !sum2_add15_2_anx42958z1 & (!sum3_add16_0_anx2247z31 # !tap3_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum2_add15_2_anx42958z1,
	datab => tap3_7_a,
	datad => VCC,
	cin => sum3_add16_0_anx2247z31,
	combout => sum3_add16_0_anx42958z1,
	cout => sum3_add16_0_anx2247z28);

tap4_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_7_afeeder_combout = tap3_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_7_a,
	combout => tap4_7_afeeder_combout);

reg_tap4_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_7_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_7_a);

o_data_add16_1_aix2247z52934 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx42958z1 = sum3_add16_0_anx42958z1 & (tap4_7_a & o_data_add16_1_anx2247z32 & VCC # !tap4_7_a & !o_data_add16_1_anx2247z32) # !sum3_add16_0_anx42958z1 & (tap4_7_a & !o_data_add16_1_anx2247z32 # !tap4_7_a & (o_data_add16_1_anx2247z32 # 
-- GND))
-- o_data_add16_1_anx2247z29 = CARRY(sum3_add16_0_anx42958z1 & !tap4_7_a & !o_data_add16_1_anx2247z32 # !sum3_add16_0_anx42958z1 & (!o_data_add16_1_anx2247z32 # !tap4_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx42958z1,
	datab => tap4_7_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z32,
	combout => o_data_add16_1_anx42958z1,
	cout => o_data_add16_1_anx2247z29);

i_data_ibuf_8_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(8),
	regout => tap1_8_a);

reg_tap2_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_8_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_8_a);

tap3_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_8_afeeder_combout = tap2_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_8_a,
	combout => tap3_8_afeeder_combout);

reg_tap3_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_8_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_8_a);

sum3_add16_0_aix2247z52933 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx43955z1 = (sum2_add15_2_anx43955z1 $ tap3_8_a $ !sum3_add16_0_anx2247z28) # GND
-- sum3_add16_0_anx2247z25 = CARRY(sum2_add15_2_anx43955z1 & (tap3_8_a # !sum3_add16_0_anx2247z28) # !sum2_add15_2_anx43955z1 & tap3_8_a & !sum3_add16_0_anx2247z28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum2_add15_2_anx43955z1,
	datab => tap3_8_a,
	datad => VCC,
	cin => sum3_add16_0_anx2247z28,
	combout => sum3_add16_0_anx43955z1,
	cout => sum3_add16_0_anx2247z25);

tap4_8_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_8_afeeder_combout = tap3_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_8_a,
	combout => tap4_8_afeeder_combout);

reg_tap4_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_8_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_8_a);

o_data_add16_1_aix2247z52933 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx43955z1 = (sum3_add16_0_anx43955z1 $ tap4_8_a $ !o_data_add16_1_anx2247z29) # GND
-- o_data_add16_1_anx2247z26 = CARRY(sum3_add16_0_anx43955z1 & (tap4_8_a # !o_data_add16_1_anx2247z29) # !sum3_add16_0_anx43955z1 & tap4_8_a & !o_data_add16_1_anx2247z29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx43955z1,
	datab => tap4_8_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z29,
	combout => o_data_add16_1_anx43955z1,
	cout => o_data_add16_1_anx2247z26);

i_data_ibuf_9_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(9),
	regout => tap1_9_a);

reg_tap2_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_9_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_9_a);

tap3_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_9_afeeder_combout = tap2_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_9_a,
	combout => tap3_9_afeeder_combout);

reg_tap3_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_9_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_9_a);

sum3_add16_0_aix2247z52932 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx44952z1 = sum2_add15_2_anx44952z1 & (tap3_9_a & sum3_add16_0_anx2247z25 & VCC # !tap3_9_a & !sum3_add16_0_anx2247z25) # !sum2_add15_2_anx44952z1 & (tap3_9_a & !sum3_add16_0_anx2247z25 # !tap3_9_a & (sum3_add16_0_anx2247z25 # GND))
-- sum3_add16_0_anx2247z22 = CARRY(sum2_add15_2_anx44952z1 & !tap3_9_a & !sum3_add16_0_anx2247z25 # !sum2_add15_2_anx44952z1 & (!sum3_add16_0_anx2247z25 # !tap3_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum2_add15_2_anx44952z1,
	datab => tap3_9_a,
	datad => VCC,
	cin => sum3_add16_0_anx2247z25,
	combout => sum3_add16_0_anx44952z1,
	cout => sum3_add16_0_anx2247z22);

tap4_9_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_9_afeeder_combout = tap3_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_9_a,
	combout => tap4_9_afeeder_combout);

reg_tap4_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_9_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_9_a);

o_data_add16_1_aix2247z52932 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx44952z1 = sum3_add16_0_anx44952z1 & (tap4_9_a & o_data_add16_1_anx2247z26 & VCC # !tap4_9_a & !o_data_add16_1_anx2247z26) # !sum3_add16_0_anx44952z1 & (tap4_9_a & !o_data_add16_1_anx2247z26 # !tap4_9_a & (o_data_add16_1_anx2247z26 # 
-- GND))
-- o_data_add16_1_anx2247z23 = CARRY(sum3_add16_0_anx44952z1 & !tap4_9_a & !o_data_add16_1_anx2247z26 # !sum3_add16_0_anx44952z1 & (!o_data_add16_1_anx2247z26 # !tap4_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx44952z1,
	datab => tap4_9_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z26,
	combout => o_data_add16_1_anx44952z1,
	cout => o_data_add16_1_anx2247z23);

i_data_ibuf_10_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(10),
	regout => tap1_10_a);

reg_tap2_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_10_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_10_a);

sum2_add15_2_aix1250z52930 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx45949z1 = (tap1_10_a $ tap2_10_a $ !sum2_add15_2_anx1250z20) # GND
-- sum2_add15_2_anx1250z17 = CARRY(tap1_10_a & (tap2_10_a # !sum2_add15_2_anx1250z20) # !tap1_10_a & tap2_10_a & !sum2_add15_2_anx1250z20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap1_10_a,
	datab => tap2_10_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z20,
	combout => sum2_add15_2_anx45949z1,
	cout => sum2_add15_2_anx1250z17);

sum3_add16_0_aix2247z52931 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx45949z1 = (tap3_10_a $ sum2_add15_2_anx45949z1 $ !sum3_add16_0_anx2247z22) # GND
-- sum3_add16_0_anx2247z19 = CARRY(tap3_10_a & (sum2_add15_2_anx45949z1 # !sum3_add16_0_anx2247z22) # !tap3_10_a & sum2_add15_2_anx45949z1 & !sum3_add16_0_anx2247z22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap3_10_a,
	datab => sum2_add15_2_anx45949z1,
	datad => VCC,
	cin => sum3_add16_0_anx2247z22,
	combout => sum3_add16_0_anx45949z1,
	cout => sum3_add16_0_anx2247z19);

tap3_10_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_10_afeeder_combout = tap2_10_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_10_a,
	combout => tap3_10_afeeder_combout);

reg_tap3_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_10_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_10_a);

tap4_10_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_10_afeeder_combout = tap3_10_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_10_a,
	combout => tap4_10_afeeder_combout);

reg_tap4_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_10_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_10_a);

o_data_add16_1_aix2247z52931 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx45949z1 = (sum3_add16_0_anx45949z1 $ tap4_10_a $ !o_data_add16_1_anx2247z23) # GND
-- o_data_add16_1_anx2247z20 = CARRY(sum3_add16_0_anx45949z1 & (tap4_10_a # !o_data_add16_1_anx2247z23) # !sum3_add16_0_anx45949z1 & tap4_10_a & !o_data_add16_1_anx2247z23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx45949z1,
	datab => tap4_10_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z23,
	combout => o_data_add16_1_anx45949z1,
	cout => o_data_add16_1_anx2247z20);

i_data_ibuf_11_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(11),
	regout => tap1_11_a);

reg_tap2_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_11_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_11_a);

tap3_11_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_11_afeeder_combout = tap2_11_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_11_a,
	combout => tap3_11_afeeder_combout);

reg_tap3_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_11_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_11_a);

tap4_11_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_11_afeeder_combout = tap3_11_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_11_a,
	combout => tap4_11_afeeder_combout);

reg_tap4_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_11_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_11_a);

sum2_add15_2_aix1250z52929 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx46946z1 = tap2_11_a & (tap1_11_a & sum2_add15_2_anx1250z17 & VCC # !tap1_11_a & !sum2_add15_2_anx1250z17) # !tap2_11_a & (tap1_11_a & !sum2_add15_2_anx1250z17 # !tap1_11_a & (sum2_add15_2_anx1250z17 # GND))
-- sum2_add15_2_anx1250z14 = CARRY(tap2_11_a & !tap1_11_a & !sum2_add15_2_anx1250z17 # !tap2_11_a & (!sum2_add15_2_anx1250z17 # !tap1_11_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap2_11_a,
	datab => tap1_11_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z17,
	combout => sum2_add15_2_anx46946z1,
	cout => sum2_add15_2_anx1250z14);

sum3_add16_0_aix2247z52930 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx46946z1 = tap3_11_a & (sum2_add15_2_anx46946z1 & sum3_add16_0_anx2247z19 & VCC # !sum2_add15_2_anx46946z1 & !sum3_add16_0_anx2247z19) # !tap3_11_a & (sum2_add15_2_anx46946z1 & !sum3_add16_0_anx2247z19 # !sum2_add15_2_anx46946z1 & 
-- (sum3_add16_0_anx2247z19 # GND))
-- sum3_add16_0_anx2247z16 = CARRY(tap3_11_a & !sum2_add15_2_anx46946z1 & !sum3_add16_0_anx2247z19 # !tap3_11_a & (!sum3_add16_0_anx2247z19 # !sum2_add15_2_anx46946z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap3_11_a,
	datab => sum2_add15_2_anx46946z1,
	datad => VCC,
	cin => sum3_add16_0_anx2247z19,
	combout => sum3_add16_0_anx46946z1,
	cout => sum3_add16_0_anx2247z16);

o_data_add16_1_aix2247z52930 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx46946z1 = tap4_11_a & (sum3_add16_0_anx46946z1 & o_data_add16_1_anx2247z20 & VCC # !sum3_add16_0_anx46946z1 & !o_data_add16_1_anx2247z20) # !tap4_11_a & (sum3_add16_0_anx46946z1 & !o_data_add16_1_anx2247z20 # !sum3_add16_0_anx46946z1 & 
-- (o_data_add16_1_anx2247z20 # GND))
-- o_data_add16_1_anx2247z17 = CARRY(tap4_11_a & !sum3_add16_0_anx46946z1 & !o_data_add16_1_anx2247z20 # !tap4_11_a & (!o_data_add16_1_anx2247z20 # !sum3_add16_0_anx46946z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap4_11_a,
	datab => sum3_add16_0_anx46946z1,
	datad => VCC,
	cin => o_data_add16_1_anx2247z20,
	combout => o_data_add16_1_anx46946z1,
	cout => o_data_add16_1_anx2247z17);

i_data_ibuf_12_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(12),
	regout => tap1_12_a);

reg_tap2_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_12_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_12_a);

sum2_add15_2_aix1250z52928 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx62798z1 = (tap1_12_a $ tap2_12_a $ !sum2_add15_2_anx1250z14) # GND
-- sum2_add15_2_anx1250z11 = CARRY(tap1_12_a & (tap2_12_a # !sum2_add15_2_anx1250z14) # !tap1_12_a & tap2_12_a & !sum2_add15_2_anx1250z14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap1_12_a,
	datab => tap2_12_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z14,
	combout => sum2_add15_2_anx62798z1,
	cout => sum2_add15_2_anx1250z11);

sum3_add16_0_aix2247z52929 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx62798z1 = (tap3_12_a $ sum2_add15_2_anx62798z1 $ !sum3_add16_0_anx2247z16) # GND
-- sum3_add16_0_anx2247z13 = CARRY(tap3_12_a & (sum2_add15_2_anx62798z1 # !sum3_add16_0_anx2247z16) # !tap3_12_a & sum2_add15_2_anx62798z1 & !sum3_add16_0_anx2247z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap3_12_a,
	datab => sum2_add15_2_anx62798z1,
	datad => VCC,
	cin => sum3_add16_0_anx2247z16,
	combout => sum3_add16_0_anx62798z1,
	cout => sum3_add16_0_anx2247z13);

tap3_12_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_12_afeeder_combout = tap2_12_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_12_a,
	combout => tap3_12_afeeder_combout);

reg_tap3_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_12_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_12_a);

tap4_12_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_12_afeeder_combout = tap3_12_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_12_a,
	combout => tap4_12_afeeder_combout);

reg_tap4_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_12_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_12_a);

o_data_add16_1_aix2247z52929 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx62798z1 = (sum3_add16_0_anx62798z1 $ tap4_12_a $ !o_data_add16_1_anx2247z17) # GND
-- o_data_add16_1_anx2247z14 = CARRY(sum3_add16_0_anx62798z1 & (tap4_12_a # !o_data_add16_1_anx2247z17) # !sum3_add16_0_anx62798z1 & tap4_12_a & !o_data_add16_1_anx2247z17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx62798z1,
	datab => tap4_12_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z17,
	combout => o_data_add16_1_anx62798z1,
	cout => o_data_add16_1_anx2247z14);

i_data_ibuf_13_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(13),
	regout => tap1_13_a);

reg_tap2_13_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_13_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_13_a);

reg_tap3_13_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap2_13_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_13_a);

tap4_13_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_13_afeeder_combout = tap3_13_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_13_a,
	combout => tap4_13_afeeder_combout);

reg_tap4_13_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_13_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_13_a);

sum3_add16_0_aix2247z52928 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx63795z1 = sum2_add15_2_anx63795z1 & (tap3_13_a & sum3_add16_0_anx2247z13 & VCC # !tap3_13_a & !sum3_add16_0_anx2247z13) # !sum2_add15_2_anx63795z1 & (tap3_13_a & !sum3_add16_0_anx2247z13 # !tap3_13_a & (sum3_add16_0_anx2247z13 # GND))
-- sum3_add16_0_anx2247z10 = CARRY(sum2_add15_2_anx63795z1 & !tap3_13_a & !sum3_add16_0_anx2247z13 # !sum2_add15_2_anx63795z1 & (!sum3_add16_0_anx2247z13 # !tap3_13_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum2_add15_2_anx63795z1,
	datab => tap3_13_a,
	datad => VCC,
	cin => sum3_add16_0_anx2247z13,
	combout => sum3_add16_0_anx63795z1,
	cout => sum3_add16_0_anx2247z10);

o_data_add16_1_aix2247z52928 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx63795z1 = tap4_13_a & (sum3_add16_0_anx63795z1 & o_data_add16_1_anx2247z14 & VCC # !sum3_add16_0_anx63795z1 & !o_data_add16_1_anx2247z14) # !tap4_13_a & (sum3_add16_0_anx63795z1 & !o_data_add16_1_anx2247z14 # !sum3_add16_0_anx63795z1 & 
-- (o_data_add16_1_anx2247z14 # GND))
-- o_data_add16_1_anx2247z11 = CARRY(tap4_13_a & !sum3_add16_0_anx63795z1 & !o_data_add16_1_anx2247z14 # !tap4_13_a & (!o_data_add16_1_anx2247z14 # !sum3_add16_0_anx63795z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap4_13_a,
	datab => sum3_add16_0_anx63795z1,
	datad => VCC,
	cin => o_data_add16_1_anx2247z14,
	combout => o_data_add16_1_anx63795z1,
	cout => o_data_add16_1_anx2247z11);

i_data_ibuf_14_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(14),
	regout => tap1_14_a);

reg_tap2_14_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_14_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_14_a);

tap3_14_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_14_afeeder_combout = tap2_14_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_14_a,
	combout => tap3_14_afeeder_combout);

reg_tap3_14_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_14_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_14_a);

tap4_14_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_14_afeeder_combout = tap3_14_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_14_a,
	combout => tap4_14_afeeder_combout);

reg_tap4_14_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_14_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_14_a);

sum2_add15_2_aix1250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx64792z1 = (tap1_14_a $ tap2_14_a $ !sum2_add15_2_anx1250z8) # GND
-- sum2_add15_2_anx1250z5 = CARRY(tap1_14_a & (tap2_14_a # !sum2_add15_2_anx1250z8) # !tap1_14_a & tap2_14_a & !sum2_add15_2_anx1250z8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap1_14_a,
	datab => tap2_14_a,
	datad => VCC,
	cin => sum2_add15_2_anx1250z8,
	combout => sum2_add15_2_anx64792z1,
	cout => sum2_add15_2_anx1250z5);

sum3_add16_0_aix2247z52927 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx64792z1 = (tap3_14_a $ sum2_add15_2_anx64792z1 $ !sum3_add16_0_anx2247z10) # GND
-- sum3_add16_0_anx2247z7 = CARRY(tap3_14_a & (sum2_add15_2_anx64792z1 # !sum3_add16_0_anx2247z10) # !tap3_14_a & sum2_add15_2_anx64792z1 & !sum3_add16_0_anx2247z10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap3_14_a,
	datab => sum2_add15_2_anx64792z1,
	datad => VCC,
	cin => sum3_add16_0_anx2247z10,
	combout => sum3_add16_0_anx64792z1,
	cout => sum3_add16_0_anx2247z7);

o_data_add16_1_aix2247z52927 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx64792z1 = (tap4_14_a $ sum3_add16_0_anx64792z1 $ !o_data_add16_1_anx2247z11) # GND
-- o_data_add16_1_anx2247z8 = CARRY(tap4_14_a & (sum3_add16_0_anx64792z1 # !o_data_add16_1_anx2247z11) # !tap4_14_a & sum3_add16_0_anx64792z1 & !o_data_add16_1_anx2247z11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap4_14_a,
	datab => sum3_add16_0_anx64792z1,
	datad => VCC,
	cin => o_data_add16_1_anx2247z11,
	combout => o_data_add16_1_anx64792z1,
	cout => o_data_add16_1_anx2247z8);

i_data_ibuf_15_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_aclkctrl_outclk,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(15),
	regout => tap1_15_a);

reg_tap2_15_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	sdata => tap1_15_a,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap2_15_a);

tap3_15_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap3_15_afeeder_combout = tap2_15_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap2_15_a,
	combout => tap3_15_afeeder_combout);

reg_tap3_15_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap3_15_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap3_15_a);

sum3_add16_0_aix2247z52926 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx253z1 = sum2_add15_2_anx253z1 & (tap3_15_a & sum3_add16_0_anx2247z7 & VCC # !tap3_15_a & !sum3_add16_0_anx2247z7) # !sum2_add15_2_anx253z1 & (tap3_15_a & !sum3_add16_0_anx2247z7 # !tap3_15_a & (sum3_add16_0_anx2247z7 # GND))
-- sum3_add16_0_anx2247z5 = CARRY(sum2_add15_2_anx253z1 & !tap3_15_a & !sum3_add16_0_anx2247z7 # !sum2_add15_2_anx253z1 & (!sum3_add16_0_anx2247z7 # !tap3_15_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum2_add15_2_anx253z1,
	datab => tap3_15_a,
	datad => VCC,
	cin => sum3_add16_0_anx2247z7,
	combout => sum3_add16_0_anx253z1,
	cout => sum3_add16_0_anx2247z5);

tap4_15_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- tap4_15_afeeder_combout = tap3_15_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tap3_15_a,
	combout => tap4_15_afeeder_combout);

reg_tap4_15_a : cycloneii_lcell_ff
PORT MAP (
	clk => clk_aclkctrl_outclk,
	datain => tap4_15_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tap4_15_a);

o_data_add16_1_aix2247z52926 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx253z1 = sum3_add16_0_anx253z1 & (tap4_15_a & o_data_add16_1_anx2247z8 & VCC # !tap4_15_a & !o_data_add16_1_anx2247z8) # !sum3_add16_0_anx253z1 & (tap4_15_a & !o_data_add16_1_anx2247z8 # !tap4_15_a & (o_data_add16_1_anx2247z8 # GND))
-- o_data_add16_1_anx2247z6 = CARRY(sum3_add16_0_anx253z1 & !tap4_15_a & !o_data_add16_1_anx2247z8 # !sum3_add16_0_anx253z1 & (!o_data_add16_1_anx2247z8 # !tap4_15_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx253z1,
	datab => tap4_15_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z8,
	combout => o_data_add16_1_anx253z1,
	cout => o_data_add16_1_anx2247z6);

sum2_add15_2_aix1250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- sum2_add15_2_anx1250z1 = tap1_15_a $ sum2_add15_2_anx1250z4 $ !tap2_15_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tap1_15_a,
	datad => tap2_15_a,
	cin => sum2_add15_2_anx1250z4,
	combout => sum2_add15_2_anx1250z1);

sum3_add16_0_aix2247z52925 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx1250z1 = (tap3_15_a $ sum2_add15_2_anx1250z1 $ !sum3_add16_0_anx2247z5) # GND
-- sum3_add16_0_anx2247z4 = CARRY(tap3_15_a & (sum2_add15_2_anx1250z1 # !sum3_add16_0_anx2247z5) # !tap3_15_a & sum2_add15_2_anx1250z1 & !sum3_add16_0_anx2247z5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tap3_15_a,
	datab => sum2_add15_2_anx1250z1,
	datad => VCC,
	cin => sum3_add16_0_anx2247z5,
	combout => sum3_add16_0_anx1250z1,
	cout => sum3_add16_0_anx2247z4);

o_data_add16_1_aix2247z52925 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx1250z1 = (sum3_add16_0_anx1250z1 $ tap4_15_a $ !o_data_add16_1_anx2247z6) # GND
-- o_data_add16_1_anx2247z4 = CARRY(sum3_add16_0_anx1250z1 & (tap4_15_a # !o_data_add16_1_anx2247z6) # !sum3_add16_0_anx1250z1 & tap4_15_a & !o_data_add16_1_anx2247z6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx1250z1,
	datab => tap4_15_a,
	datad => VCC,
	cin => o_data_add16_1_anx2247z6,
	combout => o_data_add16_1_anx1250z1,
	cout => o_data_add16_1_anx2247z4);

sum3_add16_0_aix2247z52923 : cycloneii_lcell_comb
-- Equation(s):
-- sum3_add16_0_anx2247z1 = sum2_add15_2_anx1250z1 $ sum3_add16_0_anx2247z4 $ tap3_15_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sum2_add15_2_anx1250z1,
	datad => tap3_15_a,
	cin => sum3_add16_0_anx2247z4,
	combout => sum3_add16_0_anx2247z1);

o_data_add16_1_aix2247z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_data_add16_1_anx2247z1 = sum3_add16_0_anx2247z1 $ o_data_add16_1_anx2247z4 $ tap4_15_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sum3_add16_0_anx2247z1,
	datad => tap4_15_a,
	cin => o_data_add16_1_anx2247z4,
	combout => o_data_add16_1_anx2247z1);

o_data_obuf_0_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx37973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(0));

o_data_obuf_1_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx38970z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(1));

o_data_obuf_2_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx39967z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(2));

o_data_obuf_3_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx40964z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(3));

o_data_obuf_4_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx41961z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(4));

o_data_obuf_5_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx42958z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(5));

o_data_obuf_6_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx43955z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(6));

o_data_obuf_7_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx44952z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(7));

o_data_obuf_8_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx45949z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(8));

o_data_obuf_9_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx46946z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(9));

o_data_obuf_10_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx62798z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(10));

o_data_obuf_11_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx63795z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(11));

o_data_obuf_12_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx64792z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(12));

o_data_obuf_13_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx253z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(13));

o_data_obuf_14_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx1250z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(14));

o_data_obuf_15_a : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_data_add16_1_anx2247z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_data(15));

i_data_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(0));

i_data_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_data(1));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.fir_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity fir is
  port (
      clk  : in STD_LOGIC
    ; i_data  : in word (15 downto 0)
    ; o_data  : out word (15 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of fir is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.fir_chip
    port map (
        clk => clk
      , i_data(15) => i_data(15)
      , i_data(14) => i_data(14)
      , i_data(13) => i_data(13)
      , i_data(12) => i_data(12)
      , i_data(11) => i_data(11)
      , i_data(10) => i_data(10)
      , i_data(9) => i_data(9)
      , i_data(8) => i_data(8)
      , i_data(7) => i_data(7)
      , i_data(6) => i_data(6)
      , i_data(5) => i_data(5)
      , i_data(4) => i_data(4)
      , i_data(3) => i_data(3)
      , i_data(2) => i_data(2)
      , i_data(1) => i_data(1)
      , i_data(0) => i_data(0)
      , o_data(15) => o_data(15)
      , o_data(14) => o_data(14)
      , o_data(13) => o_data(13)
      , o_data(12) => o_data(12)
      , o_data(11) => o_data(11)
      , o_data(10) => o_data(10)
      , o_data(9) => o_data(9)
      , o_data(8) => o_data(8)
      , o_data(7) => o_data(7)
      , o_data(6) => o_data(6)
      , o_data(5) => o_data(5)
      , o_data(4) => o_data(4)
      , o_data(3) => o_data(3)
      , o_data(2) => o_data(2)
      , o_data(1) => o_data(1)
      , o_data(0) => o_data(0)
    );
end architecture;

