module compar_2b (
    input  [1:0] A,        // First 2-bit input
    input  [1:0] B,        // Second 2-bit input
    output       A_gt_B,   // Output high if A > B
    output       A_eq_B,   // Output high if A == B
    output       A_lt_B    // Output high if A < B
);

    // Perform comparisons
    assign A_gt_B = (A > B);    // A greater than B
    assign A_eq_B = (A == B);   // A equal to B
    assign A_lt_B = (A < B);    // A less than B

endmodule