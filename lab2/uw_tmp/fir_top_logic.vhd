
-- 
-- Definition of  fir_top
-- 
--      Tue Jan 26 18:36:23 2016
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_67 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_67 ;

architecture IMPLEMENTATION of mult_32_67 is 
   signal d_13_EXMPLR1678, nx12219z2, nx12219z15, nx12219z14, nx12219z13, 
      nx12219z12, nx12219z11, nx12219z10, nx12219z9, nx12219z8, nx12219z7, 
      nx12219z6, nx12219z5, nx12219z4, nx12219z3, nx_mult_32_67_vcc_net: 
   std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(23) <= d_13_EXMPLR1678 ;
   d(22) <= d_13_EXMPLR1678 ;
   ix12219z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(24), datad=>nx_mult_32_67_vcc_net, cin=>
      nx12219z2);
   nx_mult_32_67_vcc_net <= '1';
   ix12219z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_13_EXMPLR1678, cout=>nx12219z2, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_67_vcc_net, cin=>nx12219z3);
   ix12219z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), cout=>nx12219z3, dataa=>a(31), datab=>
      a(14), datad=>nx_mult_32_67_vcc_net, cin=>nx12219z4);
   ix12219z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx12219z4, dataa=>a(14), datab=>
      a(11), datad=>nx_mult_32_67_vcc_net, cin=>nx12219z5);
   ix12219z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx12219z5, dataa=>a(14), datab=>
      a(10), datad=>nx_mult_32_67_vcc_net, cin=>nx12219z6);
   ix12219z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx12219z6, dataa=>a(14), datab=>a(9), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx12219z7);
   ix12219z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx12219z7, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx12219z8);
   ix12219z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx12219z8, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx12219z9);
   ix12219z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx12219z9, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx12219z10);
   ix12219z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx12219z10, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx12219z11);
   ix12219z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx12219z11, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx12219z12);
   ix12219z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx12219z12, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx12219z13);
   ix12219z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx12219z13, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_67_vcc_net, cin=>nx12219z14);
   ix12219z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx12219z14, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_67_vcc_net, cin=>nx12219z15);
   ix12219z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx12219z15, dataa=>a(0), datab=>a(3), datad=>
      nx_mult_32_67_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_68 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_68 ;

architecture IMPLEMENTATION of mult_32_68 is 
   signal nx8231z2, nx8231z13, nx8231z12, nx8231z11, nx8231z10, nx8231z9, 
      nx8231z8, nx8231z7, nx8231z6, nx8231z5, nx8231z4, nx8231z3, 
      nx_mult_32_68_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(31) ;
   d(23) <= a(14) ;
   d(22) <= a(31) ;
   d(21) <= a(14) ;
   modgen_add_1_ix8231z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx8231z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx8231z3);
   nx_mult_32_68_vcc_net <= '1';
   modgen_add_1_ix8231z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx8231z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx8231z4);
   modgen_add_1_ix8231z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx8231z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx8231z5);
   modgen_add_1_ix8231z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx8231z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx8231z6);
   modgen_add_1_ix8231z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx8231z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx8231z7);
   modgen_add_1_ix8231z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx8231z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx8231z8);
   modgen_add_1_ix8231z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx8231z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx8231z9);
   modgen_add_1_ix8231z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx8231z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx8231z10);
   modgen_add_1_ix8231z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx8231z10, dataa=>a(4), datab=>a(3), datad=>
      nx_mult_32_68_vcc_net, cin=>nx8231z11);
   modgen_add_1_ix8231z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx8231z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_68_vcc_net, cin=>nx8231z12);
   modgen_add_1_ix8231z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx8231z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_68_vcc_net, cin=>nx8231z13);
   modgen_add_1_ix8231z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx8231z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_68_vcc_net);
   ix8231z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), datad=>nx_mult_32_68_vcc_net, cin=>
      nx8231z2);
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
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_0_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_0_vcc_net, cin=>nx2247z19);
   nx_add_16_0_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_0_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_0_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_0_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_0_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_69 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_69 ;

architecture IMPLEMENTATION of mult_32_69 is 
   signal d_15_EXMPLR1724, nx15210z2, nx15210z17, nx15210z16, nx15210z15, 
      nx15210z14, nx15210z13, nx15210z12, nx15210z11, nx15210z10, nx15210z9, 
      nx15210z8, nx15210z7, nx15210z6, nx15210z5, nx15210z4, nx15210z3, 
      nx15210z1, nx_mult_32_69_vcc_net: std_logic ;

begin
   d(27) <= nx15210z1 ;
   d(26) <= nx15210z1 ;
   d(25) <= nx15210z1 ;
   d(24) <= nx15210z1 ;
   d(23) <= d_15_EXMPLR1724 ;
   d(22) <= d_15_EXMPLR1724 ;
   ix15210z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx15210z1, datad=>nx_mult_32_69_vcc_net, cin=>
      nx15210z2);
   nx_mult_32_69_vcc_net <= '1';
   ix15210z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"692b",
         sum_lutc_input => "cin") 
       port map ( combout=>d_15_EXMPLR1724, cout=>nx15210z2, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_69_vcc_net, cin=>nx15210z3);
   ix15210z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), cout=>nx15210z3, dataa=>a(31), datab=>
      a(14), datad=>nx_mult_32_69_vcc_net, cin=>nx15210z4);
   ix15210z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx15210z4, dataa=>a(14), datab=>
      a(11), datad=>nx_mult_32_69_vcc_net, cin=>nx15210z5);
   ix15210z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx15210z5, dataa=>a(14), datab=>
      a(10), datad=>nx_mult_32_69_vcc_net, cin=>nx15210z6);
   ix15210z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx15210z6, dataa=>a(14), datab=>a(9), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx15210z7);
   ix15210z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx15210z7, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx15210z8);
   ix15210z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx15210z8, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx15210z9);
   ix15210z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx15210z9, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx15210z10);
   ix15210z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx15210z10, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx15210z11);
   ix15210z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx15210z11, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx15210z12);
   ix15210z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx15210z12, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx15210z13);
   ix15210z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z13, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_69_vcc_net, cin=>nx15210z14);
   ix15210z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z14, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_69_vcc_net, cin=>nx15210z15);
   ix15210z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z15, dataa=>a(3), datab=>a(0), datad=>
      nx_mult_32_69_vcc_net, cin=>nx15210z16);
   ix15210z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z16, dataa=>a(2), datad=>
      nx_mult_32_69_vcc_net, cin=>nx15210z17);
   ix15210z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx15210z17, dataa=>a(1), datab=>a(0), datad=>
      nx_mult_32_69_vcc_net);
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
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_1_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_1_vcc_net, cin=>nx2247z19);
   nx_add_16_1_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_1_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_1_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_1_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_1_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mult_32_70 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_70 ;

architecture IMPLEMENTATION of mult_32_70 is 
begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(31) ;
   d(23) <= a(14) ;
   d(22) <= a(14) ;
   d(21) <= a(14) ;
   d(20) <= a(11) ;
   d(19) <= a(10) ;
   d(18) <= a(9) ;
   d(17) <= a(8) ;
   d(16) <= a(7) ;
   d(15) <= a(6) ;
   d(14) <= a(5) ;
   d(13) <= a(4) ;
   d(12) <= a(3) ;
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_2 ;

architecture IMPLEMENTATION of add_16_2 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_2_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_2_vcc_net, cin=>nx2247z19);
   nx_add_16_2_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_2_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_2_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_2_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_2_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_71 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_71 ;

architecture IMPLEMENTATION of mult_32_71 is 
   signal nx9228z2, nx9228z13, nx9228z12, nx9228z11, nx9228z10, nx9228z9, 
      nx9228z8, nx9228z7, nx9228z6, nx9228z5, nx9228z4, nx9228z3, 
      nx_mult_32_71_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(14) ;
   d(23) <= a(31) ;
   d(22) <= a(31) ;
   modgen_add_3_ix9228z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx9228z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx9228z3);
   nx_mult_32_71_vcc_net <= '1';
   modgen_add_3_ix9228z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx9228z3, dataa=>a(14), datab=>a(10), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx9228z4);
   modgen_add_3_ix9228z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx9228z4, dataa=>a(11), datab=>a(9), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx9228z5);
   modgen_add_3_ix9228z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx9228z5, dataa=>a(10), datab=>a(8), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx9228z6);
   modgen_add_3_ix9228z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx9228z6, dataa=>a(9), datab=>a(7), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx9228z7);
   modgen_add_3_ix9228z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx9228z7, dataa=>a(8), datab=>a(6), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx9228z8);
   modgen_add_3_ix9228z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx9228z8, dataa=>a(7), datab=>a(5), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx9228z9);
   modgen_add_3_ix9228z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx9228z9, dataa=>a(6), datab=>a(4), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx9228z10);
   modgen_add_3_ix9228z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx9228z10, dataa=>a(5), datab=>a(3), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx9228z11);
   modgen_add_3_ix9228z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z11, dataa=>a(4), datab=>a(2), datad=>
      nx_mult_32_71_vcc_net, cin=>nx9228z12);
   modgen_add_3_ix9228z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z12, dataa=>a(3), datab=>a(1), datad=>
      nx_mult_32_71_vcc_net, cin=>nx9228z13);
   modgen_add_3_ix9228z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx9228z13, dataa=>a(0), datab=>a(2), datad=>
      nx_mult_32_71_vcc_net);
   ix9228z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), datad=>nx_mult_32_71_vcc_net, cin=>
      nx9228z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_3 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_3 ;

architecture IMPLEMENTATION of add_16_3 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_3_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_3_vcc_net, cin=>nx2247z19);
   nx_add_16_3_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_3_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_3_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_3_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_3_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_72 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_72 ;

architecture IMPLEMENTATION of mult_32_72 is 
   signal d_11_EXMPLR1782, d_10_EXMPLR1783, d_9_EXMPLR1784, d_8_EXMPLR1785, 
      d_7_EXMPLR1786, d_6_EXMPLR1787, d_5_EXMPLR1788, d_4_EXMPLR1789, 
      d_3_EXMPLR1790, d_2_EXMPLR1791, b_10_EXMPLR1793, nx10225z2, nx10225z16, 
      nx10225z15, nx10225z14, nx10225z13, nx10225z12, nx10225z11, nx10225z10, 
      nx10225z9, nx10225z8, nx10225z7, nx10225z6, nx10225z26, nx10225z25, 
      nx10225z24, nx10225z23, nx10225z22, nx10225z21, nx10225z20, nx10225z19, 
      nx10225z18, nx10225z17, nx10225z4, nx10225z3, nx10225z5, 
      nx_mult_32_72_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(14) ;
   d(23) <= a(31) ;
   modgen_add_5_ix10225z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), cout=>nx10225z2, dataa=>a(31), datab=>
      a(14), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z3);
   nx_mult_32_72_vcc_net <= '1';
   modgen_add_5_ix10225z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx10225z3, dataa=>a(14), datab=>
      a(11), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z4);
   modgen_add_5_ix10225z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx10225z4, dataa=>nx10225z5, datab=>
      a(10), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z17);
   modgen_add_5_ix10225z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx10225z17, dataa=>d_11_EXMPLR1782, 
      datab=>a(9), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z18);
   modgen_add_5_ix10225z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx10225z18, dataa=>d_10_EXMPLR1783, 
      datab=>a(8), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z19);
   modgen_add_5_ix10225z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx10225z19, dataa=>d_9_EXMPLR1784, 
      datab=>a(7), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z20);
   modgen_add_5_ix10225z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx10225z20, dataa=>d_8_EXMPLR1785, 
      datab=>a(6), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z21);
   modgen_add_5_ix10225z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx10225z21, dataa=>d_7_EXMPLR1786, 
      datab=>a(5), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z22);
   modgen_add_5_ix10225z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx10225z22, dataa=>d_6_EXMPLR1787, 
      datab=>a(4), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z23);
   modgen_add_5_ix10225z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx10225z23, dataa=>d_5_EXMPLR1788, 
      datab=>a(3), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z24);
   modgen_add_5_ix10225z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx10225z24, dataa=>d_4_EXMPLR1789, datab=>a(2), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx10225z25);
   modgen_add_5_ix10225z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx10225z25, dataa=>d_3_EXMPLR1790, datab=>a(1), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx10225z26);
   modgen_add_5_ix10225z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx10225z26, dataa=>a(0), datab=>d_2_EXMPLR1791, 
      datad=>nx_mult_32_72_vcc_net);
   modgen_add_4_ix10225z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_11_EXMPLR1782, cout=>b_10_EXMPLR1793, dataa=>
      a(14), datab=>a(11), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z6);
   modgen_add_4_ix10225z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_10_EXMPLR1783, cout=>nx10225z6, dataa=>a(11), 
      datab=>a(10), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z7);
   modgen_add_4_ix10225z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_9_EXMPLR1784, cout=>nx10225z7, dataa=>a(10), 
      datab=>a(9), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z8);
   modgen_add_4_ix10225z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_8_EXMPLR1785, cout=>nx10225z8, dataa=>a(9), 
      datab=>a(8), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z9);
   modgen_add_4_ix10225z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_7_EXMPLR1786, cout=>nx10225z9, dataa=>a(8), 
      datab=>a(7), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z10);
   modgen_add_4_ix10225z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_6_EXMPLR1787, cout=>nx10225z10, dataa=>a(7), 
      datab=>a(6), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z11);
   modgen_add_4_ix10225z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_5_EXMPLR1788, cout=>nx10225z11, dataa=>a(6), 
      datab=>a(5), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z12);
   modgen_add_4_ix10225z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_4_EXMPLR1789, cout=>nx10225z12, dataa=>a(5), 
      datab=>a(4), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z13);
   modgen_add_4_ix10225z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_3_EXMPLR1790, cout=>nx10225z13, dataa=>a(4), 
      datab=>a(3), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z14);
   modgen_add_4_ix10225z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_2_EXMPLR1791, cout=>nx10225z14, dataa=>a(3), 
      datab=>a(2), datad=>nx_mult_32_72_vcc_net, cin=>nx10225z15);
   modgen_add_4_ix10225z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx10225z15, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_72_vcc_net, cin=>nx10225z16);
   modgen_add_4_ix10225z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx10225z16, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_72_vcc_net);
   ix10225z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(22), datad=>nx_mult_32_72_vcc_net, cin=>
      nx10225z2);
   ix10225z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx10225z5, datad=>nx_mult_32_72_vcc_net, cin=>
      b_10_EXMPLR1793);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_4 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_4 ;

architecture IMPLEMENTATION of add_16_4 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_4_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_4_vcc_net, cin=>nx2247z19);
   nx_add_16_4_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_4_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_4_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_4_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_4_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_73 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_73 ;

architecture IMPLEMENTATION of mult_32_73 is 
   signal nx9228z2, nx9228z13, nx9228z12, nx9228z11, nx9228z10, nx9228z9, 
      nx9228z8, nx9228z7, nx9228z6, nx9228z5, nx9228z4, nx9228z3, 
      nx_mult_32_73_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(14) ;
   d(23) <= a(31) ;
   d(22) <= a(14) ;
   modgen_add_6_ix9228z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx9228z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx9228z3);
   nx_mult_32_73_vcc_net <= '1';
   modgen_add_6_ix9228z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx9228z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx9228z4);
   modgen_add_6_ix9228z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx9228z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx9228z5);
   modgen_add_6_ix9228z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx9228z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx9228z6);
   modgen_add_6_ix9228z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx9228z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx9228z7);
   modgen_add_6_ix9228z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx9228z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx9228z8);
   modgen_add_6_ix9228z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx9228z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx9228z9);
   modgen_add_6_ix9228z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx9228z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx9228z10);
   modgen_add_6_ix9228z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx9228z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx9228z11);
   modgen_add_6_ix9228z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_73_vcc_net, cin=>nx9228z12);
   modgen_add_6_ix9228z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_73_vcc_net, cin=>nx9228z13);
   modgen_add_6_ix9228z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx9228z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_73_vcc_net);
   ix9228z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), datad=>nx_mult_32_73_vcc_net, cin=>
      nx9228z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_5 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_5 ;

architecture IMPLEMENTATION of add_16_5 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_5_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_5_vcc_net, cin=>nx2247z19);
   nx_add_16_5_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_5_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_5_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_5_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_5_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_74 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_74 ;

architecture IMPLEMENTATION of mult_32_74 is 
   signal nx9228z2, nx9228z13, nx9228z12, nx9228z11, nx9228z10, nx9228z9, 
      nx9228z8, nx9228z7, nx9228z6, nx9228z5, nx9228z4, nx9228z3, 
      nx_mult_32_74_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(14) ;
   d(23) <= a(31) ;
   d(22) <= a(14) ;
   modgen_add_7_ix9228z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx9228z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx9228z3);
   nx_mult_32_74_vcc_net <= '1';
   modgen_add_7_ix9228z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx9228z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx9228z4);
   modgen_add_7_ix9228z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx9228z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx9228z5);
   modgen_add_7_ix9228z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx9228z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx9228z6);
   modgen_add_7_ix9228z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx9228z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx9228z7);
   modgen_add_7_ix9228z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx9228z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx9228z8);
   modgen_add_7_ix9228z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx9228z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx9228z9);
   modgen_add_7_ix9228z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx9228z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx9228z10);
   modgen_add_7_ix9228z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx9228z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx9228z11);
   modgen_add_7_ix9228z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_74_vcc_net, cin=>nx9228z12);
   modgen_add_7_ix9228z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_74_vcc_net, cin=>nx9228z13);
   modgen_add_7_ix9228z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx9228z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_74_vcc_net);
   ix9228z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), datad=>nx_mult_32_74_vcc_net, cin=>
      nx9228z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_6 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_6 ;

architecture IMPLEMENTATION of add_16_6 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_6_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_6_vcc_net, cin=>nx2247z19);
   nx_add_16_6_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_6_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_6_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_6_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_6_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_75 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_75 ;

architecture IMPLEMENTATION of mult_32_75 is 
   signal nx9228z2, nx9228z13, nx9228z12, nx9228z11, nx9228z10, nx9228z9, 
      nx9228z8, nx9228z7, nx9228z6, nx9228z5, nx9228z4, nx9228z3, 
      nx_mult_32_75_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(14) ;
   d(23) <= a(31) ;
   d(22) <= a(14) ;
   modgen_add_8_ix9228z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx9228z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_75_vcc_net, cin=>nx9228z3);
   nx_mult_32_75_vcc_net <= '1';
   modgen_add_8_ix9228z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx9228z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_75_vcc_net, cin=>nx9228z4);
   modgen_add_8_ix9228z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx9228z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_75_vcc_net, cin=>nx9228z5);
   modgen_add_8_ix9228z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx9228z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_75_vcc_net, cin=>nx9228z6);
   modgen_add_8_ix9228z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx9228z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_75_vcc_net, cin=>nx9228z7);
   modgen_add_8_ix9228z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx9228z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_75_vcc_net, cin=>nx9228z8);
   modgen_add_8_ix9228z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx9228z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_75_vcc_net, cin=>nx9228z9);
   modgen_add_8_ix9228z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx9228z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_75_vcc_net, cin=>nx9228z10);
   modgen_add_8_ix9228z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx9228z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_75_vcc_net, cin=>nx9228z11);
   modgen_add_8_ix9228z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_75_vcc_net, cin=>nx9228z12);
   modgen_add_8_ix9228z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_75_vcc_net, cin=>nx9228z13);
   modgen_add_8_ix9228z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx9228z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_75_vcc_net);
   ix9228z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), datad=>nx_mult_32_75_vcc_net, cin=>
      nx9228z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_7 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_7 ;

architecture IMPLEMENTATION of add_16_7 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_7_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_7_vcc_net, cin=>nx2247z19);
   nx_add_16_7_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_7_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_7_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_7_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_7_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_76 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_76 ;

architecture IMPLEMENTATION of mult_32_76 is 
   signal nx9228z2, nx9228z13, nx9228z12, nx9228z11, nx9228z10, nx9228z9, 
      nx9228z8, nx9228z7, nx9228z6, nx9228z5, nx9228z4, nx9228z3, 
      nx_mult_32_76_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(14) ;
   d(23) <= a(31) ;
   d(22) <= a(14) ;
   modgen_add_9_ix9228z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx9228z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_76_vcc_net, cin=>nx9228z3);
   nx_mult_32_76_vcc_net <= '1';
   modgen_add_9_ix9228z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx9228z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_76_vcc_net, cin=>nx9228z4);
   modgen_add_9_ix9228z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx9228z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_76_vcc_net, cin=>nx9228z5);
   modgen_add_9_ix9228z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx9228z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_76_vcc_net, cin=>nx9228z6);
   modgen_add_9_ix9228z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx9228z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_76_vcc_net, cin=>nx9228z7);
   modgen_add_9_ix9228z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx9228z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_76_vcc_net, cin=>nx9228z8);
   modgen_add_9_ix9228z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx9228z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_76_vcc_net, cin=>nx9228z9);
   modgen_add_9_ix9228z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx9228z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_76_vcc_net, cin=>nx9228z10);
   modgen_add_9_ix9228z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx9228z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_76_vcc_net, cin=>nx9228z11);
   modgen_add_9_ix9228z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_76_vcc_net, cin=>nx9228z12);
   modgen_add_9_ix9228z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_76_vcc_net, cin=>nx9228z13);
   modgen_add_9_ix9228z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx9228z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_76_vcc_net);
   ix9228z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), datad=>nx_mult_32_76_vcc_net, cin=>
      nx9228z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_8 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_8 ;

architecture IMPLEMENTATION of add_16_8 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_8_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_8_vcc_net, cin=>nx2247z19);
   nx_add_16_8_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_8_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_8_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_8_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_8_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_77 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_77 ;

architecture IMPLEMENTATION of mult_32_77 is 
   signal nx9228z2, nx9228z13, nx9228z12, nx9228z11, nx9228z10, nx9228z9, 
      nx9228z8, nx9228z7, nx9228z6, nx9228z5, nx9228z4, nx9228z3, 
      nx_mult_32_77_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(14) ;
   d(23) <= a(31) ;
   d(22) <= a(14) ;
   modgen_add_10_ix9228z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx9228z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_77_vcc_net, cin=>nx9228z3);
   nx_mult_32_77_vcc_net <= '1';
   modgen_add_10_ix9228z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx9228z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_77_vcc_net, cin=>nx9228z4);
   modgen_add_10_ix9228z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx9228z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_77_vcc_net, cin=>nx9228z5);
   modgen_add_10_ix9228z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx9228z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_77_vcc_net, cin=>nx9228z6);
   modgen_add_10_ix9228z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx9228z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_77_vcc_net, cin=>nx9228z7);
   modgen_add_10_ix9228z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx9228z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_77_vcc_net, cin=>nx9228z8);
   modgen_add_10_ix9228z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx9228z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_77_vcc_net, cin=>nx9228z9);
   modgen_add_10_ix9228z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx9228z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_77_vcc_net, cin=>nx9228z10);
   modgen_add_10_ix9228z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx9228z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_77_vcc_net, cin=>nx9228z11);
   modgen_add_10_ix9228z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_77_vcc_net, cin=>nx9228z12);
   modgen_add_10_ix9228z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_77_vcc_net, cin=>nx9228z13);
   modgen_add_10_ix9228z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx9228z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_77_vcc_net);
   ix9228z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), datad=>nx_mult_32_77_vcc_net, cin=>
      nx9228z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_9 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_9 ;

architecture IMPLEMENTATION of add_16_9 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_9_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_9_vcc_net, cin=>nx2247z19);
   nx_add_16_9_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_9_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_9_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_9_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_9_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_78 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_78 ;

architecture IMPLEMENTATION of mult_32_78 is 
   signal d_11_EXMPLR1918, d_10_EXMPLR1919, d_9_EXMPLR1920, d_8_EXMPLR1921, 
      d_7_EXMPLR1922, d_6_EXMPLR1923, d_5_EXMPLR1924, d_4_EXMPLR1925, 
      d_3_EXMPLR1926, d_2_EXMPLR1927, b_10_EXMPLR1929, nx10225z2, nx10225z16, 
      nx10225z15, nx10225z14, nx10225z13, nx10225z12, nx10225z11, nx10225z10, 
      nx10225z9, nx10225z8, nx10225z7, nx10225z6, nx10225z26, nx10225z25, 
      nx10225z24, nx10225z23, nx10225z22, nx10225z21, nx10225z20, nx10225z19, 
      nx10225z18, nx10225z17, nx10225z4, nx10225z3, nx10225z5, 
      nx_mult_32_78_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(14) ;
   d(23) <= a(31) ;
   modgen_add_12_ix10225z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), cout=>nx10225z2, dataa=>a(31), datab=>
      a(14), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z3);
   nx_mult_32_78_vcc_net <= '1';
   modgen_add_12_ix10225z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx10225z3, dataa=>a(14), datab=>
      a(11), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z4);
   modgen_add_12_ix10225z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx10225z4, dataa=>nx10225z5, datab=>
      a(10), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z17);
   modgen_add_12_ix10225z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx10225z17, dataa=>d_11_EXMPLR1918, 
      datab=>a(9), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z18);
   modgen_add_12_ix10225z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx10225z18, dataa=>d_10_EXMPLR1919, 
      datab=>a(8), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z19);
   modgen_add_12_ix10225z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx10225z19, dataa=>d_9_EXMPLR1920, 
      datab=>a(7), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z20);
   modgen_add_12_ix10225z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx10225z20, dataa=>d_8_EXMPLR1921, 
      datab=>a(6), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z21);
   modgen_add_12_ix10225z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx10225z21, dataa=>d_7_EXMPLR1922, 
      datab=>a(5), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z22);
   modgen_add_12_ix10225z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx10225z22, dataa=>d_6_EXMPLR1923, 
      datab=>a(4), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z23);
   modgen_add_12_ix10225z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx10225z23, dataa=>d_5_EXMPLR1924, 
      datab=>a(3), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z24);
   modgen_add_12_ix10225z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx10225z24, dataa=>d_4_EXMPLR1925, datab=>a(2), 
      datad=>nx_mult_32_78_vcc_net, cin=>nx10225z25);
   modgen_add_12_ix10225z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx10225z25, dataa=>d_3_EXMPLR1926, datab=>a(1), 
      datad=>nx_mult_32_78_vcc_net, cin=>nx10225z26);
   modgen_add_12_ix10225z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx10225z26, dataa=>a(0), datab=>d_2_EXMPLR1927, 
      datad=>nx_mult_32_78_vcc_net);
   modgen_add_11_ix10225z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_11_EXMPLR1918, cout=>b_10_EXMPLR1929, dataa=>
      a(14), datab=>a(11), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z6);
   modgen_add_11_ix10225z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_10_EXMPLR1919, cout=>nx10225z6, dataa=>a(11), 
      datab=>a(10), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z7);
   modgen_add_11_ix10225z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_9_EXMPLR1920, cout=>nx10225z7, dataa=>a(10), 
      datab=>a(9), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z8);
   modgen_add_11_ix10225z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_8_EXMPLR1921, cout=>nx10225z8, dataa=>a(9), 
      datab=>a(8), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z9);
   modgen_add_11_ix10225z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_7_EXMPLR1922, cout=>nx10225z9, dataa=>a(8), 
      datab=>a(7), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z10);
   modgen_add_11_ix10225z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_6_EXMPLR1923, cout=>nx10225z10, dataa=>a(7), 
      datab=>a(6), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z11);
   modgen_add_11_ix10225z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_5_EXMPLR1924, cout=>nx10225z11, dataa=>a(6), 
      datab=>a(5), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z12);
   modgen_add_11_ix10225z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_4_EXMPLR1925, cout=>nx10225z12, dataa=>a(5), 
      datab=>a(4), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z13);
   modgen_add_11_ix10225z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_3_EXMPLR1926, cout=>nx10225z13, dataa=>a(4), 
      datab=>a(3), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z14);
   modgen_add_11_ix10225z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_2_EXMPLR1927, cout=>nx10225z14, dataa=>a(3), 
      datab=>a(2), datad=>nx_mult_32_78_vcc_net, cin=>nx10225z15);
   modgen_add_11_ix10225z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx10225z15, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_78_vcc_net, cin=>nx10225z16);
   modgen_add_11_ix10225z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx10225z16, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_78_vcc_net);
   ix10225z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(22), datad=>nx_mult_32_78_vcc_net, cin=>
      nx10225z2);
   ix10225z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx10225z5, datad=>nx_mult_32_78_vcc_net, cin=>
      b_10_EXMPLR1929);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_10 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_10 ;

architecture IMPLEMENTATION of add_16_10 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_10_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_10_vcc_net, cin=>nx2247z19);
   nx_add_16_10_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_10_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_10_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_10_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_10_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_79 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_79 ;

