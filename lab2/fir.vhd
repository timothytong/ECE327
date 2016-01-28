------------------------------------------------------------------------
-- finite-impulse response filters
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir is
  port(
    clk     : in  std_logic;
    i_data  : in  word;
    o_data  : out word
  );
end entity;

architecture avg of fir is

  signal tap0, tap1 , tap2 , tap3 , tap4
             , prod1, prod2, prod3, prod4
                    , sum2 , sum3 , sum4
       : word;

  constant coef1 : word := x"0400";
  constant coef2 : word := x"0400";
  constant coef3 : word := x"0400";
  constant coef4 : word := x"0400";

begin

  -- delay line of flops to hold samples of input data
  tap0 <= i_data;
  delay_line : process(clk)
  begin
    if (rising_edge(clk)) then
      tap1 <= tap0;
      tap2 <= tap1;
      tap3 <= tap2;
      tap4 <= tap3;
    end if;
  end process;

  -- simple averaging circuit
  --
  -- Note that mult is a quick 'n' dirty multiplier
  -- However, a multiplier is NOT built in hardware because one input is a particular
  --  constant allowing optimizations to be done.  If you had to multiply by 2 or 4 or 16
  --  in hardware could you do it WITHOUT any adders, shifters or multipliers?
  --
  prod1 <= mult( tap1, coef1);
  prod2 <= mult( tap2, coef2);
  prod3 <= mult( tap3, coef3);
  prod4 <= mult( tap4, coef4);

  sum2  <= prod1 + prod2;
  sum3  <= sum2  + prod3;
  sum4  <= sum3  + prod4;

  o_data <= sum4;

end architecture;

------------------------------------------------------------------------
-- low-pass filter
------------------------------------------------------------------------

architecture low_pass of fir is

  -- Use the signal names tap, prod, and sum, but change the type to
  -- match your needs.
    signal taps, sums : word_vector(num_taps downto 0);

-- For the tap, prod and sum type you'll want to use word_vector to simplify the code - check for it's defination

-- For building the design you'll need to add fir_synth_pkg.vhd to the fir.uwp file.  Now is the time to
-- start figuring out what the project file is for.  It has to include all vhdl files used in a project.

  --signal tap_low, prod_low, sum_low : std_logic;

  -- The attribute line below is usually needed to avoid a warning
  -- from PrecisionRTL that signals could be implemented using
  -- memory arrays.

  attribute logic_block of taps, sums : signal is true;
  component shiftr is
  port (
    clk        : in std_logic;
    tap_prev   : in word;
    tap_next   : out word;
    coef       : in word;
    prev_sum   : in word;
    next_sum   : out word
  );
  end component;

begin
--    first_tap : entity work.shiftr(main);
--    port map (
--      clk => clk,
--      tap_prev => i_data,
--      coef => lpcoef(1),
--      prev_prod => X"0000",
--      tap_next =>
  taps(0) <= i_data;
  o_data  <= sums(num_taps);
  sums(0) <= X"0000";

  tap_array : for i in 1 to num_taps generate
  begin
    filter_block : shiftr--(main)
      port map (
        clk => clk,
        tap_prev => taps(i - 1),
        tap_next => taps(i),
        coef => lpcoef(i),
        prev_sum => sums(i - 1),
        next_sum => sums(i)
      );
  end generate;

end architecture;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity shiftr is
  port (
    clk        : in std_logic;
    tap_prev   : in word;
    tap_next   : out word;
    coef       : in word;
    prev_sum   : in word;
    next_sum   : out word
  );

end entity;
architecture main of shiftr is
signal current_tap : word;
signal prod        : word;

begin
    process(clk)
    begin
        if rising_edge(clk) then
            current_tap <= tap_prev;
        end if;
    end process;

    tap_next <= current_tap;
    prod     <= mult(current_tap, coef);
    next_sum <= prod + prev_sum;
end architecture;

-- question 2
-- There is 1 15-bit adder and 2 16-bit adders in the circuit. The 15-bit adder has 15 LUTs
-- and the 16-bit adder has 16 LUTs.

-- question 3
-- There are no LUTs required for the multipliers. This is because we are multiplying by a 1/4, and
-- the synthesis tool optimizes this by simply right shifting the i_data signal. This actually reduces
-- the number of LUTs needed for the first adder by one, because it is a 15 bit adder (adding 2 sign
-- extended 14 bit inputs that are extracted from i_data(15 downto 2)

