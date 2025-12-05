
module sin_lut
#(
	parameter DATA_WIDTH = 12, 
	parameter ADDR_WIDTH = 7
)
(
	//input pin definitions
	input [ADDR_WIDTH-1:0] addr,
	input clk,
	
	//output pin definitions
	output reg [DATA_WIDTH-1:0] q
);

	// Declare the ROM variable
	reg [DATA_WIDTH-1:0] rom[2**ADDR_WIDTH-1:0];

	initial
		$readmemb("./sin_lut_init.txt", rom);

	always @(posedge clk)
		q <= rom[addr];

endmodule
