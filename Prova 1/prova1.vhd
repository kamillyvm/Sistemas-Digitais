library ieee;
use ieee.std_logic_1164.all;

entity prova1 is
	port(
		be, bs, ae, as: in std_logic;
		pe, ps, e: out std_logic
	);
end prova1;

architecture arc of prova1 is
begin
	pe <= (be and bs and not ae and not as);
	
	ps <= (not be and bs and not ae and not as);
	
	e <= (not be and not bs and ae and as) or
			(not be and bs and ae and as) or
			(be and not bs and ae and as) or
			(be and bs and ae and as);
	
end arc;