`timescale 1ns/1ps

module tb_keypad_module;
	
	//parameter definition
	parameter CLK_PERIOD = 10;		//time units of clock period duration
	parameter N_COL = 4;
	parameter N_ROW = 4;
	
	reg clk;
	reg rst_n;
	reg [N_ROW-1:0] row;
	
	wire [N_COL-1:0] column;
	wire [N_COL*N_ROW-1:0] out_keys;
	
	//istantiate the dut
	keypad_module #(.N_COLUMN(N_COL), .N_ROW(N_ROW)) dut(
	
		.clk(clk), 
		.rst_n(rst_n),
		.row(row),
		
		.column(column),
		.out_keys(out_keys)
	
	);
	
	//clock signal generator
	initial begin
		clk = 0;
		forever #(CLK_PERIOD/2) clk = !clk;
	end
	
	//power on reset 
	initial
		rst_n = 0;
	initial
		#(CLK_PERIOD*2) rst_n = 1;
	
	//check the keypad button pressed
	initial begin
		
		//initialize the signals
		row = 4'b0000;
		
		//wait for the power on reset
		#(CLK_PERIOD*2) row = 4'b0000;
		
		//simulate the button pressed
		#(CLK_PERIOD*2) row = 4'b0100;
		//simulate the button released
		#(CLK_PERIOD*2) row = 4'b0000;
		
		//stop simulation
		#(CLK_PERIOD*2) $stop;
	
	end

endmodule
