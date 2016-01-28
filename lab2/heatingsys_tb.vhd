------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.heat_pkg.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is
    signal des_temp, cur_temp : signed(7 downto 0) :=  to_signed(0, 8);
    signal clk, reset : std_logic := '0';
    signal heatmode : heat_ty := off;
begin
    heatsys_test : entity work.heatingsys(main)
    port map (
        i_clock => clk,
        i_des_temp => des_temp,
        i_cur_temp => cur_temp,
        o_heatmode => heatmode,
        i_reset => reset
    );

    process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    process
    begin
        reset <= '1';
        wait for 20 ns; -- off state
        reset <= '0'; des_temp <= to_signed(20, 8); cur_temp <= to_signed(20, 8);
        wait for 20 ns; -- off state
        cur_temp <= to_signed(16, 8);
        wait for 20 ns; -- low state
        cur_temp <= to_signed(14, 8);
        wait for 20 ns; -- low state
        des_temp <= to_signed(22, 8);
        wait for 20 ns; -- high state
        cur_temp <= to_signed(24, 8);
        wait for 20 ns; -- high state
        des_temp <= to_signed(20, 8);
        wait for 20 ns; -- low state
        cur_temp <= to_signed(23, 8);
        wait for 20 ns; -- off state
        cur_temp <= to_signed(-30, 8);
        wait;           -- high state
    end process;
end architecture;
