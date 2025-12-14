`timescale 1ns/1ps

module tb_ddfs;

	parameter CLOCK_PERIOD = 10; // 10ns clock period

   //testbench signals
	reg sin;
	reg triang;
	reg mirror_x;
	reg mirror_y;
	reg [6:0] fw;
	reg clk;
	reg rst_n;
	reg [2:0] freq_cntrl;
	wire blank_n;
	wire sync_n;
	wire [9:0] q;

	//instantiate the DUT (Device Under Test)
	ddfs dut (
		.sin(sin),
		.triang(triang),
		.mirror_x(mirror_x),
		.mirror_y(mirror_y),
		.fw(fw),
		.clk(clk),
		.rst_n(rst_n),
		.freq_cntrl(freq_cntrl),
		.q_VGA(q),
		.blank_n(blank_n),
		.sync_n(sync_n)
	);
		 
   //generate clock signal: 100 MHz (10 ns period)
	initial begin
		clk = 0;
		forever #(CLOCK_PERIOD/2) clk = ~clk;  // toggle every 10 ns
	end
	
	//power on reset 
	initial
		rst_n = 0;
	initial
		#(CLOCK_PERIOD*2) rst_n = 1;
	 
	//stimulus block
	integer i;
	initial begin
	
		//initialize signals
		rst_n = 0;
		{sin, triang, mirror_x, mirror_y} = 4'b0000;
		fw = 7'b0000000;
		freq_cntrl = 3'b001;
		  
		//testing every combination of input signals
		for(i=0; i<4'b1111;i=i+1) begin
			#(CLOCK_PERIOD*50000)
			{sin, triang, mirror_x, mirror_y} = i;
		end

		//apply sine wave
		#(CLOCK_PERIOD*50000)
		{sin, triang, mirror_x, mirror_y} = 4'b1111;		//testing sin priority
		
		//changing frequency word
		for(i=0; i<7'b1111111; i=i+10) begin
			#(CLOCK_PERIOD*50000)
			fw = i;
		end

		//finish simulation
		#(CLOCK_PERIOD*100000)
		$stop;
		
	end

endmodule
