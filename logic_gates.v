module logic_gates(a,b,and_out,or_out,nand_out,nor_out,notb_out,xor_out,xnor_out);
	input a,b;
	output and_out,or_out,nand_out,nor_out,notb_out,xor_out,xnor_out;
		assign and_out=a&b; 
		assign or_out=a|b;
		assign nand_out=~(a&b);
		assign nor_out=~(a|b);
		assign notb_out=~b;
		assign xor_out=a^b;
		assign xnor_out=~(a^b);
endmodule

