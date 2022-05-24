----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:09 02/26/2022 
-- Design Name: 
-- Module Name:    AND_OR_INVERTER - Dataflow 
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

entity AND_OR_INVERTER is
    Port ( P : in  STD_LOGIC;
           Q : in  STD_LOGIC;
           R : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end AND_OR_INVERTER;

architecture Dataflow of AND_OR_INVERTER is

begin

Z <= (NOT ((P AND Q) OR (R AND S)));


end Dataflow;

