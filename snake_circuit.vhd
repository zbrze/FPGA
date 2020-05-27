library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity snake_pattern_displayer is
	port( 
		C, R : in std_logic;
		O : out std_logic_vector (9 downto 0)
		);
end snake_pattern_displayer;

architecture structure of snake_pattern_displayer is
	component seven_seg_display
		port(
		    W1, W2, W3, W4 : in std_logic;
		    a, d, e, f, g, a1, b1, c1, d1, g1 : out std_logic
		    );
	end component;
	
	signal QL : std_logic_vector(3 downto 0);
	begin
	q1: seven_seg_display port map( W1 => QL(3), W2 => QL(2), W3 => QL(1), W4 => QL(0),
									a => O(0), d => O(1), e => O(2), f => O(3), g => O(4),
									a1 => O(5), b1 => O(6), c1 => O(7), d1 => O(8), g1 => O(9));


	process (C)
	variable one_bit: std_logic_vector(3 downto 0) := "0001"; 

	begin
	
	if rising_edge(C) then
		if(QL = "1101") then
			QL <= "0000";
		else
			QL <= std_logic_vector(unsigned(QL) + unsigned(one_bit));
		end if;
	end if;
	end process;
end structure;
