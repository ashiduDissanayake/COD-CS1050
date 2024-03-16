----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2024 02:11:40 PM
-- Design Name: 
-- Module Name: AU - Behavioral
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

entity AU is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end AU;

architecture Behavioral of AU is

component Reg
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component RCA_4           
    Port ( A0 : in STD_LOGIC;
       A1 : in STD_LOGIC;
       A2 : in STD_LOGIC;
       A3 : in STD_LOGIC;
       B0 : in STD_LOGIC;
       B1 : in STD_LOGIC;
       B2 : in STD_LOGIC;
       B3 : in STD_LOGIC;
       C_in : in STD_LOGIC;
       S0 : out STD_LOGIC;
       S1 : out STD_LOGIC;
       S2 : out STD_LOGIC;
       S3 : out STD_LOGIC;
       C_out : out STD_LOGIC);       
end component;

component Slow_Clk  
    Port ( Clk_in : in STD_LOGIC; 
           Clk_out : out STD_LOGIC);  
end component; 

signal Enable_A : STD_LOGIC;
signal Enable_B : STD_LOGIC;
signal A_out : STD_LOGIC_VECTOR (3 downto 0);
signal B_out : STD_LOGIC_VECTOR (3 downto 0);
signal Clk_Slow : STD_LOGIC;

begin
    --Logic of 1 to 2 decoder
    Enable_A <= not RegSel;
    Enable_B <= RegSel;
    
    SLow_Clk_0 : Slow_Clk
    port MAP (Clk, Clk_Slow);
    
    Reg_A : Reg
    port MAP (
        A,Enable_A,Clk_Slow,A_out
    );
    
    Reg_B : Reg
    port MAP (
        A,Enable_B,Clk_SLow,B_out
    );

    RCA_4_0 : RCA_4
    port MAP (
        A0 => A_out(0),
        A1 => A_out(1),
        A2 => A_out(2),
        A3 => A_out(3),
        B0 => B_out(0),
        B1 => B_out(1),
        B2 => B_out(2),
        B3 => B_out(3),
        C_in => '0',
        s0 => S(0),
        s1 => S(1),
        s2 => S(2),
        s3 => S(3),
        C_out => Carry
    );
    
    --logic for zero
    Zero <= (A_out(3) xnor B_out(3)) and (A_out(2) xnor B_out(2)) and (A_out(1) xnor B_out(1)) and (A_out(0) xnor B_out(0));

end Behavioral;
