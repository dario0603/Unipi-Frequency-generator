module keypad_freq_sel_module
#(
	//row and column of the keypad
	parameter N_COLUMN = 4, 
	parameter N_ROW = 4,
	
	parameter [63:0] CLK_FREQ = 64'd200000000		//value in hertz (default is 200MHz)
	
)
(
	
	// ---- SYNCHRONIZATION INPUT ---- //
	input clk, rst_n,
	
	// ---- KEYPAD PINS ---- //
	output [N_COLUMN-1:0] column,
	input [N_ROW-1:0] row,
	
	// ---- DDFS OUTPUT ---- //
	output [6:0] fw,
	output [2:0] freq_control,
	
	// ---- LCD BCD output ---- //
	output reg [3:0] freq_1,
	output reg [3:0] freq_2,
	output reg [3:0] freq_3,
	output reg [3:0] freq_4,
	output reg [3:0] freq_5,
	output reg [3:0] freq_6,
	output reg [3:0] freq_7,
	
	output reg [2:0] digit_counter,
	
	output reg sel_A, sel_B, sel_C,
	output reg next_page
	
);
	
	//keypad module instance
	wire [N_COLUMN*N_ROW-1:0] out_keys;
	wire data_valid;
	keypad_module #(.N_COLUMN(N_COLUMN), .N_ROW(N_ROW)) keypad_mod_inst(
	
		.clk(clk),
		.rst_n(rst_n),
		
		.column(column),
		.row(row),
		.out_keys(out_keys),
		.data_valid(data_valid)
		
	);
	
	//DDFS frequency converter module instance
	//and BCD to C2 representation converter
	reg [3:0] BCD_1, BCD_2, BCD_3, BCD_4, BCD_5, BCD_6, BCD_7;
	wire [22:0] freq_C2;
	BCD_to_C2_converter BCD_C2_conv_inst(

		.d_1(BCD_1),
		.d_2(BCD_2),
		.d_3(BCD_3),
		.d_4(BCD_4),
		.d_5(BCD_5),
		.d_6(BCD_6),
		.d_7(BCD_7),
		.output_C2(freq_C2)

	);
	DDFS_frequency_converter #(.CLK_FREQ(CLK_FREQ)) DDFS_freq_conv_inst(
	
		.freq_C2(freq_C2),
	
		.fw(fw),
		.freq_control(freq_control)
	
	);
	
	reg button_released;
	always @(posedge clk) begin
	
		if(rst_n == 0) begin
			//reset condition
			freq_1 <= 4'b0;
			freq_2 <= 4'b0;
			freq_3 <= 4'b0;
			freq_4 <= 4'b0;
			freq_5 <= 4'b0;
			freq_6 <= 4'b0;
			freq_7 <= 4'b0;
			digit_counter <= 3'b0;
			
			BCD_1 <= 4'b0;
			BCD_2 <= 4'b0;
			BCD_3 <= 4'b0;
			BCD_4 <= 4'b0;
			BCD_5 <= 4'b0;
			BCD_6 <= 4'b0;
			BCD_7 <= 4'b0;
			
			sel_A <= 0;
			sel_B <= 0;
			sel_C <= 0;
			
			next_page <= 0;
			
		end else if(data_valid == 1) begin
		
			if(out_keys == 16'b0000_0000_0000_0000) begin
				//button released condition
				button_released <= 1'b1;
				next_page <= 1'b0;
			end
		
			if(button_released == 1) begin
				
				//button pressed condition
				button_released <= 1'b0;
				
				case(out_keys)
					
					// ---- NUMBER KEY PRESSED ---- //
					
					16'b1000_0000_0000_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd1;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end

					16'b0100_0000_0000_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd2;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end

					16'b0010_0000_0000_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd3;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end

					16'b0001_0000_0000_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd4;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end

					16'b0000_1000_0000_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd5;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end

					16'b0000_0100_0000_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd6;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end

					16'b0000_0010_0000_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd7;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end

					16'b0000_0001_0000_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd8;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end

					16'b0000_0000_1000_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd9;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end
					
					16'b0000_0000_0100_0000: begin
						if(digit_counter < 7) begin
							freq_7 <= freq_6;
							freq_6 <= freq_5;
							freq_5 <= freq_4;
							freq_4 <= freq_3;
							freq_3 <= freq_2;
							freq_2 <= freq_1;
							freq_1 <= 4'd0;
							//increase the number of digit
							digit_counter <= digit_counter + 1;
						end
					end
					
					// ---- SELECT KEY PRESSED ---- //
					
					16'b0000_0000_0010_0000: begin
						sel_A <= !sel_A;
						//do not increase the number of digit
						digit_counter <= digit_counter;
					end
					
					16'b0000_0000_0001_0000: begin
						sel_B <= !sel_B;
						//do not increase the number of digit
						digit_counter <= digit_counter;
					end
					
					16'b0000_0000_0000_1000: begin
						sel_C <= !sel_C;
						//do not increase the number of digit
						digit_counter <= digit_counter;
					end
					
					16'b0000_0000_0000_0100: begin
						next_page <= 1'b1;
						//do not increase the number of digit
						digit_counter <= digit_counter;
					end
					
					// ---- CONFIRM OR ERASE KEY PRESSED ---- //
					
					16'b0000_0000_0000_0010: begin
						if(digit_counter > 1) begin
							//digit erased, shift left the digit
							freq_6 <= freq_7;
							freq_5 <= freq_6;
							freq_4 <= freq_5;
							freq_3 <= freq_4;
							freq_2 <= freq_3;
							freq_1 <= freq_2;
							freq_7 <= 4'd0;
							//decrease the number of digit
							digit_counter <= digit_counter - 1;
						end
					end 
					
					16'b0000_0000_0000_0001: begin
						//frequency confirmed, save the frequency value
						BCD_1 <= freq_1;
						BCD_2 <= freq_2;
						BCD_3 <= freq_3;
						BCD_4 <= freq_4;
						BCD_5 <= freq_5;
						BCD_6 <= freq_6;
						BCD_7 <= freq_7;
						//do not increase the number of digit
						digit_counter <= digit_counter;
					end
					

					// ---- DEFAULT CONDITION ---- //
					
					default: begin
						//do not shift
						freq_7 <= freq_7;
						freq_6 <= freq_6;
						freq_5 <= freq_5;
						freq_4 <= freq_4;
						freq_3 <= freq_3;
						freq_2 <= freq_2;
						freq_1 <= freq_1;
						//do not increase the number of digit
						digit_counter <= digit_counter;
					
					end
					
				endcase
				
			end
			
		end
		
	end

endmodule
