library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display is
     port (
          btnD, btnC, btnB, btnA : in std_logic;
          seg : out std_logic_vector(6 downto 0)
     );
end entity display;

architecture Behavioral of display is
     signal M : std_logic_vector(1 downto 0);
     signal V : std_logic;
     signal S : std_logic_vector(3 downto 0);
     signal I0, I1, I2, I3 : std_logic_vector(3 downto 0);
     signal F : std_logic_vector(3 downto 0);
     signal S_inputs : std_logic_vector(3 downto 0);
begin

     S_inputs(3) <= btnA;
     S_inputs(2) <= btnB;
     S_inputs(1) <= btnC;
     S_inputs(0) <= btnD;

     U1: entity work.priority_encoder_4_2 port map(
          X => S_inputs,
          M => M,
          V => V
     );

     I3 <= "1010";
     I2 <= "1011";
     I1 <= "1100";
     I0 <= "1101";

     U2: entity work.mux_4_1 port map(
          I3 => I3,
          I2 => I2,
          I1 => I1,
          I0 => I0,
          S  => M,
          F  => F
     );

     S <= F when (V = '1') else "1111";

     U3: entity work.decoder_7_segments port map(
          S => S,
          E => seg
     );
end architecture Behavioral;
