`timescale 1ns/1ps

module up_down_counter_tb;

    reg clk;
    reg rst;
    reg up_down;
    wire [3:0] count;

    // Instantiate the counter
    up_down_counter uut (
        .clk(clk),
        .rst(rst),
        .up_down(up_down),
        .count(count)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // VCD waveform dump
        $dumpfile("dump.vcd");
        $dumpvars(0, up_down_counter_tb);

        // Initialize signals
        clk = 0;
        rst = 1;
        up_down = 1;  // Start with counting up

        #10 rst = 0;  // Release reset

        // Count up for 5 clocks
        #50;

        // Change direction to down
        up_down = 0;

        // Count down for 5 clocks
        #50;

        $finish;
    end
endmodule
