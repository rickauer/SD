----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:44 10/18/2022 
-- Design Name: 
-- Module Name:    shift - Behavioral 
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

entity shift is
    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout,f3 : out  STD_LOGIC);

end shift;

architecture Behavioral of shift is
	component adder
		PORT(x,y,z: IN std_logic; Sum, Carry: OUT std_logic);
	END COMPONENT;
	SIGNAL t: std_logic_vector(3 downto 1);
begin
	FA1: adder PORT MAP('0',a(1),'0',s(0),t(1));
	FA2: adder PORT MAP(t(1),a(2),'0',s(1),t(2));
	FA3: adder PORT MAP(t(2),a(3),'0',s(2),t(3));
	FA4: adder PORT MAP(t(3),'0','0',s(3),Cout);
	f3 <= t(3) ;
end Behavioral;

