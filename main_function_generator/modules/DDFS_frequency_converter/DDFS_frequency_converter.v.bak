module DDFS_frequency_converter
#(

	parameter [63:0] CLK_FREQ = 64'd200000000		//value in hertz (default is 200MHz)
	
)
(
	
	//input pin definitions
	input [22:0] freq_C2,
	
	//output pin definitions
	output reg [6:0] fw,
	output reg [2:0] freq_control
	
);
	
	//define the value of fw with every frequency divider scale selected
	wire [6:0] fw_1000000, fw_100000, fw_10000, fw_1000, fw_100, fw_10, fw_1;
	
	assign fw_1000000 = (1024*freq_C2)/(CLK_FREQ/1000000) - 1;
	assign fw_100000 = (1024*freq_C2)/(CLK_FREQ/100000) - 1;
	assign fw_10000 = (1024*freq_C2)/(CLK_FREQ/10000) - 1;
	assign fw_1000 = (1024*freq_C2)/(CLK_FREQ/1000) - 1;
	assign fw_100 = (1024*freq_C2)/(CLK_FREQ/100) - 1;
	assign fw_10 = (1024*freq_C2)/(CLK_FREQ/10) - 1;
	assign fw_1 = (1024*freq_C2)/(CLK_FREQ/2) - 1;
	
	//calculate the optimal combination of fw and freq_control value
	//to select the desired frequency (freq_C2)
	always @(*) begin
	
		if(freq_C2 <= (CLK_FREQ/(1000000*8))) begin
			freq_control = 3'd6;
			fw = (fw_1000000 >= 0) ? fw_1000000 : 7'd0;
		end 
		else if(freq_C2 <= (CLK_FREQ/(100000*8))) begin
			freq_control = 3'd5;
			fw = (fw_100000 >= 0) ? fw_100000 : 7'd0;
		end
		else if(freq_C2 <= (CLK_FREQ/(10000*8))) begin
			freq_control = 3'd4;
			fw = (fw_10000 >= 0) ? fw_10000 : 7'd0;
		end
		else if(freq_C2 <= (CLK_FREQ/(1000*8))) begin
			freq_control = 3'd3;
			fw = (fw_1000 >= 0) ? fw_1000 : 7'd0;
		end
		else if(freq_C2 <= (CLK_FREQ/(100*8))) begin
			freq_control = 3'd2;
			fw = (fw_100 >= 0) ? fw_100 : 7'd0;
		end
		else if(freq_C2 <= (CLK_FREQ/(10*8))) begin
			freq_control = 3'd1;
			fw = (fw_10 >= 0) ? fw_10 : 7'd0;
		end
		else if(freq_C2 <= (CLK_FREQ/(2*8))) begin
			freq_control = 3'd0;
			fw = (fw_1 >= 0) ? fw_1 : 7'd0;
		end
		
		//error, frec_C2 is not valid
		else begin
			//default condition, max frequency
			freq_control = 3'd0;
			fw = 7'd0;
		end
		
	end

endmodule
