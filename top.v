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
    .count(led[6:3])
  );

endmodule
