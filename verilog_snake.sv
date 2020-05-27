module seven_seg_display(
	input logic clock,
	output logic  a, d, e, f, g,
	output logic a1, b1, c1, d1, g1
);

reg [3:0] W;
reg [10:0] segments;

 always @(posedge clock)
 begin
	if(W == 4'b1011)
		begin
		W <= 4'b0000;
		end
	else
		begin
		W <= W + 4'b0001;
		end
 end
					
always @(*)
	case(W)				// adefgabcdg
		4'b0000:segments = 10'b0110100000;
		4'b0001:segments = 10'b0110000010;
		4'b0010:segments = 10'b0100000110;
		4'b0011:segments = 10'b0000000111;
		4'b0100:segments = 10'b0000100101;
		4'b0101:segments = 10'b0001100001;
		4'b0110:segments = 10'b1001100000;
		4'b0111:segments = 10'b1001010000;
		4'b1000:segments = 10'b1000011000;
		4'b1001:segments = 10'b0000011001;
		4'b1010:segments = 10'b0000101001;
		4'b1011:segments = 10'b0010100001;
endcase
assign null_ = segments[10];
assign a = segments[9];
assign d = segments[8];
assign e = segments[7];
assign f = segments[6];
assign g = segments[5];
assign a1 = segments[4];
assign b1 = segments[3];
assign c1 = segments[2];
assign d1 = segments[1];
assign g1 = segments[0];

endmodule
