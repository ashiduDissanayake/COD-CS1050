----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2024 03:18:57 PM
-- Design Name: 
-- Module Name: Tb_Mux_8_to_1 - Behavioral
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

entity Tb_Mux_8_to_1 is
--  Port ( );
end Tb_Mux_8_to_1;

architecture Behavioral of Tb_Mux_8_to_1 is
COMPONENT Muxr_8_to_1
         PORT( D : in STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           R : out STD_LOGIC);
END COMPONENT;

SIGNAL D :  std_logic_vector (7 downto 0);
SIGNAL S :  std_logic_vector (2 downto 0);
SIGNAL EN : std_logic;
SIGNAL R : std_logic;

begin

UUT: Muxr_8_to_1 PORT MAP(
        D => D,
        S => S,
        EN => EN,
        R => R);
        
process
begin

    EN <= '1';
    
    S <= "010";
    D <= "11111111";
    
    WAIT for 100 ns;
    
    S <= "101";
    WAIT for 100 ns;

    S <= "111";
    WAIT;
    
end process;

end Behavioral;
