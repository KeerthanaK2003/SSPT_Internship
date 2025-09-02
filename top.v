module top (
    input  [9:0] SW,     // Switches on DE10-Lite
    output [9:0] LEDR    // LEDs on DE10-Lite
);

wire sum, carry;
wire a, b;

assign a = SW[0];  // Input 'a' from SW[0]
assign b = SW[1];  // Input 'b' from SW[1]

// Instantiate the Half Adder
ha uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

// Display sum and carry on LEDs
assign LEDR[0] = sum;     // LEDR[0] = sum output
assign LEDR[1] = carry;   // LEDR[1] = carry output
assign LEDR[9:2] = 8'b0;  // Remaining LEDs OFF

endmodule

