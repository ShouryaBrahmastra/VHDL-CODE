----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:20 03/02/2022 
-- Design Name: 
-- Module Name:    Basic_logic - Behavioral 
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

entity Basic_logic is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           AND_gate : out  STD_LOGIC;
           OR_gate : out  STD_LOGIC;
           XOR_gate : out  STD_LOGIC;
           NAND_gate : out  STD_LOGIC;
           NOT_gate : out  STD_LOGIC);
end Basic_logic;

architecture Behavioral of Basic_logic is

begin

Process(A,B)
begin
	if((A='1') and (B='1')) then
		AND_gate<='1';
	else
		AND_gate<='0';
	end if;



	if((A='0') and (B='0')) then
		OR_gate<='0';
	else
		OR_gate<='1';
	end if;



	if((A='1') and (B='1')) then
		XOR_gate<='0';
	elsif((A='0') and (B='0')) then
		XOR_gate<='0';	
	else
		XOR_gate<='1';
	end if;



	if((A='1') and (B='1')) then
		NAND_gate<='0';
	else
		NAND_gate<='1';
	end if;
end Process;

Process(A)
begin
	if((A='0')) then
		NOT_gate<='1';
	else
		NOT_gate<='0';
end if;
end Process;


end Behavioral;

