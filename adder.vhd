----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:36 09/20/2022 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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

entity adder is
    Port ( cin : in  STD_LOGIC; -- Entrada Carry In
			  a, b : in  STD_LOGIC; -- Entrada dos vetores de 4 bits
           s : out  STD_LOGIC; -- Saída dos vetores de 4 bits
           cout : out  STD_LOGIC); -- Saída Carry Out
end adder;

architecture dataflow of adder is

begin
s<=a XOR b XOR cin; -- Esse é o código do Somador Completo Bit a Bit
cout<=(a AND b) OR (a AND cin) OR (b AND cin);

end dataflow;

