module keypad_freq_sel_module
#(
	//row and column of the keypad
	parameter N_COLUMN = 4, 
	parameter N_ROW = 4,
	
	parameter [63:0] CLK_FREQ = 64'd50000000,		//value in hertz (default is 50MHz)
	parameter [63:0] SCAN_FREQ = 64'd10000			//value in hertz (default is 10kHz)
	
)
(
	
	// ---- SYNCHRONIZATION INPUT ---- //
	input clk, rst_n,
	
	// ---- KEYPAD PINS ---- //
	output [N_COLUMN-1:0] column,
	input [N_ROW-1:0] row,
	
	// ---- DDFS PINS ---- //
	output [6:0] fw,
	output [2:0] freq_control,
	//mirroring inputs
	input mirror_x, mirror_y,
	
	// ---- LCD BCD OUTPUT ---- //
	output reg [3:0] freq_1,
	output reg [3:0] freq_2,
	output reg [3:0] freq_3,
	output reg [3:0] freq_4,
	output reg [3:0] freq_5,
	output reg [3:0] freq_6,
	output reg [3:0] freq_7,
	
	output reg [2:0] digit_counter,
	
	output reg sel_A, sel_B,
	output reg next_page, prev_page,
	
	// ---- TST OUTPUT ---- //
	output data_valid,
	output reg debounced_keypad_pressed,
	output [22:0] freq
	
);
	
	//parameter definitions
	localparam [31:0] WAIT_DEBOUNCE = 100;		//debounce time in ms
	localparam [31:0] DEBOUNCE_CYCLE = (WAIT_DEBOUNCE*SCAN_FREQ)/1000;
	
	//keypad module instance
	wire clk_ena;
	wire [N_COLUMN*N_ROW-1:0] out_keys;
	keypad_module #(
	
		.N_COLUMN(N_COLUMN),
		.N_ROW(N_ROW),
		
		.CLK_FREQ(CLK_FREQ),
		.SCAN_FREQ(SCAN_FREQ)
		
	) keypad_mod_inst (
	
		.clk(clk),
		.clk_ena(clk_ena),
		.rst_n(rst_n),
		
		.column(column),
		.row(row),
		.out_keys(out_keys),
		.data_valid(data_valid)
		
	);
	
	//DDFS frequency converter module instance
	//and BCD to C2 representation converter
	reg [3:0] BCD_1, BCD_2, BCD_3, BCD_4, BCD_5, BCD_6, BCD_7;
	BCD_to_C1_converter BCD_C1_conv_inst(
		
		.clk(clk),
		.rst_n(rst_n),
		
		.d_1(BCD_1),
		.d_2(BCD_2),
		.d_3(BCD_3),
		.d_4(BCD_4),
		.d_5(BCD_5),
		.d_6(BCD_6),
		.d_7(BCD_7),
		.output_C1(freq)

	);
	
	DDFS_frequency_converter #(.CLK_FREQ(CLK_FREQ)) DDFS_freq_conv_inst(
	
		.clk(clk),
		.rst_n(rst_n),
		.freq(freq),
		
		.mirror_x(mirror_x),
		.mirror_y(mirror_y),
	
		.fw(fw),
		.freq_control(freq_control)
	
	);
	
	//debounce circuit
	//reg debounced_keypad_pressed;
	reg [N_COLUMN*N_ROW-1:0] out_keys_sync;
	integer debounce_cont;
	always @(posedge clk) begin
		if(rst_n == 0) begin
			//reset condition
			debounce_cont <= 0;
			debounced_keypad_pressed <= 1'b0;
		end
		else if(clk_ena == 1) begin
			if(out_keys == 16'd0) begin
				debounce_cont <= 0;
				debounced_keypad_pressed <= 1'b0;
				out_keys_sync <= out_keys_sync;
			end else begin
				debounce_cont <= debounce_cont + 1;
				if(debounce_cont >= DEBOUNCE_CYCLE) begin
					debounce_cont <= DEBOUNCE_CYCLE;
					debounced_keypad_pressed <= 1'b1;
					out_keys_sync <= out_keys;
				end
			end
		end
		else begin
			//store the variables
			debounce_cont <= debounce_cont;
			debounced_keypad_pressed <= debounced_keypad_pressed;
			out_keys_sync <= out_keys_sync;
		end
	end
	
	// ---- KEYPAD CONNECTION ---- //
	//                             //
	//  O   O O O O   O O O O   O  //
	//  |   | | | |   | | | |   |  //
	// N.C. 1 2 3 4   1 2 3 4  N.C.//
	//     |-------| |-------|     //
	//       input     output      //
	//                             //
	// --------------------------- //
	
	reg button_pressed, number_not_sel;
	reg [2:0] digit_counter_BCD;
	always @(posedge clk) begin
	
		if(rst_n == 0) begin
			//reset condition
			{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000000;
			digit_counter <= 3'b0;
			
			{BCD_7, BCD_6, BCD_5, BCD_4, BCD_3, BCD_2, BCD_1} <= 28'h0000000;
			
			sel_A <= 0;
			sel_B <= 0;
			
			button_pressed <= 1'b0;
			number_not_sel <= 1'b1;
			
			next_page <= 1'b0;
			prev_page <= 1'b0;
			
		end 
		else if(clk_ena == 1) begin
			
			if(data_valid == 1) begin
				
				if(debounced_keypad_pressed == 0) begin
					//flag reset
					button_pressed <= 1'b0;
					
					next_page <= 1'b0;
					prev_page <= 1'b0;
				end
					
				if(debounced_keypad_pressed == 1 && button_pressed == 0) begin
					
					case(out_keys_sync)
						
						// ---- NUMBER KEY PRESSED ---- //
						
						(16'd1 << 0): begin
							if(number_not_sel == 1) begin
								
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000001;
								digit_counter <= 3'd1;
								number_not_sel <= 1'b0;
							end 
							else if(digit_counter < 7) begin
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd1};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end

						(16'd1 << 1): begin
							if(number_not_sel == 1) begin
								
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000002;
								digit_counter <= 3'd1;
								number_not_sel <= 1'b0;
							end 
							else if(digit_counter < 7) begin
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd2};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end

						(16'd1 << 2): begin
							if(number_not_sel == 1) begin
								
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000003;
								digit_counter <= 3'd1;
								number_not_sel <= 1'b0;
							end 
							else if(digit_counter < 7) begin
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd3};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end

						(16'd1 << 4): begin
							if(number_not_sel == 1) begin
								
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000004;
								digit_counter <= 3'd1;
								number_not_sel <= 1'b0;
							end 
							else if(digit_counter < 7) begin
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd4};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end

						(16'd1 << 5): begin
							if(number_not_sel == 1) begin
								
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000005;
								digit_counter <= 3'd1;
								number_not_sel <= 1'b0;
							end 
							else if(digit_counter < 7) begin
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd5};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end

						(16'd1 << 6): begin
							if(number_not_sel == 1) begin
								
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000006;
								digit_counter <= 3'd1;
								number_not_sel <= 1'b0;
							end 
							else if(digit_counter < 7) begin
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd6};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end

						(16'd1 << 8): begin
							if(number_not_sel == 1) begin
								
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000007;
								digit_counter <= 3'd1;
								number_not_sel <= 1'b0;
							end 
							else if(digit_counter < 7) begin
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd7};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end

						(16'd1 << 9): begin
							if(number_not_sel == 1) begin
								
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000008;
								digit_counter <= 3'd1;
								number_not_sel <= 1'b0;
							end 
							else if(digit_counter < 7) begin
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd8};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end

						(16'd1 << 10): begin
							if(number_not_sel == 1) begin
								
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <= 28'h0000009;
								digit_counter <= 3'd1;
								number_not_sel <= 1'b0;
							end 
							else if(digit_counter < 7) begin
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd9};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end
						
						(16'd1 << 13): begin
							if(digit_counter < 7 && digit_counter != 0 && number_not_sel == 0) begin		//check also if zero is the first digit
								//shift right and write the first digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{freq_6, freq_5, freq_4, freq_3, freq_2, freq_1, 4'd0};
								
								//increase the number of digit
								digit_counter <= digit_counter + 3'd1;
							end
						end
						
						// ---- SELECT KEY PRESSED ---- //
						
						(16'd1 << 3): begin
							sel_A <= !sel_A;
							//do not increase the number of digit
							digit_counter <= digit_counter;
						end
						
						(16'd1 << 7): begin
							sel_B <= !sel_B;
							//do not increase the number of digit
							digit_counter <= digit_counter;
						end
						
						(16'd1 << 11): begin
							prev_page <= 1'b1;
							//do not increase the number of digit
							digit_counter <= digit_counter;
						end
						
						(16'd1 << 15): begin
							next_page <= 1'b1;
							//do not increase the number of digit
							digit_counter <= digit_counter;
						end
						
						// ---- CONFIRM OR ERASE KEY PRESSED ---- //
						
						(16'd1 << 14): begin
							if(digit_counter > 0) begin
								//digit erased, shift left the digit
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{4'd0, freq_7, freq_6, freq_5, freq_4, freq_3, freq_2};							
								//decrease the number of digit
								digit_counter <= digit_counter - 3'd1;
							end
							else begin
								{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
								{BCD_7, BCD_6, BCD_5, BCD_4, BCD_3, BCD_2, BCD_1};
								//store the previous number of digit
								digit_counter <= digit_counter_BCD;
								number_not_sel <= 1'b1;
							end
						end 
						
						(16'd1 << 12): begin
							//frequency confirmed, save the frequency value
							{BCD_7, BCD_6, BCD_5, BCD_4, BCD_3, BCD_2, BCD_1} <= 
							{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1};
							//load the actual number of digit
							digit_counter_BCD <= digit_counter;
							number_not_sel <= 1'b1;
						end
						

						// ---- DEFAULT CONDITION ---- //
						
						default: begin
							//do not shift
							{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
							{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1};
							//do not increase the number of digit
							digit_counter <= digit_counter;
						end
						
					endcase
					
					//flag set
					button_pressed <= 1'b1;
					
				end
				
			end
			
		end
		else begin
		
			{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1} <=
			{freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1};
			
			{BCD_7, BCD_6, BCD_5, BCD_4, BCD_3, BCD_2, BCD_1} <=
			{BCD_7, BCD_6, BCD_5, BCD_4, BCD_3, BCD_2, BCD_1};
			
			{sel_A, sel_B, next_page, prev_page, number_not_sel} <=
			{sel_A, sel_B, next_page, prev_page, number_not_sel};
			
			digit_counter <= digit_counter;
			digit_counter_BCD <= digit_counter_BCD;
			
		end
		
	end
	

endmodule
