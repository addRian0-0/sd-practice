------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity practica2 is
	Port (
        -- Definición de 8 entradas de un bit cada una
        A : in STD_LOGIC_VECTOR (4 downto 0);
        
        -- Definición de 5 salidas de un bit cada una
        Y : out STD_LOGIC_VECTOR (4 downto 0)
    );
end practica2;

architecture Behavioral of practica2 is

begin
    -- Asignación de las salidas usando operaciones simples sobre las entradas
    -- Estas son solo asignaciones de prueba, puedes cambiar la lógica a gusto
   Y <= A;
end Behavioral;