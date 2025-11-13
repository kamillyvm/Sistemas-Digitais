library ieee; 
use ieee.std_logic_1164.all;

entity somador is 
    port (
        ent1, ent2: in std_logic_vector(5 downto 0);
        saida: out std_logic_vector(5 downto 0);
        overflow: out std_logic
    );
end somador;

architecture arc of somador is

Component meioSomador is
    port(
        A, B: in std_logic;
        s, carry: out std_logic
    );
end Component;

Component somadorCompleto is
    port(
        A, B, cin: in std_logic;
        s, carry: out std_logic
    );
end Component;

signal c1, c2, c3, c4, c5: std_logic;

begin
    bit0: meioSomador port map(ent1(0), ent2(0), saida(0), c1);
    bit1: somadorCompleto port map(ent1(1), ent2(1), c1, saida(1), c2);
    bit2: somadorCompleto port map(ent1(2), ent2(2), c2, saida(2), c3);
    bit3: somadorCompleto port map(ent1(3), ent2(3), c3, saida(3), c4);
    bit4: somadorCompleto port map(ent1(4), ent2(4), c4, saida(4), c5);
    bit5: somadorCompleto port map(ent1(5), ent2(5), c5, saida(5), overflow);
end arc;