architecture IMPLEMENTATION of mult_32_79 is 
   signal nx9228z2, nx9228z13, nx9228z12, nx9228z11, nx9228z10, nx9228z9, 
      nx9228z8, nx9228z7, nx9228z6, nx9228z5, nx9228z4, nx9228z3, 
      nx_mult_32_79_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(14) ;
   d(23) <= a(31) ;
   d(22) <= a(31) ;
   modgen_add_13_ix9228z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx9228z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_79_vcc_net, cin=>nx9228z3);
   nx_mult_32_79_vcc_net <= '1';
   modgen_add_13_ix9228z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx9228z3, dataa=>a(14), datab=>a(10), 
      datad=>nx_mult_32_79_vcc_net, cin=>nx9228z4);
   modgen_add_13_ix9228z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx9228z4, dataa=>a(11), datab=>a(9), 
      datad=>nx_mult_32_79_vcc_net, cin=>nx9228z5);
   modgen_add_13_ix9228z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx9228z5, dataa=>a(10), datab=>a(8), 
      datad=>nx_mult_32_79_vcc_net, cin=>nx9228z6);
   modgen_add_13_ix9228z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx9228z6, dataa=>a(9), datab=>a(7), 
      datad=>nx_mult_32_79_vcc_net, cin=>nx9228z7);
   modgen_add_13_ix9228z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx9228z7, dataa=>a(8), datab=>a(6), 
      datad=>nx_mult_32_79_vcc_net, cin=>nx9228z8);
   modgen_add_13_ix9228z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx9228z8, dataa=>a(7), datab=>a(5), 
      datad=>nx_mult_32_79_vcc_net, cin=>nx9228z9);
   modgen_add_13_ix9228z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx9228z9, dataa=>a(6), datab=>a(4), 
      datad=>nx_mult_32_79_vcc_net, cin=>nx9228z10);
   modgen_add_13_ix9228z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx9228z10, dataa=>a(5), datab=>a(3), 
      datad=>nx_mult_32_79_vcc_net, cin=>nx9228z11);
   modgen_add_13_ix9228z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z11, dataa=>a(4), datab=>a(2), datad=>
      nx_mult_32_79_vcc_net, cin=>nx9228z12);
   modgen_add_13_ix9228z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx9228z12, dataa=>a(3), datab=>a(1), datad=>
      nx_mult_32_79_vcc_net, cin=>nx9228z13);
   modgen_add_13_ix9228z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx9228z13, dataa=>a(0), datab=>a(2), datad=>
      nx_mult_32_79_vcc_net);
   ix9228z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), datad=>nx_mult_32_79_vcc_net, cin=>
      nx9228z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_11 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_11 ;

architecture IMPLEMENTATION of add_16_11 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_11_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_11_vcc_net, cin=>nx2247z19);
   nx_add_16_11_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_11_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_11_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_11_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_11_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity mult_32_80 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_80 ;

architecture IMPLEMENTATION of mult_32_80 is 
begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(31) ;
   d(23) <= a(14) ;
   d(22) <= a(14) ;
   d(21) <= a(14) ;
   d(20) <= a(11) ;
   d(19) <= a(10) ;
   d(18) <= a(9) ;
   d(17) <= a(8) ;
   d(16) <= a(7) ;
   d(15) <= a(6) ;
   d(14) <= a(5) ;
   d(13) <= a(4) ;
   d(12) <= a(3) ;
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_12 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_12 ;

architecture IMPLEMENTATION of add_16_12 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_12_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_12_vcc_net, cin=>nx2247z19);
   nx_add_16_12_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_12_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_12_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_12_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_12_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_81 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_81 ;

architecture IMPLEMENTATION of mult_32_81 is 
   signal d_15_EXMPLR1977, nx15210z2, nx15210z17, nx15210z16, nx15210z15, 
      nx15210z14, nx15210z13, nx15210z12, nx15210z11, nx15210z10, nx15210z9, 
      nx15210z8, nx15210z7, nx15210z6, nx15210z5, nx15210z4, nx15210z3, 
      nx15210z1, nx_mult_32_81_vcc_net: std_logic ;

begin
   d(27) <= nx15210z1 ;
   d(26) <= nx15210z1 ;
   d(25) <= nx15210z1 ;
   d(24) <= nx15210z1 ;
   d(23) <= d_15_EXMPLR1977 ;
   d(22) <= d_15_EXMPLR1977 ;
   ix15210z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx15210z1, datad=>nx_mult_32_81_vcc_net, cin=>
      nx15210z2);
   nx_mult_32_81_vcc_net <= '1';
   ix15210z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"692b",
         sum_lutc_input => "cin") 
       port map ( combout=>d_15_EXMPLR1977, cout=>nx15210z2, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_81_vcc_net, cin=>nx15210z3);
   ix15210z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), cout=>nx15210z3, dataa=>a(31), datab=>
      a(14), datad=>nx_mult_32_81_vcc_net, cin=>nx15210z4);
   ix15210z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx15210z4, dataa=>a(14), datab=>
      a(11), datad=>nx_mult_32_81_vcc_net, cin=>nx15210z5);
   ix15210z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx15210z5, dataa=>a(14), datab=>
      a(10), datad=>nx_mult_32_81_vcc_net, cin=>nx15210z6);
   ix15210z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx15210z6, dataa=>a(14), datab=>a(9), 
      datad=>nx_mult_32_81_vcc_net, cin=>nx15210z7);
   ix15210z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx15210z7, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_81_vcc_net, cin=>nx15210z8);
   ix15210z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx15210z8, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_81_vcc_net, cin=>nx15210z9);
   ix15210z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx15210z9, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_81_vcc_net, cin=>nx15210z10);
   ix15210z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx15210z10, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_81_vcc_net, cin=>nx15210z11);
   ix15210z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx15210z11, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_81_vcc_net, cin=>nx15210z12);
   ix15210z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx15210z12, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_81_vcc_net, cin=>nx15210z13);
   ix15210z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z13, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_81_vcc_net, cin=>nx15210z14);
   ix15210z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z14, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_81_vcc_net, cin=>nx15210z15);
   ix15210z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z15, dataa=>a(3), datab=>a(0), datad=>
      nx_mult_32_81_vcc_net, cin=>nx15210z16);
   ix15210z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx15210z16, dataa=>a(2), datad=>
      nx_mult_32_81_vcc_net, cin=>nx15210z17);
   ix15210z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx15210z17, dataa=>a(1), datab=>a(0), datad=>
      nx_mult_32_81_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_13 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_13 ;

architecture IMPLEMENTATION of add_16_13 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_13_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_13_vcc_net, cin=>nx2247z19);
   nx_add_16_13_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_13_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_13_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_13_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_13_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_82 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_82 ;

architecture IMPLEMENTATION of mult_32_82 is 
   signal nx8231z2, nx8231z13, nx8231z12, nx8231z11, nx8231z10, nx8231z9, 
      nx8231z8, nx8231z7, nx8231z6, nx8231z5, nx8231z4, nx8231z3, 
      nx_mult_32_82_vcc_net: std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(24) <= a(31) ;
   d(23) <= a(14) ;
   d(22) <= a(31) ;
   d(21) <= a(14) ;
   modgen_add_15_ix8231z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx8231z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_82_vcc_net, cin=>nx8231z3);
   nx_mult_32_82_vcc_net <= '1';
   modgen_add_15_ix8231z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx8231z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_82_vcc_net, cin=>nx8231z4);
   modgen_add_15_ix8231z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx8231z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_82_vcc_net, cin=>nx8231z5);
   modgen_add_15_ix8231z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx8231z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_82_vcc_net, cin=>nx8231z6);
   modgen_add_15_ix8231z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx8231z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_82_vcc_net, cin=>nx8231z7);
   modgen_add_15_ix8231z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx8231z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_82_vcc_net, cin=>nx8231z8);
   modgen_add_15_ix8231z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx8231z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_82_vcc_net, cin=>nx8231z9);
   modgen_add_15_ix8231z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx8231z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_82_vcc_net, cin=>nx8231z10);
   modgen_add_15_ix8231z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx8231z10, dataa=>a(4), datab=>a(3), datad=>
      nx_mult_32_82_vcc_net, cin=>nx8231z11);
   modgen_add_15_ix8231z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx8231z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_82_vcc_net, cin=>nx8231z12);
   modgen_add_15_ix8231z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx8231z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_82_vcc_net, cin=>nx8231z13);
   modgen_add_15_ix8231z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx8231z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_82_vcc_net);
   ix8231z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), datad=>nx_mult_32_82_vcc_net, cin=>
      nx8231z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_14 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_14 ;

architecture IMPLEMENTATION of add_16_14 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_14_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_14_vcc_net, cin=>nx2247z19);
   nx_add_16_14_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_14_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_14_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_14_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_14_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_83 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_83 ;

architecture IMPLEMENTATION of mult_32_83 is 
   signal d_13_EXMPLR2023, nx12219z2, nx12219z15, nx12219z14, nx12219z13, 
      nx12219z12, nx12219z11, nx12219z10, nx12219z9, nx12219z8, nx12219z7, 
      nx12219z6, nx12219z5, nx12219z4, nx12219z3, nx_mult_32_83_vcc_net: 
   std_logic ;

begin
   d(27) <= a(31) ;
   d(26) <= a(31) ;
   d(25) <= a(31) ;
   d(23) <= d_13_EXMPLR2023 ;
   d(22) <= d_13_EXMPLR2023 ;
   ix12219z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(24), datad=>nx_mult_32_83_vcc_net, cin=>
      nx12219z2);
   nx_mult_32_83_vcc_net <= '1';
   ix12219z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_13_EXMPLR2023, cout=>nx12219z2, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_83_vcc_net, cin=>nx12219z3);
   ix12219z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(21), cout=>nx12219z3, dataa=>a(31), datab=>
      a(14), datad=>nx_mult_32_83_vcc_net, cin=>nx12219z4);
   ix12219z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(20), cout=>nx12219z4, dataa=>a(14), datab=>
      a(11), datad=>nx_mult_32_83_vcc_net, cin=>nx12219z5);
   ix12219z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(19), cout=>nx12219z5, dataa=>a(14), datab=>
      a(10), datad=>nx_mult_32_83_vcc_net, cin=>nx12219z6);
   ix12219z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), cout=>nx12219z6, dataa=>a(14), datab=>a(9), 
      datad=>nx_mult_32_83_vcc_net, cin=>nx12219z7);
   ix12219z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(17), cout=>nx12219z7, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_83_vcc_net, cin=>nx12219z8);
   ix12219z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), cout=>nx12219z8, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_83_vcc_net, cin=>nx12219z9);
   ix12219z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx12219z9, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_83_vcc_net, cin=>nx12219z10);
   ix12219z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx12219z10, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_83_vcc_net, cin=>nx12219z11);
   ix12219z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx12219z11, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_83_vcc_net, cin=>nx12219z12);
   ix12219z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx12219z12, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_83_vcc_net, cin=>nx12219z13);
   ix12219z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx12219z13, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_83_vcc_net, cin=>nx12219z14);
   ix12219z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx12219z14, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_83_vcc_net, cin=>nx12219z15);
   ix12219z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx12219z15, dataa=>a(0), datab=>a(3), datad=>
      nx_mult_32_83_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_15 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_15 ;

architecture IMPLEMENTATION of add_16_15 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_15_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_15_vcc_net, cin=>nx2247z19);
   nx_add_16_15_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_15_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_15_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_15_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_15_vcc_net, cin=>nx2247z16);
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

architecture low_pass of fir is 
   component mult_32_67
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_68
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
   component mult_32_69
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_70
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_71
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_3
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_72
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_4
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_73
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_5
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_74
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_6
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_75
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_7
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_76
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_8
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_77
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_9
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_78
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_10
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_79
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_11
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_80
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_12
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_81
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_13
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_82
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_14
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component mult_32_83
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_15
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal taps_1_15, taps_1_10, taps_1_9, taps_1_8, taps_1_7, taps_1_6, 
      taps_1_5, taps_1_4, taps_1_3, taps_1_2, taps_1_1, taps_1_0, taps_2_15, 
      taps_2_10, taps_2_9, taps_2_8, taps_2_7, taps_2_6, taps_2_5, taps_2_4, 
      taps_2_3, taps_2_2, taps_2_1, taps_2_0, taps_3_15, taps_3_10, taps_3_9, 
      taps_3_8, taps_3_7, taps_3_6, taps_3_5, taps_3_4, taps_3_3, taps_3_2, 
      taps_3_1, taps_3_0, taps_4_15, taps_4_10, taps_4_9, taps_4_8, taps_4_7, 
      taps_4_6, taps_4_5, taps_4_4, taps_4_3, taps_4_2, taps_4_1, taps_4_0, 
      taps_5_15, taps_5_10, taps_5_9, taps_5_8, taps_5_7, taps_5_6, taps_5_5, 
      taps_5_4, taps_5_3, taps_5_2, taps_5_1, taps_5_0, taps_6_15, taps_6_10, 
      taps_6_9, taps_6_8, taps_6_7, taps_6_6, taps_6_5, taps_6_4, taps_6_3, 
      taps_6_2, taps_6_1, taps_6_0, taps_7_15, taps_7_10, taps_7_9, taps_7_8, 
      taps_7_7, taps_7_6, taps_7_5, taps_7_4, taps_7_3, taps_7_2, taps_7_1, 
      taps_7_0, taps_8_15, taps_8_10, taps_8_9, taps_8_8, taps_8_7, taps_8_6, 
      taps_8_5, taps_8_4, taps_8_3, taps_8_2, taps_8_1, taps_8_0, taps_9_15, 
      taps_9_10, taps_9_9, taps_9_8, taps_9_7, taps_9_6, taps_9_5, taps_9_4, 
      taps_9_3, taps_9_2, taps_9_1, taps_9_0, taps_10_15, taps_10_10, 
      taps_10_9, taps_10_8, taps_10_7, taps_10_6, taps_10_5, taps_10_4, 
      taps_10_3, taps_10_2, taps_10_1, taps_10_0, taps_11_15, taps_11_10, 
      taps_11_9, taps_11_8, taps_11_7, taps_11_6, taps_11_5, taps_11_4, 
      taps_11_3, taps_11_2, taps_11_1, taps_11_0, taps_12_15, taps_12_10, 
      taps_12_9, taps_12_8, taps_12_7, taps_12_6, taps_12_5, taps_12_4, 
      taps_12_3, taps_12_2, taps_12_1, taps_12_0, taps_13_15, taps_13_10, 
      taps_13_9, taps_13_8, taps_13_7, taps_13_6, taps_13_5, taps_13_4, 
      taps_13_3, taps_13_2, taps_13_1, taps_13_0, taps_14_15, taps_14_10, 
      taps_14_9, taps_14_8, taps_14_7, taps_14_6, taps_14_5, taps_14_4, 
      taps_14_3, taps_14_2, taps_14_1, taps_14_0, taps_15_15, taps_15_10, 
      taps_15_9, taps_15_8, taps_15_7, taps_15_6, taps_15_5, taps_15_4, 
      taps_15_3, taps_15_2, taps_15_1, taps_15_0, taps_16_15, taps_16_10, 
      taps_16_9, taps_16_8, taps_16_7, taps_16_6, taps_16_5, taps_16_4, 
      taps_16_3, taps_16_2, taps_16_1, taps_16_0: std_logic ;
   
   signal sums_1: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_2: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_3: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_4: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_5: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_6: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_7: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_8: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_9: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_10: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_11: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_12: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_13: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_14: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_15: std_logic_vector (15 DOWNTO 0) ;
   
   signal sums_16: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_2_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_3_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_4_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_5_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_6_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_7_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_8_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_9_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_10_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_11_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_12_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_13_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_14_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_15_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_16_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal tap_array_17_filter_block_tap_next_15, 
      tap_array_17_filter_block_tap_next_10, 
      tap_array_17_filter_block_tap_next_9, 
      tap_array_17_filter_block_tap_next_8, 
      tap_array_17_filter_block_tap_next_7, 
      tap_array_17_filter_block_tap_next_6, 
      tap_array_17_filter_block_tap_next_5, 
      tap_array_17_filter_block_tap_next_4, 
      tap_array_17_filter_block_tap_next_3, 
      tap_array_17_filter_block_tap_next_2, 
      tap_array_17_filter_block_tap_next_1, 
      tap_array_17_filter_block_tap_next_0: std_logic ;
   
   signal tap_array_17_filter_block_prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (1159 downto 0 );

