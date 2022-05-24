----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:16:27 04/20/2022 
-- Design Name: 
-- Module Name:    SR_flip_flop - Behavioral 
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

entity SR_flip_flop is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  Q_bar : out  STD_LOGIC;
           Q : out  STD_LOGIC);
end SR_flip_flop;

architecture Behavioral of SR_flip_flop is

begin
	PROCESS(CLK)
		variable tmp: std_logic;
		begin
			if(CLK='1' and CLK' EVENT) then
				if(S='0' and R='0')then
				tmp:=tmp;
				elsif(S='1' and R='1')then
				tmp:='Z';
				elsif(S='0' and R='1')then
				tmp:='0';
				else
				tmp:='1';
				end if;
				end if;
			Q <= tmp;
			Q_bar <= not tmp;
		end PROCESS;

end Behavioral;

