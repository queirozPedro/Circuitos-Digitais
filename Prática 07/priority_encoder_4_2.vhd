library ieee;
use ieee.std_logic_1164.all;
 
entity priority_encoder_4_2 is
    port(
        X : in std_logic_vector(3 downto 0);
        M : out std_logic_vector(1 downto 0); 
        V : out std_logic 
    );
end entity priority_encoder_4_2;
 
architecture behavioral of priority_encoder_4_2 is
begin
   
    M(1) <= not X(3) or not X(2);
    M(0) <= not X(3) or (X(2) and not X(1));
    V    <= not (X(3) and X(2) and X(1) and X(0)); 
end behavioral;
