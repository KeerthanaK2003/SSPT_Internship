`timescale 1ns / 1ps  // Timescale for simulation

// Testbench: half_sub_tb
// Description: Testbench for half_sub module

module half_sub_tb;

    // Declare inputs as regs
    reg a, b;

    // Declare outputs as wires
    wire diff, borrow;

    // Instantiate the half_sub module
    half_sub uut (
        .a(a),
        .b(b),
        .diff(diff),
        .borrow(borrow)
    );

    initial begin
        // Print header
        $display("A B | Diff Borrow");
        $display("---------------");

        // Test all combinations of a and b
        a = 0; b = 0; #10;
        $display("%b %b |   %b     %b", a, b, diff, borrow);

        a = 0; b = 1; #10;
        $display("%b %b |   %b     %b", a, b, diff, borrow);

        a = 1; b = 0; #10;
        $display("%b %b |   %b     %b", a, b, diff, borrow);

        a = 1; b = 1; #10;
        $display("%b %b |   %b     %b", a, b, diff, borrow);

        // End simulation
        $finish;
    end

endmodule
