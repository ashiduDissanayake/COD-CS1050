----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2024 02:12:22 PM
-- Design Name: 
-- Module Name: Multiplier_2 - Behavioral
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

entity Multiplier_2 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Multiplier_2;

architecture Behavioral of Multiplier_2 is

COMPONENT FA
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);

END COMPONENT;

signal b0a0, b0a1, b1a1, b1a0 : STD_LOGIC;
signal S_0_0, S_0_1, C_0_0, C_0_1 : STD_LOGIC;


begin

FA_0_0 : FA
Port map( 
    A => b1a0,
    B => b0a1,
    C_in => '0',
    S => S_0_0,
    C_out  => C_0_0);
    
FA_0_1 : FA
    Port map( 
        A => b1a1,
        B => '0',
        C_in => C_0_0,
        S => S_0_1,
        C_out  => C_0_1);
        
b0a0 <= B(0) and A(0);
b0a1 <= B(0) and A(1);
b1a0 <= B(1) and A(0);
b1a1 <= B(1) and A(1);

Y(0) <= b0a0;
Y(1) <= S_0_0;
Y(2) <= S_0_1;
Y(3) <= C_0_1;


end Behavioral;
