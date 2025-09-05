module demux_1_2(
	input wire din,
	input wire sel,
	output reg y0,
	output reg y1);
always@(*) begin
	case(sel)
		1'b0:begin
			y0=din;
			y1=1'b0;
		   end
		1'b1:begin
			y0=1'b0;
			y1=din;
			end
	endcase
end
endmodule