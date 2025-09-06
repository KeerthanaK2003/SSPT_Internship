`timescale 1ns/1ps
module sr_ff_tb;

reg clk, reset, en, s, r;
wire q;

sr_ff uut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .s(s),
    .r(r),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("T=%0t | R=%b E=%b S=%b R=%b Q=%b", $time, reset, en, s, r, q);
    reset = 1; en = 0; s = 0; r = 0; #10;
    reset = 0; en = 1;
    s = 0; r = 1; #10;
    s = 1; r = 0; #10;
    s = 1; r = 1; #10;
    en = 0; s = 1; r = 0; #10;
    $finish;
end

endmodule