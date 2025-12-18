`timescale 1ns/1ps

module tb_DDFS_frequency_converter;
	
	localparam [63:0] MAX_FREQ = 5000000;
	localparam [63:0] CLK_FREQ = 200000000;
	
	//testbench signals
	reg [22:0] freq;
	wire [6:0] fw;
	wire [2:0] freq_control;
	wire mirror_x;
	wire mirror_y;
	
	//simulation signals
	reg signed[63:0] freq_calculated;
	wire signed [32:0] delta_freq;

	//instantiate the DUT (Device Under Test)
	DDFS_frequency_converter #(.CLK_FREQ(CLK_FREQ)) DUT(
		.freq(freq),
		.fw(fw),
		.mirror_x(mirror_x),
		.mirror_y(mirror_y),
		.freq_control(freq_control)
	);
	
	//disable mirroring
	assign mirror_x = 1'b0;
	assign mirror_y = 1'b0;
	
	reg [63:0] divided_clock;
	always @(*) begin
	
		case(freq_control)
			
			//select the correct divided_clock output
			3'd0:
				divided_clock = CLK_FREQ/2;
			3'd1:
				divided_clock = CLK_FREQ/10;
			3'd2:
				divided_clock = CLK_FREQ/100;
			3'd3:
				divided_clock = CLK_FREQ/1000;
			3'd4:
				divided_clock = CLK_FREQ/10000;
			3'd5:
				divided_clock = CLK_FREQ/100000;
			3'd6:
				divided_clock = CLK_FREQ/1000000;
			
			default: begin
				//error stop simulation
				$error("ERROR: frequency divider value out of range");
				$stop;
			end
				
		endcase
		
	end
	
	always @(*) begin
    
		if(mirror_x == 0 && mirror_y == 0) begin
			freq_calculated = ((fw+1)*divided_clock)/1024;
		end
		else if(mirror_x == 0 || mirror_y == 0) begin
			freq_calculated = 2*((fw+1)*divided_clock)/1024;
		end
		else begin
			freq_calculated = 4*((fw+1)*divided_clock)/1024;
		end
    
   end
	
	assign delta_freq = freq - freq_calculated;
	
	integer i;
	initial begin
	
		for(i=0; i<=MAX_FREQ; i=i+100) begin
			#10 freq = i;
		end
		
		#100 $stop;
		
	end

endmodule
