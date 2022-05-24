----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:49 04/06/2022 
-- Design Name: 
-- Module Name:    Three_to_Eight_decoder - Behavioral 
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

entity Three_to_Eight_decoder is
    Port ( A,B,C : in  STD_LOGIC;
           D : out  STD_LOGIC_VECTOR(0 TO 7));
end Three_to_Eight_decoder;

architecture Behavioral of Three_to_Eight_decoder is

begin

PROCESS(A,B,C)
	VARIABLE S : STD_LOGIC_VECTOR(0 TO 2);
	begin	
	S := A&B&C;
	CASE S IS
		WHEN "000" => D <="00000001";
		WHEN "001" => D <="00000010";
		WHEN "010" => D <="00000100";
		WHEN "011" => D <="00001000";
		WHEN "100" => D <="00010000";
		WHEN "101" => D <="00100000";
		WHEN "110" => D <="01000000";
		WHEN OTHERS => D <="10000000";
	END CASE;
END PROCESS;


end Behavioral;

