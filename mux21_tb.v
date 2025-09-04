module mux21_tb;
    reg i0, i1, sel;
    wire y;

    mux21 uut (
        .sel(sel),
        .i0(i0),
        .i1(i1),
        .y(y)
    );

    initial begin
        $monitor("sel = %b, i0 = %b, i1 = %b --> y = %b", sel, i0, i1, y);
        i0 = 0; i1 = 1;

        sel = 0; #10;
        sel = 1; #10;
        $finish;
    end
endmodule