library ieee;
use ieee.std_logic_1164.all;

-- 1. Projete um circuito lógico em que uma campainha que toca (saída) se o motorista 
-- der a partida no motor do carro (entrada) sem estar com o cinto de segurança 
-- afivelado (entrada).

entity questao1 is
	port(
		a, b: in std_logic;
		s: out std_logic
	);
end questao1;

architecture arc of questao1 is
begin
	s <= a and not b;
end arc;