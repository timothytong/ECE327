
-- 
-- Definition of  fir
-- 
--      Tue Jan 26 18:00:21 2016
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity shiftr is 
   port (
      clk : IN std_logic ;
      tap_prev : IN std_logic_vector (15 DOWNTO 0) ;
      tap_next : OUT std_logic_vector (15 DOWNTO 0) ;
      coef : IN std_logic_vector (15 DOWNTO 0) ;
      prev_sum : IN std_logic_vector (15 DOWNTO 0) ;
      next_sum : OUT std_logic_vector (15 DOWNTO 0)) ;
end shiftr ;

architecture main_unfold_2342 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR51: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR49: std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR51(15) ;
   tap_next(14) <= tap_next_EXMPLR51(14) ;
   tap_next(13) <= tap_next_EXMPLR51(13) ;
   tap_next(12) <= tap_next_EXMPLR51(12) ;
   tap_next(11) <= tap_next_EXMPLR51(11) ;
   tap_next(10) <= tap_next_EXMPLR51(10) ;
   tap_next(9) <= tap_next_EXMPLR51(9) ;
   tap_next(8) <= tap_next_EXMPLR51(8) ;
   tap_next(7) <= tap_next_EXMPLR51(7) ;
   tap_next(6) <= tap_next_EXMPLR51(6) ;
   tap_next(5) <= tap_next_EXMPLR51(5) ;
   tap_next(4) <= tap_next_EXMPLR51(4) ;
   tap_next(3) <= tap_next_EXMPLR51(3) ;
   tap_next(2) <= tap_next_EXMPLR51(2) ;
   tap_next(1) <= tap_next_EXMPLR51(1) ;
   tap_next(0) <= tap_next_EXMPLR51(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>tap_next_EXMPLR51(15), 
      a(30)=>tap_next_EXMPLR51(15), a(29)=>tap_next_EXMPLR51(15), a(28)=>
      tap_next_EXMPLR51(15), a(27)=>tap_next_EXMPLR51(15), a(26)=>
      tap_next_EXMPLR51(15), a(25)=>tap_next_EXMPLR51(15), a(24)=>
      tap_next_EXMPLR51(15), a(23)=>tap_next_EXMPLR51(15), a(22)=>
      tap_next_EXMPLR51(15), a(21)=>tap_next_EXMPLR51(15), a(20)=>
      tap_next_EXMPLR51(15), a(19)=>tap_next_EXMPLR51(15), a(18)=>
      tap_next_EXMPLR51(15), a(17)=>tap_next_EXMPLR51(15), a(16)=>
      tap_next_EXMPLR51(15), a(15)=>tap_next_EXMPLR51(15), a(14)=>
      tap_next_EXMPLR51(14), a(13)=>tap_next_EXMPLR51(13), a(12)=>
      tap_next_EXMPLR51(12), a(11)=>tap_next_EXMPLR51(11), a(10)=>
      tap_next_EXMPLR51(10), a(9)=>tap_next_EXMPLR51(9), a(8)=>
      tap_next_EXMPLR51(8), a(7)=>tap_next_EXMPLR51(7), a(6)=>
      tap_next_EXMPLR51(6), a(5)=>tap_next_EXMPLR51(5), a(4)=>
      tap_next_EXMPLR51(4), a(3)=>tap_next_EXMPLR51(3), a(2)=>
      tap_next_EXMPLR51(2), a(1)=>tap_next_EXMPLR51(1), a(0)=>
      tap_next_EXMPLR51(0), b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, 
      b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, 
      b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, 
      b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, 
      b(9)=>coef_9_EXMPLR49, b(8)=>GND, b(7)=>GND, b(6)=>coef_9_EXMPLR49, 
      b(5)=>GND, b(4)=>GND, b(3)=>GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, 
      d(31)=>DANGLING(0), d(30)=>DANGLING(1), d(29)=>DANGLING(2), d(28)=>
      DANGLING(3), d(27)=>next_sum(15), d(26)=>next_sum(14), d(25)=>
      next_sum(13), d(24)=>next_sum(12), d(23)=>next_sum(11), d(22)=>
      next_sum(10), d(21)=>next_sum(9), d(20)=>next_sum(8), d(19)=>
      next_sum(7), d(18)=>next_sum(6), d(17)=>next_sum(5), d(16)=>
      next_sum(4), d(15)=>next_sum(3), d(14)=>next_sum(2), d(13)=>
      next_sum(1), d(12)=>next_sum(0), d(11)=>DANGLING(4), d(10)=>DANGLING(5
      ), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), d(6)=>
      DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>DANGLING(12
      ), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(15));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR51(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR51(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR51(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR51(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR51(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR51(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR51(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR51(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR51(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR51(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR51(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR51(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR51(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR51(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR51(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR51(0)) ;
   coef_9_EXMPLR49 <= '1' ;
end main_unfold_2342 ;


architecture main_unfold_16 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR120: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_7_EXMPLR118: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR120(15) ;
   tap_next(14) <= tap_next_EXMPLR120(14) ;
   tap_next(13) <= tap_next_EXMPLR120(13) ;
   tap_next(12) <= tap_next_EXMPLR120(12) ;
   tap_next(11) <= tap_next_EXMPLR120(11) ;
   tap_next(10) <= tap_next_EXMPLR120(10) ;
   tap_next(9) <= tap_next_EXMPLR120(9) ;
   tap_next(8) <= tap_next_EXMPLR120(8) ;
   tap_next(7) <= tap_next_EXMPLR120(7) ;
   tap_next(6) <= tap_next_EXMPLR120(6) ;
   tap_next(5) <= tap_next_EXMPLR120(5) ;
   tap_next(4) <= tap_next_EXMPLR120(4) ;
   tap_next(3) <= tap_next_EXMPLR120(3) ;
   tap_next(2) <= tap_next_EXMPLR120(2) ;
   tap_next(1) <= tap_next_EXMPLR120(1) ;
   tap_next(0) <= tap_next_EXMPLR120(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR120(15), a(30)=>tap_next_EXMPLR120(15), a(29)=>
      tap_next_EXMPLR120(15), a(28)=>tap_next_EXMPLR120(15), a(27)=>
      tap_next_EXMPLR120(15), a(26)=>tap_next_EXMPLR120(15), a(25)=>
      tap_next_EXMPLR120(15), a(24)=>tap_next_EXMPLR120(15), a(23)=>
      tap_next_EXMPLR120(15), a(22)=>tap_next_EXMPLR120(15), a(21)=>
      tap_next_EXMPLR120(15), a(20)=>tap_next_EXMPLR120(15), a(19)=>
      tap_next_EXMPLR120(15), a(18)=>tap_next_EXMPLR120(15), a(17)=>
      tap_next_EXMPLR120(15), a(16)=>tap_next_EXMPLR120(15), a(15)=>
      tap_next_EXMPLR120(15), a(14)=>tap_next_EXMPLR120(14), a(13)=>
      tap_next_EXMPLR120(13), a(12)=>tap_next_EXMPLR120(12), a(11)=>
      tap_next_EXMPLR120(11), a(10)=>tap_next_EXMPLR120(10), a(9)=>
      tap_next_EXMPLR120(9), a(8)=>tap_next_EXMPLR120(8), a(7)=>
      tap_next_EXMPLR120(7), a(6)=>tap_next_EXMPLR120(6), a(5)=>
      tap_next_EXMPLR120(5), a(4)=>tap_next_EXMPLR120(4), a(3)=>
      tap_next_EXMPLR120(3), a(2)=>tap_next_EXMPLR120(2), a(1)=>
      tap_next_EXMPLR120(1), a(0)=>tap_next_EXMPLR120(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>coef_7_EXMPLR118, 
      b(7)=>coef_7_EXMPLR118, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
      b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>DANGLING(1
      ), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), d(26)=>
      prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), d(22)=>
      prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)=>
      prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR120(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR120(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR120(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR120(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR120(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR120(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR120(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR120(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR120(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR120(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR120(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR120(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR120(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR120(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR120(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR120(0)) ;
   coef_7_EXMPLR118 <= '1' ;
end main_unfold_16 ;


architecture main_unfold_2344 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR190: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_6_EXMPLR188: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR190(15) ;
   tap_next(14) <= tap_next_EXMPLR190(14) ;
   tap_next(13) <= tap_next_EXMPLR190(13) ;
   tap_next(12) <= tap_next_EXMPLR190(12) ;
   tap_next(11) <= tap_next_EXMPLR190(11) ;
   tap_next(10) <= tap_next_EXMPLR190(10) ;
   tap_next(9) <= tap_next_EXMPLR190(9) ;
   tap_next(8) <= tap_next_EXMPLR190(8) ;
   tap_next(7) <= tap_next_EXMPLR190(7) ;
   tap_next(6) <= tap_next_EXMPLR190(6) ;
   tap_next(5) <= tap_next_EXMPLR190(5) ;
   tap_next(4) <= tap_next_EXMPLR190(4) ;
   tap_next(3) <= tap_next_EXMPLR190(3) ;
   tap_next(2) <= tap_next_EXMPLR190(2) ;
   tap_next(1) <= tap_next_EXMPLR190(1) ;
   tap_next(0) <= tap_next_EXMPLR190(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR190(15), a(30)=>tap_next_EXMPLR190(15), a(29)=>
      tap_next_EXMPLR190(15), a(28)=>tap_next_EXMPLR190(15), a(27)=>
      tap_next_EXMPLR190(15), a(26)=>tap_next_EXMPLR190(15), a(25)=>
      tap_next_EXMPLR190(15), a(24)=>tap_next_EXMPLR190(15), a(23)=>
      tap_next_EXMPLR190(15), a(22)=>tap_next_EXMPLR190(15), a(21)=>
      tap_next_EXMPLR190(15), a(20)=>tap_next_EXMPLR190(15), a(19)=>
      tap_next_EXMPLR190(15), a(18)=>tap_next_EXMPLR190(15), a(17)=>
      tap_next_EXMPLR190(15), a(16)=>tap_next_EXMPLR190(15), a(15)=>
      tap_next_EXMPLR190(15), a(14)=>tap_next_EXMPLR190(14), a(13)=>
      tap_next_EXMPLR190(13), a(12)=>tap_next_EXMPLR190(12), a(11)=>
      tap_next_EXMPLR190(11), a(10)=>tap_next_EXMPLR190(10), a(9)=>
      tap_next_EXMPLR190(9), a(8)=>tap_next_EXMPLR190(8), a(7)=>
      tap_next_EXMPLR190(7), a(6)=>tap_next_EXMPLR190(6), a(5)=>
      tap_next_EXMPLR190(5), a(4)=>tap_next_EXMPLR190(4), a(3)=>
      tap_next_EXMPLR190(3), a(2)=>tap_next_EXMPLR190(2), a(1)=>
      tap_next_EXMPLR190(1), a(0)=>tap_next_EXMPLR190(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>coef_6_EXMPLR188, 
      b(7)=>coef_6_EXMPLR188, b(6)=>coef_6_EXMPLR188, b(5)=>GND, b(4)=>GND, 
      b(3)=>GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)
      =>DANGLING(1), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), 
      d(26)=>prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), 
      d(22)=>prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)
      =>prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR190(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR190(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR190(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR190(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR190(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR190(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR190(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR190(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR190(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR190(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR190(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR190(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR190(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR190(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR190(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR190(0)) ;
   coef_6_EXMPLR188 <= '1' ;
end main_unfold_2344 ;


architecture main_unfold_2345 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR260: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR258: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR260(15) ;
   tap_next(14) <= tap_next_EXMPLR260(14) ;
   tap_next(13) <= tap_next_EXMPLR260(13) ;
   tap_next(12) <= tap_next_EXMPLR260(12) ;
   tap_next(11) <= tap_next_EXMPLR260(11) ;
   tap_next(10) <= tap_next_EXMPLR260(10) ;
   tap_next(9) <= tap_next_EXMPLR260(9) ;
   tap_next(8) <= tap_next_EXMPLR260(8) ;
   tap_next(7) <= tap_next_EXMPLR260(7) ;
   tap_next(6) <= tap_next_EXMPLR260(6) ;
   tap_next(5) <= tap_next_EXMPLR260(5) ;
   tap_next(4) <= tap_next_EXMPLR260(4) ;
   tap_next(3) <= tap_next_EXMPLR260(3) ;
   tap_next(2) <= tap_next_EXMPLR260(2) ;
   tap_next(1) <= tap_next_EXMPLR260(1) ;
   tap_next(0) <= tap_next_EXMPLR260(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR260(15), a(30)=>tap_next_EXMPLR260(15), a(29)=>
      tap_next_EXMPLR260(15), a(28)=>tap_next_EXMPLR260(15), a(27)=>
      tap_next_EXMPLR260(15), a(26)=>tap_next_EXMPLR260(15), a(25)=>
      tap_next_EXMPLR260(15), a(24)=>tap_next_EXMPLR260(15), a(23)=>
      tap_next_EXMPLR260(15), a(22)=>tap_next_EXMPLR260(15), a(21)=>
      tap_next_EXMPLR260(15), a(20)=>tap_next_EXMPLR260(15), a(19)=>
      tap_next_EXMPLR260(15), a(18)=>tap_next_EXMPLR260(15), a(17)=>
      tap_next_EXMPLR260(15), a(16)=>tap_next_EXMPLR260(15), a(15)=>
      tap_next_EXMPLR260(15), a(14)=>tap_next_EXMPLR260(14), a(13)=>
      tap_next_EXMPLR260(13), a(12)=>tap_next_EXMPLR260(12), a(11)=>
      tap_next_EXMPLR260(11), a(10)=>tap_next_EXMPLR260(10), a(9)=>
      tap_next_EXMPLR260(9), a(8)=>tap_next_EXMPLR260(8), a(7)=>
      tap_next_EXMPLR260(7), a(6)=>tap_next_EXMPLR260(6), a(5)=>
      tap_next_EXMPLR260(5), a(4)=>tap_next_EXMPLR260(4), a(3)=>
      tap_next_EXMPLR260(3), a(2)=>tap_next_EXMPLR260(2), a(1)=>
      tap_next_EXMPLR260(1), a(0)=>tap_next_EXMPLR260(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR258, b(8)=>GND, 
      b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, b(2)=>GND, b(1)
      =>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>DANGLING(1), d(29)=>
      DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), d(26)=>prod(14), 
      d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), d(22)=>prod(10), 
      d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)=>prod(6), d(17)
      =>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>prod(2), d(13)=>
      prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>DANGLING(5), d(9)
      =>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), d(6)=>DANGLING(9), 
      d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>DANGLING(12), d(2)=>
      DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR260(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR260(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR260(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR260(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR260(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR260(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR260(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR260(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR260(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR260(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR260(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR260(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR260(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR260(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR260(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR260(0)) ;
   coef_9_EXMPLR258 <= '1' ;
end main_unfold_2345 ;


architecture main_unfold_2346 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR330: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR328: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR330(15) ;
   tap_next(14) <= tap_next_EXMPLR330(14) ;
   tap_next(13) <= tap_next_EXMPLR330(13) ;
   tap_next(12) <= tap_next_EXMPLR330(12) ;
   tap_next(11) <= tap_next_EXMPLR330(11) ;
   tap_next(10) <= tap_next_EXMPLR330(10) ;
   tap_next(9) <= tap_next_EXMPLR330(9) ;
   tap_next(8) <= tap_next_EXMPLR330(8) ;
   tap_next(7) <= tap_next_EXMPLR330(7) ;
   tap_next(6) <= tap_next_EXMPLR330(6) ;
   tap_next(5) <= tap_next_EXMPLR330(5) ;
   tap_next(4) <= tap_next_EXMPLR330(4) ;
   tap_next(3) <= tap_next_EXMPLR330(3) ;
   tap_next(2) <= tap_next_EXMPLR330(2) ;
   tap_next(1) <= tap_next_EXMPLR330(1) ;
   tap_next(0) <= tap_next_EXMPLR330(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR330(15), a(30)=>tap_next_EXMPLR330(15), a(29)=>
      tap_next_EXMPLR330(15), a(28)=>tap_next_EXMPLR330(15), a(27)=>
      tap_next_EXMPLR330(15), a(26)=>tap_next_EXMPLR330(15), a(25)=>
      tap_next_EXMPLR330(15), a(24)=>tap_next_EXMPLR330(15), a(23)=>
      tap_next_EXMPLR330(15), a(22)=>tap_next_EXMPLR330(15), a(21)=>
      tap_next_EXMPLR330(15), a(20)=>tap_next_EXMPLR330(15), a(19)=>
      tap_next_EXMPLR330(15), a(18)=>tap_next_EXMPLR330(15), a(17)=>
      tap_next_EXMPLR330(15), a(16)=>tap_next_EXMPLR330(15), a(15)=>
      tap_next_EXMPLR330(15), a(14)=>tap_next_EXMPLR330(14), a(13)=>
      tap_next_EXMPLR330(13), a(12)=>tap_next_EXMPLR330(12), a(11)=>
      tap_next_EXMPLR330(11), a(10)=>tap_next_EXMPLR330(10), a(9)=>
      tap_next_EXMPLR330(9), a(8)=>tap_next_EXMPLR330(8), a(7)=>
      tap_next_EXMPLR330(7), a(6)=>tap_next_EXMPLR330(6), a(5)=>
      tap_next_EXMPLR330(5), a(4)=>tap_next_EXMPLR330(4), a(3)=>
      tap_next_EXMPLR330(3), a(2)=>tap_next_EXMPLR330(2), a(1)=>
      tap_next_EXMPLR330(1), a(0)=>tap_next_EXMPLR330(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR328, b(8)=>GND, 
      b(7)=>coef_9_EXMPLR328, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
      b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>DANGLING(1
      ), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), d(26)=>
      prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), d(22)=>
      prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)=>
      prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR330(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR330(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR330(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR330(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR330(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR330(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR330(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR330(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR330(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR330(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR330(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR330(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR330(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR330(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR330(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR330(0)) ;
   coef_9_EXMPLR328 <= '1' ;
end main_unfold_2346 ;


architecture main_unfold_2347 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR400: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR398: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR400(15) ;
   tap_next(14) <= tap_next_EXMPLR400(14) ;
   tap_next(13) <= tap_next_EXMPLR400(13) ;
   tap_next(12) <= tap_next_EXMPLR400(12) ;
   tap_next(11) <= tap_next_EXMPLR400(11) ;
   tap_next(10) <= tap_next_EXMPLR400(10) ;
   tap_next(9) <= tap_next_EXMPLR400(9) ;
   tap_next(8) <= tap_next_EXMPLR400(8) ;
   tap_next(7) <= tap_next_EXMPLR400(7) ;
   tap_next(6) <= tap_next_EXMPLR400(6) ;
   tap_next(5) <= tap_next_EXMPLR400(5) ;
   tap_next(4) <= tap_next_EXMPLR400(4) ;
   tap_next(3) <= tap_next_EXMPLR400(3) ;
   tap_next(2) <= tap_next_EXMPLR400(2) ;
   tap_next(1) <= tap_next_EXMPLR400(1) ;
   tap_next(0) <= tap_next_EXMPLR400(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR400(15), a(30)=>tap_next_EXMPLR400(15), a(29)=>
      tap_next_EXMPLR400(15), a(28)=>tap_next_EXMPLR400(15), a(27)=>
      tap_next_EXMPLR400(15), a(26)=>tap_next_EXMPLR400(15), a(25)=>
      tap_next_EXMPLR400(15), a(24)=>tap_next_EXMPLR400(15), a(23)=>
      tap_next_EXMPLR400(15), a(22)=>tap_next_EXMPLR400(15), a(21)=>
      tap_next_EXMPLR400(15), a(20)=>tap_next_EXMPLR400(15), a(19)=>
      tap_next_EXMPLR400(15), a(18)=>tap_next_EXMPLR400(15), a(17)=>
      tap_next_EXMPLR400(15), a(16)=>tap_next_EXMPLR400(15), a(15)=>
      tap_next_EXMPLR400(15), a(14)=>tap_next_EXMPLR400(14), a(13)=>
      tap_next_EXMPLR400(13), a(12)=>tap_next_EXMPLR400(12), a(11)=>
      tap_next_EXMPLR400(11), a(10)=>tap_next_EXMPLR400(10), a(9)=>
      tap_next_EXMPLR400(9), a(8)=>tap_next_EXMPLR400(8), a(7)=>
      tap_next_EXMPLR400(7), a(6)=>tap_next_EXMPLR400(6), a(5)=>
      tap_next_EXMPLR400(5), a(4)=>tap_next_EXMPLR400(4), a(3)=>
      tap_next_EXMPLR400(3), a(2)=>tap_next_EXMPLR400(2), a(1)=>
      tap_next_EXMPLR400(1), a(0)=>tap_next_EXMPLR400(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR398, b(8)=>GND, 
      b(7)=>coef_9_EXMPLR398, b(6)=>coef_9_EXMPLR398, b(5)=>GND, b(4)=>GND, 
      b(3)=>GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)
      =>DANGLING(1), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), 
      d(26)=>prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), 
      d(22)=>prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)
      =>prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR400(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR400(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR400(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR400(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR400(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR400(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR400(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR400(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR400(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR400(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR400(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR400(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR400(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR400(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR400(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR400(0)) ;
   coef_9_EXMPLR398 <= '1' ;
end main_unfold_2347 ;


architecture main_unfold_2348 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR470: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR468: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR470(15) ;
   tap_next(14) <= tap_next_EXMPLR470(14) ;
   tap_next(13) <= tap_next_EXMPLR470(13) ;
   tap_next(12) <= tap_next_EXMPLR470(12) ;
   tap_next(11) <= tap_next_EXMPLR470(11) ;
   tap_next(10) <= tap_next_EXMPLR470(10) ;
   tap_next(9) <= tap_next_EXMPLR470(9) ;
   tap_next(8) <= tap_next_EXMPLR470(8) ;
   tap_next(7) <= tap_next_EXMPLR470(7) ;
   tap_next(6) <= tap_next_EXMPLR470(6) ;
   tap_next(5) <= tap_next_EXMPLR470(5) ;
   tap_next(4) <= tap_next_EXMPLR470(4) ;
   tap_next(3) <= tap_next_EXMPLR470(3) ;
   tap_next(2) <= tap_next_EXMPLR470(2) ;
   tap_next(1) <= tap_next_EXMPLR470(1) ;
   tap_next(0) <= tap_next_EXMPLR470(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR470(15), a(30)=>tap_next_EXMPLR470(15), a(29)=>
      tap_next_EXMPLR470(15), a(28)=>tap_next_EXMPLR470(15), a(27)=>
      tap_next_EXMPLR470(15), a(26)=>tap_next_EXMPLR470(15), a(25)=>
      tap_next_EXMPLR470(15), a(24)=>tap_next_EXMPLR470(15), a(23)=>
      tap_next_EXMPLR470(15), a(22)=>tap_next_EXMPLR470(15), a(21)=>
      tap_next_EXMPLR470(15), a(20)=>tap_next_EXMPLR470(15), a(19)=>
      tap_next_EXMPLR470(15), a(18)=>tap_next_EXMPLR470(15), a(17)=>
      tap_next_EXMPLR470(15), a(16)=>tap_next_EXMPLR470(15), a(15)=>
      tap_next_EXMPLR470(15), a(14)=>tap_next_EXMPLR470(14), a(13)=>
      tap_next_EXMPLR470(13), a(12)=>tap_next_EXMPLR470(12), a(11)=>
      tap_next_EXMPLR470(11), a(10)=>tap_next_EXMPLR470(10), a(9)=>
      tap_next_EXMPLR470(9), a(8)=>tap_next_EXMPLR470(8), a(7)=>
      tap_next_EXMPLR470(7), a(6)=>tap_next_EXMPLR470(6), a(5)=>
      tap_next_EXMPLR470(5), a(4)=>tap_next_EXMPLR470(4), a(3)=>
      tap_next_EXMPLR470(3), a(2)=>tap_next_EXMPLR470(2), a(1)=>
      tap_next_EXMPLR470(1), a(0)=>tap_next_EXMPLR470(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR468, b(8)=>
      coef_8_EXMPLR468, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
      GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>
      DANGLING(1), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), 
      d(26)=>prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), 
      d(22)=>prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)
      =>prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR470(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR470(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR470(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR470(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR470(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR470(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR470(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR470(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR470(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR470(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR470(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR470(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR470(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR470(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR470(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR470(0)) ;
   coef_8_EXMPLR468 <= '1' ;
end main_unfold_2348 ;


architecture main_unfold_2349 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR540: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR538: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR540(15) ;
   tap_next(14) <= tap_next_EXMPLR540(14) ;
   tap_next(13) <= tap_next_EXMPLR540(13) ;
   tap_next(12) <= tap_next_EXMPLR540(12) ;
   tap_next(11) <= tap_next_EXMPLR540(11) ;
   tap_next(10) <= tap_next_EXMPLR540(10) ;
   tap_next(9) <= tap_next_EXMPLR540(9) ;
   tap_next(8) <= tap_next_EXMPLR540(8) ;
   tap_next(7) <= tap_next_EXMPLR540(7) ;
   tap_next(6) <= tap_next_EXMPLR540(6) ;
   tap_next(5) <= tap_next_EXMPLR540(5) ;
   tap_next(4) <= tap_next_EXMPLR540(4) ;
   tap_next(3) <= tap_next_EXMPLR540(3) ;
   tap_next(2) <= tap_next_EXMPLR540(2) ;
   tap_next(1) <= tap_next_EXMPLR540(1) ;
   tap_next(0) <= tap_next_EXMPLR540(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR540(15), a(30)=>tap_next_EXMPLR540(15), a(29)=>
      tap_next_EXMPLR540(15), a(28)=>tap_next_EXMPLR540(15), a(27)=>
      tap_next_EXMPLR540(15), a(26)=>tap_next_EXMPLR540(15), a(25)=>
      tap_next_EXMPLR540(15), a(24)=>tap_next_EXMPLR540(15), a(23)=>
      tap_next_EXMPLR540(15), a(22)=>tap_next_EXMPLR540(15), a(21)=>
      tap_next_EXMPLR540(15), a(20)=>tap_next_EXMPLR540(15), a(19)=>
      tap_next_EXMPLR540(15), a(18)=>tap_next_EXMPLR540(15), a(17)=>
      tap_next_EXMPLR540(15), a(16)=>tap_next_EXMPLR540(15), a(15)=>
      tap_next_EXMPLR540(15), a(14)=>tap_next_EXMPLR540(14), a(13)=>
      tap_next_EXMPLR540(13), a(12)=>tap_next_EXMPLR540(12), a(11)=>
      tap_next_EXMPLR540(11), a(10)=>tap_next_EXMPLR540(10), a(9)=>
      tap_next_EXMPLR540(9), a(8)=>tap_next_EXMPLR540(8), a(7)=>
      tap_next_EXMPLR540(7), a(6)=>tap_next_EXMPLR540(6), a(5)=>
      tap_next_EXMPLR540(5), a(4)=>tap_next_EXMPLR540(4), a(3)=>
      tap_next_EXMPLR540(3), a(2)=>tap_next_EXMPLR540(2), a(1)=>
      tap_next_EXMPLR540(1), a(0)=>tap_next_EXMPLR540(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR538, b(8)=>
      coef_8_EXMPLR538, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
      GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>
      DANGLING(1), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), 
      d(26)=>prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), 
      d(22)=>prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)
      =>prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR540(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR540(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR540(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR540(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR540(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR540(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR540(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR540(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR540(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR540(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR540(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR540(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR540(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR540(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR540(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR540(0)) ;
   coef_8_EXMPLR538 <= '1' ;
end main_unfold_2349 ;


architecture main_unfold_2350 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR610: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR608: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR610(15) ;
   tap_next(14) <= tap_next_EXMPLR610(14) ;
   tap_next(13) <= tap_next_EXMPLR610(13) ;
   tap_next(12) <= tap_next_EXMPLR610(12) ;
   tap_next(11) <= tap_next_EXMPLR610(11) ;
   tap_next(10) <= tap_next_EXMPLR610(10) ;
   tap_next(9) <= tap_next_EXMPLR610(9) ;
   tap_next(8) <= tap_next_EXMPLR610(8) ;
   tap_next(7) <= tap_next_EXMPLR610(7) ;
   tap_next(6) <= tap_next_EXMPLR610(6) ;
   tap_next(5) <= tap_next_EXMPLR610(5) ;
   tap_next(4) <= tap_next_EXMPLR610(4) ;
   tap_next(3) <= tap_next_EXMPLR610(3) ;
   tap_next(2) <= tap_next_EXMPLR610(2) ;
   tap_next(1) <= tap_next_EXMPLR610(1) ;
   tap_next(0) <= tap_next_EXMPLR610(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR610(15), a(30)=>tap_next_EXMPLR610(15), a(29)=>
      tap_next_EXMPLR610(15), a(28)=>tap_next_EXMPLR610(15), a(27)=>
      tap_next_EXMPLR610(15), a(26)=>tap_next_EXMPLR610(15), a(25)=>
      tap_next_EXMPLR610(15), a(24)=>tap_next_EXMPLR610(15), a(23)=>
      tap_next_EXMPLR610(15), a(22)=>tap_next_EXMPLR610(15), a(21)=>
      tap_next_EXMPLR610(15), a(20)=>tap_next_EXMPLR610(15), a(19)=>
      tap_next_EXMPLR610(15), a(18)=>tap_next_EXMPLR610(15), a(17)=>
      tap_next_EXMPLR610(15), a(16)=>tap_next_EXMPLR610(15), a(15)=>
      tap_next_EXMPLR610(15), a(14)=>tap_next_EXMPLR610(14), a(13)=>
      tap_next_EXMPLR610(13), a(12)=>tap_next_EXMPLR610(12), a(11)=>
      tap_next_EXMPLR610(11), a(10)=>tap_next_EXMPLR610(10), a(9)=>
      tap_next_EXMPLR610(9), a(8)=>tap_next_EXMPLR610(8), a(7)=>
      tap_next_EXMPLR610(7), a(6)=>tap_next_EXMPLR610(6), a(5)=>
      tap_next_EXMPLR610(5), a(4)=>tap_next_EXMPLR610(4), a(3)=>
      tap_next_EXMPLR610(3), a(2)=>tap_next_EXMPLR610(2), a(1)=>
      tap_next_EXMPLR610(1), a(0)=>tap_next_EXMPLR610(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR608, b(8)=>
      coef_8_EXMPLR608, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
      GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>
      DANGLING(1), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), 
      d(26)=>prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), 
      d(22)=>prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)
      =>prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR610(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR610(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR610(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR610(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR610(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR610(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR610(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR610(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR610(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR610(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR610(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR610(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR610(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR610(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR610(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR610(0)) ;
   coef_8_EXMPLR608 <= '1' ;
end main_unfold_2350 ;


architecture main_unfold_2358 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR680: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR678: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR680(15) ;
   tap_next(14) <= tap_next_EXMPLR680(14) ;
   tap_next(13) <= tap_next_EXMPLR680(13) ;
   tap_next(12) <= tap_next_EXMPLR680(12) ;
   tap_next(11) <= tap_next_EXMPLR680(11) ;
   tap_next(10) <= tap_next_EXMPLR680(10) ;
   tap_next(9) <= tap_next_EXMPLR680(9) ;
   tap_next(8) <= tap_next_EXMPLR680(8) ;
   tap_next(7) <= tap_next_EXMPLR680(7) ;
   tap_next(6) <= tap_next_EXMPLR680(6) ;
   tap_next(5) <= tap_next_EXMPLR680(5) ;
   tap_next(4) <= tap_next_EXMPLR680(4) ;
   tap_next(3) <= tap_next_EXMPLR680(3) ;
   tap_next(2) <= tap_next_EXMPLR680(2) ;
   tap_next(1) <= tap_next_EXMPLR680(1) ;
   tap_next(0) <= tap_next_EXMPLR680(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR680(15), a(30)=>tap_next_EXMPLR680(15), a(29)=>
      tap_next_EXMPLR680(15), a(28)=>tap_next_EXMPLR680(15), a(27)=>
      tap_next_EXMPLR680(15), a(26)=>tap_next_EXMPLR680(15), a(25)=>
      tap_next_EXMPLR680(15), a(24)=>tap_next_EXMPLR680(15), a(23)=>
      tap_next_EXMPLR680(15), a(22)=>tap_next_EXMPLR680(15), a(21)=>
      tap_next_EXMPLR680(15), a(20)=>tap_next_EXMPLR680(15), a(19)=>
      tap_next_EXMPLR680(15), a(18)=>tap_next_EXMPLR680(15), a(17)=>
      tap_next_EXMPLR680(15), a(16)=>tap_next_EXMPLR680(15), a(15)=>
      tap_next_EXMPLR680(15), a(14)=>tap_next_EXMPLR680(14), a(13)=>
      tap_next_EXMPLR680(13), a(12)=>tap_next_EXMPLR680(12), a(11)=>
      tap_next_EXMPLR680(11), a(10)=>tap_next_EXMPLR680(10), a(9)=>
      tap_next_EXMPLR680(9), a(8)=>tap_next_EXMPLR680(8), a(7)=>
      tap_next_EXMPLR680(7), a(6)=>tap_next_EXMPLR680(6), a(5)=>
      tap_next_EXMPLR680(5), a(4)=>tap_next_EXMPLR680(4), a(3)=>
      tap_next_EXMPLR680(3), a(2)=>tap_next_EXMPLR680(2), a(1)=>
      tap_next_EXMPLR680(1), a(0)=>tap_next_EXMPLR680(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR678, b(8)=>
      coef_8_EXMPLR678, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
      GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>
      DANGLING(1), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), 
      d(26)=>prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), 
      d(22)=>prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)
      =>prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR680(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR680(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR680(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR680(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR680(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR680(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR680(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR680(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR680(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR680(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR680(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR680(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR680(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR680(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR680(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR680(0)) ;
   coef_8_EXMPLR678 <= '1' ;
end main_unfold_2358 ;


architecture main_unfold_2359 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR750: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR748: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR750(15) ;
   tap_next(14) <= tap_next_EXMPLR750(14) ;
   tap_next(13) <= tap_next_EXMPLR750(13) ;
   tap_next(12) <= tap_next_EXMPLR750(12) ;
   tap_next(11) <= tap_next_EXMPLR750(11) ;
   tap_next(10) <= tap_next_EXMPLR750(10) ;
   tap_next(9) <= tap_next_EXMPLR750(9) ;
   tap_next(8) <= tap_next_EXMPLR750(8) ;
   tap_next(7) <= tap_next_EXMPLR750(7) ;
   tap_next(6) <= tap_next_EXMPLR750(6) ;
   tap_next(5) <= tap_next_EXMPLR750(5) ;
   tap_next(4) <= tap_next_EXMPLR750(4) ;
   tap_next(3) <= tap_next_EXMPLR750(3) ;
   tap_next(2) <= tap_next_EXMPLR750(2) ;
   tap_next(1) <= tap_next_EXMPLR750(1) ;
   tap_next(0) <= tap_next_EXMPLR750(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR750(15), a(30)=>tap_next_EXMPLR750(15), a(29)=>
      tap_next_EXMPLR750(15), a(28)=>tap_next_EXMPLR750(15), a(27)=>
      tap_next_EXMPLR750(15), a(26)=>tap_next_EXMPLR750(15), a(25)=>
      tap_next_EXMPLR750(15), a(24)=>tap_next_EXMPLR750(15), a(23)=>
      tap_next_EXMPLR750(15), a(22)=>tap_next_EXMPLR750(15), a(21)=>
      tap_next_EXMPLR750(15), a(20)=>tap_next_EXMPLR750(15), a(19)=>
      tap_next_EXMPLR750(15), a(18)=>tap_next_EXMPLR750(15), a(17)=>
      tap_next_EXMPLR750(15), a(16)=>tap_next_EXMPLR750(15), a(15)=>
      tap_next_EXMPLR750(15), a(14)=>tap_next_EXMPLR750(14), a(13)=>
      tap_next_EXMPLR750(13), a(12)=>tap_next_EXMPLR750(12), a(11)=>
      tap_next_EXMPLR750(11), a(10)=>tap_next_EXMPLR750(10), a(9)=>
      tap_next_EXMPLR750(9), a(8)=>tap_next_EXMPLR750(8), a(7)=>
      tap_next_EXMPLR750(7), a(6)=>tap_next_EXMPLR750(6), a(5)=>
      tap_next_EXMPLR750(5), a(4)=>tap_next_EXMPLR750(4), a(3)=>
      tap_next_EXMPLR750(3), a(2)=>tap_next_EXMPLR750(2), a(1)=>
      tap_next_EXMPLR750(1), a(0)=>tap_next_EXMPLR750(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR748, b(8)=>
      coef_8_EXMPLR748, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
      GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>
      DANGLING(1), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), 
      d(26)=>prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), 
      d(22)=>prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)
      =>prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR750(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR750(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR750(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR750(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR750(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR750(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR750(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR750(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR750(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR750(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR750(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR750(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR750(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR750(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR750(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR750(0)) ;
   coef_8_EXMPLR748 <= '1' ;
end main_unfold_2359 ;


architecture main_unfold_2360 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR820: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR818: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR820(15) ;
   tap_next(14) <= tap_next_EXMPLR820(14) ;
   tap_next(13) <= tap_next_EXMPLR820(13) ;
   tap_next(12) <= tap_next_EXMPLR820(12) ;
   tap_next(11) <= tap_next_EXMPLR820(11) ;
   tap_next(10) <= tap_next_EXMPLR820(10) ;
   tap_next(9) <= tap_next_EXMPLR820(9) ;
   tap_next(8) <= tap_next_EXMPLR820(8) ;
   tap_next(7) <= tap_next_EXMPLR820(7) ;
   tap_next(6) <= tap_next_EXMPLR820(6) ;
   tap_next(5) <= tap_next_EXMPLR820(5) ;
   tap_next(4) <= tap_next_EXMPLR820(4) ;
   tap_next(3) <= tap_next_EXMPLR820(3) ;
   tap_next(2) <= tap_next_EXMPLR820(2) ;
   tap_next(1) <= tap_next_EXMPLR820(1) ;
   tap_next(0) <= tap_next_EXMPLR820(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR820(15), a(30)=>tap_next_EXMPLR820(15), a(29)=>
      tap_next_EXMPLR820(15), a(28)=>tap_next_EXMPLR820(15), a(27)=>
      tap_next_EXMPLR820(15), a(26)=>tap_next_EXMPLR820(15), a(25)=>
      tap_next_EXMPLR820(15), a(24)=>tap_next_EXMPLR820(15), a(23)=>
      tap_next_EXMPLR820(15), a(22)=>tap_next_EXMPLR820(15), a(21)=>
      tap_next_EXMPLR820(15), a(20)=>tap_next_EXMPLR820(15), a(19)=>
      tap_next_EXMPLR820(15), a(18)=>tap_next_EXMPLR820(15), a(17)=>
      tap_next_EXMPLR820(15), a(16)=>tap_next_EXMPLR820(15), a(15)=>
      tap_next_EXMPLR820(15), a(14)=>tap_next_EXMPLR820(14), a(13)=>
      tap_next_EXMPLR820(13), a(12)=>tap_next_EXMPLR820(12), a(11)=>
      tap_next_EXMPLR820(11), a(10)=>tap_next_EXMPLR820(10), a(9)=>
      tap_next_EXMPLR820(9), a(8)=>tap_next_EXMPLR820(8), a(7)=>
      tap_next_EXMPLR820(7), a(6)=>tap_next_EXMPLR820(6), a(5)=>
      tap_next_EXMPLR820(5), a(4)=>tap_next_EXMPLR820(4), a(3)=>
      tap_next_EXMPLR820(3), a(2)=>tap_next_EXMPLR820(2), a(1)=>
      tap_next_EXMPLR820(1), a(0)=>tap_next_EXMPLR820(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR818, b(8)=>GND, 
      b(7)=>coef_9_EXMPLR818, b(6)=>coef_9_EXMPLR818, b(5)=>GND, b(4)=>GND, 
      b(3)=>GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)
      =>DANGLING(1), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), 
      d(26)=>prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), 
      d(22)=>prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)
      =>prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR820(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR820(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR820(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR820(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR820(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR820(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR820(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR820(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR820(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR820(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR820(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR820(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR820(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR820(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR820(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR820(0)) ;
   coef_9_EXMPLR818 <= '1' ;
end main_unfold_2360 ;


architecture main_unfold_2361 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR890: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR888: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR890(15) ;
   tap_next(14) <= tap_next_EXMPLR890(14) ;
   tap_next(13) <= tap_next_EXMPLR890(13) ;
   tap_next(12) <= tap_next_EXMPLR890(12) ;
   tap_next(11) <= tap_next_EXMPLR890(11) ;
   tap_next(10) <= tap_next_EXMPLR890(10) ;
   tap_next(9) <= tap_next_EXMPLR890(9) ;
   tap_next(8) <= tap_next_EXMPLR890(8) ;
   tap_next(7) <= tap_next_EXMPLR890(7) ;
   tap_next(6) <= tap_next_EXMPLR890(6) ;
   tap_next(5) <= tap_next_EXMPLR890(5) ;
   tap_next(4) <= tap_next_EXMPLR890(4) ;
   tap_next(3) <= tap_next_EXMPLR890(3) ;
   tap_next(2) <= tap_next_EXMPLR890(2) ;
   tap_next(1) <= tap_next_EXMPLR890(1) ;
   tap_next(0) <= tap_next_EXMPLR890(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR890(15), a(30)=>tap_next_EXMPLR890(15), a(29)=>
      tap_next_EXMPLR890(15), a(28)=>tap_next_EXMPLR890(15), a(27)=>
      tap_next_EXMPLR890(15), a(26)=>tap_next_EXMPLR890(15), a(25)=>
      tap_next_EXMPLR890(15), a(24)=>tap_next_EXMPLR890(15), a(23)=>
      tap_next_EXMPLR890(15), a(22)=>tap_next_EXMPLR890(15), a(21)=>
      tap_next_EXMPLR890(15), a(20)=>tap_next_EXMPLR890(15), a(19)=>
      tap_next_EXMPLR890(15), a(18)=>tap_next_EXMPLR890(15), a(17)=>
      tap_next_EXMPLR890(15), a(16)=>tap_next_EXMPLR890(15), a(15)=>
      tap_next_EXMPLR890(15), a(14)=>tap_next_EXMPLR890(14), a(13)=>
      tap_next_EXMPLR890(13), a(12)=>tap_next_EXMPLR890(12), a(11)=>
      tap_next_EXMPLR890(11), a(10)=>tap_next_EXMPLR890(10), a(9)=>
      tap_next_EXMPLR890(9), a(8)=>tap_next_EXMPLR890(8), a(7)=>
      tap_next_EXMPLR890(7), a(6)=>tap_next_EXMPLR890(6), a(5)=>
      tap_next_EXMPLR890(5), a(4)=>tap_next_EXMPLR890(4), a(3)=>
      tap_next_EXMPLR890(3), a(2)=>tap_next_EXMPLR890(2), a(1)=>
      tap_next_EXMPLR890(1), a(0)=>tap_next_EXMPLR890(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR888, b(8)=>GND, 
      b(7)=>coef_9_EXMPLR888, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
      b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>DANGLING(1
      ), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), d(26)=>
      prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), d(22)=>
      prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)=>
      prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR890(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR890(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR890(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR890(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR890(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR890(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR890(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR890(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR890(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR890(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR890(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR890(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR890(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR890(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR890(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR890(0)) ;
   coef_9_EXMPLR888 <= '1' ;
end main_unfold_2361 ;


architecture main_unfold_2362 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR960: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR958: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR960(15) ;
   tap_next(14) <= tap_next_EXMPLR960(14) ;
   tap_next(13) <= tap_next_EXMPLR960(13) ;
   tap_next(12) <= tap_next_EXMPLR960(12) ;
   tap_next(11) <= tap_next_EXMPLR960(11) ;
   tap_next(10) <= tap_next_EXMPLR960(10) ;
   tap_next(9) <= tap_next_EXMPLR960(9) ;
   tap_next(8) <= tap_next_EXMPLR960(8) ;
   tap_next(7) <= tap_next_EXMPLR960(7) ;
   tap_next(6) <= tap_next_EXMPLR960(6) ;
   tap_next(5) <= tap_next_EXMPLR960(5) ;
   tap_next(4) <= tap_next_EXMPLR960(4) ;
   tap_next(3) <= tap_next_EXMPLR960(3) ;
   tap_next(2) <= tap_next_EXMPLR960(2) ;
   tap_next(1) <= tap_next_EXMPLR960(1) ;
   tap_next(0) <= tap_next_EXMPLR960(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR960(15), a(30)=>tap_next_EXMPLR960(15), a(29)=>
      tap_next_EXMPLR960(15), a(28)=>tap_next_EXMPLR960(15), a(27)=>
      tap_next_EXMPLR960(15), a(26)=>tap_next_EXMPLR960(15), a(25)=>
      tap_next_EXMPLR960(15), a(24)=>tap_next_EXMPLR960(15), a(23)=>
      tap_next_EXMPLR960(15), a(22)=>tap_next_EXMPLR960(15), a(21)=>
      tap_next_EXMPLR960(15), a(20)=>tap_next_EXMPLR960(15), a(19)=>
      tap_next_EXMPLR960(15), a(18)=>tap_next_EXMPLR960(15), a(17)=>
      tap_next_EXMPLR960(15), a(16)=>tap_next_EXMPLR960(15), a(15)=>
      tap_next_EXMPLR960(15), a(14)=>tap_next_EXMPLR960(14), a(13)=>
      tap_next_EXMPLR960(13), a(12)=>tap_next_EXMPLR960(12), a(11)=>
      tap_next_EXMPLR960(11), a(10)=>tap_next_EXMPLR960(10), a(9)=>
      tap_next_EXMPLR960(9), a(8)=>tap_next_EXMPLR960(8), a(7)=>
      tap_next_EXMPLR960(7), a(6)=>tap_next_EXMPLR960(6), a(5)=>
      tap_next_EXMPLR960(5), a(4)=>tap_next_EXMPLR960(4), a(3)=>
      tap_next_EXMPLR960(3), a(2)=>tap_next_EXMPLR960(2), a(1)=>
      tap_next_EXMPLR960(1), a(0)=>tap_next_EXMPLR960(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR958, b(8)=>GND, 
      b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, b(2)=>GND, b(1)
      =>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>DANGLING(1), d(29)=>
      DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), d(26)=>prod(14), 
      d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), d(22)=>prod(10), 
      d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)=>prod(6), d(17)
      =>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>prod(2), d(13)=>
      prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>DANGLING(5), d(9)
      =>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), d(6)=>DANGLING(9), 
      d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>DANGLING(12), d(2)=>
      DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR960(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR960(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR960(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR960(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR960(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR960(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR960(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR960(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR960(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR960(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR960(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR960(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR960(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR960(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR960(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR960(0)) ;
   coef_9_EXMPLR958 <= '1' ;
end main_unfold_2362 ;


architecture main_unfold_2363 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR1030: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_6_EXMPLR1028: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR1030(15) ;
   tap_next(14) <= tap_next_EXMPLR1030(14) ;
   tap_next(13) <= tap_next_EXMPLR1030(13) ;
   tap_next(12) <= tap_next_EXMPLR1030(12) ;
   tap_next(11) <= tap_next_EXMPLR1030(11) ;
   tap_next(10) <= tap_next_EXMPLR1030(10) ;
   tap_next(9) <= tap_next_EXMPLR1030(9) ;
   tap_next(8) <= tap_next_EXMPLR1030(8) ;
   tap_next(7) <= tap_next_EXMPLR1030(7) ;
   tap_next(6) <= tap_next_EXMPLR1030(6) ;
   tap_next(5) <= tap_next_EXMPLR1030(5) ;
   tap_next(4) <= tap_next_EXMPLR1030(4) ;
   tap_next(3) <= tap_next_EXMPLR1030(3) ;
   tap_next(2) <= tap_next_EXMPLR1030(2) ;
   tap_next(1) <= tap_next_EXMPLR1030(1) ;
   tap_next(0) <= tap_next_EXMPLR1030(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR1030(15), a(30)=>tap_next_EXMPLR1030(15), a(29)=>
      tap_next_EXMPLR1030(15), a(28)=>tap_next_EXMPLR1030(15), a(27)=>
      tap_next_EXMPLR1030(15), a(26)=>tap_next_EXMPLR1030(15), a(25)=>
      tap_next_EXMPLR1030(15), a(24)=>tap_next_EXMPLR1030(15), a(23)=>
      tap_next_EXMPLR1030(15), a(22)=>tap_next_EXMPLR1030(15), a(21)=>
      tap_next_EXMPLR1030(15), a(20)=>tap_next_EXMPLR1030(15), a(19)=>
      tap_next_EXMPLR1030(15), a(18)=>tap_next_EXMPLR1030(15), a(17)=>
      tap_next_EXMPLR1030(15), a(16)=>tap_next_EXMPLR1030(15), a(15)=>
      tap_next_EXMPLR1030(15), a(14)=>tap_next_EXMPLR1030(14), a(13)=>
      tap_next_EXMPLR1030(13), a(12)=>tap_next_EXMPLR1030(12), a(11)=>
      tap_next_EXMPLR1030(11), a(10)=>tap_next_EXMPLR1030(10), a(9)=>
      tap_next_EXMPLR1030(9), a(8)=>tap_next_EXMPLR1030(8), a(7)=>
      tap_next_EXMPLR1030(7), a(6)=>tap_next_EXMPLR1030(6), a(5)=>
      tap_next_EXMPLR1030(5), a(4)=>tap_next_EXMPLR1030(4), a(3)=>
      tap_next_EXMPLR1030(3), a(2)=>tap_next_EXMPLR1030(2), a(1)=>
      tap_next_EXMPLR1030(1), a(0)=>tap_next_EXMPLR1030(0), b(31)=>GND, 
      b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>coef_6_EXMPLR1028, 
      b(7)=>coef_6_EXMPLR1028, b(6)=>coef_6_EXMPLR1028, b(5)=>GND, b(4)=>GND, 
      b(3)=>GND, b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)
      =>DANGLING(1), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), 
      d(26)=>prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), 
      d(22)=>prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)
      =>prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR1030(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR1030(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR1030(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR1030(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR1030(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR1030(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR1030(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR1030(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR1030(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR1030(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR1030(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR1030(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR1030(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR1030(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR1030(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR1030(0)) ;
   coef_6_EXMPLR1028 <= '1' ;
end main_unfold_2363 ;


architecture main_unfold_2343_0 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR1100: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_7_EXMPLR1098: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR1100(15) ;
   tap_next(14) <= tap_next_EXMPLR1100(14) ;
   tap_next(13) <= tap_next_EXMPLR1100(13) ;
   tap_next(12) <= tap_next_EXMPLR1100(12) ;
   tap_next(11) <= tap_next_EXMPLR1100(11) ;
   tap_next(10) <= tap_next_EXMPLR1100(10) ;
   tap_next(9) <= tap_next_EXMPLR1100(9) ;
   tap_next(8) <= tap_next_EXMPLR1100(8) ;
   tap_next(7) <= tap_next_EXMPLR1100(7) ;
   tap_next(6) <= tap_next_EXMPLR1100(6) ;
   tap_next(5) <= tap_next_EXMPLR1100(5) ;
   tap_next(4) <= tap_next_EXMPLR1100(4) ;
   tap_next(3) <= tap_next_EXMPLR1100(3) ;
   tap_next(2) <= tap_next_EXMPLR1100(2) ;
   tap_next(1) <= tap_next_EXMPLR1100(1) ;
   tap_next(0) <= tap_next_EXMPLR1100(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR1100(15), a(30)=>tap_next_EXMPLR1100(15), a(29)=>
      tap_next_EXMPLR1100(15), a(28)=>tap_next_EXMPLR1100(15), a(27)=>
      tap_next_EXMPLR1100(15), a(26)=>tap_next_EXMPLR1100(15), a(25)=>
      tap_next_EXMPLR1100(15), a(24)=>tap_next_EXMPLR1100(15), a(23)=>
      tap_next_EXMPLR1100(15), a(22)=>tap_next_EXMPLR1100(15), a(21)=>
      tap_next_EXMPLR1100(15), a(20)=>tap_next_EXMPLR1100(15), a(19)=>
      tap_next_EXMPLR1100(15), a(18)=>tap_next_EXMPLR1100(15), a(17)=>
      tap_next_EXMPLR1100(15), a(16)=>tap_next_EXMPLR1100(15), a(15)=>
      tap_next_EXMPLR1100(15), a(14)=>tap_next_EXMPLR1100(14), a(13)=>
      tap_next_EXMPLR1100(13), a(12)=>tap_next_EXMPLR1100(12), a(11)=>
      tap_next_EXMPLR1100(11), a(10)=>tap_next_EXMPLR1100(10), a(9)=>
      tap_next_EXMPLR1100(9), a(8)=>tap_next_EXMPLR1100(8), a(7)=>
      tap_next_EXMPLR1100(7), a(6)=>tap_next_EXMPLR1100(6), a(5)=>
      tap_next_EXMPLR1100(5), a(4)=>tap_next_EXMPLR1100(4), a(3)=>
      tap_next_EXMPLR1100(3), a(2)=>tap_next_EXMPLR1100(2), a(1)=>
      tap_next_EXMPLR1100(1), a(0)=>tap_next_EXMPLR1100(0), b(31)=>GND, 
      b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>coef_7_EXMPLR1098, 
      b(7)=>coef_7_EXMPLR1098, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
      b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>DANGLING(1
      ), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), d(26)=>
      prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), d(22)=>
      prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)=>
      prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR1100(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR1100(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR1100(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR1100(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR1100(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR1100(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR1100(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR1100(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR1100(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR1100(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR1100(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR1100(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR1100(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR1100(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR1100(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR1100(0)) ;
   coef_7_EXMPLR1098 <= '1' ;
end main_unfold_2343_0 ;


architecture main_unfold_2365 of shiftr is 
   component mult_32s_32s_32s
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16u_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   procedure DFFPC (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           q <= data and data ;    -- takes care of q<='X' if data='Z'
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPC ;
   signal tap_next_EXMPLR1170: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR1168: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= GND ;
   tap_next(14) <= GND ;
   tap_next(13) <= GND ;
   tap_next(12) <= GND ;
   tap_next(11) <= GND ;
   tap_next(10) <= GND ;
   tap_next(9) <= GND ;
   tap_next(8) <= GND ;
   tap_next(7) <= GND ;
   tap_next(6) <= GND ;
   tap_next(5) <= GND ;
   tap_next(4) <= GND ;
   tap_next(3) <= GND ;
   tap_next(2) <= GND ;
   tap_next(1) <= GND ;
   tap_next(0) <= GND ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR1170(15), a(30)=>tap_next_EXMPLR1170(15), a(29)=>
      tap_next_EXMPLR1170(15), a(28)=>tap_next_EXMPLR1170(15), a(27)=>
      tap_next_EXMPLR1170(15), a(26)=>tap_next_EXMPLR1170(15), a(25)=>
      tap_next_EXMPLR1170(15), a(24)=>tap_next_EXMPLR1170(15), a(23)=>
      tap_next_EXMPLR1170(15), a(22)=>tap_next_EXMPLR1170(15), a(21)=>
      tap_next_EXMPLR1170(15), a(20)=>tap_next_EXMPLR1170(15), a(19)=>
      tap_next_EXMPLR1170(15), a(18)=>tap_next_EXMPLR1170(15), a(17)=>
      tap_next_EXMPLR1170(15), a(16)=>tap_next_EXMPLR1170(15), a(15)=>
      tap_next_EXMPLR1170(15), a(14)=>tap_next_EXMPLR1170(14), a(13)=>
      tap_next_EXMPLR1170(13), a(12)=>tap_next_EXMPLR1170(12), a(11)=>
      tap_next_EXMPLR1170(11), a(10)=>tap_next_EXMPLR1170(10), a(9)=>
      tap_next_EXMPLR1170(9), a(8)=>tap_next_EXMPLR1170(8), a(7)=>
      tap_next_EXMPLR1170(7), a(6)=>tap_next_EXMPLR1170(6), a(5)=>
      tap_next_EXMPLR1170(5), a(4)=>tap_next_EXMPLR1170(4), a(3)=>
      tap_next_EXMPLR1170(3), a(2)=>tap_next_EXMPLR1170(2), a(1)=>
      tap_next_EXMPLR1170(1), a(0)=>tap_next_EXMPLR1170(0), b(31)=>GND, 
      b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR1168, b(8)=>GND, 
      b(7)=>GND, b(6)=>coef_9_EXMPLR1168, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
      b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>DANGLING(1
      ), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>prod(15), d(26)=>
      prod(14), d(25)=>prod(13), d(24)=>prod(12), d(23)=>prod(11), d(22)=>
      prod(10), d(21)=>prod(9), d(20)=>prod(8), d(19)=>prod(7), d(18)=>
      prod(6), d(17)=>prod(5), d(16)=>prod(4), d(15)=>prod(3), d(14)=>
      prod(2), d(13)=>prod(1), d(12)=>prod(0), d(11)=>DANGLING(4), d(10)=>
      DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>DANGLING(8), 
      d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), d(3)=>
      DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>DANGLING(
      15));
   next_sum_add16_0 : add_16u_16u_16u_0_0 port map ( cin=>GND, a(15)=>
      prod(15), a(14)=>prod(14), a(13)=>prod(13), a(12)=>prod(12), a(11)=>
      prod(11), a(10)=>prod(10), a(9)=>prod(9), a(8)=>prod(8), a(7)=>prod(7), 
      a(6)=>prod(6), a(5)=>prod(5), a(4)=>prod(4), a(3)=>prod(3), a(2)=>
      prod(2), a(1)=>prod(1), a(0)=>prod(0), b(15)=>prev_sum(15), b(14)=>
      prev_sum(14), b(13)=>prev_sum(13), b(12)=>prev_sum(12), b(11)=>
      prev_sum(11), b(10)=>prev_sum(10), b(9)=>prev_sum(9), b(8)=>
      prev_sum(8), b(7)=>prev_sum(7), b(6)=>prev_sum(6), b(5)=>prev_sum(5), 
      b(4)=>prev_sum(4), b(3)=>prev_sum(3), b(2)=>prev_sum(2), b(1)=>
      prev_sum(1), b(0)=>prev_sum(0), d(15)=>next_sum(15), d(14)=>
      next_sum(14), d(13)=>next_sum(13), d(12)=>next_sum(12), d(11)=>
      next_sum(11), d(10)=>next_sum(10), d(9)=>next_sum(9), d(8)=>
      next_sum(8), d(7)=>next_sum(7), d(6)=>next_sum(6), d(5)=>next_sum(5), 
      d(4)=>next_sum(4), d(3)=>next_sum(3), d(2)=>next_sum(2), d(1)=>
      next_sum(1), d(0)=>next_sum(0), cout=>DANGLING(16));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR1170(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR1170(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR1170(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR1170(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR1170(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR1170(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR1170(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR1170(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR1170(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR1170(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR1170(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR1170(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR1170(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR1170(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR1170(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR1170(0)) ;
   coef_9_EXMPLR1168 <= '1' ;
end main_unfold_2365 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity fir is 
   port (
      clk : IN std_logic ;
      i_data : IN std_logic_vector (15 DOWNTO 0) ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end fir ;

architecture low_pass of fir is 
   component shiftr
      port (
         clk : IN std_logic ;
         tap_prev : IN std_logic_vector (15 DOWNTO 0) ;
         tap_next : OUT std_logic_vector (15 DOWNTO 0) ;
         coef : IN std_logic_vector (15 DOWNTO 0) ;
         prev_sum : IN std_logic_vector (15 DOWNTO 0) ;
         next_sum : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   for tap_array_1_filter_block : shiftr use entity work.shiftr(
   main_unfold_2342);
   for tap_array_2_filter_block : shiftr use entity work.shiftr(
   main_unfold_16);
   for tap_array_3_filter_block : shiftr use entity work.shiftr(
   main_unfold_2344);
   for tap_array_4_filter_block : shiftr use entity work.shiftr(
   main_unfold_2345);
   for tap_array_5_filter_block : shiftr use entity work.shiftr(
   main_unfold_2346);
   for tap_array_6_filter_block : shiftr use entity work.shiftr(
   main_unfold_2347);
   for tap_array_7_filter_block : shiftr use entity work.shiftr(
   main_unfold_2348);
   for tap_array_8_filter_block : shiftr use entity work.shiftr(
   main_unfold_2349);
   for tap_array_9_filter_block : shiftr use entity work.shiftr(
   main_unfold_2350);
   for tap_array_10_filter_block : shiftr use entity work.shiftr(
   main_unfold_2358);
   for tap_array_11_filter_block : shiftr use entity work.shiftr(
   main_unfold_2359);
   for tap_array_12_filter_block : shiftr use entity work.shiftr(
   main_unfold_2360);
   for tap_array_13_filter_block : shiftr use entity work.shiftr(
   main_unfold_2361);
   for tap_array_14_filter_block : shiftr use entity work.shiftr(
   main_unfold_2362);
   for tap_array_15_filter_block : shiftr use entity work.shiftr(
   main_unfold_2363);
   for tap_array_16_filter_block : shiftr use entity work.shiftr(
   main_unfold_2343_0);
   for tap_array_17_filter_block : shiftr use entity work.shiftr(
   main_unfold_2365);
   signal GND, PWR: std_logic ;
   
   signal taps_0: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_1: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_2: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_3: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_4: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_5: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_6: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_7: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_8: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_9: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_10: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_11: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_12: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_13: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_14: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_15: std_logic_vector (15 DOWNTO 0) ;
   
   signal taps_16: std_logic_vector (15 DOWNTO 0) ;
   
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
   
   signal sums_17: std_logic_vector (15 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   GND <= '0' ;
   PWR <= '1' ;
   tap_array_1_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_0(15), tap_prev(14)=>taps_0(14), tap_prev(13)=>taps_0(13), 
      tap_prev(12)=>taps_0(12), tap_prev(11)=>taps_0(11), tap_prev(10)=>
      taps_0(10), tap_prev(9)=>taps_0(9), tap_prev(8)=>taps_0(8), 
      tap_prev(7)=>taps_0(7), tap_prev(6)=>taps_0(6), tap_prev(5)=>taps_0(5), 
      tap_prev(4)=>taps_0(4), tap_prev(3)=>taps_0(3), tap_prev(2)=>taps_0(2), 
      tap_prev(1)=>taps_0(1), tap_prev(0)=>taps_0(0), tap_next(15)=>
      taps_1(15), tap_next(14)=>taps_1(14), tap_next(13)=>taps_1(13), 
      tap_next(12)=>taps_1(12), tap_next(11)=>taps_1(11), tap_next(10)=>
      taps_1(10), tap_next(9)=>taps_1(9), tap_next(8)=>taps_1(8), 
      tap_next(7)=>taps_1(7), tap_next(6)=>taps_1(6), tap_next(5)=>taps_1(5), 
      tap_next(4)=>taps_1(4), tap_next(3)=>taps_1(3), tap_next(2)=>taps_1(2), 
      tap_next(1)=>taps_1(1), tap_next(0)=>taps_1(0), coef(15)=>GND, 
      coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>
      GND, coef(9)=>PWR, coef(8)=>GND, coef(7)=>GND, coef(6)=>PWR, coef(5)=>
      GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>
      GND, prev_sum(15)=>GND, prev_sum(14)=>GND, prev_sum(13)=>GND, 
      prev_sum(12)=>GND, prev_sum(11)=>GND, prev_sum(10)=>GND, prev_sum(9)=>
      GND, prev_sum(8)=>GND, prev_sum(7)=>GND, prev_sum(6)=>GND, prev_sum(5)
      =>GND, prev_sum(4)=>GND, prev_sum(3)=>GND, prev_sum(2)=>GND, 
      prev_sum(1)=>GND, prev_sum(0)=>GND, next_sum(15)=>sums_1(15), 
      next_sum(14)=>sums_1(14), next_sum(13)=>sums_1(13), next_sum(12)=>
      sums_1(12), next_sum(11)=>sums_1(11), next_sum(10)=>sums_1(10), 
      next_sum(9)=>sums_1(9), next_sum(8)=>sums_1(8), next_sum(7)=>sums_1(7), 
      next_sum(6)=>sums_1(6), next_sum(5)=>sums_1(5), next_sum(4)=>sums_1(4), 
      next_sum(3)=>sums_1(3), next_sum(2)=>sums_1(2), next_sum(1)=>sums_1(1), 
      next_sum(0)=>sums_1(0));
   tap_array_2_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_1(15), tap_prev(14)=>taps_1(14), tap_prev(13)=>taps_1(13), 
      tap_prev(12)=>taps_1(12), tap_prev(11)=>taps_1(11), tap_prev(10)=>
      taps_1(10), tap_prev(9)=>taps_1(9), tap_prev(8)=>taps_1(8), 
      tap_prev(7)=>taps_1(7), tap_prev(6)=>taps_1(6), tap_prev(5)=>taps_1(5), 
      tap_prev(4)=>taps_1(4), tap_prev(3)=>taps_1(3), tap_prev(2)=>taps_1(2), 
      tap_prev(1)=>taps_1(1), tap_prev(0)=>taps_1(0), tap_next(15)=>
      taps_2(15), tap_next(14)=>taps_2(14), tap_next(13)=>taps_2(13), 
      tap_next(12)=>taps_2(12), tap_next(11)=>taps_2(11), tap_next(10)=>
      taps_2(10), tap_next(9)=>taps_2(9), tap_next(8)=>taps_2(8), 
      tap_next(7)=>taps_2(7), tap_next(6)=>taps_2(6), tap_next(5)=>taps_2(5), 
      tap_next(4)=>taps_2(4), tap_next(3)=>taps_2(3), tap_next(2)=>taps_2(2), 
      tap_next(1)=>taps_2(1), tap_next(0)=>taps_2(0), coef(15)=>GND, 
      coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>
      GND, coef(9)=>GND, coef(8)=>PWR, coef(7)=>PWR, coef(6)=>GND, coef(5)=>
      GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>
      GND, prev_sum(15)=>sums_1(15), prev_sum(14)=>sums_1(14), prev_sum(13)
      =>sums_1(13), prev_sum(12)=>sums_1(12), prev_sum(11)=>sums_1(11), 
      prev_sum(10)=>sums_1(10), prev_sum(9)=>sums_1(9), prev_sum(8)=>
      sums_1(8), prev_sum(7)=>sums_1(7), prev_sum(6)=>sums_1(6), prev_sum(5)
      =>sums_1(5), prev_sum(4)=>sums_1(4), prev_sum(3)=>sums_1(3), 
      prev_sum(2)=>sums_1(2), prev_sum(1)=>sums_1(1), prev_sum(0)=>sums_1(0), 
      next_sum(15)=>sums_2(15), next_sum(14)=>sums_2(14), next_sum(13)=>
      sums_2(13), next_sum(12)=>sums_2(12), next_sum(11)=>sums_2(11), 
      next_sum(10)=>sums_2(10), next_sum(9)=>sums_2(9), next_sum(8)=>
      sums_2(8), next_sum(7)=>sums_2(7), next_sum(6)=>sums_2(6), next_sum(5)
      =>sums_2(5), next_sum(4)=>sums_2(4), next_sum(3)=>sums_2(3), 
      next_sum(2)=>sums_2(2), next_sum(1)=>sums_2(1), next_sum(0)=>sums_2(0)
   );
   tap_array_3_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_2(15), tap_prev(14)=>taps_2(14), tap_prev(13)=>taps_2(13), 
      tap_prev(12)=>taps_2(12), tap_prev(11)=>taps_2(11), tap_prev(10)=>
      taps_2(10), tap_prev(9)=>taps_2(9), tap_prev(8)=>taps_2(8), 
      tap_prev(7)=>taps_2(7), tap_prev(6)=>taps_2(6), tap_prev(5)=>taps_2(5), 
      tap_prev(4)=>taps_2(4), tap_prev(3)=>taps_2(3), tap_prev(2)=>taps_2(2), 
      tap_prev(1)=>taps_2(1), tap_prev(0)=>taps_2(0), tap_next(15)=>
      taps_3(15), tap_next(14)=>taps_3(14), tap_next(13)=>taps_3(13), 
      tap_next(12)=>taps_3(12), tap_next(11)=>taps_3(11), tap_next(10)=>
      taps_3(10), tap_next(9)=>taps_3(9), tap_next(8)=>taps_3(8), 
      tap_next(7)=>taps_3(7), tap_next(6)=>taps_3(6), tap_next(5)=>taps_3(5), 
      tap_next(4)=>taps_3(4), tap_next(3)=>taps_3(3), tap_next(2)=>taps_3(2), 
      tap_next(1)=>taps_3(1), tap_next(0)=>taps_3(0), coef(15)=>GND, 
      coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>
      GND, coef(9)=>GND, coef(8)=>PWR, coef(7)=>PWR, coef(6)=>PWR, coef(5)=>
      GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>
      GND, prev_sum(15)=>sums_2(15), prev_sum(14)=>sums_2(14), prev_sum(13)
      =>sums_2(13), prev_sum(12)=>sums_2(12), prev_sum(11)=>sums_2(11), 
      prev_sum(10)=>sums_2(10), prev_sum(9)=>sums_2(9), prev_sum(8)=>
      sums_2(8), prev_sum(7)=>sums_2(7), prev_sum(6)=>sums_2(6), prev_sum(5)
      =>sums_2(5), prev_sum(4)=>sums_2(4), prev_sum(3)=>sums_2(3), 
      prev_sum(2)=>sums_2(2), prev_sum(1)=>sums_2(1), prev_sum(0)=>sums_2(0), 
      next_sum(15)=>sums_3(15), next_sum(14)=>sums_3(14), next_sum(13)=>
      sums_3(13), next_sum(12)=>sums_3(12), next_sum(11)=>sums_3(11), 
      next_sum(10)=>sums_3(10), next_sum(9)=>sums_3(9), next_sum(8)=>
      sums_3(8), next_sum(7)=>sums_3(7), next_sum(6)=>sums_3(6), next_sum(5)
      =>sums_3(5), next_sum(4)=>sums_3(4), next_sum(3)=>sums_3(3), 
      next_sum(2)=>sums_3(2), next_sum(1)=>sums_3(1), next_sum(0)=>sums_3(0)
   );
   tap_array_4_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_3(15), tap_prev(14)=>taps_3(14), tap_prev(13)=>taps_3(13), 
      tap_prev(12)=>taps_3(12), tap_prev(11)=>taps_3(11), tap_prev(10)=>
      taps_3(10), tap_prev(9)=>taps_3(9), tap_prev(8)=>taps_3(8), 
      tap_prev(7)=>taps_3(7), tap_prev(6)=>taps_3(6), tap_prev(5)=>taps_3(5), 
      tap_prev(4)=>taps_3(4), tap_prev(3)=>taps_3(3), tap_prev(2)=>taps_3(2), 
      tap_prev(1)=>taps_3(1), tap_prev(0)=>taps_3(0), tap_next(15)=>
      taps_4(15), tap_next(14)=>taps_4(14), tap_next(13)=>taps_4(13), 
      tap_next(12)=>taps_4(12), tap_next(11)=>taps_4(11), tap_next(10)=>
      taps_4(10), tap_next(9)=>taps_4(9), tap_next(8)=>taps_4(8), 
      tap_next(7)=>taps_4(7), tap_next(6)=>taps_4(6), tap_next(5)=>taps_4(5), 
      tap_next(4)=>taps_4(4), tap_next(3)=>taps_4(3), tap_next(2)=>taps_4(2), 
      tap_next(1)=>taps_4(1), tap_next(0)=>taps_4(0), coef(15)=>GND, 
      coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>
      GND, coef(9)=>PWR, coef(8)=>GND, coef(7)=>GND, coef(6)=>GND, coef(5)=>
      GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>
      GND, prev_sum(15)=>sums_3(15), prev_sum(14)=>sums_3(14), prev_sum(13)
      =>sums_3(13), prev_sum(12)=>sums_3(12), prev_sum(11)=>sums_3(11), 
      prev_sum(10)=>sums_3(10), prev_sum(9)=>sums_3(9), prev_sum(8)=>
      sums_3(8), prev_sum(7)=>sums_3(7), prev_sum(6)=>sums_3(6), prev_sum(5)
      =>sums_3(5), prev_sum(4)=>sums_3(4), prev_sum(3)=>sums_3(3), 
      prev_sum(2)=>sums_3(2), prev_sum(1)=>sums_3(1), prev_sum(0)=>sums_3(0), 
      next_sum(15)=>sums_4(15), next_sum(14)=>sums_4(14), next_sum(13)=>
      sums_4(13), next_sum(12)=>sums_4(12), next_sum(11)=>sums_4(11), 
      next_sum(10)=>sums_4(10), next_sum(9)=>sums_4(9), next_sum(8)=>
      sums_4(8), next_sum(7)=>sums_4(7), next_sum(6)=>sums_4(6), next_sum(5)
      =>sums_4(5), next_sum(4)=>sums_4(4), next_sum(3)=>sums_4(3), 
      next_sum(2)=>sums_4(2), next_sum(1)=>sums_4(1), next_sum(0)=>sums_4(0)
   );
   tap_array_5_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_4(15), tap_prev(14)=>taps_4(14), tap_prev(13)=>taps_4(13), 
      tap_prev(12)=>taps_4(12), tap_prev(11)=>taps_4(11), tap_prev(10)=>
      taps_4(10), tap_prev(9)=>taps_4(9), tap_prev(8)=>taps_4(8), 
      tap_prev(7)=>taps_4(7), tap_prev(6)=>taps_4(6), tap_prev(5)=>taps_4(5), 
      tap_prev(4)=>taps_4(4), tap_prev(3)=>taps_4(3), tap_prev(2)=>taps_4(2), 
      tap_prev(1)=>taps_4(1), tap_prev(0)=>taps_4(0), tap_next(15)=>
      taps_5(15), tap_next(14)=>taps_5(14), tap_next(13)=>taps_5(13), 
      tap_next(12)=>taps_5(12), tap_next(11)=>taps_5(11), tap_next(10)=>
      taps_5(10), tap_next(9)=>taps_5(9), tap_next(8)=>taps_5(8), 
      tap_next(7)=>taps_5(7), tap_next(6)=>taps_5(6), tap_next(5)=>taps_5(5), 
      tap_next(4)=>taps_5(4), tap_next(3)=>taps_5(3), tap_next(2)=>taps_5(2), 
      tap_next(1)=>taps_5(1), tap_next(0)=>taps_5(0), coef(15)=>GND, 
      coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>
      GND, coef(9)=>PWR, coef(8)=>GND, coef(7)=>PWR, coef(6)=>GND, coef(5)=>
      GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>
      GND, prev_sum(15)=>sums_4(15), prev_sum(14)=>sums_4(14), prev_sum(13)
      =>sums_4(13), prev_sum(12)=>sums_4(12), prev_sum(11)=>sums_4(11), 
      prev_sum(10)=>sums_4(10), prev_sum(9)=>sums_4(9), prev_sum(8)=>
      sums_4(8), prev_sum(7)=>sums_4(7), prev_sum(6)=>sums_4(6), prev_sum(5)
      =>sums_4(5), prev_sum(4)=>sums_4(4), prev_sum(3)=>sums_4(3), 
      prev_sum(2)=>sums_4(2), prev_sum(1)=>sums_4(1), prev_sum(0)=>sums_4(0), 
      next_sum(15)=>sums_5(15), next_sum(14)=>sums_5(14), next_sum(13)=>
      sums_5(13), next_sum(12)=>sums_5(12), next_sum(11)=>sums_5(11), 
      next_sum(10)=>sums_5(10), next_sum(9)=>sums_5(9), next_sum(8)=>
      sums_5(8), next_sum(7)=>sums_5(7), next_sum(6)=>sums_5(6), next_sum(5)
      =>sums_5(5), next_sum(4)=>sums_5(4), next_sum(3)=>sums_5(3), 
      next_sum(2)=>sums_5(2), next_sum(1)=>sums_5(1), next_sum(0)=>sums_5(0)
   );
   tap_array_6_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_5(15), tap_prev(14)=>taps_5(14), tap_prev(13)=>taps_5(13), 
      tap_prev(12)=>taps_5(12), tap_prev(11)=>taps_5(11), tap_prev(10)=>
      taps_5(10), tap_prev(9)=>taps_5(9), tap_prev(8)=>taps_5(8), 
      tap_prev(7)=>taps_5(7), tap_prev(6)=>taps_5(6), tap_prev(5)=>taps_5(5), 
      tap_prev(4)=>taps_5(4), tap_prev(3)=>taps_5(3), tap_prev(2)=>taps_5(2), 
      tap_prev(1)=>taps_5(1), tap_prev(0)=>taps_5(0), tap_next(15)=>
      taps_6(15), tap_next(14)=>taps_6(14), tap_next(13)=>taps_6(13), 
      tap_next(12)=>taps_6(12), tap_next(11)=>taps_6(11), tap_next(10)=>
      taps_6(10), tap_next(9)=>taps_6(9), tap_next(8)=>taps_6(8), 
      tap_next(7)=>taps_6(7), tap_next(6)=>taps_6(6), tap_next(5)=>taps_6(5), 
      tap_next(4)=>taps_6(4), tap_next(3)=>taps_6(3), tap_next(2)=>taps_6(2), 
      tap_next(1)=>taps_6(1), tap_next(0)=>taps_6(0), coef(15)=>GND, 
      coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>
      GND, coef(9)=>PWR, coef(8)=>GND, coef(7)=>PWR, coef(6)=>PWR, coef(5)=>
      GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>
      GND, prev_sum(15)=>sums_5(15), prev_sum(14)=>sums_5(14), prev_sum(13)
      =>sums_5(13), prev_sum(12)=>sums_5(12), prev_sum(11)=>sums_5(11), 
      prev_sum(10)=>sums_5(10), prev_sum(9)=>sums_5(9), prev_sum(8)=>
      sums_5(8), prev_sum(7)=>sums_5(7), prev_sum(6)=>sums_5(6), prev_sum(5)
      =>sums_5(5), prev_sum(4)=>sums_5(4), prev_sum(3)=>sums_5(3), 
      prev_sum(2)=>sums_5(2), prev_sum(1)=>sums_5(1), prev_sum(0)=>sums_5(0), 
      next_sum(15)=>sums_6(15), next_sum(14)=>sums_6(14), next_sum(13)=>
      sums_6(13), next_sum(12)=>sums_6(12), next_sum(11)=>sums_6(11), 
      next_sum(10)=>sums_6(10), next_sum(9)=>sums_6(9), next_sum(8)=>
      sums_6(8), next_sum(7)=>sums_6(7), next_sum(6)=>sums_6(6), next_sum(5)
      =>sums_6(5), next_sum(4)=>sums_6(4), next_sum(3)=>sums_6(3), 
      next_sum(2)=>sums_6(2), next_sum(1)=>sums_6(1), next_sum(0)=>sums_6(0)
   );
   tap_array_7_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_6(15), tap_prev(14)=>taps_6(14), tap_prev(13)=>taps_6(13), 
      tap_prev(12)=>taps_6(12), tap_prev(11)=>taps_6(11), tap_prev(10)=>
      taps_6(10), tap_prev(9)=>taps_6(9), tap_prev(8)=>taps_6(8), 
      tap_prev(7)=>taps_6(7), tap_prev(6)=>taps_6(6), tap_prev(5)=>taps_6(5), 
      tap_prev(4)=>taps_6(4), tap_prev(3)=>taps_6(3), tap_prev(2)=>taps_6(2), 
      tap_prev(1)=>taps_6(1), tap_prev(0)=>taps_6(0), tap_next(15)=>
      taps_7(15), tap_next(14)=>taps_7(14), tap_next(13)=>taps_7(13), 
      tap_next(12)=>taps_7(12), tap_next(11)=>taps_7(11), tap_next(10)=>
      taps_7(10), tap_next(9)=>taps_7(9), tap_next(8)=>taps_7(8), 
      tap_next(7)=>taps_7(7), tap_next(6)=>taps_7(6), tap_next(5)=>taps_7(5), 
      tap_next(4)=>taps_7(4), tap_next(3)=>taps_7(3), tap_next(2)=>taps_7(2), 
      tap_next(1)=>taps_7(1), tap_next(0)=>taps_7(0), coef(15)=>GND, 
      coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>
      GND, coef(9)=>PWR, coef(8)=>PWR, coef(7)=>GND, coef(6)=>GND, coef(5)=>
      GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>
      GND, prev_sum(15)=>sums_6(15), prev_sum(14)=>sums_6(14), prev_sum(13)
      =>sums_6(13), prev_sum(12)=>sums_6(12), prev_sum(11)=>sums_6(11), 
      prev_sum(10)=>sums_6(10), prev_sum(9)=>sums_6(9), prev_sum(8)=>
      sums_6(8), prev_sum(7)=>sums_6(7), prev_sum(6)=>sums_6(6), prev_sum(5)
      =>sums_6(5), prev_sum(4)=>sums_6(4), prev_sum(3)=>sums_6(3), 
      prev_sum(2)=>sums_6(2), prev_sum(1)=>sums_6(1), prev_sum(0)=>sums_6(0), 
      next_sum(15)=>sums_7(15), next_sum(14)=>sums_7(14), next_sum(13)=>
      sums_7(13), next_sum(12)=>sums_7(12), next_sum(11)=>sums_7(11), 
      next_sum(10)=>sums_7(10), next_sum(9)=>sums_7(9), next_sum(8)=>
      sums_7(8), next_sum(7)=>sums_7(7), next_sum(6)=>sums_7(6), next_sum(5)
      =>sums_7(5), next_sum(4)=>sums_7(4), next_sum(3)=>sums_7(3), 
      next_sum(2)=>sums_7(2), next_sum(1)=>sums_7(1), next_sum(0)=>sums_7(0)
   );
   tap_array_8_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_7(15), tap_prev(14)=>taps_7(14), tap_prev(13)=>taps_7(13), 
      tap_prev(12)=>taps_7(12), tap_prev(11)=>taps_7(11), tap_prev(10)=>
      taps_7(10), tap_prev(9)=>taps_7(9), tap_prev(8)=>taps_7(8), 
      tap_prev(7)=>taps_7(7), tap_prev(6)=>taps_7(6), tap_prev(5)=>taps_7(5), 
      tap_prev(4)=>taps_7(4), tap_prev(3)=>taps_7(3), tap_prev(2)=>taps_7(2), 
      tap_prev(1)=>taps_7(1), tap_prev(0)=>taps_7(0), tap_next(15)=>
      taps_8(15), tap_next(14)=>taps_8(14), tap_next(13)=>taps_8(13), 
      tap_next(12)=>taps_8(12), tap_next(11)=>taps_8(11), tap_next(10)=>
      taps_8(10), tap_next(9)=>taps_8(9), tap_next(8)=>taps_8(8), 
      tap_next(7)=>taps_8(7), tap_next(6)=>taps_8(6), tap_next(5)=>taps_8(5), 
      tap_next(4)=>taps_8(4), tap_next(3)=>taps_8(3), tap_next(2)=>taps_8(2), 
      tap_next(1)=>taps_8(1), tap_next(0)=>taps_8(0), coef(15)=>GND, 
      coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>
      GND, coef(9)=>PWR, coef(8)=>PWR, coef(7)=>GND, coef(6)=>GND, coef(5)=>
      GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>
      GND, prev_sum(15)=>sums_7(15), prev_sum(14)=>sums_7(14), prev_sum(13)
      =>sums_7(13), prev_sum(12)=>sums_7(12), prev_sum(11)=>sums_7(11), 
      prev_sum(10)=>sums_7(10), prev_sum(9)=>sums_7(9), prev_sum(8)=>
      sums_7(8), prev_sum(7)=>sums_7(7), prev_sum(6)=>sums_7(6), prev_sum(5)
      =>sums_7(5), prev_sum(4)=>sums_7(4), prev_sum(3)=>sums_7(3), 
      prev_sum(2)=>sums_7(2), prev_sum(1)=>sums_7(1), prev_sum(0)=>sums_7(0), 
      next_sum(15)=>sums_8(15), next_sum(14)=>sums_8(14), next_sum(13)=>
      sums_8(13), next_sum(12)=>sums_8(12), next_sum(11)=>sums_8(11), 
      next_sum(10)=>sums_8(10), next_sum(9)=>sums_8(9), next_sum(8)=>
      sums_8(8), next_sum(7)=>sums_8(7), next_sum(6)=>sums_8(6), next_sum(5)
      =>sums_8(5), next_sum(4)=>sums_8(4), next_sum(3)=>sums_8(3), 
      next_sum(2)=>sums_8(2), next_sum(1)=>sums_8(1), next_sum(0)=>sums_8(0)
   );
   tap_array_9_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_8(15), tap_prev(14)=>taps_8(14), tap_prev(13)=>taps_8(13), 
      tap_prev(12)=>taps_8(12), tap_prev(11)=>taps_8(11), tap_prev(10)=>
      taps_8(10), tap_prev(9)=>taps_8(9), tap_prev(8)=>taps_8(8), 
      tap_prev(7)=>taps_8(7), tap_prev(6)=>taps_8(6), tap_prev(5)=>taps_8(5), 
      tap_prev(4)=>taps_8(4), tap_prev(3)=>taps_8(3), tap_prev(2)=>taps_8(2), 
      tap_prev(1)=>taps_8(1), tap_prev(0)=>taps_8(0), tap_next(15)=>
      taps_9(15), tap_next(14)=>taps_9(14), tap_next(13)=>taps_9(13), 
      tap_next(12)=>taps_9(12), tap_next(11)=>taps_9(11), tap_next(10)=>
      taps_9(10), tap_next(9)=>taps_9(9), tap_next(8)=>taps_9(8), 
      tap_next(7)=>taps_9(7), tap_next(6)=>taps_9(6), tap_next(5)=>taps_9(5), 
      tap_next(4)=>taps_9(4), tap_next(3)=>taps_9(3), tap_next(2)=>taps_9(2), 
      tap_next(1)=>taps_9(1), tap_next(0)=>taps_9(0), coef(15)=>GND, 
      coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>
      GND, coef(9)=>PWR, coef(8)=>PWR, coef(7)=>GND, coef(6)=>GND, coef(5)=>
      GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>
      GND, prev_sum(15)=>sums_8(15), prev_sum(14)=>sums_8(14), prev_sum(13)
      =>sums_8(13), prev_sum(12)=>sums_8(12), prev_sum(11)=>sums_8(11), 
      prev_sum(10)=>sums_8(10), prev_sum(9)=>sums_8(9), prev_sum(8)=>
      sums_8(8), prev_sum(7)=>sums_8(7), prev_sum(6)=>sums_8(6), prev_sum(5)
      =>sums_8(5), prev_sum(4)=>sums_8(4), prev_sum(3)=>sums_8(3), 
      prev_sum(2)=>sums_8(2), prev_sum(1)=>sums_8(1), prev_sum(0)=>sums_8(0), 
      next_sum(15)=>sums_9(15), next_sum(14)=>sums_9(14), next_sum(13)=>
      sums_9(13), next_sum(12)=>sums_9(12), next_sum(11)=>sums_9(11), 
      next_sum(10)=>sums_9(10), next_sum(9)=>sums_9(9), next_sum(8)=>
      sums_9(8), next_sum(7)=>sums_9(7), next_sum(6)=>sums_9(6), next_sum(5)
      =>sums_9(5), next_sum(4)=>sums_9(4), next_sum(3)=>sums_9(3), 
      next_sum(2)=>sums_9(2), next_sum(1)=>sums_9(1), next_sum(0)=>sums_9(0)
   );
   tap_array_10_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_9(15), tap_prev(14)=>taps_9(14), tap_prev(13)=>taps_9(13), 
      tap_prev(12)=>taps_9(12), tap_prev(11)=>taps_9(11), tap_prev(10)=>
      taps_9(10), tap_prev(9)=>taps_9(9), tap_prev(8)=>taps_9(8), 
      tap_prev(7)=>taps_9(7), tap_prev(6)=>taps_9(6), tap_prev(5)=>taps_9(5), 
      tap_prev(4)=>taps_9(4), tap_prev(3)=>taps_9(3), tap_prev(2)=>taps_9(2), 
      tap_prev(1)=>taps_9(1), tap_prev(0)=>taps_9(0), tap_next(15)=>
      taps_10(15), tap_next(14)=>taps_10(14), tap_next(13)=>taps_10(13), 
      tap_next(12)=>taps_10(12), tap_next(11)=>taps_10(11), tap_next(10)=>
      taps_10(10), tap_next(9)=>taps_10(9), tap_next(8)=>taps_10(8), 
      tap_next(7)=>taps_10(7), tap_next(6)=>taps_10(6), tap_next(5)=>
      taps_10(5), tap_next(4)=>taps_10(4), tap_next(3)=>taps_10(3), 
      tap_next(2)=>taps_10(2), tap_next(1)=>taps_10(1), tap_next(0)=>
      taps_10(0), coef(15)=>GND, coef(14)=>GND, coef(13)=>GND, coef(12)=>GND, 
      coef(11)=>GND, coef(10)=>GND, coef(9)=>PWR, coef(8)=>PWR, coef(7)=>GND, 
      coef(6)=>GND, coef(5)=>GND, coef(4)=>GND, coef(3)=>GND, coef(2)=>GND, 
      coef(1)=>GND, coef(0)=>GND, prev_sum(15)=>sums_9(15), prev_sum(14)=>
      sums_9(14), prev_sum(13)=>sums_9(13), prev_sum(12)=>sums_9(12), 
      prev_sum(11)=>sums_9(11), prev_sum(10)=>sums_9(10), prev_sum(9)=>
      sums_9(9), prev_sum(8)=>sums_9(8), prev_sum(7)=>sums_9(7), prev_sum(6)
      =>sums_9(6), prev_sum(5)=>sums_9(5), prev_sum(4)=>sums_9(4), 
      prev_sum(3)=>sums_9(3), prev_sum(2)=>sums_9(2), prev_sum(1)=>sums_9(1), 
      prev_sum(0)=>sums_9(0), next_sum(15)=>sums_10(15), next_sum(14)=>
      sums_10(14), next_sum(13)=>sums_10(13), next_sum(12)=>sums_10(12), 
      next_sum(11)=>sums_10(11), next_sum(10)=>sums_10(10), next_sum(9)=>
      sums_10(9), next_sum(8)=>sums_10(8), next_sum(7)=>sums_10(7), 
      next_sum(6)=>sums_10(6), next_sum(5)=>sums_10(5), next_sum(4)=>
      sums_10(4), next_sum(3)=>sums_10(3), next_sum(2)=>sums_10(2), 
      next_sum(1)=>sums_10(1), next_sum(0)=>sums_10(0));
   tap_array_11_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_10(15), tap_prev(14)=>taps_10(14), tap_prev(13)=>taps_10(13), 
      tap_prev(12)=>taps_10(12), tap_prev(11)=>taps_10(11), tap_prev(10)=>
      taps_10(10), tap_prev(9)=>taps_10(9), tap_prev(8)=>taps_10(8), 
      tap_prev(7)=>taps_10(7), tap_prev(6)=>taps_10(6), tap_prev(5)=>
      taps_10(5), tap_prev(4)=>taps_10(4), tap_prev(3)=>taps_10(3), 
      tap_prev(2)=>taps_10(2), tap_prev(1)=>taps_10(1), tap_prev(0)=>
      taps_10(0), tap_next(15)=>taps_11(15), tap_next(14)=>taps_11(14), 
      tap_next(13)=>taps_11(13), tap_next(12)=>taps_11(12), tap_next(11)=>
      taps_11(11), tap_next(10)=>taps_11(10), tap_next(9)=>taps_11(9), 
      tap_next(8)=>taps_11(8), tap_next(7)=>taps_11(7), tap_next(6)=>
      taps_11(6), tap_next(5)=>taps_11(5), tap_next(4)=>taps_11(4), 
      tap_next(3)=>taps_11(3), tap_next(2)=>taps_11(2), tap_next(1)=>
      taps_11(1), tap_next(0)=>taps_11(0), coef(15)=>GND, coef(14)=>GND, 
      coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>GND, coef(9)=>
      PWR, coef(8)=>PWR, coef(7)=>GND, coef(6)=>GND, coef(5)=>GND, coef(4)=>
      GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>GND, 
      prev_sum(15)=>sums_10(15), prev_sum(14)=>sums_10(14), prev_sum(13)=>
      sums_10(13), prev_sum(12)=>sums_10(12), prev_sum(11)=>sums_10(11), 
      prev_sum(10)=>sums_10(10), prev_sum(9)=>sums_10(9), prev_sum(8)=>
      sums_10(8), prev_sum(7)=>sums_10(7), prev_sum(6)=>sums_10(6), 
      prev_sum(5)=>sums_10(5), prev_sum(4)=>sums_10(4), prev_sum(3)=>
      sums_10(3), prev_sum(2)=>sums_10(2), prev_sum(1)=>sums_10(1), 
      prev_sum(0)=>sums_10(0), next_sum(15)=>sums_11(15), next_sum(14)=>
      sums_11(14), next_sum(13)=>sums_11(13), next_sum(12)=>sums_11(12), 
      next_sum(11)=>sums_11(11), next_sum(10)=>sums_11(10), next_sum(9)=>
      sums_11(9), next_sum(8)=>sums_11(8), next_sum(7)=>sums_11(7), 
      next_sum(6)=>sums_11(6), next_sum(5)=>sums_11(5), next_sum(4)=>
      sums_11(4), next_sum(3)=>sums_11(3), next_sum(2)=>sums_11(2), 
      next_sum(1)=>sums_11(1), next_sum(0)=>sums_11(0));
   tap_array_12_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_11(15), tap_prev(14)=>taps_11(14), tap_prev(13)=>taps_11(13), 
      tap_prev(12)=>taps_11(12), tap_prev(11)=>taps_11(11), tap_prev(10)=>
      taps_11(10), tap_prev(9)=>taps_11(9), tap_prev(8)=>taps_11(8), 
      tap_prev(7)=>taps_11(7), tap_prev(6)=>taps_11(6), tap_prev(5)=>
      taps_11(5), tap_prev(4)=>taps_11(4), tap_prev(3)=>taps_11(3), 
      tap_prev(2)=>taps_11(2), tap_prev(1)=>taps_11(1), tap_prev(0)=>
      taps_11(0), tap_next(15)=>taps_12(15), tap_next(14)=>taps_12(14), 
      tap_next(13)=>taps_12(13), tap_next(12)=>taps_12(12), tap_next(11)=>
      taps_12(11), tap_next(10)=>taps_12(10), tap_next(9)=>taps_12(9), 
      tap_next(8)=>taps_12(8), tap_next(7)=>taps_12(7), tap_next(6)=>
      taps_12(6), tap_next(5)=>taps_12(5), tap_next(4)=>taps_12(4), 
      tap_next(3)=>taps_12(3), tap_next(2)=>taps_12(2), tap_next(1)=>
      taps_12(1), tap_next(0)=>taps_12(0), coef(15)=>GND, coef(14)=>GND, 
      coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>GND, coef(9)=>
      PWR, coef(8)=>GND, coef(7)=>PWR, coef(6)=>PWR, coef(5)=>GND, coef(4)=>
      GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>GND, 
      prev_sum(15)=>sums_11(15), prev_sum(14)=>sums_11(14), prev_sum(13)=>
      sums_11(13), prev_sum(12)=>sums_11(12), prev_sum(11)=>sums_11(11), 
      prev_sum(10)=>sums_11(10), prev_sum(9)=>sums_11(9), prev_sum(8)=>
      sums_11(8), prev_sum(7)=>sums_11(7), prev_sum(6)=>sums_11(6), 
      prev_sum(5)=>sums_11(5), prev_sum(4)=>sums_11(4), prev_sum(3)=>
      sums_11(3), prev_sum(2)=>sums_11(2), prev_sum(1)=>sums_11(1), 
      prev_sum(0)=>sums_11(0), next_sum(15)=>sums_12(15), next_sum(14)=>
      sums_12(14), next_sum(13)=>sums_12(13), next_sum(12)=>sums_12(12), 
      next_sum(11)=>sums_12(11), next_sum(10)=>sums_12(10), next_sum(9)=>
      sums_12(9), next_sum(8)=>sums_12(8), next_sum(7)=>sums_12(7), 
      next_sum(6)=>sums_12(6), next_sum(5)=>sums_12(5), next_sum(4)=>
      sums_12(4), next_sum(3)=>sums_12(3), next_sum(2)=>sums_12(2), 
      next_sum(1)=>sums_12(1), next_sum(0)=>sums_12(0));
   tap_array_13_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_12(15), tap_prev(14)=>taps_12(14), tap_prev(13)=>taps_12(13), 
      tap_prev(12)=>taps_12(12), tap_prev(11)=>taps_12(11), tap_prev(10)=>
      taps_12(10), tap_prev(9)=>taps_12(9), tap_prev(8)=>taps_12(8), 
      tap_prev(7)=>taps_12(7), tap_prev(6)=>taps_12(6), tap_prev(5)=>
      taps_12(5), tap_prev(4)=>taps_12(4), tap_prev(3)=>taps_12(3), 
      tap_prev(2)=>taps_12(2), tap_prev(1)=>taps_12(1), tap_prev(0)=>
      taps_12(0), tap_next(15)=>taps_13(15), tap_next(14)=>taps_13(14), 
      tap_next(13)=>taps_13(13), tap_next(12)=>taps_13(12), tap_next(11)=>
      taps_13(11), tap_next(10)=>taps_13(10), tap_next(9)=>taps_13(9), 
      tap_next(8)=>taps_13(8), tap_next(7)=>taps_13(7), tap_next(6)=>
      taps_13(6), tap_next(5)=>taps_13(5), tap_next(4)=>taps_13(4), 
      tap_next(3)=>taps_13(3), tap_next(2)=>taps_13(2), tap_next(1)=>
      taps_13(1), tap_next(0)=>taps_13(0), coef(15)=>GND, coef(14)=>GND, 
      coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>GND, coef(9)=>
      PWR, coef(8)=>GND, coef(7)=>PWR, coef(6)=>GND, coef(5)=>GND, coef(4)=>
      GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>GND, 
      prev_sum(15)=>sums_12(15), prev_sum(14)=>sums_12(14), prev_sum(13)=>
      sums_12(13), prev_sum(12)=>sums_12(12), prev_sum(11)=>sums_12(11), 
      prev_sum(10)=>sums_12(10), prev_sum(9)=>sums_12(9), prev_sum(8)=>
      sums_12(8), prev_sum(7)=>sums_12(7), prev_sum(6)=>sums_12(6), 
      prev_sum(5)=>sums_12(5), prev_sum(4)=>sums_12(4), prev_sum(3)=>
      sums_12(3), prev_sum(2)=>sums_12(2), prev_sum(1)=>sums_12(1), 
      prev_sum(0)=>sums_12(0), next_sum(15)=>sums_13(15), next_sum(14)=>
      sums_13(14), next_sum(13)=>sums_13(13), next_sum(12)=>sums_13(12), 
      next_sum(11)=>sums_13(11), next_sum(10)=>sums_13(10), next_sum(9)=>
      sums_13(9), next_sum(8)=>sums_13(8), next_sum(7)=>sums_13(7), 
      next_sum(6)=>sums_13(6), next_sum(5)=>sums_13(5), next_sum(4)=>
      sums_13(4), next_sum(3)=>sums_13(3), next_sum(2)=>sums_13(2), 
      next_sum(1)=>sums_13(1), next_sum(0)=>sums_13(0));
   tap_array_14_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_13(15), tap_prev(14)=>taps_13(14), tap_prev(13)=>taps_13(13), 
      tap_prev(12)=>taps_13(12), tap_prev(11)=>taps_13(11), tap_prev(10)=>
      taps_13(10), tap_prev(9)=>taps_13(9), tap_prev(8)=>taps_13(8), 
      tap_prev(7)=>taps_13(7), tap_prev(6)=>taps_13(6), tap_prev(5)=>
      taps_13(5), tap_prev(4)=>taps_13(4), tap_prev(3)=>taps_13(3), 
      tap_prev(2)=>taps_13(2), tap_prev(1)=>taps_13(1), tap_prev(0)=>
      taps_13(0), tap_next(15)=>taps_14(15), tap_next(14)=>taps_14(14), 
      tap_next(13)=>taps_14(13), tap_next(12)=>taps_14(12), tap_next(11)=>
      taps_14(11), tap_next(10)=>taps_14(10), tap_next(9)=>taps_14(9), 
      tap_next(8)=>taps_14(8), tap_next(7)=>taps_14(7), tap_next(6)=>
      taps_14(6), tap_next(5)=>taps_14(5), tap_next(4)=>taps_14(4), 
      tap_next(3)=>taps_14(3), tap_next(2)=>taps_14(2), tap_next(1)=>
      taps_14(1), tap_next(0)=>taps_14(0), coef(15)=>GND, coef(14)=>GND, 
      coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>GND, coef(9)=>
      PWR, coef(8)=>GND, coef(7)=>GND, coef(6)=>GND, coef(5)=>GND, coef(4)=>
      GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>GND, 
      prev_sum(15)=>sums_13(15), prev_sum(14)=>sums_13(14), prev_sum(13)=>
      sums_13(13), prev_sum(12)=>sums_13(12), prev_sum(11)=>sums_13(11), 
      prev_sum(10)=>sums_13(10), prev_sum(9)=>sums_13(9), prev_sum(8)=>
      sums_13(8), prev_sum(7)=>sums_13(7), prev_sum(6)=>sums_13(6), 
      prev_sum(5)=>sums_13(5), prev_sum(4)=>sums_13(4), prev_sum(3)=>
      sums_13(3), prev_sum(2)=>sums_13(2), prev_sum(1)=>sums_13(1), 
      prev_sum(0)=>sums_13(0), next_sum(15)=>sums_14(15), next_sum(14)=>
      sums_14(14), next_sum(13)=>sums_14(13), next_sum(12)=>sums_14(12), 
      next_sum(11)=>sums_14(11), next_sum(10)=>sums_14(10), next_sum(9)=>
      sums_14(9), next_sum(8)=>sums_14(8), next_sum(7)=>sums_14(7), 
      next_sum(6)=>sums_14(6), next_sum(5)=>sums_14(5), next_sum(4)=>
      sums_14(4), next_sum(3)=>sums_14(3), next_sum(2)=>sums_14(2), 
      next_sum(1)=>sums_14(1), next_sum(0)=>sums_14(0));
   tap_array_15_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_14(15), tap_prev(14)=>taps_14(14), tap_prev(13)=>taps_14(13), 
      tap_prev(12)=>taps_14(12), tap_prev(11)=>taps_14(11), tap_prev(10)=>
      taps_14(10), tap_prev(9)=>taps_14(9), tap_prev(8)=>taps_14(8), 
      tap_prev(7)=>taps_14(7), tap_prev(6)=>taps_14(6), tap_prev(5)=>
      taps_14(5), tap_prev(4)=>taps_14(4), tap_prev(3)=>taps_14(3), 
      tap_prev(2)=>taps_14(2), tap_prev(1)=>taps_14(1), tap_prev(0)=>
      taps_14(0), tap_next(15)=>taps_15(15), tap_next(14)=>taps_15(14), 
      tap_next(13)=>taps_15(13), tap_next(12)=>taps_15(12), tap_next(11)=>
      taps_15(11), tap_next(10)=>taps_15(10), tap_next(9)=>taps_15(9), 
      tap_next(8)=>taps_15(8), tap_next(7)=>taps_15(7), tap_next(6)=>
      taps_15(6), tap_next(5)=>taps_15(5), tap_next(4)=>taps_15(4), 
      tap_next(3)=>taps_15(3), tap_next(2)=>taps_15(2), tap_next(1)=>
      taps_15(1), tap_next(0)=>taps_15(0), coef(15)=>GND, coef(14)=>GND, 
      coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>GND, coef(9)=>
      GND, coef(8)=>PWR, coef(7)=>PWR, coef(6)=>PWR, coef(5)=>GND, coef(4)=>
      GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>GND, 
      prev_sum(15)=>sums_14(15), prev_sum(14)=>sums_14(14), prev_sum(13)=>
      sums_14(13), prev_sum(12)=>sums_14(12), prev_sum(11)=>sums_14(11), 
      prev_sum(10)=>sums_14(10), prev_sum(9)=>sums_14(9), prev_sum(8)=>
      sums_14(8), prev_sum(7)=>sums_14(7), prev_sum(6)=>sums_14(6), 
      prev_sum(5)=>sums_14(5), prev_sum(4)=>sums_14(4), prev_sum(3)=>
      sums_14(3), prev_sum(2)=>sums_14(2), prev_sum(1)=>sums_14(1), 
      prev_sum(0)=>sums_14(0), next_sum(15)=>sums_15(15), next_sum(14)=>
      sums_15(14), next_sum(13)=>sums_15(13), next_sum(12)=>sums_15(12), 
      next_sum(11)=>sums_15(11), next_sum(10)=>sums_15(10), next_sum(9)=>
      sums_15(9), next_sum(8)=>sums_15(8), next_sum(7)=>sums_15(7), 
      next_sum(6)=>sums_15(6), next_sum(5)=>sums_15(5), next_sum(4)=>
      sums_15(4), next_sum(3)=>sums_15(3), next_sum(2)=>sums_15(2), 
      next_sum(1)=>sums_15(1), next_sum(0)=>sums_15(0));
   tap_array_16_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_15(15), tap_prev(14)=>taps_15(14), tap_prev(13)=>taps_15(13), 
      tap_prev(12)=>taps_15(12), tap_prev(11)=>taps_15(11), tap_prev(10)=>
      taps_15(10), tap_prev(9)=>taps_15(9), tap_prev(8)=>taps_15(8), 
      tap_prev(7)=>taps_15(7), tap_prev(6)=>taps_15(6), tap_prev(5)=>
      taps_15(5), tap_prev(4)=>taps_15(4), tap_prev(3)=>taps_15(3), 
      tap_prev(2)=>taps_15(2), tap_prev(1)=>taps_15(1), tap_prev(0)=>
      taps_15(0), tap_next(15)=>taps_16(15), tap_next(14)=>taps_16(14), 
      tap_next(13)=>taps_16(13), tap_next(12)=>taps_16(12), tap_next(11)=>
      taps_16(11), tap_next(10)=>taps_16(10), tap_next(9)=>taps_16(9), 
      tap_next(8)=>taps_16(8), tap_next(7)=>taps_16(7), tap_next(6)=>
      taps_16(6), tap_next(5)=>taps_16(5), tap_next(4)=>taps_16(4), 
      tap_next(3)=>taps_16(3), tap_next(2)=>taps_16(2), tap_next(1)=>
      taps_16(1), tap_next(0)=>taps_16(0), coef(15)=>GND, coef(14)=>GND, 
      coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>GND, coef(9)=>
      GND, coef(8)=>PWR, coef(7)=>PWR, coef(6)=>GND, coef(5)=>GND, coef(4)=>
      GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>GND, 
      prev_sum(15)=>sums_15(15), prev_sum(14)=>sums_15(14), prev_sum(13)=>
      sums_15(13), prev_sum(12)=>sums_15(12), prev_sum(11)=>sums_15(11), 
      prev_sum(10)=>sums_15(10), prev_sum(9)=>sums_15(9), prev_sum(8)=>
      sums_15(8), prev_sum(7)=>sums_15(7), prev_sum(6)=>sums_15(6), 
      prev_sum(5)=>sums_15(5), prev_sum(4)=>sums_15(4), prev_sum(3)=>
      sums_15(3), prev_sum(2)=>sums_15(2), prev_sum(1)=>sums_15(1), 
      prev_sum(0)=>sums_15(0), next_sum(15)=>sums_16(15), next_sum(14)=>
      sums_16(14), next_sum(13)=>sums_16(13), next_sum(12)=>sums_16(12), 
      next_sum(11)=>sums_16(11), next_sum(10)=>sums_16(10), next_sum(9)=>
      sums_16(9), next_sum(8)=>sums_16(8), next_sum(7)=>sums_16(7), 
      next_sum(6)=>sums_16(6), next_sum(5)=>sums_16(5), next_sum(4)=>
      sums_16(4), next_sum(3)=>sums_16(3), next_sum(2)=>sums_16(2), 
      next_sum(1)=>sums_16(1), next_sum(0)=>sums_16(0));
   tap_array_17_filter_block : shiftr port map ( clk=>clk, tap_prev(15)=>
      taps_16(15), tap_prev(14)=>taps_16(14), tap_prev(13)=>taps_16(13), 
      tap_prev(12)=>taps_16(12), tap_prev(11)=>taps_16(11), tap_prev(10)=>
      taps_16(10), tap_prev(9)=>taps_16(9), tap_prev(8)=>taps_16(8), 
      tap_prev(7)=>taps_16(7), tap_prev(6)=>taps_16(6), tap_prev(5)=>
      taps_16(5), tap_prev(4)=>taps_16(4), tap_prev(3)=>taps_16(3), 
      tap_prev(2)=>taps_16(2), tap_prev(1)=>taps_16(1), tap_prev(0)=>
      taps_16(0), tap_next(15)=>DANGLING(0), tap_next(14)=>DANGLING(1), 
      tap_next(13)=>DANGLING(2), tap_next(12)=>DANGLING(3), tap_next(11)=>
      DANGLING(4), tap_next(10)=>DANGLING(5), tap_next(9)=>DANGLING(6), 
      tap_next(8)=>DANGLING(7), tap_next(7)=>DANGLING(8), tap_next(6)=>
      DANGLING(9), tap_next(5)=>DANGLING(10), tap_next(4)=>DANGLING(11), 
      tap_next(3)=>DANGLING(12), tap_next(2)=>DANGLING(13), tap_next(1)=>
      DANGLING(14), tap_next(0)=>DANGLING(15), coef(15)=>GND, coef(14)=>GND, 
      coef(13)=>GND, coef(12)=>GND, coef(11)=>GND, coef(10)=>GND, coef(9)=>
      PWR, coef(8)=>GND, coef(7)=>GND, coef(6)=>PWR, coef(5)=>GND, coef(4)=>
      GND, coef(3)=>GND, coef(2)=>GND, coef(1)=>GND, coef(0)=>GND, 
      prev_sum(15)=>sums_16(15), prev_sum(14)=>sums_16(14), prev_sum(13)=>
      sums_16(13), prev_sum(12)=>sums_16(12), prev_sum(11)=>sums_16(11), 
      prev_sum(10)=>sums_16(10), prev_sum(9)=>sums_16(9), prev_sum(8)=>
      sums_16(8), prev_sum(7)=>sums_16(7), prev_sum(6)=>sums_16(6), 
      prev_sum(5)=>sums_16(5), prev_sum(4)=>sums_16(4), prev_sum(3)=>
      sums_16(3), prev_sum(2)=>sums_16(2), prev_sum(1)=>sums_16(1), 
      prev_sum(0)=>sums_16(0), next_sum(15)=>sums_17(15), next_sum(14)=>
      sums_17(14), next_sum(13)=>sums_17(13), next_sum(12)=>sums_17(12), 
      next_sum(11)=>sums_17(11), next_sum(10)=>sums_17(10), next_sum(9)=>
      sums_17(9), next_sum(8)=>sums_17(8), next_sum(7)=>sums_17(7), 
      next_sum(6)=>sums_17(6), next_sum(5)=>sums_17(5), next_sum(4)=>
      sums_17(4), next_sum(3)=>sums_17(3), next_sum(2)=>sums_17(2), 
      next_sum(1)=>sums_17(1), next_sum(0)=>sums_17(0));
   taps_0(0) <= i_data(0) ;
   taps_0(1) <= i_data(1) ;
   taps_0(2) <= i_data(2) ;
   taps_0(3) <= i_data(3) ;
   taps_0(4) <= i_data(4) ;
   taps_0(5) <= i_data(5) ;
   taps_0(6) <= i_data(6) ;
   taps_0(7) <= i_data(7) ;
   taps_0(8) <= i_data(8) ;
   taps_0(9) <= i_data(9) ;
   taps_0(10) <= i_data(10) ;
   taps_0(11) <= i_data(11) ;
   taps_0(12) <= i_data(12) ;
   taps_0(13) <= i_data(13) ;
   taps_0(14) <= i_data(14) ;
   taps_0(15) <= i_data(15) ;
   o_data(0) <= sums_17(0) ;
   o_data(1) <= sums_17(1) ;
   o_data(2) <= sums_17(2) ;
   o_data(3) <= sums_17(3) ;
   o_data(4) <= sums_17(4) ;
   o_data(5) <= sums_17(5) ;
   o_data(6) <= sums_17(6) ;
   o_data(7) <= sums_17(7) ;
   o_data(8) <= sums_17(8) ;
   o_data(9) <= sums_17(9) ;
   o_data(10) <= sums_17(10) ;
   o_data(11) <= sums_17(11) ;
   o_data(12) <= sums_17(12) ;
   o_data(13) <= sums_17(13) ;
   o_data(14) <= sums_17(14) ;
   o_data(15) <= sums_17(15) ;
end low_pass ;

