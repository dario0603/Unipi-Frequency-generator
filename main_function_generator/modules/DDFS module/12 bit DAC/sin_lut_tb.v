
module sin_lut_tb;

	//parameter definition
	parameter CLK_PERIOD = 10;		//time units of clock period duration
	
	parameter DATA_WIDTH = 12;
	parameter ADDR_WIDTH = 10;
	parameter MAX_LUT = 2**(ADDR_WIDTH);
	
	//input signals
	reg clk;
	reg [ADDR_WIDTH-1:0] addr;
	
	//output signals
	wire [DATA_WIDTH-1:0] q;
	
	//DUT instance
	sin_lut #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) dut(
	
		//input ports
		.addr(addr),
		.clk(clk),
		
		//output ports
		.q(q)
		
	);
	
	//clock signal generator
	initial begin
		clk = 0;
		forever #(CLK_PERIOD/2) clk = !clk;
	end
	
	//lut reading test
	initial begin
		addr = 0;
		forever begin
			//increase counter if is not overflow
			#(CLK_PERIOD/2) addr = (addr == MAX_LUT) ? 0 : addr+1;
		end
	end
	
	//stop simulation
	initial		
		#(CLK_PERIOD*MAX_LUT) $stop;  
	
endmodule
