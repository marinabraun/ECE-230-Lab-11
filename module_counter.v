module modulo_counter(
  input clock, reset,
  output [2:0] count, 
  output out
);

  wire [2:0] sum;
  wire [2:0] carry;

full_adder f0 (
  .A(count[0]),
  .B(1'b0),
  .Cin(1'b1),
  .Y(sum[0]),
  .Cout(carry[0])
);

full_adder f1 (
  .A(count[1]),
  .B(1'b0),
  .Cin(carry[0]),
  .Y(sum[1]),
  .Cout(carry[1])
);

full_adder f2 (
  .A(count[2]),
  .B(1'b0),
  .Cin(carry[1]),
  .Y(sum[2]),
  .Cout(carry[2])
);

endmodule
