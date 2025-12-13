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
	always @(posedge clk) begin
	
		if(rst_n == 0) begin
			//reset condition
			i_column <= 0;
			tmp_out_keys <= 0;
			data_valid <= 1'b0;
		
		end else begin
			//event condition
			if(i_column < N_COLUMN) begin
				
				//reading matrix, data is not valid
				data_valid <= 1'b0;
				
				//increase the column counter
				i_column <= i_column + 1;
				
				//check if the button are pressed
				tmp_out_keys <= key_pressed | tmp_out_keys;
				out_keys <= out_keys;
				
			end else begin
				
				//matrix read, data is valid
				data_valid <= 1'b1;
				
				//reset the column counter, ready for the next reading cycle
				i_column <= 0;
				
				out_keys <= tmp_out_keys;	//every N_COLUMN clock cycles refresh the value of out_keys
				tmp_out_keys <= 0;
				
			end
		
		end
	
	end
	
	//assign the output values at the column of the keypad
	integer i;
	always @(*) begin
		for(i=0; i<N_COLUMN; i=i+1) begin
			if(i == i_column) begin
				column[i] = 0;
			end else begin
				column[i] = 1;
			end
		end
	end
	
	//read the button values from the keypad
	integer j;
	reg [N_COLUMN*N_ROW-1:0] key_pressed;
	always @(*) begin
		for(j=0; j<N_COLUMN; j=j+1) begin
			for(i=0; i<N_ROW; i=i+1) begin
				if(row[i] == 0 && j == i_column) begin
					key_pressed[j*N_ROW + i] = 1; 
				end else begin
					key_pressed[j*N_ROW + i] = 0; 
				end
			end
		end
	end

endmodule
