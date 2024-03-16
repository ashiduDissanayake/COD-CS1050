----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2024 03:07:18 PM
-- Design Name: 
-- Module Name: Muxr_8_to_1 - Behavioral
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

entity Muxr_8_to_1 is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           R : out STD_LOGIC);
end Muxr_8_to_1;

architecture Behavioral of Muxr_8_to_1 is

component Decode_3_to_8
     port(
         I: in STD_LOGIC_VECTOR;
         EN: in STD_LOGIC;
         Y: out STD_LOGIC_VECTOR );
 end component;
 
 signal I : STD_LOGIC_VECTOR (2 downto 0);
 signal Y : STD_LOGIC_VECTOR (7 downto 0);

begin
 Decode_3_to_8_0 : Decode_3_to_8
    port map(
        I => S,
        EN => EN,
        Y => Y );

R <= (D(0) and Y(0)) or (D(1) and Y(1)) or (D(2) and Y(2)) or (D(3) and Y(3)) or (D(4) and Y(4)) or (D(5) and Y(5)) or (D(6) and Y(6)) or (D(7) and Y(7));


end Behavioral;
