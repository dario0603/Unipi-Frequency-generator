`timescale 1ns/1ps

module keypad_4x4
(
	
	// ---- KEYPAD PINS ---- //
	
	input [3:0] column,
	output reg [3:0] row,
	
	// ---- BUTTON PINS ---- //
	
	input [3:0] button,
	input button_pressed
	
);
	integer i;
	always @(*) begin		
		//assign button value
		if(button_pressed == 1)
			for(i=0; i<4; i=i+1) begin
				if(i == button >> 2)
					row[i] = column[button % 4];
				else
					row[i] = 1;
			end
		else
			row = 4'b1111;
	end

endmodule

module tb_keypad_module;
	
	//parameter definition
	parameter CLK_PERIOD = 10;		//time units of clock period duration
	parameter N_COL = 4;
	parameter N_ROW = 4;
	
	reg clk;
	reg rst_n;
	wire [N_ROW-1:0] row;
	reg [3:0] button;
	reg button_pressed;
	
	wire [N_COL-1:0] column;
	wire [N_COL*N_ROW-1:0] out_keys;
	wire data_valid;
	
	//istantiate the dut
	keypad_module #(.N_COLUMN(N_COL), .N_ROW(N_ROW)) dut(
	
		.clk(clk), 
		.rst_n(rst_n),
		.row(row),
		
		.column(column),
		.out_keys(out_keys),
		
		.data_valid(data_valid)
	
	);
	
	//instantiate the keypad
	keypad_4x4 sim(
	
		.column(column),
		.row(row),
		
		.button(button),
		.button_pressed(button_pressed)
		
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
	integer i;
	initial begin
		
		//none button pressed
		button_pressed = 0;
		
		for(i=0; i<=4'b1111; i=i+1) begin
			//press a button
			#100
			button_pressed = 1;
			button = i;		
		end
		
		//none button pressed
		#100 button_pressed = 0;
		
		//stop simulation
		#1000 $stop;
	
	end

endmodule
