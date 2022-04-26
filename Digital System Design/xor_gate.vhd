library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
  port (
    A,B: in std_logic;
    Y: out std_logic
  );
end xor_gate;

architecture arch of xor_gate is

begin
    process(A,B)
    begin

        if (A = '0' and B = '0') then
            Y <= '0';
        elsif (A = '0' and B = '1') then
            Y <= '1';
        elsif (A = '1' and B = '0') then
            Y <= '1';
        elsif (A = '1' and B = '1') then
            Y <= '0';
        end if;
    end process;
end arch ; -- arch