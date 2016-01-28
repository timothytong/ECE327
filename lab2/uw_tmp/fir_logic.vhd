
-- 
-- Definition of  fir
-- 
--      Sat Jan 23 21:26:50 2016
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_4 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_4 ;

architecture IMPLEMENTATION of mult_32_4 is 
   signal a_20_EXMPLR47, a_19_EXMPLR48, a_18_EXMPLR49, a_17_EXMPLR50, 
      a_16_EXMPLR51, a_15_EXMPLR52, a_14_EXMPLR53, a_13_EXMPLR54, 
      a_12_EXMPLR55, a_11_EXMPLR56, a_10_EXMPLR57, a_9_EXMPLR58, 
      a_8_EXMPLR59, a_7_EXMPLR60, a_6_EXMPLR61, b_10_EXMPLR62, b_9_EXMPLR63, 
      b_8_EXMPLR64, b_7_EXMPLR65, b_6_EXMPLR66, b_5_EXMPLR67, b_4_EXMPLR68, 
      b_3_EXMPLR69, b_2_EXMPLR70, b_1_EXMPLR71, b_0_EXMPLR72, a_21_EXMPLR88, 
      b_11_EXMPLR89, nx15210z2, nx15210z27, nx15210z26, nx15210z25, 
      nx15210z24, nx15210z23, nx15210z22, nx15210z20, nx15210z18, nx15210z16, 
      nx15210z14, nx15210z12, nx15210z10, nx15210z8, nx15210z6, nx15210z51, 
      nx15210z50, nx15210z49, nx15210z48, nx15210z47, nx15210z46, nx15210z45, 
      nx15210z44, nx15210z43, nx15210z42, nx15210z41, nx15210z40, nx15210z39, 
      nx15210z38, nx15210z62, nx15210z61, nx15210z60, nx15210z59, nx15210z58, 
      nx15210z57, nx15210z56, nx15210z55, nx15210z54, nx15210z53, nx15210z52, 
      nx15210z36, nx15210z35, nx15210z34, nx15210z33, nx15210z32, nx15210z31, 
      nx15210z30, nx15210z29, nx15210z28, nx15210z4, nx15210z37, nx15210z3, 
      nx_mult_32_4_vcc_net: std_logic ;

