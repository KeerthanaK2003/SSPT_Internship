`timescale 1ns / 1ps  // Time unit = 1ns, precision = 1ps

module compar_2b_tb;

    reg  [1:0] A, B;             // 2-bit inputs
    wire       A_gt_B, A_eq_B, A_lt_B; // Outputs

    // Instantiate the comparator module
    compar_2b uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_eq_B(A_eq_B),
        .A_lt_B(A_lt_B)
    );

    integer i, j;

    initial begin
        $display("Time\tA\tB\tA>B\tA==B\tA<B");
        $monitor("%0dns\t%b\t%b\t%b\t%b\t%b", $time, A, B, A_gt_B, A_eq_B, A_lt_B);

        // Loop through all 16 combinations of A and B
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                A = i[1:0];
                B = j[1:0];
                #10;
            end
        end

        $finish;
    end

endmodule