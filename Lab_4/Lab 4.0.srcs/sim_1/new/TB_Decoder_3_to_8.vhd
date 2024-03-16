----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2024 02:12:12 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is

COMPONENT Decode_3_to_8
         PORT( I : in STD_LOGIC_VECTOR (2 downto 0);
               EN : in STD_LOGIC;
               Y : out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

SIGNAL I : std_logic_vector(2 downto 0);
SIGNAL EN : std_logic;
SIGNAL Y : std_logic_vector(7 downto 0);

begin

UUT: Decode_3_to_8 PORT MAP(
        I => I,
        EN => EN,
        Y => Y );
    
process
begin
    
    EN <= '1';
    
    I <= "000";
    WAIT FOR 100 ns;
    
    I <= "001";
    WAIT FOR 100 ns;
    
    I <= "010";
    WAIT FOR 100 ns;
    
    I <= "011";
    WAIT FOR 100 ns;
    
    I <= "100";
    WAIT FOR 100 ns;
    
    I <= "101";
    WAIT FOR 100 ns;
    
    I <= "110";
    WAIT FOR 100 ns;
    
    I <= "111";
    WAIT;


end process;

end Behavioral;
