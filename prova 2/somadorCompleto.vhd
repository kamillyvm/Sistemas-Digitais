library ieee; 
use ieee.std_logic_1164.all;

entity somadorCompleto is 
    port(
        A, B, cin: in std_logic;
        s, carry: out std_logic
    );
end somadorCompleto;

architecture arc of somadorCompleto is 
begin

    carry <= (A and cin) or (A and B) or (B and cin);
    s <= A xor B xor cin;
    
end arc;