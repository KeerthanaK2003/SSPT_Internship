`timescale 1ns / 1ps

module encoder4to2_tb;

    reg [3:0] in;
    wire [1:0] out;

    encoder4to2 uut (
        .in(in),
        .out(out)
    );

    initial begin
        // Apply test cases one by one
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;
        in = 4'b0000; #10;

        // Display only once after all test cases
        $display("Final state at %0dns -> in = %b, out = %b", $time, in, out);

        $finish;
    end

endmodule
