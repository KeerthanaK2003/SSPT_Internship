// tb_mux8to1.v
`timescale 1ns / 1ps

module mux81_tb;

    reg [7:0] in;
    reg [2:0] sel;
    wire out;

    // Instantiate the mux
    mux81 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Initialize inputs
        in = 8'b10101010;
        sel = 3'b000;

        // Apply different selections
        #10 sel = 3'b001;
        #10 sel = 3'b010;
        #10 sel = 3'b011;
        #10 sel = 3'b100;
        #10 sel = 3'b101;
        #10 sel = 3'b110;
        #10 sel = 3'b111;
        #10 $finish;
    end

    initial begin
        $monitor("Time = %0t | sel = %b | out = %b", $time, sel, out);
    end

endmodule
