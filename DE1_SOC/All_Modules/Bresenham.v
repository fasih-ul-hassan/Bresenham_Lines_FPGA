//////////////////////////////////////////////////////////////////////////
// Draws Lines with Bresenham Algorithm
// Has Access to the RAM


module Bresenham
//#(parameter X_WIDTH=160, parameter Y_WIDTH=120)
(clk, write_En, x1, y1, Bres_addr, Bres_colour);
	input clk, write_En;
	input [7:0] x1;
	input [6:0] y1;
	
	always @(posedge clk)
	begin
		if (write_En)
			;
		end
	end
	
endmodule
//////////////////////////////////////////////////////////////////////////