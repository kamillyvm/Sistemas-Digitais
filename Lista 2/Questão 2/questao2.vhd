library ieee;
use ieee.std_logic_1164.all;

entity questao2 is
	port(
		a1, a2, a3: in std_logic;
		s: out std_logic
	);
end questao2;

architecture arc of questao2 is
begin
	s <= a1 or a2 or a3;
end arc;