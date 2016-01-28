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

-- DATE "01/26/2016 18:37:11"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	fir_top_chip IS
    PORT (
	clock_50 : IN std_logic;
	clock_27 : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(17 DOWNTO 0);
	ledg : OUT std_logic_vector(8 DOWNTO 0);
	ledr : OUT std_logic_vector(17 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0);
	hex5 : OUT std_logic_vector(6 DOWNTO 0);
	hex6 : OUT std_logic_vector(6 DOWNTO 0);
	hex7 : OUT std_logic_vector(6 DOWNTO 0);
	aud_xck : OUT std_logic;
	aud_bclk : INOUT std_logic;
	aud_dacdat : OUT std_logic;
	aud_daclrck : OUT std_logic;
	aud_adclrck : OUT std_logic;
	i2c_sdat : INOUT std_logic;
	i2c_sclk : OUT std_logic
	);
END fir_top_chip;

ARCHITECTURE structure OF fir_top_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_clock_27 : std_logic;
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_aud_xck : std_logic;
SIGNAL ww_aud_dacdat : std_logic;
SIGNAL ww_aud_daclrck : std_logic;
SIGNAL ww_aud_adclrck : std_logic;
SIGNAL ww_i2c_sclk : std_logic;
SIGNAL \u_audio_dac_p1_altpll|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_audio_dac_p1_altpll|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aud_bclk_dup0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aud_adclrck_dup0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_27~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_audio_dac_p1_altpll|_clk1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL nx38664z1 : std_logic;
SIGNAL nx38664z3 : std_logic;
SIGNAL nx38664z9 : std_logic;
SIGNAL nx4119z3 : std_logic;
SIGNAL nx4119z2 : std_logic;
SIGNAL nx4119z10 : std_logic;
SIGNAL nx4119z12 : std_logic;
SIGNAL nx4119z11 : std_logic;
SIGNAL nx4119z9 : std_logic;
SIGNAL nx4119z13 : std_logic;
SIGNAL nx4119z15 : std_logic;
SIGNAL \u_audio_dac_p1_altpll|pll~clk\ : std_logic;
SIGNAL \u_audio_dac_p1_altpll|pll~CLK2\ : std_logic;
SIGNAL \audio_out_5_\ : std_logic;
SIGNAL \audio_out_4_\ : std_logic;
SIGNAL nx24999z3 : std_logic;
SIGNAL \audio_out_1_\ : std_logic;
SIGNAL \audio_out_0_\ : std_logic;
SIGNAL nx24999z5 : std_logic;
SIGNAL \audio_out_15_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z8\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z4\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z8\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_2_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_3__dup_193\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_4__dup_192\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_6__dup_190\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8__dup_188\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z6\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_2_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_5__dup_191\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_7__dup_189\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_8__dup_188\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|taps_16__9_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_7_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_9_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_5_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_3_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z6\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z3\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z6\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z4\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|b_10_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_9__dup_187\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z4\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_9__dup_187\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z5\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z2\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z5\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z3\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z5\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z3\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z3\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_10__dup_186\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_12_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z4\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_12_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z3\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_13_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z4\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z3\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z2\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z3\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z2\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z2\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z2\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z2\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z2\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_11__dup_185\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z2\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z2\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_14_\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_12_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z2\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z2\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z2\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z4\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ : std_logic;
SIGNAL nx50205z4 : std_logic;
SIGNAL nx50205z3 : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx7286z2\ : std_logic;
SIGNAL \u_sine_address_0_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx37973z1\ : std_logic;
SIGNAL \u_sine_address_4_\ : std_logic;
SIGNAL \u_sine_address_5_\ : std_logic;
SIGNAL \u_sine_address_7_\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_5_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_6_\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx22137z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_5n5s2f1_0_\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z10\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z12\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z14\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z13\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z16\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z17\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z15\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z21\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z22\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z20\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx56256z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx57253z1\ : std_logic;
SIGNAL \aud_bclk_dup0~clkctrl_outclk\ : std_logic;
SIGNAL \audio_out_0_~feeder_combout\ : std_logic;
SIGNAL \audio_out_15_~feeder_combout\ : std_logic;
SIGNAL nx49625z3 : std_logic;
SIGNAL nx49625z1 : std_logic;
SIGNAL nx55607z1 : std_logic;
SIGNAL nx49625z4 : std_logic;
SIGNAL \display_freq_0_\ : std_logic;
SIGNAL \display_freq_1_\ : std_logic;
SIGNAL nx49625z2 : std_logic;
SIGNAL \display_freq_2_\ : std_logic;
SIGNAL nx55607z2 : std_logic;
SIGNAL \hex4_dup0_0_\ : std_logic;
SIGNAL \display_freq_3_\ : std_logic;
SIGNAL \hex4_dup0_1_\ : std_logic;
SIGNAL \hex4_dup0_2_\ : std_logic;
SIGNAL \hex4_dup0_3_\ : std_logic;
SIGNAL \hex4_dup0_4_\ : std_logic;
SIGNAL \hex4_dup0_5_\ : std_logic;
SIGNAL \hex4_dup0_6_\ : std_logic;
SIGNAL nx38664z8 : std_logic;
SIGNAL \display_freq_4_\ : std_logic;
SIGNAL nx38664z2 : std_logic;
SIGNAL \display_freq_7_\ : std_logic;
SIGNAL nx38664z5 : std_logic;
SIGNAL nx38664z4 : std_logic;
SIGNAL \display_freq_6_\ : std_logic;
SIGNAL nx38664z6 : std_logic;
SIGNAL nx38664z7 : std_logic;
SIGNAL \display_freq_5_\ : std_logic;
SIGNAL \hex5_dup0_0_\ : std_logic;
SIGNAL \hex5_dup0_1_\ : std_logic;
SIGNAL \hex5_dup0_2_\ : std_logic;
SIGNAL \hex5_dup0_3_\ : std_logic;
SIGNAL \hex5_dup0_4_\ : std_logic;
SIGNAL \hex5_dup0_5_\ : std_logic;
SIGNAL \hex5_dup0_6_\ : std_logic;
SIGNAL nx4119z7 : std_logic;
SIGNAL nx4119z6 : std_logic;
SIGNAL nx4119z5 : std_logic;
SIGNAL \display_freq_10_\ : std_logic;
SIGNAL nx4119z14 : std_logic;
SIGNAL \display_freq_8_\ : std_logic;
SIGNAL nx4119z8 : std_logic;
SIGNAL \display_freq_9_\ : std_logic;
SIGNAL nx4119z1 : std_logic;
SIGNAL nx4119z4 : std_logic;
SIGNAL \display_freq_11_\ : std_logic;
SIGNAL \hex6_dup0_0_\ : std_logic;
SIGNAL \hex6_dup0_1_\ : std_logic;
SIGNAL \hex6_dup0_2_\ : std_logic;
SIGNAL \hex6_dup0_3_\ : std_logic;
SIGNAL \hex6_dup0_4_\ : std_logic;
SIGNAL \hex6_dup0_5_\ : std_logic;
SIGNAL \hex6_dup0_6_\ : std_logic;
SIGNAL nx17637z1 : std_logic;
SIGNAL \hex7_dup0_0_\ : std_logic;
SIGNAL \clock_27~combout\ : std_logic;
SIGNAL \u_audio_dac_p1_altpll|_clk1\ : std_logic;
SIGNAL \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\ : std_logic;
SIGNAL \NOT_bit_position_0_\ : std_logic;
SIGNAL \bit_position_0_\ : std_logic;
SIGNAL nx49817z1 : std_logic;
SIGNAL \bit_position_2_\ : std_logic;
SIGNAL nx48820z1 : std_logic;
SIGNAL \bit_position_3_\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\ : std_logic;
SIGNAL nx48238z1 : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\ : std_logic;
SIGNAL \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\ : std_logic;
SIGNAL nx50205z2 : std_logic;
SIGNAL nx50205z1 : std_logic;
SIGNAL aud_adclrck_dup0 : std_logic;
SIGNAL \aud_adclrck_dup0~clkctrl_outclk\ : std_logic;
SIGNAL \u_sine_address_3_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z23\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx38970z1\ : std_logic;
SIGNAL \u_sine_address_1_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z20\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx39967z1\ : std_logic;
SIGNAL \u_sine_address_2_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z17\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx40964z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z14\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx41961z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z11\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx42958z1\ : std_logic;
SIGNAL \u_sine_address_6_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z8\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx43955z1\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z5\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx44952z1\ : std_logic;
SIGNAL \u_sine_address_8_\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z3\ : std_logic;
SIGNAL \u_sine_address_add9_0i1|nx45949z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx51271z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_0_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z10\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx52268z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_1_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z9\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx53265z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_2_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z8\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx54262z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_3_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z7\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx55259z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_4_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z6\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx56256z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_5_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z5\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx57253z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_6_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z4\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx58250z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_7_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z3\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx59247z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_8_\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z2\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|nx60244z1\ : std_logic;
SIGNAL \u_noise_modgen_counter_address|q_9_\ : std_logic;
SIGNAL \raw_audio_9_\ : std_logic;
SIGNAL \raw_audio_11_\ : std_logic;
SIGNAL \u_fir|taps_1__15_\ : std_logic;
SIGNAL \u_fir|taps_2__15_\ : std_logic;
SIGNAL \u_fir|taps_3__15_\ : std_logic;
SIGNAL \u_fir|taps_4__15_\ : std_logic;
SIGNAL \u_fir|taps_5__15_\ : std_logic;
SIGNAL \u_fir|taps_6__15_\ : std_logic;
SIGNAL \u_fir|taps_7__15_\ : std_logic;
SIGNAL \u_fir|taps_8__15_\ : std_logic;
SIGNAL \u_fir|taps_9__15_\ : std_logic;
SIGNAL \u_fir|taps_10__15_\ : std_logic;
SIGNAL \u_fir|taps_11__15_\ : std_logic;
SIGNAL \u_fir|taps_12__15_\ : std_logic;
SIGNAL \raw_audio_10_\ : std_logic;
SIGNAL \u_fir|taps_1__10_\ : std_logic;
SIGNAL \u_fir|taps_2__10_\ : std_logic;
SIGNAL \u_fir|taps_3__10_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_3__10_\ : std_logic;
SIGNAL \u_fir|taps_4__10_\ : std_logic;
SIGNAL \u_fir|taps_5__10_\ : std_logic;
SIGNAL \u_fir|taps_6__10_\ : std_logic;
SIGNAL \u_fir|taps_7__10_\ : std_logic;
SIGNAL \u_fir|taps_8__10_\ : std_logic;
SIGNAL \u_fir|taps_9__10_\ : std_logic;
SIGNAL \u_fir|taps_10__10_\ : std_logic;
SIGNAL \u_fir|taps_11__10_\ : std_logic;
SIGNAL \u_fir|taps_12__10_\ : std_logic;
SIGNAL \raw_audio_8_\ : std_logic;
SIGNAL \u_fir|taps_1__8_\ : std_logic;
SIGNAL \u_fir|taps_2__8_\ : std_logic;
SIGNAL \u_fir|taps_3__8_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_3__8_\ : std_logic;
SIGNAL \u_fir|taps_4__8_\ : std_logic;
SIGNAL \u_fir|taps_5__8_\ : std_logic;
SIGNAL \u_fir|taps_6__8_\ : std_logic;
SIGNAL \u_fir|taps_7__8_\ : std_logic;
SIGNAL \u_fir|taps_8__8_\ : std_logic;
SIGNAL \u_fir|taps_9__8_\ : std_logic;
SIGNAL \u_fir|taps_10__8_\ : std_logic;
SIGNAL \u_fir|taps_11__8_\ : std_logic;
SIGNAL \u_fir|taps_12__8_\ : std_logic;
SIGNAL \raw_audio_7_\ : std_logic;
SIGNAL \u_fir|taps_1__7_\ : std_logic;
SIGNAL \u_fir|taps_2__7_\ : std_logic;
SIGNAL \u_fir|taps_3__7_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_3__7_\ : std_logic;
SIGNAL \u_fir|taps_4__7_\ : std_logic;
SIGNAL \u_fir|taps_5__7_\ : std_logic;
SIGNAL \u_fir|taps_6__7_\ : std_logic;
SIGNAL \u_fir|taps_7__7_\ : std_logic;
SIGNAL \u_fir|taps_8__7_\ : std_logic;
SIGNAL \u_fir|taps_9__7_\ : std_logic;
SIGNAL \u_fir|taps_10__7_\ : std_logic;
SIGNAL \u_fir|taps_11__7_\ : std_logic;
SIGNAL \u_fir|taps_12__7_\ : std_logic;
SIGNAL \raw_audio_5_\ : std_logic;
SIGNAL \u_fir|taps_1__5_\ : std_logic;
SIGNAL \u_fir|taps_2__5_\ : std_logic;
SIGNAL \u_fir|taps_3__5_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_3__5_\ : std_logic;
SIGNAL \u_fir|taps_4__5_\ : std_logic;
SIGNAL \u_fir|taps_5__5_\ : std_logic;
SIGNAL \u_fir|taps_6__5_\ : std_logic;
SIGNAL \u_fir|taps_7__5_\ : std_logic;
SIGNAL \u_fir|taps_8__5_\ : std_logic;
SIGNAL \u_fir|taps_9__5_\ : std_logic;
SIGNAL \u_fir|taps_10__5_\ : std_logic;
SIGNAL \u_fir|taps_11__5_\ : std_logic;
SIGNAL \u_fir|taps_12__5_\ : std_logic;
SIGNAL \raw_audio_3_\ : std_logic;
SIGNAL \u_fir|taps_1__3_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_1__3_\ : std_logic;
SIGNAL \u_fir|taps_2__3_\ : std_logic;
SIGNAL \u_fir|taps_3__3_\ : std_logic;
SIGNAL \u_fir|taps_4__3_\ : std_logic;
SIGNAL \u_fir|taps_5__3_\ : std_logic;
SIGNAL \u_fir|taps_6__3_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_6__3_\ : std_logic;
SIGNAL \u_fir|taps_7__3_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_7__3_\ : std_logic;
SIGNAL \u_fir|taps_8__3_\ : std_logic;
SIGNAL \u_fir|taps_9__3_\ : std_logic;
SIGNAL \u_fir|taps_10__3_\ : std_logic;
SIGNAL \u_fir|taps_11__3_\ : std_logic;
SIGNAL \u_fir|taps_12__3_\ : std_logic;
SIGNAL \raw_audio_1_\ : std_logic;
SIGNAL \u_fir|taps_1__1_\ : std_logic;
SIGNAL \u_fir|taps_2__1_\ : std_logic;
SIGNAL \u_fir|taps_3__1_\ : std_logic;
SIGNAL \u_fir|taps_4__1_\ : std_logic;
SIGNAL \u_fir|taps_5__1_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_5__1_\ : std_logic;
SIGNAL \u_fir|taps_6__1_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_6__1_\ : std_logic;
SIGNAL \u_fir|taps_7__1_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_7__1_\ : std_logic;
SIGNAL \u_fir|taps_8__1_\ : std_logic;
SIGNAL \u_fir|taps_9__1_\ : std_logic;
SIGNAL \u_fir|taps_10__1_\ : std_logic;
SIGNAL \u_fir|taps_11__1_\ : std_logic;
SIGNAL \u_fir|taps_12__1_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z16\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z15\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z13\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z11\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z9\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z7\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z6\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|b_10_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z5\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \raw_audio_6_\ : std_logic;
SIGNAL \u_fir|taps_1__6_\ : std_logic;
SIGNAL \u_fir|taps_2__6_\ : std_logic;
SIGNAL \u_fir|taps_3__6_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_3__6_\ : std_logic;
SIGNAL \u_fir|taps_4__6_\ : std_logic;
SIGNAL \u_fir|taps_5__6_\ : std_logic;
SIGNAL \u_fir|taps_6__6_\ : std_logic;
SIGNAL \u_fir|taps_7__6_\ : std_logic;
SIGNAL \u_fir|taps_8__6_\ : std_logic;
SIGNAL \u_fir|taps_9__6_\ : std_logic;
SIGNAL \u_fir|taps_10__6_\ : std_logic;
SIGNAL \u_fir|taps_11__6_\ : std_logic;
SIGNAL \u_fir|taps_12__6_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \raw_audio_0_\ : std_logic;
SIGNAL \u_fir|taps_1__0_\ : std_logic;
SIGNAL \u_fir|taps_2__0_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_2__0_\ : std_logic;
SIGNAL \u_fir|taps_3__0_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_3__0_\ : std_logic;
SIGNAL \u_fir|taps_4__0_\ : std_logic;
SIGNAL \u_fir|taps_5__0_\ : std_logic;
SIGNAL \u_fir|taps_6__0_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_6__0_\ : std_logic;
SIGNAL \u_fir|taps_7__0_\ : std_logic;
SIGNAL \u_fir|taps_8__0_\ : std_logic;
SIGNAL \u_fir|taps_9__0_\ : std_logic;
SIGNAL \u_fir|taps_10__0_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_10__0_\ : std_logic;
SIGNAL \u_fir|taps_11__0_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_11__0_\ : std_logic;
SIGNAL \u_fir|taps_12__0_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z26\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z25\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z23\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z21\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z19\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z17\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z4\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z3\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\ : std_logic;
SIGNAL \u_fir|taps_1__9_\ : std_logic;
SIGNAL \u_fir|taps_2__9_\ : std_logic;
SIGNAL \u_fir|taps_3__9_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_3__9_\ : std_logic;
SIGNAL \u_fir|taps_4__9_\ : std_logic;
SIGNAL \u_fir|taps_5__9_\ : std_logic;
SIGNAL \u_fir|taps_6__9_\ : std_logic;
SIGNAL \u_fir|taps_7__9_\ : std_logic;
SIGNAL \u_fir|taps_8__9_\ : std_logic;
SIGNAL \u_fir|taps_9__9_\ : std_logic;
SIGNAL \u_fir|taps_10__9_\ : std_logic;
SIGNAL \u_fir|taps_11__9_\ : std_logic;
SIGNAL \raw_audio_4_\ : std_logic;
SIGNAL \u_fir|taps_1__4_\ : std_logic;
SIGNAL \u_fir|taps_2__4_\ : std_logic;
SIGNAL \u_fir|taps_3__4_\ : std_logic;
SIGNAL \u_fir|taps_4__4_\ : std_logic;
SIGNAL \u_fir|taps_5__4_\ : std_logic;
SIGNAL \u_fir|taps_6__4_\ : std_logic;
SIGNAL \u_fir|taps_7__4_\ : std_logic;
SIGNAL \u_fir|taps_8__4_\ : std_logic;
SIGNAL \u_fir|taps_9__4_\ : std_logic;
SIGNAL \u_fir|taps_10__4_\ : std_logic;
SIGNAL \u_fir|taps_11__4_\ : std_logic;
SIGNAL \raw_audio_2_\ : std_logic;
SIGNAL \u_fir|taps_1__2_\ : std_logic;
SIGNAL \u_fir|taps_2__2_\ : std_logic;
SIGNAL \u_fir|taps_3__2_\ : std_logic;
SIGNAL \u_fir|taps_4__2_\ : std_logic;
SIGNAL \u_fir|taps_5__2_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_5__2_\ : std_logic;
SIGNAL \u_fir|taps_6__2_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_6__2_\ : std_logic;
SIGNAL \u_fir|taps_7__2_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_7__2_\ : std_logic;
SIGNAL \u_fir|taps_8__2_\ : std_logic;
SIGNAL \u_fir|taps_9__2_\ : std_logic;
SIGNAL \u_fir|taps_10__2_\ : std_logic;
SIGNAL \u_fir|taps_11__2_\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z13\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z12\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z10\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z8\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z6\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z4\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z3\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z13\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z12\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z10\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z8\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z13\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z12\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z10\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z8\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z16\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z15\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z13\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z11\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z26\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z25\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z23\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5__dup_191\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z13\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z12\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z10\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z13\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z12\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z10\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3__dup_193\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|taps_13__15_\ : std_logic;
SIGNAL \u_fir|taps_12__9_\ : std_logic;
SIGNAL \u_fir|taps_13__9_\ : std_logic;
SIGNAL \u_fir|taps_13__8_\ : std_logic;
SIGNAL \u_fir|taps_13__7_\ : std_logic;
SIGNAL \u_fir|taps_12__4_\ : std_logic;
SIGNAL \u_fir|taps_13__4_\ : std_logic;
SIGNAL \u_fir|taps_13__5_\ : std_logic;
SIGNAL \u_fir|taps_12__2_\ : std_logic;
SIGNAL \u_fir|taps_13__2_\ : std_logic;
SIGNAL \u_fir|taps_13__1_\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z13\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z12\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z10\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z8\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z6\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z4\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z3\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|taps_13__10_\ : std_logic;
SIGNAL \u_fir|taps_14__10_\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|taps_14__7_\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|taps_14__5_\ : std_logic;
SIGNAL \u_fir|taps_14__4_\ : std_logic;
SIGNAL \u_fir|taps_13__3_\ : std_logic;
SIGNAL \u_fir|taps_14__3_\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|taps_14__15_\ : std_logic;
SIGNAL \u_fir|taps_15__15_\ : std_logic;
SIGNAL \u_fir|taps_14__9_\ : std_logic;
SIGNAL \u_fir|taps_15__9_\ : std_logic;
SIGNAL \u_fir|taps_15__7_\ : std_logic;
SIGNAL \u_fir|taps_14__8_\ : std_logic;
SIGNAL \u_fir|taps_15__8_\ : std_logic;
SIGNAL \u_fir|taps_15__4_\ : std_logic;
SIGNAL \u_fir|taps_13__6_\ : std_logic;
SIGNAL \u_fir|taps_14__6_\ : std_logic;
SIGNAL \u_fir|taps_15__6_\ : std_logic;
SIGNAL \u_fir|taps_14__2_\ : std_logic;
SIGNAL \u_fir|taps_15__2_\ : std_logic;
SIGNAL \u_fir|taps_14__1_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_14__1_\ : std_logic;
SIGNAL \u_fir|taps_15__1_\ : std_logic;
SIGNAL \u_fir|taps_15__3_\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z17\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z16\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z15\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z14\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z12\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z10\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z8\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z6\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z5\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_13_\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx41961z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx37973z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|taps_15__10_\ : std_logic;
SIGNAL \u_fir|taps_16__10_\ : std_logic;
SIGNAL \u_fir|taps_16__8_\ : std_logic;
SIGNAL \u_fir|taps_16__7_\ : std_logic;
SIGNAL \u_fir|taps_15__5_\ : std_logic;
SIGNAL \u_fir|taps_16__5_\ : std_logic;
SIGNAL \u_fir|taps_16__3_\ : std_logic;
SIGNAL \u_fir|taps_16__1_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z13\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z12\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z11\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z10\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z8\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z6\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z4\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z3\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z2\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_10_\ : std_logic;
SIGNAL \u_fir|taps_16__15_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_15_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_8_\ : std_logic;
SIGNAL \u_fir|taps_16__6_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_6_\ : std_logic;
SIGNAL \u_fir|taps_16__4_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_4_\ : std_logic;
SIGNAL \u_fir|taps_16__2_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_2_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_1_\ : std_logic;
SIGNAL \u_fir|taps_13__0_\ : std_logic;
SIGNAL \u_fir|taps_14__0_~feeder_combout\ : std_logic;
SIGNAL \u_fir|taps_14__0_\ : std_logic;
SIGNAL \u_fir|taps_15__0_\ : std_logic;
SIGNAL \u_fir|taps_16__0_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_tap_next_0_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z15\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z14\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z12\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z10\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z8\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z6\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z5\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \audio_out_9_\ : std_logic;
SIGNAL nx50814z1 : std_logic;
SIGNAL \bit_position_1_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \audio_out_8_\ : std_logic;
SIGNAL nx24999z7 : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z4\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z3\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \audio_out_10_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \audio_out_11_\ : std_logic;
SIGNAL nx24999z6 : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \audio_out_7_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \audio_out_6_\ : std_logic;
SIGNAL nx24999z2 : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \audio_out_3_\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \audio_out_2_\ : std_logic;
SIGNAL nx24999z4 : std_logic;
SIGNAL nx24999z1 : std_logic;
SIGNAL \audio_out_13_~feeder_combout\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z4\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z3\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z2\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z6\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z4\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z3\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z2\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z9\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z7\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z6\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z21\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z19\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z17\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z4\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11__dup_185\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z13\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z12\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z10\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z8\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z6\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z13\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z12\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z11\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z10\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z8\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z6\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z15\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z14\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z12\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z10\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\ : std_logic;
SIGNAL \u_fir|tap_array_1_filter_block_prod_mults28_0|d_3_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z17\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z16\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z15\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z14\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z12\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z10\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_prod_mults28_0|d_5_\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\ : std_logic;
SIGNAL \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx39967z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z43\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7__dup_189\ : std_logic;
SIGNAL \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z8\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z6\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z4\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\ : std_logic;
SIGNAL \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx43955z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_prod_mults28_0|d_7_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z37\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx45949z1\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z8\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z6\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z4\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z3\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|d_11_\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_prod_mults28_0|d_9_\ : std_logic;
SIGNAL \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z31\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z25\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx62798z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z19\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z13\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx253z1\ : std_logic;
SIGNAL \audio_out_13_\ : std_logic;
SIGNAL \audio_out_12_~feeder_combout\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx64792z1\ : std_logic;
SIGNAL \audio_out_12_\ : std_logic;
SIGNAL nx24999z9 : std_logic;
SIGNAL \audio_out_14_~feeder_combout\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z7\ : std_logic;
SIGNAL \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx1250z1\ : std_logic;
SIGNAL \audio_out_14_\ : std_logic;
SIGNAL nx24999z8 : std_logic;
SIGNAL aud_dacdat_dup0 : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx51271z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx17096z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_10_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx59247z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_8_\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z3\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx54262z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_3_\ : std_logic;
SIGNAL \u_i2c_av_config|nx17807z2\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_0_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z16\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx52268z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_1_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z15\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx53265z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_2_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z14\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z13\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_4_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z12\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z11\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z10\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx58250z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_7_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z9\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z8\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx60244z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_9_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z7\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z6\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx18093z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_11_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z5\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z4\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx20087z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_13_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z3\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx21084z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_14_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z2\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx22081z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_15_\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|nx19090z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_cont|q_12_\ : std_logic;
SIGNAL \u_i2c_av_config|nx35560z4\ : std_logic;
SIGNAL \u_i2c_av_config|nx17807z1\ : std_logic;
SIGNAL \u_i2c_av_config|reset_n\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\ : std_logic;
SIGNAL \u_i2c_av_config|nx23875z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z4\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z3\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\ : std_logic;
SIGNAL \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z5\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z2\ : std_logic;
SIGNAL \u_i2c_av_config|nx2692z1\ : std_logic;
SIGNAL \u_i2c_av_config|m_i2c_ctrl_clk\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx7286z1\ : std_logic;
SIGNAL \u_i2c_av_config|nx51161z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z7\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z6\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx43379z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|p_i2c_sclk\ : std_logic;
SIGNAL \clock_27~clkctrl_outclk\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_5n5s2f1_1_\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z18\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z9\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx44942z4\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z5\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z6\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx22137z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z3\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z8\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z2\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z7\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z1\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx41315z19\ : std_logic;
SIGNAL \u_i2c_av_config|u0|nx51857z1\ : std_logic;
SIGNAL nx30102z1 : std_logic;
SIGNAL nx30102z2 : std_logic;
SIGNAL \u_audio_dac_bck_div_2_\ : std_logic;
SIGNAL nx32096z1 : std_logic;
SIGNAL \u_audio_dac_bck_div_0_\ : std_logic;
SIGNAL nx31099z1 : std_logic;
SIGNAL nx31099z2 : std_logic;
SIGNAL \u_audio_dac_bck_div_1_\ : std_logic;
SIGNAL nx15494z1 : std_logic;
SIGNAL aud_bclk_dup0 : std_logic;
SIGNAL \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \key~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_key~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u_i2c_av_config|ALT_INV_reset_n\ : std_logic;
SIGNAL \u_i2c_av_config|u0|ALT_INV_nx51857z1\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_clock_27 <= clock_27;
ww_key <= key;
ww_sw <= sw;
ledg <= ww_ledg;
ledr <= ww_ledr;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
hex7 <= ww_hex7;
aud_xck <= ww_aud_xck;
aud_dacdat <= ww_aud_dacdat;
aud_daclrck <= ww_aud_daclrck;
aud_adclrck <= ww_aud_adclrck;
i2c_sclk <= ww_i2c_sclk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_audio_dac_p1_altpll|pll_INCLK_bus\ <= (gnd & \clock_27~combout\);

\u_audio_dac_p1_altpll|pll~clk\ <= \u_audio_dac_p1_altpll|pll_CLK_bus\(0);
\u_audio_dac_p1_altpll|_clk1\ <= \u_audio_dac_p1_altpll|pll_CLK_bus\(1);
\u_audio_dac_p1_altpll|pll~CLK2\ <= \u_audio_dac_p1_altpll|pll_CLK_bus\(2);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_noise_modgen_counter_address|q_9_\ & \u_noise_modgen_counter_address|q_8_\ & \u_noise_modgen_counter_address|q_7_\ & \u_noise_modgen_counter_address|q_6_\ & 
\u_noise_modgen_counter_address|q_5_\ & \u_noise_modgen_counter_address|q_4_\ & \u_noise_modgen_counter_address|q_3_\ & \u_noise_modgen_counter_address|q_2_\ & \u_noise_modgen_counter_address|q_1_\ & \u_noise_modgen_counter_address|q_0_\);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(0) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(1) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(2) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(3) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_sine_address_add9_0i1|nx45949z1\ & \u_sine_address_add9_0i1|nx44952z1\ & \u_sine_address_add9_0i1|nx43955z1\ & \u_sine_address_add9_0i1|nx42958z1\ & 
\u_sine_address_add9_0i1|nx41961z1\ & \u_sine_address_add9_0i1|nx40964z1\);

\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(0) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(1) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(2) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(3) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(4) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(5) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(6) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(7) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(8) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(9) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(10) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(11) <= \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\u_noise_modgen_counter_address|q_9_\ & \u_noise_modgen_counter_address|q_8_\ & \u_noise_modgen_counter_address|q_7_\ & \u_noise_modgen_counter_address|q_6_\ & 
\u_noise_modgen_counter_address|q_5_\ & \u_noise_modgen_counter_address|q_4_\ & \u_noise_modgen_counter_address|q_3_\ & \u_noise_modgen_counter_address|q_2_\ & \u_noise_modgen_counter_address|q_1_\ & \u_noise_modgen_counter_address|q_0_\);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(4) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(5) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(6) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(7) <= \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);

\aud_bclk_dup0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & aud_bclk_dup0);

\aud_adclrck_dup0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & aud_adclrck_dup0);

\clock_27~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock_27~combout\);

\u_audio_dac_p1_altpll|_clk1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u_audio_dac_p1_altpll|_clk1\);
\ALT_INV_key~combout\(0) <= NOT \key~combout\(0);
\u_i2c_av_config|ALT_INV_reset_n\ <= NOT \u_i2c_av_config|reset_n\;
\u_i2c_av_config|u0|ALT_INV_nx51857z1\ <= NOT \u_i2c_av_config|u0|nx51857z1\;

ix38664z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z1 = \sw~combout\(3) & (!\sw~combout\(1) & \sw~combout\(4)) # !\sw~combout\(3) & \sw~combout\(0) & \sw~combout\(1) & !\sw~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datab => \sw~combout\(0),
	datac => \sw~combout\(1),
	datad => \sw~combout\(4),
	combout => nx38664z1);

ix38664z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z3 = \sw~combout\(1) & (\sw~combout\(2) $ (\sw~combout\(0) & !\sw~combout\(3))) # !\sw~combout\(1) & \sw~combout\(2) & (\sw~combout\(0) # !\sw~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx38664z3);

ix38664z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z9 = \sw~combout\(4) & !\sw~combout\(2) & (\sw~combout\(5) # !\sw~combout\(6)) # !\sw~combout\(4) & (\sw~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(6),
	datac => \sw~combout\(4),
	datad => \sw~combout\(2),
	combout => nx38664z9);

ix4119z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z3 = !\sw~combout\(2) & !\sw~combout\(0) & !\sw~combout\(4) & !\sw~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datab => \sw~combout\(0),
	datac => \sw~combout\(4),
	datad => \sw~combout\(1),
	combout => nx4119z3);

ix4119z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z2 = \sw~combout\(5) & (nx4119z3) # !\sw~combout\(5) & \sw~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(4),
	datac => \sw~combout\(5),
	datad => nx4119z3,
	combout => nx4119z2);

ix4119z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z10 = \sw~combout\(5) & (\sw~combout\(1) & \sw~combout\(2)) # !\sw~combout\(5) & !\sw~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(6),
	datac => \sw~combout\(1),
	datad => \sw~combout\(2),
	combout => nx4119z10);

ix4119z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z12 = \sw~combout\(5) & !\sw~combout\(0) & !\sw~combout\(1) & !\sw~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(0),
	datac => \sw~combout\(1),
	datad => \sw~combout\(2),
	combout => nx4119z12);

