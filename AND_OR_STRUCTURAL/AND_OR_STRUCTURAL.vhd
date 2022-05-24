----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:12:54 04/05/2022 
-- Design Name: 
-- Module Name:    AND_OR_STRUCTURAL - Structural 
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

entity AND_OR_STRUCTURAL is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end AND_OR_STRUCTURAL;

architecture Structural of AND_OR_STRUCTURAL is

Component AND_g is
Port(P,Q : IN STD_logic;
		O1 : OUT STD_logic);
end Component;

Component OR_g is
Port(C,D : in STD_LOGIC;
      O2 : out STD_LOGIC);
end Component;

Component NOT_g is
Port( S : in STD_LOGIC;
      o3 : out STD_LOGIC);
end Component;

SIGNAL S1,S2,S3 : STD_LOGIC;

begin
u1 : AND_g PORT MAP(A,B,S1);
u2 : AND_g PORT MAP(C,D,S2);
u3 : OR_g PORT MAP(S1,S2,S3);
u4 : NOT_g PORT MAP(S3,Y);


end Structural;

