-- SEMISUMADOR
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Semisumador is

port(
	A, B: in STD_LOGIC;
	S: out STD_LOGIC;
	CS: out STD_LOGIC
);

end Semisumador;

architecture Ecuaciones of Semisumador is
begin 
	S <= A xor B; 
	CS <= A and B;
end Ecuaciones;