LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY struct_1 IS
	PORT (a0: IN STD_LOGIC;
					a1: IN STD_LOGIC;
					salida: OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END ENTITY;
					
ARCHITECTURE BEHAVIORAL OF struct_1 IS
BEGIN
	salida <= "001" WHEN a0 = '0' AND a1 = '0' ELSE
				 "010" WHEN a0 = '1' AND a1 = '0' ELSE
			  	 "011" WHEN a0 = '0' AND a1 = '1' ELSE
				 "100" WHEN a0 = '1' AND a1 = '1' ELSE
				 "000";
END BEHAVIORAL;