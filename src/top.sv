module top #(
    parameter int W = 16
)(
    input  logic signed [W-1:0] Areal [15:0],
    input  logic signed [W-1:0] Aimag [15:0],

    input  logic signed [W-1:0] Breal [15:0],
    input  logic signed [W-1:0] Bimag [15:0],

    output logic signed [2*(W+7):0] CReal [15:0],
    output logic signed [2*(W+7):0] CImag [15:0]
);

   

    logic signed [W+5:0] AReal_mul [47:0];
    logic signed [W+5:0] AImag_mul [47:0];

    logic signed [W+5:0] BReal_mul [47:0];
    logic signed [W+5:0] BImag_mul [47:0];

    logic signed [2*(W+6):0] TReal [47:0];
    logic signed [2*(W+6):0] TImag [47:0];

    logic signed [2*(W+7):0] CReal_unscaled [15:0];
    logic signed [2*(W+7):0] CImag_unscaled [15:0];

    

    operand_tree_a #(
        .W(W)
    ) operand_tree_a_inst (
        .Areal(Areal),
        .Aimag(Aimag),

        .a_r(AReal_mul),
        .a_i(AImag_mul)
    );

    operand_tree_b #(
        .W(W)
    ) operand_tree_b_inst (
        .Breal(Breal),
        .Bimag(Bimag),

        .b_r(BReal_mul),
        .b_i(BImag_mul)
    );

    

    multiplier_array #(
        .W(W),
        .N(48)
    ) multiplier_array_inst (

        .AReal(AReal_mul),
        .AImag(AImag_mul),

        .BReal(BReal_mul),
        .BImag(BImag_mul),

        .TReal(TReal),
        .TImag(TImag)

    );

   

    output_tree #(
        .W(W)
    ) output_tree_inst (

        .TReal(TReal),
        .TImag(TImag),

        .CReal(CReal_unscaled),
        .CImag(CImag_unscaled)

    );
        

    generate
        for (genvar i = 0; i < 16; i++) begin : SCALE

            scale_div8 #(
                 .W(2*(W+7)+1)
            ) scale_div8_inst (

                .in_r(CReal_unscaled[i]),
                .in_i(CImag_unscaled[i]),

                .out_r(CReal[i]),
                .out_i(CImag[i])

            );

        end
    endgenerate

endmodule
