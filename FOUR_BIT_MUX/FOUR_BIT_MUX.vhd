----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:35:34 02/26/2022 
-- Design Name: 
-- Module Name:    FOUR_BIT_MUX - Dataflow 
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

entity FOUR_BIT_MUX is
    Port ( D0 : in  STD_LOGIC;
           D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           D3 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end FOUR_BIT_MUX;

architecture Dataflow of FOUR_BIT_MUX is

begin

Y <= ((NOT (S0)) AND (D0 AND (NOT (S1)))) OR (((NOT (S0)) AND D1) AND S1) OR (((S0) AND (D2)) AND (NOT (S1))) OR (((S0) AND (D3)) AND S1);


end Dataflow;

