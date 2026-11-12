// Implement module called full_adder
module full_adder(
    // Declare A, B, and Cin inputs
    input A,
    input B,
    input Cin,
    // Declare Y, carry in and carry out output
    output Y,
    output Cout
);

    // Enter logic equation here
  assign Y =
    A ^ B ^ Cin;
  assign Cout =
    (A & B) | 
    (A & Cin) | 
    (B & Cin);

endmodule