begin
   tap_array_1_filter_block_prod_mults28_0 : mult_32_67 port map ( a(31)=>
      taps_1_15, a(30)=>DANGLING(0), a(29)=>DANGLING(1), a(28)=>DANGLING(2), 
      a(27)=>DANGLING(3), a(26)=>DANGLING(4), a(25)=>DANGLING(5), a(24)=>
      DANGLING(6), a(23)=>DANGLING(7), a(22)=>DANGLING(8), a(21)=>DANGLING(9
      ), a(20)=>DANGLING(10), a(19)=>DANGLING(11), a(18)=>DANGLING(12), 
      a(17)=>DANGLING(13), a(16)=>DANGLING(14), a(15)=>DANGLING(15), a(14)=>
      taps_1_15, a(13)=>DANGLING(16), a(12)=>DANGLING(17), a(11)=>taps_1_15, 
      a(10)=>taps_1_10, a(9)=>taps_1_9, a(8)=>taps_1_8, a(7)=>taps_1_7, a(6)
      =>taps_1_6, a(5)=>taps_1_5, a(4)=>taps_1_4, a(3)=>taps_1_3, a(2)=>
      taps_1_2, a(1)=>taps_1_1, a(0)=>taps_1_0, b(31)=>DANGLING(18), b(30)=>
      DANGLING(19), b(29)=>DANGLING(20), b(28)=>DANGLING(21), b(27)=>
      DANGLING(22), b(26)=>DANGLING(23), b(25)=>DANGLING(24), b(24)=>
      DANGLING(25), b(23)=>DANGLING(26), b(22)=>DANGLING(27), b(21)=>
      DANGLING(28), b(20)=>DANGLING(29), b(19)=>DANGLING(30), b(18)=>
      DANGLING(31), b(17)=>DANGLING(32), b(16)=>DANGLING(33), b(15)=>
      DANGLING(34), b(14)=>DANGLING(35), b(13)=>DANGLING(36), b(12)=>
      DANGLING(37), b(11)=>DANGLING(38), b(10)=>DANGLING(39), b(9)=>DANGLING
      (40), b(8)=>DANGLING(41), b(7)=>DANGLING(42), b(6)=>DANGLING(43), b(5)
      =>DANGLING(44), b(4)=>DANGLING(45), b(3)=>DANGLING(46), b(2)=>DANGLING
      (47), b(1)=>DANGLING(48), b(0)=>DANGLING(49), d(31)=>DANGLING(50), 
      d(30)=>DANGLING(51), d(29)=>DANGLING(52), d(28)=>DANGLING(53), d(27)=>
      sums_1(15), d(26)=>sums_1(14), d(25)=>sums_1(13), d(24)=>sums_1(12), 
      d(23)=>sums_1(11), d(22)=>sums_1(10), d(21)=>sums_1(9), d(20)=>
      sums_1(8), d(19)=>sums_1(7), d(18)=>sums_1(6), d(17)=>sums_1(5), d(16)
      =>sums_1(4), d(15)=>sums_1(3), d(14)=>sums_1(2), d(13)=>sums_1(1), 
      d(12)=>sums_1(0), d(11)=>DANGLING(54), d(10)=>DANGLING(55), d(9)=>
      DANGLING(56), d(8)=>DANGLING(57), d(7)=>DANGLING(58), d(6)=>DANGLING(
      59), d(5)=>DANGLING(60), d(4)=>DANGLING(61), d(3)=>DANGLING(62), d(2)
      =>DANGLING(63), d(1)=>DANGLING(64), d(0)=>DANGLING(65));
   tap_array_2_filter_block_prod_mults28_0 : mult_32_68 port map ( a(31)=>
      taps_2_15, a(30)=>DANGLING(66), a(29)=>DANGLING(67), a(28)=>DANGLING(
      68), a(27)=>DANGLING(69), a(26)=>DANGLING(70), a(25)=>DANGLING(71), 
      a(24)=>DANGLING(72), a(23)=>DANGLING(73), a(22)=>DANGLING(74), a(21)=>
      DANGLING(75), a(20)=>DANGLING(76), a(19)=>DANGLING(77), a(18)=>
      DANGLING(78), a(17)=>DANGLING(79), a(16)=>DANGLING(80), a(15)=>
      DANGLING(81), a(14)=>taps_2_15, a(13)=>DANGLING(82), a(12)=>DANGLING(
      83), a(11)=>taps_2_15, a(10)=>taps_2_10, a(9)=>taps_2_9, a(8)=>
      taps_2_8, a(7)=>taps_2_7, a(6)=>taps_2_6, a(5)=>taps_2_5, a(4)=>
      taps_2_4, a(3)=>taps_2_3, a(2)=>taps_2_2, a(1)=>taps_2_1, a(0)=>
      taps_2_0, b(31)=>DANGLING(84), b(30)=>DANGLING(85), b(29)=>DANGLING(86
      ), b(28)=>DANGLING(87), b(27)=>DANGLING(88), b(26)=>DANGLING(89), 
      b(25)=>DANGLING(90), b(24)=>DANGLING(91), b(23)=>DANGLING(92), b(22)=>
      DANGLING(93), b(21)=>DANGLING(94), b(20)=>DANGLING(95), b(19)=>
      DANGLING(96), b(18)=>DANGLING(97), b(17)=>DANGLING(98), b(16)=>
      DANGLING(99), b(15)=>DANGLING(100), b(14)=>DANGLING(101), b(13)=>
      DANGLING(102), b(12)=>DANGLING(103), b(11)=>DANGLING(104), b(10)=>
      DANGLING(105), b(9)=>DANGLING(106), b(8)=>DANGLING(107), b(7)=>
      DANGLING(108), b(6)=>DANGLING(109), b(5)=>DANGLING(110), b(4)=>
      DANGLING(111), b(3)=>DANGLING(112), b(2)=>DANGLING(113), b(1)=>
      DANGLING(114), b(0)=>DANGLING(115), d(31)=>DANGLING(116), d(30)=>
      DANGLING(117), d(29)=>DANGLING(118), d(28)=>DANGLING(119), d(27)=>
      tap_array_2_filter_block_prod(15), d(26)=>
      tap_array_2_filter_block_prod(14), d(25)=>
      tap_array_2_filter_block_prod(13), d(24)=>
      tap_array_2_filter_block_prod(12), d(23)=>
      tap_array_2_filter_block_prod(11), d(22)=>
      tap_array_2_filter_block_prod(10), d(21)=>
      tap_array_2_filter_block_prod(9), d(20)=>
      tap_array_2_filter_block_prod(8), d(19)=>
      tap_array_2_filter_block_prod(7), d(18)=>
      tap_array_2_filter_block_prod(6), d(17)=>
      tap_array_2_filter_block_prod(5), d(16)=>
      tap_array_2_filter_block_prod(4), d(15)=>
      tap_array_2_filter_block_prod(3), d(14)=>
      tap_array_2_filter_block_prod(2), d(13)=>
      tap_array_2_filter_block_prod(1), d(12)=>
      tap_array_2_filter_block_prod(0), d(11)=>DANGLING(120), d(10)=>
      DANGLING(121), d(9)=>DANGLING(122), d(8)=>DANGLING(123), d(7)=>
      DANGLING(124), d(6)=>DANGLING(125), d(5)=>DANGLING(126), d(4)=>
      DANGLING(127), d(3)=>DANGLING(128), d(2)=>DANGLING(129), d(1)=>
      DANGLING(130), d(0)=>DANGLING(131));
   tap_array_2_filter_block_next_sum_add16_0 : add_16_0 port map ( cin=>
      DANGLING(132), a(15)=>tap_array_2_filter_block_prod(15), a(14)=>
      tap_array_2_filter_block_prod(14), a(13)=>
      tap_array_2_filter_block_prod(13), a(12)=>
      tap_array_2_filter_block_prod(12), a(11)=>
      tap_array_2_filter_block_prod(11), a(10)=>
      tap_array_2_filter_block_prod(10), a(9)=>
      tap_array_2_filter_block_prod(9), a(8)=>
      tap_array_2_filter_block_prod(8), a(7)=>
      tap_array_2_filter_block_prod(7), a(6)=>
      tap_array_2_filter_block_prod(6), a(5)=>
      tap_array_2_filter_block_prod(5), a(4)=>
      tap_array_2_filter_block_prod(4), a(3)=>
      tap_array_2_filter_block_prod(3), a(2)=>
      tap_array_2_filter_block_prod(2), a(1)=>
      tap_array_2_filter_block_prod(1), a(0)=>
      tap_array_2_filter_block_prod(0), b(15)=>sums_1(15), b(14)=>sums_1(14), 
      b(13)=>sums_1(13), b(12)=>sums_1(12), b(11)=>sums_1(11), b(10)=>
      sums_1(10), b(9)=>sums_1(9), b(8)=>sums_1(8), b(7)=>sums_1(7), b(6)=>
      sums_1(6), b(5)=>sums_1(5), b(4)=>sums_1(4), b(3)=>sums_1(3), b(2)=>
      sums_1(2), b(1)=>sums_1(1), b(0)=>sums_1(0), d(15)=>sums_2(15), d(14)
      =>sums_2(14), d(13)=>sums_2(13), d(12)=>sums_2(12), d(11)=>sums_2(11), 
      d(10)=>sums_2(10), d(9)=>sums_2(9), d(8)=>sums_2(8), d(7)=>sums_2(7), 
      d(6)=>sums_2(6), d(5)=>sums_2(5), d(4)=>sums_2(4), d(3)=>sums_2(3), 
      d(2)=>sums_2(2), d(1)=>sums_2(1), d(0)=>sums_2(0), cout=>DANGLING(133)
   );
   tap_array_3_filter_block_prod_mults28_0 : mult_32_69 port map ( a(31)=>
      taps_3_15, a(30)=>DANGLING(134), a(29)=>DANGLING(135), a(28)=>DANGLING
      (136), a(27)=>DANGLING(137), a(26)=>DANGLING(138), a(25)=>DANGLING(139
      ), a(24)=>DANGLING(140), a(23)=>DANGLING(141), a(22)=>DANGLING(142), 
      a(21)=>DANGLING(143), a(20)=>DANGLING(144), a(19)=>DANGLING(145), 
      a(18)=>DANGLING(146), a(17)=>DANGLING(147), a(16)=>DANGLING(148), 
      a(15)=>DANGLING(149), a(14)=>taps_3_15, a(13)=>DANGLING(150), a(12)=>
      DANGLING(151), a(11)=>taps_3_15, a(10)=>taps_3_10, a(9)=>taps_3_9, 
      a(8)=>taps_3_8, a(7)=>taps_3_7, a(6)=>taps_3_6, a(5)=>taps_3_5, a(4)=>
      taps_3_4, a(3)=>taps_3_3, a(2)=>taps_3_2, a(1)=>taps_3_1, a(0)=>
      taps_3_0, b(31)=>DANGLING(152), b(30)=>DANGLING(153), b(29)=>DANGLING(
      154), b(28)=>DANGLING(155), b(27)=>DANGLING(156), b(26)=>DANGLING(157), 
      b(25)=>DANGLING(158), b(24)=>DANGLING(159), b(23)=>DANGLING(160), 
      b(22)=>DANGLING(161), b(21)=>DANGLING(162), b(20)=>DANGLING(163), 
      b(19)=>DANGLING(164), b(18)=>DANGLING(165), b(17)=>DANGLING(166), 
      b(16)=>DANGLING(167), b(15)=>DANGLING(168), b(14)=>DANGLING(169), 
      b(13)=>DANGLING(170), b(12)=>DANGLING(171), b(11)=>DANGLING(172), 
      b(10)=>DANGLING(173), b(9)=>DANGLING(174), b(8)=>DANGLING(175), b(7)=>
      DANGLING(176), b(6)=>DANGLING(177), b(5)=>DANGLING(178), b(4)=>
      DANGLING(179), b(3)=>DANGLING(180), b(2)=>DANGLING(181), b(1)=>
      DANGLING(182), b(0)=>DANGLING(183), d(31)=>DANGLING(184), d(30)=>
      DANGLING(185), d(29)=>DANGLING(186), d(28)=>DANGLING(187), d(27)=>
      tap_array_3_filter_block_prod(15), d(26)=>
      tap_array_3_filter_block_prod(14), d(25)=>
      tap_array_3_filter_block_prod(13), d(24)=>
      tap_array_3_filter_block_prod(12), d(23)=>
      tap_array_3_filter_block_prod(11), d(22)=>
      tap_array_3_filter_block_prod(10), d(21)=>
      tap_array_3_filter_block_prod(9), d(20)=>
      tap_array_3_filter_block_prod(8), d(19)=>
      tap_array_3_filter_block_prod(7), d(18)=>
      tap_array_3_filter_block_prod(6), d(17)=>
      tap_array_3_filter_block_prod(5), d(16)=>
      tap_array_3_filter_block_prod(4), d(15)=>
      tap_array_3_filter_block_prod(3), d(14)=>
      tap_array_3_filter_block_prod(2), d(13)=>
      tap_array_3_filter_block_prod(1), d(12)=>
      tap_array_3_filter_block_prod(0), d(11)=>DANGLING(188), d(10)=>
      DANGLING(189), d(9)=>DANGLING(190), d(8)=>DANGLING(191), d(7)=>
      DANGLING(192), d(6)=>DANGLING(193), d(5)=>DANGLING(194), d(4)=>
      DANGLING(195), d(3)=>DANGLING(196), d(2)=>DANGLING(197), d(1)=>
      DANGLING(198), d(0)=>DANGLING(199));
   tap_array_3_filter_block_next_sum_add16_0 : add_16_1 port map ( cin=>
      DANGLING(200), a(15)=>tap_array_3_filter_block_prod(15), a(14)=>
      tap_array_3_filter_block_prod(14), a(13)=>
      tap_array_3_filter_block_prod(13), a(12)=>
      tap_array_3_filter_block_prod(12), a(11)=>
      tap_array_3_filter_block_prod(11), a(10)=>
      tap_array_3_filter_block_prod(10), a(9)=>
      tap_array_3_filter_block_prod(9), a(8)=>
      tap_array_3_filter_block_prod(8), a(7)=>
      tap_array_3_filter_block_prod(7), a(6)=>
      tap_array_3_filter_block_prod(6), a(5)=>
      tap_array_3_filter_block_prod(5), a(4)=>
      tap_array_3_filter_block_prod(4), a(3)=>
      tap_array_3_filter_block_prod(3), a(2)=>
      tap_array_3_filter_block_prod(2), a(1)=>
      tap_array_3_filter_block_prod(1), a(0)=>
      tap_array_3_filter_block_prod(0), b(15)=>sums_2(15), b(14)=>sums_2(14), 
      b(13)=>sums_2(13), b(12)=>sums_2(12), b(11)=>sums_2(11), b(10)=>
      sums_2(10), b(9)=>sums_2(9), b(8)=>sums_2(8), b(7)=>sums_2(7), b(6)=>
      sums_2(6), b(5)=>sums_2(5), b(4)=>sums_2(4), b(3)=>sums_2(3), b(2)=>
      sums_2(2), b(1)=>sums_2(1), b(0)=>sums_2(0), d(15)=>sums_3(15), d(14)
      =>sums_3(14), d(13)=>sums_3(13), d(12)=>sums_3(12), d(11)=>sums_3(11), 
      d(10)=>sums_3(10), d(9)=>sums_3(9), d(8)=>sums_3(8), d(7)=>sums_3(7), 
      d(6)=>sums_3(6), d(5)=>sums_3(5), d(4)=>sums_3(4), d(3)=>sums_3(3), 
      d(2)=>sums_3(2), d(1)=>sums_3(1), d(0)=>sums_3(0), cout=>DANGLING(201)
   );
   tap_array_4_filter_block_prod_mults28_0 : mult_32_70 port map ( a(31)=>
      taps_4_15, a(30)=>DANGLING(202), a(29)=>DANGLING(203), a(28)=>DANGLING
      (204), a(27)=>DANGLING(205), a(26)=>DANGLING(206), a(25)=>DANGLING(207
      ), a(24)=>DANGLING(208), a(23)=>DANGLING(209), a(22)=>DANGLING(210), 
      a(21)=>DANGLING(211), a(20)=>DANGLING(212), a(19)=>DANGLING(213), 
      a(18)=>DANGLING(214), a(17)=>DANGLING(215), a(16)=>DANGLING(216), 
      a(15)=>DANGLING(217), a(14)=>taps_4_15, a(13)=>DANGLING(218), a(12)=>
      DANGLING(219), a(11)=>taps_4_15, a(10)=>taps_4_10, a(9)=>taps_4_9, 
      a(8)=>taps_4_8, a(7)=>taps_4_7, a(6)=>taps_4_6, a(5)=>taps_4_5, a(4)=>
      taps_4_4, a(3)=>taps_4_3, a(2)=>DANGLING(220), a(1)=>DANGLING(221), 
      a(0)=>DANGLING(222), b(31)=>DANGLING(223), b(30)=>DANGLING(224), b(29)
      =>DANGLING(225), b(28)=>DANGLING(226), b(27)=>DANGLING(227), b(26)=>
      DANGLING(228), b(25)=>DANGLING(229), b(24)=>DANGLING(230), b(23)=>
      DANGLING(231), b(22)=>DANGLING(232), b(21)=>DANGLING(233), b(20)=>
      DANGLING(234), b(19)=>DANGLING(235), b(18)=>DANGLING(236), b(17)=>
      DANGLING(237), b(16)=>DANGLING(238), b(15)=>DANGLING(239), b(14)=>
      DANGLING(240), b(13)=>DANGLING(241), b(12)=>DANGLING(242), b(11)=>
      DANGLING(243), b(10)=>DANGLING(244), b(9)=>DANGLING(245), b(8)=>
      DANGLING(246), b(7)=>DANGLING(247), b(6)=>DANGLING(248), b(5)=>
      DANGLING(249), b(4)=>DANGLING(250), b(3)=>DANGLING(251), b(2)=>
      DANGLING(252), b(1)=>DANGLING(253), b(0)=>DANGLING(254), d(31)=>
      DANGLING(255), d(30)=>DANGLING(256), d(29)=>DANGLING(257), d(28)=>
      DANGLING(258), d(27)=>tap_array_4_filter_block_prod(15), d(26)=>
      tap_array_4_filter_block_prod(14), d(25)=>
      tap_array_4_filter_block_prod(13), d(24)=>
      tap_array_4_filter_block_prod(12), d(23)=>
      tap_array_4_filter_block_prod(11), d(22)=>
      tap_array_4_filter_block_prod(10), d(21)=>
      tap_array_4_filter_block_prod(9), d(20)=>
      tap_array_4_filter_block_prod(8), d(19)=>
      tap_array_4_filter_block_prod(7), d(18)=>
      tap_array_4_filter_block_prod(6), d(17)=>
      tap_array_4_filter_block_prod(5), d(16)=>
      tap_array_4_filter_block_prod(4), d(15)=>
      tap_array_4_filter_block_prod(3), d(14)=>
      tap_array_4_filter_block_prod(2), d(13)=>
      tap_array_4_filter_block_prod(1), d(12)=>
      tap_array_4_filter_block_prod(0), d(11)=>DANGLING(259), d(10)=>
      DANGLING(260), d(9)=>DANGLING(261), d(8)=>DANGLING(262), d(7)=>
      DANGLING(263), d(6)=>DANGLING(264), d(5)=>DANGLING(265), d(4)=>
      DANGLING(266), d(3)=>DANGLING(267), d(2)=>DANGLING(268), d(1)=>
      DANGLING(269), d(0)=>DANGLING(270));
   tap_array_4_filter_block_next_sum_add16_0 : add_16_2 port map ( cin=>
      DANGLING(271), a(15)=>tap_array_4_filter_block_prod(15), a(14)=>
      tap_array_4_filter_block_prod(14), a(13)=>
      tap_array_4_filter_block_prod(13), a(12)=>
      tap_array_4_filter_block_prod(12), a(11)=>
      tap_array_4_filter_block_prod(11), a(10)=>
      tap_array_4_filter_block_prod(10), a(9)=>
      tap_array_4_filter_block_prod(9), a(8)=>
      tap_array_4_filter_block_prod(8), a(7)=>
      tap_array_4_filter_block_prod(7), a(6)=>
      tap_array_4_filter_block_prod(6), a(5)=>
      tap_array_4_filter_block_prod(5), a(4)=>
      tap_array_4_filter_block_prod(4), a(3)=>
      tap_array_4_filter_block_prod(3), a(2)=>
      tap_array_4_filter_block_prod(2), a(1)=>
      tap_array_4_filter_block_prod(1), a(0)=>
      tap_array_4_filter_block_prod(0), b(15)=>sums_3(15), b(14)=>sums_3(14), 
      b(13)=>sums_3(13), b(12)=>sums_3(12), b(11)=>sums_3(11), b(10)=>
      sums_3(10), b(9)=>sums_3(9), b(8)=>sums_3(8), b(7)=>sums_3(7), b(6)=>
      sums_3(6), b(5)=>sums_3(5), b(4)=>sums_3(4), b(3)=>sums_3(3), b(2)=>
      sums_3(2), b(1)=>sums_3(1), b(0)=>sums_3(0), d(15)=>sums_4(15), d(14)
      =>sums_4(14), d(13)=>sums_4(13), d(12)=>sums_4(12), d(11)=>sums_4(11), 
      d(10)=>sums_4(10), d(9)=>sums_4(9), d(8)=>sums_4(8), d(7)=>sums_4(7), 
      d(6)=>sums_4(6), d(5)=>sums_4(5), d(4)=>sums_4(4), d(3)=>sums_4(3), 
      d(2)=>sums_4(2), d(1)=>sums_4(1), d(0)=>sums_4(0), cout=>DANGLING(272)
   );
   tap_array_5_filter_block_prod_mults28_0 : mult_32_71 port map ( a(31)=>
      taps_5_15, a(30)=>DANGLING(273), a(29)=>DANGLING(274), a(28)=>DANGLING
      (275), a(27)=>DANGLING(276), a(26)=>DANGLING(277), a(25)=>DANGLING(278
      ), a(24)=>DANGLING(279), a(23)=>DANGLING(280), a(22)=>DANGLING(281), 
      a(21)=>DANGLING(282), a(20)=>DANGLING(283), a(19)=>DANGLING(284), 
      a(18)=>DANGLING(285), a(17)=>DANGLING(286), a(16)=>DANGLING(287), 
      a(15)=>DANGLING(288), a(14)=>taps_5_15, a(13)=>DANGLING(289), a(12)=>
      DANGLING(290), a(11)=>taps_5_15, a(10)=>taps_5_10, a(9)=>taps_5_9, 
      a(8)=>taps_5_8, a(7)=>taps_5_7, a(6)=>taps_5_6, a(5)=>taps_5_5, a(4)=>
      taps_5_4, a(3)=>taps_5_3, a(2)=>taps_5_2, a(1)=>taps_5_1, a(0)=>
      taps_5_0, b(31)=>DANGLING(291), b(30)=>DANGLING(292), b(29)=>DANGLING(
      293), b(28)=>DANGLING(294), b(27)=>DANGLING(295), b(26)=>DANGLING(296), 
      b(25)=>DANGLING(297), b(24)=>DANGLING(298), b(23)=>DANGLING(299), 
      b(22)=>DANGLING(300), b(21)=>DANGLING(301), b(20)=>DANGLING(302), 
      b(19)=>DANGLING(303), b(18)=>DANGLING(304), b(17)=>DANGLING(305), 
      b(16)=>DANGLING(306), b(15)=>DANGLING(307), b(14)=>DANGLING(308), 
      b(13)=>DANGLING(309), b(12)=>DANGLING(310), b(11)=>DANGLING(311), 
      b(10)=>DANGLING(312), b(9)=>DANGLING(313), b(8)=>DANGLING(314), b(7)=>
      DANGLING(315), b(6)=>DANGLING(316), b(5)=>DANGLING(317), b(4)=>
      DANGLING(318), b(3)=>DANGLING(319), b(2)=>DANGLING(320), b(1)=>
      DANGLING(321), b(0)=>DANGLING(322), d(31)=>DANGLING(323), d(30)=>
      DANGLING(324), d(29)=>DANGLING(325), d(28)=>DANGLING(326), d(27)=>
      tap_array_5_filter_block_prod(15), d(26)=>
      tap_array_5_filter_block_prod(14), d(25)=>
      tap_array_5_filter_block_prod(13), d(24)=>
      tap_array_5_filter_block_prod(12), d(23)=>
      tap_array_5_filter_block_prod(11), d(22)=>
      tap_array_5_filter_block_prod(10), d(21)=>
      tap_array_5_filter_block_prod(9), d(20)=>
      tap_array_5_filter_block_prod(8), d(19)=>
      tap_array_5_filter_block_prod(7), d(18)=>
      tap_array_5_filter_block_prod(6), d(17)=>
      tap_array_5_filter_block_prod(5), d(16)=>
      tap_array_5_filter_block_prod(4), d(15)=>
      tap_array_5_filter_block_prod(3), d(14)=>
      tap_array_5_filter_block_prod(2), d(13)=>
      tap_array_5_filter_block_prod(1), d(12)=>
      tap_array_5_filter_block_prod(0), d(11)=>DANGLING(327), d(10)=>
      DANGLING(328), d(9)=>DANGLING(329), d(8)=>DANGLING(330), d(7)=>
      DANGLING(331), d(6)=>DANGLING(332), d(5)=>DANGLING(333), d(4)=>
      DANGLING(334), d(3)=>DANGLING(335), d(2)=>DANGLING(336), d(1)=>
      DANGLING(337), d(0)=>DANGLING(338));
   tap_array_5_filter_block_next_sum_add16_0 : add_16_3 port map ( cin=>
      DANGLING(339), a(15)=>tap_array_5_filter_block_prod(15), a(14)=>
      tap_array_5_filter_block_prod(14), a(13)=>
      tap_array_5_filter_block_prod(13), a(12)=>
      tap_array_5_filter_block_prod(12), a(11)=>
      tap_array_5_filter_block_prod(11), a(10)=>
      tap_array_5_filter_block_prod(10), a(9)=>
      tap_array_5_filter_block_prod(9), a(8)=>
      tap_array_5_filter_block_prod(8), a(7)=>
      tap_array_5_filter_block_prod(7), a(6)=>
      tap_array_5_filter_block_prod(6), a(5)=>
      tap_array_5_filter_block_prod(5), a(4)=>
      tap_array_5_filter_block_prod(4), a(3)=>
      tap_array_5_filter_block_prod(3), a(2)=>
      tap_array_5_filter_block_prod(2), a(1)=>
      tap_array_5_filter_block_prod(1), a(0)=>
      tap_array_5_filter_block_prod(0), b(15)=>sums_4(15), b(14)=>sums_4(14), 
      b(13)=>sums_4(13), b(12)=>sums_4(12), b(11)=>sums_4(11), b(10)=>
      sums_4(10), b(9)=>sums_4(9), b(8)=>sums_4(8), b(7)=>sums_4(7), b(6)=>
      sums_4(6), b(5)=>sums_4(5), b(4)=>sums_4(4), b(3)=>sums_4(3), b(2)=>
      sums_4(2), b(1)=>sums_4(1), b(0)=>sums_4(0), d(15)=>sums_5(15), d(14)
      =>sums_5(14), d(13)=>sums_5(13), d(12)=>sums_5(12), d(11)=>sums_5(11), 
      d(10)=>sums_5(10), d(9)=>sums_5(9), d(8)=>sums_5(8), d(7)=>sums_5(7), 
      d(6)=>sums_5(6), d(5)=>sums_5(5), d(4)=>sums_5(4), d(3)=>sums_5(3), 
      d(2)=>sums_5(2), d(1)=>sums_5(1), d(0)=>sums_5(0), cout=>DANGLING(340)
   );
   tap_array_6_filter_block_prod_mults28_0 : mult_32_72 port map ( a(31)=>
      taps_6_15, a(30)=>DANGLING(341), a(29)=>DANGLING(342), a(28)=>DANGLING
      (343), a(27)=>DANGLING(344), a(26)=>DANGLING(345), a(25)=>DANGLING(346
      ), a(24)=>DANGLING(347), a(23)=>DANGLING(348), a(22)=>DANGLING(349), 
      a(21)=>DANGLING(350), a(20)=>DANGLING(351), a(19)=>DANGLING(352), 
      a(18)=>DANGLING(353), a(17)=>DANGLING(354), a(16)=>DANGLING(355), 
      a(15)=>DANGLING(356), a(14)=>taps_6_15, a(13)=>DANGLING(357), a(12)=>
      DANGLING(358), a(11)=>taps_6_15, a(10)=>taps_6_10, a(9)=>taps_6_9, 
      a(8)=>taps_6_8, a(7)=>taps_6_7, a(6)=>taps_6_6, a(5)=>taps_6_5, a(4)=>
      taps_6_4, a(3)=>taps_6_3, a(2)=>taps_6_2, a(1)=>taps_6_1, a(0)=>
      taps_6_0, b(31)=>DANGLING(359), b(30)=>DANGLING(360), b(29)=>DANGLING(
      361), b(28)=>DANGLING(362), b(27)=>DANGLING(363), b(26)=>DANGLING(364), 
      b(25)=>DANGLING(365), b(24)=>DANGLING(366), b(23)=>DANGLING(367), 
      b(22)=>DANGLING(368), b(21)=>DANGLING(369), b(20)=>DANGLING(370), 
      b(19)=>DANGLING(371), b(18)=>DANGLING(372), b(17)=>DANGLING(373), 
      b(16)=>DANGLING(374), b(15)=>DANGLING(375), b(14)=>DANGLING(376), 
      b(13)=>DANGLING(377), b(12)=>DANGLING(378), b(11)=>DANGLING(379), 
      b(10)=>DANGLING(380), b(9)=>DANGLING(381), b(8)=>DANGLING(382), b(7)=>
      DANGLING(383), b(6)=>DANGLING(384), b(5)=>DANGLING(385), b(4)=>
      DANGLING(386), b(3)=>DANGLING(387), b(2)=>DANGLING(388), b(1)=>
      DANGLING(389), b(0)=>DANGLING(390), d(31)=>DANGLING(391), d(30)=>
      DANGLING(392), d(29)=>DANGLING(393), d(28)=>DANGLING(394), d(27)=>
      tap_array_6_filter_block_prod(15), d(26)=>
      tap_array_6_filter_block_prod(14), d(25)=>
      tap_array_6_filter_block_prod(13), d(24)=>
      tap_array_6_filter_block_prod(12), d(23)=>
      tap_array_6_filter_block_prod(11), d(22)=>
      tap_array_6_filter_block_prod(10), d(21)=>
      tap_array_6_filter_block_prod(9), d(20)=>
      tap_array_6_filter_block_prod(8), d(19)=>
      tap_array_6_filter_block_prod(7), d(18)=>
      tap_array_6_filter_block_prod(6), d(17)=>
      tap_array_6_filter_block_prod(5), d(16)=>
      tap_array_6_filter_block_prod(4), d(15)=>
      tap_array_6_filter_block_prod(3), d(14)=>
      tap_array_6_filter_block_prod(2), d(13)=>
      tap_array_6_filter_block_prod(1), d(12)=>
      tap_array_6_filter_block_prod(0), d(11)=>DANGLING(395), d(10)=>
      DANGLING(396), d(9)=>DANGLING(397), d(8)=>DANGLING(398), d(7)=>
      DANGLING(399), d(6)=>DANGLING(400), d(5)=>DANGLING(401), d(4)=>
      DANGLING(402), d(3)=>DANGLING(403), d(2)=>DANGLING(404), d(1)=>
      DANGLING(405), d(0)=>DANGLING(406));
   tap_array_6_filter_block_next_sum_add16_0 : add_16_4 port map ( cin=>
      DANGLING(407), a(15)=>tap_array_6_filter_block_prod(15), a(14)=>
      tap_array_6_filter_block_prod(14), a(13)=>
      tap_array_6_filter_block_prod(13), a(12)=>
      tap_array_6_filter_block_prod(12), a(11)=>
      tap_array_6_filter_block_prod(11), a(10)=>
      tap_array_6_filter_block_prod(10), a(9)=>
      tap_array_6_filter_block_prod(9), a(8)=>
      tap_array_6_filter_block_prod(8), a(7)=>
      tap_array_6_filter_block_prod(7), a(6)=>
      tap_array_6_filter_block_prod(6), a(5)=>
      tap_array_6_filter_block_prod(5), a(4)=>
      tap_array_6_filter_block_prod(4), a(3)=>
      tap_array_6_filter_block_prod(3), a(2)=>
      tap_array_6_filter_block_prod(2), a(1)=>
      tap_array_6_filter_block_prod(1), a(0)=>
      tap_array_6_filter_block_prod(0), b(15)=>sums_5(15), b(14)=>sums_5(14), 
      b(13)=>sums_5(13), b(12)=>sums_5(12), b(11)=>sums_5(11), b(10)=>
      sums_5(10), b(9)=>sums_5(9), b(8)=>sums_5(8), b(7)=>sums_5(7), b(6)=>
      sums_5(6), b(5)=>sums_5(5), b(4)=>sums_5(4), b(3)=>sums_5(3), b(2)=>
      sums_5(2), b(1)=>sums_5(1), b(0)=>sums_5(0), d(15)=>sums_6(15), d(14)
      =>sums_6(14), d(13)=>sums_6(13), d(12)=>sums_6(12), d(11)=>sums_6(11), 
      d(10)=>sums_6(10), d(9)=>sums_6(9), d(8)=>sums_6(8), d(7)=>sums_6(7), 
      d(6)=>sums_6(6), d(5)=>sums_6(5), d(4)=>sums_6(4), d(3)=>sums_6(3), 
      d(2)=>sums_6(2), d(1)=>sums_6(1), d(0)=>sums_6(0), cout=>DANGLING(408)
   );
   tap_array_7_filter_block_prod_mults28_0 : mult_32_73 port map ( a(31)=>
      taps_7_15, a(30)=>DANGLING(409), a(29)=>DANGLING(410), a(28)=>DANGLING
      (411), a(27)=>DANGLING(412), a(26)=>DANGLING(413), a(25)=>DANGLING(414
      ), a(24)=>DANGLING(415), a(23)=>DANGLING(416), a(22)=>DANGLING(417), 
      a(21)=>DANGLING(418), a(20)=>DANGLING(419), a(19)=>DANGLING(420), 
      a(18)=>DANGLING(421), a(17)=>DANGLING(422), a(16)=>DANGLING(423), 
      a(15)=>DANGLING(424), a(14)=>taps_7_15, a(13)=>DANGLING(425), a(12)=>
      DANGLING(426), a(11)=>taps_7_15, a(10)=>taps_7_10, a(9)=>taps_7_9, 
      a(8)=>taps_7_8, a(7)=>taps_7_7, a(6)=>taps_7_6, a(5)=>taps_7_5, a(4)=>
      taps_7_4, a(3)=>taps_7_3, a(2)=>taps_7_2, a(1)=>taps_7_1, a(0)=>
      taps_7_0, b(31)=>DANGLING(427), b(30)=>DANGLING(428), b(29)=>DANGLING(
      429), b(28)=>DANGLING(430), b(27)=>DANGLING(431), b(26)=>DANGLING(432), 
      b(25)=>DANGLING(433), b(24)=>DANGLING(434), b(23)=>DANGLING(435), 
      b(22)=>DANGLING(436), b(21)=>DANGLING(437), b(20)=>DANGLING(438), 
      b(19)=>DANGLING(439), b(18)=>DANGLING(440), b(17)=>DANGLING(441), 
      b(16)=>DANGLING(442), b(15)=>DANGLING(443), b(14)=>DANGLING(444), 
      b(13)=>DANGLING(445), b(12)=>DANGLING(446), b(11)=>DANGLING(447), 
      b(10)=>DANGLING(448), b(9)=>DANGLING(449), b(8)=>DANGLING(450), b(7)=>
      DANGLING(451), b(6)=>DANGLING(452), b(5)=>DANGLING(453), b(4)=>
      DANGLING(454), b(3)=>DANGLING(455), b(2)=>DANGLING(456), b(1)=>
      DANGLING(457), b(0)=>DANGLING(458), d(31)=>DANGLING(459), d(30)=>
      DANGLING(460), d(29)=>DANGLING(461), d(28)=>DANGLING(462), d(27)=>
      tap_array_7_filter_block_prod(15), d(26)=>
      tap_array_7_filter_block_prod(14), d(25)=>
      tap_array_7_filter_block_prod(13), d(24)=>
      tap_array_7_filter_block_prod(12), d(23)=>
      tap_array_7_filter_block_prod(11), d(22)=>
      tap_array_7_filter_block_prod(10), d(21)=>
      tap_array_7_filter_block_prod(9), d(20)=>
      tap_array_7_filter_block_prod(8), d(19)=>
      tap_array_7_filter_block_prod(7), d(18)=>
      tap_array_7_filter_block_prod(6), d(17)=>
      tap_array_7_filter_block_prod(5), d(16)=>
      tap_array_7_filter_block_prod(4), d(15)=>
      tap_array_7_filter_block_prod(3), d(14)=>
      tap_array_7_filter_block_prod(2), d(13)=>
      tap_array_7_filter_block_prod(1), d(12)=>
      tap_array_7_filter_block_prod(0), d(11)=>DANGLING(463), d(10)=>
      DANGLING(464), d(9)=>DANGLING(465), d(8)=>DANGLING(466), d(7)=>
      DANGLING(467), d(6)=>DANGLING(468), d(5)=>DANGLING(469), d(4)=>
      DANGLING(470), d(3)=>DANGLING(471), d(2)=>DANGLING(472), d(1)=>
      DANGLING(473), d(0)=>DANGLING(474));
   tap_array_7_filter_block_next_sum_add16_0 : add_16_5 port map ( cin=>
      DANGLING(475), a(15)=>tap_array_7_filter_block_prod(15), a(14)=>
      tap_array_7_filter_block_prod(14), a(13)=>
      tap_array_7_filter_block_prod(13), a(12)=>
      tap_array_7_filter_block_prod(12), a(11)=>
      tap_array_7_filter_block_prod(11), a(10)=>
      tap_array_7_filter_block_prod(10), a(9)=>
      tap_array_7_filter_block_prod(9), a(8)=>
      tap_array_7_filter_block_prod(8), a(7)=>
      tap_array_7_filter_block_prod(7), a(6)=>
      tap_array_7_filter_block_prod(6), a(5)=>
      tap_array_7_filter_block_prod(5), a(4)=>
      tap_array_7_filter_block_prod(4), a(3)=>
      tap_array_7_filter_block_prod(3), a(2)=>
      tap_array_7_filter_block_prod(2), a(1)=>
      tap_array_7_filter_block_prod(1), a(0)=>
      tap_array_7_filter_block_prod(0), b(15)=>sums_6(15), b(14)=>sums_6(14), 
      b(13)=>sums_6(13), b(12)=>sums_6(12), b(11)=>sums_6(11), b(10)=>
      sums_6(10), b(9)=>sums_6(9), b(8)=>sums_6(8), b(7)=>sums_6(7), b(6)=>
      sums_6(6), b(5)=>sums_6(5), b(4)=>sums_6(4), b(3)=>sums_6(3), b(2)=>
      sums_6(2), b(1)=>sums_6(1), b(0)=>sums_6(0), d(15)=>sums_7(15), d(14)
      =>sums_7(14), d(13)=>sums_7(13), d(12)=>sums_7(12), d(11)=>sums_7(11), 
      d(10)=>sums_7(10), d(9)=>sums_7(9), d(8)=>sums_7(8), d(7)=>sums_7(7), 
      d(6)=>sums_7(6), d(5)=>sums_7(5), d(4)=>sums_7(4), d(3)=>sums_7(3), 
      d(2)=>sums_7(2), d(1)=>sums_7(1), d(0)=>sums_7(0), cout=>DANGLING(476)
   );
   tap_array_8_filter_block_prod_mults28_0 : mult_32_74 port map ( a(31)=>
      taps_8_15, a(30)=>DANGLING(477), a(29)=>DANGLING(478), a(28)=>DANGLING
      (479), a(27)=>DANGLING(480), a(26)=>DANGLING(481), a(25)=>DANGLING(482
      ), a(24)=>DANGLING(483), a(23)=>DANGLING(484), a(22)=>DANGLING(485), 
      a(21)=>DANGLING(486), a(20)=>DANGLING(487), a(19)=>DANGLING(488), 
      a(18)=>DANGLING(489), a(17)=>DANGLING(490), a(16)=>DANGLING(491), 
      a(15)=>DANGLING(492), a(14)=>taps_8_15, a(13)=>DANGLING(493), a(12)=>
      DANGLING(494), a(11)=>taps_8_15, a(10)=>taps_8_10, a(9)=>taps_8_9, 
      a(8)=>taps_8_8, a(7)=>taps_8_7, a(6)=>taps_8_6, a(5)=>taps_8_5, a(4)=>
      taps_8_4, a(3)=>taps_8_3, a(2)=>taps_8_2, a(1)=>taps_8_1, a(0)=>
      taps_8_0, b(31)=>DANGLING(495), b(30)=>DANGLING(496), b(29)=>DANGLING(
      497), b(28)=>DANGLING(498), b(27)=>DANGLING(499), b(26)=>DANGLING(500), 
      b(25)=>DANGLING(501), b(24)=>DANGLING(502), b(23)=>DANGLING(503), 
      b(22)=>DANGLING(504), b(21)=>DANGLING(505), b(20)=>DANGLING(506), 
      b(19)=>DANGLING(507), b(18)=>DANGLING(508), b(17)=>DANGLING(509), 
      b(16)=>DANGLING(510), b(15)=>DANGLING(511), b(14)=>DANGLING(512), 
      b(13)=>DANGLING(513), b(12)=>DANGLING(514), b(11)=>DANGLING(515), 
      b(10)=>DANGLING(516), b(9)=>DANGLING(517), b(8)=>DANGLING(518), b(7)=>
      DANGLING(519), b(6)=>DANGLING(520), b(5)=>DANGLING(521), b(4)=>
      DANGLING(522), b(3)=>DANGLING(523), b(2)=>DANGLING(524), b(1)=>
      DANGLING(525), b(0)=>DANGLING(526), d(31)=>DANGLING(527), d(30)=>
      DANGLING(528), d(29)=>DANGLING(529), d(28)=>DANGLING(530), d(27)=>
      tap_array_8_filter_block_prod(15), d(26)=>
      tap_array_8_filter_block_prod(14), d(25)=>
      tap_array_8_filter_block_prod(13), d(24)=>
      tap_array_8_filter_block_prod(12), d(23)=>
      tap_array_8_filter_block_prod(11), d(22)=>
      tap_array_8_filter_block_prod(10), d(21)=>
      tap_array_8_filter_block_prod(9), d(20)=>
      tap_array_8_filter_block_prod(8), d(19)=>
      tap_array_8_filter_block_prod(7), d(18)=>
      tap_array_8_filter_block_prod(6), d(17)=>
      tap_array_8_filter_block_prod(5), d(16)=>
      tap_array_8_filter_block_prod(4), d(15)=>
      tap_array_8_filter_block_prod(3), d(14)=>
      tap_array_8_filter_block_prod(2), d(13)=>
      tap_array_8_filter_block_prod(1), d(12)=>
      tap_array_8_filter_block_prod(0), d(11)=>DANGLING(531), d(10)=>
      DANGLING(532), d(9)=>DANGLING(533), d(8)=>DANGLING(534), d(7)=>
      DANGLING(535), d(6)=>DANGLING(536), d(5)=>DANGLING(537), d(4)=>
      DANGLING(538), d(3)=>DANGLING(539), d(2)=>DANGLING(540), d(1)=>
      DANGLING(541), d(0)=>DANGLING(542));
   tap_array_8_filter_block_next_sum_add16_0 : add_16_6 port map ( cin=>
      DANGLING(543), a(15)=>tap_array_8_filter_block_prod(15), a(14)=>
      tap_array_8_filter_block_prod(14), a(13)=>
      tap_array_8_filter_block_prod(13), a(12)=>
      tap_array_8_filter_block_prod(12), a(11)=>
      tap_array_8_filter_block_prod(11), a(10)=>
      tap_array_8_filter_block_prod(10), a(9)=>
      tap_array_8_filter_block_prod(9), a(8)=>
      tap_array_8_filter_block_prod(8), a(7)=>
      tap_array_8_filter_block_prod(7), a(6)=>
      tap_array_8_filter_block_prod(6), a(5)=>
      tap_array_8_filter_block_prod(5), a(4)=>
      tap_array_8_filter_block_prod(4), a(3)=>
      tap_array_8_filter_block_prod(3), a(2)=>
      tap_array_8_filter_block_prod(2), a(1)=>
      tap_array_8_filter_block_prod(1), a(0)=>
      tap_array_8_filter_block_prod(0), b(15)=>sums_7(15), b(14)=>sums_7(14), 
      b(13)=>sums_7(13), b(12)=>sums_7(12), b(11)=>sums_7(11), b(10)=>
      sums_7(10), b(9)=>sums_7(9), b(8)=>sums_7(8), b(7)=>sums_7(7), b(6)=>
      sums_7(6), b(5)=>sums_7(5), b(4)=>sums_7(4), b(3)=>sums_7(3), b(2)=>
      sums_7(2), b(1)=>sums_7(1), b(0)=>sums_7(0), d(15)=>sums_8(15), d(14)
      =>sums_8(14), d(13)=>sums_8(13), d(12)=>sums_8(12), d(11)=>sums_8(11), 
      d(10)=>sums_8(10), d(9)=>sums_8(9), d(8)=>sums_8(8), d(7)=>sums_8(7), 
      d(6)=>sums_8(6), d(5)=>sums_8(5), d(4)=>sums_8(4), d(3)=>sums_8(3), 
      d(2)=>sums_8(2), d(1)=>sums_8(1), d(0)=>sums_8(0), cout=>DANGLING(544)
   );
   tap_array_9_filter_block_prod_mults28_0 : mult_32_75 port map ( a(31)=>
      taps_9_15, a(30)=>DANGLING(545), a(29)=>DANGLING(546), a(28)=>DANGLING
      (547), a(27)=>DANGLING(548), a(26)=>DANGLING(549), a(25)=>DANGLING(550
      ), a(24)=>DANGLING(551), a(23)=>DANGLING(552), a(22)=>DANGLING(553), 
      a(21)=>DANGLING(554), a(20)=>DANGLING(555), a(19)=>DANGLING(556), 
      a(18)=>DANGLING(557), a(17)=>DANGLING(558), a(16)=>DANGLING(559), 
      a(15)=>DANGLING(560), a(14)=>taps_9_15, a(13)=>DANGLING(561), a(12)=>
      DANGLING(562), a(11)=>taps_9_15, a(10)=>taps_9_10, a(9)=>taps_9_9, 
      a(8)=>taps_9_8, a(7)=>taps_9_7, a(6)=>taps_9_6, a(5)=>taps_9_5, a(4)=>
      taps_9_4, a(3)=>taps_9_3, a(2)=>taps_9_2, a(1)=>taps_9_1, a(0)=>
      taps_9_0, b(31)=>DANGLING(563), b(30)=>DANGLING(564), b(29)=>DANGLING(
      565), b(28)=>DANGLING(566), b(27)=>DANGLING(567), b(26)=>DANGLING(568), 
      b(25)=>DANGLING(569), b(24)=>DANGLING(570), b(23)=>DANGLING(571), 
      b(22)=>DANGLING(572), b(21)=>DANGLING(573), b(20)=>DANGLING(574), 
      b(19)=>DANGLING(575), b(18)=>DANGLING(576), b(17)=>DANGLING(577), 
      b(16)=>DANGLING(578), b(15)=>DANGLING(579), b(14)=>DANGLING(580), 
      b(13)=>DANGLING(581), b(12)=>DANGLING(582), b(11)=>DANGLING(583), 
      b(10)=>DANGLING(584), b(9)=>DANGLING(585), b(8)=>DANGLING(586), b(7)=>
      DANGLING(587), b(6)=>DANGLING(588), b(5)=>DANGLING(589), b(4)=>
      DANGLING(590), b(3)=>DANGLING(591), b(2)=>DANGLING(592), b(1)=>
      DANGLING(593), b(0)=>DANGLING(594), d(31)=>DANGLING(595), d(30)=>
      DANGLING(596), d(29)=>DANGLING(597), d(28)=>DANGLING(598), d(27)=>
      tap_array_9_filter_block_prod(15), d(26)=>
      tap_array_9_filter_block_prod(14), d(25)=>
      tap_array_9_filter_block_prod(13), d(24)=>
      tap_array_9_filter_block_prod(12), d(23)=>
      tap_array_9_filter_block_prod(11), d(22)=>
      tap_array_9_filter_block_prod(10), d(21)=>
      tap_array_9_filter_block_prod(9), d(20)=>
      tap_array_9_filter_block_prod(8), d(19)=>
      tap_array_9_filter_block_prod(7), d(18)=>
      tap_array_9_filter_block_prod(6), d(17)=>
      tap_array_9_filter_block_prod(5), d(16)=>
      tap_array_9_filter_block_prod(4), d(15)=>
      tap_array_9_filter_block_prod(3), d(14)=>
      tap_array_9_filter_block_prod(2), d(13)=>
      tap_array_9_filter_block_prod(1), d(12)=>
      tap_array_9_filter_block_prod(0), d(11)=>DANGLING(599), d(10)=>
      DANGLING(600), d(9)=>DANGLING(601), d(8)=>DANGLING(602), d(7)=>
      DANGLING(603), d(6)=>DANGLING(604), d(5)=>DANGLING(605), d(4)=>
      DANGLING(606), d(3)=>DANGLING(607), d(2)=>DANGLING(608), d(1)=>
      DANGLING(609), d(0)=>DANGLING(610));
   tap_array_9_filter_block_next_sum_add16_0 : add_16_7 port map ( cin=>
      DANGLING(611), a(15)=>tap_array_9_filter_block_prod(15), a(14)=>
      tap_array_9_filter_block_prod(14), a(13)=>
      tap_array_9_filter_block_prod(13), a(12)=>
      tap_array_9_filter_block_prod(12), a(11)=>
      tap_array_9_filter_block_prod(11), a(10)=>
      tap_array_9_filter_block_prod(10), a(9)=>
      tap_array_9_filter_block_prod(9), a(8)=>
      tap_array_9_filter_block_prod(8), a(7)=>
      tap_array_9_filter_block_prod(7), a(6)=>
      tap_array_9_filter_block_prod(6), a(5)=>
      tap_array_9_filter_block_prod(5), a(4)=>
      tap_array_9_filter_block_prod(4), a(3)=>
      tap_array_9_filter_block_prod(3), a(2)=>
      tap_array_9_filter_block_prod(2), a(1)=>
      tap_array_9_filter_block_prod(1), a(0)=>
      tap_array_9_filter_block_prod(0), b(15)=>sums_8(15), b(14)=>sums_8(14), 
      b(13)=>sums_8(13), b(12)=>sums_8(12), b(11)=>sums_8(11), b(10)=>
      sums_8(10), b(9)=>sums_8(9), b(8)=>sums_8(8), b(7)=>sums_8(7), b(6)=>
      sums_8(6), b(5)=>sums_8(5), b(4)=>sums_8(4), b(3)=>sums_8(3), b(2)=>
      sums_8(2), b(1)=>sums_8(1), b(0)=>sums_8(0), d(15)=>sums_9(15), d(14)
      =>sums_9(14), d(13)=>sums_9(13), d(12)=>sums_9(12), d(11)=>sums_9(11), 
      d(10)=>sums_9(10), d(9)=>sums_9(9), d(8)=>sums_9(8), d(7)=>sums_9(7), 
      d(6)=>sums_9(6), d(5)=>sums_9(5), d(4)=>sums_9(4), d(3)=>sums_9(3), 
      d(2)=>sums_9(2), d(1)=>sums_9(1), d(0)=>sums_9(0), cout=>DANGLING(612)
   );
   tap_array_10_filter_block_prod_mults28_0 : mult_32_76 port map ( a(31)=>
      taps_10_15, a(30)=>DANGLING(613), a(29)=>DANGLING(614), a(28)=>
      DANGLING(615), a(27)=>DANGLING(616), a(26)=>DANGLING(617), a(25)=>
      DANGLING(618), a(24)=>DANGLING(619), a(23)=>DANGLING(620), a(22)=>
      DANGLING(621), a(21)=>DANGLING(622), a(20)=>DANGLING(623), a(19)=>
      DANGLING(624), a(18)=>DANGLING(625), a(17)=>DANGLING(626), a(16)=>
      DANGLING(627), a(15)=>DANGLING(628), a(14)=>taps_10_15, a(13)=>
      DANGLING(629), a(12)=>DANGLING(630), a(11)=>taps_10_15, a(10)=>
      taps_10_10, a(9)=>taps_10_9, a(8)=>taps_10_8, a(7)=>taps_10_7, a(6)=>
      taps_10_6, a(5)=>taps_10_5, a(4)=>taps_10_4, a(3)=>taps_10_3, a(2)=>
      taps_10_2, a(1)=>taps_10_1, a(0)=>taps_10_0, b(31)=>DANGLING(631), 
      b(30)=>DANGLING(632), b(29)=>DANGLING(633), b(28)=>DANGLING(634), 
      b(27)=>DANGLING(635), b(26)=>DANGLING(636), b(25)=>DANGLING(637), 
      b(24)=>DANGLING(638), b(23)=>DANGLING(639), b(22)=>DANGLING(640), 
      b(21)=>DANGLING(641), b(20)=>DANGLING(642), b(19)=>DANGLING(643), 
      b(18)=>DANGLING(644), b(17)=>DANGLING(645), b(16)=>DANGLING(646), 
      b(15)=>DANGLING(647), b(14)=>DANGLING(648), b(13)=>DANGLING(649), 
      b(12)=>DANGLING(650), b(11)=>DANGLING(651), b(10)=>DANGLING(652), b(9)
      =>DANGLING(653), b(8)=>DANGLING(654), b(7)=>DANGLING(655), b(6)=>
      DANGLING(656), b(5)=>DANGLING(657), b(4)=>DANGLING(658), b(3)=>
      DANGLING(659), b(2)=>DANGLING(660), b(1)=>DANGLING(661), b(0)=>
      DANGLING(662), d(31)=>DANGLING(663), d(30)=>DANGLING(664), d(29)=>
      DANGLING(665), d(28)=>DANGLING(666), d(27)=>
      tap_array_10_filter_block_prod(15), d(26)=>
      tap_array_10_filter_block_prod(14), d(25)=>
      tap_array_10_filter_block_prod(13), d(24)=>
      tap_array_10_filter_block_prod(12), d(23)=>
      tap_array_10_filter_block_prod(11), d(22)=>
      tap_array_10_filter_block_prod(10), d(21)=>
      tap_array_10_filter_block_prod(9), d(20)=>
      tap_array_10_filter_block_prod(8), d(19)=>
      tap_array_10_filter_block_prod(7), d(18)=>
      tap_array_10_filter_block_prod(6), d(17)=>
      tap_array_10_filter_block_prod(5), d(16)=>
      tap_array_10_filter_block_prod(4), d(15)=>
      tap_array_10_filter_block_prod(3), d(14)=>
      tap_array_10_filter_block_prod(2), d(13)=>
      tap_array_10_filter_block_prod(1), d(12)=>
      tap_array_10_filter_block_prod(0), d(11)=>DANGLING(667), d(10)=>
      DANGLING(668), d(9)=>DANGLING(669), d(8)=>DANGLING(670), d(7)=>
      DANGLING(671), d(6)=>DANGLING(672), d(5)=>DANGLING(673), d(4)=>
      DANGLING(674), d(3)=>DANGLING(675), d(2)=>DANGLING(676), d(1)=>
      DANGLING(677), d(0)=>DANGLING(678));
   tap_array_10_filter_block_next_sum_add16_0 : add_16_8 port map ( cin=>
      DANGLING(679), a(15)=>tap_array_10_filter_block_prod(15), a(14)=>
      tap_array_10_filter_block_prod(14), a(13)=>
      tap_array_10_filter_block_prod(13), a(12)=>
      tap_array_10_filter_block_prod(12), a(11)=>
      tap_array_10_filter_block_prod(11), a(10)=>
      tap_array_10_filter_block_prod(10), a(9)=>
      tap_array_10_filter_block_prod(9), a(8)=>
      tap_array_10_filter_block_prod(8), a(7)=>
      tap_array_10_filter_block_prod(7), a(6)=>
      tap_array_10_filter_block_prod(6), a(5)=>
      tap_array_10_filter_block_prod(5), a(4)=>
      tap_array_10_filter_block_prod(4), a(3)=>
      tap_array_10_filter_block_prod(3), a(2)=>
      tap_array_10_filter_block_prod(2), a(1)=>
      tap_array_10_filter_block_prod(1), a(0)=>
      tap_array_10_filter_block_prod(0), b(15)=>sums_9(15), b(14)=>
      sums_9(14), b(13)=>sums_9(13), b(12)=>sums_9(12), b(11)=>sums_9(11), 
      b(10)=>sums_9(10), b(9)=>sums_9(9), b(8)=>sums_9(8), b(7)=>sums_9(7), 
      b(6)=>sums_9(6), b(5)=>sums_9(5), b(4)=>sums_9(4), b(3)=>sums_9(3), 
      b(2)=>sums_9(2), b(1)=>sums_9(1), b(0)=>sums_9(0), d(15)=>sums_10(15), 
      d(14)=>sums_10(14), d(13)=>sums_10(13), d(12)=>sums_10(12), d(11)=>
      sums_10(11), d(10)=>sums_10(10), d(9)=>sums_10(9), d(8)=>sums_10(8), 
      d(7)=>sums_10(7), d(6)=>sums_10(6), d(5)=>sums_10(5), d(4)=>sums_10(4), 
      d(3)=>sums_10(3), d(2)=>sums_10(2), d(1)=>sums_10(1), d(0)=>sums_10(0), 
      cout=>DANGLING(680));
   tap_array_11_filter_block_prod_mults28_0 : mult_32_77 port map ( a(31)=>
      taps_11_15, a(30)=>DANGLING(681), a(29)=>DANGLING(682), a(28)=>
      DANGLING(683), a(27)=>DANGLING(684), a(26)=>DANGLING(685), a(25)=>
      DANGLING(686), a(24)=>DANGLING(687), a(23)=>DANGLING(688), a(22)=>
      DANGLING(689), a(21)=>DANGLING(690), a(20)=>DANGLING(691), a(19)=>
      DANGLING(692), a(18)=>DANGLING(693), a(17)=>DANGLING(694), a(16)=>
      DANGLING(695), a(15)=>DANGLING(696), a(14)=>taps_11_15, a(13)=>
      DANGLING(697), a(12)=>DANGLING(698), a(11)=>taps_11_15, a(10)=>
      taps_11_10, a(9)=>taps_11_9, a(8)=>taps_11_8, a(7)=>taps_11_7, a(6)=>
      taps_11_6, a(5)=>taps_11_5, a(4)=>taps_11_4, a(3)=>taps_11_3, a(2)=>
      taps_11_2, a(1)=>taps_11_1, a(0)=>taps_11_0, b(31)=>DANGLING(699), 
      b(30)=>DANGLING(700), b(29)=>DANGLING(701), b(28)=>DANGLING(702), 
      b(27)=>DANGLING(703), b(26)=>DANGLING(704), b(25)=>DANGLING(705), 
      b(24)=>DANGLING(706), b(23)=>DANGLING(707), b(22)=>DANGLING(708), 
      b(21)=>DANGLING(709), b(20)=>DANGLING(710), b(19)=>DANGLING(711), 
      b(18)=>DANGLING(712), b(17)=>DANGLING(713), b(16)=>DANGLING(714), 
      b(15)=>DANGLING(715), b(14)=>DANGLING(716), b(13)=>DANGLING(717), 
      b(12)=>DANGLING(718), b(11)=>DANGLING(719), b(10)=>DANGLING(720), b(9)
      =>DANGLING(721), b(8)=>DANGLING(722), b(7)=>DANGLING(723), b(6)=>
      DANGLING(724), b(5)=>DANGLING(725), b(4)=>DANGLING(726), b(3)=>
      DANGLING(727), b(2)=>DANGLING(728), b(1)=>DANGLING(729), b(0)=>
      DANGLING(730), d(31)=>DANGLING(731), d(30)=>DANGLING(732), d(29)=>
      DANGLING(733), d(28)=>DANGLING(734), d(27)=>
      tap_array_11_filter_block_prod(15), d(26)=>
      tap_array_11_filter_block_prod(14), d(25)=>
      tap_array_11_filter_block_prod(13), d(24)=>
      tap_array_11_filter_block_prod(12), d(23)=>
      tap_array_11_filter_block_prod(11), d(22)=>
      tap_array_11_filter_block_prod(10), d(21)=>
      tap_array_11_filter_block_prod(9), d(20)=>
      tap_array_11_filter_block_prod(8), d(19)=>
      tap_array_11_filter_block_prod(7), d(18)=>
      tap_array_11_filter_block_prod(6), d(17)=>
      tap_array_11_filter_block_prod(5), d(16)=>
      tap_array_11_filter_block_prod(4), d(15)=>
      tap_array_11_filter_block_prod(3), d(14)=>
      tap_array_11_filter_block_prod(2), d(13)=>
      tap_array_11_filter_block_prod(1), d(12)=>
      tap_array_11_filter_block_prod(0), d(11)=>DANGLING(735), d(10)=>
      DANGLING(736), d(9)=>DANGLING(737), d(8)=>DANGLING(738), d(7)=>
      DANGLING(739), d(6)=>DANGLING(740), d(5)=>DANGLING(741), d(4)=>
      DANGLING(742), d(3)=>DANGLING(743), d(2)=>DANGLING(744), d(1)=>
      DANGLING(745), d(0)=>DANGLING(746));
   tap_array_11_filter_block_next_sum_add16_0 : add_16_9 port map ( cin=>
      DANGLING(747), a(15)=>tap_array_11_filter_block_prod(15), a(14)=>
      tap_array_11_filter_block_prod(14), a(13)=>
      tap_array_11_filter_block_prod(13), a(12)=>
      tap_array_11_filter_block_prod(12), a(11)=>
      tap_array_11_filter_block_prod(11), a(10)=>
      tap_array_11_filter_block_prod(10), a(9)=>
      tap_array_11_filter_block_prod(9), a(8)=>
      tap_array_11_filter_block_prod(8), a(7)=>
      tap_array_11_filter_block_prod(7), a(6)=>
      tap_array_11_filter_block_prod(6), a(5)=>
      tap_array_11_filter_block_prod(5), a(4)=>
      tap_array_11_filter_block_prod(4), a(3)=>
      tap_array_11_filter_block_prod(3), a(2)=>
      tap_array_11_filter_block_prod(2), a(1)=>
      tap_array_11_filter_block_prod(1), a(0)=>
      tap_array_11_filter_block_prod(0), b(15)=>sums_10(15), b(14)=>
      sums_10(14), b(13)=>sums_10(13), b(12)=>sums_10(12), b(11)=>
      sums_10(11), b(10)=>sums_10(10), b(9)=>sums_10(9), b(8)=>sums_10(8), 
      b(7)=>sums_10(7), b(6)=>sums_10(6), b(5)=>sums_10(5), b(4)=>sums_10(4), 
      b(3)=>sums_10(3), b(2)=>sums_10(2), b(1)=>sums_10(1), b(0)=>sums_10(0), 
      d(15)=>sums_11(15), d(14)=>sums_11(14), d(13)=>sums_11(13), d(12)=>
      sums_11(12), d(11)=>sums_11(11), d(10)=>sums_11(10), d(9)=>sums_11(9), 
      d(8)=>sums_11(8), d(7)=>sums_11(7), d(6)=>sums_11(6), d(5)=>sums_11(5), 
      d(4)=>sums_11(4), d(3)=>sums_11(3), d(2)=>sums_11(2), d(1)=>sums_11(1), 
      d(0)=>sums_11(0), cout=>DANGLING(748));
   tap_array_12_filter_block_prod_mults28_0 : mult_32_78 port map ( a(31)=>
      taps_12_15, a(30)=>DANGLING(749), a(29)=>DANGLING(750), a(28)=>
      DANGLING(751), a(27)=>DANGLING(752), a(26)=>DANGLING(753), a(25)=>
      DANGLING(754), a(24)=>DANGLING(755), a(23)=>DANGLING(756), a(22)=>
      DANGLING(757), a(21)=>DANGLING(758), a(20)=>DANGLING(759), a(19)=>
      DANGLING(760), a(18)=>DANGLING(761), a(17)=>DANGLING(762), a(16)=>
      DANGLING(763), a(15)=>DANGLING(764), a(14)=>taps_12_15, a(13)=>
      DANGLING(765), a(12)=>DANGLING(766), a(11)=>taps_12_15, a(10)=>
      taps_12_10, a(9)=>taps_12_9, a(8)=>taps_12_8, a(7)=>taps_12_7, a(6)=>
      taps_12_6, a(5)=>taps_12_5, a(4)=>taps_12_4, a(3)=>taps_12_3, a(2)=>
      taps_12_2, a(1)=>taps_12_1, a(0)=>taps_12_0, b(31)=>DANGLING(767), 
      b(30)=>DANGLING(768), b(29)=>DANGLING(769), b(28)=>DANGLING(770), 
      b(27)=>DANGLING(771), b(26)=>DANGLING(772), b(25)=>DANGLING(773), 
      b(24)=>DANGLING(774), b(23)=>DANGLING(775), b(22)=>DANGLING(776), 
      b(21)=>DANGLING(777), b(20)=>DANGLING(778), b(19)=>DANGLING(779), 
      b(18)=>DANGLING(780), b(17)=>DANGLING(781), b(16)=>DANGLING(782), 
      b(15)=>DANGLING(783), b(14)=>DANGLING(784), b(13)=>DANGLING(785), 
      b(12)=>DANGLING(786), b(11)=>DANGLING(787), b(10)=>DANGLING(788), b(9)
      =>DANGLING(789), b(8)=>DANGLING(790), b(7)=>DANGLING(791), b(6)=>
      DANGLING(792), b(5)=>DANGLING(793), b(4)=>DANGLING(794), b(3)=>
      DANGLING(795), b(2)=>DANGLING(796), b(1)=>DANGLING(797), b(0)=>
      DANGLING(798), d(31)=>DANGLING(799), d(30)=>DANGLING(800), d(29)=>
      DANGLING(801), d(28)=>DANGLING(802), d(27)=>
      tap_array_12_filter_block_prod(15), d(26)=>
      tap_array_12_filter_block_prod(14), d(25)=>
      tap_array_12_filter_block_prod(13), d(24)=>
      tap_array_12_filter_block_prod(12), d(23)=>
      tap_array_12_filter_block_prod(11), d(22)=>
      tap_array_12_filter_block_prod(10), d(21)=>
      tap_array_12_filter_block_prod(9), d(20)=>
      tap_array_12_filter_block_prod(8), d(19)=>
      tap_array_12_filter_block_prod(7), d(18)=>
      tap_array_12_filter_block_prod(6), d(17)=>
      tap_array_12_filter_block_prod(5), d(16)=>
      tap_array_12_filter_block_prod(4), d(15)=>
      tap_array_12_filter_block_prod(3), d(14)=>
      tap_array_12_filter_block_prod(2), d(13)=>
      tap_array_12_filter_block_prod(1), d(12)=>
      tap_array_12_filter_block_prod(0), d(11)=>DANGLING(803), d(10)=>
      DANGLING(804), d(9)=>DANGLING(805), d(8)=>DANGLING(806), d(7)=>
      DANGLING(807), d(6)=>DANGLING(808), d(5)=>DANGLING(809), d(4)=>
      DANGLING(810), d(3)=>DANGLING(811), d(2)=>DANGLING(812), d(1)=>
      DANGLING(813), d(0)=>DANGLING(814));
   tap_array_12_filter_block_next_sum_add16_0 : add_16_10 port map ( cin=>
      DANGLING(815), a(15)=>tap_array_12_filter_block_prod(15), a(14)=>
      tap_array_12_filter_block_prod(14), a(13)=>
      tap_array_12_filter_block_prod(13), a(12)=>
      tap_array_12_filter_block_prod(12), a(11)=>
      tap_array_12_filter_block_prod(11), a(10)=>
      tap_array_12_filter_block_prod(10), a(9)=>
      tap_array_12_filter_block_prod(9), a(8)=>
      tap_array_12_filter_block_prod(8), a(7)=>
      tap_array_12_filter_block_prod(7), a(6)=>
      tap_array_12_filter_block_prod(6), a(5)=>
      tap_array_12_filter_block_prod(5), a(4)=>
      tap_array_12_filter_block_prod(4), a(3)=>
      tap_array_12_filter_block_prod(3), a(2)=>
      tap_array_12_filter_block_prod(2), a(1)=>
      tap_array_12_filter_block_prod(1), a(0)=>
      tap_array_12_filter_block_prod(0), b(15)=>sums_11(15), b(14)=>
      sums_11(14), b(13)=>sums_11(13), b(12)=>sums_11(12), b(11)=>
      sums_11(11), b(10)=>sums_11(10), b(9)=>sums_11(9), b(8)=>sums_11(8), 
      b(7)=>sums_11(7), b(6)=>sums_11(6), b(5)=>sums_11(5), b(4)=>sums_11(4), 
      b(3)=>sums_11(3), b(2)=>sums_11(2), b(1)=>sums_11(1), b(0)=>sums_11(0), 
      d(15)=>sums_12(15), d(14)=>sums_12(14), d(13)=>sums_12(13), d(12)=>
      sums_12(12), d(11)=>sums_12(11), d(10)=>sums_12(10), d(9)=>sums_12(9), 
      d(8)=>sums_12(8), d(7)=>sums_12(7), d(6)=>sums_12(6), d(5)=>sums_12(5), 
      d(4)=>sums_12(4), d(3)=>sums_12(3), d(2)=>sums_12(2), d(1)=>sums_12(1), 
      d(0)=>sums_12(0), cout=>DANGLING(816));
   tap_array_13_filter_block_prod_mults28_0 : mult_32_79 port map ( a(31)=>
      taps_13_15, a(30)=>DANGLING(817), a(29)=>DANGLING(818), a(28)=>
      DANGLING(819), a(27)=>DANGLING(820), a(26)=>DANGLING(821), a(25)=>
      DANGLING(822), a(24)=>DANGLING(823), a(23)=>DANGLING(824), a(22)=>
      DANGLING(825), a(21)=>DANGLING(826), a(20)=>DANGLING(827), a(19)=>
      DANGLING(828), a(18)=>DANGLING(829), a(17)=>DANGLING(830), a(16)=>
      DANGLING(831), a(15)=>DANGLING(832), a(14)=>taps_13_15, a(13)=>
      DANGLING(833), a(12)=>DANGLING(834), a(11)=>taps_13_15, a(10)=>
      taps_13_10, a(9)=>taps_13_9, a(8)=>taps_13_8, a(7)=>taps_13_7, a(6)=>
      taps_13_6, a(5)=>taps_13_5, a(4)=>taps_13_4, a(3)=>taps_13_3, a(2)=>
      taps_13_2, a(1)=>taps_13_1, a(0)=>taps_13_0, b(31)=>DANGLING(835), 
      b(30)=>DANGLING(836), b(29)=>DANGLING(837), b(28)=>DANGLING(838), 
      b(27)=>DANGLING(839), b(26)=>DANGLING(840), b(25)=>DANGLING(841), 
      b(24)=>DANGLING(842), b(23)=>DANGLING(843), b(22)=>DANGLING(844), 
      b(21)=>DANGLING(845), b(20)=>DANGLING(846), b(19)=>DANGLING(847), 
      b(18)=>DANGLING(848), b(17)=>DANGLING(849), b(16)=>DANGLING(850), 
      b(15)=>DANGLING(851), b(14)=>DANGLING(852), b(13)=>DANGLING(853), 
      b(12)=>DANGLING(854), b(11)=>DANGLING(855), b(10)=>DANGLING(856), b(9)
      =>DANGLING(857), b(8)=>DANGLING(858), b(7)=>DANGLING(859), b(6)=>
      DANGLING(860), b(5)=>DANGLING(861), b(4)=>DANGLING(862), b(3)=>
      DANGLING(863), b(2)=>DANGLING(864), b(1)=>DANGLING(865), b(0)=>
      DANGLING(866), d(31)=>DANGLING(867), d(30)=>DANGLING(868), d(29)=>
      DANGLING(869), d(28)=>DANGLING(870), d(27)=>
      tap_array_13_filter_block_prod(15), d(26)=>
      tap_array_13_filter_block_prod(14), d(25)=>
      tap_array_13_filter_block_prod(13), d(24)=>
      tap_array_13_filter_block_prod(12), d(23)=>
      tap_array_13_filter_block_prod(11), d(22)=>
      tap_array_13_filter_block_prod(10), d(21)=>
      tap_array_13_filter_block_prod(9), d(20)=>
      tap_array_13_filter_block_prod(8), d(19)=>
      tap_array_13_filter_block_prod(7), d(18)=>
      tap_array_13_filter_block_prod(6), d(17)=>
      tap_array_13_filter_block_prod(5), d(16)=>
      tap_array_13_filter_block_prod(4), d(15)=>
      tap_array_13_filter_block_prod(3), d(14)=>
      tap_array_13_filter_block_prod(2), d(13)=>
      tap_array_13_filter_block_prod(1), d(12)=>
      tap_array_13_filter_block_prod(0), d(11)=>DANGLING(871), d(10)=>
      DANGLING(872), d(9)=>DANGLING(873), d(8)=>DANGLING(874), d(7)=>
      DANGLING(875), d(6)=>DANGLING(876), d(5)=>DANGLING(877), d(4)=>
      DANGLING(878), d(3)=>DANGLING(879), d(2)=>DANGLING(880), d(1)=>
      DANGLING(881), d(0)=>DANGLING(882));
   tap_array_13_filter_block_next_sum_add16_0 : add_16_11 port map ( cin=>
      DANGLING(883), a(15)=>tap_array_13_filter_block_prod(15), a(14)=>
      tap_array_13_filter_block_prod(14), a(13)=>
      tap_array_13_filter_block_prod(13), a(12)=>
      tap_array_13_filter_block_prod(12), a(11)=>
      tap_array_13_filter_block_prod(11), a(10)=>
      tap_array_13_filter_block_prod(10), a(9)=>
      tap_array_13_filter_block_prod(9), a(8)=>
      tap_array_13_filter_block_prod(8), a(7)=>
      tap_array_13_filter_block_prod(7), a(6)=>
      tap_array_13_filter_block_prod(6), a(5)=>
      tap_array_13_filter_block_prod(5), a(4)=>
      tap_array_13_filter_block_prod(4), a(3)=>
      tap_array_13_filter_block_prod(3), a(2)=>
      tap_array_13_filter_block_prod(2), a(1)=>
      tap_array_13_filter_block_prod(1), a(0)=>
      tap_array_13_filter_block_prod(0), b(15)=>sums_12(15), b(14)=>
      sums_12(14), b(13)=>sums_12(13), b(12)=>sums_12(12), b(11)=>
      sums_12(11), b(10)=>sums_12(10), b(9)=>sums_12(9), b(8)=>sums_12(8), 
      b(7)=>sums_12(7), b(6)=>sums_12(6), b(5)=>sums_12(5), b(4)=>sums_12(4), 
      b(3)=>sums_12(3), b(2)=>sums_12(2), b(1)=>sums_12(1), b(0)=>sums_12(0), 
      d(15)=>sums_13(15), d(14)=>sums_13(14), d(13)=>sums_13(13), d(12)=>
      sums_13(12), d(11)=>sums_13(11), d(10)=>sums_13(10), d(9)=>sums_13(9), 
      d(8)=>sums_13(8), d(7)=>sums_13(7), d(6)=>sums_13(6), d(5)=>sums_13(5), 
      d(4)=>sums_13(4), d(3)=>sums_13(3), d(2)=>sums_13(2), d(1)=>sums_13(1), 
      d(0)=>sums_13(0), cout=>DANGLING(884));
   tap_array_14_filter_block_prod_mults28_0 : mult_32_80 port map ( a(31)=>
      taps_14_15, a(30)=>DANGLING(885), a(29)=>DANGLING(886), a(28)=>
      DANGLING(887), a(27)=>DANGLING(888), a(26)=>DANGLING(889), a(25)=>
      DANGLING(890), a(24)=>DANGLING(891), a(23)=>DANGLING(892), a(22)=>
      DANGLING(893), a(21)=>DANGLING(894), a(20)=>DANGLING(895), a(19)=>
      DANGLING(896), a(18)=>DANGLING(897), a(17)=>DANGLING(898), a(16)=>
      DANGLING(899), a(15)=>DANGLING(900), a(14)=>taps_14_15, a(13)=>
      DANGLING(901), a(12)=>DANGLING(902), a(11)=>taps_14_15, a(10)=>
      taps_14_10, a(9)=>taps_14_9, a(8)=>taps_14_8, a(7)=>taps_14_7, a(6)=>
      taps_14_6, a(5)=>taps_14_5, a(4)=>taps_14_4, a(3)=>taps_14_3, a(2)=>
      DANGLING(903), a(1)=>DANGLING(904), a(0)=>DANGLING(905), b(31)=>
      DANGLING(906), b(30)=>DANGLING(907), b(29)=>DANGLING(908), b(28)=>
      DANGLING(909), b(27)=>DANGLING(910), b(26)=>DANGLING(911), b(25)=>
      DANGLING(912), b(24)=>DANGLING(913), b(23)=>DANGLING(914), b(22)=>
      DANGLING(915), b(21)=>DANGLING(916), b(20)=>DANGLING(917), b(19)=>
      DANGLING(918), b(18)=>DANGLING(919), b(17)=>DANGLING(920), b(16)=>
      DANGLING(921), b(15)=>DANGLING(922), b(14)=>DANGLING(923), b(13)=>
      DANGLING(924), b(12)=>DANGLING(925), b(11)=>DANGLING(926), b(10)=>
      DANGLING(927), b(9)=>DANGLING(928), b(8)=>DANGLING(929), b(7)=>
      DANGLING(930), b(6)=>DANGLING(931), b(5)=>DANGLING(932), b(4)=>
      DANGLING(933), b(3)=>DANGLING(934), b(2)=>DANGLING(935), b(1)=>
      DANGLING(936), b(0)=>DANGLING(937), d(31)=>DANGLING(938), d(30)=>
      DANGLING(939), d(29)=>DANGLING(940), d(28)=>DANGLING(941), d(27)=>
      tap_array_14_filter_block_prod(15), d(26)=>
      tap_array_14_filter_block_prod(14), d(25)=>
      tap_array_14_filter_block_prod(13), d(24)=>
      tap_array_14_filter_block_prod(12), d(23)=>
      tap_array_14_filter_block_prod(11), d(22)=>
      tap_array_14_filter_block_prod(10), d(21)=>
      tap_array_14_filter_block_prod(9), d(20)=>
      tap_array_14_filter_block_prod(8), d(19)=>
      tap_array_14_filter_block_prod(7), d(18)=>
      tap_array_14_filter_block_prod(6), d(17)=>
      tap_array_14_filter_block_prod(5), d(16)=>
      tap_array_14_filter_block_prod(4), d(15)=>
      tap_array_14_filter_block_prod(3), d(14)=>
      tap_array_14_filter_block_prod(2), d(13)=>
      tap_array_14_filter_block_prod(1), d(12)=>
      tap_array_14_filter_block_prod(0), d(11)=>DANGLING(942), d(10)=>
      DANGLING(943), d(9)=>DANGLING(944), d(8)=>DANGLING(945), d(7)=>
      DANGLING(946), d(6)=>DANGLING(947), d(5)=>DANGLING(948), d(4)=>
      DANGLING(949), d(3)=>DANGLING(950), d(2)=>DANGLING(951), d(1)=>
      DANGLING(952), d(0)=>DANGLING(953));
   tap_array_14_filter_block_next_sum_add16_0 : add_16_12 port map ( cin=>
      DANGLING(954), a(15)=>tap_array_14_filter_block_prod(15), a(14)=>
      tap_array_14_filter_block_prod(14), a(13)=>
      tap_array_14_filter_block_prod(13), a(12)=>
      tap_array_14_filter_block_prod(12), a(11)=>
      tap_array_14_filter_block_prod(11), a(10)=>
      tap_array_14_filter_block_prod(10), a(9)=>
      tap_array_14_filter_block_prod(9), a(8)=>
      tap_array_14_filter_block_prod(8), a(7)=>
      tap_array_14_filter_block_prod(7), a(6)=>
      tap_array_14_filter_block_prod(6), a(5)=>
      tap_array_14_filter_block_prod(5), a(4)=>
      tap_array_14_filter_block_prod(4), a(3)=>
      tap_array_14_filter_block_prod(3), a(2)=>
      tap_array_14_filter_block_prod(2), a(1)=>
      tap_array_14_filter_block_prod(1), a(0)=>
      tap_array_14_filter_block_prod(0), b(15)=>sums_13(15), b(14)=>
      sums_13(14), b(13)=>sums_13(13), b(12)=>sums_13(12), b(11)=>
      sums_13(11), b(10)=>sums_13(10), b(9)=>sums_13(9), b(8)=>sums_13(8), 
      b(7)=>sums_13(7), b(6)=>sums_13(6), b(5)=>sums_13(5), b(4)=>sums_13(4), 
      b(3)=>sums_13(3), b(2)=>sums_13(2), b(1)=>sums_13(1), b(0)=>sums_13(0), 
      d(15)=>sums_14(15), d(14)=>sums_14(14), d(13)=>sums_14(13), d(12)=>
      sums_14(12), d(11)=>sums_14(11), d(10)=>sums_14(10), d(9)=>sums_14(9), 
      d(8)=>sums_14(8), d(7)=>sums_14(7), d(6)=>sums_14(6), d(5)=>sums_14(5), 
      d(4)=>sums_14(4), d(3)=>sums_14(3), d(2)=>sums_14(2), d(1)=>sums_14(1), 
      d(0)=>sums_14(0), cout=>DANGLING(955));
   tap_array_15_filter_block_prod_mults28_0 : mult_32_81 port map ( a(31)=>
      taps_15_15, a(30)=>DANGLING(956), a(29)=>DANGLING(957), a(28)=>
      DANGLING(958), a(27)=>DANGLING(959), a(26)=>DANGLING(960), a(25)=>
      DANGLING(961), a(24)=>DANGLING(962), a(23)=>DANGLING(963), a(22)=>
      DANGLING(964), a(21)=>DANGLING(965), a(20)=>DANGLING(966), a(19)=>
      DANGLING(967), a(18)=>DANGLING(968), a(17)=>DANGLING(969), a(16)=>
      DANGLING(970), a(15)=>DANGLING(971), a(14)=>taps_15_15, a(13)=>
      DANGLING(972), a(12)=>DANGLING(973), a(11)=>taps_15_15, a(10)=>
      taps_15_10, a(9)=>taps_15_9, a(8)=>taps_15_8, a(7)=>taps_15_7, a(6)=>
      taps_15_6, a(5)=>taps_15_5, a(4)=>taps_15_4, a(3)=>taps_15_3, a(2)=>
      taps_15_2, a(1)=>taps_15_1, a(0)=>taps_15_0, b(31)=>DANGLING(974), 
      b(30)=>DANGLING(975), b(29)=>DANGLING(976), b(28)=>DANGLING(977), 
      b(27)=>DANGLING(978), b(26)=>DANGLING(979), b(25)=>DANGLING(980), 
      b(24)=>DANGLING(981), b(23)=>DANGLING(982), b(22)=>DANGLING(983), 
      b(21)=>DANGLING(984), b(20)=>DANGLING(985), b(19)=>DANGLING(986), 
      b(18)=>DANGLING(987), b(17)=>DANGLING(988), b(16)=>DANGLING(989), 
      b(15)=>DANGLING(990), b(14)=>DANGLING(991), b(13)=>DANGLING(992), 
      b(12)=>DANGLING(993), b(11)=>DANGLING(994), b(10)=>DANGLING(995), b(9)
      =>DANGLING(996), b(8)=>DANGLING(997), b(7)=>DANGLING(998), b(6)=>
      DANGLING(999), b(5)=>DANGLING(1000), b(4)=>DANGLING(1001), b(3)=>
      DANGLING(1002), b(2)=>DANGLING(1003), b(1)=>DANGLING(1004), b(0)=>
      DANGLING(1005), d(31)=>DANGLING(1006), d(30)=>DANGLING(1007), d(29)=>
      DANGLING(1008), d(28)=>DANGLING(1009), d(27)=>
      tap_array_15_filter_block_prod(15), d(26)=>
      tap_array_15_filter_block_prod(14), d(25)=>
      tap_array_15_filter_block_prod(13), d(24)=>
      tap_array_15_filter_block_prod(12), d(23)=>
      tap_array_15_filter_block_prod(11), d(22)=>
      tap_array_15_filter_block_prod(10), d(21)=>
      tap_array_15_filter_block_prod(9), d(20)=>
      tap_array_15_filter_block_prod(8), d(19)=>
      tap_array_15_filter_block_prod(7), d(18)=>
      tap_array_15_filter_block_prod(6), d(17)=>
      tap_array_15_filter_block_prod(5), d(16)=>
      tap_array_15_filter_block_prod(4), d(15)=>
      tap_array_15_filter_block_prod(3), d(14)=>
      tap_array_15_filter_block_prod(2), d(13)=>
      tap_array_15_filter_block_prod(1), d(12)=>
      tap_array_15_filter_block_prod(0), d(11)=>DANGLING(1010), d(10)=>
      DANGLING(1011), d(9)=>DANGLING(1012), d(8)=>DANGLING(1013), d(7)=>
      DANGLING(1014), d(6)=>DANGLING(1015), d(5)=>DANGLING(1016), d(4)=>
      DANGLING(1017), d(3)=>DANGLING(1018), d(2)=>DANGLING(1019), d(1)=>
      DANGLING(1020), d(0)=>DANGLING(1021));
   tap_array_15_filter_block_next_sum_add16_0 : add_16_13 port map ( cin=>
      DANGLING(1022), a(15)=>tap_array_15_filter_block_prod(15), a(14)=>
      tap_array_15_filter_block_prod(14), a(13)=>
      tap_array_15_filter_block_prod(13), a(12)=>
      tap_array_15_filter_block_prod(12), a(11)=>
      tap_array_15_filter_block_prod(11), a(10)=>
      tap_array_15_filter_block_prod(10), a(9)=>
      tap_array_15_filter_block_prod(9), a(8)=>
      tap_array_15_filter_block_prod(8), a(7)=>
      tap_array_15_filter_block_prod(7), a(6)=>
      tap_array_15_filter_block_prod(6), a(5)=>
      tap_array_15_filter_block_prod(5), a(4)=>
      tap_array_15_filter_block_prod(4), a(3)=>
      tap_array_15_filter_block_prod(3), a(2)=>
      tap_array_15_filter_block_prod(2), a(1)=>
      tap_array_15_filter_block_prod(1), a(0)=>
      tap_array_15_filter_block_prod(0), b(15)=>sums_14(15), b(14)=>
      sums_14(14), b(13)=>sums_14(13), b(12)=>sums_14(12), b(11)=>
      sums_14(11), b(10)=>sums_14(10), b(9)=>sums_14(9), b(8)=>sums_14(8), 
      b(7)=>sums_14(7), b(6)=>sums_14(6), b(5)=>sums_14(5), b(4)=>sums_14(4), 
      b(3)=>sums_14(3), b(2)=>sums_14(2), b(1)=>sums_14(1), b(0)=>sums_14(0), 
      d(15)=>sums_15(15), d(14)=>sums_15(14), d(13)=>sums_15(13), d(12)=>
      sums_15(12), d(11)=>sums_15(11), d(10)=>sums_15(10), d(9)=>sums_15(9), 
      d(8)=>sums_15(8), d(7)=>sums_15(7), d(6)=>sums_15(6), d(5)=>sums_15(5), 
      d(4)=>sums_15(4), d(3)=>sums_15(3), d(2)=>sums_15(2), d(1)=>sums_15(1), 
      d(0)=>sums_15(0), cout=>DANGLING(1023));
   tap_array_16_filter_block_prod_mults28_0 : mult_32_82 port map ( a(31)=>
      taps_16_15, a(30)=>DANGLING(1024), a(29)=>DANGLING(1025), a(28)=>
      DANGLING(1026), a(27)=>DANGLING(1027), a(26)=>DANGLING(1028), a(25)=>
      DANGLING(1029), a(24)=>DANGLING(1030), a(23)=>DANGLING(1031), a(22)=>
      DANGLING(1032), a(21)=>DANGLING(1033), a(20)=>DANGLING(1034), a(19)=>
      DANGLING(1035), a(18)=>DANGLING(1036), a(17)=>DANGLING(1037), a(16)=>
      DANGLING(1038), a(15)=>DANGLING(1039), a(14)=>taps_16_15, a(13)=>
      DANGLING(1040), a(12)=>DANGLING(1041), a(11)=>taps_16_15, a(10)=>
      taps_16_10, a(9)=>taps_16_9, a(8)=>taps_16_8, a(7)=>taps_16_7, a(6)=>
      taps_16_6, a(5)=>taps_16_5, a(4)=>taps_16_4, a(3)=>taps_16_3, a(2)=>
      taps_16_2, a(1)=>taps_16_1, a(0)=>taps_16_0, b(31)=>DANGLING(1042), 
      b(30)=>DANGLING(1043), b(29)=>DANGLING(1044), b(28)=>DANGLING(1045), 
      b(27)=>DANGLING(1046), b(26)=>DANGLING(1047), b(25)=>DANGLING(1048), 
      b(24)=>DANGLING(1049), b(23)=>DANGLING(1050), b(22)=>DANGLING(1051), 
      b(21)=>DANGLING(1052), b(20)=>DANGLING(1053), b(19)=>DANGLING(1054), 
      b(18)=>DANGLING(1055), b(17)=>DANGLING(1056), b(16)=>DANGLING(1057), 
      b(15)=>DANGLING(1058), b(14)=>DANGLING(1059), b(13)=>DANGLING(1060), 
      b(12)=>DANGLING(1061), b(11)=>DANGLING(1062), b(10)=>DANGLING(1063), 
      b(9)=>DANGLING(1064), b(8)=>DANGLING(1065), b(7)=>DANGLING(1066), b(6)
      =>DANGLING(1067), b(5)=>DANGLING(1068), b(4)=>DANGLING(1069), b(3)=>
      DANGLING(1070), b(2)=>DANGLING(1071), b(1)=>DANGLING(1072), b(0)=>
      DANGLING(1073), d(31)=>DANGLING(1074), d(30)=>DANGLING(1075), d(29)=>
      DANGLING(1076), d(28)=>DANGLING(1077), d(27)=>
      tap_array_16_filter_block_prod(15), d(26)=>
      tap_array_16_filter_block_prod(14), d(25)=>
      tap_array_16_filter_block_prod(13), d(24)=>
      tap_array_16_filter_block_prod(12), d(23)=>
      tap_array_16_filter_block_prod(11), d(22)=>
      tap_array_16_filter_block_prod(10), d(21)=>
      tap_array_16_filter_block_prod(9), d(20)=>
      tap_array_16_filter_block_prod(8), d(19)=>
      tap_array_16_filter_block_prod(7), d(18)=>
      tap_array_16_filter_block_prod(6), d(17)=>
      tap_array_16_filter_block_prod(5), d(16)=>
      tap_array_16_filter_block_prod(4), d(15)=>
      tap_array_16_filter_block_prod(3), d(14)=>
      tap_array_16_filter_block_prod(2), d(13)=>
      tap_array_16_filter_block_prod(1), d(12)=>
      tap_array_16_filter_block_prod(0), d(11)=>DANGLING(1078), d(10)=>
      DANGLING(1079), d(9)=>DANGLING(1080), d(8)=>DANGLING(1081), d(7)=>
      DANGLING(1082), d(6)=>DANGLING(1083), d(5)=>DANGLING(1084), d(4)=>
      DANGLING(1085), d(3)=>DANGLING(1086), d(2)=>DANGLING(1087), d(1)=>
      DANGLING(1088), d(0)=>DANGLING(1089));
   tap_array_16_filter_block_next_sum_add16_0 : add_16_14 port map ( cin=>
      DANGLING(1090), a(15)=>tap_array_16_filter_block_prod(15), a(14)=>
      tap_array_16_filter_block_prod(14), a(13)=>
      tap_array_16_filter_block_prod(13), a(12)=>
      tap_array_16_filter_block_prod(12), a(11)=>
      tap_array_16_filter_block_prod(11), a(10)=>
      tap_array_16_filter_block_prod(10), a(9)=>
      tap_array_16_filter_block_prod(9), a(8)=>
      tap_array_16_filter_block_prod(8), a(7)=>
      tap_array_16_filter_block_prod(7), a(6)=>
      tap_array_16_filter_block_prod(6), a(5)=>
      tap_array_16_filter_block_prod(5), a(4)=>
      tap_array_16_filter_block_prod(4), a(3)=>
      tap_array_16_filter_block_prod(3), a(2)=>
      tap_array_16_filter_block_prod(2), a(1)=>
      tap_array_16_filter_block_prod(1), a(0)=>
      tap_array_16_filter_block_prod(0), b(15)=>sums_15(15), b(14)=>
      sums_15(14), b(13)=>sums_15(13), b(12)=>sums_15(12), b(11)=>
      sums_15(11), b(10)=>sums_15(10), b(9)=>sums_15(9), b(8)=>sums_15(8), 
      b(7)=>sums_15(7), b(6)=>sums_15(6), b(5)=>sums_15(5), b(4)=>sums_15(4), 
      b(3)=>sums_15(3), b(2)=>sums_15(2), b(1)=>sums_15(1), b(0)=>sums_15(0), 
      d(15)=>sums_16(15), d(14)=>sums_16(14), d(13)=>sums_16(13), d(12)=>
      sums_16(12), d(11)=>sums_16(11), d(10)=>sums_16(10), d(9)=>sums_16(9), 
      d(8)=>sums_16(8), d(7)=>sums_16(7), d(6)=>sums_16(6), d(5)=>sums_16(5), 
      d(4)=>sums_16(4), d(3)=>sums_16(3), d(2)=>sums_16(2), d(1)=>sums_16(1), 
      d(0)=>sums_16(0), cout=>DANGLING(1091));
   tap_array_17_filter_block_prod_mults28_0 : mult_32_83 port map ( a(31)=>
      tap_array_17_filter_block_tap_next_15, a(30)=>DANGLING(1092), a(29)=>
      DANGLING(1093), a(28)=>DANGLING(1094), a(27)=>DANGLING(1095), a(26)=>
      DANGLING(1096), a(25)=>DANGLING(1097), a(24)=>DANGLING(1098), a(23)=>
      DANGLING(1099), a(22)=>DANGLING(1100), a(21)=>DANGLING(1101), a(20)=>
      DANGLING(1102), a(19)=>DANGLING(1103), a(18)=>DANGLING(1104), a(17)=>
      DANGLING(1105), a(16)=>DANGLING(1106), a(15)=>DANGLING(1107), a(14)=>
      tap_array_17_filter_block_tap_next_15, a(13)=>DANGLING(1108), a(12)=>
      DANGLING(1109), a(11)=>tap_array_17_filter_block_tap_next_15, a(10)=>
      tap_array_17_filter_block_tap_next_10, a(9)=>
      tap_array_17_filter_block_tap_next_9, a(8)=>
      tap_array_17_filter_block_tap_next_8, a(7)=>
      tap_array_17_filter_block_tap_next_7, a(6)=>
      tap_array_17_filter_block_tap_next_6, a(5)=>
      tap_array_17_filter_block_tap_next_5, a(4)=>
      tap_array_17_filter_block_tap_next_4, a(3)=>
      tap_array_17_filter_block_tap_next_3, a(2)=>
      tap_array_17_filter_block_tap_next_2, a(1)=>
      tap_array_17_filter_block_tap_next_1, a(0)=>
      tap_array_17_filter_block_tap_next_0, b(31)=>DANGLING(1110), b(30)=>
      DANGLING(1111), b(29)=>DANGLING(1112), b(28)=>DANGLING(1113), b(27)=>
      DANGLING(1114), b(26)=>DANGLING(1115), b(25)=>DANGLING(1116), b(24)=>
      DANGLING(1117), b(23)=>DANGLING(1118), b(22)=>DANGLING(1119), b(21)=>
      DANGLING(1120), b(20)=>DANGLING(1121), b(19)=>DANGLING(1122), b(18)=>
      DANGLING(1123), b(17)=>DANGLING(1124), b(16)=>DANGLING(1125), b(15)=>
      DANGLING(1126), b(14)=>DANGLING(1127), b(13)=>DANGLING(1128), b(12)=>
      DANGLING(1129), b(11)=>DANGLING(1130), b(10)=>DANGLING(1131), b(9)=>
      DANGLING(1132), b(8)=>DANGLING(1133), b(7)=>DANGLING(1134), b(6)=>
      DANGLING(1135), b(5)=>DANGLING(1136), b(4)=>DANGLING(1137), b(3)=>
      DANGLING(1138), b(2)=>DANGLING(1139), b(1)=>DANGLING(1140), b(0)=>
      DANGLING(1141), d(31)=>DANGLING(1142), d(30)=>DANGLING(1143), d(29)=>
      DANGLING(1144), d(28)=>DANGLING(1145), d(27)=>
      tap_array_17_filter_block_prod(15), d(26)=>
      tap_array_17_filter_block_prod(14), d(25)=>
      tap_array_17_filter_block_prod(13), d(24)=>
      tap_array_17_filter_block_prod(12), d(23)=>
      tap_array_17_filter_block_prod(11), d(22)=>
      tap_array_17_filter_block_prod(10), d(21)=>
      tap_array_17_filter_block_prod(9), d(20)=>
      tap_array_17_filter_block_prod(8), d(19)=>
      tap_array_17_filter_block_prod(7), d(18)=>
      tap_array_17_filter_block_prod(6), d(17)=>
      tap_array_17_filter_block_prod(5), d(16)=>
      tap_array_17_filter_block_prod(4), d(15)=>
      tap_array_17_filter_block_prod(3), d(14)=>
      tap_array_17_filter_block_prod(2), d(13)=>
      tap_array_17_filter_block_prod(1), d(12)=>
      tap_array_17_filter_block_prod(0), d(11)=>DANGLING(1146), d(10)=>
      DANGLING(1147), d(9)=>DANGLING(1148), d(8)=>DANGLING(1149), d(7)=>
      DANGLING(1150), d(6)=>DANGLING(1151), d(5)=>DANGLING(1152), d(4)=>
      DANGLING(1153), d(3)=>DANGLING(1154), d(2)=>DANGLING(1155), d(1)=>
      DANGLING(1156), d(0)=>DANGLING(1157));
   tap_array_17_filter_block_next_sum_add16_0 : add_16_15 port map ( cin=>
      DANGLING(1158), a(15)=>tap_array_17_filter_block_prod(15), a(14)=>
      tap_array_17_filter_block_prod(14), a(13)=>
      tap_array_17_filter_block_prod(13), a(12)=>
      tap_array_17_filter_block_prod(12), a(11)=>
      tap_array_17_filter_block_prod(11), a(10)=>
      tap_array_17_filter_block_prod(10), a(9)=>
      tap_array_17_filter_block_prod(9), a(8)=>
      tap_array_17_filter_block_prod(8), a(7)=>
      tap_array_17_filter_block_prod(7), a(6)=>
      tap_array_17_filter_block_prod(6), a(5)=>
      tap_array_17_filter_block_prod(5), a(4)=>
      tap_array_17_filter_block_prod(4), a(3)=>
      tap_array_17_filter_block_prod(3), a(2)=>
      tap_array_17_filter_block_prod(2), a(1)=>
      tap_array_17_filter_block_prod(1), a(0)=>
      tap_array_17_filter_block_prod(0), b(15)=>sums_16(15), b(14)=>
      sums_16(14), b(13)=>sums_16(13), b(12)=>sums_16(12), b(11)=>
      sums_16(11), b(10)=>sums_16(10), b(9)=>sums_16(9), b(8)=>sums_16(8), 
      b(7)=>sums_16(7), b(6)=>sums_16(6), b(5)=>sums_16(5), b(4)=>sums_16(4), 
      b(3)=>sums_16(3), b(2)=>sums_16(2), b(1)=>sums_16(1), b(0)=>sums_16(0), 
      d(15)=>o_data(15), d(14)=>o_data(14), d(13)=>o_data(13), d(12)=>
      o_data(12), d(11)=>o_data(11), d(10)=>o_data(10), d(9)=>o_data(9), 
      d(8)=>o_data(8), d(7)=>o_data(7), d(6)=>o_data(6), d(5)=>o_data(5), 
      d(4)=>o_data(4), d(3)=>o_data(3), d(2)=>o_data(2), d(1)=>o_data(1), 
      d(0)=>o_data(0), cout=>DANGLING(1159));
   tap_array_9_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_9_9, datain=>taps_8_9, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_9_8, datain=>taps_8_8, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_9_7, datain=>taps_8_7, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_9_6, datain=>taps_8_6, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_9_5, datain=>taps_8_5, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_9_4, datain=>taps_8_4, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_9_3, datain=>taps_8_3, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_9_2, datain=>taps_8_2, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_9_15, datain=>taps_8_15, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_9_10, datain=>taps_8_10, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_9_1, datain=>taps_8_1, clk=>clk);
   tap_array_9_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_9_0, datain=>taps_8_0, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_8_9, datain=>taps_7_9, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_8_8, datain=>taps_7_8, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_8_7, datain=>taps_7_7, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_8_6, datain=>taps_7_6, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_8_5, datain=>taps_7_5, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_8_4, datain=>taps_7_4, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_8_3, datain=>taps_7_3, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_8_2, datain=>taps_7_2, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_8_15, datain=>taps_7_15, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_8_10, datain=>taps_7_10, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_8_1, datain=>taps_7_1, clk=>clk);
   tap_array_8_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_8_0, datain=>taps_7_0, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_7_9, datain=>taps_6_9, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_7_8, datain=>taps_6_8, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_7_7, datain=>taps_6_7, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_7_6, datain=>taps_6_6, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_7_5, datain=>taps_6_5, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_7_4, datain=>taps_6_4, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_7_3, datain=>taps_6_3, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_7_2, datain=>taps_6_2, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_7_15, datain=>taps_6_15, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_7_10, datain=>taps_6_10, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_7_1, datain=>taps_6_1, clk=>clk);
   tap_array_7_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_7_0, datain=>taps_6_0, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_6_9, datain=>taps_5_9, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_6_8, datain=>taps_5_8, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_6_7, datain=>taps_5_7, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_6_6, datain=>taps_5_6, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_6_5, datain=>taps_5_5, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_6_4, datain=>taps_5_4, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_6_3, datain=>taps_5_3, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_6_2, datain=>taps_5_2, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_6_15, datain=>taps_5_15, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_6_10, datain=>taps_5_10, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_6_1, datain=>taps_5_1, clk=>clk);
   tap_array_6_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_6_0, datain=>taps_5_0, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_5_9, datain=>taps_4_9, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_5_8, datain=>taps_4_8, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_5_7, datain=>taps_4_7, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_5_6, datain=>taps_4_6, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_5_5, datain=>taps_4_5, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_5_4, datain=>taps_4_4, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_5_3, datain=>taps_4_3, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_5_2, datain=>taps_4_2, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_5_15, datain=>taps_4_15, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_5_10, datain=>taps_4_10, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_5_1, datain=>taps_4_1, clk=>clk);
   tap_array_5_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_5_0, datain=>taps_4_0, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_4_9, datain=>taps_3_9, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_4_8, datain=>taps_3_8, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_4_7, datain=>taps_3_7, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_4_6, datain=>taps_3_6, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_4_5, datain=>taps_3_5, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_4_4, datain=>taps_3_4, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_4_3, datain=>taps_3_3, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_4_2, datain=>taps_3_2, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_4_15, datain=>taps_3_15, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_4_10, datain=>taps_3_10, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_4_1, datain=>taps_3_1, clk=>clk);
   tap_array_4_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_4_0, datain=>taps_3_0, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_3_9, datain=>taps_2_9, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_3_8, datain=>taps_2_8, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_3_7, datain=>taps_2_7, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_3_6, datain=>taps_2_6, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_3_5, datain=>taps_2_5, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_3_4, datain=>taps_2_4, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_3_3, datain=>taps_2_3, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_3_2, datain=>taps_2_2, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_3_15, datain=>taps_2_15, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_3_10, datain=>taps_2_10, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_3_1, datain=>taps_2_1, clk=>clk);
   tap_array_3_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_3_0, datain=>taps_2_0, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_2_9, datain=>taps_1_9, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_2_8, datain=>taps_1_8, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_2_7, datain=>taps_1_7, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_2_6, datain=>taps_1_6, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_2_5, datain=>taps_1_5, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_2_4, datain=>taps_1_4, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_2_3, datain=>taps_1_3, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_2_2, datain=>taps_1_2, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_2_15, datain=>taps_1_15, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_2_10, datain=>taps_1_10, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_2_1, datain=>taps_1_1, clk=>clk);
   tap_array_2_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_2_0, datain=>taps_1_0, clk=>clk);
   tap_array_1_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_1_9, datain=>i_data(9), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_1_8, datain=>i_data(8), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_1_7, datain=>i_data(7), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_1_6, datain=>i_data(6), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_1_5, datain=>i_data(5), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_1_4, datain=>i_data(4), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_1_3, datain=>i_data(3), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_1_2, datain=>i_data(2), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_1_15, datain=>i_data(15), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_1_10, datain=>i_data(10), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_1_1, datain=>i_data(1), clk=>clk);
   tap_array_1_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_1_0, datain=>i_data(0), clk=>clk);
   tap_array_17_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_9, datain=>
      taps_16_9, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_8, datain=>
      taps_16_8, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_7, datain=>
      taps_16_7, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_6, datain=>
      taps_16_6, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_5, datain=>
      taps_16_5, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_4, datain=>
      taps_16_4, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_3, datain=>
      taps_16_3, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_2, datain=>
      taps_16_2, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_15, datain=>
      taps_16_15, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_10, datain=>
      taps_16_10, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_1, datain=>
      taps_16_1, clk=>clk);
   tap_array_17_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>tap_array_17_filter_block_tap_next_0, datain=>
      taps_16_0, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_16_9, datain=>taps_15_9, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_16_8, datain=>taps_15_8, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_16_7, datain=>taps_15_7, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_16_6, datain=>taps_15_6, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_16_5, datain=>taps_15_5, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_16_4, datain=>taps_15_4, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_16_3, datain=>taps_15_3, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_16_2, datain=>taps_15_2, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_16_15, datain=>taps_15_15, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_16_10, datain=>taps_15_10, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_16_1, datain=>taps_15_1, clk=>clk);
   tap_array_16_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_16_0, datain=>taps_15_0, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_15_9, datain=>taps_14_9, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_15_8, datain=>taps_14_8, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_15_7, datain=>taps_14_7, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_15_6, datain=>taps_14_6, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_15_5, datain=>taps_14_5, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_15_4, datain=>taps_14_4, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_15_3, datain=>taps_14_3, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_15_2, datain=>taps_14_2, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_15_15, datain=>taps_14_15, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_15_10, datain=>taps_14_10, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_15_1, datain=>taps_14_1, clk=>clk);
   tap_array_15_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_15_0, datain=>taps_14_0, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_14_9, datain=>taps_13_9, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_14_8, datain=>taps_13_8, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_14_7, datain=>taps_13_7, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_14_6, datain=>taps_13_6, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_14_5, datain=>taps_13_5, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_14_4, datain=>taps_13_4, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_14_3, datain=>taps_13_3, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_14_2, datain=>taps_13_2, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_14_15, datain=>taps_13_15, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_14_10, datain=>taps_13_10, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_14_1, datain=>taps_13_1, clk=>clk);
   tap_array_14_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_14_0, datain=>taps_13_0, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_13_9, datain=>taps_12_9, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_13_8, datain=>taps_12_8, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_13_7, datain=>taps_12_7, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_13_6, datain=>taps_12_6, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_13_5, datain=>taps_12_5, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_13_4, datain=>taps_12_4, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_13_3, datain=>taps_12_3, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_13_2, datain=>taps_12_2, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_13_15, datain=>taps_12_15, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_13_10, datain=>taps_12_10, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_13_1, datain=>taps_12_1, clk=>clk);
   tap_array_13_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_13_0, datain=>taps_12_0, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_12_9, datain=>taps_11_9, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_12_8, datain=>taps_11_8, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_12_7, datain=>taps_11_7, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_12_6, datain=>taps_11_6, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_12_5, datain=>taps_11_5, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_12_4, datain=>taps_11_4, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_12_3, datain=>taps_11_3, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_12_2, datain=>taps_11_2, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_12_15, datain=>taps_11_15, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_12_10, datain=>taps_11_10, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_12_1, datain=>taps_11_1, clk=>clk);
   tap_array_12_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_12_0, datain=>taps_11_0, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_11_9, datain=>taps_10_9, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_11_8, datain=>taps_10_8, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_11_7, datain=>taps_10_7, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_11_6, datain=>taps_10_6, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_11_5, datain=>taps_10_5, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_11_4, datain=>taps_10_4, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_11_3, datain=>taps_10_3, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_11_2, datain=>taps_10_2, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_11_15, datain=>taps_10_15, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_11_10, datain=>taps_10_10, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_11_1, datain=>taps_10_1, clk=>clk);
   tap_array_11_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_11_0, datain=>taps_10_0, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_9 : cycloneii_lcell_ff
       port map ( regout=>taps_10_9, datain=>taps_9_9, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_8 : cycloneii_lcell_ff
       port map ( regout=>taps_10_8, datain=>taps_9_8, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_7 : cycloneii_lcell_ff
       port map ( regout=>taps_10_7, datain=>taps_9_7, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_6 : cycloneii_lcell_ff
       port map ( regout=>taps_10_6, datain=>taps_9_6, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_5 : cycloneii_lcell_ff
       port map ( regout=>taps_10_5, datain=>taps_9_5, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_4 : cycloneii_lcell_ff
       port map ( regout=>taps_10_4, datain=>taps_9_4, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_3 : cycloneii_lcell_ff
       port map ( regout=>taps_10_3, datain=>taps_9_3, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_2 : cycloneii_lcell_ff
       port map ( regout=>taps_10_2, datain=>taps_9_2, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_15 : cycloneii_lcell_ff
       port map ( regout=>taps_10_15, datain=>taps_9_15, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_10 : cycloneii_lcell_ff
       port map ( regout=>taps_10_10, datain=>taps_9_10, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_1 : cycloneii_lcell_ff
       port map ( regout=>taps_10_1, datain=>taps_9_1, clk=>clk);
   tap_array_10_filter_block_reg_current_tap_0 : cycloneii_lcell_ff
       port map ( regout=>taps_10_0, datain=>taps_9_0, clk=>clk);
end low_pass ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_16_0 ;

architecture IMPLEMENTATION of modgen_counter_16_0 is 
   signal q_15_EXMPLR2066, q_14_EXMPLR2067, q_13_EXMPLR2068, q_12_EXMPLR2069, 
      q_11_EXMPLR2070, q_10_EXMPLR2071, q_9_EXMPLR2072, q_8_EXMPLR2073, 
      q_7_EXMPLR2074, q_6_EXMPLR2075, q_5_EXMPLR2076, q_4_EXMPLR2077, 
      q_3_EXMPLR2078, q_2_EXMPLR2079, q_1_EXMPLR2080, q_0_EXMPLR2081, 
      nx51271z1, nx22081z16, nx52268z1, nx22081z15, nx53265z1, nx22081z14, 
      nx54262z1, nx22081z13, nx55259z1, nx22081z12, nx56256z1, nx22081z11, 
      nx57253z1, nx22081z10, nx58250z1, nx22081z9, nx59247z1, nx22081z8, 
      nx60244z1, nx22081z7, nx17096z1, nx22081z6, nx18093z1, nx22081z5, 
      nx19090z1, nx22081z4, nx20087z1, nx22081z3, nx21084z1, nx22081z2, 
      nx22081z1, nx_modgen_counter_16_0_vcc_net: std_logic ;

begin
   q(15) <= q_15_EXMPLR2066 ;
   q(14) <= q_14_EXMPLR2067 ;
   q(13) <= q_13_EXMPLR2068 ;
   q(12) <= q_12_EXMPLR2069 ;
   q(11) <= q_11_EXMPLR2070 ;
   q(10) <= q_10_EXMPLR2071 ;
   q(9) <= q_9_EXMPLR2072 ;
   q(8) <= q_8_EXMPLR2073 ;
   q(7) <= q_7_EXMPLR2074 ;
   q(6) <= q_6_EXMPLR2075 ;
   q(5) <= q_5_EXMPLR2076 ;
   q(4) <= q_4_EXMPLR2077 ;
   q(3) <= q_3_EXMPLR2078 ;
   q(2) <= q_2_EXMPLR2079 ;
   q(1) <= q_1_EXMPLR2080 ;
   q(0) <= q_0_EXMPLR2081 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>q_9_EXMPLR2072, datain=>
      nx60244z1, clk=>clock, ena=>cnt_en);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>q_8_EXMPLR2073, datain=>
      nx59247z1, clk=>clock, ena=>cnt_en);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>q_7_EXMPLR2074, datain=>
      nx58250z1, clk=>clock, ena=>cnt_en);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>q_6_EXMPLR2075, datain=>
      nx57253z1, clk=>clock, ena=>cnt_en);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>q_5_EXMPLR2076, datain=>
      nx56256z1, clk=>clock, ena=>cnt_en);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>q_4_EXMPLR2077, datain=>
      nx55259z1, clk=>clock, ena=>cnt_en);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>q_3_EXMPLR2078, datain=>
      nx54262z1, clk=>clock, ena=>cnt_en);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>q_2_EXMPLR2079, datain=>
      nx53265z1, clk=>clock, ena=>cnt_en);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>q_15_EXMPLR2066, datain
      =>nx22081z1, clk=>clock, ena=>cnt_en);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>q_14_EXMPLR2067, datain
      =>nx21084z1, clk=>clock, ena=>cnt_en);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>q_13_EXMPLR2068, datain
      =>nx20087z1, clk=>clock, ena=>cnt_en);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>q_12_EXMPLR2069, datain
      =>nx19090z1, clk=>clock, ena=>cnt_en);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>q_11_EXMPLR2070, datain
      =>nx18093z1, clk=>clock, ena=>cnt_en);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>q_10_EXMPLR2071, datain
      =>nx17096z1, clk=>clock, ena=>cnt_en);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>q_1_EXMPLR2080, datain=>
      nx52268z1, clk=>clock, ena=>cnt_en);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>q_0_EXMPLR2081, datain=>
      nx51271z1, clk=>clock, ena=>cnt_en);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx22081z14, dataa=>
      q_2_EXMPLR2079, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z15
   );
   nx_modgen_counter_16_0_vcc_net <= '1';
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx22081z1, dataa=>q_15_EXMPLR2066, datad=>
      nx_modgen_counter_16_0_vcc_net, cin=>nx22081z2);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21084z1, cout=>nx22081z2, dataa=>
      q_14_EXMPLR2067, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z3
   );
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx20087z1, cout=>nx22081z3, dataa=>
      q_13_EXMPLR2068, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z4
   );
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, cout=>nx22081z4, dataa=>
      q_12_EXMPLR2069, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z5
   );
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx22081z5, dataa=>
      q_11_EXMPLR2070, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z6
   );
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx22081z6, dataa=>
      q_10_EXMPLR2071, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z7
   );
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx22081z7, dataa=>q_9_EXMPLR2072, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z8);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx22081z15, dataa=>
      q_1_EXMPLR2080, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z16
   );
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx22081z8, dataa=>q_8_EXMPLR2073, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z9);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx22081z9, dataa=>q_7_EXMPLR2074, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z10);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx22081z10, dataa=>
      q_6_EXMPLR2075, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z11
   );
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx22081z11, dataa=>
      q_5_EXMPLR2076, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z12
   );
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx22081z12, dataa=>
      q_4_EXMPLR2077, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z13
   );
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx22081z13, dataa=>
      q_3_EXMPLR2078, datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z14
   );
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx22081z16, dataa=>
      q_0_EXMPLR2081, datad=>nx_modgen_counter_16_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_1 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_16_1 ;

