module BCD_to_C1_converter
(

	// ---- BCD input ---- //
	input [3:0] d_1,
	input [3:0] d_2,
	input [3:0] d_3,
	input [3:0] d_4,
	input [3:0] d_5,
	input [3:0] d_6,
	input [3:0] d_7,
	
	// ---- C2 output ---- //
	output [22:0] output_C2

);

	//value 1 expressed like sums of powers of two --> d_1
	wire [23:0] w_1;
	assign w_1 = d_1;

	//value 10 expressed like sums of powers of two --> d_2*10 = d_2*(8 + 2)
	wire [23:0] w_2;
	//assign w_2 = (d_2<<3)+(d_2<<1);
	assign w_2 = d_2*10;
	
	//value 100 expressed like sums of powers of two --> d_3*100 = d_3*(64 + 32 + 4)
	wire [23:0] w_3;
	//assign w_3 = (d_3<<6)+(d_3<<5)+(d_3<<2);
	assign w_3 = d_3*100;
	
	// value 1000 expressed like sums of powers of two --> d_4*1000 = d_4*(512 + 256 + 128 + 64 + 32 + 8)
	wire [23:0] w_4;
	//assign w_4 = (d_4<<9)+(d_4<<8)+(d_4<<7)+(d_4<<6)+(d_4<<5)+(d_4<<3);
	assign w_4 = d_4*1000;

	// value 10000 expressed like sums of powers of two --> d_5*10000 = d_5*(8192 + 1024 + 512 + 256 + 16)
	wire [23:0] w_5;
	//assign w_5 = (d_5<<13)+(d_5<<10)+(d_5<<9)+(d_5<<8)+(d_5<<4);
	assign w_5 = d_5*10000;

	// value 100000 expressed like sums of powers of two --> d_6*100000 = d_6*(65536 + 32768 + 1024 + 512 + 128 + 32)
	wire [23:0] w_6;
	//assign w_6 = (d_6<<16)+(d_6<<15)+(d_6<<10)+(d_6<<9)+(d_6<<7)+(d_6<<5);
	assign w_6 = d_6*100000;
	
	// value 1000000 expressed like sums of powers of two --> d_7*1000000 = d_7*(524288 + 262144 + 131072 + 65536 + 16384 + 512 + 64)
	wire [23:0] w_7;
	//assign w_7 = (d_7<<19)+(d_7<<18)+(d_7<<17)+(d_7<<16)+(d_7<<14)+(d_7<<9)+(d_7<<6);
	assign w_7 = d_7*1000000;
	
	assign output_C2 = w_1 + w_2 + w_3 + w_4 + w_5 + w_6 + w_7;

endmodule
