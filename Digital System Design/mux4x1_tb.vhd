library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- For numeric_std_unsigned

entity mux4x1_tb is
end mux4x1_tb;

architecture Testbench of mux4x1_tb is
    signal S_in    : bit_vector(1 downto 0);
    signal E_in    : bit_vector(3 downto 0);
    signal Y_out   : bit;
    signal E_N     : bit := '1';  -- Initialize E_N to high (disabled)
    
    component mux4
        port(
            S : in bit_vector(1 downto 0);
            E : in bit_vector(3 downto 0);
            E_N : in bit;  -- Enable signal (added)
            Y : out bit
        );
    end component;
    
begin
    DUT: mux4 port map(S_in, E_in, E_N, Y_out);
    
    -- Apply test vectors with varying S and E_in values
    E_in <= "1011", "0100" after 400 ns;
    S_in <= "00" after 100 ns, "01" after 200 ns, "10" after 300 ns, "11" after 350 ns, "00" after 450 ns, "01" after 550 ns, "10" after 650 ns, "11" after 750 ns;

    -- Enable signal (E_N) control process
    process
    begin
        wait for 350 ns;  -- Activate enable signal at 350 ns
        E_N <= '0';       -- Set E_N low (active) after 350 ns
        wait;
    end process;

end Testbench;
