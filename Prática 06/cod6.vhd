library ieee;
use ieee.std_logic_1164.all;

entity modelo_canal_bsc is
    port (
        D_original   : in  std_logic_vector(3 downto 0);
        E_controle   : in  std_logic_vector(3 downto 0);
        Erro_paridade  : out std_logic
    );
end entity modelo_canal_bsc;

architecture behavioral of modelo_canal_bsc is
    signal paridade_recebida, P : std_logic;
    signal D_modificado_3, D_modificado_2, D_modificado_1, D_modificado_0 : std_logic;
begin
    P <= D_original(3) xor D_original(2) xor D_original(1) xor D_original(0);

    D_modificado_3 <= D_original(3) xor E_controle(3);
    D_modificado_2 <= D_original(2) xor E_controle(2);
    D_modificado_1 <= D_original(1) xor E_controle(1);
    D_modificado_0 <= D_original(0) xor E_controle(0);

    paridade_recebida <= D_modificado_3 xor D_modificado_2 xor D_modificado_1 xor D_modificado_0;
    Erro_paridade <= '1' when paridade_recebida /= P else '0';

end architecture behavioral;
