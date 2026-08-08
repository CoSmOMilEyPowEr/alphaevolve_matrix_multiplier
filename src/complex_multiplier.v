module complex_multiplier
#(
    parameter W = 16
)
(
    input  signed [W-1:0] ar,
    input  signed [W-1:0] ai,

    input  signed [W-1:0] br,
    input  signed [W-1:0] bi,

    output signed [2*W:0] pr,
    output signed [2*W:0] pi
);

wire signed [W:0] sumA;
wire signed [W:0] sumB;

wire signed [2*W:0] P1;
wire signed [2*W:0] P2;
wire signed [2*W:0] P3;

assign sumA = ar + ai;
assign sumB = br + bi;

assign P1 = ar * br;
assign P2 = ai * bi;
assign P3 = sumA * sumB;

assign pr = P1 - P2;
assign pi = P3 - P1 - P2;
endmodule