----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:50 03/16/2022 
-- Design Name: 
-- Module Name:    BINARY_TO_GRAY - Behavioral 
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

entity BINARY_TO_GRAY is
    Port ( B3 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           G3 : out  STD_LOGIC;
           G2 : out  STD_LOGIC;
           G1 : out  STD_LOGIC;
           G0 : out  STD_LOGIC);
end BINARY_TO_GRAY;

architecture Behavioral of BINARY_TO_GRAY is

begin
Process(B3,B2,B1,B0)
begin
	G3 <= B3;
	G2<=B3 XOR B2;
	G1<=B2 XOR B1;
	G0<=B1 XOR B0;

end Process;


end Behavioral;

