module complex_multiplier #(
    parameter int W = 16
)(
    input  logic signed [W-1:0] ar,
    input  logic signed [W-1:0] ai,

    input  logic signed [W-1:0] br,
    input  logic signed [W-1:0] bi,

    output logic signed [2*W:0] pr,
    output logic signed [2*W:0] pi
);

logic signed [W:0]   sumA, sumB;
logic signed [2*W:0] P1, P2, P3;

always_comb begin
    sumA = ar + ai;
    sumB = br + bi;

    P1 = ar * br;
    P2 = ai * bi;
    P3 = sumA * sumB;

    pr = P1 - P2;
    pi = P3 - P1 - P2;
end

endmodule