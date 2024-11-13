library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RestadorLED is
            
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (2 downto 0);
           
           salida : out std_logic_vector(16 downto 0));

end RestadorLED;

architecture Behavioral of RestadorLED is
    
    signal diff : STD_LOGIC_VECTOR(3 downto 0);
    signal final: std_logic_vector(3 downto 0);
begin
    --Proceso para la resta utilizando diff como ayuda
    process(A, B)
    begin
        diff <= ('0' & A) - ('0' & B);
    end process;


    process(diff)
    begin
        case(diff) is
            when "0000" => salida <= "00000000111111111"; -- 0
				when "0001" => salida <= "11111111101111011"; -- 1
				when "0010" => salida <= "10010111111101011"; -- 2 
				when "0011" => salida <= "10000111111101111"; -- 3
				when "0100" => salida <= "11001111101101111"; -- 4
				when "0101" => salida <= "10100111101101111"; -- 5
				when "0110" => salida <= "10100111101101011"; -- 6
				when "0111" => salida <= "10001111111111111"; -- 7
				when "1000" => salida <= "00000000111011111"; -- Aqui empiezan los numeros negativos -8
				when "1001" => salida <= "10001111111011111"; -- -7
				when "1010" => salida <= "10100111101001011"; -- -6
				when "1011" => salida <= "10100111101001111"; -- -5
				when "1100" => salida <= "11001111101001111"; -- -4
				when "1101" => salida <= "10000111111001111"; -- -3
				when "1110" => salida <= "10010111111001011"; -- -2
				when "1111" => salida <= "11001111111011111"; -- -1
            when others => salida <= "00000000000000001";
        end case;
    end process;
end Behavioral;