module top #(
    parameter int W = 16
)(

    input logic clk,
    input logic rst,
    
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
    
    logic signed [W+5:0] AReal_pipe1 [47:0];
    logic signed [W+5:0] AImag_pipe1 [47:0];

    logic signed [W+5:0] BReal_pipe2 [47:0];
    logic signed [W+5:0] BImag_pipe2 [47:0];
    
    logic signed [2*(W+6):0] P1 [47:0];
    logic signed [2*(W+6):0] P2 [47:0];
    logic signed [2*(W+6):0] P3 [47:0];
    
    logic signed [2*(W+6):0] P1_pipe3 [47:0];
    logic signed [2*(W+6):0] P2_pipe3 [47:0];
    logic signed [2*(W+6):0] P3_pipe3 [47:0];

    logic signed [2*(W+6):0] TReal [47:0];
    logic signed [2*(W+6):0] TImag [47:0];
    
    logic signed [2*(W+6):0] TReal_pipe4 [47:0];
    logic signed [2*(W+6):0] TImag_pipe4 [47:0];

    logic signed [2*(W+7):0] CReal_unscaled [15:0];
    logic signed [2*(W+7):0] CImag_unscaled [15:0];
    
    logic signed [2*(W+7):0] CReal_unscaled_pipe5 [15:0];
    logic signed [2*(W+7):0] CImag_unscaled_pipe5 [15:0];

    

    operand_tree_a #(
        .W(W)
    ) operand_tree_a_inst (
        .Areal(Areal),
        .Aimag(Aimag),

        .a_r(AReal_mul),
        .a_i(AImag_mul)
    );
    
    always_ff @(posedge clk) begin

    if (rst) begin

        for (int i=0;i<48;i++) begin
            AReal_pipe1[i] <= '0;
            AImag_pipe1[i] <= '0;
            
        end

    end

    else begin

        for (int i=0;i<48;i++) begin
            AReal_pipe1[i] <= AReal_mul[i];
            AImag_pipe1[i] <= AImag_mul[i];
            
        end

    end

end

    operand_tree_b #(
        .W(W)
    ) operand_tree_b_inst (
        .Breal(Breal),
        .Bimag(Bimag),

        .b_r(BReal_mul),
        .b_i(BImag_mul)
    );
    
    always_ff @(posedge clk) begin

    if (rst) begin

        for (int i=0;i<48;i++) begin
            
            BReal_pipe2[i] <= '0;
            BImag_pipe2[i] <= '0;
        end

    end

    else begin

        for (int i=0;i<48;i++) begin
            
            BReal_pipe2[i] <= BReal_mul[i];
            BImag_pipe2[i] <= BImag_mul[i];
        end

    end

end

    

    multiplier_arrayp1 #(
        .W(W),
        .N(48)
    ) multiplier_array_inst (

        .AReal(AReal_pipe1),
        .AImag(AImag_pipe1),

        .BReal(BReal_pipe2),
        .BImag(BImag_pipe2),

        .P1(P1),
        .P2(P2),
        .P3(P3)

    );
    
    always_ff @(posedge clk) begin

    if (rst) begin

        for (int i=0;i<48;i++) begin
            P1_pipe3[i] <= '0;
            P2_pipe3[i] <= '0;
            P3_pipe3[i] <= '0;
            
        end

    end

    else begin

        for (int i=0;i<48;i++) begin
            P1_pipe3[i] <= P1[i];
            P2_pipe3[i] <= P2[i];
            P3_pipe3[i] <= P3[i];
            
        end

    end

end


multiplier_arrayp2 #(
        .W(W),
        .N(48)
    ) multiplier_array_inst1 (

        .P1(P1_pipe3),
        .P2(P2_pipe3),
        .P3(P3_pipe3),
        
        .TReal(TReal),
        .TImag(TImag)

    );
    
    always_ff @(posedge clk) begin

    if (rst) begin

        for (int i=0;i<48;i++) begin
            TReal_pipe4[i] <= '0;
            TImag_pipe4[i] <= '0;
            
        end

    end

    else begin

        for (int i=0;i<48;i++) begin
            TReal_pipe4[i] <= TReal[i];
            TImag_pipe4[i] <= TImag[i];
            
        end

    end

end

   

    output_tree #(
        .W(W)
    ) output_tree_inst (

        .TReal(TReal_pipe4),
        .TImag(TImag_pipe4),

        .CReal(CReal_unscaled),
        .CImag(CImag_unscaled)

    );
    
    always_ff @(posedge clk) begin

    if (rst) begin

        for (int i=0;i<16;i++) begin
            CReal_unscaled_pipe5[i] <= '0;
            CImag_unscaled_pipe5[i] <= '0;
            
        end

    end

    else begin

        for (int i=0;i<16;i++) begin
            CReal_unscaled_pipe5[i] <=CReal_unscaled[i];
            CImag_unscaled_pipe5[i] <= CImag_unscaled[i];
            
        end

    end

end

        

    generate
        for (genvar i = 0; i < 16; i++) begin : SCALE

            scale_div8 #(
                 .W(2*(W+7)+1)
            ) scale_div8_inst (

                .in_r(CReal_unscaled_pipe5[i]),
                .in_i(CImag_unscaled_pipe5[i]),

                .out_r(CReal[i]),
                .out_i(CImag[i])

            );

        end
    endgenerate

endmodule
