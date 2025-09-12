`timescale 1ns / 1ps

module full_sub_tb;

    // Testbench registers for inputs
    reg A;
    reg B;
    reg C;

    // Testbench wires for outputs
    wire Diff;
    wire Borr;

    // Instantiate the Unit Under Test (UUT)
    full_sub uut (
        .A(A),
        .B(B),
        .C(C),
        .Diff(Diff),
        .Borr(Borr)
    );

    // Initial block to generate test vectors
    initial begin
        $monitor("Time=%0t, A=%b, B=%b, C=%b, Diff=%b, Borr=%b", $time, A, B, C, Diff, Borr);

        // Test case 1: 0 - 0 - 0
        A = 0; B = 0; C = 0;
        #10; // Wait 10ns

        // Test case 2: 0 - 0 - 1
        A = 0; B = 0; C = 1;
        #10;

        // Test case 3: 0 - 1 - 0
        A = 0; B = 1; C = 0;
        #10;

        // Test case 4: 0 - 1 - 1
        A = 0; B = 1; C = 1;
        #10;

        // Test case 5: 1 - 0 - 0
        A = 1; B = 0; C = 0;
        #10;

        // Test case 6: 1 - 0 - 1
        A = 1; B = 0; C = 1;
        #10;

        // Test case 7: 1 - 1 - 0
        A = 1; B = 1; C = 0;
        #10;

        // Test case 8: 1 - 1 - 1
        A = 1; B = 1; C = 1;
        #10;

        $finish; // End simulation
    end

endmodule