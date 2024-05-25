----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:34:45 11/22/2021 
-- Design Name: 
-- Module Name:    ADDER - Behavioral 
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

ENTITY ADDER IS
	PORT(INPUT1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		INPUT2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		OUTPUT_ADD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ADDER;

ARCHITECTURE BEHAVIORAL OF ADDER IS

BEGIN
	PROCESS(input1,input2)
	
	BEGIN
		
		
			OUTPUT_ADD <= INPUT1 + INPUT2 ;
			
	
	END PROCESS;

END BEHAVIORAL;
