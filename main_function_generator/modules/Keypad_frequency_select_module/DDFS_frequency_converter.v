module DDFS_frequency_converter
#(

	parameter [63:0] CLK_FREQ = 64'd200000000		//value in hertz (default is 200MHz)
	
)
(
	
	//input pin definitions
	input [22:0] freq,
	
	//mirroring inputs
	input mirror_x, mirror_y,
	
	//output pin definitions
	output reg [6:0] fw,
	output reg [2:0] freq_control
	
);
	
	//calculate the final frequency considering mirrors
	reg [22:0] final_freq;
	always @(*) begin
		if(mirror_x == 0 && mirror_y == 0) begin
			final_freq = freq;
		end
		else if(mirror_x == 0 || mirror_y == 0) begin
			final_freq = freq >> 1;		//single mirroring half the output frequency
		end
		else begin
			final_freq = freq >> 2;		//double mirroring quarter the output frequency
		end
	end
	
	//define the value of fw with every frequency divider scale selected
	wire [6:0] fw_1000000, fw_100000, fw_10000, fw_1000, fw_100, fw_10, fw_2;
	wire [63:0] mult_1000000, mult_100000, mult_10000, mult_1000, mult_100, mult_10, mult_2;
	
	/*
	assign fw_1000000 = (1024*final_freq)/(CLK_FREQ/1000000) - 1;
	assign fw_100000 = (1024*final_freq)/(CLK_FREQ/100000) - 1;
	assign fw_10000 = (1024*final_freq)/(CLK_FREQ/10000) - 1;
	assign fw_1000 = (1024*final_freq)/(CLK_FREQ/1000) - 1;
	assign fw_100 = (1024*final_freq)/(CLK_FREQ/100) - 1;
	assign fw_10 = (1024*final_freq)/(CLK_FREQ/10) - 1;
	assign fw_1 = (1024*final_freq)/(CLK_FREQ/2) - 1;
	*/
	
	//the parameter K is pre-calculated to reduce the components on the chip
	localparam [64:0] K = (2**64 / CLK_FREQ);
	
	assign mult_1000000 = (final_freq<<19)+(final_freq<<18)+(final_freq<<17)+(final_freq<<16)+(final_freq<<14)+(final_freq<<9)+(final_freq<<6)+(final_freq<<5)+(final_freq<<1);
	assign mult_100000 = (final_freq<<16)+(final_freq<<15)+(final_freq<<12)+(final_freq<<7)+(final_freq<<5);
	assign mult_10000 = (final_freq<<13)+(final_freq<<10)+(final_freq<<8)+(final_freq<<4);
	assign mult_1000 = (final_freq<<9)+(final_freq<<8)+(final_freq<<7)+(final_freq<<3);
	assign mult_100 = (final_freq<<6)+(final_freq<<5)+(final_freq<<2);
	assign mult_10 = (final_freq<<3)+(final_freq<<1);
	assign mult_2 = (final_freq<<1);
	
	assign fw_1000000 = (mult_1000000*K)>>54;
	assign fw_100000 = (mult_100000*K)>>54;
	assign fw_10000 = (mult_10000*K)>>54;
	assign fw_1000 = (mult_1000*K)>>54;
	assign fw_100 = (mult_100*K)>>54;
	assign fw_10 = (mult_10*K)>>54;
	assign fw_2 = (mult_2*K)>>54;
	
	//calculate the optimal combination of fw and freq_control value
	//to select the desired frequency (final_freq)
	always @(*) begin
	
		if(final_freq <= (CLK_FREQ/(1000000*8))) begin
			freq_control = 3'd6;
			fw = (fw_1000000 >= 0) ? fw_1000000 : 7'd0;
		end 
		else if(final_freq <= (CLK_FREQ/(100000*8))) begin
			freq_control = 3'd5;
			fw = (fw_100000 >= 0) ? fw_100000 : 7'd0;
		end
		else if(final_freq <= (CLK_FREQ/(10000*8))) begin
			freq_control = 3'd4;
			fw = (fw_10000 >= 0) ? fw_10000 : 7'd0;
		end
		else if(final_freq <= (CLK_FREQ/(1000*8))) begin
			freq_control = 3'd3;
			fw = (fw_1000 >= 0) ? fw_1000 : 7'd0;
		end
		else if(final_freq <= (CLK_FREQ/(100*8))) begin
			freq_control = 3'd2;
			fw = (fw_100 >= 0) ? fw_100 : 7'd0;
		end
		else if(final_freq <= (CLK_FREQ/(10*8))) begin
			freq_control = 3'd1;
			fw = (fw_10 >= 0) ? fw_10 : 7'd0;
		end
		else if(final_freq <= (CLK_FREQ/(2*8))) begin
			freq_control = 3'd0;
			fw = (fw_2 >= 0) ? fw_2 : 7'd0;
		end
		
		//error, final_freq is not valid
		else begin
			//default condition, max frequency
			freq_control = 3'd0;
			fw = 7'd0;
		end
		
	end

endmodule
