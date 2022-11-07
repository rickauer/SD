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


entity complemento is -- complemento a dois de um vetor
    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0); -- recebe dois vetores de 4 bits de entrada, sendo que o vetor a ter seu complemento é sempre o "a"
           s : out  STD_LOGIC_vector(3 downto 0); -- saída de um vetor de 4 bits
           cout : out  STD_LOGIC); -- saída do 

end complemento;
architecture Behavioral of complemento is
	component adder
		PORT(x,y,z: IN std_logic; Sum, Carry: OUT std_logic);
	END COMPONENT;
	SIGNAL t: std_logic_vector(3 downto 1);
begin
	FA5: adder PORT MAP('1',NOT a(0),'0',s(0),t(1));
	FA6: adder PORT MAP(t(1),NOT a(1),'0',s(1),t(2));
	FA7: adder PORT MAP(t(2),NOT a(2),'0',s(2),t(3));
	FA8: adder PORT MAP(t(3),NOT a(3),'0',s(3),Cout);

end Behavioral;


