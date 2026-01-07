`timescale 1ns/1ps

module tb_lcd_driver;

	// Parameter
	localparam BCD_DIGITS = 7;
	localparam CLK_FREQ = 64'd50000000;
	localparam CLK_PERIOD = 20;

	// Testbench signals
	reg clk;
	reg button_next;
	reg button_prev; 
	reg reset_n;
	reg [(BCD_DIGITS*4)-1:0] bcd_freq;
	wire [7:0] lcd_data; // Bus Dati LCD
	wire lcd_rw;     // Read/Write Select (0=Write)
	wire lcd_en;      // Enable Pulse
	wire lcd_rs;      // Register Select (0=Cmd, 1=Data)
	wire lcd_on;      // Power ON switch
	wire lcd_blon;     // Backlight ON switch
	
	wire sin;
	wire triang;
	wire mirror_x;
	wire mirror_y;

	// Instantiate the DUT (Device Under Test)
	lcd_driver_test #(
		.BCD_DIGITS(BCD_DIGITS),
		.CLK_FREQ(CLK_FREQ)
	
	) dut (
		.clk(clk),
		.button_next(button_next),
		.button_prev(button_prev),
		.bcd_freq(bcd_freq),
		.reset_n(reset_n),
		.lcd_data(lcd_data),
		.lcd_rw(lcd_rw),
		.lcd_en(lcd_en),
		.lcd_rs(lcd_rs),
		.lcd_on(lcd_on),
		.lcd_blon(lcd_blon),
		.sin(sin),
		.triang(triang),
		.mirror_x(mirror_x),
		.mirror_y(mirror_y)		
	);

	// Generate a clock: 50 MHz (20 ns period)
	initial begin
		clk = 0;
		forever #(CLK_PERIOD/2) clk = ~clk;  // toggle every 10 ns
	end

	// Stimulus block
	initial begin
		// Initialize signals
		reset_n = 1'b0;
		button_next = 1'b1;
		button_prev = 1'b1;
		bcd_freq = 28'hFFFFFFF;
		
		#(CLK_PERIOD*2)	  
		reset_n = 1'b1;
		
		#(CLK_PERIOD*2000)
		button_next = 1'b0;
		
		#(CLK_PERIOD*10)
		button_next = 1'b1;
		
		#(CLK_PERIOD*1000)
		button_next = 1'b0;
		
		#(CLK_PERIOD*10)
		button_next = 1'b1;
		
		#(CLK_PERIOD*1000)
		button_prev = 1'b0;
		
		#(CLK_PERIOD*10)
		button_prev = 1'b1;
		
		
		#(CLK_PERIOD*1000)
		// Finish simulation
		$stop;
	end

endmodule
