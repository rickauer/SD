----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:26:13 09/20/2022 
-- Design Name: 
-- Module Name:    fourbits - Behavioral 
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

entity increment is
    Port ( cin : in  STD_LOGIC; -- Entrada Carry In
			  a, b : in  STD_LOGIC_vector(3 downto 0); -- Entrada de dois vetores de 4 bits
           s : out  STD_LOGIC_vector(3 downto 0); -- Saída de um vetor de 4 bits
           cout : out  STD_LOGIC); -- Saída Carry Out

end increment;
architecture Behavioral of increment is
	component adder
		PORT(x,y,z: IN std_logic; Sum, Carry: OUT std_logic);
	END COMPONENT;
	SIGNAL t: std_logic_vector(3 downto 1);
begin
	FA5: adder PORT MAP('1',a(0),'0',s(0),t(1)); -- Soma do vetor "a" com um Carry In de Valor 1 para gerar o incremento usando um somador completo de 4 bits
	FA6: adder PORT MAP(t(1),a(1),'0',s(1),t(2));
	FA7: adder PORT MAP(t(2),a(2),'0',s(2),t(3));
	FA8: adder PORT MAP(t(3),a(3),'0',s(3),Cout);

end Behavioral;