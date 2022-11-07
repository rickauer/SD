
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

entity igual is -- aqui será feita a comparação igual de dois vetores
    Port ( cin : in  STD_LOGIC; -- bit de entrada Carry In
			  a, b : in  STD_LOGIC_vector(3 downto 0); -- dois vetores de entrada de 4 bits
           s : out  STD_LOGIC_vector(3 downto 0); -- vetor de saída s
           cout,f3 : out  STD_LOGIC); -- bits de saída, Carry Out e penúltimo Carry Out, respectivamente
end igual;

architecture Behavioral of igual is
	
begin
		s <= "0001" WHEN a = b -- aqui ocorre a atribuição à s de acordo com a comparação entra "a" e "b"
		ELSE "0000";
		f3 <= '0'; -- aqui definimos o vetor f3 como '0' uma vez que não ocorre nenhuma operação utilizando o adder
end Behavioral;