ix4119z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z11 = \sw~combout\(4) # \sw~combout\(6) & !\sw~combout\(5) # !\sw~combout\(6) & (nx4119z12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(4),
	datac => \sw~combout\(6),
	datad => nx4119z12,
	combout => nx4119z11);

ix4119z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z9 = nx4119z11 & (nx4119z10 # !\sw~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx4119z11,
	datac => \sw~combout\(4),
	datad => nx4119z10,
	combout => nx4119z9);

ix4119z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z13 = \sw~combout\(5) $ (\sw~combout\(2) & \sw~combout\(3) & \sw~combout\(1) # !\sw~combout\(2) & !\sw~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datab => \sw~combout\(5),
	datac => \sw~combout\(3),
	datad => \sw~combout\(1),
	combout => nx4119z13);

ix4119z52942 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z15 = \sw~combout\(5) $ (\sw~combout\(2) # \sw~combout\(0) # \sw~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datab => \sw~combout\(0),
	datac => \sw~combout\(5),
	datad => \sw~combout\(1),
	combout => nx4119z15);

\reg_audio_out_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_5_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx42958z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_5_\);

\reg_audio_out_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_4_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx41961z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_4_\);

ix24999z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z3 = \bit_position_0_\ & (\bit_position_1_\ & \audio_out_4_\) # !\bit_position_0_\ & (\audio_out_5_\ # !\bit_position_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_0_\,
	datab => \audio_out_5_\,
	datac => \bit_position_1_\,
	datad => \audio_out_4_\,
	combout => nx24999z3);

\reg_audio_out_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_1_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx38970z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_1_\);

\reg_audio_out_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_0_~feeder_combout\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx37973z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_0_\);

ix24999z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z5 = \bit_position_1_\ & (\bit_position_0_\ & \audio_out_0_\ # !\bit_position_0_\ & (\audio_out_1_\)) # !\bit_position_1_\ & (!\bit_position_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_0_\,
	datab => \bit_position_1_\,
	datac => \audio_out_1_\,
	datad => \bit_position_0_\,
	combout => nx24999z5);

