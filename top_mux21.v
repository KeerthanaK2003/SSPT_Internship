module top_mux21 (
    input  [9:0] SW,     // Switches on DE10-Lite
    output [9:0] LEDR    // LEDs on DE10-Lite
);

wire sel, i0, i1, y;

// Assign inputs from switches
assign i0 = SW[0];       // Input 0 from SW[0]
assign i1 = SW[1];       // Input 1 from SW[1]
assign sel = SW[2];      // Select line from SW[2]

// Instantiate the 2:1 MUX
mux21 uut (
    .sel(sel),
    .i0(i0),
    .i1(i1),
    .y(y)
);

// Display output on LEDR[0]
assign LEDR[0] = y;       // Output y on LEDR[0]
assign LEDR[9:1] = 9'b0;  // Turn off remaining LEDs

endmodule