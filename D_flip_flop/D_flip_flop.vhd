----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:09:23 04/27/2022 
-- Design Name: 
-- Module Name:    D_flip_flop - Behavioral 
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

entity D_flip_flop is
    Port ( D : in  STD_LOGIC;
           CLOCK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end D_flip_flop;

architecture Behavioral of D_flip_flop is

begin

	process(CLOCK)
		begin
			if(CLOCK='1' and CLOCK'EVENT) then
				Q <= D;
			end if;
	end process;



end Behavioral;

