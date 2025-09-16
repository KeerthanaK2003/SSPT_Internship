// 1:8 Demultiplexer Module
module demux1_8 (
    input wire in,            // Single input signal
    input wire [2:0] sel,    // 3-bit selection signal
    output wire [7:0] out    // 8-bit output, only one bit active at a time
);

    // Assign output based on selection signal
    assign out = (sel == 3'b000) ? (in << 0) :  // If sel = 000, connect input to out[0]
                 (sel == 3'b001) ? (in << 1) :  // If sel = 001, connect input to out[1]
                 (sel == 3'b010) ? (in << 2) :  // If sel = 010, connect input to out[2]
                 (sel == 3'b011) ? (in << 3) :  // If sel = 011, connect input to out[3]
                 (sel == 3'b100) ? (in << 4) :  // If sel = 100, connect input to out[4]
                 (sel == 3'b101) ? (in << 5) :  // If sel = 101, connect input to out[5]
                 (sel == 3'b110) ? (in << 6) :  // If sel = 110, connect input to out[6]
                                  (in << 7);   // If sel = 111, connect input to out[7]

endmodule
