module multiplier_array #(
    parameter int W = 16,
    parameter int N = 48
)(
    input  logic signed [W+5:0] AReal [N],
    input  logic signed [W+5:0] AImag [N],
    input  logic signed [W+5:0] BReal [N],
    input  logic signed [W+5:0] BImag [N],

    output logic signed [2*(W+6):0] TReal [N],
    output logic signed [2*(W+6):0] TImag [N]
);

genvar i;
generate
    for(i=0;i<N;i++) begin : MULT

        complex_multiplier #(W+6) CM (
            .ar(AReal[i]),
            .ai(AImag[i]),
            .br(BReal[i]),
            .bi(BImag[i]),
            .pr(TReal[i]),
            .pi(TImag[i])
        );

    end
endgenerate

endmodule