`timescale 1ns / 1ps

module ALU4_tb;

    reg  [3:0] A;
    reg  [3:0] B;
    reg  [2:0] Op;
    wire [3:0] R;
    wire Zero;

    // Instantiate the ALU
    ALU4 uut (
        .A(A),
        .B(B),
        .Op(Op),
        .R(R),
        .Zero(Zero)
    );

    initial begin
        $display("Time\tA\tB\tOp\tR\tZero");
        $monitor("%0dns\t%0d\t%0d\t%03b\t%0d\t%b", $time, A, B, Op, R, Zero);

        // Test 1: addition, non-zero result
        A = 4'd3; B = 4'd2; Op = 3'b000;
        #10;

        // Test 2: subtraction, zero result
        A = 4'd5; B = 4'd5; Op = 3'b001;
        #10;

        // Test 3: AND, zero result
        A = 4'b1010; B = 4'b0101; Op = 3'b010;
        #10;

        // Test 4: OR, non-zero
        A = 4'b1000; B = 4'b0010; Op = 3'b011;
        #10;

        // Test 5: XOR, zero
        A = 4'b1100; B = 4'b1100; Op = 3'b100;
        #10;

        // Test 6: NOT A
        A = 4'b0000; B = 4'd0; Op = 3'b101;
        #10;

        // Test 7: shift left
        A = 4'b0011; B = 4'd0; Op = 3'b110;
        #10;

        // Test 8: shift right
        A = 4'b1000; B = 4'd0; Op = 3'b111;
        #10;

        // Finish simulation
        #10;
        $finish;
    end

endmodule
