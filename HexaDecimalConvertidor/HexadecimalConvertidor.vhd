--Decodificador hexadecimal para display de 7 segmentos
Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HexadecimalConvertidor is 
		port
		(
		A1, B2, C3, D4 : in STD_LOGIC;
		a, b, c, d, e, f, g : out STD_LOGIC
		
		);
end HexadecimalConvertidor;

architecture ecuaciones of HexadecimalConvertidor is 

begin

a <= (A1 and not D4)or(B2 and C3)or(not A1 and C3)or(not B2 and not D4)or(A1 and not B2 and not C3)or(not A1 and B2 and D4);
b <= (not B2 and not D4)or(not A1 and not B2)or(A1 and not C3 and D4)or(not A1 and C3 and D4)or(not A1 and not C3 and not D4);
c <= (A1 and not B2) or (not A1 and B2) or (not C3 and D4) or (not B2 and D4) or (not B2 and not C3);
d <= (A1 and not B2 and D4) or (A1 and B2 and not D4) or (B2 and not C3 and D4) or (not A1 and C3 and not D4) or (not B2 and C3 and D4) or (not B2 and not C3 and not D4);
e <= (A1 and C3) or (A1 and B2) or (C3 and not D4) or (not B2 and not D4);
f <= (A1 and not B2) or (A1 and C3) or (B2 and not D4) or (not C3 and not D4) or (not A1 and B2 and not C3);
g <= (A1 and not B2) or (A1 and D4) or (C3 and not D4) or (not B2 and C3) or (B2 and not C3 and D4) or (not A1 and B2 and not D4);

end ecuaciones;