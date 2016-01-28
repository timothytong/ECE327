library ieee;
use ieee.std_logic_1164.all;

entity sum is
       port ( i_a, i_b, i_cin : in std_logic;
              o_sum :       out std_logic
       );
end sum;

architecture main of sum is
begin
    o_sum <= i_a xor i_b xor i_cin;
  -- insert your code here

end architecture;

-- question 1
  -- There are 3 input pins - i_a, i_b, and i_cin. i_a and i_cin
  -- go into an XOR gate called ix1, and the output of this XOR
  -- gate is fed into another XOR gate called ix3 along with the
  -- i_b input pin. The output pin of this XOR gate is called
  -- o_sum, which is the only output pin of this circuit.

