// 1:4 Demultiplexer Module
module demux1_4 (
    input wire in,            // Single input signal
    input wire [1:0] sel,    // 2-bit selection signal
    output wire [3:0] out    // 4-bit output, only one bit active at a time
);

    // Assign output based on selection signal
    assign out = (sel == 2'b00) ? (in << 0) :  // If sel = 00, connect input to out[0]
                 (sel == 2'b01) ? (in << 1) :  // If sel = 01, connect input to out[1]
                 (sel == 2'b10) ? (in << 2) :  // If sel = 10, connect input to out[2]
                                  (in << 3);   // If sel = 11, connect input to out[3]

endmodule
