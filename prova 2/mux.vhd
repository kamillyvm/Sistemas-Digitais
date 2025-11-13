library ieee;
use ieee.std_logic_1164.all;

entity mux is
  port(
    A, B : in std_logic_vector(5 downto 0);
    sel : in std_logic;
    s : out std_logic_vector(5 downto 0)
  );
end mux;

architecture arc of mux is
begin

  process(A, B, sel)
  begin
    if sel = '0' then
      s <= A;   -- usa B normal
    else
      s <= B;   -- usa B (com complemento de 2, ou seja, subtração)
    end if;
  end process;
  
end arc;