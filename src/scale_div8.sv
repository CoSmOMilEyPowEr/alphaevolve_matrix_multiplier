module scale_div8 #(
    parameter int W = 32
)(
    input  logic signed [W-1:0] in_r,
    input  logic signed [W-1:0] in_i,

    output logic signed [W-1:0] out_r,
    output logic signed [W-1:0] out_i
);

    assign out_r = in_r >>> 3;
    assign out_i = in_i >>> 3;

endmodule