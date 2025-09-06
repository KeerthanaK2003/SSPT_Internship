`timescale 1ns/1ps
module jk_ff_tb;

reg clk, reset, en, j, k;
wire q;

jk_ff uut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .j(j),
    .k(k),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("T=%0t | R=%b E=%b J=%b K=%b Q=%b", $time, reset, en, j, k, q);
    reset = 1; en = 0; j = 0; k = 0; #10;
    reset = 0; en = 1;
    j = 0; k = 0; #10;
    j = 0; k = 1; #10;
    j = 1; k = 0; #10;
    j = 1; k = 1; #10;
    en = 0; j = 1; k = 1; #10;
    $finish;
end

endmodule