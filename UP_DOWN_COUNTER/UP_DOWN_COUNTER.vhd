----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:14 05/11/2022 
-- Design Name: 
-- Module Name:    UP_DOWN_COUNTER - structural 
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

entity UP_DOWN_COUNTER  is
    Port ( ud : in  STD_LOGIC;
			  clock : in  STD_LOGIC;
           vcc : in  STD_LOGIC;
           QC : out  STD_LOGIC;
           QC_bar : out  STD_LOGIC);
end UP_DOWN_COUNTER ;

architecture Structural of UP_DOWN_COUNTER  is

Component jk_flip_flop is
Port(J,K,CLK:in Std_logic;
		Q,Qbar:out Std_logic);
End Component;

Component andg is
Port(A,B:in Std_logic;
		C:out Std_logic);
End Component;

Component or_g is
Port(A,B:in Std_logic;
		C:out Std_logic);
End  Component;

Component notg is
Port(A:in Std_logic;
		Abar:out Std_logic);
End Component;

Signal qa,qa_bar,QB,QB_bar,A1,A2,A3,A4,O1,O2,N1:Std_logic;

begin

U1:jk_flip_flop Port map(vcc,vcc,clock,qa,qa_bar);
U2:andg Port map(qa,ud,A1);
U3:notg Port map(ud,N1);
U4:andg Port map(qa_bar,N1,A2);
U5:or_g Port map(A1,A2,O1);
U6:jk_flip_flop Port map(O1,O1,clock,QB,QB_bar);
U7:andg Port map(QB,A1,A3);
U8:andg Port map(QB_bar,A2,A4);
U9:or_g Port map(A3,A4,O2);
U10:jk_flip_flop Port map(O2,O2,clock,QC,QC_bar);


end Structural;
