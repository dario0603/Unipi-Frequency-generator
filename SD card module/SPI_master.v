module SPI_master(
	
	//	---- CONTROL PIN --- //
	
	//input pin definitions
	input clk, rst_n,
	input cpol, cpha,
	input r_w,
	input [7:0] data_in,
	
	//output pin definitions
	output [7:0] data_out,
	
	//	---- SPI PROTOCOL PIN --- //
	
	//input pin definitions
	input miso, 
	
	//output pin definitions
	output clk_out,
	output mosi,
	output cs_n
	
)
	
	//define negated clk signal
	wire clk_n;
	assign clk_n = !clk;
	
	//define the trigger event clk
	wire trigger_clk;
	assign trigger_clk = (clk and !cpha) or (clk_n and cpha);
	
	integer cont;
	always @(posedge trigger_clk or negedge rst_n) begin
	
		if(rst_n == 0) begin
			//reset condition
			data_out <= 8'h00;
			cs_n <= 1;
			cont <= 0;
		end else begin
			if(r_w == 1 && cont < 8) begin
				//write or read operation
				cs_n <= 0;		//enable the slave
				data_out[cont] <= miso;		//read the first bit of data
				mosi <= data_in[cont];		//send the first bit of data
				cont <= cont + 1;		//increase the data counter
			end else begin
				//write or read operation finished
				cs_n <= 1;
				cont <= 0;
				data_out <= data_out;
			end
		end
	
	end
	
	//assign the output clk accordingly to cpol value
	assign clk_out = (clk and !cpol) or (clk_n and cpol);

endmodule
