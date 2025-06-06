`timescale 1ns/1ps

module mux4to1_tb;
    reg [1:0] sel;
    reg [3:0] in;
    wire out;

    // Instantiate the mux
    mux4to1 uut (
        .sel(sel),
        .in(in),
        .out(out)
    );

    initial begin
        // Test all combinations
        in = 4'b1010;

        sel = 2'b00; #10;
        $display("sel=%b, out=%b", sel, out);

        sel = 2'b01; #10;
        $display("sel=%b, out=%b", sel, out);

        sel = 2'b10; #10;
        $display("sel=%b, out=%b", sel, out);

        sel = 2'b11; #10;
        $display("sel=%b, out=%b", sel, out);

        $finish;
    end
endmodule
