library ieee; 
use ieee.std_logic_1164.all;

entity complemento2 is
  port(
    B_in : in std_logic_vector(5 downto 0);
    B_out : out std_logic_vector(5 downto 0)
  );
end complemento2;

architecture arc of complemento2 is

  component somador
    port (
        ent1, ent2: in std_logic_vector(5 downto 0);
        saida: out std_logic_vector(5 downto 0);
        overflow: out std_logic
    );
  end component;

  signal overflow: std_logic;
  
begin
  
  is: somador port map(not (B_in), "000001", B_out, overflow);
    
end arc;
