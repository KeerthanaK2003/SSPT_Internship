`timescale 1ns / 1ps

module fa_tb;

    reg a, b, cin;
    wire sum, cout;

    fa uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    integer i;

    initial begin
        $display("A B Cin | Sum Cout\n---------------");
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i[2:0]; #10;
            $display("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        end
        $finish;
    end
endmodule