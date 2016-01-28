library ieee;
use ieee.std_logic_1164.all;

entity sum_tb is
end sum_tb;

architecture main of sum_tb is
  signal a, b, cin, the_sum  : std_logic;
begin

  uut : entity work.sum(main)
  port map (
    i_a   => a,
    i_b   => b,
    i_cin => cin,
    o_sum => the_sum
  );

  process
  begin
    -- --------------------
    a <= '0'; b <= '0'; cin <= '0';
    wait for 10 ns;
    -- --------------------
    a <= '1'; b <= '0'; cin <= '0';
    wait for 10 ns;
    -- --------------------
    a <= '0'; b <= '0'; cin <= '1';
    wait for 10 ns;
    -- --------------------
  end process;

end architecture;

-- question 2
-- signal   | waveform description
-- a        | 0 1 0    input 1 to be added
-- b        | 0 0 0    input 2 to be added
-- cin      | 0 0 1    carry in signal
-- the_sum  | 0 1 1    output sum


-- question 3
  -- When we run the simulation for 100 ns, the process repeats itself
  -- after the last wait statement (30 ns). All the waveforms repeat themselves
  -- in a period of 30 ns. VHDL semantics define that a process containing
  -- wait statements loops back to the beginning when it hits the end.
