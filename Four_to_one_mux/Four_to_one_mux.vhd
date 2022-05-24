----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:16:39 03/16/2022 
-- Design Name: 
-- Module Name:    Four_to_one_mux - Behavioral 
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

entity Four_to_one_mux is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end Four_to_one_mux;

architecture Behavioral of Four_to_one_mux is

begin
Process (A,B,C,D,S0,S1)
	begin
		if (S0 ='0' and S1 = '0') then
			Y <= A;
	  elsif (S0 ='1' and S1 = '0') then
			Y <= B;
	  elsif (S0 ='0' and S1 = '1') then
			Y <= C;
	  else
			Y <= D;
	  end if;

end Process;
end Behavioral;

