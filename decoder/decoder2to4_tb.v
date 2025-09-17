`timescale 1ns / 1ps

module decoder2to4_tb;

    reg [1:0] in;
    wire [3:0] out;

    decoder2to4 uut (
        .in(in),
        .out(out)
    );

    initial begin
        // Apply test cases one by one
        in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        // Display only once after all test cases
        $display("Final state at %0dns -> in = %b, out = %b", $time, in, out);

        $finish;
    end

endmodule
