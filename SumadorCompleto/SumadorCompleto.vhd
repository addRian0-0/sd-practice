library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumadorCompleto is

	port(
		A, B, CE: in STD_LOGIC;
		S: out STD_LOGIC; 
		CS: out STD_LOGIC
	);

end SumadorCompleto;

architecture Ecuaciones of SumadorCompleto is

begin

	S <= A xor B xor CE;
	CS <= (A and CE) OR (B and CE) OR (A and B);

end Ecuaciones;