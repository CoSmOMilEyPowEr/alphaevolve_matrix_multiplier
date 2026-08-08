module scale_div8
#(
    parameter W = 32
)
(
    input  signed [W-1:0] in_r,
    input  signed [W-1:0] in_i,

    output signed [W-1:0] out_r,
    output signed [W-1:0] out_i
);

assign out_r = in_r >>> 3;
assign out_i = in_i >>> 3;

endmodule