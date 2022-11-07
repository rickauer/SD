----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:12:18 10/25/2022 
-- Design Name: 
-- Module Name:    ula_mod - Behavioral 
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

entity ula_mod is
    Port ( Cinr: in  STD_LOGIC;
			  --ar, br : in  STD_LOGIC_vector(3 downto 0);
			  ar : in  STD_LOGIC_vector(3 downto 0);
			  --sel : in  STD_LOGIC_vector(2 downto 0);
           sr : out  STD_LOGIC_vector(3 downto 0);
           coutr,zero,over,neg : out  STD_LOGIC);

end ula_mod;

architecture Behavioral of ula_mod is
	component complemento
		    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout,f3 : out  STD_LOGIC);
	end COMPONENT;
	component decremento
		    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout,f3 : out  STD_LOGIC);
	end COMPONENT;
	component dobro
		    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout,f3 : out  STD_LOGIC);
	end COMPONENT;
	component fourbits
		    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout,f3 : out  STD_LOGIC);
	end COMPONENT;
	component igual
		    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout,f3 : out  STD_LOGIC);
	end COMPONENT;
	component increment
		    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout,f3 : out  STD_LOGIC);
	end COMPONENT;
	component shift
		    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout,f3 : out  STD_LOGIC);
	end COMPONENT;
	component subtracao
		    Port ( cin : in  STD_LOGIC;
			  a, b : in  STD_LOGIC_vector(3 downto 0);
           s : out  STD_LOGIC_vector(3 downto 0);
           cout,f3 : out  STD_LOGIC);
	end COMPONENT;
	SIGNAL t0,t1,t2,t3,t4,t5,t6,t7,sc: STD_LOGIC_vector(3 downto 0);
	SIGNAL c0,c1,c2,c3,c4,c5,c6,c7,k0,k1,k2,k3,k4,k5,k6,k7,coutc: STD_LOGIC;
	--SIGNAL ar: STD_LOGIC_vector(3 downto 0):="0101";
	SIGNAL br: STD_LOGIC_vector(3 downto 0):="0110";
	SIGNAL sel: STD_LOGIC_vector(2 downto 0) :="010";
	
begin
	OP0: complemento PORT MAP(cinr,ar,br,t0,c0,k0);
	OP1: decremento PORT MAP(cinr,ar,br,t1,c1,k1);
	OP2: dobro PORT MAP(cinr,ar,br,t2,c2,k2);
	OP3: fourbits PORT MAP(cinr,ar,br,t3,c3,k3);
	OP4: igual PORT MAP(cinr,ar,br,t4,c4,k4);
	OP5: increment PORT MAP(cinr,ar,br,t5,c5,k5);
	OP6: shift PORT MAP(cinr,ar,br,t6,c6,k6);
	OP7: subtracao PORT MAP(cinr,ar,br,t7,c7,k7);

	coutc <= c0 when (sel="000")else
				c1 when (sel="001")else
				c2 when (sel="010")else
				c3 when (sel="011")else
				c4 when (sel="100")else
				c5 when (sel="101")else
				c6 when (sel="110")else
				c7;
	sc <= t0 when (sel="000")else
			t1 when (sel="001")else
			t2 when (sel="010")else
			t3 when (sel="011")else
			t4 when (sel="100")else
			t5 when (sel="101")else
			t6 when (sel="110")else
			t7;
	over <= k0 XOR c0 when (sel="000")else
			k1 XOR c1 when (sel="001")else
			'0' when (sel="010")else
			k3 XOR c3 when (sel="011")else
			k4 XOR c4 when (sel="100")else
			k5 XOR c5 when (sel="101")else
			'0' when (sel="110")else
			k7 XOR c7;

	neg <= '1' when (sc(3) = '1') else
			 '0';
	zero <= '1' when (sc(3)='0' AND sc(2)='0' AND sc(1)='0' AND sc(0)='0') else
			  '0';
	coutr <= coutc;
	sr <= sc;

end Behavioral;

