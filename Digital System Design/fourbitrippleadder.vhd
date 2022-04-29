library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.fulladder;

entity fourbitrippleadder is
  port (
    A, B : in std_logic_vector(3 downto 0);
    Cin: in std_logic := '0'; -- default value of Cin will be 0 if not specified
    SUM: out std_logic_vector(3 downto 0);
    COUT: out std_logic
  ) ;
end fourbitrippleadder;

architecture arch of fourbitrippleadder is

    signal C : std_logic_vector(3 downto 0); --internal carryout

begin

    FA1: entity work.fulladder port map (A(0), B(0), Cin, SUM(0), C(0));
    FA2: entity work.fulladder port map (A(1), B(1), C(0), SUM(1), C(1));
    FA3: entity work.fulladder port map (A(2), B(2), C(1), SUM(2), C(2));
    FA4: entity work.fulladder port map (A(3), B(3), C(2), SUM(3), C(3));

    COUT <= C(3);
end arch ; -- arch