\reg_audio_out_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_15_~feeder_combout\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_15_\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_1__6_\ $ \u_fir|taps_1__9_\ $ !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z10\) # GND
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\ = CARRY(\u_fir|taps_1__6_\ & (\u_fir|taps_1__9_\ # !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z10\) # !\u_fir|taps_1__6_\ & \u_fir|taps_1__9_\ & 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__6_\,
	datab => \u_fir|taps_1__9_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z10\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_1__10_\ & (\u_fir|taps_1__7_\ & \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\ & VCC # !\u_fir|taps_1__7_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\) # 
-- !\u_fir|taps_1__10_\ & (\u_fir|taps_1__7_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\ # !\u_fir|taps_1__7_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\ # GND))
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z8\ = CARRY(\u_fir|taps_1__10_\ & !\u_fir|taps_1__7_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\ # !\u_fir|taps_1__10_\ & (!\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\ # 
-- !\u_fir|taps_1__7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__10_\,
	datab => \u_fir|taps_1__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z9\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z8\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_1__8_\ $ \u_fir|taps_1__15_\ $ !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z8\) # GND
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\ = CARRY(\u_fir|taps_1__8_\ & (\u_fir|taps_1__15_\ # !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z8\) # !\u_fir|taps_1__8_\ & \u_fir|taps_1__15_\ & 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__8_\,
	datab => \u_fir|taps_1__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z8\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_2__4_\ $ \u_fir|taps_2__5_\ $ !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z10\) # GND
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\ = CARRY(\u_fir|taps_2__4_\ & (\u_fir|taps_2__5_\ # !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z10\) # !\u_fir|taps_2__4_\ & \u_fir|taps_2__5_\ & 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__4_\,
	datab => \u_fir|taps_2__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z10\,
	combout => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_2__6_\ & (\u_fir|taps_2__5_\ & \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\ & VCC # !\u_fir|taps_2__5_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\) # 
-- !\u_fir|taps_2__6_\ & (\u_fir|taps_2__5_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\ # !\u_fir|taps_2__5_\ & (\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\ # GND))
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z8\ = CARRY(\u_fir|taps_2__6_\ & !\u_fir|taps_2__5_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\ # !\u_fir|taps_2__6_\ & (!\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\ # 
-- !\u_fir|taps_2__5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__6_\,
	datab => \u_fir|taps_2__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z9\,
	combout => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z8\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_2__7_\ $ \u_fir|taps_2__6_\ $ !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z8\) # GND
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\ = CARRY(\u_fir|taps_2__7_\ & (\u_fir|taps_2__6_\ # !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z8\) # !\u_fir|taps_2__7_\ & \u_fir|taps_2__6_\ & 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__7_\,
	datab => \u_fir|taps_2__6_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z8\,
	combout => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_2__7_\ & (\u_fir|taps_2__8_\ & \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\ & VCC # !\u_fir|taps_2__8_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\) # 
-- !\u_fir|taps_2__7_\ & (\u_fir|taps_2__8_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\ # !\u_fir|taps_2__8_\ & (\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\ # GND))
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z6\ = CARRY(\u_fir|taps_2__7_\ & !\u_fir|taps_2__8_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\ # !\u_fir|taps_2__7_\ & (!\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\ # 
-- !\u_fir|taps_2__8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__7_\,
	datab => \u_fir|taps_2__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z7\,
	combout => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z6\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_2__9_\ & (\u_fir|taps_2__10_\ & \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\ & VCC # !\u_fir|taps_2__10_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\) # 
-- !\u_fir|taps_2__9_\ & (\u_fir|taps_2__10_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\ # !\u_fir|taps_2__10_\ & (\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\ # GND))
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z4\ = CARRY(\u_fir|taps_2__9_\ & !\u_fir|taps_2__10_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\ # !\u_fir|taps_2__9_\ & (!\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\ # 
-- !\u_fir|taps_2__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__9_\,
	datab => \u_fir|taps_2__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\,
	combout => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z4\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_2_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_3_\ $ VCC) # !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_4_\ & 
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_3_\ & VCC
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_2_filter_block_prod_mults28_0|d_4_\ & \u_fir|tap_array_1_filter_block_prod_mults28_0|d_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_4_\,
	datab => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_3_\,
	datad => VCC,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_2_filter_block_prod_mults28_0|d_5_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_5_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\ & 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_2_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_5_\ & (!\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_5_\,
	datab => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_2_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\ & 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_2_filter_block_prod_mults28_0|d_7_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_7_\ & (!\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_7_\,
	datab => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_7_\ $ \u_fir|tap_array_2_filter_block_prod_mults28_0|d_8_\ $ !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_1_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_2_filter_block_prod_mults28_0|d_8_\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_7_\ & \u_fir|tap_array_2_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_7_\,
	datab => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_1_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\ & 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_1_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_8_\ & (!\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_8_\,
	datab => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_3__8_\ & (\u_fir|taps_3__5_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\ # !\u_fir|taps_3__5_\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\ # GND)) # 
-- !\u_fir|taps_3__8_\ & (\u_fir|taps_3__5_\ & \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\ & VCC # !\u_fir|taps_3__5_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\)
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z10\ = CARRY(\u_fir|taps_3__8_\ & (!\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\ # !\u_fir|taps_3__5_\) # !\u_fir|taps_3__8_\ & !\u_fir|taps_3__5_\ & 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__8_\,
	datab => \u_fir|taps_3__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z10\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_3__7_\ & (\u_fir|taps_3__10_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\ # !\u_fir|taps_3__10_\ & \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\ & VCC) # 
-- !\u_fir|taps_3__7_\ & (\u_fir|taps_3__10_\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\ # GND) # !\u_fir|taps_3__10_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\)
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z8\ = CARRY(\u_fir|taps_3__7_\ & \u_fir|taps_3__10_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\ # !\u_fir|taps_3__7_\ & (\u_fir|taps_3__10_\ # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__7_\,
	datab => \u_fir|taps_3__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z8\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_3__8_\ $ \u_fir|taps_3__15_\ $ \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z8\) # GND
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\ = CARRY(\u_fir|taps_3__8_\ & (!\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z8\ # !\u_fir|taps_3__15_\) # !\u_fir|taps_3__8_\ & !\u_fir|taps_3__15_\ & 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__8_\,
	datab => \u_fir|taps_3__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z8\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx37973z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_5_\ $ VCC) # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx37973z1\ & 
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_5_\ & VCC
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|tap_array_3_filter_block_prod_mults28_0|d_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx37973z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\ & \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\ & 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_7_\ $ \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx39967z1\ $ !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_3_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx39967z1\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_7_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx39967z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_7_\,
	datab => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx39967z1\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|tap_array_3_filter_block_prod_mults28_0|d_9_\ $ !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_9_\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|tap_array_3_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_3_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_3_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_10_\ & (!\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|taps_4__6_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\ & \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|taps_4__6_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\ & 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|taps_4__6_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|taps_4__6_\ & 
-- (!\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__6_\,
	datab => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|taps_4__7_\ $ !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|taps_4__7_\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|taps_4__7_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|taps_4__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|taps_4__8_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|taps_4__8_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|taps_4__8_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|taps_4__8_\ & 
-- (!\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__8_\,
	datab => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_5__5_\ & (\u_fir|taps_5__3_\ & \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\ & VCC # !\u_fir|taps_5__3_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\) # 
-- !\u_fir|taps_5__5_\ & (\u_fir|taps_5__3_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_5__3_\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\ # GND))
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z10\ = CARRY(\u_fir|taps_5__5_\ & !\u_fir|taps_5__3_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_5__5_\ & (!\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\ # 
-- !\u_fir|taps_5__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__5_\,
	datab => \u_fir|taps_5__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z10\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_5__6_\ $ \u_fir|taps_5__4_\ $ !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z10\) # GND
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\ = CARRY(\u_fir|taps_5__6_\ & (\u_fir|taps_5__4_\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z10\) # !\u_fir|taps_5__6_\ & \u_fir|taps_5__4_\ & 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__6_\,
	datab => \u_fir|taps_5__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z10\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_5__5_\ & (\u_fir|taps_5__7_\ & \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\ & VCC # !\u_fir|taps_5__7_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\) # 
-- !\u_fir|taps_5__5_\ & (\u_fir|taps_5__7_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_5__7_\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\ # GND))
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z8\ = CARRY(\u_fir|taps_5__5_\ & !\u_fir|taps_5__7_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_5__5_\ & (!\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\ # 
-- !\u_fir|taps_5__7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__5_\,
	datab => \u_fir|taps_5__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z9\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z8\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_5__10_\ $ \u_fir|taps_5__8_\ $ !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z6\) # GND
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\ = CARRY(\u_fir|taps_5__10_\ & (\u_fir|taps_5__8_\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z6\) # !\u_fir|taps_5__10_\ & \u_fir|taps_5__8_\ & 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__10_\,
	datab => \u_fir|taps_5__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z6\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_5_filter_block_prod_mults28_0|d_5_\ $ \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx39967z1\ $ !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_5_filter_block_prod_mults28_0|d_5_\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx39967z1\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_5_\ & \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx39967z1\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_5_\,
	datab => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx39967z1\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|tap_array_5_filter_block_prod_mults28_0|d_7_\ $ !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|d_7_\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|tap_array_5_filter_block_prod_mults28_0|d_7_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_7_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_2_\ = (\u_fir|taps_6__2_\ $ \u_fir|taps_6__3_\ $ !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z15\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\ = CARRY(\u_fir|taps_6__2_\ & (\u_fir|taps_6__3_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z15\) # !\u_fir|taps_6__2_\ & \u_fir|taps_6__3_\ & 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__2_\,
	datab => \u_fir|taps_6__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z15\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_2_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_6__4_\ $ \u_fir|taps_6__5_\ $ !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z13\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\ = CARRY(\u_fir|taps_6__4_\ & (\u_fir|taps_6__5_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z13\) # !\u_fir|taps_6__4_\ & \u_fir|taps_6__5_\ & 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__4_\,
	datab => \u_fir|taps_6__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z13\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_6__6_\ & (\u_fir|taps_6__5_\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\ & VCC # !\u_fir|taps_6__5_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\) # 
-- !\u_fir|taps_6__6_\ & (\u_fir|taps_6__5_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\ # !\u_fir|taps_6__5_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\ # GND))
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z11\ = CARRY(\u_fir|taps_6__6_\ & !\u_fir|taps_6__5_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\ # !\u_fir|taps_6__6_\ & (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\ 
-- # !\u_fir|taps_6__5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__6_\,
	datab => \u_fir|taps_6__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z12\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z11\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_6__6_\ $ \u_fir|taps_6__7_\ $ !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z11\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\ = CARRY(\u_fir|taps_6__6_\ & (\u_fir|taps_6__7_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z11\) # !\u_fir|taps_6__6_\ & \u_fir|taps_6__7_\ & 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__6_\,
	datab => \u_fir|taps_6__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z11\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_6__9_\ & (\u_fir|taps_6__10_\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\ & VCC # !\u_fir|taps_6__10_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\) # 
-- !\u_fir|taps_6__9_\ & (\u_fir|taps_6__10_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\ # !\u_fir|taps_6__10_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\ # GND))
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z7\ = CARRY(\u_fir|taps_6__9_\ & !\u_fir|taps_6__10_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\ # !\u_fir|taps_6__9_\ & (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\ # 
-- !\u_fir|taps_6__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__9_\,
	datab => \u_fir|taps_6__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z7\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52947\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_3__dup_193\ = \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5_\ & (\u_fir|taps_6__3_\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\ & VCC # !\u_fir|taps_6__3_\ & 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\) # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_5_\ & (\u_fir|taps_6__3_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\ # !\u_fir|taps_6__3_\ & 
-- (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\ # GND))
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z23\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_5_\ & !\u_fir|taps_6__3_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\ # 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_5_\ & (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\ # !\u_fir|taps_6__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5_\,
	datab => \u_fir|taps_6__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_3__dup_193\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z23\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52946\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_4__dup_192\ = (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_6_\ $ \u_fir|taps_6__4_\ $ !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z23\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_6_\ & (\u_fir|taps_6__4_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z23\) # 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_6_\ & \u_fir|taps_6__4_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_6_\,
	datab => \u_fir|taps_6__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z23\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_4__dup_192\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_6__dup_190\ = (\u_fir|taps_6__6_\ $ \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8_\ $ !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z21\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\ = CARRY(\u_fir|taps_6__6_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_8_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z21\) # !\u_fir|taps_6__6_\ & 
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__6_\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z21\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_6__dup_190\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8__dup_188\ = (\u_fir|taps_6__8_\ $ \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10_\ $ !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z19\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\ = CARRY(\u_fir|taps_6__8_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_10_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z19\) # !\u_fir|taps_6__8_\ & 
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__8_\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z19\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8__dup_188\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_6_filter_block_prod_mults28_0|d_3__dup_193\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx37973z1\ $ VCC) # 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_3__dup_193\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx37973z1\ & VCC
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_3__dup_193\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_3__dup_193\,
	datab => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx37973z1\,
	datad => VCC,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_6_filter_block_prod_mults28_0|d_4__dup_192\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_4__dup_192\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\ & 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_4__dup_192\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\ 
-- # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_4__dup_192\ & (!\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_4__dup_192\,
	datab => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_6_filter_block_prod_mults28_0|d_6__dup_190\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_6__dup_190\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\ & 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_6__dup_190\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\ 
-- # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_6__dup_190\ & (!\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_6__dup_190\,
	datab => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7__dup_189\ $ !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_7__dup_189\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z37\) 
-- # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7__dup_189\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7__dup_189\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_7__6_\ & (\u_fir|taps_7__5_\ & \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\ & VCC # !\u_fir|taps_7__5_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\) # 
-- !\u_fir|taps_7__6_\ & (\u_fir|taps_7__5_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_7__5_\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\ # GND))
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z8\ = CARRY(\u_fir|taps_7__6_\ & !\u_fir|taps_7__5_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_7__6_\ & (!\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\ # 
-- !\u_fir|taps_7__5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__6_\,
	datab => \u_fir|taps_7__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z8\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_7__7_\ & (\u_fir|taps_7__8_\ & \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\ & VCC # !\u_fir|taps_7__8_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\) # 
-- !\u_fir|taps_7__7_\ & (\u_fir|taps_7__8_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_7__8_\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\ # GND))
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z6\ = CARRY(\u_fir|taps_7__7_\ & !\u_fir|taps_7__8_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_7__7_\ & (!\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\ # 
-- !\u_fir|taps_7__8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__7_\,
	datab => \u_fir|taps_7__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z6\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_7__9_\ $ \u_fir|taps_7__8_\ $ !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z6\) # GND
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\ = CARRY(\u_fir|taps_7__9_\ & (\u_fir|taps_7__8_\ # !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z6\) # !\u_fir|taps_7__9_\ & \u_fir|taps_7__8_\ & 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__9_\,
	datab => \u_fir|taps_7__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z6\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx37973z1\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|d_3_\ $ VCC) # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx37973z1\ & 
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_3_\ & VCC
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|tap_array_7_filter_block_prod_mults28_0|d_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx37973z1\,
	datab => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_3_\,
	datad => VCC,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\ & \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\ & 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_7_filter_block_prod_mults28_0|d_5_\ $ \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx39967z1\ $ !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_7_filter_block_prod_mults28_0|d_5_\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx39967z1\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_5_\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx39967z1\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_5_\,
	datab => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx39967z1\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|tap_array_7_filter_block_prod_mults28_0|d_7_\ $ !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|d_7_\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|tap_array_7_filter_block_prod_mults28_0|d_7_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_7_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_7_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_7_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_8_\ & (!\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_8_\,
	datab => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_8__7_\ $ \u_fir|taps_8__6_\ $ !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z8\) # GND
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\ = CARRY(\u_fir|taps_8__7_\ & (\u_fir|taps_8__6_\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z8\) # !\u_fir|taps_8__7_\ & \u_fir|taps_8__6_\ & 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__7_\,
	datab => \u_fir|taps_8__6_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z8\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\ & \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\ & 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|tap_array_8_filter_block_prod_mults28_0|d_5_\ $ !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_5_\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|tap_array_8_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|tap_array_8_filter_block_prod_mults28_0|d_7_\ $ !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_7_\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|tap_array_8_filter_block_prod_mults28_0|d_7_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_7_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_9__4_\ & (\u_fir|taps_9__3_\ & \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\ & VCC # !\u_fir|taps_9__3_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\) # 
-- !\u_fir|taps_9__4_\ & (\u_fir|taps_9__3_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_9__3_\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\ # GND))
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z10\ = CARRY(\u_fir|taps_9__4_\ & !\u_fir|taps_9__3_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_9__4_\ & (!\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\ # 
-- !\u_fir|taps_9__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__4_\,
	datab => \u_fir|taps_9__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z10\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_9__7_\ $ \u_fir|taps_9__6_\ $ !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z8\) # GND
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\ = CARRY(\u_fir|taps_9__7_\ & (\u_fir|taps_9__6_\ # !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z8\) # !\u_fir|taps_9__7_\ & \u_fir|taps_9__6_\ & 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__7_\,
	datab => \u_fir|taps_9__6_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z8\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_9__9_\ $ \u_fir|taps_9__8_\ $ !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z6\) # GND
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\ = CARRY(\u_fir|taps_9__9_\ & (\u_fir|taps_9__8_\ # !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z6\) # !\u_fir|taps_9__9_\ & \u_fir|taps_9__8_\ & 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__9_\,
	datab => \u_fir|taps_9__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z6\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\ & \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\ & 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|tap_array_9_filter_block_prod_mults28_0|d_5_\ $ !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|d_5_\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|tap_array_9_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_10__4_\ & (\u_fir|taps_10__3_\ & \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\ & VCC # !\u_fir|taps_10__3_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\) # 
-- !\u_fir|taps_10__4_\ & (\u_fir|taps_10__3_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_10__3_\ & (\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\ # GND))
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z10\ = CARRY(\u_fir|taps_10__4_\ & !\u_fir|taps_10__3_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_10__4_\ & 
-- (!\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_10__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__4_\,
	datab => \u_fir|taps_10__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z10\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_10__7_\ $ \u_fir|taps_10__6_\ $ !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z8\) # GND
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\ = CARRY(\u_fir|taps_10__7_\ & (\u_fir|taps_10__6_\ # !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z8\) # !\u_fir|taps_10__7_\ & \u_fir|taps_10__6_\ & 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__7_\,
	datab => \u_fir|taps_10__6_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z8\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_10__7_\ & (\u_fir|taps_10__8_\ & \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\ & VCC # !\u_fir|taps_10__8_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\) # 
-- !\u_fir|taps_10__7_\ & (\u_fir|taps_10__8_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_10__8_\ & (\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\ # GND))
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z6\ = CARRY(\u_fir|taps_10__7_\ & !\u_fir|taps_10__8_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_10__7_\ & (!\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\ 
-- # !\u_fir|taps_10__8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__7_\,
	datab => \u_fir|taps_10__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z7\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z6\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_10__9_\ $ \u_fir|taps_10__8_\ $ !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z6\) # GND
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\ = CARRY(\u_fir|taps_10__9_\ & (\u_fir|taps_10__8_\ # !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z6\) # !\u_fir|taps_10__9_\ & \u_fir|taps_10__8_\ & 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__9_\,
	datab => \u_fir|taps_10__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z6\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_10_filter_block_prod_mults28_0|d_3_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx37973z1\ $ VCC) # !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_3_\ & 
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx37973z1\ & VCC
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_10_filter_block_prod_mults28_0|d_3_\ & \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_3_\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx37973z1\,
	datad => VCC,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\ & \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\ & 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|tap_array_10_filter_block_prod_mults28_0|d_5_\ $ !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|tap_array_10_filter_block_prod_mults28_0|d_5_\ # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|tap_array_10_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_10_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\ & \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\ & 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_10_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_6_\ & (!\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_6_\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_10_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_10_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_8_\ & (!\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_8_\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_11__8_\ & (\u_fir|taps_11__7_\ & \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\ & VCC # !\u_fir|taps_11__7_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\) # 
-- !\u_fir|taps_11__8_\ & (\u_fir|taps_11__7_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_11__7_\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\ # GND))
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z6\ = CARRY(\u_fir|taps_11__8_\ & !\u_fir|taps_11__7_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_11__8_\ & (!\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\ 
-- # !\u_fir|taps_11__7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__8_\,
	datab => \u_fir|taps_11__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z6\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx37973z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_3_\ $ VCC) # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx37973z1\ & 
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_3_\ & VCC
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|tap_array_11_filter_block_prod_mults28_0|d_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx37973z1\,
	datab => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_3_\,
	datad => VCC,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\ & 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\ & 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx40964z1\ & (!\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx40964z1\,
	datab => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_2_\ = (\u_fir|taps_12__2_\ $ \u_fir|taps_12__3_\ $ !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z15\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\ = CARRY(\u_fir|taps_12__2_\ & (\u_fir|taps_12__3_\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z15\) # !\u_fir|taps_12__2_\ & \u_fir|taps_12__3_\ & 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__2_\,
	datab => \u_fir|taps_12__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z15\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_2_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_12__4_\ & (\u_fir|taps_12__3_\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\ & VCC # !\u_fir|taps_12__3_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\) # 
-- !\u_fir|taps_12__4_\ & (\u_fir|taps_12__3_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\ # !\u_fir|taps_12__3_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\ # GND))
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z13\ = CARRY(\u_fir|taps_12__4_\ & !\u_fir|taps_12__3_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\ # !\u_fir|taps_12__4_\ & 
-- (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\ # !\u_fir|taps_12__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__4_\,
	datab => \u_fir|taps_12__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z14\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z13\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_12__7_\ & (\u_fir|taps_12__8_\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\ & VCC # !\u_fir|taps_12__8_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\) # 
-- !\u_fir|taps_12__7_\ & (\u_fir|taps_12__8_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\ # !\u_fir|taps_12__8_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\ # GND))
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z9\ = CARRY(\u_fir|taps_12__7_\ & !\u_fir|taps_12__8_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\ # !\u_fir|taps_12__7_\ & 
-- (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\ # !\u_fir|taps_12__8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__7_\,
	datab => \u_fir|taps_12__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z9\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_12__9_\ $ \u_fir|taps_12__8_\ $ !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z9\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\ = CARRY(\u_fir|taps_12__9_\ & (\u_fir|taps_12__8_\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z9\) # !\u_fir|taps_12__9_\ & \u_fir|taps_12__8_\ & 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__9_\,
	datab => \u_fir|taps_12__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z9\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_12__15_\ $ \u_fir|taps_12__10_\ $ !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z7\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z6\ = CARRY(\u_fir|taps_12__15_\ & (\u_fir|taps_12__10_\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z7\) # !\u_fir|taps_12__15_\ & \u_fir|taps_12__10_\ & 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__15_\,
	datab => \u_fir|taps_12__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z7\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z6\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52945\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_5__dup_191\ = \u_fir|tap_array_12_filter_block_prod_mults28_0|d_7_\ & (\u_fir|taps_12__5_\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\ & VCC # !\u_fir|taps_12__5_\ & 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\) # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_7_\ & (\u_fir|taps_12__5_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\ # !\u_fir|taps_12__5_\ & 
-- (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\ # GND))
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z21\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_7_\ & !\u_fir|taps_12__5_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\ # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_7_\ & (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\ # !\u_fir|taps_12__5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_7_\,
	datab => \u_fir|taps_12__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_5__dup_191\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z21\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_7__dup_189\ = \u_fir|taps_12__7_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\ & VCC # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\) # !\u_fir|taps_12__7_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\ & 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\ # GND))
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z19\ = CARRY(\u_fir|taps_12__7_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\ # !\u_fir|taps_12__7_\ & 
-- (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__7_\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_7__dup_189\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z19\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_8__dup_188\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_10_\ $ \u_fir|taps_12__8_\ $ !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z19\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_10_\ & (\u_fir|taps_12__8_\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z19\) # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_10_\ & \u_fir|taps_12__8_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|taps_12__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z19\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_8__dup_188\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_5__dup_191\ $ \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx39967z1\ $ !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z43\) # 
-- GND
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_5__dup_191\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx39967z1\ # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z43\) # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_5__dup_191\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx39967z1\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_5__dup_191\,
	datab => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx39967z1\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\ & \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\ & 
-- VCC # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx40964z1\ & 
-- (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\ 
-- # GND))
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\ & 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx40964z1\ & (!\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx40964z1\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_13__3_\ & (\u_fir|taps_13__5_\ & \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\ & VCC # !\u_fir|taps_13__5_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\) # 
-- !\u_fir|taps_13__3_\ & (\u_fir|taps_13__5_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_13__5_\ & (\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\ # GND))
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z10\ = CARRY(\u_fir|taps_13__3_\ & !\u_fir|taps_13__5_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_13__3_\ & 
-- (!\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_13__5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__3_\,
	datab => \u_fir|taps_13__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z10\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_13__6_\ $ \u_fir|taps_13__4_\ $ !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z10\) # GND
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\ = CARRY(\u_fir|taps_13__6_\ & (\u_fir|taps_13__4_\ # !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z10\) # !\u_fir|taps_13__6_\ & \u_fir|taps_13__4_\ & 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__6_\,
	datab => \u_fir|taps_13__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z10\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_13__9_\ & (\u_fir|taps_13__7_\ & \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\ & VCC # !\u_fir|taps_13__7_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\) # 
-- !\u_fir|taps_13__9_\ & (\u_fir|taps_13__7_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_13__7_\ & (\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\ # GND))
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z6\ = CARRY(\u_fir|taps_13__9_\ & !\u_fir|taps_13__7_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_13__9_\ & (!\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\ 
-- # !\u_fir|taps_13__7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__9_\,
	datab => \u_fir|taps_13__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z6\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_13__10_\ $ \u_fir|taps_13__8_\ $ !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z6\) # GND
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\ = CARRY(\u_fir|taps_13__10_\ & (\u_fir|taps_13__8_\ # !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z6\) # !\u_fir|taps_13__10_\ & \u_fir|taps_13__8_\ & 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__10_\,
	datab => \u_fir|taps_13__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z6\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_13_filter_block_prod_mults28_0|d_3_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx37973z1\ $ VCC) # !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_3_\ & 
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx37973z1\ & VCC
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_13_filter_block_prod_mults28_0|d_3_\ & \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_3_\,
	datab => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx37973z1\,
	datad => VCC,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_13_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\ & \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\ & 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_13_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_4_\ & (!\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_4_\,
	datab => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|tap_array_13_filter_block_prod_mults28_0|d_5_\ $ !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|tap_array_13_filter_block_prod_mults28_0|d_5_\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|tap_array_13_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_13_filter_block_prod_mults28_0|d_7_\ $ \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx41961z1\ $ !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_13_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx41961z1\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_7_\ & \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx41961z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_7_\,
	datab => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx41961z1\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|taps_14__4_\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\ & VCC # !\u_fir|taps_14__4_\ & 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|taps_14__4_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|taps_14__4_\ & 
-- (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|taps_14__4_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|taps_14__4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|taps_14__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|taps_14__6_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|taps_14__6_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\ & 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|taps_14__6_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|taps_14__6_\ & 
-- (!\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__6_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_15__3_\ & (\u_fir|taps_15__6_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\ # !\u_fir|taps_15__6_\ & \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\ & VCC) # 
-- !\u_fir|taps_15__3_\ & (\u_fir|taps_15__6_\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\ # GND) # !\u_fir|taps_15__6_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\)
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z12\ = CARRY(\u_fir|taps_15__3_\ & \u_fir|taps_15__6_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\ # !\u_fir|taps_15__3_\ & (\u_fir|taps_15__6_\ # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__3_\,
	datab => \u_fir|taps_15__6_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z12\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_15__5_\ & (\u_fir|taps_15__8_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\ # !\u_fir|taps_15__8_\ & \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\ & VCC) # 
-- !\u_fir|taps_15__5_\ & (\u_fir|taps_15__8_\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\ # GND) # !\u_fir|taps_15__8_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\)
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z10\ = CARRY(\u_fir|taps_15__5_\ & \u_fir|taps_15__8_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\ # !\u_fir|taps_15__5_\ & (\u_fir|taps_15__8_\ # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__5_\,
	datab => \u_fir|taps_15__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z10\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_15__10_\ & (\u_fir|taps_15__7_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\ # !\u_fir|taps_15__7_\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\ # GND)) 
-- # !\u_fir|taps_15__10_\ & (\u_fir|taps_15__7_\ & \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\ & VCC # !\u_fir|taps_15__7_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\)
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z8\ = CARRY(\u_fir|taps_15__10_\ & (!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\ # !\u_fir|taps_15__7_\) # !\u_fir|taps_15__10_\ & !\u_fir|taps_15__7_\ & 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__10_\,
	datab => \u_fir|taps_15__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z8\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_15__8_\ $ \u_fir|taps_15__15_\ $ \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z8\) # GND
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\ = CARRY(\u_fir|taps_15__8_\ & (!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z8\ # !\u_fir|taps_15__15_\) # !\u_fir|taps_15__8_\ & !\u_fir|taps_15__15_\ & 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__8_\,
	datab => \u_fir|taps_15__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z8\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_15_filter_block_prod_mults28_0|d_5_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx37973z1\ $ VCC) # !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_5_\ & 
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx37973z1\ & VCC
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_15_filter_block_prod_mults28_0|d_5_\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_5_\,
	datab => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx37973z1\,
	datad => VCC,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\ & \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\ & 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_15_filter_block_prod_mults28_0|d_7_\ $ \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx39967z1\ $ !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_15_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx39967z1\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_7_\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx39967z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_7_\,
	datab => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx39967z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_15_filter_block_prod_mults28_0|d_9_\ $ \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx41961z1\ $ !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_15_filter_block_prod_mults28_0|d_9_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx41961z1\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_9_\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx41961z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_9_\,
	datab => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx41961z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_15_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_15_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_10_\ & (!\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_16_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__9_\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_16__7_\ & (\u_fir|taps_16__8_\ & \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\ & VCC # !\u_fir|taps_16__8_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\) # 
-- !\u_fir|taps_16__7_\ & (\u_fir|taps_16__8_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\ # !\u_fir|taps_16__8_\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\ # GND))
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z6\ = CARRY(\u_fir|taps_16__7_\ & !\u_fir|taps_16__8_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\ # !\u_fir|taps_16__7_\ & (!\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\ 
-- # !\u_fir|taps_16__8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__7_\,
	datab => \u_fir|taps_16__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\,
	combout => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z6\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx37973z1\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|d_4_\ $ VCC) # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx37973z1\ & 
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|d_4_\ & VCC
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|tap_array_16_filter_block_prod_mults28_0|d_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx37973z1\,
	datab => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_4_\,
	datad => VCC,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\ & \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\ & 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|tap_array_16_filter_block_prod_mults28_0|d_6_\ $ !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|d_6_\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|tap_array_16_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|tap_array_16_filter_block_prod_mults28_0|d_8_\ $ !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|d_8_\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|tap_array_16_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\ & \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\ & 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx42958z1\ & (!\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx42958z1\,
	datab => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_17_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_7_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_9_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_5_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_3_\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_6_\ = (\u_fir|tap_array_17_filter_block_tap_next_9_\ $ \u_fir|tap_array_17_filter_block_tap_next_6_\ $ !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z10\) # GND
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_9_\ & (\u_fir|tap_array_17_filter_block_tap_next_6_\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z10\) # 
-- !\u_fir|tap_array_17_filter_block_tap_next_9_\ & \u_fir|tap_array_17_filter_block_tap_next_6_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_9_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z10\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx37973z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_3_\ $ VCC) # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx37973z1\ & 
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_3_\ & VCC
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|d_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx37973z1\,
	datab => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_3_\,
	datad => VCC,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\ & \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\ & 
-- !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|tap_array_17_filter_block_prod_mults28_0|d_7_\ $ !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_7_\ # !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|d_7_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_7_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\ & \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\ & 
-- !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx42958z1\ & (!\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx42958z1\,
	datab => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_1__9_\ & (\u_fir|taps_1__15_\ & \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\ & VCC # !\u_fir|taps_1__15_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\) # 
-- !\u_fir|taps_1__9_\ & (\u_fir|taps_1__15_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\ # !\u_fir|taps_1__15_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\ # GND))
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z6\ = CARRY(\u_fir|taps_1__9_\ & !\u_fir|taps_1__15_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\ # !\u_fir|taps_1__9_\ & (!\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\ # 
-- !\u_fir|taps_1__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__9_\,
	datab => \u_fir|taps_1__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z7\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z6\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_2__15_\ $ \u_fir|taps_2__10_\ $ !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z4\) # GND
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z3\ = CARRY(\u_fir|taps_2__15_\ & (\u_fir|taps_2__10_\ # !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z4\) # !\u_fir|taps_2__15_\ & \u_fir|taps_2__10_\ & 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__15_\,
	datab => \u_fir|taps_2__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z4\,
	combout => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z3\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_2_filter_block_prod_mults28_0|d_10_\ $ \u_fir|tap_array_1_filter_block_prod_mults28_0|d_9_\ $ !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_2_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_9_\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_10_\ & \u_fir|tap_array_1_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_11_\ = \u_fir|taps_3__9_\ & (\u_fir|taps_3__15_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\ # !\u_fir|taps_3__15_\ & \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\ & VCC) # 
-- !\u_fir|taps_3__9_\ & (\u_fir|taps_3__15_\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\ # GND) # !\u_fir|taps_3__15_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\)
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z6\ = CARRY(\u_fir|taps_3__9_\ & \u_fir|taps_3__15_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\ # !\u_fir|taps_3__9_\ & (\u_fir|taps_3__15_\ # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__9_\,
	datab => \u_fir|taps_3__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z7\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z6\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_11_\ $ \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx43955z1\ $ !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_3_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx43955z1\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_11_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx43955z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_11_\,
	datab => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx43955z1\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|taps_4__9_\ $ \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx43955z1\ $ !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|taps_4__9_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx43955z1\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z31\) # !\u_fir|taps_4__9_\ & 
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx43955z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__9_\,
	datab => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx43955z1\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_5__15_\ & (\u_fir|taps_5__9_\ & \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\ & VCC # !\u_fir|taps_5__9_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\) # 
-- !\u_fir|taps_5__15_\ & (\u_fir|taps_5__9_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_5__9_\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\ # GND))
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z4\ = CARRY(\u_fir|taps_5__15_\ & !\u_fir|taps_5__9_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_5__15_\ & (!\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\ # 
-- !\u_fir|taps_5__9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__15_\,
	datab => \u_fir|taps_5__9_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z5\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z4\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx43955z1\ $ \u_fir|tap_array_5_filter_block_prod_mults28_0|d_9_\ $ !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx43955z1\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|d_9_\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx43955z1\ & \u_fir|tap_array_5_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx43955z1\,
	datab => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z6\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|b_10_\ = CARRY(\u_fir|taps_6__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z6\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|b_10_\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_9__dup_187\ = \u_fir|taps_6__9_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\ & VCC # 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\) # !\u_fir|taps_6__9_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\ & 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\ # GND))
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z17\ = CARRY(\u_fir|taps_6__9_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\ # !\u_fir|taps_6__9_\ & 
-- (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__9_\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z18\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_9__dup_187\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z17\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_7__9_\ & (\u_fir|taps_7__10_\ & \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\ & VCC # !\u_fir|taps_7__10_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\) # 
-- !\u_fir|taps_7__9_\ & (\u_fir|taps_7__10_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_7__10_\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\ # GND))
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z4\ = CARRY(\u_fir|taps_7__9_\ & !\u_fir|taps_7__10_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_7__9_\ & (!\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\ # 
-- !\u_fir|taps_7__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__9_\,
	datab => \u_fir|taps_7__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z5\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z4\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_8__9_\ & (\u_fir|taps_8__10_\ & \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\ & VCC # !\u_fir|taps_8__10_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\) # 
-- !\u_fir|taps_8__9_\ & (\u_fir|taps_8__10_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_8__10_\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\ # GND))
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z4\ = CARRY(\u_fir|taps_8__9_\ & !\u_fir|taps_8__10_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_8__9_\ & (!\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\ # 
-- !\u_fir|taps_8__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__9_\,
	datab => \u_fir|taps_8__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z4\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_9_\ $ \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx43955z1\ $ !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_8_filter_block_prod_mults28_0|d_9_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx43955z1\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_9_\ & \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx43955z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_9_\,
	datab => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx43955z1\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx43955z1\ $ \u_fir|tap_array_9_filter_block_prod_mults28_0|d_9_\ $ !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx43955z1\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|d_9_\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx43955z1\ & \u_fir|tap_array_9_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx43955z1\,
	datab => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx43955z1\ $ \u_fir|tap_array_10_filter_block_prod_mults28_0|d_9_\ $ !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx43955z1\ & (\u_fir|tap_array_10_filter_block_prod_mults28_0|d_9_\ # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx43955z1\ & \u_fir|tap_array_10_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx43955z1\,
	datab => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_9__dup_187\ = \u_fir|taps_12__9_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\ & VCC # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\) # !\u_fir|taps_12__9_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\ & 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\ # GND))
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z17\ = CARRY(\u_fir|taps_12__9_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\ # !\u_fir|taps_12__9_\ & 
-- (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__9_\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z18\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_9__dup_187\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z17\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_9__dup_187\ $ \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx43955z1\ $ !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z31\) # 
-- GND
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_9__dup_187\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx43955z1\ # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z31\) # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_9__dup_187\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx43955z1\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_9__dup_187\,
	datab => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx43955z1\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_11_\ = \u_fir|taps_15__15_\ & (\u_fir|taps_15__9_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\ # !\u_fir|taps_15__9_\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\ # GND)) 
-- # !\u_fir|taps_15__15_\ & (\u_fir|taps_15__9_\ & \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\ & VCC # !\u_fir|taps_15__9_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\)
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z6\ = CARRY(\u_fir|taps_15__15_\ & (!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\ # !\u_fir|taps_15__9_\) # !\u_fir|taps_15__15_\ & !\u_fir|taps_15__9_\ & 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__15_\,
	datab => \u_fir|taps_15__9_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z7\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z6\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_16__15_\ $ \u_fir|taps_16__10_\ $ !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z4\) # GND
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z3\ = CARRY(\u_fir|taps_16__15_\ & (\u_fir|taps_16__10_\ # !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z4\) # !\u_fir|taps_16__15_\ & \u_fir|taps_16__10_\ & 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__15_\,
	datab => \u_fir|taps_16__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z4\,
	combout => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z3\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_16_filter_block_prod_mults28_0|d_10_\ $ \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx43955z1\ $ !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_16_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx43955z1\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_10_\ & \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx43955z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx43955z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_1__10_\ $ \u_fir|taps_1__15_\ $ !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z6\) # GND
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z5\ = CARRY(\u_fir|taps_1__10_\ & (\u_fir|taps_1__15_\ # !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z6\) # !\u_fir|taps_1__10_\ & \u_fir|taps_1__15_\ & 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__10_\,
	datab => \u_fir|taps_1__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z6\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z5\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z3\) # GND
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z2\ = CARRY(\u_fir|taps_2__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z3\,
	combout => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z2\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_1_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\ & 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_1_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_10_\ & (!\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_11_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\ = (\u_fir|taps_3__10_\ $ \u_fir|taps_3__15_\ $ \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z6\) # GND
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z5\ = CARRY(\u_fir|taps_3__10_\ & (!\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z6\ # !\u_fir|taps_3__15_\) # !\u_fir|taps_3__10_\ & !\u_fir|taps_3__15_\ & 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__10_\,
	datab => \u_fir|taps_3__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z6\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z5\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\ & \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\ & 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx44952z1\ & (!\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx44952z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_12_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|taps_4__10_\ & \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\ & VCC # !\u_fir|taps_4__10_\ & 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|taps_4__10_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|taps_4__10_\ & 
-- (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|taps_4__10_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx44952z1\ & (!\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|taps_4__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx44952z1\,
	datab => \u_fir|taps_4__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_5__10_\ $ \u_fir|taps_5__15_\ $ !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z4\) # GND
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z3\ = CARRY(\u_fir|taps_5__10_\ & (\u_fir|taps_5__15_\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z4\) # !\u_fir|taps_5__10_\ & \u_fir|taps_5__15_\ & 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__10_\,
	datab => \u_fir|taps_5__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z4\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z3\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\ & 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx44952z1\ & (!\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx44952z1\,
	datab => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_10_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|ix10225z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z5\ = \u_fir|tap_array_6_filter_block_prod_mults28_0|b_10_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|b_10_\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z5\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_7__15_\ $ \u_fir|taps_7__10_\ $ !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z4\) # GND
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z3\ = CARRY(\u_fir|taps_7__15_\ & (\u_fir|taps_7__10_\ # !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z4\) # !\u_fir|taps_7__15_\ & \u_fir|taps_7__10_\ & 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__15_\,
	datab => \u_fir|taps_7__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z4\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z3\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_7_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\ & \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\ & 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_7_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_10_\ & (!\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_8__15_\ $ \u_fir|taps_8__10_\ $ !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z4\) # GND
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z3\ = CARRY(\u_fir|taps_8__15_\ & (\u_fir|taps_8__10_\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z4\) # !\u_fir|taps_8__15_\ & \u_fir|taps_8__10_\ & 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__15_\,
	datab => \u_fir|taps_8__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z4\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z3\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_9__15_\ $ \u_fir|taps_9__10_\ $ !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z4\) # GND
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z3\ = CARRY(\u_fir|taps_9__15_\ & (\u_fir|taps_9__10_\ # !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z4\) # !\u_fir|taps_9__15_\ & \u_fir|taps_9__10_\ & 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__15_\,
	datab => \u_fir|taps_9__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z4\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z3\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_10__15_\ $ \u_fir|taps_10__10_\ $ !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z4\) # GND
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z3\ = CARRY(\u_fir|taps_10__15_\ & (\u_fir|taps_10__10_\ # !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z4\) # !\u_fir|taps_10__15_\ & \u_fir|taps_10__10_\ & 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__15_\,
	datab => \u_fir|taps_10__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z4\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z3\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_10_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\ & \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\ & 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_10_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_10_\ & (!\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_10__dup_186\ = (\u_fir|taps_12__10_\ $ \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z5\ $ !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z17\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z4\ = CARRY(\u_fir|taps_12__10_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z5\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z17\) # !\u_fir|taps_12__10_\ & 
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z5\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__10_\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z5\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z17\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_10__dup_186\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z4\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_13__10_\ $ \u_fir|taps_13__15_\ $ !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z4\) # GND
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z3\ = CARRY(\u_fir|taps_13__10_\ & (\u_fir|taps_13__15_\ # !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z4\) # !\u_fir|taps_13__10_\ & \u_fir|taps_13__15_\ & 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__10_\,
	datab => \u_fir|taps_13__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z4\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z3\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_13_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\ & \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\ & 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_13_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_10_\ & (!\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_12_\ = (\u_fir|taps_15__10_\ $ \u_fir|taps_15__15_\ $ \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z6\) # GND
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z5\ = CARRY(\u_fir|taps_15__10_\ & (!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z6\ # !\u_fir|taps_15__15_\) # !\u_fir|taps_15__10_\ & !\u_fir|taps_15__15_\ & 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__10_\,
	datab => \u_fir|taps_15__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z6\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_12_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z5\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z3\) # GND
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z2\ = CARRY(\u_fir|taps_16__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z3\,
	combout => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z2\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_10_\ = (\u_fir|tap_array_17_filter_block_tap_next_15_\ $ \u_fir|tap_array_17_filter_block_tap_next_10_\ $ !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z6\) # GND
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z5\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_15_\ & (\u_fir|tap_array_17_filter_block_tap_next_10_\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z6\) # 
-- !\u_fir|tap_array_17_filter_block_tap_next_15_\ & \u_fir|tap_array_17_filter_block_tap_next_10_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_15_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_10_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z6\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z5\);

\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"F37E70DADCF0C3AB8EAECA579D09598F189B85882780980080982785889B8F19599D0A57AECB11C3ACF0DADE70F370000C818F25230F3C54715135A862F6A670E7647A77D87F67FF7F67D87A776470E6A662F5A85134713C530F25218F0C8000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:u_sine_modgen_rom_ix21__ix62120z58996|altsyncram_0bk2:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 12,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 12,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 12,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \aud_adclrck_dup0~clkctrl_outclk\,
	portaaddr => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z5\) # GND
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z4\ = CARRY(\u_fir|taps_1__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_1__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z5\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z4\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_12_\ = (\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z4\) # GND
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z3\ = CARRY(\u_fir|taps_1__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_1__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z4\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_12_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z3\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|ix8231z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z1\ = \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z2\,
	combout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z1\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_11_\ $ \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z1\ $ !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_1_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z1\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_11_\ & \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z1\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_11_\,
	datab => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z1\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_1_filter_block_prod_mults28_0|d_12_\ & (\u_fir|taps_2__15_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\ & VCC # !\u_fir|taps_2__15_\ & 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_12_\ & (\u_fir|taps_2__15_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|taps_2__15_\ & 
-- (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_1_filter_block_prod_mults28_0|d_12_\ & !\u_fir|taps_2__15_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_12_\ & (!\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|taps_2__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_12_\,
	datab => \u_fir|taps_2__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_13_\ = !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z5\
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z4\ = CARRY(!\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z5\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_13_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z4\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\ = \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z4\ $ GND
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z3\ = CARRY(!\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z4\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z3\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx45949z1\ $ \u_fir|tap_array_3_filter_block_prod_mults28_0|d_13_\ $ !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx45949z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_13_\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx45949z1\ & \u_fir|tap_array_3_filter_block_prod_mults28_0|d_13_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx45949z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_13_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\ & \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\ & 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx46946z1\ & (!\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx46946z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_14_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|taps_4__15_\ $ \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx45949z1\ $ !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|taps_4__15_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx45949z1\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z25\) # !\u_fir|taps_4__15_\ & 
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx45949z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__15_\,
	datab => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx45949z1\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|taps_4__15_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\ & \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|taps_4__15_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\ & 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|taps_4__15_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|taps_4__15_\ & 
-- (!\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__15_\,
	datab => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx46946z1\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z3\) # GND
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z2\ = CARRY(\u_fir|taps_5__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z3\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z2\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|ix9228z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\ = \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z2\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx45949z1\ $ \u_fir|tap_array_5_filter_block_prod_mults28_0|d_11_\ $ !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx45949z1\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|d_11_\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx45949z1\ & \u_fir|tap_array_5_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx45949z1\,
	datab => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_11_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\ & 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx46946z1\ & (!\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx46946z1\,
	datab => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z1\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11__dup_185\ = (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z4\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z3\ = CARRY(\u_fir|taps_6__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z4\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11__dup_185\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z3\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\ = (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z3\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z2\ = CARRY(\u_fir|taps_6__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z3\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z2\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx45949z1\ $ \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11__dup_185\ $ !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z25\) # 
-- GND
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx45949z1\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_11__dup_185\ # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z25\) # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx45949z1\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11__dup_185\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx45949z1\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_11__dup_185\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\ & 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx46946z1\ & (!\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx46946z1\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_12_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z3\) # GND
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z2\ = CARRY(\u_fir|taps_7__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z3\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z2\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|ix9228z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z1\ = \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z2\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z1\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_7_filter_block_prod_mults28_0|d_11_\ $ \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx45949z1\ $ !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_7_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx45949z1\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_11_\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx45949z1\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_11_\,
	datab => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx45949z1\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\ & \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\ & 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z1\ & (!\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z1\,
	datab => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx46946z1\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z3\) # GND
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z2\ = CARRY(\u_fir|taps_8__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z3\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z2\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|ix9228z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\ = \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z2\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_11_\ $ \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx45949z1\ $ !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_8_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx45949z1\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_11_\ & \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx45949z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_11_\,
	datab => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx45949z1\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\ & \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\ & 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx46946z1\ & (!\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx46946z1\,
	datab => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z1\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z3\) # GND
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z2\ = CARRY(\u_fir|taps_9__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z3\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z2\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_9_filter_block_prod_mults28_0|d_11_\ $ \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx45949z1\ $ !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_9_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx45949z1\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_11_\ & \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx45949z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_11_\,
	datab => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx45949z1\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\ & \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\ & 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx46946z1\ & (!\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx46946z1\,
	datab => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z3\) # GND
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z2\ = CARRY(\u_fir|taps_10__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z3\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z2\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|ix9228z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z1\ = \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z2\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z1\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx45949z1\ $ \u_fir|tap_array_10_filter_block_prod_mults28_0|d_11_\ $ !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx45949z1\ & (\u_fir|tap_array_10_filter_block_prod_mults28_0|d_11_\ # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx45949z1\ & \u_fir|tap_array_10_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx45949z1\,
	datab => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_11_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\ & \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\ & 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z1\ & (!\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z1\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx46946z1\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z3\) # GND
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z2\ = CARRY(\u_fir|taps_11__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_11__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z3\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z2\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|ix9228z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z1\ = \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z2\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z1\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\ & 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\ 
-- # !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z1\ & (!\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z1\,
	datab => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx46946z1\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_11__dup_185\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z4\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z3\ = CARRY(\u_fir|taps_12__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_12__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z4\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_11__dup_185\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z3\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z3\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z2\ = CARRY(\u_fir|taps_12__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_12__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z3\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z2\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_11__dup_185\ $ \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx45949z1\ $ !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z25\) 
-- # GND
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_11__dup_185\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx45949z1\ # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z25\) # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_11__dup_185\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx45949z1\ & 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_11__dup_185\,
	datab => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx45949z1\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z3\) # GND
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z2\ = CARRY(\u_fir|taps_13__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z3\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z2\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|ix9228z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z1\ = \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z2\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z1\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|taps_14__15_\ $ \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx45949z1\ $ !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx45949z1\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z25\) # !\u_fir|taps_14__15_\ & 
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx45949z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__15_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx45949z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_14_\ = \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z4\ $ GND
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z3\ = CARRY(!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z4\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_14_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z3\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx45949z1\ $ \u_fir|tap_array_15_filter_block_prod_mults28_0|d_13_\ $ !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx45949z1\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|d_13_\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx45949z1\ & \u_fir|tap_array_15_filter_block_prod_mults28_0|d_13_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx45949z1\,
	datab => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_13_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx45949z1\ $ \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z1\ $ !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx45949z1\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z1\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z25\) 
-- # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx45949z1\ & \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx45949z1\,
	datab => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_12_\ = (\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z4\) # GND
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z3\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_15_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z4\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_12_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z3\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\ = (\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z3\) # GND
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z2\ = CARRY(\u_fir|taps_1__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_1__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z3\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z2\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\ $ \u_fir|taps_2__15_\ $ !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\ & (\u_fir|taps_2__15_\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\ & \u_fir|taps_2__15_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\,
	datab => \u_fir|taps_2__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\ = !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z3\
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z2\ = CARRY(!\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z3\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z2\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\ $ \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx62798z1\ $ !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx62798z1\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx62798z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\,
	datab => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx62798z1\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|taps_4__15_\ $ \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx62798z1\ $ !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|taps_4__15_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx62798z1\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z19\) # !\u_fir|taps_4__15_\ & 
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx62798z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__15_\,
	datab => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx62798z1\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx62798z1\ $ \u_fir|taps_5__15_\ $ !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx62798z1\ & (\u_fir|taps_5__15_\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx62798z1\ & \u_fir|taps_5__15_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx62798z1\,
	datab => \u_fir|taps_5__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|ix10225z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z1\ = \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z2\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z1\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx62798z1\ $ \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z1\ $ !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx62798z1\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z1\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx62798z1\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx62798z1\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z1\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx62798z1\ $ \u_fir|taps_7__15_\ $ !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx62798z1\ & (\u_fir|taps_7__15_\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx62798z1\ & \u_fir|taps_7__15_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx62798z1\,
	datab => \u_fir|taps_7__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx62798z1\ $ \u_fir|taps_8__15_\ $ !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx62798z1\ & (\u_fir|taps_8__15_\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx62798z1\ & \u_fir|taps_8__15_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx62798z1\,
	datab => \u_fir|taps_8__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx62798z1\ $ \u_fir|taps_9__15_\ $ !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx62798z1\ & (\u_fir|taps_9__15_\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx62798z1\ & \u_fir|taps_9__15_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx62798z1\,
	datab => \u_fir|taps_9__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|taps_10__15_\ $ \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx62798z1\ $ !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|taps_10__15_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx62798z1\ # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z19\) # !\u_fir|taps_10__15_\ & 
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx62798z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__15_\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx62798z1\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx62798z1\ $ \u_fir|taps_11__15_\ $ !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx62798z1\ & (\u_fir|taps_11__15_\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx62798z1\ & \u_fir|taps_11__15_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx62798z1\,
	datab => \u_fir|taps_11__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|ix10225z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z1\ = \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z2\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z1\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z1\ $ \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx62798z1\ $ !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z19\) # 
-- GND
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z1\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx62798z1\ # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z19\) # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z1\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx62798z1\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z1\,
	datab => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx62798z1\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\ = !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z3\
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z2\ = CARRY(!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z3\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z2\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|taps_16__15_\ $ \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx62798z1\ $ !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|taps_16__15_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx62798z1\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z19\) # !\u_fir|taps_16__15_\ & 
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx62798z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__15_\,
	datab => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx62798z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ = (\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z3\) # GND
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z2\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_15_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z3\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z2\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\ & (\u_fir|taps_2__15_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\ & VCC # !\u_fir|taps_2__15_\ & 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\ & (\u_fir|taps_2__15_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_2__15_\ & 
-- (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\ & !\u_fir|taps_2__15_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\ & (!\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_2__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_13_\,
	datab => \u_fir|taps_2__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\ & \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\ & VCC # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\ & (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\ & 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\ & (!\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_15_\,
	datab => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx63795z1\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|taps_4__15_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\ & \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\ & VCC # 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|taps_4__15_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\ & 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|taps_4__15_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_4__15_\ & 
-- (!\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__15_\,
	datab => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx63795z1\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_5__15_\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\ & VCC # !\u_fir|taps_5__15_\ & 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_5__15_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_5__15_\ & 
-- (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|taps_5__15_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx63795z1\ & (!\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_5__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx63795z1\,
	datab => \u_fir|taps_5__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|taps_6__15_\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\ & VCC # 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|taps_6__15_\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\ & 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|taps_6__15_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_6__15_\ & 
-- (!\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__15_\,
	datab => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx63795z1\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_7__15_\ & \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\ & VCC # !\u_fir|taps_7__15_\ & 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_7__15_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_7__15_\ & 
-- (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|taps_7__15_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx63795z1\ & (!\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_7__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx63795z1\,
	datab => \u_fir|taps_7__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|taps_8__15_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\ & \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\ & VCC # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|taps_8__15_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\ & 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|taps_8__15_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_8__15_\ & 
-- (!\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__15_\,
	datab => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx63795z1\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_9__15_\ & \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\ & VCC # !\u_fir|taps_9__15_\ & 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_9__15_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_9__15_\ & 
-- (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|taps_9__15_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx63795z1\ & (!\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_9__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx63795z1\,
	datab => \u_fir|taps_9__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|taps_10__15_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\ & \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\ & VCC # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|taps_10__15_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\ & 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|taps_10__15_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_10__15_\ & 
-- (!\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__15_\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx63795z1\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_11__15_\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\ & VCC # !\u_fir|taps_11__15_\ & 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_11__15_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_11__15_\ & 
-- (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|taps_11__15_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx63795z1\ & (!\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_11__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx63795z1\,
	datab => \u_fir|taps_11__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_12__15_\ & \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\ & VCC # !\u_fir|taps_12__15_\ & 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_12__15_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_12__15_\ & 
-- (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|taps_12__15_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx63795z1\ & (!\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_12__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx63795z1\,
	datab => \u_fir|taps_12__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_13__15_\ & \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\ & VCC # !\u_fir|taps_13__15_\ & 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|taps_13__15_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_13__15_\ & 
-- (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|taps_13__15_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx63795z1\ & (!\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_13__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx63795z1\,
	datab => \u_fir|taps_13__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\ & VCC # 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\ & 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|taps_14__15_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_14__15_\ & 
-- (!\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__15_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx63795z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|taps_16__15_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\ & \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\ & VCC # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|taps_16__15_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\ & 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|taps_16__15_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|taps_16__15_\ & 
-- (!\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__15_\,
	datab => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z1\ = \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z2\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z1\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z1\ $ \u_fir|taps_2__15_\ $ !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z1\ & (\u_fir|taps_2__15_\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z13\) # 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z1\ & \u_fir|taps_2__15_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z1\,
	datab => \u_fir|taps_2__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|taps_1__15_\ & (\u_fir|taps_2__15_\ & \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\ & VCC # !\u_fir|taps_2__15_\ & 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|taps_1__15_\ & (\u_fir|taps_2__15_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_2__15_\ & 
-- (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|taps_1__15_\ & !\u_fir|taps_2__15_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_1__15_\ & 
-- (!\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_2__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__15_\,
	datab => \u_fir|taps_2__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ = \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z2\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx64792z1\ $ \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ $ !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx64792z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z13\) # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx64792z1\ & \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx64792z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ & \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\ & VCC # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ & 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|taps_4__15_\ $ \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx64792z1\ $ !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|taps_4__15_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx64792z1\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z13\) # !\u_fir|taps_4__15_\ & 
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx64792z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__15_\,
	datab => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx64792z1\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_4__15_\ & \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\ & VCC # !\u_fir|taps_4__15_\ & 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_4__15_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_4__15_\ & 
-- (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|taps_4__15_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_4__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|taps_4__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx64792z1\ $ \u_fir|taps_5__15_\ $ !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx64792z1\ & (\u_fir|taps_5__15_\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z13\) # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx64792z1\ & \u_fir|taps_5__15_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx64792z1\,
	datab => \u_fir|taps_5__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_5__15_\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\ & VCC # !\u_fir|taps_5__15_\ & 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_5__15_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_5__15_\ & 
-- (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|taps_5__15_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_5__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|taps_5__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|taps_6__15_\ $ \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx64792z1\ $ !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|taps_6__15_\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx64792z1\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z13\) # !\u_fir|taps_6__15_\ & 
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx64792z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__15_\,
	datab => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx64792z1\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|taps_6__15_\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\ & VCC # 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|taps_6__15_\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\ & 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|taps_6__15_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_6__15_\ & 
-- (!\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__15_\,
	datab => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx253z1\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx64792z1\ $ \u_fir|taps_7__15_\ $ !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx64792z1\ & (\u_fir|taps_7__15_\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z13\) # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx64792z1\ & \u_fir|taps_7__15_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx64792z1\,
	datab => \u_fir|taps_7__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_7__15_\ & \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\ & VCC # !\u_fir|taps_7__15_\ & 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_7__15_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_7__15_\ & 
-- (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|taps_7__15_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_7__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|taps_7__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx64792z1\ $ \u_fir|taps_8__15_\ $ !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx64792z1\ & (\u_fir|taps_8__15_\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z13\) # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx64792z1\ & \u_fir|taps_8__15_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx64792z1\,
	datab => \u_fir|taps_8__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|taps_8__15_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\ & \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\ & VCC # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|taps_8__15_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\ & 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|taps_8__15_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_8__15_\ & 
-- (!\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__15_\,
	datab => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx253z1\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx64792z1\ $ \u_fir|taps_9__15_\ $ !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx64792z1\ & (\u_fir|taps_9__15_\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z13\) # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx64792z1\ & \u_fir|taps_9__15_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx64792z1\,
	datab => \u_fir|taps_9__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_9__15_\ & \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\ & VCC # !\u_fir|taps_9__15_\ & 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_9__15_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_9__15_\ & 
-- (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|taps_9__15_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_9__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|taps_9__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|taps_10__15_\ $ \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx64792z1\ $ !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|taps_10__15_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx64792z1\ # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z13\) # !\u_fir|taps_10__15_\ & 
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx64792z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__15_\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx64792z1\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_10__15_\ & \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\ & VCC # !\u_fir|taps_10__15_\ & 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_10__15_\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_10__15_\ & 
-- (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|taps_10__15_\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_10__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|taps_10__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx64792z1\ $ \u_fir|taps_11__15_\ $ !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx64792z1\ & (\u_fir|taps_11__15_\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z13\) # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx64792z1\ & \u_fir|taps_11__15_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx64792z1\,
	datab => \u_fir|taps_11__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_11__15_\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\ & VCC # !\u_fir|taps_11__15_\ & 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_11__15_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_11__15_\ & 
-- (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|taps_11__15_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_11__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|taps_11__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx64792z1\ $ \u_fir|taps_12__15_\ $ !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx64792z1\ & (\u_fir|taps_12__15_\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z13\) # 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx64792z1\ & \u_fir|taps_12__15_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx64792z1\,
	datab => \u_fir|taps_12__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_12__15_\ & \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\ & VCC # !\u_fir|taps_12__15_\ & 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_12__15_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_12__15_\ & 
-- (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|taps_12__15_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_12__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|taps_12__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx64792z1\ $ \u_fir|taps_13__15_\ $ !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx64792z1\ & (\u_fir|taps_13__15_\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z13\) # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx64792z1\ & \u_fir|taps_13__15_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx64792z1\,
	datab => \u_fir|taps_13__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_13__15_\ & \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\ & VCC # !\u_fir|taps_13__15_\ & 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|taps_13__15_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_13__15_\ & 
-- (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|taps_13__15_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_13__15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|taps_13__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|taps_14__15_\ $ \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx64792z1\ $ !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx64792z1\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z13\) # !\u_fir|taps_14__15_\ & 
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx64792z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__15_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx64792z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\ & VCC # 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\ & 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|taps_14__15_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_14__15_\ & 
-- (!\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__15_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx253z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z1\ = \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z2\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z1\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|taps_1__15_\ $ \u_fir|taps_2__15_\ $ !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|taps_1__15_\ & (\u_fir|taps_2__15_\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z7\) # !\u_fir|taps_1__15_\ & \u_fir|taps_2__15_\ & 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__15_\,
	datab => \u_fir|taps_2__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx1250z1\ $ \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ $ !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx1250z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z7\) # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx1250z1\ & \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx1250z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|taps_4__15_\ $ \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx1250z1\ $ !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|taps_4__15_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx1250z1\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z7\) # !\u_fir|taps_4__15_\ & 
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx1250z1\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__15_\,
	datab => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx1250z1\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx1250z1\ $ \u_fir|taps_5__15_\ $ !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx1250z1\ & (\u_fir|taps_5__15_\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z7\) # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx1250z1\ & \u_fir|taps_5__15_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx1250z1\,
	datab => \u_fir|taps_5__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx1250z1\ $ \u_fir|taps_6__15_\ $ !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx1250z1\ & (\u_fir|taps_6__15_\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z7\) # 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx1250z1\ & \u_fir|taps_6__15_\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx1250z1\,
	datab => \u_fir|taps_6__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx1250z1\ $ \u_fir|taps_7__15_\ $ !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx1250z1\ & (\u_fir|taps_7__15_\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z7\) # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx1250z1\ & \u_fir|taps_7__15_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx1250z1\,
	datab => \u_fir|taps_7__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx1250z1\ $ \u_fir|taps_8__15_\ $ !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx1250z1\ & (\u_fir|taps_8__15_\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z7\) # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx1250z1\ & \u_fir|taps_8__15_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx1250z1\,
	datab => \u_fir|taps_8__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|taps_9__15_\ $ \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx1250z1\ $ !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|taps_9__15_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx1250z1\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z7\) # !\u_fir|taps_9__15_\ & 
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx1250z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__15_\,
	datab => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx1250z1\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|taps_10__15_\ $ \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx1250z1\ $ !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|taps_10__15_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx1250z1\ # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z7\) # !\u_fir|taps_10__15_\ & 
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx1250z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__15_\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx1250z1\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|taps_11__15_\ $ \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx1250z1\ $ !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|taps_11__15_\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx1250z1\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z7\) # !\u_fir|taps_11__15_\ & 
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx1250z1\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__15_\,
	datab => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx1250z1\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx1250z1\ $ \u_fir|taps_12__15_\ $ !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx1250z1\ & (\u_fir|taps_12__15_\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z7\) # 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx1250z1\ & \u_fir|taps_12__15_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx1250z1\,
	datab => \u_fir|taps_12__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx1250z1\ $ \u_fir|taps_13__15_\ $ !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx1250z1\ & (\u_fir|taps_13__15_\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z7\) # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx1250z1\ & \u_fir|taps_13__15_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx1250z1\,
	datab => \u_fir|taps_13__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|taps_14__15_\ $ \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx1250z1\ $ !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx1250z1\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z7\) # !\u_fir|taps_14__15_\ & 
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx1250z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__15_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx1250z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx1250z1\ $ \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ $ !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx1250z1\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z7\) # 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx1250z1\ & \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx1250z1\,
	datab => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|taps_16__15_\ $ \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx1250z1\ $ !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|taps_16__15_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx1250z1\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z7\) # !\u_fir|taps_16__15_\ & 
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx1250z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__15_\,
	datab => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx1250z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx1250z1\ = (\u_fir|tap_array_17_filter_block_tap_next_15_\ $ \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx1250z1\ $ !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z7\) # GND
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z4\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_15_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx1250z1\ # !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z7\) # 
-- !\u_fir|tap_array_17_filter_block_tap_next_15_\ & \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx1250z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_15_\,
	datab => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx1250z1\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z7\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx1250z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z4\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|taps_1__15_\ $ \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|taps_2__15_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__15_\,
	datad => \u_fir|taps_2__15_\,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z1\ $ \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z1\,
	datad => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z1\,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|taps_4__15_\ $ \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_4__15_\,
	datad => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z1\,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z1\ $ \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|taps_5__15_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z1\,
	datad => \u_fir|taps_5__15_\,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z1\ $ \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|taps_6__15_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z1\,
	datad => \u_fir|taps_6__15_\,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z1\ $ \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|taps_7__15_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z1\,
	datad => \u_fir|taps_7__15_\,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z1\ $ \u_fir|taps_8__15_\ $ \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z1\,
	datab => \u_fir|taps_8__15_\,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z1\ $ \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|taps_9__15_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z1\,
	datad => \u_fir|taps_9__15_\,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|taps_10__15_\ $ \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__15_\,
	datad => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z1\,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|taps_11__15_\ $ \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_11__15_\,
	datad => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z1\,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|taps_12__15_\ $ \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_12__15_\,
	datad => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z1\,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|taps_13__15_\ $ \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_13__15_\,
	datad => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z1\,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|taps_14__15_\ $ \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__15_\,
	datad => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z1\,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ $ \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\,
	datad => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z1\,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|taps_16__15_\ $ \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__15_\,
	datad => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z1\,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z1\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z1\ = \u_fir|tap_array_17_filter_block_tap_next_15_\ $ \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z4\ $ \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_15_\,
	datad => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z1\,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z4\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z1\);

\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\);

\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\);

\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\);

ix50205z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z4 = !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\,
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\,
	datac => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\,
	datad => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\,
	combout => nx50205z4);

ix50205z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z3 = nx50205z4 # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\,
	datac => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\,
	datad => nx50205z4,
	combout => nx50205z3);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\);

\u_i2c_av_config|u0|ix44942z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z8\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|nx44942z8\);

\u_i2c_av_config|u0|ix7286z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx7286z2\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ # 
-- !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx7286z2\);

\u_sine_reg_address_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx37973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_0_\);

\u_sine_address_add9_0i1|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx37973z1\ = \u_sine_address_0_\ & (\sw~combout\(0) # GND) # !\u_sine_address_0_\ & (\sw~combout\(0) $ VCC)
-- \u_sine_address_add9_0i1|nx45949z23\ = CARRY(\u_sine_address_0_\ # \sw~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_0_\,
	datab => \sw~combout\(0),
	datad => VCC,
	combout => \u_sine_address_add9_0i1|nx37973z1\,
	cout => \u_sine_address_add9_0i1|nx45949z23\);

\u_sine_reg_address_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx41961z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_4_\);

\u_sine_reg_address_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx42958z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_5_\);

\u_sine_reg_address_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx44952z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_7_\);

\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\ $ VCC
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\ = CARRY(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17\,
	datad => VCC,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\);

\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ $ GND) # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ & 
-- !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ & VCC
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\ = CARRY(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\);

\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ $ GND) # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ & 
-- !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ & VCC
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\ = CARRY(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\ & 
-- (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\ # GND)
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ = CARRY(!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ $ GND) # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ & 
-- !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ & VCC
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\ = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ $ GND) # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & 
-- !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ & VCC
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\ = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & 
-- (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\ # GND)
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\ = CARRY(!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\ $ !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1\);

\u_i2c_av_config|modgen_counter_cont|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx56256z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_5_\);

\u_i2c_av_config|modgen_counter_cont|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx57253z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_6_\);

\u_i2c_av_config|ix35560z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z2\ = \u_i2c_av_config|modgen_counter_cont|q_6_\ & \u_i2c_av_config|modgen_counter_cont|q_5_\ & \u_i2c_av_config|modgen_counter_cont|q_7_\ & \u_i2c_av_config|modgen_counter_cont|q_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_6_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_5_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_7_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_4_\,
	combout => \u_i2c_av_config|nx35560z2\);

\u_i2c_av_config|u0|ix22137z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx22137z2\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ # \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & 
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|nx22137z2\);

\u_i2c_av_config|u0|ix22137z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_5n5s2f1_0_\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & !\u_i2c_av_config|u0|nx44942z5\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & 
-- (\u_i2c_av_config|u0|nx22137z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datab => \u_i2c_av_config|u0|nx44942z5\,
	datac => \u_i2c_av_config|u0|nx22137z2\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|sdo_5n5s2f1_0_\);

\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\ = \u_i2c_av_config|u0|sdo_5n5s2f1_0_\ & (GND # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\) # !\u_i2c_av_config|u0|sdo_5n5s2f1_0_\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ $ 
-- GND)
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ = CARRY(\u_i2c_av_config|u0|sdo_5n5s2f1_0_\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_5n5s2f1_0_\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => VCC,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\);

\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ 
-- & VCC
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\ = CARRY(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\);

\u_i2c_av_config|u0|ix41315z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z4\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ # !\u_i2c_av_config|u0|nx7286z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datac => \u_i2c_av_config|u0|nx7286z2\,
	combout => \u_i2c_av_config|u0|nx41315z4\);

\u_i2c_av_config|u0|ix41315z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z10\ = !\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ $ \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	datad => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	combout => \u_i2c_av_config|u0|nx41315z10\);

\u_i2c_av_config|u0|ix41315z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z12\ = !\u_i2c_av_config|u0|nx44942z4\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & !\u_i2c_av_config|u0|nx44942z7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx44942z4\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => \u_i2c_av_config|u0|nx44942z7\,
	combout => \u_i2c_av_config|u0|nx41315z12\);

\u_i2c_av_config|u0|ix41315z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z14\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx41315z14\);

\u_i2c_av_config|u0|ix41315z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z13\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & \u_i2c_av_config|u0|nx41315z14\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datab => \u_i2c_av_config|u0|nx41315z14\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx41315z13\);

\u_i2c_av_config|u0|ix41315z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z16\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx41315z16\);

\u_i2c_av_config|u0|ix41315z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z17\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & \u_i2c_av_config|u0|nx41315z14\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datab => \u_i2c_av_config|u0|nx41315z14\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx41315z17\);

\u_i2c_av_config|u0|ix41315z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z15\ = \u_i2c_av_config|u0|nx41315z17\ # \u_i2c_av_config|u0|nx41315z16\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z17\,
	datab => \u_i2c_av_config|u0|nx41315z16\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx41315z15\);

\u_i2c_av_config|u0|ix41315z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z11\ = \u_i2c_av_config|u0|nx41315z13\ # \u_i2c_av_config|u0|nx41315z15\ # \u_i2c_av_config|u0|nx41315z12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|nx41315z13\,
	datac => \u_i2c_av_config|u0|nx41315z15\,
	datad => \u_i2c_av_config|u0|nx41315z12\,
	combout => \u_i2c_av_config|u0|nx41315z11\);

\u_i2c_av_config|u0|ix41315z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z21\ = !\u_i2c_av_config|u0|nx44942z4\ & !\u_i2c_av_config|u0|nx44942z5\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx44942z4\,
	datab => \u_i2c_av_config|u0|nx44942z5\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx41315z21\);

\u_i2c_av_config|u0|ix41315z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z22\ = \u_i2c_av_config|u0|nx41315z15\ # !\u_i2c_av_config|u0|nx44942z7\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|nx41315z14\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z15\,
	datab => \u_i2c_av_config|u0|nx44942z7\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|nx41315z14\,
	combout => \u_i2c_av_config|u0|nx41315z22\);

\u_i2c_av_config|u0|ix41315z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z20\ = !\u_i2c_av_config|u0|nx41315z21\ & (\u_i2c_av_config|u0|nx41315z22\ # !\u_i2c_av_config|u0|nx41315z4\) # !\u_i2c_av_config|reset_n\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|reset_n\,
	datab => \u_i2c_av_config|u0|nx41315z22\,
	datac => \u_i2c_av_config|u0|nx41315z21\,
	datad => \u_i2c_av_config|u0|nx41315z4\,
	combout => \u_i2c_av_config|u0|nx41315z20\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx56256z1\ = \u_i2c_av_config|modgen_counter_cont|q_5_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z12\ # !\u_i2c_av_config|modgen_counter_cont|q_5_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z12\ # GND)
-- \u_i2c_av_config|modgen_counter_cont|nx22081z11\ = CARRY(!\u_i2c_av_config|modgen_counter_cont|nx22081z12\ # !\u_i2c_av_config|modgen_counter_cont|q_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_5_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z12\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx56256z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z11\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx57253z1\ = \u_i2c_av_config|modgen_counter_cont|q_6_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z11\ $ GND) # !\u_i2c_av_config|modgen_counter_cont|q_6_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z11\ & VCC
-- \u_i2c_av_config|modgen_counter_cont|nx22081z10\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_6_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_6_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z11\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx57253z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z10\);

\aud_bclk_dup0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \aud_bclk_dup0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aud_bclk_dup0~clkctrl_outclk\);

\audio_out_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_0_~feeder_combout\ = \raw_audio_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \raw_audio_0_\,
	combout => \audio_out_0_~feeder_combout\);

\audio_out_15_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_15_~feeder_combout\ = \raw_audio_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \raw_audio_11_\,
	combout => \audio_out_15_~feeder_combout\);

\sw_ibuf_0_\ : cycloneii_io
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
	padio => ww_sw(0),
	combout => \sw~combout\(0));

\sw_ibuf_3_\ : cycloneii_io
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
	padio => ww_sw(3),
	combout => \sw~combout\(3));

\sw_ibuf_2_\ : cycloneii_io
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
	padio => ww_sw(2),
	combout => \sw~combout\(2));

ix49625z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z3 = \sw~combout\(1) & !\sw~combout\(2) & (\sw~combout\(0) # \sw~combout\(3)) # !\sw~combout\(1) & (\sw~combout\(3) & \sw~combout\(0) & !\sw~combout\(2) # !\sw~combout\(3) & (\sw~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx49625z3);

\sw_ibuf_17_\ : cycloneii_io
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
	padio => ww_sw(17),
	combout => \sw~combout\(17));

ix49625z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z1 = \sw~combout\(3) & \sw~combout\(1) & \sw~combout\(0) & \sw~combout\(2) # !\sw~combout\(3) & !\sw~combout\(2) & (!\sw~combout\(0) # !\sw~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx49625z1);

ix55607z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx55607z1 = nx49625z2 & !nx49625z3 & !\sw~combout\(17) & !nx49625z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx49625z2,
	datab => nx49625z3,
	datac => \sw~combout\(17),
	datad => nx49625z1,
	combout => nx55607z1);

ix49625z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z4 = \sw~combout\(3) $ (\sw~combout\(1) & (\sw~combout\(0) $ \sw~combout\(2)) # !\sw~combout\(1) & !\sw~combout\(0) & !\sw~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx49625z4);

ix49625z52930 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_0_\ = !\sw~combout\(17) & nx49625z4

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\(17),
	datad => nx49625z4,
	combout => \display_freq_0_\);

ix49625z52928 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_1_\ = \sw~combout\(17) # nx49625z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(17),
	datad => nx49625z3,
	combout => \display_freq_1_\);

ix49625z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx49625z2 = \sw~combout\(3) & !\sw~combout\(1) & !\sw~combout\(0) & !\sw~combout\(2) # !\sw~combout\(3) & (\sw~combout\(2) # \sw~combout\(1) & \sw~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx49625z2);

ix49625z52926 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_2_\ = \sw~combout\(17) # nx49625z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datad => nx49625z2,
	combout => \display_freq_2_\);

ix55607z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx55607z2 = \display_freq_0_\ & (\display_freq_3_\ & (\display_freq_1_\ $ \display_freq_2_\) # !\display_freq_3_\ & !\display_freq_1_\ & !\display_freq_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_3_\,
	datab => \display_freq_0_\,
	datac => \display_freq_1_\,
	datad => \display_freq_2_\,
	combout => nx55607z2);

ix55607z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_0_\ = nx55607z2 # nx55607z1 & !\display_freq_0_\ & \display_freq_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx55607z1,
	datab => nx55607z2,
	datac => \display_freq_0_\,
	datad => \display_freq_2_\,
	combout => \hex4_dup0_0_\);

ix49625z52924 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_3_\ = \sw~combout\(17) # nx49625z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw~combout\(17),
	datad => nx49625z1,
	combout => \display_freq_3_\);

ix54610z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_1_\ = \display_freq_3_\ & (\display_freq_0_\ & \display_freq_1_\ # !\display_freq_0_\ & (\display_freq_2_\)) # !\display_freq_3_\ & \display_freq_2_\ & (\display_freq_0_\ $ \display_freq_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_3_\,
	datab => \display_freq_0_\,
	datac => \display_freq_1_\,
	datad => \display_freq_2_\,
	combout => \hex4_dup0_1_\);

ix53613z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_2_\ = \display_freq_3_\ & \display_freq_2_\ & (\display_freq_1_\ # !\display_freq_0_\) # !\display_freq_3_\ & !\display_freq_0_\ & \display_freq_1_\ & !\display_freq_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_3_\,
	datab => \display_freq_0_\,
	datac => \display_freq_1_\,
	datad => \display_freq_2_\,
	combout => \hex4_dup0_2_\);

ix52616z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_3_\ = \display_freq_0_\ & (\display_freq_1_\ $ !\display_freq_2_\) # !\display_freq_0_\ & (\display_freq_3_\ & \display_freq_1_\ & !\display_freq_2_\ # !\display_freq_3_\ & !\display_freq_1_\ & \display_freq_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_3_\,
	datab => \display_freq_0_\,
	datac => \display_freq_1_\,
	datad => \display_freq_2_\,
	combout => \hex4_dup0_3_\);

ix51619z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_4_\ = \display_freq_1_\ & !\display_freq_3_\ & \display_freq_0_\ # !\display_freq_1_\ & (\display_freq_2_\ & !\display_freq_3_\ # !\display_freq_2_\ & (\display_freq_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_3_\,
	datab => \display_freq_0_\,
	datac => \display_freq_1_\,
	datad => \display_freq_2_\,
	combout => \hex4_dup0_4_\);

ix50622z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_5_\ = \display_freq_0_\ & (\display_freq_3_\ $ (\display_freq_1_\ # !\display_freq_2_\)) # !\display_freq_0_\ & !\display_freq_3_\ & \display_freq_1_\ & !\display_freq_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_3_\,
	datab => \display_freq_0_\,
	datac => \display_freq_1_\,
	datad => \display_freq_2_\,
	combout => \hex4_dup0_5_\);

ix49625z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex4_dup0_6_\ = \display_freq_0_\ & !\display_freq_3_\ & (\display_freq_1_\ $ !\display_freq_2_\) # !\display_freq_0_\ & !\display_freq_1_\ & (\display_freq_3_\ $ !\display_freq_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_3_\,
	datab => \display_freq_0_\,
	datac => \display_freq_1_\,
	datad => \display_freq_2_\,
	combout => \hex4_dup0_6_\);

\sw_ibuf_4_\ : cycloneii_io
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
	padio => ww_sw(4),
	combout => \sw~combout\(4));

\sw_ibuf_1_\ : cycloneii_io
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
	padio => ww_sw(1),
	combout => \sw~combout\(1));

ix38664z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z8 = \sw~combout\(3) & (\sw~combout\(1) & nx38664z9 # !\sw~combout\(1) & (\sw~combout\(4))) # !\sw~combout\(3) & (\sw~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z9,
	datab => \sw~combout\(4),
	datac => \sw~combout\(3),
	datad => \sw~combout\(1),
	combout => nx38664z8);

ix38664z52934 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_4_\ = \sw~combout\(17) # \sw~combout\(0) & nx38664z8 # !\sw~combout\(0) & (!\sw~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => nx38664z8,
	datac => \sw~combout\(4),
	datad => \sw~combout\(0),
	combout => \display_freq_4_\);

ix38664z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z2 = \sw~combout\(3) & !\sw~combout\(0) & !\sw~combout\(1) & !\sw~combout\(4) # !\sw~combout\(3) & (\sw~combout\(1) & \sw~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datab => \sw~combout\(0),
	datac => \sw~combout\(1),
	datad => \sw~combout\(4),
	combout => nx38664z2);

ix38664z52924 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_7_\ = !\sw~combout\(17) & (\sw~combout\(2) & nx38664z1 # !\sw~combout\(2) & (nx38664z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z1,
	datab => \sw~combout\(17),
	datac => nx38664z2,
	datad => \sw~combout\(2),
	combout => \display_freq_7_\);

\sw_ibuf_6_\ : cycloneii_io
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
	padio => ww_sw(6),
	combout => \sw~combout\(6));

ix38664z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z5 = !\sw~combout\(2) & (\sw~combout\(5) # !\sw~combout\(6) # !\sw~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(0),
	datac => \sw~combout\(6),
	datad => \sw~combout\(2),
	combout => nx38664z5);

ix38664z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z4 = \sw~combout\(1) & \sw~combout\(3) & nx38664z5 # !\sw~combout\(1) & (!\sw~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datab => nx38664z5,
	datac => \sw~combout\(1),
	datad => \sw~combout\(2),
	combout => nx38664z4);

ix38664z52927 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_6_\ = \sw~combout\(17) # \sw~combout\(4) & (nx38664z4) # !\sw~combout\(4) & nx38664z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx38664z3,
	datab => nx38664z4,
	datac => \sw~combout\(4),
	datad => \sw~combout\(17),
	combout => \display_freq_6_\);

ix38664z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z6 = \sw~combout\(3) & !\sw~combout\(0) & !\sw~combout\(1) & !\sw~combout\(4) # !\sw~combout\(3) & (\sw~combout\(1) $ (\sw~combout\(0) & !\sw~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datab => \sw~combout\(0),
	datac => \sw~combout\(1),
	datad => \sw~combout\(4),
	combout => nx38664z6);

ix38664z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx38664z7 = \sw~combout\(3) & \sw~combout\(1) & (\sw~combout\(0) # \sw~combout\(4)) # !\sw~combout\(3) & (\sw~combout\(1) $ (\sw~combout\(0) # \sw~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datab => \sw~combout\(0),
	datac => \sw~combout\(1),
	datad => \sw~combout\(4),
	combout => nx38664z7);

ix38664z52931 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_5_\ = !\sw~combout\(17) & (\sw~combout\(2) & nx38664z6 # !\sw~combout\(2) & (nx38664z7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => nx38664z6,
	datac => nx38664z7,
	datad => \sw~combout\(2),
	combout => \display_freq_5_\);

ix32682z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_0_\ = \display_freq_7_\ & \display_freq_4_\ & (\display_freq_6_\ $ \display_freq_5_\) # !\display_freq_7_\ & !\display_freq_5_\ & (\display_freq_4_\ $ \display_freq_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_4_\,
	datab => \display_freq_7_\,
	datac => \display_freq_6_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_0_\);

ix33679z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_1_\ = \display_freq_7_\ & (\display_freq_4_\ & (\display_freq_5_\) # !\display_freq_4_\ & \display_freq_6_\) # !\display_freq_7_\ & \display_freq_6_\ & (\display_freq_4_\ $ \display_freq_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_4_\,
	datab => \display_freq_7_\,
	datac => \display_freq_6_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_1_\);

ix34676z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_2_\ = \display_freq_7_\ & \display_freq_6_\ & (\display_freq_5_\ # !\display_freq_4_\) # !\display_freq_7_\ & !\display_freq_4_\ & !\display_freq_6_\ & \display_freq_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_4_\,
	datab => \display_freq_7_\,
	datac => \display_freq_6_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_2_\);

ix35673z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_3_\ = \display_freq_4_\ & (\display_freq_6_\ $ !\display_freq_5_\) # !\display_freq_4_\ & (\display_freq_7_\ & !\display_freq_6_\ & \display_freq_5_\ # !\display_freq_7_\ & \display_freq_6_\ & !\display_freq_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_4_\,
	datab => \display_freq_7_\,
	datac => \display_freq_6_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_3_\);

ix36670z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_4_\ = \display_freq_5_\ & \display_freq_4_\ & !\display_freq_7_\ # !\display_freq_5_\ & (\display_freq_6_\ & (!\display_freq_7_\) # !\display_freq_6_\ & \display_freq_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_4_\,
	datab => \display_freq_7_\,
	datac => \display_freq_6_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_4_\);

ix37667z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_5_\ = \display_freq_4_\ & (\display_freq_7_\ $ (\display_freq_5_\ # !\display_freq_6_\)) # !\display_freq_4_\ & !\display_freq_7_\ & !\display_freq_6_\ & \display_freq_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_4_\,
	datab => \display_freq_7_\,
	datac => \display_freq_6_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_5_\);

ix38664z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex5_dup0_6_\ = \display_freq_4_\ & !\display_freq_7_\ & (\display_freq_6_\ $ !\display_freq_5_\) # !\display_freq_4_\ & !\display_freq_5_\ & (\display_freq_7_\ $ !\display_freq_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_4_\,
	datab => \display_freq_7_\,
	datac => \display_freq_6_\,
	datad => \display_freq_5_\,
	combout => \hex5_dup0_6_\);

\sw_ibuf_5_\ : cycloneii_io
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
	padio => ww_sw(5),
	combout => \sw~combout\(5));

ix4119z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z7 = \sw~combout\(3) & (\sw~combout\(1) # \sw~combout\(0) # \sw~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx4119z7);

ix4119z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z6 = \sw~combout\(6) # \sw~combout\(5) & (\sw~combout\(4) # nx4119z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \sw~combout\(4),
	datac => \sw~combout\(5),
	datad => nx4119z7,
	combout => nx4119z6);

ix4119z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z5 = !\sw~combout\(5) & (!\sw~combout\(3) & !\sw~combout\(2) # !\sw~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(4),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx4119z5);

ix4119z52929 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_10_\ = !\sw~combout\(17) & nx4119z6 & (nx4119z5 # !\sw~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \sw~combout\(17),
	datac => nx4119z6,
	datad => nx4119z5,
	combout => \display_freq_10_\);

ix4119z52941 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z14 = \sw~combout\(4) # \sw~combout\(3) & nx4119z15 # !\sw~combout\(3) & (\sw~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z15,
	datab => \sw~combout\(3),
	datac => \sw~combout\(4),
	datad => \sw~combout\(5),
	combout => nx4119z14);

ix4119z52939 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_8_\ = \sw~combout\(17) # nx4119z14 & (nx4119z13 # !\sw~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z13,
	datab => \sw~combout\(17),
	datac => \sw~combout\(4),
	datad => nx4119z14,
	combout => \display_freq_8_\);

ix4119z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z8 = \sw~combout\(5) & !\sw~combout\(6) & !\sw~combout\(4) # !\sw~combout\(5) & (\sw~combout\(6) $ (\sw~combout\(4) & \sw~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(5),
	datab => \sw~combout\(6),
	datac => \sw~combout\(4),
	datad => \sw~combout\(2),
	combout => nx4119z8);

ix4119z52933 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_9_\ = !\sw~combout\(17) & (\sw~combout\(3) & nx4119z9 # !\sw~combout\(3) & (nx4119z8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z9,
	datab => nx4119z8,
	datac => \sw~combout\(3),
	datad => \sw~combout\(17),
	combout => \display_freq_9_\);

ix4119z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z1 = \sw~combout\(5) & !\sw~combout\(4) # !\sw~combout\(5) & \sw~combout\(4) & \sw~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(5),
	datac => \sw~combout\(4),
	datad => \sw~combout\(2),
	combout => nx4119z1);

ix4119z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx4119z4 = \sw~combout\(6) & !\sw~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw~combout\(6),
	datac => \sw~combout\(17),
	combout => nx4119z4);

ix4119z52924 : cycloneii_lcell_comb
-- Equation(s):
-- \display_freq_11_\ = nx4119z4 & (\sw~combout\(3) & nx4119z2 # !\sw~combout\(3) & (nx4119z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4119z2,
	datab => nx4119z1,
	datac => \sw~combout\(3),
	datad => nx4119z4,
	combout => \display_freq_11_\);

ix10101z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_0_\ = \display_freq_10_\ & !\display_freq_9_\ & (\display_freq_8_\ $ !\display_freq_11_\) # !\display_freq_10_\ & \display_freq_8_\ & (\display_freq_9_\ $ !\display_freq_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_10_\,
	datab => \display_freq_8_\,
	datac => \display_freq_9_\,
	datad => \display_freq_11_\,
	combout => \hex6_dup0_0_\);

ix9104z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_1_\ = \display_freq_9_\ & (\display_freq_8_\ & (\display_freq_11_\) # !\display_freq_8_\ & \display_freq_10_\) # !\display_freq_9_\ & \display_freq_10_\ & (\display_freq_8_\ $ \display_freq_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_10_\,
	datab => \display_freq_8_\,
	datac => \display_freq_9_\,
	datad => \display_freq_11_\,
	combout => \hex6_dup0_1_\);

ix8107z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_2_\ = \display_freq_10_\ & \display_freq_11_\ & (\display_freq_9_\ # !\display_freq_8_\) # !\display_freq_10_\ & !\display_freq_8_\ & \display_freq_9_\ & !\display_freq_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_10_\,
	datab => \display_freq_8_\,
	datac => \display_freq_9_\,
	datad => \display_freq_11_\,
	combout => \hex6_dup0_2_\);

ix7110z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_3_\ = \display_freq_8_\ & (\display_freq_10_\ $ !\display_freq_9_\) # !\display_freq_8_\ & (\display_freq_10_\ & !\display_freq_9_\ & !\display_freq_11_\ # !\display_freq_10_\ & \display_freq_9_\ & \display_freq_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_10_\,
	datab => \display_freq_8_\,
	datac => \display_freq_9_\,
	datad => \display_freq_11_\,
	combout => \hex6_dup0_3_\);

ix6113z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_4_\ = \display_freq_9_\ & (\display_freq_8_\ & !\display_freq_11_\) # !\display_freq_9_\ & (\display_freq_10_\ & (!\display_freq_11_\) # !\display_freq_10_\ & \display_freq_8_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_10_\,
	datab => \display_freq_8_\,
	datac => \display_freq_9_\,
	datad => \display_freq_11_\,
	combout => \hex6_dup0_4_\);

ix5116z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_5_\ = \display_freq_10_\ & \display_freq_8_\ & (\display_freq_9_\ $ \display_freq_11_\) # !\display_freq_10_\ & !\display_freq_11_\ & (\display_freq_8_\ # \display_freq_9_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_10_\,
	datab => \display_freq_8_\,
	datac => \display_freq_9_\,
	datad => \display_freq_11_\,
	combout => \hex6_dup0_5_\);

ix4119z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex6_dup0_6_\ = \display_freq_8_\ & !\display_freq_11_\ & (\display_freq_10_\ $ !\display_freq_9_\) # !\display_freq_8_\ & !\display_freq_9_\ & (\display_freq_10_\ $ !\display_freq_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_freq_10_\,
	datab => \display_freq_8_\,
	datac => \display_freq_9_\,
	datad => \display_freq_11_\,
	combout => \hex6_dup0_6_\);

ix17637z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx17637z1 = \sw~combout\(3) & (\sw~combout\(1) # \sw~combout\(0) # \sw~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \sw~combout\(0),
	datac => \sw~combout\(3),
	datad => \sw~combout\(2),
	combout => nx17637z1);

ix17637z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \hex7_dup0_0_\ = \sw~combout\(5) & nx4119z4 & (nx17637z1 # \sw~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx17637z1,
	datab => \sw~combout\(5),
	datac => \sw~combout\(4),
	datad => nx4119z4,
	combout => \hex7_dup0_0_\);

clock_27_ibuf : cycloneii_io
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
	padio => ww_clock_27,
	combout => \clock_27~combout\);

\u_audio_dac_p1_altpll|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "auto",
	c0_high => 15,
	c0_initial => 1,
	c0_low => 15,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_duty_cycle => 50,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 3,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 2,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk1",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 37037,
	inclk1_input_frequency => 37037,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 20,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5840,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \u_audio_dac_p1_altpll|pll_INCLK_bus\,
	clk => \u_audio_dac_p1_altpll|pll_CLK_bus\);

\u_audio_dac_p1_altpll|_clk1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \u_audio_dac_p1_altpll|_clk1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\);

ix51811z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \NOT_bit_position_0_\ = !\bit_position_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_position_0_\,
	combout => \NOT_bit_position_0_\);

\modgen_counter_bit_position_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => \NOT_bit_position_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_0_\);

ix49817z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx49817z1 = \bit_position_2_\ $ (\bit_position_1_\ & \bit_position_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_1_\,
	datac => \bit_position_2_\,
	datad => \bit_position_0_\,
	combout => nx49817z1);

\modgen_counter_bit_position_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => nx49817z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_2_\);

ix48820z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx48820z1 = \bit_position_3_\ $ (\bit_position_1_\ & \bit_position_2_\ & \bit_position_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_1_\,
	datab => \bit_position_2_\,
	datac => \bit_position_3_\,
	datad => \bit_position_0_\,
	combout => nx48820z1);

\modgen_counter_bit_position_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => nx48820z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_3_\);

\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\ & 
-- (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\ # GND)
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\ = CARRY(!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14\);

\key_ibuf_0_\ : cycloneii_io
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
	padio => ww_key(0),
	combout => \key~combout\(0));

ix48238z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx48238z1 = !\key~combout\(0) # !nx50205z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx50205z2,
	datad => \key~combout\(0),
	combout => nx48238z1);

\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15\);

\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\ & 
-- (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\ # GND)
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\ = CARRY(!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10\);

\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11\);

\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\ & 
-- (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\ # GND)
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ = CARRY(!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\);

\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7\);

\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ $ GND) # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ & 
-- !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\ & VCC
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\ = CARRY(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\);

\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\);

\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\ & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\ & 
-- (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\ # GND)
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\ = CARRY(!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\,
	datad => VCC,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\,
	cout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\);

\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\);

\u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\ = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\ $ !\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\,
	cin => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2\,
	combout => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\);

\u_audio_dac_modgen_counter_lrck_1x_div|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1\,
	sclr => nx48238z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\);

ix50205z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z2 = !\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\ & (nx50205z3 & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\ # !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx50205z3,
	datab => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5\,
	datac => \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1\,
	datad => \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3\,
	combout => nx50205z2);

ix50205z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx50205z1 = aud_adclrck_dup0 $ !nx50205z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => aud_adclrck_dup0,
	datad => nx50205z2,
	combout => nx50205z1);

u_audio_dac_reg_lrck_1x : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx50205z1,
	sclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aud_adclrck_dup0);

\aud_adclrck_dup0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \aud_adclrck_dup0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aud_adclrck_dup0~clkctrl_outclk\);

\u_sine_reg_address_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx40964z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_3_\);

\u_sine_address_add9_0i1|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx38970z1\ = \sw~combout\(1) & (\u_sine_address_1_\ & \u_sine_address_add9_0i1|nx45949z23\ & VCC # !\u_sine_address_1_\ & !\u_sine_address_add9_0i1|nx45949z23\) # !\sw~combout\(1) & (\u_sine_address_1_\ & 
-- !\u_sine_address_add9_0i1|nx45949z23\ # !\u_sine_address_1_\ & (\u_sine_address_add9_0i1|nx45949z23\ # GND))
-- \u_sine_address_add9_0i1|nx45949z20\ = CARRY(\sw~combout\(1) & !\u_sine_address_1_\ & !\u_sine_address_add9_0i1|nx45949z23\ # !\sw~combout\(1) & (!\u_sine_address_add9_0i1|nx45949z23\ # !\u_sine_address_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(1),
	datab => \u_sine_address_1_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z23\,
	combout => \u_sine_address_add9_0i1|nx38970z1\,
	cout => \u_sine_address_add9_0i1|nx45949z20\);

\u_sine_reg_address_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx38970z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_1_\);

\u_sine_address_add9_0i1|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx39967z1\ = (\sw~combout\(2) $ \u_sine_address_2_\ $ !\u_sine_address_add9_0i1|nx45949z20\) # GND
-- \u_sine_address_add9_0i1|nx45949z17\ = CARRY(\sw~combout\(2) & (\u_sine_address_2_\ # !\u_sine_address_add9_0i1|nx45949z20\) # !\sw~combout\(2) & \u_sine_address_2_\ & !\u_sine_address_add9_0i1|nx45949z20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(2),
	datab => \u_sine_address_2_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z20\,
	combout => \u_sine_address_add9_0i1|nx39967z1\,
	cout => \u_sine_address_add9_0i1|nx45949z17\);

\u_sine_reg_address_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx39967z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_2_\);

\u_sine_address_add9_0i1|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx40964z1\ = \sw~combout\(3) & (\u_sine_address_3_\ & \u_sine_address_add9_0i1|nx45949z17\ & VCC # !\u_sine_address_3_\ & !\u_sine_address_add9_0i1|nx45949z17\) # !\sw~combout\(3) & (\u_sine_address_3_\ & 
-- !\u_sine_address_add9_0i1|nx45949z17\ # !\u_sine_address_3_\ & (\u_sine_address_add9_0i1|nx45949z17\ # GND))
-- \u_sine_address_add9_0i1|nx45949z14\ = CARRY(\sw~combout\(3) & !\u_sine_address_3_\ & !\u_sine_address_add9_0i1|nx45949z17\ # !\sw~combout\(3) & (!\u_sine_address_add9_0i1|nx45949z17\ # !\u_sine_address_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(3),
	datab => \u_sine_address_3_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z17\,
	combout => \u_sine_address_add9_0i1|nx40964z1\,
	cout => \u_sine_address_add9_0i1|nx45949z14\);

\u_sine_address_add9_0i1|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx41961z1\ = (\u_sine_address_4_\ $ \sw~combout\(4) $ !\u_sine_address_add9_0i1|nx45949z14\) # GND
-- \u_sine_address_add9_0i1|nx45949z11\ = CARRY(\u_sine_address_4_\ & (\sw~combout\(4) # !\u_sine_address_add9_0i1|nx45949z14\) # !\u_sine_address_4_\ & \sw~combout\(4) & !\u_sine_address_add9_0i1|nx45949z14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_4_\,
	datab => \sw~combout\(4),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z14\,
	combout => \u_sine_address_add9_0i1|nx41961z1\,
	cout => \u_sine_address_add9_0i1|nx45949z11\);

\u_sine_address_add9_0i1|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx42958z1\ = \u_sine_address_5_\ & (\sw~combout\(5) & \u_sine_address_add9_0i1|nx45949z11\ & VCC # !\sw~combout\(5) & !\u_sine_address_add9_0i1|nx45949z11\) # !\u_sine_address_5_\ & (\sw~combout\(5) & 
-- !\u_sine_address_add9_0i1|nx45949z11\ # !\sw~combout\(5) & (\u_sine_address_add9_0i1|nx45949z11\ # GND))
-- \u_sine_address_add9_0i1|nx45949z8\ = CARRY(\u_sine_address_5_\ & !\sw~combout\(5) & !\u_sine_address_add9_0i1|nx45949z11\ # !\u_sine_address_5_\ & (!\u_sine_address_add9_0i1|nx45949z11\ # !\sw~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_5_\,
	datab => \sw~combout\(5),
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z11\,
	combout => \u_sine_address_add9_0i1|nx42958z1\,
	cout => \u_sine_address_add9_0i1|nx45949z8\);

\u_sine_reg_address_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx43955z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_6_\);

\u_sine_address_add9_0i1|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx43955z1\ = (\sw~combout\(6) $ \u_sine_address_6_\ $ !\u_sine_address_add9_0i1|nx45949z8\) # GND
-- \u_sine_address_add9_0i1|nx45949z5\ = CARRY(\sw~combout\(6) & (\u_sine_address_6_\ # !\u_sine_address_add9_0i1|nx45949z8\) # !\sw~combout\(6) & \u_sine_address_6_\ & !\u_sine_address_add9_0i1|nx45949z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(6),
	datab => \u_sine_address_6_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z8\,
	combout => \u_sine_address_add9_0i1|nx43955z1\,
	cout => \u_sine_address_add9_0i1|nx45949z5\);

\u_sine_address_add9_0i1|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx44952z1\ = \u_sine_address_7_\ & !\u_sine_address_add9_0i1|nx45949z5\ # !\u_sine_address_7_\ & (\u_sine_address_add9_0i1|nx45949z5\ # GND)
-- \u_sine_address_add9_0i1|nx45949z3\ = CARRY(!\u_sine_address_add9_0i1|nx45949z5\ # !\u_sine_address_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_address_7_\,
	datad => VCC,
	cin => \u_sine_address_add9_0i1|nx45949z5\,
	combout => \u_sine_address_add9_0i1|nx44952z1\,
	cout => \u_sine_address_add9_0i1|nx45949z3\);

\u_sine_reg_address_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_sine_address_add9_0i1|nx45949z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_sine_address_8_\);

\u_sine_address_add9_0i1|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_sine_address_add9_0i1|nx45949z1\ = \u_sine_address_add9_0i1|nx45949z3\ $ !\u_sine_address_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_sine_address_8_\,
	cin => \u_sine_address_add9_0i1|nx45949z3\,
	combout => \u_sine_address_add9_0i1|nx45949z1\);

\u_noise_modgen_counter_address|ix60244z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx51271z1\ = \u_noise_modgen_counter_address|q_0_\ $ VCC
-- \u_noise_modgen_counter_address|nx60244z10\ = CARRY(\u_noise_modgen_counter_address|q_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_0_\,
	datad => VCC,
	combout => \u_noise_modgen_counter_address|nx51271z1\,
	cout => \u_noise_modgen_counter_address|nx60244z10\);

\u_noise_modgen_counter_address|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx51271z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_0_\);

\u_noise_modgen_counter_address|ix60244z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx52268z1\ = \u_noise_modgen_counter_address|q_1_\ & !\u_noise_modgen_counter_address|nx60244z10\ # !\u_noise_modgen_counter_address|q_1_\ & (\u_noise_modgen_counter_address|nx60244z10\ # GND)
-- \u_noise_modgen_counter_address|nx60244z9\ = CARRY(!\u_noise_modgen_counter_address|nx60244z10\ # !\u_noise_modgen_counter_address|q_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_noise_modgen_counter_address|q_1_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z10\,
	combout => \u_noise_modgen_counter_address|nx52268z1\,
	cout => \u_noise_modgen_counter_address|nx60244z9\);

\u_noise_modgen_counter_address|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx52268z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_1_\);

\u_noise_modgen_counter_address|ix60244z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx53265z1\ = \u_noise_modgen_counter_address|q_2_\ & (\u_noise_modgen_counter_address|nx60244z9\ $ GND) # !\u_noise_modgen_counter_address|q_2_\ & !\u_noise_modgen_counter_address|nx60244z9\ & VCC
-- \u_noise_modgen_counter_address|nx60244z8\ = CARRY(\u_noise_modgen_counter_address|q_2_\ & !\u_noise_modgen_counter_address|nx60244z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_2_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z9\,
	combout => \u_noise_modgen_counter_address|nx53265z1\,
	cout => \u_noise_modgen_counter_address|nx60244z8\);

\u_noise_modgen_counter_address|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_2_\);

\u_noise_modgen_counter_address|ix60244z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx54262z1\ = \u_noise_modgen_counter_address|q_3_\ & !\u_noise_modgen_counter_address|nx60244z8\ # !\u_noise_modgen_counter_address|q_3_\ & (\u_noise_modgen_counter_address|nx60244z8\ # GND)
-- \u_noise_modgen_counter_address|nx60244z7\ = CARRY(!\u_noise_modgen_counter_address|nx60244z8\ # !\u_noise_modgen_counter_address|q_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_3_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z8\,
	combout => \u_noise_modgen_counter_address|nx54262z1\,
	cout => \u_noise_modgen_counter_address|nx60244z7\);

\u_noise_modgen_counter_address|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx54262z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_3_\);

\u_noise_modgen_counter_address|ix60244z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx55259z1\ = \u_noise_modgen_counter_address|q_4_\ & (\u_noise_modgen_counter_address|nx60244z7\ $ GND) # !\u_noise_modgen_counter_address|q_4_\ & !\u_noise_modgen_counter_address|nx60244z7\ & VCC
-- \u_noise_modgen_counter_address|nx60244z6\ = CARRY(\u_noise_modgen_counter_address|q_4_\ & !\u_noise_modgen_counter_address|nx60244z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_noise_modgen_counter_address|q_4_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z7\,
	combout => \u_noise_modgen_counter_address|nx55259z1\,
	cout => \u_noise_modgen_counter_address|nx60244z6\);

\u_noise_modgen_counter_address|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx55259z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_4_\);

\u_noise_modgen_counter_address|ix60244z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx56256z1\ = \u_noise_modgen_counter_address|q_5_\ & !\u_noise_modgen_counter_address|nx60244z6\ # !\u_noise_modgen_counter_address|q_5_\ & (\u_noise_modgen_counter_address|nx60244z6\ # GND)
-- \u_noise_modgen_counter_address|nx60244z5\ = CARRY(!\u_noise_modgen_counter_address|nx60244z6\ # !\u_noise_modgen_counter_address|q_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_5_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z6\,
	combout => \u_noise_modgen_counter_address|nx56256z1\,
	cout => \u_noise_modgen_counter_address|nx60244z5\);

\u_noise_modgen_counter_address|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx56256z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_5_\);

\u_noise_modgen_counter_address|ix60244z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx57253z1\ = \u_noise_modgen_counter_address|q_6_\ & (\u_noise_modgen_counter_address|nx60244z5\ $ GND) # !\u_noise_modgen_counter_address|q_6_\ & !\u_noise_modgen_counter_address|nx60244z5\ & VCC
-- \u_noise_modgen_counter_address|nx60244z4\ = CARRY(\u_noise_modgen_counter_address|q_6_\ & !\u_noise_modgen_counter_address|nx60244z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_noise_modgen_counter_address|q_6_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z5\,
	combout => \u_noise_modgen_counter_address|nx57253z1\,
	cout => \u_noise_modgen_counter_address|nx60244z4\);

\u_noise_modgen_counter_address|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx57253z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_6_\);

\u_noise_modgen_counter_address|ix60244z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx58250z1\ = \u_noise_modgen_counter_address|q_7_\ & !\u_noise_modgen_counter_address|nx60244z4\ # !\u_noise_modgen_counter_address|q_7_\ & (\u_noise_modgen_counter_address|nx60244z4\ # GND)
-- \u_noise_modgen_counter_address|nx60244z3\ = CARRY(!\u_noise_modgen_counter_address|nx60244z4\ # !\u_noise_modgen_counter_address|q_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_7_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z4\,
	combout => \u_noise_modgen_counter_address|nx58250z1\,
	cout => \u_noise_modgen_counter_address|nx60244z3\);

\u_noise_modgen_counter_address|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx58250z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_7_\);

\u_noise_modgen_counter_address|ix60244z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx59247z1\ = \u_noise_modgen_counter_address|q_8_\ & (\u_noise_modgen_counter_address|nx60244z3\ $ GND) # !\u_noise_modgen_counter_address|q_8_\ & !\u_noise_modgen_counter_address|nx60244z3\ & VCC
-- \u_noise_modgen_counter_address|nx60244z2\ = CARRY(\u_noise_modgen_counter_address|q_8_\ & !\u_noise_modgen_counter_address|nx60244z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_noise_modgen_counter_address|q_8_\,
	datad => VCC,
	cin => \u_noise_modgen_counter_address|nx60244z3\,
	combout => \u_noise_modgen_counter_address|nx59247z1\,
	cout => \u_noise_modgen_counter_address|nx60244z2\);

\u_noise_modgen_counter_address|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx59247z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_8_\);

\u_noise_modgen_counter_address|ix60244z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_noise_modgen_counter_address|nx60244z1\ = \u_noise_modgen_counter_address|q_9_\ $ \u_noise_modgen_counter_address|nx60244z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_noise_modgen_counter_address|q_9_\,
	cin => \u_noise_modgen_counter_address|nx60244z2\,
	combout => \u_noise_modgen_counter_address|nx60244z1\);

\u_noise_modgen_counter_address|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_noise_modgen_counter_address|nx60244z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_noise_modgen_counter_address|q_9_\);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"6441071CC8DE5D70761D40307C107E752202FA68CEC0B138C8C693A73757EDF69A8A86C176B00B9787DCC0627C1F65A7319C05622E092119B1D5452D8906942F7F92155731A79E4E36F3F5B6AB61A527BBB5C112CD5F072CD4462D220F3618913DAC993A0242AB7B5D496579A515B87F2DD7786AEC61308B4035E909993CE60AA55580806C67938C40FE2034BDA36E9E9ED1AC81607B3DD8BD24FBBFCFE232BCE1B3C0B68A82FC38FAE6AF35704AFF0B6A1D875A883C0A3E4A0EFFA5619C9A55D281C6E0DDA905EDBF32F21323736EA9B67BCA0D1AC0194E7E753AB70806122991D4589C802A95807AB8A0FE624BE21DF1638F8C73F865138865965874A357E2",
	mem_init0 => X"005AE5EF060ACA6F8EB5B89C615C6D492EB7690F6CDD613F016E49843E3F6ED75825624789A85C62C6E2B42DEDC438A5BDEEA158314108DC266D0D9C451EE4A14BE43DD77A1879D597ACA2380A0C2230C2B9C9CFCA5DDC9B7104377DE21BED9711BA4C1EE5C9E89FEB990A0B74439663CAB11A1754C3BA781F2D92A83679F7637C35FD108C9FD80F061AED3E7010535EBA9727A7C6DD2223A96A63FB8825464BC6A8356B49090009D2D4D201A983D46801E32A314E2C21C84DC875D7DA7158F9BF816213CFFBAEEDB425DA093514C783D366B31FC4EA19E993B70B47932A50B2459CB6FAA2F809FF22B24DAE9F1DD6F2A6FBFA0D3A4912743C2528C459AC1311",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:u_noise_modgen_rom_ix24__ix62120z34212|altsyncram_9nk2:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \aud_adclrck_dup0~clkctrl_outclk\,
	portaaddr => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

ix45891z52925 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_9_\ = \sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(5)) # !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(9),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(5),
	combout => \raw_audio_9_\);

ix45891z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_11_\ = \sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(7)) # !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(11),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(7),
	combout => \raw_audio_11_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_11_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__15_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__15_\);

\u_fir|tap_array_3_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_2__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__15_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__15_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__15_\);

\u_fir|tap_array_6_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_5__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__15_\);

\u_fir|tap_array_7_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_6__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__15_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__15_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__15_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__15_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__15_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__15_\);

ix45891z52924 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_10_\ = \sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(6)) # !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(10),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(6),
	combout => \raw_audio_10_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__10_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__10_\);

\u_fir|taps_3__10_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_3__10_~feeder_combout\ = \u_fir|taps_2__10_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_2__10_\,
	combout => \u_fir|taps_3__10_~feeder_combout\);

\u_fir|tap_array_3_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_3__10_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__10_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__10_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__10_\);

\u_fir|tap_array_6_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_5__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__10_\);

\u_fir|tap_array_7_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_6__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__10_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__10_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__10_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__10_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__10_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__10_\);

ix45891z52926 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_8_\ = \sw~combout\(17) & \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(4) # !\sw~combout\(17) & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(4),
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(8),
	combout => \raw_audio_8_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__8_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__8_\);

\u_fir|taps_3__8_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_3__8_~feeder_combout\ = \u_fir|taps_2__8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_2__8_\,
	combout => \u_fir|taps_3__8_~feeder_combout\);

\u_fir|tap_array_3_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_3__8_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__8_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__8_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__8_\);

\u_fir|tap_array_6_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_5__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__8_\);

\u_fir|tap_array_7_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_6__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__8_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__8_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__8_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__8_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__8_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__8_\);

\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"1CCEF41A1BE47B8EC04C69D25338F89DDDA04462E827F38DF7D87736B3517F37C3BD4EEDBC309969D6847E3A8D9E0546A6700407E03FE015782194605E54BF10A4F01C8753EB30F760E7C2D24A7EDA6FA4B976DC7F532C2087A84E230F6D5D48D4C1CAAA053DEDF862AEE36B900FC597EC9508728DBB2580FAA9F43FABC5E761295AD818B8612D2FD3F34DA7548C5291536D48CA1E8177D5E75C234648A6DA3CA9E3C16061B05E2CA80E6F469B2EFF2EE04A8257181E62E221EB472AEB49A47B49A61466F543FDB1D62BB60B4B1039E0888665FA817D9179C09FE07C6AE7B3C0FEED2EDA7B5488906381A0965AA97FB8404A5E545D076319B8A259FDCAAA84FC",
	mem_init0 => X"CEB17C5FD83D7C7B444BC9ABCDF44E371EC0BA3773F455A6F03E3250F1DC94A09F7C8DB510F647126FC270098A4B0210E7421635F860E4C07CABE65604A560AD6538DD9E1BFA6628CA10415295D63B13B1E9E22EC1A27E393203E5B0DA4157A7275CCBCBEC41476D599E9C69E6E044F3710F98C4D4E691B32891AA1F76F7F75DEBF5E3FF7A4677932355ECDD8081CC602CBCB9A92763BAFF43ADA446CFF2AB71845993CABA02645D0CB0BF724914112CC94B90AF9E5446AE795051F5CB6BF2B50AA4581EA2EF8B6A1BC774E848C2BEE93DE4DB7640E2C482DFE54DDF6E9B5ADB87A47F137504B2AD332F5F692F00C5B8C4552DBAF9A05C9ADD576576D9B200FE",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:u_noise_modgen_rom_ix24__ix62120z34212|altsyncram_9nk2:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \aud_adclrck_dup0~clkctrl_outclk\,
	portaaddr => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ix45891z52927 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_7_\ = \sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(3)) # !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(7),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(3),
	combout => \raw_audio_7_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__7_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__7_\);

\u_fir|taps_3__7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_3__7_~feeder_combout\ = \u_fir|taps_2__7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_2__7_\,
	combout => \u_fir|taps_3__7_~feeder_combout\);

\u_fir|tap_array_3_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_3__7_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__7_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__7_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__7_\);

\u_fir|tap_array_6_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_5__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__7_\);

\u_fir|tap_array_7_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_6__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__7_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__7_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__7_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__7_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__7_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__7_\);

ix62120z52923 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_5_\ = \sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(1)) # !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(5),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(1),
	combout => \raw_audio_5_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__5_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__5_\);

\u_fir|taps_3__5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_3__5_~feeder_combout\ = \u_fir|taps_2__5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_2__5_\,
	combout => \u_fir|taps_3__5_~feeder_combout\);

\u_fir|tap_array_3_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_3__5_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__5_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__5_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__5_\);

\u_fir|tap_array_6_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_5__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__5_\);

\u_fir|tap_array_7_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_6__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__5_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__5_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__5_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__5_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__5_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__5_\);

ix45891z52930 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_3_\ = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(3) & !\sw~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(3),
	datab => \sw~combout\(17),
	combout => \raw_audio_3_\);

\u_fir|taps_1__3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_1__3_~feeder_combout\ = \raw_audio_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \raw_audio_3_\,
	combout => \u_fir|taps_1__3_~feeder_combout\);

\u_fir|tap_array_1_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_1__3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__3_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__3_\);

\u_fir|tap_array_3_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_2__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__3_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__3_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__3_\);

\u_fir|taps_6__3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_6__3_~feeder_combout\ = \u_fir|taps_5__3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_5__3_\,
	combout => \u_fir|taps_6__3_~feeder_combout\);

\u_fir|tap_array_6_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_6__3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__3_\);

\u_fir|taps_7__3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_7__3_~feeder_combout\ = \u_fir|taps_6__3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_6__3_\,
	combout => \u_fir|taps_7__3_~feeder_combout\);

\u_fir|tap_array_7_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_7__3_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__3_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__3_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__3_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__3_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__3_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__3_\);

ix45891z52932 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_1_\ = !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(1),
	combout => \raw_audio_1_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__1_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__1_\);

\u_fir|tap_array_3_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_2__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__1_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__1_\);

\u_fir|taps_5__1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_5__1_~feeder_combout\ = \u_fir|taps_4__1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_4__1_\,
	combout => \u_fir|taps_5__1_~feeder_combout\);

\u_fir|tap_array_5_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_5__1_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__1_\);

\u_fir|taps_6__1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_6__1_~feeder_combout\ = \u_fir|taps_5__1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_5__1_\,
	combout => \u_fir|taps_6__1_~feeder_combout\);

\u_fir|tap_array_6_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_6__1_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__1_\);

\u_fir|taps_7__1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_7__1_~feeder_combout\ = \u_fir|taps_6__1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_6__1_\,
	combout => \u_fir|taps_7__1_~feeder_combout\);

\u_fir|tap_array_7_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_7__1_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__1_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__1_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__1_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__1_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__1_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__1_\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z16\ = CARRY(\u_fir|taps_12__0_\ & \u_fir|taps_12__1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__0_\,
	datab => \u_fir|taps_12__1_\,
	datad => VCC,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z16\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z15\ = CARRY(\u_fir|taps_12__2_\ & !\u_fir|taps_12__1_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z16\ # !\u_fir|taps_12__2_\ & 
-- (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z16\ # !\u_fir|taps_12__1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__2_\,
	datab => \u_fir|taps_12__1_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z16\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z15\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_12__4_\ $ \u_fir|taps_12__5_\ $ !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z13\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\ = CARRY(\u_fir|taps_12__4_\ & (\u_fir|taps_12__5_\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z13\) # !\u_fir|taps_12__4_\ & \u_fir|taps_12__5_\ & 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__4_\,
	datab => \u_fir|taps_12__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z13\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_12__6_\ & (\u_fir|taps_12__5_\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\ & VCC # !\u_fir|taps_12__5_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\) # 
-- !\u_fir|taps_12__6_\ & (\u_fir|taps_12__5_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\ # !\u_fir|taps_12__5_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\ # GND))
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z11\ = CARRY(\u_fir|taps_12__6_\ & !\u_fir|taps_12__5_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\ # !\u_fir|taps_12__6_\ & 
-- (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\ # !\u_fir|taps_12__5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__6_\,
	datab => \u_fir|taps_12__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z12\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z11\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_12__6_\ $ \u_fir|taps_12__7_\ $ !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z11\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\ = CARRY(\u_fir|taps_12__6_\ & (\u_fir|taps_12__7_\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z11\) # !\u_fir|taps_12__6_\ & \u_fir|taps_12__7_\ & 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__6_\,
	datab => \u_fir|taps_12__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z11\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z10\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_12__9_\ & (\u_fir|taps_12__10_\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\ & VCC # !\u_fir|taps_12__10_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\) # 
-- !\u_fir|taps_12__9_\ & (\u_fir|taps_12__10_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\ # !\u_fir|taps_12__10_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\ # GND))
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z7\ = CARRY(\u_fir|taps_12__9_\ & !\u_fir|taps_12__10_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\ # !\u_fir|taps_12__9_\ & 
-- (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\ # !\u_fir|taps_12__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__9_\,
	datab => \u_fir|taps_12__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z8\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z7\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_11_ix10225z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z6\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|b_10_\ = CARRY(\u_fir|taps_12__15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z6\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|b_10_\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|ix10225z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z5\ = \u_fir|tap_array_12_filter_block_prod_mults28_0|b_10_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|b_10_\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z5\);

ix45891z52928 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_6_\ = \sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(2)) # !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(6),
	datad => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(2),
	combout => \raw_audio_6_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__6_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__6_\);

\u_fir|taps_3__6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_3__6_~feeder_combout\ = \u_fir|taps_2__6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_2__6_\,
	combout => \u_fir|taps_3__6_~feeder_combout\);

\u_fir|tap_array_3_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_3__6_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__6_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__6_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__6_\);

\u_fir|tap_array_6_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_5__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__6_\);

\u_fir|tap_array_7_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_6__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__6_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__6_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__6_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__6_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__6_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__6_\);

ix45891z52933 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_0_\ = !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datad => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(0),
	combout => \raw_audio_0_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__0_\);

\u_fir|taps_2__0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_2__0_~feeder_combout\ = \u_fir|taps_1__0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_1__0_\,
	combout => \u_fir|taps_2__0_~feeder_combout\);

\u_fir|tap_array_2_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_2__0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__0_\);

\u_fir|taps_3__0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_3__0_~feeder_combout\ = \u_fir|taps_2__0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_2__0_\,
	combout => \u_fir|taps_3__0_~feeder_combout\);

\u_fir|tap_array_3_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_3__0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__0_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__0_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__0_\);

\u_fir|taps_6__0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_6__0_~feeder_combout\ = \u_fir|taps_5__0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_5__0_\,
	combout => \u_fir|taps_6__0_~feeder_combout\);

\u_fir|tap_array_6_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_6__0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__0_\);

\u_fir|tap_array_7_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_6__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__0_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__0_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__0_\);

\u_fir|taps_10__0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_10__0_~feeder_combout\ = \u_fir|taps_9__0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_9__0_\,
	combout => \u_fir|taps_10__0_~feeder_combout\);

\u_fir|tap_array_10_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_10__0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__0_\);

\u_fir|taps_11__0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_11__0_~feeder_combout\ = \u_fir|taps_10__0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_10__0_\,
	combout => \u_fir|taps_11__0_~feeder_combout\);

\u_fir|tap_array_11_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_11__0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__0_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__0_\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52950\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z26\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_2_\ & \u_fir|taps_12__0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_2_\,
	datab => \u_fir|taps_12__0_\,
	datad => VCC,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z26\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52949\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z25\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_3_\ & !\u_fir|taps_12__1_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z26\ # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_3_\ & (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z26\ # !\u_fir|taps_12__1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3_\,
	datab => \u_fir|taps_12__1_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z26\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z25\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52948\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\ = CARRY(\u_fir|taps_12__2_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_4_\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z25\) # !\u_fir|taps_12__2_\ & 
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__2_\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_4_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z25\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52947\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3__dup_193\ = \u_fir|taps_12__3_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\ & VCC # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\) # !\u_fir|taps_12__3_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\ & 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\ # GND))
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z23\ = CARRY(\u_fir|taps_12__3_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\ # !\u_fir|taps_12__3_\ & 
-- (!\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__3_\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z24\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3__dup_193\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z23\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52946\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\ = (\u_fir|taps_12__4_\ $ \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6_\ $ !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z23\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\ = CARRY(\u_fir|taps_12__4_\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_6_\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z23\) # !\u_fir|taps_12__4_\ & 
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_12__4_\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z23\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z22\);

\u_fir|tap_array_12_filter_block_prod_mults28_0|modgen_add_12_ix10225z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_8_\ $ \u_fir|taps_12__6_\ $ !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z21\) # GND
-- \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_8_\ & (\u_fir|taps_12__6_\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z21\) # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_8_\ & \u_fir|taps_12__6_\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_8_\,
	datab => \u_fir|taps_12__6_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z21\,
	combout => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_6__dup_190\,
	cout => \u_fir|tap_array_12_filter_block_prod_mults28_0|nx10225z20\);

\u_fir|tap_array_1_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__9_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__9_\);

\u_fir|taps_3__9_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_3__9_~feeder_combout\ = \u_fir|taps_2__9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_2__9_\,
	combout => \u_fir|taps_3__9_~feeder_combout\);

\u_fir|tap_array_3_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_3__9_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__9_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__9_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__9_\);

\u_fir|tap_array_6_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_5__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__9_\);

\u_fir|tap_array_7_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_6__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__9_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__9_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__9_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__9_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__9_\);

ix45891z52929 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_4_\ = \sw~combout\(17) & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(0)) # !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(4),
	datab => \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a\(0),
	datad => \sw~combout\(17),
	combout => \raw_audio_4_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__4_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__4_\);

\u_fir|tap_array_3_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_2__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__4_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__4_\);

\u_fir|tap_array_5_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_4__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__4_\);

\u_fir|tap_array_6_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_5__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__4_\);

\u_fir|tap_array_7_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_6__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__4_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__4_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__4_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__4_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__4_\);

ix45891z52931 : cycloneii_lcell_comb
-- Equation(s):
-- \raw_audio_2_\ = !\sw~combout\(17) & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw~combout\(17),
	datab => \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a\(2),
	combout => \raw_audio_2_\);

\u_fir|tap_array_1_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \raw_audio_2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_1__2_\);

\u_fir|tap_array_2_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_1__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_2__2_\);

\u_fir|tap_array_3_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_2__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_3__2_\);

\u_fir|tap_array_4_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_3__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_4__2_\);

\u_fir|taps_5__2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_5__2_~feeder_combout\ = \u_fir|taps_4__2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_4__2_\,
	combout => \u_fir|taps_5__2_~feeder_combout\);

\u_fir|tap_array_5_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_5__2_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_5__2_\);

\u_fir|taps_6__2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_6__2_~feeder_combout\ = \u_fir|taps_5__2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_5__2_\,
	combout => \u_fir|taps_6__2_~feeder_combout\);

\u_fir|tap_array_6_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_6__2_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_6__2_\);

\u_fir|taps_7__2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_7__2_~feeder_combout\ = \u_fir|taps_6__2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_6__2_\,
	combout => \u_fir|taps_7__2_~feeder_combout\);

\u_fir|tap_array_7_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_7__2_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_7__2_\);

\u_fir|tap_array_8_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_7__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_8__2_\);

\u_fir|tap_array_9_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_8__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_9__2_\);

\u_fir|tap_array_10_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_9__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_10__2_\);

\u_fir|tap_array_11_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_10__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_11__2_\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z13\ = CARRY(\u_fir|taps_11__0_\ & \u_fir|taps_11__1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__0_\,
	datab => \u_fir|taps_11__1_\,
	datad => VCC,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z13\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z12\ = CARRY(\u_fir|taps_11__1_\ & !\u_fir|taps_11__2_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_11__1_\ & 
-- (!\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_11__2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__1_\,
	datab => \u_fir|taps_11__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z13\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z12\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\ = CARRY(\u_fir|taps_11__3_\ & (\u_fir|taps_11__2_\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z12\) # !\u_fir|taps_11__3_\ & \u_fir|taps_11__2_\ & 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__3_\,
	datab => \u_fir|taps_11__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z12\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_11__3_\ & (\u_fir|taps_11__4_\ & \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\ & VCC # !\u_fir|taps_11__4_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\) # 
-- !\u_fir|taps_11__3_\ & (\u_fir|taps_11__4_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_11__4_\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\ # GND))
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z10\ = CARRY(\u_fir|taps_11__3_\ & !\u_fir|taps_11__4_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_11__3_\ & 
-- (!\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_11__4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__3_\,
	datab => \u_fir|taps_11__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z11\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z10\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_11__5_\ $ \u_fir|taps_11__4_\ $ !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z10\) # GND
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\ = CARRY(\u_fir|taps_11__5_\ & (\u_fir|taps_11__4_\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z10\) # !\u_fir|taps_11__5_\ & \u_fir|taps_11__4_\ & 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__5_\,
	datab => \u_fir|taps_11__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z10\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_11__6_\ & (\u_fir|taps_11__5_\ & \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\ & VCC # !\u_fir|taps_11__5_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\) # 
-- !\u_fir|taps_11__6_\ & (\u_fir|taps_11__5_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_11__5_\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\ # GND))
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z8\ = CARRY(\u_fir|taps_11__6_\ & !\u_fir|taps_11__5_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_11__6_\ & (!\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\ 
-- # !\u_fir|taps_11__5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__6_\,
	datab => \u_fir|taps_11__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z9\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z8\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_11__6_\ $ \u_fir|taps_11__7_\ $ !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z8\) # GND
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\ = CARRY(\u_fir|taps_11__6_\ & (\u_fir|taps_11__7_\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z8\) # !\u_fir|taps_11__6_\ & \u_fir|taps_11__7_\ & 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__6_\,
	datab => \u_fir|taps_11__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z8\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z7\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_11__8_\ $ \u_fir|taps_11__9_\ $ !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z6\) # GND
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\ = CARRY(\u_fir|taps_11__8_\ & (\u_fir|taps_11__9_\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z6\) # !\u_fir|taps_11__8_\ & \u_fir|taps_11__9_\ & 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__8_\,
	datab => \u_fir|taps_11__9_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z6\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_11__10_\ & (\u_fir|taps_11__9_\ & \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\ & VCC # !\u_fir|taps_11__9_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\) # 
-- !\u_fir|taps_11__10_\ & (\u_fir|taps_11__9_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_11__9_\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\ # GND))
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z4\ = CARRY(\u_fir|taps_11__10_\ & !\u_fir|taps_11__9_\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_11__10_\ & 
-- (!\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_11__9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__10_\,
	datab => \u_fir|taps_11__9_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z5\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z4\);

\u_fir|tap_array_11_filter_block_prod_mults28_0|modgen_add_10_ix9228z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_11__10_\ $ \u_fir|taps_11__15_\ $ !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z4\) # GND
-- \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z3\ = CARRY(\u_fir|taps_11__10_\ & (\u_fir|taps_11__15_\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z4\) # !\u_fir|taps_11__10_\ & \u_fir|taps_11__15_\ & 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_11__10_\,
	datab => \u_fir|taps_11__15_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z4\,
	combout => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_11_filter_block_prod_mults28_0|nx9228z3\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z13\ = CARRY(\u_fir|taps_9__0_\ & \u_fir|taps_9__1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__0_\,
	datab => \u_fir|taps_9__1_\,
	datad => VCC,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z13\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z12\ = CARRY(\u_fir|taps_9__2_\ & !\u_fir|taps_9__1_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_9__2_\ & (!\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z13\ # 
-- !\u_fir|taps_9__1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__2_\,
	datab => \u_fir|taps_9__1_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z13\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z12\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\ = CARRY(\u_fir|taps_9__2_\ & (\u_fir|taps_9__3_\ # !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z12\) # !\u_fir|taps_9__2_\ & \u_fir|taps_9__3_\ & 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__2_\,
	datab => \u_fir|taps_9__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z12\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z11\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_9__4_\ $ \u_fir|taps_9__5_\ $ !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z10\) # GND
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\ = CARRY(\u_fir|taps_9__4_\ & (\u_fir|taps_9__5_\ # !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z10\) # !\u_fir|taps_9__4_\ & \u_fir|taps_9__5_\ & 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__4_\,
	datab => \u_fir|taps_9__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z10\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_9__5_\ & (\u_fir|taps_9__6_\ & \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\ & VCC # !\u_fir|taps_9__6_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\) # 
-- !\u_fir|taps_9__5_\ & (\u_fir|taps_9__6_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_9__6_\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\ # GND))
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z8\ = CARRY(\u_fir|taps_9__5_\ & !\u_fir|taps_9__6_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_9__5_\ & (!\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\ # 
-- !\u_fir|taps_9__6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__5_\,
	datab => \u_fir|taps_9__6_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z9\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z8\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_9__7_\ & (\u_fir|taps_9__8_\ & \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\ & VCC # !\u_fir|taps_9__8_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\) # 
-- !\u_fir|taps_9__7_\ & (\u_fir|taps_9__8_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_9__8_\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\ # GND))
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z6\ = CARRY(\u_fir|taps_9__7_\ & !\u_fir|taps_9__8_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_9__7_\ & (!\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\ # 
-- !\u_fir|taps_9__8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__7_\,
	datab => \u_fir|taps_9__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z7\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z6\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z13\ = CARRY(\u_fir|taps_7__0_\ & \u_fir|taps_7__1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__0_\,
	datab => \u_fir|taps_7__1_\,
	datad => VCC,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z13\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z12\ = CARRY(\u_fir|taps_7__2_\ & !\u_fir|taps_7__1_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_7__2_\ & (!\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z13\ # 
-- !\u_fir|taps_7__1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__2_\,
	datab => \u_fir|taps_7__1_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z13\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z12\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\ = CARRY(\u_fir|taps_7__2_\ & (\u_fir|taps_7__3_\ # !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z12\) # !\u_fir|taps_7__2_\ & \u_fir|taps_7__3_\ & 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__2_\,
	datab => \u_fir|taps_7__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z12\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_7__4_\ & (\u_fir|taps_7__3_\ & \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\ & VCC # !\u_fir|taps_7__3_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\) # 
-- !\u_fir|taps_7__4_\ & (\u_fir|taps_7__3_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_7__3_\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\ # GND))
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z10\ = CARRY(\u_fir|taps_7__4_\ & !\u_fir|taps_7__3_\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_7__4_\ & (!\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\ # 
-- !\u_fir|taps_7__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__4_\,
	datab => \u_fir|taps_7__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z11\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z10\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_7__4_\ $ \u_fir|taps_7__5_\ $ !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z10\) # GND
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\ = CARRY(\u_fir|taps_7__4_\ & (\u_fir|taps_7__5_\ # !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z10\) # !\u_fir|taps_7__4_\ & \u_fir|taps_7__5_\ & 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__4_\,
	datab => \u_fir|taps_7__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z10\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z9\);

\u_fir|tap_array_7_filter_block_prod_mults28_0|modgen_add_6_ix9228z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_7__6_\ $ \u_fir|taps_7__7_\ $ !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z8\) # GND
-- \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\ = CARRY(\u_fir|taps_7__6_\ & (\u_fir|taps_7__7_\ # !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z8\) # !\u_fir|taps_7__6_\ & \u_fir|taps_7__7_\ & 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_7__6_\,
	datab => \u_fir|taps_7__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z8\,
	combout => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_7_filter_block_prod_mults28_0|nx9228z7\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z16\ = CARRY(\u_fir|taps_6__0_\ & \u_fir|taps_6__1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__0_\,
	datab => \u_fir|taps_6__1_\,
	datad => VCC,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z16\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z15\ = CARRY(\u_fir|taps_6__2_\ & !\u_fir|taps_6__1_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z16\ # !\u_fir|taps_6__2_\ & (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z16\ 
-- # !\u_fir|taps_6__1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__2_\,
	datab => \u_fir|taps_6__1_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z16\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z15\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_6__4_\ & (\u_fir|taps_6__3_\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\ & VCC # !\u_fir|taps_6__3_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\) # 
-- !\u_fir|taps_6__4_\ & (\u_fir|taps_6__3_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\ # !\u_fir|taps_6__3_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\ # GND))
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z13\ = CARRY(\u_fir|taps_6__4_\ & !\u_fir|taps_6__3_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\ # !\u_fir|taps_6__4_\ & (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\ 
-- # !\u_fir|taps_6__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__4_\,
	datab => \u_fir|taps_6__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z14\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z13\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_6__7_\ & (\u_fir|taps_6__8_\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\ & VCC # !\u_fir|taps_6__8_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\) # 
-- !\u_fir|taps_6__7_\ & (\u_fir|taps_6__8_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\ # !\u_fir|taps_6__8_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\ # GND))
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z9\ = CARRY(\u_fir|taps_6__7_\ & !\u_fir|taps_6__8_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\ # !\u_fir|taps_6__7_\ & (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\ # 
-- !\u_fir|taps_6__8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__7_\,
	datab => \u_fir|taps_6__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z10\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z9\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52950\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z26\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_2_\ & \u_fir|taps_6__0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_2_\,
	datab => \u_fir|taps_6__0_\,
	datad => VCC,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z26\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52949\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z25\ = CARRY(\u_fir|taps_6__1_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_3_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z26\ # !\u_fir|taps_6__1_\ & 
-- (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z26\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__1_\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_3_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z26\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z25\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52948\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_4_\ & (\u_fir|taps_6__2_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z25\) # 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_4_\ & \u_fir|taps_6__2_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_4_\,
	datab => \u_fir|taps_6__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z25\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z24\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52945\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5__dup_191\ = \u_fir|taps_6__5_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\ & VCC # 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\) # !\u_fir|taps_6__5_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\ & 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\ # GND))
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z21\ = CARRY(\u_fir|taps_6__5_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\ # !\u_fir|taps_6__5_\ & 
-- (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__5_\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z22\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5__dup_191\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z21\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx37973z1\ & (\u_fir|taps_4__3_\ $ VCC) # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|taps_4__3_\ & VCC
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|taps_4__3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx37973z1\,
	datab => \u_fir|taps_4__3_\,
	datad => VCC,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|taps_4__4_\ & \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\ & VCC # !\u_fir|taps_4__4_\ & 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|taps_4__4_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|taps_4__4_\ & 
-- (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|taps_4__4_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|taps_4__4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|taps_4__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_5_filter_block_prod_mults28_0|d_3_\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx37973z1\ $ VCC) # !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_3_\ & 
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx37973z1\ & VCC
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_5_filter_block_prod_mults28_0|d_3_\ & \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_3_\,
	datab => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx37973z1\,
	datad => VCC,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_5_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\ & VCC # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_4_\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\ & 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\ # GND))
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_5_filter_block_prod_mults28_0|d_4_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_4_\ & (!\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_4_\,
	datab => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx38970z1\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5__dup_191\ $ !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_5__dup_191\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z43\) 
-- # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5__dup_191\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_5__dup_191\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\ & \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\ & 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx40964z1\ & (!\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx40964z1\,
	datab => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z13\ = CARRY(\u_fir|taps_8__0_\ & \u_fir|taps_8__1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__0_\,
	datab => \u_fir|taps_8__1_\,
	datad => VCC,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z13\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z12\ = CARRY(\u_fir|taps_8__2_\ & !\u_fir|taps_8__1_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_8__2_\ & (!\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z13\ # 
-- !\u_fir|taps_8__1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__2_\,
	datab => \u_fir|taps_8__1_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z13\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z12\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\ = CARRY(\u_fir|taps_8__2_\ & (\u_fir|taps_8__3_\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z12\) # !\u_fir|taps_8__2_\ & \u_fir|taps_8__3_\ & 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__2_\,
	datab => \u_fir|taps_8__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z12\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_8__4_\ & (\u_fir|taps_8__3_\ & \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\ & VCC # !\u_fir|taps_8__3_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\) # 
-- !\u_fir|taps_8__4_\ & (\u_fir|taps_8__3_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_8__3_\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\ # GND))
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z10\ = CARRY(\u_fir|taps_8__4_\ & !\u_fir|taps_8__3_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\ # !\u_fir|taps_8__4_\ & (!\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\ # 
-- !\u_fir|taps_8__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__4_\,
	datab => \u_fir|taps_8__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z11\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z10\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_8__5_\ $ \u_fir|taps_8__4_\ $ !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z10\) # GND
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\ = CARRY(\u_fir|taps_8__5_\ & (\u_fir|taps_8__4_\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z10\) # !\u_fir|taps_8__5_\ & \u_fir|taps_8__4_\ & 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__5_\,
	datab => \u_fir|taps_8__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z10\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_8__5_\ & (\u_fir|taps_8__6_\ & \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\ & VCC # !\u_fir|taps_8__6_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\) # 
-- !\u_fir|taps_8__5_\ & (\u_fir|taps_8__6_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_8__6_\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\ # GND))
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z8\ = CARRY(\u_fir|taps_8__5_\ & !\u_fir|taps_8__6_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_8__5_\ & (!\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\ # 
-- !\u_fir|taps_8__6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__5_\,
	datab => \u_fir|taps_8__6_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z9\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z8\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx37973z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_3_\ $ VCC) # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx37973z1\ & 
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_3_\ & VCC
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|tap_array_8_filter_block_prod_mults28_0|d_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx37973z1\,
	datab => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_3_\,
	datad => VCC,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_8_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\ & \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\ & 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_8_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_6_\ & (!\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_6_\,
	datab => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx40964z1\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_9_filter_block_prod_mults28_0|d_3_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx37973z1\ $ VCC) # !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_3_\ & 
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx37973z1\ & VCC
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_9_filter_block_prod_mults28_0|d_3_\ & \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_3_\,
	datab => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx37973z1\,
	datad => VCC,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_9_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\ & \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\ & 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_9_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_6_\ & (!\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_6_\,
	datab => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx40964z1\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|tap_array_9_filter_block_prod_mults28_0|d_7_\ $ !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|d_7_\ # !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|tap_array_9_filter_block_prod_mults28_0|d_7_\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_7_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z13\ = CARRY(\u_fir|taps_10__0_\ & \u_fir|taps_10__1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__0_\,
	datab => \u_fir|taps_10__1_\,
	datad => VCC,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z13\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z12\ = CARRY(\u_fir|taps_10__1_\ & !\u_fir|taps_10__2_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_10__1_\ & 
-- (!\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_10__2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__1_\,
	datab => \u_fir|taps_10__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z13\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z12\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\ = CARRY(\u_fir|taps_10__3_\ & (\u_fir|taps_10__2_\ # !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z12\) # !\u_fir|taps_10__3_\ & \u_fir|taps_10__2_\ & 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__3_\,
	datab => \u_fir|taps_10__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z12\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z11\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_10__4_\ $ \u_fir|taps_10__5_\ $ !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z10\) # GND
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\ = CARRY(\u_fir|taps_10__4_\ & (\u_fir|taps_10__5_\ # !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z10\) # !\u_fir|taps_10__4_\ & \u_fir|taps_10__5_\ & 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__4_\,
	datab => \u_fir|taps_10__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z10\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_10__6_\ & (\u_fir|taps_10__5_\ & \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\ & VCC # !\u_fir|taps_10__5_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\) # 
-- !\u_fir|taps_10__6_\ & (\u_fir|taps_10__5_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_10__5_\ & (\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\ # GND))
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z8\ = CARRY(\u_fir|taps_10__6_\ & !\u_fir|taps_10__5_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_10__6_\ & (!\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\ 
-- # !\u_fir|taps_10__5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__6_\,
	datab => \u_fir|taps_10__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z9\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z8\);

\u_fir|tap_array_10_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_10_filter_block_prod_mults28_0|d_7_\ $ \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx41961z1\ $ !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_10_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx41961z1\ # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_10_filter_block_prod_mults28_0|d_7_\ & \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx41961z1\ & !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_7_\,
	datab => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx41961z1\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|tap_array_11_filter_block_prod_mults28_0|d_5_\ $ !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_5_\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|tap_array_11_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_7_\ $ \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx41961z1\ $ !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_11_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx41961z1\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_7_\ & \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx41961z1\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_7_\,
	datab => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx41961z1\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\ & 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx42958z1\ & (!\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx42958z1\,
	datab => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx43955z1\ $ \u_fir|tap_array_11_filter_block_prod_mults28_0|d_9_\ $ !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx43955z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_9_\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx43955z1\ & \u_fir|tap_array_11_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx43955z1\,
	datab => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\ & 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx44952z1\ & (!\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx44952z1\,
	datab => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_10_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_11_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx45949z1\ $ \u_fir|tap_array_11_filter_block_prod_mults28_0|d_11_\ $ !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx45949z1\ & (\u_fir|tap_array_11_filter_block_prod_mults28_0|d_11_\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_10_filter_block_next_sum_add16_0|nx45949z1\ & \u_fir|tap_array_11_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_10_filter_block_next_sum_add16_0|nx45949z1\,
	datab => \u_fir|tap_array_11_filter_block_prod_mults28_0|d_11_\,
	datad => VCC,
	cin => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx37973z1\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_3__dup_193\ $ VCC) # 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3__dup_193\ & VCC
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3__dup_193\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx37973z1\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_3__dup_193\,
	datad => VCC,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\ = \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx38970z1\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\ & \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\ & 
-- VCC # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\) # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx38970z1\ & 
-- (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\ 
-- # GND))
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z43\ = CARRY(\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx38970z1\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\ & 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx38970z1\ & (!\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\ # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx38970z1\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_4__dup_192\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z46\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx38970z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z43\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_7__dup_189\ $ \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx41961z1\ $ !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z37\) # 
-- GND
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_7__dup_189\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx41961z1\ # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z37\) # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_7__dup_189\ & \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx41961z1\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_7__dup_189\,
	datab => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx41961z1\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_12_filter_block_prod_mults28_0|d_8__dup_188\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\ & 
-- VCC # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_8__dup_188\ & 
-- (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\ # 
-- GND))
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_8__dup_188\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_8__dup_188\ & (!\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_8__dup_188\,
	datab => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_12_filter_block_prod_mults28_0|d_10__dup_186\ & (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\ & \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\ & 
-- VCC # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_10__dup_186\ & 
-- (\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\ # 
-- GND))
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_12_filter_block_prod_mults28_0|d_10__dup_186\ & !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\ & 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_10__dup_186\ & (!\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_10__dup_186\,
	datab => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx44952z1\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_12_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\ & \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\ & 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_11_filter_block_next_sum_add16_0|nx46946z1\ & (!\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_11_filter_block_next_sum_add16_0|nx46946z1\,
	datab => \u_fir|tap_array_12_filter_block_prod_mults28_0|d_12_\,
	datad => VCC,
	cin => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_13_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__15_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__9_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__9_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__8_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__7_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__4_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__4_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__5_\);

\u_fir|tap_array_12_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_11__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_12__2_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__2_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__1_\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z13\ = CARRY(\u_fir|taps_13__0_\ & \u_fir|taps_13__2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__0_\,
	datab => \u_fir|taps_13__2_\,
	datad => VCC,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z13\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z12\ = CARRY(\u_fir|taps_13__3_\ & !\u_fir|taps_13__1_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_13__3_\ & 
-- (!\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_13__1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__3_\,
	datab => \u_fir|taps_13__1_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z13\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z12\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\ = CARRY(\u_fir|taps_13__4_\ & (\u_fir|taps_13__2_\ # !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z12\) # !\u_fir|taps_13__4_\ & \u_fir|taps_13__2_\ & 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__4_\,
	datab => \u_fir|taps_13__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z12\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z11\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_13__5_\ & (\u_fir|taps_13__7_\ & \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\ & VCC # !\u_fir|taps_13__7_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\) # 
-- !\u_fir|taps_13__5_\ & (\u_fir|taps_13__7_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_13__7_\ & (\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\ # GND))
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z8\ = CARRY(\u_fir|taps_13__5_\ & !\u_fir|taps_13__7_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\ # !\u_fir|taps_13__5_\ & (!\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\ 
-- # !\u_fir|taps_13__7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__5_\,
	datab => \u_fir|taps_13__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z9\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z8\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_13__6_\ $ \u_fir|taps_13__8_\ $ !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z8\) # GND
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\ = CARRY(\u_fir|taps_13__6_\ & (\u_fir|taps_13__8_\ # !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z8\) # !\u_fir|taps_13__6_\ & \u_fir|taps_13__8_\ & 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__6_\,
	datab => \u_fir|taps_13__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z8\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z7\);

\u_fir|tap_array_13_filter_block_prod_mults28_0|modgen_add_13_ix9228z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_13__15_\ & (\u_fir|taps_13__9_\ & \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\ & VCC # !\u_fir|taps_13__9_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\) # 
-- !\u_fir|taps_13__15_\ & (\u_fir|taps_13__9_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_13__9_\ & (\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\ # GND))
-- \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z4\ = CARRY(\u_fir|taps_13__15_\ & !\u_fir|taps_13__9_\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_13__15_\ & 
-- (!\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_13__9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__15_\,
	datab => \u_fir|taps_13__9_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z5\,
	combout => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z4\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\ & \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\ & 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx40964z1\ & (!\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx40964z1\,
	datab => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_13_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_13_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_13_filter_block_prod_mults28_0|d_8_\ & (!\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_8_\,
	datab => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx43955z1\ $ \u_fir|tap_array_13_filter_block_prod_mults28_0|d_9_\ $ !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx43955z1\ & (\u_fir|tap_array_13_filter_block_prod_mults28_0|d_9_\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx43955z1\ & \u_fir|tap_array_13_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx43955z1\,
	datab => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx45949z1\ $ \u_fir|tap_array_13_filter_block_prod_mults28_0|d_11_\ $ !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx45949z1\ & (\u_fir|tap_array_13_filter_block_prod_mults28_0|d_11_\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx45949z1\ & \u_fir|tap_array_13_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx45949z1\,
	datab => \u_fir|tap_array_13_filter_block_prod_mults28_0|d_11_\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\ & \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z1\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\ & 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z1\ & !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\ 
-- # !\u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z1\ & (!\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_prod_mults28_0|nx9228z1\,
	datab => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx46946z1\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_13_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__10_\);

\u_fir|tap_array_14_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__10_\);

\u_fir|tap_array_14_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__7_\);

\u_fir|tap_array_14_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__5_\);

\u_fir|tap_array_14_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__4_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__3_\);

\u_fir|tap_array_14_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__3_\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx37973z1\ = \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx37973z1\ & (\u_fir|taps_14__3_\ $ VCC) # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|taps_14__3_\ & VCC
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\ = CARRY(\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx37973z1\ & \u_fir|taps_14__3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx37973z1\,
	datab => \u_fir|taps_14__3_\,
	datad => VCC,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx37973z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z46\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|taps_14__5_\ $ !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|taps_14__5_\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|taps_14__5_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|taps_14__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx41961z1\ = (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx41961z1\ $ \u_fir|taps_14__7_\ $ !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z37\) # GND
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\ = CARRY(\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx41961z1\ & (\u_fir|taps_14__7_\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z37\) # 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx41961z1\ & \u_fir|taps_14__7_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx41961z1\,
	datab => \u_fir|taps_14__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z37\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx41961z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|taps_14__8_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|taps_14__8_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|taps_14__8_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|taps_14__8_\ & 
-- (!\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__8_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|taps_14__9_\ $ \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx43955z1\ $ !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|taps_14__9_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx43955z1\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z31\) # !\u_fir|taps_14__9_\ & 
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx43955z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__9_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx43955z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|taps_14__10_\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\ & VCC # !\u_fir|taps_14__10_\ & 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|taps_14__10_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|taps_14__10_\ & 
-- (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|taps_14__10_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx44952z1\ & (!\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|taps_14__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx44952z1\,
	datab => \u_fir|taps_14__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\ & 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|taps_14__15_\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|taps_14__15_\ & 
-- (!\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__15_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx46946z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_14_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__15_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__15_\);

\u_fir|tap_array_14_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__9_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__9_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__9_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__7_\);

\u_fir|tap_array_14_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__8_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__8_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__4_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__6_\);

\u_fir|tap_array_14_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__6_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__6_\);

\u_fir|tap_array_14_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_13__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__2_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__2_\);

\u_fir|taps_14__1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_14__1_~feeder_combout\ = \u_fir|taps_13__1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_13__1_\,
	combout => \u_fir|taps_14__1_~feeder_combout\);

\u_fir|tap_array_14_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_14__1_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__1_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__1_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__3_\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z17\ = CARRY(!\u_fir|taps_15__0_\ & !\u_fir|taps_15__1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__0_\,
	datab => \u_fir|taps_15__1_\,
	datad => VCC,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z17\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z16\ = CARRY(\u_fir|taps_15__2_\ # !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fir|taps_15__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z17\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z16\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z15\ = CARRY(\u_fir|taps_15__0_\ & (!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z16\ # !\u_fir|taps_15__3_\) # !\u_fir|taps_15__0_\ & !\u_fir|taps_15__3_\ & 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__0_\,
	datab => \u_fir|taps_15__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z16\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z15\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z14\ = CARRY(\u_fir|taps_15__4_\ & (!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z15\ # !\u_fir|taps_15__1_\) # !\u_fir|taps_15__4_\ & !\u_fir|taps_15__1_\ & 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__4_\,
	datab => \u_fir|taps_15__1_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z15\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z14\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\ = CARRY(\u_fir|taps_15__5_\ & \u_fir|taps_15__2_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z14\ # !\u_fir|taps_15__5_\ & (\u_fir|taps_15__2_\ # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__5_\,
	datab => \u_fir|taps_15__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z14\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z13\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_15__7_\ $ \u_fir|taps_15__4_\ $ \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z12\) # GND
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\ = CARRY(\u_fir|taps_15__7_\ & \u_fir|taps_15__4_\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z12\ # !\u_fir|taps_15__7_\ & (\u_fir|taps_15__4_\ # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__7_\,
	datab => \u_fir|taps_15__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z12\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z11\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_15__6_\ $ \u_fir|taps_15__9_\ $ \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z10\) # GND
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\ = CARRY(\u_fir|taps_15__6_\ & (!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z10\ # !\u_fir|taps_15__9_\) # !\u_fir|taps_15__6_\ & !\u_fir|taps_15__9_\ & 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_15__6_\,
	datab => \u_fir|taps_15__9_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z10\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z9\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|d_13_\ = !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z5\
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z4\ = CARRY(!\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z5\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_13_\,
	cout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z4\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\ & \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\ & 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx40964z1\ & (!\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx40964z1\,
	datab => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_15_filter_block_prod_mults28_0|d_11_\ $ \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx43955z1\ $ !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_15_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx43955z1\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_11_\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx43955z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_11_\,
	datab => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx43955z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_15_filter_block_prod_mults28_0|d_12_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\ & \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_12_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\ & 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_15_filter_block_prod_mults28_0|d_12_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_12_\ & (!\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_12_\,
	datab => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx44952z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_15_filter_block_prod_mults28_0|d_14_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\ & \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_14_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\ & 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_15_filter_block_prod_mults28_0|d_14_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_14_\ & (!\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_14_\,
	datab => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx46946z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_15_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__10_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__10_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__8_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__7_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__7_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__5_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__5_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__5_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__3_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__3_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__1_\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z13\ = CARRY(\u_fir|taps_16__0_\ & \u_fir|taps_16__1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__0_\,
	datab => \u_fir|taps_16__1_\,
	datad => VCC,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z13\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z12\ = CARRY(\u_fir|taps_16__2_\ & !\u_fir|taps_16__1_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z13\ # !\u_fir|taps_16__2_\ & 
-- (!\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z13\ # !\u_fir|taps_16__1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__2_\,
	datab => \u_fir|taps_16__1_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z13\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z12\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z11\ = CARRY(\u_fir|taps_16__2_\ & (\u_fir|taps_16__3_\ # !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z12\) # !\u_fir|taps_16__2_\ & \u_fir|taps_16__3_\ & 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__2_\,
	datab => \u_fir|taps_16__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z12\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z11\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z10\ = CARRY(\u_fir|taps_16__4_\ & !\u_fir|taps_16__3_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z11\ # !\u_fir|taps_16__4_\ & 
-- (!\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z11\ # !\u_fir|taps_16__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__4_\,
	datab => \u_fir|taps_16__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z11\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z10\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_16__4_\ $ \u_fir|taps_16__5_\ $ !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z10\) # GND
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\ = CARRY(\u_fir|taps_16__4_\ & (\u_fir|taps_16__5_\ # !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z10\) # !\u_fir|taps_16__4_\ & \u_fir|taps_16__5_\ & 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__4_\,
	datab => \u_fir|taps_16__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z10\,
	combout => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_16__6_\ & (\u_fir|taps_16__5_\ & \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\ & VCC # !\u_fir|taps_16__5_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\) # 
-- !\u_fir|taps_16__6_\ & (\u_fir|taps_16__5_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\ # !\u_fir|taps_16__5_\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\ # GND))
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z8\ = CARRY(\u_fir|taps_16__6_\ & !\u_fir|taps_16__5_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\ # !\u_fir|taps_16__6_\ & (!\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\ 
-- # !\u_fir|taps_16__5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__6_\,
	datab => \u_fir|taps_16__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z9\,
	combout => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z8\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_16__6_\ $ \u_fir|taps_16__7_\ $ !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z8\) # GND
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\ = CARRY(\u_fir|taps_16__6_\ & (\u_fir|taps_16__7_\ # !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z8\) # !\u_fir|taps_16__6_\ & \u_fir|taps_16__7_\ & 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__6_\,
	datab => \u_fir|taps_16__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z8\,
	combout => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z7\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_16__9_\ $ \u_fir|taps_16__8_\ $ !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z6\) # GND
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\ = CARRY(\u_fir|taps_16__9_\ & (\u_fir|taps_16__8_\ # !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z6\) # !\u_fir|taps_16__9_\ & \u_fir|taps_16__8_\ & 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__9_\,
	datab => \u_fir|taps_16__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z6\,
	combout => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|modgen_add_15_ix8231z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_16__9_\ & (\u_fir|taps_16__10_\ & \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\ & VCC # !\u_fir|taps_16__10_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\) # 
-- !\u_fir|taps_16__9_\ & (\u_fir|taps_16__10_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\ # !\u_fir|taps_16__10_\ & (\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\ # GND))
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z4\ = CARRY(\u_fir|taps_16__9_\ & !\u_fir|taps_16__10_\ & !\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\ # !\u_fir|taps_16__9_\ & (!\u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\ 
-- # !\u_fir|taps_16__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__9_\,
	datab => \u_fir|taps_16__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z5\,
	combout => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z4\);

\u_fir|tap_array_16_filter_block_prod_mults28_0|ix8231z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z1\ = \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z2\,
	combout => \u_fir|tap_array_16_filter_block_prod_mults28_0|nx8231z1\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_16_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\ & \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_7_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\ & 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_16_filter_block_prod_mults28_0|d_7_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_7_\ & (!\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_7_\,
	datab => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx40964z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_16_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\ & \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_11_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\ & 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_16_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_16_filter_block_prod_mults28_0|d_11_\ & (!\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_prod_mults28_0|d_11_\,
	datab => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx44952z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|taps_16__15_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\ & \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|taps_16__15_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\ & 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|taps_16__15_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|taps_16__15_\ & 
-- (!\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__15_\,
	datab => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx46946z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z19\);

\u_fir|tap_array_17_filter_block_reg_current_tap_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__10_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_10_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__15_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__15_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_15_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__8_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_8_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__6_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__6_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_6_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__4_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__4_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_4_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__2_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__2_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_2_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__1_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_1_\);

\u_fir|tap_array_13_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_12__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_13__0_\);

\u_fir|taps_14__0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|taps_14__0_~feeder_combout\ = \u_fir|taps_13__0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_fir|taps_13__0_\,
	combout => \u_fir|taps_14__0_~feeder_combout\);

\u_fir|tap_array_14_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \u_fir|taps_14__0_~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_14__0_\);

\u_fir|tap_array_15_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_14__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_15__0_\);

\u_fir|tap_array_16_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_15__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|taps_16__0_\);

\u_fir|tap_array_17_filter_block_reg_current_tap_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	sdata => \u_fir|taps_16__0_\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_fir|tap_array_17_filter_block_tap_next_0_\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z15\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_3_\ & \u_fir|tap_array_17_filter_block_tap_next_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_3_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_0_\,
	datad => VCC,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z15\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z14\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_4_\ & !\u_fir|tap_array_17_filter_block_tap_next_1_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z15\ # 
-- !\u_fir|tap_array_17_filter_block_tap_next_4_\ & (!\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z15\ # !\u_fir|tap_array_17_filter_block_tap_next_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_4_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_1_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z15\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z14\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_5_\ & (\u_fir|tap_array_17_filter_block_tap_next_2_\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z14\) # 
-- !\u_fir|tap_array_17_filter_block_tap_next_5_\ & \u_fir|tap_array_17_filter_block_tap_next_2_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_5_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_2_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z14\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_3_\ = \u_fir|tap_array_17_filter_block_tap_next_3_\ & (\u_fir|tap_array_17_filter_block_tap_next_6_\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\ & VCC # 
-- !\u_fir|tap_array_17_filter_block_tap_next_6_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\) # !\u_fir|tap_array_17_filter_block_tap_next_3_\ & (\u_fir|tap_array_17_filter_block_tap_next_6_\ & 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\ # !\u_fir|tap_array_17_filter_block_tap_next_6_\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\ # GND))
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z12\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_3_\ & !\u_fir|tap_array_17_filter_block_tap_next_6_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\ # 
-- !\u_fir|tap_array_17_filter_block_tap_next_3_\ & (!\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\ # !\u_fir|tap_array_17_filter_block_tap_next_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_3_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z13\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z12\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\ = (\u_fir|tap_array_17_filter_block_tap_next_7_\ $ \u_fir|tap_array_17_filter_block_tap_next_4_\ $ !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z12\) # GND
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_7_\ & (\u_fir|tap_array_17_filter_block_tap_next_4_\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z12\) # 
-- !\u_fir|tap_array_17_filter_block_tap_next_7_\ & \u_fir|tap_array_17_filter_block_tap_next_4_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_7_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_4_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z12\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_5_\ = \u_fir|tap_array_17_filter_block_tap_next_5_\ & (\u_fir|tap_array_17_filter_block_tap_next_8_\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\ & VCC # 
-- !\u_fir|tap_array_17_filter_block_tap_next_8_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\) # !\u_fir|tap_array_17_filter_block_tap_next_5_\ & (\u_fir|tap_array_17_filter_block_tap_next_8_\ & 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\ # !\u_fir|tap_array_17_filter_block_tap_next_8_\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\ # GND))
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z10\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_5_\ & !\u_fir|tap_array_17_filter_block_tap_next_8_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\ # 
-- !\u_fir|tap_array_17_filter_block_tap_next_5_\ & (!\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\ # !\u_fir|tap_array_17_filter_block_tap_next_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_5_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z11\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z10\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_7_\ = \u_fir|tap_array_17_filter_block_tap_next_7_\ & (\u_fir|tap_array_17_filter_block_tap_next_10_\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\ & VCC # 
-- !\u_fir|tap_array_17_filter_block_tap_next_10_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\) # !\u_fir|tap_array_17_filter_block_tap_next_7_\ & (\u_fir|tap_array_17_filter_block_tap_next_10_\ & 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\ # !\u_fir|tap_array_17_filter_block_tap_next_10_\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\ # GND))
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z8\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_7_\ & !\u_fir|tap_array_17_filter_block_tap_next_10_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\ # 
-- !\u_fir|tap_array_17_filter_block_tap_next_7_\ & (!\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\ # !\u_fir|tap_array_17_filter_block_tap_next_10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_7_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_10_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z9\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z8\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\ = (\u_fir|tap_array_17_filter_block_tap_next_15_\ $ \u_fir|tap_array_17_filter_block_tap_next_8_\ $ !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z8\) # GND
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_15_\ & (\u_fir|tap_array_17_filter_block_tap_next_8_\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z8\) # 
-- !\u_fir|tap_array_17_filter_block_tap_next_15_\ & \u_fir|tap_array_17_filter_block_tap_next_8_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_15_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z8\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_9_\ = \u_fir|tap_array_17_filter_block_tap_next_9_\ & (\u_fir|tap_array_17_filter_block_tap_next_15_\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\ & VCC # 
-- !\u_fir|tap_array_17_filter_block_tap_next_15_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\) # !\u_fir|tap_array_17_filter_block_tap_next_9_\ & (\u_fir|tap_array_17_filter_block_tap_next_15_\ & 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\ # !\u_fir|tap_array_17_filter_block_tap_next_15_\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\ # GND))
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z6\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_9_\ & !\u_fir|tap_array_17_filter_block_tap_next_15_\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\ # 
-- !\u_fir|tap_array_17_filter_block_tap_next_9_\ & (!\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\ # !\u_fir|tap_array_17_filter_block_tap_next_15_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_9_\,
	datab => \u_fir|tap_array_17_filter_block_tap_next_15_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z7\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z6\);

\u_fir|tap_array_17_filter_block_prod_mults28_0|ix12219z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|d_11_\ = (\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z5\) # GND
-- \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z4\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_15_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z5\,
	combout => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_11_\,
	cout => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z4\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|tap_array_17_filter_block_prod_mults28_0|d_5_\ $ !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_5_\ # !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_17_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\ & \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\ & 
-- !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_17_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_6_\ & (!\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_6_\,
	datab => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx40964z1\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx43955z1\ $ \u_fir|tap_array_17_filter_block_prod_mults28_0|d_9_\ $ !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx43955z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_9_\ # !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx43955z1\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|d_9_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx43955z1\,
	datab => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_9_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_17_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\ & \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\ & 
-- !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_17_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_10_\ & (!\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx44952z1\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx45949z1\ = (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx45949z1\ $ \u_fir|tap_array_17_filter_block_prod_mults28_0|d_11_\ $ !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z25\) # GND
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\ = CARRY(\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx45949z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_11_\ # !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z25\) # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx45949z1\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|d_11_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx45949z1\,
	datab => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_11_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z25\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx45949z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx46946z1\ = \u_fir|tap_array_17_filter_block_prod_mults28_0|d_12_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\ & \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\ & VCC # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\) # !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_12_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\ & 
-- !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\ & (\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\ # GND))
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z19\ = CARRY(\u_fir|tap_array_17_filter_block_prod_mults28_0|d_12_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\ # 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_12_\ & (!\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_12_\,
	datab => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx46946z1\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z22\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx46946z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z19\);

\sw_ibuf_16_\ : cycloneii_io
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
	padio => ww_sw(16),
	combout => \sw~combout\(16));

\reg_audio_out_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_9_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx46946z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_9_\);

ix50814z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx50814z1 = \bit_position_1_\ $ \bit_position_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bit_position_1_\,
	datad => \bit_position_0_\,
	combout => nx50814z1);

\modgen_counter_bit_position_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_bclk_dup0~clkctrl_outclk\,
	datain => nx50814z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bit_position_1_\);

\reg_audio_out_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_8_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx45949z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_8_\);

ix24999z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z7 = \bit_position_0_\ & (\bit_position_1_\ & \audio_out_8_\) # !\bit_position_0_\ & (\audio_out_9_\ # !\bit_position_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_0_\,
	datab => \audio_out_9_\,
	datac => \bit_position_1_\,
	datad => \audio_out_8_\,
	combout => nx24999z7);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx62798z1\ $ \u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ $ !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx62798z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ # !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx62798z1\ & \u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx62798z1\,
	datab => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\);

\reg_audio_out_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_10_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx62798z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_10_\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ & \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\ & VCC # 
-- !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ & 
-- !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ & (\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx63795z1\ & (!\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx63795z1\,
	datab => \u_fir|tap_array_17_filter_block_prod_mults28_0|d_13_\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z13\);

\reg_audio_out_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_11_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx63795z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_11_\);

ix24999z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z6 = \bit_position_1_\ & nx24999z7 # !\bit_position_1_\ & (nx24999z7 & (\audio_out_11_\) # !nx24999z7 & \audio_out_10_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_1_\,
	datab => nx24999z7,
	datac => \audio_out_10_\,
	datad => \audio_out_11_\,
	combout => nx24999z6);

\reg_audio_out_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_7_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx44952z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_7_\);

\reg_audio_out_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_6_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx43955z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_6_\);

ix24999z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z2 = nx24999z3 & (\audio_out_7_\ # \bit_position_1_\) # !nx24999z3 & (!\bit_position_1_\ & \audio_out_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx24999z3,
	datab => \audio_out_7_\,
	datac => \bit_position_1_\,
	datad => \audio_out_6_\,
	combout => nx24999z2);

\reg_audio_out_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_3_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx40964z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_3_\);

\reg_audio_out_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \raw_audio_2_\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx39967z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_2_\);

ix24999z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z4 = nx24999z5 & (\audio_out_3_\ # \bit_position_1_\) # !nx24999z5 & (!\bit_position_1_\ & \audio_out_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx24999z5,
	datab => \audio_out_3_\,
	datac => \bit_position_1_\,
	datad => \audio_out_2_\,
	combout => nx24999z4);

ix24999z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z1 = \bit_position_3_\ & (\bit_position_2_\ & (nx24999z4) # !\bit_position_2_\ & nx24999z2) # !\bit_position_3_\ & (!\bit_position_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_3_\,
	datab => nx24999z2,
	datac => nx24999z4,
	datad => \bit_position_2_\,
	combout => nx24999z1);

\audio_out_13_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_13_~feeder_combout\ = \raw_audio_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \raw_audio_11_\,
	combout => \audio_out_13_~feeder_combout\);

\u_fir|tap_array_15_filter_block_prod_mults28_0|ix15210z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ = \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z2\,
	combout => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|modgen_add_8_ix9228z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_9__9_\ & (\u_fir|taps_9__10_\ & \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\ & VCC # !\u_fir|taps_9__10_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\) # 
-- !\u_fir|taps_9__9_\ & (\u_fir|taps_9__10_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_9__10_\ & (\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\ # GND))
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z4\ = CARRY(\u_fir|taps_9__9_\ & !\u_fir|taps_9__10_\ & !\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_9__9_\ & (!\u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\ # 
-- !\u_fir|taps_9__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_9__9_\,
	datab => \u_fir|taps_9__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z5\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z4\);

\u_fir|tap_array_9_filter_block_prod_mults28_0|ix9228z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\ = \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z2\,
	combout => \u_fir|tap_array_9_filter_block_prod_mults28_0|nx9228z1\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_6__9_\ $ \u_fir|taps_6__8_\ $ !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z9\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\ = CARRY(\u_fir|taps_6__9_\ & (\u_fir|taps_6__8_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z9\) # !\u_fir|taps_6__9_\ & \u_fir|taps_6__8_\ & 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__9_\,
	datab => \u_fir|taps_6__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z9\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z8\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_4_ix10225z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10_\ = (\u_fir|taps_6__15_\ $ \u_fir|taps_6__10_\ $ !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z7\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z6\ = CARRY(\u_fir|taps_6__15_\ & (\u_fir|taps_6__10_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z7\) # !\u_fir|taps_6__15_\ & \u_fir|taps_6__10_\ & 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_6__15_\,
	datab => \u_fir|taps_6__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z7\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10_\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z6\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7__dup_189\ = \u_fir|tap_array_6_filter_block_prod_mults28_0|d_9_\ & (\u_fir|taps_6__7_\ & \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\ & VCC # !\u_fir|taps_6__7_\ & 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\) # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_9_\ & (\u_fir|taps_6__7_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\ # !\u_fir|taps_6__7_\ & 
-- (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\ # GND))
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z19\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_9_\ & !\u_fir|taps_6__7_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\ # 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_9_\ & (!\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\ # !\u_fir|taps_6__7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_9_\,
	datab => \u_fir|taps_6__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z20\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_7__dup_189\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z19\);

\u_fir|tap_array_6_filter_block_prod_mults28_0|modgen_add_5_ix10225z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\ = (\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z5\ $ \u_fir|taps_6__10_\ $ !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z17\) # GND
-- \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z4\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z5\ & (\u_fir|taps_6__10_\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z17\) # 
-- !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z5\ & \u_fir|taps_6__10_\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z5\,
	datab => \u_fir|taps_6__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z17\,
	combout => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\,
	cout => \u_fir|tap_array_6_filter_block_prod_mults28_0|nx10225z4\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z13\ = CARRY(\u_fir|taps_5__0_\ & \u_fir|taps_5__2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__0_\,
	datab => \u_fir|taps_5__2_\,
	datad => VCC,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z13\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z12\ = CARRY(\u_fir|taps_5__1_\ & !\u_fir|taps_5__3_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z13\ # !\u_fir|taps_5__1_\ & (!\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z13\ # 
-- !\u_fir|taps_5__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__1_\,
	datab => \u_fir|taps_5__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z13\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z12\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\ = CARRY(\u_fir|taps_5__2_\ & (\u_fir|taps_5__4_\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z12\) # !\u_fir|taps_5__2_\ & \u_fir|taps_5__4_\ & 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__2_\,
	datab => \u_fir|taps_5__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z12\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z11\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_5__6_\ $ \u_fir|taps_5__8_\ $ !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z8\) # GND
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\ = CARRY(\u_fir|taps_5__6_\ & (\u_fir|taps_5__8_\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z8\) # !\u_fir|taps_5__6_\ & \u_fir|taps_5__8_\ & 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__6_\,
	datab => \u_fir|taps_5__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z8\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\);

\u_fir|tap_array_5_filter_block_prod_mults28_0|modgen_add_3_ix9228z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_5__9_\ & (\u_fir|taps_5__7_\ & \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\ & VCC # !\u_fir|taps_5__7_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\) # 
-- !\u_fir|taps_5__9_\ & (\u_fir|taps_5__7_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_5__7_\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\ # GND))
-- \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z6\ = CARRY(\u_fir|taps_5__9_\ & !\u_fir|taps_5__7_\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_5__9_\ & (!\u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\ # 
-- !\u_fir|taps_5__7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_5__9_\,
	datab => \u_fir|taps_5__7_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z7\,
	combout => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_5_filter_block_prod_mults28_0|nx9228z6\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z13\ = CARRY(\u_fir|taps_2__1_\ & \u_fir|taps_2__0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__1_\,
	datab => \u_fir|taps_2__0_\,
	datad => VCC,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z13\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z12\ = CARRY(\u_fir|taps_2__1_\ & !\u_fir|taps_2__2_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z13\ # !\u_fir|taps_2__1_\ & (!\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z13\ # 
-- !\u_fir|taps_2__2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__1_\,
	datab => \u_fir|taps_2__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z13\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z12\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z11\ = CARRY(\u_fir|taps_2__3_\ & (\u_fir|taps_2__2_\ # !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z12\) # !\u_fir|taps_2__3_\ & \u_fir|taps_2__2_\ & 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__3_\,
	datab => \u_fir|taps_2__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z12\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z11\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z10\ = CARRY(\u_fir|taps_2__4_\ & !\u_fir|taps_2__3_\ & !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z11\ # !\u_fir|taps_2__4_\ & (!\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z11\ # 
-- !\u_fir|taps_2__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__4_\,
	datab => \u_fir|taps_2__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z11\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z10\);

\u_fir|tap_array_2_filter_block_prod_mults28_0|modgen_add_1_ix8231z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_2__9_\ $ \u_fir|taps_2__8_\ $ !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z6\) # GND
-- \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\ = CARRY(\u_fir|taps_2__9_\ & (\u_fir|taps_2__8_\ # !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z6\) # !\u_fir|taps_2__9_\ & \u_fir|taps_2__8_\ & 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_2__9_\,
	datab => \u_fir|taps_2__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z6\,
	combout => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_2_filter_block_prod_mults28_0|nx8231z5\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z15\ = CARRY(\u_fir|taps_1__3_\ & \u_fir|taps_1__0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__3_\,
	datab => \u_fir|taps_1__0_\,
	datad => VCC,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z15\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z14\ = CARRY(\u_fir|taps_1__1_\ & !\u_fir|taps_1__4_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z15\ # !\u_fir|taps_1__1_\ & (!\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z15\ 
-- # !\u_fir|taps_1__4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__1_\,
	datab => \u_fir|taps_1__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z15\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z14\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\ = CARRY(\u_fir|taps_1__5_\ & (\u_fir|taps_1__2_\ # !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z14\) # !\u_fir|taps_1__5_\ & \u_fir|taps_1__2_\ & 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__5_\,
	datab => \u_fir|taps_1__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z14\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_3_\ = \u_fir|taps_1__6_\ & (\u_fir|taps_1__3_\ & \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\ & VCC # !\u_fir|taps_1__3_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\) # 
-- !\u_fir|taps_1__6_\ & (\u_fir|taps_1__3_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\ # !\u_fir|taps_1__3_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\ # GND))
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z12\ = CARRY(\u_fir|taps_1__6_\ & !\u_fir|taps_1__3_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\ # !\u_fir|taps_1__6_\ & (!\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\ 
-- # !\u_fir|taps_1__3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__6_\,
	datab => \u_fir|taps_1__3_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z13\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_3_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z12\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\ = (\u_fir|taps_1__7_\ $ \u_fir|taps_1__4_\ $ !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z12\) # GND
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\ = CARRY(\u_fir|taps_1__7_\ & (\u_fir|taps_1__4_\ # !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z12\) # !\u_fir|taps_1__7_\ & \u_fir|taps_1__4_\ & 
-- !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__7_\,
	datab => \u_fir|taps_1__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z12\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_4_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\);

\u_fir|tap_array_1_filter_block_prod_mults28_0|ix12219z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_1__5_\ & (\u_fir|taps_1__8_\ & \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\ & VCC # !\u_fir|taps_1__8_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\) # 
-- !\u_fir|taps_1__5_\ & (\u_fir|taps_1__8_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\ # !\u_fir|taps_1__8_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\ # GND))
-- \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z10\ = CARRY(\u_fir|taps_1__5_\ & !\u_fir|taps_1__8_\ & !\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\ # !\u_fir|taps_1__5_\ & (!\u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\ 
-- # !\u_fir|taps_1__8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_1__5_\,
	datab => \u_fir|taps_1__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z11\,
	combout => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_1_filter_block_prod_mults28_0|nx12219z10\);

\u_fir|tap_array_2_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_2_filter_block_prod_mults28_0|d_6_\ $ \u_fir|tap_array_1_filter_block_prod_mults28_0|d_5_\ $ !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_2_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_1_filter_block_prod_mults28_0|d_5_\ # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_2_filter_block_prod_mults28_0|d_6_\ & \u_fir|tap_array_1_filter_block_prod_mults28_0|d_5_\ & !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_prod_mults28_0|d_6_\,
	datab => \u_fir|tap_array_1_filter_block_prod_mults28_0|d_5_\,
	datad => VCC,
	cin => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z17\ = CARRY(!\u_fir|taps_3__1_\ & !\u_fir|taps_3__0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__1_\,
	datab => \u_fir|taps_3__0_\,
	datad => VCC,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z17\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z16\ = CARRY(\u_fir|taps_3__2_\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__2_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z17\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z16\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z15\ = CARRY(\u_fir|taps_3__3_\ & \u_fir|taps_3__0_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z16\ # !\u_fir|taps_3__3_\ & (\u_fir|taps_3__0_\ # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__3_\,
	datab => \u_fir|taps_3__0_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z16\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z15\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z14\ = CARRY(\u_fir|taps_3__1_\ & \u_fir|taps_3__4_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z15\ # !\u_fir|taps_3__1_\ & (\u_fir|taps_3__4_\ # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__1_\,
	datab => \u_fir|taps_3__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z15\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z14\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\ = CARRY(\u_fir|taps_3__2_\ & (!\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z14\ # !\u_fir|taps_3__5_\) # !\u_fir|taps_3__2_\ & !\u_fir|taps_3__5_\ & 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__2_\,
	datab => \u_fir|taps_3__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z14\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_5_\ = \u_fir|taps_3__3_\ & (\u_fir|taps_3__6_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\ # !\u_fir|taps_3__6_\ & \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\ & VCC) # 
-- !\u_fir|taps_3__3_\ & (\u_fir|taps_3__6_\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\ # GND) # !\u_fir|taps_3__6_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\)
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z12\ = CARRY(\u_fir|taps_3__3_\ & \u_fir|taps_3__6_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\ # !\u_fir|taps_3__3_\ & (\u_fir|taps_3__6_\ # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__3_\,
	datab => \u_fir|taps_3__6_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z13\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_5_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z12\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\ = (\u_fir|taps_3__7_\ $ \u_fir|taps_3__4_\ $ \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z12\) # GND
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\ = CARRY(\u_fir|taps_3__7_\ & \u_fir|taps_3__4_\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z12\ # !\u_fir|taps_3__7_\ & (\u_fir|taps_3__4_\ # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__7_\,
	datab => \u_fir|taps_3__4_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z12\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_6_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z11\);

\u_fir|tap_array_3_filter_block_prod_mults28_0|ix15210z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_3__6_\ $ \u_fir|taps_3__9_\ $ \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z10\) # GND
-- \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\ = CARRY(\u_fir|taps_3__6_\ & (!\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z10\ # !\u_fir|taps_3__9_\) # !\u_fir|taps_3__6_\ & !\u_fir|taps_3__9_\ & 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_3__6_\,
	datab => \u_fir|taps_3__9_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z10\,
	combout => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_3_filter_block_prod_mults28_0|nx15210z9\);

\u_fir|tap_array_3_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\ & \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\ & 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_2_filter_block_next_sum_add16_0|nx40964z1\ & (!\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_2_filter_block_next_sum_add16_0|nx40964z1\,
	datab => \u_fir|tap_array_3_filter_block_prod_mults28_0|d_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_4_filter_block_next_sum_add16_0|ix2247z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx39967z1\ = (\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx39967z1\ $ \u_fir|taps_4__5_\ $ !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z43\) # GND
-- \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\ = CARRY(\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx39967z1\ & (\u_fir|taps_4__5_\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z43\) # 
-- !\u_fir|tap_array_3_filter_block_next_sum_add16_0|nx39967z1\ & \u_fir|taps_4__5_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_3_filter_block_next_sum_add16_0|nx39967z1\,
	datab => \u_fir|taps_4__5_\,
	datad => VCC,
	cin => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z43\,
	combout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx39967z1\,
	cout => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx2247z40\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\ = \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\ & VCC # 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\) # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx40964z1\ & (\u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\ & 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\ # GND))
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z37\ = CARRY(\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx40964z1\ & !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\ # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx40964z1\ & (!\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\ # !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx40964z1\,
	datab => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_6_\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z40\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx40964z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z37\);

\u_fir|tap_array_5_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_5_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_5_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_5_filter_block_prod_mults28_0|d_8_\ & (!\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_prod_mults28_0|d_8_\,
	datab => \u_fir|tap_array_4_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8__dup_188\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_8__dup_188\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_8__dup_188\ & !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\ 
-- # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_8__dup_188\ & (!\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_8__dup_188\,
	datab => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_9__dup_187\ $ \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx43955z1\ $ !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_6_filter_block_prod_mults28_0|d_9__dup_187\ & (\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx43955z1\ # !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z31\) 
-- # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_9__dup_187\ & \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx43955z1\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_9__dup_187\,
	datab => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx43955z1\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_6_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\ & VCC 
-- # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx44952z1\ & 
-- (\u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\ # 
-- GND))
-- \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\ & !\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\ 
-- # !\u_fir|tap_array_5_filter_block_next_sum_add16_0|nx44952z1\ & (!\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_5_filter_block_next_sum_add16_0|nx44952z1\,
	datab => \u_fir|tap_array_6_filter_block_prod_mults28_0|d_10__dup_186\,
	datad => VCC,
	cin => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_7_filter_block_next_sum_add16_0|ix2247z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx43955z1\ = (\u_fir|tap_array_7_filter_block_prod_mults28_0|d_9_\ $ \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx43955z1\ $ !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z31\) # GND
-- \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\ = CARRY(\u_fir|tap_array_7_filter_block_prod_mults28_0|d_9_\ & (\u_fir|tap_array_6_filter_block_next_sum_add16_0|nx43955z1\ # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z31\) # 
-- !\u_fir|tap_array_7_filter_block_prod_mults28_0|d_9_\ & \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx43955z1\ & !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_prod_mults28_0|d_9_\,
	datab => \u_fir|tap_array_6_filter_block_next_sum_add16_0|nx43955z1\,
	datad => VCC,
	cin => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z31\,
	combout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx43955z1\,
	cout => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx2247z28\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_7_\ = \u_fir|taps_8__7_\ & (\u_fir|taps_8__8_\ & \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\ & VCC # !\u_fir|taps_8__8_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\) # 
-- !\u_fir|taps_8__7_\ & (\u_fir|taps_8__8_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_8__8_\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\ # GND))
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z6\ = CARRY(\u_fir|taps_8__7_\ & !\u_fir|taps_8__8_\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\ # !\u_fir|taps_8__7_\ & (!\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\ # 
-- !\u_fir|taps_8__8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__7_\,
	datab => \u_fir|taps_8__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z7\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_7_\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z6\);

\u_fir|tap_array_8_filter_block_prod_mults28_0|modgen_add_7_ix9228z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\ = (\u_fir|taps_8__9_\ $ \u_fir|taps_8__8_\ $ !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z6\) # GND
-- \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\ = CARRY(\u_fir|taps_8__9_\ & (\u_fir|taps_8__8_\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z6\) # !\u_fir|taps_8__9_\ & \u_fir|taps_8__8_\ & 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_8__9_\,
	datab => \u_fir|taps_8__8_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z6\,
	combout => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\,
	cout => \u_fir|tap_array_8_filter_block_prod_mults28_0|nx9228z5\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\ & \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\ & 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx42958z1\ & (!\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx42958z1\,
	datab => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_8_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_8_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\ & \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\ & 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_7_filter_block_next_sum_add16_0|nx44952z1\ & (!\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_7_filter_block_next_sum_add16_0|nx44952z1\,
	datab => \u_fir|tap_array_8_filter_block_prod_mults28_0|d_10_\,
	datad => VCC,
	cin => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\ = \u_fir|tap_array_9_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\ & \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\ & VCC # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\) # !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_8_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\ & 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\ # GND))
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z31\ = CARRY(\u_fir|tap_array_9_filter_block_prod_mults28_0|d_8_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\ # 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_8_\ & (!\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_8_\,
	datab => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx42958z1\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z34\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx42958z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z31\);

\u_fir|tap_array_9_filter_block_next_sum_add16_0|ix2247z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\ = \u_fir|tap_array_9_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\ & \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\ & VCC # 
-- !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\) # !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_10_\ & (\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\ & 
-- !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\ & (\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\ # GND))
-- \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z25\ = CARRY(\u_fir|tap_array_9_filter_block_prod_mults28_0|d_10_\ & !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\ & !\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\ # 
-- !\u_fir|tap_array_9_filter_block_prod_mults28_0|d_10_\ & (!\u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\ # !\u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_9_filter_block_prod_mults28_0|d_10_\,
	datab => \u_fir|tap_array_8_filter_block_next_sum_add16_0|nx44952z1\,
	datad => VCC,
	cin => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z28\,
	combout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx44952z1\,
	cout => \u_fir|tap_array_9_filter_block_next_sum_add16_0|nx2247z25\);

\u_fir|tap_array_10_filter_block_prod_mults28_0|modgen_add_9_ix9228z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|d_9_\ = \u_fir|taps_10__9_\ & (\u_fir|taps_10__10_\ & \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\ & VCC # !\u_fir|taps_10__10_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\) # 
-- !\u_fir|taps_10__9_\ & (\u_fir|taps_10__10_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_10__10_\ & (\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\ # GND))
-- \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z4\ = CARRY(\u_fir|taps_10__9_\ & !\u_fir|taps_10__10_\ & !\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\ # !\u_fir|taps_10__9_\ & (!\u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\ 
-- # !\u_fir|taps_10__10_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_10__9_\,
	datab => \u_fir|taps_10__10_\,
	datad => VCC,
	cin => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z5\,
	combout => \u_fir|tap_array_10_filter_block_prod_mults28_0|d_9_\,
	cout => \u_fir|tap_array_10_filter_block_prod_mults28_0|nx9228z4\);

\u_fir|tap_array_13_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|taps_13__15_\ $ \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx62798z1\ $ !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|taps_13__15_\ & (\u_fir|tap_array_12_filter_block_next_sum_add16_0|nx62798z1\ # !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z19\) # !\u_fir|taps_13__15_\ & 
-- \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx62798z1\ & !\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_13__15_\,
	datab => \u_fir|tap_array_12_filter_block_next_sum_add16_0|nx62798z1\,
	datad => VCC,
	cin => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_14_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|taps_14__15_\ $ \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx62798z1\ $ !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|taps_14__15_\ & (\u_fir|tap_array_13_filter_block_next_sum_add16_0|nx62798z1\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z19\) # !\u_fir|taps_14__15_\ & 
-- \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx62798z1\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_14__15_\,
	datab => \u_fir|tap_array_13_filter_block_next_sum_add16_0|nx62798z1\,
	datad => VCC,
	cin => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx62798z1\ = (\u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\ $ \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx62798z1\ $ !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z19\) # GND
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\ = CARRY(\u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx62798z1\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z19\) # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\ & \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx62798z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\,
	datab => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx62798z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z19\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx62798z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\ = \u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\ & \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\ & VCC # 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\) # !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\ & (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\ & 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\ # GND))
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z13\ = CARRY(\u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\ & !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\ # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\ & (!\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\ # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_15_filter_block_prod_mults28_0|d_15_\,
	datab => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx63795z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z16\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx63795z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z13\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx64792z1\ $ \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ $ !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z13\) # 
-- GND
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx64792z1\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z13\) # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx64792z1\ & \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx64792z1\,
	datab => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_15_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ & \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\ & VCC # 
-- !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ & 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_14_filter_block_next_sum_add16_0|nx253z1\ & (!\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_14_filter_block_next_sum_add16_0|nx253z1\,
	datab => \u_fir|tap_array_15_filter_block_prod_mults28_0|nx15210z1\,
	datad => VCC,
	cin => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|taps_16__15_\ $ \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx64792z1\ $ !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z13\) # GND
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|taps_16__15_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx64792z1\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z13\) # !\u_fir|taps_16__15_\ & 
-- \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx64792z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__15_\,
	datab => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx64792z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_16_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|taps_16__15_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\ & \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\ & VCC # 
-- !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|taps_16__15_\ & (\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\ & 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|taps_16__15_\ & !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|taps_16__15_\ & 
-- (!\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|taps_16__15_\,
	datab => \u_fir|tap_array_15_filter_block_next_sum_add16_0|nx253z1\,
	datad => VCC,
	cin => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx2247z7\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx64792z1\ = (\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z1\ $ \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx64792z1\ $ !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z13\) # 
-- GND
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\ = CARRY(\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z1\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx64792z1\ # 
-- !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z13\) # !\u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z1\ & \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx64792z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_prod_mults28_0|nx12219z1\,
	datab => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx64792z1\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z13\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx64792z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\);

\u_fir|tap_array_17_filter_block_next_sum_add16_0|ix2247z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx253z1\ = \u_fir|tap_array_17_filter_block_tap_next_15_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\ & \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\ & VCC # 
-- !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\) # !\u_fir|tap_array_17_filter_block_tap_next_15_\ & (\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\ & 
-- !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\ & (\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\ # GND))
-- \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z7\ = CARRY(\u_fir|tap_array_17_filter_block_tap_next_15_\ & !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\ & !\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\ # 
-- !\u_fir|tap_array_17_filter_block_tap_next_15_\ & (!\u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\ # !\u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fir|tap_array_17_filter_block_tap_next_15_\,
	datab => \u_fir|tap_array_16_filter_block_next_sum_add16_0|nx253z1\,
	datad => VCC,
	cin => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z10\,
	combout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx253z1\,
	cout => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx2247z7\);

\reg_audio_out_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_13_~feeder_combout\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx253z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_13_\);

\audio_out_12_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_12_~feeder_combout\ = \raw_audio_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \raw_audio_11_\,
	combout => \audio_out_12_~feeder_combout\);

\reg_audio_out_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_12_~feeder_combout\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx64792z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_12_\);

ix24999z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z9 = \bit_position_0_\ & (\bit_position_1_\ & \audio_out_12_\) # !\bit_position_0_\ & (\audio_out_13_\ # !\bit_position_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_0_\,
	datab => \audio_out_13_\,
	datac => \bit_position_1_\,
	datad => \audio_out_12_\,
	combout => nx24999z9);

\audio_out_14_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \audio_out_14_~feeder_combout\ = \raw_audio_11_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \raw_audio_11_\,
	combout => \audio_out_14_~feeder_combout\);

\reg_audio_out_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \aud_adclrck_dup0~clkctrl_outclk\,
	datain => \audio_out_14_~feeder_combout\,
	sdata => \u_fir|tap_array_17_filter_block_next_sum_add16_0|nx1250z1\,
	sload => \sw~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \audio_out_14_\);

ix24999z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx24999z8 = nx24999z9 & (\audio_out_15_\ # \bit_position_1_\) # !nx24999z9 & (!\bit_position_1_\ & \audio_out_14_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio_out_15_\,
	datab => nx24999z9,
	datac => \bit_position_1_\,
	datad => \audio_out_14_\,
	combout => nx24999z8);

ix24999z52923 : cycloneii_lcell_comb
-- Equation(s):
-- aud_dacdat_dup0 = \bit_position_3_\ & (nx24999z1) # !\bit_position_3_\ & (nx24999z1 & (nx24999z8) # !nx24999z1 & nx24999z6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit_position_3_\,
	datab => nx24999z6,
	datac => nx24999z1,
	datad => nx24999z8,
	combout => aud_dacdat_dup0);

\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ $ VCC
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\ = CARRY(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => VCC,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & 
-- (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\ # GND)
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ = CARRY(!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx51271z1\ = \u_i2c_av_config|modgen_counter_cont|q_0_\ $ VCC
-- \u_i2c_av_config|modgen_counter_cont|nx22081z16\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_0_\,
	datad => VCC,
	combout => \u_i2c_av_config|modgen_counter_cont|nx51271z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z16\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx17096z1\ = \u_i2c_av_config|modgen_counter_cont|q_10_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z7\ $ GND) # !\u_i2c_av_config|modgen_counter_cont|q_10_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z7\ & VCC
-- \u_i2c_av_config|modgen_counter_cont|nx22081z6\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_10_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_10_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z7\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx17096z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z6\);

\u_i2c_av_config|modgen_counter_cont|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx17096z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_10_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx59247z1\ = \u_i2c_av_config|modgen_counter_cont|q_8_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z9\ $ GND) # !\u_i2c_av_config|modgen_counter_cont|q_8_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z9\ & VCC
-- \u_i2c_av_config|modgen_counter_cont|nx22081z8\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_8_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_8_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z9\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx59247z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z8\);

\u_i2c_av_config|modgen_counter_cont|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx59247z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_8_\);

\u_i2c_av_config|ix35560z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z3\ = \u_i2c_av_config|modgen_counter_cont|q_11_\ & \u_i2c_av_config|modgen_counter_cont|q_9_\ & \u_i2c_av_config|modgen_counter_cont|q_10_\ & \u_i2c_av_config|modgen_counter_cont|q_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_11_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_9_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_10_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_8_\,
	combout => \u_i2c_av_config|nx35560z3\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx54262z1\ = \u_i2c_av_config|modgen_counter_cont|q_3_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z14\ # !\u_i2c_av_config|modgen_counter_cont|q_3_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z14\ # GND)
-- \u_i2c_av_config|modgen_counter_cont|nx22081z13\ = CARRY(!\u_i2c_av_config|modgen_counter_cont|nx22081z14\ # !\u_i2c_av_config|modgen_counter_cont|q_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_3_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z14\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx54262z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z13\);

\u_i2c_av_config|modgen_counter_cont|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx54262z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_3_\);

\u_i2c_av_config|ix17807z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx17807z2\ = \u_i2c_av_config|modgen_counter_cont|q_0_\ & \u_i2c_av_config|modgen_counter_cont|q_3_\ & \u_i2c_av_config|modgen_counter_cont|q_2_\ & \u_i2c_av_config|modgen_counter_cont|q_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_0_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_3_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_2_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_1_\,
	combout => \u_i2c_av_config|nx17807z2\);

\u_i2c_av_config|ix35560z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z1\ = !\u_i2c_av_config|nx17807z2\ # !\u_i2c_av_config|nx35560z3\ # !\u_i2c_av_config|nx35560z4\ # !\u_i2c_av_config|nx35560z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|nx35560z2\,
	datab => \u_i2c_av_config|nx35560z4\,
	datac => \u_i2c_av_config|nx35560z3\,
	datad => \u_i2c_av_config|nx17807z2\,
	combout => \u_i2c_av_config|nx35560z1\);

\u_i2c_av_config|modgen_counter_cont|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx51271z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_0_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx52268z1\ = \u_i2c_av_config|modgen_counter_cont|q_1_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z16\ # !\u_i2c_av_config|modgen_counter_cont|q_1_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z16\ # GND)
-- \u_i2c_av_config|modgen_counter_cont|nx22081z15\ = CARRY(!\u_i2c_av_config|modgen_counter_cont|nx22081z16\ # !\u_i2c_av_config|modgen_counter_cont|q_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_1_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z16\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx52268z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z15\);

\u_i2c_av_config|modgen_counter_cont|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx52268z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_1_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx53265z1\ = \u_i2c_av_config|modgen_counter_cont|q_2_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z15\ $ GND) # !\u_i2c_av_config|modgen_counter_cont|q_2_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z15\ & VCC
-- \u_i2c_av_config|modgen_counter_cont|nx22081z14\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_2_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_2_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z15\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx53265z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z14\);

\u_i2c_av_config|modgen_counter_cont|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx53265z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_2_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx55259z1\ = \u_i2c_av_config|modgen_counter_cont|q_4_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z13\ $ GND) # !\u_i2c_av_config|modgen_counter_cont|q_4_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z13\ & VCC
-- \u_i2c_av_config|modgen_counter_cont|nx22081z12\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_4_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_4_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z13\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx55259z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z12\);

\u_i2c_av_config|modgen_counter_cont|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx55259z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_4_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx58250z1\ = \u_i2c_av_config|modgen_counter_cont|q_7_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z10\ # !\u_i2c_av_config|modgen_counter_cont|q_7_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z10\ # GND)
-- \u_i2c_av_config|modgen_counter_cont|nx22081z9\ = CARRY(!\u_i2c_av_config|modgen_counter_cont|nx22081z10\ # !\u_i2c_av_config|modgen_counter_cont|q_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_7_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z10\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx58250z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z9\);

\u_i2c_av_config|modgen_counter_cont|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx58250z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_7_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx60244z1\ = \u_i2c_av_config|modgen_counter_cont|q_9_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z8\ # !\u_i2c_av_config|modgen_counter_cont|q_9_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z8\ # GND)
-- \u_i2c_av_config|modgen_counter_cont|nx22081z7\ = CARRY(!\u_i2c_av_config|modgen_counter_cont|nx22081z8\ # !\u_i2c_av_config|modgen_counter_cont|q_9_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_9_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z8\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx60244z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z7\);

\u_i2c_av_config|modgen_counter_cont|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx60244z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_9_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx18093z1\ = \u_i2c_av_config|modgen_counter_cont|q_11_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z6\ # !\u_i2c_av_config|modgen_counter_cont|q_11_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z6\ # GND)
-- \u_i2c_av_config|modgen_counter_cont|nx22081z5\ = CARRY(!\u_i2c_av_config|modgen_counter_cont|nx22081z6\ # !\u_i2c_av_config|modgen_counter_cont|q_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_11_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z6\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx18093z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z5\);

\u_i2c_av_config|modgen_counter_cont|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx18093z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_11_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx19090z1\ = \u_i2c_av_config|modgen_counter_cont|q_12_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z5\ $ GND) # !\u_i2c_av_config|modgen_counter_cont|q_12_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z5\ & VCC
-- \u_i2c_av_config|modgen_counter_cont|nx22081z4\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_12_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_12_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z5\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx19090z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z4\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx20087z1\ = \u_i2c_av_config|modgen_counter_cont|q_13_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z4\ # !\u_i2c_av_config|modgen_counter_cont|q_13_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z4\ # GND)
-- \u_i2c_av_config|modgen_counter_cont|nx22081z3\ = CARRY(!\u_i2c_av_config|modgen_counter_cont|nx22081z4\ # !\u_i2c_av_config|modgen_counter_cont|q_13_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_13_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z4\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx20087z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z3\);

\u_i2c_av_config|modgen_counter_cont|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx20087z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_13_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx21084z1\ = \u_i2c_av_config|modgen_counter_cont|q_14_\ & (\u_i2c_av_config|modgen_counter_cont|nx22081z3\ $ GND) # !\u_i2c_av_config|modgen_counter_cont|q_14_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z3\ & VCC
-- \u_i2c_av_config|modgen_counter_cont|nx22081z2\ = CARRY(\u_i2c_av_config|modgen_counter_cont|q_14_\ & !\u_i2c_av_config|modgen_counter_cont|nx22081z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_cont|q_14_\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z3\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx21084z1\,
	cout => \u_i2c_av_config|modgen_counter_cont|nx22081z2\);

\u_i2c_av_config|modgen_counter_cont|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx21084z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_14_\);

\u_i2c_av_config|modgen_counter_cont|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_cont|nx22081z1\ = \u_i2c_av_config|modgen_counter_cont|nx22081z2\ $ \u_i2c_av_config|modgen_counter_cont|q_15_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|modgen_counter_cont|q_15_\,
	cin => \u_i2c_av_config|modgen_counter_cont|nx22081z2\,
	combout => \u_i2c_av_config|modgen_counter_cont|nx22081z1\);

\u_i2c_av_config|modgen_counter_cont|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx22081z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_15_\);

\u_i2c_av_config|modgen_counter_cont|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_cont|nx19090z1\,
	ena => \u_i2c_av_config|nx35560z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_cont|q_12_\);

\u_i2c_av_config|ix35560z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx35560z4\ = \u_i2c_av_config|modgen_counter_cont|q_14_\ & \u_i2c_av_config|modgen_counter_cont|q_13_\ & \u_i2c_av_config|modgen_counter_cont|q_15_\ & \u_i2c_av_config|modgen_counter_cont|q_12_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_cont|q_14_\,
	datab => \u_i2c_av_config|modgen_counter_cont|q_13_\,
	datac => \u_i2c_av_config|modgen_counter_cont|q_15_\,
	datad => \u_i2c_av_config|modgen_counter_cont|q_12_\,
	combout => \u_i2c_av_config|nx35560z4\);

\u_i2c_av_config|ix17807z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx17807z1\ = \u_i2c_av_config|nx35560z2\ & \u_i2c_av_config|nx35560z4\ & \u_i2c_av_config|nx35560z3\ & \u_i2c_av_config|nx17807z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|nx35560z2\,
	datab => \u_i2c_av_config|nx35560z4\,
	datac => \u_i2c_av_config|nx35560z3\,
	datad => \u_i2c_av_config|nx17807z2\,
	combout => \u_i2c_av_config|nx17807z1\);

\u_i2c_av_config|reg_reset_n\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|nx17807z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|reset_n\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\ $ VCC
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\ = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\,
	datad => VCC,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24\);

\u_i2c_av_config|ix23875z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx23875z1\ = \u_i2c_av_config|nx2692z2\ # !\u_i2c_av_config|reset_n\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|reset_n\,
	datad => \u_i2c_av_config|nx2692z2\,
	combout => \u_i2c_av_config|nx23875z1\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ $ GND) # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ & 
-- !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\ & VCC
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\ = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ & 
-- (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\ # GND)
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\ = CARRY(!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ & 
-- (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\ # GND)
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\ = CARRY(!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\ & 
-- (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\ # GND)
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ = CARRY(!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ $ GND) # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & 
-- !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\ & VCC
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\ = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ & 
-- (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\ # GND)
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ = CARRY(!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\ # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ $ GND) # !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ & 
-- !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\ & VCC
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\ = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\ & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\,
	datad => VCC,
	cin => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6\,
	combout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\,
	cout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\);

\u_i2c_av_config|ix2692z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z4\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\ & \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\ & \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & 
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13\,
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9\,
	datac => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11\,
	combout => \u_i2c_av_config|nx2692z4\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\);

\u_i2c_av_config|ix2692z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z3\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\ # \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\ # \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\ # 
-- \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17\,
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19\,
	datac => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21\,
	combout => \u_i2c_av_config|nx2692z3\);

\u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1\,
	sclr => \u_i2c_av_config|nx23875z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\);

\u_i2c_av_config|ix2692z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z5\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\ & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\ # \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7\,
	datac => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3\,
	datad => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5\,
	combout => \u_i2c_av_config|nx2692z5\);

\u_i2c_av_config|ix2692z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z2\ = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\ # \u_i2c_av_config|nx2692z5\ # \u_i2c_av_config|nx2692z4\ & \u_i2c_av_config|nx2692z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1\,
	datab => \u_i2c_av_config|nx2692z4\,
	datac => \u_i2c_av_config|nx2692z3\,
	datad => \u_i2c_av_config|nx2692z5\,
	combout => \u_i2c_av_config|nx2692z2\);

\u_i2c_av_config|ix2692z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx2692z1\ = \u_i2c_av_config|m_i2c_ctrl_clk\ $ \u_i2c_av_config|nx2692z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|nx2692z2\,
	combout => \u_i2c_av_config|nx2692z1\);

\u_i2c_av_config|reg_m_i2c_ctrl_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|nx2692z1\,
	sclr => \u_i2c_av_config|ALT_INV_reset_n\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|m_i2c_ctrl_clk\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ $ GND) # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & 
-- !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ & VCC
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\ = CARRY(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\ $ \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\);

\u_i2c_av_config|u0|ix7286z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx7286z1\ = \u_i2c_av_config|u0|nx7286z2\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx7286z2\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	combout => \u_i2c_av_config|u0|nx7286z1\);

\u_i2c_av_config|ix51161z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|nx51161z1\ = \u_i2c_av_config|reset_n\ & (\u_i2c_av_config|m_i2c_ctrl_clk\ $ \u_i2c_av_config|nx2692z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datac => \u_i2c_av_config|reset_n\,
	datad => \u_i2c_av_config|nx2692z2\,
	combout => \u_i2c_av_config|nx51161z1\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|ix55259z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\ = !\u_i2c_av_config|m_i2c_ctrl_clk\ & \u_i2c_av_config|nx51161z1\ & (\u_i2c_av_config|u0|nx7286z1\ # !\u_i2c_av_config|reset_n\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|reset_n\,
	datab => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datac => \u_i2c_av_config|u0|nx7286z1\,
	datad => \u_i2c_av_config|nx51161z1\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ $ GND) # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & 
-- !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\ & VCC
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\ = CARRY(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & 
-- (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\ # GND)
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\ = CARRY(!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6\,
	combout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\,
	cout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\);

\u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1\,
	sdata => VCC,
	sload => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\);

\u_i2c_av_config|u0|ix43379z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx43379z2\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ # 
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx43379z2\);

\u_i2c_av_config|u0|ix43379z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx43379z4\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx43379z4\);

\u_i2c_av_config|u0|ix43379z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx43379z3\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ # !\u_i2c_av_config|u0|nx43379z4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|nx43379z4\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx43379z3\);

\u_i2c_av_config|u0|ix44942z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z1\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	combout => \u_i2c_av_config|u0|nx44942z1\);

\u_i2c_av_config|u0|ix44942z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z7\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	combout => \u_i2c_av_config|u0|nx44942z7\);

\u_i2c_av_config|u0|ix44942z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z6\ = !\u_i2c_av_config|u0|nx44942z8\ & !\u_i2c_av_config|u0|nx44942z7\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ # !\u_i2c_av_config|reset_n\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx44942z8\,
	datab => \u_i2c_av_config|u0|nx44942z7\,
	datac => \u_i2c_av_config|reset_n\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	combout => \u_i2c_av_config|u0|nx44942z6\);

\u_i2c_av_config|u0|ix44942z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z5\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ # \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|nx44942z5\);

\u_i2c_av_config|u0|ix44942z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z3\ = \u_i2c_av_config|u0|nx44942z6\ # !\u_i2c_av_config|u0|nx44942z4\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\ & !\u_i2c_av_config|u0|nx44942z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx44942z4\,
	datab => \u_i2c_av_config|u0|nx44942z6\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11\,
	datad => \u_i2c_av_config|u0|nx44942z5\,
	combout => \u_i2c_av_config|u0|nx44942z3\);

\u_i2c_av_config|u0|ix44942z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z2\ = \u_i2c_av_config|u0|nx44942z3\ & \u_i2c_av_config|nx51161z1\ & !\u_i2c_av_config|m_i2c_ctrl_clk\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_i2c_av_config|u0|nx44942z3\,
	datac => \u_i2c_av_config|nx51161z1\,
	datad => \u_i2c_av_config|m_i2c_ctrl_clk\,
	combout => \u_i2c_av_config|u0|nx44942z2\);

\u_i2c_av_config|u0|reg_sclk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|nx44942z1\,
	sclr => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|nx44942z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|nx43379z1\);

\u_i2c_av_config|u0|ix43379z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|p_i2c_sclk\ = !\u_i2c_av_config|m_i2c_ctrl_clk\ & (\u_i2c_av_config|u0|nx43379z2\ # \u_i2c_av_config|u0|nx43379z3\) # !\u_i2c_av_config|u0|nx43379z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx43379z2\,
	datab => \u_i2c_av_config|u0|nx43379z3\,
	datac => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datad => \u_i2c_av_config|u0|nx43379z1\,
	combout => \u_i2c_av_config|u0|p_i2c_sclk\);

\clock_27~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clock_27~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_27~clkctrl_outclk\);

\u_i2c_av_config|u0|ix22137z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_5n5s2f1_1_\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ # 
-- !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	combout => \u_i2c_av_config|u0|sdo_5n5s2f1_1_\);

\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ # !\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & 
-- (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ # GND)) # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ & VCC # !\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & 
-- !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\)
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\ = CARRY(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\ # !\u_i2c_av_config|u0|sdo_5n5s2f1_1_\) # 
-- !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ & !\u_i2c_av_config|u0|sdo_5n5s2f1_1_\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datab => \u_i2c_av_config|u0|sdo_5n5s2f1_1_\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\);

\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ = (\u_i2c_av_config|u0|nx22137z1\ $ \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ $ \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\) # GND
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\ = CARRY(\u_i2c_av_config|u0|nx22137z1\ & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\ # !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\) # !\u_i2c_av_config|u0|nx22137z1\ & 
-- !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx22137z1\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => VCC,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	cout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5\);

\u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ = \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\ $ !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	cin => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3\,
	combout => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\);

\u_i2c_av_config|u0|ix41315z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z18\ = \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	datad => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	combout => \u_i2c_av_config|u0|nx41315z18\);

\u_i2c_av_config|u0|ix41315z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z9\ = \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\ & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\ # !\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1\,
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1\,
	datac => \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1\,
	datad => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	combout => \u_i2c_av_config|u0|nx41315z9\);

\u_i2c_av_config|u0|ix44942z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx44942z4\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ # \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx44942z4\);

\u_i2c_av_config|u0|ix41315z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z5\ = \u_i2c_av_config|u0|nx44942z4\ # \u_i2c_av_config|u0|nx43379z4\ # \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\ & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datab => \u_i2c_av_config|u0|nx44942z4\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datad => \u_i2c_av_config|u0|nx43379z4\,
	combout => \u_i2c_av_config|u0|nx41315z5\);

\u_i2c_av_config|u0|ix41315z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z6\ = !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\ # \u_i2c_av_config|u0|nx44942z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9\,
	datab => \u_i2c_av_config|u0|nx44942z5\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	combout => \u_i2c_av_config|u0|nx41315z6\);

\u_i2c_av_config|u0|ix22137z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx22137z1\ = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\ # \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\ & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\ # 
-- \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3\,
	datab => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5\,
	datac => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7\,
	datad => \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1\,
	combout => \u_i2c_av_config|u0|nx22137z1\);

\u_i2c_av_config|u0|ix41315z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z3\ = \u_i2c_av_config|u0|nx41315z6\ # \u_i2c_av_config|u0|nx22137z1\ & !\u_i2c_av_config|u0|nx41315z4\ # !\u_i2c_av_config|u0|nx22137z1\ & (\u_i2c_av_config|u0|nx41315z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z4\,
	datab => \u_i2c_av_config|u0|nx41315z5\,
	datac => \u_i2c_av_config|u0|nx41315z6\,
	datad => \u_i2c_av_config|u0|nx22137z1\,
	combout => \u_i2c_av_config|u0|nx41315z3\);

\u_i2c_av_config|u0|ix41315z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z8\ = !\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ & \u_i2c_av_config|u0|nx41315z9\ & \u_i2c_av_config|u0|nx41315z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\,
	datab => \u_i2c_av_config|u0|nx41315z9\,
	datac => \u_i2c_av_config|u0|nx41315z3\,
	combout => \u_i2c_av_config|u0|nx41315z8\);

\u_i2c_av_config|u0|ix41315z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z2\ = !\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\ & \u_i2c_av_config|u0|nx41315z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1\,
	datac => \u_i2c_av_config|u0|nx41315z3\,
	combout => \u_i2c_av_config|u0|nx41315z2\);

\u_i2c_av_config|u0|ix41315z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z7\ = \u_i2c_av_config|u0|nx41315z8\ # \u_i2c_av_config|u0|nx41315z10\ & \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\ & \u_i2c_av_config|u0|nx41315z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z10\,
	datab => \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1\,
	datac => \u_i2c_av_config|u0|nx41315z8\,
	datad => \u_i2c_av_config|u0|nx41315z2\,
	combout => \u_i2c_av_config|u0|nx41315z7\);

\u_i2c_av_config|u0|ix41315z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z1\ = !\u_i2c_av_config|u0|nx41315z11\ & !\u_i2c_av_config|u0|nx41315z7\ & (!\u_i2c_av_config|u0|nx41315z2\ # !\u_i2c_av_config|u0|nx41315z18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z11\,
	datab => \u_i2c_av_config|u0|nx41315z18\,
	datac => \u_i2c_av_config|u0|nx41315z7\,
	datad => \u_i2c_av_config|u0|nx41315z2\,
	combout => \u_i2c_av_config|u0|nx41315z1\);

\u_i2c_av_config|u0|ix41315z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_i2c_av_config|u0|nx41315z19\ = \u_i2c_av_config|u0|nx41315z20\ & !\u_i2c_av_config|m_i2c_ctrl_clk\ & \u_i2c_av_config|nx51161z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_i2c_av_config|u0|nx41315z20\,
	datab => \u_i2c_av_config|m_i2c_ctrl_clk\,
	datac => \u_i2c_av_config|nx51161z1\,
	combout => \u_i2c_av_config|u0|nx41315z19\);

\u_i2c_av_config|u0|reg_sdo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock_27~clkctrl_outclk\,
	datain => \u_i2c_av_config|u0|nx41315z1\,
	sclr => \u_i2c_av_config|ALT_INV_reset_n\,
	ena => \u_i2c_av_config|u0|nx41315z19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_i2c_av_config|u0|nx51857z1\);

ix30102z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30102z1 = !\u_audio_dac_bck_div_2_\ & \key~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_audio_dac_bck_div_2_\,
	datad => \key~combout\(0),
	combout => nx30102z1);

ix30102z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx30102z2 = \u_audio_dac_bck_div_1_\ & (\u_audio_dac_bck_div_0_\ # \u_audio_dac_bck_div_2_\) # !\u_audio_dac_bck_div_1_\ & \u_audio_dac_bck_div_0_\ & \u_audio_dac_bck_div_2_\ # !\key~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \u_audio_dac_bck_div_1_\,
	datac => \u_audio_dac_bck_div_0_\,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx30102z2);

\u_audio_dac_modgen_counter_bck_div_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx30102z1,
	ena => nx30102z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_bck_div_2_\);

ix32096z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx32096z1 = \key~combout\(0) & !\u_audio_dac_bck_div_0_\ & (!\u_audio_dac_bck_div_2_\ # !\u_audio_dac_bck_div_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \u_audio_dac_bck_div_1_\,
	datac => \u_audio_dac_bck_div_0_\,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx32096z1);

\u_audio_dac_modgen_counter_bck_div_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx32096z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_bck_div_0_\);

ix31099z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx31099z1 = \key~combout\(0) & !\u_audio_dac_bck_div_1_\ & (!\u_audio_dac_bck_div_2_\ # !\u_audio_dac_bck_div_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \u_audio_dac_bck_div_0_\,
	datac => \u_audio_dac_bck_div_1_\,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx31099z1);

ix31099z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx31099z2 = \u_audio_dac_bck_div_0_\ # \u_audio_dac_bck_div_1_\ & \u_audio_dac_bck_div_2_\ # !\key~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key~combout\(0),
	datab => \u_audio_dac_bck_div_1_\,
	datac => \u_audio_dac_bck_div_0_\,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx31099z2);

\u_audio_dac_modgen_counter_bck_div_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx31099z1,
	ena => nx31099z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_audio_dac_bck_div_1_\);

ix15494z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx15494z1 = aud_bclk_dup0 $ (\u_audio_dac_bck_div_2_\ & (\u_audio_dac_bck_div_0_\ # \u_audio_dac_bck_div_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_audio_dac_bck_div_0_\,
	datab => \u_audio_dac_bck_div_1_\,
	datac => aud_bclk_dup0,
	datad => \u_audio_dac_bck_div_2_\,
	combout => nx15494z1);

u_audio_dac_reg_aud_bck : cycloneii_lcell_ff
PORT MAP (
	clk => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	datain => nx15494z1,
	sclr => \ALT_INV_key~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => aud_bclk_dup0);

\ledg_triBus1_0_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(0));

\ledg_triBus1_1_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(1));

\ledg_triBus1_2_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(2));

\ledg_triBus1_3_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(3));

\ledg_triBus1_4_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(4));

\ledg_triBus1_5_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(5));

\ledg_triBus1_6_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(6));

\ledg_triBus1_7_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(7));

\ledg_triBus1_8_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledg(8));

\ledr_triBus2_0_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(0));

\ledr_triBus2_1_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(1));

\ledr_triBus2_2_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(2));

\ledr_triBus2_3_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(3));

\ledr_triBus2_4_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(4));

\ledr_triBus2_5_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(5));

\ledr_triBus2_6_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(6));

\ledr_triBus2_7_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(7));

\ledr_triBus2_8_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(8));

\ledr_triBus2_9_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(9));

\ledr_triBus2_10_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(10));

\ledr_triBus2_11_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(11));

\ledr_triBus2_12_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(12));

\ledr_triBus2_13_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(13));

\ledr_triBus2_14_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(14));

\ledr_triBus2_15_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(15));

\ledr_triBus2_16_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(16));

\ledr_triBus2_17_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_ledr(17));

\hex0_triBus3_0_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(0));

\hex0_triBus3_1_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(1));

\hex0_triBus3_2_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(2));

\hex0_triBus3_3_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(3));

\hex0_triBus3_4_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(4));

\hex0_triBus3_5_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(5));

\hex0_triBus3_6_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex0(6));

\hex1_triBus4_0_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(0));

\hex1_triBus4_1_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(1));

\hex1_triBus4_2_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(2));

\hex1_triBus4_3_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(3));

\hex1_triBus4_4_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(4));

\hex1_triBus4_5_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(5));

\hex1_triBus4_6_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex1(6));

\hex2_triBus5_0_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(0));

\hex2_triBus5_1_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(1));

\hex2_triBus5_2_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(2));

\hex2_triBus5_3_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(3));

\hex2_triBus5_4_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(4));

\hex2_triBus5_5_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(5));

\hex2_triBus5_6_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex2(6));

\hex3_triBus6_0_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(0));

\hex3_triBus6_1_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(1));

\hex3_triBus6_2_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(2));

\hex3_triBus6_3_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(3));

\hex3_triBus6_4_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(4));

\hex3_triBus6_5_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(5));

\hex3_triBus6_6_\ : cycloneii_io
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
	datain => GND,
	oe => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_hex3(6));

\hex4_obuf_0_\ : cycloneii_io
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
	datain => \hex4_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(0));

\hex4_obuf_1_\ : cycloneii_io
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
	datain => \hex4_dup0_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(1));

\hex4_obuf_2_\ : cycloneii_io
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
	datain => \hex4_dup0_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(2));

\hex4_obuf_3_\ : cycloneii_io
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
	datain => \hex4_dup0_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(3));

\hex4_obuf_4_\ : cycloneii_io
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
	datain => \hex4_dup0_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(4));

\hex4_obuf_5_\ : cycloneii_io
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
	datain => \hex4_dup0_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(5));

\hex4_obuf_6_\ : cycloneii_io
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
	datain => \hex4_dup0_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));

\hex5_obuf_0_\ : cycloneii_io
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
	datain => \hex5_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(0));

\hex5_obuf_1_\ : cycloneii_io
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
	datain => \hex5_dup0_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(1));

\hex5_obuf_2_\ : cycloneii_io
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
	datain => \hex5_dup0_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(2));

\hex5_obuf_3_\ : cycloneii_io
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
	datain => \hex5_dup0_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(3));

\hex5_obuf_4_\ : cycloneii_io
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
	datain => \hex5_dup0_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(4));

\hex5_obuf_5_\ : cycloneii_io
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
	datain => \hex5_dup0_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(5));

\hex5_obuf_6_\ : cycloneii_io
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
	datain => \hex5_dup0_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex5(6));

\hex6_obuf_0_\ : cycloneii_io
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
	datain => \hex6_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(0));

\hex6_obuf_1_\ : cycloneii_io
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
	datain => \hex6_dup0_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(1));

\hex6_obuf_2_\ : cycloneii_io
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
	datain => \hex6_dup0_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(2));

\hex6_obuf_3_\ : cycloneii_io
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
	datain => \hex6_dup0_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(3));

\hex6_obuf_4_\ : cycloneii_io
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
	datain => \hex6_dup0_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(4));

\hex6_obuf_5_\ : cycloneii_io
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
	datain => \hex6_dup0_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(5));

\hex6_obuf_6_\ : cycloneii_io
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
	datain => \hex6_dup0_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex6(6));

\hex7_obuf_0_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(0));

\hex7_obuf_1_\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(1));

\hex7_obuf_2_\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(2));

\hex7_obuf_3_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(3));

\hex7_obuf_4_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(4));

\hex7_obuf_5_\ : cycloneii_io
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
	datain => \hex7_dup0_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(5));

\hex7_obuf_6_\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex7(6));

aud_xck_obuf : cycloneii_io
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
	datain => \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_xck);

aud_dacdat_obuf : cycloneii_io
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
	datain => aud_dacdat_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_dacdat);

aud_daclrck_obuf : cycloneii_io
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
	datain => aud_adclrck_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_daclrck);

aud_adclrck_obuf : cycloneii_io
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
	datain => aud_adclrck_dup0,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_aud_adclrck);

i2c_sclk_obuf : cycloneii_io
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
	datain => \u_i2c_av_config|u0|p_i2c_sclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_i2c_sclk);

u_i2c_av_config_u0_ix31977z43919 : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u_i2c_av_config|u0|ALT_INV_nx51857z1\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => i2c_sdat);

\aud_bclk~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => aud_bclk_dup0,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => aud_bclk);

\clock_50~I\ : cycloneii_io
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
	padio => ww_clock_50);

\key[1]~I\ : cycloneii_io
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
	padio => ww_key(1));

\key[2]~I\ : cycloneii_io
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
	padio => ww_key(2));

\key[3]~I\ : cycloneii_io
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
	padio => ww_key(3));

\sw[7]~I\ : cycloneii_io
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
	padio => ww_sw(7));

\sw[8]~I\ : cycloneii_io
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
	padio => ww_sw(8));

\sw[9]~I\ : cycloneii_io
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
	padio => ww_sw(9));

\sw[10]~I\ : cycloneii_io
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
	padio => ww_sw(10));

\sw[11]~I\ : cycloneii_io
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
	padio => ww_sw(11));

\sw[12]~I\ : cycloneii_io
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
	padio => ww_sw(12));

\sw[13]~I\ : cycloneii_io
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
	padio => ww_sw(13));

\sw[14]~I\ : cycloneii_io
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
	padio => ww_sw(14));

\sw[15]~I\ : cycloneii_io
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
	padio => ww_sw(15));
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
entity fir_top is
  port (
      clock_50  : in STD_LOGIC
    ; clock_27  : in STD_LOGIC
    ; key  : in std_logic_vector (3 downto 0)
    ; sw  : in std_logic_vector (17 downto 0)
    ; ledg  : out std_logic_vector (8 downto 0)
    ; ledr  : out std_logic_vector (17 downto 0)
    ; hex0  : out std_logic_vector (6 downto 0)
    ; hex1  : out std_logic_vector (6 downto 0)
    ; hex2  : out std_logic_vector (6 downto 0)
    ; hex3  : out std_logic_vector (6 downto 0)
    ; hex4  : out std_logic_vector (6 downto 0)
    ; hex5  : out std_logic_vector (6 downto 0)
    ; hex6  : out std_logic_vector (6 downto 0)
    ; hex7  : out std_logic_vector (6 downto 0)
    ; aud_xck  : out STD_LOGIC
    ; aud_bclk  : inout STD_LOGIC
    ; aud_dacdat  : out STD_LOGIC
    ; aud_daclrck  : out STD_LOGIC
    ; aud_adclrck  : out STD_LOGIC
    ; i2c_sdat  : inout STD_LOGIC
    ; i2c_sclk  : out STD_LOGIC
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of fir_top is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.fir_top_chip
    port map (
        clock_50 => clock_50
      , clock_27 => clock_27
      , key(3) => key(3)
      , key(2) => key(2)
      , key(1) => key(1)
      , key(0) => key(0)
      , sw(17) => sw(17)
      , sw(16) => sw(16)
      , sw(15) => sw(15)
      , sw(14) => sw(14)
      , sw(13) => sw(13)
      , sw(12) => sw(12)
      , sw(11) => sw(11)
      , sw(10) => sw(10)
      , sw(9) => sw(9)
      , sw(8) => sw(8)
      , sw(7) => sw(7)
      , sw(6) => sw(6)
      , sw(5) => sw(5)
      , sw(4) => sw(4)
      , sw(3) => sw(3)
      , sw(2) => sw(2)
      , sw(1) => sw(1)
      , sw(0) => sw(0)
      , ledg(8) => ledg(8)
      , ledg(7) => ledg(7)
      , ledg(6) => ledg(6)
      , ledg(5) => ledg(5)
      , ledg(4) => ledg(4)
      , ledg(3) => ledg(3)
      , ledg(2) => ledg(2)
      , ledg(1) => ledg(1)
      , ledg(0) => ledg(0)
      , ledr(17) => ledr(17)
      , ledr(16) => ledr(16)
      , ledr(15) => ledr(15)
      , ledr(14) => ledr(14)
      , ledr(13) => ledr(13)
      , ledr(12) => ledr(12)
      , ledr(11) => ledr(11)
      , ledr(10) => ledr(10)
      , ledr(9) => ledr(9)
      , ledr(8) => ledr(8)
      , ledr(7) => ledr(7)
      , ledr(6) => ledr(6)
      , ledr(5) => ledr(5)
      , ledr(4) => ledr(4)
      , ledr(3) => ledr(3)
      , ledr(2) => ledr(2)
      , ledr(1) => ledr(1)
      , ledr(0) => ledr(0)
      , hex0(6) => hex0(6)
      , hex0(5) => hex0(5)
      , hex0(4) => hex0(4)
      , hex0(3) => hex0(3)
      , hex0(2) => hex0(2)
      , hex0(1) => hex0(1)
      , hex0(0) => hex0(0)
      , hex1(6) => hex1(6)
      , hex1(5) => hex1(5)
      , hex1(4) => hex1(4)
      , hex1(3) => hex1(3)
      , hex1(2) => hex1(2)
      , hex1(1) => hex1(1)
      , hex1(0) => hex1(0)
      , hex2(6) => hex2(6)
      , hex2(5) => hex2(5)
      , hex2(4) => hex2(4)
      , hex2(3) => hex2(3)
      , hex2(2) => hex2(2)
      , hex2(1) => hex2(1)
      , hex2(0) => hex2(0)
      , hex3(6) => hex3(6)
      , hex3(5) => hex3(5)
      , hex3(4) => hex3(4)
      , hex3(3) => hex3(3)
      , hex3(2) => hex3(2)
      , hex3(1) => hex3(1)
      , hex3(0) => hex3(0)
      , hex4(6) => hex4(6)
      , hex4(5) => hex4(5)
      , hex4(4) => hex4(4)
      , hex4(3) => hex4(3)
      , hex4(2) => hex4(2)
      , hex4(1) => hex4(1)
      , hex4(0) => hex4(0)
      , hex5(6) => hex5(6)
      , hex5(5) => hex5(5)
      , hex5(4) => hex5(4)
      , hex5(3) => hex5(3)
      , hex5(2) => hex5(2)
      , hex5(1) => hex5(1)
      , hex5(0) => hex5(0)
      , hex6(6) => hex6(6)
      , hex6(5) => hex6(5)
      , hex6(4) => hex6(4)
      , hex6(3) => hex6(3)
      , hex6(2) => hex6(2)
      , hex6(1) => hex6(1)
      , hex6(0) => hex6(0)
      , hex7(6) => hex7(6)
      , hex7(5) => hex7(5)
      , hex7(4) => hex7(4)
      , hex7(3) => hex7(3)
      , hex7(2) => hex7(2)
      , hex7(1) => hex7(1)
      , hex7(0) => hex7(0)
      , aud_xck => aud_xck
      , aud_bclk => aud_bclk
      , aud_dacdat => aud_dacdat
      , aud_daclrck => aud_daclrck
      , aud_adclrck => aud_adclrck
      , i2c_sdat => i2c_sdat
      , i2c_sclk => i2c_sclk
    );
end architecture;

