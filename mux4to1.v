module mux4to1 (
    input wire [3:0] in,       // 4-bit input
    input wire [1:0] sel,      // 2-bit select line
    output wire out            // Output
);
    assign out = (sel == 2'b00) ? in[0] :
                 (sel == 2'b01) ? in[1] :
                 (sel == 2'b10) ? in[2] :
                 in[3];
endmodule