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
	output reg [N_COLUMN*N_ROW-1:0] out_keys
	
);
	
	reg [N_COLUMN-1:0] i_column;
	always @(posedge clk) begin
	
		if(rst_n == 0) begin
			//reset condition
			i_column <= 0;
		
		end else begin
			//event condition
			if(i_column < N_COLUMN-1) 
				i_column <= i_column + 1;
			else
				i_column <= 0;
		
		end
	
	end
	
	//assign the output values at the column of the keypad
	integer i;
	always @(*) begin
		for(i=0; i<N_COLUMN; i=i+1) begin
			if(i == i_column) begin
				column[i] = 1;
			end else begin
				column[i] = 0;
			end
		end
	end
	
	//read the button values from the keypad
	integer j;
	always @(*) begin
		for(j=0; j<N_COLUMN; j=j+1) begin
			for(i=0; i<N_ROW; i=i+1) begin
				if(row[i] == 1 && j == i_column) begin
					out_keys[j*N_COLUMN + i] = 1; 
				end else begin
					out_keys[j*N_COLUMN + i] = 0; 
				end
			end
		end
	end

endmodule
