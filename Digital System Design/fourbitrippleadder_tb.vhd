library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.fourbitrippleadder;

entity fourbitrippleadder_tb is
end fourbitrippleadder_tb;

architecture tb_arch of fourbitrippleadder_tb is
    signal A, B : std_logic_vector(3 downto 0);
    signal Cin: std_logic := '0';
    signal SUM: std_logic_vector(3 downto 0);
    signal COUT: std_logic;

    component fourbitrippleadder
        port (
            A, B : in std_logic_vector(3 downto 0);
            Cin: in std_logic;
            SUM: out std_logic_vector(3 downto 0);
            COUT: out std_logic
        );
    end component;

begin
    uut: fourbitrippleadder
        port map (
            A => A,
            B => B,
            Cin => Cin,
            SUM => SUM,
            COUT => COUT
        );

        tb_process: process
        begin
                -- -3 (-0011) + 4 (0100) = 1 (0001)
                A <= "1101"; -- Two's complement of -3
                B <= "0100"; -- Positive 4
                wait for 10ns;
        
                -- -4 (-0100) + 2 (0010) = -2 (-0010)
                A <= "1100"; -- Two's complement of -4
                B <= "0010"; -- Positive 2
                wait for 10ns;
        
                -- 3 (0011) + 3 (0011) = 6 (0110)
                A <= "0011"; -- Positive 3
                B <= "0011"; -- Positive 3
                wait for 10ns;
            
            wait;
        end process tb_process;
end tb_arch;