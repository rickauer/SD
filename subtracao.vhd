----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:29 10/18/2022 
-- Design Name: 
-- Module Name:    subtracao - Behavioral 
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

entity subtracao is
    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout : out  STD_LOGIC);

end subtracao;
architecture Behavioral of subtracao is
	component adder
		PORT(x,y,z: IN std_logic; Sum, Carry: OUT std_logic);
	END COMPONENT;
	SIGNAL t: std_logic_vector(3 downto 1);
begin
	FA5: adder PORT MAP('1',a(0),NOT b(0),s(0),t(1));
	FA6: adder PORT MAP(t(1),a(1),NOT b(1),s(1),t(2));
	FA7: adder PORT MAP(t(2),a(2),NOT b(2),s(2),t(3));
	FA8: adder PORT MAP(t(3),a(3),NOT b(3),s(3),Cout);

end Behavioral;

