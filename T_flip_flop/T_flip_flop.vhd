----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:38 04/27/2022 
-- Design Name: 
-- Module Name:    T_flip_flop - Behavioral 
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

entity T_flip_flop is
    Port ( T : in  STD_LOGIC;
           CLOCK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end T_flip_flop;

architecture Behavioral of T_flip_flop is


signal tmp: std_logic;
begin
process (Clock)
begin
if Clock'event and Clock='1' then
 
if T='0' then
tmp <= tmp;
elsif T='1' then
tmp <= not (tmp);
end if;
end if;
end process;
Q <= tmp;
end Behavioral;



