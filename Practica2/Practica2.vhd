------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity practica2 is
	Port (
        clk : in std_logic;
        
        -- Salidas para los LEDs que indican el resultado de la comparación
        led0 : out std_logic; -- MA (N > S)
        led1 : out std_logic; -- ME (N < S)
        led2 : out std_logic; -- IG (N = S)
        
        -- Entradas para los bits del número secreto S y el número N introducido por el jugador
        swi0 : in std_logic; -- Bit A de S
        swi1 : in std_logic; -- Bit B de S
        swi2 : in std_logic; -- Bit C de N
        swi3 : in std_logic; -- Bit D de N

        -- Entrada para el botón de comparación
        but0 : in std_logic -- Interruptor de comparación
    );
end practica2;

architecture Behavioral of practica2 is

begin
 -- Asignación de las salidas de acuerdo a la lógica de comparación
    led0 <= ((not swi0 and not swi1 and swi3) or (not swi1 and swi2 and swi3) or (not swi0 and swi2)) and but0;
    led1 <= ((swi1 and not swi2 and not swi3) or (swi0 and swi1 and not swi3) or (swi0 and not swi2)) and but0;
    led2 <= ((not swi0 and not swi1 and not swi2 and not swi3) or (swi0 and not swi1 and swi2 and not swi3) or 
            (not swi0 and swi1 and not swi2 and swi3) or (swi0 and swi1 and swi2 and swi3)) and but0;
end Behavioral;