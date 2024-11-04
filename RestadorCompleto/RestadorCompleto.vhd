library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RestadorCompleto is

	port(
		A, B, PE: in STD_LOGIC; 
		PS, D: out STD_LOGIC
	);

end RestadorCompleto;

architecture Ecuaciones of RestadorCompleto is

	begin
		
	D <= A xor B xor PE; 
	PS <=  (not A and PE) or (not A and B) or (B and PE);
	
end Ecuaciones; 