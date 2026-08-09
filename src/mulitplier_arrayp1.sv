module multiplier_arrayp1 #(
    parameter int W = 16,
    parameter int N = 48
)(
    input  logic signed [W+5:0] AReal [N],
    input  logic signed [W+5:0] AImag [N],
    input  logic signed [W+5:0] BReal [N],
    input  logic signed [W+5:0] BImag [N],

    output logic signed [2*(W+6):0] P1 [N],
    output logic signed [2*(W+6):0] P2 [N],
    output logic signed [2*(W+6):0] P3 [N]
);

genvar i;
generate
    for(i=0;i<N;i++) begin : MULT

        complex_multiplierp1 #(W+6) CM (
            .ar(AReal[i]),
            .ai(AImag[i]),
            .br(BReal[i]),
            .bi(BImag[i]),
            .P1(P1[i]),
            .P2(P2[i]),
            .P3(P3[i])
        );

    end
    endgenerate
    endmodule