library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Nbit_Adder is

generic(n: integer range 0 to 63:=32);
	port(	
			a			: in std_logic_vector(n-1 downto 0);
			b			: in std_logic_vector(n-1 downto 0);
			cin		: in std_logic;
			s			: out std_logic_vector(n-1 downto 0);
			carry		: out std_logic
			);

end Nbit_Adder;

architecture Structural of Nbit_Adder is

COMPONENT EX_FA
	port(
			A		:IN  		STD_LOGIC;
			B		:IN  		STD_LOGIC;
			C		:IN  		STD_LOGIC;
			
			sum	:OUT  	STD_LOGIC;
			carry	:OUT 		STD_LOGIC
			);
end COMPONENT;

signal c: std_logic_vector(n downto 0);

begin

	l1: for i in 0 to n-1 generate
		ui: EX_FA port map(a(i), b(i), c(i), s(i), c(i+1)); 
	end generate;
	
c(0)<=cin;

carry<=c(n);

end Structural;

