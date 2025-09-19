module ALU4 (
    input  wire [3:0] A,
    input  wire [3:0] B,
    input  wire [2:0] Op,   // 3-bit operation select
    output reg  [3:0] R,    // result
    output reg  Zero  // zero flag
);

always @(*) begin
    case (Op)
        3'b000: R = A + B;      // addition
        3'b001: R = A - B;      // subtraction
        3'b010: R = A & B;      // AND
        3'b011: R = A | B;      // OR
        3'b100: R = A ^ B;      // XOR
        3'b101: R = ~A;         // NOT A
        3'b110: R = A << 1;     // shift left by 1
        3'b111: R = A >> 1;     // shift right by 1
        default: R = 4'b0000;
    endcase

    // Zero flag: set to 1 if result is zero
    if (R == 4'b0000)
        Zero = 1;
    else
        Zero = 0;
end

endmodule