architecture IMPLEMENTATION of modgen_counter_16_1 is 
   signal nx1963z1, nx19090z3, nx19090z5, nx19090z7, nx19090z9, nx19090z11, 
      nx19090z13, nx19090z15, nx19090z17, nx19090z19, nx19090z21, nx19090z23, 
      nx19090z25, nx51271z1, nx19090z24, nx52268z1, nx19090z22, nx53265z1, 
      nx19090z20, nx54262z1, nx19090z18, nx55259z1, nx19090z16, nx56256z1, 
      nx19090z14, nx57253z1, nx19090z12, nx58250z1, nx19090z10, nx59247z1, 
      nx19090z8, nx60244z1, nx19090z6, nx17096z1, nx19090z4, nx18093z1, 
      nx19090z2, nx19090z1, nx_modgen_counter_16_1_vcc_net: std_logic ;

begin
   q(12) <= nx1963z1 ;
   q(11) <= nx19090z3 ;
   q(10) <= nx19090z5 ;
   q(9) <= nx19090z7 ;
   q(8) <= nx19090z9 ;
   q(7) <= nx19090z11 ;
   q(6) <= nx19090z13 ;
   q(5) <= nx19090z15 ;
   q(4) <= nx19090z17 ;
   q(3) <= nx19090z19 ;
   q(2) <= nx19090z21 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx19090z7, datain=>
      nx60244z1, clk=>clock, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx19090z9, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx19090z11, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx19090z13, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx19090z15, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx19090z17, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx19090z19, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx19090z21, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx1963z1, datain=>
      nx19090z1, clk=>clock, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx19090z3, datain=>
      nx18093z1, clk=>clock, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx19090z5, datain=>
      nx17096z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx19090z23, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx19090z25, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix19090z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, dataa=>nx1963z1, datad=>
      nx_modgen_counter_16_1_vcc_net, cin=>nx19090z2);
   nx_modgen_counter_16_1_vcc_net <= '1';
   ix19090z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx19090z2, dataa=>nx19090z3, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z4);
   ix19090z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx19090z4, dataa=>nx19090z5, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z6);
   ix19090z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx19090z6, dataa=>nx19090z7, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z8);
   ix19090z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx19090z22, dataa=>nx19090z23, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z24);
   ix19090z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx19090z8, dataa=>nx19090z9, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z10);
   ix19090z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx19090z10, dataa=>nx19090z11, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z12);
   ix19090z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx19090z12, dataa=>nx19090z13, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z14);
   ix19090z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx19090z14, dataa=>nx19090z15, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z16);
   ix19090z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx19090z24, dataa=>nx19090z25, 
      datad=>nx_modgen_counter_16_1_vcc_net);
   ix19090z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx19090z16, dataa=>nx19090z17, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z18);
   ix19090z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx19090z18, dataa=>nx19090z19, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z20);
   ix19090z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx19090z20, dataa=>nx19090z21, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z22);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_5_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (4 DOWNTO 0) ;
      b : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic_vector (4 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_5_0 ;

architecture IMPLEMENTATION of sub_5_0 is 
   signal nx41961z11, nx41961z8, nx41961z5, nx41961z3, nx_sub_5_0_vcc_net: 
   std_logic ;

begin
   ix41961z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), dataa=>b(4), datad=>nx_sub_5_0_vcc_net, cin
      =>nx41961z3);
   nx_sub_5_0_vcc_net <= '1';
   ix41961z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5af5",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx41961z3, dataa=>b(3), datad=>
      nx_sub_5_0_vcc_net, cin=>nx41961z5);
   ix41961z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx41961z5, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_5_0_vcc_net, cin=>nx41961z8);
   ix41961z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx41961z8, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_5_0_vcc_net, cin=>nx41961z11);
   ix41961z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx41961z11, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_5_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_6_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (5 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (5 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic ;
      p_p_reset : IN std_logic ;
      p_p_clk : IN std_logic ;
      p_m_i2c_ctrl_clk_dup_357 : IN std_logic ;
      px755 : IN std_logic ;
      p_p_clock : IN std_logic) ;
end modgen_counter_6_0 ;

architecture IMPLEMENTATION of modgen_counter_6_0 is 
   signal nx55259z3, nx64583z1, nx56256z3, nx56256z5, nx56256z7, nx56256z9, 
      nx56256z11, nx51271z1, nx56256z10, nx52268z1, nx56256z8, nx53265z1, 
      nx56256z6, nx54262z1, nx56256z4, nx55259z1, nx56256z2, nx56256z1, 
      nx56256z12, nx55259z2, nx54262z2, nx53265z2, nx52268z2, nx51271z2, 
      nx_modgen_counter_6_0_vcc_net: std_logic ;

begin
   q(5) <= nx64583z1 ;
   q(4) <= nx56256z3 ;
   q(3) <= nx56256z5 ;
   q(2) <= nx56256z7 ;
   q(1) <= nx56256z9 ;
   q(0) <= nx56256z11 ;
   nx56256z12 <= '1';
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx64583z1, datain=>
      nx56256z1, sdata=>nx56256z12, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx55259z2 <= '1';
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx56256z3, datain=>
      nx55259z1, sdata=>nx55259z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx54262z2 <= '1';
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx56256z5, datain=>
      nx54262z1, sdata=>nx54262z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx53265z2 <= '1';
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx56256z7, datain=>
      nx53265z1, sdata=>nx53265z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx52268z2 <= '1';
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx56256z9, datain=>
      nx52268z1, sdata=>nx52268z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx51271z2 <= '1';
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx56256z11, datain=>
      nx51271z1, sdata=>nx51271z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   ix56256z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx56256z6, dataa=>nx56256z7, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z8);
   nx_modgen_counter_6_0_vcc_net <= '1';
   ix56256z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx56256z8, dataa=>nx56256z9, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z10);
   ix56256z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, dataa=>nx64583z1, datad=>
      nx_modgen_counter_6_0_vcc_net, cin=>nx56256z2);
   ix56256z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx56256z2, dataa=>nx56256z3, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z4);
   ix56256z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx56256z4, dataa=>nx56256z5, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z6);
   ix56256z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx56256z10, dataa=>nx56256z11, 
      datad=>nx_modgen_counter_6_0_vcc_net);
   ix55259z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0d00") 
       port map ( combout=>nx55259z3, dataa=>p_p_reset, datab=>cnt_en, datac
      =>p_p_clock, datad=>px755);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity i2c_ctrl_notri is 
   port (
      p_i2c_sdat : IN std_logic ;
      p_finish_xfr : OUT std_logic ;
      p_i2c_data_4 : IN std_logic_vector (2 DOWNTO 0) ;
      p_i2c_data_3 : IN std_logic_vector (4 DOWNTO 4) ;
      p_i2c_data_2 : IN std_logic_vector (7 DOWNTO 6) ;
      p_i2c_data_1 : IN std_logic_vector (12 DOWNTO 9) ;
      p_i2c_data_5 : IN std_logic_vector (22 DOWNTO 21) ;
      p_i2c_sclk : OUT std_logic ;
      p_start_xfr : IN std_logic ;
      p_reset_rtlc_164_and_34 : IN std_logic_vector (2 DOWNTO 2) ;
      p_ack : OUT std_logic ;
      p_not_sdo : OUT std_logic ;
      p_clock : IN std_logic ;
      p_sdo : OUT std_logic ;
      p_p_clk : IN std_logic ;
      p_m_i2c_ctrl_clk_dup_357 : IN std_logic ;
      p_not_reset_n : IN std_logic ;
      px355 : IN std_logic) ;
