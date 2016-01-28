library ieee;
use ieee.std_logic_1164.all;

package heat_pkg is
    subtype heat_ty is std_logic_vector(1 downto 0);
    constant off  : heat_ty := "00";
    constant low  : heat_ty := "01";
    constant high : heat_ty := "11";
end heat_pkg;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys is                           -- finite state machine
    port(i_cur_temp       : in signed(7 downto 0); -- current temp
         i_des_temp       : in signed(7 downto 0); -- desired temp
         i_reset          : in std_logic;          -- reset
         i_clock          : in std_logic;          -- clock
         o_heatmode       : out heat_ty            -- mode
     );
end heatingsys;

architecture main of heatingsys is
    signal state : heat_ty;
    signal diff : signed(7 downto 0); -- cur_tmp - des_tmp
begin
    -- insert your vhdl code here
    diff_calc : process(i_des_temp, i_cur_temp)
    begin
        diff <= i_des_temp - i_cur_temp;
    end process;

    state_machine : process(i_clock)
    begin
        if rising_edge(i_clock) then
            if i_reset = '1' then
                state <= off;
            else
                case state is
                    when off =>
                        if diff >= 3 and diff < 5 then
                            state <= low;
                        elsif diff >= 5 then
                            state <= high;
                        end if;
                    when low =>
                        if diff < -2 then
                            state <= off;
                        elsif diff >= 7 then
                            state <= high;
                        end if;
                    when high =>
                        if diff < -3 then
                            state <= low;
                        end if;
                    when others =>
                        state <= off; -- In an unreachable state, go back to off.
                end case;
            end if;
        end if;
    end process;
    o_heatmode <= state;

end main;

-- question 1
-- 2 1-bit flipflops (i.e. 1 2-bit flipflop)
-- 0 latches
-- 13 AND gates
-- 11 OR gates
-- 0 XOR gates
-- 16 NOT gates
-- 0 Adders
-- 1 Subtracter
-- 0 Comparators
-- 1 Selector
