----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:17:20 10/18/2022 
-- Design Name: 
-- Module Name:    complemento - Behavioral 
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


entity complemento is
    Port ( cin : in  STD_LOGIC; -- Entrada Carry In
			  a, b : in  STD_LOGIC_vector(3 downto 0); -- Entrada Vetores de 4 bits
           s : out  STD_LOGIC_vector(3 downto 0); -- Saída Vetor de bits 
           cout : out  STD_LOGIC); -- Saída Carry Out

end complemento;
architecture Behavioral of complemento is
	component adder
		PORT(x,y,z: IN std_logic; Sum, Carry: OUT std_logic);
	END COMPONENT;
	SIGNAL t: std_logic_vector(3 downto 1);
begin
	FA5: adder PORT MAP('1',NOT a(0),'0',s(0),t(1)); -- Agora, estamos invertendo o vetor "a" e somando com o vetor "0000" com carry de entrada 1 para fazer o complemento a dois
	FA6: adder PORT MAP(t(1),NOT a(1),'0',s(1),t(2));
	FA7: adder PORT MAP(t(2),NOT a(2),'0',s(2),t(3));
	FA8: adder PORT MAP(t(3),NOT a(3),'0',s(3),Cout);

end Behavioral;


