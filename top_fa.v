module top_fa (
    input  [9:0] SW,     // Switches on DE10-Lite
    output [9:0] LEDR    // LEDs on DE10-Lite
);

wire sum, cout;
wire a, b, cin;

assign a   = SW[0];  // Input 'a' from SW[0]
assign b   = SW[1];  // Input 'b' from SW[1]
assign cin = SW[2];  // Carry-in from SW[2]

// Instantiate the Full Adder
fa uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

// Display sum and carry on LEDs
assign LEDR[0] = sum;     // LEDR[0] = sum output
assign LEDR[1] = cout;   // LEDR[1] = carry output
assign LEDR[9:2] = 8'b0;  // Remaining LEDs OFF

endmodule