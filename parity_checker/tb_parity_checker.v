// tb_parity_checker.v
`timescale 1ns/1ps

module tb_parity_checker;
    reg  [3:0] data;
    reg        pbit;
    wire       error;

    // Instantiate the design
    parity_checker uut (
        .data(data),
        .pbit(pbit),
        .error(error)
    );

    initial begin
        $display("TIME | DATA | PBIT | ERROR");
        $display("---------------------------");

        // Test cases
        data = 4'b0000; pbit = 0; #10;  // even, correct
        $display("%4t | %b |  %b   |   %b", $time, data, pbit, error);

        data = 4'b0001; pbit = 1; #10;  // odd, corrected by pbit
        $display("%4t | %b |  %b   |   %b", $time, data, pbit, error);

        data = 4'b0011; pbit = 0; #10;  // 2 ones (even), pbit correct
        $display("%4t | %b |  %b   |   %b", $time, data, pbit, error);

        data = 4'b0111; pbit = 0; #10;  // 3 ones (odd), wrong parity
        $display("%4t | %b |  %b   |   %b", $time, data, pbit, error);

        data = 4'b1111; pbit = 1; #10;  // 4 ones (even), wrong parity
        $display("%4t | %b |  %b   |   %b", $time, data, pbit, error);

        #10 $finish;
    end
endmodule
