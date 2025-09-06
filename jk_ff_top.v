module jk_ff_top (
    input  [9:0] SW,     // SW[0]=J, SW[1]=K, SW[2]=CLK, SW[3]=RESET, SW[4]=ENABLE
    output [9:0] LEDR    // LEDR[0]=Q
);

wire q;
wire j, k, clk, reset, en;

assign j     = SW[0];
assign k     = SW[1];
assign clk   = SW[2];
assign reset = SW[3];
assign en    = SW[4];

jk_ff uut (
    .clk(clk),
    .reset(reset),
    .en(en),
    .j(j),
    .k(k),
    .q(q)
);

assign LEDR[0] = q;
assign LEDR[9:1] = 9'b0;

endmodule