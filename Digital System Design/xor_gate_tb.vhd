library ieee;
use ieee.std_logic_1164.all;
use work.xor_gate; -- Assuming your XOR gate entity is in the "work" library

entity xor_gate_tb is
end xor_gate_tb;

architecture tb of xor_gate_tb is
    signal A, B, Y: std_logic;

begin
    -- Instantiate the XOR gate
    uut: entity work.xor_gate port map (A => A, B => B, Y => Y);

    -- Test all combinations of A and B
    process
    begin
        A <= '0';
        B <= '0';
        wait for 10 ns;
        assert Y = '0' report "Test failed for A = '0', B = '0'" severity error;

        A <= '0';
        B <= '1';
        wait for 10 ns;
        assert Y = '1' report "Test failed for A = '0', B = '1'" severity error;

        A <= '1';
        B <= '0';
        wait for 10 ns;
        assert Y = '1' report "Test failed for A = '1', B = '0'" severity error;

        A <= '1';
        B <= '1';
        wait for 10 ns;
        assert Y = '0' report "Test failed for A = '1', B = '1'" severity error;

        wait;
    end process;

    -- Stop simulation when all tests pass
    process
    begin
        wait for 1 ns;
        report "All tests passed!" severity note;
        wait;
    end process;

end tb;
