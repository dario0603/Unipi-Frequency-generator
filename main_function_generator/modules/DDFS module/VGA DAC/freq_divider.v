module freq_divider
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
		if(rst_n == 1'b0) begin
			count <= start_cnt;
		end else if(count >= (end_cnt-1'b1))begin
			count <= start_cnt;
		end else begin
			count <= count + 1'b1; 	
		end
		
	end

	always@(*)
	begin
		case (freq_cntrl)
		0: begin 
			start_cnt = 20'h80000-1;
			end_cnt = start_cnt+2; 
			end
		1: begin
			start_cnt = 20'h80000-10/2;
			end_cnt = start_cnt + 10;
			end
		2: begin
			start_cnt = 20'h80000-100/2;
			end_cnt = start_cnt + 100;
			end
		3: begin
			start_cnt = 20'h80000-1000/2;
			end_cnt = start_cnt + 1000;
			end
		4: begin
			start_cnt = 20'h80000-10000/2;
			end_cnt = start_cnt + 10000;
			end
		5: begin
			start_cnt = 20'h80000-100000/2;
			end_cnt = start_cnt + 100000;
			end
		6: begin
			start_cnt = 20'h80000-1000000/2;
			end_cnt = start_cnt + 1000000;
			end
		default: begin
			start_cnt = 20'h80000-1000000/2;
			end_cnt = start_cnt + 1000000;
			end
		endcase 
	
		clk_out = count[19];
		
	end



endmodule


