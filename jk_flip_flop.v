module jk_flip_flop (
    input J, K, clock,
    output Q,
    output NotQ
);  
    // Since we are using our D flipflop we only
    // need to add the logic of JK ontop and call
    // our original dff
    wire D;
    
    assign D = (J & NotQ) | (~K & Q);
    
    d_flip_flop dff (
        .D(D),
        .clock(clock),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule
