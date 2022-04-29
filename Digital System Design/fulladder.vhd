library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.halfadder;

entity fulladder is
  port (
    A, B, Cin: in std_logic;
    SUM, COUT: out std_logic
  );
end fulladder;

architecture arch of fulladder is

    signal S1, S2, C1, C2 : std_logic;

begin

    HA1: entity work.halfadder port map (A, B, S1, C1);
    HA2: entity work.halfadder port map (S1, Cin, S2, C2);

    COUT <= C1 or C2;
    SUM <= S2;
end architecture ; -- arch