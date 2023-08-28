library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port (
    A, B: in std_logic;
    O: out std_logic
  ) ;
end decoder ;

architecture arch of decoder is
    begin
        dec : process(A, B)
        begin
            case (A & B) is
                when "00" =>
                    O <= "0001";
                when "01" =>
                    O <= "0010";
                when "10" =>
                    O <= "0100";
                when "11" =>
                    O <= "1000";
                when others =>
                    O <= "XXXX"; -- Default case, should be included
            end case;
        end process; -- dec
    end architecture; -- arch
    