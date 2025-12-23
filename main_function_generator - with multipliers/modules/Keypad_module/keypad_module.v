module keypad_module
#(
	parameter N_COLUMN = 4, 
	parameter N_ROW = 4
)
(
	
	// ---- SYNCHRONIZATION INPUT ---- //
	input clk, rst_n,
	
	// ---- KEYPAD PINS ---- //
	output reg [N_COLUMN-1:0] column,
	input [N_ROW-1:0] row,
	
	// ---- MODULE OUTPUT ---- //
	output reg [N_COLUMN*N_ROW-1:0] out_keys,
	output reg data_valid
	
);
	
	integer i_column;
	reg [N_COLUMN*N_ROW-1:0] tmp_out_keys;
	reg [N_COLUMN*N_ROW-1:0] key_pressed;
	always @(posedge clk) begin
	
		if(rst_n == 0) begin
			//reset condition
			i_column <= 0;
			tmp_out_keys <= 0;
			data_valid <= 1'b0;
		
		end else begin
			//event condition
			if(i_column < 2*N_COLUMN) begin
				
				//reading matrix, data is not valid
				data_valid <= 1'b0;
				
				//increase the column counter
				i_column <= i_column + 1;
				
				//check if the button are pressed
				if(i_column[0] == 0)
					tmp_out_keys <= key_pressed | tmp_out_keys;
				else 
					tmp_out_keys <= tmp_out_keys;
				out_keys <= out_keys;
				
			end else begin
				
				//reset the column counter, ready for the next reading cycle
				if(i_column[0] == 0) begin
					//matrix read, data is valid
					data_valid <= 1'b1;
					//increase the column address
					i_column <= i_column + 1;
				end
				else begin
					//reset the counter, ready for the next cycle
					data_valid <= 1'b0;
					i_column <= 0;
					tmp_out_keys <= 0;
				end
				
				out_keys <= tmp_out_keys;	//every N_COLUMN clock cycles refresh the value of out_keys
				
			end
		
		end
	
	end
	
	//assign the output values at the column of the keypad
	integer i;
	always @(*) begin
		//default values
		i = 0;
		column = ~0;
		
		//check if i_column is in range
		if(i_column <= 2*N_COLUMN) begin
			for(i=0; i<N_COLUMN; i=i+1) begin
				if(i == (i_column >> 1)) begin
					column[i] = 0;
				end else begin
					column[i] = 1;
				end
			end
		end
		
	end
	
	//read the button values from the keypad
	integer i_col, i_row;
	always @(*) begin
		//default values
		i_col = 0;
		i_row = 0;
		
		//read button cycles
		for(i_col=0; i_col<N_COLUMN; i_col=i_col+1) begin
			for(i_row=0; i_row<N_ROW; i_row=i_row+1) begin
				if(row[i_row] == 0 && i_col == (i_column >> 1)) begin
					key_pressed[i_col*N_ROW + i_row] = 1; 
				end else begin
					key_pressed[i_col*N_ROW + i_row] = 0; 
				end
			end
		end
		
	end

endmodule
