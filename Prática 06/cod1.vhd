library ieee;
use ieee.std_logic_1164.all;

entity modelo_canal_bsc is
    port (
        D_original   : in  std_logic_vector(3 downto 0);
        E_controle   : in  std_logic_vector(3 downto 0);
        D_modificado : out std_logic_vector(3 downto 0)
    );
end entity modelo_canal_bsc;

architecture behavioral of modelo_canal_bsc is
begin
    D_modificado(3) <= D_original(3) xor E_controle(3);
    D_modificado(2) <= D_original(2) xor E_controle(2);
    D_modificado(1) <= D_original(1) xor E_controle(1);
    D_modificado(0) <= D_original(0) xor E_controle(0);
end architecture behavioral;

library ieee;
use ieee.std_logic_1164.all;

entity gerador_paridade is
    port (
        D : in  std_logic_vector(3 downto 0);
        P : out std_logic
    );
end entity gerador_paridade;

architecture behavioral of gerador_paridade is
begin
    P <= D(3) xor D(2) xor D(1) xor D(0);
end architecture behavioral;