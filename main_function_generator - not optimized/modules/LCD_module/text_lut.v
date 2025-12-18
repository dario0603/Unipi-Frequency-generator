module text_lut
#(parameter DATA_WIDTH=9, parameter ADDR_WIDTH=6, parameter PAGE_ADDR_WIDTH=5)
(
	input [(ADDR_WIDTH-1):0] addr,
	input [(PAGE_ADDR_WIDTH-1):0] page,
	input clk, 
	output reg [(DATA_WIDTH-1):0] q
);
	
	localparam MEM_WIDTH = PAGE_ADDR_WIDTH + ADDR_WIDTH;
	// Declare the ROM variable
	reg [DATA_WIDTH-1:0] rom[2**MEM_WIDTH-1:0];

	initial
	begin
		$readmemh("text_lut_init.txt", rom);
	end
	
	wire [2**MEM_WIDTH-1:0] mem_addr = {page, addr};

	always @ (posedge clk)
	begin
		q <= rom[mem_addr];
	end

endmodule
