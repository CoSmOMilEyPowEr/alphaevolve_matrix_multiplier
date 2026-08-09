module complex_multiplierp1 #(
    parameter int W = 16
)(
    input  logic signed [W-1:0] ar,
    input  logic signed [W-1:0] ai,

    input  logic signed [W-1:0] br,
    input  logic signed [W-1:0] bi,

    output logic signed [2*W:0] P1,
    output logic signed [2*W:0] P2,
    output logic signed [2*W:0] P3
);

logic signed [W:0]   sumA, sumB;


always_comb begin
    sumA = ar + ai;
    sumB = br + bi;

    P1 = ar * br;
    P2 = ai * bi;
    P3 = sumA * sumB;

    
end

endmodule