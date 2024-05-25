----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:07:44 05/15
-- Design Name: 
-- Module Name:    FA - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EX_FA is
	port(
			A		:IN  		STD_LOGIC;
			B		:IN  		STD_LOGIC;
			C		:IN  		STD_LOGIC;
			
			sum	:OUT  	STD_LOGIC;
			carry	:OUT 		STD_LOGIC
			);


end EX_FA;

architecture Behavioral of EX_FA is
SIGNAL S1 , S2 , S3 : STD_LOGIC;
begin

S1  	<= (A		XOR	B);
S2 	<= (C		AND	S1);
S3 	<= (A		AND	B);

sum	<=	(S1	XOR	C);
carry	<=	(S2	OR		S3);



end Behavioral;

