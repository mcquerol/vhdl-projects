library ieee;
use.ieee.std_logic_1164.all;

entity halfadder is
  port (
    A, B: in std_logic;
    SUM, COUT: out std_logic;
  ) ;
end halfadder ;

architecture arch of halfadder is

begin

    SUM <= A xor B;
    COUT <= A and B;

end architecture ; -- arch