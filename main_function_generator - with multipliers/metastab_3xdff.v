module metastab_3xdff
(
	
	// ---- SYNCHRONIZATION PINS ---- //
	input clk_mul, clk_in, rst_n,
	
	// ---- INPUT KEYPAD MODULE PINS ---- //
	input ena_ddfs,
	input [6:0] fw,
	input [2:0] freq_control,
	input next, prev,
	input [3:0] freq_1,
	input [3:0] freq_2,
	input [3:0] freq_3,
	input [3:0] freq_4,
	input [3:0] freq_5,
	input [3:0] freq_6,
	input [3:0] freq_7,
	
	// ---- INPUT LCD MODULE PINS ---- //
	input sin, triang,
	input mirror_x, mirror_y,
	
	// ---- OUTPUT KEYPAD MODULE PINS ---- //
	output reg mirror_x_sync_keypad, mirror_y_sync_keypad,
	
	// ---- OUTPUT LCD MODULE PINS ---- //
	output reg next_sync, prev_sync,
	output reg [27:0] bcd_freq_sync,
	
	// ---- OUTPUT DDFS MODULE PINS ---- //
	output reg sin_sync, triang_sync,
	output reg mirror_x_sync_ddfs, mirror_y_sync_ddfs,	
	output reg ena_ddfs_sync,
	output reg [6:0] fw_sync,
	output reg [2:0] freq_control_sync
	
);
	
	//Synchronization between keypad_module and lcd_driver
	reg [27:0] bcd_freq_sync_1, bcd_freq_sync_2;
	reg next_1, next_2, prev_1, prev_2;
	reg ena_ddfs_2, ena_ddfs_1;
	always @(posedge clk_in) begin
		if(rst_n == 0) begin
			//reset condition
			bcd_freq_sync <= 0;
			bcd_freq_sync_1 <= 0;
			bcd_freq_sync_2 <= 0;
			{next_sync, next_1, next_2, prev_sync, prev_1, prev_2} <= 6'b000000;
			{ena_ddfs_sync, ena_ddfs_2, ena_ddfs_1} <= 3'b000;
			
		end
		else begin
			//flip flop instance
			bcd_freq_sync <= bcd_freq_sync_2;
			bcd_freq_sync_2 <= bcd_freq_sync_1;
			bcd_freq_sync_1 <= {freq_7, freq_6, freq_5, freq_4, freq_3, freq_2, freq_1};
			
			next_sync <= next_2;
			next_2 <= next_1;
			next_1 <= next;
			
			prev_sync <= prev_2;
			prev_2 <= prev_1;
			prev_1 <= prev;
			
			ena_ddfs_sync <= ena_ddfs_2;
			ena_ddfs_2 <= ena_ddfs_1;
			ena_ddfs_1 <= ena_ddfs;
		
		end
	end
	
	//Synchronization between keypad_module and ddfs_module
	reg [6:0] fw_1, fw_2;
	reg [2:0] freq_control_1, freq_control_2;
	always @(posedge clk_mul) begin
		if(rst_n == 0) begin
			//reset condition
			freq_control_sync <= 0;
			freq_control_1 <= 0;
			freq_control_2 <= 0;
			
			fw_sync <= 0;
			fw_1 <= 0;
			fw_2 <= 0;
			
		end
		else begin
			//flip flop instance
			freq_control_sync <= freq_control_2;
			freq_control_2 <= freq_control_1;
			freq_control_1 <= freq_control;
			
			fw_sync <= fw_2;
			fw_2 <= fw_1;
			fw_1 <= fw;
		
		end
	end
	
	//Synchronization between lcd_driver and keypad_module
	reg mirror_x_sync_keypad_1, mirror_x_sync_keypad_2;
	reg mirror_y_sync_keypad_1, mirror_y_sync_keypad_2;
	always @(posedge clk_in) begin
		if(rst_n == 0) begin
			//reset condition
			{mirror_x_sync_keypad, mirror_x_sync_keypad_1, mirror_x_sync_keypad_2} <= 3'b000;
			{mirror_y_sync_keypad, mirror_y_sync_keypad_1, mirror_y_sync_keypad_2} <= 3'b000;
			
		end
		else begin
			//flip flop instance
			mirror_x_sync_keypad <= mirror_x_sync_keypad_2;
			mirror_x_sync_keypad_2 <= mirror_x_sync_keypad_1;
			mirror_x_sync_keypad_1 <= mirror_x;
			
			mirror_y_sync_keypad <= mirror_y_sync_keypad_2;
			mirror_y_sync_keypad_2 <= mirror_y_sync_keypad_1;
			mirror_y_sync_keypad_1 <= mirror_y;
		
		end
	end
	
	//Synchronization between lcd_driver and ddfs_module
	reg sin_sync_1, sin_sync_2, triang_sync_1, triang_sync_2;
	reg mirror_x_sync_ddfs_1, mirror_x_sync_ddfs_2;
	reg mirror_y_sync_ddfs_1, mirror_y_sync_ddfs_2;
	always @(posedge clk_mul) begin
		if(rst_n == 0) begin
			//reset condition
			{sin_sync, sin_sync_1, sin_sync_2, triang_sync, triang_sync_1, triang_sync_2} <= 6'b000000;
			{mirror_x_sync_ddfs, mirror_x_sync_ddfs_1, mirror_x_sync_ddfs_2} <= 3'b000;
			{mirror_y_sync_ddfs, mirror_y_sync_ddfs_1, mirror_y_sync_ddfs_2} <= 3'b000;
			
		end
		else begin
			if(ena_ddfs_sync == 0) begin
				//flip flop instance
				sin_sync <= sin_sync_2;
				sin_sync_2 <= sin_sync_1;
				sin_sync_1 <= sin;
				
				triang_sync <= triang_sync_2;
				triang_sync_2 <= triang_sync_1;
				triang_sync_1 <= triang;
				
				mirror_x_sync_ddfs <= mirror_x_sync_ddfs_2;
				mirror_x_sync_ddfs_2 <= mirror_x_sync_ddfs_1;
				mirror_x_sync_ddfs_1 <= mirror_x;
				
				mirror_y_sync_ddfs <= mirror_y_sync_ddfs_2;
				mirror_y_sync_ddfs_2 <= mirror_y_sync_ddfs_1;
				mirror_y_sync_ddfs_1 <= mirror_y;
				
			end
			else begin
				//flip flop de declaration
				{sin_sync, sin_sync_1, sin_sync_2, triang_sync, triang_sync_1, triang_sync_2} <= 
				{sin_sync, sin_sync_1, sin_sync_2, triang_sync, triang_sync_1, triang_sync_2};
				{mirror_x_sync_ddfs, mirror_x_sync_ddfs_1, mirror_x_sync_ddfs_2} <= 
				{mirror_x_sync_ddfs, mirror_x_sync_ddfs_1, mirror_x_sync_ddfs_2};
				{mirror_y_sync_ddfs, mirror_y_sync_ddfs_1, mirror_y_sync_ddfs_2} <= 
				{mirror_y_sync_ddfs, mirror_y_sync_ddfs_1, mirror_y_sync_ddfs_2};
				
			end
		end
	end

endmodule
