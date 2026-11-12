module d_flip_flop (
    input D, clock,
    output reg Q,
    output NotQ
);
    // set the intial state
    initial begin
        Q <= 0;
    end

    // data D going to Q only at the instant the clock goes from 0 to 1 (posedge)
    always @(posedge clock)
        Q <= D;  
    
    assign NotQ = ~Q;

endmodule
