------------------------------------------------------------------------
-- fir test bench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir_tb is
end entity;

------------------------------------------------------------------------

architecture main of fir_tb is

signal clk    : std_logic;
signal i_data : word;
signal o_data : word;

begin
    fir_inst : entity work.fir(low_pass)
    port map (
        clk => clk,
        i_data => i_data,
        o_data => o_data
    );

    process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    test : process
    begin
        i_data <= x"0000";
        --wait for 70 ns;
        wait for 330 ns;
        i_data <= x"1000";
        wait for 20 ns;
        i_data <= x"0000";
        wait;
    end process;
end architecture;
------------------------------------------------------------------------

