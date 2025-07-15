library ieee;
use ieee.std_logic_1164.all;
 
entity decoder_7_segments is
    port ( 
        S   : in std_logic_vector(3 downto 0);
        E   : out std_logic_vector(6 downto 0)
        );
end entity decoder_7_segments;
 
architecture behavioral of decoder_7_segments is
 
begin
 
E(0) <= NOT 
    (S(0) OR S(2) OR (S(1) AND S(3)) OR (NOT S(1) AND NOT S(3)));
E(1) <= NOT 
    ((NOT S(1)) OR (NOT S(2) AND NOT S(3)) OR (S(2) AND S(3)));
E(2) <= NOT 
    (S(1) OR NOT S(2) OR S(3));
E(3) <= NOT 
    ((NOT S(1) AND NOT S(3)) OR (S(2) AND NOT S(3)) OR (S(1) AND NOT S(2) AND S(3)) OR (NOT S(1) AND S(2)) OR S(0));
E(4) <= NOT 
    ((NOT S(1) AND NOT S(3)) OR (S(2) AND NOT S(3)));
E(5) <= NOT 
    (S(0) OR (NOT S(2) AND NOT S(3)) OR (S(1) AND NOT S(2)) OR (S(1) AND NOT S(3)));
E(6) <= NOT 
    (S(0) OR (S(1) AND NOT S(2)) OR ( NOT S(1) AND S(2)) OR (S(2) AND NOT S(3)));
 
end Behavioral;
