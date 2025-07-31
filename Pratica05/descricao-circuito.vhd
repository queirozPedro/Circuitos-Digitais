LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY motores IS
    PORT (
        M : in STD_LOGIC_VECTOR (0 to 3);
        C : out STD_LOGIC_VECTOR (0 to 3)
    );
END motores;

ARCHITECTURE comportamento OF motores IS
BEGIN
    C(0) <= M(0);
    C(1) <= M(1);
    C(2) <= M(2) and not(M(0) and M(1));
    C(3) <= M(3) and not((M(0) and M(1)) or (M(1) and M(2)) or (M(2) and M(0)));
END comportamento;