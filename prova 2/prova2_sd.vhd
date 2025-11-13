library ieee;
use ieee.std_logic_1164.all;

entity prova2_sd is
    port(
        A, B : in std_logic_vector(5 downto 0);
        sel : in std_logic;
        saida : out std_logic_vector(5 downto 0);
        sinal, overflow : out std_logic
    );
end prova2_sd;

architecture arc of prova2_sd is

  component somador is
    port(
      ent1, ent2: in std_logic_vector(5 downto 0);
      saida: out std_logic_vector(5 downto 0);
      overflow: out std_logic
    );
  end component;

  component complemento2 is
    port(
      B_in : in std_logic_vector(5 downto 0);
      B_out : out std_logic_vector(5 downto 0)
    );
  end component;

  component mux is
    port(
      A, B : in std_logic_vector(5 downto 0);
      sel : in std_logic;
      s : out std_logic_vector(5 downto 0)
    );
  end component;

  signal B_compl, B_final : std_logic_vector(5 downto 0);
  signal soma_saida : std_logic_vector(5 downto 0);

begin
  u1: complemento2 port map(B, B_compl);
  u2: mux port map(B, B_compl, sel, B_final);
  u3: somador port map(A, B_final, soma_saida, overflow);

  saida <= soma_saida;
  sinal <= soma_saida(5);

end arc;