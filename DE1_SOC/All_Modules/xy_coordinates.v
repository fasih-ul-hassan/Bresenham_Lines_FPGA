//////////////////////////////////////////////////////////////////////////
// XY Coordinates of Pixel - 160x120
// 
// Goes from (0,0) to (160,120) one bye one
// With In-biuld Clock (50MHz)

module xy_coordinates (clk, reset, x, y);
	input clk, reset;
	output reg [7:0] x = 0;
	output reg [6:0] y = 0;
	
	
	initial
	begin
			x <= 0;
			y <= 0;
	end
	
	always @(posedge clk, negedge reset)
	begin
		if(reset == 0)
		begin
			x <= 0;
			y <= 0;
		end
		else
		begin
			if (x == 159)
			begin
				x <= 0;
				
				if ( y == 119)
					y <= 0;
				else
					y <= y + 1;
			end
			else
				x <= x + 1;
		end
	end
	
endmodule
//////////////////////////////////////////////////////////////////////////
