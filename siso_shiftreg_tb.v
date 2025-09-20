// tb_siso_shiftreg.v
`timescale 1ns/1ps  // Simulation time unit = 1ns, precision = 1ps

module siso_shiftreg_tb;
    reg clk;       // Clock
    reg rst;       // Reset
    reg sin;       // Serial input
    wire sout;     // Serial output

    // Instantiate the SISO shift register
    siso_shiftreg uut (
        .clk(clk),
        .rst(rst),
        .sin(sin),
        .sout(sout)
    );

    // Clock generation: toggle every 5ns (period = 10ns)
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0; 
        rst = 0; 
        sin = 0;

        // Apply reset at start
        rst = 1; #10;   // Hold reset high for 10ns
        rst = 0;        // Release reset

        // Apply serial input bits one by one
        // First bit = 1
        sin = 1; #10;   // On next clock, '1' shifts in
        // Second bit = 0
        sin = 0; #10;
        // Third bit = 1
        sin = 1; #10;
        // Fourth bit = 1
        sin = 1; #10;
        // Fifth bit = 0 (oldest bits will start shifting out)
        sin = 0; #10;

        // End simulation after a few cycles
        #20 $finish;
    end

    // Monitor signals continuously
    initial begin
        $display("TIME | SIN | SHIFT_REG -> SOUT");
        $monitor("%4t |  %b  |          %b",
                 $time, sin, sout);
    end
endmodule
