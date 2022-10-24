----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:06 10/18/2022 
-- Design Name: 
-- Module Name:    modulo - Behavioral 
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

entity modulo is
    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout : out  STD_LOGIC);
end modulo;

architecture Behavioral of modulo is

begin
	s(3) <= '1';
	s(2) <= '0';
	s(1) <= '1';
	

end Behavioral;

