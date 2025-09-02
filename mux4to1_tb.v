module mux4to1_tb;
    reg [3:0] in;       // 4-bit input
    reg [1:0] sel;      // 2-bit select
    wire out;           // Output wire

    // Instantiate the mux
    mux4to1 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Set input bits
        in = 4'b1101; // in[3]=1, in[2]=1, in[1]=0, in[0]=1

        // Try all select values
        sel = 2'b00; #10; // Expect out = in[0] = 1
        sel = 2'b01; #10; // Expect out = in[1] = 0
        sel = 2'b10; #10; // Expect out = in[2] = 1
        sel = 2'b11; #10; // Expect out = in[3] = 1

        $finish;
    end
endmodule