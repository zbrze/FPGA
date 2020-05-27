library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity seven_seg_display is
	port ( W1, W2, W3, W4 : in STD_LOGIC;
		   a, d, e, f, g, a1, b1, c1, d1, g1 : out STD_LOGIC);
end seven_seg_display;
 
architecture snake of seven_seg_display is
begin
	a <= (not W1 and W2 and W3) or (W1 and not W2 and not W3 and not W4);
	d <= (not W1 and not W2 and not W3) or (not W1 and not W2 and not W4);
	e <= (not W1 and not W2 and not W3) or (W1 and not W2 and W3 and W4);
	f <= (not W1 and W2 and W4) or (not W1 and W2 and W3);
	g <= (not W1 and not W3 and not W4) or (not W1 and W2 and not W3) or (not W1 and W2 and not W4) or (W1 and not W2 and W3);
	a1 <= (not W1 and W2 and W3 and W4) or (W1 and not W2 and not W3);
	b1 <= (W1 and not W2 and not W3) or (W1 and not W2 and not W4);
	c1 <= (not W1 and not W2 and W3) or (not W1 and W2 and not W3 and not W4);
	d1 <= (not W1 and not W2 and W4) or (not W1 and not W2 and W3);
	g1 <= (not W2 and W3 and W4) or (not W1 and W2 and not W3) or (W1 and not W2 and W4) or (W1 and not W2 and W3);

end snake;

