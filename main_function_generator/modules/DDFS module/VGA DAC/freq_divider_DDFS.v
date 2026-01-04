module freq_divider_DDFS
(
	// Input Ports
	input clk_in,
	input rst_n,
	input [2:0] freq_cntrl,
	
	// Output Ports
	output reg clk_out
);

	// Module Item(s)
	reg [19:0] count;
	reg [19:0] start_cnt;
	reg [19:0] end_cnt;
	
	always@(posedge clk_in)
	begin
		clk_out <= count[19];
		if(rst_n == 0) begin
			count <= start_cnt;
		end else if(count >= (end_cnt-20'b1))begin
			count <= start_cnt;
		end else begin
			count <= count + 20'b1; 	
		end
		
	end

	always @(*) begin
	
		case (freq_cntrl)
		0: begin 
			start_cnt = 20'h80000 - 20'h1;
			end_cnt = start_cnt + 20'd2; 
			end
		1: begin
			start_cnt = 20'h80000 - 20'd5;
			end_cnt = start_cnt + 20'd10;
			end
		2: begin
			start_cnt = 20'h80000 - 20'd50;
			end_cnt = start_cnt + 20'd100;
			end
		3: begin
			start_cnt = 20'h80000 - 20'd500;
			end_cnt = start_cnt + 20'd1000;
			end
		4: begin
			start_cnt = 20'h80000 - 20'd5000;
			end_cnt = start_cnt + 20'd10000;
			end
		5: begin
			start_cnt = 20'h80000 - 20'd50000;
			end_cnt = start_cnt + 20'd100000;
			end
		default: begin
			start_cnt = 20'h80000 - 20'd500000;
			end_cnt = start_cnt + 20'd1000000;
			end
		endcase
		
	end

endmodule
