library ieee;
use ieee.std_logic_1164_all;

entity comparator is
  generic(n: natural :=2);
  port (
    A,B: in std_logic_vector(n-1 downto 0)
    less_than: out std_logic;
    equal_to: out std_logic;
    greater_than: out std_logic;
  );
end comparator;

architecture arch of comparator is

begin

    process(A,B)
        if (A < B) then
            less_than <= '1';
            equal_to <= '0';
            greater_than <='0';
        elsif (A == B) then
            less_than <= '1';
            equal_to <= '0';
            greater_than <='0';
        elsif (A > B) then
            less_than <= '1';
            equal_to <= '0';
            greater_than <='0';           
        else
            less_than <= 'X';
            equal_to <= 'X';
            greater_than <='X';   
        end if
    end process;
end arch ; -- arch