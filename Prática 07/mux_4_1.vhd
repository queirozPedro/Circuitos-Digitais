library ieee;
use ieee.std_logic_1164.all;

entity mux_4_1 is
    port (
        I0, I1, I2, I3 : in  std_logic_vector(3 downto 0);
        S              : in  std_logic_vector(1 downto 0);
        F              : out std_logic_vector(3 downto 0)
    );
end entity mux_4_1;

architecture behavioral of mux_4_1 is
begin
    with S select
        F <= I0                when "00", -- Se S = 00, então a saída F recebe I0
             I1                when "01", -- Se S = 01, então a saída F recebe I1
             I2                when "10", -- Se S = 10, então a saída F recebe I2
             I3                when "11", -- Se S = 11, então a saída F recebe I3
             (others => '0')   when others; -- Caso contrário, a saída F recebe 0
end architecture behavioral;
