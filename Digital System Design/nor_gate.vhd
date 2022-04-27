library ieee;
use ieee.std_logic_1164.all;

entity nor_gate is
  port (
    A,B: in std_logic;
    Y: out std_logic
  );
end nor_gate;

architecture conditional of nor_gate is

begin
    process(A,B)
    begin

        if (A = '0' and B = '0') then
            Y <= '1';
        elsif (A = '0' and B = '1') then
            Y <= '0';
        elsif (A = '1' and B = '0') then
            Y <= '0';
        elsif (A = '1' and B = '1') then
            Y <= '0';
        end if;
    end process;
end conditional ; -- arch


architecture operator of nor_gate is

begin

    Y <= A nor B;

end operator ; -- operator

architecture selectedsignalassignment of nor_gate is
    signal temp_signal: std_logic_vector(1 downto 0);
begin
    temp_signal <= A & B;
    
    with temp_signal select

        Y <= '1' when "00",
             '0' when others;

end selectedsignalassignment; -- selectedsignalassignment