end i2c_ctrl_notri ;

architecture main_unfold_1393 of i2c_ctrl_notri is 
   component sub_5_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (4 DOWNTO 0) ;
         b : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic_vector (4 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_6_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (5 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (5 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic ;
         p_p_reset : IN std_logic ;
         p_p_clk : IN std_logic ;
         p_m_i2c_ctrl_clk_dup_357 : IN std_logic ;
         px755 : IN std_logic ;
         p_p_clock : IN std_logic) ;
   end component ;
   signal sd_counter_4, sd_counter_3, sd_counter_2, sd_counter_1, 
      sd_counter_0: std_logic ;
   
   signal sdo_5n5s2: std_logic_vector (4 DOWNTO 0) ;
   
   signal sd_counter_5, nx41315z14, nx41315z16, nx41315z21, nx41315z12, 
      nx41315z13, nx41315z17, sdo_5n5s2f1_0, sdo_5n5s2f1_1, nx41315z4, 
      nx7286z1, nx41315z19, nx44942z2, nx22137z1, nx44942z7, nx41315z2, 
      nx44942z4, nx44942z5, nx22137z2, nx44942z8, nx41315z15, nx41315z8, 
      nx41315z7, nx44942z6, nx41315z5, nx41315z10, nx41315z3, nx41315z22, 
      nx43379z2, nx43379z3, nx41315z9, nx41315z11, nx41315z18, nx41315z6, 
      nx7286z2, nx43379z4, nx51857z1, nx41315z1, nx43379z1, nx44942z1, 
      nx44942z3, nx41315z20: std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   sdo_sub5_5i2 : sub_5_0 port map ( cin=>DANGLING(0), a(4)=>DANGLING(1), 
      a(3)=>DANGLING(2), a(2)=>nx22137z1, a(1)=>sdo_5n5s2f1_1, a(0)=>
      sdo_5n5s2f1_0, b(4)=>sd_counter_4, b(3)=>sd_counter_3, b(2)=>
      sd_counter_2, b(1)=>sd_counter_1, b(0)=>sd_counter_0, d(4)=>
      sdo_5n5s2(4), d(3)=>sdo_5n5s2(3), d(2)=>sdo_5n5s2(2), d(1)=>
      sdo_5n5s2(1), d(0)=>sdo_5n5s2(0), cout=>DANGLING(3));
   modgen_counter_sd_counter : modgen_counter_6_0 port map ( clock=>p_clock, 
      q(5)=>sd_counter_5, q(4)=>sd_counter_4, q(3)=>sd_counter_3, q(2)=>
      sd_counter_2, q(1)=>sd_counter_1, q(0)=>sd_counter_0, clk_en=>DANGLING
      (4), aclear=>DANGLING(5), sload=>p_not_reset_n, data(5)=>DANGLING(6), 
      data(4)=>DANGLING(7), data(3)=>DANGLING(8), data(2)=>DANGLING(9), 
      data(1)=>DANGLING(10), data(0)=>DANGLING(11), aset=>DANGLING(12), 
      sclear=>DANGLING(13), updn=>DANGLING(14), cnt_en=>nx7286z1, p_p_reset
      =>p_reset_rtlc_164_and_34(2), p_p_clk=>p_p_clk, 
      p_m_i2c_ctrl_clk_dup_357=>DANGLING(15), px755=>px355, p_p_clock=>
      p_clock);
   p_sdo <= NOT nx51857z1;
   reg_sdo : cycloneii_lcell_ff port map ( regout=>nx51857z1, datain=>
      nx41315z1, clk=>p_p_clk, ena=>nx41315z19, sclr=>p_not_reset_n);
   reg_sclk : cycloneii_lcell_ff port map ( regout=>nx43379z1, datain=>
      nx44942z1, clk=>p_p_clk, ena=>nx44942z2, sclr=>p_not_reset_n);
   ix41315z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx41315z21, dataa=>sd_counter_1, datab=>
      sd_counter_0, datac=>nx44942z4, datad=>nx44942z5);
   ix41315z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx41315z16, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>sd_counter_1);
   ix41315z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx41315z14, dataa=>sd_counter_4, datab=>
      sd_counter_2, datac=>sd_counter_5);
   ix43379z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx43379z4, dataa=>sd_counter_3, datab=>
      sd_counter_1, datac=>sd_counter_0);
   ix7286z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx7286z2, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_1);
   ix41315z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0504") 
       port map ( combout=>nx41315z6, dataa=>sd_counter_4, datab=>
      sd_counter_1, datac=>sd_counter_5, datad=>nx44942z5);
   ix41315z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx41315z18, dataa=>sdo_5n5s2(1), datab=>
      sdo_5n5s2(2), datac=>sdo_5n5s2(4), datad=>sdo_5n5s2(0));
   ix41315z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx41315z11, dataa=>nx41315z12, datab=>nx41315z13, 
      datac=>nx41315z15);
   ix43379z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"040c") 
       port map ( combout=>nx43379z3, dataa=>sd_counter_4, datab=>
      sd_counter_2, datac=>sd_counter_5, datad=>nx43379z4);
   ix43379z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"000e") 
       port map ( combout=>nx43379z2, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix41315z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx41315z22, dataa=>nx41315z14, datab=>
      sd_counter_0, datac=>nx44942z7, datad=>nx41315z15);
   ix41315z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff74") 
       port map ( combout=>nx41315z3, dataa=>nx41315z4, datab=>nx22137z1, 
      datac=>nx41315z5, datad=>nx41315z6);
   ix41315z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx41315z5, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>nx44942z4, datad=>nx43379z4);
   ix44942z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5557") 
       port map ( combout=>nx44942z6, dataa=>p_reset_rtlc_164_and_34(2), 
      datab=>sd_counter_5, datac=>nx44942z7, datad=>nx44942z8);
   ix41315z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f0") 
       port map ( combout=>nx41315z7, dataa=>sdo_5n5s2(1), datab=>nx41315z2, 
      datac=>nx41315z8, datad=>nx41315z10);
   ix41315z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>nx41315z8, dataa=>sdo_5n5s2(3), datab=>nx41315z3, 
      datac=>nx41315z9);
   ix41315z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccce") 
       port map ( combout=>nx41315z15, dataa=>nx41315z16, datab=>nx41315z17, 
      datac=>sd_counter_4, datad=>sd_counter_0);
   ix44942z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx44942z8, dataa=>sd_counter_4, datab=>
      sd_counter_2);
   ix22137z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"a888") 
       port map ( combout=>nx22137z2, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>sd_counter_1, datad=>sd_counter_0);
   ix44942z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx44942z5, dataa=>sd_counter_3, datab=>
      sd_counter_2);
   ix44942z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx44942z4, dataa=>sd_counter_4, datab=>
      sd_counter_5);
   ix41315z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx41315z2, dataa=>sdo_5n5s2(3), datab=>nx41315z3
   );
   ix44942z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx44942z7, dataa=>sd_counter_3, datab=>
      sd_counter_1);
   ix22137z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffa8") 
       port map ( combout=>nx22137z1, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix44942z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff01") 
       port map ( combout=>nx44942z3, dataa=>sd_counter_0, datab=>nx44942z4, 
      datac=>nx44942z5, datad=>nx44942z6);
   ix41315z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"5f1f") 
       port map ( combout=>nx41315z20, dataa=>nx41315z21, datab=>nx41315z4, 
      datac=>p_reset_rtlc_164_and_34(2), datad=>nx41315z22);
   ix7286z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f7") 
       port map ( combout=>nx7286z1, dataa=>sd_counter_0, datab=>
      sd_counter_5, datac=>nx7286z2);
   ix41315z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx41315z4, dataa=>sd_counter_5, datab=>nx7286z2);
   ix22137z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1302") 
       port map ( combout=>sdo_5n5s2f1_0, dataa=>sd_counter_4, datab=>
      sd_counter_5, datac=>nx44942z5, datad=>nx22137z2);
   ix41315z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx41315z1, dataa=>nx41315z2, datab=>nx41315z7, 
      datac=>nx41315z11, datad=>nx41315z18);
   ix44942z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx44942z1, dataa=>sd_counter_1, datab=>
      sd_counter_0);
   ix41315z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx41315z17, dataa=>nx41315z14, datab=>
      sd_counter_3, datac=>sd_counter_1, datad=>sd_counter_0);
   ix41315z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx41315z13, dataa=>nx41315z14, datab=>
      sd_counter_3, datac=>sd_counter_1, datad=>sd_counter_0);
   ix41315z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx41315z12, dataa=>sd_counter_2, datab=>
      sd_counter_0, datac=>nx44942z7, datad=>nx44942z4);
   ix43379z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7773") 
       port map ( combout=>p_i2c_sclk, dataa=>p_clock, datab=>nx43379z1, 
      datac=>nx43379z2, datad=>nx43379z3);
   ix22137z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0057") 
       port map ( combout=>sdo_5n5s2f1_1, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix41315z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"1212") 
       port map ( combout=>nx41315z10, dataa=>sdo_5n5s2(4), datab=>
      sdo_5n5s2(2), datac=>sdo_5n5s2(0));
   ix41315z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"2022") 
       port map ( combout=>nx41315z9, dataa=>sdo_5n5s2(2), datab=>
      sdo_5n5s2(1), datac=>sdo_5n5s2(4), datad=>sdo_5n5s2(0));
   ix41315z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx41315z19, dataa=>nx41315z20, datab=>p_clock, 
      datac=>px355);
   ix44942z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx44942z2, dataa=>nx44942z3, datab=>p_clock, 
      datac=>px355);
