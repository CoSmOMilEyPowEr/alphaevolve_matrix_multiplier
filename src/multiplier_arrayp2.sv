module multiplier_arrayp2 #(
    parameter int W = 16,
    parameter int N = 48
)(
    input  logic signed [2*(W+6):0] P1 [N],
    input  logic signed [2*(W+6):0] P2 [N],
    input  logic signed [2*(W+6):0] P3 [N],
    

    output logic signed [2*(W+6):0] TReal [N],
    output logic signed [2*(W+6):0] TImag [N]
);

genvar i;
generate
    for(i=0;i<N;i++) begin : MULT

        complex_multiplierp2 #(W+6) CM (
            .P1(P1[i]),
            .P2(P2[i]),
            .P3(P3[i]),
   
            .pr(TReal[i]),
            .pi(TImag[i])
        );

    end
endgenerate
endmodule