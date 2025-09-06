module sr_ff_top (
    input  [9:0] SW,     // SW[0]=S, SW[1]=R, SW[2]=CLK, SW[3]=RESET, SW[4]=ENABLE
    output [9:0] LEDR    // LEDR[0]=Q
);

wire q;
wire s, r, clk, reset, en;

assign s     = SW[0];
assign r     = SW[1];
assign clk   = SW[2];
assign reset = SW[3];
assign en    = SW[4];

sr_ff uut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .s(s),
    .r(r),
    .q(q)
);

assign LEDR[0] = q;
assign LEDR[9:1] = 9'b0;

endmodule