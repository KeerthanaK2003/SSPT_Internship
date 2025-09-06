module top_demux12 (
    input  [9:0] SW,     // Switches on DE10-Lite
    output [9:0] LEDR    // LEDs on DE10-Lite
);

wire din, sel;
wire y0, y1;

// Assign inputs from switches
assign din = SW[0];  // Data input from SW[0]
assign sel = SW[1];  // Select input from SW[1]

// Instantiate the demux_1_2 module
demux_1_2 uut (
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

// Display outputs on LEDs
assign LEDR[0] = y0;       // LEDR[0] shows y0
assign LEDR[1] = y1;       // LEDR[1] shows y1
assign LEDR[9:2] = 8'b0;   // Remaining LEDs OFF

endmodule