begin
   modgen_add_2_ix15210z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(26), cout=>nx15210z2, dataa=>a(31), datab=>
      nx15210z3, datad=>nx_mult_32_4_vcc_net, cin=>a_21_EXMPLR88);
   nx_mult_32_4_vcc_net <= '1';
   modgen_add_2_ix15210z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(25), cout=>nx15210z4, dataa=>a(31), datab=>
      a_20_EXMPLR47, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z28);
   modgen_add_2_ix15210z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(24), cout=>nx15210z28, dataa=>a(31), datab=>
      a_19_EXMPLR48, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z29);
   modgen_add_2_ix15210z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(23), cout=>nx15210z29, dataa=>a(31), datab=>
      a_18_EXMPLR49, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z30);
   modgen_add_2_ix15210z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(22), cout=>nx15210z30, dataa=>a(31), datab=>
      a_17_EXMPLR50, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z31);
   modgen_add_2_ix15210z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), cout=>nx15210z31, dataa=>a(31), datab=>
      a_16_EXMPLR51, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z32);
   modgen_add_2_ix15210z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx15210z32, dataa=>a(31), datab=>
      a_15_EXMPLR52, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z33);
   modgen_add_2_ix15210z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx15210z33, dataa=>a(31), datab=>
      a_14_EXMPLR53, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z34);
   modgen_add_2_ix15210z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx15210z34, dataa=>a(31), datab=>
      a_13_EXMPLR54, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z35);
   modgen_add_2_ix15210z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx15210z35, dataa=>a(31), datab=>
      a_12_EXMPLR55, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z36);
   modgen_add_2_ix15210z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx15210z36, dataa=>nx15210z37, datab
      =>a_11_EXMPLR56, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z52);
   modgen_add_2_ix15210z52968 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx15210z52, dataa=>b_10_EXMPLR62, 
      datab=>a_10_EXMPLR57, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z53);
   modgen_add_2_ix15210z52969 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx15210z53, dataa=>b_9_EXMPLR63, 
      datab=>a_9_EXMPLR58, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z54);
   modgen_add_2_ix15210z52970 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx15210z54, dataa=>b_8_EXMPLR64, 
      datab=>a_8_EXMPLR59, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z55);
   modgen_add_2_ix15210z52971 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx15210z55, dataa=>b_7_EXMPLR65, 
      datab=>a_7_EXMPLR60, datad=>nx_mult_32_4_vcc_net, cin=>nx15210z56);
   modgen_add_2_ix15210z52972 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z56, dataa=>b_6_EXMPLR66, datab=>a_6_EXMPLR61, 
      datad=>nx_mult_32_4_vcc_net, cin=>nx15210z57);
   modgen_add_2_ix15210z52974 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z57, dataa=>b_5_EXMPLR67, datab=>a(5), datad
      =>nx_mult_32_4_vcc_net, cin=>nx15210z58);
   modgen_add_2_ix15210z52975 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z58, dataa=>b_4_EXMPLR68, datab=>a(4), datad
      =>nx_mult_32_4_vcc_net, cin=>nx15210z59);
   modgen_add_2_ix15210z52976 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z59, dataa=>b_3_EXMPLR69, datab=>a(3), datad
      =>nx_mult_32_4_vcc_net, cin=>nx15210z60);
   modgen_add_2_ix15210z52977 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z60, dataa=>b_2_EXMPLR70, datab=>a(2), datad
      =>nx_mult_32_4_vcc_net, cin=>nx15210z61);
   modgen_add_2_ix15210z52978 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z61, dataa=>b_1_EXMPLR71, datab=>a(1), datad
      =>nx_mult_32_4_vcc_net, cin=>nx15210z62);
   modgen_add_2_ix15210z52979 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx15210z62, dataa=>a(0), datab=>b_0_EXMPLR72, datad
      =>nx_mult_32_4_vcc_net);
   modgen_add_1_ix15210z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_10_EXMPLR62, cout=>b_11_EXMPLR89, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z38);
   modgen_add_1_ix15210z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_9_EXMPLR63, cout=>nx15210z38, dataa=>a(14), 
      datab=>a(13), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z39);
   modgen_add_1_ix15210z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_8_EXMPLR64, cout=>nx15210z39, dataa=>a(13), 
      datab=>a(12), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z40);
   modgen_add_1_ix15210z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_7_EXMPLR65, cout=>nx15210z40, dataa=>a(12), 
      datab=>a(11), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z41);
   modgen_add_1_ix15210z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_6_EXMPLR66, cout=>nx15210z41, dataa=>a(11), 
      datab=>a(10), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z42);
   modgen_add_1_ix15210z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_5_EXMPLR67, cout=>nx15210z42, dataa=>a(10), 
      datab=>a(9), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z43);
   modgen_add_1_ix15210z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_4_EXMPLR68, cout=>nx15210z43, dataa=>a(9), 
      datab=>a(8), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z44);
   modgen_add_1_ix15210z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_3_EXMPLR69, cout=>nx15210z44, dataa=>a(8), 
      datab=>a(7), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z45);
   modgen_add_1_ix15210z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_2_EXMPLR70, cout=>nx15210z45, dataa=>a(7), 
      datab=>a(6), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z46);
   modgen_add_1_ix15210z52962 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_1_EXMPLR71, cout=>nx15210z46, dataa=>a(6), 
      datab=>a(5), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z47);
   modgen_add_1_ix15210z52963 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>b_0_EXMPLR72, cout=>nx15210z47, dataa=>a(5), 
      datab=>a(4), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z48);
   modgen_add_1_ix15210z52964 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z48, dataa=>a(4), datab=>a(3), datad=>
      nx_mult_32_4_vcc_net, cin=>nx15210z49);
   modgen_add_1_ix15210z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z49, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_4_vcc_net, cin=>nx15210z50);
   modgen_add_1_ix15210z52966 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z50, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_4_vcc_net, cin=>nx15210z51);
   modgen_add_1_ix15210z52967 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx15210z51, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_4_vcc_net);
   modgen_add_0_ix15210z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_20_EXMPLR47, cout=>a_21_EXMPLR88, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z6);
   modgen_add_0_ix15210z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_19_EXMPLR48, cout=>nx15210z6, dataa=>a(31), 
      datab=>a(13), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z8);
   modgen_add_0_ix15210z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_18_EXMPLR49, cout=>nx15210z8, dataa=>a(31), 
      datab=>a(12), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z10);
   modgen_add_0_ix15210z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_17_EXMPLR50, cout=>nx15210z10, dataa=>a(31), 
      datab=>a(11), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z12);
   modgen_add_0_ix15210z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_16_EXMPLR51, cout=>nx15210z12, dataa=>a(31), 
      datab=>a(10), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z14);
   modgen_add_0_ix15210z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_15_EXMPLR52, cout=>nx15210z14, dataa=>a(31), 
      datab=>a(9), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z16);
   modgen_add_0_ix15210z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_14_EXMPLR53, cout=>nx15210z16, dataa=>a(14), 
      datab=>a(8), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z18);
   modgen_add_0_ix15210z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_13_EXMPLR54, cout=>nx15210z18, dataa=>a(13), 
      datab=>a(7), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z20);
   modgen_add_0_ix15210z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_12_EXMPLR55, cout=>nx15210z20, dataa=>a(12), 
      datab=>a(6), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z22);
   modgen_add_0_ix15210z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_11_EXMPLR56, cout=>nx15210z22, dataa=>a(11), 
      datab=>a(5), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z23);
   modgen_add_0_ix15210z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_10_EXMPLR57, cout=>nx15210z23, dataa=>a(10), 
      datab=>a(4), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z24);
   modgen_add_0_ix15210z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_9_EXMPLR58, cout=>nx15210z24, dataa=>a(9), 
      datab=>a(3), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z25);
   modgen_add_0_ix15210z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_8_EXMPLR59, cout=>nx15210z25, dataa=>a(8), 
      datab=>a(2), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z26);
   modgen_add_0_ix15210z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>a_7_EXMPLR60, cout=>nx15210z26, dataa=>a(7), 
      datab=>a(1), datad=>nx_mult_32_4_vcc_net, cin=>nx15210z27);
   modgen_add_0_ix15210z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx15210z27, dataa=>a(0), datab=>a(6), datad=>
      nx_mult_32_4_vcc_net);
   modgen_add_0_ix15210z52973 : cycloneii_lcell_comb
      generic map (lut_mask => X"0ff0") 
       port map ( combout=>a_6_EXMPLR61, datac=>a(6), datad=>a(0));
   ix15210z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(27), datad=>nx_mult_32_4_vcc_net, cin=>
      nx15210z2);
   ix15210z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx15210z3, datad=>nx_mult_32_4_vcc_net, cin=>
      nx15210z4);
   ix15210z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx15210z37, datad=>nx_mult_32_4_vcc_net, cin=>
      b_11_EXMPLR89);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_0 ;

