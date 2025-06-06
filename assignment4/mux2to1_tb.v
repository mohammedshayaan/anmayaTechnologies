`timescale 1ns/1ps

module mux2to1_tb;

    reg a, b, sel;
    wire out;

    // Instantiate the 2:1 mux
    mux2to1 uut (
        .a(a),
        .b(b),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Enable waveform dump
        $dumpfile("dump.vcd");
        $dumpvars(0, mux2to1_tb);

        // Test all combinations of inputs and select line
        {a, b, sel} = 3'b000; #10;
        {a, b, sel} = 3'b001; #10;
        {a, b, sel} = 3'b010; #10;
        {a, b, sel} = 3'b011; #10;
        {a, b, sel} = 3'b100; #10;
        {a, b, sel} = 3'b101; #10;
        {a, b, sel} = 3'b110; #10;
        {a, b, sel} = 3'b111; #10;

        $finish;
    end
endmodule
