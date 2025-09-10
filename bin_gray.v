module bin_gray (
    input  [3:0] binary,   // 4-bit binary input
    output [3:0] gray      // 4-bit Gray code output
);

    // MSB remains the same
    assign gray[3] = binary[3];

    // Each Gray bit is the XOR of current and previous binary bits
    assign gray[2] = binary[3] ^ binary[2];
    assign gray[1] = binary[2] ^ binary[1];
    assign gray[0] = binary[1] ^ binary[0];

endmodule