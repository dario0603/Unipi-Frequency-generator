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
	
	output reg [22:0] freq_C2,
	output [6:0] fw,
	output [2:0] freq_control,
	
	// ---- FILTERED BUTTON VALUES ---- //
	
	output reg b1_pressed,
	output reg b2_pressed
	
);
	
	//delay parameters
	localparam [63:0] wait_bouncing_button = (CLK_FREQ*100)/1000;		//use 32'd50 for simulation and CLK_FREQ*(300/1000) for real applications
	localparam [63:0] wait_long_press = (CLK_FREQ*1000)/1000;		//use 32'd150 for simulation and CLK_FREQ*(3000/1000) for real applications
	localparam [63:0] fast_freq_update_ms = (CLK_FREQ*300)/1000;
	
	//frequency limint values
	localparam [22:0] MAX_FREQ = 23'd2500000;			//value in hertz		//use 23'd20 for simulation and 23'd2500000 for real applications
	localparam [22:0] MIN_FREQ = 23'd1;			//the exact value is 0,0122
	
	//calculate the optimal combination of fw and freq_control value
	//to select the desired frequency (freq_C2)
	DDFS_frequency_converter #(.CLK_FREQ(CLK_FREQ)) DDFS_f_conv_inst(
		.freq_C2(freq_C2),
		.fw(fw),
		.freq_control(freq_control)
	);
	
	//debounce circuit for the buttons
	//reg b1_pressed, b2_pressed;
	reg inc_freq, dec_freq;
	reg [63:0] counter_b1, counter_b2;
	reg [63:0] counter_long_press_b1, counter_long_press_b2;
	always @(posedge clk) begin
		
		//initial conditions
		if(rst_n == 0) begin
			
			counter_b1 <= 64'd0;
			counter_b2 <= 64'd0;
			counter_long_press_b1 <= 64'd0;
			counter_long_press_b2 <= 64'd0;
			
			b1_pressed <= 0;
			b2_pressed <= 0;
			inc_freq <= 0;
			dec_freq <= 0;
			
			freq_C2 <= MIN_FREQ;
			
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
				
				//increase the frequency by one
				if(inc_freq == 0) begin
					inc_freq <= 1;
					if(freq_C2 < MAX_FREQ)
						freq_C2 <= freq_C2 + 1'b1;
				end
					
				counter_b1 <= counter_b1 + 1;
				if(counter_b1 >= wait_bouncing_button) begin
				
					//if the button is pressed for too long, increase rapidly the frequency
					if(counter_b1 >= wait_long_press) begin
						counter_b1 <= wait_long_press;
						counter_long_press_b1 <= counter_long_press_b1 + 1;
						if(counter_long_press_b1 >= fast_freq_update_ms) begin
							counter_long_press_b1 <= 64'd0;
							if(freq_C2 < MAX_FREQ)
								freq_C2 <= freq_C2 + 1'b1;
						end
					end
					
					//check if the b_pressed signal needs to be reset
					if(button_1 == 0) begin
						b1_pressed <= 0;
						inc_freq <= 0;
						counter_b1 <= 64'd0;
						counter_long_press_b1 <= 64'd0;
					end
					
				end
			end
			
			//check the button pressed timer for the button 2 (priority to button 1)
			if(b2_pressed == 1 && b1_pressed == 0) begin
				
				//decrease the frequency by one
				if(dec_freq == 0) begin
					dec_freq <= 1;
					if(freq_C2 > MIN_FREQ)
						freq_C2 <= freq_C2 - 1'b1;
				end
				
				counter_b2 <= counter_b2 + 1;
				if(counter_b2 >= wait_bouncing_button) begin
				
					//if the button is pressed for too long, decrease rapidly the frequency
					if(counter_b2 >= wait_long_press) begin
						counter_b2 <= wait_long_press;
						counter_long_press_b2 <= counter_long_press_b2 + 1;
						if(counter_long_press_b2 >= fast_freq_update_ms) begin
							counter_long_press_b2 <= 64'd0;
							if(freq_C2 > MIN_FREQ)
								freq_C2 <= freq_C2 - 1'b1;
						end
					end
					
					//check if the b_pressed signal needs to be reset
					if(button_2 == 0) begin
						b2_pressed <= 0;
						dec_freq <= 0;
						counter_b2 <= 64'd0;
						counter_long_press_b2 <= 64'd0;
					end
					
				end
			end	
				
		end
	
	end

endmodule
