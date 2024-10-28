-- CIRCUITOS ARITMETICOS (SUMADOR Y RESTADOR DE 4 BITS EN PARALELO, COMPARADOR)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all; 
use IEEE.std_logic_unsigned.all;

entity CircuitosAritmeticos is 

	Port(
		A, B: in STD_LOGIC_VECTOR(3 downto 0); -- (a3, a2, a1, a0)
		SUMA: out STD_LOGIC_VECTOR(4 downto 0); 
		RESTA: out STD_LOGIC_VECTOR(4 downto 0);
		COMPARADOR: out STD_LOGIC_VECTOR(2 downto 0)
	);

end CircuitosAritmeticos;

architecture Ecuaciones of CircuitosAritmeticos is

begin

process (A, B) is

	begin
	-- & es el simbolo para indicar concatenacion 
	SUMA <= ('0' & A) + ('0' & B);-- Se concatena un 0 para el bit Carry
	RESTA <= ('0' & A) - ('0' & B); -- se concatena un 0 para el prestamista
	
	-- Realiza comparaciones respecto hacia A
	if (A = B) then COMPARADOR <= "001";
	elsif (A < B) then COMPARADOR <= "010";
	elsif (A > B) then COMPARADOR <= "100";
	end if; 
	 
end process;

end Ecuaciones;