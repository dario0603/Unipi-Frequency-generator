`timescale 1ns/1ps

module tb_ddfs;

	parameter CLOCK_PERIOD = 10; // 10ns clock period

    // Testbench signals
    reg sin;
    reg triang;
	 reg mirror_x;
    reg mirror_y;
    reg [2:0] fw;
	 reg clk;
	 reg clk_div;
	 reg rst_n;
	 reg [2:0] freq_cntrl;
    wire [11:0] q;

    // Instantiate the DUT (Device Under Test)
    ddfs dut (
        .sin(sin),
        .triang(triang),
        .mirror_x(mirror_x),
		  .mirror_y(mirror_y),
		  .fw(fw),
		  .clk(clk),
		  .rst_n(rst_n),
		  .freq_cntrl(freq_cntrl),
		  .q(q),
		  .clk_div(clk_div)
    );
	 	 
    // Generate a clock: 100 MHz (10 ns period)
    initial begin
        clk = 0;
        forever #(CLOCK_PERIOD/2) clk = ~clk;  // toggle every 10 ns
    end
	 
	 // Stimulus block
    initial begin
        // Initialize signals
        rst_n = 0;
        sin = 0;
		  triang = 0;
		  mirror_x = 0;
		  mirror_y = 0;
		  fw = 3'b000;
		  freq_cntrl = 3'b001;

        // Apply reset
        #(CLOCK_PERIOD*50);
        rst_n = 1;
		  
		  // Testing sine wave
		  #(CLOCK_PERIOD*1000)
		  sin = 1;
		  triang = 0;
		  
		  // Testing triangular wave
		  #(CLOCK_PERIOD*1000)
		  sin = 0;
		  triang = 1;
		  
		  // Testing square wave
		  #(CLOCK_PERIOD*1000)
		  sin = 0;
		  triang = 0;
		  
		  //x/y mirroring 
		  #(CLOCK_PERIOD*1000)
		  mirror_x = 1;
		  mirror_y = 1;
		  
		  // Testing sine wave
		  #(CLOCK_PERIOD*1000)
		  sin = 1;
		  triang = 0;
		  
		  // Testing triangular wave
		  #(CLOCK_PERIOD*1000)
		  sin = 0;
		  triang = 1;
		  
		  // Testing square wave
		  #(CLOCK_PERIOD*1000)
		  sin = 0;
		  triang = 0;
		  
		  //x mirroring 
		  #(CLOCK_PERIOD*1000)
		  mirror_x = 1;
		  mirror_y = 0;
		  
		  // Testing sine wave
		  #(CLOCK_PERIOD*1000)
		  sin = 1;
		  triang = 0;
		  
		  // Testing triangular wave
		  #(CLOCK_PERIOD*1000)
		  sin = 0;
		  triang = 1; 
		  
		  //y mirroring 
		  #(CLOCK_PERIOD*1000)
		  mirror_x = 0;
		  mirror_y = 1;
		  
		  // Testing sine wave
		  #(CLOCK_PERIOD*1000)
		  sin = 1;
		  triang = 0;
		  
		  // Testing triangular wave
		  #(CLOCK_PERIOD*1000)
		  sin = 0;
		  triang = 1;
		  
		  //x and y mirroring 
		  #(CLOCK_PERIOD*1000)
		  mirror_x = 1;
		  mirror_y = 1;
		  
		  // Testing sine wave
		  #(CLOCK_PERIOD*1000)
		  sin = 1;
		  triang = 0;
		  
		  // Testing triangular wave
		  #(CLOCK_PERIOD*1000)
		  sin = 0;
		  triang = 1;  
		  
		  // No mirroring 
		  #(CLOCK_PERIOD*1000)
		  mirror_x = 0;
		  mirror_y = 0;
		  
		  // Changing frequency word
		  fw = 3'b001;
		  
		  // Testing square wave
		  sin = 0;
		  triang = 0;
		  
		  // Testing sine wave
		  #(CLOCK_PERIOD*1000)
		  sin = 1; // testing sin priority 
		  triang = 1;
		  
		  // Testing triangular wave
		  #(CLOCK_PERIOD*1000)
		  sin = 0;
		  triang = 1;
		  
		  // Testing square wave
		  #(CLOCK_PERIOD*1000)
		  sin = 0;
		  triang = 0;	
		
		  // Changing frequency word
		  #(CLOCK_PERIOD*1000)
		  fw = 3'b011;
		  
		  // Testing sine wave
		  #(CLOCK_PERIOD*2000)
		  sin = 1; // testing sin priority 
		  triang = 1;
		  
		  // Testing triangular wave
		  #(CLOCK_PERIOD*2000)
		  sin = 0;
		  triang = 1;
		  
		  // Testing square wave
		  #(CLOCK_PERIOD*2000)
		  sin = 0;
		  triang = 0;		

        // Finish simulation
		  #(CLOCK_PERIOD*2000)
        $stop;
    end

endmodule