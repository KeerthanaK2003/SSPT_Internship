//parity_generator
//Design code for even parity generator
module parity_generator(
	input [3:0] data_in,//4 bit input data
	output parity_bit //generated parity bit(even parity)
	);
	//the parity bit the xor of all data bits
	//for even parity ,XOR ensures total 1's count (data + parity) is even
	assign parity_bit=^data_in;
endmodule