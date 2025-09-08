module t_ff (
    input wire clk,
    input wire reset,
    input wire enable,
    input wire T,
    output reg Q
);

always @(posedge clk or posedge reset) begin
    if (reset)
        Q <= 1'b0;
    else if (enable) begin
        if (T)
            Q <= ~Q;
        else
            Q <= Q;
    end
end

endmodule
