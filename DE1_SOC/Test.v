module Test(CLOCK_50, SW, KEY,
				VGA_R, VGA_G, VGA_B,
				VGA_HS, VGA_VS, VGA_BLANK, VGA_SYNC, VGA_CLK);
	
	input CLOCK_50;
	input [9:0] SW;
	input [3:0] KEY;
	
	output [9:0] VGA_R;
	output [9:0] VGA_G;
	output [9:0] VGA_B;
	output VGA_HS;
	output VGA_VS;
	output VGA_BLANK;
	output VGA_SYNC;
	output VGA_CLK;

	wire [2:0] colour_wire;	
	wire [7:0] X_wire;
	wire [6:0] Y_wire;	
	
	assign colour_wire = 3'b111;
	assign X_wire = 4'b1010;
	assign Y_wire = 4'b1010;
	
	vga_adapter VGA(
			.resetn(KEY[0]),
			.clock(CLOCK_50),
			.colour(colour_wire),
			.x(X_wire),
			.y(Y_wire),
			.plot(~(KEY[1])),
			.VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.VGA_BLANK(VGA_BLANK),
			.VGA_SYNC(VGA_SYNC),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "160x120";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BACKGROUND_IMAGE = "black.mif";
		
endmodule