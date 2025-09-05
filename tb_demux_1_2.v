`timescale 1ns/1ps
module tb_demux_1_2;
reg din;
reg sel;
wire y0,y1;
demux_1_2 uut(.din(din),.sel(sel),.y0(y0),.y1(y1));
initial begin
$display("Time\t din sel| y0 y1");
$monitor("%0t\t %b %b |%b %b", $time, din,sel,y0,y1);
	//testcases
	din=0;sel=0;#10;
	din=0;sel=1;#10;
	din=1;sel=0;#10;
	din=1;sel=1;#10;
$stop;
end
endmodule

