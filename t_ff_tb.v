`timescale 1ns/1ps
module t_ff_tb;

reg clk;
reg reset;
reg enable;
reg T;
wire Q;

// Instantiate the module
t_ff uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .T(T),
    .Q(Q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock period
end

// Stimulus
initial begin
    $monitor("Time=%0t | reset=%b enable=%b T=%b Q=%b", $time, reset, enable, T, Q);

    // Initial state
    reset = 1; enable = 0; T = 0;
    #10 reset = 0;

    // Enable toggling
    #10 enable = 1; T = 1;
    #20 T = 0;
    #20 T = 1;
    #20 enable = 0; // Disable updates
    #20 T = 1;

    // Re-enable and reset
    #10 enable = 1;
    #10 reset = 1;
    #10 reset = 0;

    #20 $finish;
end

endmodule