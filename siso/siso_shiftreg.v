// siso_shiftreg.v
// 4-bit Serial-In Serial-Out (SISO) Shift Register

module siso_shiftreg (
    input       clk,     // Clock signal
    input       rst,     // Reset signal (active high)
    input       sin,     // Serial input bit
    output reg  sout     // Serial output bit (last stage)
);

    // Internal 4-bit register to hold the shifting data
    reg [3:0] shift_reg;

    // Always block triggers on clock's rising edge or reset
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // If reset = 1, clear the shift register
            shift_reg <= 4'b0000;
            sout <= 0;
		  end 
		  else begin
            // Shift left by 1, insert new serial bit at LSB
            shift_reg <= {shift_reg[2:0], sin};
            // Output comes from the MSB of the shift register
            sout <= shift_reg[3];
        end
    end
endmodule
