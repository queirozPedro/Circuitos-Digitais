LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY exemplo01 IS
    PORT (
        x, y, z : IN STD_LOGIC;
        F1, F2 : OUT STD_LOGIC
    );
END exemplo01;

ARCHITECTURE comportamento OF exemplo01 IS
BEGIN
    F1 <= x OR ((NOT y) AND z);
    F2 <= (x AND (NOT y)) OR ((NOT x) AND z);
END comportamento;