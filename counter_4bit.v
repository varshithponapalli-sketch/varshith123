// 4-bit Up Counter
// Author: Varshith
// Description: Synchronous 4-bit up counter with reset

module counter_4bit(
    input clk,
    input reset,
    output reg [3:0] count
);

always @(posedge clk or posedge reset)
begin
    if(reset)
        count <= 4'b0000;  // Reset to 0
    else
        count <= count + 1; // Increment count
end

endmodule

// Testbench
module counter_4bit_tb;

reg clk, reset;
wire [3:0] count;

counter_4bit uut(
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
initial clk = 0;
always #5 clk = ~clk;  // Toggle every 5 units

initial begin
    $display("Time | Reset | Count");
    $display("---------------------");
    reset = 1; #10;
    $display("%4t |   %b   | %b", $time, reset, count);
    reset = 0; #10;
    $display("%4t |   %b   | %b", $time, reset, count);
    #10;
    $display("%4t |   %b   | %b", $time, reset, count);
    #10;
    $display("%4t |   %b   | %b", $time, reset, count);
    #10;
    $display("%4t |   %b   | %b", $time, reset, count);
    #10;
    $display("%4t |   %b   | %b", $time, reset, count);
    $finish;
end

endmodule
