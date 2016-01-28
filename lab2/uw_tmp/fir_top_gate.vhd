
-- 
-- Definition of  fir_top
-- 
--      Tue Jan 26 18:36:16 2016
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_12_6_64_0_sine_wave_sample_64 is 
   port (
      address : IN std_logic_vector (5 DOWNTO 0) ;
      inclock : IN std_logic ;
      outclock : IN std_logic ;
      outclockena : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0)) ;
end rom_12_6_64_0_sine_wave_sample_64 ;

architecture INTERFACE of rom_12_6_64_0_sine_wave_sample_64 is 
   component mux_64u_64u
      port (
         a : IN std_logic_vector (63 DOWNTO 0) ;
         b : IN std_logic_vector (63 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal GND, PWR: std_logic ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   modgen_mux_1 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>PWR, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>PWR, a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, a(51)=>PWR, a(50)=>PWR, a(49)=>PWR, 
      a(48)=>PWR, a(47)=>PWR, a(46)=>PWR, a(45)=>PWR, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>PWR, a(39)=>PWR, a(38)=>PWR, a(37)=>PWR, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(11));
   modgen_mux_2 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>PWR, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>PWR, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>PWR, a(25)=>PWR, 
      a(24)=>PWR, a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>PWR, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(10));
   modgen_mux_3 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>PWR, a(57)=>PWR, a(56)=>PWR, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>PWR, a(39)=>PWR, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>PWR, a(28)=>PWR, a(27)=>PWR, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>PWR, a(3)=>PWR, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(9));
   modgen_mux_4 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>GND, a(61)=>PWR, 
      a(60)=>GND, a(59)=>GND, a(58)=>PWR, a(57)=>GND, a(56)=>GND, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>GND, a(39)=>GND, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>PWR, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>PWR, a(29)=>GND, a(28)=>PWR, a(27)=>PWR, a(26)=>GND, a(25)=>PWR, 
      a(24)=>PWR, a(23)=>GND, a(22)=>GND, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>GND, a(9)=>GND, a(8)=>PWR, a(7)=>PWR, 
      a(6)=>GND, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(8));
   modgen_mux_5 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>PWR, 
      a(60)=>PWR, a(59)=>GND, a(58)=>PWR, a(57)=>PWR, a(56)=>GND, a(55)=>PWR, 
      a(54)=>GND, a(53)=>PWR, a(52)=>PWR, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>GND, a(41)=>PWR, a(40)=>GND, a(39)=>PWR, a(38)=>GND, a(37)=>GND, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>PWR, 
      a(30)=>PWR, a(29)=>GND, a(28)=>GND, a(27)=>PWR, a(26)=>GND, a(25)=>GND, 
      a(24)=>PWR, a(23)=>GND, a(22)=>PWR, a(21)=>GND, a(20)=>GND, a(19)=>PWR, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>GND, a(11)=>GND, a(10)=>PWR, a(9)=>GND, a(8)=>PWR, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>GND, a(3)=>GND, a(2)=>PWR, a(1)=>PWR, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(7));
   modgen_mux_6 : mux_64u_64u port map ( a(63)=>GND, a(62)=>PWR, a(61)=>GND, 
      a(60)=>PWR, a(59)=>GND, a(58)=>GND, a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>PWR, a(52)=>GND, a(51)=>PWR, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>PWR, a(44)=>GND, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>PWR, a(39)=>PWR, a(38)=>GND, a(37)=>GND, 
      a(36)=>PWR, a(35)=>GND, a(34)=>PWR, a(33)=>GND, a(32)=>GND, a(31)=>PWR, 
      a(30)=>GND, a(29)=>PWR, a(28)=>GND, a(27)=>PWR, a(26)=>PWR, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>PWR, a(19)=>GND, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>GND, 
      a(12)=>PWR, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>PWR, a(5)=>PWR, a(4)=>GND, a(3)=>PWR, a(2)=>GND, a(1)=>PWR, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(6));
   modgen_mux_7 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>PWR, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>GND, a(57)=>PWR, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>PWR, a(52)=>GND, a(51)=>GND, a(50)=>PWR, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>PWR, a(45)=>GND, a(44)=>GND, a(43)=>PWR, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>PWR, a(38)=>GND, a(37)=>PWR, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>PWR, a(25)=>GND, 
      a(24)=>PWR, a(23)=>PWR, a(22)=>PWR, a(21)=>GND, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>GND, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>GND, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>GND, a(10)=>PWR, a(9)=>PWR, a(8)=>PWR, a(7)=>GND, 
      a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(5));
   modgen_mux_8 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>PWR, a(61)=>GND, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>GND, a(57)=>GND, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, a(51)=>PWR, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>PWR, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>PWR, a(39)=>GND, a(38)=>PWR, a(37)=>PWR, 
      a(36)=>PWR, a(35)=>GND, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>PWR, a(28)=>GND, a(27)=>GND, a(26)=>PWR, a(25)=>PWR, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)=>PWR, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(4));
   modgen_mux_9 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>PWR, 
      a(60)=>GND, a(59)=>PWR, a(58)=>PWR, a(57)=>PWR, a(56)=>GND, a(55)=>GND, 
      a(54)=>PWR, a(53)=>GND, a(52)=>PWR, a(51)=>PWR, a(50)=>GND, a(49)=>PWR, 
      a(48)=>GND, a(47)=>PWR, a(46)=>GND, a(45)=>PWR, a(44)=>PWR, a(43)=>GND, 
      a(42)=>PWR, a(41)=>GND, a(40)=>GND, a(39)=>PWR, a(38)=>GND, a(37)=>PWR, 
      a(36)=>GND, a(35)=>PWR, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>PWR, 
      a(30)=>PWR, a(29)=>GND, a(28)=>PWR, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>PWR, a(23)=>PWR, a(22)=>GND, a(21)=>PWR, a(20)=>GND, a(19)=>GND, 
      a(18)=>PWR, a(17)=>GND, a(16)=>PWR, a(15)=>GND, a(14)=>PWR, a(13)=>GND, 
      a(12)=>GND, a(11)=>PWR, a(10)=>GND, a(9)=>PWR, a(8)=>PWR, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>PWR, a(3)=>GND, a(2)=>PWR, a(1)=>PWR, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(3));
   modgen_mux_10 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>GND, a(61)=>PWR, 
      a(60)=>GND, a(59)=>GND, a(58)=>PWR, a(57)=>PWR, a(56)=>PWR, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>PWR, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>PWR, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>PWR, a(39)=>PWR, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>PWR, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>PWR, a(29)=>GND, a(28)=>PWR, a(27)=>PWR, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>GND, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>GND, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(2));
   modgen_mux_11 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>PWR, a(58)=>PWR, a(57)=>GND, a(56)=>PWR, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>PWR, a(51)=>GND, a(50)=>PWR, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>PWR, a(45)=>GND, a(44)=>PWR, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>PWR, a(39)=>GND, a(38)=>GND, a(37)=>PWR, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>PWR, a(29)=>PWR, a(28)=>PWR, a(27)=>GND, a(26)=>GND, a(25)=>PWR, 
      a(24)=>GND, a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>GND, a(19)=>PWR, 
      a(18)=>GND, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>GND, a(13)=>PWR, 
      a(12)=>GND, a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>PWR, 
      a(6)=>GND, a(5)=>GND, a(4)=>PWR, a(3)=>PWR, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(1));
   modgen_mux_12 : mux_64u_64u port map ( a(63)=>PWR, a(62)=>GND, a(61)=>PWR, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>PWR, a(55)=>GND, 
      a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, a(51)=>GND, a(50)=>PWR, a(49)=>PWR, 
      a(48)=>GND, a(47)=>PWR, a(46)=>PWR, a(45)=>GND, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>GND, a(40)=>PWR, a(39)=>GND, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>PWR, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>PWR, a(29)=>GND, a(28)=>PWR, a(27)=>PWR, a(26)=>PWR, a(25)=>PWR, 
      a(24)=>GND, a(23)=>PWR, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>PWR, 
      a(18)=>GND, a(17)=>GND, a(16)=>PWR, a(15)=>GND, a(14)=>GND, a(13)=>PWR, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>PWR, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_new_0_sine_wave_sample_64 is 
   port (
      rd_data1 : OUT std_logic_vector (11 DOWNTO 0) ;
      addr1 : IN std_logic_vector (5 DOWNTO 0) ;
      rd_clk1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      regce1 : IN std_logic ;
      rst1 : IN std_logic) ;
end rom_new_0_sine_wave_sample_64 ;

architecture INTERFACE of rom_new_0_sine_wave_sample_64 is 
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
   component rom_12_6_64_0_sine_wave_sample_64
      port (
         address : IN std_logic_vector (5 DOWNTO 0) ;
         inclock : IN std_logic ;
         outclock : IN std_logic ;
         outclockena : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0)) ;
   end component ;
   signal nx22, nx24, dup_0_address_8, dup_0_address_7, dup_0_address_6, 
      dup_0_address_5, dup_0_address_4, dup_0_address_3: std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   nx22 <= '0' ;
   nx24 <= '1' ;
   DFFPC (addr1(5),nx22,nx22,rd_clk1,dup_0_address_8) ;
   DFFPC (addr1(4),nx22,nx22,rd_clk1,dup_0_address_7) ;
   DFFPC (addr1(3),nx22,nx22,rd_clk1,dup_0_address_6) ;
   DFFPC (addr1(2),nx22,nx22,rd_clk1,dup_0_address_5) ;
   DFFPC (addr1(1),nx22,nx22,rd_clk1,dup_0_address_4) ;
   DFFPC (addr1(0),nx22,nx22,rd_clk1,dup_0_address_3) ;
   modgen_rom_ix21 : rom_12_6_64_0_sine_wave_sample_64 port map ( address(5)
      =>dup_0_address_8, address(4)=>dup_0_address_7, address(3)=>
      dup_0_address_6, address(2)=>dup_0_address_5, address(1)=>
      dup_0_address_4, address(0)=>dup_0_address_3, inclock=>DANGLING(0), 
      outclock=>DANGLING(1), outclockena=>DANGLING(2), q(11)=>rd_data1(11), 
      q(10)=>rd_data1(10), q(9)=>rd_data1(9), q(8)=>rd_data1(8), q(7)=>
      rd_data1(7), q(6)=>rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), 
      q(3)=>rd_data1(3), q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>
      rd_data1(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity sine_wave is 
   port (
      clk : IN std_logic ;
      freq_scale : IN std_logic_vector (6 DOWNTO 0) ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end sine_wave ;

architecture sample_64 of sine_wave is 
   component add_9u_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
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
   component rom_new_0_sine_wave_sample_64
      port (
         rd_data1 : OUT std_logic_vector (11 DOWNTO 0) ;
         addr1 : IN std_logic_vector (5 DOWNTO 0) ;
         rd_clk1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         regce1 : IN std_logic ;
         rst1 : IN std_logic) ;
   end component ;
   signal o_data_11_EXMPLR59: std_logic ;
   
   signal address: std_logic_vector (8 DOWNTO 0) ;
   
   signal PWR, GND: std_logic ;
   
   signal address_0n0r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   o_data(11) <= o_data_11_EXMPLR59 ;
   PWR <= '1' ;
   GND <= '0' ;
   o_data(12) <= o_data_11_EXMPLR59 ;
   o_data(13) <= o_data_11_EXMPLR59 ;
   o_data(14) <= o_data_11_EXMPLR59 ;
   o_data(15) <= o_data_11_EXMPLR59 ;
   address_add9_0i1 : add_9u_9u_9u_0_0 port map ( cin=>PWR, a(8)=>address(8), 
      a(7)=>address(7), a(6)=>address(6), a(5)=>address(5), a(4)=>address(4), 
      a(3)=>address(3), a(2)=>address(2), a(1)=>address(1), a(0)=>address(0), 
      b(8)=>GND, b(7)=>GND, b(6)=>freq_scale(6), b(5)=>freq_scale(5), b(4)=>
      freq_scale(4), b(3)=>freq_scale(3), b(2)=>freq_scale(2), b(1)=>
      freq_scale(1), b(0)=>freq_scale(0), d(8)=>address_0n0r2(8), d(7)=>
      address_0n0r2(7), d(6)=>address_0n0r2(6), d(5)=>address_0n0r2(5), d(4)
      =>address_0n0r2(4), d(3)=>address_0n0r2(3), d(2)=>address_0n0r2(2), 
      d(1)=>address_0n0r2(1), d(0)=>address_0n0r2(0), cout=>DANGLING(0));
   DFFPC (address_0n0r2(2),GND,GND,clk,address(2)) ;
   DFFPC (address_0n0r2(1),GND,GND,clk,address(1)) ;
   DFFPC (address_0n0r2(0),GND,GND,clk,address(0)) ;
   modgen_rom_ix21 : rom_new_0_sine_wave_sample_64 port map ( rd_data1(11)=>
      o_data_11_EXMPLR59, rd_data1(10)=>o_data(10), rd_data1(9)=>o_data(9), 
      rd_data1(8)=>o_data(8), rd_data1(7)=>o_data(7), rd_data1(6)=>o_data(6), 
      rd_data1(5)=>o_data(5), rd_data1(4)=>o_data(4), rd_data1(3)=>o_data(3), 
      rd_data1(2)=>o_data(2), rd_data1(1)=>o_data(1), rd_data1(0)=>o_data(0), 
      addr1(5)=>address_0n0r2(8), addr1(4)=>address_0n0r2(7), addr1(3)=>
      address_0n0r2(6), addr1(2)=>address_0n0r2(5), addr1(1)=>
      address_0n0r2(4), addr1(0)=>address_0n0r2(3), rd_clk1=>clk, rd_ena1=>
      PWR, regce1=>PWR, rst1=>GND);
   DFFPC (address_0n0r2(8),GND,GND,clk,address(8)) ;
   DFFPC (address_0n0r2(7),GND,GND,clk,address(7)) ;
   DFFPC (address_0n0r2(6),GND,GND,clk,address(6)) ;
   DFFPC (address_0n0r2(5),GND,GND,clk,address(5)) ;
   DFFPC (address_0n0r2(4),GND,GND,clk,address(4)) ;
   DFFPC (address_0n0r2(3),GND,GND,clk,address(3)) ;
end sample_64 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_clock_0_10 is 
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
end counter_up_clock_0_10 ;

architecture INTERFACE of counter_up_clock_0_10 is 
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
   component inc_10u_10u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic_vector (9 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx23, nx24, nx25, nx26, nx27, nx28, nx29, nx30, nx31, nx32, 
      nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, PWR: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(9) <= nx24 ;
   q(8) <= nx26 ;
   q(7) <= nx28 ;
   q(6) <= nx30 ;
   q(5) <= nx32 ;
   q(4) <= nx34 ;
   q(3) <= nx36 ;
   q(2) <= nx38 ;
   q(1) <= nx40 ;
   q(0) <= nx42 ;
   GND <= '0' ;
   DFFPC (nx23,GND,GND,clock,nx24) ;
   DFFPC (nx25,GND,GND,clock,nx26) ;
   DFFPC (nx27,GND,GND,clock,nx28) ;
   DFFPC (nx29,GND,GND,clock,nx30) ;
   DFFPC (nx31,GND,GND,clock,nx32) ;
   DFFPC (nx33,GND,GND,clock,nx34) ;
   DFFPC (nx35,GND,GND,clock,nx36) ;
   DFFPC (nx37,GND,GND,clock,nx38) ;
   DFFPC (nx39,GND,GND,clock,nx40) ;
   DFFPC (nx41,GND,GND,clock,nx42) ;
   inc : inc_10u_10u_0_0 port map ( cin=>PWR, a(9)=>nx24, a(8)=>nx26, a(7)=>
      nx28, a(6)=>nx30, a(5)=>nx32, a(4)=>nx34, a(3)=>nx36, a(2)=>nx38, a(1)
      =>nx40, a(0)=>nx42, d(9)=>nx23, d(8)=>nx25, d(7)=>nx27, d(6)=>nx29, 
      d(5)=>nx31, d(4)=>nx33, d(3)=>nx35, d(2)=>nx37, d(1)=>nx39, d(0)=>nx41, 
      cout=>DANGLING(0));
   PWR <= '1' ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_8_10_1024_1_white_noise_0_main is 
   port (
      address : IN std_logic_vector (9 DOWNTO 0) ;
      inclock : IN std_logic ;
      outclock : IN std_logic ;
      outclockena : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0)) ;
end rom_8_10_1024_1_white_noise_0_main ;

architecture INTERFACE of rom_8_10_1024_1_white_noise_0_main is 
   component mux_1024u_1024u
      port (
         a : IN std_logic_vector (1023 DOWNTO 0) ;
         b : IN std_logic_vector (1023 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal GND, PWR: std_logic ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   modgen_mux_13 : mux_1024u_1024u port map ( a(1023)=>GND, a(1022)=>GND, 
      a(1021)=>GND, a(1020)=>GND, a(1019)=>GND, a(1018)=>GND, a(1017)=>GND, 
      a(1016)=>PWR, a(1015)=>PWR, a(1014)=>PWR, a(1013)=>PWR, a(1012)=>PWR, 
      a(1011)=>GND, a(1010)=>PWR, a(1009)=>GND, a(1008)=>GND, a(1007)=>GND, 
      a(1006)=>GND, a(1005)=>GND, a(1004)=>PWR, a(1003)=>GND, a(1002)=>GND, 
      a(1001)=>GND, a(1000)=>GND, a(999)=>GND, a(998)=>PWR, a(997)=>GND, 
      a(996)=>GND, a(995)=>GND, a(994)=>PWR, a(993)=>GND, a(992)=>GND, 
      a(991)=>GND, a(990)=>GND, a(989)=>GND, a(988)=>GND, a(987)=>PWR, 
      a(986)=>PWR, a(985)=>GND, a(984)=>PWR, a(983)=>PWR, a(982)=>PWR, 
      a(981)=>PWR, a(980)=>GND, a(979)=>PWR, a(978)=>GND, a(977)=>GND, 
      a(976)=>PWR, a(975)=>PWR, a(974)=>PWR, a(973)=>PWR, a(972)=>GND, 
      a(971)=>PWR, a(970)=>GND, a(969)=>PWR, a(968)=>GND, a(967)=>GND, 
      a(966)=>GND, a(965)=>GND, a(964)=>GND, a(963)=>PWR, a(962)=>PWR, 
      a(961)=>PWR, a(960)=>GND, a(959)=>PWR, a(958)=>PWR, a(957)=>PWR, 
      a(956)=>PWR, a(955)=>PWR, a(954)=>GND, a(953)=>PWR, a(952)=>GND, 
      a(951)=>GND, a(950)=>GND, a(949)=>PWR, a(948)=>GND, a(947)=>GND, 
      a(946)=>PWR, a(945)=>PWR, a(944)=>GND, a(943)=>PWR, a(942)=>GND, 
      a(941)=>PWR, a(940)=>PWR, a(939)=>PWR, a(938)=>GND, a(937)=>GND, 
      a(936)=>GND, a(935)=>GND, a(934)=>PWR, a(933)=>GND, a(932)=>PWR, 
      a(931)=>GND, a(930)=>GND, a(929)=>PWR, a(928)=>GND, a(927)=>GND, 
      a(926)=>GND, a(925)=>PWR, a(924)=>PWR, a(923)=>GND, a(922)=>GND, 
      a(921)=>GND, a(920)=>GND, a(919)=>GND, a(918)=>PWR, a(917)=>GND, 
      a(916)=>PWR, a(915)=>GND, a(914)=>GND, a(913)=>GND, a(912)=>PWR, 
      a(911)=>PWR, a(910)=>GND, a(909)=>PWR, a(908)=>GND, a(907)=>GND, 
      a(906)=>GND, a(905)=>GND, a(904)=>PWR, a(903)=>PWR, a(902)=>PWR, 
      a(901)=>GND, a(900)=>GND, a(899)=>PWR, a(898)=>GND, a(897)=>GND, 
      a(896)=>PWR, a(895)=>GND, a(894)=>PWR, a(893)=>PWR, a(892)=>GND, 
      a(891)=>GND, a(890)=>GND, a(889)=>GND, a(888)=>GND, a(887)=>GND, 
      a(886)=>GND, a(885)=>PWR, a(884)=>GND, a(883)=>PWR, a(882)=>PWR, 
      a(881)=>GND, a(880)=>PWR, a(879)=>GND, a(878)=>GND, a(877)=>PWR, 
      a(876)=>GND, a(875)=>PWR, a(874)=>GND, a(873)=>PWR, a(872)=>GND, 
      a(871)=>PWR, a(870)=>PWR, a(869)=>GND, a(868)=>GND, a(867)=>PWR, 
      a(866)=>GND, a(865)=>GND, a(864)=>GND, a(863)=>PWR, a(862)=>PWR, 
      a(861)=>PWR, a(860)=>GND, a(859)=>PWR, a(858)=>GND, a(857)=>GND, 
      a(856)=>GND, a(855)=>PWR, a(854)=>PWR, a(853)=>GND, a(852)=>PWR, 
      a(851)=>GND, a(850)=>GND, a(849)=>GND, a(848)=>PWR, a(847)=>PWR, 
      a(846)=>GND, a(845)=>GND, a(844)=>GND, a(843)=>GND, a(842)=>PWR, 
      a(841)=>GND, a(840)=>GND, a(839)=>GND, a(838)=>PWR, a(837)=>GND, 
      a(836)=>GND, a(835)=>GND, a(834)=>PWR, a(833)=>PWR, a(832)=>GND, 
      a(831)=>GND, a(830)=>PWR, a(829)=>PWR, a(828)=>PWR, a(827)=>PWR, 
      a(826)=>PWR, a(825)=>GND, a(824)=>PWR, a(823)=>GND, a(822)=>GND, 
      a(821)=>GND, a(820)=>GND, a(819)=>PWR, a(818)=>PWR, a(817)=>GND, 
      a(816)=>PWR, a(815)=>GND, a(814)=>PWR, a(813)=>GND, a(812)=>PWR, 
      a(811)=>GND, a(810)=>GND, a(809)=>GND, a(808)=>PWR, a(807)=>PWR, 
      a(806)=>GND, a(805)=>GND, a(804)=>GND, a(803)=>PWR, a(802)=>PWR, 
      a(801)=>GND, a(800)=>PWR, a(799)=>GND, a(798)=>PWR, a(797)=>PWR, 
      a(796)=>GND, a(795)=>GND, a(794)=>PWR, a(793)=>GND, a(792)=>PWR, 
      a(791)=>PWR, a(790)=>PWR, a(789)=>GND, a(788)=>GND, a(787)=>GND, 
      a(786)=>GND, a(785)=>PWR, a(784)=>PWR, a(783)=>GND, a(782)=>GND, 
      a(781)=>GND, a(780)=>GND, a(779)=>PWR, a(778)=>PWR, a(777)=>GND, 
      a(776)=>PWR, a(775)=>PWR, a(774)=>PWR, a(773)=>GND, a(772)=>PWR, 
      a(771)=>PWR, a(770)=>GND, a(769)=>GND, a(768)=>PWR, a(767)=>PWR, 
      a(766)=>GND, a(765)=>GND, a(764)=>GND, a(763)=>PWR, a(762)=>GND, 
      a(761)=>PWR, a(760)=>GND, a(759)=>GND, a(758)=>PWR, a(757)=>GND, 
      a(756)=>GND, a(755)=>PWR, a(754)=>GND, a(753)=>PWR, a(752)=>PWR, 
      a(751)=>GND, a(750)=>GND, a(749)=>PWR, a(748)=>PWR, a(747)=>GND, 
      a(746)=>GND, a(745)=>GND, a(744)=>GND, a(743)=>PWR, a(742)=>PWR, 
      a(741)=>PWR, a(740)=>GND, a(739)=>GND, a(738)=>PWR, a(737)=>PWR, 
      a(736)=>PWR, a(735)=>PWR, a(734)=>PWR, a(733)=>PWR, a(732)=>GND, 
      a(731)=>PWR, a(730)=>PWR, a(729)=>PWR, a(728)=>GND, a(727)=>GND, 
      a(726)=>GND, a(725)=>GND, a(724)=>PWR, a(723)=>GND, a(722)=>PWR, 
      a(721)=>PWR, a(720)=>PWR, a(719)=>PWR, a(718)=>PWR, a(717)=>GND, 
      a(716)=>GND, a(715)=>PWR, a(714)=>PWR, a(713)=>PWR, a(712)=>PWR, 
      a(711)=>PWR, a(710)=>PWR, a(709)=>PWR, a(708)=>GND, a(707)=>GND, 
      a(706)=>GND, a(705)=>PWR, a(704)=>PWR, a(703)=>PWR, a(702)=>GND, 
      a(701)=>PWR, a(700)=>GND, a(699)=>PWR, a(698)=>GND, a(697)=>PWR, 
      a(696)=>GND, a(695)=>PWR, a(694)=>PWR, a(693)=>PWR, a(692)=>GND, 
      a(691)=>PWR, a(690)=>PWR, a(689)=>GND, a(688)=>PWR, a(687)=>PWR, 
      a(686)=>PWR, a(685)=>PWR, a(684)=>GND, a(683)=>PWR, a(682)=>PWR, 
      a(681)=>GND, a(680)=>GND, a(679)=>GND, a(678)=>GND, a(677)=>GND, 
      a(676)=>PWR, a(675)=>PWR, a(674)=>PWR, a(673)=>GND, a(672)=>PWR, 
      a(671)=>GND, a(670)=>PWR, a(669)=>GND, a(668)=>PWR, a(667)=>PWR, 
      a(666)=>GND, a(665)=>GND, a(664)=>PWR, a(663)=>PWR, a(662)=>PWR, 
      a(661)=>GND, a(660)=>PWR, a(659)=>GND, a(658)=>PWR, a(657)=>GND, 
      a(656)=>PWR, a(655)=>GND, a(654)=>PWR, a(653)=>GND, a(652)=>PWR, 
      a(651)=>PWR, a(650)=>PWR, a(649)=>PWR, a(648)=>GND, a(647)=>GND, 
      a(646)=>GND, a(645)=>PWR, a(644)=>PWR, a(643)=>PWR, a(642)=>PWR, 
      a(641)=>GND, a(640)=>GND, a(639)=>PWR, a(638)=>GND, a(637)=>PWR, 
      a(636)=>GND, a(635)=>PWR, a(634)=>GND, a(633)=>PWR, a(632)=>GND, 
      a(631)=>PWR, a(630)=>PWR, a(629)=>PWR, a(628)=>PWR, a(627)=>GND, 
      a(626)=>GND, a(625)=>PWR, a(624)=>PWR, a(623)=>PWR, a(622)=>PWR, 
      a(621)=>GND, a(620)=>GND, a(619)=>PWR, a(618)=>GND, a(617)=>GND, 
      a(616)=>GND, a(615)=>GND, a(614)=>GND, a(613)=>GND, a(612)=>GND, 
      a(611)=>GND, a(610)=>PWR, a(609)=>PWR, a(608)=>PWR, a(607)=>PWR, 
      a(606)=>GND, a(605)=>GND, a(604)=>PWR, a(603)=>PWR, a(602)=>PWR, 
      a(601)=>GND, a(600)=>PWR, a(599)=>GND, a(598)=>PWR, a(597)=>PWR, 
      a(596)=>GND, a(595)=>GND, a(594)=>PWR, a(593)=>GND, a(592)=>PWR, 
      a(591)=>GND, a(590)=>PWR, a(589)=>GND, a(588)=>GND, a(587)=>GND, 
      a(586)=>PWR, a(585)=>PWR, a(584)=>GND, a(583)=>GND, a(582)=>PWR, 
      a(581)=>GND, a(580)=>GND, a(579)=>GND, a(578)=>GND, a(577)=>GND, 
      a(576)=>PWR, a(575)=>PWR, a(574)=>GND, a(573)=>PWR, a(572)=>GND, 
      a(571)=>GND, a(570)=>PWR, a(569)=>PWR, a(568)=>PWR, a(567)=>PWR, 
      a(566)=>GND, a(565)=>GND, a(564)=>PWR, a(563)=>PWR, a(562)=>GND, 
      a(561)=>PWR, a(560)=>GND, a(559)=>GND, a(558)=>PWR, a(557)=>PWR, 
      a(556)=>PWR, a(555)=>PWR, a(554)=>GND, a(553)=>PWR, a(552)=>PWR, 
      a(551)=>GND, a(550)=>GND, a(549)=>GND, a(548)=>PWR, a(547)=>PWR, 
      a(546)=>GND, a(545)=>GND, a(544)=>PWR, a(543)=>PWR, a(542)=>GND, 
      a(541)=>GND, a(540)=>GND, a(539)=>PWR, a(538)=>PWR, a(537)=>PWR, 
      a(536)=>PWR, a(535)=>GND, a(534)=>GND, a(533)=>PWR, a(532)=>PWR, 
      a(531)=>GND, a(530)=>GND, a(529)=>GND, a(528)=>GND, a(527)=>PWR, 
      a(526)=>PWR, a(525)=>GND, a(524)=>GND, a(523)=>PWR, a(522)=>GND, 
      a(521)=>GND, a(520)=>PWR, a(519)=>GND, a(518)=>GND, a(517)=>PWR, 
      a(516)=>GND, a(515)=>GND, a(514)=>GND, a(513)=>PWR, a(512)=>GND, 
      a(511)=>GND, a(510)=>GND, a(509)=>GND, a(508)=>PWR, a(507)=>PWR, 
      a(506)=>GND, a(505)=>PWR, a(504)=>PWR, a(503)=>GND, a(502)=>GND, 
      a(501)=>GND, a(500)=>PWR, a(499)=>PWR, a(498)=>PWR, a(497)=>GND, 
      a(496)=>PWR, a(495)=>PWR, a(494)=>PWR, a(493)=>PWR, a(492)=>GND, 
      a(491)=>PWR, a(490)=>PWR, a(489)=>PWR, a(488)=>PWR, a(487)=>GND, 
      a(486)=>GND, a(485)=>GND, a(484)=>PWR, a(483)=>GND, a(482)=>PWR, 
      a(481)=>GND, a(480)=>PWR, a(479)=>GND, a(478)=>PWR, a(477)=>PWR, 
      a(476)=>GND, a(475)=>GND, a(474)=>PWR, a(473)=>GND, a(472)=>PWR, 
      a(471)=>GND, a(470)=>PWR, a(469)=>PWR, a(468)=>PWR, a(467)=>GND, 
      a(466)=>GND, a(465)=>GND, a(464)=>PWR, a(463)=>GND, a(462)=>GND, 
      a(461)=>GND, a(460)=>PWR, a(459)=>GND, a(458)=>PWR, a(457)=>PWR, 
      a(456)=>GND, a(455)=>GND, a(454)=>PWR, a(453)=>GND, a(452)=>PWR, 
      a(451)=>GND, a(450)=>PWR, a(449)=>PWR, a(448)=>GND, a(447)=>GND, 
      a(446)=>PWR, a(445)=>GND, a(444)=>GND, a(443)=>GND, a(442)=>GND, 
      a(441)=>GND, a(440)=>GND, a(439)=>PWR, a(438)=>PWR, a(437)=>PWR, 
      a(436)=>PWR, a(435)=>GND, a(434)=>PWR, a(433)=>GND, a(432)=>GND, 
      a(431)=>PWR, a(430)=>GND, a(429)=>PWR, a(428)=>GND, a(427)=>PWR, 
      a(426)=>GND, a(425)=>GND, a(424)=>PWR, a(423)=>PWR, a(422)=>PWR, 
      a(421)=>PWR, a(420)=>GND, a(419)=>GND, a(418)=>PWR, a(417)=>PWR, 
      a(416)=>GND, a(415)=>PWR, a(414)=>PWR, a(413)=>PWR, a(412)=>PWR, 
      a(411)=>PWR, a(410)=>GND, a(409)=>GND, a(408)=>PWR, a(407)=>GND, 
      a(406)=>GND, a(405)=>GND, a(404)=>GND, a(403)=>GND, a(402)=>PWR, 
      a(401)=>PWR, a(400)=>PWR, a(399)=>GND, a(398)=>GND, a(397)=>GND, 
      a(396)=>PWR, a(395)=>GND, a(394)=>PWR, a(393)=>PWR, a(392)=>PWR, 
      a(391)=>GND, a(390)=>GND, a(389)=>GND, a(388)=>PWR, a(387)=>PWR, 
      a(386)=>GND, a(385)=>PWR, a(384)=>GND, a(383)=>GND, a(382)=>PWR, 
      a(381)=>PWR, a(380)=>GND, a(379)=>GND, a(378)=>PWR, a(377)=>PWR, 
      a(376)=>GND, a(375)=>GND, a(374)=>PWR, a(373)=>GND, a(372)=>PWR, 
      a(371)=>GND, a(370)=>PWR, a(369)=>PWR, a(368)=>GND, a(367)=>PWR, 
      a(366)=>GND, a(365)=>PWR, a(364)=>PWR, a(363)=>PWR, a(362)=>GND, 
      a(361)=>GND, a(360)=>PWR, a(359)=>GND, a(358)=>PWR, a(357)=>GND, 
      a(356)=>PWR, a(355)=>GND, a(354)=>GND, a(353)=>GND, a(352)=>GND, 
      a(351)=>PWR, a(350)=>GND, a(349)=>PWR, a(348)=>PWR, a(347)=>PWR, 
      a(346)=>PWR, a(345)=>PWR, a(344)=>PWR, a(343)=>PWR, a(342)=>PWR, 
      a(341)=>GND, a(340)=>PWR, a(339)=>PWR, a(338)=>PWR, a(337)=>PWR, 
      a(336)=>PWR, a(335)=>GND, a(334)=>GND, a(333)=>GND, a(332)=>GND, 
      a(331)=>GND, a(330)=>GND, a(329)=>GND, a(328)=>PWR, a(327)=>PWR, 
      a(326)=>GND, a(325)=>GND, a(324)=>PWR, a(323)=>PWR, a(322)=>PWR, 
      a(321)=>PWR, a(320)=>GND, a(319)=>GND, a(318)=>GND, a(317)=>PWR, 
      a(316)=>PWR, a(315)=>GND, a(314)=>PWR, a(313)=>GND, a(312)=>PWR, 
      a(311)=>PWR, a(310)=>GND, a(309)=>PWR, a(308)=>PWR, a(307)=>PWR, 
      a(306)=>PWR, a(305)=>PWR, a(304)=>PWR, a(303)=>PWR, a(302)=>PWR, 
      a(301)=>PWR, a(300)=>PWR, a(299)=>GND, a(298)=>PWR, a(297)=>GND, 
      a(296)=>PWR, a(295)=>GND, a(294)=>GND, a(293)=>GND, a(292)=>GND, 
      a(291)=>PWR, a(290)=>GND, a(289)=>GND, a(288)=>GND, a(287)=>PWR, 
      a(286)=>PWR, a(285)=>PWR, a(284)=>GND, a(283)=>GND, a(282)=>PWR, 
      a(281)=>GND, a(280)=>GND, a(279)=>GND, a(278)=>GND, a(277)=>PWR, 
      a(276)=>GND, a(275)=>PWR, a(274)=>PWR, a(273)=>GND, a(272)=>PWR, 
      a(271)=>GND, a(270)=>PWR, a(269)=>GND, a(268)=>PWR, a(267)=>PWR, 
      a(266)=>GND, a(265)=>PWR, a(264)=>PWR, a(263)=>GND, a(262)=>GND, 
      a(261)=>GND, a(260)=>PWR, a(259)=>PWR, a(258)=>GND, a(257)=>GND, 
      a(256)=>GND, a(255)=>GND, a(254)=>PWR, a(253)=>GND, a(252)=>GND, 
      a(251)=>PWR, a(250)=>PWR, a(249)=>GND, a(248)=>GND, a(247)=>PWR, 
      a(246)=>PWR, a(245)=>PWR, a(244)=>PWR, a(243)=>PWR, a(242)=>PWR, 
      a(241)=>GND, a(240)=>PWR, a(239)=>GND, a(238)=>GND, a(237)=>GND, 
      a(236)=>PWR, a(235)=>PWR, a(234)=>PWR, a(233)=>GND, a(232)=>PWR, 
      a(231)=>GND, a(230)=>GND, a(229)=>GND, a(228)=>GND, a(227)=>GND, 
      a(226)=>GND, a(225)=>GND, a(224)=>PWR, a(223)=>PWR, a(222)=>PWR, 
      a(221)=>PWR, a(220)=>GND, a(219)=>GND, a(218)=>GND, a(217)=>PWR, 
      a(216)=>GND, a(215)=>PWR, a(214)=>GND, a(213)=>PWR, a(212)=>PWR, 
      a(211)=>GND, a(210)=>GND, a(209)=>GND, a(208)=>GND, a(207)=>PWR, 
      a(206)=>PWR, a(205)=>GND, a(204)=>PWR, a(203)=>GND, a(202)=>GND, 
      a(201)=>PWR, a(200)=>PWR, a(199)=>PWR, a(198)=>PWR, a(197)=>GND, 
      a(196)=>GND, a(195)=>GND, a(194)=>GND, a(193)=>GND, a(192)=>PWR, 
      a(191)=>PWR, a(190)=>GND, a(189)=>PWR, a(188)=>PWR, a(187)=>GND, 
      a(186)=>GND, a(185)=>GND, a(184)=>PWR, a(183)=>GND, a(182)=>PWR, 
      a(181)=>GND, a(180)=>PWR, a(179)=>GND, a(178)=>GND, a(177)=>GND, 
      a(176)=>PWR, a(175)=>PWR, a(174)=>GND, a(173)=>PWR, a(172)=>GND, 
      a(171)=>PWR, a(170)=>GND, a(169)=>GND, a(168)=>GND, a(167)=>PWR, 
      a(166)=>PWR, a(165)=>PWR, a(164)=>GND, a(163)=>PWR, a(162)=>GND, 
      a(161)=>GND, a(160)=>PWR, a(159)=>GND, a(158)=>GND, a(157)=>PWR, 
      a(156)=>GND, a(155)=>GND, a(154)=>PWR, a(153)=>GND, a(152)=>GND, 
      a(151)=>GND, a(150)=>PWR, a(149)=>GND, a(148)=>PWR, a(147)=>GND, 
      a(146)=>GND, a(145)=>PWR, a(144)=>PWR, a(143)=>GND, a(142)=>PWR, 
      a(141)=>PWR, a(140)=>PWR, a(139)=>GND, a(138)=>GND, a(137)=>PWR, 
      a(136)=>GND, a(135)=>PWR, a(134)=>PWR, a(133)=>GND, a(132)=>GND, 
      a(131)=>GND, a(130)=>PWR, a(129)=>PWR, a(128)=>PWR, a(127)=>PWR, 
      a(126)=>PWR, a(125)=>PWR, a(124)=>GND, a(123)=>GND, a(122)=>GND, 
      a(121)=>GND, a(120)=>GND, a(119)=>PWR, a(118)=>PWR, a(117)=>PWR, 
      a(116)=>PWR, a(115)=>PWR, a(114)=>PWR, a(113)=>PWR, a(112)=>PWR, 
      a(111)=>PWR, a(110)=>GND, a(109)=>GND, a(108)=>GND, a(107)=>PWR, 
      a(106)=>PWR, a(105)=>GND, a(104)=>PWR, a(103)=>GND, a(102)=>GND, 
      a(101)=>GND, a(100)=>GND, a(99)=>PWR, a(98)=>GND, a(97)=>PWR, a(96)=>
      GND, a(95)=>PWR, a(94)=>GND, a(93)=>GND, a(92)=>GND, a(91)=>PWR, a(90)
      =>GND, a(89)=>GND, a(88)=>PWR, a(87)=>PWR, a(86)=>GND, a(85)=>PWR, 
      a(84)=>PWR, a(83)=>GND, a(82)=>PWR, a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, 
      a(78)=>GND, a(77)=>PWR, a(76)=>GND, a(75)=>GND, a(74)=>PWR, a(73)=>GND, 
      a(72)=>GND, a(71)=>PWR, a(70)=>GND, a(69)=>GND, a(68)=>PWR, a(67)=>GND, 
      a(66)=>GND, a(65)=>PWR, a(64)=>GND, a(63)=>GND, a(62)=>GND, a(61)=>PWR, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>GND, a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>GND, a(53)=>PWR, a(52)=>PWR, a(51)=>GND, a(50)=>PWR, a(49)=>PWR, 
      a(48)=>PWR, a(47)=>GND, a(46)=>GND, a(45)=>PWR, a(44)=>GND, a(43)=>GND, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>PWR, a(39)=>PWR, a(38)=>PWR, a(37)=>GND, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>PWR, 
      a(30)=>GND, a(29)=>PWR, a(28)=>PWR, a(27)=>PWR, a(26)=>PWR, a(25)=>GND, 
      a(24)=>PWR, a(23)=>GND, a(22)=>PWR, a(21)=>GND, a(20)=>PWR, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>PWR, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>GND, 
      a(6)=>PWR, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(1023)=>GND, b(1022)=>GND, b(1021)=>GND, b(1020)=>GND, b(1019)
      =>GND, b(1018)=>GND, b(1017)=>GND, b(1016)=>GND, b(1015)=>GND, b(1014)
      =>GND, b(1013)=>GND, b(1012)=>GND, b(1011)=>GND, b(1010)=>GND, b(1009)
      =>GND, b(1008)=>GND, b(1007)=>GND, b(1006)=>GND, b(1005)=>GND, b(1004)
      =>GND, b(1003)=>GND, b(1002)=>GND, b(1001)=>GND, b(1000)=>GND, b(999)
      =>GND, b(998)=>GND, b(997)=>GND, b(996)=>GND, b(995)=>GND, b(994)=>GND, 
      b(993)=>GND, b(992)=>GND, b(991)=>GND, b(990)=>GND, b(989)=>GND, 
      b(988)=>GND, b(987)=>GND, b(986)=>GND, b(985)=>GND, b(984)=>GND, 
      b(983)=>GND, b(982)=>GND, b(981)=>GND, b(980)=>GND, b(979)=>GND, 
      b(978)=>GND, b(977)=>GND, b(976)=>GND, b(975)=>GND, b(974)=>GND, 
      b(973)=>GND, b(972)=>GND, b(971)=>GND, b(970)=>GND, b(969)=>GND, 
      b(968)=>GND, b(967)=>GND, b(966)=>GND, b(965)=>GND, b(964)=>GND, 
      b(963)=>GND, b(962)=>GND, b(961)=>GND, b(960)=>GND, b(959)=>GND, 
      b(958)=>GND, b(957)=>GND, b(956)=>GND, b(955)=>GND, b(954)=>GND, 
      b(953)=>GND, b(952)=>GND, b(951)=>GND, b(950)=>GND, b(949)=>GND, 
      b(948)=>GND, b(947)=>GND, b(946)=>GND, b(945)=>GND, b(944)=>GND, 
      b(943)=>GND, b(942)=>GND, b(941)=>GND, b(940)=>GND, b(939)=>GND, 
      b(938)=>GND, b(937)=>GND, b(936)=>GND, b(935)=>GND, b(934)=>GND, 
      b(933)=>GND, b(932)=>GND, b(931)=>GND, b(930)=>GND, b(929)=>GND, 
      b(928)=>GND, b(927)=>GND, b(926)=>GND, b(925)=>GND, b(924)=>GND, 
      b(923)=>GND, b(922)=>GND, b(921)=>GND, b(920)=>GND, b(919)=>GND, 
      b(918)=>GND, b(917)=>GND, b(916)=>GND, b(915)=>GND, b(914)=>GND, 
      b(913)=>GND, b(912)=>GND, b(911)=>GND, b(910)=>GND, b(909)=>GND, 
      b(908)=>GND, b(907)=>GND, b(906)=>GND, b(905)=>GND, b(904)=>GND, 
      b(903)=>GND, b(902)=>GND, b(901)=>GND, b(900)=>GND, b(899)=>GND, 
      b(898)=>GND, b(897)=>GND, b(896)=>GND, b(895)=>GND, b(894)=>GND, 
      b(893)=>GND, b(892)=>GND, b(891)=>GND, b(890)=>GND, b(889)=>GND, 
      b(888)=>GND, b(887)=>GND, b(886)=>GND, b(885)=>GND, b(884)=>GND, 
      b(883)=>GND, b(882)=>GND, b(881)=>GND, b(880)=>GND, b(879)=>GND, 
      b(878)=>GND, b(877)=>GND, b(876)=>GND, b(875)=>GND, b(874)=>GND, 
      b(873)=>GND, b(872)=>GND, b(871)=>GND, b(870)=>GND, b(869)=>GND, 
      b(868)=>GND, b(867)=>GND, b(866)=>GND, b(865)=>GND, b(864)=>GND, 
      b(863)=>GND, b(862)=>GND, b(861)=>GND, b(860)=>GND, b(859)=>GND, 
      b(858)=>GND, b(857)=>GND, b(856)=>GND, b(855)=>GND, b(854)=>GND, 
      b(853)=>GND, b(852)=>GND, b(851)=>GND, b(850)=>GND, b(849)=>GND, 
      b(848)=>GND, b(847)=>GND, b(846)=>GND, b(845)=>GND, b(844)=>GND, 
      b(843)=>GND, b(842)=>GND, b(841)=>GND, b(840)=>GND, b(839)=>GND, 
      b(838)=>GND, b(837)=>GND, b(836)=>GND, b(835)=>GND, b(834)=>GND, 
      b(833)=>GND, b(832)=>GND, b(831)=>GND, b(830)=>GND, b(829)=>GND, 
      b(828)=>GND, b(827)=>GND, b(826)=>GND, b(825)=>GND, b(824)=>GND, 
      b(823)=>GND, b(822)=>GND, b(821)=>GND, b(820)=>GND, b(819)=>GND, 
      b(818)=>GND, b(817)=>GND, b(816)=>GND, b(815)=>GND, b(814)=>GND, 
      b(813)=>GND, b(812)=>GND, b(811)=>GND, b(810)=>GND, b(809)=>GND, 
      b(808)=>GND, b(807)=>GND, b(806)=>GND, b(805)=>GND, b(804)=>GND, 
      b(803)=>GND, b(802)=>GND, b(801)=>GND, b(800)=>GND, b(799)=>GND, 
      b(798)=>GND, b(797)=>GND, b(796)=>GND, b(795)=>GND, b(794)=>GND, 
      b(793)=>GND, b(792)=>GND, b(791)=>GND, b(790)=>GND, b(789)=>GND, 
      b(788)=>GND, b(787)=>GND, b(786)=>GND, b(785)=>GND, b(784)=>GND, 
      b(783)=>GND, b(782)=>GND, b(781)=>GND, b(780)=>GND, b(779)=>GND, 
      b(778)=>GND, b(777)=>GND, b(776)=>GND, b(775)=>GND, b(774)=>GND, 
      b(773)=>GND, b(772)=>GND, b(771)=>GND, b(770)=>GND, b(769)=>GND, 
      b(768)=>GND, b(767)=>GND, b(766)=>GND, b(765)=>GND, b(764)=>GND, 
      b(763)=>GND, b(762)=>GND, b(761)=>GND, b(760)=>GND, b(759)=>GND, 
      b(758)=>GND, b(757)=>GND, b(756)=>GND, b(755)=>GND, b(754)=>GND, 
      b(753)=>GND, b(752)=>GND, b(751)=>GND, b(750)=>GND, b(749)=>GND, 
      b(748)=>GND, b(747)=>GND, b(746)=>GND, b(745)=>GND, b(744)=>GND, 
      b(743)=>GND, b(742)=>GND, b(741)=>GND, b(740)=>GND, b(739)=>GND, 
      b(738)=>GND, b(737)=>GND, b(736)=>GND, b(735)=>GND, b(734)=>GND, 
      b(733)=>GND, b(732)=>GND, b(731)=>GND, b(730)=>GND, b(729)=>GND, 
      b(728)=>GND, b(727)=>GND, b(726)=>GND, b(725)=>GND, b(724)=>GND, 
      b(723)=>GND, b(722)=>GND, b(721)=>GND, b(720)=>GND, b(719)=>GND, 
      b(718)=>GND, b(717)=>GND, b(716)=>GND, b(715)=>GND, b(714)=>GND, 
      b(713)=>GND, b(712)=>GND, b(711)=>GND, b(710)=>GND, b(709)=>GND, 
      b(708)=>GND, b(707)=>GND, b(706)=>GND, b(705)=>GND, b(704)=>GND, 
      b(703)=>GND, b(702)=>GND, b(701)=>GND, b(700)=>GND, b(699)=>GND, 
      b(698)=>GND, b(697)=>GND, b(696)=>GND, b(695)=>GND, b(694)=>GND, 
      b(693)=>GND, b(692)=>GND, b(691)=>GND, b(690)=>GND, b(689)=>GND, 
      b(688)=>GND, b(687)=>GND, b(686)=>GND, b(685)=>GND, b(684)=>GND, 
      b(683)=>GND, b(682)=>GND, b(681)=>GND, b(680)=>GND, b(679)=>GND, 
      b(678)=>GND, b(677)=>GND, b(676)=>GND, b(675)=>GND, b(674)=>GND, 
      b(673)=>GND, b(672)=>GND, b(671)=>GND, b(670)=>GND, b(669)=>GND, 
      b(668)=>GND, b(667)=>GND, b(666)=>GND, b(665)=>GND, b(664)=>GND, 
      b(663)=>GND, b(662)=>GND, b(661)=>GND, b(660)=>GND, b(659)=>GND, 
      b(658)=>GND, b(657)=>GND, b(656)=>GND, b(655)=>GND, b(654)=>GND, 
      b(653)=>GND, b(652)=>GND, b(651)=>GND, b(650)=>GND, b(649)=>GND, 
      b(648)=>GND, b(647)=>GND, b(646)=>GND, b(645)=>GND, b(644)=>GND, 
      b(643)=>GND, b(642)=>GND, b(641)=>GND, b(640)=>GND, b(639)=>GND, 
      b(638)=>GND, b(637)=>GND, b(636)=>GND, b(635)=>GND, b(634)=>GND, 
      b(633)=>GND, b(632)=>GND, b(631)=>GND, b(630)=>GND, b(629)=>GND, 
      b(628)=>GND, b(627)=>GND, b(626)=>GND, b(625)=>GND, b(624)=>GND, 
      b(623)=>GND, b(622)=>GND, b(621)=>GND, b(620)=>GND, b(619)=>GND, 
      b(618)=>GND, b(617)=>GND, b(616)=>GND, b(615)=>GND, b(614)=>GND, 
      b(613)=>GND, b(612)=>GND, b(611)=>GND, b(610)=>GND, b(609)=>GND, 
      b(608)=>GND, b(607)=>GND, b(606)=>GND, b(605)=>GND, b(604)=>GND, 
      b(603)=>GND, b(602)=>GND, b(601)=>GND, b(600)=>GND, b(599)=>GND, 
      b(598)=>GND, b(597)=>GND, b(596)=>GND, b(595)=>GND, b(594)=>GND, 
      b(593)=>GND, b(592)=>GND, b(591)=>GND, b(590)=>GND, b(589)=>GND, 
      b(588)=>GND, b(587)=>GND, b(586)=>GND, b(585)=>GND, b(584)=>GND, 
      b(583)=>GND, b(582)=>GND, b(581)=>GND, b(580)=>GND, b(579)=>GND, 
      b(578)=>GND, b(577)=>GND, b(576)=>GND, b(575)=>GND, b(574)=>GND, 
      b(573)=>GND, b(572)=>GND, b(571)=>GND, b(570)=>GND, b(569)=>GND, 
      b(568)=>GND, b(567)=>GND, b(566)=>GND, b(565)=>GND, b(564)=>GND, 
      b(563)=>GND, b(562)=>GND, b(561)=>GND, b(560)=>GND, b(559)=>GND, 
      b(558)=>GND, b(557)=>GND, b(556)=>GND, b(555)=>GND, b(554)=>GND, 
      b(553)=>GND, b(552)=>GND, b(551)=>GND, b(550)=>GND, b(549)=>GND, 
      b(548)=>GND, b(547)=>GND, b(546)=>GND, b(545)=>GND, b(544)=>GND, 
      b(543)=>GND, b(542)=>GND, b(541)=>GND, b(540)=>GND, b(539)=>GND, 
      b(538)=>GND, b(537)=>GND, b(536)=>GND, b(535)=>GND, b(534)=>GND, 
      b(533)=>GND, b(532)=>GND, b(531)=>GND, b(530)=>GND, b(529)=>GND, 
      b(528)=>GND, b(527)=>GND, b(526)=>GND, b(525)=>GND, b(524)=>GND, 
      b(523)=>GND, b(522)=>GND, b(521)=>GND, b(520)=>GND, b(519)=>GND, 
      b(518)=>GND, b(517)=>GND, b(516)=>GND, b(515)=>GND, b(514)=>GND, 
      b(513)=>GND, b(512)=>GND, b(511)=>GND, b(510)=>GND, b(509)=>GND, 
      b(508)=>GND, b(507)=>GND, b(506)=>GND, b(505)=>GND, b(504)=>GND, 
      b(503)=>GND, b(502)=>GND, b(501)=>GND, b(500)=>GND, b(499)=>GND, 
      b(498)=>GND, b(497)=>GND, b(496)=>GND, b(495)=>GND, b(494)=>GND, 
      b(493)=>GND, b(492)=>GND, b(491)=>GND, b(490)=>GND, b(489)=>GND, 
      b(488)=>GND, b(487)=>GND, b(486)=>GND, b(485)=>GND, b(484)=>GND, 
      b(483)=>GND, b(482)=>GND, b(481)=>GND, b(480)=>GND, b(479)=>GND, 
      b(478)=>GND, b(477)=>GND, b(476)=>GND, b(475)=>GND, b(474)=>GND, 
      b(473)=>GND, b(472)=>GND, b(471)=>GND, b(470)=>GND, b(469)=>GND, 
      b(468)=>GND, b(467)=>GND, b(466)=>GND, b(465)=>GND, b(464)=>GND, 
      b(463)=>GND, b(462)=>GND, b(461)=>GND, b(460)=>GND, b(459)=>GND, 
      b(458)=>GND, b(457)=>GND, b(456)=>GND, b(455)=>GND, b(454)=>GND, 
      b(453)=>GND, b(452)=>GND, b(451)=>GND, b(450)=>GND, b(449)=>GND, 
      b(448)=>GND, b(447)=>GND, b(446)=>GND, b(445)=>GND, b(444)=>GND, 
      b(443)=>GND, b(442)=>GND, b(441)=>GND, b(440)=>GND, b(439)=>GND, 
      b(438)=>GND, b(437)=>GND, b(436)=>GND, b(435)=>GND, b(434)=>GND, 
      b(433)=>GND, b(432)=>GND, b(431)=>GND, b(430)=>GND, b(429)=>GND, 
      b(428)=>GND, b(427)=>GND, b(426)=>GND, b(425)=>GND, b(424)=>GND, 
      b(423)=>GND, b(422)=>GND, b(421)=>GND, b(420)=>GND, b(419)=>GND, 
      b(418)=>GND, b(417)=>GND, b(416)=>GND, b(415)=>GND, b(414)=>GND, 
      b(413)=>GND, b(412)=>GND, b(411)=>GND, b(410)=>GND, b(409)=>GND, 
      b(408)=>GND, b(407)=>GND, b(406)=>GND, b(405)=>GND, b(404)=>GND, 
      b(403)=>GND, b(402)=>GND, b(401)=>GND, b(400)=>GND, b(399)=>GND, 
      b(398)=>GND, b(397)=>GND, b(396)=>GND, b(395)=>GND, b(394)=>GND, 
      b(393)=>GND, b(392)=>GND, b(391)=>GND, b(390)=>GND, b(389)=>GND, 
      b(388)=>GND, b(387)=>GND, b(386)=>GND, b(385)=>GND, b(384)=>GND, 
      b(383)=>GND, b(382)=>GND, b(381)=>GND, b(380)=>GND, b(379)=>GND, 
      b(378)=>GND, b(377)=>GND, b(376)=>GND, b(375)=>GND, b(374)=>GND, 
      b(373)=>GND, b(372)=>GND, b(371)=>GND, b(370)=>GND, b(369)=>GND, 
      b(368)=>GND, b(367)=>GND, b(366)=>GND, b(365)=>GND, b(364)=>GND, 
      b(363)=>GND, b(362)=>GND, b(361)=>GND, b(360)=>GND, b(359)=>GND, 
      b(358)=>GND, b(357)=>GND, b(356)=>GND, b(355)=>GND, b(354)=>GND, 
      b(353)=>GND, b(352)=>GND, b(351)=>GND, b(350)=>GND, b(349)=>GND, 
      b(348)=>GND, b(347)=>GND, b(346)=>GND, b(345)=>GND, b(344)=>GND, 
      b(343)=>GND, b(342)=>GND, b(341)=>GND, b(340)=>GND, b(339)=>GND, 
      b(338)=>GND, b(337)=>GND, b(336)=>GND, b(335)=>GND, b(334)=>GND, 
      b(333)=>GND, b(332)=>GND, b(331)=>GND, b(330)=>GND, b(329)=>GND, 
      b(328)=>GND, b(327)=>GND, b(326)=>GND, b(325)=>GND, b(324)=>GND, 
      b(323)=>GND, b(322)=>GND, b(321)=>GND, b(320)=>GND, b(319)=>GND, 
      b(318)=>GND, b(317)=>GND, b(316)=>GND, b(315)=>GND, b(314)=>GND, 
      b(313)=>GND, b(312)=>GND, b(311)=>GND, b(310)=>GND, b(309)=>GND, 
      b(308)=>GND, b(307)=>GND, b(306)=>GND, b(305)=>GND, b(304)=>GND, 
      b(303)=>GND, b(302)=>GND, b(301)=>GND, b(300)=>GND, b(299)=>GND, 
      b(298)=>GND, b(297)=>GND, b(296)=>GND, b(295)=>GND, b(294)=>GND, 
      b(293)=>GND, b(292)=>GND, b(291)=>GND, b(290)=>GND, b(289)=>GND, 
      b(288)=>GND, b(287)=>GND, b(286)=>GND, b(285)=>GND, b(284)=>GND, 
      b(283)=>GND, b(282)=>GND, b(281)=>GND, b(280)=>GND, b(279)=>GND, 
      b(278)=>GND, b(277)=>GND, b(276)=>GND, b(275)=>GND, b(274)=>GND, 
      b(273)=>GND, b(272)=>GND, b(271)=>GND, b(270)=>GND, b(269)=>GND, 
      b(268)=>GND, b(267)=>GND, b(266)=>GND, b(265)=>GND, b(264)=>GND, 
      b(263)=>GND, b(262)=>GND, b(261)=>GND, b(260)=>GND, b(259)=>GND, 
      b(258)=>GND, b(257)=>GND, b(256)=>GND, b(255)=>GND, b(254)=>GND, 
      b(253)=>GND, b(252)=>GND, b(251)=>GND, b(250)=>GND, b(249)=>GND, 
      b(248)=>GND, b(247)=>GND, b(246)=>GND, b(245)=>GND, b(244)=>GND, 
      b(243)=>GND, b(242)=>GND, b(241)=>GND, b(240)=>GND, b(239)=>GND, 
      b(238)=>GND, b(237)=>GND, b(236)=>GND, b(235)=>GND, b(234)=>GND, 
      b(233)=>GND, b(232)=>GND, b(231)=>GND, b(230)=>GND, b(229)=>GND, 
      b(228)=>GND, b(227)=>GND, b(226)=>GND, b(225)=>GND, b(224)=>GND, 
      b(223)=>GND, b(222)=>GND, b(221)=>GND, b(220)=>GND, b(219)=>GND, 
      b(218)=>GND, b(217)=>GND, b(216)=>GND, b(215)=>GND, b(214)=>GND, 
      b(213)=>GND, b(212)=>GND, b(211)=>GND, b(210)=>GND, b(209)=>GND, 
      b(208)=>GND, b(207)=>GND, b(206)=>GND, b(205)=>GND, b(204)=>GND, 
      b(203)=>GND, b(202)=>GND, b(201)=>GND, b(200)=>GND, b(199)=>GND, 
      b(198)=>GND, b(197)=>GND, b(196)=>GND, b(195)=>GND, b(194)=>GND, 
      b(193)=>GND, b(192)=>GND, b(191)=>GND, b(190)=>GND, b(189)=>GND, 
      b(188)=>GND, b(187)=>GND, b(186)=>GND, b(185)=>GND, b(184)=>GND, 
      b(183)=>GND, b(182)=>GND, b(181)=>GND, b(180)=>GND, b(179)=>GND, 
      b(178)=>GND, b(177)=>GND, b(176)=>GND, b(175)=>GND, b(174)=>GND, 
      b(173)=>GND, b(172)=>GND, b(171)=>GND, b(170)=>GND, b(169)=>GND, 
      b(168)=>GND, b(167)=>GND, b(166)=>GND, b(165)=>GND, b(164)=>GND, 
      b(163)=>GND, b(162)=>GND, b(161)=>GND, b(160)=>GND, b(159)=>GND, 
      b(158)=>GND, b(157)=>GND, b(156)=>GND, b(155)=>GND, b(154)=>GND, 
      b(153)=>GND, b(152)=>GND, b(151)=>GND, b(150)=>GND, b(149)=>GND, 
      b(148)=>GND, b(147)=>GND, b(146)=>GND, b(145)=>GND, b(144)=>GND, 
      b(143)=>GND, b(142)=>GND, b(141)=>GND, b(140)=>GND, b(139)=>GND, 
      b(138)=>GND, b(137)=>GND, b(136)=>GND, b(135)=>GND, b(134)=>GND, 
      b(133)=>GND, b(132)=>GND, b(131)=>GND, b(130)=>GND, b(129)=>GND, 
      b(128)=>GND, b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, 
      b(123)=>GND, b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, 
      b(118)=>GND, b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, 
      b(113)=>GND, b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, 
      b(108)=>GND, b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, 
      b(103)=>GND, b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)
      =>GND, b(97)=>GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, 
      b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, 
      b(86)=>GND, b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, 
      b(80)=>GND, b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, 
      b(74)=>GND, b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, 
      b(68)=>GND, b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, 
      b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, 
      b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, 
      b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, 
      b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, 
      b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, 
      b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, 
      b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, 
      b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>
      address(9), b(8)=>address(8), b(7)=>address(7), b(6)=>address(6), b(5)
      =>address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), 
      b(1)=>address(1), b(0)=>address(0), d=>q(7));
   modgen_mux_14 : mux_1024u_1024u port map ( a(1023)=>PWR, a(1022)=>PWR, 
      a(1021)=>PWR, a(1020)=>GND, a(1019)=>GND, a(1018)=>PWR, a(1017)=>GND, 
      a(1016)=>PWR, a(1015)=>PWR, a(1014)=>GND, a(1013)=>PWR, a(1012)=>PWR, 
      a(1011)=>PWR, a(1010)=>PWR, a(1009)=>PWR, a(1008)=>GND, a(1007)=>PWR, 
      a(1006)=>PWR, a(1005)=>GND, a(1004)=>PWR, a(1003)=>PWR, a(1002)=>GND, 
      a(1001)=>GND, a(1000)=>GND, a(999)=>PWR, a(998)=>PWR, a(997)=>GND, 
      a(996)=>GND, a(995)=>PWR, a(994)=>PWR, a(993)=>PWR, a(992)=>PWR, 
      a(991)=>GND, a(990)=>GND, a(989)=>GND, a(988)=>GND, a(987)=>PWR, 
      a(986)=>GND, a(985)=>PWR, a(984)=>GND, a(983)=>PWR, a(982)=>PWR, 
      a(981)=>PWR, a(980)=>GND, a(979)=>GND, a(978)=>GND, a(977)=>GND, 
      a(976)=>GND, a(975)=>PWR, a(974)=>GND, a(973)=>PWR, a(972)=>PWR, 
      a(971)=>GND, a(970)=>GND, a(969)=>GND, a(968)=>PWR, a(967)=>GND, 
      a(966)=>PWR, a(965)=>PWR, a(964)=>PWR, a(963)=>PWR, a(962)=>PWR, 
      a(961)=>PWR, a(960)=>PWR, a(959)=>GND, a(958)=>GND, a(957)=>GND, 
      a(956)=>GND, a(955)=>GND, a(954)=>PWR, a(953)=>PWR, a(952)=>GND, 
      a(951)=>PWR, a(950)=>PWR, a(949)=>GND, a(948)=>GND, a(947)=>GND, 
      a(946)=>GND, a(945)=>GND, a(944)=>PWR, a(943)=>GND, a(942)=>PWR, 
      a(941)=>PWR, a(940)=>PWR, a(939)=>PWR, a(938)=>GND, a(937)=>PWR, 
      a(936)=>GND, a(935)=>PWR, a(934)=>PWR, a(933)=>GND, a(932)=>PWR, 
      a(931)=>PWR, a(930)=>PWR, a(929)=>GND, a(928)=>PWR, a(927)=>GND, 
      a(926)=>GND, a(925)=>GND, a(924)=>PWR, a(923)=>GND, a(922)=>PWR, 
      a(921)=>PWR, a(920)=>GND, a(919)=>GND, a(918)=>PWR, a(917)=>GND, 
      a(916)=>GND, a(915)=>GND, a(914)=>GND, a(913)=>GND, a(912)=>GND, 
      a(911)=>GND, a(910)=>GND, a(909)=>PWR, a(908)=>PWR, a(907)=>PWR, 
      a(906)=>PWR, a(905)=>GND, a(904)=>PWR, a(903)=>GND, a(902)=>GND, 
      a(901)=>GND, a(900)=>PWR, a(899)=>GND, a(898)=>PWR, a(897)=>GND, 
      a(896)=>PWR, a(895)=>PWR, a(894)=>PWR, a(893)=>GND, a(892)=>GND, 
      a(891)=>GND, a(890)=>PWR, a(889)=>PWR, a(888)=>PWR, a(887)=>GND, 
      a(886)=>GND, a(885)=>GND, a(884)=>PWR, a(883)=>GND, a(882)=>PWR, 
      a(881)=>PWR, a(880)=>PWR, a(879)=>GND, a(878)=>PWR, a(877)=>PWR, 
      a(876)=>GND, a(875)=>PWR, a(874)=>PWR, a(873)=>GND, a(872)=>PWR, 
      a(871)=>GND, a(870)=>GND, a(869)=>PWR, a(868)=>GND, a(867)=>GND, 
      a(866)=>PWR, a(865)=>GND, a(864)=>PWR, a(863)=>GND, a(862)=>GND, 
      a(861)=>GND, a(860)=>PWR, a(859)=>PWR, a(858)=>GND, a(857)=>GND, 
      a(856)=>GND, a(855)=>PWR, a(854)=>PWR, a(853)=>PWR, a(852)=>PWR, 
      a(851)=>GND, a(850)=>PWR, a(849)=>GND, a(848)=>PWR, a(847)=>PWR, 
      a(846)=>PWR, a(845)=>PWR, a(844)=>PWR, a(843)=>GND, a(842)=>PWR, 
      a(841)=>GND, a(840)=>GND, a(839)=>GND, a(838)=>PWR, a(837)=>GND, 
      a(836)=>PWR, a(835)=>GND, a(834)=>GND, a(833)=>GND, a(832)=>GND, 
      a(831)=>GND, a(830)=>PWR, a(829)=>GND, a(828)=>PWR, a(827)=>GND, 
      a(826)=>GND, a(825)=>GND, a(824)=>GND, a(823)=>GND, a(822)=>GND, 
      a(821)=>PWR, a(820)=>GND, a(819)=>GND, a(818)=>GND, a(817)=>PWR, 
      a(816)=>GND, a(815)=>PWR, a(814)=>PWR, a(813)=>PWR, a(812)=>GND, 
      a(811)=>PWR, a(810)=>PWR, a(809)=>PWR, a(808)=>GND, a(807)=>GND, 
      a(806)=>PWR, a(805)=>GND, a(804)=>PWR, a(803)=>GND, a(802)=>GND, 
      a(801)=>PWR, a(800)=>PWR, a(799)=>GND, a(798)=>PWR, a(797)=>PWR, 
      a(796)=>PWR, a(795)=>PWR, a(794)=>GND, a(793)=>PWR, a(792)=>GND, 
      a(791)=>PWR, a(790)=>PWR, a(789)=>PWR, a(788)=>GND, a(787)=>GND, 
      a(786)=>GND, a(785)=>GND, a(784)=>GND, a(783)=>PWR, a(782)=>GND, 
      a(781)=>GND, a(780)=>PWR, a(779)=>PWR, a(778)=>GND, a(777)=>GND, 
      a(776)=>GND, a(775)=>GND, a(774)=>GND, a(773)=>GND, a(772)=>PWR, 
      a(771)=>PWR, a(770)=>PWR, a(769)=>GND, a(768)=>GND, a(767)=>GND, 
      a(766)=>PWR, a(765)=>PWR, a(764)=>PWR, a(763)=>GND, a(762)=>GND, 
      a(761)=>GND, a(760)=>GND, a(759)=>PWR, a(758)=>PWR, a(757)=>PWR, 
      a(756)=>PWR, a(755)=>GND, a(754)=>GND, a(753)=>GND, a(752)=>PWR, 
      a(751)=>PWR, a(750)=>GND, a(749)=>PWR, a(748)=>PWR, a(747)=>GND, 
      a(746)=>GND, a(745)=>GND, a(744)=>PWR, a(743)=>GND, a(742)=>PWR, 
      a(741)=>GND, a(740)=>GND, a(739)=>PWR, a(738)=>PWR, a(737)=>GND, 
      a(736)=>PWR, a(735)=>GND, a(734)=>PWR, a(733)=>PWR, a(732)=>GND, 
      a(731)=>GND, a(730)=>PWR, a(729)=>GND, a(728)=>GND, a(727)=>PWR, 
      a(726)=>GND, a(725)=>PWR, a(724)=>GND, a(723)=>GND, a(722)=>PWR, 
      a(721)=>PWR, a(720)=>GND, a(719)=>GND, a(718)=>PWR, a(717)=>GND, 
      a(716)=>PWR, a(715)=>PWR, a(714)=>GND, a(713)=>GND, a(712)=>PWR, 
      a(711)=>PWR, a(710)=>PWR, a(709)=>PWR, a(708)=>GND, a(707)=>GND, 
      a(706)=>GND, a(705)=>GND, a(704)=>PWR, a(703)=>PWR, a(702)=>GND, 
      a(701)=>GND, a(700)=>GND, a(699)=>PWR, a(698)=>GND, a(697)=>GND, 
      a(696)=>PWR, a(695)=>GND, a(694)=>GND, a(693)=>GND, a(692)=>GND, 
      a(691)=>PWR, a(690)=>PWR, a(689)=>GND, a(688)=>GND, a(687)=>PWR, 
      a(686)=>GND, a(685)=>PWR, a(684)=>PWR, a(683)=>GND, a(682)=>PWR, 
      a(681)=>GND, a(680)=>PWR, a(679)=>PWR, a(678)=>GND, a(677)=>PWR, 
      a(676)=>GND, a(675)=>PWR, a(674)=>PWR, a(673)=>GND, a(672)=>GND, 
      a(671)=>PWR, a(670)=>GND, a(669)=>GND, a(668)=>PWR, a(667)=>GND, 
      a(666)=>PWR, a(665)=>PWR, a(664)=>GND, a(663)=>GND, a(662)=>GND, 
      a(661)=>GND, a(660)=>PWR, a(659)=>GND, a(658)=>GND, a(657)=>GND, 
      a(656)=>PWR, a(655)=>PWR, a(654)=>GND, a(653)=>GND, a(652)=>PWR, 
      a(651)=>PWR, a(650)=>PWR, a(649)=>GND, a(648)=>PWR, a(647)=>PWR, 
      a(646)=>GND, a(645)=>GND, a(644)=>PWR, a(643)=>GND, a(642)=>GND, 
      a(641)=>PWR, a(640)=>PWR, a(639)=>PWR, a(638)=>GND, a(637)=>GND, 
      a(636)=>GND, a(635)=>PWR, a(634)=>PWR, a(633)=>PWR, a(632)=>GND, 
      a(631)=>PWR, a(630)=>PWR, a(629)=>GND, a(628)=>GND, a(627)=>GND, 
      a(626)=>PWR, a(625)=>PWR, a(624)=>PWR, a(623)=>GND, a(622)=>PWR, 
      a(621)=>GND, a(620)=>GND, a(619)=>PWR, a(618)=>GND, a(617)=>GND, 
      a(616)=>GND, a(615)=>GND, a(614)=>GND, a(613)=>PWR, a(612)=>GND, 
      a(611)=>PWR, a(610)=>PWR, a(609)=>GND, a(608)=>GND, a(607)=>GND, 
      a(606)=>PWR, a(605)=>PWR, a(604)=>GND, a(603)=>PWR, a(602)=>GND, 
      a(601)=>GND, a(600)=>PWR, a(599)=>GND, a(598)=>GND, a(597)=>PWR, 
      a(596)=>GND, a(595)=>GND, a(594)=>GND, a(593)=>PWR, a(592)=>PWR, 
      a(591)=>PWR, a(590)=>PWR, a(589)=>PWR, a(588)=>PWR, a(587)=>GND, 
      a(586)=>GND, a(585)=>GND, a(584)=>PWR, a(583)=>GND, a(582)=>GND, 
      a(581)=>GND, a(580)=>PWR, a(579)=>GND, a(578)=>GND, a(577)=>GND, 
      a(576)=>GND, a(575)=>GND, a(574)=>GND, a(573)=>PWR, a(572)=>PWR, 
      a(571)=>PWR, a(570)=>GND, a(569)=>GND, a(568)=>PWR, a(567)=>GND, 
      a(566)=>GND, a(565)=>GND, a(564)=>GND, a(563)=>GND, a(562)=>PWR, 
      a(561)=>GND, a(560)=>GND, a(559)=>PWR, a(558)=>GND, a(557)=>GND, 
      a(556)=>GND, a(555)=>GND, a(554)=>GND, a(553)=>PWR, a(552)=>PWR, 
      a(551)=>PWR, a(550)=>GND, a(549)=>PWR, a(548)=>GND, a(547)=>PWR, 
      a(546)=>GND, a(545)=>GND, a(544)=>PWR, a(543)=>PWR, a(542)=>GND, 
      a(541)=>PWR, a(540)=>GND, a(539)=>GND, a(538)=>PWR, a(537)=>GND, 
      a(536)=>PWR, a(535)=>PWR, a(534)=>GND, a(533)=>PWR, a(532)=>GND, 
      a(531)=>PWR, a(530)=>PWR, a(529)=>GND, a(528)=>GND, a(527)=>GND, 
      a(526)=>GND, a(525)=>PWR, a(524)=>PWR, a(523)=>GND, a(522)=>PWR, 
      a(521)=>PWR, a(520)=>GND, a(519)=>PWR, a(518)=>PWR, a(517)=>GND, 
      a(516)=>GND, a(515)=>PWR, a(514)=>PWR, a(513)=>PWR, a(512)=>GND, 
      a(511)=>GND, a(510)=>GND, a(509)=>PWR, a(508)=>GND, a(507)=>PWR, 
      a(506)=>PWR, a(505)=>PWR, a(504)=>PWR, a(503)=>GND, a(502)=>PWR, 
      a(501)=>GND, a(500)=>GND, a(499)=>PWR, a(498)=>GND, a(497)=>PWR, 
      a(496)=>PWR, a(495)=>GND, a(494)=>PWR, a(493)=>GND, a(492)=>PWR, 
      a(491)=>GND, a(490)=>GND, a(489)=>GND, a(488)=>PWR, a(487)=>PWR, 
      a(486)=>GND, a(485)=>PWR, a(484)=>PWR, a(483)=>PWR, a(482)=>PWR, 
      a(481)=>PWR, a(480)=>GND, a(479)=>GND, a(478)=>PWR, a(477)=>GND, 
      a(476)=>PWR, a(475)=>PWR, a(474)=>GND, a(473)=>GND, a(472)=>PWR, 
      a(471)=>PWR, a(470)=>PWR, a(469)=>PWR, a(468)=>PWR, a(467)=>PWR, 
      a(466)=>GND, a(465)=>GND, a(464)=>PWR, a(463)=>GND, a(462)=>GND, 
      a(461)=>PWR, a(460)=>PWR, a(459)=>PWR, a(458)=>GND, a(457)=>GND, 
      a(456)=>PWR, a(455)=>GND, a(454)=>PWR, a(453)=>GND, a(452)=>PWR, 
      a(451)=>PWR, a(450)=>PWR, a(449)=>PWR, a(448)=>PWR, a(447)=>PWR, 
      a(446)=>GND, a(445)=>GND, a(444)=>PWR, a(443)=>PWR, a(442)=>GND, 
      a(441)=>PWR, a(440)=>PWR, a(439)=>GND, a(438)=>GND, a(437)=>GND, 
      a(436)=>GND, a(435)=>PWR, a(434)=>PWR, a(433)=>PWR, a(432)=>GND, 
      a(431)=>PWR, a(430)=>PWR, a(429)=>PWR, a(428)=>GND, a(427)=>GND, 
      a(426)=>PWR, a(425)=>GND, a(424)=>PWR, a(423)=>PWR, a(422)=>PWR, 
      a(421)=>PWR, a(420)=>PWR, a(419)=>GND, a(418)=>GND, a(417)=>GND, 
      a(416)=>PWR, a(415)=>GND, a(414)=>PWR, a(413)=>PWR, a(412)=>PWR, 
      a(411)=>GND, a(410)=>GND, a(409)=>PWR, a(408)=>GND, a(407)=>GND, 
      a(406)=>GND, a(405)=>PWR, a(404)=>GND, a(403)=>GND, a(402)=>GND, 
      a(401)=>PWR, a(400)=>PWR, a(399)=>GND, a(398)=>PWR, a(397)=>PWR, 
      a(396)=>PWR, a(395)=>GND, a(394)=>PWR, a(393)=>GND, a(392)=>PWR, 
      a(391)=>PWR, a(390)=>PWR, a(389)=>GND, a(388)=>PWR, a(387)=>PWR, 
      a(386)=>PWR, a(385)=>GND, a(384)=>GND, a(383)=>PWR, a(382)=>GND, 
      a(381)=>PWR, a(380)=>PWR, a(379)=>GND, a(378)=>PWR, a(377)=>PWR, 
      a(376)=>PWR, a(375)=>PWR, a(374)=>GND, a(373)=>GND, a(372)=>GND, 
      a(371)=>PWR, a(370)=>GND, a(369)=>PWR, a(368)=>PWR, a(367)=>GND, 
      a(366)=>PWR, a(365)=>GND, a(364)=>PWR, a(363)=>GND, a(362)=>GND, 
      a(361)=>GND, a(360)=>GND, a(359)=>GND, a(358)=>GND, a(357)=>GND, 
      a(356)=>PWR, a(355)=>GND, a(354)=>GND, a(353)=>GND, a(352)=>GND, 
      a(351)=>PWR, a(350)=>GND, a(349)=>GND, a(348)=>GND, a(347)=>PWR, 
      a(346)=>GND, a(345)=>PWR, a(344)=>PWR, a(343)=>PWR, a(342)=>GND, 
      a(341)=>PWR, a(340)=>PWR, a(339)=>PWR, a(338)=>PWR, a(337)=>GND, 
      a(336)=>GND, a(335)=>PWR, a(334)=>GND, a(333)=>GND, a(332)=>PWR, 
      a(331)=>GND, a(330)=>PWR, a(329)=>PWR, a(328)=>PWR, a(327)=>PWR, 
      a(326)=>GND, a(325)=>GND, a(324)=>GND, a(323)=>PWR, a(322)=>PWR, 
      a(321)=>GND, a(320)=>PWR, a(319)=>GND, a(318)=>GND, a(317)=>GND, 
      a(316)=>GND, a(315)=>PWR, a(314)=>PWR, a(313)=>GND, a(312)=>PWR, 
      a(311)=>PWR, a(310)=>PWR, a(309)=>PWR, a(308)=>GND, a(307)=>PWR, 
      a(306)=>GND, a(305)=>GND, a(304)=>PWR, a(303)=>PWR, a(302)=>GND, 
      a(301)=>GND, a(300)=>GND, a(299)=>GND, a(298)=>GND, a(297)=>GND, 
      a(296)=>GND, a(295)=>PWR, a(294)=>PWR, a(293)=>PWR, a(292)=>GND, 
      a(291)=>GND, a(290)=>PWR, a(289)=>PWR, a(288)=>GND, a(287)=>PWR, 
      a(286)=>GND, a(285)=>GND, a(284)=>GND, a(283)=>GND, a(282)=>GND, 
      a(281)=>GND, a(280)=>PWR, a(279)=>PWR, a(278)=>PWR, a(277)=>PWR, 
      a(276)=>GND, a(275)=>GND, a(274)=>GND, a(273)=>PWR, a(272)=>GND, 
      a(271)=>GND, a(270)=>PWR, a(269)=>GND, a(268)=>PWR, a(267)=>GND, 
      a(266)=>GND, a(265)=>GND, a(264)=>GND, a(263)=>GND, a(262)=>PWR, 
      a(261)=>PWR, a(260)=>GND, a(259)=>PWR, a(258)=>PWR, a(257)=>PWR, 
      a(256)=>GND, a(255)=>PWR, a(254)=>PWR, a(253)=>GND, a(252)=>PWR, 
      a(251)=>PWR, a(250)=>PWR, a(249)=>GND, a(248)=>GND, a(247)=>GND, 
      a(246)=>PWR, a(245)=>GND, a(244)=>PWR, a(243)=>PWR, a(242)=>GND, 
      a(241)=>GND, a(240)=>PWR, a(239)=>GND, a(238)=>PWR, a(237)=>GND, 
      a(236)=>GND, a(235)=>PWR, a(234)=>PWR, a(233)=>GND, a(232)=>PWR, 
      a(231)=>PWR, a(230)=>GND, a(229)=>GND, a(228)=>GND, a(227)=>PWR, 
      a(226)=>GND, a(225)=>PWR, a(224)=>PWR, a(223)=>GND, a(222)=>GND, 
      a(221)=>GND, a(220)=>PWR, a(219)=>GND, a(218)=>PWR, a(217)=>GND, 
      a(216)=>PWR, a(215)=>PWR, a(214)=>PWR, a(213)=>PWR, a(212)=>PWR, 
      a(211)=>GND, a(210)=>GND, a(209)=>GND, a(208)=>GND, a(207)=>GND, 
      a(206)=>GND, a(205)=>PWR, a(204)=>GND, a(203)=>PWR, a(202)=>GND, 
      a(201)=>PWR, a(200)=>GND, a(199)=>GND, a(198)=>GND, a(197)=>GND, 
      a(196)=>PWR, a(195)=>PWR, a(194)=>PWR, a(193)=>PWR, a(192)=>GND, 
      a(191)=>PWR, a(190)=>PWR, a(189)=>GND, a(188)=>GND, a(187)=>GND, 
      a(186)=>PWR, a(185)=>PWR, a(184)=>GND, a(183)=>PWR, a(182)=>GND, 
      a(181)=>GND, a(180)=>GND, a(179)=>GND, a(178)=>GND, a(177)=>GND, 
      a(176)=>GND, a(175)=>PWR, a(174)=>GND, a(173)=>PWR, a(172)=>PWR, 
      a(171)=>PWR, a(170)=>GND, a(169)=>GND, a(168)=>GND, a(167)=>GND, 
      a(166)=>GND, a(165)=>GND, a(164)=>GND, a(163)=>PWR, a(162)=>PWR, 
      a(161)=>PWR, a(160)=>GND, a(159)=>GND, a(158)=>GND, a(157)=>PWR, 
      a(156)=>GND, a(155)=>GND, a(154)=>GND, a(153)=>GND, a(152)=>GND, 
      a(151)=>PWR, a(150)=>PWR, a(149)=>GND, a(148)=>PWR, a(147)=>GND, 
      a(146)=>GND, a(145)=>PWR, a(144)=>GND, a(143)=>PWR, a(142)=>PWR, 
      a(141)=>PWR, a(140)=>GND, a(139)=>PWR, a(138)=>PWR, a(137)=>PWR, 
      a(136)=>PWR, a(135)=>PWR, a(134)=>GND, a(133)=>PWR, a(132)=>GND, 
      a(131)=>PWR, a(130)=>GND, a(129)=>PWR, a(128)=>GND, a(127)=>GND, 
      a(126)=>PWR, a(125)=>GND, a(124)=>GND, a(123)=>PWR, a(122)=>GND, 
      a(121)=>GND, a(120)=>GND, a(119)=>PWR, a(118)=>PWR, a(117)=>PWR, 
      a(116)=>GND, a(115)=>GND, a(114)=>PWR, a(113)=>PWR, a(112)=>PWR, 
      a(111)=>GND, a(110)=>PWR, a(109)=>GND, a(108)=>PWR, a(107)=>PWR, 
      a(106)=>GND, a(105)=>GND, a(104)=>GND, a(103)=>GND, a(102)=>PWR, 
      a(101)=>GND, a(100)=>PWR, a(99)=>PWR, a(98)=>PWR, a(97)=>GND, a(96)=>
      GND, a(95)=>PWR, a(94)=>GND, a(93)=>PWR, a(92)=>PWR, a(91)=>GND, a(90)
      =>GND, a(89)=>GND, a(88)=>PWR, a(87)=>PWR, a(86)=>PWR, a(85)=>PWR, 
      a(84)=>GND, a(83)=>GND, a(82)=>GND, a(81)=>PWR, a(80)=>GND, a(79)=>GND, 
      a(78)=>GND, a(77)=>GND, a(76)=>PWR, a(75)=>GND, a(74)=>GND, a(73)=>PWR, 
      a(72)=>PWR, a(71)=>GND, a(70)=>GND, a(69)=>GND, a(68)=>GND, a(67)=>PWR, 
      a(66)=>GND, a(65)=>GND, a(64)=>GND, a(63)=>PWR, a(62)=>PWR, a(61)=>GND, 
      a(60)=>PWR, a(59)=>GND, a(58)=>PWR, a(57)=>PWR, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>PWR, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>PWR, 
      a(48)=>PWR, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>GND, a(40)=>PWR, a(39)=>GND, a(38)=>PWR, a(37)=>GND, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>PWR, a(29)=>PWR, a(28)=>GND, a(27)=>PWR, a(26)=>GND, a(25)=>GND, 
      a(24)=>PWR, a(23)=>GND, a(22)=>GND, a(21)=>PWR, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>PWR, a(16)=>PWR, a(15)=>GND, a(14)=>PWR, a(13)=>GND, 
      a(12)=>PWR, a(11)=>GND, a(10)=>GND, a(9)=>PWR, a(8)=>PWR, a(7)=>PWR, 
      a(6)=>GND, a(5)=>GND, a(4)=>PWR, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(1023)=>GND, b(1022)=>GND, b(1021)=>GND, b(1020)=>GND, b(1019)
      =>GND, b(1018)=>GND, b(1017)=>GND, b(1016)=>GND, b(1015)=>GND, b(1014)
      =>GND, b(1013)=>GND, b(1012)=>GND, b(1011)=>GND, b(1010)=>GND, b(1009)
      =>GND, b(1008)=>GND, b(1007)=>GND, b(1006)=>GND, b(1005)=>GND, b(1004)
      =>GND, b(1003)=>GND, b(1002)=>GND, b(1001)=>GND, b(1000)=>GND, b(999)
      =>GND, b(998)=>GND, b(997)=>GND, b(996)=>GND, b(995)=>GND, b(994)=>GND, 
      b(993)=>GND, b(992)=>GND, b(991)=>GND, b(990)=>GND, b(989)=>GND, 
      b(988)=>GND, b(987)=>GND, b(986)=>GND, b(985)=>GND, b(984)=>GND, 
      b(983)=>GND, b(982)=>GND, b(981)=>GND, b(980)=>GND, b(979)=>GND, 
      b(978)=>GND, b(977)=>GND, b(976)=>GND, b(975)=>GND, b(974)=>GND, 
      b(973)=>GND, b(972)=>GND, b(971)=>GND, b(970)=>GND, b(969)=>GND, 
      b(968)=>GND, b(967)=>GND, b(966)=>GND, b(965)=>GND, b(964)=>GND, 
      b(963)=>GND, b(962)=>GND, b(961)=>GND, b(960)=>GND, b(959)=>GND, 
      b(958)=>GND, b(957)=>GND, b(956)=>GND, b(955)=>GND, b(954)=>GND, 
      b(953)=>GND, b(952)=>GND, b(951)=>GND, b(950)=>GND, b(949)=>GND, 
      b(948)=>GND, b(947)=>GND, b(946)=>GND, b(945)=>GND, b(944)=>GND, 
      b(943)=>GND, b(942)=>GND, b(941)=>GND, b(940)=>GND, b(939)=>GND, 
      b(938)=>GND, b(937)=>GND, b(936)=>GND, b(935)=>GND, b(934)=>GND, 
      b(933)=>GND, b(932)=>GND, b(931)=>GND, b(930)=>GND, b(929)=>GND, 
      b(928)=>GND, b(927)=>GND, b(926)=>GND, b(925)=>GND, b(924)=>GND, 
      b(923)=>GND, b(922)=>GND, b(921)=>GND, b(920)=>GND, b(919)=>GND, 
      b(918)=>GND, b(917)=>GND, b(916)=>GND, b(915)=>GND, b(914)=>GND, 
      b(913)=>GND, b(912)=>GND, b(911)=>GND, b(910)=>GND, b(909)=>GND, 
      b(908)=>GND, b(907)=>GND, b(906)=>GND, b(905)=>GND, b(904)=>GND, 
      b(903)=>GND, b(902)=>GND, b(901)=>GND, b(900)=>GND, b(899)=>GND, 
      b(898)=>GND, b(897)=>GND, b(896)=>GND, b(895)=>GND, b(894)=>GND, 
      b(893)=>GND, b(892)=>GND, b(891)=>GND, b(890)=>GND, b(889)=>GND, 
      b(888)=>GND, b(887)=>GND, b(886)=>GND, b(885)=>GND, b(884)=>GND, 
      b(883)=>GND, b(882)=>GND, b(881)=>GND, b(880)=>GND, b(879)=>GND, 
      b(878)=>GND, b(877)=>GND, b(876)=>GND, b(875)=>GND, b(874)=>GND, 
      b(873)=>GND, b(872)=>GND, b(871)=>GND, b(870)=>GND, b(869)=>GND, 
      b(868)=>GND, b(867)=>GND, b(866)=>GND, b(865)=>GND, b(864)=>GND, 
      b(863)=>GND, b(862)=>GND, b(861)=>GND, b(860)=>GND, b(859)=>GND, 
      b(858)=>GND, b(857)=>GND, b(856)=>GND, b(855)=>GND, b(854)=>GND, 
      b(853)=>GND, b(852)=>GND, b(851)=>GND, b(850)=>GND, b(849)=>GND, 
      b(848)=>GND, b(847)=>GND, b(846)=>GND, b(845)=>GND, b(844)=>GND, 
      b(843)=>GND, b(842)=>GND, b(841)=>GND, b(840)=>GND, b(839)=>GND, 
      b(838)=>GND, b(837)=>GND, b(836)=>GND, b(835)=>GND, b(834)=>GND, 
      b(833)=>GND, b(832)=>GND, b(831)=>GND, b(830)=>GND, b(829)=>GND, 
      b(828)=>GND, b(827)=>GND, b(826)=>GND, b(825)=>GND, b(824)=>GND, 
      b(823)=>GND, b(822)=>GND, b(821)=>GND, b(820)=>GND, b(819)=>GND, 
      b(818)=>GND, b(817)=>GND, b(816)=>GND, b(815)=>GND, b(814)=>GND, 
      b(813)=>GND, b(812)=>GND, b(811)=>GND, b(810)=>GND, b(809)=>GND, 
      b(808)=>GND, b(807)=>GND, b(806)=>GND, b(805)=>GND, b(804)=>GND, 
      b(803)=>GND, b(802)=>GND, b(801)=>GND, b(800)=>GND, b(799)=>GND, 
      b(798)=>GND, b(797)=>GND, b(796)=>GND, b(795)=>GND, b(794)=>GND, 
      b(793)=>GND, b(792)=>GND, b(791)=>GND, b(790)=>GND, b(789)=>GND, 
      b(788)=>GND, b(787)=>GND, b(786)=>GND, b(785)=>GND, b(784)=>GND, 
      b(783)=>GND, b(782)=>GND, b(781)=>GND, b(780)=>GND, b(779)=>GND, 
      b(778)=>GND, b(777)=>GND, b(776)=>GND, b(775)=>GND, b(774)=>GND, 
      b(773)=>GND, b(772)=>GND, b(771)=>GND, b(770)=>GND, b(769)=>GND, 
      b(768)=>GND, b(767)=>GND, b(766)=>GND, b(765)=>GND, b(764)=>GND, 
      b(763)=>GND, b(762)=>GND, b(761)=>GND, b(760)=>GND, b(759)=>GND, 
      b(758)=>GND, b(757)=>GND, b(756)=>GND, b(755)=>GND, b(754)=>GND, 
      b(753)=>GND, b(752)=>GND, b(751)=>GND, b(750)=>GND, b(749)=>GND, 
      b(748)=>GND, b(747)=>GND, b(746)=>GND, b(745)=>GND, b(744)=>GND, 
      b(743)=>GND, b(742)=>GND, b(741)=>GND, b(740)=>GND, b(739)=>GND, 
      b(738)=>GND, b(737)=>GND, b(736)=>GND, b(735)=>GND, b(734)=>GND, 
      b(733)=>GND, b(732)=>GND, b(731)=>GND, b(730)=>GND, b(729)=>GND, 
      b(728)=>GND, b(727)=>GND, b(726)=>GND, b(725)=>GND, b(724)=>GND, 
      b(723)=>GND, b(722)=>GND, b(721)=>GND, b(720)=>GND, b(719)=>GND, 
      b(718)=>GND, b(717)=>GND, b(716)=>GND, b(715)=>GND, b(714)=>GND, 
      b(713)=>GND, b(712)=>GND, b(711)=>GND, b(710)=>GND, b(709)=>GND, 
      b(708)=>GND, b(707)=>GND, b(706)=>GND, b(705)=>GND, b(704)=>GND, 
      b(703)=>GND, b(702)=>GND, b(701)=>GND, b(700)=>GND, b(699)=>GND, 
      b(698)=>GND, b(697)=>GND, b(696)=>GND, b(695)=>GND, b(694)=>GND, 
      b(693)=>GND, b(692)=>GND, b(691)=>GND, b(690)=>GND, b(689)=>GND, 
      b(688)=>GND, b(687)=>GND, b(686)=>GND, b(685)=>GND, b(684)=>GND, 
      b(683)=>GND, b(682)=>GND, b(681)=>GND, b(680)=>GND, b(679)=>GND, 
      b(678)=>GND, b(677)=>GND, b(676)=>GND, b(675)=>GND, b(674)=>GND, 
      b(673)=>GND, b(672)=>GND, b(671)=>GND, b(670)=>GND, b(669)=>GND, 
      b(668)=>GND, b(667)=>GND, b(666)=>GND, b(665)=>GND, b(664)=>GND, 
      b(663)=>GND, b(662)=>GND, b(661)=>GND, b(660)=>GND, b(659)=>GND, 
      b(658)=>GND, b(657)=>GND, b(656)=>GND, b(655)=>GND, b(654)=>GND, 
      b(653)=>GND, b(652)=>GND, b(651)=>GND, b(650)=>GND, b(649)=>GND, 
      b(648)=>GND, b(647)=>GND, b(646)=>GND, b(645)=>GND, b(644)=>GND, 
      b(643)=>GND, b(642)=>GND, b(641)=>GND, b(640)=>GND, b(639)=>GND, 
      b(638)=>GND, b(637)=>GND, b(636)=>GND, b(635)=>GND, b(634)=>GND, 
      b(633)=>GND, b(632)=>GND, b(631)=>GND, b(630)=>GND, b(629)=>GND, 
      b(628)=>GND, b(627)=>GND, b(626)=>GND, b(625)=>GND, b(624)=>GND, 
      b(623)=>GND, b(622)=>GND, b(621)=>GND, b(620)=>GND, b(619)=>GND, 
      b(618)=>GND, b(617)=>GND, b(616)=>GND, b(615)=>GND, b(614)=>GND, 
      b(613)=>GND, b(612)=>GND, b(611)=>GND, b(610)=>GND, b(609)=>GND, 
      b(608)=>GND, b(607)=>GND, b(606)=>GND, b(605)=>GND, b(604)=>GND, 
      b(603)=>GND, b(602)=>GND, b(601)=>GND, b(600)=>GND, b(599)=>GND, 
      b(598)=>GND, b(597)=>GND, b(596)=>GND, b(595)=>GND, b(594)=>GND, 
      b(593)=>GND, b(592)=>GND, b(591)=>GND, b(590)=>GND, b(589)=>GND, 
      b(588)=>GND, b(587)=>GND, b(586)=>GND, b(585)=>GND, b(584)=>GND, 
      b(583)=>GND, b(582)=>GND, b(581)=>GND, b(580)=>GND, b(579)=>GND, 
      b(578)=>GND, b(577)=>GND, b(576)=>GND, b(575)=>GND, b(574)=>GND, 
      b(573)=>GND, b(572)=>GND, b(571)=>GND, b(570)=>GND, b(569)=>GND, 
      b(568)=>GND, b(567)=>GND, b(566)=>GND, b(565)=>GND, b(564)=>GND, 
      b(563)=>GND, b(562)=>GND, b(561)=>GND, b(560)=>GND, b(559)=>GND, 
      b(558)=>GND, b(557)=>GND, b(556)=>GND, b(555)=>GND, b(554)=>GND, 
      b(553)=>GND, b(552)=>GND, b(551)=>GND, b(550)=>GND, b(549)=>GND, 
      b(548)=>GND, b(547)=>GND, b(546)=>GND, b(545)=>GND, b(544)=>GND, 
      b(543)=>GND, b(542)=>GND, b(541)=>GND, b(540)=>GND, b(539)=>GND, 
      b(538)=>GND, b(537)=>GND, b(536)=>GND, b(535)=>GND, b(534)=>GND, 
      b(533)=>GND, b(532)=>GND, b(531)=>GND, b(530)=>GND, b(529)=>GND, 
      b(528)=>GND, b(527)=>GND, b(526)=>GND, b(525)=>GND, b(524)=>GND, 
      b(523)=>GND, b(522)=>GND, b(521)=>GND, b(520)=>GND, b(519)=>GND, 
      b(518)=>GND, b(517)=>GND, b(516)=>GND, b(515)=>GND, b(514)=>GND, 
      b(513)=>GND, b(512)=>GND, b(511)=>GND, b(510)=>GND, b(509)=>GND, 
      b(508)=>GND, b(507)=>GND, b(506)=>GND, b(505)=>GND, b(504)=>GND, 
      b(503)=>GND, b(502)=>GND, b(501)=>GND, b(500)=>GND, b(499)=>GND, 
      b(498)=>GND, b(497)=>GND, b(496)=>GND, b(495)=>GND, b(494)=>GND, 
      b(493)=>GND, b(492)=>GND, b(491)=>GND, b(490)=>GND, b(489)=>GND, 
      b(488)=>GND, b(487)=>GND, b(486)=>GND, b(485)=>GND, b(484)=>GND, 
      b(483)=>GND, b(482)=>GND, b(481)=>GND, b(480)=>GND, b(479)=>GND, 
      b(478)=>GND, b(477)=>GND, b(476)=>GND, b(475)=>GND, b(474)=>GND, 
      b(473)=>GND, b(472)=>GND, b(471)=>GND, b(470)=>GND, b(469)=>GND, 
      b(468)=>GND, b(467)=>GND, b(466)=>GND, b(465)=>GND, b(464)=>GND, 
      b(463)=>GND, b(462)=>GND, b(461)=>GND, b(460)=>GND, b(459)=>GND, 
      b(458)=>GND, b(457)=>GND, b(456)=>GND, b(455)=>GND, b(454)=>GND, 
      b(453)=>GND, b(452)=>GND, b(451)=>GND, b(450)=>GND, b(449)=>GND, 
      b(448)=>GND, b(447)=>GND, b(446)=>GND, b(445)=>GND, b(444)=>GND, 
      b(443)=>GND, b(442)=>GND, b(441)=>GND, b(440)=>GND, b(439)=>GND, 
      b(438)=>GND, b(437)=>GND, b(436)=>GND, b(435)=>GND, b(434)=>GND, 
      b(433)=>GND, b(432)=>GND, b(431)=>GND, b(430)=>GND, b(429)=>GND, 
      b(428)=>GND, b(427)=>GND, b(426)=>GND, b(425)=>GND, b(424)=>GND, 
      b(423)=>GND, b(422)=>GND, b(421)=>GND, b(420)=>GND, b(419)=>GND, 
      b(418)=>GND, b(417)=>GND, b(416)=>GND, b(415)=>GND, b(414)=>GND, 
      b(413)=>GND, b(412)=>GND, b(411)=>GND, b(410)=>GND, b(409)=>GND, 
      b(408)=>GND, b(407)=>GND, b(406)=>GND, b(405)=>GND, b(404)=>GND, 
      b(403)=>GND, b(402)=>GND, b(401)=>GND, b(400)=>GND, b(399)=>GND, 
      b(398)=>GND, b(397)=>GND, b(396)=>GND, b(395)=>GND, b(394)=>GND, 
      b(393)=>GND, b(392)=>GND, b(391)=>GND, b(390)=>GND, b(389)=>GND, 
      b(388)=>GND, b(387)=>GND, b(386)=>GND, b(385)=>GND, b(384)=>GND, 
      b(383)=>GND, b(382)=>GND, b(381)=>GND, b(380)=>GND, b(379)=>GND, 
      b(378)=>GND, b(377)=>GND, b(376)=>GND, b(375)=>GND, b(374)=>GND, 
      b(373)=>GND, b(372)=>GND, b(371)=>GND, b(370)=>GND, b(369)=>GND, 
      b(368)=>GND, b(367)=>GND, b(366)=>GND, b(365)=>GND, b(364)=>GND, 
      b(363)=>GND, b(362)=>GND, b(361)=>GND, b(360)=>GND, b(359)=>GND, 
      b(358)=>GND, b(357)=>GND, b(356)=>GND, b(355)=>GND, b(354)=>GND, 
      b(353)=>GND, b(352)=>GND, b(351)=>GND, b(350)=>GND, b(349)=>GND, 
      b(348)=>GND, b(347)=>GND, b(346)=>GND, b(345)=>GND, b(344)=>GND, 
      b(343)=>GND, b(342)=>GND, b(341)=>GND, b(340)=>GND, b(339)=>GND, 
      b(338)=>GND, b(337)=>GND, b(336)=>GND, b(335)=>GND, b(334)=>GND, 
      b(333)=>GND, b(332)=>GND, b(331)=>GND, b(330)=>GND, b(329)=>GND, 
      b(328)=>GND, b(327)=>GND, b(326)=>GND, b(325)=>GND, b(324)=>GND, 
      b(323)=>GND, b(322)=>GND, b(321)=>GND, b(320)=>GND, b(319)=>GND, 
      b(318)=>GND, b(317)=>GND, b(316)=>GND, b(315)=>GND, b(314)=>GND, 
      b(313)=>GND, b(312)=>GND, b(311)=>GND, b(310)=>GND, b(309)=>GND, 
      b(308)=>GND, b(307)=>GND, b(306)=>GND, b(305)=>GND, b(304)=>GND, 
      b(303)=>GND, b(302)=>GND, b(301)=>GND, b(300)=>GND, b(299)=>GND, 
      b(298)=>GND, b(297)=>GND, b(296)=>GND, b(295)=>GND, b(294)=>GND, 
      b(293)=>GND, b(292)=>GND, b(291)=>GND, b(290)=>GND, b(289)=>GND, 
      b(288)=>GND, b(287)=>GND, b(286)=>GND, b(285)=>GND, b(284)=>GND, 
      b(283)=>GND, b(282)=>GND, b(281)=>GND, b(280)=>GND, b(279)=>GND, 
      b(278)=>GND, b(277)=>GND, b(276)=>GND, b(275)=>GND, b(274)=>GND, 
      b(273)=>GND, b(272)=>GND, b(271)=>GND, b(270)=>GND, b(269)=>GND, 
      b(268)=>GND, b(267)=>GND, b(266)=>GND, b(265)=>GND, b(264)=>GND, 
      b(263)=>GND, b(262)=>GND, b(261)=>GND, b(260)=>GND, b(259)=>GND, 
      b(258)=>GND, b(257)=>GND, b(256)=>GND, b(255)=>GND, b(254)=>GND, 
      b(253)=>GND, b(252)=>GND, b(251)=>GND, b(250)=>GND, b(249)=>GND, 
      b(248)=>GND, b(247)=>GND, b(246)=>GND, b(245)=>GND, b(244)=>GND, 
      b(243)=>GND, b(242)=>GND, b(241)=>GND, b(240)=>GND, b(239)=>GND, 
      b(238)=>GND, b(237)=>GND, b(236)=>GND, b(235)=>GND, b(234)=>GND, 
      b(233)=>GND, b(232)=>GND, b(231)=>GND, b(230)=>GND, b(229)=>GND, 
      b(228)=>GND, b(227)=>GND, b(226)=>GND, b(225)=>GND, b(224)=>GND, 
      b(223)=>GND, b(222)=>GND, b(221)=>GND, b(220)=>GND, b(219)=>GND, 
      b(218)=>GND, b(217)=>GND, b(216)=>GND, b(215)=>GND, b(214)=>GND, 
      b(213)=>GND, b(212)=>GND, b(211)=>GND, b(210)=>GND, b(209)=>GND, 
      b(208)=>GND, b(207)=>GND, b(206)=>GND, b(205)=>GND, b(204)=>GND, 
      b(203)=>GND, b(202)=>GND, b(201)=>GND, b(200)=>GND, b(199)=>GND, 
      b(198)=>GND, b(197)=>GND, b(196)=>GND, b(195)=>GND, b(194)=>GND, 
      b(193)=>GND, b(192)=>GND, b(191)=>GND, b(190)=>GND, b(189)=>GND, 
      b(188)=>GND, b(187)=>GND, b(186)=>GND, b(185)=>GND, b(184)=>GND, 
      b(183)=>GND, b(182)=>GND, b(181)=>GND, b(180)=>GND, b(179)=>GND, 
      b(178)=>GND, b(177)=>GND, b(176)=>GND, b(175)=>GND, b(174)=>GND, 
      b(173)=>GND, b(172)=>GND, b(171)=>GND, b(170)=>GND, b(169)=>GND, 
      b(168)=>GND, b(167)=>GND, b(166)=>GND, b(165)=>GND, b(164)=>GND, 
      b(163)=>GND, b(162)=>GND, b(161)=>GND, b(160)=>GND, b(159)=>GND, 
      b(158)=>GND, b(157)=>GND, b(156)=>GND, b(155)=>GND, b(154)=>GND, 
      b(153)=>GND, b(152)=>GND, b(151)=>GND, b(150)=>GND, b(149)=>GND, 
      b(148)=>GND, b(147)=>GND, b(146)=>GND, b(145)=>GND, b(144)=>GND, 
      b(143)=>GND, b(142)=>GND, b(141)=>GND, b(140)=>GND, b(139)=>GND, 
      b(138)=>GND, b(137)=>GND, b(136)=>GND, b(135)=>GND, b(134)=>GND, 
      b(133)=>GND, b(132)=>GND, b(131)=>GND, b(130)=>GND, b(129)=>GND, 
      b(128)=>GND, b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, 
      b(123)=>GND, b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, 
      b(118)=>GND, b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, 
      b(113)=>GND, b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, 
      b(108)=>GND, b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, 
      b(103)=>GND, b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)
      =>GND, b(97)=>GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, 
      b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, 
      b(86)=>GND, b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, 
      b(80)=>GND, b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, 
      b(74)=>GND, b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, 
      b(68)=>GND, b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, 
      b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, 
      b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, 
      b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, 
      b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, 
      b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, 
      b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, 
      b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, 
      b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>
      address(9), b(8)=>address(8), b(7)=>address(7), b(6)=>address(6), b(5)
      =>address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), 
      b(1)=>address(1), b(0)=>address(0), d=>q(6));
   modgen_mux_15 : mux_1024u_1024u port map ( a(1023)=>PWR, a(1022)=>GND, 
      a(1021)=>GND, a(1020)=>GND, a(1019)=>GND, a(1018)=>PWR, a(1017)=>GND, 
      a(1016)=>GND, a(1015)=>GND, a(1014)=>GND, a(1013)=>GND, a(1012)=>PWR, 
      a(1011)=>GND, a(1010)=>GND, a(1009)=>PWR, a(1008)=>GND, a(1007)=>PWR, 
      a(1006)=>PWR, a(1005)=>GND, a(1004)=>GND, a(1003)=>GND, a(1002)=>GND, 
      a(1001)=>PWR, a(1000)=>GND, a(999)=>PWR, a(998)=>GND, a(997)=>GND, 
      a(996)=>GND, a(995)=>PWR, a(994)=>PWR, a(993)=>PWR, a(992)=>GND, 
      a(991)=>PWR, a(990)=>PWR, a(989)=>GND, a(988)=>PWR, a(987)=>PWR, 
      a(986)=>PWR, a(985)=>PWR, a(984)=>GND, a(983)=>GND, a(982)=>PWR, 
      a(981)=>GND, a(980)=>GND, a(979)=>PWR, a(978)=>GND, a(977)=>PWR, 
      a(976)=>GND, a(975)=>GND, a(974)=>GND, a(973)=>GND, a(972)=>PWR, 
      a(971)=>GND, a(970)=>PWR, a(969)=>PWR, a(968)=>PWR, a(967)=>PWR, 
      a(966)=>PWR, a(965)=>GND, a(964)=>PWR, a(963)=>PWR, a(962)=>GND, 
      a(961)=>PWR, a(960)=>PWR, a(959)=>GND, a(958)=>PWR, a(957)=>GND, 
      a(956)=>PWR, a(955)=>GND, a(954)=>PWR, a(953)=>GND, a(952)=>GND, 
      a(951)=>PWR, a(950)=>PWR, a(949)=>PWR, a(948)=>GND, a(947)=>GND, 
      a(946)=>PWR, a(945)=>GND, a(944)=>PWR, a(943)=>GND, a(942)=>PWR, 
      a(941)=>GND, a(940)=>GND, a(939)=>GND, a(938)=>GND, a(937)=>PWR, 
      a(936)=>PWR, a(935)=>PWR, a(934)=>GND, a(933)=>GND, a(932)=>PWR, 
      a(931)=>PWR, a(930)=>GND, a(929)=>PWR, a(928)=>PWR, a(927)=>PWR, 
      a(926)=>GND, a(925)=>GND, a(924)=>GND, a(923)=>GND, a(922)=>GND, 
      a(921)=>PWR, a(920)=>PWR, a(919)=>PWR, a(918)=>PWR, a(917)=>GND, 
      a(916)=>GND, a(915)=>PWR, a(914)=>GND, a(913)=>GND, a(912)=>GND, 
      a(911)=>PWR, a(910)=>GND, a(909)=>GND, a(908)=>GND, a(907)=>GND, 
      a(906)=>GND, a(905)=>PWR, a(904)=>GND, a(903)=>GND, a(902)=>GND, 
      a(901)=>GND, a(900)=>PWR, a(899)=>GND, a(898)=>GND, a(897)=>PWR, 
      a(896)=>PWR, a(895)=>PWR, a(894)=>PWR, a(893)=>GND, a(892)=>PWR, 
      a(891)=>GND, a(890)=>GND, a(889)=>GND, a(888)=>PWR, a(887)=>PWR, 
      a(886)=>GND, a(885)=>PWR, a(884)=>PWR, a(883)=>GND, a(882)=>PWR, 
      a(881)=>GND, a(880)=>PWR, a(879)=>PWR, a(878)=>PWR, a(877)=>PWR, 
      a(876)=>PWR, a(875)=>PWR, a(874)=>GND, a(873)=>PWR, a(872)=>PWR, 
      a(871)=>PWR, a(870)=>PWR, a(869)=>PWR, a(868)=>GND, a(867)=>PWR, 
      a(866)=>GND, a(865)=>PWR, a(864)=>PWR, a(863)=>PWR, a(862)=>PWR, 
      a(861)=>PWR, a(860)=>GND, a(859)=>GND, a(858)=>GND, a(857)=>GND, 
      a(856)=>PWR, a(855)=>GND, a(854)=>GND, a(853)=>GND, a(852)=>PWR, 
      a(851)=>GND, a(850)=>PWR, a(849)=>PWR, a(848)=>GND, a(847)=>GND, 
      a(846)=>GND, a(845)=>GND, a(844)=>PWR, a(843)=>PWR, a(842)=>GND, 
      a(841)=>PWR, a(840)=>PWR, a(839)=>GND, a(838)=>PWR, a(837)=>PWR, 
      a(836)=>PWR, a(835)=>GND, a(834)=>GND, a(833)=>GND, a(832)=>GND, 
      a(831)=>PWR, a(830)=>GND, a(829)=>PWR, a(828)=>GND, a(827)=>GND, 
      a(826)=>GND, a(825)=>PWR, a(824)=>PWR, a(823)=>GND, a(822)=>PWR, 
      a(821)=>GND, a(820)=>PWR, a(819)=>PWR, a(818)=>PWR, a(817)=>PWR, 
      a(816)=>PWR, a(815)=>GND, a(814)=>GND, a(813)=>GND, a(812)=>GND, 
      a(811)=>PWR, a(810)=>GND, a(809)=>PWR, a(808)=>GND, a(807)=>PWR, 
      a(806)=>GND, a(805)=>GND, a(804)=>GND, a(803)=>PWR, a(802)=>GND, 
      a(801)=>PWR, a(800)=>PWR, a(799)=>PWR, a(798)=>GND, a(797)=>GND, 
      a(796)=>PWR, a(795)=>PWR, a(794)=>GND, a(793)=>PWR, a(792)=>PWR, 
      a(791)=>PWR, a(790)=>GND, a(789)=>PWR, a(788)=>GND, a(787)=>PWR, 
      a(786)=>GND, a(785)=>GND, a(784)=>PWR, a(783)=>GND, a(782)=>GND, 
      a(781)=>PWR, a(780)=>GND, a(779)=>PWR, a(778)=>GND, a(777)=>GND, 
      a(776)=>GND, a(775)=>GND, a(774)=>GND, a(773)=>PWR, a(772)=>GND, 
      a(771)=>PWR, a(770)=>PWR, a(769)=>GND, a(768)=>PWR, a(767)=>PWR, 
      a(766)=>GND, a(765)=>GND, a(764)=>GND, a(763)=>GND, a(762)=>GND, 
      a(761)=>GND, a(760)=>GND, a(759)=>PWR, a(758)=>GND, a(757)=>PWR, 
      a(756)=>PWR, a(755)=>GND, a(754)=>PWR, a(753)=>GND, a(752)=>GND, 
      a(751)=>GND, a(750)=>GND, a(749)=>PWR, a(748)=>PWR, a(747)=>PWR, 
      a(746)=>GND, a(745)=>PWR, a(744)=>GND, a(743)=>PWR, a(742)=>GND, 
      a(741)=>PWR, a(740)=>PWR, a(739)=>PWR, a(738)=>PWR, a(737)=>GND, 
      a(736)=>PWR, a(735)=>GND, a(734)=>PWR, a(733)=>GND, a(732)=>GND, 
      a(731)=>PWR, a(730)=>GND, a(729)=>GND, a(728)=>GND, a(727)=>PWR, 
      a(726)=>GND, a(725)=>PWR, a(724)=>PWR, a(723)=>PWR, a(722)=>GND, 
      a(721)=>GND, a(720)=>GND, a(719)=>PWR, a(718)=>GND, a(717)=>PWR, 
      a(716)=>GND, a(715)=>PWR, a(714)=>PWR, a(713)=>PWR, a(712)=>PWR, 
      a(711)=>GND, a(710)=>PWR, a(709)=>PWR, a(708)=>PWR, a(707)=>PWR, 
      a(706)=>PWR, a(705)=>PWR, a(704)=>GND, a(703)=>PWR, a(702)=>GND, 
      a(701)=>PWR, a(700)=>PWR, a(699)=>GND, a(698)=>GND, a(697)=>PWR, 
      a(696)=>PWR, a(695)=>GND, a(694)=>PWR, a(693)=>GND, a(692)=>PWR, 
      a(691)=>PWR, a(690)=>GND, a(689)=>PWR, a(688)=>GND, a(687)=>PWR, 
      a(686)=>PWR, a(685)=>PWR, a(684)=>PWR, a(683)=>PWR, a(682)=>PWR, 
      a(681)=>PWR, a(680)=>GND, a(679)=>PWR, a(678)=>GND, a(677)=>GND, 
      a(676)=>PWR, a(675)=>PWR, a(674)=>PWR, a(673)=>GND, a(672)=>PWR, 
      a(671)=>PWR, a(670)=>PWR, a(669)=>GND, a(668)=>GND, a(667)=>GND, 
      a(666)=>PWR, a(665)=>GND, a(664)=>PWR, a(663)=>GND, a(662)=>GND, 
      a(661)=>PWR, a(660)=>GND, a(659)=>GND, a(658)=>PWR, a(657)=>PWR, 
      a(656)=>PWR, a(655)=>GND, a(654)=>PWR, a(653)=>GND, a(652)=>PWR, 
      a(651)=>PWR, a(650)=>PWR, a(649)=>PWR, a(648)=>GND, a(647)=>PWR, 
      a(646)=>GND, a(645)=>GND, a(644)=>GND, a(643)=>GND, a(642)=>PWR, 
      a(641)=>GND, a(640)=>GND, a(639)=>GND, a(638)=>PWR, a(637)=>GND, 
      a(636)=>GND, a(635)=>GND, a(634)=>PWR, a(633)=>PWR, a(632)=>GND, 
      a(631)=>GND, a(630)=>GND, a(629)=>PWR, a(628)=>GND, a(627)=>GND, 
      a(626)=>GND, a(625)=>PWR, a(624)=>GND, a(623)=>PWR, a(622)=>PWR, 
      a(621)=>PWR, a(620)=>PWR, a(619)=>PWR, a(618)=>PWR, a(617)=>GND, 
      a(616)=>PWR, a(615)=>PWR, a(614)=>PWR, a(613)=>PWR, a(612)=>PWR, 
      a(611)=>PWR, a(610)=>PWR, a(609)=>PWR, a(608)=>GND, a(607)=>PWR, 
      a(606)=>PWR, a(605)=>PWR, a(604)=>PWR, a(603)=>GND, a(602)=>PWR, 
      a(601)=>GND, a(600)=>GND, a(599)=>GND, a(598)=>PWR, a(597)=>GND, 
      a(596)=>GND, a(595)=>GND, a(594)=>GND, a(593)=>GND, a(592)=>PWR, 
      a(591)=>PWR, a(590)=>PWR, a(589)=>PWR, a(588)=>GND, a(587)=>PWR, 
      a(586)=>PWR, a(585)=>PWR, a(584)=>PWR, a(583)=>GND, a(582)=>GND, 
      a(581)=>GND, a(580)=>PWR, a(579)=>GND, a(578)=>PWR, a(577)=>PWR, 
      a(576)=>GND, a(575)=>GND, a(574)=>GND, a(573)=>GND, a(572)=>GND, 
      a(571)=>GND, a(570)=>GND, a(569)=>GND, a(568)=>GND, a(567)=>GND, 
      a(566)=>GND, a(565)=>PWR, a(564)=>PWR, a(563)=>GND, a(562)=>GND, 
      a(561)=>GND, a(560)=>GND, a(559)=>PWR, a(558)=>PWR, a(557)=>PWR, 
      a(556)=>GND, a(555)=>PWR, a(554)=>GND, a(553)=>PWR, a(552)=>PWR, 
      a(551)=>PWR, a(550)=>PWR, a(549)=>GND, a(548)=>PWR, a(547)=>PWR, 
      a(546)=>PWR, a(545)=>GND, a(544)=>GND, a(543)=>PWR, a(542)=>GND, 
      a(541)=>PWR, a(540)=>PWR, a(539)=>GND, a(538)=>PWR, a(537)=>GND, 
      a(536)=>GND, a(535)=>PWR, a(534)=>PWR, a(533)=>PWR, a(532)=>GND, 
      a(531)=>PWR, a(530)=>GND, a(529)=>GND, a(528)=>PWR, a(527)=>GND, 
      a(526)=>GND, a(525)=>PWR, a(524)=>GND, a(523)=>GND, a(522)=>PWR, 
      a(521)=>GND, a(520)=>GND, a(519)=>PWR, a(518)=>GND, a(517)=>PWR, 
      a(516)=>PWR, a(515)=>GND, a(514)=>PWR, a(513)=>PWR, a(512)=>PWR, 
      a(511)=>GND, a(510)=>GND, a(509)=>GND, a(508)=>PWR, a(507)=>PWR, 
      a(506)=>GND, a(505)=>PWR, a(504)=>PWR, a(503)=>GND, a(502)=>PWR, 
      a(501)=>GND, a(500)=>PWR, a(499)=>GND, a(498)=>PWR, a(497)=>PWR, 
      a(496)=>PWR, a(495)=>GND, a(494)=>PWR, a(493)=>PWR, a(492)=>GND, 
      a(491)=>PWR, a(490)=>GND, a(489)=>GND, a(488)=>GND, a(487)=>PWR, 
      a(486)=>GND, a(485)=>GND, a(484)=>GND, a(483)=>PWR, a(482)=>GND, 
      a(481)=>GND, a(480)=>GND, a(479)=>PWR, a(478)=>PWR, a(477)=>PWR, 
      a(476)=>PWR, a(475)=>PWR, a(474)=>GND, a(473)=>GND, a(472)=>PWR, 
      a(471)=>PWR, a(470)=>GND, a(469)=>GND, a(468)=>GND, a(467)=>PWR, 
      a(466)=>GND, a(465)=>PWR, a(464)=>PWR, a(463)=>GND, a(462)=>GND, 
      a(461)=>PWR, a(460)=>PWR, a(459)=>GND, a(458)=>GND, a(457)=>GND, 
      a(456)=>GND, a(455)=>PWR, a(454)=>PWR, a(453)=>PWR, a(452)=>PWR, 
      a(451)=>PWR, a(450)=>PWR, a(449)=>GND, a(448)=>PWR, a(447)=>GND, 
      a(446)=>GND, a(445)=>PWR, a(444)=>GND, a(443)=>PWR, a(442)=>PWR, 
      a(441)=>GND, a(440)=>PWR, a(439)=>GND, a(438)=>GND, a(437)=>PWR, 
      a(436)=>GND, a(435)=>GND, a(434)=>GND, a(433)=>PWR, a(432)=>PWR, 
      a(431)=>GND, a(430)=>PWR, a(429)=>PWR, a(428)=>PWR, a(427)=>PWR, 
      a(426)=>GND, a(425)=>PWR, a(424)=>GND, a(423)=>PWR, a(422)=>GND, 
      a(421)=>GND, a(420)=>GND, a(419)=>PWR, a(418)=>GND, a(417)=>PWR, 
      a(416)=>GND, a(415)=>PWR, a(414)=>GND, a(413)=>PWR, a(412)=>PWR, 
      a(411)=>PWR, a(410)=>GND, a(409)=>GND, a(408)=>GND, a(407)=>PWR, 
      a(406)=>GND, a(405)=>GND, a(404)=>GND, a(403)=>GND, a(402)=>GND, 
      a(401)=>GND, a(400)=>GND, a(399)=>PWR, a(398)=>PWR, a(397)=>PWR, 
      a(396)=>GND, a(395)=>GND, a(394)=>GND, a(393)=>GND, a(392)=>GND, 
      a(391)=>GND, a(390)=>GND, a(389)=>GND, a(388)=>PWR, a(387)=>PWR, 
      a(386)=>GND, a(385)=>PWR, a(384)=>GND, a(383)=>GND, a(382)=>PWR, 
      a(381)=>PWR, a(380)=>GND, a(379)=>PWR, a(378)=>GND, a(377)=>GND, 
      a(376)=>PWR, a(375)=>PWR, a(374)=>PWR, a(373)=>GND, a(372)=>GND, 
      a(371)=>PWR, a(370)=>GND, a(369)=>GND, a(368)=>GND, a(367)=>GND, 
      a(366)=>PWR, a(365)=>PWR, a(364)=>GND, a(363)=>PWR, a(362)=>PWR, 
      a(361)=>PWR, a(360)=>GND, a(359)=>GND, a(358)=>PWR, a(357)=>GND, 
      a(356)=>GND, a(355)=>PWR, a(354)=>PWR, a(353)=>PWR, a(352)=>GND, 
      a(351)=>GND, a(350)=>PWR, a(349)=>PWR, a(348)=>GND, a(347)=>GND, 
      a(346)=>GND, a(345)=>GND, a(344)=>PWR, a(343)=>GND, a(342)=>PWR, 
      a(341)=>GND, a(340)=>GND, a(339)=>GND, a(338)=>GND, a(337)=>GND, 
      a(336)=>PWR, a(335)=>PWR, a(334)=>GND, a(333)=>GND, a(332)=>GND, 
      a(331)=>PWR, a(330)=>PWR, a(329)=>PWR, a(328)=>GND, a(327)=>PWR, 
      a(326)=>PWR, a(325)=>GND, a(324)=>PWR, a(323)=>PWR, a(322)=>GND, 
      a(321)=>GND, a(320)=>PWR, a(319)=>GND, a(318)=>GND, a(317)=>PWR, 
      a(316)=>PWR, a(315)=>GND, a(314)=>GND, a(313)=>GND, a(312)=>PWR, 
      a(311)=>PWR, a(310)=>GND, a(309)=>GND, a(308)=>GND, a(307)=>PWR, 
      a(306)=>GND, a(305)=>GND, a(304)=>PWR, a(303)=>PWR, a(302)=>PWR, 
      a(301)=>GND, a(300)=>GND, a(299)=>GND, a(298)=>PWR, a(297)=>GND, 
      a(296)=>PWR, a(295)=>PWR, a(294)=>GND, a(293)=>GND, a(292)=>PWR, 
      a(291)=>GND, a(290)=>PWR, a(289)=>PWR, a(288)=>PWR, a(287)=>GND, 
      a(286)=>PWR, a(285)=>PWR, a(284)=>GND, a(283)=>GND, a(282)=>PWR, 
      a(281)=>GND, a(280)=>PWR, a(279)=>GND, a(278)=>GND, a(277)=>GND, 
      a(276)=>PWR, a(275)=>PWR, a(274)=>PWR, a(273)=>PWR, a(272)=>GND, 
      a(271)=>GND, a(270)=>PWR, a(269)=>PWR, a(268)=>GND, a(267)=>GND, 
      a(266)=>PWR, a(265)=>PWR, a(264)=>GND, a(263)=>PWR, a(262)=>PWR, 
      a(261)=>PWR, a(260)=>GND, a(259)=>PWR, a(258)=>PWR, a(257)=>PWR, 
      a(256)=>PWR, a(255)=>PWR, a(254)=>GND, a(253)=>PWR, a(252)=>GND, 
      a(251)=>PWR, a(250)=>GND, a(249)=>GND, a(248)=>GND, a(247)=>GND, 
      a(246)=>GND, a(245)=>GND, a(244)=>PWR, a(243)=>GND, a(242)=>GND, 
      a(241)=>GND, a(240)=>PWR, a(239)=>GND, a(238)=>PWR, a(237)=>GND, 
      a(236)=>PWR, a(235)=>PWR, a(234)=>GND, a(233)=>PWR, a(232)=>PWR, 
      a(231)=>PWR, a(230)=>GND, a(229)=>GND, a(228)=>GND, a(227)=>GND, 
      a(226)=>PWR, a(225)=>GND, a(224)=>PWR, a(223)=>PWR, a(222)=>PWR, 
      a(221)=>GND, a(220)=>PWR, a(219)=>PWR, a(218)=>PWR, a(217)=>PWR, 
      a(216)=>PWR, a(215)=>GND, a(214)=>PWR, a(213)=>GND, a(212)=>GND, 
      a(211)=>PWR, a(210)=>PWR, a(209)=>PWR, a(208)=>PWR, a(207)=>PWR, 
      a(206)=>GND, a(205)=>PWR, a(204)=>PWR, a(203)=>PWR, a(202)=>PWR, 
      a(201)=>PWR, a(200)=>PWR, a(199)=>GND, a(198)=>GND, a(197)=>PWR, 
      a(196)=>GND, a(195)=>GND, a(194)=>PWR, a(193)=>GND, a(192)=>PWR, 
      a(191)=>GND, a(190)=>PWR, a(189)=>PWR, a(188)=>GND, a(187)=>PWR, 
      a(186)=>GND, a(185)=>PWR, a(184)=>PWR, a(183)=>GND, a(182)=>GND, 
      a(181)=>GND, a(180)=>GND, a(179)=>GND, a(178)=>GND, a(177)=>GND, 
      a(176)=>GND, a(175)=>GND, a(174)=>PWR, a(173)=>GND, a(172)=>GND, 
      a(171)=>GND, a(170)=>PWR, a(169)=>GND, a(168)=>GND, a(167)=>PWR, 
      a(166)=>GND, a(165)=>GND, a(164)=>PWR, a(163)=>GND, a(162)=>GND, 
      a(161)=>PWR, a(160)=>GND, a(159)=>GND, a(158)=>GND, a(157)=>PWR, 
      a(156)=>PWR, a(155)=>PWR, a(154)=>PWR, a(153)=>PWR, a(152)=>GND, 
      a(151)=>GND, a(150)=>PWR, a(149)=>PWR, a(148)=>GND, a(147)=>PWR, 
      a(146)=>GND, a(145)=>GND, a(144)=>GND, a(143)=>GND, a(142)=>GND, 
      a(141)=>GND, a(140)=>GND, a(139)=>PWR, a(138)=>GND, a(137)=>GND, 
      a(136)=>PWR, a(135)=>GND, a(134)=>PWR, a(133)=>PWR, a(132)=>GND, 
      a(131)=>GND, a(130)=>GND, a(129)=>PWR, a(128)=>GND, a(127)=>PWR, 
      a(126)=>PWR, a(125)=>GND, a(124)=>GND, a(123)=>PWR, a(122)=>PWR, 
      a(121)=>GND, a(120)=>PWR, a(119)=>GND, a(118)=>PWR, a(117)=>PWR, 
      a(116)=>PWR, a(115)=>PWR, a(114)=>PWR, a(113)=>PWR, a(112)=>GND, 
      a(111)=>PWR, a(110)=>GND, a(109)=>PWR, a(108)=>GND, a(107)=>GND, 
      a(106)=>PWR, a(105)=>GND, a(104)=>GND, a(103)=>PWR, a(102)=>GND, 
      a(101)=>GND, a(100)=>GND, a(99)=>GND, a(98)=>PWR, a(97)=>GND, a(96)=>
      PWR, a(95)=>GND, a(94)=>PWR, a(93)=>PWR, a(92)=>PWR, a(91)=>PWR, a(90)
      =>PWR, a(89)=>GND, a(88)=>PWR, a(87)=>GND, a(86)=>GND, a(85)=>PWR, 
      a(84)=>PWR, a(83)=>GND, a(82)=>GND, a(81)=>PWR, a(80)=>GND, a(79)=>GND, 
      a(78)=>PWR, a(77)=>PWR, a(76)=>PWR, a(75)=>GND, a(74)=>PWR, a(73)=>GND, 
      a(72)=>PWR, a(71)=>GND, a(70)=>PWR, a(69)=>PWR, a(68)=>PWR, a(67)=>GND, 
      a(66)=>GND, a(65)=>PWR, a(64)=>PWR, a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>PWR, a(58)=>PWR, a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>PWR, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>PWR, 
      a(48)=>PWR, a(47)=>PWR, a(46)=>PWR, a(45)=>PWR, a(44)=>PWR, a(43)=>GND, 
      a(42)=>GND, a(41)=>PWR, a(40)=>PWR, a(39)=>GND, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>PWR, a(33)=>PWR, a(32)=>PWR, a(31)=>PWR, 
      a(30)=>PWR, a(29)=>PWR, a(28)=>PWR, a(27)=>PWR, a(26)=>PWR, a(25)=>GND, 
      a(24)=>GND, a(23)=>PWR, a(22)=>PWR, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>GND, a(15)=>PWR, a(14)=>GND, a(13)=>PWR, 
      a(12)=>GND, a(11)=>PWR, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>GND, a(3)=>GND, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(1023)=>GND, b(1022)=>GND, b(1021)=>GND, b(1020)=>GND, b(1019)
      =>GND, b(1018)=>GND, b(1017)=>GND, b(1016)=>GND, b(1015)=>GND, b(1014)
      =>GND, b(1013)=>GND, b(1012)=>GND, b(1011)=>GND, b(1010)=>GND, b(1009)
      =>GND, b(1008)=>GND, b(1007)=>GND, b(1006)=>GND, b(1005)=>GND, b(1004)
      =>GND, b(1003)=>GND, b(1002)=>GND, b(1001)=>GND, b(1000)=>GND, b(999)
      =>GND, b(998)=>GND, b(997)=>GND, b(996)=>GND, b(995)=>GND, b(994)=>GND, 
      b(993)=>GND, b(992)=>GND, b(991)=>GND, b(990)=>GND, b(989)=>GND, 
      b(988)=>GND, b(987)=>GND, b(986)=>GND, b(985)=>GND, b(984)=>GND, 
      b(983)=>GND, b(982)=>GND, b(981)=>GND, b(980)=>GND, b(979)=>GND, 
      b(978)=>GND, b(977)=>GND, b(976)=>GND, b(975)=>GND, b(974)=>GND, 
      b(973)=>GND, b(972)=>GND, b(971)=>GND, b(970)=>GND, b(969)=>GND, 
      b(968)=>GND, b(967)=>GND, b(966)=>GND, b(965)=>GND, b(964)=>GND, 
      b(963)=>GND, b(962)=>GND, b(961)=>GND, b(960)=>GND, b(959)=>GND, 
      b(958)=>GND, b(957)=>GND, b(956)=>GND, b(955)=>GND, b(954)=>GND, 
      b(953)=>GND, b(952)=>GND, b(951)=>GND, b(950)=>GND, b(949)=>GND, 
      b(948)=>GND, b(947)=>GND, b(946)=>GND, b(945)=>GND, b(944)=>GND, 
      b(943)=>GND, b(942)=>GND, b(941)=>GND, b(940)=>GND, b(939)=>GND, 
      b(938)=>GND, b(937)=>GND, b(936)=>GND, b(935)=>GND, b(934)=>GND, 
      b(933)=>GND, b(932)=>GND, b(931)=>GND, b(930)=>GND, b(929)=>GND, 
      b(928)=>GND, b(927)=>GND, b(926)=>GND, b(925)=>GND, b(924)=>GND, 
      b(923)=>GND, b(922)=>GND, b(921)=>GND, b(920)=>GND, b(919)=>GND, 
      b(918)=>GND, b(917)=>GND, b(916)=>GND, b(915)=>GND, b(914)=>GND, 
      b(913)=>GND, b(912)=>GND, b(911)=>GND, b(910)=>GND, b(909)=>GND, 
      b(908)=>GND, b(907)=>GND, b(906)=>GND, b(905)=>GND, b(904)=>GND, 
      b(903)=>GND, b(902)=>GND, b(901)=>GND, b(900)=>GND, b(899)=>GND, 
      b(898)=>GND, b(897)=>GND, b(896)=>GND, b(895)=>GND, b(894)=>GND, 
      b(893)=>GND, b(892)=>GND, b(891)=>GND, b(890)=>GND, b(889)=>GND, 
      b(888)=>GND, b(887)=>GND, b(886)=>GND, b(885)=>GND, b(884)=>GND, 
      b(883)=>GND, b(882)=>GND, b(881)=>GND, b(880)=>GND, b(879)=>GND, 
      b(878)=>GND, b(877)=>GND, b(876)=>GND, b(875)=>GND, b(874)=>GND, 
      b(873)=>GND, b(872)=>GND, b(871)=>GND, b(870)=>GND, b(869)=>GND, 
      b(868)=>GND, b(867)=>GND, b(866)=>GND, b(865)=>GND, b(864)=>GND, 
      b(863)=>GND, b(862)=>GND, b(861)=>GND, b(860)=>GND, b(859)=>GND, 
      b(858)=>GND, b(857)=>GND, b(856)=>GND, b(855)=>GND, b(854)=>GND, 
      b(853)=>GND, b(852)=>GND, b(851)=>GND, b(850)=>GND, b(849)=>GND, 
      b(848)=>GND, b(847)=>GND, b(846)=>GND, b(845)=>GND, b(844)=>GND, 
      b(843)=>GND, b(842)=>GND, b(841)=>GND, b(840)=>GND, b(839)=>GND, 
      b(838)=>GND, b(837)=>GND, b(836)=>GND, b(835)=>GND, b(834)=>GND, 
      b(833)=>GND, b(832)=>GND, b(831)=>GND, b(830)=>GND, b(829)=>GND, 
      b(828)=>GND, b(827)=>GND, b(826)=>GND, b(825)=>GND, b(824)=>GND, 
      b(823)=>GND, b(822)=>GND, b(821)=>GND, b(820)=>GND, b(819)=>GND, 
      b(818)=>GND, b(817)=>GND, b(816)=>GND, b(815)=>GND, b(814)=>GND, 
      b(813)=>GND, b(812)=>GND, b(811)=>GND, b(810)=>GND, b(809)=>GND, 
      b(808)=>GND, b(807)=>GND, b(806)=>GND, b(805)=>GND, b(804)=>GND, 
      b(803)=>GND, b(802)=>GND, b(801)=>GND, b(800)=>GND, b(799)=>GND, 
      b(798)=>GND, b(797)=>GND, b(796)=>GND, b(795)=>GND, b(794)=>GND, 
      b(793)=>GND, b(792)=>GND, b(791)=>GND, b(790)=>GND, b(789)=>GND, 
      b(788)=>GND, b(787)=>GND, b(786)=>GND, b(785)=>GND, b(784)=>GND, 
      b(783)=>GND, b(782)=>GND, b(781)=>GND, b(780)=>GND, b(779)=>GND, 
      b(778)=>GND, b(777)=>GND, b(776)=>GND, b(775)=>GND, b(774)=>GND, 
      b(773)=>GND, b(772)=>GND, b(771)=>GND, b(770)=>GND, b(769)=>GND, 
      b(768)=>GND, b(767)=>GND, b(766)=>GND, b(765)=>GND, b(764)=>GND, 
      b(763)=>GND, b(762)=>GND, b(761)=>GND, b(760)=>GND, b(759)=>GND, 
      b(758)=>GND, b(757)=>GND, b(756)=>GND, b(755)=>GND, b(754)=>GND, 
      b(753)=>GND, b(752)=>GND, b(751)=>GND, b(750)=>GND, b(749)=>GND, 
      b(748)=>GND, b(747)=>GND, b(746)=>GND, b(745)=>GND, b(744)=>GND, 
      b(743)=>GND, b(742)=>GND, b(741)=>GND, b(740)=>GND, b(739)=>GND, 
      b(738)=>GND, b(737)=>GND, b(736)=>GND, b(735)=>GND, b(734)=>GND, 
      b(733)=>GND, b(732)=>GND, b(731)=>GND, b(730)=>GND, b(729)=>GND, 
      b(728)=>GND, b(727)=>GND, b(726)=>GND, b(725)=>GND, b(724)=>GND, 
      b(723)=>GND, b(722)=>GND, b(721)=>GND, b(720)=>GND, b(719)=>GND, 
      b(718)=>GND, b(717)=>GND, b(716)=>GND, b(715)=>GND, b(714)=>GND, 
      b(713)=>GND, b(712)=>GND, b(711)=>GND, b(710)=>GND, b(709)=>GND, 
      b(708)=>GND, b(707)=>GND, b(706)=>GND, b(705)=>GND, b(704)=>GND, 
      b(703)=>GND, b(702)=>GND, b(701)=>GND, b(700)=>GND, b(699)=>GND, 
      b(698)=>GND, b(697)=>GND, b(696)=>GND, b(695)=>GND, b(694)=>GND, 
      b(693)=>GND, b(692)=>GND, b(691)=>GND, b(690)=>GND, b(689)=>GND, 
      b(688)=>GND, b(687)=>GND, b(686)=>GND, b(685)=>GND, b(684)=>GND, 
      b(683)=>GND, b(682)=>GND, b(681)=>GND, b(680)=>GND, b(679)=>GND, 
      b(678)=>GND, b(677)=>GND, b(676)=>GND, b(675)=>GND, b(674)=>GND, 
      b(673)=>GND, b(672)=>GND, b(671)=>GND, b(670)=>GND, b(669)=>GND, 
      b(668)=>GND, b(667)=>GND, b(666)=>GND, b(665)=>GND, b(664)=>GND, 
      b(663)=>GND, b(662)=>GND, b(661)=>GND, b(660)=>GND, b(659)=>GND, 
      b(658)=>GND, b(657)=>GND, b(656)=>GND, b(655)=>GND, b(654)=>GND, 
      b(653)=>GND, b(652)=>GND, b(651)=>GND, b(650)=>GND, b(649)=>GND, 
      b(648)=>GND, b(647)=>GND, b(646)=>GND, b(645)=>GND, b(644)=>GND, 
      b(643)=>GND, b(642)=>GND, b(641)=>GND, b(640)=>GND, b(639)=>GND, 
      b(638)=>GND, b(637)=>GND, b(636)=>GND, b(635)=>GND, b(634)=>GND, 
      b(633)=>GND, b(632)=>GND, b(631)=>GND, b(630)=>GND, b(629)=>GND, 
      b(628)=>GND, b(627)=>GND, b(626)=>GND, b(625)=>GND, b(624)=>GND, 
      b(623)=>GND, b(622)=>GND, b(621)=>GND, b(620)=>GND, b(619)=>GND, 
      b(618)=>GND, b(617)=>GND, b(616)=>GND, b(615)=>GND, b(614)=>GND, 
      b(613)=>GND, b(612)=>GND, b(611)=>GND, b(610)=>GND, b(609)=>GND, 
      b(608)=>GND, b(607)=>GND, b(606)=>GND, b(605)=>GND, b(604)=>GND, 
      b(603)=>GND, b(602)=>GND, b(601)=>GND, b(600)=>GND, b(599)=>GND, 
      b(598)=>GND, b(597)=>GND, b(596)=>GND, b(595)=>GND, b(594)=>GND, 
      b(593)=>GND, b(592)=>GND, b(591)=>GND, b(590)=>GND, b(589)=>GND, 
      b(588)=>GND, b(587)=>GND, b(586)=>GND, b(585)=>GND, b(584)=>GND, 
      b(583)=>GND, b(582)=>GND, b(581)=>GND, b(580)=>GND, b(579)=>GND, 
      b(578)=>GND, b(577)=>GND, b(576)=>GND, b(575)=>GND, b(574)=>GND, 
      b(573)=>GND, b(572)=>GND, b(571)=>GND, b(570)=>GND, b(569)=>GND, 
      b(568)=>GND, b(567)=>GND, b(566)=>GND, b(565)=>GND, b(564)=>GND, 
      b(563)=>GND, b(562)=>GND, b(561)=>GND, b(560)=>GND, b(559)=>GND, 
      b(558)=>GND, b(557)=>GND, b(556)=>GND, b(555)=>GND, b(554)=>GND, 
      b(553)=>GND, b(552)=>GND, b(551)=>GND, b(550)=>GND, b(549)=>GND, 
      b(548)=>GND, b(547)=>GND, b(546)=>GND, b(545)=>GND, b(544)=>GND, 
      b(543)=>GND, b(542)=>GND, b(541)=>GND, b(540)=>GND, b(539)=>GND, 
      b(538)=>GND, b(537)=>GND, b(536)=>GND, b(535)=>GND, b(534)=>GND, 
      b(533)=>GND, b(532)=>GND, b(531)=>GND, b(530)=>GND, b(529)=>GND, 
      b(528)=>GND, b(527)=>GND, b(526)=>GND, b(525)=>GND, b(524)=>GND, 
      b(523)=>GND, b(522)=>GND, b(521)=>GND, b(520)=>GND, b(519)=>GND, 
      b(518)=>GND, b(517)=>GND, b(516)=>GND, b(515)=>GND, b(514)=>GND, 
      b(513)=>GND, b(512)=>GND, b(511)=>GND, b(510)=>GND, b(509)=>GND, 
      b(508)=>GND, b(507)=>GND, b(506)=>GND, b(505)=>GND, b(504)=>GND, 
      b(503)=>GND, b(502)=>GND, b(501)=>GND, b(500)=>GND, b(499)=>GND, 
      b(498)=>GND, b(497)=>GND, b(496)=>GND, b(495)=>GND, b(494)=>GND, 
      b(493)=>GND, b(492)=>GND, b(491)=>GND, b(490)=>GND, b(489)=>GND, 
      b(488)=>GND, b(487)=>GND, b(486)=>GND, b(485)=>GND, b(484)=>GND, 
      b(483)=>GND, b(482)=>GND, b(481)=>GND, b(480)=>GND, b(479)=>GND, 
      b(478)=>GND, b(477)=>GND, b(476)=>GND, b(475)=>GND, b(474)=>GND, 
      b(473)=>GND, b(472)=>GND, b(471)=>GND, b(470)=>GND, b(469)=>GND, 
      b(468)=>GND, b(467)=>GND, b(466)=>GND, b(465)=>GND, b(464)=>GND, 
      b(463)=>GND, b(462)=>GND, b(461)=>GND, b(460)=>GND, b(459)=>GND, 
      b(458)=>GND, b(457)=>GND, b(456)=>GND, b(455)=>GND, b(454)=>GND, 
      b(453)=>GND, b(452)=>GND, b(451)=>GND, b(450)=>GND, b(449)=>GND, 
      b(448)=>GND, b(447)=>GND, b(446)=>GND, b(445)=>GND, b(444)=>GND, 
      b(443)=>GND, b(442)=>GND, b(441)=>GND, b(440)=>GND, b(439)=>GND, 
      b(438)=>GND, b(437)=>GND, b(436)=>GND, b(435)=>GND, b(434)=>GND, 
      b(433)=>GND, b(432)=>GND, b(431)=>GND, b(430)=>GND, b(429)=>GND, 
      b(428)=>GND, b(427)=>GND, b(426)=>GND, b(425)=>GND, b(424)=>GND, 
      b(423)=>GND, b(422)=>GND, b(421)=>GND, b(420)=>GND, b(419)=>GND, 
      b(418)=>GND, b(417)=>GND, b(416)=>GND, b(415)=>GND, b(414)=>GND, 
      b(413)=>GND, b(412)=>GND, b(411)=>GND, b(410)=>GND, b(409)=>GND, 
      b(408)=>GND, b(407)=>GND, b(406)=>GND, b(405)=>GND, b(404)=>GND, 
      b(403)=>GND, b(402)=>GND, b(401)=>GND, b(400)=>GND, b(399)=>GND, 
      b(398)=>GND, b(397)=>GND, b(396)=>GND, b(395)=>GND, b(394)=>GND, 
      b(393)=>GND, b(392)=>GND, b(391)=>GND, b(390)=>GND, b(389)=>GND, 
      b(388)=>GND, b(387)=>GND, b(386)=>GND, b(385)=>GND, b(384)=>GND, 
      b(383)=>GND, b(382)=>GND, b(381)=>GND, b(380)=>GND, b(379)=>GND, 
      b(378)=>GND, b(377)=>GND, b(376)=>GND, b(375)=>GND, b(374)=>GND, 
      b(373)=>GND, b(372)=>GND, b(371)=>GND, b(370)=>GND, b(369)=>GND, 
      b(368)=>GND, b(367)=>GND, b(366)=>GND, b(365)=>GND, b(364)=>GND, 
      b(363)=>GND, b(362)=>GND, b(361)=>GND, b(360)=>GND, b(359)=>GND, 
      b(358)=>GND, b(357)=>GND, b(356)=>GND, b(355)=>GND, b(354)=>GND, 
      b(353)=>GND, b(352)=>GND, b(351)=>GND, b(350)=>GND, b(349)=>GND, 
      b(348)=>GND, b(347)=>GND, b(346)=>GND, b(345)=>GND, b(344)=>GND, 
      b(343)=>GND, b(342)=>GND, b(341)=>GND, b(340)=>GND, b(339)=>GND, 
      b(338)=>GND, b(337)=>GND, b(336)=>GND, b(335)=>GND, b(334)=>GND, 
      b(333)=>GND, b(332)=>GND, b(331)=>GND, b(330)=>GND, b(329)=>GND, 
      b(328)=>GND, b(327)=>GND, b(326)=>GND, b(325)=>GND, b(324)=>GND, 
      b(323)=>GND, b(322)=>GND, b(321)=>GND, b(320)=>GND, b(319)=>GND, 
      b(318)=>GND, b(317)=>GND, b(316)=>GND, b(315)=>GND, b(314)=>GND, 
      b(313)=>GND, b(312)=>GND, b(311)=>GND, b(310)=>GND, b(309)=>GND, 
      b(308)=>GND, b(307)=>GND, b(306)=>GND, b(305)=>GND, b(304)=>GND, 
      b(303)=>GND, b(302)=>GND, b(301)=>GND, b(300)=>GND, b(299)=>GND, 
      b(298)=>GND, b(297)=>GND, b(296)=>GND, b(295)=>GND, b(294)=>GND, 
      b(293)=>GND, b(292)=>GND, b(291)=>GND, b(290)=>GND, b(289)=>GND, 
      b(288)=>GND, b(287)=>GND, b(286)=>GND, b(285)=>GND, b(284)=>GND, 
      b(283)=>GND, b(282)=>GND, b(281)=>GND, b(280)=>GND, b(279)=>GND, 
      b(278)=>GND, b(277)=>GND, b(276)=>GND, b(275)=>GND, b(274)=>GND, 
      b(273)=>GND, b(272)=>GND, b(271)=>GND, b(270)=>GND, b(269)=>GND, 
      b(268)=>GND, b(267)=>GND, b(266)=>GND, b(265)=>GND, b(264)=>GND, 
      b(263)=>GND, b(262)=>GND, b(261)=>GND, b(260)=>GND, b(259)=>GND, 
      b(258)=>GND, b(257)=>GND, b(256)=>GND, b(255)=>GND, b(254)=>GND, 
      b(253)=>GND, b(252)=>GND, b(251)=>GND, b(250)=>GND, b(249)=>GND, 
      b(248)=>GND, b(247)=>GND, b(246)=>GND, b(245)=>GND, b(244)=>GND, 
      b(243)=>GND, b(242)=>GND, b(241)=>GND, b(240)=>GND, b(239)=>GND, 
      b(238)=>GND, b(237)=>GND, b(236)=>GND, b(235)=>GND, b(234)=>GND, 
      b(233)=>GND, b(232)=>GND, b(231)=>GND, b(230)=>GND, b(229)=>GND, 
      b(228)=>GND, b(227)=>GND, b(226)=>GND, b(225)=>GND, b(224)=>GND, 
      b(223)=>GND, b(222)=>GND, b(221)=>GND, b(220)=>GND, b(219)=>GND, 
      b(218)=>GND, b(217)=>GND, b(216)=>GND, b(215)=>GND, b(214)=>GND, 
      b(213)=>GND, b(212)=>GND, b(211)=>GND, b(210)=>GND, b(209)=>GND, 
      b(208)=>GND, b(207)=>GND, b(206)=>GND, b(205)=>GND, b(204)=>GND, 
      b(203)=>GND, b(202)=>GND, b(201)=>GND, b(200)=>GND, b(199)=>GND, 
      b(198)=>GND, b(197)=>GND, b(196)=>GND, b(195)=>GND, b(194)=>GND, 
      b(193)=>GND, b(192)=>GND, b(191)=>GND, b(190)=>GND, b(189)=>GND, 
      b(188)=>GND, b(187)=>GND, b(186)=>GND, b(185)=>GND, b(184)=>GND, 
      b(183)=>GND, b(182)=>GND, b(181)=>GND, b(180)=>GND, b(179)=>GND, 
      b(178)=>GND, b(177)=>GND, b(176)=>GND, b(175)=>GND, b(174)=>GND, 
      b(173)=>GND, b(172)=>GND, b(171)=>GND, b(170)=>GND, b(169)=>GND, 
      b(168)=>GND, b(167)=>GND, b(166)=>GND, b(165)=>GND, b(164)=>GND, 
      b(163)=>GND, b(162)=>GND, b(161)=>GND, b(160)=>GND, b(159)=>GND, 
      b(158)=>GND, b(157)=>GND, b(156)=>GND, b(155)=>GND, b(154)=>GND, 
      b(153)=>GND, b(152)=>GND, b(151)=>GND, b(150)=>GND, b(149)=>GND, 
      b(148)=>GND, b(147)=>GND, b(146)=>GND, b(145)=>GND, b(144)=>GND, 
      b(143)=>GND, b(142)=>GND, b(141)=>GND, b(140)=>GND, b(139)=>GND, 
      b(138)=>GND, b(137)=>GND, b(136)=>GND, b(135)=>GND, b(134)=>GND, 
      b(133)=>GND, b(132)=>GND, b(131)=>GND, b(130)=>GND, b(129)=>GND, 
      b(128)=>GND, b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, 
      b(123)=>GND, b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, 
      b(118)=>GND, b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, 
      b(113)=>GND, b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, 
      b(108)=>GND, b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, 
      b(103)=>GND, b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)
      =>GND, b(97)=>GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, 
      b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, 
      b(86)=>GND, b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, 
      b(80)=>GND, b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, 
      b(74)=>GND, b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, 
      b(68)=>GND, b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, 
      b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, 
      b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, 
      b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, 
      b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, 
      b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, 
      b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, 
      b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, 
      b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>
      address(9), b(8)=>address(8), b(7)=>address(7), b(6)=>address(6), b(5)
      =>address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), 
      b(1)=>address(1), b(0)=>address(0), d=>q(5));
   modgen_mux_16 : mux_1024u_1024u port map ( a(1023)=>GND, a(1022)=>GND, 
      a(1021)=>GND, a(1020)=>PWR, a(1019)=>GND, a(1018)=>PWR, a(1017)=>PWR, 
      a(1016)=>GND, a(1015)=>GND, a(1014)=>GND, a(1013)=>PWR, a(1012)=>GND, 
      a(1011)=>PWR, a(1010)=>PWR, a(1009)=>PWR, a(1008)=>GND, a(1007)=>PWR, 
      a(1006)=>GND, a(1005)=>PWR, a(1004)=>PWR, a(1003)=>GND, a(1002)=>GND, 
      a(1001)=>PWR, a(1000)=>GND, a(999)=>PWR, a(998)=>GND, a(997)=>PWR, 
      a(996)=>GND, a(995)=>PWR, a(994)=>GND, a(993)=>PWR, a(992)=>PWR, 
      a(991)=>GND, a(990)=>GND, a(989)=>GND, a(988)=>GND, a(987)=>PWR, 
      a(986)=>GND, a(985)=>GND, a(984)=>GND, a(983)=>GND, a(982)=>GND, 
      a(981)=>GND, a(980)=>GND, a(979)=>PWR, a(978)=>PWR, a(977)=>PWR, 
      a(976)=>GND, a(975)=>GND, a(974)=>GND, a(973)=>GND, a(972)=>GND, 
      a(971)=>PWR, a(970)=>PWR, a(969)=>GND, a(968)=>PWR, a(967)=>PWR, 
      a(966)=>PWR, a(965)=>PWR, a(964)=>PWR, a(963)=>GND, a(962)=>PWR, 
      a(961)=>PWR, a(960)=>GND, a(959)=>PWR, a(958)=>GND, a(957)=>GND, 
      a(956)=>GND, a(955)=>GND, a(954)=>GND, a(953)=>GND, a(952)=>PWR, 
      a(951)=>PWR, a(950)=>GND, a(949)=>PWR, a(948)=>GND, a(947)=>GND, 
      a(946)=>PWR, a(945)=>PWR, a(944)=>PWR, a(943)=>GND, a(942)=>PWR, 
      a(941)=>PWR, a(940)=>GND, a(939)=>GND, a(938)=>GND, a(937)=>GND, 
      a(936)=>GND, a(935)=>PWR, a(934)=>GND, a(933)=>PWR, a(932)=>PWR, 
      a(931)=>GND, a(930)=>PWR, a(929)=>GND, a(928)=>PWR, a(927)=>PWR, 
      a(926)=>PWR, a(925)=>PWR, a(924)=>GND, a(923)=>GND, a(922)=>PWR, 
      a(921)=>GND, a(920)=>GND, a(919)=>GND, a(918)=>GND, a(917)=>GND, 
      a(916)=>PWR, a(915)=>GND, a(914)=>PWR, a(913)=>PWR, a(912)=>PWR, 
      a(911)=>PWR, a(910)=>PWR, a(909)=>PWR, a(908)=>PWR, a(907)=>GND, 
      a(906)=>PWR, a(905)=>GND, a(904)=>PWR, a(903)=>GND, a(902)=>PWR, 
      a(901)=>GND, a(900)=>GND, a(899)=>PWR, a(898)=>GND, a(897)=>GND, 
      a(896)=>PWR, a(895)=>PWR, a(894)=>PWR, a(893)=>PWR, a(892)=>GND, 
      a(891)=>PWR, a(890)=>PWR, a(889)=>PWR, a(888)=>PWR, a(887)=>PWR, 
      a(886)=>PWR, a(885)=>GND, a(884)=>PWR, a(883)=>PWR, a(882)=>GND, 
      a(881)=>GND, a(880)=>GND, a(879)=>PWR, a(878)=>GND, a(877)=>PWR, 
      a(876)=>PWR, a(875)=>PWR, a(874)=>PWR, a(873)=>PWR, a(872)=>GND, 
      a(871)=>GND, a(870)=>PWR, a(869)=>GND, a(868)=>PWR, a(867)=>GND, 
      a(866)=>PWR, a(865)=>GND, a(864)=>PWR, a(863)=>PWR, a(862)=>PWR, 
      a(861)=>PWR, a(860)=>PWR, a(859)=>GND, a(858)=>PWR, a(857)=>PWR, 
      a(856)=>GND, a(855)=>GND, a(854)=>PWR, a(853)=>PWR, a(852)=>PWR, 
      a(851)=>GND, a(850)=>PWR, a(849)=>GND, a(848)=>GND, a(847)=>PWR, 
      a(846)=>GND, a(845)=>GND, a(844)=>GND, a(843)=>GND, a(842)=>PWR, 
      a(841)=>GND, a(840)=>GND, a(839)=>GND, a(838)=>PWR, a(837)=>PWR, 
      a(836)=>GND, a(835)=>PWR, a(834)=>GND, a(833)=>PWR, a(832)=>PWR, 
      a(831)=>PWR, a(830)=>PWR, a(829)=>GND, a(828)=>GND, a(827)=>PWR, 
      a(826)=>PWR, a(825)=>PWR, a(824)=>GND, a(823)=>GND, a(822)=>GND, 
      a(821)=>GND, a(820)=>GND, a(819)=>GND, a(818)=>PWR, a(817)=>PWR, 
      a(816)=>PWR, a(815)=>PWR, a(814)=>PWR, a(813)=>GND, a(812)=>PWR, 
      a(811)=>GND, a(810)=>PWR, a(809)=>PWR, a(808)=>PWR, a(807)=>GND, 
      a(806)=>PWR, a(805)=>PWR, a(804)=>PWR, a(803)=>PWR, a(802)=>GND, 
      a(801)=>PWR, a(800)=>PWR, a(799)=>GND, a(798)=>PWR, a(797)=>PWR, 
      a(796)=>PWR, a(795)=>PWR, a(794)=>GND, a(793)=>GND, a(792)=>GND, 
      a(791)=>GND, a(790)=>GND, a(789)=>GND, a(788)=>PWR, a(787)=>PWR, 
      a(786)=>GND, a(785)=>GND, a(784)=>PWR, a(783)=>GND, a(782)=>GND, 
      a(781)=>PWR, a(780)=>PWR, a(779)=>GND, a(778)=>PWR, a(777)=>GND, 
      a(776)=>PWR, a(775)=>PWR, a(774)=>PWR, a(773)=>PWR, a(772)=>GND, 
      a(771)=>GND, a(770)=>GND, a(769)=>GND, a(768)=>GND, a(767)=>GND, 
      a(766)=>PWR, a(765)=>PWR, a(764)=>PWR, a(763)=>GND, a(762)=>GND, 
      a(761)=>GND, a(760)=>GND, a(759)=>GND, a(758)=>GND, a(757)=>GND, 
      a(756)=>PWR, a(755)=>PWR, a(754)=>PWR, a(753)=>GND, a(752)=>GND, 
      a(751)=>GND, a(750)=>GND, a(749)=>PWR, a(748)=>GND, a(747)=>GND, 
      a(746)=>GND, a(745)=>PWR, a(744)=>GND, a(743)=>PWR, a(742)=>PWR, 
      a(741)=>GND, a(740)=>PWR, a(739)=>GND, a(738)=>GND, a(737)=>PWR, 
      a(736)=>GND, a(735)=>PWR, a(734)=>GND, a(733)=>PWR, a(732)=>PWR, 
      a(731)=>GND, a(730)=>GND, a(729)=>GND, a(728)=>PWR, a(727)=>GND, 
      a(726)=>GND, a(725)=>PWR, a(724)=>PWR, a(723)=>PWR, a(722)=>PWR, 
      a(721)=>PWR, a(720)=>GND, a(719)=>PWR, a(718)=>PWR, a(717)=>GND, 
      a(716)=>GND, a(715)=>PWR, a(714)=>PWR, a(713)=>PWR, a(712)=>PWR, 
      a(711)=>GND, a(710)=>PWR, a(709)=>GND, a(708)=>GND, a(707)=>PWR, 
      a(706)=>GND, a(705)=>PWR, a(704)=>GND, a(703)=>GND, a(702)=>PWR, 
      a(701)=>PWR, a(700)=>PWR, a(699)=>GND, a(698)=>GND, a(697)=>PWR, 
      a(696)=>GND, a(695)=>GND, a(694)=>GND, a(693)=>GND, a(692)=>GND, 
      a(691)=>PWR, a(690)=>GND, a(689)=>PWR, a(688)=>GND, a(687)=>PWR, 
      a(686)=>GND, a(685)=>GND, a(684)=>GND, a(683)=>GND, a(682)=>PWR, 
      a(681)=>PWR, a(680)=>PWR, a(679)=>PWR, a(678)=>GND, a(677)=>GND, 
      a(676)=>GND, a(675)=>PWR, a(674)=>PWR, a(673)=>GND, a(672)=>PWR, 
      a(671)=>GND, a(670)=>GND, a(669)=>PWR, a(668)=>PWR, a(667)=>GND, 
      a(666)=>PWR, a(665)=>PWR, a(664)=>GND, a(663)=>GND, a(662)=>GND, 
      a(661)=>PWR, a(660)=>GND, a(659)=>GND, a(658)=>GND, a(657)=>PWR, 
      a(656)=>GND, a(655)=>GND, a(654)=>GND, a(653)=>GND, a(652)=>GND, 
      a(651)=>PWR, a(650)=>PWR, a(649)=>GND, a(648)=>PWR, a(647)=>GND, 
      a(646)=>PWR, a(645)=>PWR, a(644)=>GND, a(643)=>PWR, a(642)=>GND, 
      a(641)=>PWR, a(640)=>PWR, a(639)=>PWR, a(638)=>GND, a(637)=>GND, 
      a(636)=>PWR, a(635)=>GND, a(634)=>GND, a(633)=>GND, a(632)=>GND, 
      a(631)=>PWR, a(630)=>PWR, a(629)=>GND, a(628)=>PWR, a(627)=>GND, 
      a(626)=>PWR, a(625)=>GND, a(624)=>PWR, a(623)=>PWR, a(622)=>PWR, 
      a(621)=>PWR, a(620)=>GND, a(619)=>PWR, a(618)=>GND, a(617)=>PWR, 
      a(616)=>PWR, a(615)=>GND, a(614)=>PWR, a(613)=>PWR, a(612)=>PWR, 
      a(611)=>GND, a(610)=>GND, a(609)=>GND, a(608)=>PWR, a(607)=>PWR, 
      a(606)=>GND, a(605)=>PWR, a(604)=>PWR, a(603)=>GND, a(602)=>GND, 
      a(601)=>GND, a(600)=>PWR, a(599)=>PWR, a(598)=>GND, a(597)=>GND, 
      a(596)=>GND, a(595)=>PWR, a(594)=>PWR, a(593)=>GND, a(592)=>GND, 
      a(591)=>PWR, a(590)=>GND, a(589)=>PWR, a(588)=>PWR, a(587)=>PWR, 
      a(586)=>GND, a(585)=>PWR, a(584)=>PWR, a(583)=>GND, a(582)=>GND, 
      a(581)=>GND, a(580)=>GND, a(579)=>PWR, a(578)=>GND, a(577)=>GND, 
      a(576)=>PWR, a(575)=>PWR, a(574)=>PWR, a(573)=>PWR, a(572)=>GND, 
      a(571)=>PWR, a(570)=>GND, a(569)=>PWR, a(568)=>GND, a(567)=>GND, 
      a(566)=>GND, a(565)=>GND, a(564)=>GND, a(563)=>PWR, a(562)=>PWR, 
      a(561)=>GND, a(560)=>GND, a(559)=>PWR, a(558)=>GND, a(557)=>PWR, 
      a(556)=>GND, a(555)=>GND, a(554)=>GND, a(553)=>PWR, a(552)=>GND, 
      a(551)=>GND, a(550)=>GND, a(549)=>GND, a(548)=>PWR, a(547)=>GND, 
      a(546)=>GND, a(545)=>PWR, a(544)=>PWR, a(543)=>PWR, a(542)=>PWR, 
      a(541)=>GND, a(540)=>PWR, a(539)=>GND, a(538)=>PWR, a(537)=>GND, 
      a(536)=>GND, a(535)=>PWR, a(534)=>PWR, a(533)=>PWR, a(532)=>GND, 
      a(531)=>GND, a(530)=>PWR, a(529)=>PWR, a(528)=>PWR, a(527)=>GND, 
      a(526)=>GND, a(525)=>GND, a(524)=>PWR, a(523)=>PWR, a(522)=>GND, 
      a(521)=>PWR, a(520)=>GND, a(519)=>PWR, a(518)=>GND, a(517)=>GND, 
      a(516)=>PWR, a(515)=>PWR, a(514)=>PWR, a(513)=>GND, a(512)=>GND, 
      a(511)=>GND, a(510)=>GND, a(509)=>PWR, a(508)=>GND, a(507)=>GND, 
      a(506)=>PWR, a(505)=>GND, a(504)=>PWR, a(503)=>GND, a(502)=>GND, 
      a(501)=>GND, a(500)=>GND, a(499)=>GND, a(498)=>GND, a(497)=>GND, 
      a(496)=>PWR, a(495)=>GND, a(494)=>GND, a(493)=>PWR, a(492)=>PWR, 
      a(491)=>PWR, a(490)=>GND, a(489)=>PWR, a(488)=>GND, a(487)=>GND, 
      a(486)=>PWR, a(485)=>PWR, a(484)=>GND, a(483)=>GND, a(482)=>PWR, 
      a(481)=>GND, a(480)=>PWR, a(479)=>GND, a(478)=>GND, a(477)=>PWR, 
      a(476)=>PWR, a(475)=>GND, a(474)=>PWR, a(473)=>GND, a(472)=>PWR, 
      a(471)=>GND, a(470)=>GND, a(469)=>PWR, a(468)=>PWR, a(467)=>GND, 
      a(466)=>PWR, a(465)=>PWR, a(464)=>PWR, a(463)=>GND, a(462)=>PWR, 
      a(461)=>GND, a(460)=>GND, a(459)=>GND, a(458)=>PWR, a(457)=>GND, 
      a(456)=>GND, a(455)=>PWR, a(454)=>GND, a(453)=>PWR, a(452)=>PWR, 
      a(451)=>GND, a(450)=>GND, a(449)=>PWR, a(448)=>PWR, a(447)=>PWR, 
      a(446)=>GND, a(445)=>GND, a(444)=>PWR, a(443)=>GND, a(442)=>GND, 
      a(441)=>GND, a(440)=>PWR, a(439)=>GND, a(438)=>PWR, a(437)=>GND, 
      a(436)=>GND, a(435)=>PWR, a(434)=>GND, a(433)=>GND, a(432)=>GND, 
      a(431)=>GND, a(430)=>GND, a(429)=>GND, a(428)=>GND, a(427)=>PWR, 
      a(426)=>GND, a(425)=>GND, a(424)=>PWR, a(423)=>GND, a(422)=>PWR, 
      a(421)=>GND, a(420)=>GND, a(419)=>PWR, a(418)=>GND, a(417)=>GND, 
      a(416)=>PWR, a(415)=>PWR, a(414)=>PWR, a(413)=>GND, a(412)=>GND, 
      a(411)=>GND, a(410)=>PWR, a(409)=>PWR, a(408)=>GND, a(407)=>PWR, 
      a(406)=>PWR, a(405)=>GND, a(404)=>PWR, a(403)=>GND, a(402)=>GND, 
      a(401)=>PWR, a(400)=>GND, a(399)=>GND, a(398)=>GND, a(397)=>GND, 
      a(396)=>PWR, a(395)=>GND, a(394)=>PWR, a(393)=>PWR, a(392)=>GND, 
      a(391)=>GND, a(390)=>PWR, a(389)=>PWR, a(388)=>GND, a(387)=>GND, 
      a(386)=>GND, a(385)=>GND, a(384)=>PWR, a(383)=>GND, a(382)=>PWR, 
      a(381)=>GND, a(380)=>GND, a(379)=>PWR, a(378)=>PWR, a(377)=>PWR, 
      a(376)=>PWR, a(375)=>PWR, a(374)=>GND, a(373)=>PWR, a(372)=>GND, 
      a(371)=>PWR, a(370)=>PWR, a(369)=>PWR, a(368)=>PWR, a(367)=>PWR, 
      a(366)=>PWR, a(365)=>GND, a(364)=>GND, a(363)=>GND, a(362)=>GND, 
      a(361)=>PWR, a(360)=>GND, a(359)=>GND, a(358)=>GND, a(357)=>GND, 
      a(356)=>GND, a(355)=>GND, a(354)=>GND, a(353)=>PWR, a(352)=>GND, 
      a(351)=>GND, a(350)=>GND, a(349)=>PWR, a(348)=>PWR, a(347)=>GND, 
      a(346)=>PWR, a(345)=>GND, a(344)=>PWR, a(343)=>GND, a(342)=>GND, 
      a(341)=>PWR, a(340)=>PWR, a(339)=>PWR, a(338)=>GND, a(337)=>PWR, 
      a(336)=>PWR, a(335)=>PWR, a(334)=>PWR, a(333)=>GND, a(332)=>GND, 
      a(331)=>PWR, a(330)=>PWR, a(329)=>PWR, a(328)=>PWR, a(327)=>GND, 
      a(326)=>GND, a(325)=>PWR, a(324)=>PWR, a(323)=>GND, a(322)=>PWR, 
      a(321)=>PWR, a(320)=>PWR, a(319)=>PWR, a(318)=>PWR, a(317)=>PWR, 
      a(316)=>GND, a(315)=>GND, a(314)=>GND, a(313)=>PWR, a(312)=>GND, 
      a(311)=>GND, a(310)=>PWR, a(309)=>GND, a(308)=>PWR, a(307)=>GND, 
      a(306)=>GND, a(305)=>PWR, a(304)=>PWR, a(303)=>GND, a(302)=>PWR, 
      a(301)=>PWR, a(300)=>PWR, a(299)=>GND, a(298)=>GND, a(297)=>GND, 
      a(296)=>PWR, a(295)=>PWR, a(294)=>GND, a(293)=>GND, a(292)=>PWR, 
      a(291)=>PWR, a(290)=>GND, a(289)=>GND, a(288)=>PWR, a(287)=>GND, 
      a(286)=>GND, a(285)=>PWR, a(284)=>PWR, a(283)=>PWR, a(282)=>GND, 
      a(281)=>PWR, a(280)=>PWR, a(279)=>PWR, a(278)=>GND, a(277)=>GND, 
      a(276)=>PWR, a(275)=>PWR, a(274)=>GND, a(273)=>PWR, a(272)=>GND, 
      a(271)=>PWR, a(270)=>PWR, a(269)=>GND, a(268)=>PWR, a(267)=>PWR, 
      a(266)=>GND, a(265)=>GND, a(264)=>GND, a(263)=>PWR, a(262)=>GND, 
      a(261)=>PWR, a(260)=>PWR, a(259)=>PWR, a(258)=>PWR, a(257)=>GND, 
      a(256)=>PWR, a(255)=>PWR, a(254)=>GND, a(253)=>PWR, a(252)=>PWR, 
      a(251)=>PWR, a(250)=>PWR, a(249)=>PWR, a(248)=>GND, a(247)=>GND, 
      a(246)=>GND, a(245)=>PWR, a(244)=>PWR, a(243)=>PWR, a(242)=>GND, 
      a(241)=>GND, a(240)=>PWR, a(239)=>GND, a(238)=>GND, a(237)=>PWR, 
      a(236)=>GND, a(235)=>GND, a(234)=>PWR, a(233)=>PWR, a(232)=>GND, 
      a(231)=>PWR, a(230)=>GND, a(229)=>PWR, a(228)=>GND, a(227)=>PWR, 
      a(226)=>PWR, a(225)=>PWR, a(224)=>GND, a(223)=>PWR, a(222)=>GND, 
      a(221)=>PWR, a(220)=>PWR, a(219)=>GND, a(218)=>PWR, a(217)=>GND, 
      a(216)=>PWR, a(215)=>GND, a(214)=>GND, a(213)=>PWR, a(212)=>PWR, 
      a(211)=>GND, a(210)=>GND, a(209)=>GND, a(208)=>PWR, a(207)=>GND, 
      a(206)=>PWR, a(205)=>GND, a(204)=>GND, a(203)=>GND, a(202)=>PWR, 
      a(201)=>PWR, a(200)=>PWR, a(199)=>GND, a(198)=>GND, a(197)=>GND, 
      a(196)=>PWR, a(195)=>GND, a(194)=>GND, a(193)=>GND, a(192)=>PWR, 
      a(191)=>GND, a(190)=>GND, a(189)=>GND, a(188)=>GND, a(187)=>PWR, 
      a(186)=>PWR, a(185)=>GND, a(184)=>PWR, a(183)=>GND, a(182)=>PWR, 
      a(181)=>GND, a(180)=>PWR, a(179)=>GND, a(178)=>GND, a(177)=>GND, 
      a(176)=>PWR, a(175)=>PWR, a(174)=>GND, a(173)=>PWR, a(172)=>GND, 
      a(171)=>PWR, a(170)=>GND, a(169)=>GND, a(168)=>PWR, a(167)=>GND, 
      a(166)=>PWR, a(165)=>GND, a(164)=>PWR, a(163)=>PWR, a(162)=>GND, 
      a(161)=>GND, a(160)=>GND, a(159)=>GND, a(158)=>PWR, a(157)=>GND, 
      a(156)=>PWR, a(155)=>GND, a(154)=>GND, a(153)=>PWR, a(152)=>PWR, 
      a(151)=>GND, a(150)=>GND, a(149)=>GND, a(148)=>GND, a(147)=>GND, 
      a(146)=>PWR, a(145)=>GND, a(144)=>GND, a(143)=>GND, a(142)=>PWR, 
      a(141)=>GND, a(140)=>GND, a(139)=>PWR, a(138)=>PWR, a(137)=>PWR, 
      a(136)=>PWR, a(135)=>PWR, a(134)=>GND, a(133)=>PWR, a(132)=>PWR, 
      a(131)=>PWR, a(130)=>GND, a(129)=>PWR, a(128)=>PWR, a(127)=>PWR, 
      a(126)=>PWR, a(125)=>GND, a(124)=>PWR, a(123)=>GND, a(122)=>GND, 
      a(121)=>PWR, a(120)=>PWR, a(119)=>GND, a(118)=>PWR, a(117)=>PWR, 
      a(116)=>PWR, a(115)=>GND, a(114)=>GND, a(113)=>GND, a(112)=>PWR, 
      a(111)=>PWR, a(110)=>GND, a(109)=>GND, a(108)=>PWR, a(107)=>PWR, 
      a(106)=>GND, a(105)=>GND, a(104)=>PWR, a(103)=>PWR, a(102)=>PWR, 
      a(101)=>PWR, a(100)=>GND, a(99)=>GND, a(98)=>PWR, a(97)=>GND, a(96)=>
      PWR, a(95)=>PWR, a(94)=>PWR, a(93)=>GND, a(92)=>GND, a(91)=>PWR, a(90)
      =>PWR, a(89)=>PWR, a(88)=>PWR, a(87)=>GND, a(86)=>GND, a(85)=>GND, 
      a(84)=>GND, a(83)=>PWR, a(82)=>PWR, a(81)=>GND, a(80)=>PWR, a(79)=>PWR, 
      a(78)=>PWR, a(77)=>PWR, a(76)=>PWR, a(75)=>GND, a(74)=>PWR, a(73)=>GND, 
      a(72)=>PWR, a(71)=>PWR, a(70)=>PWR, a(69)=>GND, a(68)=>GND, a(67)=>PWR, 
      a(66)=>GND, a(65)=>PWR, a(64)=>GND, a(63)=>GND, a(62)=>PWR, a(61)=>PWR, 
      a(60)=>GND, a(59)=>PWR, a(58)=>GND, a(57)=>PWR, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>PWR, a(52)=>GND, a(51)=>GND, a(50)=>PWR, a(49)=>PWR, 
      a(48)=>PWR, a(47)=>GND, a(46)=>GND, a(45)=>PWR, a(44)=>GND, a(43)=>GND, 
      a(42)=>PWR, a(41)=>GND, a(40)=>GND, a(39)=>PWR, a(38)=>PWR, a(37)=>PWR, 
      a(36)=>PWR, a(35)=>PWR, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>PWR, a(28)=>PWR, a(27)=>PWR, a(26)=>GND, a(25)=>GND, 
      a(24)=>PWR, a(23)=>PWR, a(22)=>GND, a(21)=>GND, a(20)=>PWR, a(19)=>PWR, 
      a(18)=>GND, a(17)=>PWR, a(16)=>GND, a(15)=>PWR, a(14)=>GND, a(13)=>GND, 
      a(12)=>PWR, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)=>PWR, a(2)=>PWR, a(1)=>PWR, a(0)
      =>PWR, b(1023)=>GND, b(1022)=>GND, b(1021)=>GND, b(1020)=>GND, b(1019)
      =>GND, b(1018)=>GND, b(1017)=>GND, b(1016)=>GND, b(1015)=>GND, b(1014)
      =>GND, b(1013)=>GND, b(1012)=>GND, b(1011)=>GND, b(1010)=>GND, b(1009)
      =>GND, b(1008)=>GND, b(1007)=>GND, b(1006)=>GND, b(1005)=>GND, b(1004)
      =>GND, b(1003)=>GND, b(1002)=>GND, b(1001)=>GND, b(1000)=>GND, b(999)
      =>GND, b(998)=>GND, b(997)=>GND, b(996)=>GND, b(995)=>GND, b(994)=>GND, 
      b(993)=>GND, b(992)=>GND, b(991)=>GND, b(990)=>GND, b(989)=>GND, 
      b(988)=>GND, b(987)=>GND, b(986)=>GND, b(985)=>GND, b(984)=>GND, 
      b(983)=>GND, b(982)=>GND, b(981)=>GND, b(980)=>GND, b(979)=>GND, 
      b(978)=>GND, b(977)=>GND, b(976)=>GND, b(975)=>GND, b(974)=>GND, 
      b(973)=>GND, b(972)=>GND, b(971)=>GND, b(970)=>GND, b(969)=>GND, 
      b(968)=>GND, b(967)=>GND, b(966)=>GND, b(965)=>GND, b(964)=>GND, 
      b(963)=>GND, b(962)=>GND, b(961)=>GND, b(960)=>GND, b(959)=>GND, 
      b(958)=>GND, b(957)=>GND, b(956)=>GND, b(955)=>GND, b(954)=>GND, 
      b(953)=>GND, b(952)=>GND, b(951)=>GND, b(950)=>GND, b(949)=>GND, 
      b(948)=>GND, b(947)=>GND, b(946)=>GND, b(945)=>GND, b(944)=>GND, 
      b(943)=>GND, b(942)=>GND, b(941)=>GND, b(940)=>GND, b(939)=>GND, 
      b(938)=>GND, b(937)=>GND, b(936)=>GND, b(935)=>GND, b(934)=>GND, 
      b(933)=>GND, b(932)=>GND, b(931)=>GND, b(930)=>GND, b(929)=>GND, 
      b(928)=>GND, b(927)=>GND, b(926)=>GND, b(925)=>GND, b(924)=>GND, 
      b(923)=>GND, b(922)=>GND, b(921)=>GND, b(920)=>GND, b(919)=>GND, 
      b(918)=>GND, b(917)=>GND, b(916)=>GND, b(915)=>GND, b(914)=>GND, 
      b(913)=>GND, b(912)=>GND, b(911)=>GND, b(910)=>GND, b(909)=>GND, 
      b(908)=>GND, b(907)=>GND, b(906)=>GND, b(905)=>GND, b(904)=>GND, 
      b(903)=>GND, b(902)=>GND, b(901)=>GND, b(900)=>GND, b(899)=>GND, 
      b(898)=>GND, b(897)=>GND, b(896)=>GND, b(895)=>GND, b(894)=>GND, 
      b(893)=>GND, b(892)=>GND, b(891)=>GND, b(890)=>GND, b(889)=>GND, 
      b(888)=>GND, b(887)=>GND, b(886)=>GND, b(885)=>GND, b(884)=>GND, 
      b(883)=>GND, b(882)=>GND, b(881)=>GND, b(880)=>GND, b(879)=>GND, 
      b(878)=>GND, b(877)=>GND, b(876)=>GND, b(875)=>GND, b(874)=>GND, 
      b(873)=>GND, b(872)=>GND, b(871)=>GND, b(870)=>GND, b(869)=>GND, 
      b(868)=>GND, b(867)=>GND, b(866)=>GND, b(865)=>GND, b(864)=>GND, 
      b(863)=>GND, b(862)=>GND, b(861)=>GND, b(860)=>GND, b(859)=>GND, 
      b(858)=>GND, b(857)=>GND, b(856)=>GND, b(855)=>GND, b(854)=>GND, 
      b(853)=>GND, b(852)=>GND, b(851)=>GND, b(850)=>GND, b(849)=>GND, 
      b(848)=>GND, b(847)=>GND, b(846)=>GND, b(845)=>GND, b(844)=>GND, 
      b(843)=>GND, b(842)=>GND, b(841)=>GND, b(840)=>GND, b(839)=>GND, 
      b(838)=>GND, b(837)=>GND, b(836)=>GND, b(835)=>GND, b(834)=>GND, 
      b(833)=>GND, b(832)=>GND, b(831)=>GND, b(830)=>GND, b(829)=>GND, 
      b(828)=>GND, b(827)=>GND, b(826)=>GND, b(825)=>GND, b(824)=>GND, 
      b(823)=>GND, b(822)=>GND, b(821)=>GND, b(820)=>GND, b(819)=>GND, 
      b(818)=>GND, b(817)=>GND, b(816)=>GND, b(815)=>GND, b(814)=>GND, 
      b(813)=>GND, b(812)=>GND, b(811)=>GND, b(810)=>GND, b(809)=>GND, 
      b(808)=>GND, b(807)=>GND, b(806)=>GND, b(805)=>GND, b(804)=>GND, 
      b(803)=>GND, b(802)=>GND, b(801)=>GND, b(800)=>GND, b(799)=>GND, 
      b(798)=>GND, b(797)=>GND, b(796)=>GND, b(795)=>GND, b(794)=>GND, 
      b(793)=>GND, b(792)=>GND, b(791)=>GND, b(790)=>GND, b(789)=>GND, 
      b(788)=>GND, b(787)=>GND, b(786)=>GND, b(785)=>GND, b(784)=>GND, 
      b(783)=>GND, b(782)=>GND, b(781)=>GND, b(780)=>GND, b(779)=>GND, 
      b(778)=>GND, b(777)=>GND, b(776)=>GND, b(775)=>GND, b(774)=>GND, 
      b(773)=>GND, b(772)=>GND, b(771)=>GND, b(770)=>GND, b(769)=>GND, 
      b(768)=>GND, b(767)=>GND, b(766)=>GND, b(765)=>GND, b(764)=>GND, 
      b(763)=>GND, b(762)=>GND, b(761)=>GND, b(760)=>GND, b(759)=>GND, 
      b(758)=>GND, b(757)=>GND, b(756)=>GND, b(755)=>GND, b(754)=>GND, 
      b(753)=>GND, b(752)=>GND, b(751)=>GND, b(750)=>GND, b(749)=>GND, 
      b(748)=>GND, b(747)=>GND, b(746)=>GND, b(745)=>GND, b(744)=>GND, 
      b(743)=>GND, b(742)=>GND, b(741)=>GND, b(740)=>GND, b(739)=>GND, 
      b(738)=>GND, b(737)=>GND, b(736)=>GND, b(735)=>GND, b(734)=>GND, 
      b(733)=>GND, b(732)=>GND, b(731)=>GND, b(730)=>GND, b(729)=>GND, 
      b(728)=>GND, b(727)=>GND, b(726)=>GND, b(725)=>GND, b(724)=>GND, 
      b(723)=>GND, b(722)=>GND, b(721)=>GND, b(720)=>GND, b(719)=>GND, 
      b(718)=>GND, b(717)=>GND, b(716)=>GND, b(715)=>GND, b(714)=>GND, 
      b(713)=>GND, b(712)=>GND, b(711)=>GND, b(710)=>GND, b(709)=>GND, 
      b(708)=>GND, b(707)=>GND, b(706)=>GND, b(705)=>GND, b(704)=>GND, 
      b(703)=>GND, b(702)=>GND, b(701)=>GND, b(700)=>GND, b(699)=>GND, 
      b(698)=>GND, b(697)=>GND, b(696)=>GND, b(695)=>GND, b(694)=>GND, 
      b(693)=>GND, b(692)=>GND, b(691)=>GND, b(690)=>GND, b(689)=>GND, 
      b(688)=>GND, b(687)=>GND, b(686)=>GND, b(685)=>GND, b(684)=>GND, 
      b(683)=>GND, b(682)=>GND, b(681)=>GND, b(680)=>GND, b(679)=>GND, 
      b(678)=>GND, b(677)=>GND, b(676)=>GND, b(675)=>GND, b(674)=>GND, 
      b(673)=>GND, b(672)=>GND, b(671)=>GND, b(670)=>GND, b(669)=>GND, 
      b(668)=>GND, b(667)=>GND, b(666)=>GND, b(665)=>GND, b(664)=>GND, 
      b(663)=>GND, b(662)=>GND, b(661)=>GND, b(660)=>GND, b(659)=>GND, 
      b(658)=>GND, b(657)=>GND, b(656)=>GND, b(655)=>GND, b(654)=>GND, 
      b(653)=>GND, b(652)=>GND, b(651)=>GND, b(650)=>GND, b(649)=>GND, 
      b(648)=>GND, b(647)=>GND, b(646)=>GND, b(645)=>GND, b(644)=>GND, 
      b(643)=>GND, b(642)=>GND, b(641)=>GND, b(640)=>GND, b(639)=>GND, 
      b(638)=>GND, b(637)=>GND, b(636)=>GND, b(635)=>GND, b(634)=>GND, 
      b(633)=>GND, b(632)=>GND, b(631)=>GND, b(630)=>GND, b(629)=>GND, 
      b(628)=>GND, b(627)=>GND, b(626)=>GND, b(625)=>GND, b(624)=>GND, 
      b(623)=>GND, b(622)=>GND, b(621)=>GND, b(620)=>GND, b(619)=>GND, 
      b(618)=>GND, b(617)=>GND, b(616)=>GND, b(615)=>GND, b(614)=>GND, 
      b(613)=>GND, b(612)=>GND, b(611)=>GND, b(610)=>GND, b(609)=>GND, 
      b(608)=>GND, b(607)=>GND, b(606)=>GND, b(605)=>GND, b(604)=>GND, 
      b(603)=>GND, b(602)=>GND, b(601)=>GND, b(600)=>GND, b(599)=>GND, 
      b(598)=>GND, b(597)=>GND, b(596)=>GND, b(595)=>GND, b(594)=>GND, 
      b(593)=>GND, b(592)=>GND, b(591)=>GND, b(590)=>GND, b(589)=>GND, 
      b(588)=>GND, b(587)=>GND, b(586)=>GND, b(585)=>GND, b(584)=>GND, 
      b(583)=>GND, b(582)=>GND, b(581)=>GND, b(580)=>GND, b(579)=>GND, 
      b(578)=>GND, b(577)=>GND, b(576)=>GND, b(575)=>GND, b(574)=>GND, 
      b(573)=>GND, b(572)=>GND, b(571)=>GND, b(570)=>GND, b(569)=>GND, 
      b(568)=>GND, b(567)=>GND, b(566)=>GND, b(565)=>GND, b(564)=>GND, 
      b(563)=>GND, b(562)=>GND, b(561)=>GND, b(560)=>GND, b(559)=>GND, 
      b(558)=>GND, b(557)=>GND, b(556)=>GND, b(555)=>GND, b(554)=>GND, 
      b(553)=>GND, b(552)=>GND, b(551)=>GND, b(550)=>GND, b(549)=>GND, 
      b(548)=>GND, b(547)=>GND, b(546)=>GND, b(545)=>GND, b(544)=>GND, 
      b(543)=>GND, b(542)=>GND, b(541)=>GND, b(540)=>GND, b(539)=>GND, 
      b(538)=>GND, b(537)=>GND, b(536)=>GND, b(535)=>GND, b(534)=>GND, 
      b(533)=>GND, b(532)=>GND, b(531)=>GND, b(530)=>GND, b(529)=>GND, 
      b(528)=>GND, b(527)=>GND, b(526)=>GND, b(525)=>GND, b(524)=>GND, 
      b(523)=>GND, b(522)=>GND, b(521)=>GND, b(520)=>GND, b(519)=>GND, 
      b(518)=>GND, b(517)=>GND, b(516)=>GND, b(515)=>GND, b(514)=>GND, 
      b(513)=>GND, b(512)=>GND, b(511)=>GND, b(510)=>GND, b(509)=>GND, 
      b(508)=>GND, b(507)=>GND, b(506)=>GND, b(505)=>GND, b(504)=>GND, 
      b(503)=>GND, b(502)=>GND, b(501)=>GND, b(500)=>GND, b(499)=>GND, 
      b(498)=>GND, b(497)=>GND, b(496)=>GND, b(495)=>GND, b(494)=>GND, 
      b(493)=>GND, b(492)=>GND, b(491)=>GND, b(490)=>GND, b(489)=>GND, 
      b(488)=>GND, b(487)=>GND, b(486)=>GND, b(485)=>GND, b(484)=>GND, 
      b(483)=>GND, b(482)=>GND, b(481)=>GND, b(480)=>GND, b(479)=>GND, 
      b(478)=>GND, b(477)=>GND, b(476)=>GND, b(475)=>GND, b(474)=>GND, 
      b(473)=>GND, b(472)=>GND, b(471)=>GND, b(470)=>GND, b(469)=>GND, 
      b(468)=>GND, b(467)=>GND, b(466)=>GND, b(465)=>GND, b(464)=>GND, 
      b(463)=>GND, b(462)=>GND, b(461)=>GND, b(460)=>GND, b(459)=>GND, 
      b(458)=>GND, b(457)=>GND, b(456)=>GND, b(455)=>GND, b(454)=>GND, 
      b(453)=>GND, b(452)=>GND, b(451)=>GND, b(450)=>GND, b(449)=>GND, 
      b(448)=>GND, b(447)=>GND, b(446)=>GND, b(445)=>GND, b(444)=>GND, 
      b(443)=>GND, b(442)=>GND, b(441)=>GND, b(440)=>GND, b(439)=>GND, 
      b(438)=>GND, b(437)=>GND, b(436)=>GND, b(435)=>GND, b(434)=>GND, 
      b(433)=>GND, b(432)=>GND, b(431)=>GND, b(430)=>GND, b(429)=>GND, 
      b(428)=>GND, b(427)=>GND, b(426)=>GND, b(425)=>GND, b(424)=>GND, 
      b(423)=>GND, b(422)=>GND, b(421)=>GND, b(420)=>GND, b(419)=>GND, 
      b(418)=>GND, b(417)=>GND, b(416)=>GND, b(415)=>GND, b(414)=>GND, 
      b(413)=>GND, b(412)=>GND, b(411)=>GND, b(410)=>GND, b(409)=>GND, 
      b(408)=>GND, b(407)=>GND, b(406)=>GND, b(405)=>GND, b(404)=>GND, 
      b(403)=>GND, b(402)=>GND, b(401)=>GND, b(400)=>GND, b(399)=>GND, 
      b(398)=>GND, b(397)=>GND, b(396)=>GND, b(395)=>GND, b(394)=>GND, 
      b(393)=>GND, b(392)=>GND, b(391)=>GND, b(390)=>GND, b(389)=>GND, 
      b(388)=>GND, b(387)=>GND, b(386)=>GND, b(385)=>GND, b(384)=>GND, 
      b(383)=>GND, b(382)=>GND, b(381)=>GND, b(380)=>GND, b(379)=>GND, 
      b(378)=>GND, b(377)=>GND, b(376)=>GND, b(375)=>GND, b(374)=>GND, 
      b(373)=>GND, b(372)=>GND, b(371)=>GND, b(370)=>GND, b(369)=>GND, 
      b(368)=>GND, b(367)=>GND, b(366)=>GND, b(365)=>GND, b(364)=>GND, 
      b(363)=>GND, b(362)=>GND, b(361)=>GND, b(360)=>GND, b(359)=>GND, 
      b(358)=>GND, b(357)=>GND, b(356)=>GND, b(355)=>GND, b(354)=>GND, 
      b(353)=>GND, b(352)=>GND, b(351)=>GND, b(350)=>GND, b(349)=>GND, 
      b(348)=>GND, b(347)=>GND, b(346)=>GND, b(345)=>GND, b(344)=>GND, 
      b(343)=>GND, b(342)=>GND, b(341)=>GND, b(340)=>GND, b(339)=>GND, 
      b(338)=>GND, b(337)=>GND, b(336)=>GND, b(335)=>GND, b(334)=>GND, 
      b(333)=>GND, b(332)=>GND, b(331)=>GND, b(330)=>GND, b(329)=>GND, 
      b(328)=>GND, b(327)=>GND, b(326)=>GND, b(325)=>GND, b(324)=>GND, 
      b(323)=>GND, b(322)=>GND, b(321)=>GND, b(320)=>GND, b(319)=>GND, 
      b(318)=>GND, b(317)=>GND, b(316)=>GND, b(315)=>GND, b(314)=>GND, 
      b(313)=>GND, b(312)=>GND, b(311)=>GND, b(310)=>GND, b(309)=>GND, 
      b(308)=>GND, b(307)=>GND, b(306)=>GND, b(305)=>GND, b(304)=>GND, 
      b(303)=>GND, b(302)=>GND, b(301)=>GND, b(300)=>GND, b(299)=>GND, 
      b(298)=>GND, b(297)=>GND, b(296)=>GND, b(295)=>GND, b(294)=>GND, 
      b(293)=>GND, b(292)=>GND, b(291)=>GND, b(290)=>GND, b(289)=>GND, 
      b(288)=>GND, b(287)=>GND, b(286)=>GND, b(285)=>GND, b(284)=>GND, 
      b(283)=>GND, b(282)=>GND, b(281)=>GND, b(280)=>GND, b(279)=>GND, 
      b(278)=>GND, b(277)=>GND, b(276)=>GND, b(275)=>GND, b(274)=>GND, 
      b(273)=>GND, b(272)=>GND, b(271)=>GND, b(270)=>GND, b(269)=>GND, 
      b(268)=>GND, b(267)=>GND, b(266)=>GND, b(265)=>GND, b(264)=>GND, 
      b(263)=>GND, b(262)=>GND, b(261)=>GND, b(260)=>GND, b(259)=>GND, 
      b(258)=>GND, b(257)=>GND, b(256)=>GND, b(255)=>GND, b(254)=>GND, 
      b(253)=>GND, b(252)=>GND, b(251)=>GND, b(250)=>GND, b(249)=>GND, 
      b(248)=>GND, b(247)=>GND, b(246)=>GND, b(245)=>GND, b(244)=>GND, 
      b(243)=>GND, b(242)=>GND, b(241)=>GND, b(240)=>GND, b(239)=>GND, 
      b(238)=>GND, b(237)=>GND, b(236)=>GND, b(235)=>GND, b(234)=>GND, 
      b(233)=>GND, b(232)=>GND, b(231)=>GND, b(230)=>GND, b(229)=>GND, 
      b(228)=>GND, b(227)=>GND, b(226)=>GND, b(225)=>GND, b(224)=>GND, 
      b(223)=>GND, b(222)=>GND, b(221)=>GND, b(220)=>GND, b(219)=>GND, 
      b(218)=>GND, b(217)=>GND, b(216)=>GND, b(215)=>GND, b(214)=>GND, 
      b(213)=>GND, b(212)=>GND, b(211)=>GND, b(210)=>GND, b(209)=>GND, 
      b(208)=>GND, b(207)=>GND, b(206)=>GND, b(205)=>GND, b(204)=>GND, 
      b(203)=>GND, b(202)=>GND, b(201)=>GND, b(200)=>GND, b(199)=>GND, 
      b(198)=>GND, b(197)=>GND, b(196)=>GND, b(195)=>GND, b(194)=>GND, 
      b(193)=>GND, b(192)=>GND, b(191)=>GND, b(190)=>GND, b(189)=>GND, 
      b(188)=>GND, b(187)=>GND, b(186)=>GND, b(185)=>GND, b(184)=>GND, 
      b(183)=>GND, b(182)=>GND, b(181)=>GND, b(180)=>GND, b(179)=>GND, 
      b(178)=>GND, b(177)=>GND, b(176)=>GND, b(175)=>GND, b(174)=>GND, 
      b(173)=>GND, b(172)=>GND, b(171)=>GND, b(170)=>GND, b(169)=>GND, 
      b(168)=>GND, b(167)=>GND, b(166)=>GND, b(165)=>GND, b(164)=>GND, 
      b(163)=>GND, b(162)=>GND, b(161)=>GND, b(160)=>GND, b(159)=>GND, 
      b(158)=>GND, b(157)=>GND, b(156)=>GND, b(155)=>GND, b(154)=>GND, 
      b(153)=>GND, b(152)=>GND, b(151)=>GND, b(150)=>GND, b(149)=>GND, 
      b(148)=>GND, b(147)=>GND, b(146)=>GND, b(145)=>GND, b(144)=>GND, 
      b(143)=>GND, b(142)=>GND, b(141)=>GND, b(140)=>GND, b(139)=>GND, 
      b(138)=>GND, b(137)=>GND, b(136)=>GND, b(135)=>GND, b(134)=>GND, 
      b(133)=>GND, b(132)=>GND, b(131)=>GND, b(130)=>GND, b(129)=>GND, 
      b(128)=>GND, b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, 
      b(123)=>GND, b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, 
      b(118)=>GND, b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, 
      b(113)=>GND, b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, 
      b(108)=>GND, b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, 
      b(103)=>GND, b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)
      =>GND, b(97)=>GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, 
      b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, 
      b(86)=>GND, b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, 
      b(80)=>GND, b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, 
      b(74)=>GND, b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, 
      b(68)=>GND, b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, 
      b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, 
      b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, 
      b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, 
      b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, 
      b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, 
      b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, 
      b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, 
      b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>
      address(9), b(8)=>address(8), b(7)=>address(7), b(6)=>address(6), b(5)
      =>address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), 
      b(1)=>address(1), b(0)=>address(0), d=>q(4));
   modgen_mux_17 : mux_1024u_1024u port map ( a(1023)=>GND, a(1022)=>PWR, 
      a(1021)=>PWR, a(1020)=>PWR, a(1019)=>PWR, a(1018)=>GND, a(1017)=>GND, 
      a(1016)=>PWR, a(1015)=>GND, a(1014)=>PWR, a(1013)=>PWR, a(1012)=>GND, 
      a(1011)=>GND, a(1010)=>PWR, a(1009)=>PWR, a(1008)=>PWR, a(1007)=>PWR, 
      a(1006)=>GND, a(1005)=>GND, a(1004)=>PWR, a(1003)=>GND, a(1002)=>PWR, 
      a(1001)=>PWR, a(1000)=>GND, a(999)=>GND, a(998)=>GND, a(997)=>GND, 
      a(996)=>PWR, a(995)=>PWR, a(994)=>PWR, a(993)=>PWR, a(992)=>PWR, 
      a(991)=>PWR, a(990)=>PWR, a(989)=>PWR, a(988)=>GND, a(987)=>GND, 
      a(986)=>GND, a(985)=>GND, a(984)=>GND, a(983)=>PWR, a(982)=>PWR, 
      a(981)=>GND, a(980)=>GND, a(979)=>PWR, a(978)=>GND, a(977)=>PWR, 
      a(976)=>PWR, a(975)=>PWR, a(974)=>GND, a(973)=>PWR, a(972)=>PWR, 
      a(971)=>GND, a(970)=>GND, a(969)=>GND, a(968)=>GND, a(967)=>PWR, 
      a(966)=>GND, a(965)=>GND, a(964)=>GND, a(963)=>GND, a(962)=>PWR, 
      a(961)=>GND, a(960)=>GND, a(959)=>PWR, a(958)=>GND, a(957)=>PWR, 
      a(956)=>PWR, a(955)=>GND, a(954)=>PWR, a(953)=>PWR, a(952)=>PWR, 
      a(951)=>PWR, a(950)=>PWR, a(949)=>GND, a(948)=>GND, a(947)=>PWR, 
      a(946)=>PWR, a(945)=>GND, a(944)=>PWR, a(943)=>PWR, a(942)=>GND, 
      a(941)=>PWR, a(940)=>GND, a(939)=>GND, a(938)=>PWR, a(937)=>GND, 
      a(936)=>PWR, a(935)=>PWR, a(934)=>PWR, a(933)=>PWR, a(932)=>PWR, 
      a(931)=>GND, a(930)=>GND, a(929)=>GND, a(928)=>GND, a(927)=>PWR, 
      a(926)=>GND, a(925)=>GND, a(924)=>GND, a(923)=>GND, a(922)=>GND, 
      a(921)=>GND, a(920)=>GND, a(919)=>PWR, a(918)=>GND, a(917)=>GND, 
      a(916)=>PWR, a(915)=>PWR, a(914)=>GND, a(913)=>GND, a(912)=>GND, 
      a(911)=>GND, a(910)=>PWR, a(909)=>GND, a(908)=>GND, a(907)=>PWR, 
      a(906)=>GND, a(905)=>GND, a(904)=>GND, a(903)=>GND, a(902)=>PWR, 
      a(901)=>GND, a(900)=>GND, a(899)=>PWR, a(898)=>PWR, a(897)=>GND, 
      a(896)=>GND, a(895)=>PWR, a(894)=>GND, a(893)=>PWR, a(892)=>GND, 
      a(891)=>GND, a(890)=>PWR, a(889)=>PWR, a(888)=>GND, a(887)=>GND, 
      a(886)=>GND, a(885)=>PWR, a(884)=>PWR, a(883)=>GND, a(882)=>GND, 
      a(881)=>PWR, a(880)=>GND, a(879)=>GND, a(878)=>GND, a(877)=>PWR, 
      a(876)=>GND, a(875)=>PWR, a(874)=>GND, a(873)=>PWR, a(872)=>GND, 
      a(871)=>GND, a(870)=>PWR, a(869)=>GND, a(868)=>PWR, a(867)=>PWR, 
      a(866)=>PWR, a(865)=>GND, a(864)=>PWR, a(863)=>PWR, a(862)=>GND, 
      a(861)=>PWR, a(860)=>PWR, a(859)=>GND, a(858)=>GND, a(857)=>PWR, 
      a(856)=>PWR, a(855)=>GND, a(854)=>PWR, a(853)=>GND, a(852)=>GND, 
      a(851)=>GND, a(850)=>PWR, a(849)=>GND, a(848)=>GND, a(847)=>PWR, 
      a(846)=>GND, a(845)=>PWR, a(844)=>PWR, a(843)=>GND, a(842)=>PWR, 
      a(841)=>GND, a(840)=>GND, a(839)=>GND, a(838)=>PWR, a(837)=>GND, 
      a(836)=>PWR, a(835)=>GND, a(834)=>PWR, a(833)=>GND, a(832)=>PWR, 
      a(831)=>PWR, a(830)=>GND, a(829)=>PWR, a(828)=>GND, a(827)=>PWR, 
      a(826)=>PWR, a(825)=>PWR, a(824)=>PWR, a(823)=>GND, a(822)=>GND, 
      a(821)=>GND, a(820)=>PWR, a(819)=>PWR, a(818)=>PWR, a(817)=>PWR, 
      a(816)=>PWR, a(815)=>GND, a(814)=>GND, a(813)=>PWR, a(812)=>PWR, 
      a(811)=>PWR, a(810)=>GND, a(809)=>GND, a(808)=>PWR, a(807)=>PWR, 
      a(806)=>GND, a(805)=>GND, a(804)=>PWR, a(803)=>PWR, a(802)=>GND, 
      a(801)=>PWR, a(800)=>GND, a(799)=>PWR, a(798)=>PWR, a(797)=>PWR, 
      a(796)=>GND, a(795)=>GND, a(794)=>PWR, a(793)=>GND, a(792)=>GND, 
      a(791)=>PWR, a(790)=>PWR, a(789)=>PWR, a(788)=>PWR, a(787)=>GND, 
      a(786)=>GND, a(785)=>PWR, a(784)=>GND, a(783)=>PWR, a(782)=>PWR, 
      a(781)=>PWR, a(780)=>PWR, a(779)=>PWR, a(778)=>GND, a(777)=>GND, 
      a(776)=>PWR, a(775)=>PWR, a(774)=>PWR, a(773)=>PWR, a(772)=>GND, 
      a(771)=>PWR, a(770)=>GND, a(769)=>GND, a(768)=>GND, a(767)=>GND, 
      a(766)=>PWR, a(765)=>GND, a(764)=>PWR, a(763)=>PWR, a(762)=>PWR, 
      a(761)=>GND, a(760)=>PWR, a(759)=>PWR, a(758)=>PWR, a(757)=>GND, 
      a(756)=>GND, a(755)=>GND, a(754)=>PWR, a(753)=>GND, a(752)=>PWR, 
      a(751)=>PWR, a(750)=>GND, a(749)=>PWR, a(748)=>GND, a(747)=>GND, 
      a(746)=>PWR, a(745)=>PWR, a(744)=>GND, a(743)=>GND, a(742)=>GND, 
      a(741)=>PWR, a(740)=>PWR, a(739)=>GND, a(738)=>GND, a(737)=>PWR, 
      a(736)=>GND, a(735)=>GND, a(734)=>GND, a(733)=>GND, a(732)=>PWR, 
      a(731)=>GND, a(730)=>PWR, a(729)=>PWR, a(728)=>PWR, a(727)=>GND, 
      a(726)=>PWR, a(725)=>PWR, a(724)=>GND, a(723)=>GND, a(722)=>GND, 
      a(721)=>PWR, a(720)=>GND, a(719)=>PWR, a(718)=>GND, a(717)=>GND, 
      a(716)=>PWR, a(715)=>GND, a(714)=>GND, a(713)=>GND, a(712)=>GND, 
      a(711)=>GND, a(710)=>PWR, a(709)=>PWR, a(708)=>GND, a(707)=>PWR, 
      a(706)=>PWR, a(705)=>GND, a(704)=>PWR, a(703)=>PWR, a(702)=>PWR, 
      a(701)=>PWR, a(700)=>GND, a(699)=>PWR, a(698)=>GND, a(697)=>GND, 
      a(696)=>GND, a(695)=>GND, a(694)=>GND, a(693)=>PWR, a(692)=>GND, 
      a(691)=>GND, a(690)=>PWR, a(689)=>GND, a(688)=>PWR, a(687)=>PWR, 
      a(686)=>PWR, a(685)=>GND, a(684)=>PWR, a(683)=>GND, a(682)=>PWR, 
      a(681)=>GND, a(680)=>GND, a(679)=>PWR, a(678)=>PWR, a(677)=>GND, 
      a(676)=>PWR, a(675)=>PWR, a(674)=>PWR, a(673)=>GND, a(672)=>PWR, 
      a(671)=>PWR, a(670)=>GND, a(669)=>GND, a(668)=>PWR, a(667)=>PWR, 
      a(666)=>GND, a(665)=>GND, a(664)=>GND, a(663)=>GND, a(662)=>PWR, 
      a(661)=>GND, a(660)=>PWR, a(659)=>GND, a(658)=>GND, a(657)=>PWR, 
      a(656)=>GND, a(655)=>GND, a(654)=>GND, a(653)=>PWR, a(652)=>PWR, 
      a(651)=>GND, a(650)=>GND, a(649)=>GND, a(648)=>PWR, a(647)=>PWR, 
      a(646)=>PWR, a(645)=>GND, a(644)=>PWR, a(643)=>PWR, a(642)=>GND, 
      a(641)=>GND, a(640)=>PWR, a(639)=>GND, a(638)=>PWR, a(637)=>PWR, 
      a(636)=>GND, a(635)=>GND, a(634)=>GND, a(633)=>GND, a(632)=>GND, 
      a(631)=>PWR, a(630)=>GND, a(629)=>GND, a(628)=>GND, a(627)=>PWR, 
      a(626)=>PWR, a(625)=>PWR, a(624)=>GND, a(623)=>PWR, a(622)=>GND, 
      a(621)=>GND, a(620)=>PWR, a(619)=>PWR, a(618)=>GND, a(617)=>GND, 
      a(616)=>PWR, a(615)=>GND, a(614)=>PWR, a(613)=>GND, a(612)=>GND, 
      a(611)=>GND, a(610)=>PWR, a(609)=>PWR, a(608)=>GND, a(607)=>PWR, 
      a(606)=>PWR, a(605)=>PWR, a(604)=>GND, a(603)=>GND, a(602)=>GND, 
      a(601)=>PWR, a(600)=>PWR, a(599)=>PWR, a(598)=>GND, a(597)=>GND, 
      a(596)=>PWR, a(595)=>PWR, a(594)=>GND, a(593)=>GND, a(592)=>PWR, 
      a(591)=>PWR, a(590)=>GND, a(589)=>PWR, a(588)=>PWR, a(587)=>PWR, 
      a(586)=>GND, a(585)=>GND, a(584)=>PWR, a(583)=>GND, a(582)=>PWR, 
      a(581)=>PWR, a(580)=>GND, a(579)=>PWR, a(578)=>GND, a(577)=>PWR, 
      a(576)=>GND, a(575)=>PWR, a(574)=>PWR, a(573)=>PWR, a(572)=>PWR, 
      a(571)=>GND, a(570)=>PWR, a(569)=>PWR, a(568)=>PWR, a(567)=>GND, 
      a(566)=>PWR, a(565)=>GND, a(564)=>GND, a(563)=>PWR, a(562)=>PWR, 
      a(561)=>PWR, a(560)=>GND, a(559)=>GND, a(558)=>GND, a(557)=>PWR, 
      a(556)=>GND, a(555)=>PWR, a(554)=>GND, a(553)=>PWR, a(552)=>GND, 
      a(551)=>GND, a(550)=>PWR, a(549)=>PWR, a(548)=>PWR, a(547)=>GND, 
      a(546)=>PWR, a(545)=>PWR, a(544)=>PWR, a(543)=>GND, a(542)=>GND, 
      a(541)=>GND, a(540)=>PWR, a(539)=>GND, a(538)=>PWR, a(537)=>GND, 
      a(536)=>GND, a(535)=>GND, a(534)=>PWR, a(533)=>GND, a(532)=>GND, 
      a(531)=>GND, a(530)=>GND, a(529)=>GND, a(528)=>PWR, a(527)=>PWR, 
      a(526)=>PWR, a(525)=>PWR, a(524)=>GND, a(523)=>GND, a(522)=>PWR, 
      a(521)=>PWR, a(520)=>PWR, a(519)=>PWR, a(518)=>PWR, a(517)=>PWR, 
      a(516)=>PWR, a(515)=>PWR, a(514)=>GND, a(513)=>PWR, a(512)=>PWR, 
      a(511)=>PWR, a(510)=>PWR, a(509)=>PWR, a(508)=>GND, a(507)=>GND, 
      a(506)=>PWR, a(505)=>GND, a(504)=>PWR, a(503)=>PWR, a(502)=>PWR, 
      a(501)=>GND, a(500)=>PWR, a(499)=>GND, a(498)=>PWR, a(497)=>GND, 
      a(496)=>PWR, a(495)=>GND, a(494)=>GND, a(493)=>GND, a(492)=>PWR, 
      a(491)=>PWR, a(490)=>PWR, a(489)=>PWR, a(488)=>PWR, a(487)=>PWR, 
      a(486)=>PWR, a(485)=>PWR, a(484)=>GND, a(483)=>GND, a(482)=>PWR, 
      a(481)=>GND, a(480)=>GND, a(479)=>GND, a(478)=>PWR, a(477)=>PWR, 
      a(476)=>GND, a(475)=>PWR, a(474)=>PWR, a(473)=>GND, a(472)=>GND, 
      a(471)=>GND, a(470)=>GND, a(469)=>PWR, a(468)=>GND, a(467)=>GND, 
      a(466)=>GND, a(465)=>PWR, a(464)=>GND, a(463)=>PWR, a(462)=>GND, 
      a(461)=>GND, a(460)=>PWR, a(459)=>GND, a(458)=>GND, a(457)=>GND, 
      a(456)=>GND, a(455)=>PWR, a(454)=>GND, a(453)=>PWR, a(452)=>PWR, 
      a(451)=>PWR, a(450)=>GND, a(449)=>PWR, a(448)=>GND, a(447)=>PWR, 
      a(446)=>PWR, a(445)=>GND, a(444)=>PWR, a(443)=>PWR, a(442)=>PWR, 
      a(441)=>PWR, a(440)=>GND, a(439)=>GND, a(438)=>GND, a(437)=>PWR, 
      a(436)=>GND, a(435)=>GND, a(434)=>GND, a(433)=>GND, a(432)=>GND, 
      a(431)=>GND, a(430)=>PWR, a(429)=>PWR, a(428)=>GND, a(427)=>GND, 
      a(426)=>GND, a(425)=>GND, a(424)=>PWR, a(423)=>PWR, a(422)=>PWR, 
      a(421)=>GND, a(420)=>PWR, a(419)=>GND, a(418)=>GND, a(417)=>GND, 
      a(416)=>GND, a(415)=>PWR, a(414)=>GND, a(413)=>GND, a(412)=>GND, 
      a(411)=>GND, a(410)=>GND, a(409)=>GND, a(408)=>GND, a(407)=>PWR, 
      a(406)=>PWR, a(405)=>GND, a(404)=>GND, a(403)=>PWR, a(402)=>GND, 
      a(401)=>PWR, a(400)=>GND, a(399)=>GND, a(398)=>PWR, a(397)=>PWR, 
      a(396)=>PWR, a(395)=>PWR, a(394)=>GND, a(393)=>GND, a(392)=>GND, 
      a(391)=>GND, a(390)=>GND, a(389)=>PWR, a(388)=>GND, a(387)=>GND, 
      a(386)=>GND, a(385)=>PWR, a(384)=>PWR, a(383)=>GND, a(382)=>GND, 
      a(381)=>GND, a(380)=>PWR, a(379)=>PWR, a(378)=>PWR, a(377)=>PWR, 
      a(376)=>PWR, a(375)=>GND, a(374)=>PWR, a(373)=>PWR, a(372)=>PWR, 
      a(371)=>GND, a(370)=>GND, a(369)=>GND, a(368)=>PWR, a(367)=>PWR, 
      a(366)=>PWR, a(365)=>GND, a(364)=>GND, a(363)=>GND, a(362)=>GND, 
      a(361)=>GND, a(360)=>GND, a(359)=>PWR, a(358)=>GND, a(357)=>PWR, 
      a(356)=>GND, a(355)=>GND, a(354)=>PWR, a(353)=>GND, a(352)=>GND, 
      a(351)=>PWR, a(350)=>GND, a(349)=>PWR, a(348)=>PWR, a(347)=>PWR, 
      a(346)=>GND, a(345)=>GND, a(344)=>PWR, a(343)=>PWR, a(342)=>GND, 
      a(341)=>PWR, a(340)=>GND, a(339)=>GND, a(338)=>PWR, a(337)=>GND, 
      a(336)=>PWR, a(335)=>GND, a(334)=>GND, a(333)=>GND, a(332)=>GND, 
      a(331)=>PWR, a(330)=>GND, a(329)=>PWR, a(328)=>GND, a(327)=>PWR, 
      a(326)=>PWR, a(325)=>GND, a(324)=>GND, a(323)=>GND, a(322)=>GND, 
      a(321)=>PWR, a(320)=>GND, a(319)=>GND, a(318)=>GND, a(317)=>GND, 
      a(316)=>PWR, a(315)=>PWR, a(314)=>PWR, a(313)=>PWR, a(312)=>PWR, 
      a(311)=>PWR, a(310)=>PWR, a(309)=>GND, a(308)=>GND, a(307)=>GND, 
      a(306)=>GND, a(305)=>GND, a(304)=>PWR, a(303)=>GND, a(302)=>PWR, 
      a(301)=>PWR, a(300)=>PWR, a(299)=>PWR, a(298)=>PWR, a(297)=>GND, 
      a(296)=>PWR, a(295)=>PWR, a(294)=>GND, a(293)=>PWR, a(292)=>GND, 
      a(291)=>GND, a(290)=>GND, a(289)=>PWR, a(288)=>GND, a(287)=>GND, 
      a(286)=>GND, a(285)=>GND, a(284)=>PWR, a(283)=>PWR, a(282)=>PWR, 
      a(281)=>PWR, a(280)=>GND, a(279)=>PWR, a(278)=>GND, a(277)=>PWR, 
      a(276)=>GND, a(275)=>PWR, a(274)=>GND, a(273)=>PWR, a(272)=>GND, 
      a(271)=>GND, a(270)=>PWR, a(269)=>PWR, a(268)=>GND, a(267)=>PWR, 
      a(266)=>PWR, a(265)=>GND, a(264)=>PWR, a(263)=>GND, a(262)=>GND, 
      a(261)=>PWR, a(260)=>GND, a(259)=>PWR, a(258)=>GND, a(257)=>GND, 
      a(256)=>PWR, a(255)=>PWR, a(254)=>PWR, a(253)=>PWR, a(252)=>GND, 
      a(251)=>PWR, a(250)=>GND, a(249)=>PWR, a(248)=>PWR, a(247)=>GND, 
      a(246)=>PWR, a(245)=>GND, a(244)=>GND, a(243)=>GND, a(242)=>GND, 
      a(241)=>PWR, a(240)=>GND, a(239)=>GND, a(238)=>GND, a(237)=>GND, 
      a(236)=>GND, a(235)=>PWR, a(234)=>PWR, a(233)=>PWR, a(232)=>PWR, 
      a(231)=>PWR, a(230)=>GND, a(229)=>PWR, a(228)=>GND, a(227)=>PWR, 
      a(226)=>PWR, a(225)=>GND, a(224)=>GND, a(223)=>GND, a(222)=>PWR, 
      a(221)=>PWR, a(220)=>PWR, a(219)=>PWR, a(218)=>PWR, a(217)=>PWR, 
      a(216)=>PWR, a(215)=>GND, a(214)=>GND, a(213)=>GND, a(212)=>GND, 
      a(211)=>PWR, a(210)=>PWR, a(209)=>PWR, a(208)=>PWR, a(207)=>GND, 
      a(206)=>GND, a(205)=>PWR, a(204)=>PWR, a(203)=>PWR, a(202)=>GND, 
      a(201)=>GND, a(200)=>GND, a(199)=>PWR, a(198)=>PWR, a(197)=>PWR, 
      a(196)=>GND, a(195)=>PWR, a(194)=>PWR, a(193)=>GND, a(192)=>GND, 
      a(191)=>PWR, a(190)=>GND, a(189)=>GND, a(188)=>PWR, a(187)=>PWR, 
      a(186)=>GND, a(185)=>PWR, a(184)=>PWR, a(183)=>PWR, a(182)=>PWR, 
      a(181)=>GND, a(180)=>GND, a(179)=>GND, a(178)=>GND, a(177)=>GND, 
      a(176)=>PWR, a(175)=>GND, a(174)=>PWR, a(173)=>PWR, a(172)=>GND, 
      a(171)=>PWR, a(170)=>PWR, a(169)=>GND, a(168)=>GND, a(167)=>GND, 
      a(166)=>PWR, a(165)=>GND, a(164)=>GND, a(163)=>GND, a(162)=>GND, 
      a(161)=>GND, a(160)=>PWR, a(159)=>PWR, a(158)=>PWR, a(157)=>GND, 
      a(156)=>PWR, a(155)=>PWR, a(154)=>GND, a(153)=>PWR, a(152)=>PWR, 
      a(151)=>PWR, a(150)=>PWR, a(149)=>GND, a(148)=>GND, a(147)=>GND, 
      a(146)=>GND, a(145)=>PWR, a(144)=>PWR, a(143)=>GND, a(142)=>PWR, 
      a(141)=>GND, a(140)=>GND, a(139)=>GND, a(138)=>GND, a(137)=>PWR, 
      a(136)=>GND, a(135)=>PWR, a(134)=>PWR, a(133)=>GND, a(132)=>PWR, 
      a(131)=>PWR, a(130)=>GND, a(129)=>PWR, a(128)=>GND, a(127)=>GND, 
      a(126)=>PWR, a(125)=>PWR, a(124)=>GND, a(123)=>GND, a(122)=>PWR, 
      a(121)=>GND, a(120)=>PWR, a(119)=>PWR, a(118)=>GND, a(117)=>PWR, 
      a(116)=>PWR, a(115)=>PWR, a(114)=>PWR, a(113)=>GND, a(112)=>PWR, 
      a(111)=>GND, a(110)=>PWR, a(109)=>PWR, a(108)=>GND, a(107)=>GND, 
      a(106)=>GND, a(105)=>PWR, a(104)=>PWR, a(103)=>GND, a(102)=>PWR, 
      a(101)=>PWR, a(100)=>GND, a(99)=>PWR, a(98)=>PWR, a(97)=>PWR, a(96)=>
      PWR, a(95)=>GND, a(94)=>PWR, a(93)=>PWR, a(92)=>GND, a(91)=>PWR, a(90)
      =>PWR, a(89)=>GND, a(88)=>GND, a(87)=>GND, a(86)=>GND, a(85)=>PWR, 
      a(84)=>GND, a(83)=>PWR, a(82)=>GND, a(81)=>PWR, a(80)=>GND, a(79)=>PWR, 
      a(78)=>PWR, a(77)=>PWR, a(76)=>GND, a(75)=>GND, a(74)=>PWR, a(73)=>PWR, 
      a(72)=>PWR, a(71)=>GND, a(70)=>PWR, a(69)=>PWR, a(68)=>PWR, a(67)=>GND, 
      a(66)=>PWR, a(65)=>PWR, a(64)=>PWR, a(63)=>PWR, a(62)=>GND, a(61)=>PWR, 
      a(60)=>GND, a(59)=>GND, a(58)=>PWR, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>PWR, a(50)=>GND, a(49)=>PWR, 
      a(48)=>PWR, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>PWR, a(43)=>GND, 
      a(42)=>PWR, a(41)=>GND, a(40)=>PWR, a(39)=>GND, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>PWR, a(34)=>GND, a(33)=>PWR, a(32)=>PWR, a(31)=>PWR, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>PWR, a(25)=>PWR, 
      a(24)=>PWR, a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>GND, a(19)=>GND, 
      a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>PWR, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>PWR, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>PWR, a(0)
      =>PWR, b(1023)=>GND, b(1022)=>GND, b(1021)=>GND, b(1020)=>GND, b(1019)
      =>GND, b(1018)=>GND, b(1017)=>GND, b(1016)=>GND, b(1015)=>GND, b(1014)
      =>GND, b(1013)=>GND, b(1012)=>GND, b(1011)=>GND, b(1010)=>GND, b(1009)
      =>GND, b(1008)=>GND, b(1007)=>GND, b(1006)=>GND, b(1005)=>GND, b(1004)
      =>GND, b(1003)=>GND, b(1002)=>GND, b(1001)=>GND, b(1000)=>GND, b(999)
      =>GND, b(998)=>GND, b(997)=>GND, b(996)=>GND, b(995)=>GND, b(994)=>GND, 
      b(993)=>GND, b(992)=>GND, b(991)=>GND, b(990)=>GND, b(989)=>GND, 
      b(988)=>GND, b(987)=>GND, b(986)=>GND, b(985)=>GND, b(984)=>GND, 
      b(983)=>GND, b(982)=>GND, b(981)=>GND, b(980)=>GND, b(979)=>GND, 
      b(978)=>GND, b(977)=>GND, b(976)=>GND, b(975)=>GND, b(974)=>GND, 
      b(973)=>GND, b(972)=>GND, b(971)=>GND, b(970)=>GND, b(969)=>GND, 
      b(968)=>GND, b(967)=>GND, b(966)=>GND, b(965)=>GND, b(964)=>GND, 
      b(963)=>GND, b(962)=>GND, b(961)=>GND, b(960)=>GND, b(959)=>GND, 
      b(958)=>GND, b(957)=>GND, b(956)=>GND, b(955)=>GND, b(954)=>GND, 
      b(953)=>GND, b(952)=>GND, b(951)=>GND, b(950)=>GND, b(949)=>GND, 
      b(948)=>GND, b(947)=>GND, b(946)=>GND, b(945)=>GND, b(944)=>GND, 
      b(943)=>GND, b(942)=>GND, b(941)=>GND, b(940)=>GND, b(939)=>GND, 
      b(938)=>GND, b(937)=>GND, b(936)=>GND, b(935)=>GND, b(934)=>GND, 
      b(933)=>GND, b(932)=>GND, b(931)=>GND, b(930)=>GND, b(929)=>GND, 
      b(928)=>GND, b(927)=>GND, b(926)=>GND, b(925)=>GND, b(924)=>GND, 
      b(923)=>GND, b(922)=>GND, b(921)=>GND, b(920)=>GND, b(919)=>GND, 
      b(918)=>GND, b(917)=>GND, b(916)=>GND, b(915)=>GND, b(914)=>GND, 
      b(913)=>GND, b(912)=>GND, b(911)=>GND, b(910)=>GND, b(909)=>GND, 
      b(908)=>GND, b(907)=>GND, b(906)=>GND, b(905)=>GND, b(904)=>GND, 
      b(903)=>GND, b(902)=>GND, b(901)=>GND, b(900)=>GND, b(899)=>GND, 
      b(898)=>GND, b(897)=>GND, b(896)=>GND, b(895)=>GND, b(894)=>GND, 
      b(893)=>GND, b(892)=>GND, b(891)=>GND, b(890)=>GND, b(889)=>GND, 
      b(888)=>GND, b(887)=>GND, b(886)=>GND, b(885)=>GND, b(884)=>GND, 
      b(883)=>GND, b(882)=>GND, b(881)=>GND, b(880)=>GND, b(879)=>GND, 
      b(878)=>GND, b(877)=>GND, b(876)=>GND, b(875)=>GND, b(874)=>GND, 
      b(873)=>GND, b(872)=>GND, b(871)=>GND, b(870)=>GND, b(869)=>GND, 
      b(868)=>GND, b(867)=>GND, b(866)=>GND, b(865)=>GND, b(864)=>GND, 
      b(863)=>GND, b(862)=>GND, b(861)=>GND, b(860)=>GND, b(859)=>GND, 
      b(858)=>GND, b(857)=>GND, b(856)=>GND, b(855)=>GND, b(854)=>GND, 
      b(853)=>GND, b(852)=>GND, b(851)=>GND, b(850)=>GND, b(849)=>GND, 
      b(848)=>GND, b(847)=>GND, b(846)=>GND, b(845)=>GND, b(844)=>GND, 
      b(843)=>GND, b(842)=>GND, b(841)=>GND, b(840)=>GND, b(839)=>GND, 
      b(838)=>GND, b(837)=>GND, b(836)=>GND, b(835)=>GND, b(834)=>GND, 
      b(833)=>GND, b(832)=>GND, b(831)=>GND, b(830)=>GND, b(829)=>GND, 
      b(828)=>GND, b(827)=>GND, b(826)=>GND, b(825)=>GND, b(824)=>GND, 
      b(823)=>GND, b(822)=>GND, b(821)=>GND, b(820)=>GND, b(819)=>GND, 
      b(818)=>GND, b(817)=>GND, b(816)=>GND, b(815)=>GND, b(814)=>GND, 
      b(813)=>GND, b(812)=>GND, b(811)=>GND, b(810)=>GND, b(809)=>GND, 
      b(808)=>GND, b(807)=>GND, b(806)=>GND, b(805)=>GND, b(804)=>GND, 
      b(803)=>GND, b(802)=>GND, b(801)=>GND, b(800)=>GND, b(799)=>GND, 
      b(798)=>GND, b(797)=>GND, b(796)=>GND, b(795)=>GND, b(794)=>GND, 
      b(793)=>GND, b(792)=>GND, b(791)=>GND, b(790)=>GND, b(789)=>GND, 
      b(788)=>GND, b(787)=>GND, b(786)=>GND, b(785)=>GND, b(784)=>GND, 
      b(783)=>GND, b(782)=>GND, b(781)=>GND, b(780)=>GND, b(779)=>GND, 
      b(778)=>GND, b(777)=>GND, b(776)=>GND, b(775)=>GND, b(774)=>GND, 
      b(773)=>GND, b(772)=>GND, b(771)=>GND, b(770)=>GND, b(769)=>GND, 
      b(768)=>GND, b(767)=>GND, b(766)=>GND, b(765)=>GND, b(764)=>GND, 
      b(763)=>GND, b(762)=>GND, b(761)=>GND, b(760)=>GND, b(759)=>GND, 
      b(758)=>GND, b(757)=>GND, b(756)=>GND, b(755)=>GND, b(754)=>GND, 
      b(753)=>GND, b(752)=>GND, b(751)=>GND, b(750)=>GND, b(749)=>GND, 
      b(748)=>GND, b(747)=>GND, b(746)=>GND, b(745)=>GND, b(744)=>GND, 
      b(743)=>GND, b(742)=>GND, b(741)=>GND, b(740)=>GND, b(739)=>GND, 
      b(738)=>GND, b(737)=>GND, b(736)=>GND, b(735)=>GND, b(734)=>GND, 
      b(733)=>GND, b(732)=>GND, b(731)=>GND, b(730)=>GND, b(729)=>GND, 
      b(728)=>GND, b(727)=>GND, b(726)=>GND, b(725)=>GND, b(724)=>GND, 
      b(723)=>GND, b(722)=>GND, b(721)=>GND, b(720)=>GND, b(719)=>GND, 
      b(718)=>GND, b(717)=>GND, b(716)=>GND, b(715)=>GND, b(714)=>GND, 
      b(713)=>GND, b(712)=>GND, b(711)=>GND, b(710)=>GND, b(709)=>GND, 
      b(708)=>GND, b(707)=>GND, b(706)=>GND, b(705)=>GND, b(704)=>GND, 
      b(703)=>GND, b(702)=>GND, b(701)=>GND, b(700)=>GND, b(699)=>GND, 
      b(698)=>GND, b(697)=>GND, b(696)=>GND, b(695)=>GND, b(694)=>GND, 
      b(693)=>GND, b(692)=>GND, b(691)=>GND, b(690)=>GND, b(689)=>GND, 
      b(688)=>GND, b(687)=>GND, b(686)=>GND, b(685)=>GND, b(684)=>GND, 
      b(683)=>GND, b(682)=>GND, b(681)=>GND, b(680)=>GND, b(679)=>GND, 
      b(678)=>GND, b(677)=>GND, b(676)=>GND, b(675)=>GND, b(674)=>GND, 
      b(673)=>GND, b(672)=>GND, b(671)=>GND, b(670)=>GND, b(669)=>GND, 
      b(668)=>GND, b(667)=>GND, b(666)=>GND, b(665)=>GND, b(664)=>GND, 
      b(663)=>GND, b(662)=>GND, b(661)=>GND, b(660)=>GND, b(659)=>GND, 
      b(658)=>GND, b(657)=>GND, b(656)=>GND, b(655)=>GND, b(654)=>GND, 
      b(653)=>GND, b(652)=>GND, b(651)=>GND, b(650)=>GND, b(649)=>GND, 
      b(648)=>GND, b(647)=>GND, b(646)=>GND, b(645)=>GND, b(644)=>GND, 
      b(643)=>GND, b(642)=>GND, b(641)=>GND, b(640)=>GND, b(639)=>GND, 
      b(638)=>GND, b(637)=>GND, b(636)=>GND, b(635)=>GND, b(634)=>GND, 
      b(633)=>GND, b(632)=>GND, b(631)=>GND, b(630)=>GND, b(629)=>GND, 
      b(628)=>GND, b(627)=>GND, b(626)=>GND, b(625)=>GND, b(624)=>GND, 
      b(623)=>GND, b(622)=>GND, b(621)=>GND, b(620)=>GND, b(619)=>GND, 
      b(618)=>GND, b(617)=>GND, b(616)=>GND, b(615)=>GND, b(614)=>GND, 
      b(613)=>GND, b(612)=>GND, b(611)=>GND, b(610)=>GND, b(609)=>GND, 
      b(608)=>GND, b(607)=>GND, b(606)=>GND, b(605)=>GND, b(604)=>GND, 
      b(603)=>GND, b(602)=>GND, b(601)=>GND, b(600)=>GND, b(599)=>GND, 
      b(598)=>GND, b(597)=>GND, b(596)=>GND, b(595)=>GND, b(594)=>GND, 
      b(593)=>GND, b(592)=>GND, b(591)=>GND, b(590)=>GND, b(589)=>GND, 
      b(588)=>GND, b(587)=>GND, b(586)=>GND, b(585)=>GND, b(584)=>GND, 
      b(583)=>GND, b(582)=>GND, b(581)=>GND, b(580)=>GND, b(579)=>GND, 
      b(578)=>GND, b(577)=>GND, b(576)=>GND, b(575)=>GND, b(574)=>GND, 
      b(573)=>GND, b(572)=>GND, b(571)=>GND, b(570)=>GND, b(569)=>GND, 
      b(568)=>GND, b(567)=>GND, b(566)=>GND, b(565)=>GND, b(564)=>GND, 
      b(563)=>GND, b(562)=>GND, b(561)=>GND, b(560)=>GND, b(559)=>GND, 
      b(558)=>GND, b(557)=>GND, b(556)=>GND, b(555)=>GND, b(554)=>GND, 
      b(553)=>GND, b(552)=>GND, b(551)=>GND, b(550)=>GND, b(549)=>GND, 
      b(548)=>GND, b(547)=>GND, b(546)=>GND, b(545)=>GND, b(544)=>GND, 
      b(543)=>GND, b(542)=>GND, b(541)=>GND, b(540)=>GND, b(539)=>GND, 
      b(538)=>GND, b(537)=>GND, b(536)=>GND, b(535)=>GND, b(534)=>GND, 
      b(533)=>GND, b(532)=>GND, b(531)=>GND, b(530)=>GND, b(529)=>GND, 
      b(528)=>GND, b(527)=>GND, b(526)=>GND, b(525)=>GND, b(524)=>GND, 
      b(523)=>GND, b(522)=>GND, b(521)=>GND, b(520)=>GND, b(519)=>GND, 
      b(518)=>GND, b(517)=>GND, b(516)=>GND, b(515)=>GND, b(514)=>GND, 
      b(513)=>GND, b(512)=>GND, b(511)=>GND, b(510)=>GND, b(509)=>GND, 
      b(508)=>GND, b(507)=>GND, b(506)=>GND, b(505)=>GND, b(504)=>GND, 
      b(503)=>GND, b(502)=>GND, b(501)=>GND, b(500)=>GND, b(499)=>GND, 
      b(498)=>GND, b(497)=>GND, b(496)=>GND, b(495)=>GND, b(494)=>GND, 
      b(493)=>GND, b(492)=>GND, b(491)=>GND, b(490)=>GND, b(489)=>GND, 
      b(488)=>GND, b(487)=>GND, b(486)=>GND, b(485)=>GND, b(484)=>GND, 
      b(483)=>GND, b(482)=>GND, b(481)=>GND, b(480)=>GND, b(479)=>GND, 
      b(478)=>GND, b(477)=>GND, b(476)=>GND, b(475)=>GND, b(474)=>GND, 
      b(473)=>GND, b(472)=>GND, b(471)=>GND, b(470)=>GND, b(469)=>GND, 
      b(468)=>GND, b(467)=>GND, b(466)=>GND, b(465)=>GND, b(464)=>GND, 
      b(463)=>GND, b(462)=>GND, b(461)=>GND, b(460)=>GND, b(459)=>GND, 
      b(458)=>GND, b(457)=>GND, b(456)=>GND, b(455)=>GND, b(454)=>GND, 
      b(453)=>GND, b(452)=>GND, b(451)=>GND, b(450)=>GND, b(449)=>GND, 
      b(448)=>GND, b(447)=>GND, b(446)=>GND, b(445)=>GND, b(444)=>GND, 
      b(443)=>GND, b(442)=>GND, b(441)=>GND, b(440)=>GND, b(439)=>GND, 
      b(438)=>GND, b(437)=>GND, b(436)=>GND, b(435)=>GND, b(434)=>GND, 
      b(433)=>GND, b(432)=>GND, b(431)=>GND, b(430)=>GND, b(429)=>GND, 
      b(428)=>GND, b(427)=>GND, b(426)=>GND, b(425)=>GND, b(424)=>GND, 
      b(423)=>GND, b(422)=>GND, b(421)=>GND, b(420)=>GND, b(419)=>GND, 
      b(418)=>GND, b(417)=>GND, b(416)=>GND, b(415)=>GND, b(414)=>GND, 
      b(413)=>GND, b(412)=>GND, b(411)=>GND, b(410)=>GND, b(409)=>GND, 
      b(408)=>GND, b(407)=>GND, b(406)=>GND, b(405)=>GND, b(404)=>GND, 
      b(403)=>GND, b(402)=>GND, b(401)=>GND, b(400)=>GND, b(399)=>GND, 
      b(398)=>GND, b(397)=>GND, b(396)=>GND, b(395)=>GND, b(394)=>GND, 
      b(393)=>GND, b(392)=>GND, b(391)=>GND, b(390)=>GND, b(389)=>GND, 
      b(388)=>GND, b(387)=>GND, b(386)=>GND, b(385)=>GND, b(384)=>GND, 
      b(383)=>GND, b(382)=>GND, b(381)=>GND, b(380)=>GND, b(379)=>GND, 
      b(378)=>GND, b(377)=>GND, b(376)=>GND, b(375)=>GND, b(374)=>GND, 
      b(373)=>GND, b(372)=>GND, b(371)=>GND, b(370)=>GND, b(369)=>GND, 
      b(368)=>GND, b(367)=>GND, b(366)=>GND, b(365)=>GND, b(364)=>GND, 
      b(363)=>GND, b(362)=>GND, b(361)=>GND, b(360)=>GND, b(359)=>GND, 
      b(358)=>GND, b(357)=>GND, b(356)=>GND, b(355)=>GND, b(354)=>GND, 
      b(353)=>GND, b(352)=>GND, b(351)=>GND, b(350)=>GND, b(349)=>GND, 
      b(348)=>GND, b(347)=>GND, b(346)=>GND, b(345)=>GND, b(344)=>GND, 
      b(343)=>GND, b(342)=>GND, b(341)=>GND, b(340)=>GND, b(339)=>GND, 
      b(338)=>GND, b(337)=>GND, b(336)=>GND, b(335)=>GND, b(334)=>GND, 
      b(333)=>GND, b(332)=>GND, b(331)=>GND, b(330)=>GND, b(329)=>GND, 
      b(328)=>GND, b(327)=>GND, b(326)=>GND, b(325)=>GND, b(324)=>GND, 
      b(323)=>GND, b(322)=>GND, b(321)=>GND, b(320)=>GND, b(319)=>GND, 
      b(318)=>GND, b(317)=>GND, b(316)=>GND, b(315)=>GND, b(314)=>GND, 
      b(313)=>GND, b(312)=>GND, b(311)=>GND, b(310)=>GND, b(309)=>GND, 
      b(308)=>GND, b(307)=>GND, b(306)=>GND, b(305)=>GND, b(304)=>GND, 
      b(303)=>GND, b(302)=>GND, b(301)=>GND, b(300)=>GND, b(299)=>GND, 
      b(298)=>GND, b(297)=>GND, b(296)=>GND, b(295)=>GND, b(294)=>GND, 
      b(293)=>GND, b(292)=>GND, b(291)=>GND, b(290)=>GND, b(289)=>GND, 
      b(288)=>GND, b(287)=>GND, b(286)=>GND, b(285)=>GND, b(284)=>GND, 
      b(283)=>GND, b(282)=>GND, b(281)=>GND, b(280)=>GND, b(279)=>GND, 
      b(278)=>GND, b(277)=>GND, b(276)=>GND, b(275)=>GND, b(274)=>GND, 
      b(273)=>GND, b(272)=>GND, b(271)=>GND, b(270)=>GND, b(269)=>GND, 
      b(268)=>GND, b(267)=>GND, b(266)=>GND, b(265)=>GND, b(264)=>GND, 
      b(263)=>GND, b(262)=>GND, b(261)=>GND, b(260)=>GND, b(259)=>GND, 
      b(258)=>GND, b(257)=>GND, b(256)=>GND, b(255)=>GND, b(254)=>GND, 
      b(253)=>GND, b(252)=>GND, b(251)=>GND, b(250)=>GND, b(249)=>GND, 
      b(248)=>GND, b(247)=>GND, b(246)=>GND, b(245)=>GND, b(244)=>GND, 
      b(243)=>GND, b(242)=>GND, b(241)=>GND, b(240)=>GND, b(239)=>GND, 
      b(238)=>GND, b(237)=>GND, b(236)=>GND, b(235)=>GND, b(234)=>GND, 
      b(233)=>GND, b(232)=>GND, b(231)=>GND, b(230)=>GND, b(229)=>GND, 
      b(228)=>GND, b(227)=>GND, b(226)=>GND, b(225)=>GND, b(224)=>GND, 
      b(223)=>GND, b(222)=>GND, b(221)=>GND, b(220)=>GND, b(219)=>GND, 
      b(218)=>GND, b(217)=>GND, b(216)=>GND, b(215)=>GND, b(214)=>GND, 
      b(213)=>GND, b(212)=>GND, b(211)=>GND, b(210)=>GND, b(209)=>GND, 
      b(208)=>GND, b(207)=>GND, b(206)=>GND, b(205)=>GND, b(204)=>GND, 
      b(203)=>GND, b(202)=>GND, b(201)=>GND, b(200)=>GND, b(199)=>GND, 
      b(198)=>GND, b(197)=>GND, b(196)=>GND, b(195)=>GND, b(194)=>GND, 
      b(193)=>GND, b(192)=>GND, b(191)=>GND, b(190)=>GND, b(189)=>GND, 
      b(188)=>GND, b(187)=>GND, b(186)=>GND, b(185)=>GND, b(184)=>GND, 
      b(183)=>GND, b(182)=>GND, b(181)=>GND, b(180)=>GND, b(179)=>GND, 
      b(178)=>GND, b(177)=>GND, b(176)=>GND, b(175)=>GND, b(174)=>GND, 
      b(173)=>GND, b(172)=>GND, b(171)=>GND, b(170)=>GND, b(169)=>GND, 
      b(168)=>GND, b(167)=>GND, b(166)=>GND, b(165)=>GND, b(164)=>GND, 
      b(163)=>GND, b(162)=>GND, b(161)=>GND, b(160)=>GND, b(159)=>GND, 
      b(158)=>GND, b(157)=>GND, b(156)=>GND, b(155)=>GND, b(154)=>GND, 
      b(153)=>GND, b(152)=>GND, b(151)=>GND, b(150)=>GND, b(149)=>GND, 
      b(148)=>GND, b(147)=>GND, b(146)=>GND, b(145)=>GND, b(144)=>GND, 
      b(143)=>GND, b(142)=>GND, b(141)=>GND, b(140)=>GND, b(139)=>GND, 
      b(138)=>GND, b(137)=>GND, b(136)=>GND, b(135)=>GND, b(134)=>GND, 
      b(133)=>GND, b(132)=>GND, b(131)=>GND, b(130)=>GND, b(129)=>GND, 
      b(128)=>GND, b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, 
      b(123)=>GND, b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, 
      b(118)=>GND, b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, 
      b(113)=>GND, b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, 
      b(108)=>GND, b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, 
      b(103)=>GND, b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)
      =>GND, b(97)=>GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, 
      b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, 
      b(86)=>GND, b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, 
      b(80)=>GND, b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, 
      b(74)=>GND, b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, 
      b(68)=>GND, b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, 
      b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, 
      b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, 
      b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, 
      b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, 
      b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, 
      b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, 
      b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, 
      b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>
      address(9), b(8)=>address(8), b(7)=>address(7), b(6)=>address(6), b(5)
      =>address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), 
      b(1)=>address(1), b(0)=>address(0), d=>q(3));
   modgen_mux_18 : mux_1024u_1024u port map ( a(1023)=>GND, a(1022)=>PWR, 
      a(1021)=>PWR, a(1020)=>PWR, a(1019)=>PWR, a(1018)=>PWR, a(1017)=>GND, 
      a(1016)=>GND, a(1015)=>GND, a(1014)=>GND, a(1013)=>PWR, a(1012)=>PWR, 
      a(1011)=>PWR, a(1010)=>GND, a(1009)=>GND, a(1008)=>PWR, a(1007)=>PWR, 
      a(1006)=>GND, a(1005)=>PWR, a(1004)=>PWR, a(1003)=>PWR, a(1002)=>GND, 
      a(1001)=>PWR, a(1000)=>GND, a(999)=>PWR, a(998)=>GND, a(997)=>GND, 
      a(996)=>GND, a(995)=>PWR, a(994)=>GND, a(993)=>GND, a(992)=>PWR, 
      a(991)=>PWR, a(990)=>PWR, a(989)=>GND, a(988)=>GND, a(987)=>PWR, 
      a(986)=>PWR, a(985)=>PWR, a(984)=>GND, a(983)=>PWR, a(982)=>GND, 
      a(981)=>GND, a(980)=>PWR, a(979)=>PWR, a(978)=>GND, a(977)=>GND, 
      a(976)=>PWR, a(975)=>PWR, a(974)=>PWR, a(973)=>PWR, a(972)=>GND, 
      a(971)=>PWR, a(970)=>PWR, a(969)=>GND, a(968)=>PWR, a(967)=>GND, 
      a(966)=>GND, a(965)=>PWR, a(964)=>GND, a(963)=>PWR, a(962)=>PWR, 
      a(961)=>GND, a(960)=>PWR, a(959)=>PWR, a(958)=>GND, a(957)=>GND, 
      a(956)=>PWR, a(955)=>PWR, a(954)=>PWR, a(953)=>PWR, a(952)=>PWR, 
      a(951)=>GND, a(950)=>PWR, a(949)=>GND, a(948)=>GND, a(947)=>GND, 
      a(946)=>GND, a(945)=>PWR, a(944)=>GND, a(943)=>PWR, a(942)=>PWR, 
      a(941)=>GND, a(940)=>PWR, a(939)=>PWR, a(938)=>PWR, a(937)=>GND, 
      a(936)=>GND, a(935)=>GND, a(934)=>PWR, a(933)=>GND, a(932)=>PWR, 
      a(931)=>GND, a(930)=>PWR, a(929)=>PWR, a(928)=>PWR, a(927)=>GND, 
      a(926)=>PWR, a(925)=>PWR, a(924)=>GND, a(923)=>GND, a(922)=>PWR, 
      a(921)=>GND, a(920)=>PWR, a(919)=>PWR, a(918)=>GND, a(917)=>GND, 
      a(916)=>PWR, a(915)=>PWR, a(914)=>GND, a(913)=>GND, a(912)=>PWR, 
      a(911)=>PWR, a(910)=>GND, a(909)=>GND, a(908)=>GND, a(907)=>GND, 
      a(906)=>PWR, a(905)=>PWR, a(904)=>GND, a(903)=>PWR, a(902)=>PWR, 
      a(901)=>PWR, a(900)=>PWR, a(899)=>GND, a(898)=>PWR, a(897)=>GND, 
      a(896)=>GND, a(895)=>GND, a(894)=>PWR, a(893)=>PWR, a(892)=>GND, 
      a(891)=>GND, a(890)=>PWR, a(889)=>GND, a(888)=>PWR, a(887)=>PWR, 
      a(886)=>GND, a(885)=>PWR, a(884)=>GND, a(883)=>GND, a(882)=>GND, 
      a(881)=>PWR, a(880)=>PWR, a(879)=>PWR, a(878)=>GND, a(877)=>PWR, 
      a(876)=>PWR, a(875)=>PWR, a(874)=>GND, a(873)=>PWR, a(872)=>GND, 
      a(871)=>PWR, a(870)=>GND, a(869)=>PWR, a(868)=>PWR, a(867)=>PWR, 
      a(866)=>GND, a(865)=>PWR, a(864)=>PWR, a(863)=>GND, a(862)=>PWR, 
      a(861)=>GND, a(860)=>GND, a(859)=>PWR, a(858)=>PWR, a(857)=>PWR, 
      a(856)=>PWR, a(855)=>PWR, a(854)=>PWR, a(853)=>PWR, a(852)=>GND, 
      a(851)=>GND, a(850)=>PWR, a(849)=>GND, a(848)=>GND, a(847)=>GND, 
      a(846)=>PWR, a(845)=>GND, a(844)=>GND, a(843)=>PWR, a(842)=>PWR, 
      a(841)=>GND, a(840)=>GND, a(839)=>GND, a(838)=>PWR, a(837)=>PWR, 
      a(836)=>PWR, a(835)=>PWR, a(834)=>PWR, a(833)=>PWR, a(832)=>GND, 
      a(831)=>PWR, a(830)=>PWR, a(829)=>PWR, a(828)=>GND, a(827)=>PWR, 
      a(826)=>GND, a(825)=>GND, a(824)=>GND, a(823)=>GND, a(822)=>PWR, 
      a(821)=>GND, a(820)=>PWR, a(819)=>PWR, a(818)=>PWR, a(817)=>PWR, 
      a(816)=>GND, a(815)=>PWR, a(814)=>GND, a(813)=>GND, a(812)=>PWR, 
      a(811)=>PWR, a(810)=>GND, a(809)=>PWR, a(808)=>GND, a(807)=>GND, 
      a(806)=>GND, a(805)=>GND, a(804)=>PWR, a(803)=>PWR, a(802)=>PWR, 
      a(801)=>GND, a(800)=>PWR, a(799)=>PWR, a(798)=>PWR, a(797)=>GND, 
      a(796)=>PWR, a(795)=>GND, a(794)=>GND, a(793)=>PWR, a(792)=>GND, 
      a(791)=>GND, a(790)=>PWR, a(789)=>GND, a(788)=>GND, a(787)=>GND, 
      a(786)=>PWR, a(785)=>GND, a(784)=>GND, a(783)=>PWR, a(782)=>GND, 
      a(781)=>GND, a(780)=>GND, a(779)=>PWR, a(778)=>PWR, a(777)=>GND, 
      a(776)=>PWR, a(775)=>GND, a(774)=>GND, a(773)=>PWR, a(772)=>PWR, 
      a(771)=>PWR, a(770)=>PWR, a(769)=>PWR, a(768)=>GND, a(767)=>GND, 
      a(766)=>GND, a(765)=>PWR, a(764)=>GND, a(763)=>PWR, a(762)=>GND, 
      a(761)=>GND, a(760)=>GND, a(759)=>GND, a(758)=>GND, a(757)=>PWR, 
      a(756)=>GND, a(755)=>GND, a(754)=>PWR, a(753)=>GND, a(752)=>PWR, 
      a(751)=>PWR, a(750)=>GND, a(749)=>PWR, a(748)=>GND, a(747)=>PWR, 
      a(746)=>PWR, a(745)=>GND, a(744)=>PWR, a(743)=>PWR, a(742)=>PWR, 
      a(741)=>GND, a(740)=>PWR, a(739)=>PWR, a(738)=>GND, a(737)=>GND, 
      a(736)=>GND, a(735)=>PWR, a(734)=>GND, a(733)=>PWR, a(732)=>PWR, 
      a(731)=>PWR, a(730)=>GND, a(729)=>PWR, a(728)=>GND, a(727)=>GND, 
      a(726)=>PWR, a(725)=>GND, a(724)=>GND, a(723)=>PWR, a(722)=>PWR, 
      a(721)=>PWR, a(720)=>PWR, a(719)=>PWR, a(718)=>PWR, a(717)=>PWR, 
      a(716)=>PWR, a(715)=>GND, a(714)=>GND, a(713)=>PWR, a(712)=>PWR, 
      a(711)=>PWR, a(710)=>GND, a(709)=>GND, a(708)=>PWR, a(707)=>PWR, 
      a(706)=>GND, a(705)=>GND, a(704)=>PWR, a(703)=>GND, a(702)=>GND, 
      a(701)=>PWR, a(700)=>GND, a(699)=>PWR, a(698)=>GND, a(697)=>PWR, 
      a(696)=>GND, a(695)=>PWR, a(694)=>GND, a(693)=>GND, a(692)=>GND, 
      a(691)=>PWR, a(690)=>PWR, a(689)=>GND, a(688)=>PWR, a(687)=>GND, 
      a(686)=>GND, a(685)=>GND, a(684)=>PWR, a(683)=>PWR, a(682)=>PWR, 
      a(681)=>PWR, a(680)=>PWR, a(679)=>GND, a(678)=>GND, a(677)=>GND, 
      a(676)=>PWR, a(675)=>PWR, a(674)=>PWR, a(673)=>GND, a(672)=>PWR, 
      a(671)=>PWR, a(670)=>GND, a(669)=>PWR, a(668)=>GND, a(667)=>GND, 
      a(666)=>GND, a(665)=>PWR, a(664)=>PWR, a(663)=>GND, a(662)=>GND, 
      a(661)=>GND, a(660)=>PWR, a(659)=>PWR, a(658)=>GND, a(657)=>PWR, 
      a(656)=>GND, a(655)=>GND, a(654)=>GND, a(653)=>PWR, a(652)=>GND, 
      a(651)=>PWR, a(650)=>PWR, a(649)=>GND, a(648)=>GND, a(647)=>PWR, 
      a(646)=>GND, a(645)=>PWR, a(644)=>GND, a(643)=>GND, a(642)=>PWR, 
      a(641)=>PWR, a(640)=>GND, a(639)=>PWR, a(638)=>GND, a(637)=>GND, 
      a(636)=>PWR, a(635)=>GND, a(634)=>PWR, a(633)=>PWR, a(632)=>PWR, 
      a(631)=>PWR, a(630)=>PWR, a(629)=>PWR, a(628)=>GND, a(627)=>PWR, 
      a(626)=>PWR, a(625)=>GND, a(624)=>GND, a(623)=>PWR, a(622)=>PWR, 
      a(621)=>GND, a(620)=>GND, a(619)=>GND, a(618)=>PWR, a(617)=>GND, 
      a(616)=>GND, a(615)=>PWR, a(614)=>GND, a(613)=>GND, a(612)=>GND, 
      a(611)=>GND, a(610)=>GND, a(609)=>PWR, a(608)=>GND, a(607)=>GND, 
      a(606)=>GND, a(605)=>GND, a(604)=>PWR, a(603)=>PWR, a(602)=>PWR, 
      a(601)=>PWR, a(600)=>GND, a(599)=>GND, a(598)=>GND, a(597)=>PWR, 
      a(596)=>PWR, a(595)=>GND, a(594)=>GND, a(593)=>PWR, a(592)=>GND, 
      a(591)=>PWR, a(590)=>GND, a(589)=>GND, a(588)=>PWR, a(587)=>PWR, 
      a(586)=>GND, a(585)=>PWR, a(584)=>PWR, a(583)=>PWR, a(582)=>GND, 
      a(581)=>PWR, a(580)=>PWR, a(579)=>GND, a(578)=>GND, a(577)=>PWR, 
      a(576)=>GND, a(575)=>PWR, a(574)=>PWR, a(573)=>PWR, a(572)=>PWR, 
      a(571)=>GND, a(570)=>PWR, a(569)=>PWR, a(568)=>GND, a(567)=>PWR, 
      a(566)=>GND, a(565)=>PWR, a(564)=>PWR, a(563)=>GND, a(562)=>GND, 
      a(561)=>GND, a(560)=>GND, a(559)=>PWR, a(558)=>GND, a(557)=>GND, 
      a(556)=>GND, a(555)=>GND, a(554)=>GND, a(553)=>GND, a(552)=>PWR, 
      a(551)=>PWR, a(550)=>GND, a(549)=>GND, a(548)=>GND, a(547)=>PWR, 
      a(546)=>PWR, a(545)=>GND, a(544)=>GND, a(543)=>PWR, a(542)=>GND, 
      a(541)=>PWR, a(540)=>GND, a(539)=>PWR, a(538)=>PWR, a(537)=>PWR, 
      a(536)=>PWR, a(535)=>PWR, a(534)=>PWR, a(533)=>GND, a(532)=>PWR, 
      a(531)=>PWR, a(530)=>GND, a(529)=>GND, a(528)=>GND, a(527)=>GND, 
      a(526)=>GND, a(525)=>GND, a(524)=>GND, a(523)=>PWR, a(522)=>GND, 
      a(521)=>PWR, a(520)=>PWR, a(519)=>PWR, a(518)=>GND, a(517)=>GND, 
      a(516)=>GND, a(515)=>GND, a(514)=>PWR, a(513)=>PWR, a(512)=>PWR, 
      a(511)=>PWR, a(510)=>PWR, a(509)=>GND, a(508)=>GND, a(507)=>PWR, 
      a(506)=>PWR, a(505)=>PWR, a(504)=>PWR, a(503)=>PWR, a(502)=>GND, 
      a(501)=>GND, a(500)=>PWR, a(499)=>PWR, a(498)=>PWR, a(497)=>PWR, 
      a(496)=>GND, a(495)=>PWR, a(494)=>PWR, a(493)=>PWR, a(492)=>GND, 
      a(491)=>PWR, a(490)=>GND, a(489)=>GND, a(488)=>GND, a(487)=>PWR, 
      a(486)=>PWR, a(485)=>PWR, a(484)=>PWR, a(483)=>PWR, a(482)=>PWR, 
      a(481)=>GND, a(480)=>PWR, a(479)=>GND, a(478)=>PWR, a(477)=>PWR, 
      a(476)=>GND, a(475)=>GND, a(474)=>GND, a(473)=>GND, a(472)=>PWR, 
      a(471)=>PWR, a(470)=>GND, a(469)=>PWR, a(468)=>PWR, a(467)=>PWR, 
      a(466)=>PWR, a(465)=>GND, a(464)=>PWR, a(463)=>PWR, a(462)=>GND, 
      a(461)=>GND, a(460)=>PWR, a(459)=>GND, a(458)=>GND, a(457)=>PWR, 
      a(456)=>GND, a(455)=>PWR, a(454)=>GND, a(453)=>PWR, a(452)=>PWR, 
      a(451)=>GND, a(450)=>PWR, a(449)=>GND, a(448)=>GND, a(447)=>GND, 
      a(446)=>PWR, a(445)=>PWR, a(444)=>PWR, a(443)=>GND, a(442)=>PWR, 
      a(441)=>GND, a(440)=>PWR, a(439)=>GND, a(438)=>GND, a(437)=>PWR, 
      a(436)=>PWR, a(435)=>PWR, a(434)=>PWR, a(433)=>GND, a(432)=>GND, 
      a(431)=>PWR, a(430)=>PWR, a(429)=>PWR, a(428)=>GND, a(427)=>PWR, 
      a(426)=>GND, a(425)=>GND, a(424)=>GND, a(423)=>GND, a(422)=>GND, 
      a(421)=>PWR, a(420)=>GND, a(419)=>GND, a(418)=>GND, a(417)=>GND, 
      a(416)=>GND, a(415)=>PWR, a(414)=>PWR, a(413)=>PWR, a(412)=>GND, 
      a(411)=>GND, a(410)=>PWR, a(409)=>GND, a(408)=>PWR, a(407)=>PWR, 
      a(406)=>GND, a(405)=>PWR, a(404)=>GND, a(403)=>PWR, a(402)=>PWR, 
      a(401)=>PWR, a(400)=>GND, a(399)=>PWR, a(398)=>PWR, a(397)=>GND, 
      a(396)=>GND, a(395)=>PWR, a(394)=>PWR, a(393)=>PWR, a(392)=>PWR, 
      a(391)=>GND, a(390)=>PWR, a(389)=>GND, a(388)=>PWR, a(387)=>PWR, 
      a(386)=>GND, a(385)=>GND, a(384)=>PWR, a(383)=>PWR, a(382)=>PWR, 
      a(381)=>GND, a(380)=>GND, a(379)=>PWR, a(378)=>PWR, a(377)=>GND, 
      a(376)=>PWR, a(375)=>GND, a(374)=>GND, a(373)=>PWR, a(372)=>GND, 
      a(371)=>PWR, a(370)=>PWR, a(369)=>GND, a(368)=>GND, a(367)=>PWR, 
      a(366)=>GND, a(365)=>GND, a(364)=>GND, a(363)=>PWR, a(362)=>GND, 
      a(361)=>PWR, a(360)=>GND, a(359)=>GND, a(358)=>PWR, a(357)=>PWR, 
      a(356)=>PWR, a(355)=>GND, a(354)=>GND, a(353)=>GND, a(352)=>GND, 
      a(351)=>GND, a(350)=>GND, a(349)=>PWR, a(348)=>GND, a(347)=>PWR, 
      a(346)=>GND, a(345)=>GND, a(344)=>PWR, a(343)=>PWR, a(342)=>GND, 
      a(341)=>GND, a(340)=>GND, a(339)=>PWR, a(338)=>PWR, a(337)=>GND, 
      a(336)=>GND, a(335)=>GND, a(334)=>GND, a(333)=>GND, a(332)=>GND, 
      a(331)=>PWR, a(330)=>PWR, a(329)=>GND, a(328)=>GND, a(327)=>PWR, 
      a(326)=>GND, a(325)=>PWR, a(324)=>GND, a(323)=>PWR, a(322)=>PWR, 
      a(321)=>GND, a(320)=>PWR, a(319)=>GND, a(318)=>PWR, a(317)=>PWR, 
      a(316)=>PWR, a(315)=>PWR, a(314)=>GND, a(313)=>PWR, a(312)=>GND, 
      a(311)=>PWR, a(310)=>PWR, a(309)=>PWR, a(308)=>GND, a(307)=>PWR, 
      a(306)=>PWR, a(305)=>PWR, a(304)=>PWR, a(303)=>PWR, a(302)=>GND, 
      a(301)=>GND, a(300)=>PWR, a(299)=>GND, a(298)=>PWR, a(297)=>PWR, 
      a(296)=>GND, a(295)=>PWR, a(294)=>PWR, a(293)=>PWR, a(292)=>GND, 
      a(291)=>PWR, a(290)=>PWR, a(289)=>PWR, a(288)=>GND, a(287)=>PWR, 
      a(286)=>GND, a(285)=>GND, a(284)=>PWR, a(283)=>GND, a(282)=>GND, 
      a(281)=>PWR, a(280)=>PWR, a(279)=>PWR, a(278)=>PWR, a(277)=>PWR, 
      a(276)=>PWR, a(275)=>GND, a(274)=>GND, a(273)=>GND, a(272)=>GND, 
      a(271)=>GND, a(270)=>GND, a(269)=>GND, a(268)=>GND, a(267)=>GND, 
      a(266)=>GND, a(265)=>GND, a(264)=>PWR, a(263)=>PWR, a(262)=>PWR, 
      a(261)=>PWR, a(260)=>PWR, a(259)=>PWR, a(258)=>PWR, a(257)=>PWR, 
      a(256)=>PWR, a(255)=>PWR, a(254)=>GND, a(253)=>PWR, a(252)=>PWR, 
      a(251)=>PWR, a(250)=>GND, a(249)=>PWR, a(248)=>PWR, a(247)=>PWR, 
      a(246)=>GND, a(245)=>PWR, a(244)=>PWR, a(243)=>PWR, a(242)=>PWR, 
      a(241)=>GND, a(240)=>GND, a(239)=>GND, a(238)=>GND, a(237)=>PWR, 
      a(236)=>PWR, a(235)=>PWR, a(234)=>PWR, a(233)=>PWR, a(232)=>PWR, 
      a(231)=>GND, a(230)=>GND, a(229)=>GND, a(228)=>GND, a(227)=>PWR, 
      a(226)=>PWR, a(225)=>PWR, a(224)=>GND, a(223)=>GND, a(222)=>PWR, 
      a(221)=>GND, a(220)=>PWR, a(219)=>GND, a(218)=>GND, a(217)=>GND, 
      a(216)=>GND, a(215)=>GND, a(214)=>PWR, a(213)=>PWR, a(212)=>GND, 
      a(211)=>GND, a(210)=>GND, a(209)=>PWR, a(208)=>PWR, a(207)=>PWR, 
      a(206)=>GND, a(205)=>GND, a(204)=>PWR, a(203)=>GND, a(202)=>PWR, 
      a(201)=>PWR, a(200)=>PWR, a(199)=>PWR, a(198)=>PWR, a(197)=>PWR, 
      a(196)=>GND, a(195)=>GND, a(194)=>GND, a(193)=>PWR, a(192)=>GND, 
      a(191)=>GND, a(190)=>PWR, a(189)=>PWR, a(188)=>GND, a(187)=>GND, 
      a(186)=>GND, a(185)=>PWR, a(184)=>GND, a(183)=>GND, a(182)=>GND, 
      a(181)=>GND, a(180)=>GND, a(179)=>PWR, a(178)=>PWR, a(177)=>PWR, 
      a(176)=>PWR, a(175)=>GND, a(174)=>PWR, a(173)=>GND, a(172)=>GND, 
      a(171)=>GND, a(170)=>PWR, a(169)=>PWR, a(168)=>GND, a(167)=>PWR, 
      a(166)=>GND, a(165)=>GND, a(164)=>PWR, a(163)=>GND, a(162)=>GND, 
      a(161)=>GND, a(160)=>PWR, a(159)=>PWR, a(158)=>GND, a(157)=>PWR, 
      a(156)=>GND, a(155)=>GND, a(154)=>GND, a(153)=>GND, a(152)=>PWR, 
      a(151)=>GND, a(150)=>PWR, a(149)=>PWR, a(148)=>PWR, a(147)=>PWR, 
      a(146)=>PWR, a(145)=>GND, a(144)=>PWR, a(143)=>PWR, a(142)=>GND, 
      a(141)=>PWR, a(140)=>GND, a(139)=>PWR, a(138)=>GND, a(137)=>PWR, 
      a(136)=>PWR, a(135)=>PWR, a(134)=>GND, a(133)=>PWR, a(132)=>GND, 
      a(131)=>PWR, a(130)=>GND, a(129)=>GND, a(128)=>PWR, a(127)=>GND, 
      a(126)=>GND, a(125)=>GND, a(124)=>PWR, a(123)=>PWR, a(122)=>GND, 
      a(121)=>GND, a(120)=>PWR, a(119)=>GND, a(118)=>GND, a(117)=>PWR, 
      a(116)=>PWR, a(115)=>GND, a(114)=>GND, a(113)=>PWR, a(112)=>GND, 
      a(111)=>GND, a(110)=>GND, a(109)=>PWR, a(108)=>PWR, a(107)=>PWR, 
      a(106)=>PWR, a(105)=>PWR, a(104)=>GND, a(103)=>PWR, a(102)=>GND, 
      a(101)=>PWR, a(100)=>GND, a(99)=>GND, a(98)=>PWR, a(97)=>PWR, a(96)=>
      GND, a(95)=>GND, a(94)=>PWR, a(93)=>PWR, a(92)=>PWR, a(91)=>PWR, a(90)
      =>GND, a(89)=>PWR, a(88)=>PWR, a(87)=>PWR, a(86)=>GND, a(85)=>PWR, 
      a(84)=>GND, a(83)=>PWR, a(82)=>PWR, a(81)=>GND, a(80)=>GND, a(79)=>PWR, 
      a(78)=>PWR, a(77)=>PWR, a(76)=>PWR, a(75)=>PWR, a(74)=>PWR, a(73)=>PWR, 
      a(72)=>PWR, a(71)=>PWR, a(70)=>PWR, a(69)=>GND, a(68)=>GND, a(67)=>PWR, 
      a(66)=>GND, a(65)=>PWR, a(64)=>GND, a(63)=>GND, a(62)=>PWR, a(61)=>GND, 
      a(60)=>PWR, a(59)=>PWR, a(58)=>PWR, a(57)=>GND, a(56)=>GND, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>GND, a(52)=>PWR, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>PWR, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>GND, a(39)=>GND, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>PWR, a(34)=>PWR, a(33)=>GND, a(32)=>GND, a(31)=>PWR, 
      a(30)=>PWR, a(29)=>PWR, a(28)=>PWR, a(27)=>GND, a(26)=>PWR, a(25)=>GND, 
      a(24)=>GND, a(23)=>PWR, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>PWR, 
      a(18)=>PWR, a(17)=>GND, a(16)=>GND, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>PWR, a(7)=>PWR, 
      a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>PWR, a(0)
      =>PWR, b(1023)=>GND, b(1022)=>GND, b(1021)=>GND, b(1020)=>GND, b(1019)
      =>GND, b(1018)=>GND, b(1017)=>GND, b(1016)=>GND, b(1015)=>GND, b(1014)
      =>GND, b(1013)=>GND, b(1012)=>GND, b(1011)=>GND, b(1010)=>GND, b(1009)
      =>GND, b(1008)=>GND, b(1007)=>GND, b(1006)=>GND, b(1005)=>GND, b(1004)
      =>GND, b(1003)=>GND, b(1002)=>GND, b(1001)=>GND, b(1000)=>GND, b(999)
      =>GND, b(998)=>GND, b(997)=>GND, b(996)=>GND, b(995)=>GND, b(994)=>GND, 
      b(993)=>GND, b(992)=>GND, b(991)=>GND, b(990)=>GND, b(989)=>GND, 
      b(988)=>GND, b(987)=>GND, b(986)=>GND, b(985)=>GND, b(984)=>GND, 
      b(983)=>GND, b(982)=>GND, b(981)=>GND, b(980)=>GND, b(979)=>GND, 
      b(978)=>GND, b(977)=>GND, b(976)=>GND, b(975)=>GND, b(974)=>GND, 
      b(973)=>GND, b(972)=>GND, b(971)=>GND, b(970)=>GND, b(969)=>GND, 
      b(968)=>GND, b(967)=>GND, b(966)=>GND, b(965)=>GND, b(964)=>GND, 
      b(963)=>GND, b(962)=>GND, b(961)=>GND, b(960)=>GND, b(959)=>GND, 
      b(958)=>GND, b(957)=>GND, b(956)=>GND, b(955)=>GND, b(954)=>GND, 
      b(953)=>GND, b(952)=>GND, b(951)=>GND, b(950)=>GND, b(949)=>GND, 
      b(948)=>GND, b(947)=>GND, b(946)=>GND, b(945)=>GND, b(944)=>GND, 
      b(943)=>GND, b(942)=>GND, b(941)=>GND, b(940)=>GND, b(939)=>GND, 
      b(938)=>GND, b(937)=>GND, b(936)=>GND, b(935)=>GND, b(934)=>GND, 
      b(933)=>GND, b(932)=>GND, b(931)=>GND, b(930)=>GND, b(929)=>GND, 
      b(928)=>GND, b(927)=>GND, b(926)=>GND, b(925)=>GND, b(924)=>GND, 
      b(923)=>GND, b(922)=>GND, b(921)=>GND, b(920)=>GND, b(919)=>GND, 
      b(918)=>GND, b(917)=>GND, b(916)=>GND, b(915)=>GND, b(914)=>GND, 
      b(913)=>GND, b(912)=>GND, b(911)=>GND, b(910)=>GND, b(909)=>GND, 
      b(908)=>GND, b(907)=>GND, b(906)=>GND, b(905)=>GND, b(904)=>GND, 
      b(903)=>GND, b(902)=>GND, b(901)=>GND, b(900)=>GND, b(899)=>GND, 
      b(898)=>GND, b(897)=>GND, b(896)=>GND, b(895)=>GND, b(894)=>GND, 
      b(893)=>GND, b(892)=>GND, b(891)=>GND, b(890)=>GND, b(889)=>GND, 
      b(888)=>GND, b(887)=>GND, b(886)=>GND, b(885)=>GND, b(884)=>GND, 
      b(883)=>GND, b(882)=>GND, b(881)=>GND, b(880)=>GND, b(879)=>GND, 
      b(878)=>GND, b(877)=>GND, b(876)=>GND, b(875)=>GND, b(874)=>GND, 
      b(873)=>GND, b(872)=>GND, b(871)=>GND, b(870)=>GND, b(869)=>GND, 
      b(868)=>GND, b(867)=>GND, b(866)=>GND, b(865)=>GND, b(864)=>GND, 
      b(863)=>GND, b(862)=>GND, b(861)=>GND, b(860)=>GND, b(859)=>GND, 
      b(858)=>GND, b(857)=>GND, b(856)=>GND, b(855)=>GND, b(854)=>GND, 
      b(853)=>GND, b(852)=>GND, b(851)=>GND, b(850)=>GND, b(849)=>GND, 
      b(848)=>GND, b(847)=>GND, b(846)=>GND, b(845)=>GND, b(844)=>GND, 
      b(843)=>GND, b(842)=>GND, b(841)=>GND, b(840)=>GND, b(839)=>GND, 
      b(838)=>GND, b(837)=>GND, b(836)=>GND, b(835)=>GND, b(834)=>GND, 
      b(833)=>GND, b(832)=>GND, b(831)=>GND, b(830)=>GND, b(829)=>GND, 
      b(828)=>GND, b(827)=>GND, b(826)=>GND, b(825)=>GND, b(824)=>GND, 
      b(823)=>GND, b(822)=>GND, b(821)=>GND, b(820)=>GND, b(819)=>GND, 
      b(818)=>GND, b(817)=>GND, b(816)=>GND, b(815)=>GND, b(814)=>GND, 
      b(813)=>GND, b(812)=>GND, b(811)=>GND, b(810)=>GND, b(809)=>GND, 
      b(808)=>GND, b(807)=>GND, b(806)=>GND, b(805)=>GND, b(804)=>GND, 
      b(803)=>GND, b(802)=>GND, b(801)=>GND, b(800)=>GND, b(799)=>GND, 
      b(798)=>GND, b(797)=>GND, b(796)=>GND, b(795)=>GND, b(794)=>GND, 
      b(793)=>GND, b(792)=>GND, b(791)=>GND, b(790)=>GND, b(789)=>GND, 
      b(788)=>GND, b(787)=>GND, b(786)=>GND, b(785)=>GND, b(784)=>GND, 
      b(783)=>GND, b(782)=>GND, b(781)=>GND, b(780)=>GND, b(779)=>GND, 
      b(778)=>GND, b(777)=>GND, b(776)=>GND, b(775)=>GND, b(774)=>GND, 
      b(773)=>GND, b(772)=>GND, b(771)=>GND, b(770)=>GND, b(769)=>GND, 
      b(768)=>GND, b(767)=>GND, b(766)=>GND, b(765)=>GND, b(764)=>GND, 
      b(763)=>GND, b(762)=>GND, b(761)=>GND, b(760)=>GND, b(759)=>GND, 
      b(758)=>GND, b(757)=>GND, b(756)=>GND, b(755)=>GND, b(754)=>GND, 
      b(753)=>GND, b(752)=>GND, b(751)=>GND, b(750)=>GND, b(749)=>GND, 
      b(748)=>GND, b(747)=>GND, b(746)=>GND, b(745)=>GND, b(744)=>GND, 
      b(743)=>GND, b(742)=>GND, b(741)=>GND, b(740)=>GND, b(739)=>GND, 
      b(738)=>GND, b(737)=>GND, b(736)=>GND, b(735)=>GND, b(734)=>GND, 
      b(733)=>GND, b(732)=>GND, b(731)=>GND, b(730)=>GND, b(729)=>GND, 
      b(728)=>GND, b(727)=>GND, b(726)=>GND, b(725)=>GND, b(724)=>GND, 
      b(723)=>GND, b(722)=>GND, b(721)=>GND, b(720)=>GND, b(719)=>GND, 
      b(718)=>GND, b(717)=>GND, b(716)=>GND, b(715)=>GND, b(714)=>GND, 
      b(713)=>GND, b(712)=>GND, b(711)=>GND, b(710)=>GND, b(709)=>GND, 
      b(708)=>GND, b(707)=>GND, b(706)=>GND, b(705)=>GND, b(704)=>GND, 
      b(703)=>GND, b(702)=>GND, b(701)=>GND, b(700)=>GND, b(699)=>GND, 
      b(698)=>GND, b(697)=>GND, b(696)=>GND, b(695)=>GND, b(694)=>GND, 
      b(693)=>GND, b(692)=>GND, b(691)=>GND, b(690)=>GND, b(689)=>GND, 
      b(688)=>GND, b(687)=>GND, b(686)=>GND, b(685)=>GND, b(684)=>GND, 
      b(683)=>GND, b(682)=>GND, b(681)=>GND, b(680)=>GND, b(679)=>GND, 
      b(678)=>GND, b(677)=>GND, b(676)=>GND, b(675)=>GND, b(674)=>GND, 
      b(673)=>GND, b(672)=>GND, b(671)=>GND, b(670)=>GND, b(669)=>GND, 
      b(668)=>GND, b(667)=>GND, b(666)=>GND, b(665)=>GND, b(664)=>GND, 
      b(663)=>GND, b(662)=>GND, b(661)=>GND, b(660)=>GND, b(659)=>GND, 
      b(658)=>GND, b(657)=>GND, b(656)=>GND, b(655)=>GND, b(654)=>GND, 
      b(653)=>GND, b(652)=>GND, b(651)=>GND, b(650)=>GND, b(649)=>GND, 
      b(648)=>GND, b(647)=>GND, b(646)=>GND, b(645)=>GND, b(644)=>GND, 
      b(643)=>GND, b(642)=>GND, b(641)=>GND, b(640)=>GND, b(639)=>GND, 
      b(638)=>GND, b(637)=>GND, b(636)=>GND, b(635)=>GND, b(634)=>GND, 
      b(633)=>GND, b(632)=>GND, b(631)=>GND, b(630)=>GND, b(629)=>GND, 
      b(628)=>GND, b(627)=>GND, b(626)=>GND, b(625)=>GND, b(624)=>GND, 
      b(623)=>GND, b(622)=>GND, b(621)=>GND, b(620)=>GND, b(619)=>GND, 
      b(618)=>GND, b(617)=>GND, b(616)=>GND, b(615)=>GND, b(614)=>GND, 
      b(613)=>GND, b(612)=>GND, b(611)=>GND, b(610)=>GND, b(609)=>GND, 
      b(608)=>GND, b(607)=>GND, b(606)=>GND, b(605)=>GND, b(604)=>GND, 
      b(603)=>GND, b(602)=>GND, b(601)=>GND, b(600)=>GND, b(599)=>GND, 
      b(598)=>GND, b(597)=>GND, b(596)=>GND, b(595)=>GND, b(594)=>GND, 
      b(593)=>GND, b(592)=>GND, b(591)=>GND, b(590)=>GND, b(589)=>GND, 
      b(588)=>GND, b(587)=>GND, b(586)=>GND, b(585)=>GND, b(584)=>GND, 
      b(583)=>GND, b(582)=>GND, b(581)=>GND, b(580)=>GND, b(579)=>GND, 
      b(578)=>GND, b(577)=>GND, b(576)=>GND, b(575)=>GND, b(574)=>GND, 
      b(573)=>GND, b(572)=>GND, b(571)=>GND, b(570)=>GND, b(569)=>GND, 
      b(568)=>GND, b(567)=>GND, b(566)=>GND, b(565)=>GND, b(564)=>GND, 
      b(563)=>GND, b(562)=>GND, b(561)=>GND, b(560)=>GND, b(559)=>GND, 
      b(558)=>GND, b(557)=>GND, b(556)=>GND, b(555)=>GND, b(554)=>GND, 
      b(553)=>GND, b(552)=>GND, b(551)=>GND, b(550)=>GND, b(549)=>GND, 
      b(548)=>GND, b(547)=>GND, b(546)=>GND, b(545)=>GND, b(544)=>GND, 
      b(543)=>GND, b(542)=>GND, b(541)=>GND, b(540)=>GND, b(539)=>GND, 
      b(538)=>GND, b(537)=>GND, b(536)=>GND, b(535)=>GND, b(534)=>GND, 
      b(533)=>GND, b(532)=>GND, b(531)=>GND, b(530)=>GND, b(529)=>GND, 
      b(528)=>GND, b(527)=>GND, b(526)=>GND, b(525)=>GND, b(524)=>GND, 
      b(523)=>GND, b(522)=>GND, b(521)=>GND, b(520)=>GND, b(519)=>GND, 
      b(518)=>GND, b(517)=>GND, b(516)=>GND, b(515)=>GND, b(514)=>GND, 
      b(513)=>GND, b(512)=>GND, b(511)=>GND, b(510)=>GND, b(509)=>GND, 
      b(508)=>GND, b(507)=>GND, b(506)=>GND, b(505)=>GND, b(504)=>GND, 
      b(503)=>GND, b(502)=>GND, b(501)=>GND, b(500)=>GND, b(499)=>GND, 
      b(498)=>GND, b(497)=>GND, b(496)=>GND, b(495)=>GND, b(494)=>GND, 
      b(493)=>GND, b(492)=>GND, b(491)=>GND, b(490)=>GND, b(489)=>GND, 
      b(488)=>GND, b(487)=>GND, b(486)=>GND, b(485)=>GND, b(484)=>GND, 
      b(483)=>GND, b(482)=>GND, b(481)=>GND, b(480)=>GND, b(479)=>GND, 
      b(478)=>GND, b(477)=>GND, b(476)=>GND, b(475)=>GND, b(474)=>GND, 
      b(473)=>GND, b(472)=>GND, b(471)=>GND, b(470)=>GND, b(469)=>GND, 
      b(468)=>GND, b(467)=>GND, b(466)=>GND, b(465)=>GND, b(464)=>GND, 
      b(463)=>GND, b(462)=>GND, b(461)=>GND, b(460)=>GND, b(459)=>GND, 
      b(458)=>GND, b(457)=>GND, b(456)=>GND, b(455)=>GND, b(454)=>GND, 
      b(453)=>GND, b(452)=>GND, b(451)=>GND, b(450)=>GND, b(449)=>GND, 
      b(448)=>GND, b(447)=>GND, b(446)=>GND, b(445)=>GND, b(444)=>GND, 
      b(443)=>GND, b(442)=>GND, b(441)=>GND, b(440)=>GND, b(439)=>GND, 
      b(438)=>GND, b(437)=>GND, b(436)=>GND, b(435)=>GND, b(434)=>GND, 
      b(433)=>GND, b(432)=>GND, b(431)=>GND, b(430)=>GND, b(429)=>GND, 
      b(428)=>GND, b(427)=>GND, b(426)=>GND, b(425)=>GND, b(424)=>GND, 
      b(423)=>GND, b(422)=>GND, b(421)=>GND, b(420)=>GND, b(419)=>GND, 
      b(418)=>GND, b(417)=>GND, b(416)=>GND, b(415)=>GND, b(414)=>GND, 
      b(413)=>GND, b(412)=>GND, b(411)=>GND, b(410)=>GND, b(409)=>GND, 
      b(408)=>GND, b(407)=>GND, b(406)=>GND, b(405)=>GND, b(404)=>GND, 
      b(403)=>GND, b(402)=>GND, b(401)=>GND, b(400)=>GND, b(399)=>GND, 
      b(398)=>GND, b(397)=>GND, b(396)=>GND, b(395)=>GND, b(394)=>GND, 
      b(393)=>GND, b(392)=>GND, b(391)=>GND, b(390)=>GND, b(389)=>GND, 
      b(388)=>GND, b(387)=>GND, b(386)=>GND, b(385)=>GND, b(384)=>GND, 
      b(383)=>GND, b(382)=>GND, b(381)=>GND, b(380)=>GND, b(379)=>GND, 
      b(378)=>GND, b(377)=>GND, b(376)=>GND, b(375)=>GND, b(374)=>GND, 
      b(373)=>GND, b(372)=>GND, b(371)=>GND, b(370)=>GND, b(369)=>GND, 
      b(368)=>GND, b(367)=>GND, b(366)=>GND, b(365)=>GND, b(364)=>GND, 
      b(363)=>GND, b(362)=>GND, b(361)=>GND, b(360)=>GND, b(359)=>GND, 
      b(358)=>GND, b(357)=>GND, b(356)=>GND, b(355)=>GND, b(354)=>GND, 
      b(353)=>GND, b(352)=>GND, b(351)=>GND, b(350)=>GND, b(349)=>GND, 
      b(348)=>GND, b(347)=>GND, b(346)=>GND, b(345)=>GND, b(344)=>GND, 
      b(343)=>GND, b(342)=>GND, b(341)=>GND, b(340)=>GND, b(339)=>GND, 
      b(338)=>GND, b(337)=>GND, b(336)=>GND, b(335)=>GND, b(334)=>GND, 
      b(333)=>GND, b(332)=>GND, b(331)=>GND, b(330)=>GND, b(329)=>GND, 
      b(328)=>GND, b(327)=>GND, b(326)=>GND, b(325)=>GND, b(324)=>GND, 
      b(323)=>GND, b(322)=>GND, b(321)=>GND, b(320)=>GND, b(319)=>GND, 
      b(318)=>GND, b(317)=>GND, b(316)=>GND, b(315)=>GND, b(314)=>GND, 
      b(313)=>GND, b(312)=>GND, b(311)=>GND, b(310)=>GND, b(309)=>GND, 
      b(308)=>GND, b(307)=>GND, b(306)=>GND, b(305)=>GND, b(304)=>GND, 
      b(303)=>GND, b(302)=>GND, b(301)=>GND, b(300)=>GND, b(299)=>GND, 
      b(298)=>GND, b(297)=>GND, b(296)=>GND, b(295)=>GND, b(294)=>GND, 
      b(293)=>GND, b(292)=>GND, b(291)=>GND, b(290)=>GND, b(289)=>GND, 
      b(288)=>GND, b(287)=>GND, b(286)=>GND, b(285)=>GND, b(284)=>GND, 
      b(283)=>GND, b(282)=>GND, b(281)=>GND, b(280)=>GND, b(279)=>GND, 
      b(278)=>GND, b(277)=>GND, b(276)=>GND, b(275)=>GND, b(274)=>GND, 
      b(273)=>GND, b(272)=>GND, b(271)=>GND, b(270)=>GND, b(269)=>GND, 
      b(268)=>GND, b(267)=>GND, b(266)=>GND, b(265)=>GND, b(264)=>GND, 
      b(263)=>GND, b(262)=>GND, b(261)=>GND, b(260)=>GND, b(259)=>GND, 
      b(258)=>GND, b(257)=>GND, b(256)=>GND, b(255)=>GND, b(254)=>GND, 
      b(253)=>GND, b(252)=>GND, b(251)=>GND, b(250)=>GND, b(249)=>GND, 
      b(248)=>GND, b(247)=>GND, b(246)=>GND, b(245)=>GND, b(244)=>GND, 
      b(243)=>GND, b(242)=>GND, b(241)=>GND, b(240)=>GND, b(239)=>GND, 
      b(238)=>GND, b(237)=>GND, b(236)=>GND, b(235)=>GND, b(234)=>GND, 
      b(233)=>GND, b(232)=>GND, b(231)=>GND, b(230)=>GND, b(229)=>GND, 
      b(228)=>GND, b(227)=>GND, b(226)=>GND, b(225)=>GND, b(224)=>GND, 
      b(223)=>GND, b(222)=>GND, b(221)=>GND, b(220)=>GND, b(219)=>GND, 
      b(218)=>GND, b(217)=>GND, b(216)=>GND, b(215)=>GND, b(214)=>GND, 
      b(213)=>GND, b(212)=>GND, b(211)=>GND, b(210)=>GND, b(209)=>GND, 
      b(208)=>GND, b(207)=>GND, b(206)=>GND, b(205)=>GND, b(204)=>GND, 
      b(203)=>GND, b(202)=>GND, b(201)=>GND, b(200)=>GND, b(199)=>GND, 
      b(198)=>GND, b(197)=>GND, b(196)=>GND, b(195)=>GND, b(194)=>GND, 
      b(193)=>GND, b(192)=>GND, b(191)=>GND, b(190)=>GND, b(189)=>GND, 
      b(188)=>GND, b(187)=>GND, b(186)=>GND, b(185)=>GND, b(184)=>GND, 
      b(183)=>GND, b(182)=>GND, b(181)=>GND, b(180)=>GND, b(179)=>GND, 
      b(178)=>GND, b(177)=>GND, b(176)=>GND, b(175)=>GND, b(174)=>GND, 
      b(173)=>GND, b(172)=>GND, b(171)=>GND, b(170)=>GND, b(169)=>GND, 
      b(168)=>GND, b(167)=>GND, b(166)=>GND, b(165)=>GND, b(164)=>GND, 
      b(163)=>GND, b(162)=>GND, b(161)=>GND, b(160)=>GND, b(159)=>GND, 
      b(158)=>GND, b(157)=>GND, b(156)=>GND, b(155)=>GND, b(154)=>GND, 
      b(153)=>GND, b(152)=>GND, b(151)=>GND, b(150)=>GND, b(149)=>GND, 
      b(148)=>GND, b(147)=>GND, b(146)=>GND, b(145)=>GND, b(144)=>GND, 
      b(143)=>GND, b(142)=>GND, b(141)=>GND, b(140)=>GND, b(139)=>GND, 
      b(138)=>GND, b(137)=>GND, b(136)=>GND, b(135)=>GND, b(134)=>GND, 
      b(133)=>GND, b(132)=>GND, b(131)=>GND, b(130)=>GND, b(129)=>GND, 
      b(128)=>GND, b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, 
      b(123)=>GND, b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, 
      b(118)=>GND, b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, 
      b(113)=>GND, b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, 
      b(108)=>GND, b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, 
      b(103)=>GND, b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)
      =>GND, b(97)=>GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, 
      b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, 
      b(86)=>GND, b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, 
      b(80)=>GND, b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, 
      b(74)=>GND, b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, 
      b(68)=>GND, b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, 
      b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, 
      b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, 
      b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, 
      b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, 
      b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, 
      b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, 
      b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, 
      b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>
      address(9), b(8)=>address(8), b(7)=>address(7), b(6)=>address(6), b(5)
      =>address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), 
      b(1)=>address(1), b(0)=>address(0), d=>q(2));
   modgen_mux_19 : mux_1024u_1024u port map ( a(1023)=>GND, a(1022)=>GND, 
      a(1021)=>GND, a(1020)=>PWR, a(1019)=>PWR, a(1018)=>GND, a(1017)=>GND, 
      a(1016)=>PWR, a(1015)=>GND, a(1014)=>PWR, a(1013)=>PWR, a(1012)=>GND, 
      a(1011)=>PWR, a(1010)=>PWR, a(1009)=>GND, a(1008)=>PWR, a(1007)=>GND, 
      a(1006)=>GND, a(1005)=>GND, a(1004)=>GND, a(1003)=>PWR, a(1002)=>GND, 
      a(1001)=>GND, a(1000)=>PWR, a(999)=>GND, a(998)=>PWR, a(997)=>PWR, 
      a(996)=>GND, a(995)=>PWR, a(994)=>GND, a(993)=>GND, a(992)=>GND, 
      a(991)=>GND, a(990)=>GND, a(989)=>PWR, a(988)=>GND, a(987)=>GND, 
      a(986)=>GND, a(985)=>PWR, a(984)=>PWR, a(983)=>PWR, a(982)=>GND, 
      a(981)=>PWR, a(980)=>PWR, a(979)=>PWR, a(978)=>PWR, a(977)=>GND, 
      a(976)=>GND, a(975)=>PWR, a(974)=>PWR, a(973)=>GND, a(972)=>GND, 
      a(971)=>PWR, a(970)=>PWR, a(969)=>PWR, a(968)=>PWR, a(967)=>PWR, 
      a(966)=>PWR, a(965)=>GND, a(964)=>GND, a(963)=>PWR, a(962)=>PWR, 
      a(961)=>PWR, a(960)=>PWR, a(959)=>GND, a(958)=>PWR, a(957)=>PWR, 
      a(956)=>GND, a(955)=>GND, a(954)=>PWR, a(953)=>PWR, a(952)=>GND, 
      a(951)=>PWR, a(950)=>GND, a(949)=>PWR, a(948)=>GND, a(947)=>GND, 
      a(946)=>GND, a(945)=>PWR, a(944)=>GND, a(943)=>GND, a(942)=>PWR, 
      a(941)=>GND, a(940)=>GND, a(939)=>PWR, a(938)=>PWR, a(937)=>PWR, 
      a(936)=>PWR, a(935)=>GND, a(934)=>GND, a(933)=>GND, a(932)=>PWR, 
      a(931)=>GND, a(930)=>GND, a(929)=>GND, a(928)=>PWR, a(927)=>PWR, 
      a(926)=>PWR, a(925)=>PWR, a(924)=>GND, a(923)=>GND, a(922)=>GND, 
      a(921)=>GND, a(920)=>PWR, a(919)=>PWR, a(918)=>GND, a(917)=>PWR, 
      a(916)=>PWR, a(915)=>PWR, a(914)=>GND, a(913)=>GND, a(912)=>GND, 
      a(911)=>PWR, a(910)=>GND, a(909)=>PWR, a(908)=>GND, a(907)=>GND, 
      a(906)=>GND, a(905)=>PWR, a(904)=>GND, a(903)=>GND, a(902)=>PWR, 
      a(901)=>GND, a(900)=>GND, a(899)=>PWR, a(898)=>PWR, a(897)=>GND, 
      a(896)=>GND, a(895)=>PWR, a(894)=>GND, a(893)=>PWR, a(892)=>GND, 
      a(891)=>GND, a(890)=>GND, a(889)=>GND, a(888)=>PWR, a(887)=>GND, 
      a(886)=>PWR, a(885)=>PWR, a(884)=>PWR, a(883)=>PWR, a(882)=>GND, 
      a(881)=>PWR, a(880)=>PWR, a(879)=>PWR, a(878)=>GND, a(877)=>PWR, 
      a(876)=>PWR, a(875)=>GND, a(874)=>PWR, a(873)=>GND, a(872)=>PWR, 
      a(871)=>GND, a(870)=>PWR, a(869)=>PWR, a(868)=>PWR, a(867)=>GND, 
      a(866)=>PWR, a(865)=>PWR, a(864)=>PWR, a(863)=>PWR, a(862)=>GND, 
      a(861)=>PWR, a(860)=>GND, a(859)=>PWR, a(858)=>PWR, a(857)=>GND, 
      a(856)=>GND, a(855)=>PWR, a(854)=>PWR, a(853)=>GND, a(852)=>PWR, 
      a(851)=>PWR, a(850)=>GND, a(849)=>PWR, a(848)=>GND, a(847)=>GND, 
      a(846)=>PWR, a(845)=>PWR, a(844)=>GND, a(843)=>GND, a(842)=>PWR, 
      a(841)=>PWR, a(840)=>PWR, a(839)=>GND, a(838)=>PWR, a(837)=>PWR, 
      a(836)=>GND, a(835)=>GND, a(834)=>GND, a(833)=>GND, a(832)=>GND, 
      a(831)=>GND, a(830)=>GND, a(829)=>GND, a(828)=>GND, a(827)=>GND, 
      a(826)=>PWR, a(825)=>PWR, a(824)=>PWR, a(823)=>GND, a(822)=>GND, 
      a(821)=>PWR, a(820)=>GND, a(819)=>PWR, a(818)=>GND, a(817)=>PWR, 
      a(816)=>GND, a(815)=>PWR, a(814)=>PWR, a(813)=>PWR, a(812)=>PWR, 
      a(811)=>PWR, a(810)=>PWR, a(809)=>PWR, a(808)=>PWR, a(807)=>GND, 
      a(806)=>GND, a(805)=>GND, a(804)=>PWR, a(803)=>GND, a(802)=>GND, 
      a(801)=>GND, a(800)=>PWR, a(799)=>PWR, a(798)=>GND, a(797)=>GND, 
      a(796)=>GND, a(795)=>GND, a(794)=>GND, a(793)=>PWR, a(792)=>PWR, 
      a(791)=>GND, a(790)=>GND, a(789)=>PWR, a(788)=>PWR, a(787)=>PWR, 
      a(786)=>GND, a(785)=>GND, a(784)=>GND, a(783)=>PWR, a(782)=>PWR, 
      a(781)=>PWR, a(780)=>GND, a(779)=>PWR, a(778)=>GND, a(777)=>PWR, 
      a(776)=>PWR, a(775)=>PWR, a(774)=>PWR, a(773)=>GND, a(772)=>GND, 
      a(771)=>PWR, a(770)=>PWR, a(769)=>PWR, a(768)=>GND, a(767)=>PWR, 
      a(766)=>GND, a(765)=>GND, a(764)=>PWR, a(763)=>GND, a(762)=>GND, 
      a(761)=>GND, a(760)=>GND, a(759)=>PWR, a(758)=>GND, a(757)=>PWR, 
      a(756)=>GND, a(755)=>PWR, a(754)=>GND, a(753)=>PWR, a(752)=>PWR, 
      a(751)=>GND, a(750)=>PWR, a(749)=>PWR, a(748)=>PWR, a(747)=>GND, 
      a(746)=>GND, a(745)=>PWR, a(744)=>PWR, a(743)=>GND, a(742)=>GND, 
      a(741)=>GND, a(740)=>GND, a(739)=>GND, a(738)=>PWR, a(737)=>GND, 
      a(736)=>GND, a(735)=>GND, a(734)=>PWR, a(733)=>PWR, a(732)=>GND, 
      a(731)=>GND, a(730)=>GND, a(729)=>GND, a(728)=>PWR, a(727)=>GND, 
      a(726)=>PWR, a(725)=>GND, a(724)=>GND, a(723)=>PWR, a(722)=>PWR, 
      a(721)=>GND, a(720)=>GND, a(719)=>PWR, a(718)=>PWR, a(717)=>GND, 
      a(716)=>GND, a(715)=>PWR, a(714)=>PWR, a(713)=>GND, a(712)=>PWR, 
      a(711)=>GND, a(710)=>GND, a(709)=>PWR, a(708)=>PWR, a(707)=>GND, 
      a(706)=>PWR, a(705)=>PWR, a(704)=>GND, a(703)=>PWR, a(702)=>GND, 
      a(701)=>PWR, a(700)=>PWR, a(699)=>GND, a(698)=>GND, a(697)=>PWR, 
      a(696)=>GND, a(695)=>PWR, a(694)=>GND, a(693)=>PWR, a(692)=>GND, 
      a(691)=>GND, a(690)=>PWR, a(689)=>PWR, a(688)=>GND, a(687)=>PWR, 
      a(686)=>GND, a(685)=>GND, a(684)=>PWR, a(683)=>PWR, a(682)=>PWR, 
      a(681)=>GND, a(680)=>PWR, a(679)=>GND, a(678)=>PWR, a(677)=>PWR, 
      a(676)=>PWR, a(675)=>PWR, a(674)=>PWR, a(673)=>PWR, a(672)=>PWR, 
      a(671)=>PWR, a(670)=>GND, a(669)=>GND, a(668)=>PWR, a(667)=>GND, 
      a(666)=>PWR, a(665)=>GND, a(664)=>PWR, a(663)=>GND, a(662)=>GND, 
      a(661)=>GND, a(660)=>PWR, a(659)=>PWR, a(658)=>PWR, a(657)=>PWR, 
      a(656)=>PWR, a(655)=>PWR, a(654)=>GND, a(653)=>PWR, a(652)=>PWR, 
      a(651)=>GND, a(650)=>PWR, a(649)=>PWR, a(648)=>PWR, a(647)=>PWR, 
      a(646)=>PWR, a(645)=>GND, a(644)=>GND, a(643)=>PWR, a(642)=>GND, 
      a(641)=>PWR, a(640)=>PWR, a(639)=>GND, a(638)=>GND, a(637)=>PWR, 
      a(636)=>PWR, a(635)=>GND, a(634)=>GND, a(633)=>PWR, a(632)=>PWR, 
      a(631)=>PWR, a(630)=>GND, a(629)=>GND, a(628)=>PWR, a(627)=>PWR, 
      a(626)=>GND, a(625)=>PWR, a(624)=>GND, a(623)=>GND, a(622)=>PWR, 
      a(621)=>PWR, a(620)=>PWR, a(619)=>PWR, a(618)=>PWR, a(617)=>GND, 
      a(616)=>PWR, a(615)=>GND, a(614)=>PWR, a(613)=>GND, a(612)=>GND, 
      a(611)=>PWR, a(610)=>GND, a(609)=>PWR, a(608)=>GND, a(607)=>GND, 
      a(606)=>GND, a(605)=>GND, a(604)=>PWR, a(603)=>PWR, a(602)=>GND, 
      a(601)=>PWR, a(600)=>PWR, a(599)=>GND, a(598)=>GND, a(597)=>PWR, 
      a(596)=>GND, a(595)=>GND, a(594)=>GND, a(593)=>PWR, a(592)=>GND, 
      a(591)=>GND, a(590)=>GND, a(589)=>GND, a(588)=>PWR, a(587)=>PWR, 
      a(586)=>GND, a(585)=>PWR, a(584)=>GND, a(583)=>PWR, a(582)=>PWR, 
      a(581)=>PWR, a(580)=>PWR, a(579)=>PWR, a(578)=>PWR, a(577)=>GND, 
      a(576)=>GND, a(575)=>PWR, a(574)=>PWR, a(573)=>PWR, a(572)=>GND, 
      a(571)=>PWR, a(570)=>PWR, a(569)=>GND, a(568)=>PWR, a(567)=>PWR, 
      a(566)=>PWR, a(565)=>GND, a(564)=>GND, a(563)=>GND, a(562)=>GND, 
      a(561)=>GND, a(560)=>GND, a(559)=>PWR, a(558)=>PWR, a(557)=>GND, 
      a(556)=>GND, a(555)=>PWR, a(554)=>GND, a(553)=>GND, a(552)=>PWR, 
      a(551)=>GND, a(550)=>PWR, a(549)=>PWR, a(548)=>GND, a(547)=>PWR, 
      a(546)=>PWR, a(545)=>PWR, a(544)=>GND, a(543)=>GND, a(542)=>GND, 
      a(541)=>GND, a(540)=>PWR, a(539)=>GND, a(538)=>PWR, a(537)=>GND, 
      a(536)=>GND, a(535)=>GND, a(534)=>GND, a(533)=>GND, a(532)=>PWR, 
      a(531)=>PWR, a(530)=>PWR, a(529)=>GND, a(528)=>GND, a(527)=>PWR, 
      a(526)=>GND, a(525)=>PWR, a(524)=>PWR, a(523)=>GND, a(522)=>GND, 
      a(521)=>PWR, a(520)=>GND, a(519)=>GND, a(518)=>PWR, a(517)=>PWR, 
      a(516)=>PWR, a(515)=>GND, a(514)=>GND, a(513)=>PWR, a(512)=>GND, 
      a(511)=>GND, a(510)=>PWR, a(509)=>PWR, a(508)=>GND, a(507)=>PWR, 
      a(506)=>GND, a(505)=>GND, a(504)=>PWR, a(503)=>GND, a(502)=>GND, 
      a(501)=>PWR, a(500)=>GND, a(499)=>PWR, a(498)=>GND, a(497)=>PWR, 
      a(496)=>PWR, a(495)=>GND, a(494)=>GND, a(493)=>GND, a(492)=>PWR, 
      a(491)=>GND, a(490)=>GND, a(489)=>PWR, a(488)=>PWR, a(487)=>GND, 
      a(486)=>GND, a(485)=>PWR, a(484)=>GND, a(483)=>GND, a(482)=>PWR, 
      a(481)=>PWR, a(480)=>PWR, a(479)=>GND, a(478)=>PWR, a(477)=>GND, 
      a(476)=>GND, a(475)=>PWR, a(474)=>PWR, a(473)=>PWR, a(472)=>PWR, 
      a(471)=>PWR, a(470)=>PWR, a(469)=>PWR, a(468)=>GND, a(467)=>GND, 
      a(466)=>GND, a(465)=>PWR, a(464)=>PWR, a(463)=>PWR, a(462)=>GND, 
      a(461)=>PWR, a(460)=>PWR, a(459)=>PWR, a(458)=>PWR, a(457)=>GND, 
      a(456)=>GND, a(455)=>PWR, a(454)=>GND, a(453)=>GND, a(452)=>GND, 
      a(451)=>GND, a(450)=>GND, a(449)=>PWR, a(448)=>GND, a(447)=>GND, 
      a(446)=>PWR, a(445)=>PWR, a(444)=>GND, a(443)=>GND, a(442)=>GND, 
      a(441)=>PWR, a(440)=>GND, a(439)=>GND, a(438)=>GND, a(437)=>PWR, 
      a(436)=>PWR, a(435)=>GND, a(434)=>PWR, a(433)=>GND, a(432)=>PWR, 
      a(431)=>PWR, a(430)=>PWR, a(429)=>GND, a(428)=>PWR, a(427)=>PWR, 
      a(426)=>GND, a(425)=>GND, a(424)=>GND, a(423)=>GND, a(422)=>PWR, 
      a(421)=>GND, a(420)=>PWR, a(419)=>GND, a(418)=>PWR, a(417)=>GND, 
      a(416)=>GND, a(415)=>PWR, a(414)=>PWR, a(413)=>GND, a(412)=>PWR, 
      a(411)=>GND, a(410)=>PWR, a(409)=>PWR, a(408)=>GND, a(407)=>PWR, 
      a(406)=>GND, a(405)=>PWR, a(404)=>GND, a(403)=>PWR, a(402)=>GND, 
      a(401)=>GND, a(400)=>GND, a(399)=>PWR, a(398)=>GND, a(397)=>PWR, 
      a(396)=>PWR, a(395)=>PWR, a(394)=>PWR, a(393)=>GND, a(392)=>PWR, 
      a(391)=>GND, a(390)=>GND, a(389)=>PWR, a(388)=>GND, a(387)=>PWR, 
      a(386)=>GND, a(385)=>PWR, a(384)=>GND, a(383)=>PWR, a(382)=>GND, 
      a(381)=>PWR, a(380)=>GND, a(379)=>GND, a(378)=>GND, a(377)=>GND, 
      a(376)=>PWR, a(375)=>GND, a(374)=>PWR, a(373)=>PWR, a(372)=>PWR, 
      a(371)=>PWR, a(370)=>PWR, a(369)=>PWR, a(368)=>GND, a(367)=>GND, 
      a(366)=>PWR, a(365)=>GND, a(364)=>GND, a(363)=>GND, a(362)=>GND, 
      a(361)=>GND, a(360)=>PWR, a(359)=>GND, a(358)=>GND, a(357)=>GND, 
      a(356)=>PWR, a(355)=>PWR, a(354)=>PWR, a(353)=>GND, a(352)=>PWR, 
      a(351)=>PWR, a(350)=>GND, a(349)=>PWR, a(348)=>GND, a(347)=>PWR, 
      a(346)=>PWR, a(345)=>PWR, a(344)=>PWR, a(343)=>GND, a(342)=>GND, 
      a(341)=>PWR, a(340)=>PWR, a(339)=>PWR, a(338)=>PWR, a(337)=>PWR, 
      a(336)=>GND, a(335)=>PWR, a(334)=>PWR, a(333)=>GND, a(332)=>PWR, 
      a(331)=>PWR, a(330)=>GND, a(329)=>PWR, a(328)=>GND, a(327)=>GND, 
      a(326)=>PWR, a(325)=>GND, a(324)=>GND, a(323)=>GND, a(322)=>PWR, 
      a(321)=>PWR, a(320)=>PWR, a(319)=>PWR, a(318)=>PWR, a(317)=>GND, 
      a(316)=>GND, a(315)=>GND, a(314)=>PWR, a(313)=>GND, a(312)=>PWR, 
      a(311)=>PWR, a(310)=>GND, a(309)=>GND, a(308)=>GND, a(307)=>GND, 
      a(306)=>PWR, a(305)=>PWR, a(304)=>GND, a(303)=>GND, a(302)=>GND, 
      a(301)=>GND, a(300)=>PWR, a(299)=>GND, a(298)=>GND, a(297)=>PWR, 
      a(296)=>GND, a(295)=>PWR, a(294)=>PWR, a(293)=>PWR, a(292)=>GND, 
      a(291)=>GND, a(290)=>GND, a(289)=>PWR, a(288)=>PWR, a(287)=>PWR, 
      a(286)=>GND, a(285)=>GND, a(284)=>PWR, a(283)=>GND, a(282)=>GND, 
      a(281)=>GND, a(280)=>GND, a(279)=>GND, a(278)=>GND, a(277)=>PWR, 
      a(276)=>PWR, a(275)=>GND, a(274)=>GND, a(273)=>PWR, a(272)=>PWR, 
      a(271)=>PWR, a(270)=>GND, a(269)=>GND, a(268)=>GND, a(267)=>PWR, 
      a(266)=>PWR, a(265)=>GND, a(264)=>PWR, a(263)=>PWR, a(262)=>PWR, 
      a(261)=>PWR, a(260)=>PWR, a(259)=>PWR, a(258)=>PWR, a(257)=>GND, 
      a(256)=>GND, a(255)=>PWR, a(254)=>PWR, a(253)=>PWR, a(252)=>GND, 
      a(251)=>PWR, a(250)=>PWR, a(249)=>PWR, a(248)=>PWR, a(247)=>PWR, 
      a(246)=>PWR, a(245)=>GND, a(244)=>PWR, a(243)=>PWR, a(242)=>PWR, 
      a(241)=>GND, a(240)=>PWR, a(239)=>PWR, a(238)=>PWR, a(237)=>GND, 
      a(236)=>GND, a(235)=>PWR, a(234)=>GND, a(233)=>GND, a(232)=>GND, 
      a(231)=>GND, a(230)=>GND, a(229)=>GND, a(228)=>GND, a(227)=>GND, 
      a(226)=>GND, a(225)=>PWR, a(224)=>GND, a(223)=>PWR, a(222)=>GND, 
      a(221)=>PWR, a(220)=>GND, a(219)=>PWR, a(218)=>GND, a(217)=>PWR, 
      a(216)=>GND, a(215)=>PWR, a(214)=>PWR, a(213)=>PWR, a(212)=>PWR, 
      a(211)=>PWR, a(210)=>PWR, a(209)=>PWR, a(208)=>PWR, a(207)=>GND, 
      a(206)=>PWR, a(205)=>PWR, a(204)=>GND, a(203)=>PWR, a(202)=>GND, 
      a(201)=>GND, a(200)=>PWR, a(199)=>GND, a(198)=>PWR, a(197)=>PWR, 
      a(196)=>PWR, a(195)=>PWR, a(194)=>PWR, a(193)=>PWR, a(192)=>GND, 
      a(191)=>GND, a(190)=>GND, a(189)=>GND, a(188)=>GND, a(187)=>GND, 
      a(186)=>PWR, a(185)=>GND, a(184)=>PWR, a(183)=>PWR, a(182)=>PWR, 
      a(181)=>GND, a(180)=>PWR, a(179)=>PWR, a(178)=>GND, a(177)=>GND, 
      a(176)=>GND, a(175)=>GND, a(174)=>GND, a(173)=>PWR, a(172)=>GND, 
      a(171)=>PWR, a(170)=>PWR, a(169)=>PWR, a(168)=>PWR, a(167)=>GND, 
      a(166)=>GND, a(165)=>GND, a(164)=>GND, a(163)=>GND, a(162)=>GND, 
      a(161)=>PWR, a(160)=>GND, a(159)=>GND, a(158)=>GND, a(157)=>GND, 
      a(156)=>PWR, a(155)=>GND, a(154)=>GND, a(153)=>PWR, a(152)=>PWR, 
      a(151)=>GND, a(150)=>PWR, a(149)=>GND, a(148)=>GND, a(147)=>GND, 
      a(146)=>PWR, a(145)=>PWR, a(144)=>PWR, a(143)=>PWR, a(142)=>GND, 
      a(141)=>GND, a(140)=>GND, a(139)=>GND, a(138)=>GND, a(137)=>PWR, 
      a(136)=>GND, a(135)=>GND, a(134)=>PWR, a(133)=>PWR, a(132)=>PWR, 
      a(131)=>PWR, a(130)=>PWR, a(129)=>PWR, a(128)=>GND, a(127)=>GND, 
      a(126)=>PWR, a(125)=>PWR, a(124)=>GND, a(123)=>GND, a(122)=>GND, 
      a(121)=>GND, a(120)=>PWR, a(119)=>PWR, a(118)=>PWR, a(117)=>PWR, 
      a(116)=>PWR, a(115)=>GND, a(114)=>PWR, a(113)=>PWR, a(112)=>PWR, 
      a(111)=>GND, a(110)=>PWR, a(109)=>GND, a(108)=>PWR, a(107)=>PWR, 
      a(106)=>GND, a(105)=>PWR, a(104)=>GND, a(103)=>GND, a(102)=>GND, 
      a(101)=>GND, a(100)=>PWR, a(99)=>PWR, a(98)=>PWR, a(97)=>PWR, a(96)=>
      GND, a(95)=>PWR, a(94)=>GND, a(93)=>PWR, a(92)=>GND, a(91)=>GND, a(90)
      =>PWR, a(89)=>PWR, a(88)=>PWR, a(87)=>GND, a(86)=>GND, a(85)=>PWR, 
      a(84)=>PWR, a(83)=>GND, a(82)=>GND, a(81)=>GND, a(80)=>PWR, a(79)=>GND, 
      a(78)=>PWR, a(77)=>PWR, a(76)=>GND, a(75)=>GND, a(74)=>GND, a(73)=>GND, 
      a(72)=>PWR, a(71)=>PWR, a(70)=>PWR, a(69)=>GND, a(68)=>PWR, a(67)=>GND, 
      a(66)=>PWR, a(65)=>GND, a(64)=>PWR, a(63)=>GND, a(62)=>PWR, a(61)=>PWR, 
      a(60)=>GND, a(59)=>PWR, a(58)=>PWR, a(57)=>GND, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>PWR, a(50)=>PWR, a(49)=>PWR, 
      a(48)=>GND, a(47)=>PWR, a(46)=>PWR, a(45)=>PWR, a(44)=>PWR, a(43)=>GND, 
      a(42)=>PWR, a(41)=>PWR, a(40)=>GND, a(39)=>PWR, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>PWR, a(26)=>GND, a(25)=>PWR, 
      a(24)=>PWR, a(23)=>PWR, a(22)=>GND, a(21)=>PWR, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>PWR, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>PWR, a(11)=>PWR, a(10)=>GND, a(9)=>PWR, a(8)=>PWR, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>GND, a(1)=>PWR, a(0)
      =>PWR, b(1023)=>GND, b(1022)=>GND, b(1021)=>GND, b(1020)=>GND, b(1019)
      =>GND, b(1018)=>GND, b(1017)=>GND, b(1016)=>GND, b(1015)=>GND, b(1014)
      =>GND, b(1013)=>GND, b(1012)=>GND, b(1011)=>GND, b(1010)=>GND, b(1009)
      =>GND, b(1008)=>GND, b(1007)=>GND, b(1006)=>GND, b(1005)=>GND, b(1004)
      =>GND, b(1003)=>GND, b(1002)=>GND, b(1001)=>GND, b(1000)=>GND, b(999)
      =>GND, b(998)=>GND, b(997)=>GND, b(996)=>GND, b(995)=>GND, b(994)=>GND, 
      b(993)=>GND, b(992)=>GND, b(991)=>GND, b(990)=>GND, b(989)=>GND, 
      b(988)=>GND, b(987)=>GND, b(986)=>GND, b(985)=>GND, b(984)=>GND, 
      b(983)=>GND, b(982)=>GND, b(981)=>GND, b(980)=>GND, b(979)=>GND, 
      b(978)=>GND, b(977)=>GND, b(976)=>GND, b(975)=>GND, b(974)=>GND, 
      b(973)=>GND, b(972)=>GND, b(971)=>GND, b(970)=>GND, b(969)=>GND, 
      b(968)=>GND, b(967)=>GND, b(966)=>GND, b(965)=>GND, b(964)=>GND, 
      b(963)=>GND, b(962)=>GND, b(961)=>GND, b(960)=>GND, b(959)=>GND, 
      b(958)=>GND, b(957)=>GND, b(956)=>GND, b(955)=>GND, b(954)=>GND, 
      b(953)=>GND, b(952)=>GND, b(951)=>GND, b(950)=>GND, b(949)=>GND, 
      b(948)=>GND, b(947)=>GND, b(946)=>GND, b(945)=>GND, b(944)=>GND, 
      b(943)=>GND, b(942)=>GND, b(941)=>GND, b(940)=>GND, b(939)=>GND, 
      b(938)=>GND, b(937)=>GND, b(936)=>GND, b(935)=>GND, b(934)=>GND, 
      b(933)=>GND, b(932)=>GND, b(931)=>GND, b(930)=>GND, b(929)=>GND, 
      b(928)=>GND, b(927)=>GND, b(926)=>GND, b(925)=>GND, b(924)=>GND, 
      b(923)=>GND, b(922)=>GND, b(921)=>GND, b(920)=>GND, b(919)=>GND, 
      b(918)=>GND, b(917)=>GND, b(916)=>GND, b(915)=>GND, b(914)=>GND, 
      b(913)=>GND, b(912)=>GND, b(911)=>GND, b(910)=>GND, b(909)=>GND, 
      b(908)=>GND, b(907)=>GND, b(906)=>GND, b(905)=>GND, b(904)=>GND, 
      b(903)=>GND, b(902)=>GND, b(901)=>GND, b(900)=>GND, b(899)=>GND, 
      b(898)=>GND, b(897)=>GND, b(896)=>GND, b(895)=>GND, b(894)=>GND, 
      b(893)=>GND, b(892)=>GND, b(891)=>GND, b(890)=>GND, b(889)=>GND, 
      b(888)=>GND, b(887)=>GND, b(886)=>GND, b(885)=>GND, b(884)=>GND, 
      b(883)=>GND, b(882)=>GND, b(881)=>GND, b(880)=>GND, b(879)=>GND, 
      b(878)=>GND, b(877)=>GND, b(876)=>GND, b(875)=>GND, b(874)=>GND, 
      b(873)=>GND, b(872)=>GND, b(871)=>GND, b(870)=>GND, b(869)=>GND, 
      b(868)=>GND, b(867)=>GND, b(866)=>GND, b(865)=>GND, b(864)=>GND, 
      b(863)=>GND, b(862)=>GND, b(861)=>GND, b(860)=>GND, b(859)=>GND, 
      b(858)=>GND, b(857)=>GND, b(856)=>GND, b(855)=>GND, b(854)=>GND, 
      b(853)=>GND, b(852)=>GND, b(851)=>GND, b(850)=>GND, b(849)=>GND, 
      b(848)=>GND, b(847)=>GND, b(846)=>GND, b(845)=>GND, b(844)=>GND, 
      b(843)=>GND, b(842)=>GND, b(841)=>GND, b(840)=>GND, b(839)=>GND, 
      b(838)=>GND, b(837)=>GND, b(836)=>GND, b(835)=>GND, b(834)=>GND, 
      b(833)=>GND, b(832)=>GND, b(831)=>GND, b(830)=>GND, b(829)=>GND, 
      b(828)=>GND, b(827)=>GND, b(826)=>GND, b(825)=>GND, b(824)=>GND, 
      b(823)=>GND, b(822)=>GND, b(821)=>GND, b(820)=>GND, b(819)=>GND, 
      b(818)=>GND, b(817)=>GND, b(816)=>GND, b(815)=>GND, b(814)=>GND, 
      b(813)=>GND, b(812)=>GND, b(811)=>GND, b(810)=>GND, b(809)=>GND, 
      b(808)=>GND, b(807)=>GND, b(806)=>GND, b(805)=>GND, b(804)=>GND, 
      b(803)=>GND, b(802)=>GND, b(801)=>GND, b(800)=>GND, b(799)=>GND, 
      b(798)=>GND, b(797)=>GND, b(796)=>GND, b(795)=>GND, b(794)=>GND, 
      b(793)=>GND, b(792)=>GND, b(791)=>GND, b(790)=>GND, b(789)=>GND, 
      b(788)=>GND, b(787)=>GND, b(786)=>GND, b(785)=>GND, b(784)=>GND, 
      b(783)=>GND, b(782)=>GND, b(781)=>GND, b(780)=>GND, b(779)=>GND, 
      b(778)=>GND, b(777)=>GND, b(776)=>GND, b(775)=>GND, b(774)=>GND, 
      b(773)=>GND, b(772)=>GND, b(771)=>GND, b(770)=>GND, b(769)=>GND, 
      b(768)=>GND, b(767)=>GND, b(766)=>GND, b(765)=>GND, b(764)=>GND, 
      b(763)=>GND, b(762)=>GND, b(761)=>GND, b(760)=>GND, b(759)=>GND, 
      b(758)=>GND, b(757)=>GND, b(756)=>GND, b(755)=>GND, b(754)=>GND, 
      b(753)=>GND, b(752)=>GND, b(751)=>GND, b(750)=>GND, b(749)=>GND, 
      b(748)=>GND, b(747)=>GND, b(746)=>GND, b(745)=>GND, b(744)=>GND, 
      b(743)=>GND, b(742)=>GND, b(741)=>GND, b(740)=>GND, b(739)=>GND, 
      b(738)=>GND, b(737)=>GND, b(736)=>GND, b(735)=>GND, b(734)=>GND, 
      b(733)=>GND, b(732)=>GND, b(731)=>GND, b(730)=>GND, b(729)=>GND, 
      b(728)=>GND, b(727)=>GND, b(726)=>GND, b(725)=>GND, b(724)=>GND, 
      b(723)=>GND, b(722)=>GND, b(721)=>GND, b(720)=>GND, b(719)=>GND, 
      b(718)=>GND, b(717)=>GND, b(716)=>GND, b(715)=>GND, b(714)=>GND, 
      b(713)=>GND, b(712)=>GND, b(711)=>GND, b(710)=>GND, b(709)=>GND, 
      b(708)=>GND, b(707)=>GND, b(706)=>GND, b(705)=>GND, b(704)=>GND, 
      b(703)=>GND, b(702)=>GND, b(701)=>GND, b(700)=>GND, b(699)=>GND, 
      b(698)=>GND, b(697)=>GND, b(696)=>GND, b(695)=>GND, b(694)=>GND, 
      b(693)=>GND, b(692)=>GND, b(691)=>GND, b(690)=>GND, b(689)=>GND, 
      b(688)=>GND, b(687)=>GND, b(686)=>GND, b(685)=>GND, b(684)=>GND, 
      b(683)=>GND, b(682)=>GND, b(681)=>GND, b(680)=>GND, b(679)=>GND, 
      b(678)=>GND, b(677)=>GND, b(676)=>GND, b(675)=>GND, b(674)=>GND, 
      b(673)=>GND, b(672)=>GND, b(671)=>GND, b(670)=>GND, b(669)=>GND, 
      b(668)=>GND, b(667)=>GND, b(666)=>GND, b(665)=>GND, b(664)=>GND, 
      b(663)=>GND, b(662)=>GND, b(661)=>GND, b(660)=>GND, b(659)=>GND, 
      b(658)=>GND, b(657)=>GND, b(656)=>GND, b(655)=>GND, b(654)=>GND, 
      b(653)=>GND, b(652)=>GND, b(651)=>GND, b(650)=>GND, b(649)=>GND, 
      b(648)=>GND, b(647)=>GND, b(646)=>GND, b(645)=>GND, b(644)=>GND, 
      b(643)=>GND, b(642)=>GND, b(641)=>GND, b(640)=>GND, b(639)=>GND, 
      b(638)=>GND, b(637)=>GND, b(636)=>GND, b(635)=>GND, b(634)=>GND, 
      b(633)=>GND, b(632)=>GND, b(631)=>GND, b(630)=>GND, b(629)=>GND, 
      b(628)=>GND, b(627)=>GND, b(626)=>GND, b(625)=>GND, b(624)=>GND, 
      b(623)=>GND, b(622)=>GND, b(621)=>GND, b(620)=>GND, b(619)=>GND, 
      b(618)=>GND, b(617)=>GND, b(616)=>GND, b(615)=>GND, b(614)=>GND, 
      b(613)=>GND, b(612)=>GND, b(611)=>GND, b(610)=>GND, b(609)=>GND, 
      b(608)=>GND, b(607)=>GND, b(606)=>GND, b(605)=>GND, b(604)=>GND, 
      b(603)=>GND, b(602)=>GND, b(601)=>GND, b(600)=>GND, b(599)=>GND, 
      b(598)=>GND, b(597)=>GND, b(596)=>GND, b(595)=>GND, b(594)=>GND, 
      b(593)=>GND, b(592)=>GND, b(591)=>GND, b(590)=>GND, b(589)=>GND, 
      b(588)=>GND, b(587)=>GND, b(586)=>GND, b(585)=>GND, b(584)=>GND, 
      b(583)=>GND, b(582)=>GND, b(581)=>GND, b(580)=>GND, b(579)=>GND, 
      b(578)=>GND, b(577)=>GND, b(576)=>GND, b(575)=>GND, b(574)=>GND, 
      b(573)=>GND, b(572)=>GND, b(571)=>GND, b(570)=>GND, b(569)=>GND, 
      b(568)=>GND, b(567)=>GND, b(566)=>GND, b(565)=>GND, b(564)=>GND, 
      b(563)=>GND, b(562)=>GND, b(561)=>GND, b(560)=>GND, b(559)=>GND, 
      b(558)=>GND, b(557)=>GND, b(556)=>GND, b(555)=>GND, b(554)=>GND, 
      b(553)=>GND, b(552)=>GND, b(551)=>GND, b(550)=>GND, b(549)=>GND, 
      b(548)=>GND, b(547)=>GND, b(546)=>GND, b(545)=>GND, b(544)=>GND, 
      b(543)=>GND, b(542)=>GND, b(541)=>GND, b(540)=>GND, b(539)=>GND, 
      b(538)=>GND, b(537)=>GND, b(536)=>GND, b(535)=>GND, b(534)=>GND, 
      b(533)=>GND, b(532)=>GND, b(531)=>GND, b(530)=>GND, b(529)=>GND, 
      b(528)=>GND, b(527)=>GND, b(526)=>GND, b(525)=>GND, b(524)=>GND, 
      b(523)=>GND, b(522)=>GND, b(521)=>GND, b(520)=>GND, b(519)=>GND, 
      b(518)=>GND, b(517)=>GND, b(516)=>GND, b(515)=>GND, b(514)=>GND, 
      b(513)=>GND, b(512)=>GND, b(511)=>GND, b(510)=>GND, b(509)=>GND, 
      b(508)=>GND, b(507)=>GND, b(506)=>GND, b(505)=>GND, b(504)=>GND, 
      b(503)=>GND, b(502)=>GND, b(501)=>GND, b(500)=>GND, b(499)=>GND, 
      b(498)=>GND, b(497)=>GND, b(496)=>GND, b(495)=>GND, b(494)=>GND, 
      b(493)=>GND, b(492)=>GND, b(491)=>GND, b(490)=>GND, b(489)=>GND, 
      b(488)=>GND, b(487)=>GND, b(486)=>GND, b(485)=>GND, b(484)=>GND, 
      b(483)=>GND, b(482)=>GND, b(481)=>GND, b(480)=>GND, b(479)=>GND, 
      b(478)=>GND, b(477)=>GND, b(476)=>GND, b(475)=>GND, b(474)=>GND, 
      b(473)=>GND, b(472)=>GND, b(471)=>GND, b(470)=>GND, b(469)=>GND, 
      b(468)=>GND, b(467)=>GND, b(466)=>GND, b(465)=>GND, b(464)=>GND, 
      b(463)=>GND, b(462)=>GND, b(461)=>GND, b(460)=>GND, b(459)=>GND, 
      b(458)=>GND, b(457)=>GND, b(456)=>GND, b(455)=>GND, b(454)=>GND, 
      b(453)=>GND, b(452)=>GND, b(451)=>GND, b(450)=>GND, b(449)=>GND, 
      b(448)=>GND, b(447)=>GND, b(446)=>GND, b(445)=>GND, b(444)=>GND, 
      b(443)=>GND, b(442)=>GND, b(441)=>GND, b(440)=>GND, b(439)=>GND, 
      b(438)=>GND, b(437)=>GND, b(436)=>GND, b(435)=>GND, b(434)=>GND, 
      b(433)=>GND, b(432)=>GND, b(431)=>GND, b(430)=>GND, b(429)=>GND, 
      b(428)=>GND, b(427)=>GND, b(426)=>GND, b(425)=>GND, b(424)=>GND, 
      b(423)=>GND, b(422)=>GND, b(421)=>GND, b(420)=>GND, b(419)=>GND, 
      b(418)=>GND, b(417)=>GND, b(416)=>GND, b(415)=>GND, b(414)=>GND, 
      b(413)=>GND, b(412)=>GND, b(411)=>GND, b(410)=>GND, b(409)=>GND, 
      b(408)=>GND, b(407)=>GND, b(406)=>GND, b(405)=>GND, b(404)=>GND, 
      b(403)=>GND, b(402)=>GND, b(401)=>GND, b(400)=>GND, b(399)=>GND, 
      b(398)=>GND, b(397)=>GND, b(396)=>GND, b(395)=>GND, b(394)=>GND, 
      b(393)=>GND, b(392)=>GND, b(391)=>GND, b(390)=>GND, b(389)=>GND, 
      b(388)=>GND, b(387)=>GND, b(386)=>GND, b(385)=>GND, b(384)=>GND, 
      b(383)=>GND, b(382)=>GND, b(381)=>GND, b(380)=>GND, b(379)=>GND, 
      b(378)=>GND, b(377)=>GND, b(376)=>GND, b(375)=>GND, b(374)=>GND, 
      b(373)=>GND, b(372)=>GND, b(371)=>GND, b(370)=>GND, b(369)=>GND, 
      b(368)=>GND, b(367)=>GND, b(366)=>GND, b(365)=>GND, b(364)=>GND, 
      b(363)=>GND, b(362)=>GND, b(361)=>GND, b(360)=>GND, b(359)=>GND, 
      b(358)=>GND, b(357)=>GND, b(356)=>GND, b(355)=>GND, b(354)=>GND, 
      b(353)=>GND, b(352)=>GND, b(351)=>GND, b(350)=>GND, b(349)=>GND, 
      b(348)=>GND, b(347)=>GND, b(346)=>GND, b(345)=>GND, b(344)=>GND, 
      b(343)=>GND, b(342)=>GND, b(341)=>GND, b(340)=>GND, b(339)=>GND, 
      b(338)=>GND, b(337)=>GND, b(336)=>GND, b(335)=>GND, b(334)=>GND, 
      b(333)=>GND, b(332)=>GND, b(331)=>GND, b(330)=>GND, b(329)=>GND, 
      b(328)=>GND, b(327)=>GND, b(326)=>GND, b(325)=>GND, b(324)=>GND, 
      b(323)=>GND, b(322)=>GND, b(321)=>GND, b(320)=>GND, b(319)=>GND, 
      b(318)=>GND, b(317)=>GND, b(316)=>GND, b(315)=>GND, b(314)=>GND, 
      b(313)=>GND, b(312)=>GND, b(311)=>GND, b(310)=>GND, b(309)=>GND, 
      b(308)=>GND, b(307)=>GND, b(306)=>GND, b(305)=>GND, b(304)=>GND, 
      b(303)=>GND, b(302)=>GND, b(301)=>GND, b(300)=>GND, b(299)=>GND, 
      b(298)=>GND, b(297)=>GND, b(296)=>GND, b(295)=>GND, b(294)=>GND, 
      b(293)=>GND, b(292)=>GND, b(291)=>GND, b(290)=>GND, b(289)=>GND, 
      b(288)=>GND, b(287)=>GND, b(286)=>GND, b(285)=>GND, b(284)=>GND, 
      b(283)=>GND, b(282)=>GND, b(281)=>GND, b(280)=>GND, b(279)=>GND, 
      b(278)=>GND, b(277)=>GND, b(276)=>GND, b(275)=>GND, b(274)=>GND, 
      b(273)=>GND, b(272)=>GND, b(271)=>GND, b(270)=>GND, b(269)=>GND, 
      b(268)=>GND, b(267)=>GND, b(266)=>GND, b(265)=>GND, b(264)=>GND, 
      b(263)=>GND, b(262)=>GND, b(261)=>GND, b(260)=>GND, b(259)=>GND, 
      b(258)=>GND, b(257)=>GND, b(256)=>GND, b(255)=>GND, b(254)=>GND, 
      b(253)=>GND, b(252)=>GND, b(251)=>GND, b(250)=>GND, b(249)=>GND, 
      b(248)=>GND, b(247)=>GND, b(246)=>GND, b(245)=>GND, b(244)=>GND, 
      b(243)=>GND, b(242)=>GND, b(241)=>GND, b(240)=>GND, b(239)=>GND, 
      b(238)=>GND, b(237)=>GND, b(236)=>GND, b(235)=>GND, b(234)=>GND, 
      b(233)=>GND, b(232)=>GND, b(231)=>GND, b(230)=>GND, b(229)=>GND, 
      b(228)=>GND, b(227)=>GND, b(226)=>GND, b(225)=>GND, b(224)=>GND, 
      b(223)=>GND, b(222)=>GND, b(221)=>GND, b(220)=>GND, b(219)=>GND, 
      b(218)=>GND, b(217)=>GND, b(216)=>GND, b(215)=>GND, b(214)=>GND, 
      b(213)=>GND, b(212)=>GND, b(211)=>GND, b(210)=>GND, b(209)=>GND, 
      b(208)=>GND, b(207)=>GND, b(206)=>GND, b(205)=>GND, b(204)=>GND, 
      b(203)=>GND, b(202)=>GND, b(201)=>GND, b(200)=>GND, b(199)=>GND, 
      b(198)=>GND, b(197)=>GND, b(196)=>GND, b(195)=>GND, b(194)=>GND, 
      b(193)=>GND, b(192)=>GND, b(191)=>GND, b(190)=>GND, b(189)=>GND, 
      b(188)=>GND, b(187)=>GND, b(186)=>GND, b(185)=>GND, b(184)=>GND, 
      b(183)=>GND, b(182)=>GND, b(181)=>GND, b(180)=>GND, b(179)=>GND, 
      b(178)=>GND, b(177)=>GND, b(176)=>GND, b(175)=>GND, b(174)=>GND, 
      b(173)=>GND, b(172)=>GND, b(171)=>GND, b(170)=>GND, b(169)=>GND, 
      b(168)=>GND, b(167)=>GND, b(166)=>GND, b(165)=>GND, b(164)=>GND, 
      b(163)=>GND, b(162)=>GND, b(161)=>GND, b(160)=>GND, b(159)=>GND, 
      b(158)=>GND, b(157)=>GND, b(156)=>GND, b(155)=>GND, b(154)=>GND, 
      b(153)=>GND, b(152)=>GND, b(151)=>GND, b(150)=>GND, b(149)=>GND, 
      b(148)=>GND, b(147)=>GND, b(146)=>GND, b(145)=>GND, b(144)=>GND, 
      b(143)=>GND, b(142)=>GND, b(141)=>GND, b(140)=>GND, b(139)=>GND, 
      b(138)=>GND, b(137)=>GND, b(136)=>GND, b(135)=>GND, b(134)=>GND, 
      b(133)=>GND, b(132)=>GND, b(131)=>GND, b(130)=>GND, b(129)=>GND, 
      b(128)=>GND, b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, 
      b(123)=>GND, b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, 
      b(118)=>GND, b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, 
      b(113)=>GND, b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, 
      b(108)=>GND, b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, 
      b(103)=>GND, b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)
      =>GND, b(97)=>GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, 
      b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, 
      b(86)=>GND, b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, 
      b(80)=>GND, b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, 
      b(74)=>GND, b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, 
      b(68)=>GND, b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, 
      b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, 
      b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, 
      b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, 
      b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, 
      b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, 
      b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, 
      b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, 
      b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>
      address(9), b(8)=>address(8), b(7)=>address(7), b(6)=>address(6), b(5)
      =>address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), 
      b(1)=>address(1), b(0)=>address(0), d=>q(1));
   modgen_mux_20 : mux_1024u_1024u port map ( a(1023)=>PWR, a(1022)=>GND, 
      a(1021)=>GND, a(1020)=>GND, a(1019)=>PWR, a(1018)=>GND, a(1017)=>PWR, 
      a(1016)=>GND, a(1015)=>PWR, a(1014)=>PWR, a(1013)=>GND, a(1012)=>GND, 
      a(1011)=>PWR, a(1010)=>PWR, a(1009)=>GND, a(1008)=>GND, a(1007)=>GND, 
      a(1006)=>GND, a(1005)=>GND, a(1004)=>GND, a(1003)=>GND, a(1002)=>PWR, 
      a(1001)=>PWR, a(1000)=>GND, a(999)=>PWR, a(998)=>PWR, a(997)=>PWR, 
      a(996)=>GND, a(995)=>PWR, a(994)=>GND, a(993)=>PWR, a(992)=>PWR, 
      a(991)=>PWR, a(990)=>PWR, a(989)=>GND, a(988)=>GND, a(987)=>GND, 
      a(986)=>GND, a(985)=>GND, a(984)=>GND, a(983)=>GND, a(982)=>GND, 
      a(981)=>GND, a(980)=>PWR, a(979)=>PWR, a(978)=>PWR, a(977)=>GND, 
      a(976)=>PWR, a(975)=>PWR, a(974)=>PWR, a(973)=>PWR, a(972)=>GND, 
      a(971)=>PWR, a(970)=>PWR, a(969)=>PWR, a(968)=>GND, a(967)=>PWR, 
      a(966)=>PWR, a(965)=>PWR, a(964)=>PWR, a(963)=>PWR, a(962)=>PWR, 
      a(961)=>PWR, a(960)=>PWR, a(959)=>GND, a(958)=>PWR, a(957)=>PWR, 
      a(956)=>PWR, a(955)=>GND, a(954)=>GND, a(953)=>GND, a(952)=>PWR, 
      a(951)=>PWR, a(950)=>GND, a(949)=>PWR, a(948)=>GND, a(947)=>PWR, 
      a(946)=>PWR, a(945)=>GND, a(944)=>PWR, a(943)=>PWR, a(942)=>GND, 
      a(941)=>GND, a(940)=>GND, a(939)=>PWR, a(938)=>GND, a(937)=>PWR, 
      a(936)=>GND, a(935)=>GND, a(934)=>PWR, a(933)=>PWR, a(932)=>GND, 
      a(931)=>GND, a(930)=>PWR, a(929)=>GND, a(928)=>GND, a(927)=>GND, 
      a(926)=>GND, a(925)=>PWR, a(924)=>GND, a(923)=>GND, a(922)=>GND, 
      a(921)=>GND, a(920)=>PWR, a(919)=>GND, a(918)=>GND, a(917)=>PWR, 
      a(916)=>PWR, a(915)=>GND, a(914)=>GND, a(913)=>PWR, a(912)=>PWR, 
      a(911)=>PWR, a(910)=>GND, a(909)=>GND, a(908)=>PWR, a(907)=>PWR, 
      a(906)=>GND, a(905)=>GND, a(904)=>GND, a(903)=>PWR, a(902)=>GND, 
      a(901)=>PWR, a(900)=>GND, a(899)=>PWR, a(898)=>PWR, a(897)=>PWR, 
      a(896)=>GND, a(895)=>GND, a(894)=>GND, a(893)=>PWR, a(892)=>GND, 
      a(891)=>PWR, a(890)=>GND, a(889)=>GND, a(888)=>PWR, a(887)=>PWR, 
      a(886)=>PWR, a(885)=>GND, a(884)=>PWR, a(883)=>PWR, a(882)=>GND, 
      a(881)=>PWR, a(880)=>PWR, a(879)=>GND, a(878)=>GND, a(877)=>GND, 
      a(876)=>PWR, a(875)=>GND, a(874)=>GND, a(873)=>PWR, a(872)=>GND, 
      a(871)=>GND, a(870)=>GND, a(869)=>PWR, a(868)=>GND, a(867)=>PWR, 
      a(866)=>GND, a(865)=>GND, a(864)=>PWR, a(863)=>GND, a(862)=>GND, 
      a(861)=>PWR, a(860)=>PWR, a(859)=>PWR, a(858)=>GND, a(857)=>PWR, 
      a(856)=>GND, a(855)=>PWR, a(854)=>PWR, a(853)=>PWR, a(852)=>PWR, 
      a(851)=>GND, a(850)=>GND, a(849)=>GND, a(848)=>GND, a(847)=>GND, 
      a(846)=>PWR, a(845)=>GND, a(844)=>GND, a(843)=>GND, a(842)=>GND, 
      a(841)=>GND, a(840)=>PWR, a(839)=>GND, a(838)=>PWR, a(837)=>GND, 
      a(836)=>PWR, a(835)=>PWR, a(834)=>PWR, a(833)=>GND, a(832)=>GND, 
      a(831)=>PWR, a(830)=>GND, a(829)=>GND, a(828)=>PWR, a(827)=>GND, 
      a(826)=>GND, a(825)=>GND, a(824)=>GND, a(823)=>GND, a(822)=>PWR, 
      a(821)=>PWR, a(820)=>PWR, a(819)=>GND, a(818)=>PWR, a(817)=>PWR, 
      a(816)=>GND, a(815)=>GND, a(814)=>GND, a(813)=>GND, a(812)=>GND, 
      a(811)=>GND, a(810)=>PWR, a(809)=>GND, a(808)=>PWR, a(807)=>PWR, 
      a(806)=>GND, a(805)=>GND, a(804)=>PWR, a(803)=>GND, a(802)=>PWR, 
      a(801)=>PWR, a(800)=>PWR, a(799)=>GND, a(798)=>GND, a(797)=>PWR, 
      a(796)=>PWR, a(795)=>GND, a(794)=>GND, a(793)=>PWR, a(792)=>GND, 
      a(791)=>GND, a(790)=>PWR, a(789)=>PWR, a(788)=>PWR, a(787)=>GND, 
      a(786)=>PWR, a(785)=>GND, a(784)=>GND, a(783)=>PWR, a(782)=>GND, 
      a(781)=>GND, a(780)=>PWR, a(779)=>PWR, a(778)=>GND, a(777)=>PWR, 
      a(776)=>PWR, a(775)=>GND, a(774)=>PWR, a(773)=>GND, a(772)=>PWR, 
      a(771)=>GND, a(770)=>PWR, a(769)=>GND, a(768)=>PWR, a(767)=>GND, 
      a(766)=>PWR, a(765)=>PWR, a(764)=>GND, a(763)=>PWR, a(762)=>GND, 
      a(761)=>PWR, a(760)=>GND, a(759)=>PWR, a(758)=>GND, a(757)=>GND, 
      a(756)=>PWR, a(755)=>GND, a(754)=>PWR, a(753)=>GND, a(752)=>PWR, 
      a(751)=>PWR, a(750)=>PWR, a(749)=>PWR, a(748)=>PWR, a(747)=>GND, 
      a(746)=>PWR, a(745)=>GND, a(744)=>PWR, a(743)=>PWR, a(742)=>GND, 
      a(741)=>GND, a(740)=>GND, a(739)=>PWR, a(738)=>GND, a(737)=>PWR, 
      a(736)=>PWR, a(735)=>PWR, a(734)=>PWR, a(733)=>GND, a(732)=>PWR, 
      a(731)=>GND, a(730)=>GND, a(729)=>GND, a(728)=>GND, a(727)=>PWR, 
      a(726)=>GND, a(725)=>GND, a(724)=>PWR, a(723)=>PWR, a(722)=>PWR, 
      a(721)=>PWR, a(720)=>PWR, a(719)=>GND, a(718)=>PWR, a(717)=>PWR, 
      a(716)=>GND, a(715)=>GND, a(714)=>PWR, a(713)=>GND, a(712)=>GND, 
      a(711)=>GND, a(710)=>GND, a(709)=>GND, a(708)=>GND, a(707)=>PWR, 
      a(706)=>GND, a(705)=>PWR, a(704)=>GND, a(703)=>GND, a(702)=>PWR, 
      a(701)=>GND, a(700)=>PWR, a(699)=>GND, a(698)=>PWR, a(697)=>GND, 
      a(696)=>GND, a(695)=>GND, a(694)=>PWR, a(693)=>PWR, a(692)=>GND, 
      a(691)=>PWR, a(690)=>GND, a(689)=>GND, a(688)=>GND, a(687)=>GND, 
      a(686)=>GND, a(685)=>GND, a(684)=>GND, a(683)=>GND, a(682)=>PWR, 
      a(681)=>GND, a(680)=>GND, a(679)=>PWR, a(678)=>PWR, a(677)=>GND, 
      a(676)=>GND, a(675)=>PWR, a(674)=>PWR, a(673)=>GND, a(672)=>GND, 
      a(671)=>GND, a(670)=>GND, a(669)=>GND, a(668)=>GND, a(667)=>GND, 
      a(666)=>GND, a(665)=>PWR, a(664)=>PWR, a(663)=>PWR, a(662)=>GND, 
      a(661)=>PWR, a(660)=>GND, a(659)=>GND, a(658)=>GND, a(657)=>GND, 
      a(656)=>GND, a(655)=>GND, a(654)=>PWR, a(653)=>GND, a(652)=>PWR, 
      a(651)=>GND, a(650)=>PWR, a(649)=>GND, a(648)=>GND, a(647)=>GND, 
      a(646)=>PWR, a(645)=>GND, a(644)=>PWR, a(643)=>GND, a(642)=>GND, 
      a(641)=>PWR, a(640)=>PWR, a(639)=>GND, a(638)=>PWR, a(637)=>GND, 
      a(636)=>GND, a(635)=>PWR, a(634)=>GND, a(633)=>GND, a(632)=>GND, 
      a(631)=>PWR, a(630)=>PWR, a(629)=>GND, a(628)=>PWR, a(627)=>PWR, 
      a(626)=>PWR, a(625)=>PWR, a(624)=>PWR, a(623)=>PWR, a(622)=>GND, 
      a(621)=>GND, a(620)=>PWR, a(619)=>PWR, a(618)=>GND, a(617)=>GND, 
      a(616)=>PWR, a(615)=>GND, a(614)=>PWR, a(613)=>PWR, a(612)=>GND, 
      a(611)=>PWR, a(610)=>PWR, a(609)=>GND, a(608)=>GND, a(607)=>GND, 
      a(606)=>GND, a(605)=>GND, a(604)=>GND, a(603)=>GND, a(602)=>PWR, 
      a(601)=>PWR, a(600)=>GND, a(599)=>GND, a(598)=>PWR, a(597)=>PWR, 
      a(596)=>PWR, a(595)=>PWR, a(594)=>PWR, a(593)=>PWR, a(592)=>PWR, 
      a(591)=>GND, a(590)=>GND, a(589)=>PWR, a(588)=>PWR, a(587)=>GND, 
      a(586)=>GND, a(585)=>PWR, a(584)=>GND, a(583)=>GND, a(582)=>GND, 
      a(581)=>GND, a(580)=>PWR, a(579)=>PWR, a(578)=>PWR, a(577)=>GND, 
      a(576)=>GND, a(575)=>PWR, a(574)=>GND, a(573)=>GND, a(572)=>PWR, 
      a(571)=>GND, a(570)=>GND, a(569)=>PWR, a(568)=>GND, a(567)=>PWR, 
      a(566)=>PWR, a(565)=>PWR, a(564)=>GND, a(563)=>GND, a(562)=>GND, 
      a(561)=>PWR, a(560)=>GND, a(559)=>GND, a(558)=>PWR, a(557)=>GND, 
      a(556)=>PWR, a(555)=>GND, a(554)=>GND, a(553)=>PWR, a(552)=>GND, 
      a(551)=>PWR, a(550)=>GND, a(549)=>GND, a(548)=>PWR, a(547)=>PWR, 
      a(546)=>PWR, a(545)=>PWR, a(544)=>GND, a(543)=>GND, a(542)=>GND, 
      a(541)=>GND, a(540)=>GND, a(539)=>PWR, a(538)=>GND, a(537)=>PWR, 
      a(536)=>GND, a(535)=>PWR, a(534)=>PWR, a(533)=>GND, a(532)=>PWR, 
      a(531)=>GND, a(530)=>PWR, a(529)=>PWR, a(528)=>PWR, a(527)=>PWR, 
      a(526)=>GND, a(525)=>GND, a(524)=>GND, a(523)=>PWR, a(522)=>PWR, 
      a(521)=>PWR, a(520)=>PWR, a(519)=>GND, a(518)=>GND, a(517)=>GND, 
      a(516)=>GND, a(515)=>GND, a(514)=>GND, a(513)=>PWR, a(512)=>GND, 
      a(511)=>GND, a(510)=>GND, a(509)=>PWR, a(508)=>PWR, a(507)=>PWR, 
      a(506)=>GND, a(505)=>PWR, a(504)=>PWR, a(503)=>PWR, a(502)=>GND, 
      a(501)=>PWR, a(500)=>PWR, a(499)=>PWR, a(498)=>GND, a(497)=>PWR, 
      a(496)=>PWR, a(495)=>GND, a(494)=>GND, a(493)=>GND, a(492)=>PWR, 
      a(491)=>GND, a(490)=>PWR, a(489)=>GND, a(488)=>PWR, a(487)=>GND, 
      a(486)=>PWR, a(485)=>PWR, a(484)=>GND, a(483)=>GND, a(482)=>GND, 
      a(481)=>PWR, a(480)=>PWR, a(479)=>PWR, a(478)=>GND, a(477)=>GND, 
      a(476)=>GND, a(475)=>PWR, a(474)=>GND, a(473)=>PWR, a(472)=>PWR, 
      a(471)=>PWR, a(470)=>PWR, a(469)=>PWR, a(468)=>GND, a(467)=>PWR, 
      a(466)=>PWR, a(465)=>GND, a(464)=>GND, a(463)=>PWR, a(462)=>GND, 
      a(461)=>PWR, a(460)=>GND, a(459)=>PWR, a(458)=>GND, a(457)=>PWR, 
      a(456)=>GND, a(455)=>PWR, a(454)=>PWR, a(453)=>PWR, a(452)=>GND, 
      a(451)=>PWR, a(450)=>GND, a(449)=>GND, a(448)=>GND, a(447)=>PWR, 
      a(446)=>PWR, a(445)=>PWR, a(444)=>GND, a(443)=>GND, a(442)=>PWR, 
      a(441)=>PWR, a(440)=>PWR, a(439)=>PWR, a(438)=>GND, a(437)=>PWR, 
      a(436)=>GND, a(435)=>GND, a(434)=>PWR, a(433)=>PWR, a(432)=>GND, 
      a(431)=>GND, a(430)=>PWR, a(429)=>GND, a(428)=>GND, a(427)=>PWR, 
      a(426)=>GND, a(425)=>GND, a(424)=>PWR, a(423)=>GND, a(422)=>GND, 
      a(421)=>GND, a(420)=>PWR, a(419)=>GND, a(418)=>GND, a(417)=>PWR, 
      a(416)=>GND, a(415)=>GND, a(414)=>PWR, a(413)=>GND, a(412)=>GND, 
      a(411)=>PWR, a(410)=>GND, a(409)=>PWR, a(408)=>PWR, a(407)=>PWR, 
      a(406)=>GND, a(405)=>GND, a(404)=>GND, a(403)=>GND, a(402)=>GND, 
      a(401)=>GND, a(400)=>GND, a(399)=>PWR, a(398)=>GND, a(397)=>GND, 
      a(396)=>PWR, a(395)=>GND, a(394)=>GND, a(393)=>PWR, a(392)=>GND, 
      a(391)=>GND, a(390)=>GND, a(389)=>GND, a(388)=>PWR, a(387)=>GND, 
      a(386)=>GND, a(385)=>GND, a(384)=>PWR, a(383)=>GND, a(382)=>PWR, 
      a(381)=>PWR, a(380)=>GND, a(379)=>PWR, a(378)=>PWR, a(377)=>PWR, 
      a(376)=>GND, a(375)=>PWR, a(374)=>PWR, a(373)=>PWR, a(372)=>GND, 
      a(371)=>GND, a(370)=>GND, a(369)=>GND, a(368)=>GND, a(367)=>GND, 
      a(366)=>GND, a(365)=>PWR, a(364)=>GND, a(363)=>GND, a(362)=>PWR, 
      a(361)=>PWR, a(360)=>GND, a(359)=>PWR, a(358)=>PWR, a(357)=>PWR, 
      a(356)=>GND, a(355)=>PWR, a(354)=>PWR, a(353)=>PWR, a(352)=>PWR, 
      a(351)=>PWR, a(350)=>PWR, a(349)=>GND, a(348)=>PWR, a(347)=>GND, 
      a(346)=>GND, a(345)=>GND, a(344)=>GND, a(343)=>GND, a(342)=>PWR, 
      a(341)=>GND, a(340)=>GND, a(339)=>PWR, a(338)=>GND, a(337)=>PWR, 
      a(336)=>PWR, a(335)=>PWR, a(334)=>GND, a(333)=>GND, a(332)=>PWR, 
      a(331)=>GND, a(330)=>PWR, a(329)=>PWR, a(328)=>GND, a(327)=>PWR, 
      a(326)=>GND, a(325)=>GND, a(324)=>PWR, a(323)=>PWR, a(322)=>PWR, 
      a(321)=>GND, a(320)=>PWR, a(319)=>GND, a(318)=>PWR, a(317)=>PWR, 
      a(316)=>GND, a(315)=>GND, a(314)=>PWR, a(313)=>GND, a(312)=>PWR, 
      a(311)=>GND, a(310)=>GND, a(309)=>GND, a(308)=>PWR, a(307)=>GND, 
      a(306)=>PWR, a(305)=>GND, a(304)=>PWR, a(303)=>PWR, a(302)=>PWR, 
      a(301)=>PWR, a(300)=>GND, a(299)=>PWR, a(298)=>GND, a(297)=>GND, 
      a(296)=>PWR, a(295)=>GND, a(294)=>GND, a(293)=>GND, a(292)=>GND, 
      a(291)=>GND, a(290)=>GND, a(289)=>PWR, a(288)=>PWR, a(287)=>PWR, 
      a(286)=>PWR, a(285)=>GND, a(284)=>PWR, a(283)=>PWR, a(282)=>GND, 
      a(281)=>GND, a(280)=>GND, a(279)=>PWR, a(278)=>GND, a(277)=>GND, 
      a(276)=>GND, a(275)=>PWR, a(274)=>PWR, a(273)=>PWR, a(272)=>PWR, 
      a(271)=>GND, a(270)=>GND, a(269)=>PWR, a(268)=>PWR, a(267)=>GND, 
      a(266)=>GND, a(265)=>PWR, a(264)=>PWR, a(263)=>PWR, a(262)=>GND, 
      a(261)=>PWR, a(260)=>PWR, a(259)=>PWR, a(258)=>PWR, a(257)=>PWR, 
      a(256)=>PWR, a(255)=>GND, a(254)=>PWR, a(253)=>PWR, a(252)=>PWR, 
      a(251)=>GND, a(250)=>PWR, a(249)=>PWR, a(248)=>PWR, a(247)=>PWR, 
      a(246)=>GND, a(245)=>GND, a(244)=>GND, a(243)=>PWR, a(242)=>PWR, 
      a(241)=>PWR, a(240)=>PWR, a(239)=>GND, a(238)=>PWR, a(237)=>PWR, 
      a(236)=>PWR, a(235)=>GND, a(234)=>GND, a(233)=>PWR, a(232)=>PWR, 
      a(231)=>GND, a(230)=>GND, a(229)=>GND, a(228)=>PWR, a(227)=>GND, 
      a(226)=>GND, a(225)=>GND, a(224)=>GND, a(223)=>GND, a(222)=>GND, 
      a(221)=>PWR, a(220)=>GND, a(219)=>PWR, a(218)=>PWR, a(217)=>GND, 
      a(216)=>PWR, a(215)=>GND, a(214)=>PWR, a(213)=>GND, a(212)=>PWR, 
      a(211)=>PWR, a(210)=>GND, a(209)=>PWR, a(208)=>PWR, a(207)=>GND, 
      a(206)=>PWR, a(205)=>GND, a(204)=>PWR, a(203)=>GND, a(202)=>GND, 
      a(201)=>GND, a(200)=>GND, a(199)=>GND, a(198)=>PWR, a(197)=>PWR, 
      a(196)=>GND, a(195)=>GND, a(194)=>PWR, a(193)=>PWR, a(192)=>PWR, 
      a(191)=>GND, a(190)=>GND, a(189)=>PWR, a(188)=>PWR, a(187)=>PWR, 
      a(186)=>PWR, a(185)=>GND, a(184)=>GND, a(183)=>PWR, a(182)=>GND, 
      a(181)=>GND, a(180)=>GND, a(179)=>GND, a(178)=>GND, a(177)=>PWR, 
      a(176)=>PWR, a(175)=>GND, a(174)=>GND, a(173)=>PWR, a(172)=>GND, 
      a(171)=>PWR, a(170)=>PWR, a(169)=>PWR, a(168)=>GND, a(167)=>GND, 
      a(166)=>PWR, a(165)=>PWR, a(164)=>GND, a(163)=>PWR, a(162)=>PWR, 
      a(161)=>GND, a(160)=>GND, a(159)=>GND, a(158)=>PWR, a(157)=>GND, 
      a(156)=>PWR, a(155)=>PWR, a(154)=>GND, a(153)=>GND, a(152)=>PWR, 
      a(151)=>PWR, a(150)=>GND, a(149)=>PWR, a(148)=>GND, a(147)=>GND, 
      a(146)=>GND, a(145)=>GND, a(144)=>GND, a(143)=>PWR, a(142)=>PWR, 
      a(141)=>PWR, a(140)=>GND, a(139)=>PWR, a(138)=>PWR, a(137)=>PWR, 
      a(136)=>PWR, a(135)=>GND, a(134)=>PWR, a(133)=>GND, a(132)=>PWR, 
      a(131)=>PWR, a(130)=>GND, a(129)=>PWR, a(128)=>PWR, a(127)=>GND, 
      a(126)=>GND, a(125)=>GND, a(124)=>GND, a(123)=>PWR, a(122)=>GND, 
      a(121)=>PWR, a(120)=>GND, a(119)=>GND, a(118)=>GND, a(117)=>GND, 
      a(116)=>PWR, a(115)=>GND, a(114)=>PWR, a(113)=>GND, a(112)=>GND, 
      a(111)=>PWR, a(110)=>PWR, a(109)=>GND, a(108)=>PWR, a(107)=>PWR, 
      a(106)=>GND, a(105)=>GND, a(104)=>GND, a(103)=>GND, a(102)=>GND, 
      a(101)=>GND, a(100)=>GND, a(99)=>PWR, a(98)=>GND, a(97)=>GND, a(96)=>
      PWR, a(95)=>PWR, a(94)=>PWR, a(93)=>GND, a(92)=>GND, a(91)=>PWR, a(90)
      =>PWR, a(89)=>PWR, a(88)=>GND, a(87)=>GND, a(86)=>GND, a(85)=>GND, 
      a(84)=>GND, a(83)=>GND, a(82)=>GND, a(81)=>GND, a(80)=>GND, a(79)=>PWR, 
      a(78)=>PWR, a(77)=>GND, a(76)=>PWR, a(75)=>GND, a(74)=>PWR, a(73)=>PWR, 
      a(72)=>PWR, a(71)=>GND, a(70)=>GND, a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, 
      a(66)=>GND, a(65)=>PWR, a(64)=>PWR, a(63)=>GND, a(62)=>PWR, a(61)=>GND, 
      a(60)=>GND, a(59)=>PWR, a(58)=>PWR, a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, 
      a(54)=>PWR, a(53)=>GND, a(52)=>GND, a(51)=>PWR, a(50)=>GND, a(49)=>GND, 
      a(48)=>PWR, a(47)=>PWR, a(46)=>PWR, a(45)=>GND, a(44)=>PWR, a(43)=>PWR, 
      a(42)=>PWR, a(41)=>GND, a(40)=>PWR, a(39)=>GND, a(38)=>PWR, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>PWR, a(33)=>PWR, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>PWR, a(28)=>PWR, a(27)=>GND, a(26)=>PWR, a(25)=>PWR, 
      a(24)=>GND, a(23)=>PWR, a(22)=>PWR, a(21)=>GND, a(20)=>GND, a(19)=>PWR, 
      a(18)=>GND, a(17)=>PWR, a(16)=>GND, a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, 
      a(12)=>PWR, a(11)=>GND, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>PWR, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>PWR, a(0)
      =>GND, b(1023)=>GND, b(1022)=>GND, b(1021)=>GND, b(1020)=>GND, b(1019)
      =>GND, b(1018)=>GND, b(1017)=>GND, b(1016)=>GND, b(1015)=>GND, b(1014)
      =>GND, b(1013)=>GND, b(1012)=>GND, b(1011)=>GND, b(1010)=>GND, b(1009)
      =>GND, b(1008)=>GND, b(1007)=>GND, b(1006)=>GND, b(1005)=>GND, b(1004)
      =>GND, b(1003)=>GND, b(1002)=>GND, b(1001)=>GND, b(1000)=>GND, b(999)
      =>GND, b(998)=>GND, b(997)=>GND, b(996)=>GND, b(995)=>GND, b(994)=>GND, 
      b(993)=>GND, b(992)=>GND, b(991)=>GND, b(990)=>GND, b(989)=>GND, 
      b(988)=>GND, b(987)=>GND, b(986)=>GND, b(985)=>GND, b(984)=>GND, 
      b(983)=>GND, b(982)=>GND, b(981)=>GND, b(980)=>GND, b(979)=>GND, 
      b(978)=>GND, b(977)=>GND, b(976)=>GND, b(975)=>GND, b(974)=>GND, 
      b(973)=>GND, b(972)=>GND, b(971)=>GND, b(970)=>GND, b(969)=>GND, 
      b(968)=>GND, b(967)=>GND, b(966)=>GND, b(965)=>GND, b(964)=>GND, 
      b(963)=>GND, b(962)=>GND, b(961)=>GND, b(960)=>GND, b(959)=>GND, 
      b(958)=>GND, b(957)=>GND, b(956)=>GND, b(955)=>GND, b(954)=>GND, 
      b(953)=>GND, b(952)=>GND, b(951)=>GND, b(950)=>GND, b(949)=>GND, 
      b(948)=>GND, b(947)=>GND, b(946)=>GND, b(945)=>GND, b(944)=>GND, 
      b(943)=>GND, b(942)=>GND, b(941)=>GND, b(940)=>GND, b(939)=>GND, 
      b(938)=>GND, b(937)=>GND, b(936)=>GND, b(935)=>GND, b(934)=>GND, 
      b(933)=>GND, b(932)=>GND, b(931)=>GND, b(930)=>GND, b(929)=>GND, 
      b(928)=>GND, b(927)=>GND, b(926)=>GND, b(925)=>GND, b(924)=>GND, 
      b(923)=>GND, b(922)=>GND, b(921)=>GND, b(920)=>GND, b(919)=>GND, 
      b(918)=>GND, b(917)=>GND, b(916)=>GND, b(915)=>GND, b(914)=>GND, 
      b(913)=>GND, b(912)=>GND, b(911)=>GND, b(910)=>GND, b(909)=>GND, 
      b(908)=>GND, b(907)=>GND, b(906)=>GND, b(905)=>GND, b(904)=>GND, 
      b(903)=>GND, b(902)=>GND, b(901)=>GND, b(900)=>GND, b(899)=>GND, 
      b(898)=>GND, b(897)=>GND, b(896)=>GND, b(895)=>GND, b(894)=>GND, 
      b(893)=>GND, b(892)=>GND, b(891)=>GND, b(890)=>GND, b(889)=>GND, 
      b(888)=>GND, b(887)=>GND, b(886)=>GND, b(885)=>GND, b(884)=>GND, 
      b(883)=>GND, b(882)=>GND, b(881)=>GND, b(880)=>GND, b(879)=>GND, 
      b(878)=>GND, b(877)=>GND, b(876)=>GND, b(875)=>GND, b(874)=>GND, 
      b(873)=>GND, b(872)=>GND, b(871)=>GND, b(870)=>GND, b(869)=>GND, 
      b(868)=>GND, b(867)=>GND, b(866)=>GND, b(865)=>GND, b(864)=>GND, 
      b(863)=>GND, b(862)=>GND, b(861)=>GND, b(860)=>GND, b(859)=>GND, 
      b(858)=>GND, b(857)=>GND, b(856)=>GND, b(855)=>GND, b(854)=>GND, 
      b(853)=>GND, b(852)=>GND, b(851)=>GND, b(850)=>GND, b(849)=>GND, 
      b(848)=>GND, b(847)=>GND, b(846)=>GND, b(845)=>GND, b(844)=>GND, 
      b(843)=>GND, b(842)=>GND, b(841)=>GND, b(840)=>GND, b(839)=>GND, 
      b(838)=>GND, b(837)=>GND, b(836)=>GND, b(835)=>GND, b(834)=>GND, 
      b(833)=>GND, b(832)=>GND, b(831)=>GND, b(830)=>GND, b(829)=>GND, 
      b(828)=>GND, b(827)=>GND, b(826)=>GND, b(825)=>GND, b(824)=>GND, 
      b(823)=>GND, b(822)=>GND, b(821)=>GND, b(820)=>GND, b(819)=>GND, 
      b(818)=>GND, b(817)=>GND, b(816)=>GND, b(815)=>GND, b(814)=>GND, 
      b(813)=>GND, b(812)=>GND, b(811)=>GND, b(810)=>GND, b(809)=>GND, 
      b(808)=>GND, b(807)=>GND, b(806)=>GND, b(805)=>GND, b(804)=>GND, 
      b(803)=>GND, b(802)=>GND, b(801)=>GND, b(800)=>GND, b(799)=>GND, 
      b(798)=>GND, b(797)=>GND, b(796)=>GND, b(795)=>GND, b(794)=>GND, 
      b(793)=>GND, b(792)=>GND, b(791)=>GND, b(790)=>GND, b(789)=>GND, 
      b(788)=>GND, b(787)=>GND, b(786)=>GND, b(785)=>GND, b(784)=>GND, 
      b(783)=>GND, b(782)=>GND, b(781)=>GND, b(780)=>GND, b(779)=>GND, 
      b(778)=>GND, b(777)=>GND, b(776)=>GND, b(775)=>GND, b(774)=>GND, 
      b(773)=>GND, b(772)=>GND, b(771)=>GND, b(770)=>GND, b(769)=>GND, 
      b(768)=>GND, b(767)=>GND, b(766)=>GND, b(765)=>GND, b(764)=>GND, 
      b(763)=>GND, b(762)=>GND, b(761)=>GND, b(760)=>GND, b(759)=>GND, 
      b(758)=>GND, b(757)=>GND, b(756)=>GND, b(755)=>GND, b(754)=>GND, 
      b(753)=>GND, b(752)=>GND, b(751)=>GND, b(750)=>GND, b(749)=>GND, 
      b(748)=>GND, b(747)=>GND, b(746)=>GND, b(745)=>GND, b(744)=>GND, 
      b(743)=>GND, b(742)=>GND, b(741)=>GND, b(740)=>GND, b(739)=>GND, 
      b(738)=>GND, b(737)=>GND, b(736)=>GND, b(735)=>GND, b(734)=>GND, 
      b(733)=>GND, b(732)=>GND, b(731)=>GND, b(730)=>GND, b(729)=>GND, 
      b(728)=>GND, b(727)=>GND, b(726)=>GND, b(725)=>GND, b(724)=>GND, 
      b(723)=>GND, b(722)=>GND, b(721)=>GND, b(720)=>GND, b(719)=>GND, 
      b(718)=>GND, b(717)=>GND, b(716)=>GND, b(715)=>GND, b(714)=>GND, 
      b(713)=>GND, b(712)=>GND, b(711)=>GND, b(710)=>GND, b(709)=>GND, 
      b(708)=>GND, b(707)=>GND, b(706)=>GND, b(705)=>GND, b(704)=>GND, 
      b(703)=>GND, b(702)=>GND, b(701)=>GND, b(700)=>GND, b(699)=>GND, 
      b(698)=>GND, b(697)=>GND, b(696)=>GND, b(695)=>GND, b(694)=>GND, 
      b(693)=>GND, b(692)=>GND, b(691)=>GND, b(690)=>GND, b(689)=>GND, 
      b(688)=>GND, b(687)=>GND, b(686)=>GND, b(685)=>GND, b(684)=>GND, 
      b(683)=>GND, b(682)=>GND, b(681)=>GND, b(680)=>GND, b(679)=>GND, 
      b(678)=>GND, b(677)=>GND, b(676)=>GND, b(675)=>GND, b(674)=>GND, 
      b(673)=>GND, b(672)=>GND, b(671)=>GND, b(670)=>GND, b(669)=>GND, 
      b(668)=>GND, b(667)=>GND, b(666)=>GND, b(665)=>GND, b(664)=>GND, 
      b(663)=>GND, b(662)=>GND, b(661)=>GND, b(660)=>GND, b(659)=>GND, 
      b(658)=>GND, b(657)=>GND, b(656)=>GND, b(655)=>GND, b(654)=>GND, 
      b(653)=>GND, b(652)=>GND, b(651)=>GND, b(650)=>GND, b(649)=>GND, 
      b(648)=>GND, b(647)=>GND, b(646)=>GND, b(645)=>GND, b(644)=>GND, 
      b(643)=>GND, b(642)=>GND, b(641)=>GND, b(640)=>GND, b(639)=>GND, 
      b(638)=>GND, b(637)=>GND, b(636)=>GND, b(635)=>GND, b(634)=>GND, 
      b(633)=>GND, b(632)=>GND, b(631)=>GND, b(630)=>GND, b(629)=>GND, 
      b(628)=>GND, b(627)=>GND, b(626)=>GND, b(625)=>GND, b(624)=>GND, 
      b(623)=>GND, b(622)=>GND, b(621)=>GND, b(620)=>GND, b(619)=>GND, 
      b(618)=>GND, b(617)=>GND, b(616)=>GND, b(615)=>GND, b(614)=>GND, 
      b(613)=>GND, b(612)=>GND, b(611)=>GND, b(610)=>GND, b(609)=>GND, 
      b(608)=>GND, b(607)=>GND, b(606)=>GND, b(605)=>GND, b(604)=>GND, 
      b(603)=>GND, b(602)=>GND, b(601)=>GND, b(600)=>GND, b(599)=>GND, 
      b(598)=>GND, b(597)=>GND, b(596)=>GND, b(595)=>GND, b(594)=>GND, 
      b(593)=>GND, b(592)=>GND, b(591)=>GND, b(590)=>GND, b(589)=>GND, 
      b(588)=>GND, b(587)=>GND, b(586)=>GND, b(585)=>GND, b(584)=>GND, 
      b(583)=>GND, b(582)=>GND, b(581)=>GND, b(580)=>GND, b(579)=>GND, 
      b(578)=>GND, b(577)=>GND, b(576)=>GND, b(575)=>GND, b(574)=>GND, 
      b(573)=>GND, b(572)=>GND, b(571)=>GND, b(570)=>GND, b(569)=>GND, 
      b(568)=>GND, b(567)=>GND, b(566)=>GND, b(565)=>GND, b(564)=>GND, 
      b(563)=>GND, b(562)=>GND, b(561)=>GND, b(560)=>GND, b(559)=>GND, 
      b(558)=>GND, b(557)=>GND, b(556)=>GND, b(555)=>GND, b(554)=>GND, 
      b(553)=>GND, b(552)=>GND, b(551)=>GND, b(550)=>GND, b(549)=>GND, 
      b(548)=>GND, b(547)=>GND, b(546)=>GND, b(545)=>GND, b(544)=>GND, 
      b(543)=>GND, b(542)=>GND, b(541)=>GND, b(540)=>GND, b(539)=>GND, 
      b(538)=>GND, b(537)=>GND, b(536)=>GND, b(535)=>GND, b(534)=>GND, 
      b(533)=>GND, b(532)=>GND, b(531)=>GND, b(530)=>GND, b(529)=>GND, 
      b(528)=>GND, b(527)=>GND, b(526)=>GND, b(525)=>GND, b(524)=>GND, 
      b(523)=>GND, b(522)=>GND, b(521)=>GND, b(520)=>GND, b(519)=>GND, 
      b(518)=>GND, b(517)=>GND, b(516)=>GND, b(515)=>GND, b(514)=>GND, 
      b(513)=>GND, b(512)=>GND, b(511)=>GND, b(510)=>GND, b(509)=>GND, 
      b(508)=>GND, b(507)=>GND, b(506)=>GND, b(505)=>GND, b(504)=>GND, 
      b(503)=>GND, b(502)=>GND, b(501)=>GND, b(500)=>GND, b(499)=>GND, 
      b(498)=>GND, b(497)=>GND, b(496)=>GND, b(495)=>GND, b(494)=>GND, 
      b(493)=>GND, b(492)=>GND, b(491)=>GND, b(490)=>GND, b(489)=>GND, 
      b(488)=>GND, b(487)=>GND, b(486)=>GND, b(485)=>GND, b(484)=>GND, 
      b(483)=>GND, b(482)=>GND, b(481)=>GND, b(480)=>GND, b(479)=>GND, 
      b(478)=>GND, b(477)=>GND, b(476)=>GND, b(475)=>GND, b(474)=>GND, 
      b(473)=>GND, b(472)=>GND, b(471)=>GND, b(470)=>GND, b(469)=>GND, 
      b(468)=>GND, b(467)=>GND, b(466)=>GND, b(465)=>GND, b(464)=>GND, 
      b(463)=>GND, b(462)=>GND, b(461)=>GND, b(460)=>GND, b(459)=>GND, 
      b(458)=>GND, b(457)=>GND, b(456)=>GND, b(455)=>GND, b(454)=>GND, 
      b(453)=>GND, b(452)=>GND, b(451)=>GND, b(450)=>GND, b(449)=>GND, 
      b(448)=>GND, b(447)=>GND, b(446)=>GND, b(445)=>GND, b(444)=>GND, 
      b(443)=>GND, b(442)=>GND, b(441)=>GND, b(440)=>GND, b(439)=>GND, 
      b(438)=>GND, b(437)=>GND, b(436)=>GND, b(435)=>GND, b(434)=>GND, 
      b(433)=>GND, b(432)=>GND, b(431)=>GND, b(430)=>GND, b(429)=>GND, 
      b(428)=>GND, b(427)=>GND, b(426)=>GND, b(425)=>GND, b(424)=>GND, 
      b(423)=>GND, b(422)=>GND, b(421)=>GND, b(420)=>GND, b(419)=>GND, 
      b(418)=>GND, b(417)=>GND, b(416)=>GND, b(415)=>GND, b(414)=>GND, 
      b(413)=>GND, b(412)=>GND, b(411)=>GND, b(410)=>GND, b(409)=>GND, 
      b(408)=>GND, b(407)=>GND, b(406)=>GND, b(405)=>GND, b(404)=>GND, 
      b(403)=>GND, b(402)=>GND, b(401)=>GND, b(400)=>GND, b(399)=>GND, 
      b(398)=>GND, b(397)=>GND, b(396)=>GND, b(395)=>GND, b(394)=>GND, 
      b(393)=>GND, b(392)=>GND, b(391)=>GND, b(390)=>GND, b(389)=>GND, 
      b(388)=>GND, b(387)=>GND, b(386)=>GND, b(385)=>GND, b(384)=>GND, 
      b(383)=>GND, b(382)=>GND, b(381)=>GND, b(380)=>GND, b(379)=>GND, 
      b(378)=>GND, b(377)=>GND, b(376)=>GND, b(375)=>GND, b(374)=>GND, 
      b(373)=>GND, b(372)=>GND, b(371)=>GND, b(370)=>GND, b(369)=>GND, 
      b(368)=>GND, b(367)=>GND, b(366)=>GND, b(365)=>GND, b(364)=>GND, 
      b(363)=>GND, b(362)=>GND, b(361)=>GND, b(360)=>GND, b(359)=>GND, 
      b(358)=>GND, b(357)=>GND, b(356)=>GND, b(355)=>GND, b(354)=>GND, 
      b(353)=>GND, b(352)=>GND, b(351)=>GND, b(350)=>GND, b(349)=>GND, 
      b(348)=>GND, b(347)=>GND, b(346)=>GND, b(345)=>GND, b(344)=>GND, 
      b(343)=>GND, b(342)=>GND, b(341)=>GND, b(340)=>GND, b(339)=>GND, 
      b(338)=>GND, b(337)=>GND, b(336)=>GND, b(335)=>GND, b(334)=>GND, 
      b(333)=>GND, b(332)=>GND, b(331)=>GND, b(330)=>GND, b(329)=>GND, 
      b(328)=>GND, b(327)=>GND, b(326)=>GND, b(325)=>GND, b(324)=>GND, 
      b(323)=>GND, b(322)=>GND, b(321)=>GND, b(320)=>GND, b(319)=>GND, 
      b(318)=>GND, b(317)=>GND, b(316)=>GND, b(315)=>GND, b(314)=>GND, 
      b(313)=>GND, b(312)=>GND, b(311)=>GND, b(310)=>GND, b(309)=>GND, 
      b(308)=>GND, b(307)=>GND, b(306)=>GND, b(305)=>GND, b(304)=>GND, 
      b(303)=>GND, b(302)=>GND, b(301)=>GND, b(300)=>GND, b(299)=>GND, 
      b(298)=>GND, b(297)=>GND, b(296)=>GND, b(295)=>GND, b(294)=>GND, 
      b(293)=>GND, b(292)=>GND, b(291)=>GND, b(290)=>GND, b(289)=>GND, 
      b(288)=>GND, b(287)=>GND, b(286)=>GND, b(285)=>GND, b(284)=>GND, 
      b(283)=>GND, b(282)=>GND, b(281)=>GND, b(280)=>GND, b(279)=>GND, 
      b(278)=>GND, b(277)=>GND, b(276)=>GND, b(275)=>GND, b(274)=>GND, 
      b(273)=>GND, b(272)=>GND, b(271)=>GND, b(270)=>GND, b(269)=>GND, 
      b(268)=>GND, b(267)=>GND, b(266)=>GND, b(265)=>GND, b(264)=>GND, 
      b(263)=>GND, b(262)=>GND, b(261)=>GND, b(260)=>GND, b(259)=>GND, 
      b(258)=>GND, b(257)=>GND, b(256)=>GND, b(255)=>GND, b(254)=>GND, 
      b(253)=>GND, b(252)=>GND, b(251)=>GND, b(250)=>GND, b(249)=>GND, 
      b(248)=>GND, b(247)=>GND, b(246)=>GND, b(245)=>GND, b(244)=>GND, 
      b(243)=>GND, b(242)=>GND, b(241)=>GND, b(240)=>GND, b(239)=>GND, 
      b(238)=>GND, b(237)=>GND, b(236)=>GND, b(235)=>GND, b(234)=>GND, 
      b(233)=>GND, b(232)=>GND, b(231)=>GND, b(230)=>GND, b(229)=>GND, 
      b(228)=>GND, b(227)=>GND, b(226)=>GND, b(225)=>GND, b(224)=>GND, 
      b(223)=>GND, b(222)=>GND, b(221)=>GND, b(220)=>GND, b(219)=>GND, 
      b(218)=>GND, b(217)=>GND, b(216)=>GND, b(215)=>GND, b(214)=>GND, 
      b(213)=>GND, b(212)=>GND, b(211)=>GND, b(210)=>GND, b(209)=>GND, 
      b(208)=>GND, b(207)=>GND, b(206)=>GND, b(205)=>GND, b(204)=>GND, 
      b(203)=>GND, b(202)=>GND, b(201)=>GND, b(200)=>GND, b(199)=>GND, 
      b(198)=>GND, b(197)=>GND, b(196)=>GND, b(195)=>GND, b(194)=>GND, 
      b(193)=>GND, b(192)=>GND, b(191)=>GND, b(190)=>GND, b(189)=>GND, 
      b(188)=>GND, b(187)=>GND, b(186)=>GND, b(185)=>GND, b(184)=>GND, 
      b(183)=>GND, b(182)=>GND, b(181)=>GND, b(180)=>GND, b(179)=>GND, 
      b(178)=>GND, b(177)=>GND, b(176)=>GND, b(175)=>GND, b(174)=>GND, 
      b(173)=>GND, b(172)=>GND, b(171)=>GND, b(170)=>GND, b(169)=>GND, 
      b(168)=>GND, b(167)=>GND, b(166)=>GND, b(165)=>GND, b(164)=>GND, 
      b(163)=>GND, b(162)=>GND, b(161)=>GND, b(160)=>GND, b(159)=>GND, 
      b(158)=>GND, b(157)=>GND, b(156)=>GND, b(155)=>GND, b(154)=>GND, 
      b(153)=>GND, b(152)=>GND, b(151)=>GND, b(150)=>GND, b(149)=>GND, 
      b(148)=>GND, b(147)=>GND, b(146)=>GND, b(145)=>GND, b(144)=>GND, 
      b(143)=>GND, b(142)=>GND, b(141)=>GND, b(140)=>GND, b(139)=>GND, 
      b(138)=>GND, b(137)=>GND, b(136)=>GND, b(135)=>GND, b(134)=>GND, 
      b(133)=>GND, b(132)=>GND, b(131)=>GND, b(130)=>GND, b(129)=>GND, 
      b(128)=>GND, b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, 
      b(123)=>GND, b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, 
      b(118)=>GND, b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, 
      b(113)=>GND, b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, 
      b(108)=>GND, b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, 
      b(103)=>GND, b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)
      =>GND, b(97)=>GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, 
      b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, 
      b(86)=>GND, b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, 
      b(80)=>GND, b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, 
      b(74)=>GND, b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, 
      b(68)=>GND, b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, 
      b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, 
      b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, 
      b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, 
      b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, 
      b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, 
      b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, 
      b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, 
      b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, 
      b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>
      address(9), b(8)=>address(8), b(7)=>address(7), b(6)=>address(6), b(5)
      =>address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), 
      b(1)=>address(1), b(0)=>address(0), d=>q(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_new_0_white_noise_0_main_unfold_1480 is 
   port (
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (9 DOWNTO 0) ;
      rd_clk1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      regce1 : IN std_logic ;
      rst1 : IN std_logic) ;
end rom_new_0_white_noise_0_main_unfold_1480 ;

architecture INTERFACE of rom_new_0_white_noise_0_main_unfold_1480 is 
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
   component rom_8_10_1024_1_white_noise_0_main
      port (
         address : IN std_logic_vector (9 DOWNTO 0) ;
         inclock : IN std_logic ;
         outclock : IN std_logic ;
         outclockena : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx22, nx24, dup_0_rtlc_rdout_n2_13, dup_0_rtlc_rdout_n2_12, 
      dup_0_rtlc_rdout_n2_11, dup_0_rtlc_rdout_n2_10, dup_0_rtlc_rdout_n2_9, 
      dup_0_rtlc_rdout_n2_8, dup_0_rtlc_rdout_n2_15, dup_0_rtlc_rdout_n2_14
   : std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   nx22 <= '0' ;
   nx24 <= '1' ;
   DFFPC (dup_0_rtlc_rdout_n2_13,nx22,nx22,rd_clk1,rd_data1(5)) ;
   DFFPC (dup_0_rtlc_rdout_n2_12,nx22,nx22,rd_clk1,rd_data1(4)) ;
   DFFPC (dup_0_rtlc_rdout_n2_11,nx22,nx22,rd_clk1,rd_data1(3)) ;
   DFFPC (dup_0_rtlc_rdout_n2_10,nx22,nx22,rd_clk1,rd_data1(2)) ;
   DFFPC (dup_0_rtlc_rdout_n2_9,nx22,nx22,rd_clk1,rd_data1(1)) ;
   DFFPC (dup_0_rtlc_rdout_n2_8,nx22,nx22,rd_clk1,rd_data1(0)) ;
   DFFPC (dup_0_rtlc_rdout_n2_15,nx22,nx22,rd_clk1,rd_data1(7)) ;
   DFFPC (dup_0_rtlc_rdout_n2_14,nx22,nx22,rd_clk1,rd_data1(6)) ;
   modgen_rom_ix24 : rom_8_10_1024_1_white_noise_0_main port map ( 
      address(9)=>addr1(9), address(8)=>addr1(8), address(7)=>addr1(7), 
      address(6)=>addr1(6), address(5)=>addr1(5), address(4)=>addr1(4), 
      address(3)=>addr1(3), address(2)=>addr1(2), address(1)=>addr1(1), 
      address(0)=>addr1(0), inclock=>DANGLING(0), outclock=>DANGLING(1), 
      outclockena=>DANGLING(2), q(7)=>dup_0_rtlc_rdout_n2_15, q(6)=>
      dup_0_rtlc_rdout_n2_14, q(5)=>dup_0_rtlc_rdout_n2_13, q(4)=>
      dup_0_rtlc_rdout_n2_12, q(3)=>dup_0_rtlc_rdout_n2_11, q(2)=>
      dup_0_rtlc_rdout_n2_10, q(1)=>dup_0_rtlc_rdout_n2_9, q(0)=>
      dup_0_rtlc_rdout_n2_8);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity white_noise_0 is 
   port (
      clk : IN std_logic ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end white_noise_0 ;

architecture main_unfold_1480 of white_noise_0 is 
   component counter_up_clock_0_10
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
   component rom_new_0_white_noise_0_main_unfold_1480
      port (
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (9 DOWNTO 0) ;
         rd_clk1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         regce1 : IN std_logic ;
         rst1 : IN std_logic) ;
   end component ;
   signal o_data_15_EXMPLR143: std_logic ;
   
   signal address: std_logic_vector (9 DOWNTO 0) ;
   
   signal o_data_2_EXMPLR155, PWR: std_logic ;
   
   signal DANGLING : std_logic_vector (9 downto 0 );

begin
   o_data(15) <= o_data_15_EXMPLR143 ;
   o_data(3) <= o_data_2_EXMPLR155 ;
   o_data(2) <= o_data_2_EXMPLR155 ;
   o_data(1) <= o_data_2_EXMPLR155 ;
   o_data(0) <= o_data_2_EXMPLR155 ;
   o_data_2_EXMPLR155 <= '0' ;
   PWR <= '1' ;
   o_data(14) <= o_data_15_EXMPLR143 ;
   o_data(13) <= o_data_15_EXMPLR143 ;
   o_data(12) <= o_data_15_EXMPLR143 ;
   o_data(11) <= o_data_15_EXMPLR143 ;
   modgen_counter_address : counter_up_clock_0_10 port map ( clock=>clk, 
      q(9)=>address(9), q(8)=>address(8), q(7)=>address(7), q(6)=>address(6), 
      q(5)=>address(5), q(4)=>address(4), q(3)=>address(3), q(2)=>address(2), 
      q(1)=>address(1), q(0)=>address(0), clk_en=>PWR, aclear=>
      o_data_2_EXMPLR155, sload=>o_data_2_EXMPLR155, data(9)=>DANGLING(0), 
      data(8)=>DANGLING(1), data(7)=>DANGLING(2), data(6)=>DANGLING(3), 
      data(5)=>DANGLING(4), data(4)=>DANGLING(5), data(3)=>DANGLING(6), 
      data(2)=>DANGLING(7), data(1)=>DANGLING(8), data(0)=>DANGLING(9), aset
      =>o_data_2_EXMPLR155, sclear=>o_data_2_EXMPLR155, updn=>PWR, cnt_en=>
      PWR);
   modgen_rom_ix24 : rom_new_0_white_noise_0_main_unfold_1480 port map ( 
      rd_data1(7)=>o_data_15_EXMPLR143, rd_data1(6)=>o_data(10), rd_data1(5)
      =>o_data(9), rd_data1(4)=>o_data(8), rd_data1(3)=>o_data(7), 
      rd_data1(2)=>o_data(6), rd_data1(1)=>o_data(5), rd_data1(0)=>o_data(4), 
      addr1(9)=>address(9), addr1(8)=>address(8), addr1(7)=>address(7), 
      addr1(6)=>address(6), addr1(5)=>address(5), addr1(4)=>address(4), 
      addr1(3)=>address(3), addr1(2)=>address(2), addr1(1)=>address(1), 
      addr1(0)=>address(0), rd_clk1=>clk, rd_ena1=>PWR, regce1=>PWR, rst1=>
      o_data_2_EXMPLR155);
end main_unfold_1480 ;

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
   signal tap_next_EXMPLR207: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR205: std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR207(15) ;
   tap_next(14) <= tap_next_EXMPLR207(14) ;
   tap_next(13) <= tap_next_EXMPLR207(13) ;
   tap_next(12) <= tap_next_EXMPLR207(12) ;
   tap_next(11) <= tap_next_EXMPLR207(11) ;
   tap_next(10) <= tap_next_EXMPLR207(10) ;
   tap_next(9) <= tap_next_EXMPLR207(9) ;
   tap_next(8) <= tap_next_EXMPLR207(8) ;
   tap_next(7) <= tap_next_EXMPLR207(7) ;
   tap_next(6) <= tap_next_EXMPLR207(6) ;
   tap_next(5) <= tap_next_EXMPLR207(5) ;
   tap_next(4) <= tap_next_EXMPLR207(4) ;
   tap_next(3) <= tap_next_EXMPLR207(3) ;
   tap_next(2) <= tap_next_EXMPLR207(2) ;
   tap_next(1) <= tap_next_EXMPLR207(1) ;
   tap_next(0) <= tap_next_EXMPLR207(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR207(15), a(30)=>tap_next_EXMPLR207(15), a(29)=>
      tap_next_EXMPLR207(15), a(28)=>tap_next_EXMPLR207(15), a(27)=>
      tap_next_EXMPLR207(15), a(26)=>tap_next_EXMPLR207(15), a(25)=>
      tap_next_EXMPLR207(15), a(24)=>tap_next_EXMPLR207(15), a(23)=>
      tap_next_EXMPLR207(15), a(22)=>tap_next_EXMPLR207(15), a(21)=>
      tap_next_EXMPLR207(15), a(20)=>tap_next_EXMPLR207(15), a(19)=>
      tap_next_EXMPLR207(15), a(18)=>tap_next_EXMPLR207(15), a(17)=>
      tap_next_EXMPLR207(15), a(16)=>tap_next_EXMPLR207(15), a(15)=>
      tap_next_EXMPLR207(15), a(14)=>tap_next_EXMPLR207(14), a(13)=>
      tap_next_EXMPLR207(13), a(12)=>tap_next_EXMPLR207(12), a(11)=>
      tap_next_EXMPLR207(11), a(10)=>tap_next_EXMPLR207(10), a(9)=>
      tap_next_EXMPLR207(9), a(8)=>tap_next_EXMPLR207(8), a(7)=>
      tap_next_EXMPLR207(7), a(6)=>tap_next_EXMPLR207(6), a(5)=>
      tap_next_EXMPLR207(5), a(4)=>tap_next_EXMPLR207(4), a(3)=>
      tap_next_EXMPLR207(3), a(2)=>tap_next_EXMPLR207(2), a(1)=>
      tap_next_EXMPLR207(1), a(0)=>tap_next_EXMPLR207(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR205, b(8)=>GND, 
      b(7)=>GND, b(6)=>coef_9_EXMPLR205, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
      b(2)=>GND, b(1)=>GND, b(0)=>GND, d(31)=>DANGLING(0), d(30)=>DANGLING(1
      ), d(29)=>DANGLING(2), d(28)=>DANGLING(3), d(27)=>next_sum(15), d(26)
      =>next_sum(14), d(25)=>next_sum(13), d(24)=>next_sum(12), d(23)=>
      next_sum(11), d(22)=>next_sum(10), d(21)=>next_sum(9), d(20)=>
      next_sum(8), d(19)=>next_sum(7), d(18)=>next_sum(6), d(17)=>
      next_sum(5), d(16)=>next_sum(4), d(15)=>next_sum(3), d(14)=>
      next_sum(2), d(13)=>next_sum(1), d(12)=>next_sum(0), d(11)=>DANGLING(4
      ), d(10)=>DANGLING(5), d(9)=>DANGLING(6), d(8)=>DANGLING(7), d(7)=>
      DANGLING(8), d(6)=>DANGLING(9), d(5)=>DANGLING(10), d(4)=>DANGLING(11), 
      d(3)=>DANGLING(12), d(2)=>DANGLING(13), d(1)=>DANGLING(14), d(0)=>
      DANGLING(15));
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR207(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR207(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR207(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR207(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR207(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR207(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR207(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR207(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR207(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR207(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR207(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR207(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR207(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR207(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR207(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR207(0)) ;
   coef_9_EXMPLR205 <= '1' ;
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
   signal tap_next_EXMPLR276: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_7_EXMPLR274: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR276(15) ;
   tap_next(14) <= tap_next_EXMPLR276(14) ;
   tap_next(13) <= tap_next_EXMPLR276(13) ;
   tap_next(12) <= tap_next_EXMPLR276(12) ;
   tap_next(11) <= tap_next_EXMPLR276(11) ;
   tap_next(10) <= tap_next_EXMPLR276(10) ;
   tap_next(9) <= tap_next_EXMPLR276(9) ;
   tap_next(8) <= tap_next_EXMPLR276(8) ;
   tap_next(7) <= tap_next_EXMPLR276(7) ;
   tap_next(6) <= tap_next_EXMPLR276(6) ;
   tap_next(5) <= tap_next_EXMPLR276(5) ;
   tap_next(4) <= tap_next_EXMPLR276(4) ;
   tap_next(3) <= tap_next_EXMPLR276(3) ;
   tap_next(2) <= tap_next_EXMPLR276(2) ;
   tap_next(1) <= tap_next_EXMPLR276(1) ;
   tap_next(0) <= tap_next_EXMPLR276(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR276(15), a(30)=>tap_next_EXMPLR276(15), a(29)=>
      tap_next_EXMPLR276(15), a(28)=>tap_next_EXMPLR276(15), a(27)=>
      tap_next_EXMPLR276(15), a(26)=>tap_next_EXMPLR276(15), a(25)=>
      tap_next_EXMPLR276(15), a(24)=>tap_next_EXMPLR276(15), a(23)=>
      tap_next_EXMPLR276(15), a(22)=>tap_next_EXMPLR276(15), a(21)=>
      tap_next_EXMPLR276(15), a(20)=>tap_next_EXMPLR276(15), a(19)=>
      tap_next_EXMPLR276(15), a(18)=>tap_next_EXMPLR276(15), a(17)=>
      tap_next_EXMPLR276(15), a(16)=>tap_next_EXMPLR276(15), a(15)=>
      tap_next_EXMPLR276(15), a(14)=>tap_next_EXMPLR276(14), a(13)=>
      tap_next_EXMPLR276(13), a(12)=>tap_next_EXMPLR276(12), a(11)=>
      tap_next_EXMPLR276(11), a(10)=>tap_next_EXMPLR276(10), a(9)=>
      tap_next_EXMPLR276(9), a(8)=>tap_next_EXMPLR276(8), a(7)=>
      tap_next_EXMPLR276(7), a(6)=>tap_next_EXMPLR276(6), a(5)=>
      tap_next_EXMPLR276(5), a(4)=>tap_next_EXMPLR276(4), a(3)=>
      tap_next_EXMPLR276(3), a(2)=>tap_next_EXMPLR276(2), a(1)=>
      tap_next_EXMPLR276(1), a(0)=>tap_next_EXMPLR276(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>coef_7_EXMPLR274, 
      b(7)=>coef_7_EXMPLR274, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR276(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR276(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR276(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR276(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR276(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR276(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR276(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR276(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR276(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR276(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR276(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR276(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR276(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR276(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR276(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR276(0)) ;
   coef_7_EXMPLR274 <= '1' ;
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
   signal tap_next_EXMPLR346: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_6_EXMPLR344: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR346(15) ;
   tap_next(14) <= tap_next_EXMPLR346(14) ;
   tap_next(13) <= tap_next_EXMPLR346(13) ;
   tap_next(12) <= tap_next_EXMPLR346(12) ;
   tap_next(11) <= tap_next_EXMPLR346(11) ;
   tap_next(10) <= tap_next_EXMPLR346(10) ;
   tap_next(9) <= tap_next_EXMPLR346(9) ;
   tap_next(8) <= tap_next_EXMPLR346(8) ;
   tap_next(7) <= tap_next_EXMPLR346(7) ;
   tap_next(6) <= tap_next_EXMPLR346(6) ;
   tap_next(5) <= tap_next_EXMPLR346(5) ;
   tap_next(4) <= tap_next_EXMPLR346(4) ;
   tap_next(3) <= tap_next_EXMPLR346(3) ;
   tap_next(2) <= tap_next_EXMPLR346(2) ;
   tap_next(1) <= tap_next_EXMPLR346(1) ;
   tap_next(0) <= tap_next_EXMPLR346(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR346(15), a(30)=>tap_next_EXMPLR346(15), a(29)=>
      tap_next_EXMPLR346(15), a(28)=>tap_next_EXMPLR346(15), a(27)=>
      tap_next_EXMPLR346(15), a(26)=>tap_next_EXMPLR346(15), a(25)=>
      tap_next_EXMPLR346(15), a(24)=>tap_next_EXMPLR346(15), a(23)=>
      tap_next_EXMPLR346(15), a(22)=>tap_next_EXMPLR346(15), a(21)=>
      tap_next_EXMPLR346(15), a(20)=>tap_next_EXMPLR346(15), a(19)=>
      tap_next_EXMPLR346(15), a(18)=>tap_next_EXMPLR346(15), a(17)=>
      tap_next_EXMPLR346(15), a(16)=>tap_next_EXMPLR346(15), a(15)=>
      tap_next_EXMPLR346(15), a(14)=>tap_next_EXMPLR346(14), a(13)=>
      tap_next_EXMPLR346(13), a(12)=>tap_next_EXMPLR346(12), a(11)=>
      tap_next_EXMPLR346(11), a(10)=>tap_next_EXMPLR346(10), a(9)=>
      tap_next_EXMPLR346(9), a(8)=>tap_next_EXMPLR346(8), a(7)=>
      tap_next_EXMPLR346(7), a(6)=>tap_next_EXMPLR346(6), a(5)=>
      tap_next_EXMPLR346(5), a(4)=>tap_next_EXMPLR346(4), a(3)=>
      tap_next_EXMPLR346(3), a(2)=>tap_next_EXMPLR346(2), a(1)=>
      tap_next_EXMPLR346(1), a(0)=>tap_next_EXMPLR346(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>coef_6_EXMPLR344, 
      b(7)=>coef_6_EXMPLR344, b(6)=>coef_6_EXMPLR344, b(5)=>GND, b(4)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR346(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR346(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR346(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR346(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR346(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR346(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR346(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR346(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR346(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR346(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR346(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR346(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR346(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR346(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR346(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR346(0)) ;
   coef_6_EXMPLR344 <= '1' ;
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
   signal tap_next_EXMPLR416: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR414: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR416(15) ;
   tap_next(14) <= tap_next_EXMPLR416(14) ;
   tap_next(13) <= tap_next_EXMPLR416(13) ;
   tap_next(12) <= tap_next_EXMPLR416(12) ;
   tap_next(11) <= tap_next_EXMPLR416(11) ;
   tap_next(10) <= tap_next_EXMPLR416(10) ;
   tap_next(9) <= tap_next_EXMPLR416(9) ;
   tap_next(8) <= tap_next_EXMPLR416(8) ;
   tap_next(7) <= tap_next_EXMPLR416(7) ;
   tap_next(6) <= tap_next_EXMPLR416(6) ;
   tap_next(5) <= tap_next_EXMPLR416(5) ;
   tap_next(4) <= tap_next_EXMPLR416(4) ;
   tap_next(3) <= tap_next_EXMPLR416(3) ;
   tap_next(2) <= tap_next_EXMPLR416(2) ;
   tap_next(1) <= tap_next_EXMPLR416(1) ;
   tap_next(0) <= tap_next_EXMPLR416(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR416(15), a(30)=>tap_next_EXMPLR416(15), a(29)=>
      tap_next_EXMPLR416(15), a(28)=>tap_next_EXMPLR416(15), a(27)=>
      tap_next_EXMPLR416(15), a(26)=>tap_next_EXMPLR416(15), a(25)=>
      tap_next_EXMPLR416(15), a(24)=>tap_next_EXMPLR416(15), a(23)=>
      tap_next_EXMPLR416(15), a(22)=>tap_next_EXMPLR416(15), a(21)=>
      tap_next_EXMPLR416(15), a(20)=>tap_next_EXMPLR416(15), a(19)=>
      tap_next_EXMPLR416(15), a(18)=>tap_next_EXMPLR416(15), a(17)=>
      tap_next_EXMPLR416(15), a(16)=>tap_next_EXMPLR416(15), a(15)=>
      tap_next_EXMPLR416(15), a(14)=>tap_next_EXMPLR416(14), a(13)=>
      tap_next_EXMPLR416(13), a(12)=>tap_next_EXMPLR416(12), a(11)=>
      tap_next_EXMPLR416(11), a(10)=>tap_next_EXMPLR416(10), a(9)=>
      tap_next_EXMPLR416(9), a(8)=>tap_next_EXMPLR416(8), a(7)=>
      tap_next_EXMPLR416(7), a(6)=>tap_next_EXMPLR416(6), a(5)=>
      tap_next_EXMPLR416(5), a(4)=>tap_next_EXMPLR416(4), a(3)=>
      tap_next_EXMPLR416(3), a(2)=>tap_next_EXMPLR416(2), a(1)=>
      tap_next_EXMPLR416(1), a(0)=>tap_next_EXMPLR416(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR414, b(8)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR416(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR416(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR416(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR416(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR416(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR416(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR416(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR416(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR416(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR416(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR416(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR416(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR416(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR416(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR416(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR416(0)) ;
   coef_9_EXMPLR414 <= '1' ;
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
   signal tap_next_EXMPLR486: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR484: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR486(15) ;
   tap_next(14) <= tap_next_EXMPLR486(14) ;
   tap_next(13) <= tap_next_EXMPLR486(13) ;
   tap_next(12) <= tap_next_EXMPLR486(12) ;
   tap_next(11) <= tap_next_EXMPLR486(11) ;
   tap_next(10) <= tap_next_EXMPLR486(10) ;
   tap_next(9) <= tap_next_EXMPLR486(9) ;
   tap_next(8) <= tap_next_EXMPLR486(8) ;
   tap_next(7) <= tap_next_EXMPLR486(7) ;
   tap_next(6) <= tap_next_EXMPLR486(6) ;
   tap_next(5) <= tap_next_EXMPLR486(5) ;
   tap_next(4) <= tap_next_EXMPLR486(4) ;
   tap_next(3) <= tap_next_EXMPLR486(3) ;
   tap_next(2) <= tap_next_EXMPLR486(2) ;
   tap_next(1) <= tap_next_EXMPLR486(1) ;
   tap_next(0) <= tap_next_EXMPLR486(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR486(15), a(30)=>tap_next_EXMPLR486(15), a(29)=>
      tap_next_EXMPLR486(15), a(28)=>tap_next_EXMPLR486(15), a(27)=>
      tap_next_EXMPLR486(15), a(26)=>tap_next_EXMPLR486(15), a(25)=>
      tap_next_EXMPLR486(15), a(24)=>tap_next_EXMPLR486(15), a(23)=>
      tap_next_EXMPLR486(15), a(22)=>tap_next_EXMPLR486(15), a(21)=>
      tap_next_EXMPLR486(15), a(20)=>tap_next_EXMPLR486(15), a(19)=>
      tap_next_EXMPLR486(15), a(18)=>tap_next_EXMPLR486(15), a(17)=>
      tap_next_EXMPLR486(15), a(16)=>tap_next_EXMPLR486(15), a(15)=>
      tap_next_EXMPLR486(15), a(14)=>tap_next_EXMPLR486(14), a(13)=>
      tap_next_EXMPLR486(13), a(12)=>tap_next_EXMPLR486(12), a(11)=>
      tap_next_EXMPLR486(11), a(10)=>tap_next_EXMPLR486(10), a(9)=>
      tap_next_EXMPLR486(9), a(8)=>tap_next_EXMPLR486(8), a(7)=>
      tap_next_EXMPLR486(7), a(6)=>tap_next_EXMPLR486(6), a(5)=>
      tap_next_EXMPLR486(5), a(4)=>tap_next_EXMPLR486(4), a(3)=>
      tap_next_EXMPLR486(3), a(2)=>tap_next_EXMPLR486(2), a(1)=>
      tap_next_EXMPLR486(1), a(0)=>tap_next_EXMPLR486(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR484, b(8)=>GND, 
      b(7)=>coef_9_EXMPLR484, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR486(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR486(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR486(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR486(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR486(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR486(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR486(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR486(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR486(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR486(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR486(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR486(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR486(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR486(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR486(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR486(0)) ;
   coef_9_EXMPLR484 <= '1' ;
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
   signal tap_next_EXMPLR556: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR554: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR556(15) ;
   tap_next(14) <= tap_next_EXMPLR556(14) ;
   tap_next(13) <= tap_next_EXMPLR556(13) ;
   tap_next(12) <= tap_next_EXMPLR556(12) ;
   tap_next(11) <= tap_next_EXMPLR556(11) ;
   tap_next(10) <= tap_next_EXMPLR556(10) ;
   tap_next(9) <= tap_next_EXMPLR556(9) ;
   tap_next(8) <= tap_next_EXMPLR556(8) ;
   tap_next(7) <= tap_next_EXMPLR556(7) ;
   tap_next(6) <= tap_next_EXMPLR556(6) ;
   tap_next(5) <= tap_next_EXMPLR556(5) ;
   tap_next(4) <= tap_next_EXMPLR556(4) ;
   tap_next(3) <= tap_next_EXMPLR556(3) ;
   tap_next(2) <= tap_next_EXMPLR556(2) ;
   tap_next(1) <= tap_next_EXMPLR556(1) ;
   tap_next(0) <= tap_next_EXMPLR556(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR556(15), a(30)=>tap_next_EXMPLR556(15), a(29)=>
      tap_next_EXMPLR556(15), a(28)=>tap_next_EXMPLR556(15), a(27)=>
      tap_next_EXMPLR556(15), a(26)=>tap_next_EXMPLR556(15), a(25)=>
      tap_next_EXMPLR556(15), a(24)=>tap_next_EXMPLR556(15), a(23)=>
      tap_next_EXMPLR556(15), a(22)=>tap_next_EXMPLR556(15), a(21)=>
      tap_next_EXMPLR556(15), a(20)=>tap_next_EXMPLR556(15), a(19)=>
      tap_next_EXMPLR556(15), a(18)=>tap_next_EXMPLR556(15), a(17)=>
      tap_next_EXMPLR556(15), a(16)=>tap_next_EXMPLR556(15), a(15)=>
      tap_next_EXMPLR556(15), a(14)=>tap_next_EXMPLR556(14), a(13)=>
      tap_next_EXMPLR556(13), a(12)=>tap_next_EXMPLR556(12), a(11)=>
      tap_next_EXMPLR556(11), a(10)=>tap_next_EXMPLR556(10), a(9)=>
      tap_next_EXMPLR556(9), a(8)=>tap_next_EXMPLR556(8), a(7)=>
      tap_next_EXMPLR556(7), a(6)=>tap_next_EXMPLR556(6), a(5)=>
      tap_next_EXMPLR556(5), a(4)=>tap_next_EXMPLR556(4), a(3)=>
      tap_next_EXMPLR556(3), a(2)=>tap_next_EXMPLR556(2), a(1)=>
      tap_next_EXMPLR556(1), a(0)=>tap_next_EXMPLR556(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR554, b(8)=>GND, 
      b(7)=>coef_9_EXMPLR554, b(6)=>coef_9_EXMPLR554, b(5)=>GND, b(4)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR556(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR556(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR556(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR556(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR556(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR556(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR556(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR556(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR556(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR556(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR556(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR556(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR556(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR556(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR556(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR556(0)) ;
   coef_9_EXMPLR554 <= '1' ;
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
   signal tap_next_EXMPLR626: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR624: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR626(15) ;
   tap_next(14) <= tap_next_EXMPLR626(14) ;
   tap_next(13) <= tap_next_EXMPLR626(13) ;
   tap_next(12) <= tap_next_EXMPLR626(12) ;
   tap_next(11) <= tap_next_EXMPLR626(11) ;
   tap_next(10) <= tap_next_EXMPLR626(10) ;
   tap_next(9) <= tap_next_EXMPLR626(9) ;
   tap_next(8) <= tap_next_EXMPLR626(8) ;
   tap_next(7) <= tap_next_EXMPLR626(7) ;
   tap_next(6) <= tap_next_EXMPLR626(6) ;
   tap_next(5) <= tap_next_EXMPLR626(5) ;
   tap_next(4) <= tap_next_EXMPLR626(4) ;
   tap_next(3) <= tap_next_EXMPLR626(3) ;
   tap_next(2) <= tap_next_EXMPLR626(2) ;
   tap_next(1) <= tap_next_EXMPLR626(1) ;
   tap_next(0) <= tap_next_EXMPLR626(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR626(15), a(30)=>tap_next_EXMPLR626(15), a(29)=>
      tap_next_EXMPLR626(15), a(28)=>tap_next_EXMPLR626(15), a(27)=>
      tap_next_EXMPLR626(15), a(26)=>tap_next_EXMPLR626(15), a(25)=>
      tap_next_EXMPLR626(15), a(24)=>tap_next_EXMPLR626(15), a(23)=>
      tap_next_EXMPLR626(15), a(22)=>tap_next_EXMPLR626(15), a(21)=>
      tap_next_EXMPLR626(15), a(20)=>tap_next_EXMPLR626(15), a(19)=>
      tap_next_EXMPLR626(15), a(18)=>tap_next_EXMPLR626(15), a(17)=>
      tap_next_EXMPLR626(15), a(16)=>tap_next_EXMPLR626(15), a(15)=>
      tap_next_EXMPLR626(15), a(14)=>tap_next_EXMPLR626(14), a(13)=>
      tap_next_EXMPLR626(13), a(12)=>tap_next_EXMPLR626(12), a(11)=>
      tap_next_EXMPLR626(11), a(10)=>tap_next_EXMPLR626(10), a(9)=>
      tap_next_EXMPLR626(9), a(8)=>tap_next_EXMPLR626(8), a(7)=>
      tap_next_EXMPLR626(7), a(6)=>tap_next_EXMPLR626(6), a(5)=>
      tap_next_EXMPLR626(5), a(4)=>tap_next_EXMPLR626(4), a(3)=>
      tap_next_EXMPLR626(3), a(2)=>tap_next_EXMPLR626(2), a(1)=>
      tap_next_EXMPLR626(1), a(0)=>tap_next_EXMPLR626(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR624, b(8)=>
      coef_8_EXMPLR624, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR626(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR626(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR626(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR626(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR626(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR626(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR626(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR626(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR626(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR626(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR626(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR626(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR626(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR626(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR626(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR626(0)) ;
   coef_8_EXMPLR624 <= '1' ;
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
   signal tap_next_EXMPLR696: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR694: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR696(15) ;
   tap_next(14) <= tap_next_EXMPLR696(14) ;
   tap_next(13) <= tap_next_EXMPLR696(13) ;
   tap_next(12) <= tap_next_EXMPLR696(12) ;
   tap_next(11) <= tap_next_EXMPLR696(11) ;
   tap_next(10) <= tap_next_EXMPLR696(10) ;
   tap_next(9) <= tap_next_EXMPLR696(9) ;
   tap_next(8) <= tap_next_EXMPLR696(8) ;
   tap_next(7) <= tap_next_EXMPLR696(7) ;
   tap_next(6) <= tap_next_EXMPLR696(6) ;
   tap_next(5) <= tap_next_EXMPLR696(5) ;
   tap_next(4) <= tap_next_EXMPLR696(4) ;
   tap_next(3) <= tap_next_EXMPLR696(3) ;
   tap_next(2) <= tap_next_EXMPLR696(2) ;
   tap_next(1) <= tap_next_EXMPLR696(1) ;
   tap_next(0) <= tap_next_EXMPLR696(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR696(15), a(30)=>tap_next_EXMPLR696(15), a(29)=>
      tap_next_EXMPLR696(15), a(28)=>tap_next_EXMPLR696(15), a(27)=>
      tap_next_EXMPLR696(15), a(26)=>tap_next_EXMPLR696(15), a(25)=>
      tap_next_EXMPLR696(15), a(24)=>tap_next_EXMPLR696(15), a(23)=>
      tap_next_EXMPLR696(15), a(22)=>tap_next_EXMPLR696(15), a(21)=>
      tap_next_EXMPLR696(15), a(20)=>tap_next_EXMPLR696(15), a(19)=>
      tap_next_EXMPLR696(15), a(18)=>tap_next_EXMPLR696(15), a(17)=>
      tap_next_EXMPLR696(15), a(16)=>tap_next_EXMPLR696(15), a(15)=>
      tap_next_EXMPLR696(15), a(14)=>tap_next_EXMPLR696(14), a(13)=>
      tap_next_EXMPLR696(13), a(12)=>tap_next_EXMPLR696(12), a(11)=>
      tap_next_EXMPLR696(11), a(10)=>tap_next_EXMPLR696(10), a(9)=>
      tap_next_EXMPLR696(9), a(8)=>tap_next_EXMPLR696(8), a(7)=>
      tap_next_EXMPLR696(7), a(6)=>tap_next_EXMPLR696(6), a(5)=>
      tap_next_EXMPLR696(5), a(4)=>tap_next_EXMPLR696(4), a(3)=>
      tap_next_EXMPLR696(3), a(2)=>tap_next_EXMPLR696(2), a(1)=>
      tap_next_EXMPLR696(1), a(0)=>tap_next_EXMPLR696(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR694, b(8)=>
      coef_8_EXMPLR694, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR696(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR696(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR696(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR696(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR696(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR696(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR696(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR696(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR696(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR696(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR696(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR696(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR696(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR696(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR696(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR696(0)) ;
   coef_8_EXMPLR694 <= '1' ;
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
   signal tap_next_EXMPLR766: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR764: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR766(15) ;
   tap_next(14) <= tap_next_EXMPLR766(14) ;
   tap_next(13) <= tap_next_EXMPLR766(13) ;
   tap_next(12) <= tap_next_EXMPLR766(12) ;
   tap_next(11) <= tap_next_EXMPLR766(11) ;
   tap_next(10) <= tap_next_EXMPLR766(10) ;
   tap_next(9) <= tap_next_EXMPLR766(9) ;
   tap_next(8) <= tap_next_EXMPLR766(8) ;
   tap_next(7) <= tap_next_EXMPLR766(7) ;
   tap_next(6) <= tap_next_EXMPLR766(6) ;
   tap_next(5) <= tap_next_EXMPLR766(5) ;
   tap_next(4) <= tap_next_EXMPLR766(4) ;
   tap_next(3) <= tap_next_EXMPLR766(3) ;
   tap_next(2) <= tap_next_EXMPLR766(2) ;
   tap_next(1) <= tap_next_EXMPLR766(1) ;
   tap_next(0) <= tap_next_EXMPLR766(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR766(15), a(30)=>tap_next_EXMPLR766(15), a(29)=>
      tap_next_EXMPLR766(15), a(28)=>tap_next_EXMPLR766(15), a(27)=>
      tap_next_EXMPLR766(15), a(26)=>tap_next_EXMPLR766(15), a(25)=>
      tap_next_EXMPLR766(15), a(24)=>tap_next_EXMPLR766(15), a(23)=>
      tap_next_EXMPLR766(15), a(22)=>tap_next_EXMPLR766(15), a(21)=>
      tap_next_EXMPLR766(15), a(20)=>tap_next_EXMPLR766(15), a(19)=>
      tap_next_EXMPLR766(15), a(18)=>tap_next_EXMPLR766(15), a(17)=>
      tap_next_EXMPLR766(15), a(16)=>tap_next_EXMPLR766(15), a(15)=>
      tap_next_EXMPLR766(15), a(14)=>tap_next_EXMPLR766(14), a(13)=>
      tap_next_EXMPLR766(13), a(12)=>tap_next_EXMPLR766(12), a(11)=>
      tap_next_EXMPLR766(11), a(10)=>tap_next_EXMPLR766(10), a(9)=>
      tap_next_EXMPLR766(9), a(8)=>tap_next_EXMPLR766(8), a(7)=>
      tap_next_EXMPLR766(7), a(6)=>tap_next_EXMPLR766(6), a(5)=>
      tap_next_EXMPLR766(5), a(4)=>tap_next_EXMPLR766(4), a(3)=>
      tap_next_EXMPLR766(3), a(2)=>tap_next_EXMPLR766(2), a(1)=>
      tap_next_EXMPLR766(1), a(0)=>tap_next_EXMPLR766(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR764, b(8)=>
      coef_8_EXMPLR764, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR766(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR766(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR766(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR766(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR766(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR766(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR766(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR766(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR766(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR766(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR766(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR766(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR766(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR766(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR766(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR766(0)) ;
   coef_8_EXMPLR764 <= '1' ;
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
   signal tap_next_EXMPLR836: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR834: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR836(15) ;
   tap_next(14) <= tap_next_EXMPLR836(14) ;
   tap_next(13) <= tap_next_EXMPLR836(13) ;
   tap_next(12) <= tap_next_EXMPLR836(12) ;
   tap_next(11) <= tap_next_EXMPLR836(11) ;
   tap_next(10) <= tap_next_EXMPLR836(10) ;
   tap_next(9) <= tap_next_EXMPLR836(9) ;
   tap_next(8) <= tap_next_EXMPLR836(8) ;
   tap_next(7) <= tap_next_EXMPLR836(7) ;
   tap_next(6) <= tap_next_EXMPLR836(6) ;
   tap_next(5) <= tap_next_EXMPLR836(5) ;
   tap_next(4) <= tap_next_EXMPLR836(4) ;
   tap_next(3) <= tap_next_EXMPLR836(3) ;
   tap_next(2) <= tap_next_EXMPLR836(2) ;
   tap_next(1) <= tap_next_EXMPLR836(1) ;
   tap_next(0) <= tap_next_EXMPLR836(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR836(15), a(30)=>tap_next_EXMPLR836(15), a(29)=>
      tap_next_EXMPLR836(15), a(28)=>tap_next_EXMPLR836(15), a(27)=>
      tap_next_EXMPLR836(15), a(26)=>tap_next_EXMPLR836(15), a(25)=>
      tap_next_EXMPLR836(15), a(24)=>tap_next_EXMPLR836(15), a(23)=>
      tap_next_EXMPLR836(15), a(22)=>tap_next_EXMPLR836(15), a(21)=>
      tap_next_EXMPLR836(15), a(20)=>tap_next_EXMPLR836(15), a(19)=>
      tap_next_EXMPLR836(15), a(18)=>tap_next_EXMPLR836(15), a(17)=>
      tap_next_EXMPLR836(15), a(16)=>tap_next_EXMPLR836(15), a(15)=>
      tap_next_EXMPLR836(15), a(14)=>tap_next_EXMPLR836(14), a(13)=>
      tap_next_EXMPLR836(13), a(12)=>tap_next_EXMPLR836(12), a(11)=>
      tap_next_EXMPLR836(11), a(10)=>tap_next_EXMPLR836(10), a(9)=>
      tap_next_EXMPLR836(9), a(8)=>tap_next_EXMPLR836(8), a(7)=>
      tap_next_EXMPLR836(7), a(6)=>tap_next_EXMPLR836(6), a(5)=>
      tap_next_EXMPLR836(5), a(4)=>tap_next_EXMPLR836(4), a(3)=>
      tap_next_EXMPLR836(3), a(2)=>tap_next_EXMPLR836(2), a(1)=>
      tap_next_EXMPLR836(1), a(0)=>tap_next_EXMPLR836(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR834, b(8)=>
      coef_8_EXMPLR834, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR836(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR836(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR836(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR836(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR836(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR836(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR836(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR836(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR836(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR836(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR836(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR836(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR836(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR836(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR836(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR836(0)) ;
   coef_8_EXMPLR834 <= '1' ;
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
   signal tap_next_EXMPLR906: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_8_EXMPLR904: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR906(15) ;
   tap_next(14) <= tap_next_EXMPLR906(14) ;
   tap_next(13) <= tap_next_EXMPLR906(13) ;
   tap_next(12) <= tap_next_EXMPLR906(12) ;
   tap_next(11) <= tap_next_EXMPLR906(11) ;
   tap_next(10) <= tap_next_EXMPLR906(10) ;
   tap_next(9) <= tap_next_EXMPLR906(9) ;
   tap_next(8) <= tap_next_EXMPLR906(8) ;
   tap_next(7) <= tap_next_EXMPLR906(7) ;
   tap_next(6) <= tap_next_EXMPLR906(6) ;
   tap_next(5) <= tap_next_EXMPLR906(5) ;
   tap_next(4) <= tap_next_EXMPLR906(4) ;
   tap_next(3) <= tap_next_EXMPLR906(3) ;
   tap_next(2) <= tap_next_EXMPLR906(2) ;
   tap_next(1) <= tap_next_EXMPLR906(1) ;
   tap_next(0) <= tap_next_EXMPLR906(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR906(15), a(30)=>tap_next_EXMPLR906(15), a(29)=>
      tap_next_EXMPLR906(15), a(28)=>tap_next_EXMPLR906(15), a(27)=>
      tap_next_EXMPLR906(15), a(26)=>tap_next_EXMPLR906(15), a(25)=>
      tap_next_EXMPLR906(15), a(24)=>tap_next_EXMPLR906(15), a(23)=>
      tap_next_EXMPLR906(15), a(22)=>tap_next_EXMPLR906(15), a(21)=>
      tap_next_EXMPLR906(15), a(20)=>tap_next_EXMPLR906(15), a(19)=>
      tap_next_EXMPLR906(15), a(18)=>tap_next_EXMPLR906(15), a(17)=>
      tap_next_EXMPLR906(15), a(16)=>tap_next_EXMPLR906(15), a(15)=>
      tap_next_EXMPLR906(15), a(14)=>tap_next_EXMPLR906(14), a(13)=>
      tap_next_EXMPLR906(13), a(12)=>tap_next_EXMPLR906(12), a(11)=>
      tap_next_EXMPLR906(11), a(10)=>tap_next_EXMPLR906(10), a(9)=>
      tap_next_EXMPLR906(9), a(8)=>tap_next_EXMPLR906(8), a(7)=>
      tap_next_EXMPLR906(7), a(6)=>tap_next_EXMPLR906(6), a(5)=>
      tap_next_EXMPLR906(5), a(4)=>tap_next_EXMPLR906(4), a(3)=>
      tap_next_EXMPLR906(3), a(2)=>tap_next_EXMPLR906(2), a(1)=>
      tap_next_EXMPLR906(1), a(0)=>tap_next_EXMPLR906(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_8_EXMPLR904, b(8)=>
      coef_8_EXMPLR904, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR906(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR906(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR906(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR906(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR906(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR906(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR906(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR906(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR906(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR906(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR906(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR906(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR906(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR906(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR906(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR906(0)) ;
   coef_8_EXMPLR904 <= '1' ;
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
   signal tap_next_EXMPLR976: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR974: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR976(15) ;
   tap_next(14) <= tap_next_EXMPLR976(14) ;
   tap_next(13) <= tap_next_EXMPLR976(13) ;
   tap_next(12) <= tap_next_EXMPLR976(12) ;
   tap_next(11) <= tap_next_EXMPLR976(11) ;
   tap_next(10) <= tap_next_EXMPLR976(10) ;
   tap_next(9) <= tap_next_EXMPLR976(9) ;
   tap_next(8) <= tap_next_EXMPLR976(8) ;
   tap_next(7) <= tap_next_EXMPLR976(7) ;
   tap_next(6) <= tap_next_EXMPLR976(6) ;
   tap_next(5) <= tap_next_EXMPLR976(5) ;
   tap_next(4) <= tap_next_EXMPLR976(4) ;
   tap_next(3) <= tap_next_EXMPLR976(3) ;
   tap_next(2) <= tap_next_EXMPLR976(2) ;
   tap_next(1) <= tap_next_EXMPLR976(1) ;
   tap_next(0) <= tap_next_EXMPLR976(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR976(15), a(30)=>tap_next_EXMPLR976(15), a(29)=>
      tap_next_EXMPLR976(15), a(28)=>tap_next_EXMPLR976(15), a(27)=>
      tap_next_EXMPLR976(15), a(26)=>tap_next_EXMPLR976(15), a(25)=>
      tap_next_EXMPLR976(15), a(24)=>tap_next_EXMPLR976(15), a(23)=>
      tap_next_EXMPLR976(15), a(22)=>tap_next_EXMPLR976(15), a(21)=>
      tap_next_EXMPLR976(15), a(20)=>tap_next_EXMPLR976(15), a(19)=>
      tap_next_EXMPLR976(15), a(18)=>tap_next_EXMPLR976(15), a(17)=>
      tap_next_EXMPLR976(15), a(16)=>tap_next_EXMPLR976(15), a(15)=>
      tap_next_EXMPLR976(15), a(14)=>tap_next_EXMPLR976(14), a(13)=>
      tap_next_EXMPLR976(13), a(12)=>tap_next_EXMPLR976(12), a(11)=>
      tap_next_EXMPLR976(11), a(10)=>tap_next_EXMPLR976(10), a(9)=>
      tap_next_EXMPLR976(9), a(8)=>tap_next_EXMPLR976(8), a(7)=>
      tap_next_EXMPLR976(7), a(6)=>tap_next_EXMPLR976(6), a(5)=>
      tap_next_EXMPLR976(5), a(4)=>tap_next_EXMPLR976(4), a(3)=>
      tap_next_EXMPLR976(3), a(2)=>tap_next_EXMPLR976(2), a(1)=>
      tap_next_EXMPLR976(1), a(0)=>tap_next_EXMPLR976(0), b(31)=>GND, b(30)
      =>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR974, b(8)=>GND, 
      b(7)=>coef_9_EXMPLR974, b(6)=>coef_9_EXMPLR974, b(5)=>GND, b(4)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR976(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR976(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR976(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR976(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR976(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR976(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR976(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR976(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR976(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR976(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR976(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR976(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR976(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR976(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR976(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR976(0)) ;
   coef_9_EXMPLR974 <= '1' ;
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
   signal tap_next_EXMPLR1046: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR1044: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR1046(15) ;
   tap_next(14) <= tap_next_EXMPLR1046(14) ;
   tap_next(13) <= tap_next_EXMPLR1046(13) ;
   tap_next(12) <= tap_next_EXMPLR1046(12) ;
   tap_next(11) <= tap_next_EXMPLR1046(11) ;
   tap_next(10) <= tap_next_EXMPLR1046(10) ;
   tap_next(9) <= tap_next_EXMPLR1046(9) ;
   tap_next(8) <= tap_next_EXMPLR1046(8) ;
   tap_next(7) <= tap_next_EXMPLR1046(7) ;
   tap_next(6) <= tap_next_EXMPLR1046(6) ;
   tap_next(5) <= tap_next_EXMPLR1046(5) ;
   tap_next(4) <= tap_next_EXMPLR1046(4) ;
   tap_next(3) <= tap_next_EXMPLR1046(3) ;
   tap_next(2) <= tap_next_EXMPLR1046(2) ;
   tap_next(1) <= tap_next_EXMPLR1046(1) ;
   tap_next(0) <= tap_next_EXMPLR1046(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR1046(15), a(30)=>tap_next_EXMPLR1046(15), a(29)=>
      tap_next_EXMPLR1046(15), a(28)=>tap_next_EXMPLR1046(15), a(27)=>
      tap_next_EXMPLR1046(15), a(26)=>tap_next_EXMPLR1046(15), a(25)=>
      tap_next_EXMPLR1046(15), a(24)=>tap_next_EXMPLR1046(15), a(23)=>
      tap_next_EXMPLR1046(15), a(22)=>tap_next_EXMPLR1046(15), a(21)=>
      tap_next_EXMPLR1046(15), a(20)=>tap_next_EXMPLR1046(15), a(19)=>
      tap_next_EXMPLR1046(15), a(18)=>tap_next_EXMPLR1046(15), a(17)=>
      tap_next_EXMPLR1046(15), a(16)=>tap_next_EXMPLR1046(15), a(15)=>
      tap_next_EXMPLR1046(15), a(14)=>tap_next_EXMPLR1046(14), a(13)=>
      tap_next_EXMPLR1046(13), a(12)=>tap_next_EXMPLR1046(12), a(11)=>
      tap_next_EXMPLR1046(11), a(10)=>tap_next_EXMPLR1046(10), a(9)=>
      tap_next_EXMPLR1046(9), a(8)=>tap_next_EXMPLR1046(8), a(7)=>
      tap_next_EXMPLR1046(7), a(6)=>tap_next_EXMPLR1046(6), a(5)=>
      tap_next_EXMPLR1046(5), a(4)=>tap_next_EXMPLR1046(4), a(3)=>
      tap_next_EXMPLR1046(3), a(2)=>tap_next_EXMPLR1046(2), a(1)=>
      tap_next_EXMPLR1046(1), a(0)=>tap_next_EXMPLR1046(0), b(31)=>GND, 
      b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR1044, b(8)=>GND, 
      b(7)=>coef_9_EXMPLR1044, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR1046(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR1046(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR1046(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR1046(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR1046(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR1046(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR1046(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR1046(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR1046(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR1046(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR1046(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR1046(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR1046(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR1046(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR1046(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR1046(0)) ;
   coef_9_EXMPLR1044 <= '1' ;
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
   signal tap_next_EXMPLR1116: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR1114: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR1116(15) ;
   tap_next(14) <= tap_next_EXMPLR1116(14) ;
   tap_next(13) <= tap_next_EXMPLR1116(13) ;
   tap_next(12) <= tap_next_EXMPLR1116(12) ;
   tap_next(11) <= tap_next_EXMPLR1116(11) ;
   tap_next(10) <= tap_next_EXMPLR1116(10) ;
   tap_next(9) <= tap_next_EXMPLR1116(9) ;
   tap_next(8) <= tap_next_EXMPLR1116(8) ;
   tap_next(7) <= tap_next_EXMPLR1116(7) ;
   tap_next(6) <= tap_next_EXMPLR1116(6) ;
   tap_next(5) <= tap_next_EXMPLR1116(5) ;
   tap_next(4) <= tap_next_EXMPLR1116(4) ;
   tap_next(3) <= tap_next_EXMPLR1116(3) ;
   tap_next(2) <= tap_next_EXMPLR1116(2) ;
   tap_next(1) <= tap_next_EXMPLR1116(1) ;
   tap_next(0) <= tap_next_EXMPLR1116(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR1116(15), a(30)=>tap_next_EXMPLR1116(15), a(29)=>
      tap_next_EXMPLR1116(15), a(28)=>tap_next_EXMPLR1116(15), a(27)=>
      tap_next_EXMPLR1116(15), a(26)=>tap_next_EXMPLR1116(15), a(25)=>
      tap_next_EXMPLR1116(15), a(24)=>tap_next_EXMPLR1116(15), a(23)=>
      tap_next_EXMPLR1116(15), a(22)=>tap_next_EXMPLR1116(15), a(21)=>
      tap_next_EXMPLR1116(15), a(20)=>tap_next_EXMPLR1116(15), a(19)=>
      tap_next_EXMPLR1116(15), a(18)=>tap_next_EXMPLR1116(15), a(17)=>
      tap_next_EXMPLR1116(15), a(16)=>tap_next_EXMPLR1116(15), a(15)=>
      tap_next_EXMPLR1116(15), a(14)=>tap_next_EXMPLR1116(14), a(13)=>
      tap_next_EXMPLR1116(13), a(12)=>tap_next_EXMPLR1116(12), a(11)=>
      tap_next_EXMPLR1116(11), a(10)=>tap_next_EXMPLR1116(10), a(9)=>
      tap_next_EXMPLR1116(9), a(8)=>tap_next_EXMPLR1116(8), a(7)=>
      tap_next_EXMPLR1116(7), a(6)=>tap_next_EXMPLR1116(6), a(5)=>
      tap_next_EXMPLR1116(5), a(4)=>tap_next_EXMPLR1116(4), a(3)=>
      tap_next_EXMPLR1116(3), a(2)=>tap_next_EXMPLR1116(2), a(1)=>
      tap_next_EXMPLR1116(1), a(0)=>tap_next_EXMPLR1116(0), b(31)=>GND, 
      b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR1114, b(8)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR1116(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR1116(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR1116(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR1116(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR1116(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR1116(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR1116(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR1116(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR1116(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR1116(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR1116(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR1116(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR1116(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR1116(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR1116(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR1116(0)) ;
   coef_9_EXMPLR1114 <= '1' ;
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
   signal tap_next_EXMPLR1186: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_6_EXMPLR1184: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR1186(15) ;
   tap_next(14) <= tap_next_EXMPLR1186(14) ;
   tap_next(13) <= tap_next_EXMPLR1186(13) ;
   tap_next(12) <= tap_next_EXMPLR1186(12) ;
   tap_next(11) <= tap_next_EXMPLR1186(11) ;
   tap_next(10) <= tap_next_EXMPLR1186(10) ;
   tap_next(9) <= tap_next_EXMPLR1186(9) ;
   tap_next(8) <= tap_next_EXMPLR1186(8) ;
   tap_next(7) <= tap_next_EXMPLR1186(7) ;
   tap_next(6) <= tap_next_EXMPLR1186(6) ;
   tap_next(5) <= tap_next_EXMPLR1186(5) ;
   tap_next(4) <= tap_next_EXMPLR1186(4) ;
   tap_next(3) <= tap_next_EXMPLR1186(3) ;
   tap_next(2) <= tap_next_EXMPLR1186(2) ;
   tap_next(1) <= tap_next_EXMPLR1186(1) ;
   tap_next(0) <= tap_next_EXMPLR1186(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR1186(15), a(30)=>tap_next_EXMPLR1186(15), a(29)=>
      tap_next_EXMPLR1186(15), a(28)=>tap_next_EXMPLR1186(15), a(27)=>
      tap_next_EXMPLR1186(15), a(26)=>tap_next_EXMPLR1186(15), a(25)=>
      tap_next_EXMPLR1186(15), a(24)=>tap_next_EXMPLR1186(15), a(23)=>
      tap_next_EXMPLR1186(15), a(22)=>tap_next_EXMPLR1186(15), a(21)=>
      tap_next_EXMPLR1186(15), a(20)=>tap_next_EXMPLR1186(15), a(19)=>
      tap_next_EXMPLR1186(15), a(18)=>tap_next_EXMPLR1186(15), a(17)=>
      tap_next_EXMPLR1186(15), a(16)=>tap_next_EXMPLR1186(15), a(15)=>
      tap_next_EXMPLR1186(15), a(14)=>tap_next_EXMPLR1186(14), a(13)=>
      tap_next_EXMPLR1186(13), a(12)=>tap_next_EXMPLR1186(12), a(11)=>
      tap_next_EXMPLR1186(11), a(10)=>tap_next_EXMPLR1186(10), a(9)=>
      tap_next_EXMPLR1186(9), a(8)=>tap_next_EXMPLR1186(8), a(7)=>
      tap_next_EXMPLR1186(7), a(6)=>tap_next_EXMPLR1186(6), a(5)=>
      tap_next_EXMPLR1186(5), a(4)=>tap_next_EXMPLR1186(4), a(3)=>
      tap_next_EXMPLR1186(3), a(2)=>tap_next_EXMPLR1186(2), a(1)=>
      tap_next_EXMPLR1186(1), a(0)=>tap_next_EXMPLR1186(0), b(31)=>GND, 
      b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>coef_6_EXMPLR1184, 
      b(7)=>coef_6_EXMPLR1184, b(6)=>coef_6_EXMPLR1184, b(5)=>GND, b(4)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR1186(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR1186(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR1186(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR1186(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR1186(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR1186(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR1186(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR1186(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR1186(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR1186(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR1186(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR1186(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR1186(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR1186(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR1186(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR1186(0)) ;
   coef_6_EXMPLR1184 <= '1' ;
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
   signal tap_next_EXMPLR1256: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_7_EXMPLR1254: std_logic ;
   
   signal DANGLING : std_logic_vector (16 downto 0 );

begin
   tap_next(15) <= tap_next_EXMPLR1256(15) ;
   tap_next(14) <= tap_next_EXMPLR1256(14) ;
   tap_next(13) <= tap_next_EXMPLR1256(13) ;
   tap_next(12) <= tap_next_EXMPLR1256(12) ;
   tap_next(11) <= tap_next_EXMPLR1256(11) ;
   tap_next(10) <= tap_next_EXMPLR1256(10) ;
   tap_next(9) <= tap_next_EXMPLR1256(9) ;
   tap_next(8) <= tap_next_EXMPLR1256(8) ;
   tap_next(7) <= tap_next_EXMPLR1256(7) ;
   tap_next(6) <= tap_next_EXMPLR1256(6) ;
   tap_next(5) <= tap_next_EXMPLR1256(5) ;
   tap_next(4) <= tap_next_EXMPLR1256(4) ;
   tap_next(3) <= tap_next_EXMPLR1256(3) ;
   tap_next(2) <= tap_next_EXMPLR1256(2) ;
   tap_next(1) <= tap_next_EXMPLR1256(1) ;
   tap_next(0) <= tap_next_EXMPLR1256(0) ;
   GND <= '0' ;
   prod_mults28_0 : mult_32s_32s_32s port map ( a(31)=>
      tap_next_EXMPLR1256(15), a(30)=>tap_next_EXMPLR1256(15), a(29)=>
      tap_next_EXMPLR1256(15), a(28)=>tap_next_EXMPLR1256(15), a(27)=>
      tap_next_EXMPLR1256(15), a(26)=>tap_next_EXMPLR1256(15), a(25)=>
      tap_next_EXMPLR1256(15), a(24)=>tap_next_EXMPLR1256(15), a(23)=>
      tap_next_EXMPLR1256(15), a(22)=>tap_next_EXMPLR1256(15), a(21)=>
      tap_next_EXMPLR1256(15), a(20)=>tap_next_EXMPLR1256(15), a(19)=>
      tap_next_EXMPLR1256(15), a(18)=>tap_next_EXMPLR1256(15), a(17)=>
      tap_next_EXMPLR1256(15), a(16)=>tap_next_EXMPLR1256(15), a(15)=>
      tap_next_EXMPLR1256(15), a(14)=>tap_next_EXMPLR1256(14), a(13)=>
      tap_next_EXMPLR1256(13), a(12)=>tap_next_EXMPLR1256(12), a(11)=>
      tap_next_EXMPLR1256(11), a(10)=>tap_next_EXMPLR1256(10), a(9)=>
      tap_next_EXMPLR1256(9), a(8)=>tap_next_EXMPLR1256(8), a(7)=>
      tap_next_EXMPLR1256(7), a(6)=>tap_next_EXMPLR1256(6), a(5)=>
      tap_next_EXMPLR1256(5), a(4)=>tap_next_EXMPLR1256(4), a(3)=>
      tap_next_EXMPLR1256(3), a(2)=>tap_next_EXMPLR1256(2), a(1)=>
      tap_next_EXMPLR1256(1), a(0)=>tap_next_EXMPLR1256(0), b(31)=>GND, 
      b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>coef_7_EXMPLR1254, 
      b(7)=>coef_7_EXMPLR1254, b(6)=>GND, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR1256(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR1256(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR1256(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR1256(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR1256(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR1256(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR1256(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR1256(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR1256(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR1256(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR1256(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR1256(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR1256(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR1256(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR1256(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR1256(0)) ;
   coef_7_EXMPLR1254 <= '1' ;
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
   signal tap_next_EXMPLR1326: std_logic_vector (15 DOWNTO 0) ;
   
   signal prod: std_logic_vector (15 DOWNTO 0) ;
   
   signal GND, coef_9_EXMPLR1324: std_logic ;
   
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
      tap_next_EXMPLR1326(15), a(30)=>tap_next_EXMPLR1326(15), a(29)=>
      tap_next_EXMPLR1326(15), a(28)=>tap_next_EXMPLR1326(15), a(27)=>
      tap_next_EXMPLR1326(15), a(26)=>tap_next_EXMPLR1326(15), a(25)=>
      tap_next_EXMPLR1326(15), a(24)=>tap_next_EXMPLR1326(15), a(23)=>
      tap_next_EXMPLR1326(15), a(22)=>tap_next_EXMPLR1326(15), a(21)=>
      tap_next_EXMPLR1326(15), a(20)=>tap_next_EXMPLR1326(15), a(19)=>
      tap_next_EXMPLR1326(15), a(18)=>tap_next_EXMPLR1326(15), a(17)=>
      tap_next_EXMPLR1326(15), a(16)=>tap_next_EXMPLR1326(15), a(15)=>
      tap_next_EXMPLR1326(15), a(14)=>tap_next_EXMPLR1326(14), a(13)=>
      tap_next_EXMPLR1326(13), a(12)=>tap_next_EXMPLR1326(12), a(11)=>
      tap_next_EXMPLR1326(11), a(10)=>tap_next_EXMPLR1326(10), a(9)=>
      tap_next_EXMPLR1326(9), a(8)=>tap_next_EXMPLR1326(8), a(7)=>
      tap_next_EXMPLR1326(7), a(6)=>tap_next_EXMPLR1326(6), a(5)=>
      tap_next_EXMPLR1326(5), a(4)=>tap_next_EXMPLR1326(4), a(3)=>
      tap_next_EXMPLR1326(3), a(2)=>tap_next_EXMPLR1326(2), a(1)=>
      tap_next_EXMPLR1326(1), a(0)=>tap_next_EXMPLR1326(0), b(31)=>GND, 
      b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, 
      b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, 
      b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, 
      b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>coef_9_EXMPLR1324, b(8)=>GND, 
      b(7)=>GND, b(6)=>coef_9_EXMPLR1324, b(5)=>GND, b(4)=>GND, b(3)=>GND, 
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
   DFFPC (tap_prev(15),GND,GND,clk,tap_next_EXMPLR1326(15)) ;
   DFFPC (tap_prev(14),GND,GND,clk,tap_next_EXMPLR1326(14)) ;
   DFFPC (tap_prev(13),GND,GND,clk,tap_next_EXMPLR1326(13)) ;
   DFFPC (tap_prev(12),GND,GND,clk,tap_next_EXMPLR1326(12)) ;
   DFFPC (tap_prev(11),GND,GND,clk,tap_next_EXMPLR1326(11)) ;
   DFFPC (tap_prev(10),GND,GND,clk,tap_next_EXMPLR1326(10)) ;
   DFFPC (tap_prev(9),GND,GND,clk,tap_next_EXMPLR1326(9)) ;
   DFFPC (tap_prev(8),GND,GND,clk,tap_next_EXMPLR1326(8)) ;
   DFFPC (tap_prev(7),GND,GND,clk,tap_next_EXMPLR1326(7)) ;
   DFFPC (tap_prev(6),GND,GND,clk,tap_next_EXMPLR1326(6)) ;
   DFFPC (tap_prev(5),GND,GND,clk,tap_next_EXMPLR1326(5)) ;
   DFFPC (tap_prev(4),GND,GND,clk,tap_next_EXMPLR1326(4)) ;
   DFFPC (tap_prev(3),GND,GND,clk,tap_next_EXMPLR1326(3)) ;
   DFFPC (tap_prev(2),GND,GND,clk,tap_next_EXMPLR1326(2)) ;
   DFFPC (tap_prev(1),GND,GND,clk,tap_next_EXMPLR1326(1)) ;
   DFFPC (tap_prev(0),GND,GND,clk,tap_next_EXMPLR1326(0)) ;
   coef_9_EXMPLR1324 <= '1' ;
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

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity audio_pll is 
   port (
      inclk0 : IN std_logic ;
      c0 : OUT std_logic ;
      c1 : OUT std_logic) ;
end audio_pll ;

architecture main_unfold_1149 of audio_pll is 
   signal GND: std_logic ;
   
   signal DANGLING : std_logic_vector (8 downto 0 );

begin
   c0 <= GND ;
   GND <= '0' ;
   altpll_EXMPLR1366 : altpll
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
       port map ( clk(9)=>DANGLING(0), clk(8)=>DANGLING(1), clk(7)=>DANGLING
      (2), clk(6)=>DANGLING(3), clk(5)=>DANGLING(4), clk(4)=>DANGLING(5), 
      clk(3)=>DANGLING(6), clk(2)=>DANGLING(7), clk(1)=>c1, clk(0)=>DANGLING
      (8), inclk(1)=>GND, inclk(0)=>inclk0);
end main_unfold_1149 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_sclear_clock_0_4 ;

architecture INTERFACE of counter_up_sclear_clock_0_4 is 
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
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx11, nx12, nx13, nx14, nx15, nx16, nx17, nx18, nx19, nx20, 
      nx21, nx22, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx12 ;
   q(2) <= nx14 ;
   q(1) <= nx16 ;
   q(0) <= nx18 ;
   GND <= '0' ;
   DFFPC (nx11,GND,GND,clock,nx12) ;
   DFFPC (nx13,GND,GND,clock,nx14) ;
   DFFPC (nx15,GND,GND,clock,nx16) ;
   DFFPC (nx17,GND,GND,clock,nx18) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx12, a(2)=>nx14, a(1)=>
      nx16, a(0)=>nx18, d(3)=>nx19, d(2)=>nx20, d(1)=>nx21, d(0)=>nx22, cout
      =>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx11 <= nx19 AND NOT_SCLEAR ;
   nx13 <= nx20 AND NOT_SCLEAR ;
   nx15 <= nx21 AND NOT_SCLEAR ;
   nx17 <= nx22 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_0_9 is 
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
end counter_up_sclear_clock_0_9 ;

architecture INTERFACE of counter_up_sclear_clock_0_9 is 
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
   component inc_9u_9u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx21, nx22, nx23, nx24, nx25, nx26, nx27, nx28, nx29, nx30, 
      nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, 
      nx43, nx44, nx45, nx46, nx47, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(8) <= nx22 ;
   q(7) <= nx24 ;
   q(6) <= nx26 ;
   q(5) <= nx28 ;
   q(4) <= nx30 ;
   q(3) <= nx32 ;
   q(2) <= nx34 ;
   q(1) <= nx36 ;
   q(0) <= nx38 ;
   GND <= '0' ;
   DFFPC (nx21,GND,GND,clock,nx22) ;
   DFFPC (nx23,GND,GND,clock,nx24) ;
   DFFPC (nx25,GND,GND,clock,nx26) ;
   DFFPC (nx27,GND,GND,clock,nx28) ;
   DFFPC (nx29,GND,GND,clock,nx30) ;
   DFFPC (nx31,GND,GND,clock,nx32) ;
   DFFPC (nx33,GND,GND,clock,nx34) ;
   DFFPC (nx35,GND,GND,clock,nx36) ;
   DFFPC (nx37,GND,GND,clock,nx38) ;
   inc : inc_9u_9u_0_0 port map ( cin=>PWR, a(8)=>nx22, a(7)=>nx24, a(6)=>
      nx26, a(5)=>nx28, a(4)=>nx30, a(3)=>nx32, a(2)=>nx34, a(1)=>nx36, a(0)
      =>nx38, d(8)=>nx39, d(7)=>nx40, d(6)=>nx41, d(5)=>nx42, d(4)=>nx43, 
      d(3)=>nx44, d(2)=>nx45, d(1)=>nx46, d(0)=>nx47, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx21 <= nx39 AND NOT_SCLEAR ;
   nx23 <= nx40 AND NOT_SCLEAR ;
   nx25 <= nx41 AND NOT_SCLEAR ;
   nx27 <= nx42 AND NOT_SCLEAR ;
   nx29 <= nx43 AND NOT_SCLEAR ;
   nx31 <= nx44 AND NOT_SCLEAR ;
   nx33 <= nx45 AND NOT_SCLEAR ;
   nx35 <= nx46 AND NOT_SCLEAR ;
   nx37 <= nx47 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity audio_dac is 
   port (
      o_aud_bck : OUT std_logic ;
      o_aud_lrck : OUT std_logic ;
      clock_27 : IN std_logic ;
      reset_n : IN std_logic ;
      clock_18_4 : OUT std_logic) ;
end audio_dac ;

architecture main of audio_dac is 
   component audio_pll
      port (
         inclk0 : IN std_logic ;
         c0 : OUT std_logic ;
         c1 : OUT std_logic) ;
   end component ;
   component and_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_sclear_clock_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component counter_up_sclear_clock_0_9
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
   signal o_aud_bck_EXMPLR1399, o_aud_lrck_EXMPLR1400, clock_18_4_EXMPLR1403
   : std_logic ;
   
   signal bck_div: std_logic_vector (3 DOWNTO 0) ;
   
   signal lrck_1x_div: std_logic_vector (8 DOWNTO 0) ;
   
   signal PWR, GND, not_reset_n, not_o_aud_bck, rtlc0n86, not_rtlc0n184, 
      not_bck_div_3, not_bck_div_2, not_rtlcn0, rtlc0n183, rtlc0n184, 
      not_o_aud_lrck, rtlc1n86, not_rtlc1n185, not_lrck_1x_div_8, 
      not_lrck_1x_div_7, rtlc1n181, not_rtlcn1, rtlc1n184, rtlc1n185, rtlcn0, 
      rtlcn1: std_logic ;
   
   signal DANGLING : std_logic_vector (13 downto 0 );

begin
   o_aud_bck <= o_aud_bck_EXMPLR1399 ;
   o_aud_lrck <= o_aud_lrck_EXMPLR1400 ;
   clock_18_4 <= clock_18_4_EXMPLR1403 ;
   PWR <= '1' ;
   GND <= '0' ;
   p1 : audio_pll port map ( inclk0=>clock_27, c0=>DANGLING(0), c1=>
      clock_18_4_EXMPLR1403);
   not_o_aud_bck <= NOT o_aud_bck_EXMPLR1399 ;
   rtlc0n86 <= not_reset_n OR not_rtlc0n184 ;
   not_reset_n <= NOT reset_n ;
   not_rtlc0n184 <= NOT rtlc0n184 ;
   not_bck_div_3 <= NOT bck_div(3) ;
   not_bck_div_2 <= NOT bck_div(2) ;
   rtlc0n183 <= not_bck_div_2 OR not_rtlcn0 ;
   rtlc0n184 <= not_bck_div_3 AND rtlc0n183 ;
   not_o_aud_lrck <= NOT o_aud_lrck_EXMPLR1400 ;
   rtlc1n86 <= not_reset_n OR not_rtlc1n185 ;
   not_rtlc1n185 <= NOT rtlc1n185 ;
   not_lrck_1x_div_8 <= NOT lrck_1x_div(8) ;
   not_lrck_1x_div_7 <= NOT lrck_1x_div(7) ;
   rtlc1_45_and_23 : and_6u_6u port map ( a(5)=>lrck_1x_div(5), a(4)=>
      lrck_1x_div(4), a(3)=>lrck_1x_div(3), a(2)=>lrck_1x_div(2), a(1)=>
      lrck_1x_div(1), a(0)=>lrck_1x_div(0), d=>rtlc1n181);
   rtlc1n184 <= not_lrck_1x_div_7 OR not_rtlcn1 ;
   rtlc1n185 <= not_lrck_1x_div_8 AND rtlc1n184 ;
   not_rtlcn0 <= NOT rtlcn0 ;
   not_rtlcn1 <= NOT rtlcn1 ;
   rtlcn0 <= bck_div(1) OR bck_div(0) ;
   rtlcn1 <= lrck_1x_div(6) OR rtlc1n181 ;
   modgen_counter_bck_div : counter_up_sclear_clock_0_4 port map ( clock=>
      clock_18_4_EXMPLR1403, q(3)=>bck_div(3), q(2)=>bck_div(2), q(1)=>
      bck_div(1), q(0)=>bck_div(0), clk_en=>PWR, aclear=>GND, sload=>GND, 
      data(3)=>DANGLING(1), data(2)=>DANGLING(2), data(1)=>DANGLING(3), 
      data(0)=>DANGLING(4), aset=>GND, sclear=>rtlc0n86, updn=>PWR, cnt_en=>
      PWR);
   modgen_counter_lrck_1x_div : counter_up_sclear_clock_0_9 port map ( clock
      =>clock_18_4_EXMPLR1403, q(8)=>lrck_1x_div(8), q(7)=>lrck_1x_div(7), 
      q(6)=>lrck_1x_div(6), q(5)=>lrck_1x_div(5), q(4)=>lrck_1x_div(4), q(3)
      =>lrck_1x_div(3), q(2)=>lrck_1x_div(2), q(1)=>lrck_1x_div(1), q(0)=>
      lrck_1x_div(0), clk_en=>PWR, aclear=>GND, sload=>GND, data(8)=>
      DANGLING(5), data(7)=>DANGLING(6), data(6)=>DANGLING(7), data(5)=>
      DANGLING(8), data(4)=>DANGLING(9), data(3)=>DANGLING(10), data(2)=>
      DANGLING(11), data(1)=>DANGLING(12), data(0)=>DANGLING(13), aset=>GND, 
      sclear=>rtlc1n86, updn=>PWR, cnt_en=>PWR);
   DFFRSE (not_o_aud_bck,GND,not_reset_n,not_rtlc0n184,clock_18_4_EXMPLR1403,
   o_aud_bck_EXMPLR1399) ;
   DFFRSE (not_o_aud_lrck,GND,not_reset_n,not_rtlc1n185,
   clock_18_4_EXMPLR1403,o_aud_lrck_EXMPLR1400) ;
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_clock_0_4 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (3 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (3 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end counter_up_clock_0_4 ;

architecture INTERFACE of counter_up_clock_0_4 is 
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
   component inc_4u_4u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic_vector (3 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx11, nx12, nx13, nx14, nx15, nx16, nx17, nx18, PWR: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(3) <= nx12 ;
   q(2) <= nx14 ;
   q(1) <= nx16 ;
   q(0) <= nx18 ;
   GND <= '0' ;
   DFFPC (nx11,GND,GND,clock,nx12) ;
   DFFPC (nx13,GND,GND,clock,nx14) ;
   DFFPC (nx15,GND,GND,clock,nx16) ;
   DFFPC (nx17,GND,GND,clock,nx18) ;
   inc : inc_4u_4u_0_0 port map ( cin=>PWR, a(3)=>nx12, a(2)=>nx14, a(1)=>
      nx16, a(0)=>nx18, d(3)=>nx11, d(2)=>nx13, d(1)=>nx15, d(0)=>nx17, cout
      =>DANGLING(0));
   PWR <= '1' ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_13_7_128_3_fir_top_main is 
   port (
      address : IN std_logic_vector (6 DOWNTO 0) ;
      inclock : IN std_logic ;
      outclock : IN std_logic ;
      outclockena : IN std_logic ;
      q : OUT std_logic_vector (12 DOWNTO 0)) ;
end rom_13_7_128_3_fir_top_main ;

architecture INTERFACE of rom_13_7_128_3_fir_top_main is 
   component mux_128u_128u
      port (
         a : IN std_logic_vector (127 DOWNTO 0) ;
         b : IN std_logic_vector (127 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal GND, PWR: std_logic ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   modgen_mux_92 : mux_128u_128u port map ( a(127)=>PWR, a(126)=>PWR, a(125)
      =>PWR, a(124)=>PWR, a(123)=>PWR, a(122)=>PWR, a(121)=>PWR, a(120)=>PWR, 
      a(119)=>PWR, a(118)=>PWR, a(117)=>PWR, a(116)=>PWR, a(115)=>PWR, 
      a(114)=>PWR, a(113)=>PWR, a(112)=>PWR, a(111)=>PWR, a(110)=>PWR, 
      a(109)=>PWR, a(108)=>PWR, a(107)=>PWR, a(106)=>PWR, a(105)=>PWR, 
      a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>GND, a(100)=>GND, a(99)
      =>GND, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>GND, a(82)=>GND, 
      a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>GND, a(71)=>GND, a(70)=>GND, 
      a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>GND, 
      a(39)=>GND, a(38)=>GND, a(37)=>GND, a(36)=>GND, a(35)=>GND, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(12));
   modgen_mux_93 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>PWR, a(103)=>PWR, a(102)=>PWR, a(101)=>PWR, a(100)=>PWR, a(99)
      =>PWR, a(98)=>PWR, a(97)=>PWR, a(96)=>PWR, a(95)=>PWR, a(94)=>PWR, 
      a(93)=>PWR, a(92)=>PWR, a(91)=>PWR, a(90)=>PWR, a(89)=>PWR, a(88)=>PWR, 
      a(87)=>PWR, a(86)=>PWR, a(85)=>PWR, a(84)=>PWR, a(83)=>GND, a(82)=>GND, 
      a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>GND, a(71)=>GND, a(70)=>GND, 
      a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>GND, 
      a(39)=>GND, a(38)=>GND, a(37)=>GND, a(36)=>GND, a(35)=>GND, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(11));
   modgen_mux_94 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>GND, a(100)=>GND, a(99)
      =>GND, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>PWR, a(82)=>PWR, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>PWR, a(77)=>PWR, a(76)=>PWR, 
      a(75)=>PWR, a(74)=>PWR, a(73)=>PWR, a(72)=>PWR, a(71)=>PWR, a(70)=>PWR, 
      a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>PWR, a(65)=>PWR, a(64)=>PWR, 
      a(63)=>PWR, a(62)=>PWR, a(61)=>PWR, a(60)=>PWR, a(59)=>PWR, a(58)=>PWR, 
      a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, 
      a(51)=>PWR, a(50)=>PWR, a(49)=>PWR, a(48)=>PWR, a(47)=>PWR, a(46)=>PWR, 
      a(45)=>PWR, a(44)=>PWR, a(43)=>PWR, a(42)=>PWR, a(41)=>PWR, a(40)=>GND, 
      a(39)=>GND, a(38)=>GND, a(37)=>GND, a(36)=>GND, a(35)=>GND, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(10));
   modgen_mux_95 : mux_128u_128u port map ( a(127)=>PWR, a(126)=>PWR, a(125)
      =>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>GND, a(100)=>GND, a(99)
      =>GND, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>PWR, a(82)=>PWR, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>PWR, a(77)=>PWR, a(76)=>PWR, 
      a(75)=>PWR, a(74)=>PWR, a(73)=>PWR, a(72)=>PWR, a(71)=>PWR, a(70)=>PWR, 
      a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>PWR, a(65)=>PWR, a(64)=>PWR, 
      a(63)=>PWR, a(62)=>PWR, a(61)=>GND, a(60)=>GND, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>PWR, 
      a(39)=>PWR, a(38)=>PWR, a(37)=>PWR, a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, 
      a(33)=>PWR, a(32)=>PWR, a(31)=>PWR, a(30)=>PWR, a(29)=>PWR, a(28)=>PWR, 
      a(27)=>PWR, a(26)=>PWR, a(25)=>PWR, a(24)=>PWR, a(23)=>PWR, a(22)=>PWR, 
      a(21)=>PWR, a(20)=>PWR, a(19)=>GND, a(18)=>GND, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(9));
   modgen_mux_96 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>PWR, a(124)=>PWR, a(123)=>PWR, a(122)=>PWR, a(121)=>PWR, a(120)=>PWR, 
      a(119)=>PWR, a(118)=>PWR, a(117)=>PWR, a(116)=>PWR, a(115)=>GND, 
      a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>PWR, a(103)=>PWR, a(102)=>PWR, a(101)=>PWR, a(100)=>PWR, a(99)
      =>PWR, a(98)=>PWR, a(97)=>PWR, a(96)=>PWR, a(95)=>PWR, a(94)=>PWR, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>PWR, a(82)=>PWR, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>PWR, a(77)=>PWR, a(76)=>PWR, 
      a(75)=>PWR, a(74)=>PWR, a(73)=>PWR, a(72)=>GND, a(71)=>GND, a(70)=>GND, 
      a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>PWR, a(60)=>PWR, a(59)=>PWR, a(58)=>PWR, 
      a(57)=>PWR, a(56)=>PWR, a(55)=>PWR, a(54)=>PWR, a(53)=>PWR, a(52)=>PWR, 
      a(51)=>GND, a(50)=>GND, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>PWR, 
      a(39)=>PWR, a(38)=>PWR, a(37)=>PWR, a(36)=>PWR, a(35)=>PWR, a(34)=>PWR, 
      a(33)=>PWR, a(32)=>PWR, a(31)=>PWR, a(30)=>PWR, a(29)=>GND, a(28)=>GND, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>PWR, a(18)=>PWR, a(17)=>PWR, a(16)=>PWR, 
      a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, a(12)=>PWR, a(11)=>PWR, a(10)=>PWR, 
      a(9)=>PWR, a(8)=>GND, a(7)=>GND, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(8));
   modgen_mux_97 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>PWR, a(124)=>PWR, a(123)=>GND, a(122)=>GND, a(121)=>GND, a(120)=>GND, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>PWR, 
      a(114)=>PWR, a(113)=>GND, a(112)=>GND, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>PWR, a(103)=>PWR, a(102)=>GND, a(101)=>GND, a(100)=>GND, a(99)
      =>GND, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>PWR, a(92)=>PWR, a(91)=>GND, a(90)=>GND, a(89)=>GND, a(88)=>GND, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>PWR, a(82)=>PWR, 
      a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>PWR, a(71)=>PWR, a(70)=>GND, 
      a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>PWR, a(60)=>PWR, a(59)=>GND, a(58)=>GND, 
      a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>PWR, a(50)=>PWR, a(49)=>GND, a(48)=>GND, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>PWR, 
      a(39)=>PWR, a(38)=>GND, a(37)=>GND, a(36)=>GND, a(35)=>GND, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>PWR, a(28)=>PWR, 
      a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>PWR, a(18)=>PWR, a(17)=>GND, a(16)=>GND, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>PWR, a(7)=>PWR, a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)
      =>GND, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(7));
   modgen_mux_98 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>PWR, a(122)=>PWR, a(121)=>PWR, a(120)=>PWR, 
      a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>PWR, a(112)=>PWR, a(111)=>PWR, a(110)=>PWR, 
      a(109)=>PWR, a(108)=>GND, a(107)=>GND, a(106)=>GND, a(105)=>GND, 
      a(104)=>GND, a(103)=>GND, a(102)=>PWR, a(101)=>PWR, a(100)=>PWR, a(99)
      =>PWR, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>PWR, a(89)=>PWR, a(88)=>PWR, 
      a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, a(83)=>GND, a(82)=>GND, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>PWR, a(77)=>PWR, a(76)=>GND, 
      a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>GND, a(71)=>GND, a(70)=>PWR, 
      a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>GND, a(65)=>GND, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>PWR, a(58)=>PWR, 
      a(57)=>PWR, a(56)=>PWR, a(55)=>GND, a(54)=>GND, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>PWR, a(48)=>PWR, a(47)=>PWR, a(46)=>PWR, 
      a(45)=>PWR, a(44)=>GND, a(43)=>GND, a(42)=>GND, a(41)=>GND, a(40)=>GND, 
      a(39)=>GND, a(38)=>PWR, a(37)=>PWR, a(36)=>PWR, a(35)=>PWR, a(34)=>GND, 
      a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>PWR, a(26)=>PWR, a(25)=>PWR, a(24)=>PWR, a(23)=>GND, a(22)=>GND, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>PWR, a(16)=>PWR, 
      a(15)=>PWR, a(14)=>PWR, a(13)=>PWR, a(12)=>GND, a(11)=>GND, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>PWR, a(5)=>PWR, a(4)=>PWR, a(3)
      =>PWR, a(2)=>GND, a(1)=>GND, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(6));
   modgen_mux_99 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, a(125)
      =>GND, a(124)=>GND, a(123)=>PWR, a(122)=>PWR, a(121)=>GND, a(120)=>GND, 
      a(119)=>PWR, a(118)=>PWR, a(117)=>GND, a(116)=>GND, a(115)=>GND, 
      a(114)=>GND, a(113)=>PWR, a(112)=>PWR, a(111)=>GND, a(110)=>GND, 
      a(109)=>GND, a(108)=>PWR, a(107)=>PWR, a(106)=>GND, a(105)=>GND, 
      a(104)=>GND, a(103)=>GND, a(102)=>PWR, a(101)=>PWR, a(100)=>GND, a(99)
      =>GND, a(98)=>PWR, a(97)=>PWR, a(96)=>GND, a(95)=>GND, a(94)=>GND, 
      a(93)=>GND, a(92)=>GND, a(91)=>PWR, a(90)=>PWR, a(89)=>GND, a(88)=>GND, 
      a(87)=>PWR, a(86)=>PWR, a(85)=>GND, a(84)=>GND, a(83)=>GND, a(82)=>GND, 
      a(81)=>PWR, a(80)=>PWR, a(79)=>GND, a(78)=>GND, a(77)=>GND, a(76)=>PWR, 
      a(75)=>PWR, a(74)=>GND, a(73)=>GND, a(72)=>GND, a(71)=>GND, a(70)=>PWR, 
      a(69)=>PWR, a(68)=>GND, a(67)=>GND, a(66)=>PWR, a(65)=>PWR, a(64)=>GND, 
      a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, a(59)=>PWR, a(58)=>PWR, 
      a(57)=>GND, a(56)=>GND, a(55)=>PWR, a(54)=>PWR, a(53)=>GND, a(52)=>GND, 
      a(51)=>GND, a(50)=>GND, a(49)=>PWR, a(48)=>PWR, a(47)=>GND, a(46)=>GND, 
      a(45)=>GND, a(44)=>PWR, a(43)=>PWR, a(42)=>GND, a(41)=>GND, a(40)=>GND, 
      a(39)=>GND, a(38)=>PWR, a(37)=>PWR, a(36)=>GND, a(35)=>GND, a(34)=>PWR, 
      a(33)=>PWR, a(32)=>GND, a(31)=>GND, a(30)=>GND, a(29)=>GND, a(28)=>GND, 
      a(27)=>PWR, a(26)=>PWR, a(25)=>GND, a(24)=>GND, a(23)=>PWR, a(22)=>PWR, 
      a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>GND, a(17)=>PWR, a(16)=>PWR, 
      a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>PWR, a(11)=>PWR, a(10)=>GND, 
      a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>PWR, a(5)=>PWR, a(4)=>GND, a(3)
      =>GND, a(2)=>PWR, a(1)=>PWR, a(0)=>GND, b(127)=>GND, b(126)=>GND, 
      b(125)=>GND, b(124)=>GND, b(123)=>GND, b(122)=>GND, b(121)=>GND, 
      b(120)=>GND, b(119)=>GND, b(118)=>GND, b(117)=>GND, b(116)=>GND, 
      b(115)=>GND, b(114)=>GND, b(113)=>GND, b(112)=>GND, b(111)=>GND, 
      b(110)=>GND, b(109)=>GND, b(108)=>GND, b(107)=>GND, b(106)=>GND, 
      b(105)=>GND, b(104)=>GND, b(103)=>GND, b(102)=>GND, b(101)=>GND, 
      b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>GND, b(96)=>GND, b(95)=>
      GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)=>GND, b(90)=>GND, b(89)
      =>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, b(85)=>GND, b(84)=>GND, 
      b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, b(79)=>GND, b(78)=>GND, 
      b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, b(73)=>GND, b(72)=>GND, 
      b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, b(67)=>GND, b(66)=>GND, 
      b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, 
      b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, 
      b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, 
      b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, 
      b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, 
      b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, 
      b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, 
      b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, 
      b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, 
      b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>
      address(6), b(5)=>address(5), b(4)=>address(4), b(3)=>address(3), b(2)
      =>address(2), b(1)=>address(1), b(0)=>address(0), d=>q(5));
   modgen_mux_100 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, 
      a(125)=>PWR, a(124)=>GND, a(123)=>PWR, a(122)=>GND, a(121)=>PWR, 
      a(120)=>GND, a(119)=>PWR, a(118)=>GND, a(117)=>PWR, a(116)=>GND, 
      a(115)=>PWR, a(114)=>GND, a(113)=>PWR, a(112)=>GND, a(111)=>PWR, 
      a(110)=>PWR, a(109)=>GND, a(108)=>PWR, a(107)=>GND, a(106)=>PWR, 
      a(105)=>GND, a(104)=>PWR, a(103)=>GND, a(102)=>PWR, a(101)=>GND, 
      a(100)=>PWR, a(99)=>GND, a(98)=>PWR, a(97)=>GND, a(96)=>PWR, a(95)=>
      GND, a(94)=>GND, a(93)=>PWR, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)
      =>PWR, a(88)=>GND, a(87)=>PWR, a(86)=>GND, a(85)=>PWR, a(84)=>GND, 
      a(83)=>PWR, a(82)=>GND, a(81)=>PWR, a(80)=>GND, a(79)=>PWR, a(78)=>PWR, 
      a(77)=>GND, a(76)=>PWR, a(75)=>GND, a(74)=>PWR, a(73)=>GND, a(72)=>PWR, 
      a(71)=>GND, a(70)=>PWR, a(69)=>GND, a(68)=>PWR, a(67)=>GND, a(66)=>PWR, 
      a(65)=>GND, a(64)=>PWR, a(63)=>GND, a(62)=>GND, a(61)=>PWR, a(60)=>GND, 
      a(59)=>PWR, a(58)=>GND, a(57)=>PWR, a(56)=>GND, a(55)=>PWR, a(54)=>GND, 
      a(53)=>PWR, a(52)=>GND, a(51)=>PWR, a(50)=>GND, a(49)=>PWR, a(48)=>GND, 
      a(47)=>PWR, a(46)=>PWR, a(45)=>GND, a(44)=>PWR, a(43)=>GND, a(42)=>PWR, 
      a(41)=>GND, a(40)=>PWR, a(39)=>GND, a(38)=>PWR, a(37)=>GND, a(36)=>PWR, 
      a(35)=>GND, a(34)=>PWR, a(33)=>GND, a(32)=>PWR, a(31)=>GND, a(30)=>GND, 
      a(29)=>PWR, a(28)=>GND, a(27)=>PWR, a(26)=>GND, a(25)=>PWR, a(24)=>GND, 
      a(23)=>PWR, a(22)=>GND, a(21)=>PWR, a(20)=>GND, a(19)=>PWR, a(18)=>GND, 
      a(17)=>PWR, a(16)=>GND, a(15)=>PWR, a(14)=>PWR, a(13)=>GND, a(12)=>PWR, 
      a(11)=>GND, a(10)=>PWR, a(9)=>GND, a(8)=>PWR, a(7)=>GND, a(6)=>PWR, 
      a(5)=>GND, a(4)=>PWR, a(3)=>GND, a(2)=>PWR, a(1)=>GND, a(0)=>PWR, 
      b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, b(123)=>GND, 
      b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, b(118)=>GND, 
      b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, b(113)=>GND, 
      b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, b(108)=>GND, 
      b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, b(103)=>GND, 
      b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>
      GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)
      =>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, 
      b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, 
      b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, 
      b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, 
      b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, 
      b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, 
      b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, 
      b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, 
      b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, 
      b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, 
      b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, 
      b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, 
      b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, 
      b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, 
      b(7)=>GND, b(6)=>address(6), b(5)=>address(5), b(4)=>address(4), b(3)
      =>address(3), b(2)=>address(2), b(1)=>address(1), b(0)=>address(0), d
      =>q(4));
   modgen_mux_101 : mux_128u_128u port map ( a(127)=>PWR, a(126)=>GND, 
      a(125)=>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, 
      a(120)=>GND, a(119)=>GND, a(118)=>GND, a(117)=>GND, a(116)=>GND, 
      a(115)=>GND, a(114)=>PWR, a(113)=>PWR, a(112)=>PWR, a(111)=>PWR, 
      a(110)=>GND, a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, 
      a(105)=>GND, a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>GND, 
      a(100)=>GND, a(99)=>GND, a(98)=>PWR, a(97)=>PWR, a(96)=>PWR, a(95)=>
      PWR, a(94)=>GND, a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)
      =>GND, a(88)=>GND, a(87)=>GND, a(86)=>GND, a(85)=>GND, a(84)=>GND, 
      a(83)=>GND, a(82)=>PWR, a(81)=>PWR, a(80)=>PWR, a(79)=>PWR, a(78)=>GND, 
      a(77)=>GND, a(76)=>GND, a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>GND, 
      a(71)=>GND, a(70)=>GND, a(69)=>GND, a(68)=>GND, a(67)=>GND, a(66)=>PWR, 
      a(65)=>PWR, a(64)=>PWR, a(63)=>PWR, a(62)=>GND, a(61)=>GND, a(60)=>GND, 
      a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, a(54)=>GND, 
      a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>PWR, a(49)=>PWR, a(48)=>PWR, 
      a(47)=>PWR, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, 
      a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, a(36)=>GND, 
      a(35)=>GND, a(34)=>PWR, a(33)=>PWR, a(32)=>PWR, a(31)=>PWR, a(30)=>GND, 
      a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>GND, 
      a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, a(18)=>PWR, 
      a(17)=>PWR, a(16)=>PWR, a(15)=>PWR, a(14)=>GND, a(13)=>GND, a(12)=>GND, 
      a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, a(6)=>GND, 
      a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>PWR, a(1)=>PWR, a(0)=>PWR, 
      b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, b(123)=>GND, 
      b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, b(118)=>GND, 
      b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, b(113)=>GND, 
      b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, b(108)=>GND, 
      b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, b(103)=>GND, 
      b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>
      GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)
      =>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, 
      b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, 
      b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, 
      b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, 
      b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, 
      b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, 
      b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, 
      b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, 
      b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, 
      b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, 
      b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, 
      b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, 
      b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, 
      b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, 
      b(7)=>GND, b(6)=>address(6), b(5)=>address(5), b(4)=>address(4), b(3)
      =>address(3), b(2)=>address(2), b(1)=>address(1), b(0)=>address(0), d
      =>q(3));
   modgen_mux_102 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, 
      a(125)=>GND, a(124)=>GND, a(123)=>GND, a(122)=>GND, a(121)=>GND, 
      a(120)=>PWR, a(119)=>PWR, a(118)=>PWR, a(117)=>PWR, a(116)=>PWR, 
      a(115)=>PWR, a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, 
      a(110)=>GND, a(109)=>GND, a(108)=>GND, a(107)=>GND, a(106)=>GND, 
      a(105)=>GND, a(104)=>PWR, a(103)=>PWR, a(102)=>PWR, a(101)=>PWR, 
      a(100)=>PWR, a(99)=>PWR, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>
      GND, a(94)=>GND, a(93)=>GND, a(92)=>GND, a(91)=>GND, a(90)=>GND, a(89)
      =>GND, a(88)=>PWR, a(87)=>PWR, a(86)=>PWR, a(85)=>PWR, a(84)=>PWR, 
      a(83)=>PWR, a(82)=>GND, a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, 
      a(77)=>GND, a(76)=>GND, a(75)=>GND, a(74)=>GND, a(73)=>GND, a(72)=>PWR, 
      a(71)=>PWR, a(70)=>PWR, a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>GND, 
      a(65)=>GND, a(64)=>GND, a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, 
      a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>PWR, a(55)=>PWR, a(54)=>PWR, 
      a(53)=>PWR, a(52)=>PWR, a(51)=>PWR, a(50)=>GND, a(49)=>GND, a(48)=>GND, 
      a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, a(42)=>GND, 
      a(41)=>GND, a(40)=>PWR, a(39)=>PWR, a(38)=>PWR, a(37)=>PWR, a(36)=>PWR, 
      a(35)=>PWR, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, 
      a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, a(24)=>PWR, 
      a(23)=>PWR, a(22)=>PWR, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, a(18)=>GND, 
      a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, 
      a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>PWR, a(7)=>PWR, a(6)=>PWR, 
      a(5)=>PWR, a(4)=>PWR, a(3)=>PWR, a(2)=>GND, a(1)=>GND, a(0)=>GND, 
      b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, b(123)=>GND, 
      b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, b(118)=>GND, 
      b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, b(113)=>GND, 
      b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, b(108)=>GND, 
      b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, b(103)=>GND, 
      b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>
      GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)
      =>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, 
      b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, 
      b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, 
      b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, 
      b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, 
      b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, 
      b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, 
      b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, 
      b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, 
      b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, 
      b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, 
      b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, 
      b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, 
      b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, 
      b(7)=>GND, b(6)=>address(6), b(5)=>address(5), b(4)=>address(4), b(3)
      =>address(3), b(2)=>address(2), b(1)=>address(1), b(0)=>address(0), d
      =>q(2));
   modgen_mux_103 : mux_128u_128u port map ( a(127)=>GND, a(126)=>GND, 
      a(125)=>GND, a(124)=>GND, a(123)=>PWR, a(122)=>PWR, a(121)=>PWR, 
      a(120)=>GND, a(119)=>GND, a(118)=>GND, a(117)=>PWR, a(116)=>PWR, 
      a(115)=>PWR, a(114)=>GND, a(113)=>GND, a(112)=>GND, a(111)=>GND, 
      a(110)=>GND, a(109)=>GND, a(108)=>GND, a(107)=>PWR, a(106)=>PWR, 
      a(105)=>PWR, a(104)=>GND, a(103)=>GND, a(102)=>GND, a(101)=>PWR, 
      a(100)=>PWR, a(99)=>PWR, a(98)=>GND, a(97)=>GND, a(96)=>GND, a(95)=>
      GND, a(94)=>GND, a(93)=>GND, a(92)=>GND, a(91)=>PWR, a(90)=>PWR, a(89)
      =>PWR, a(88)=>GND, a(87)=>GND, a(86)=>GND, a(85)=>PWR, a(84)=>PWR, 
      a(83)=>PWR, a(82)=>GND, a(81)=>GND, a(80)=>GND, a(79)=>GND, a(78)=>GND, 
      a(77)=>GND, a(76)=>GND, a(75)=>PWR, a(74)=>PWR, a(73)=>PWR, a(72)=>GND, 
      a(71)=>GND, a(70)=>GND, a(69)=>PWR, a(68)=>PWR, a(67)=>PWR, a(66)=>GND, 
      a(65)=>GND, a(64)=>GND, a(63)=>GND, a(62)=>GND, a(61)=>GND, a(60)=>GND, 
      a(59)=>PWR, a(58)=>PWR, a(57)=>PWR, a(56)=>GND, a(55)=>GND, a(54)=>GND, 
      a(53)=>PWR, a(52)=>PWR, a(51)=>PWR, a(50)=>GND, a(49)=>GND, a(48)=>GND, 
      a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>PWR, a(42)=>PWR, 
      a(41)=>PWR, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>PWR, a(36)=>PWR, 
      a(35)=>PWR, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, a(30)=>GND, 
      a(29)=>GND, a(28)=>GND, a(27)=>PWR, a(26)=>PWR, a(25)=>PWR, a(24)=>GND, 
      a(23)=>GND, a(22)=>GND, a(21)=>PWR, a(20)=>PWR, a(19)=>PWR, a(18)=>GND, 
      a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, a(12)=>GND, 
      a(11)=>PWR, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>GND, a(6)=>GND, 
      a(5)=>PWR, a(4)=>PWR, a(3)=>PWR, a(2)=>GND, a(1)=>GND, a(0)=>GND, 
      b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, b(123)=>GND, 
      b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, b(118)=>GND, 
      b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, b(113)=>GND, 
      b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, b(108)=>GND, 
      b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, b(103)=>GND, 
      b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>
      GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)
      =>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, 
      b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, 
      b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, 
      b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, 
      b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, 
      b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, 
      b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, 
      b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, 
      b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, 
      b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, 
      b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, 
      b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, 
      b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, 
      b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, 
      b(7)=>GND, b(6)=>address(6), b(5)=>address(5), b(4)=>address(4), b(3)
      =>address(3), b(2)=>address(2), b(1)=>address(1), b(0)=>address(0), d
      =>q(1));
   modgen_mux_104 : mux_128u_128u port map ( a(127)=>PWR, a(126)=>GND, 
      a(125)=>PWR, a(124)=>PWR, a(123)=>GND, a(122)=>PWR, a(121)=>PWR, 
      a(120)=>GND, a(119)=>GND, a(118)=>PWR, a(117)=>GND, a(116)=>GND, 
      a(115)=>PWR, a(114)=>GND, a(113)=>GND, a(112)=>PWR, a(111)=>PWR, 
      a(110)=>GND, a(109)=>PWR, a(108)=>PWR, a(107)=>GND, a(106)=>PWR, 
      a(105)=>PWR, a(104)=>GND, a(103)=>GND, a(102)=>PWR, a(101)=>GND, 
      a(100)=>GND, a(99)=>PWR, a(98)=>GND, a(97)=>GND, a(96)=>PWR, a(95)=>
      PWR, a(94)=>GND, a(93)=>PWR, a(92)=>PWR, a(91)=>GND, a(90)=>PWR, a(89)
      =>PWR, a(88)=>GND, a(87)=>GND, a(86)=>PWR, a(85)=>GND, a(84)=>GND, 
      a(83)=>PWR, a(82)=>GND, a(81)=>GND, a(80)=>PWR, a(79)=>PWR, a(78)=>GND, 
      a(77)=>PWR, a(76)=>PWR, a(75)=>GND, a(74)=>PWR, a(73)=>PWR, a(72)=>GND, 
      a(71)=>GND, a(70)=>PWR, a(69)=>GND, a(68)=>GND, a(67)=>PWR, a(66)=>GND, 
      a(65)=>GND, a(64)=>PWR, a(63)=>PWR, a(62)=>GND, a(61)=>PWR, a(60)=>PWR, 
      a(59)=>GND, a(58)=>PWR, a(57)=>PWR, a(56)=>GND, a(55)=>GND, a(54)=>PWR, 
      a(53)=>GND, a(52)=>GND, a(51)=>PWR, a(50)=>GND, a(49)=>GND, a(48)=>PWR, 
      a(47)=>PWR, a(46)=>GND, a(45)=>PWR, a(44)=>PWR, a(43)=>GND, a(42)=>PWR, 
      a(41)=>PWR, a(40)=>GND, a(39)=>GND, a(38)=>PWR, a(37)=>GND, a(36)=>GND, 
      a(35)=>PWR, a(34)=>GND, a(33)=>GND, a(32)=>PWR, a(31)=>PWR, a(30)=>GND, 
      a(29)=>PWR, a(28)=>PWR, a(27)=>GND, a(26)=>PWR, a(25)=>PWR, a(24)=>GND, 
      a(23)=>GND, a(22)=>PWR, a(21)=>GND, a(20)=>GND, a(19)=>PWR, a(18)=>GND, 
      a(17)=>GND, a(16)=>PWR, a(15)=>PWR, a(14)=>GND, a(13)=>PWR, a(12)=>PWR, 
      a(11)=>GND, a(10)=>PWR, a(9)=>PWR, a(8)=>GND, a(7)=>GND, a(6)=>PWR, 
      a(5)=>GND, a(4)=>GND, a(3)=>PWR, a(2)=>GND, a(1)=>GND, a(0)=>PWR, 
      b(127)=>GND, b(126)=>GND, b(125)=>GND, b(124)=>GND, b(123)=>GND, 
      b(122)=>GND, b(121)=>GND, b(120)=>GND, b(119)=>GND, b(118)=>GND, 
      b(117)=>GND, b(116)=>GND, b(115)=>GND, b(114)=>GND, b(113)=>GND, 
      b(112)=>GND, b(111)=>GND, b(110)=>GND, b(109)=>GND, b(108)=>GND, 
      b(107)=>GND, b(106)=>GND, b(105)=>GND, b(104)=>GND, b(103)=>GND, 
      b(102)=>GND, b(101)=>GND, b(100)=>GND, b(99)=>GND, b(98)=>GND, b(97)=>
      GND, b(96)=>GND, b(95)=>GND, b(94)=>GND, b(93)=>GND, b(92)=>GND, b(91)
      =>GND, b(90)=>GND, b(89)=>GND, b(88)=>GND, b(87)=>GND, b(86)=>GND, 
      b(85)=>GND, b(84)=>GND, b(83)=>GND, b(82)=>GND, b(81)=>GND, b(80)=>GND, 
      b(79)=>GND, b(78)=>GND, b(77)=>GND, b(76)=>GND, b(75)=>GND, b(74)=>GND, 
      b(73)=>GND, b(72)=>GND, b(71)=>GND, b(70)=>GND, b(69)=>GND, b(68)=>GND, 
      b(67)=>GND, b(66)=>GND, b(65)=>GND, b(64)=>GND, b(63)=>GND, b(62)=>GND, 
      b(61)=>GND, b(60)=>GND, b(59)=>GND, b(58)=>GND, b(57)=>GND, b(56)=>GND, 
      b(55)=>GND, b(54)=>GND, b(53)=>GND, b(52)=>GND, b(51)=>GND, b(50)=>GND, 
      b(49)=>GND, b(48)=>GND, b(47)=>GND, b(46)=>GND, b(45)=>GND, b(44)=>GND, 
      b(43)=>GND, b(42)=>GND, b(41)=>GND, b(40)=>GND, b(39)=>GND, b(38)=>GND, 
      b(37)=>GND, b(36)=>GND, b(35)=>GND, b(34)=>GND, b(33)=>GND, b(32)=>GND, 
      b(31)=>GND, b(30)=>GND, b(29)=>GND, b(28)=>GND, b(27)=>GND, b(26)=>GND, 
      b(25)=>GND, b(24)=>GND, b(23)=>GND, b(22)=>GND, b(21)=>GND, b(20)=>GND, 
      b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, b(15)=>GND, b(14)=>GND, 
      b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, b(9)=>GND, b(8)=>GND, 
      b(7)=>GND, b(6)=>address(6), b(5)=>address(5), b(4)=>address(4), b(3)
      =>address(3), b(2)=>address(2), b(1)=>address(1), b(0)=>address(0), d
      =>q(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_new_0_fir_top_main is 
   port (
      rd_data1 : OUT std_logic_vector (12 DOWNTO 0) ;
      addr1 : IN std_logic_vector (6 DOWNTO 0) ;
      rd_clk1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      regce1 : IN std_logic ;
      rst1 : IN std_logic) ;
end rom_new_0_fir_top_main ;

architecture INTERFACE of rom_new_0_fir_top_main is 
   component rom_13_7_128_3_fir_top_main
      port (
         address : IN std_logic_vector (6 DOWNTO 0) ;
         inclock : IN std_logic ;
         outclock : IN std_logic ;
         outclockena : IN std_logic ;
         q : OUT std_logic_vector (12 DOWNTO 0)) ;
   end component ;
   signal nx24, nx26: std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   nx24 <= '0' ;
   nx26 <= '1' ;
   modgen_rom_ix390 : rom_13_7_128_3_fir_top_main port map ( address(6)=>
      addr1(6), address(5)=>addr1(5), address(4)=>addr1(4), address(3)=>
      addr1(3), address(2)=>addr1(2), address(1)=>addr1(1), address(0)=>
      addr1(0), inclock=>DANGLING(0), outclock=>DANGLING(1), outclockena=>
      DANGLING(2), q(12)=>rd_data1(12), q(11)=>rd_data1(11), q(10)=>
      rd_data1(10), q(9)=>rd_data1(9), q(8)=>rd_data1(8), q(7)=>rd_data1(7), 
      q(6)=>rd_data1(6), q(5)=>rd_data1(5), q(4)=>rd_data1(4), q(3)=>
      rd_data1(3), q(2)=>rd_data1(2), q(1)=>rd_data1(1), q(0)=>rd_data1(0));

end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_clock_0_16 is 
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
end counter_up_cnt_en_clock_0_16 ;

architecture INTERFACE of counter_up_cnt_en_clock_0_16 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, nx45, 
      nx46, nx47, nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, nx57, 
      nx58, nx59, nx60, nx61, nx62, nx63, nx64, nx65, nx66, nx67, PWR: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(15) <= nx37 ;
   q(14) <= nx39 ;
   q(13) <= nx41 ;
   q(12) <= nx43 ;
   q(11) <= nx45 ;
   q(10) <= nx47 ;
   q(9) <= nx49 ;
   q(8) <= nx51 ;
   q(7) <= nx53 ;
   q(6) <= nx55 ;
   q(5) <= nx57 ;
   q(4) <= nx59 ;
   q(3) <= nx61 ;
   q(2) <= nx63 ;
   q(1) <= nx65 ;
   q(0) <= nx67 ;
   GND <= '0' ;
   DFFPCE (nx36,GND,GND,cnt_en,clock,nx37) ;
   DFFPCE (nx38,GND,GND,cnt_en,clock,nx39) ;
   DFFPCE (nx40,GND,GND,cnt_en,clock,nx41) ;
   DFFPCE (nx42,GND,GND,cnt_en,clock,nx43) ;
   DFFPCE (nx44,GND,GND,cnt_en,clock,nx45) ;
   DFFPCE (nx46,GND,GND,cnt_en,clock,nx47) ;
   DFFPCE (nx48,GND,GND,cnt_en,clock,nx49) ;
   DFFPCE (nx50,GND,GND,cnt_en,clock,nx51) ;
   DFFPCE (nx52,GND,GND,cnt_en,clock,nx53) ;
   DFFPCE (nx54,GND,GND,cnt_en,clock,nx55) ;
   DFFPCE (nx56,GND,GND,cnt_en,clock,nx57) ;
   DFFPCE (nx58,GND,GND,cnt_en,clock,nx59) ;
   DFFPCE (nx60,GND,GND,cnt_en,clock,nx61) ;
   DFFPCE (nx62,GND,GND,cnt_en,clock,nx63) ;
   DFFPCE (nx64,GND,GND,cnt_en,clock,nx65) ;
   DFFPCE (nx66,GND,GND,cnt_en,clock,nx67) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx37, a(14)=>nx39, 
      a(13)=>nx41, a(12)=>nx43, a(11)=>nx45, a(10)=>nx47, a(9)=>nx49, a(8)=>
      nx51, a(7)=>nx53, a(6)=>nx55, a(5)=>nx57, a(4)=>nx59, a(3)=>nx61, a(2)
      =>nx63, a(1)=>nx65, a(0)=>nx67, d(15)=>nx36, d(14)=>nx38, d(13)=>nx40, 
      d(12)=>nx42, d(11)=>nx44, d(10)=>nx46, d(9)=>nx48, d(8)=>nx50, d(7)=>
      nx52, d(6)=>nx54, d(5)=>nx56, d(4)=>nx58, d(3)=>nx60, d(2)=>nx62, d(1)
      =>nx64, d(0)=>nx66, cout=>DANGLING(0));
   PWR <= '1' ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_sclear_clock_0_16 is 
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
end counter_up_sclear_clock_0_16 ;

architecture INTERFACE of counter_up_sclear_clock_0_16 is 
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
   component inc_16u_16u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx35, nx36, nx37, nx38, nx39, nx40, nx41, nx42, nx43, nx44, 
      nx45, nx46, nx47, nx48, nx49, nx50, nx51, nx52, nx53, nx54, nx55, nx56, 
      nx57, nx58, nx59, nx60, nx61, nx62, nx63, nx64, nx65, nx66, nx67, nx68, 
      nx69, nx70, nx71, nx72, nx73, nx74, nx75, nx76, nx77, nx78, nx79, nx80, 
      nx81, nx82, PWR, NOT_SCLEAR: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(15) <= nx36 ;
   q(14) <= nx38 ;
   q(13) <= nx40 ;
   q(12) <= nx42 ;
   q(11) <= nx44 ;
   q(10) <= nx46 ;
   q(9) <= nx48 ;
   q(8) <= nx50 ;
   q(7) <= nx52 ;
   q(6) <= nx54 ;
   q(5) <= nx56 ;
   q(4) <= nx58 ;
   q(3) <= nx60 ;
   q(2) <= nx62 ;
   q(1) <= nx64 ;
   q(0) <= nx66 ;
   GND <= '0' ;
   DFFPC (nx35,GND,GND,clock,nx36) ;
   DFFPC (nx37,GND,GND,clock,nx38) ;
   DFFPC (nx39,GND,GND,clock,nx40) ;
   DFFPC (nx41,GND,GND,clock,nx42) ;
   DFFPC (nx43,GND,GND,clock,nx44) ;
   DFFPC (nx45,GND,GND,clock,nx46) ;
   DFFPC (nx47,GND,GND,clock,nx48) ;
   DFFPC (nx49,GND,GND,clock,nx50) ;
   DFFPC (nx51,GND,GND,clock,nx52) ;
   DFFPC (nx53,GND,GND,clock,nx54) ;
   DFFPC (nx55,GND,GND,clock,nx56) ;
   DFFPC (nx57,GND,GND,clock,nx58) ;
   DFFPC (nx59,GND,GND,clock,nx60) ;
   DFFPC (nx61,GND,GND,clock,nx62) ;
   DFFPC (nx63,GND,GND,clock,nx64) ;
   DFFPC (nx65,GND,GND,clock,nx66) ;
   inc : inc_16u_16u_0_0 port map ( cin=>PWR, a(15)=>nx36, a(14)=>nx38, 
      a(13)=>nx40, a(12)=>nx42, a(11)=>nx44, a(10)=>nx46, a(9)=>nx48, a(8)=>
      nx50, a(7)=>nx52, a(6)=>nx54, a(5)=>nx56, a(4)=>nx58, a(3)=>nx60, a(2)
      =>nx62, a(1)=>nx64, a(0)=>nx66, d(15)=>nx67, d(14)=>nx68, d(13)=>nx69, 
      d(12)=>nx70, d(11)=>nx71, d(10)=>nx72, d(9)=>nx73, d(8)=>nx74, d(7)=>
      nx75, d(6)=>nx76, d(5)=>nx77, d(4)=>nx78, d(3)=>nx79, d(2)=>nx80, d(1)
      =>nx81, d(0)=>nx82, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_SCLEAR <= NOT sclear ;
   nx35 <= nx67 AND NOT_SCLEAR ;
   nx37 <= nx68 AND NOT_SCLEAR ;
   nx39 <= nx69 AND NOT_SCLEAR ;
   nx41 <= nx70 AND NOT_SCLEAR ;
   nx43 <= nx71 AND NOT_SCLEAR ;
   nx45 <= nx72 AND NOT_SCLEAR ;
   nx47 <= nx73 AND NOT_SCLEAR ;
   nx49 <= nx74 AND NOT_SCLEAR ;
   nx51 <= nx75 AND NOT_SCLEAR ;
   nx53 <= nx76 AND NOT_SCLEAR ;
   nx55 <= nx77 AND NOT_SCLEAR ;
   nx57 <= nx78 AND NOT_SCLEAR ;
   nx59 <= nx79 AND NOT_SCLEAR ;
   nx61 <= nx80 AND NOT_SCLEAR ;
   nx63 <= nx81 AND NOT_SCLEAR ;
   nx65 <= nx82 AND NOT_SCLEAR ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sclear_clock_0_6 is 
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
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sclear_clock_0_6 ;

architecture INTERFACE of counter_up_cnt_en_sclear_clock_0_6 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_6u_6u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic_vector (5 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx16, nx19, nx20, nx21, nx22, nx23, nx24, nx25, nx26, nx27, 
      nx28, nx29, nx30, nx31, nx32, nx33, nx34, nx35, nx36, PWR, NOT_nx15: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(5) <= nx20 ;
   q(4) <= nx22 ;
   q(3) <= nx24 ;
   q(2) <= nx26 ;
   q(1) <= nx28 ;
   q(0) <= nx30 ;
   GND <= '0' ;
   nx16 <= cnt_en OR sclear ;
   DFFPCE (nx19,GND,GND,nx16,clock,nx20) ;
   DFFPCE (nx21,GND,GND,nx16,clock,nx22) ;
   DFFPCE (nx23,GND,GND,nx16,clock,nx24) ;
   DFFPCE (nx25,GND,GND,nx16,clock,nx26) ;
   DFFPCE (nx27,GND,GND,nx16,clock,nx28) ;
   DFFPCE (nx29,GND,GND,nx16,clock,nx30) ;
   inc : inc_6u_6u_0_0 port map ( cin=>PWR, a(5)=>nx20, a(4)=>nx22, a(3)=>
      nx24, a(2)=>nx26, a(1)=>nx28, a(0)=>nx30, d(5)=>nx31, d(4)=>nx32, d(3)
      =>nx33, d(2)=>nx34, d(1)=>nx35, d(0)=>nx36, cout=>DANGLING(0));
   PWR <= '1' ;
   NOT_nx15 <= NOT sclear ;
   nx19 <= nx31 AND NOT_nx15 ;
   nx21 <= nx32 AND NOT_nx15 ;
   nx23 <= nx33 AND NOT_nx15 ;
   nx25 <= nx34 AND NOT_nx15 ;
   nx27 <= nx35 AND NOT_nx15 ;
   nx29 <= nx36 AND NOT_nx15 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_8_6_64_2_i2c_av_config_main is 
   port (
      address : IN std_logic_vector (5 DOWNTO 0) ;
      inclock : IN std_logic ;
      outclock : IN std_logic ;
      outclockena : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0)) ;
end rom_8_6_64_2_i2c_av_config_main ;

architecture INTERFACE of rom_8_6_64_2_i2c_av_config_main is 
   component mux_64u_64u
      port (
         a : IN std_logic_vector (63 DOWNTO 0) ;
         b : IN std_logic_vector (63 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal GND, PWR: std_logic ;

begin
   GND <= '0' ;
   PWR <= '1' ;
   modgen_mux_54 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>PWR, a(8)=>GND, a(7)=>PWR, 
      a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)=>PWR, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(7));
   modgen_mux_55 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>PWR, a(7)=>GND, 
      a(6)=>GND, a(5)=>PWR, a(4)=>GND, a(3)=>PWR, a(2)=>PWR, a(1)=>PWR, a(0)
      =>PWR, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(6));
   modgen_mux_56 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>PWR, a(3)=>PWR, a(2)=>PWR, a(1)=>PWR, a(0)
      =>PWR, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(5));
   modgen_mux_57 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>PWR, a(3)=>PWR, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(4));
   modgen_mux_58 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>PWR, a(8)=>GND, a(7)=>PWR, 
      a(6)=>GND, a(5)=>PWR, a(4)=>GND, a(3)=>PWR, a(2)=>GND, a(1)=>PWR, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(3));
   modgen_mux_59 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>GND, a(4)=>GND, a(3)=>PWR, a(2)=>PWR, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(2));
   modgen_mux_60 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>GND, a(8)=>GND, a(7)=>PWR, 
      a(6)=>PWR, a(5)=>PWR, a(4)=>PWR, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(1));
   modgen_mux_61 : mux_64u_64u port map ( a(63)=>GND, a(62)=>GND, a(61)=>GND, 
      a(60)=>GND, a(59)=>GND, a(58)=>GND, a(57)=>GND, a(56)=>GND, a(55)=>GND, 
      a(54)=>GND, a(53)=>GND, a(52)=>GND, a(51)=>GND, a(50)=>GND, a(49)=>GND, 
      a(48)=>GND, a(47)=>GND, a(46)=>GND, a(45)=>GND, a(44)=>GND, a(43)=>GND, 
      a(42)=>GND, a(41)=>GND, a(40)=>GND, a(39)=>GND, a(38)=>GND, a(37)=>GND, 
      a(36)=>GND, a(35)=>GND, a(34)=>GND, a(33)=>GND, a(32)=>GND, a(31)=>GND, 
      a(30)=>GND, a(29)=>GND, a(28)=>GND, a(27)=>GND, a(26)=>GND, a(25)=>GND, 
      a(24)=>GND, a(23)=>GND, a(22)=>GND, a(21)=>GND, a(20)=>GND, a(19)=>GND, 
      a(18)=>GND, a(17)=>GND, a(16)=>GND, a(15)=>GND, a(14)=>GND, a(13)=>GND, 
      a(12)=>GND, a(11)=>GND, a(10)=>GND, a(9)=>PWR, a(8)=>PWR, a(7)=>GND, 
      a(6)=>GND, a(5)=>GND, a(4)=>GND, a(3)=>GND, a(2)=>GND, a(1)=>GND, a(0)
      =>GND, b(63)=>GND, b(62)=>GND, b(61)=>GND, b(60)=>GND, b(59)=>GND, 
      b(58)=>GND, b(57)=>GND, b(56)=>GND, b(55)=>GND, b(54)=>GND, b(53)=>GND, 
      b(52)=>GND, b(51)=>GND, b(50)=>GND, b(49)=>GND, b(48)=>GND, b(47)=>GND, 
      b(46)=>GND, b(45)=>GND, b(44)=>GND, b(43)=>GND, b(42)=>GND, b(41)=>GND, 
      b(40)=>GND, b(39)=>GND, b(38)=>GND, b(37)=>GND, b(36)=>GND, b(35)=>GND, 
      b(34)=>GND, b(33)=>GND, b(32)=>GND, b(31)=>GND, b(30)=>GND, b(29)=>GND, 
      b(28)=>GND, b(27)=>GND, b(26)=>GND, b(25)=>GND, b(24)=>GND, b(23)=>GND, 
      b(22)=>GND, b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, 
      b(16)=>GND, b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, 
      b(10)=>GND, b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>
      address(5), b(4)=>address(4), b(3)=>address(3), b(2)=>address(2), b(1)
      =>address(1), b(0)=>address(0), d=>q(0));
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity rom_new_0_i2c_av_config_main is 
   port (
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (5 DOWNTO 0) ;
      rd_clk1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      regce1 : IN std_logic ;
      rst1 : IN std_logic) ;
end rom_new_0_i2c_av_config_main ;

architecture INTERFACE of rom_new_0_i2c_av_config_main is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component rom_8_6_64_2_i2c_av_config_main
      port (
         address : IN std_logic_vector (5 DOWNTO 0) ;
         inclock : IN std_logic ;
         outclock : IN std_logic ;
         outclockena : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0)) ;
   end component ;
   signal nx18, nx20, dup_0_lut_data_9, dup_0_lut_data_5, dup_0_lut_data_3, 
      dup_0_lut_data_12, dup_0_lut_data_11, dup_0_lut_data_10, 
      dup_0_lut_data_1, dup_0_lut_data_0: std_logic ;
   
   signal DANGLING : std_logic_vector (2 downto 0 );

begin
   nx18 <= '0' ;
   nx20 <= '1' ;
   DFFPCE (dup_0_lut_data_9,nx18,nx18,rd_ena1,rd_clk1,rd_data1(3)) ;
   DFFPCE (dup_0_lut_data_5,nx18,nx18,rd_ena1,rd_clk1,rd_data1(4)) ;
   DFFPCE (dup_0_lut_data_3,nx18,nx18,rd_ena1,rd_clk1,rd_data1(5)) ;
   DFFPCE (dup_0_lut_data_12,nx18,nx18,rd_ena1,rd_clk1,rd_data1(0)) ;
   DFFPCE (dup_0_lut_data_11,nx18,nx18,rd_ena1,rd_clk1,rd_data1(1)) ;
   DFFPCE (dup_0_lut_data_10,nx18,nx18,rd_ena1,rd_clk1,rd_data1(2)) ;
   DFFPCE (dup_0_lut_data_1,nx18,nx18,rd_ena1,rd_clk1,rd_data1(6)) ;
   DFFPCE (dup_0_lut_data_0,nx18,nx18,rd_ena1,rd_clk1,rd_data1(7)) ;
   modgen_rom_ix89 : rom_8_6_64_2_i2c_av_config_main port map ( address(5)=>
      addr1(5), address(4)=>addr1(4), address(3)=>addr1(3), address(2)=>
      addr1(2), address(1)=>addr1(1), address(0)=>addr1(0), inclock=>
      DANGLING(0), outclock=>DANGLING(1), outclockena=>DANGLING(2), q(7)=>
      dup_0_lut_data_0, q(6)=>dup_0_lut_data_1, q(5)=>dup_0_lut_data_3, q(4)
      =>dup_0_lut_data_5, q(3)=>dup_0_lut_data_9, q(2)=>dup_0_lut_data_10, 
      q(1)=>dup_0_lut_data_11, q(0)=>dup_0_lut_data_12);
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity counter_up_cnt_en_sload_sclear_clock_0_6 is 
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
      cnt_en : IN std_logic) ;
end counter_up_cnt_en_sload_sclear_clock_0_6 ;

architecture INTERFACE of counter_up_cnt_en_sload_sclear_clock_0_6 is 
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component inc_6u_6u_0_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic_vector (5 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal GND, nx16, nx19, nx22, nx23, nx24, nx25, nx26, nx27, nx28, nx29, 
      nx30, nx31, nx32, nx33, nx34, nx35, nx36, nx37, nx38, nx39, PWR, nx43, 
      nx45, nx47, nx49, nx51, nx53, NOT_nx18: std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   q(5) <= nx23 ;
   q(4) <= nx25 ;
   q(3) <= nx27 ;
   q(2) <= nx29 ;
   q(1) <= nx31 ;
   q(0) <= nx33 ;
   GND <= '0' ;
   nx16 <= cnt_en OR sload ;
   nx19 <= nx16 OR sclear ;
   DFFPCE (nx22,GND,GND,nx19,clock,nx23) ;
   DFFPCE (nx24,GND,GND,nx19,clock,nx25) ;
   DFFPCE (nx26,GND,GND,nx19,clock,nx27) ;
   DFFPCE (nx28,GND,GND,nx19,clock,nx29) ;
   DFFPCE (nx30,GND,GND,nx19,clock,nx31) ;
   DFFPCE (nx32,GND,GND,nx19,clock,nx33) ;
   inc : inc_6u_6u_0_0 port map ( cin=>PWR, a(5)=>nx23, a(4)=>nx25, a(3)=>
      nx27, a(2)=>nx29, a(1)=>nx31, a(0)=>nx33, d(5)=>nx34, d(4)=>nx35, d(3)
      =>nx36, d(2)=>nx37, d(1)=>nx38, d(0)=>nx39, cout=>DANGLING(0));
   PWR <= '1' ;
   nx43 <= data(5) when sload = '1' else nx34 ;
   nx45 <= data(4) when sload = '1' else nx35 ;
   nx47 <= data(3) when sload = '1' else nx36 ;
   nx49 <= data(2) when sload = '1' else nx37 ;
   nx51 <= data(1) when sload = '1' else nx38 ;
   nx53 <= data(0) when sload = '1' else nx39 ;
   NOT_nx18 <= NOT sclear ;
   nx22 <= nx43 AND NOT_nx18 ;
   nx24 <= nx45 AND NOT_nx18 ;
   nx26 <= nx47 AND NOT_nx18 ;
   nx28 <= nx49 AND NOT_nx18 ;
   nx30 <= nx51 AND NOT_nx18 ;
   nx32 <= nx53 AND NOT_nx18 ;
end INTERFACE ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
      p_clock : IN std_logic) ;
end i2c_ctrl_notri ;

architecture main_unfold_1393 of i2c_ctrl_notri is 
   component mux_24u_24u
      port (
         a : IN std_logic_vector (23 DOWNTO 0) ;
         b : IN std_logic_vector (23 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component sub_5u_5u_5u_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (4 DOWNTO 0) ;
         b : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic_vector (4 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component select_3_3
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         b : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
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
   component and_10u_10u
      port (
         a : IN std_logic_vector (9 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_sload_sclear_clock_0_6
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
         cnt_en : IN std_logic) ;
   end component ;
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
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
   component and_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   signal not_sd_counter_4, not_sd_counter_3, not_sd_counter_2, 
      not_sd_counter_5, rtlcs23, rtlcs34, rtlcs22, rtlcs18, rtlcs33, rtlcs14, 
      rtlcs32, rtlcs5, rtlcs8, not_sd_counter_0, rtlcs28, rtlc5n732, rtlcn84, 
      rtlcn73, rtlcs9, not_rtlcn71, rtlcn71, not_rtlcs26, rtlcn72, rtlcs24, 
      rtlcn82, not_rtlcs0, rtlcs0, not_rtlcs6, not_rtlcs10, rtlc5n761, 
      not_rtlcs29, rtlcn68, not_rtlcn68, rtlcn61, not_rtlcs21, rtlcs21, 
      not_rtlcs19, rtlcn57, not_rtlc5n900, not_rtlcs12, rtlcs12, not_rtlcs15, 
      rtlcs10, rtlcs26, rtlcs19, rtlcs15, rtlcs6, rtlcs2, rtlcn38, 
      not_sd_counter_1, rtlcn49, rtlcn48, rtlcn34, rtlcn33, rtlc5n898: 
   std_logic ;
   
   signal sdo_5n5s2f1: std_logic_vector (2 DOWNTO 0) ;
   
   signal rtlc5n900, rtlc5n899, rtlc5n883: std_logic ;
   
   signal sd_counter: std_logic_vector (4 DOWNTO 4) ;
   
   signal rtlc5n882, rtlc5n869, rtlc5n865, rtlc5n868, sd_counter_3, 
      rtlc5n867, sd_counter_2, rtlc5n866, sd_counter_1, sd_counter_0, 
      rtlcs29, not_reset, sdo_5n2s1: std_logic ;
   
   signal sdo_5n5s2: std_logic_vector (4 DOWNTO 0) ;
   
   signal sd_0, sd_1, sd_2, sd_3, sd_5, sd_7, sd_9, sd_10, sd_11, sd_12, 
      not_rtlcs3, rtlcs3, sdo, rtlc1n0_1n1s2, not_clock, sclk, sd_counter_5, 
      rtlc0n230, rtlc0n231, rtlc0n51, not_rtlc0n231, rtlcn0, GND, PWR: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   p_finish_xfr <= GND ;
   p_ack <= GND ;
   PWR <= '1' ;
   GND <= '0' ;
   rtlc0n51 <= rtlcn0 AND not_rtlc0n231 ;
   not_rtlc0n231 <= NOT rtlc0n231 ;
   rtlc0n231 <= rtlc0n230 OR sd_counter_5 ;
   rtlc1n0_1n1s2 <= sclk OR not_clock ;
   not_clock <= NOT p_clock ;
   p_not_sdo <= NOT sdo ;
   not_rtlcs3 <= NOT rtlcs3 ;
   sdo_mux_5i1 : mux_24u_24u port map ( a(23)=>GND, a(22)=>GND, a(21)=>PWR, 
      a(20)=>PWR, a(19)=>GND, a(18)=>PWR, a(17)=>GND, a(16)=>GND, a(15)=>GND, 
      a(14)=>GND, a(13)=>GND, a(12)=>sd_12, a(11)=>sd_11, a(10)=>sd_10, a(9)
      =>sd_9, a(8)=>GND, a(7)=>sd_7, a(6)=>sd_5, a(5)=>sd_5, a(4)=>sd_3, 
      a(3)=>sd_3, a(2)=>sd_2, a(1)=>sd_1, a(0)=>sd_0, b(23)=>GND, b(22)=>GND, 
      b(21)=>GND, b(20)=>GND, b(19)=>GND, b(18)=>GND, b(17)=>GND, b(16)=>GND, 
      b(15)=>GND, b(14)=>GND, b(13)=>GND, b(12)=>GND, b(11)=>GND, b(10)=>GND, 
      b(9)=>GND, b(8)=>GND, b(7)=>GND, b(6)=>GND, b(5)=>GND, b(4)=>
      sdo_5n5s2(4), b(3)=>sdo_5n5s2(3), b(2)=>sdo_5n5s2(2), b(1)=>
      sdo_5n5s2(1), b(0)=>sdo_5n5s2(0), d=>sdo_5n2s1);
   rtlc5n866 <= sd_counter_0 AND sd_counter_1 ;
   rtlc5n867 <= sd_counter_2 OR rtlc5n866 ;
   rtlc5n868 <= sd_counter_3 AND rtlc5n867 ;
   rtlc5n869 <= rtlc5n868 OR rtlc5n865 ;
   rtlc5n883 <= rtlc5n882 AND sd_counter(4) ;
   sdo_5n5s2f1(2) <= rtlc5n883 OR sd_counter_5 ;
   rtlc5n900 <= rtlc5n899 OR sd_counter_5 ;
   sdo_sub5_5i2 : sub_5u_5u_5u_0 port map ( cin=>PWR, a(4)=>PWR, a(3)=>PWR, 
      a(2)=>sdo_5n5s2f1(2), a(1)=>sdo_5n5s2f1(1), a(0)=>sdo_5n5s2f1(0), b(4)
      =>sd_counter(4), b(3)=>sd_counter_3, b(2)=>sd_counter_2, b(1)=>
      sd_counter_1, b(0)=>sd_counter_0, d(4)=>sdo_5n5s2(4), d(3)=>
      sdo_5n5s2(3), d(2)=>sdo_5n5s2(2), d(1)=>sdo_5n5s2(1), d(0)=>
      sdo_5n5s2(0), cout=>DANGLING(0));
   rtlc5n865 <= sd_counter_5 OR sd_counter(4) ;
   rtlc5n882 <= sd_counter_3 OR sd_counter_2 ;
   rtlc5n898 <= sd_counter_1 OR sd_counter_0 ;
   sdo_5n5s2f1(0) <= rtlc5n869 AND sdo_5n5s2f1(1) ;
   rtlc_103_select_29 : select_3_3 port map ( a(2)=>rtlcn33, a(1)=>rtlcn34, 
      a(0)=>rtlcn48, b(2)=>PWR, b(1)=>GND, b(0)=>sdo_5n2s1, d=>rtlcn49);
   rtlcn38 <= not_sd_counter_1 OR sd_counter_0 ;
   rtlc_107_or_30 : or_4u_4u port map ( a(3)=>rtlcs2, a(2)=>rtlcs6, a(1)=>
      rtlcs15, a(0)=>rtlcs19, d=>rtlcn33);
   rtlcn34 <= rtlcs26 OR rtlcs10 ;
   not_rtlcs15 <= NOT rtlcs15 ;
   not_rtlcs12 <= NOT rtlcs12 ;
   not_rtlc5n900 <= NOT rtlc5n900 ;
   rtlc_116_and_31 : and_4u_4u port map ( a(3)=>sdo_5n5s2f1(2), a(2)=>
      not_rtlcs15, a(1)=>not_rtlcs12, a(0)=>not_rtlc5n900, d=>rtlcn57);
   sdo_5n5s2f1(1) <= NOT sdo_5n5s2f1(2) ;
   not_rtlcs19 <= NOT rtlcs19 ;
   not_rtlcs21 <= NOT rtlcs21 ;
   rtlc_120_and_32 : and_4u_4u port map ( a(3)=>sdo_5n5s2f1(1), a(2)=>
      not_rtlcs19, a(1)=>not_rtlcs21, a(0)=>rtlc5n869, d=>rtlcn61);
   rtlc_121_or_33 : or_5u_5u port map ( a(4)=>not_rtlcn68, a(3)=>rtlcn57, 
      a(2)=>rtlcn61, a(1)=>rtlcs12, a(0)=>rtlcs21, d=>rtlcn48);
   not_rtlcn68 <= NOT rtlcn68 ;
   p_i2c_sclk <= rtlc1n0_1n1s2 when rtlc0n51 = '1' else sclk ;
   not_rtlcs29 <= NOT rtlcs29 ;
   rtlc_164_and_34 : and_3u_3u port map ( a(2)=>p_reset_rtlc_164_and_34(2), 
      a(1)=>not_rtlcs29, a(0)=>rtlcs26, d=>rtlc5n761);
   not_reset <= NOT p_reset_rtlc_164_and_34(2) ;
   not_rtlcs10 <= NOT rtlcs10 ;
   not_rtlcs6 <= NOT rtlcs6 ;
   not_rtlcs0 <= NOT rtlcs0 ;
   rtlc_173_and_35 : and_10u_10u port map ( a(9)=>not_rtlcs10, a(8)=>
      not_rtlcs12, a(7)=>not_rtlcs21, a(6)=>not_rtlcs6, a(5)=>not_rtlcs0, 
      a(4)=>rtlc5n900, a(3)=>not_rtlcs15, a(2)=>sdo_5n5s2f1(2), a(1)=>
      not_rtlcs19, a(0)=>rtlc5n869, d=>rtlcn82);
   rtlcn72 <= rtlcs24 OR rtlcn82 ;
   not_rtlcs26 <= NOT rtlcs26 ;
   rtlc_176_and_36 : and_3u_3u port map ( a(2)=>not_rtlcs29, a(1)=>
      not_rtlcs26, a(0)=>rtlcn72, d=>rtlcn71);
   not_rtlcn71 <= NOT rtlcn71 ;
   rtlcn73 <= rtlcs24 OR rtlcs9 ;
   rtlcn84 <= not_rtlcs26 AND rtlcn73 ;
   rtlc5n732 <= rtlcs29 OR rtlcn84 ;
   rtlc_183_or_37 : or_4u_4u port map ( a(3)=>sd_counter(4), a(2)=>
      sd_counter_5, a(1)=>rtlc5n868, a(0)=>rtlcs28, d=>rtlcn68);
   rtlcs0 <= sd_counter_5 AND rtlcs2 ;
   rtlcs10 <= not_sd_counter_0 AND rtlcs9 ;
   rtlcs9 <= rtlcs8 AND rtlcs5 ;
   rtlcs32 <= rtlcs8 AND sd_counter_0 ;
   rtlcs12 <= rtlcs32 AND rtlcs14 ;
   rtlcs33 <= rtlcs8 AND rtlcs14 ;
   rtlcs15 <= rtlcs33 AND not_sd_counter_0 ;
   rtlcs8 <= sd_counter(4) AND rtlcs18 ;
   rtlcs34 <= rtlcs18 AND rtlcs22 ;
   rtlcs21 <= rtlcs34 AND rtlcs23 ;
   rtlcs29 <= not_sd_counter_5 AND rtlcs2 ;
   rtlcs2 <= rtlcs28 AND rtlcs23 ;
   rtlcs28 <= not_sd_counter_2 AND rtlcs14 ;
   not_sd_counter_1 <= NOT sd_counter_1 ;
   not_sd_counter_5 <= NOT sd_counter_5 ;
   not_sd_counter_2 <= NOT sd_counter_2 ;
   not_sd_counter_3 <= NOT sd_counter_3 ;
   not_sd_counter_4 <= NOT sd_counter(4) ;
   not_sd_counter_0 <= NOT sd_counter_0 ;
   rtlcs5 <= sd_counter_3 AND sd_counter_1 ;
   rtlcs14 <= not_sd_counter_3 AND not_sd_counter_1 ;
   rtlcs23 <= not_sd_counter_4 AND not_sd_counter_0 ;
   rtlcs18 <= sd_counter_2 AND not_sd_counter_5 ;
   rtlcs22 <= sd_counter_3 AND not_sd_counter_1 ;
   modgen_counter_sd_counter : counter_up_cnt_en_sload_sclear_clock_0_6
       port map ( clock=>p_clock, q(5)=>sd_counter_5, q(4)=>sd_counter(4), 
      q(3)=>sd_counter_3, q(2)=>sd_counter_2, q(1)=>sd_counter_1, q(0)=>
      sd_counter_0, clk_en=>PWR, aclear=>GND, sload=>not_reset, data(5)=>PWR, 
      data(4)=>PWR, data(3)=>PWR, data(2)=>PWR, data(1)=>PWR, data(0)=>PWR, 
      aset=>GND, sclear=>GND, updn=>PWR, cnt_en=>not_rtlcs3);
   DFFPCE (p_i2c_data_1(12),GND,GND,rtlc5n761,p_clock,sd_12) ;
   DFFPCE (p_i2c_data_1(11),GND,GND,rtlc5n761,p_clock,sd_11) ;
   DFFPCE (p_i2c_data_1(10),GND,GND,rtlc5n761,p_clock,sd_10) ;
   DFFPCE (p_i2c_data_1(9),GND,GND,rtlc5n761,p_clock,sd_9) ;
   DFFPCE (p_i2c_data_2(7),GND,GND,rtlc5n761,p_clock,sd_7) ;
   DFFPCE (p_i2c_data_2(6),GND,GND,rtlc5n761,p_clock,sd_5) ;
   DFFPCE (p_i2c_data_3(4),GND,GND,rtlc5n761,p_clock,sd_3) ;
   DFFPCE (p_i2c_data_4(2),GND,GND,rtlc5n761,p_clock,sd_2) ;
   DFFPCE (p_i2c_data_4(1),GND,GND,rtlc5n761,p_clock,sd_1) ;
   DFFPCE (p_i2c_data_4(0),GND,GND,rtlc5n761,p_clock,sd_0) ;
   DFFRSE (rtlcn49,not_reset,GND,not_rtlcn71,p_clock,sdo) ;
   DFFRSE (rtlcn38,not_reset,GND,rtlc5n732,p_clock,sclk) ;
   modgen_or_0 : or_4u_4u port map ( a(3)=>sd_counter_3, a(2)=>sd_counter(4), 
      a(1)=>sd_counter_5, a(0)=>sd_counter_2, d=>rtlcn0);
   modgen_and_1 : and_5u_5u port map ( a(4)=>sd_counter(4), a(3)=>
      sd_counter_3, a(2)=>sd_counter_2, a(1)=>sd_counter_1, a(0)=>
      sd_counter_0, d=>rtlc0n230);
   modgen_and_2 : and_4u_4u port map ( a(3)=>sd_counter(4), a(2)=>
      sd_counter_3, a(1)=>sd_counter_2, a(0)=>rtlc5n898, d=>rtlc5n899);
   modgen_and_3 : and_5u_5u port map ( a(4)=>sd_counter_5, a(3)=>
      sd_counter(4), a(2)=>sd_counter_2, a(1)=>sd_counter_0, a(0)=>rtlcs5, d
      =>rtlcs3);
   modgen_and_4 : and_4u_4u port map ( a(3)=>sd_counter_0, a(2)=>
      not_sd_counter_4, a(1)=>not_sd_counter_5, a(0)=>rtlcs28, d=>rtlcs26);
   modgen_and_5 : and_5u_5u port map ( a(4)=>sd_counter_1, a(3)=>
      not_sd_counter_3, a(2)=>not_sd_counter_2, a(1)=>not_sd_counter_5, a(0)
      =>rtlcs23, d=>rtlcs24);
   modgen_and_6 : and_5u_5u port map ( a(4)=>sd_counter_0, a(3)=>
      not_sd_counter_4, a(2)=>not_sd_counter_2, a(1)=>not_sd_counter_5, a(0)
      =>rtlcs5, d=>rtlcs19);
   modgen_and_7 : and_4u_4u port map ( a(3)=>sd_counter_3, a(2)=>
      sd_counter_0, a(1)=>not_sd_counter_1, a(0)=>rtlcs8, d=>rtlcs6);
end main_unfold_1393 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

entity i2c_av_config_notri is 
   port (
      p_u0_not_sdo : OUT std_logic ;
      p_i2c_sclk : OUT std_logic ;
      p_i2c_sdat : IN std_logic ;
      p_clk : IN std_logic) ;
end i2c_av_config_notri ;

architecture main_unfold_1971 of i2c_av_config_notri is 
   component and_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
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
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_6u_6u
      port (
         a : IN std_logic_vector (5 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_cnt_en_clock_0_16
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
   component counter_up_sclear_clock_0_16
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
   component counter_up_cnt_en_sclear_clock_0_6
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
         cnt_en : IN std_logic) ;
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
   procedure DFFPCE (
      constant data   : in std_logic;
      constant preset : in std_logic;
      constant clear  : in std_logic;
      constant enable : in std_logic;
      signal clk      : in std_logic;
      signal q        : out std_logic)
   is begin
       if (preset = '1') then
           q <= '1' ;
       elsif (clear = '1') then
           q <= '0' ;
       elsif (clk'event and clk'last_value = '0' and clk = '1') then
           if (enable = '1') then
               q <= data and data ;    -- takes care of q<='X' if data='Z'
           end if ;
       end if ;
       if ((clear/='1' or preset/='1') and clk/='0' and clk/='1') then
           q <= 'X' ;
       end if ;
   end DFFPCE ;
   component rom_new_0_i2c_av_config_main
      port (
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (5 DOWNTO 0) ;
         rd_clk1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         regce1 : IN std_logic ;
         rst1 : IN std_logic) ;
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
         p_clock : IN std_logic) ;
   end component ;
   signal m_i2c_data_12, m_i2c_data_11, m_i2c_data_10, m_i2c_data_9, 
      m_i2c_data_6, m_i2c_data_4, m_i2c_data_1, m_i2c_data_0, m_i2c_data_2, 
      m_i2c_data_7, rtlcs1, not_lut_index_0, rtlcs0: std_logic ;
   
   signal lut_index_1: std_logic_vector (2 DOWNTO 0) ;
   
   signal not_lut_index_1, not_lut_index_4, not_lut_index_5: std_logic ;
   
   signal cont: std_logic_vector (15 DOWNTO 0) ;
   
   signal m_i2c_clk_div_5, m_i2c_clk_div_4, m_i2c_clk_div_3, m_i2c_clk_div_2, 
      rtlc3n284, reset_n, m_i2c_clk_div_15, m_i2c_clk_div_14, 
      m_i2c_clk_div_13, m_i2c_clk_div_12, rtlcn18, m_i2c_clk_div_11, rtlcn16, 
      m_i2c_clk_div_10, m_i2c_clk_div_9, rtlcn17, rtlcn14, m_i2c_clk_div_6, 
      m_i2c_clk_div_7, m_i2c_clk_div_8, rtlcn1: std_logic ;
   
   signal lut_index_2: std_logic_vector (4 DOWNTO 4) ;
   
   signal lut_index_5, rtlc3n369, rtlc3n368, not_rtlcn1, not_lut_index_3, 
      lut_index_3, not_rtlc3n362, rtlc3n362, rtlc2n89, rtlc2n105, 
      not_reset_n, not_m_i2c_ctrl_clk, m_i2c_ctrl_clk, not_rtlcs2, rtlcs2, 
      PWR, GND: std_logic ;
   
   signal DANGLING : std_logic_vector (41 downto 0 );

begin
   GND <= '0' ;
   PWR <= '1' ;
   not_rtlcs2 <= NOT rtlcs2 ;
   not_m_i2c_ctrl_clk <= NOT m_i2c_ctrl_clk ;
   rtlc2n89 <= not_reset_n OR rtlc2n105 ;
   not_rtlc3n362 <= NOT rtlc3n362 ;
   not_lut_index_3 <= NOT lut_index_3 ;
   rtlc3n368 <= not_lut_index_3 OR not_rtlcn1 ;
   rtlc3n369 <= not_rtlc3n362 AND rtlc3n368 ;
   rtlc3n362 <= lut_index_5 OR lut_index_2(4) ;
   not_rtlcn1 <= NOT rtlcn1 ;
   rtlc_64_and_45 : and_4u_4u port map ( a(3)=>m_i2c_clk_div_8, a(2)=>
      m_i2c_clk_div_7, a(1)=>m_i2c_clk_div_6, a(0)=>rtlcn14, d=>rtlcn17);
   rtlc_65_or_46 : or_3u_3u port map ( a(2)=>m_i2c_clk_div_9, a(1)=>
      m_i2c_clk_div_10, a(0)=>rtlcn17, d=>rtlcn16);
   rtlcn18 <= m_i2c_clk_div_11 AND rtlcn16 ;
   rtlc_67_or_47 : or_5u_5u port map ( a(4)=>m_i2c_clk_div_12, a(3)=>
      m_i2c_clk_div_13, a(2)=>m_i2c_clk_div_14, a(1)=>m_i2c_clk_div_15, a(0)
      =>rtlcn18, d=>rtlc2n105);
   rtlc_74_and_49 : and_3u_3u port map ( a(2)=>rtlc3n369, a(1)=>PWR, a(0)=>
      reset_n, d=>rtlc3n284);
   not_reset_n <= NOT reset_n ;
   rtlc_78_or_50 : or_4u_4u port map ( a(3)=>m_i2c_clk_div_2, a(2)=>
      m_i2c_clk_div_3, a(1)=>m_i2c_clk_div_4, a(0)=>m_i2c_clk_div_5, d=>
      rtlcn14);
   rtlc_80_and_51 : and_16u_16u port map ( a(15)=>cont(15), a(14)=>cont(14), 
      a(13)=>cont(13), a(12)=>cont(12), a(11)=>cont(11), a(10)=>cont(10), 
      a(9)=>cont(9), a(8)=>cont(8), a(7)=>cont(7), a(6)=>cont(6), a(5)=>
      cont(5), a(4)=>cont(4), a(3)=>cont(3), a(2)=>cont(2), a(1)=>cont(1), 
      a(0)=>cont(0), d=>rtlcs2);
   rtlcn1 <= lut_index_1(2) OR lut_index_1(1) ;
   not_lut_index_5 <= NOT lut_index_5 ;
   not_lut_index_4 <= NOT lut_index_2(4) ;
   not_lut_index_1 <= NOT lut_index_1(1) ;
   rtlc_93_and_52 : and_6u_6u port map ( a(5)=>not_lut_index_5, a(4)=>
      not_lut_index_4, a(3)=>not_lut_index_3, a(2)=>lut_index_1(2), a(1)=>
      not_lut_index_1, a(0)=>lut_index_1(0), d=>rtlcs0);
   not_lut_index_0 <= NOT lut_index_1(0) ;
   rtlc_100_and_53 : and_6u_6u port map ( a(5)=>not_lut_index_5, a(4)=>
      not_lut_index_4, a(3)=>not_lut_index_3, a(2)=>lut_index_1(2), a(1)=>
      not_lut_index_1, a(0)=>not_lut_index_0, d=>rtlcs1);
   modgen_counter_cont : counter_up_cnt_en_clock_0_16 port map ( clock=>
      p_clk, q(15)=>cont(15), q(14)=>cont(14), q(13)=>cont(13), q(12)=>
      cont(12), q(11)=>cont(11), q(10)=>cont(10), q(9)=>cont(9), q(8)=>
      cont(8), q(7)=>cont(7), q(6)=>cont(6), q(5)=>cont(5), q(4)=>cont(4), 
      q(3)=>cont(3), q(2)=>cont(2), q(1)=>cont(1), q(0)=>cont(0), clk_en=>
      PWR, aclear=>GND, sload=>GND, data(15)=>DANGLING(0), data(14)=>
      DANGLING(1), data(13)=>DANGLING(2), data(12)=>DANGLING(3), data(11)=>
      DANGLING(4), data(10)=>DANGLING(5), data(9)=>DANGLING(6), data(8)=>
      DANGLING(7), data(7)=>DANGLING(8), data(6)=>DANGLING(9), data(5)=>
      DANGLING(10), data(4)=>DANGLING(11), data(3)=>DANGLING(12), data(2)=>
      DANGLING(13), data(1)=>DANGLING(14), data(0)=>DANGLING(15), aset=>GND, 
      sclear=>GND, updn=>PWR, cnt_en=>not_rtlcs2);
   modgen_counter_m_i2c_clk_div : counter_up_sclear_clock_0_16 port map ( 
      clock=>p_clk, q(15)=>m_i2c_clk_div_15, q(14)=>m_i2c_clk_div_14, q(13)
      =>m_i2c_clk_div_13, q(12)=>m_i2c_clk_div_12, q(11)=>m_i2c_clk_div_11, 
      q(10)=>m_i2c_clk_div_10, q(9)=>m_i2c_clk_div_9, q(8)=>m_i2c_clk_div_8, 
      q(7)=>m_i2c_clk_div_7, q(6)=>m_i2c_clk_div_6, q(5)=>m_i2c_clk_div_5, 
      q(4)=>m_i2c_clk_div_4, q(3)=>m_i2c_clk_div_3, q(2)=>m_i2c_clk_div_2, 
      q(1)=>DANGLING(16), q(0)=>DANGLING(17), clk_en=>PWR, aclear=>GND, 
      sload=>GND, data(15)=>DANGLING(18), data(14)=>DANGLING(19), data(13)=>
      DANGLING(20), data(12)=>DANGLING(21), data(11)=>DANGLING(22), data(10)
      =>DANGLING(23), data(9)=>DANGLING(24), data(8)=>DANGLING(25), data(7)
      =>DANGLING(26), data(6)=>DANGLING(27), data(5)=>DANGLING(28), data(4)
      =>DANGLING(29), data(3)=>DANGLING(30), data(2)=>DANGLING(31), data(1)
      =>DANGLING(32), data(0)=>DANGLING(33), aset=>GND, sclear=>rtlc2n89, 
      updn=>PWR, cnt_en=>PWR);
   modgen_counter_lut_index : counter_up_cnt_en_sclear_clock_0_6 port map ( 
      clock=>p_clk, q(5)=>lut_index_5, q(4)=>lut_index_2(4), q(3)=>
      lut_index_3, q(2)=>lut_index_1(2), q(1)=>lut_index_1(1), q(0)=>
      lut_index_1(0), clk_en=>PWR, aclear=>GND, sload=>GND, data(5)=>
      DANGLING(34), data(4)=>DANGLING(35), data(3)=>DANGLING(36), data(2)=>
      DANGLING(37), data(1)=>DANGLING(38), data(0)=>DANGLING(39), aset=>GND, 
      sclear=>not_reset_n, updn=>PWR, cnt_en=>GND);
   DFFPC (rtlcs2,GND,GND,p_clk,reset_n) ;
   DFFRSE (not_m_i2c_ctrl_clk,GND,not_reset_n,rtlc2n105,p_clk,m_i2c_ctrl_clk
   ) ;
   DFFPCE (rtlcs1,GND,GND,rtlc3n284,p_clk,m_i2c_data_7) ;
   DFFPCE (rtlcs0,GND,GND,rtlc3n284,p_clk,m_i2c_data_2) ;
   modgen_rom_ix89 : rom_new_0_i2c_av_config_main port map ( rd_data1(7)=>
      m_i2c_data_0, rd_data1(6)=>m_i2c_data_1, rd_data1(5)=>m_i2c_data_4, 
      rd_data1(4)=>m_i2c_data_6, rd_data1(3)=>m_i2c_data_9, rd_data1(2)=>
      m_i2c_data_10, rd_data1(1)=>m_i2c_data_11, rd_data1(0)=>m_i2c_data_12, 
      addr1(5)=>lut_index_5, addr1(4)=>lut_index_2(4), addr1(3)=>lut_index_3, 
      addr1(2)=>lut_index_1(2), addr1(1)=>lut_index_1(1), addr1(0)=>
      lut_index_1(0), rd_clk1=>p_clk, rd_ena1=>rtlc3n284, regce1=>PWR, rst1
      =>GND);
   u0 : i2c_ctrl_notri port map ( p_i2c_sdat=>GND, p_finish_xfr=>DANGLING(40
      ), p_i2c_data_4(2)=>m_i2c_data_2, p_i2c_data_4(1)=>m_i2c_data_1, 
      p_i2c_data_4(0)=>m_i2c_data_0, p_i2c_data_3(4)=>m_i2c_data_4, 
      p_i2c_data_2(7)=>m_i2c_data_7, p_i2c_data_2(6)=>m_i2c_data_6, 
      p_i2c_data_1(12)=>m_i2c_data_12, p_i2c_data_1(11)=>m_i2c_data_11, 
      p_i2c_data_1(10)=>m_i2c_data_10, p_i2c_data_1(9)=>m_i2c_data_9, 
      p_i2c_data_5(22)=>PWR, p_i2c_data_5(21)=>GND, p_i2c_sclk=>p_i2c_sclk, 
      p_start_xfr=>GND, p_reset_rtlc_164_and_34(2)=>reset_n, p_ack=>DANGLING
      (41), p_not_sdo=>p_u0_not_sdo, p_clock=>m_i2c_ctrl_clk);
end main_unfold_1971 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;

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
   component sine_wave
      port (
         clk : IN std_logic ;
         freq_scale : IN std_logic_vector (6 DOWNTO 0) ;
         o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component white_noise_0
      port (
         clk : IN std_logic ;
         o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component fir
      port (
         clk : IN std_logic ;
         i_data : IN std_logic_vector (15 DOWNTO 0) ;
         o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component audio_dac
      port (
         o_aud_bck : OUT std_logic ;
         o_aud_lrck : OUT std_logic ;
         clock_27 : IN std_logic ;
         reset_n : IN std_logic ;
         clock_18_4 : OUT std_logic) ;
   end component ;
   component mux_16u_16u
      port (
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_4u_4u
      port (
         a : IN std_logic_vector (3 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_5u_5u
      port (
         a : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component or_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component and_3u_3u
      port (
         a : IN std_logic_vector (2 DOWNTO 0) ;
         d : OUT std_logic) ;
   end component ;
   component counter_up_clock_0_4
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (3 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (3 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
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
   component rom_new_0_fir_top_main
      port (
         rd_data1 : OUT std_logic_vector (12 DOWNTO 0) ;
         addr1 : IN std_logic_vector (6 DOWNTO 0) ;
         rd_clk1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         regce1 : IN std_logic ;
         rst1 : IN std_logic) ;
   end component ;
   component i2c_av_config_notri
      port (
         p_u0_not_sdo : OUT std_logic ;
         p_i2c_sclk : OUT std_logic ;
         p_i2c_sdat : IN std_logic ;
         p_clk : IN std_logic) ;
   end component ;
   signal hex7_0_EXMPLR1640, aud_adclrck_EXMPLR1645, hex7_2_EXMPLR1648: 
   std_logic ;
   
   signal display_freq: std_logic_vector (11 DOWNTO 0) ;
   
   signal sine_data: std_logic_vector (15 DOWNTO 0) ;
   
   signal noise_data_15, noise_data_14, noise_data_13, noise_data_12, 
      noise_data_11, noise_data_10, noise_data_9, noise_data_8, noise_data_7, 
      noise_data_6, noise_data_5, noise_data_4: std_logic ;
   
   signal audio_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal raw_audio: std_logic_vector (15 DOWNTO 0) ;
   
   signal fir_audio_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal bit_position: std_logic_vector (3 DOWNTO 0) ;
   
   signal hex7_6_EXMPLR1649: std_logic ;
   
   signal rtlc_rdout_n1: std_logic_vector (12 DOWNTO 0) ;
   
   signal rtlc0_copy_n148, rtlc0_copy_n156, rtlc0_copy_n159, rtlc0_copy_n181, 
      rtlc0_copy_n189, rtlc0_copy_n192, rtlc0_copy_n214, rtlc0_copy_n222, 
      rtlc0_copy_n225, not_sw_17: std_logic ;
   
   signal audio_out_3n1ss1: std_logic_vector (15 DOWNTO 0) ;
   
   signal rtlcs32, rtlcs33, rtlcs34, rtlcs35, rtlcs36, rtlcs38, rtlcs39, 
      rtlcs40, rtlcs41, rtlcs42, rtlcs45, rtlcs47, rtlcs48, rtlcs49, rtlcs50, 
      rtlcs51, rtlcs52, rtlcs53, rtlcs54, rtlcs56, rtlcs57, rtlcs59, rtlcs61, 
      rtlcs62, rtlcs64, rtlcs65, rtlcs66, rtlcs67, rtlcs68, rtlcs70, rtlcs71, 
      rtlcs72, rtlcs73, rtlcs74, rtlcs77, rtlcs79, rtlcs80, rtlcs81, rtlcs82, 
      rtlcs83, rtlcs84, rtlcs85, rtlcs86, rtlcs88, rtlcs89, rtlcs91, rtlcs93, 
      rtlcs94, rtlcs96, rtlcs97, rtlcs98, rtlcs99, rtlcs100, rtlcs102, 
      rtlcs103, rtlcs104, rtlcs105, rtlcs106, rtlcs109, rtlcs111, rtlcs112, 
      rtlcs113, rtlcs114, rtlcs115, rtlcs116, rtlcs117, rtlcs118, rtlcs120, 
      rtlcs121, rtlcs123, rtlcs125, rtlcs126, rtlcs129, rtlcs130, rtlcs131, 
      not_display_freq_2, not_display_freq_1, not_display_freq_3, 
      not_display_freq_0, not_display_freq_6, not_display_freq_5, 
      not_display_freq_7, not_display_freq_4, not_display_freq_10, 
      not_display_freq_9, not_display_freq_11, not_display_freq_8, 
      NOT_bit_position_3, NOT_bit_position_2, NOT_bit_position_1, 
      NOT_bit_position_0, u_i2c_av_config_u0_not_sdo: std_logic ;
   
   signal DANGLING : std_logic_vector (8 downto 0 );

begin
   hex7(6) <= hex7_6_EXMPLR1649 ;
   hex7(2) <= hex7_2_EXMPLR1648 ;
   hex7(1) <= hex7_2_EXMPLR1648 ;
   hex7(0) <= hex7_0_EXMPLR1640 ;
   aud_adclrck <= aud_adclrck_EXMPLR1645 ;
   hex7_2_EXMPLR1648 <= '0' ;
   hex7_6_EXMPLR1649 <= '1' ;
   u_sine : sine_wave port map ( clk=>aud_adclrck_EXMPLR1645, freq_scale(6)
      =>sw(6), freq_scale(5)=>sw(5), freq_scale(4)=>sw(4), freq_scale(3)=>
      sw(3), freq_scale(2)=>sw(2), freq_scale(1)=>sw(1), freq_scale(0)=>
      sw(0), o_data(15)=>sine_data(15), o_data(14)=>sine_data(14), 
      o_data(13)=>sine_data(13), o_data(12)=>sine_data(12), o_data(11)=>
      sine_data(11), o_data(10)=>sine_data(10), o_data(9)=>sine_data(9), 
      o_data(8)=>sine_data(8), o_data(7)=>sine_data(7), o_data(6)=>
      sine_data(6), o_data(5)=>sine_data(5), o_data(4)=>sine_data(4), 
      o_data(3)=>sine_data(3), o_data(2)=>sine_data(2), o_data(1)=>
      sine_data(1), o_data(0)=>sine_data(0));
   u_noise : white_noise_0 port map ( clk=>aud_adclrck_EXMPLR1645, 
      o_data(15)=>noise_data_15, o_data(14)=>noise_data_14, o_data(13)=>
      noise_data_13, o_data(12)=>noise_data_12, o_data(11)=>noise_data_11, 
      o_data(10)=>noise_data_10, o_data(9)=>noise_data_9, o_data(8)=>
      noise_data_8, o_data(7)=>noise_data_7, o_data(6)=>noise_data_6, 
      o_data(5)=>noise_data_5, o_data(4)=>noise_data_4, o_data(3)=>DANGLING(
      0), o_data(2)=>DANGLING(1), o_data(1)=>DANGLING(2), o_data(0)=>
      DANGLING(3));
   u_fir : fir port map ( clk=>aud_adclrck_EXMPLR1645, i_data(15)=>
      raw_audio(15), i_data(14)=>raw_audio(14), i_data(13)=>raw_audio(13), 
      i_data(12)=>raw_audio(12), i_data(11)=>raw_audio(11), i_data(10)=>
      raw_audio(10), i_data(9)=>raw_audio(9), i_data(8)=>raw_audio(8), 
      i_data(7)=>raw_audio(7), i_data(6)=>raw_audio(6), i_data(5)=>
      raw_audio(5), i_data(4)=>raw_audio(4), i_data(3)=>raw_audio(3), 
      i_data(2)=>raw_audio(2), i_data(1)=>raw_audio(1), i_data(0)=>
      raw_audio(0), o_data(15)=>fir_audio_out(15), o_data(14)=>
      fir_audio_out(14), o_data(13)=>fir_audio_out(13), o_data(12)=>
      fir_audio_out(12), o_data(11)=>fir_audio_out(11), o_data(10)=>
      fir_audio_out(10), o_data(9)=>fir_audio_out(9), o_data(8)=>
      fir_audio_out(8), o_data(7)=>fir_audio_out(7), o_data(6)=>
      fir_audio_out(6), o_data(5)=>fir_audio_out(5), o_data(4)=>
      fir_audio_out(4), o_data(3)=>fir_audio_out(3), o_data(2)=>
      fir_audio_out(2), o_data(1)=>fir_audio_out(1), o_data(0)=>
      fir_audio_out(0));
   u_audio_dac : audio_dac port map ( o_aud_bck=>aud_bclk, o_aud_lrck=>
      aud_adclrck_EXMPLR1645, clock_27=>clock_27, reset_n=>key(0), 
      clock_18_4=>aud_xck);
   aud_daclrck <= aud_adclrck_EXMPLR1645 ;
   aud_dacdat_mux_0 : mux_16u_16u port map ( a(15)=>audio_out(15), a(14)=>
      audio_out(14), a(13)=>audio_out(13), a(12)=>audio_out(12), a(11)=>
      audio_out(11), a(10)=>audio_out(10), a(9)=>audio_out(9), a(8)=>
      audio_out(8), a(7)=>audio_out(7), a(6)=>audio_out(6), a(5)=>
      audio_out(5), a(4)=>audio_out(4), a(3)=>audio_out(3), a(2)=>
      audio_out(2), a(1)=>audio_out(1), a(0)=>audio_out(0), b(15)=>
      hex7_2_EXMPLR1648, b(14)=>hex7_2_EXMPLR1648, b(13)=>hex7_2_EXMPLR1648, 
      b(12)=>hex7_2_EXMPLR1648, b(11)=>hex7_2_EXMPLR1648, b(10)=>
      hex7_2_EXMPLR1648, b(9)=>hex7_2_EXMPLR1648, b(8)=>hex7_2_EXMPLR1648, 
      b(7)=>hex7_2_EXMPLR1648, b(6)=>hex7_2_EXMPLR1648, b(5)=>
      hex7_2_EXMPLR1648, b(4)=>hex7_2_EXMPLR1648, b(3)=>NOT_bit_position_3, 
      b(2)=>NOT_bit_position_2, b(1)=>NOT_bit_position_1, b(0)=>
      NOT_bit_position_0, d=>aud_dacdat);
   hex0(6) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex0(5) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex0(4) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex0(3) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex0(2) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex0(1) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex0(0) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex1(6) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex1(5) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex1(4) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex1(3) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex1(2) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex1(1) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex1(0) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex2(6) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex2(5) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex2(4) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex2(3) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex2(2) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex2(1) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex2(0) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex3(6) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex3(5) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex3(4) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex3(3) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex3(2) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex3(1) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex3(0) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   hex6_or_0 : or_4u_4u port map ( a(3)=>rtlcs39, a(2)=>rtlcs42, a(1)=>
      rtlcs50, a(0)=>rtlcs53, d=>hex6(0));
   hex5_or_1 : or_4u_4u port map ( a(3)=>rtlcs71, a(2)=>rtlcs74, a(1)=>
      rtlcs82, a(0)=>rtlcs85, d=>hex5(0));
   hex4_or_2 : or_4u_4u port map ( a(3)=>rtlcs103, a(2)=>rtlcs106, a(1)=>
      rtlcs114, a(0)=>rtlcs117, d=>hex4(0));
   not_sw_17 <= NOT sw(17) ;
   rtlc_117_or_68 : or_5u_5u port map ( a(4)=>rtlcs41, a(3)=>rtlcs51, a(2)=>
      rtlcs57, a(1)=>rtlcs59, a(0)=>rtlcs61, d=>rtlc0_copy_n148);
   hex6_or_3 : or_3u_3u port map ( a(2)=>rtlcs36, a(1)=>rtlcs45, a(0)=>
      rtlcs62, d=>hex6(2));
   hex6_or_4 : or_4u_4u port map ( a(3)=>rtlcs33, a(2)=>rtlcs48, a(1)=>
      rtlcs50, a(0)=>rtlcs52, d=>hex6(3));
   hex6_or_5 : or_3u_3u port map ( a(2)=>rtlcs49, a(1)=>rtlcs52, a(0)=>
      rtlcs54, d=>hex6(4));
   rtlc_154_or_72 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs35, a(2)=>
      rtlcs47, a(1)=>rtlcs49, a(0)=>rtlcs56, d=>rtlc0_copy_n156);
   rtlc_166_or_73 : or_5u_5u port map ( a(4)=>rtlcs32, a(3)=>rtlcs34, a(2)=>
      rtlcs38, a(1)=>rtlcs40, a(0)=>rtlcs49, d=>rtlc0_copy_n159);
   rtlc_179_or_74 : or_5u_5u port map ( a(4)=>rtlcs73, a(3)=>rtlcs83, a(2)=>
      rtlcs89, a(1)=>rtlcs91, a(0)=>rtlcs93, d=>rtlc0_copy_n181);
   hex5_or_6 : or_3u_3u port map ( a(2)=>rtlcs68, a(1)=>rtlcs77, a(0)=>
      rtlcs94, d=>hex5(2));
   hex5_or_7 : or_4u_4u port map ( a(3)=>rtlcs65, a(2)=>rtlcs80, a(1)=>
      rtlcs82, a(0)=>rtlcs84, d=>hex5(3));
   hex5_or_8 : or_3u_3u port map ( a(2)=>rtlcs81, a(1)=>rtlcs84, a(0)=>
      rtlcs86, d=>hex5(4));
   rtlc_216_or_78 : or_5u_5u port map ( a(4)=>rtlcs64, a(3)=>rtlcs67, a(2)=>
      rtlcs79, a(1)=>rtlcs81, a(0)=>rtlcs88, d=>rtlc0_copy_n189);
   rtlc_228_or_79 : or_5u_5u port map ( a(4)=>rtlcs64, a(3)=>rtlcs66, a(2)=>
      rtlcs70, a(1)=>rtlcs72, a(0)=>rtlcs81, d=>rtlc0_copy_n192);
   rtlc_241_or_80 : or_5u_5u port map ( a(4)=>rtlcs105, a(3)=>rtlcs115, a(2)
      =>rtlcs121, a(1)=>rtlcs123, a(0)=>rtlcs125, d=>rtlc0_copy_n214);
   hex4_or_9 : or_3u_3u port map ( a(2)=>rtlcs100, a(1)=>rtlcs109, a(0)=>
      rtlcs126, d=>hex4(2));
   hex4_or_10 : or_4u_4u port map ( a(3)=>rtlcs97, a(2)=>rtlcs112, a(1)=>
      rtlcs114, a(0)=>rtlcs116, d=>hex4(3));
   hex4_or_11 : or_3u_3u port map ( a(2)=>rtlcs113, a(1)=>rtlcs116, a(0)=>
      rtlcs118, d=>hex4(4));
   rtlc_278_or_84 : or_5u_5u port map ( a(4)=>rtlcs96, a(3)=>rtlcs99, a(2)=>
      rtlcs111, a(1)=>rtlcs113, a(0)=>rtlcs120, d=>rtlc0_copy_n222);
   rtlc_290_or_85 : or_5u_5u port map ( a(4)=>rtlcs96, a(3)=>rtlcs98, a(2)=>
      rtlcs102, a(1)=>rtlcs104, a(0)=>rtlcs113, d=>rtlc0_copy_n225);
   hex6(1) <= NOT rtlc0_copy_n148 ;
   hex6(5) <= NOT rtlc0_copy_n156 ;
   hex6(6) <= NOT rtlc0_copy_n159 ;
   hex5(1) <= NOT rtlc0_copy_n181 ;
   hex5(5) <= NOT rtlc0_copy_n189 ;
   hex5(6) <= NOT rtlc0_copy_n192 ;
   hex4(1) <= NOT rtlc0_copy_n214 ;
   hex4(5) <= NOT rtlc0_copy_n222 ;
   hex4(6) <= NOT rtlc0_copy_n225 ;
   raw_audio(4) <= noise_data_4 when sw(17) = '1' else sine_data(4) ;
   raw_audio(5) <= noise_data_5 when sw(17) = '1' else sine_data(5) ;
   raw_audio(6) <= noise_data_6 when sw(17) = '1' else sine_data(6) ;
   raw_audio(7) <= noise_data_7 when sw(17) = '1' else sine_data(7) ;
   raw_audio(8) <= noise_data_8 when sw(17) = '1' else sine_data(8) ;
   raw_audio(9) <= noise_data_9 when sw(17) = '1' else sine_data(9) ;
   raw_audio(10) <= noise_data_10 when sw(17) = '1' else sine_data(10) ;
   raw_audio(11) <= noise_data_11 when sw(17) = '1' else sine_data(11) ;
   raw_audio(12) <= noise_data_12 when sw(17) = '1' else sine_data(12) ;
   raw_audio(13) <= noise_data_13 when sw(17) = '1' else sine_data(13) ;
   raw_audio(14) <= noise_data_14 when sw(17) = '1' else sine_data(14) ;
   raw_audio(15) <= noise_data_15 when sw(17) = '1' else sine_data(15) ;
   audio_out_3n1ss1(0) <= fir_audio_out(0) when sw(16) = '1' else 
   raw_audio(0) ;
   audio_out_3n1ss1(1) <= fir_audio_out(1) when sw(16) = '1' else 
   raw_audio(1) ;
   audio_out_3n1ss1(2) <= fir_audio_out(2) when sw(16) = '1' else 
   raw_audio(2) ;
   audio_out_3n1ss1(3) <= fir_audio_out(3) when sw(16) = '1' else 
   raw_audio(3) ;
   audio_out_3n1ss1(4) <= fir_audio_out(4) when sw(16) = '1' else 
   raw_audio(4) ;
   audio_out_3n1ss1(5) <= fir_audio_out(5) when sw(16) = '1' else 
   raw_audio(5) ;
   audio_out_3n1ss1(6) <= fir_audio_out(6) when sw(16) = '1' else 
   raw_audio(6) ;
   audio_out_3n1ss1(7) <= fir_audio_out(7) when sw(16) = '1' else 
   raw_audio(7) ;
   audio_out_3n1ss1(8) <= fir_audio_out(8) when sw(16) = '1' else 
   raw_audio(8) ;
   audio_out_3n1ss1(9) <= fir_audio_out(9) when sw(16) = '1' else 
   raw_audio(9) ;
   audio_out_3n1ss1(10) <= fir_audio_out(10) when sw(16) = '1' else 
   raw_audio(10) ;
   audio_out_3n1ss1(11) <= fir_audio_out(11) when sw(16) = '1' else 
   raw_audio(11) ;
   audio_out_3n1ss1(12) <= fir_audio_out(12) when sw(16) = '1' else 
   raw_audio(12) ;
   audio_out_3n1ss1(13) <= fir_audio_out(13) when sw(16) = '1' else 
   raw_audio(13) ;
   audio_out_3n1ss1(14) <= fir_audio_out(14) when sw(16) = '1' else 
   raw_audio(14) ;
   audio_out_3n1ss1(15) <= fir_audio_out(15) when sw(16) = '1' else 
   raw_audio(15) ;
   rtlcs33 <= rtlcs32 AND rtlcs34 ;
   rtlcs36 <= display_freq(10) AND rtlcs35 ;
   rtlcs39 <= rtlcs40 AND rtlcs38 ;
   rtlcs42 <= display_freq(10) AND rtlcs41 ;
   rtlcs41 <= not_display_freq_9 AND rtlcs38 ;
   rtlcs45 <= display_freq(11) AND rtlcs47 ;
   rtlcs50 <= rtlcs49 AND rtlcs47 ;
   rtlcs53 <= rtlcs52 AND rtlcs54 ;
   rtlcs52 <= display_freq(8) AND rtlcs51 ;
   rtlcs57 <= not_display_freq_11 AND rtlcs56 ;
   rtlcs59 <= display_freq(9) AND rtlcs54 ;
   rtlcs129 <= rtlcs34 AND rtlcs40 ;
   rtlcs62 <= rtlcs129 AND not_display_freq_11 ;
   rtlcs65 <= rtlcs64 AND rtlcs66 ;
   rtlcs68 <= display_freq(6) AND rtlcs67 ;
   rtlcs71 <= rtlcs72 AND rtlcs70 ;
   rtlcs74 <= display_freq(6) AND rtlcs73 ;
   rtlcs73 <= not_display_freq_5 AND rtlcs70 ;
   rtlcs77 <= display_freq(7) AND rtlcs79 ;
   rtlcs82 <= rtlcs81 AND rtlcs79 ;
   rtlcs85 <= rtlcs84 AND rtlcs86 ;
   rtlcs84 <= display_freq(4) AND rtlcs83 ;
   rtlcs89 <= not_display_freq_7 AND rtlcs88 ;
   rtlcs91 <= display_freq(5) AND rtlcs86 ;
   rtlcs130 <= rtlcs66 AND rtlcs72 ;
   rtlcs94 <= rtlcs130 AND not_display_freq_7 ;
   rtlcs97 <= rtlcs96 AND rtlcs98 ;
   rtlcs100 <= display_freq(2) AND rtlcs99 ;
   rtlcs103 <= rtlcs104 AND rtlcs102 ;
   rtlcs106 <= display_freq(2) AND rtlcs105 ;
   rtlcs105 <= not_display_freq_1 AND rtlcs102 ;
   rtlcs109 <= display_freq(3) AND rtlcs111 ;
   rtlcs114 <= rtlcs113 AND rtlcs111 ;
   rtlcs117 <= rtlcs116 AND rtlcs118 ;
   rtlcs116 <= display_freq(0) AND rtlcs115 ;
   rtlcs121 <= not_display_freq_3 AND rtlcs120 ;
   rtlcs123 <= display_freq(1) AND rtlcs118 ;
   rtlcs131 <= rtlcs98 AND rtlcs104 ;
   rtlcs126 <= rtlcs131 AND not_display_freq_3 ;
   display_freq(0) <= rtlc_rdout_n1(0) AND not_sw_17 ;
   display_freq(2) <= rtlc_rdout_n1(2) OR sw(17) ;
   display_freq(1) <= rtlc_rdout_n1(1) OR sw(17) ;
   not_display_freq_2 <= NOT display_freq(2) ;
   not_display_freq_1 <= NOT display_freq(1) ;
   display_freq(3) <= rtlc_rdout_n1(3) OR sw(17) ;
   not_display_freq_3 <= NOT display_freq(3) ;
   rtlc_617_and_86 : and_3u_3u port map ( a(2)=>not_display_freq_3, a(1)=>
      display_freq(2), a(0)=>not_display_freq_1, d=>rtlcs113);
   not_display_freq_0 <= NOT display_freq(0) ;
   rtlc_638_and_87 : and_3u_3u port map ( a(2)=>display_freq(2), a(1)=>
      display_freq(1), a(0)=>display_freq(0), d=>rtlcs112);
   display_freq(4) <= rtlc_rdout_n1(4) OR sw(17) ;
   display_freq(6) <= rtlc_rdout_n1(6) OR sw(17) ;
   display_freq(5) <= rtlc_rdout_n1(5) AND not_sw_17 ;
   not_display_freq_6 <= NOT display_freq(6) ;
   not_display_freq_5 <= NOT display_freq(5) ;
   display_freq(7) <= rtlc_rdout_n1(7) AND not_sw_17 ;
   not_display_freq_7 <= NOT display_freq(7) ;
   rtlc_658_and_88 : and_3u_3u port map ( a(2)=>not_display_freq_7, a(1)=>
      display_freq(6), a(0)=>not_display_freq_5, d=>rtlcs81);
   not_display_freq_4 <= NOT display_freq(4) ;
   rtlc_679_and_89 : and_3u_3u port map ( a(2)=>display_freq(6), a(1)=>
      display_freq(5), a(0)=>display_freq(4), d=>rtlcs80);
   display_freq(8) <= rtlc_rdout_n1(8) OR sw(17) ;
   display_freq(10) <= rtlc_rdout_n1(10) AND not_sw_17 ;
   display_freq(9) <= rtlc_rdout_n1(9) AND not_sw_17 ;
   not_display_freq_10 <= NOT display_freq(10) ;
   not_display_freq_9 <= NOT display_freq(9) ;
   display_freq(11) <= rtlc_rdout_n1(11) AND not_sw_17 ;
   not_display_freq_11 <= NOT display_freq(11) ;
   rtlc_700_and_90 : and_3u_3u port map ( a(2)=>not_display_freq_11, a(1)=>
      display_freq(10), a(0)=>not_display_freq_9, d=>rtlcs49);
   not_display_freq_8 <= NOT display_freq(8) ;
   rtlc_721_and_91 : and_3u_3u port map ( a(2)=>display_freq(10), a(1)=>
      display_freq(9), a(0)=>display_freq(8), d=>rtlcs48);
   hex7_0_EXMPLR1640 <= rtlc_rdout_n1(12) AND not_sw_17 ;
   rtlcs104 <= not_display_freq_2 AND display_freq(1) ;
   rtlcs102 <= display_freq(3) AND display_freq(0) ;
   rtlcs111 <= display_freq(2) AND not_display_freq_0 ;
   rtlcs115 <= not_display_freq_2 AND not_display_freq_1 ;
   rtlcs118 <= not_display_freq_3 AND display_freq(0) ;
   rtlcs120 <= not_display_freq_1 AND not_display_freq_0 ;
   rtlcs125 <= not_display_freq_2 AND not_display_freq_0 ;
   rtlcs99 <= display_freq(3) AND display_freq(1) ;
   rtlcs98 <= display_freq(1) AND not_display_freq_0 ;
   rtlcs96 <= display_freq(3) AND not_display_freq_2 ;
   rtlcs72 <= not_display_freq_6 AND display_freq(5) ;
   rtlcs70 <= display_freq(7) AND display_freq(4) ;
   rtlcs79 <= display_freq(6) AND not_display_freq_4 ;
   rtlcs83 <= not_display_freq_6 AND not_display_freq_5 ;
   rtlcs86 <= not_display_freq_7 AND display_freq(4) ;
   rtlcs88 <= not_display_freq_5 AND not_display_freq_4 ;
   rtlcs93 <= not_display_freq_6 AND not_display_freq_4 ;
   rtlcs67 <= display_freq(7) AND display_freq(5) ;
   rtlcs66 <= display_freq(5) AND not_display_freq_4 ;
   rtlcs64 <= display_freq(7) AND not_display_freq_6 ;
   rtlcs40 <= not_display_freq_10 AND display_freq(9) ;
   rtlcs38 <= display_freq(11) AND display_freq(8) ;
   rtlcs47 <= display_freq(10) AND not_display_freq_8 ;
   rtlcs51 <= not_display_freq_10 AND not_display_freq_9 ;
   rtlcs54 <= not_display_freq_11 AND display_freq(8) ;
   rtlcs56 <= not_display_freq_9 AND not_display_freq_8 ;
   rtlcs61 <= not_display_freq_10 AND not_display_freq_8 ;
   rtlcs35 <= display_freq(11) AND display_freq(9) ;
   rtlcs34 <= display_freq(9) AND not_display_freq_8 ;
   rtlcs32 <= display_freq(11) AND not_display_freq_10 ;
   modgen_counter_bit_position : counter_up_clock_0_4 port map ( clock=>
      aud_bclk, q(3)=>bit_position(3), q(2)=>bit_position(2), q(1)=>
      bit_position(1), q(0)=>bit_position(0), clk_en=>hex7_6_EXMPLR1649, 
      aclear=>hex7_2_EXMPLR1648, sload=>hex7_2_EXMPLR1648, data(3)=>DANGLING
      (4), data(2)=>DANGLING(5), data(1)=>DANGLING(6), data(0)=>DANGLING(7), 
      aset=>hex7_2_EXMPLR1648, sclear=>hex7_2_EXMPLR1648, updn=>
      hex7_6_EXMPLR1649, cnt_en=>hex7_6_EXMPLR1649);
   hex7(3) <= hex7_0_EXMPLR1640 ;
   hex7(4) <= hex7_0_EXMPLR1640 ;
   hex7(5) <= hex7_0_EXMPLR1640 ;
   ledg(0) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledg(1) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledg(2) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledg(3) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledg(4) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledg(5) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledg(6) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledg(7) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledg(8) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(0) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(1) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(2) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(3) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(4) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(5) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(6) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(7) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(8) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(9) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(10) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(11) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(12) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(13) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(14) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(15) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(16) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   ledr(17) <= hex7_2_EXMPLR1648 when hex7_2_EXMPLR1648 = '1' else 'Z' ;
   DFFPC (audio_out_3n1ss1(15),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(15)) ;
   DFFPC (audio_out_3n1ss1(14),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(14)) ;
   DFFPC (audio_out_3n1ss1(13),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(13)) ;
   DFFPC (audio_out_3n1ss1(12),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(12)) ;
   DFFPC (audio_out_3n1ss1(11),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(11)) ;
   DFFPC (audio_out_3n1ss1(10),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(10)) ;
   DFFPC (audio_out_3n1ss1(9),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(9)) ;
   DFFPC (audio_out_3n1ss1(8),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(8)) ;
   DFFPC (audio_out_3n1ss1(7),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(7)) ;
   DFFPC (audio_out_3n1ss1(6),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(6)) ;
   DFFPC (audio_out_3n1ss1(5),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(5)) ;
   DFFPC (audio_out_3n1ss1(4),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(4)) ;
   DFFPC (audio_out_3n1ss1(3),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(3)) ;
   DFFPC (audio_out_3n1ss1(2),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(2)) ;
   DFFPC (audio_out_3n1ss1(1),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(1)) ;
   DFFPC (audio_out_3n1ss1(0),hex7_2_EXMPLR1648,hex7_2_EXMPLR1648,
   aud_adclrck_EXMPLR1645,audio_out(0)) ;
   raw_audio(3) <= sine_data(3) AND not_sw_17 ;
   raw_audio(2) <= sine_data(2) AND not_sw_17 ;
   raw_audio(1) <= sine_data(1) AND not_sw_17 ;
   raw_audio(0) <= sine_data(0) AND not_sw_17 ;
   NOT_bit_position_3 <= NOT bit_position(3) ;
   NOT_bit_position_2 <= NOT bit_position(2) ;
   NOT_bit_position_1 <= NOT bit_position(1) ;
   NOT_bit_position_0 <= NOT bit_position(0) ;
   modgen_rom_ix390 : rom_new_0_fir_top_main port map ( rd_data1(12)=>
      rtlc_rdout_n1(12), rd_data1(11)=>rtlc_rdout_n1(11), rd_data1(10)=>
      rtlc_rdout_n1(10), rd_data1(9)=>rtlc_rdout_n1(9), rd_data1(8)=>
      rtlc_rdout_n1(8), rd_data1(7)=>rtlc_rdout_n1(7), rd_data1(6)=>
      rtlc_rdout_n1(6), rd_data1(5)=>rtlc_rdout_n1(5), rd_data1(4)=>
      rtlc_rdout_n1(4), rd_data1(3)=>rtlc_rdout_n1(3), rd_data1(2)=>
      rtlc_rdout_n1(2), rd_data1(1)=>rtlc_rdout_n1(1), rd_data1(0)=>
      rtlc_rdout_n1(0), addr1(6)=>sw(6), addr1(5)=>sw(5), addr1(4)=>sw(4), 
      addr1(3)=>sw(3), addr1(2)=>sw(2), addr1(1)=>sw(1), addr1(0)=>sw(0), 
      rd_clk1=>DANGLING(8), rd_ena1=>hex7_6_EXMPLR1649, regce1=>
      hex7_6_EXMPLR1649, rst1=>hex7_2_EXMPLR1648);
   i2c_sdat <= hex7_2_EXMPLR1648 when u_i2c_av_config_u0_not_sdo
    = '1' else 'Z' ;
   u_i2c_av_config : i2c_av_config_notri port map ( p_u0_not_sdo=>
      u_i2c_av_config_u0_not_sdo, p_i2c_sclk=>i2c_sclk, p_i2c_sdat=>
      hex7_2_EXMPLR1648, p_clk=>clock_27);
end main ;

