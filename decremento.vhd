----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:32:28 10/18/2022 
-- Design Name: 
-- Module Name:    decremento - Behavioral 
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

entity decremento is
    Port ( cin : in  STD_LOGIC; -- Entrada Carry In
			  a, b : in  STD_LOGIC_vector(3 downto 0); -- Entrada de Dois Vetores de 4 bits
           s : out  STD_LOGIC_vector(3 downto 0); -- Saída de um vetor de 4 bits
           cout : out  STD_LOGIC); -- Saída Carry Out

end decremento;
architecture Behavioral of decremento is
	component adder
		PORT(x,y,z: IN std_logic; Sum, Carry: OUT std_logic);
	END COMPONENT;
	SIGNAL t: std_logic_vector(3 downto 1);
begin
	FA1: adder PORT MAP('0',a(0),'1',s(0),t(1)); -- Aqui estamos fazendo a soma do vetor "a" com o número -1 para conseguir o decremento
	FA2: adder PORT MAP(t(1),a(1),'1',s(1),t(2));
	FA3: adder PORT MAP(t(2),a(2),'1',s(2),t(3));
	FA4: adder PORT MAP(t(3),a(3),'1',s(3),Cout);

end Behavioral;