end main_unfold_1393 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity i2c_av_config_notri is 
   port (
      p_u0_not_sdo : OUT std_logic ;
      p_i2c_sclk : OUT std_logic ;
      p_i2c_sdat : IN std_logic ;
      p_clk : IN std_logic ;
      p_sdo : OUT std_logic) ;
end i2c_av_config_notri ;

architecture main_unfold_1971 of i2c_av_config_notri is 
   component modgen_counter_16_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_16_1
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component i2c_ctrl_notri
      port (
         p_i2c_sdat : IN std_logic ;
         p_finish_xfr : OUT std_logic ;
         p_i2c_data_4 : IN std_logic_vector (2 DOWNTO 0) ;
         p_i2c_data_3 : IN std_logic_vector (4 DOWNTO 4) ;
         p_i2c_data_2 : IN std_logic_vector (7 DOWNTO 6) ;
         p_i2c_data_1 : IN std_logic_vector (12 DOWNTO 9) ;
         p_i2c_data_5 : IN std_logic_vector (22 DOWNTO 21) ;
         p_i2c_sclk : OUT std_logic ;
         p_start_xfr : IN std_logic ;
         p_reset_rtlc_164_and_34 : IN std_logic_vector (2 DOWNTO 2) ;
         p_ack : OUT std_logic ;
         p_not_sdo : OUT std_logic ;
         p_clock : IN std_logic ;
         p_sdo : OUT std_logic ;
         p_p_clk : IN std_logic ;
         p_m_i2c_ctrl_clk_dup_357 : IN std_logic ;
         p_not_reset_n : IN std_logic ;
         px355 : IN std_logic) ;
   end component ;
   signal cont: std_logic_vector (15 DOWNTO 0) ;
   
   signal m_i2c_clk_div_5, m_i2c_clk_div_4, m_i2c_clk_div_3, m_i2c_clk_div_2, 
      reset_n, m_i2c_clk_div_12, m_i2c_clk_div_11, m_i2c_clk_div_10, 
      m_i2c_clk_div_9, m_i2c_clk_div_6, m_i2c_clk_div_7, m_i2c_clk_div_8, 
      m_i2c_ctrl_clk, nx23875z1, nx2692z2, not_reset_n, nx35560z1, nx2692z1, 
      nx17807z2, nx35560z2, nx35560z3, nx35560z4, nx2692z3, nx2692z4, 
      nx17807z1, nx2692z5, nx51161z1: std_logic ;
   
   signal DANGLING : std_logic_vector (66 downto 0 );

