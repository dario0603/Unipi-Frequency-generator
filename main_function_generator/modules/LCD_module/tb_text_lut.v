`timescale 1ns/1ps

module tb_text_lut;

	 parameter DATA_WIDTH=9;
	 parameter ADDR_WIDTH=6;
	 parameter PAGE_ADDR_WIDTH=5;
	 reg [ADDR_WIDTH-1:0] char_index = 0;
	 reg [PAGE_ADDR_WIDTH-1:0] page_index = 0;
	 reg clk;
	 wire [DATA_WIDTH-1:0] lut_out; 


    // Instantiate the DUT (Device Under Test)
    text_lut dut (
        .addr(char_index),
        .page(page_index),
        .clk(clk),
        .q(lut_out)
    );

    // Generate a clock: 100 MHz (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // toggle every 10 ns
    end

    // Stimulus block
    initial begin
        // Initialize signals
		  char_index = 0;
		  page_index = 0;
		  #200
		  
		  char_index = 1;
		  page_index = 0;
		  #200
		  
		  char_index = 2;
		  page_index = 0;
		  #200
		  
		  char_index = 4;
		  page_index = 0;
		  #200
		  
		  char_index = 5;
		  page_index = 0;
		  #200
		  
		  char_index = 6;
		  page_index = 0;
		  #200
		  
		  char_index = 10;
		  page_index = 0;
		  #200
		  
		  char_index = 0;
		  page_index = 1;
		  #200
		  
		  char_index = 30;
		  page_index = 1;
		  #200
		  
		  char_index = 5;
		  page_index = 5;
		  #200
        // Finish simulation
        $stop;
    end

endmodule