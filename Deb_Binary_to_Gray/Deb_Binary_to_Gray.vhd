----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:00 03/16/2022 
-- Design Name: 
-- Module Name:    Deb_Binary_to_Gray - Behavioral 
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

entity Deb_Binary_to_Gray is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           A_OUT : out  STD_LOGIC;
           B_OUT : out  STD_LOGIC;
           C_OUT : out  STD_LOGIC;
           D_OUT : out  STD_LOGIC);
end Deb_Binary_to_Gray;

architecture Behavioral of Deb_Binary_to_Gray is

begin
Process(A,B,C,D)
	begin
		A_OUT <= A;
		B_OUT <= A XOR B;
		C_OUT <= B XOR C;
		D_OUT <= C XOR D;
end Process;
		

end Behavioral;

