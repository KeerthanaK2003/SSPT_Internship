// parity_checker.v
// 4-bit parity checker (even parity)

module parity_checker (
    input  [3:0] data,    // 4-bit input data
    input pbit,    // parity bit received
    output error    // 1 if parity error, 0 if correct
);

    // Compute XOR of all data bits
    wire data_parity;
    assign data_parity = ^data;  // 1 if odd number of 1's in data

    // Overall parity check
    // For even parity: total parity = data_parity ^ pbit
    // If result = 0 → no error, If result = 1 → error
    assign error = data_parity ^ pbit;

endmodule
