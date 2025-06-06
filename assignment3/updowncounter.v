module up_down_counter (
    input wire clk,
    input wire rst,
    input wire up_down,  // 1 for up, 0 for down
    output reg [3:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst)
        count <= 4'b0000;
    else if (up_down)
        count <= count + 1;
    else
        count <= count - 1;
end

endmodule
