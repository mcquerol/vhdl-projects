entity mux4x1 is
    port(
        S   : in bit_vector(1 downto 0);
        E_N : in bit;   -- Enable signal (Low active)
        E   : in bit_vector(3 downto 0);
        Y   : out bit
    );
end mux4x1;

architecture Behaviour of mux4x1 is
begin
    process(S, E_N, E)
    begin
        if E_N = '0' then  -- Enable signal is low-active
            case S is
                when "00" =>
                    Y <= E(0);
                when "01" =>
                    Y <= E(1);
                when "10" =>
                    Y <= E(2);
                when "11" =>
                    Y <= E(3);
                when others =>
                    Y <= '0';  -- You can define the default behavior here
            end case;
        else
            Y <= '0';  -- When the enable signal is high (E_N = '1'), output is low
        end if;
    end process;
end Behaviour;