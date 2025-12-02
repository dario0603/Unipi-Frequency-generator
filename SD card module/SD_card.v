module SD_card(

	//	---- CONTROL PIN --- //
	
	//input pin definitions
	input clk,
	input init,
	input rst_n,
	
	//output pin definitions
	output init_done,
	
	//	---- SD CARD PIN --- //
	
	//input pin definitions
	input sd_wp_n,
	
	//output pin definitions
	output sd_clk,
	output sd_cmd,
	
	//bidirectional pin definitions
	inout [3:0] sd_data

);
	
	reg [7:0] init_cont
	always @ (posedge clk or negedge rst_n) begin
		
		if(rst_n == 0) begin
			//reset condition
			init_flag = 0;
			init_done = 0;
			cont <= 0;
		
		end else if((init == 1 || init_flag == 1) && init_done == 0) begin
			//SD card protocol initialization
			if(init_cont[7] == 0)
				//MOSI and CS high for 128 clock cycles
				
			
			cont <= cont+1;
		end
	
	end

endmodule
