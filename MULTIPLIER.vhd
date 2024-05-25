----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:33:54 11/22/2021 
-- Design Name: 
-- Module Name:    MULTIPLIER - Behavioral 
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

ENTITY MULTIPLIER IS
	PORT(input1_MUL : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		input2_MUL : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		OUTPUT_MUL : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END MULTIPLIER;

ARCHITECTURE BEHAVIORAL OF MULTIPLIER IS
	
BEGIN
	PROCESS(input1_MUL,input2_MUL)
	
	BEGIN
		
		
			OUTPUT_MUL <= input1_MUL*input2_MUL;
			
		
	
	END PROCESS;
	
END BEHAVIORAL;




