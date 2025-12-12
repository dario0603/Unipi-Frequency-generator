module keypad_freq_divider
#(
	parameter FREQ_DIV = 10		//fout = fclk/10 by default
)
(
	//input pin definitions
	input clk,
	input rst,
	input ena,
	
	//output pin definitions
	output reg q
);
	
	integer count;
	always @ (posedge clk or posedge rst) begin
	
		if(rst) begin
			//reset the counter value
			count <= 0;	
			//set the output as zero
			q <= 0;
			
		end else if(ena) begin
			//divide frequency
			count <= count + 1;		//increase counter value
			if(count == FREQ_DIV) begin
				count <= 0;
				q <= !q;	
			end	
		
		end else begin
			
			//do not count
			count <= count;
			q <= q;
		
		end
	
	end
	

endmodule
