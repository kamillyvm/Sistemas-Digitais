library ieee;
use ieee.std_logic_1164.all;

entity questao3 is
	port(
		a, b, c, d: in std_logic;
		s1: out std_logic;
		s2: out std_logic
	);
end questao3;

architecture arc of questao3 is
begin
	s1 <= (not a and b and not c and not d) or
			(not a and b and not c and d) or
			(not a and b and c and not d) or
			(not a and b and c and d);
			
	s2 <= (not a and not b and not c and d) or
			(not a and b and not c and d) or
			(a and not b and not c and d) or
			(a and b and not c and d);
		
end arc;