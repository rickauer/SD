
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:54 10/18/2022 
-- Design Name: 
-- Module Name:    igual - Behavioral 
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

entity igual is
    Port ( cin : in  STD_LOGIC; -- aqui recebemos as entradas, sendo cin o Carry In
			  a, b : in  STD_LOGIC_vector(3 downto 0); -- Dois vetores de entrada (Quatro bits)
           s : out  STD_LOGIC_vector(3 downto 0); -- aqui são as saídas, S é um vetor de 4 bits
           cout : out  STD_LOGIC); -- cout é o Carry Out
end igual;

architecture Behavioral of igual is
	
begin
		s <= "0001" WHEN a = b -- S receberá o vetor 0001 quando "a" for igual a "b", e 0000 caso contrário.
		ELSE "0000";

end Behavioral;



