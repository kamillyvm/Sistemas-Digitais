library ieee; 
use ieee.std_logic_1164.all;

entity complemento2 is
  port(
    B_in : in std_logic_vector(5 downto 0);
    B_out : out std_logic_vector(5 downto 0)
  );
end complemento2;

architecture arc of complemento2 is

  signal temp : std_logic_vector(5 downto 0);
  signal carry : std_logic := '1';
  
begin

  temp <= not B_in;
  
  process(temp)
    variable soma : std_logic_vector(5 downto 0);
    variable C : std_logic := '1';
     
  begin
    for i in 0 to 5 loop
      soma(i) := temp(i) xor C;
      C := temp(i) and C;
    end loop;
    B_out <= soma;
  end process;
  
end arc;