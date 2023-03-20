//////////////////////////////////////////////////////////////////////////
// Bresenham_Lines - 160x120


module Bresenham (clk, x1, y1, x, y, colour);
	input clk;
	input [7:0] x1;
	input [6:0] y1;
	wire  [7:0] x0 = 160/2;
	wire	[6:0] y0 = 120/2;
	
	output reg [7:0] x;
	output reg [6:0] y;
	output reg [2:0] colour;
		
	wire [7:0] dx = (x0 - x1);
	wire [6:0] dy = (y0 - y1);
	
	initial
	begin
			  x <= x0;
			  y <= y0;
		colour <= 0;
	end
	
	always @(posedge clk)
	begin
		x <= dx;
		y <= dy;
	end
	
endmodule
//////////////////////////////////////////////////////////////////////////
