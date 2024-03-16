----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2024 02:41:51 PM
-- Design Name: 
-- Module Name: TB_Multiplier_2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Multiplier_2 is
--  Port ( );
end TB_Multiplier_2;

architecture Behavioral of TB_Multiplier_2 is

COMPONENT Multiplier_2
        Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
               B : in STD_LOGIC_VECTOR (1 downto 0);
               Y : out STD_LOGIC_VECTOR (3 downto 0));

END COMPONENT;

signal A, B : STD_LOGIC_VECTOR (1 downto 0);
signal Y : STD_LOGIC_VECTOR(3 downto 0);

begin
    UUT: Multiplier_2 PORT MAP(A, B, Y);

process
begin

    A <= "10";
    B <= "01";
    
    Wait for 100ns;
    
    B <= "11";
    
    Wait;

end process;
end Behavioral;
