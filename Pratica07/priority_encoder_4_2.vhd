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

    M <= "11" when X(3) = '0' else 
         "10" when X(2) = '0' else
         "01" when X(1) = '0' else
         "00" when X(0) = '0' else
         "00";

    V <= '1' when X /= "1111" else
         '0';

end behavioral;
