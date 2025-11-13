library ieee;
use ieee.std_logic_1164.all;

entity meioSomador is 

    port(

        A, B: in std_logic;

        s, carry: out std_logic

    );

end meioSomador;

architecture arc of meioSomador is 

begin

    s <= A xor B;
    carry <= A and B;

end arc;