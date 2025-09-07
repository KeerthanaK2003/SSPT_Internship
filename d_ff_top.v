module d_ff_top (
    input  [9:0] SW,     // SW[0]=D, SW[1]=CLK, SW[2]=RESET, SW[3]=ENABLE
    output [9:0] LEDR    // LEDR[0]=Q
);

wire q;
wire d, clk, reset, en;

assign d     = SW[0];
assign clk   = SW[1];
assign reset = SW[2];
assign en    = SW[3];

d_ff uut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .d(d),
    .q(q)
);
assign LEDR[0] = q;
assign LEDR[9:1] = 9'b0;

endmodule