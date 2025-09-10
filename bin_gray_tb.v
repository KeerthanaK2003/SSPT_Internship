`timescale 1ns / 1ps  // Time unit = 1ns, time precision = 1ps

module bin_gray_tb;

    // Declare testbench signals
    reg  [3:0] binary;       // 4-bit binary input
    wire [3:0] gray;         // 4-bit Gray code output

    // Instantiate the design under test (DUT)
    bin_gray dut (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        // Display header
        $display("Time\tBinary\tGray");

        // Monitor changes in binary and gray values
        $monitor("%0dns\t%b\t%b", $time, binary, gray);

        // Apply test vectors with 10ns delay between each
        binary = 4'b0000; #10;
        binary = 4'b0001; #10;
        binary = 4'b0010; #10;
        binary = 4'b0011; #10;
        binary = 4'b0100; #10;
        binary = 4'b0101; #10;
        binary = 4'b0110; #10;
        binary = 4'b0111; #10;
        binary = 4'b1000; #10;
        binary = 4'b1001; #10;
        binary = 4'b1010; #10;
        binary = 4'b1011; #10;
        binary = 4'b1100; #10;
        binary = 4'b1101; #10;
        binary = 4'b1110; #10;
        binary = 4'b1111; #10;

        // End simulation
        $finish;
    end

endmodule
