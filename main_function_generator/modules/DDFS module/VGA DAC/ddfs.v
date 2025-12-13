module ddfs
(
	//input pin definitions
	input sin,				//wave select sinusoidal
	input triang,			//wave select tirngular
	
	input mirror_x,
	input mirror_y,
	
	input [6:0] fw,		//frequency word of ddfs
	
	input clk,						//clock pin
	input rst_n,					//asyncronous reset pin
	
	input [2:0] freq_cntrl,
	
	//output pin definitions
	output [9:0] q_VGA,
	output VGA_clk,
	output blank_n, sync_n
	
);
	
	//convert the 12 bit output into 10 bit VGA DAC output
	reg [11:0] q;
	assign q_VGA = q[11:2];
	
	//disable the blank and sync modes
	assign blank_n = 1;
	assign sync_n = 1;
	
	//connect the VGA clock signal
	assign VGA_clk = clk_div;
	
	//parameter definitions
	localparam DATA_WIDTH = 12;
	localparam ADDR_WIDTH = 10;
	localparam MAX_LUT = 2**(ADDR_WIDTH);
	
	//lut module instance
	reg [ADDR_WIDTH-1:0] addr;
	wire [DATA_WIDTH-1:0] lut_out;
	sin_lut #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) lut_inst(
		.addr(addr),
		.clk(clk),
		.q(lut_out)
	);
	
	//frequency divider module istance
	wire clk_div;
	freq_divider_DDFS f_div_inst(
		.clk_in(clk),
		.rst_n(rst_n),
		.freq_cntrl(freq_cntrl),
		.clk_out(clk_div)
	);
	
	//select the output waveform
	reg [11:0] q_tmp;
	localparam HALF_ADDRESS = 2**(ADDR_WIDTH-1);
	always @(*) begin
		
		//select the current output
		if(sin)
			q_tmp = lut_out;												//select the sinusoidal output
		else if(triang)
			q_tmp = addr*(12'hfff/(MAX_LUT-1));						//select the triangular output	
		else
			q_tmp = 12'hfff;												//select the square output
	
	end
	
	//address counter definition
	reg [ADDR_WIDTH+1:0] cont;
	always @(posedge clk_div or negedge rst_n) begin
	
		if(rst_n == 0) begin
			cont <= 0;
		end else begin
			if(cont < 4*MAX_LUT-1)
				cont <= cont + (fw+1);
			else
				cont <= 0;	
		end
	
	end
	
	//retiming register for address counter
	reg [ADDR_WIDTH+1:0] cont_rt;
	always @(posedge clk_div)
		cont_rt <= cont;
	
	//calculate address
	always @(*) begin
		
		//not mirrored case
		addr = cont%(MAX_LUT);
		
		//y mirrored output
		if(mirror_y)
			//second quarter or fouth quarter
			if( (cont > (MAX_LUT-1)) && (cont <= (2*MAX_LUT-1)) || (cont > (3*MAX_LUT-1)) && (cont <= (4*MAX_LUT-1)) )
				addr = (MAX_LUT-1) - cont%(MAX_LUT);
				
	
	end
	
	//calculate the output
	reg [ADDR_WIDTH+1:0] act_cont;
	localparam HALF_DATA = 2**(DATA_WIDTH-1);
	always @(*) begin
	
		//not mirrored case
		q = HALF_DATA + (q_tmp >> 1) - 1;
		
		//select the correct counter for the wave we are using
		if(sin)
			act_cont = cont_rt;
		else 
			act_cont = cont;
		
		if(mirror_x && mirror_y) begin
			//third quarter or fourth quarter
			if( ((act_cont > (2*MAX_LUT-1)) && (act_cont <= (3*MAX_LUT-1))) || ((act_cont > (3*MAX_LUT-1)) && (act_cont <= (4*MAX_LUT-1))) )
				q = HALF_DATA - (q_tmp >> 1) - 1;
				
		end else if(mirror_x) begin
			//second quarter or fourth quarter
			if( ((act_cont > (MAX_LUT-1)) && (act_cont <= (2*MAX_LUT-1))) || ((act_cont > (3*MAX_LUT-1)) && (act_cont <= (4*MAX_LUT-1))) )
				q = HALF_DATA - (q_tmp >> 1) - 1;
		
		end
			
	end

endmodule