begin
   modgen_counter_cont : modgen_counter_16_0 port map ( clock=>p_clk, q(15)
      =>cont(15), q(14)=>cont(14), q(13)=>cont(13), q(12)=>cont(12), q(11)=>
      cont(11), q(10)=>cont(10), q(9)=>cont(9), q(8)=>cont(8), q(7)=>cont(7), 
      q(6)=>cont(6), q(5)=>cont(5), q(4)=>cont(4), q(3)=>cont(3), q(2)=>
      cont(2), q(1)=>cont(1), q(0)=>cont(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(15)=>DANGLING(3), data(14)=>
      DANGLING(4), data(13)=>DANGLING(5), data(12)=>DANGLING(6), data(11)=>
      DANGLING(7), data(10)=>DANGLING(8), data(9)=>DANGLING(9), data(8)=>
      DANGLING(10), data(7)=>DANGLING(11), data(6)=>DANGLING(12), data(5)=>
      DANGLING(13), data(4)=>DANGLING(14), data(3)=>DANGLING(15), data(2)=>
      DANGLING(16), data(1)=>DANGLING(17), data(0)=>DANGLING(18), aset=>
      DANGLING(19), sclear=>DANGLING(20), updn=>DANGLING(21), cnt_en=>
      nx35560z1);
   modgen_counter_m_i2c_clk_div : modgen_counter_16_1 port map ( clock=>
      p_clk, q(15)=>DANGLING(22), q(14)=>DANGLING(23), q(13)=>DANGLING(24), 
      q(12)=>m_i2c_clk_div_12, q(11)=>m_i2c_clk_div_11, q(10)=>
      m_i2c_clk_div_10, q(9)=>m_i2c_clk_div_9, q(8)=>m_i2c_clk_div_8, q(7)=>
      m_i2c_clk_div_7, q(6)=>m_i2c_clk_div_6, q(5)=>m_i2c_clk_div_5, q(4)=>
      m_i2c_clk_div_4, q(3)=>m_i2c_clk_div_3, q(2)=>m_i2c_clk_div_2, q(1)=>
      DANGLING(25), q(0)=>DANGLING(26), clk_en=>DANGLING(27), aclear=>
      DANGLING(28), sload=>DANGLING(29), data(15)=>DANGLING(30), data(14)=>
      DANGLING(31), data(13)=>DANGLING(32), data(12)=>DANGLING(33), data(11)
      =>DANGLING(34), data(10)=>DANGLING(35), data(9)=>DANGLING(36), data(8)
      =>DANGLING(37), data(7)=>DANGLING(38), data(6)=>DANGLING(39), data(5)
      =>DANGLING(40), data(4)=>DANGLING(41), data(3)=>DANGLING(42), data(2)
      =>DANGLING(43), data(1)=>DANGLING(44), data(0)=>DANGLING(45), aset=>
      DANGLING(46), sclear=>nx23875z1, updn=>DANGLING(47), cnt_en=>DANGLING(
      48));
   u0 : i2c_ctrl_notri port map ( p_i2c_sdat=>DANGLING(49), p_finish_xfr=>
      DANGLING(50), p_i2c_data_4(2)=>DANGLING(51), p_i2c_data_4(1)=>DANGLING
      (52), p_i2c_data_4(0)=>DANGLING(53), p_i2c_data_3(4)=>DANGLING(54), 
      p_i2c_data_2(7)=>DANGLING(55), p_i2c_data_2(6)=>DANGLING(56), 
      p_i2c_data_1(12)=>DANGLING(57), p_i2c_data_1(11)=>DANGLING(58), 
      p_i2c_data_1(10)=>DANGLING(59), p_i2c_data_1(9)=>DANGLING(60), 
      p_i2c_data_5(22)=>DANGLING(61), p_i2c_data_5(21)=>DANGLING(62), 
      p_i2c_sclk=>p_i2c_sclk, p_start_xfr=>DANGLING(63), 
      p_reset_rtlc_164_and_34(2)=>reset_n, p_ack=>DANGLING(64), p_not_sdo=>
      DANGLING(65), p_clock=>m_i2c_ctrl_clk, p_sdo=>p_sdo, p_p_clk=>p_clk, 
      p_m_i2c_ctrl_clk_dup_357=>DANGLING(66), p_not_reset_n=>not_reset_n, 
      px355=>nx51161z1);
   not_reset_n <= NOT reset_n;
   reg_reset_n : cycloneii_lcell_ff port map ( regout=>reset_n, datain=>
      nx17807z1, clk=>p_clk);
   reg_m_i2c_ctrl_clk : cycloneii_lcell_ff port map ( regout=>m_i2c_ctrl_clk, 
      datain=>nx2692z1, clk=>p_clk, sclr=>not_reset_n);
   ix2692z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx2692z5, dataa=>m_i2c_clk_div_11, datab=>
      m_i2c_clk_div_10, datac=>m_i2c_clk_div_9);
   ix17807z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17807z1, dataa=>nx17807z2, datab=>nx35560z2, 
      datac=>nx35560z3, datad=>nx35560z4);
   ix2692z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx2692z4, dataa=>m_i2c_clk_div_11, datab=>
      m_i2c_clk_div_6, datac=>m_i2c_clk_div_7, datad=>m_i2c_clk_div_8);
   ix2692z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx2692z3, dataa=>m_i2c_clk_div_5, datab=>
      m_i2c_clk_div_4, datac=>m_i2c_clk_div_3, datad=>m_i2c_clk_div_2);
   ix35560z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z4, dataa=>cont(12), datab=>cont(13), 
      datac=>cont(14), datad=>cont(15));
   ix35560z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z3, dataa=>cont(8), datab=>cont(9), datac
      =>cont(10), datad=>cont(11));
   ix35560z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z2, dataa=>cont(4), datab=>cont(5), datac
      =>cont(6), datad=>cont(7));
   ix17807z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17807z2, dataa=>cont(0), datab=>cont(1), datac
      =>cont(2), datad=>cont(3));
   ix2692z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx2692z1, dataa=>nx2692z2, datab=>m_i2c_ctrl_clk
   );
   ix2692z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffec") 
       port map ( combout=>nx2692z2, dataa=>nx2692z3, datab=>
      m_i2c_clk_div_12, datac=>nx2692z4, datad=>nx2692z5);
   ix23875z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>nx23875z1, dataa=>reset_n, datab=>nx2692z2);
   ix35560z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx35560z1, dataa=>nx17807z2, datab=>nx35560z2, 
      datac=>nx35560z3, datad=>nx35560z4);
   ix51161z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx51161z1, dataa=>reset_n, datab=>m_i2c_ctrl_clk, 
      datac=>nx2692z2);
end main_unfold_1971 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z23, nx45949z20, nx45949z17, nx45949z14, nx45949z11, 
      nx45949z8, nx45949z5, nx45949z3, nx_add_9_0_vcc_net: std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), dataa=>a(8), datad=>nx_add_9_0_vcc_net, cin
      =>nx45949z3);
   nx_add_9_0_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>a(7), datad=>
      nx_add_9_0_vcc_net, cin=>nx45949z5);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z5, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z8);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z8, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z11);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z11, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z14);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z14, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z17);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z17, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z20);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z20, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z23);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"99ee") 
       port map ( combout=>d(0), cout=>nx45949z23, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_10_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (9 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (9 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_10_0 ;

architecture IMPLEMENTATION of modgen_counter_10_0 is 
   signal q_9_EXMPLR2090, q_8_EXMPLR2091, q_7_EXMPLR2092, q_6_EXMPLR2093, 
      q_5_EXMPLR2094, q_4_EXMPLR2095, q_3_EXMPLR2096, q_2_EXMPLR2097, 
      q_1_EXMPLR2098, q_0_EXMPLR2099, nx51271z1, nx60244z10, nx52268z1, 
      nx60244z9, nx53265z1, nx60244z8, nx54262z1, nx60244z7, nx55259z1, 
      nx60244z6, nx56256z1, nx60244z5, nx57253z1, nx60244z4, nx58250z1, 
      nx60244z3, nx59247z1, nx60244z2, nx60244z1, 
      nx_modgen_counter_10_0_vcc_net: std_logic ;

begin
   q(9) <= q_9_EXMPLR2090 ;
   q(8) <= q_8_EXMPLR2091 ;
   q(7) <= q_7_EXMPLR2092 ;
   q(6) <= q_6_EXMPLR2093 ;
   q(5) <= q_5_EXMPLR2094 ;
   q(4) <= q_4_EXMPLR2095 ;
   q(3) <= q_3_EXMPLR2096 ;
   q(2) <= q_2_EXMPLR2097 ;
   q(1) <= q_1_EXMPLR2098 ;
   q(0) <= q_0_EXMPLR2099 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>q_9_EXMPLR2090, datain=>
      nx60244z1, clk=>clock);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>q_8_EXMPLR2091, datain=>
      nx59247z1, clk=>clock);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>q_7_EXMPLR2092, datain=>
      nx58250z1, clk=>clock);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>q_6_EXMPLR2093, datain=>
      nx57253z1, clk=>clock);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>q_5_EXMPLR2094, datain=>
      nx56256z1, clk=>clock);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>q_4_EXMPLR2095, datain=>
      nx55259z1, clk=>clock);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>q_3_EXMPLR2096, datain=>
      nx54262z1, clk=>clock);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>q_2_EXMPLR2097, datain=>
      nx53265z1, clk=>clock);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>q_1_EXMPLR2098, datain=>
      nx52268z1, clk=>clock);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>q_0_EXMPLR2099, datain=>
      nx51271z1, clk=>clock);
   ix60244z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx60244z8, dataa=>q_2_EXMPLR2097, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z9);
   nx_modgen_counter_10_0_vcc_net <= '1';
   ix60244z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, dataa=>q_9_EXMPLR2090, datad=>
      nx_modgen_counter_10_0_vcc_net, cin=>nx60244z2);
   ix60244z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx60244z2, dataa=>q_8_EXMPLR2091, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z3);
   ix60244z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx60244z9, dataa=>q_1_EXMPLR2098, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z10);
   ix60244z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx60244z3, dataa=>q_7_EXMPLR2092, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z4);
   ix60244z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx60244z4, dataa=>q_6_EXMPLR2093, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z5);
   ix60244z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx60244z5, dataa=>q_5_EXMPLR2094, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z6);
   ix60244z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx60244z6, dataa=>q_4_EXMPLR2095, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z7);
   ix60244z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx60244z7, dataa=>q_3_EXMPLR2096, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z8);
   ix60244z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx60244z10, dataa=>
      q_0_EXMPLR2099, datad=>nx_modgen_counter_10_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_9_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (8 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (8 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_9_0 ;

architecture IMPLEMENTATION of modgen_counter_9_0 is 
   signal nx2038z1, nx59247z3, nx59247z5, nx59247z7, nx59247z9, nx59247z11, 
      nx59247z13, nx59247z15, nx59247z17, nx51271z1, nx59247z16, nx52268z1, 
      nx59247z14, nx53265z1, nx59247z12, nx54262z1, nx59247z10, nx55259z1, 
      nx59247z8, nx56256z1, nx59247z6, nx57253z1, nx59247z4, nx58250z1, 
      nx59247z2, nx59247z1, nx_modgen_counter_9_0_vcc_net: std_logic ;

begin
   q(8) <= nx2038z1 ;
   q(7) <= nx59247z3 ;
   q(6) <= nx59247z5 ;
   q(5) <= nx59247z7 ;
   q(4) <= nx59247z9 ;
   q(3) <= nx59247z11 ;
   q(2) <= nx59247z13 ;
   q(1) <= nx59247z15 ;
   q(0) <= nx59247z17 ;
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx2038z1, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx59247z3, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx59247z5, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx59247z7, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx59247z9, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx59247z11, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx59247z13, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx59247z15, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx59247z17, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix59247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx59247z12, dataa=>nx59247z13, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z14);
   nx_modgen_counter_9_0_vcc_net <= '1';
   ix59247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, dataa=>nx2038z1, datad=>
      nx_modgen_counter_9_0_vcc_net, cin=>nx59247z2);
   ix59247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx59247z2, dataa=>nx59247z3, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z4);
   ix59247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx59247z4, dataa=>nx59247z5, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z6);
   ix59247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx59247z14, dataa=>nx59247z15, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z16);
   ix59247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx59247z6, dataa=>nx59247z7, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z8);
   ix59247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx59247z8, dataa=>nx59247z9, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z10);
   ix59247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx59247z10, dataa=>nx59247z11, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z12);
   ix59247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx59247z16, dataa=>nx59247z17, 
      datad=>nx_modgen_counter_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity fir_top is 
   port (
      clock_50 : IN std_logic ;
      clock_27 : IN std_logic ;
      key : IN std_logic_vector (3 DOWNTO 0) ;
      sw : IN std_logic_vector (17 DOWNTO 0) ;
      ledg : OUT std_logic_vector (8 DOWNTO 0) ;
      ledr : OUT std_logic_vector (17 DOWNTO 0) ;
      hex0 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex1 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex2 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex3 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex4 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex5 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex6 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex7 : OUT std_logic_vector (6 DOWNTO 0) ;
      aud_xck : OUT std_logic ;
      aud_bclk : INOUT std_logic ;
      aud_dacdat : OUT std_logic ;
      aud_daclrck : OUT std_logic ;
      aud_adclrck : OUT std_logic ;
      i2c_sdat : INOUT std_logic ;
      i2c_sclk : OUT std_logic) ;
end fir_top ;

