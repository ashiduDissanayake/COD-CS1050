----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2024 03:06:16 PM
-- Design Name: 
-- Module Name: Multiplier_4 - Behavioral
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

entity Multiplier_4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end Multiplier_4;

architecture Behavioral of Multiplier_4 is

COMPONENT FA
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);

END COMPONENT;

signal b0a0, b0a1, b0a2, b0a3,b1a0, b1a1, b1a2, b1a3, b2a0, b2a1, b2a2, b2a3, b3a0, b3a1, b3a2, b3a3 : STD_LOGIC;
signal S_0_0, S_0_1,S_0_2, S_0_3,S_1_0, S_1_1,S_1_2, S_1_3,S_2_0, S_2_1,S_2_2, S_2_3,S_3_0, S_3_1,S_3_2, S_3_3,C_0_0, C_0_1,C_0_2, C_0_3,C_1_0, C_1_1,C_1_2, C_1_3,C_2_0, C_2_1,C_2_2, C_2_3,C_3_0, C_3_1,C_3_2, C_3_3 : STD_LOGIC;

begin

FA_0_0 : FA
Port map( 
    A => b0a1,
    B => b1a0,
    C_in => '0',
    S => S_0_0,
    C_out  => C_0_0);
    
FA_0_1 : FA
    Port map( 
        A => b0a2,
        B => b1a1,
        C_in => '0',
        S => S_0_1,
        C_out  => C_0_1);
        
FA_0_2 : FA
        Port map( 
            A => b0a3,
            B => b1a2,
            C_in => '0',
            S => S_0_2,
            C_out  => C_0_2);
            
FA_0_3 : FA
    Port map( 
        A => '0',
        B => b1a3,
        C_in => '0',
        S => S_0_3,
        C_out  => C_0_3);
        
FA_1_0 : FA
        Port map( 
            A => s_0_0,
            B => b2a0,
            C_in => '0',
            S => S_1_0,
            C_out  => C_1_0);
            
FA_1_1 : FA
    Port map( 
        A => s_0_1,
        B => b2a1,
        C_in => C_0_0,
        S => S_1_1,
        C_out  => C_1_1);
        
FA_1_2 : FA
        Port map( 
            A => s_0_2,
            B => b2a2,
            C_in => '0',
            S => S_1_2,
            C_out  => C_1_2);
            
FA_1_3 : FA
    Port map( 
        A => s_0_3,
        B => b2a3,
        C_in => C_0_0,
        S => S_1_3,
        C_out  => C_1_3);
        
FA_2_0 : FA
        Port map( 
            A => s_2_0,
            B => b3a0,
            C_in => '0',
            S => S_2_0,
            C_out  => C_2_0);
            
FA_2_1 : FA
    Port map( 
        A => s_2_1,
        B => b3a1,
        C_in => C_0_0,
        S => S_2_1,
        C_out  => C_2_1);
        
FA_2_2 : FA
        Port map( 
            A => s_2_2,
            B => b3a2,
            C_in => '0',
            S => S_2_2,
            C_out  => C_2_2);
            
FA_2_3 : FA
    Port map( 
        A => s_2_3,
        B => b3a3,
        C_in => C_0_0,
        S => S_2_3,
        C_out  => C_2_3);
        
FA_3_0 : FA
        Port map( 
            A => s_3_0,
            B => b0a1,
            C_in => '0',
            S => S_3_0,
            C_out  => C_3_0);
            
FA_3_1 : FA
    Port map( 
        A => s_3_1,
        B => '0',
        C_in => C_0_0,
        S => S_3_1,
        C_out  => C_3_1);
        
FA_3_2 : FA
        Port map( 
            A => s_3_2,
            B => b0a1,
            C_in => '0',
            S => S_3_2,
            C_out  => C_3_2);
            
FA_3_3 : FA
    Port map( 
        A => s_3_3,
        B => '0',
        C_in => C_0_0,
        S => S_3_3,
        C_out  => C_3_3);
        
b0a0 <= B(0) and A(0);
b0a1 <= B(0) and A(1);
b0a2 <= B(0) and A(2);
b0a3 <= B(0) and A(3);
b1a0 <= B(1) and A(0);
b1a1 <= B(1) and A(1);
b1a2 <= B(1) and A(2);
b1a3 <= B(1) and A(3);
b2a0 <= B(2) and A(0);
b2a1 <= B(2) and A(1);
b2a2 <= B(2) and A(2);
b2a3 <= B(2) and A(3);
b3a0 <= B(3) and A(0);
b3a1 <= B(3) and A(1);
b3a2 <= B(3) and A(2);
b3a3 <= B(3) and A(3);

Y(0) <= b0a0;
Y(1) <= S_0_0;
Y(2) <= S_0_1;
Y(3) <= C_0_1;
Y(4) <= b0a0;
Y(5) <= S_0_0;
Y(6) <= S_0_1;
Y(7) <= C_0_1;

end Behavioral;
