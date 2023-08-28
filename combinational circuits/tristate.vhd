library ieee;
use ieee.std_logic_1164.all;

entity tristate is
  port (
    A: in std_logic;
    EN: in std_logic;
    Y: out std_logic
  );
end tristate;

architecture arch of tristate is
begin
    tristate_process: process(A, EN)
    begin
        if (EN = '1') then
            Y <= A;
        else
            Y <= 'Z'; -- Use 'Z' for tristate
        end if;
    end process tristate_process;
end arch;
