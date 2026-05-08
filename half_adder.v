// Half Adder - Digital Circuit Design
// Author: Varshith
// Description: Half adder using dataflow modeling

module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

assign sum = a ^ b;      // XOR gate
assign carry = a & b;    // AND gate

endmodule

// Testbench
module half_adder_tb;

reg a, b;
wire sum, carry;

half_adder uut(
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin
    $display("A B | Sum Carry");
    $display("----------");
    a=0; b=0; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    a=0; b=1; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    a=1; b=0; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    a=1; b=1; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    $finish;
end

endmodule