architecture main of fir_top is 
   component fir
      port (
         clk : IN std_logic ;
         i_data : IN std_logic_vector (15 DOWNTO 0) ;
         o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component i2c_av_config_notri
      port (
         p_u0_not_sdo : OUT std_logic ;
         p_i2c_sclk : OUT std_logic ;
         p_i2c_sdat : IN std_logic ;
         p_clk : IN std_logic ;
         p_sdo : OUT std_logic) ;
   end component ;
   component add_9_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_10_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (9 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (9 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_9_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (8 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (8 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal clock_27_EXMPLR2105, key_0_EXMPLR2106, sw_17_EXMPLR2107, 
      sw_16_EXMPLR2108, sw_6_EXMPLR2109, sw_5_EXMPLR2110, sw_4_EXMPLR2111, 
      sw_3_EXMPLR2112, sw_2_EXMPLR2113, sw_1_EXMPLR2114, sw_0_EXMPLR2115: 
   std_logic ;
   
   signal ledg_EXMPLR2206: std_logic_vector (8 DOWNTO 0) ;
   
   signal ledr_EXMPLR2207: std_logic_vector (17 DOWNTO 0) ;
   
   signal hex0_EXMPLR2208: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex1_EXMPLR2209: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex2_EXMPLR2210: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex3_EXMPLR2211: std_logic_vector (6 DOWNTO 0) ;
   
   signal aud_xck_dup0, aud_bclk_dup0, aud_dacdat_dup0, aud_adclrck_dup0, 
      i2c_sclk_dup0, sine_data_11, sine_data_10, sine_data_9, sine_data_8, 
      sine_data_7, sine_data_6, sine_data_5, sine_data_4, sine_data_3, 
      sine_data_2, sine_data_1, sine_data_0, noise_data_15, noise_data_10, 
      noise_data_9, noise_data_8, noise_data_7, noise_data_6, noise_data_5, 
      noise_data_4: std_logic ;
   
   signal audio_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal fir_audio_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal bit_position: std_logic_vector (3 DOWNTO 0) ;
   
   signal nx49625z1, nx49625z2, nx49625z3, nx49625z4: std_logic ;
   
   signal u_sine_address: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_sine_address_0n0r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_noise_address: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_audio_dac_bck_div_2, u_audio_dac_bck_div_1, 
      u_audio_dac_bck_div_0: std_logic ;
   
   signal u_audio_dac_lrck_1x_div: std_logic_vector (8 DOWNTO 0) ;
   
   signal nx24999z5, nx24999z4, nx24999z3, nx24999z2, nx24999z7, nx24999z6, 
      nx24999z9, nx24999z8, nx24999z1, nx38664z9, nx38664z6, nx38664z7, 
      nx38664z5, nx38664z3, nx38664z1, nx38664z2, nx4119z13, nx4119z15, 
      nx4119z10, nx4119z12, nx4119z8, nx4119z5, nx4119z7, nx4119z3, nx4119z1, 
      nx17637z1, clock_27_int, key_int_0, sw_int_17, sw_int_16, sw_int_6, 
      sw_int_5, sw_int_4, sw_int_3, sw_int_2, sw_int_1, sw_int_0: std_logic
    ;
   
   signal hex4_EXMPLR2212: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex5_EXMPLR2213: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex6_EXMPLR2214: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex7_EXMPLR2215: std_logic_vector (6 DOWNTO 0) ;
   
   signal aud_xck_EXMPLR2201, aud_dacdat_EXMPLR2202, aud_daclrck_EXMPLR2203, 
      aud_adclrck_EXMPLR2204, i2c_sclk_EXMPLR2205: std_logic ;
   
   signal hex4_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex5_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex6_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex7_dup0: std_logic_vector (6 DOWNTO 4) ;
   
   signal display_freq: std_logic_vector (11 DOWNTO 0) ;
   
   signal raw_audio_11, raw_audio_10, raw_audio_9, raw_audio_8, raw_audio_7, 
      raw_audio_6, raw_audio_5, raw_audio_4, raw_audio_3, raw_audio_2, 
      raw_audio_1, raw_audio_0, nx55607z1, NOT_bit_position_0, 
      u_audio_dac_not_reset_n, nx48238z1, nx50205z2, nx15494z1, nx48820z1, 
      nx49817z1, nx50814z1, nx32096z1, nx30102z1, nx30102z2, nx31099z1, 
      nx31099z2, nx50205z3, nx50205z4, nx38664z4, nx38664z8, nx4119z2, 
      nx4119z9, nx4119z4, nx55607z2, nx4119z11, nx4119z6, nx4119z14, 
      sdo_dup_267, nx50205z1: std_logic ;
   
   signal DANGLING : std_logic_vector (50 downto 0 );

begin
   clock_27_EXMPLR2105 <= clock_27 ;
   key_0_EXMPLR2106 <= key(0) ;
   sw_17_EXMPLR2107 <= sw(17) ;
   sw_16_EXMPLR2108 <= sw(16) ;
   sw_6_EXMPLR2109 <= sw(6) ;
   sw_5_EXMPLR2110 <= sw(5) ;
   sw_4_EXMPLR2111 <= sw(4) ;
   sw_3_EXMPLR2112 <= sw(3) ;
   sw_2_EXMPLR2113 <= sw(2) ;
   sw_1_EXMPLR2114 <= sw(1) ;
   sw_0_EXMPLR2115 <= sw(0) ;
   ledg(8) <= ledg_EXMPLR2206(8) ;
   ledg(7) <= ledg_EXMPLR2206(7) ;
   ledg(6) <= ledg_EXMPLR2206(6) ;
   ledg(5) <= ledg_EXMPLR2206(5) ;
   ledg(4) <= ledg_EXMPLR2206(4) ;
   ledg(3) <= ledg_EXMPLR2206(3) ;
   ledg(2) <= ledg_EXMPLR2206(2) ;
   ledg(1) <= ledg_EXMPLR2206(1) ;
   ledg(0) <= ledg_EXMPLR2206(0) ;
   ledr(17) <= ledr_EXMPLR2207(17) ;
   ledr(16) <= ledr_EXMPLR2207(16) ;
   ledr(15) <= ledr_EXMPLR2207(15) ;
   ledr(14) <= ledr_EXMPLR2207(14) ;
   ledr(13) <= ledr_EXMPLR2207(13) ;
   ledr(12) <= ledr_EXMPLR2207(12) ;
   ledr(11) <= ledr_EXMPLR2207(11) ;
   ledr(10) <= ledr_EXMPLR2207(10) ;
   ledr(9) <= ledr_EXMPLR2207(9) ;
   ledr(8) <= ledr_EXMPLR2207(8) ;
   ledr(7) <= ledr_EXMPLR2207(7) ;
   ledr(6) <= ledr_EXMPLR2207(6) ;
   ledr(5) <= ledr_EXMPLR2207(5) ;
   ledr(4) <= ledr_EXMPLR2207(4) ;
   ledr(3) <= ledr_EXMPLR2207(3) ;
   ledr(2) <= ledr_EXMPLR2207(2) ;
   ledr(1) <= ledr_EXMPLR2207(1) ;
   ledr(0) <= ledr_EXMPLR2207(0) ;
   hex0(6) <= hex0_EXMPLR2208(6) ;
   hex0(5) <= hex0_EXMPLR2208(5) ;
   hex0(4) <= hex0_EXMPLR2208(4) ;
   hex0(3) <= hex0_EXMPLR2208(3) ;
   hex0(2) <= hex0_EXMPLR2208(2) ;
   hex0(1) <= hex0_EXMPLR2208(1) ;
   hex0(0) <= hex0_EXMPLR2208(0) ;
   hex1(6) <= hex1_EXMPLR2209(6) ;
   hex1(5) <= hex1_EXMPLR2209(5) ;
   hex1(4) <= hex1_EXMPLR2209(4) ;
   hex1(3) <= hex1_EXMPLR2209(3) ;
   hex1(2) <= hex1_EXMPLR2209(2) ;
   hex1(1) <= hex1_EXMPLR2209(1) ;
   hex1(0) <= hex1_EXMPLR2209(0) ;
   hex2(6) <= hex2_EXMPLR2210(6) ;
   hex2(5) <= hex2_EXMPLR2210(5) ;
   hex2(4) <= hex2_EXMPLR2210(4) ;
   hex2(3) <= hex2_EXMPLR2210(3) ;
   hex2(2) <= hex2_EXMPLR2210(2) ;
   hex2(1) <= hex2_EXMPLR2210(1) ;
   hex2(0) <= hex2_EXMPLR2210(0) ;
   hex3(6) <= hex3_EXMPLR2211(6) ;
   hex3(5) <= hex3_EXMPLR2211(5) ;
   hex3(4) <= hex3_EXMPLR2211(4) ;
   hex3(3) <= hex3_EXMPLR2211(3) ;
   hex3(2) <= hex3_EXMPLR2211(2) ;
   hex3(1) <= hex3_EXMPLR2211(1) ;
   hex3(0) <= hex3_EXMPLR2211(0) ;
   hex4(6) <= hex4_EXMPLR2212(6) ;
   hex4(5) <= hex4_EXMPLR2212(5) ;
   hex4(4) <= hex4_EXMPLR2212(4) ;
   hex4(3) <= hex4_EXMPLR2212(3) ;
   hex4(2) <= hex4_EXMPLR2212(2) ;
   hex4(1) <= hex4_EXMPLR2212(1) ;
   hex4(0) <= hex4_EXMPLR2212(0) ;
   hex5(6) <= hex5_EXMPLR2213(6) ;
   hex5(5) <= hex5_EXMPLR2213(5) ;
   hex5(4) <= hex5_EXMPLR2213(4) ;
   hex5(3) <= hex5_EXMPLR2213(3) ;
   hex5(2) <= hex5_EXMPLR2213(2) ;
   hex5(1) <= hex5_EXMPLR2213(1) ;
   hex5(0) <= hex5_EXMPLR2213(0) ;
   hex6(6) <= hex6_EXMPLR2214(6) ;
   hex6(5) <= hex6_EXMPLR2214(5) ;
   hex6(4) <= hex6_EXMPLR2214(4) ;
   hex6(3) <= hex6_EXMPLR2214(3) ;
   hex6(2) <= hex6_EXMPLR2214(2) ;
   hex6(1) <= hex6_EXMPLR2214(1) ;
   hex6(0) <= hex6_EXMPLR2214(0) ;
   hex7(6) <= hex7_EXMPLR2215(6) ;
   hex7(5) <= hex7_EXMPLR2215(5) ;
   hex7(4) <= hex7_EXMPLR2215(4) ;
   hex7(3) <= hex7_EXMPLR2215(3) ;
   hex7(2) <= hex7_EXMPLR2215(2) ;
   hex7(1) <= hex7_EXMPLR2215(1) ;
   hex7(0) <= hex7_EXMPLR2215(0) ;
   aud_xck <= aud_xck_EXMPLR2201 ;
   aud_dacdat <= aud_dacdat_EXMPLR2202 ;
   aud_daclrck <= aud_daclrck_EXMPLR2203 ;
   aud_adclrck <= aud_adclrck_EXMPLR2204 ;
   i2c_sclk <= i2c_sclk_EXMPLR2205 ;
   u_fir : fir port map ( clk=>aud_adclrck_dup0, i_data(15)=>raw_audio_11, 
      i_data(14)=>DANGLING(0), i_data(13)=>DANGLING(1), i_data(12)=>DANGLING
      (2), i_data(11)=>DANGLING(3), i_data(10)=>raw_audio_10, i_data(9)=>
      raw_audio_9, i_data(8)=>raw_audio_8, i_data(7)=>raw_audio_7, i_data(6)
      =>raw_audio_6, i_data(5)=>raw_audio_5, i_data(4)=>raw_audio_4, 
      i_data(3)=>raw_audio_3, i_data(2)=>raw_audio_2, i_data(1)=>raw_audio_1, 
      i_data(0)=>raw_audio_0, o_data(15)=>fir_audio_out(15), o_data(14)=>
      fir_audio_out(14), o_data(13)=>fir_audio_out(13), o_data(12)=>
      fir_audio_out(12), o_data(11)=>fir_audio_out(11), o_data(10)=>
      fir_audio_out(10), o_data(9)=>fir_audio_out(9), o_data(8)=>
      fir_audio_out(8), o_data(7)=>fir_audio_out(7), o_data(6)=>
      fir_audio_out(6), o_data(5)=>fir_audio_out(5), o_data(4)=>
      fir_audio_out(4), o_data(3)=>fir_audio_out(3), o_data(2)=>
      fir_audio_out(2), o_data(1)=>fir_audio_out(1), o_data(0)=>
      fir_audio_out(0));
   u_i2c_av_config : i2c_av_config_notri port map ( p_u0_not_sdo=>DANGLING(4
      ), p_i2c_sclk=>i2c_sclk_dup0, p_i2c_sdat=>DANGLING(5), p_clk=>
      clock_27_int, p_sdo=>sdo_dup_267);
   u_sine_address_add9_0i1 : add_9_0 port map ( cin=>DANGLING(6), a(8)=>
      u_sine_address(8), a(7)=>u_sine_address(7), a(6)=>u_sine_address(6), 
      a(5)=>u_sine_address(5), a(4)=>u_sine_address(4), a(3)=>
      u_sine_address(3), a(2)=>u_sine_address(2), a(1)=>u_sine_address(1), 
      a(0)=>u_sine_address(0), b(8)=>DANGLING(7), b(7)=>DANGLING(8), b(6)=>
      sw_int_6, b(5)=>sw_int_5, b(4)=>sw_int_4, b(3)=>sw_int_3, b(2)=>
      sw_int_2, b(1)=>sw_int_1, b(0)=>sw_int_0, d(8)=>
      u_sine_address_0n0r2(8), d(7)=>u_sine_address_0n0r2(7), d(6)=>
      u_sine_address_0n0r2(6), d(5)=>u_sine_address_0n0r2(5), d(4)=>
      u_sine_address_0n0r2(4), d(3)=>u_sine_address_0n0r2(3), d(2)=>
      u_sine_address_0n0r2(2), d(1)=>u_sine_address_0n0r2(1), d(0)=>
      u_sine_address_0n0r2(0), cout=>DANGLING(9));
   u_noise_modgen_counter_address : modgen_counter_10_0 port map ( clock=>
      aud_adclrck_dup0, q(9)=>u_noise_address(9), q(8)=>u_noise_address(8), 
      q(7)=>u_noise_address(7), q(6)=>u_noise_address(6), q(5)=>
      u_noise_address(5), q(4)=>u_noise_address(4), q(3)=>u_noise_address(3), 
      q(2)=>u_noise_address(2), q(1)=>u_noise_address(1), q(0)=>
      u_noise_address(0), clk_en=>DANGLING(10), aclear=>DANGLING(11), sload
      =>DANGLING(12), data(9)=>DANGLING(13), data(8)=>DANGLING(14), data(7)
      =>DANGLING(15), data(6)=>DANGLING(16), data(5)=>DANGLING(17), data(4)
      =>DANGLING(18), data(3)=>DANGLING(19), data(2)=>DANGLING(20), data(1)
      =>DANGLING(21), data(0)=>DANGLING(22), aset=>DANGLING(23), sclear=>
      DANGLING(24), updn=>DANGLING(25), cnt_en=>DANGLING(26));
   u_audio_dac_modgen_counter_lrck_1x_div : modgen_counter_9_0 port map ( 
      clock=>aud_xck_dup0, q(8)=>u_audio_dac_lrck_1x_div(8), q(7)=>
      u_audio_dac_lrck_1x_div(7), q(6)=>u_audio_dac_lrck_1x_div(6), q(5)=>
      u_audio_dac_lrck_1x_div(5), q(4)=>u_audio_dac_lrck_1x_div(4), q(3)=>
      u_audio_dac_lrck_1x_div(3), q(2)=>u_audio_dac_lrck_1x_div(2), q(1)=>
      u_audio_dac_lrck_1x_div(1), q(0)=>u_audio_dac_lrck_1x_div(0), clk_en=>
      DANGLING(27), aclear=>DANGLING(28), sload=>DANGLING(29), data(8)=>
      DANGLING(30), data(7)=>DANGLING(31), data(6)=>DANGLING(32), data(5)=>
      DANGLING(33), data(4)=>DANGLING(34), data(3)=>DANGLING(35), data(2)=>
      DANGLING(36), data(1)=>DANGLING(37), data(0)=>DANGLING(38), aset=>
      DANGLING(39), sclear=>nx48238z1, updn=>DANGLING(40), cnt_en=>DANGLING(
      41));
   u_audio_dac_p1_altpll : altpll
      generic map (CLK0_DIVIDE_BY => 15,
         CLK0_DUTY_CYCLE => 50,
         CLK0_MULTIPLY_BY => 14,
         CLK0_PHASE_SHIFT => "0",
         CLK1_DIVIDE_BY => 3,
         CLK1_DUTY_CYCLE => 50,
         CLK1_MULTIPLY_BY => 2,
         CLK1_PHASE_SHIFT => "0",
         COMPENSATE_CLOCK => "CLK0",
         INCLK0_INPUT_FREQUENCY => 37037
         ,
         INTENDED_DEVICE_FAMILY => "Cyclone II",
         LPM_TYPE => "altpll",
         OPERATION_MODE => "NORMAL",
         PLL_TYPE => "FAST") 
       port map ( clk(9)=>DANGLING(42), clk(8)=>DANGLING(43), clk(7)=>
      DANGLING(44), clk(6)=>DANGLING(45), clk(5)=>DANGLING(46), clk(4)=>
      DANGLING(47), clk(3)=>DANGLING(48), clk(2)=>DANGLING(49), clk(1)=>
      aud_xck_dup0, clk(0)=>DANGLING(50), inclk(1)=>hex7_dup0(4), inclk(0)=>
      clock_27_int);
   u_sine_modgen_rom_ix21_ix62120z58996 : altsyncram
      generic map (lpm_type => "altsyncram",
         lpm_hint => "UNUSED",
         intended_device_family => "Stratix",
         maximum_depth => 0,
         init_file_layout => "UNUSED"
         ,
         init_file => "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex"
         ,
         ram_block_type => "AUTO"
         ,
         read_during_write_mode_mixed_ports => "DONT_CARE",
         byte_size => 8,
         operation_mode => "ROM",
         address_aclr_b => "NONE",
         width_byteena_b => 1,
         byteena_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         indata_aclr_b => "NONE",
         byteena_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         indata_reg_b => "CLOCK1",
         rdcontrol_aclr_b => "NONE",
         outdata_aclr_b => "NONE",
         outdata_reg_b => "UNREGISTERED",
         address_reg_b => "CLOCK1",
         rdcontrol_reg_b => "CLOCK1",
         numwords_b => 64,
         widthad_b => 6,
         width_b => 12,
         width_byteena_a => 1,
         byteena_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         address_aclr_a => "NONE",
         outdata_reg_a => "UNREGISTERED",
         numwords_a => 64,
         widthad_a => 6,
         width_a => 12) 
       port map ( address_a(5)=>u_sine_address_0n0r2(8), address_a(4)=>
      u_sine_address_0n0r2(7), address_a(3)=>u_sine_address_0n0r2(6), 
      address_a(2)=>u_sine_address_0n0r2(5), address_a(1)=>
      u_sine_address_0n0r2(4), address_a(0)=>u_sine_address_0n0r2(3), wren_a
      =>hex7_dup0(4), clock0=>aud_adclrck_dup0, clocken0=>hex7_dup0(6), 
      q_a(11)=>sine_data_11, q_a(10)=>sine_data_10, q_a(9)=>sine_data_9, 
      q_a(8)=>sine_data_8, q_a(7)=>sine_data_7, q_a(6)=>sine_data_6, q_a(5)
      =>sine_data_5, q_a(4)=>sine_data_4, q_a(3)=>sine_data_3, q_a(2)=>
      sine_data_2, q_a(1)=>sine_data_1, q_a(0)=>sine_data_0);
   u_noise_modgen_rom_ix24_ix62120z34212 : altsyncram
      generic map (lpm_type => "altsyncram",
         lpm_hint => "UNUSED",
         intended_device_family => "Stratix",
         maximum_depth => 0,
         init_file_layout => "UNUSED"
         ,
         init_file => "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex"
         ,
         ram_block_type => "AUTO"
         ,
         read_during_write_mode_mixed_ports => "DONT_CARE",
         byte_size => 8,
         operation_mode => "ROM",
         address_aclr_b => "NONE",
         width_byteena_b => 1,
         byteena_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         indata_aclr_b => "NONE",
         byteena_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         indata_reg_b => "CLOCK1",
         rdcontrol_aclr_b => "NONE",
         outdata_aclr_b => "NONE",
         outdata_reg_b => "UNREGISTERED",
         address_reg_b => "CLOCK1",
         rdcontrol_reg_b => "CLOCK1",
         numwords_b => 1024,
         widthad_b => 10,
         width_b => 8,
         width_byteena_a => 1,
         byteena_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         address_aclr_a => "NONE",
         outdata_reg_a => "UNREGISTERED",
         numwords_a => 1024,
         widthad_a => 10,
         width_a => 8) 
       port map ( address_a(9)=>u_noise_address(9), address_a(8)=>
      u_noise_address(8), address_a(7)=>u_noise_address(7), address_a(6)=>
      u_noise_address(6), address_a(5)=>u_noise_address(5), address_a(4)=>
      u_noise_address(4), address_a(3)=>u_noise_address(3), address_a(2)=>
      u_noise_address(2), address_a(1)=>u_noise_address(1), address_a(0)=>
      u_noise_address(0), wren_a=>hex7_dup0(4), clock0=>aud_adclrck_dup0, 
      clocken0=>hex7_dup0(6), q_a(7)=>noise_data_15, q_a(6)=>noise_data_10, 
      q_a(5)=>noise_data_9, q_a(4)=>noise_data_8, q_a(3)=>noise_data_7, 
      q_a(2)=>noise_data_6, q_a(1)=>noise_data_5, q_a(0)=>noise_data_4);
   ix12601z20184 : TRI port map ( a_OUT=>aud_bclk, a_IN=>aud_bclk_dup0, OE=>
      hex7_dup0(6));
   hex7_dup0(4) <= '0';
   hex7_dup0(6) <= '1';
   u_audio_dac_not_reset_n <= NOT key_int_0;
   u_sine_reg_address_8 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(8), datain=>u_sine_address_0n0r2(8), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_7 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(7), datain=>u_sine_address_0n0r2(7), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_6 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(6), datain=>u_sine_address_0n0r2(6), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_5 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(5), datain=>u_sine_address_0n0r2(5), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_4 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(4), datain=>u_sine_address_0n0r2(4), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_3 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(3), datain=>u_sine_address_0n0r2(3), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_2 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(2), datain=>u_sine_address_0n0r2(2), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_1 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(1), datain=>u_sine_address_0n0r2(1), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_0 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(0), datain=>u_sine_address_0n0r2(0), clk=>
      aud_adclrck_dup0);
   u_i2c_av_config_u0_ix31977z43919 : cycloneii_io
      generic map (operation_mode => "bidir",
         open_drain_output => "true",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>i2c_sdat, datain=>sdo_dup_267, oe=>hex7_dup0(6));
   u_audio_dac_reg_lrck_1x : cycloneii_lcell_ff port map ( regout=>
      aud_adclrck_dup0, datain=>nx50205z1, clk=>aud_xck_dup0, sclr=>
      u_audio_dac_not_reset_n);
   u_audio_dac_reg_aud_bck : cycloneii_lcell_ff port map ( regout=>
      aud_bclk_dup0, datain=>nx15494z1, clk=>aud_xck_dup0, sclr=>
      u_audio_dac_not_reset_n);
   u_audio_dac_modgen_counter_bck_div_reg_q_2 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_2, datain=>nx30102z1, clk=>
      aud_xck_dup0, ena=>nx30102z2);
   u_audio_dac_modgen_counter_bck_div_reg_q_1 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_1, datain=>nx31099z1, clk=>
      aud_xck_dup0, ena=>nx31099z2);
   u_audio_dac_modgen_counter_bck_div_reg_q_0 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_0, datain=>nx32096z1, clk=>
      aud_xck_dup0);
   sw_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_6, padio=>sw_6_EXMPLR2109);
   sw_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_5, padio=>sw_5_EXMPLR2110);
   sw_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_4, padio=>sw_4_EXMPLR2111);
   sw_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_3, padio=>sw_3_EXMPLR2112);
   sw_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_2, padio=>sw_2_EXMPLR2113);
   sw_ibuf_17 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_17, padio=>sw_17_EXMPLR2107);
   sw_ibuf_16 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_16, padio=>sw_16_EXMPLR2108);
   sw_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_1, padio=>sw_1_EXMPLR2114);
   sw_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_0, padio=>sw_0_EXMPLR2115);
   reg_audio_out_9 : cycloneii_lcell_ff port map ( regout=>audio_out(9), 
      datain=>raw_audio_9, sdata=>fir_audio_out(9), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_8 : cycloneii_lcell_ff port map ( regout=>audio_out(8), 
      datain=>raw_audio_8, sdata=>fir_audio_out(8), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_7 : cycloneii_lcell_ff port map ( regout=>audio_out(7), 
      datain=>raw_audio_7, sdata=>fir_audio_out(7), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_6 : cycloneii_lcell_ff port map ( regout=>audio_out(6), 
      datain=>raw_audio_6, sdata=>fir_audio_out(6), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_5 : cycloneii_lcell_ff port map ( regout=>audio_out(5), 
      datain=>raw_audio_5, sdata=>fir_audio_out(5), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_4 : cycloneii_lcell_ff port map ( regout=>audio_out(4), 
      datain=>raw_audio_4, sdata=>fir_audio_out(4), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_3 : cycloneii_lcell_ff port map ( regout=>audio_out(3), 
      datain=>raw_audio_3, sdata=>fir_audio_out(3), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_2 : cycloneii_lcell_ff port map ( regout=>audio_out(2), 
      datain=>raw_audio_2, sdata=>fir_audio_out(2), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_15 : cycloneii_lcell_ff port map ( regout=>audio_out(15), 
      datain=>raw_audio_11, sdata=>fir_audio_out(15), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_14 : cycloneii_lcell_ff port map ( regout=>audio_out(14), 
      datain=>raw_audio_11, sdata=>fir_audio_out(14), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_13 : cycloneii_lcell_ff port map ( regout=>audio_out(13), 
      datain=>raw_audio_11, sdata=>fir_audio_out(13), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_12 : cycloneii_lcell_ff port map ( regout=>audio_out(12), 
      datain=>raw_audio_11, sdata=>fir_audio_out(12), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_11 : cycloneii_lcell_ff port map ( regout=>audio_out(11), 
      datain=>raw_audio_11, sdata=>fir_audio_out(11), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_10 : cycloneii_lcell_ff port map ( regout=>audio_out(10), 
      datain=>raw_audio_10, sdata=>fir_audio_out(10), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_1 : cycloneii_lcell_ff port map ( regout=>audio_out(1), 
      datain=>raw_audio_1, sdata=>fir_audio_out(1), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_0 : cycloneii_lcell_ff port map ( regout=>audio_out(0), 
      datain=>raw_audio_0, sdata=>fir_audio_out(0), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   ix17637z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc8") 
       port map ( combout=>nx17637z1, dataa=>sw_int_1, datab=>sw_int_3, 
      datac=>sw_int_0, datad=>sw_int_2);
   ix49625z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"9e61") 
       port map ( combout=>nx49625z4, dataa=>sw_int_2, datab=>sw_int_0, 
      datac=>sw_int_1, datad=>sw_int_3);
   ix4119z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"3c0c") 
       port map ( combout=>nx4119z1, datab=>sw_int_5, datac=>sw_int_4, datad
      =>sw_int_2);
   ix4119z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx4119z3, dataa=>sw_int_1, datab=>sw_int_4, datac
      =>sw_int_2, datad=>sw_int_0);
   ix4119z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccc8") 
       port map ( combout=>nx4119z7, dataa=>sw_int_1, datab=>sw_int_3, datac
      =>sw_int_0, datad=>sw_int_2);
   ix4119z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"1115") 
       port map ( combout=>nx4119z5, dataa=>sw_int_5, datab=>sw_int_4, datac
      =>sw_int_3, datad=>sw_int_2);
   ix4119z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"116c") 
       port map ( combout=>nx4119z8, dataa=>sw_int_4, datab=>sw_int_6, datac
      =>sw_int_2, datad=>sw_int_5);
   ix4119z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx4119z12, dataa=>sw_int_1, datab=>sw_int_0, 
      datac=>sw_int_2, datad=>sw_int_5);
   ix4119z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"c055") 
       port map ( combout=>nx4119z10, dataa=>sw_int_6, datab=>sw_int_1, 
      datac=>sw_int_2, datad=>sw_int_5);
   ix4119z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"3336") 
       port map ( combout=>nx4119z15, dataa=>sw_int_2, datab=>sw_int_5, 
      datac=>sw_int_0, datad=>sw_int_1);
   ix4119z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"69e1") 
       port map ( combout=>nx4119z13, dataa=>sw_int_3, datab=>sw_int_2, 
      datac=>sw_int_5, datad=>sw_int_1);
   ix38664z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0c10") 
       port map ( combout=>nx38664z2, dataa=>sw_int_0, datab=>sw_int_1, 
      datac=>sw_int_3, datad=>sw_int_4);
   ix38664z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"3008") 
       port map ( combout=>nx38664z1, dataa=>sw_int_0, datab=>sw_int_1, 
      datac=>sw_int_3, datad=>sw_int_4);
   ix38664z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"db20") 
       port map ( combout=>nx38664z3, dataa=>sw_int_1, datab=>sw_int_3, 
      datac=>sw_int_0, datad=>sw_int_2);
   ix38664z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0f07") 
       port map ( combout=>nx38664z5, dataa=>sw_int_0, datab=>sw_int_6, 
      datac=>sw_int_2, datad=>sw_int_5);
   ix38664z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"c386") 
       port map ( combout=>nx38664z7, dataa=>sw_int_0, datab=>sw_int_1, 
      datac=>sw_int_3, datad=>sw_int_4);
   ix38664z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"0c16") 
       port map ( combout=>nx38664z6, dataa=>sw_int_0, datab=>sw_int_1, 
      datac=>sw_int_3, datad=>sw_int_4);
   ix38664z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"6626") 
       port map ( combout=>nx38664z9, dataa=>sw_int_2, datab=>sw_int_4, 
      datac=>sw_int_6, datad=>sw_int_5);
   ix49625z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8015") 
       port map ( combout=>nx49625z1, dataa=>sw_int_2, datab=>sw_int_0, 
      datac=>sw_int_1, datad=>sw_int_3);
   ix49625z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"01ea") 
       port map ( combout=>nx49625z2, dataa=>sw_int_2, datab=>sw_int_0, 
      datac=>sw_int_1, datad=>sw_int_3);
   ix49625z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"544a") 
       port map ( combout=>nx49625z3, dataa=>sw_int_2, datab=>sw_int_0, 
      datac=>sw_int_1, datad=>sw_int_3);
   modgen_counter_bit_position_reg_q_3 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(3), datain=>nx48820z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_2 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(2), datain=>nx49817z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_1 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(1), datain=>nx50814z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_0 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(0), datain=>NOT_bit_position_0, clk=>aud_bclk);
   ledr_triBus2_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(9), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(8), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(7), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_17 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(17), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(16), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(15), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(14), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(13), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(12), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(11), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(10), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR2207(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR2206(8), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR2206(7), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR2206(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR2206(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR2206(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR2206(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR2206(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR2206(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR2206(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   key_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>key_int_0, padio=>key_0_EXMPLR2106);
   i2c_sclk_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>i2c_sclk_EXMPLR2205, datain=>i2c_sclk_dup0);
   hex7_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR2215(6), datain=>hex7_dup0(6));
   hex7_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR2215(5), datain=>hex7_dup0(5));
   hex7_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR2215(4), datain=>hex7_dup0(5));
   hex7_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR2215(3), datain=>hex7_dup0(5));
   hex7_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR2215(2), datain=>hex7_dup0(4));
   hex7_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR2215(1), datain=>hex7_dup0(4));
   hex7_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR2215(0), datain=>hex7_dup0(5));
   hex6_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR2214(6), datain=>hex6_dup0(6));
   hex6_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR2214(5), datain=>hex6_dup0(5));
   hex6_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR2214(4), datain=>hex6_dup0(4));
   hex6_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR2214(3), datain=>hex6_dup0(3));
   hex6_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR2214(2), datain=>hex6_dup0(2));
   hex6_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR2214(1), datain=>hex6_dup0(1));
   hex6_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR2214(0), datain=>hex6_dup0(0));
   hex5_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR2213(6), datain=>hex5_dup0(6));
   hex5_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR2213(5), datain=>hex5_dup0(5));
   hex5_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR2213(4), datain=>hex5_dup0(4));
   hex5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR2213(3), datain=>hex5_dup0(3));
   hex5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR2213(2), datain=>hex5_dup0(2));
   hex5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR2213(1), datain=>hex5_dup0(1));
   hex5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR2213(0), datain=>hex5_dup0(0));
   hex4_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR2212(6), datain=>hex4_dup0(6));
   hex4_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR2212(5), datain=>hex4_dup0(5));
   hex4_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR2212(4), datain=>hex4_dup0(4));
   hex4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR2212(3), datain=>hex4_dup0(3));
   hex4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR2212(2), datain=>hex4_dup0(2));
   hex4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR2212(1), datain=>hex4_dup0(1));
   hex4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR2212(0), datain=>hex4_dup0(0));
   hex3_triBus6_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR2211(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR2211(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR2211(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR2211(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR2211(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR2211(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR2211(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR2210(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR2210(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR2210(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR2210(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR2210(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR2210(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR2210(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR2209(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR2209(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR2209(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR2209(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR2209(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR2209(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR2209(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR2208(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR2208(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR2208(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR2208(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR2208(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR2208(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR2208(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   clock_27_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clock_27_int, padio=>clock_27_EXMPLR2105);
   aud_xck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_xck_EXMPLR2201, datain=>aud_xck_dup0);
   aud_daclrck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_daclrck_EXMPLR2203, datain=>aud_adclrck_dup0);
   aud_dacdat_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_dacdat_EXMPLR2202, datain=>aud_dacdat_dup0);
   aud_adclrck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_adclrck_EXMPLR2204, datain=>aud_adclrck_dup0);
   ix51811z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5555") 
       port map ( combout=>NOT_bit_position_0, dataa=>bit_position(0));
   ix24999z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z9, dataa=>bit_position(1), datab=>
      audio_out(13), datac=>audio_out(12), datad=>bit_position(0));
   ix24999z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z7, dataa=>bit_position(1), datab=>
      audio_out(9), datac=>audio_out(8), datad=>bit_position(0));
   ix24999z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z3, dataa=>bit_position(1), datab=>
      audio_out(5), datac=>audio_out(4), datad=>bit_position(0));
   ix24999z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z5, dataa=>bit_position(1), datab=>
      audio_out(1), datac=>audio_out(0), datad=>bit_position(0));
   ix24999z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z1, dataa=>bit_position(3), datab=>
      nx24999z2, datac=>nx24999z4, datad=>bit_position(2));
   ix24999z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z8, dataa=>nx24999z9, datab=>audio_out(14), 
      datac=>audio_out(15), datad=>bit_position(1));
   ix24999z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z6, dataa=>nx24999z7, datab=>audio_out(10), 
      datac=>audio_out(11), datad=>bit_position(1));
   ix24999z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z2, dataa=>nx24999z3, datab=>audio_out(6), 
      datac=>audio_out(7), datad=>bit_position(1));
   ix24999z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z4, dataa=>nx24999z5, datab=>audio_out(2), 
      datac=>audio_out(3), datad=>bit_position(1));
   ix24999z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>aud_dacdat_dup0, dataa=>nx24999z1, datab=>
      nx24999z6, datac=>nx24999z8, datad=>bit_position(3));
   ix50205z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx50205z1, dataa=>nx50205z2, datab=>
      aud_adclrck_dup0);
   ix4119z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"fafc") 
       port map ( combout=>nx4119z14, dataa=>nx4119z15, datab=>sw_int_5, 
      datac=>sw_int_4, datad=>sw_int_3);
   ix4119z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"fcec") 
       port map ( combout=>nx4119z6, dataa=>nx4119z7, datab=>sw_int_6, datac
      =>sw_int_5, datad=>sw_int_4);
   ix4119z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff2e") 
       port map ( combout=>nx4119z11, dataa=>nx4119z12, datab=>sw_int_6, 
      datac=>sw_int_5, datad=>sw_int_4);
   ix55607z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2900") 
       port map ( combout=>nx55607z2, dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix4119z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx4119z4, dataa=>sw_int_17, datab=>sw_int_6);
   ix4119z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"b0b0") 
       port map ( combout=>nx4119z9, dataa=>nx4119z10, datab=>sw_int_4, 
      datac=>nx4119z11);
   ix4119z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"b8b8") 
       port map ( combout=>nx4119z2, dataa=>nx4119z3, datab=>sw_int_5, datac
      =>sw_int_4);
   ix38664z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx38664z8, dataa=>nx38664z9, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_1);
   ix38664z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"880f") 
       port map ( combout=>nx38664z4, dataa=>nx38664z5, datab=>sw_int_3, 
      datac=>sw_int_2, datad=>sw_int_1);
   ix50205z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx50205z4, dataa=>u_audio_dac_lrck_1x_div(5), 
      datab=>u_audio_dac_lrck_1x_div(4), datac=>u_audio_dac_lrck_1x_div(3), 
      datad=>u_audio_dac_lrck_1x_div(2));
   ix50205z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f7") 
       port map ( combout=>nx50205z3, dataa=>u_audio_dac_lrck_1x_div(1), 
      datab=>u_audio_dac_lrck_1x_div(0), datac=>nx50205z4);
   ix31099z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8ff") 
       port map ( combout=>nx31099z2, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix31099z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1300") 
       port map ( combout=>nx31099z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix30102z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e8ff") 
       port map ( combout=>nx30102z2, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix30102z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx30102z1, dataa=>u_audio_dac_bck_div_2, datab=>
      key_int_0);
   ix50814z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx50814z1, dataa=>bit_position(1), datab=>
      bit_position(0));
   ix49817z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6a6a") 
       port map ( combout=>nx49817z1, dataa=>bit_position(2), datab=>
      bit_position(1), datac=>bit_position(0));
   ix48820z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx48820z1, dataa=>bit_position(3), datab=>
      bit_position(2), datac=>bit_position(1), datad=>bit_position(0));
   ix15494z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"57a8") 
       port map ( combout=>nx15494z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>aud_bclk);
   ix50205z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"1511") 
       port map ( combout=>nx50205z2, dataa=>u_audio_dac_lrck_1x_div(8), 
      datab=>u_audio_dac_lrck_1x_div(7), datac=>u_audio_dac_lrck_1x_div(6), 
      datad=>nx50205z3);
   ix48238z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx48238z1, dataa=>nx50205z2, datab=>key_int_0);
   ix55607z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx55607z1, dataa=>nx49625z1, datab=>nx49625z2, 
      datac=>nx49625z3, datad=>sw_int_17);
   ix45891z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>raw_audio_0, dataa=>sine_data_0, datab=>sw_int_17
   );
   ix45891z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>raw_audio_1, dataa=>sine_data_1, datab=>sw_int_17
   );
   ix45891z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>raw_audio_2, dataa=>sine_data_2, datab=>sw_int_17
   );
   ix45891z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>raw_audio_3, dataa=>sine_data_3, datab=>sw_int_17
   );
   ix45891z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>raw_audio_4, dataa=>sine_data_4, datab=>
      noise_data_4, datac=>sw_int_17);
   ix62120z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>raw_audio_5, dataa=>sine_data_5, datab=>
      noise_data_5, datac=>sw_int_17);
   ix45891z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>raw_audio_6, dataa=>sine_data_6, datab=>
      noise_data_6, datac=>sw_int_17);
   ix45891z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>raw_audio_7, dataa=>sine_data_7, datab=>
      noise_data_7, datac=>sw_int_17);
   ix45891z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>raw_audio_8, dataa=>sine_data_8, datab=>
      noise_data_8, datac=>sw_int_17);
   ix45891z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>raw_audio_9, dataa=>sine_data_9, datab=>
      noise_data_9, datac=>sw_int_17);
   ix45891z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>raw_audio_10, dataa=>sine_data_10, datab=>
      noise_data_10, datac=>sw_int_17);
   ix45891z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"caca") 
       port map ( combout=>raw_audio_11, dataa=>sine_data_11, datab=>
      noise_data_15, datac=>sw_int_17);
   ix49625z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>display_freq(0), dataa=>nx49625z4, datab=>
      sw_int_17);
   ix49625z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>display_freq(1), dataa=>nx49625z3, datab=>
      sw_int_17);
   ix49625z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>display_freq(2), dataa=>nx49625z2, datab=>
      sw_int_17);
   ix49625z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>display_freq(3), dataa=>nx49625z1, datab=>
      sw_int_17);
   ix38664z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"fbab") 
       port map ( combout=>display_freq(4), dataa=>sw_int_17, datab=>
      sw_int_4, datac=>sw_int_0, datad=>nx38664z8);
   ix38664z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0a0c") 
       port map ( combout=>display_freq(5), dataa=>nx38664z6, datab=>
      nx38664z7, datac=>sw_int_17, datad=>sw_int_2);
   ix38664z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fece") 
       port map ( combout=>display_freq(6), dataa=>nx38664z3, datab=>
      sw_int_17, datac=>sw_int_4, datad=>nx38664z4);
   ix38664z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0a0c") 
       port map ( combout=>display_freq(7), dataa=>nx38664z1, datab=>
      nx38664z2, datac=>sw_int_17, datad=>sw_int_2);
   ix4119z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"efcc") 
       port map ( combout=>display_freq(8), dataa=>nx4119z13, datab=>
      sw_int_17, datac=>sw_int_4, datad=>nx4119z14);
   ix4119z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"3202") 
       port map ( combout=>display_freq(9), dataa=>nx4119z8, datab=>
      sw_int_17, datac=>sw_int_3, datad=>nx4119z9);
   ix4119z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"2300") 
       port map ( combout=>display_freq(10), dataa=>nx4119z5, datab=>
      sw_int_17, datac=>sw_int_6, datad=>nx4119z6);
   ix4119z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e200") 
       port map ( combout=>display_freq(11), dataa=>nx4119z1, datab=>
      sw_int_3, datac=>nx4119z2, datad=>nx4119z4);
   ix17637z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c800") 
       port map ( combout=>hex7_dup0(5), dataa=>nx17637z1, datab=>sw_int_5, 
      datac=>sw_int_4, datad=>nx4119z4);
   ix10101z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>hex6_dup0(0), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix9104z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex6_dup0(1), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix8107z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex6_dup0(2), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix7110z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex6_dup0(3), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix6113z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex6_dup0(4), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix5116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex6_dup0(5), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix4119z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex6_dup0(6), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix32682z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>hex5_dup0(0), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix33679z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex5_dup0(1), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix34676z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex5_dup0(2), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix35673z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex5_dup0(3), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix36670z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex5_dup0(4), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix37667z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex5_dup0(5), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix38664z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex5_dup0(6), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix55607z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff20") 
       port map ( combout=>hex4_dup0(0), dataa=>display_freq(2), datab=>
      display_freq(0), datac=>nx55607z1, datad=>nx55607z2);
   ix54610z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex4_dup0(1), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix53613z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex4_dup0(2), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix52616z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex4_dup0(3), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix51619z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex4_dup0(4), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix50622z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex4_dup0(5), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix49625z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex4_dup0(6), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix32096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0700") 
       port map ( combout=>nx32096z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
end main ;

