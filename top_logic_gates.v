module top_logic_gates (
    input  [9:0] SW,     // Switches on DE10-Lite
    output [9:0] LEDR    // LEDs on DE10-Lite
);
    wire a, b;
    wire and_out, or_out, nand_out, nor_out, notb_out, xor_out, xnor_out;
	// Assign inputs from switches
    assign a = SW[0];  // SW[0] → input 'a'
    assign b = SW[1];  // SW[1] → input 'b'
    // Instantiate the logic_gates module
    logic_gates uut (
        .a(a),
        .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .notb_out(notb_out),
        .xor_out(xor_out),
        .xnor_out(xnor_out)
    );
    // Display outputs on LEDs
    assign LEDR[0] = and_out;
    assign LEDR[1] = or_out;
    assign LEDR[2] = nand_out;
    assign LEDR[3] = nor_out;
    assign LEDR[4] = notb_out;
    assign LEDR[5] = xor_out;
    assign LEDR[6] = xnor_out;
    assign LEDR[9:7] = 3'b000;  // Unused LEDs OFF

endmodule