module mux21 (
    input wire sel,
    input wire i0,
    input wire i1,
    output wire y
);
    assign y = sel ? i1 : i0;
endmodule