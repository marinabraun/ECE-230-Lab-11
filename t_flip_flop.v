module t_flip_flop (
    input T, clock,
    output Q,
    output NotQ
);
    
    // To make a t flip flop we can just set
    // J = K on our jk_flip_flop and we get
    // our intended behavior
    
    jk_flip_flop jkff (
        .J(T),
        .K(T),
        .clock(clock),
        .Q(Q),
        .NotQ(NotQ)
     );
    
endmodule
