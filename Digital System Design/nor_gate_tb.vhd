library ieee;
use ieee.std_logic_1164.all;

entity nor_gate_tb is
end nor_gate_tb;

architecture tb of nor_gate_tb is

    signal A,B: std_logic := '0';
    signal Y: std_logic;

begin

    UUT : entity work.nor_gate port map (A => A, B => B, Y => Y);

    -- 00 at 0 ns
    -- 01 at 20 ns, as b is 0 at 20 ns and a is changed to 1 at 20 ns
    -- 10 at 40 ns
    -- 11 at 60 ns

    a <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
    b <= '0', '1' after 40 ns; 

    -- Stimulus process to stop simulation after a certain time
    stimulus_process: process
    begin
        wait for 100 ns; -- Adjust the simulation time as needed
        report "Simulation finished" severity note;
        wait;
    end process stimulus_process;
end tb ; -- tb

