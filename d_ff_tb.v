module d_ff_tb;

reg clk, reset, en, d;
wire q;

d_ff uut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .d(d),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor("T=%0t | R=%b E=%b D=%b Q=%b", $time, reset, en, d, q);
    reset = 1; en = 0; d = 0; #10;
    reset = 0; en = 1;
    d = 1; #10;
    d = 0; #10;
    en = 0; d = 1; #10;
    $finish;
end

endmodule