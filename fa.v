module fa (
    input  wire a,       // First input bit
    input  wire b,       // Second input bit
    input  wire cin,     // Carry-in
    output wire sum,     // Sum output
    output wire cout     // Carry-out
);

    assign sum  = a ^ b ^ cin;               // XOR for sum
    assign cout = (a & b) | (b & cin) | (a & cin); // Majority logic for carry

endmodule