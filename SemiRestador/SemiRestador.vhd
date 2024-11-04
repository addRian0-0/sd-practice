library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SemiRestador is

	port(
		A, B: in STD_LOGIC;
		PS, D: out STD_LOGIC
	);

end SemiRestador;

architecture Ecuaciones of SemiRestador is

	begin
	
	PS <= (not A and B); 
	D <= A xor B;

end Ecuaciones; 