library ieee;
use ieee.std_logic_1164.all;

entity xor is
  port (
    A,B: in bit;
    Y: out bit
  ) ;
end xor ;

architecture arch of xor is

begin

    if (A == '0' and B = '0') then
        Y <= 0;
    else if (A == '0' and B = '1') then
        Y <= 1;
    else if (A == '1' and B = '0') then
        Y <= 1;
    else if (A == '1' and B = '1') then
        Y <= 0;
    end if;
end architecture ; -- arch
