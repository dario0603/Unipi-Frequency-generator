module clk_ena_DDFS
(
	//input Ports
	input clk_in,
	input rst_n,
	input [2:0] freq_cntrl,
	
	//output Ports
	output reg clk_ena
);

	//counter definition
	integer count;
	always @(posedge clk_in) begin
		
		if(rst_n == 0) begin
			//reset condition
			count <= 0;
			clk_ena <= 1'b0;
		end
		else begin
			//clock condition
			clk_ena <= 1'b0;
			count <= count + 1;
			if(count >= limit_count - 1) begin
				clk_ena <= 1'b1;
				count <= 0;
			end
		
		end
	
	end
	
	//clock enable limit definition
	integer limit_count;
	always @(*) begin
		
		case(freq_cntrl)
		
			3'b000: limit_count = 2;
			
			3'b001: limit_count = 10;
			
			3'b010: limit_count = 100;
			
			3'b011: limit_count = 1000;
			
			3'b100: limit_count = 10000;
			
			3'b101: limit_count = 100000;
			
			default: limit_count = 1000000;
		
		endcase
		
	end


endmodule
