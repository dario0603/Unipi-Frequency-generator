module BCD_to_C1_converter
(
	
	// ---- sync input ---- //
	input clk, rst_n,
	
	// ---- BCD input ---- //
	input [3:0] d_1,
	input [3:0] d_2,
	input [3:0] d_3,
	input [3:0] d_4,
	input [3:0] d_5,
	input [3:0] d_6,
	input [3:0] d_7,
	
	// ---- C1 output ---- //
	output reg [22:0] output_C1

);
	reg [22:0] w_1, w_2, w_3, w_4, w_5, w_6, w_7;
	always @(posedge clk) begin
	
		if(rst_n == 0) begin
			//reset condition
			{w_1, w_2, w_3, w_4, w_5, w_6, w_7} <= {23*7{1'b0}};
		end
		else begin
			
			//value 1 expressed like sums of powers of two --> d_1
			w_1 <= d_1;
			
			//value 10 expressed like sums of powers of two --> d_2*10 = d_2*(8 + 2)
			w_2 <= (d_2<<3)+(d_2<<1);
			//w_2 <= d_2*10;
			
			//value 100 expressed like sums of powers of two --> d_3*100 = d_3*(64 + 32 + 4)
			w_3 <= (d_3<<6)+(d_3<<5)+(d_3<<2);
			//w_3 <= d_3*100;
			
			//value 1000 expressed like sums of powers of two --> d_4*1000 = d_4*(512 + 256 + 128 + 64 + 32 + 8)
			w_4 <= (d_4<<9)+(d_4<<8)+(d_4<<7)+(d_4<<6)+(d_4<<5)+(d_4<<3);
			//w_4 <= d_2*1000;
			
			//value 10000 expressed like sums of powers of two --> d_5*10000 = d_5*(8192 + 1024 + 512 + 256 + 16)
			w_5 <= (d_5<<13)+(d_5<<10)+(d_5<<9)+(d_5<<8)+(d_5<<4);
			//w_5 <= d_5*10000;
			
			//value 100000 expressed like sums of powers of two --> d_6*100000 = d_6*(65536 + 32768 + 1024 + 512 + 128 + 32)
			w_6 <= (d_6<<16)+(d_6<<15)+(d_6<<10)+(d_6<<9)+(d_6<<7)+(d_6<<5);
			//w_6 <= d_6*100000;
			
			//value 1000000 expressed like sums of powers of two --> d_7*1000000 = d_7*(524288 + 262144 + 131072 + 65536 + 16384 + 512 + 64)
			w_7 <= (d_7<<19)+(d_7<<18)+(d_7<<17)+(d_7<<16)+(d_7<<14)+(d_7<<9)+(d_7<<6);
			//w_7 <= d_7*1000000
			
			output_C1 <= w_1 + w_2 + w_3 + w_4 + w_5 + w_6 + w_7;
		end
		
	end

endmodule
