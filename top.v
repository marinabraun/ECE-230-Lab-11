module top(
  input btnU,
  input btnC,
  output[6:0] led
);

  ripple_counter(
    .clock(btnC),
    .reset(btnU),
    .Q(led[2:0])
  );

  modulo_counter(
    .clock(btnC),
    .reset(btnU),
    .count(led[5:3]),
    .out(led[6])
  );

endmodule
