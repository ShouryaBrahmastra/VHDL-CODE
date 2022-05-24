----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:16:32 04/27/2022 
-- Design Name: 
-- Module Name:    JK_flip_flop - Behavioral 
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

entity JK_flip_flop is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLOCK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Q_BAR : out  STD_LOGIC);
end JK_flip_flop;

architecture Behavioral of JK_flip_flop is

begin

		PROCESS(CLOCK)
			variable TMP: std_logic;
			begin
				if(CLOCK='1' and CLOCK'EVENT) then
					if(J='0' and K='0')then
					TMP:=TMP;
					elsif(J='1' and K='1')then
					TMP:= not TMP;
					elsif(J='0' and K='1')then
					TMP:='0';
					else
					TMP:='1';
					end if;
				end if;
			Q_bar<=TMP;
			Q<=not TMP;
		end PROCESS;



end Behavioral;

