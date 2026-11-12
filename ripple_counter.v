module ripple_counter (
  input clock, reset,
  output [2:0] Q
);

  wire nq0;
  wire nq1;
  wire nq2;

  t_flip_flop stage1 (
    .T(1'b1),
    .clock(clock),
    .reset(reset),
    .Q(Q[0]),
    .NotQ(nq0)
  );
  
  t_flip_flop stage2 (
    .T(1'b1),
    .clock(nq0),
    .reset(reset),
    .Q(Q[1]),
    .NotQ(nq1)
  );

  t_flip_flop stage3 (
    .T(1'b1),
    .clock(nq2),
    .reset(reset),
    .Q(Q[2]),
    .NotQ(nq1)
  );

endmodule

  
  
