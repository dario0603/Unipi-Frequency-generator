`timescale 1ns/1ps

module tb_frequency_select;

	parameter CLOCK_PERIOD = 10; // 10ns clock period

	//testbench signals
	reg button_1;
	reg button_2;
	reg clk;
	reg rst_n;
	
	wire [22:0] freq_C2;
	wire [6:0] fw;
	wire [2:0] freq_control;

	//instantiate the DUT (Device Under Test)
	frequency_select dut(

		.button_1(button_1),
		.button_2(button_2),
		.clk(clk),
		.rst_n(rst_n),
		
		.freq_C2(freq_C2),
		.fw(fw),
		.freq_control(freq_control)
	  
	);
	
	//generate a clock: 100 MHz (10 ns period)
	initial begin
		clk = 0;
		forever #(CLOCK_PERIOD/2) clk = ~clk;  // toggle every 10 ns
	end
	 
	//stimulus block
	initial begin
	
		//initialize signals
		button_1 = 0;
		button_2 = 0;
		rst_n = 0;
		
		//wait 3 clock cycles before removing the reset
		#(CLOCK_PERIOD*3) rst_n = 1;
		
		//test single button bouncing
		#500 button_1 = 1;
		#20 button_1 = 0;
		#100 button_1 = 1;
		#100 button_1 = 0;
		#100 button_1 = 1;
		
		#1000 
		button_1 = 0;
		#1000
		
		//test the other button bouncing
		button_2 = 1;
		button_1 = 0;
		#20 button_2 = 0;
		#100 button_2 = 1;
		#100 button_2 = 0;
		#100 button_2 = 1;
		
		#1000
		button_2 = 0;
		#1000
		
		//test a short pulse for the first button
		button_1 = 1;
		#20 button_1 = 0;
		
		#100
		
		//test a short pulse for the second button
		button_2 = 1;
		#20 button_2 = 0;
		
		#1000
		
		//test long press of the first button
		button_1 = 1;
		#6000 button_1 = 0;
		
		#1000
		
		//test long press of the second button
		button_2 = 1;
		#6000 button_2 = 0;
		
		#1000
		
		//test long press of the first button with priority
		button_1 = 1;
		#1000 button_2 = 1;
		#6000 button_1 = 0; button_2 = 0;
		
		#1000
		
		//test frequency value overflow prevent
		button_1 = 1;
		#15000 button_1 = 0;
		
		#1000
		
		#(CLOCK_PERIOD*100) 
		$stop;
		
	end

endmodule
