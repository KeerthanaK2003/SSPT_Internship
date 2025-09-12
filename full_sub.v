module full_sub (
    input A,
    input B,
    input C,
    output Diff,
    output Borr
);

    // Difference (Diff) is the XOR of all inputs
    assign Diff = A ^ B ^ C;

    // Borrow (Borr) is calculated based on the logic equation
    assign Borr = (~A & B) | (~A & C) | (B & C);

endmodule