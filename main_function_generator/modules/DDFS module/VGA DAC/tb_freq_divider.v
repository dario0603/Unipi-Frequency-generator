`timescale 1ns/1ps

module tb_freq_divider;

    // Testbench signals
    reg clk_in;
    reg rst_n;
    reg [2:0] freq_cntrl;
    wire clk_out;

    // Instantiate the DUT (Device Under Test)
    freq_divider_DDFS dut (
        .clk_in(clk_in),
        .rst_n(rst_n),
        .freq_cntrl(freq_cntrl),
        .clk_out(clk_out)
    );

    // Generate a clock: 100 MHz (10 ns period)
    initial begin
        clk_in = 0;
        forever #5 clk_in = ~clk_in;  // toggle every 10 ns
    end

    // Stimulus block
    initial begin
        // Initialize signals
        rst_n = 0;
        freq_cntrl = 0;

        // Apply reset
        #20;
        rst_n = 1;
        
        // Test each freq control value
        #1000;
        freq_cntrl = 1;   // change divider setting
        #5000;
        freq_cntrl = 2;
        #5000;
        freq_cntrl = 3;
        #15000;

        // Finish simulation
        $stop;
    end

endmodule