--Decodificador de un nombre, con Anodo Común (ConvertidorNombre)
Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ConvertidorNombre is 
	port (
	
	A1, B2, C3, D4 : in STD_LOGIC; --entradas de 4 bits, porque el nombre tien 8 letras
	salida : out STD_LOGIC_VECTOR (16 downto 0) --A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P
	
	);
end ConvertidorNombre;

architecture Tabla of ConvertidorNombre is
	--generar una signal para concatenar las varibales
	signal entrada : STD_LOGIC_VECTOR (3 downto 0);

begin 
	
	--concatenamos entradas A1, B2, C3, D4 
		entrada <= A1 & B2 & C3 & D4;
			
			process (entrada)
			begin
			
				case (entrada) is
					
					when "0000" => salida <= "00110011110110111";	-- Z
					when "0001" => salida <= "00001100111001111";	-- A	
					when "0010" => salida <= "00001100101111011";   -- M 
					when "0011" => salida <= "00000000111111111";   -- O 
					when "0100" => salida <= "00011100111001101";   -- R - X
					when "0101" => salida <= "00110011101111011";	-- I  			
					when "0110" => salida <= "00111111101111011";	-- T	
					when "0111" => salida <= "00001100111001111";	-- A	
					when others => salida <= "11111111111111111";
					
				end case;
				
			end process;
end tabla;