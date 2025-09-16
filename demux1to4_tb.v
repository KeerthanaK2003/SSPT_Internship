`timescale 1ns / 1ps  // Set time precision to 1ns and resolution to 1ps

module demux1to4_tb;
    reg in;                // Test input signal
    reg [1:0] sel;        // Test selection lines
    wire [3:0] out;      // Output wire to monitor the result

    // Instantiate the demux module
    demux1_4 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("demux1_4.vcd");  // Generate waveform file
        $dumpvars(0, demux1to4_tb);  // Dump all variables of this module

        // Test case: input = 1, cycling through all selection lines
        in = 1;
        sel = 2'b00; #10;   // Set sel to 00 and wait 10 ns
        sel = 2'b01; #10;   // Set sel to 01 and wait 10 ns
        sel = 2'b10; #10;   // Set sel to 10 and wait 10 ns
        sel = 2'b11; #10;   // Set sel to 11 and wait 10 ns

        // Test case: input = 0, cycling through all selection lines
        in = 0;
        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b10; #10;
        sel = 2'b11; #10;

        $finish;  // End simulation
    end
endmodule
