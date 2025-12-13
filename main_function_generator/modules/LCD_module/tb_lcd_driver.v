`timescale 1ns/1ps

module tb_lcd_driver;

    // Testbench signals
    reg clk;
    reg reset_n;
    wire [7:0] lcd_data; // Bus Dati LCD
    wire lcd_rw;     // Read/Write Select (0=Write)
    wire lcd_en;      // Enable Pulse
    wire lcd_rs;      // Register Select (0=Cmd, 1=Data)
    wire lcd_on;      // Power ON switch
    wire lcd_blon;     // Backlight ON switch

    // Instantiate the DUT (Device Under Test)
    lcd_driver dut (
        .clk(clk),
        .reset_n(reset_n),
        .lcd_data(lcd_data),
        .lcd_rw(lcd_rw),
		  .lcd_en(lcd_en),
        .lcd_rs(lcd_rs),
		  .lcd_on(lcd_on),
        .lcd_blon(lcd_blon)
    );

    // Generate a clock: 100 MHz (10 ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // toggle every 10 ns
    end

    // Stimulus block
    initial begin
        // Initialize signals
		  reset_n = 1'b0;
		  #200
		  
		  reset_n = 1'b1;
		  #5000000

        // Finish simulation
        $stop;
    end

endmodule