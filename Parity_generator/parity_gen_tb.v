`timescale 1ns / 1ps //1ns time unit, 1ps precision
//testbench for even parity generator
module parity_gen_tb;
	reg [3:0] data_in;//test input data
	wire parity_bit;//output parity bit
//instantiate the design under test (DUT)
parity_generator uut(
.data_in(data_in),
.parity_bit(parity_bit)
);

initial begin
	//display header for clarity in simulation output.
	$display("Time(ns)\tData_in\tparity_bit");

	//apply test cases
	data_in=4'b0000;#10;//case 1 : 0 ones-> parity_bit=0
	$display("%0t\t%b", $time,data_in, parity_bit);

	data_in=4'b0001;#10;//case 2 : 1 ones-> parity_bit=1
	$display("%0t\t%b", $time,data_in, parity_bit);

	data_in=4'b1010;#10;//case 3 : 2 ones-> parity_bit=0
	$display("%0t\t%b", $time,data_in, parity_bit);

	data_in=4'b1111;#10;//case 4 : 4 ones-> parity_bit=0
	$display("%0t\t%b", $time,data_in, parity_bit);

	data_in=4'b1101;#10;//case 5 : 3 ones-> parity_bit=1
	$display("%0t\t%b", $time,data_in, parity_bit);

	//finish simulation
	$finish;
end
endmodule
