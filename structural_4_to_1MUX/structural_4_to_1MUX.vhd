----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:33 04/06/2022 
-- Design Name: 
-- Module Name:    structural_4_to_1MUX - STRUCTURAL 
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

entity structural_4_to_1MUX is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end structural_4_to_1MUX;

architecture STRUCTURAL of structural_4_to_1MUX is

COMPONENT mux_block is
	Port(inp1, inp2, s : in std_logic;
		  X   : out std_logic);
end COMPONENT;

SIGNAL o1, o2 : std_logic;

begin

m1: mux_block port map(I0,I1,S1,O1);
m2: mux_block port map(I2,I3,S1,O2);
m3: mux_block port map(O1,O2,S0,Y);


end STRUCTURAL;

