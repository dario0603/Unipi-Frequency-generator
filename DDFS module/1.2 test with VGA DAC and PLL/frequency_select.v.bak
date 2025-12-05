module frequency_select
#(

	parameter CLK_FREQ = 200000000		//value in hertz (default is 200MHz)
	
)
(
	
	//	---- CONTROL PIN --- //
	
	//input pin definitions
	
	input button_1,
	input button_2,
	input clk,
	input rst_n,
	
	//	---- DDFS PIN --- //
	
	output reg[22:0] freq_C2,
	output [6:0] fw,
	output [2:0] freq_control
	
);
	
	//delay parameters
	localparam wait10ms = CLK_FREQ*(10/1000);		//use 32'd50 for simulation and CLK_FREQ*(10/1000) for real applications
	localparam wait3000ms = CLK_FREQ*(150/1000);		//use 32'd150 for simulation and CLK_FREQ*(150/1000) for real applications
	
	//frequency limint values
	localparam MAX_FREQ = 23'd2500000;			//value in hertz		//use 23'd20 for simulation and 23'd2500000 for real applications
	localparam MIN_FREQ = 23'd0;			//the exact value is 0,0122
	
	//calculate the optimal combination of fw and freq_control value
	//to select the desired frequency (freq_C2)
	DDFS_frequency_converter #(.CLK_FREQ(CLK_FREQ)) DDFS_f_conv_inst(
		.freq_C2(freq_C2),
		.fw(fw),
		.freq_control(freq_control)
	);
	
	//debounce circuit for the buttons
	reg b1_pressed, b2_pressed;
	reg [31:0] counter_b1, counter_b2;
	always @(posedge clk) begin
		
		//initial conditions
		if(rst_n == 0) begin
		
			counter_b1 <= 32'd0;
			counter_b2 <= 32'd0;
			
			b1_pressed <= 0;
			b2_pressed <= 0;
			
		end 
		else begin
			
			//check if the button is pressed and if the debounce timer is reset
			if(button_1 == 1 && b1_pressed == 0) begin
				b1_pressed <= 1;
			end
			//check if the button is pressed and if the debounce timer is reset
			if(button_2 == 1 && b2_pressed == 0) begin
				b2_pressed <= 1;
			end
			
			//check the button pressed timer for the button 1
			if(b1_pressed == 1) begin
				counter_b1 <= counter_b1 + 1;
				if(counter_b1 >= wait10ms) begin
					counter_b1 <= wait10ms;
					//check if the b_pressed signal needs to be reset
					if(button_1 == 0) begin
						b1_pressed <= 0;
						counter_b1 <= 32'd0;
					end
				end
			end
			
			//check the button pressed timer for the button 2
			if(b2_pressed == 1) begin
				counter_b2 <= counter_b2 + 1;
				if(counter_b2 >= wait10ms) begin
					counter_b2 <= wait10ms;
					//check if the b_pressed signal needs to be reset
					if(button_2 == 0) begin
						b2_pressed <= 0;
						counter_b2 <= 32'd0;
					end
				end
			end	
		
		end
	
	end
	
	//frequency select routine
	reg freq_incr_flag, freq_decr_flag;
	reg [31:0] counter_longpress_b1, counter_longpress_b2;
	reg [31:0] counter_freq;
	always @(posedge clk) begin
	
		//initial conditions
		if(rst_n == 0) begin
			
			freq_C2 <= MIN_FREQ;
			counter_longpress_b1 <= 32'd0;
			counter_longpress_b2 <= 32'd0;
			counter_freq <= 32'd0;
			
			freq_incr_flag <= 0;
			freq_decr_flag <= 0;
			
		end 
		else begin
			
			//increase frequency if the first button is pressed
			if(b1_pressed == 1 && freq_incr_flag == 0) begin
				if(freq_C2 < MAX_FREQ)
					freq_C2 <= freq_C2 + 1;
				freq_incr_flag <= 1;
			end
			if(b1_pressed == 0)
				freq_incr_flag <= 0;
			
			//decrease frequency if the second button is pressed
			if(b2_pressed == 1 && freq_decr_flag == 0) begin
				if(freq_C2 > MIN_FREQ)
					freq_C2 <= freq_C2 - 1;
				freq_decr_flag <= 1;
			end
			if(b2_pressed == 0)
				freq_decr_flag <= 0;
			
			//check for the long press of first button
			if(freq_incr_flag == 1) begin
				counter_longpress_b1 <= counter_longpress_b1 + 1;
				if(counter_longpress_b1 >= wait3000ms) begin
					counter_longpress_b1 <= wait3000ms;
					counter_freq <= counter_freq + 1;
					if(counter_freq >= wait10ms) begin
						counter_freq <= 32'd0;
						if(freq_C2 < MAX_FREQ)
							freq_C2 <= freq_C2 + 1;
					end
					
				end
			end 
			else begin
				counter_longpress_b1 <= 32'd0;
				counter_freq <= 32'd0;
			end
			
			//check for the long press of second button
			if(freq_incr_flag == 0) begin		//the priority goes to increase operation
				if(freq_decr_flag == 1) begin
					counter_longpress_b2 <= counter_longpress_b2 + 1;
					if(counter_longpress_b2 >= wait3000ms) begin
						counter_longpress_b2 <= wait3000ms;
						counter_freq <= counter_freq + 1;
						if(counter_freq >= wait10ms) begin
							counter_freq <= 0;
							if(freq_C2 > MIN_FREQ)
								freq_C2 <= freq_C2 - 1;
						end
					end
				end 
				else begin
					counter_longpress_b2 <= 32'd0;
					counter_freq <= 32'd0;
				end
			end
			
		end
	
	end	

endmodule
