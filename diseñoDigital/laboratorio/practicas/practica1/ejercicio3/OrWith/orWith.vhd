library ieee;
use ieee.std_logic_1164.all;

entity orWith is
port(
a: in std_logic_vector(1 downto 0);
c: out std_logic
);
end orWith;

architecture arqorwith of orWith is
begin
with a select
c <= '0' when "00",
		'1' when others;
		end arqorwith ;
