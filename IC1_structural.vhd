----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:03:25 05/15
-- Design Name: 
-- Module Name:    IC1_structural - structural 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IC1 is
	port( 
			I1,I2,I3: in std_logic;
			o1,o2	  : out std_logic
			);
end IC1;

architecture structural of IC1 is
component C1
	port(a1,b1: in std_logic;
			  y1: out std_logic);
end component;

component C2
	port(a2,b2: in std_logic;
			  y2: out std_logic);
end component;

component C3
	port(a3,b3,d3: in std_logic; 
				  y3: out std_logic);
end component;

signal q1, q2, q3,q4: std_logic;
begin

u1: C1 port map(a1=>I1, b1=>I2, y1=>q1);
u2: C1 port map(a1=>q1, b1=>I3, y1=>o1);
u3: C2 port map(I1,I2, q2); 
u4: C2 port map(I1, I3, q3); 
u5: C2 port map(I3, I2, q4); 
u6: C3 port map(q2, q3, q4,o2); 

end structural;

