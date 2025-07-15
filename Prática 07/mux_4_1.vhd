library ieee;
use ieee.std_logic_1164.all;

entity modelo_canal_bsc is
    port (
        I0   : in  std_logic_vector(3 downto 0);
        I1   : in  std_logic_vector(3 downto 0);
        I2   : in  std_logic_vector(3 downto 0);
        I3   : in  std_logic_vector(3 downto 0);
        S    : in  std_logic_vector(1 downto 0);
        F    : out std_logic(3 downto 0)
    );
end entity modelo_canal_bsc;

architecture behavioral of modelo_canal_bsc is
begin

    F(0) <= 
    (I0(0) and not S(1) and not S(0)) or 
    (I1(0) and not S(1) and S(0)) or 
    (I2(0) and S(1) and not S(0)) or 
    (I3(0) and S(1) and S(0));
    
    F(1) <= 
    (I0(1) and not S(1) and not S(0)) or 
    (I1(1) and not S(1) and S(0)) or 
    (I2(1) and S(1) and not S(0)) or 
    (I3(1) and S(1) and S(0));
    
    F(2) <= 
    (I0(2) and not S(1) and not S(0)) or 
    (I1(2) and not S(1) and S(0)) or 
    (I2(2) and S(1) and not S(0)) or 
    (I3(2) and S(1) and S(0));
    
    F(3) <= 
    (I0(3) and not S(1) and not S(0)) or 
    (I1(3) and not S(1) and S(0)) or 
    (I2(3) and S(1) and not S(0)) or 
    (I3(3) and S(1) and S(0));
    
end architecture behavioral;
