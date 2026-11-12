module d_flip_flop (
    input D, reset, clock,
    output reg Q,
    output NotQ
);
    // set the intial state
    initial begin
        Q <= 0;
    end

    // data D going to Q only at the instant the clock goes from 0 to 1 (posedge)
    always @(posedge clock or posedge reset)
        if (reset == 1)
            Q <= 0;
        else Q <= D;  
    
    assign NotQ = ~Q;

endmodule