architecture IMPLEMENTATION of add_16_0 is 
   signal nx2247z45, nx2247z42, nx2247z39, nx2247z36, nx2247z33, nx2247z30, 
      nx2247z27, nx2247z24, nx2247z21, nx2247z18, nx2247z15, nx2247z12, 
      nx2247z9, nx2247z6, nx2247z4, nx_add_16_0_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z15, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_0_vcc_net, cin=>nx2247z18);
   nx_add_16_0_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z18, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z21);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z21, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z24);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z24, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z27);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z27, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z30);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z30, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z33);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z33, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z36);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z36, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z39);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z39, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z42);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z42, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z45);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z45, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_0_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_0_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(15), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z9);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z9, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z12);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z12, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_0_vcc_net, cin=>nx2247z15);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_1 ;

architecture IMPLEMENTATION of add_16_1 is 
   signal nx2247z44, nx2247z41, nx2247z38, nx2247z35, nx2247z32, nx2247z29, 
      nx2247z26, nx2247z23, nx2247z20, nx2247z17, nx2247z14, nx2247z11, 
      nx2247z8, nx2247z6, nx2247z4, nx_add_16_1_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z14, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_1_vcc_net, cin=>nx2247z17);
   nx_add_16_1_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z17, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z20);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z20, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z23);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z23, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z26);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z26, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z29);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z29, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z32);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z32, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z35);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z35, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z38);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z38, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z41);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z41, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z44);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z44, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_1_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_1_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(14), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(15), datab=>a(13), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z8);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z8, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z11);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z11, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_1_vcc_net, cin=>nx2247z14);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_15_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (14 DOWNTO 0) ;
      b : IN std_logic_vector (14 DOWNTO 0) ;
      d : OUT std_logic_vector (14 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_15_2 ;

architecture IMPLEMENTATION of add_15_2 is 
   signal nx1250z41, nx1250z38, nx1250z35, nx1250z32, nx1250z29, nx1250z26, 
      nx1250z23, nx1250z20, nx1250z17, nx1250z14, nx1250z11, nx1250z8, 
      nx1250z5, nx1250z4, nx_add_15_2_vcc_net: std_logic ;

begin
   ix1250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx1250z8, dataa=>b(11), datab=>a(11), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z11);
   nx_add_15_2_vcc_net <= '1';
   ix1250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx1250z11, dataa=>b(10), datab=>
      a(10), datad=>nx_add_15_2_vcc_net, cin=>nx1250z14);
   ix1250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx1250z14, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z17);
   ix1250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx1250z17, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z20);
   ix1250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx1250z20, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z23);
   ix1250z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx1250z23, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z26);
   ix1250z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx1250z26, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z29);
   ix1250z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx1250z29, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z32);
   ix1250z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx1250z32, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z35);
   ix1250z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx1250z35, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z38);
   ix1250z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx1250z38, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z41);
   ix1250z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx1250z41, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_15_2_vcc_net);
   ix1250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), dataa=>b(14), datab=>a(14), datad=>
      nx_add_15_2_vcc_net, cin=>nx1250z4);
   ix1250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx1250z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z5);
   ix1250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx1250z5, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_15_2_vcc_net, cin=>nx1250z8);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity fir is 
   port (
      clk : IN std_logic ;
      i_data : IN std_logic_vector (15 DOWNTO 0) ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end fir ;

architecture avg of fir is 
   component mult_32_4
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_15_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (14 DOWNTO 0) ;
         b : IN std_logic_vector (14 DOWNTO 0) ;
         d : OUT std_logic_vector (14 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal clk_EXMPLR103: std_logic ;
   
   signal i_data_EXMPLR136: std_logic_vector (15 DOWNTO 0) ;
   
   signal o_data_dup0: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap1_15, tap1_14, tap1_13, tap1_12, tap1_11, tap1_10, tap1_9, 
      tap1_8, tap1_7, tap1_6, tap1_5, tap1_4, tap1_3, tap1_2, tap2_15, 
      tap2_14, tap2_13, tap2_12, tap2_11, tap2_10, tap2_9, tap2_8, tap2_7, 
      tap2_6, tap2_5, tap2_4, tap2_3, tap2_2: std_logic ;
   
   signal tap3: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap4_15, tap4_14, tap4_13, tap4_12, tap4_11, tap4_10, tap4_9, 
      tap4_8, tap4_7, tap4_6, tap4_5, tap4_4, tap4_3, tap4_2: std_logic ;
   
   signal prod3: std_logic_vector (15 DOWNTO 0) ;
   
   signal sum2: std_logic_vector (14 DOWNTO 0) ;
   
   signal sum3: std_logic_vector (15 DOWNTO 0) ;
   
   signal nx14782z1, nx59173z1, nx13785z1, nx60170z1, clk_int: std_logic ;
   
   signal o_data_EXMPLR137: std_logic_vector (15 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (74 downto 0 );

begin
   clk_EXMPLR103 <= clk ;
   i_data_EXMPLR136(15) <= i_data(15) ;
   i_data_EXMPLR136(14) <= i_data(14) ;
   i_data_EXMPLR136(13) <= i_data(13) ;
   i_data_EXMPLR136(12) <= i_data(12) ;
   i_data_EXMPLR136(11) <= i_data(11) ;
   i_data_EXMPLR136(10) <= i_data(10) ;
   i_data_EXMPLR136(9) <= i_data(9) ;
   i_data_EXMPLR136(8) <= i_data(8) ;
   i_data_EXMPLR136(7) <= i_data(7) ;
   i_data_EXMPLR136(6) <= i_data(6) ;
   i_data_EXMPLR136(5) <= i_data(5) ;
   i_data_EXMPLR136(4) <= i_data(4) ;
   i_data_EXMPLR136(3) <= i_data(3) ;
   i_data_EXMPLR136(2) <= i_data(2) ;
   i_data_EXMPLR136(1) <= i_data(1) ;
   i_data_EXMPLR136(0) <= i_data(0) ;
   o_data(15) <= o_data_EXMPLR137(15) ;
   o_data(14) <= o_data_EXMPLR137(14) ;
   o_data(13) <= o_data_EXMPLR137(13) ;
   o_data(12) <= o_data_EXMPLR137(12) ;
   o_data(11) <= o_data_EXMPLR137(11) ;
   o_data(10) <= o_data_EXMPLR137(10) ;
   o_data(9) <= o_data_EXMPLR137(9) ;
   o_data(8) <= o_data_EXMPLR137(8) ;
   o_data(7) <= o_data_EXMPLR137(7) ;
   o_data(6) <= o_data_EXMPLR137(6) ;
   o_data(5) <= o_data_EXMPLR137(5) ;
   o_data(4) <= o_data_EXMPLR137(4) ;
   o_data(3) <= o_data_EXMPLR137(3) ;
   o_data(2) <= o_data_EXMPLR137(2) ;
   o_data(1) <= o_data_EXMPLR137(1) ;
   o_data(0) <= o_data_EXMPLR137(0) ;
   prod3_mults28_0 : mult_32_4 port map ( a(31)=>tap3(15), a(30)=>DANGLING(0
      ), a(29)=>DANGLING(1), a(28)=>DANGLING(2), a(27)=>DANGLING(3), a(26)=>
      DANGLING(4), a(25)=>DANGLING(5), a(24)=>DANGLING(6), a(23)=>DANGLING(7
      ), a(22)=>DANGLING(8), a(21)=>DANGLING(9), a(20)=>DANGLING(10), a(19)
      =>DANGLING(11), a(18)=>DANGLING(12), a(17)=>DANGLING(13), a(16)=>
      DANGLING(14), a(15)=>DANGLING(15), a(14)=>tap3(14), a(13)=>tap3(13), 
      a(12)=>tap3(12), a(11)=>tap3(11), a(10)=>tap3(10), a(9)=>tap3(9), a(8)
      =>tap3(8), a(7)=>tap3(7), a(6)=>tap3(6), a(5)=>tap3(5), a(4)=>tap3(4), 
      a(3)=>tap3(3), a(2)=>tap3(2), a(1)=>tap3(1), a(0)=>tap3(0), b(31)=>
      DANGLING(16), b(30)=>DANGLING(17), b(29)=>DANGLING(18), b(28)=>
      DANGLING(19), b(27)=>DANGLING(20), b(26)=>DANGLING(21), b(25)=>
      DANGLING(22), b(24)=>DANGLING(23), b(23)=>DANGLING(24), b(22)=>
      DANGLING(25), b(21)=>DANGLING(26), b(20)=>DANGLING(27), b(19)=>
      DANGLING(28), b(18)=>DANGLING(29), b(17)=>DANGLING(30), b(16)=>
      DANGLING(31), b(15)=>DANGLING(32), b(14)=>DANGLING(33), b(13)=>
      DANGLING(34), b(12)=>DANGLING(35), b(11)=>DANGLING(36), b(10)=>
      DANGLING(37), b(9)=>DANGLING(38), b(8)=>DANGLING(39), b(7)=>DANGLING(
      40), b(6)=>DANGLING(41), b(5)=>DANGLING(42), b(4)=>DANGLING(43), b(3)
      =>DANGLING(44), b(2)=>DANGLING(45), b(1)=>DANGLING(46), b(0)=>DANGLING
      (47), d(31)=>DANGLING(48), d(30)=>DANGLING(49), d(29)=>DANGLING(50), 
      d(28)=>DANGLING(51), d(27)=>prod3(15), d(26)=>prod3(14), d(25)=>
      prod3(13), d(24)=>prod3(12), d(23)=>prod3(11), d(22)=>prod3(10), d(21)
      =>prod3(9), d(20)=>prod3(8), d(19)=>prod3(7), d(18)=>prod3(6), d(17)=>
      prod3(5), d(16)=>prod3(4), d(15)=>prod3(3), d(14)=>prod3(2), d(13)=>
      prod3(1), d(12)=>prod3(0), d(11)=>DANGLING(52), d(10)=>DANGLING(53), 
      d(9)=>DANGLING(54), d(8)=>DANGLING(55), d(7)=>DANGLING(56), d(6)=>
      DANGLING(57), d(5)=>DANGLING(58), d(4)=>DANGLING(59), d(3)=>DANGLING(
      60), d(2)=>DANGLING(61), d(1)=>DANGLING(62), d(0)=>DANGLING(63));
   sum3_add16_0 : add_16_0 port map ( cin=>DANGLING(64), a(15)=>sum2(14), 
      a(14)=>DANGLING(65), a(13)=>sum2(13), a(12)=>sum2(12), a(11)=>sum2(11), 
      a(10)=>sum2(10), a(9)=>sum2(9), a(8)=>sum2(8), a(7)=>sum2(7), a(6)=>
      sum2(6), a(5)=>sum2(5), a(4)=>sum2(4), a(3)=>sum2(3), a(2)=>sum2(2), 
      a(1)=>sum2(1), a(0)=>sum2(0), b(15)=>prod3(15), b(14)=>prod3(14), 
      b(13)=>prod3(13), b(12)=>prod3(12), b(11)=>prod3(11), b(10)=>prod3(10), 
      b(9)=>prod3(9), b(8)=>prod3(8), b(7)=>prod3(7), b(6)=>prod3(6), b(5)=>
      prod3(5), b(4)=>prod3(4), b(3)=>prod3(3), b(2)=>prod3(2), b(1)=>
      prod3(1), b(0)=>prod3(0), d(15)=>sum3(15), d(14)=>sum3(14), d(13)=>
      sum3(13), d(12)=>sum3(12), d(11)=>sum3(11), d(10)=>sum3(10), d(9)=>
      sum3(9), d(8)=>sum3(8), d(7)=>sum3(7), d(6)=>sum3(6), d(5)=>sum3(5), 
      d(4)=>sum3(4), d(3)=>sum3(3), d(2)=>sum3(2), d(1)=>sum3(1), d(0)=>
      sum3(0), cout=>DANGLING(66));
   o_data_add16_1 : add_16_1 port map ( cin=>DANGLING(67), a(15)=>sum3(15), 
      a(14)=>sum3(14), a(13)=>sum3(13), a(12)=>sum3(12), a(11)=>sum3(11), 
      a(10)=>sum3(10), a(9)=>sum3(9), a(8)=>sum3(8), a(7)=>sum3(7), a(6)=>
      sum3(6), a(5)=>sum3(5), a(4)=>sum3(4), a(3)=>sum3(3), a(2)=>sum3(2), 
      a(1)=>sum3(1), a(0)=>sum3(0), b(15)=>tap4_15, b(14)=>DANGLING(68), 
      b(13)=>DANGLING(69), b(12)=>tap4_14, b(11)=>tap4_13, b(10)=>tap4_12, 
      b(9)=>tap4_11, b(8)=>tap4_10, b(7)=>tap4_9, b(6)=>tap4_8, b(5)=>tap4_7, 
      b(4)=>tap4_6, b(3)=>tap4_5, b(2)=>tap4_4, b(1)=>tap4_3, b(0)=>tap4_2, 
      d(15)=>o_data_dup0(15), d(14)=>o_data_dup0(14), d(13)=>o_data_dup0(13), 
      d(12)=>o_data_dup0(12), d(11)=>o_data_dup0(11), d(10)=>o_data_dup0(10), 
      d(9)=>o_data_dup0(9), d(8)=>o_data_dup0(8), d(7)=>o_data_dup0(7), d(6)
      =>o_data_dup0(6), d(5)=>o_data_dup0(5), d(4)=>o_data_dup0(4), d(3)=>
      o_data_dup0(3), d(2)=>o_data_dup0(2), d(1)=>o_data_dup0(1), d(0)=>
      o_data_dup0(0), cout=>DANGLING(70));
   sum2_add15_2 : add_15_2 port map ( cin=>DANGLING(71), a(14)=>tap1_15, 
      a(13)=>DANGLING(72), a(12)=>tap1_14, a(11)=>tap1_13, a(10)=>tap1_12, 
      a(9)=>tap1_11, a(8)=>tap1_10, a(7)=>tap1_9, a(6)=>tap1_8, a(5)=>tap1_7, 
      a(4)=>tap1_6, a(3)=>tap1_5, a(2)=>tap1_4, a(1)=>tap1_3, a(0)=>tap1_2, 
      b(14)=>tap2_15, b(13)=>DANGLING(73), b(12)=>tap2_14, b(11)=>tap2_13, 
      b(10)=>tap2_12, b(9)=>tap2_11, b(8)=>tap2_10, b(7)=>tap2_9, b(6)=>
      tap2_8, b(5)=>tap2_7, b(4)=>tap2_6, b(3)=>tap2_5, b(2)=>tap2_4, b(1)=>
      tap2_3, b(0)=>tap2_2, d(14)=>sum2(14), d(13)=>sum2(13), d(12)=>
      sum2(12), d(11)=>sum2(11), d(10)=>sum2(10), d(9)=>sum2(9), d(8)=>
      sum2(8), d(7)=>sum2(7), d(6)=>sum2(6), d(5)=>sum2(5), d(4)=>sum2(4), 
      d(3)=>sum2(3), d(2)=>sum2(2), d(1)=>sum2(1), d(0)=>sum2(0), cout=>
      DANGLING(74));
   reg_tap4_9 : cycloneii_lcell_ff port map ( regout=>tap4_9, datain=>
      tap3(9), clk=>clk_int);
   reg_tap4_8 : cycloneii_lcell_ff port map ( regout=>tap4_8, datain=>
      tap3(8), clk=>clk_int);
   reg_tap4_7 : cycloneii_lcell_ff port map ( regout=>tap4_7, datain=>
      tap3(7), clk=>clk_int);
   reg_tap4_6 : cycloneii_lcell_ff port map ( regout=>tap4_6, datain=>
      tap3(6), clk=>clk_int);
   reg_tap4_5 : cycloneii_lcell_ff port map ( regout=>tap4_5, datain=>
      tap3(5), clk=>clk_int);
   reg_tap4_4 : cycloneii_lcell_ff port map ( regout=>tap4_4, datain=>
      tap3(4), clk=>clk_int);
   reg_tap4_3 : cycloneii_lcell_ff port map ( regout=>tap4_3, datain=>
      tap3(3), clk=>clk_int);
   reg_tap4_2 : cycloneii_lcell_ff port map ( regout=>tap4_2, datain=>
      tap3(2), clk=>clk_int);
   reg_tap4_15 : cycloneii_lcell_ff port map ( regout=>tap4_15, datain=>
      tap3(15), clk=>clk_int);
   reg_tap4_14 : cycloneii_lcell_ff port map ( regout=>tap4_14, datain=>
      tap3(14), clk=>clk_int);
   reg_tap4_13 : cycloneii_lcell_ff port map ( regout=>tap4_13, datain=>
      tap3(13), clk=>clk_int);
   reg_tap4_12 : cycloneii_lcell_ff port map ( regout=>tap4_12, datain=>
      tap3(12), clk=>clk_int);
   reg_tap4_11 : cycloneii_lcell_ff port map ( regout=>tap4_11, datain=>
      tap3(11), clk=>clk_int);
   reg_tap4_10 : cycloneii_lcell_ff port map ( regout=>tap4_10, datain=>
      tap3(10), clk=>clk_int);
   reg_tap3_9 : cycloneii_lcell_ff port map ( regout=>tap3(9), datain=>
      tap2_9, clk=>clk_int);
   reg_tap3_8 : cycloneii_lcell_ff port map ( regout=>tap3(8), datain=>
      tap2_8, clk=>clk_int);
   reg_tap3_7 : cycloneii_lcell_ff port map ( regout=>tap3(7), datain=>
      tap2_7, clk=>clk_int);
   reg_tap3_6 : cycloneii_lcell_ff port map ( regout=>tap3(6), datain=>
      tap2_6, clk=>clk_int);
   reg_tap3_5 : cycloneii_lcell_ff port map ( regout=>tap3(5), datain=>
      tap2_5, clk=>clk_int);
   reg_tap3_4 : cycloneii_lcell_ff port map ( regout=>tap3(4), datain=>
      tap2_4, clk=>clk_int);
   reg_tap3_3 : cycloneii_lcell_ff port map ( regout=>tap3(3), datain=>
      tap2_3, clk=>clk_int);
   reg_tap3_2 : cycloneii_lcell_ff port map ( regout=>tap3(2), datain=>
      tap2_2, clk=>clk_int);
   reg_tap3_15 : cycloneii_lcell_ff port map ( regout=>tap3(15), datain=>
      tap2_15, clk=>clk_int);
   reg_tap3_14 : cycloneii_lcell_ff port map ( regout=>tap3(14), datain=>
      tap2_14, clk=>clk_int);
   reg_tap3_13 : cycloneii_lcell_ff port map ( regout=>tap3(13), datain=>
      tap2_13, clk=>clk_int);
   reg_tap3_12 : cycloneii_lcell_ff port map ( regout=>tap3(12), datain=>
      tap2_12, clk=>clk_int);
   reg_tap3_11 : cycloneii_lcell_ff port map ( regout=>tap3(11), datain=>
      tap2_11, clk=>clk_int);
   reg_tap3_10 : cycloneii_lcell_ff port map ( regout=>tap3(10), datain=>
      tap2_10, clk=>clk_int);
   reg_tap2_9 : cycloneii_lcell_ff port map ( regout=>tap2_9, datain=>tap1_9, 
      clk=>clk_int);
   reg_tap2_8 : cycloneii_lcell_ff port map ( regout=>tap2_8, datain=>tap1_8, 
      clk=>clk_int);
   reg_tap2_7 : cycloneii_lcell_ff port map ( regout=>tap2_7, datain=>tap1_7, 
      clk=>clk_int);
   reg_tap2_6 : cycloneii_lcell_ff port map ( regout=>tap2_6, datain=>tap1_6, 
      clk=>clk_int);
   reg_tap2_5 : cycloneii_lcell_ff port map ( regout=>tap2_5, datain=>tap1_5, 
      clk=>clk_int);
   reg_tap2_4 : cycloneii_lcell_ff port map ( regout=>tap2_4, datain=>tap1_4, 
      clk=>clk_int);
   reg_tap2_3 : cycloneii_lcell_ff port map ( regout=>tap2_3, datain=>tap1_3, 
      clk=>clk_int);
   reg_tap2_2 : cycloneii_lcell_ff port map ( regout=>tap2_2, datain=>tap1_2, 
      clk=>clk_int);
   reg_tap2_15 : cycloneii_lcell_ff port map ( regout=>tap2_15, datain=>
      tap1_15, clk=>clk_int);
   reg_tap2_14 : cycloneii_lcell_ff port map ( regout=>tap2_14, datain=>
      tap1_14, clk=>clk_int);
   reg_tap2_13 : cycloneii_lcell_ff port map ( regout=>tap2_13, datain=>
      tap1_13, clk=>clk_int);
   reg_tap2_12 : cycloneii_lcell_ff port map ( regout=>tap2_12, datain=>
      tap1_12, clk=>clk_int);
   reg_tap2_11 : cycloneii_lcell_ff port map ( regout=>tap2_11, datain=>
      tap1_11, clk=>clk_int);
   reg_tap2_10 : cycloneii_lcell_ff port map ( regout=>tap2_10, datain=>
      tap1_10, clk=>clk_int);
   o_data_obuf_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(9), datain=>o_data_dup0(9));
   o_data_obuf_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(8), datain=>o_data_dup0(8));
   o_data_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(7), datain=>o_data_dup0(7));
   o_data_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(6), datain=>o_data_dup0(6));
   o_data_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(5), datain=>o_data_dup0(5));
   o_data_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(4), datain=>o_data_dup0(4));
   o_data_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(3), datain=>o_data_dup0(3));
   o_data_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(2), datain=>o_data_dup0(2));
   o_data_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(15), datain=>o_data_dup0(15));
   o_data_obuf_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(14), datain=>o_data_dup0(14));
   o_data_obuf_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(13), datain=>o_data_dup0(13));
   o_data_obuf_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(12), datain=>o_data_dup0(12));
   o_data_obuf_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(11), datain=>o_data_dup0(11));
   o_data_obuf_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(10), datain=>o_data_dup0(10));
   o_data_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(1), datain=>o_data_dup0(1));
   o_data_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_data_EXMPLR137(0), datain=>o_data_dup0(0));
   ix4_reg_tap3_1 : cycloneii_lcell_ff port map ( regout=>tap3(1), datain=>
      nx59173z1, clk=>clk_int);
   ix4_reg_tap3_0 : cycloneii_lcell_ff port map ( regout=>tap3(0), datain=>
      nx60170z1, clk=>clk_int);
   ix4_reg_tap2_1 : cycloneii_lcell_ff port map ( regout=>nx59173z1, datain
      =>nx14782z1, clk=>clk_int);
   ix4_reg_tap2_0 : cycloneii_lcell_ff port map ( regout=>nx60170z1, datain
      =>nx13785z1, clk=>clk_int);
   i_data_ibuf_9 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_9, padio=>i_data_EXMPLR136(9), inclk=>clk_int
   );
   i_data_ibuf_8 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_8, padio=>i_data_EXMPLR136(8), inclk=>clk_int
   );
   i_data_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_7, padio=>i_data_EXMPLR136(7), inclk=>clk_int
   );
   i_data_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_6, padio=>i_data_EXMPLR136(6), inclk=>clk_int
   );
   i_data_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_5, padio=>i_data_EXMPLR136(5), inclk=>clk_int
   );
   i_data_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_4, padio=>i_data_EXMPLR136(4), inclk=>clk_int
   );
   i_data_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_3, padio=>i_data_EXMPLR136(3), inclk=>clk_int
   );
   i_data_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_2, padio=>i_data_EXMPLR136(2), inclk=>clk_int
   );
   i_data_ibuf_15 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_15, padio=>i_data_EXMPLR136(15), inclk=>
      clk_int);
   i_data_ibuf_14 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_14, padio=>i_data_EXMPLR136(14), inclk=>
      clk_int);
   i_data_ibuf_13 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_13, padio=>i_data_EXMPLR136(13), inclk=>
      clk_int);
   i_data_ibuf_12 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_12, padio=>i_data_EXMPLR136(12), inclk=>
      clk_int);
   i_data_ibuf_11 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_11, padio=>i_data_EXMPLR136(11), inclk=>
      clk_int);
   i_data_ibuf_10 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>tap1_10, padio=>i_data_EXMPLR136(10), inclk=>
      clk_int);
   i_data_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx14782z1, padio=>i_data_EXMPLR136(1), inclk=>
      clk_int);
   i_data_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false"
         ,
         input_register_mode => "register") 
       port map ( regout=>nx13785z1, padio=>i_data_EXMPLR136(0), inclk=>
      clk_int);
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR103);
end avg ;

