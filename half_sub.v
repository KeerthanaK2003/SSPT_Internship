// Module: half_sub
// Description: Half Subtractor - Computes difference and borrow from two 1-bit inputs

module half_sub (
    input wire a,      // Minuend
    input wire b,      // Subtrahend
    output wire diff,  // Difference output (a - b)
    output wire borrow // Borrow output
);

    // XOR for difference
    assign diff = a ^ b;

    // AND with NOT for borrow
    assign borrow = ~a & b;

endmodule

//// Module: half_sub (Behavioral Modeling)
//// Description: Half Subtractor using behavioral logic
//
//module half_sub (
//    input wire a,      // Minuend
//    input wire b,      // Subtrahend
//    output reg diff,   // Difference output
//    output reg borrow  // Borrow output
//);
//
//    always @(*) begin
//        // Difference: XOR of inputs
//        diff = a ^ b;
//
//        // Borrow: 1 only when b > a
//        borrow = (~a) & b;
//    end
//
//endmodule

// Module: half_sub (Structural Modeling)
// Description: Half Subtractor using basic gates

//module half_sub (
//    input wire a,      // Minuend
//    input wire b,      // Subtrahend
//    output wire diff,  // Difference output
//    output wire borrow // Borrow output
//);
//
//    // Internal wires for gate outputs
//    wire nota;
//
//    // Structural logic
//    xor (diff, a, b);         // diff = a XOR b
//    not (nota, a);            // nota = NOT a
//    and (borrow, nota, b);    // borrow = NOT a AND b
//
//endmodule


