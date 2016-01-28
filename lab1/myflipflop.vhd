library ieee;
use ieee.std_logic_1164.all;

entity myflipflop is
    port(  i_clock   -- clock
    , i_d       -- flip-flop input
    , i_ce      -- flip-flop chip enable
    , i_reset   -- flip-flop reset
    , i_sel     -- mux selector
    , i_d2      -- the second data input
    : in std_logic;
    o_q       -- flip-flop output for basic flop
    , o_q_a     -- flip-flop output for part (a)
    , o_q_b     -- flip-flop output for part (b)
    , o_q_c     -- flip-flop output for part (c)
    , o_q_d     -- flip-flop output for part (d)
    : out std_logic
);
end myflipflop;

architecture main of myflipflop is
    -- define any extra signals here
    signal o_q_d_temp : std_logic;

begin

    basic : process
    begin
        wait until rising_edge(i_clock);
        o_q <= i_d;
    end process;

    proc_a : process
    begin
        -- insert code for part (a) here
        wait until rising_edge(i_clock);
        if (i_reset = '1') then
            o_q_a <= '0';
        else
            o_q_a <= i_d;
        end if;
    end process;

    proc_b : process (i_clock)
    begin
        if rising_edge(i_clock) then
            if (i_ce = '1') then
                o_q_b <= i_d;
            end if;
        end if;
    end process;

    proc_c : process (i_clock)
    begin
        if rising_edge(i_clock) then
            if i_sel = '1' then
                o_q_c <= i_d2;
            else
                o_q_c <= i_d;
            end if;
        end if;
    end process;
    o_q_d <= o_q_d_temp;
    proc_d : process (i_clock)
    begin
        if rising_edge(i_clock) then
            if i_sel = '0' then
                o_q_d_temp <= i_d;
            else
                o_q_d_temp <= not o_q_d_temp;
            end if;
        end if;
    end process;

-- place any extra code or processes here

end architecture;
