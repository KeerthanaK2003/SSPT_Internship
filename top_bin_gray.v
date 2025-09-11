module top_bin_gray (
    input  [9:0] SW,     // Switches on DE10-Lite board
    output [9:0] LEDR    // LEDs on DE10-Lite board
);

wire [3:0] binary;       // 4-bit binary input from switches
wire [3:0] gray;         // 4-bit Gray code output

// Assign binary input from SW[3:0]
assign binary = SW[3:0];  // Use SW[3] to SW[0] as binary input

// Instantiate Binary to Gray converter
bin_gray uut (
    .binary(binary),
    .gray(gray)
);

// Display Gray code output on LEDR[3:0]
assign LEDR[3:0] = gray;     // Show Gray code on LEDs 0 to 3
assign LEDR[9:4] = 6'b000000; // Turn off unused LEDs

endmodule