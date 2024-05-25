----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:35:30 11/22/2021 
-- Design Name: 
-- Module Name:    REGISTER - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL; 
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY REGISTE IS
GENERIC(N : INTEGER RANGE 0 TO 31:=8);

PORT(INPUT :IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
CLOCK, ENABLE ,RESET :IN STD_LOGIC;
OUTPUT :OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));

END REGISTE;

ARCHITECTURE BEHAVIORAL OF REGISTE IS
SIGNAL D : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
BEGIN
	PROCESS(CLOCK)
--	variable  D : STD_LOGIC_VECTOR(N-1 DOWNTO 0);

	BEGIN
		IF (CLOCK'EVENT AND CLOCK='1') THEN
				IF RESET='1' THEN
					D<=(OTHERS=>'0');
				ELSIF ENABLE='1' THEN
					D<=INPUT;
	END IF;
END IF;
END PROCESS;

OUTput<=D;
END BEHAVIORAL;


