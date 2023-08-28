library ieee;
use ieee.std_logic_1164.all;

entity alu is
  port (
    A, B: in std_logic;
    EN: in std_logic_vector(1 downto 0);
    O: out std_logic;
  );
end alu;

architecture behv of alu is

signal add, sub, ored, anded: std_logic;

begin

    add <= A + B;
    sub <= A + (not B) + 1;
    ored <= A or B;
    anded <= A and B;

    mux : process( EN )
    begin
        
        case( EN ) is
    
            when "00" =>
                O <= add;
            when "01" =>
                O <= add;
            when "10" =>
                O <= add;
            when "11" =>
                O <= add;
            when others =>
                O <= 'X'

    end process ; -- mux
            
    end case ;

end architecture ; -- arch