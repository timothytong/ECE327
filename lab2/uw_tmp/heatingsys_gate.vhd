
-- 
-- Definition of  heatingsys
-- 
--      Thu Jan 21 13:15:57 2016
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity heatingsys is 
   port (
      i_cur_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_des_temp : IN std_logic_vector (7 DOWNTO 0) ;
      i_reset : IN std_logic ;
      i_clock : IN std_logic ;
      o_heatmode : OUT std_logic_vector (1 DOWNTO 0)) ;
end heatingsys ;

architecture main of heatingsys is 
   component sub_8u_8u_8u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   procedure DFFRSE (
      constant data   : in std_logic;
      constant set    : in std_logic;
      constant reset  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (clk'event and clk'last_value = '0' and clk = '1') then
           if (reset = '1') then
               q <= '0' ;
           elsif (set = '1') then
               q <= '1' ;
           elsif (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((set/='1' or reset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFRSE ;
   component or_7u_7u
      port (
         a : IN std_logic_vector (6 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal o_heatmode_EXMPLR22: std_logic_vector (1 DOWNTO 0) ;
   
   signal diff: std_logic_vector (7 DOWNTO 0) ;
   
   signal PWR, GND, not_o_heatmode_0, not_rtlc2n457, rtlc2n157, 
      not_rtlc2n157, rtlc2_PS14_n206, not_rtlc2n701, rtlc2n333, rtlc2n337, 
      rtlc2n340, not_rtlc2n340, rtlc2n454, not_rtlcn2, rtlc2n457, rtlc2n542, 
      not_rtlc2n542, not_diff_2, not_diff_1, not_diff_0, rtlc2n547, 
      rtlc2n548, rtlc2n549, rtlc2n550, rtlc2n650, not_rtlcn3, rtlc2n653, 
      rtlc2n679, not_rtlc2n679, rtlc2n681, rtlc2n695, not_rtlc2n695, 
      rtlc2n700, rtlc2n701, rtlcn2, rtlcn3, rtlcn21, rtlcn30, not_rtlc2n681, 
      rtlcn34, not_rtlcn40, rtlcn40, not_o_heatmode_1: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   o_heatmode(1) <= o_heatmode_EXMPLR22(1) ;
   o_heatmode(0) <= o_heatmode_EXMPLR22(0) ;
   PWR <= '1' ;
   GND <= '0' ;
   diff_sub8_0 : sub_8u_8u_8u_0 port map ( cin=>PWR, a(7)=>i_des_temp(7), 
      a(6)=>i_des_temp(6), a(5)=>i_des_temp(5), a(4)=>i_des_temp(4), a(3)=>
      i_des_temp(3), a(2)=>i_des_temp(2), a(1)=>i_des_temp(1), a(0)=>
      i_des_temp(0), b(7)=>i_cur_temp(7), b(6)=>i_cur_temp(6), b(5)=>
      i_cur_temp(5), b(4)=>i_cur_temp(4), b(3)=>i_cur_temp(3), b(2)=>
      i_cur_temp(2), b(1)=>i_cur_temp(1), b(0)=>i_cur_temp(0), d(7)=>diff(7), 
      d(6)=>diff(6), d(5)=>diff(5), d(4)=>diff(4), d(3)=>diff(3), d(2)=>
      diff(2), d(1)=>diff(1), d(0)=>diff(0), cout=>DANGLING(0));
   rtlc2_18_select_1 : select_3_3 port map ( a(2)=>not_o_heatmode_0, a(1)=>
      rtlc2_PS14_n206, a(0)=>o_heatmode_EXMPLR22(1), b(2)=>rtlc2n333, b(1)=>
      rtlc2n337, b(0)=>not_rtlc2n701, d=>rtlc2n340);
   rtlc2n333 <= rtlc2n550 AND not_rtlc2n157 ;
   rtlc2n337 <= rtlc2n653 AND not_rtlc2n681 ;
   not_rtlc2n340 <= NOT rtlc2n340 ;
   not_rtlc2n701 <= NOT rtlc2n701 ;
   not_rtlc2n457 <= NOT rtlc2n457 ;
   rtlc2n157 <= not_rtlc2n457 AND rtlc2n550 ;
   not_o_heatmode_0 <= NOT o_heatmode_EXMPLR22(0) ;
   rtlc2n457 <= not_rtlcn2 OR diff(7) ;
   rtlc2_94_or_3 : or_5u_5u port map ( a(4)=>diff(3), a(3)=>diff(4), a(2)=>
      diff(5), a(1)=>diff(6), a(0)=>diff(7), d=>rtlc2n542);
   not_rtlc2n542 <= NOT rtlc2n542 ;
   not_diff_2 <= NOT diff(2) ;
   not_diff_1 <= NOT diff(1) ;
   not_diff_0 <= NOT diff(0) ;
   rtlc2n547 <= not_diff_1 AND not_diff_0 ;
   rtlc2n548 <= not_diff_2 OR rtlc2n547 ;
   rtlc2n549 <= not_rtlc2n542 AND rtlc2n548 ;
   rtlc2n550 <= rtlc2n549 OR diff(7) ;
   rtlc2_108_and_4 : and_3u_3u port map ( a(2)=>diff(2), a(1)=>diff(1), a(0)
      =>diff(0), d=>rtlc2n650);
   rtlc2n653 <= not_rtlcn3 OR diff(7) ;
   rtlc2_114_and_5 : and_7u_7u port map ( a(6)=>diff(7), a(5)=>diff(6), a(4)
      =>diff(5), a(3)=>diff(4), a(2)=>diff(3), a(1)=>diff(2), a(0)=>diff(1), 
      d=>rtlc2n679);
   not_rtlc2n679 <= NOT rtlc2n679 ;
   rtlc2n681 <= not_rtlc2n679 AND diff(7) ;
   rtlc2_118_and_6 : and_6u_6u port map ( a(5)=>diff(7), a(4)=>diff(6), a(3)
      =>diff(5), a(2)=>diff(4), a(1)=>diff(3), a(0)=>diff(2), d=>rtlc2n695);
   not_rtlc2n695 <= NOT rtlc2n695 ;
   rtlc2n700 <= rtlc2n547 OR not_rtlc2n695 ;
   rtlc2n701 <= rtlc2n700 AND diff(7) ;
   rtlc2n454 <= diff(1) AND diff(0) ;
   not_rtlcn2 <= NOT rtlcn2 ;
   not_rtlcn3 <= NOT rtlcn3 ;
   not_rtlc2n157 <= NOT rtlc2n157 ;
   not_rtlc2n681 <= NOT rtlc2n681 ;
   rtlcn34 <= rtlc2_PS14_n206 AND not_rtlc2n681 ;
   rtlcn21 <= rtlcn34 OR not_rtlcn40 ;
   rtlc_48_or_7 : or_3u_3u port map ( a(2)=>o_heatmode_EXMPLR22(1), a(1)=>
      not_o_heatmode_0, a(0)=>not_rtlc2n681, d=>rtlcn30);
   not_rtlcn40 <= NOT rtlcn40 ;
   not_o_heatmode_1 <= NOT o_heatmode_EXMPLR22(1) ;
   rtlcn40 <= rtlc2n157 OR o_heatmode_EXMPLR22(0) ;
   rtlcn3 <= rtlc2n542 OR rtlc2n650 ;
   rtlc2_PS14_n206 <= not_o_heatmode_1 AND o_heatmode_EXMPLR22(0) ;
   DFFRSE (rtlcn21,GND,i_reset,not_rtlc2n340,i_clock,o_heatmode_EXMPLR22(1))
    ;
   DFFRSE (rtlcn30,GND,i_reset,not_rtlc2n340,i_clock,o_heatmode_EXMPLR22(0))
    ;
   modgen_or_0 : or_7u_7u port map ( a(6)=>diff(2), a(5)=>diff(3), a(4)=>
      diff(4), a(3)=>diff(5), a(2)=>diff(6), a(1)=>diff(7), a(0)=>rtlc2n454, 
      d=>rtlcn2);
end main ;

