module operand_tree_b #(
    parameter int W = 16
)(
    input  logic signed [W-1:0] Breal [15:0],
    input  logic signed [W-1:0] Bimag [15:0],

    output logic signed [W+5:0] b_r [47:0],
    output logic signed [W+5:0] b_i [47:0]
);

always_comb begin

    // b0
    b_r[0] = -Breal[0]
           - Breal[4]
           + Breal[8]
           + Bimag[12];

    b_i[0] = -Bimag[0]
           - Bimag[4]
           + Bimag[8]
           - Breal[12];

    // b1
    b_r[1] = -Bimag[1] - Bimag[3] - Bimag[5] - Bimag[7]
           - Bimag[9] - Bimag[11]
           + Breal[13] + Breal[15];

    b_i[1] =  Breal[1] + Breal[3] + Breal[5] + Breal[7]
            + Breal[9] + Breal[11]
            + Bimag[13] + Bimag[15];

    // b2
    b_r[2] =  Breal[1] - Bimag[1]
            - Breal[5] + Bimag[5]
            + Breal[9] - Bimag[9]
            + Breal[13] + Bimag[13];

    b_i[2] =  Bimag[1] + Breal[1]
            - Bimag[5] - Breal[5]
            + Bimag[9] + Breal[9]
            + Bimag[13] - Breal[13];

    // b3
    b_r[3] =  Bimag[0] - Bimag[2]
            + Bimag[5] + Bimag[6]
            - Bimag[9] - Bimag[10]
            + Breal[12] - Breal[14];

    b_i[3] = -Breal[0] + Breal[2]
            - Breal[5] - Breal[6]
            + Breal[9] + Breal[10]
            + Bimag[12] - Bimag[14];

    // b4
    b_r[4] = -Breal[0] + Breal[2] + Breal[3] + Breal[4]
           - Breal[6] - Breal[7] + Breal[8]
           - Breal[10] - Breal[11]
           - Bimag[12] + Bimag[14] + Bimag[15];

    b_i[4] = -Bimag[0] + Bimag[2] + Bimag[3] + Bimag[4]
           - Bimag[6] - Bimag[7] + Bimag[8]
           - Bimag[10] - Bimag[11]
           + Breal[12] - Breal[14] - Breal[15];

    // b5
    b_r[5] =  Breal[1] + Breal[3] + Breal[5] + Breal[7]
            + Breal[9] + Breal[11]
            - Bimag[13] - Bimag[15];

    b_i[5] =  Bimag[1] + Bimag[3] + Bimag[5] + Bimag[7]
            + Bimag[9] + Bimag[11]
            + Breal[13] + Breal[15];

    // b6
    b_r[6] = -Breal[1] + Bimag[1]
            + Breal[5] - Bimag[5]
            + Breal[9] - Bimag[9]
            + Breal[13] + Bimag[13];

    b_i[6] = -Bimag[1] - Breal[1]
            + Bimag[5] + Breal[5]
            + Bimag[9] + Breal[9]
            + Bimag[13] - Breal[13];

    // b7
    b_r[7] = -Breal[0] + Breal[3] + Breal[4]
           - Breal[7] - Breal[8] + Breal[11]
           - Bimag[12] + Bimag[15];

    b_i[7] = -Bimag[0] + Bimag[3] + Bimag[4]
           - Bimag[7] - Bimag[8] + Bimag[11]
           + Breal[12] - Breal[15];

    // b8
    b_r[8] =  Breal[0] - Breal[2] - Breal[3]
            + Breal[4] - Breal[6] - Breal[7]
            + Breal[9] + Bimag[13];

    b_i[8] =  Bimag[0] - Bimag[2] - Bimag[3]
            + Bimag[4] - Bimag[6] - Bimag[7]
            + Bimag[9] - Breal[13];

    // b9
    b_r[9] = -Bimag[1] - Bimag[2] - Bimag[3]
           - Bimag[5] - Bimag[6] - Bimag[7]
           + Bimag[9] + Bimag[10] + Bimag[11]
           + Breal[13] + Breal[14] + Breal[15];

    b_i[9] =  Breal[1] + Breal[2] + Breal[3]
            + Breal[5] + Breal[6] + Breal[7]
            - Breal[9] - Breal[10] - Breal[11]
            + Bimag[13] + Bimag[14] + Bimag[15];

    // b10
    b_r[10] = -Bimag[1] - Bimag[3]
            + Bimag[5] + Bimag[7]
            + Bimag[9] + Bimag[11]
            - Breal[13] - Breal[15];

    b_i[10] =  Breal[1] + Breal[3]
             - Breal[5] - Breal[7]
             - Breal[9] - Breal[11]
             - Bimag[13] - Bimag[15];

    // b11
    b_r[11] =  Bimag[0] - Bimag[3] + Bimag[4]
             - Bimag[7] - Bimag[9] - Bimag[10]
             - Breal[13] - Breal[14];

    b_i[11] = -Breal[0] + Breal[3] - Breal[4]
             + Breal[7] + Breal[9] + Breal[10]
             - Bimag[13] - Bimag[14];

    // b12
    b_r[12] = -Breal[0] + Breal[2] + Breal[3]
            - Breal[4] + Breal[6] + Breal[7]
            + Breal[8] - Breal[10] - Breal[11]
            - Bimag[12] + Bimag[14] + Bimag[15];

    b_i[12] = -Bimag[0] + Bimag[2] + Bimag[3]
            - Bimag[4] + Bimag[6] + Bimag[7]
            + Bimag[8] - Bimag[10] - Bimag[11]
            + Breal[12] - Breal[14] - Breal[15];

    // b13
    b_r[13] = -Bimag[0] + Bimag[2] + Bimag[4]
            - Bimag[6] - Bimag[8] + Bimag[10]
            - Breal[12] + Breal[14];

    b_i[13] =  Breal[0] - Breal[2] - Breal[4]
             + Breal[6] + Breal[8] - Breal[10]
             - Bimag[12] + Bimag[14];

    // b14
    b_r[14] = -Breal[1] - Breal[4]
            + Breal[8] - Bimag[13];

    b_i[14] = -Bimag[1] - Bimag[4]
            + Bimag[8] + Breal[13];

    // b15
    b_r[15] = -Bimag[0] + Bimag[3] - Bimag[4]
            + Bimag[7] + Bimag[8] - Bimag[11]
            + Breal[12] - Breal[15];

    b_i[15] =  Breal[0] - Breal[3] + Breal[4]
             - Breal[7] - Breal[8] + Breal[11]
             + Bimag[12] - Bimag[15];
  // b16
    b_r[16] =  Breal[1] + Breal[2] + Breal[4] - Breal[6]
            + Breal[8] - Breal[10]
            + Bimag[13] + Bimag[14];

    b_i[16] =  Bimag[1] + Bimag[2] + Bimag[4] - Bimag[6]
            + Bimag[8] - Bimag[10]
            - Breal[13] - Breal[14];

    // b17
    b_r[17] =  Bimag[0] - Bimag[2] + Bimag[4] - Bimag[6]
            + Bimag[8] - Bimag[10]
            + Breal[12] - Breal[14];

    b_i[17] = -Breal[0] + Breal[2] - Breal[4] + Breal[6]
            - Breal[8] + Breal[10]
            + Bimag[12] - Bimag[14];

    // b18
    b_r[18] =  Bimag[1] + Bimag[3] + Bimag[5] + Bimag[7]
            + Bimag[8] - Bimag[10]
            + Breal[12] - Breal[14];

    b_i[18] = -Breal[1] - Breal[3] - Breal[5] - Breal[7]
            - Breal[8] + Breal[10]
            + Bimag[12] - Bimag[14];

    // b19
    b_r[19] =  Bimag[0] - Bimag[2] - Bimag[4] + Bimag[6]
            - Bimag[8] + Bimag[10]
            + Breal[12] - Breal[14];

    b_i[19] = -Breal[0] + Breal[2] + Breal[4] - Breal[6]
            + Breal[8] - Breal[10]
            + Bimag[12] - Bimag[14];

    // b20
    b_r[20] =  Bimag[1] + Bimag[3] + Bimag[5] + Bimag[7]
            - Bimag[9] - Bimag[11]
            + Breal[13] + Breal[15];

    b_i[20] = -Breal[1] - Breal[3] - Breal[5] - Breal[7]
            + Breal[9] + Breal[11]
            + Bimag[13] + Bimag[15];

    // b21
    b_r[21] = -Breal[1] - Breal[2] + Breal[5] + Breal[6]
            - Breal[8] + Breal[11]
            - Bimag[12] + Bimag[15];

    b_i[21] = -Bimag[1] - Bimag[2] + Bimag[5] + Bimag[6]
            - Bimag[8] + Bimag[11]
            + Breal[12] - Breal[15];
        // b22
    b_r[22] =  Bimag[0] - Bimag[2] - Bimag[3] + Bimag[4]
             - Bimag[6] - Bimag[7] + Bimag[8]
             - Bimag[10] - Bimag[11]
             + Breal[12] - Breal[14] - Breal[15];

    b_i[22] = -Breal[0] + Breal[2] + Breal[3] - Breal[4]
             + Breal[6] + Breal[7] - Breal[8]
             + Breal[10] + Breal[11]
             + Bimag[12] - Bimag[14] - Bimag[15];

    // b23
    b_r[23] = -Breal[0] + Breal[2] + Breal[3] - Breal[4]
             + Breal[6] + Breal[7] - Breal[8]
             + Breal[10] + Breal[11]
             - Bimag[12] + Bimag[14] + Bimag[15];

    b_i[23] = -Bimag[0] + Bimag[2] + Bimag[3] - Bimag[4]
             + Bimag[6] + Bimag[7] - Bimag[8]
             + Bimag[10] + Bimag[11]
             + Breal[12] - Breal[14] - Breal[15];

    // b24
    b_r[24] = -Bimag[1] + Bimag[5] + Bimag[8]
             - Bimag[10] - Bimag[11]
             + Breal[12] - Breal[14] - Breal[15];

    b_i[24] =  Breal[1] - Breal[5] - Breal[8]
             + Breal[10] + Breal[11]
             + Bimag[12] - Bimag[14] - Bimag[15];

    // b25
    b_r[25] = -Bimag[1] - Bimag[2] - Bimag[3]
             - Bimag[5] - Bimag[6] - Bimag[7]
             + Bimag[9] + Bimag[10] + Bimag[11]
             - Breal[13] - Breal[14] - Breal[15];

    b_i[25] =  Breal[1] + Breal[2] + Breal[3]
             + Breal[5] + Breal[6] + Breal[7]
             - Breal[9] - Breal[10] - Breal[11]
             - Bimag[13] - Bimag[14] - Bimag[15];

    // b26
    b_r[26] =  Breal[1] + Breal[2]
             - Breal[5] - Breal[6]
             - Breal[9] - Breal[10]
             + Bimag[13] + Bimag[14];

    b_i[26] =  Bimag[1] + Bimag[2]
             - Bimag[5] - Bimag[6]
             - Bimag[9] - Bimag[10]
             - Breal[13] - Breal[14];

    // b27
    b_r[27] = -Bimag[1] - Bimag[2] - Bimag[3]
             - Bimag[5] - Bimag[6] - Bimag[7]
             + Bimag[8]
             - Breal[12];

    b_i[27] =  Breal[1] + Breal[2] + Breal[3]
             + Breal[5] + Breal[6] + Breal[7]
             - Breal[8]
             - Bimag[12];
        // b28
    b_r[28] =  Breal[1] + Breal[5] + Breal[9]
             + Bimag[13];

    b_i[28] =  Bimag[1] + Bimag[5] + Bimag[9]
             - Breal[13];

    // b29
    b_r[29] = -Bimag[1] - Bimag[2]
             + Bimag[5] + Bimag[6]
             - Bimag[9] - Bimag[10]
             - Breal[13] - Breal[14];

    b_i[29] =  Breal[1] + Breal[2]
             - Breal[5] - Breal[6]
             + Breal[9] + Breal[10]
             - Bimag[13] - Bimag[14];

    // b30
    b_r[30] = -Breal[0] + Breal[3] - Breal[4]
             + Breal[7] - Breal[8] + Breal[11]
             - Bimag[12] + Bimag[15];

    b_i[30] = -Bimag[0] + Bimag[3] - Bimag[4]
             + Bimag[7] - Bimag[8] + Bimag[11]
             + Breal[12] - Breal[15];

    // b31
    b_r[31] =  Breal[0] - Breal[2] - Breal[4]
             + Breal[6] - Breal[9] - Breal[11]
             - Bimag[13] - Bimag[15];

    b_i[31] =  Bimag[0] - Bimag[2] - Bimag[4]
             + Bimag[6] - Bimag[9] - Bimag[11]
             + Breal[13] + Breal[15];

    // b32
    b_r[32] = -Bimag[1] + Bimag[5] + Bimag[9]
             + Breal[13];

    b_i[32] =  Breal[1] - Breal[5] - Breal[9]
             + Bimag[13];

    // b33
    b_r[33] = -Breal[1] - Breal[3] + Breal[4]
             - Breal[7] - Breal[8] + Breal[11]
             + Bimag[13] + Bimag[15];

    b_i[33] = -Bimag[1] - Bimag[3] + Bimag[4]
             - Bimag[7] - Bimag[8] + Bimag[11]
             - Breal[13] - Breal[15];

    // b34
    b_r[34] = -Bimag[0] + Bimag[4]
             - Bimag[9] - Bimag[10] - Bimag[11]
             - Breal[13] - Breal[14] - Breal[15];

    b_i[34] =  Breal[0] - Breal[4]
             + Breal[9] + Breal[10] + Breal[11]
             - Bimag[13] - Bimag[14] - Bimag[15];

    // b35
    b_r[35] =  Bimag[1] + Bimag[2]
             - Bimag[5] - Bimag[6]
             + Bimag[9] + Bimag[10]
             - Breal[13] - Breal[14];

    b_i[35] = -Breal[1] - Breal[2]
             + Breal[5] + Breal[6]
             - Breal[9] - Breal[10]
             - Bimag[13] - Bimag[14];
        // b36
    b_r[36] = -Breal[1] - Breal[2] - Breal[3]
             - Breal[5] - Breal[6] - Breal[7]
             - Breal[9] - Breal[10] - Breal[11]
             + Bimag[13] + Bimag[14] + Bimag[15];

    b_i[36] = -Bimag[1] - Bimag[2] - Bimag[3]
             - Bimag[5] - Bimag[6] - Bimag[7]
             - Bimag[9] - Bimag[10] - Bimag[11]
             - Breal[13] - Breal[14] - Breal[15];

    // b37
    b_r[37] = -Bimag[1] - Bimag[2] - Bimag[3]
             + Bimag[4] - Bimag[6] - Bimag[7]
             + Bimag[8] - Bimag[10] - Bimag[11]
             - Breal[13] - Breal[14] - Breal[15];

    b_i[37] =  Breal[1] + Breal[2] + Breal[3]
             - Breal[4] + Breal[6] + Breal[7]
             - Breal[8] + Breal[10] + Breal[11]
             - Bimag[13] - Bimag[14] - Bimag[15];

    // b38
    b_r[38] = -Bimag[0] + Bimag[4]
             + Bimag[8]
             - Breal[12];

    b_i[38] =  Breal[0] - Breal[4]
             - Breal[8]
             - Bimag[12];

    // b39
    b_r[39] =  Bimag[0] - Bimag[3] - Bimag[5] - Bimag[7]
             - Bimag[9] - Bimag[11]
             - Breal[12] + Breal[15];

    b_i[39] = -Breal[0] + Breal[3] + Breal[5] + Breal[7]
             + Breal[9] + Breal[11]
             - Bimag[12] + Bimag[15];

    // b40
    b_r[40] = -Bimag[1] - Bimag[2]
             - Bimag[5] - Bimag[6]
             + Bimag[9] + Bimag[10]
             + Breal[13] + Breal[14];

    b_i[40] =  Breal[1] + Breal[2]
             + Breal[5] + Breal[6]
             - Breal[9] - Breal[10]
             + Bimag[13] + Bimag[14];

    // b41
    b_r[41] =  Breal[0] - Breal[3] + Breal[4]
             - Breal[7] - Breal[8] + Breal[11]
             - Bimag[12] + Bimag[15];

    b_i[41] =  Bimag[0] - Bimag[3] + Bimag[4]
             - Bimag[7] - Bimag[8] + Bimag[11]
             + Breal[12] - Breal[15];
        // b42
    b_r[42] = -Bimag[0] + Bimag[4]
            - Bimag[8]
            + Breal[12];

    b_i[42] =  Breal[0] - Breal[4]
            + Breal[8]
            + Bimag[12];

    // b43
    b_r[43] =  Breal[0] - Breal[2] - Breal[3]
            - Breal[5] - Breal[6] - Breal[7]
            + Breal[9] + Breal[10] + Breal[11]
            + Bimag[12] - Bimag[14] - Bimag[15];

    b_i[43] =  Bimag[0] - Bimag[2] - Bimag[3]
            - Bimag[5] - Bimag[6] - Bimag[7]
            + Bimag[9] + Bimag[10] + Bimag[11]
            - Breal[12] + Breal[14] + Breal[15];

    // b44
    b_r[44] =  Bimag[0] - Bimag[4]
            + Bimag[8]
            + Breal[12];

    b_i[44] = -Breal[0] + Breal[4]
            - Breal[8]
            + Bimag[12];

    // b45
    b_r[45] =  Bimag[1] + Bimag[2] + Bimag[3]
            - Bimag[5] - Bimag[6] - Bimag[7]
            + Bimag[9] + Bimag[10] + Bimag[11]
            + Breal[13] + Breal[14] + Breal[15];

    b_i[45] = -Breal[1] - Breal[2] - Breal[3]
            + Breal[5] + Breal[6] + Breal[7]
            - Breal[9] - Breal[10] - Breal[11]
            + Bimag[13] + Bimag[14] + Bimag[15];

    // b46
    b_r[46] = -Breal[0] + Breal[2] + Breal[4]
            - Breal[6] + Breal[8] - Breal[10]
            - Bimag[12] + Bimag[14];

    b_i[46] = -Bimag[0] + Bimag[2] + Bimag[4]
            - Bimag[6] + Bimag[8] - Bimag[10]
            + Breal[12] - Breal[14];

    // b47
    b_r[47] =  Breal[0] + Breal[5] + Breal[9]
            - Bimag[12];

    b_i[47] =  Bimag[0] + Bimag[5] + Bimag[9]
            + Breal[12];
    end
    endmodule
