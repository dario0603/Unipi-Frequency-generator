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
	wire [6:0] fw_1000000, fw_100000, fw_10000, fw_1000, fw_100, fw_10, fw_2;
	wire [63:0] mult_1000000, mult_100000, mult_10000, mult_1000, mult_100, mult_10, mult_2;
	
	/*
	assign fw_1000000 = (1024*freq_C2)/(CLK_FREQ/1000000) - 1;
	assign fw_100000 = (1024*freq_C2)/(CLK_FREQ/100000) - 1;
	assign fw_10000 = (1024*freq_C2)/(CLK_FREQ/10000) - 1;
	assign fw_1000 = (1024*freq_C2)/(CLK_FREQ/1000) - 1;
	assign fw_100 = (1024*freq_C2)/(CLK_FREQ/100) - 1;
	assign fw_10 = (1024*freq_C2)/(CLK_FREQ/10) - 1;
	assign fw_1 = (1024*freq_C2)/(CLK_FREQ/2) - 1;
	*/
	
	//the parameter K is pre-calculated to reduce the components on the chip
	localparam [63:0] K = (2^64 / CLK_FREQ);
	
	assign mult_1000000 = (freq_C2<<19)+(freq_C2<<18)+(freq_C2<<17)+(freq_C2<<16)+(freq_C2<<14)+(freq_C2<<9)+(freq_C2<<6)+(freq_C2<<5)+(freq_C2<<1);
	assign mult_100000 = (freq_C2<<16)+(freq_C2<<15)+(freq_C2<<12)+(freq_C2<<7)+(freq_C2<<5);
	assign mult_10000 = (freq_C2<<13)+(freq_C2<<10)+(freq_C2<<8)+(freq_C2<<4);
	assign mult_1000 = (freq_C2<<9)+(freq_C2<<8)+(freq_C2<<7)+(freq_C2<<3);
	assign mult_100 = (freq_C2<<6)+(freq_C2<<5)+(freq_C2<<2);
	assign mult_10 = (freq_C2<<3)+(freq_C2<<1);
	assign mult_2 = (freq_C2<<1);
	
	assign fw_1000000 = (mult_1000000>>54)*K;
	assign fw_100000 = (mult_100000>>54)*K;
	assign fw_10000 = (mult_10000>>54)*K;
	assign fw_1000 = (mult_1000>>54)*K;
	assign fw_100 = (mult_100>>54)*K;
	assign fw_10 = (mult_10>>54)*K;
	assign fw_2 = (mult_2>>54)*K;
	
	
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
			fw = (fw_2 >= 0) ? fw_2 : 7'd0;
		end
		
		//error, frec_C2 is not valid
		else begin
			//default condition, max frequency
			freq_control = 3'd0;
			fw = 7'd0;
		end
		
	end

endmodule
