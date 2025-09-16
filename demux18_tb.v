`timescale 1ns / 1ps  // Set time unit to 1ns and time precision to 1ps

module demux18_tb;
    reg in;                // Test input
    reg [2:0] sel;        // 3-bit selection input
    wire [7:0] out;      // Output wire to monitor the result

    // Instantiate the demux module
    demux1_8 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("demux1_8.vcd");  // Save waveform data
        $dumpvars(0, demux18_tb);  // Dump all variables for this module

        // Test input = 1, cycle through all selections
        in = 1;
        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        // Test input = 0, cycle through all selections
        in = 0;
        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;

        $finish;  // End simulation
    end
endmodule
