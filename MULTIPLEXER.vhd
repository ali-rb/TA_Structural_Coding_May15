----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:12 11/22/2021 
-- Design Name: 
-- Module Name:    MULTIPLEXER - Behavioral 
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


ENTITY MULTIPLEXER IS

PORT (INPUT1_MUX : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	  INPUT2_MUX : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	  CLOCK : IN STD_LOGIC;
	  SEL: IN STD_LOGIC;
	  OUTPUT_mux: OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
END MULTIPLEXER;

ARCHITECTURE BEHAVIORAL OF MULTIPLEXER IS
CONSTANT T : STD_LOGIC_VECTOR(15 DOWNTO 0):="0000000000000000";
BEGIN
PROCESS(CLOCK,sel)
BEGIN

  IF(CLOCK'EVENT AND CLOCK = '1') THEN
     IF SEL='0' THEN
	  OUTPUT_mux<=INPUT2_MUX;
	  ELSIF SEL='1' THEN
	  OUTPUT_mux<=INPUT1_MUX+T;
	  END IF;
	END IF;  

END PROCESS;
END BEHAVIORAL;

