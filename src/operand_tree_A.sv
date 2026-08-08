module operand_tree_a #(
    parameter int W = 16
)(
    input  logic signed [W-1:0] Areal [15:0],
    input  logic signed [W-1:0] Aimag [15:0],

    output logic signed [W+5:0] a_r [47:0],
    output logic signed [W+5:0] a_i [47:0]
);

 
always_comb begin

    // a0
    a_r[0] =  Areal[0] - Aimag[0] + Areal[1] - Aimag[1]
            + Areal[4] + Aimag[4] + Areal[5] + Aimag[5]
            + Areal[8] + Aimag[8] + Areal[9] + Aimag[9]
            + Areal[12] + Aimag[12] + Areal[13] + Aimag[13];

    a_i[0] =  Areal[0] + Aimag[0] + Areal[1] + Aimag[1]
            - Areal[4] + Aimag[4] - Areal[5] + Aimag[5]
            - Areal[8] + Aimag[8] - Areal[9] + Aimag[9]
            - Areal[12] + Aimag[12] - Areal[13] + Aimag[13];

    // a1
    a_r[1] =  Areal[0] - Aimag[0] - Areal[3] - Aimag[3]
            + Areal[4] - Aimag[4] - Areal[7] - Aimag[7]
            - Areal[8] + Aimag[8] + Areal[11] + Aimag[11]
            + Areal[12] + Aimag[12] + Areal[15] - Aimag[15];

    a_i[1] =  Areal[0] + Aimag[0] + Areal[3] - Aimag[3]
            + Areal[4] + Aimag[4] + Areal[7] - Aimag[7]
            - Areal[8] - Aimag[8] - Areal[11] + Aimag[11]
            - Areal[12] + Aimag[12] + Areal[15] + Aimag[15];

    // a2
    a_r[2] = -Areal[1] + Areal[2]
           + Aimag[5] - Aimag[6]
           - Aimag[9] + Aimag[10]
           + Aimag[13] - Aimag[14];

    a_i[2] = -Aimag[1] + Aimag[2]
           - Areal[5] + Areal[6]
           + Areal[9] - Areal[10]
           - Areal[13] + Areal[14];

    // a3
    a_r[3] =  Aimag[0] - Areal[1] + Areal[2] - Areal[3]
            - Aimag[4] - Areal[5] + Areal[6] + Areal[7]
            + Aimag[8] - Areal[9] + Areal[10] - Areal[11]
            - Areal[12] + Aimag[13] - Aimag[14] - Aimag[15];

    a_i[3] = -Areal[0] - Aimag[1] + Aimag[2] - Aimag[3]
            + Areal[4] - Aimag[5] + Aimag[6] + Aimag[7]
            - Areal[8] - Aimag[9] + Aimag[10] - Aimag[11]
            - Aimag[12] - Areal[13] + Areal[14] + Areal[15];
    
        // a4
    a_r[4] =  Areal[0] - Aimag[0] - Areal[1] + Aimag[1]
            - Areal[4] - Aimag[4] + Areal[5] + Aimag[5]
            - Areal[8] - Aimag[8] + Areal[9] + Aimag[9]
            + Areal[12] + Aimag[12] - Areal[13] - Aimag[13];

    a_i[4] =  Areal[0] + Aimag[0] - Areal[1] - Aimag[1]
            + Areal[4] - Aimag[4] - Areal[5] + Aimag[5]
            + Areal[8] - Aimag[8] - Areal[9] + Aimag[9]
            - Areal[12] + Aimag[12] + Areal[13] - Aimag[13];

    // a5
    a_r[5] =  Areal[2] + Aimag[2] - Areal[3] + Aimag[3]
            + Areal[6] + Aimag[6] - Areal[7] + Aimag[7]
            - Areal[10] - Aimag[10] + Areal[11] - Aimag[11]
            - Areal[14] + Aimag[14] - Areal[15] - Aimag[15];

    a_i[5] = -Areal[2] + Aimag[2] - Areal[3] - Aimag[3]
            - Areal[6] + Aimag[6] - Areal[7] - Aimag[7]
            + Areal[10] - Aimag[10] + Areal[11] + Aimag[11]
            - Areal[14] - Aimag[14] + Areal[15] - Aimag[15];

    // a6
    a_r[6] = -Aimag[0] + Areal[3] - Areal[4] - Aimag[7]
            + Areal[8] + Aimag[11] - Areal[12] - Aimag[15];

    a_i[6] =  Areal[0] + Aimag[3] - Aimag[4] + Areal[7]
            + Aimag[8] - Areal[11] - Aimag[12] + Areal[15];

    // a7
    a_r[7] =  Areal[0] - Aimag[0] - Areal[1] + Aimag[1]
            - Areal[4] + Aimag[4] + Areal[5] - Aimag[5]
            - Areal[8] + Aimag[8] + Areal[9] - Aimag[9]
            - Areal[12] - Aimag[12] + Areal[13] + Aimag[13];

    a_i[7] =  Areal[0] + Aimag[0] - Areal[1] - Aimag[1]
            - Areal[4] - Aimag[4] + Areal[5] + Aimag[5]
            - Areal[8] - Aimag[8] + Areal[9] + Aimag[9]
            + Areal[12] - Aimag[12] - Areal[13] + Aimag[13];

    // a8
    a_r[8] =  Aimag[0] + Aimag[1] - Areal[2] + Aimag[3]
            + Areal[4] + Areal[5] + Aimag[6] + Areal[7]
            - Areal[8] - Areal[9] + Aimag[10] + Areal[11]
            + Areal[12] + Areal[13] - Aimag[14] - Areal[15];

    a_i[8] = -Areal[0] - Areal[1] - Aimag[2] - Areal[3]
            + Aimag[4] + Aimag[5] - Areal[6] + Aimag[7]
            - Aimag[8] - Aimag[9] - Areal[10] + Aimag[11]
            + Aimag[12] + Aimag[13] + Areal[14] - Aimag[15];

    // a9
    a_r[9] = -Areal[0] - Aimag[0] - Areal[3] + Aimag[3]
            + Areal[4] - Aimag[4] - Areal[7] - Aimag[7]
            - Areal[8] + Aimag[8] + Areal[11] + Aimag[11]
            - Areal[12] + Aimag[12] + Areal[15] + Aimag[15];

    a_i[9] =  Areal[0] - Aimag[0] - Areal[3] - Aimag[3]
            + Areal[4] + Aimag[4] + Areal[7] - Aimag[7]
            - Areal[8] - Aimag[8] - Areal[11] + Aimag[11]
            - Areal[12] - Aimag[12] - Areal[15] + Aimag[15];

    // a10
    a_r[10] = -Areal[0] - Aimag[0] + Areal[1] + Aimag[1]
             - Areal[4] - Aimag[4] + Areal[5] + Aimag[5]
             + Areal[8] + Aimag[8] - Areal[9] - Aimag[9]
             + Areal[12] - Aimag[12] - Areal[13] + Aimag[13];

    a_i[10] =  Areal[0] - Aimag[0] - Areal[1] + Aimag[1]
             + Areal[4] - Aimag[4] - Areal[5] + Aimag[5]
             - Areal[8] + Aimag[8] + Areal[9] - Aimag[9]
             + Areal[12] + Aimag[12] - Areal[13] - Aimag[13];

    // a11
    a_r[11] =  Areal[0] + Areal[1] + Aimag[2] - Areal[3]
             - Areal[4] - Areal[5] - Aimag[6] + Areal[7]
             + Areal[8] + Areal[9] - Aimag[10] + Areal[11]
             + Aimag[12] + Aimag[13] + Areal[14] + Aimag[15];

    a_i[11] =  Aimag[0] + Aimag[1] - Areal[2] - Aimag[3]
             - Aimag[4] - Aimag[5] + Areal[6] + Aimag[7]
             + Aimag[8] + Aimag[9] + Areal[10] + Aimag[11]
             - Areal[12] - Areal[13] + Aimag[14] - Areal[15];
             
        // a12
    a_r[12] =  Areal[1] - Aimag[1] - Areal[2] + Aimag[2]
             - Areal[5] - Aimag[5] + Areal[6] + Aimag[6]
             - Areal[9] - Aimag[9] + Areal[10] + Aimag[10]
             + Areal[13] + Aimag[13] - Areal[14] - Aimag[14];

    a_i[12] =  Areal[1] + Aimag[1] - Areal[2] - Aimag[2]
             + Areal[5] - Aimag[5] - Areal[6] + Aimag[6]
             + Areal[9] - Aimag[9] - Areal[10] + Aimag[10]
             - Areal[13] + Aimag[13] + Areal[14] - Aimag[14];

    // a13
    a_r[13] =  Areal[1] + Aimag[1] - Areal[2] - Aimag[2]
             + Areal[5] + Aimag[5] - Areal[6] - Aimag[6]
             + Areal[9] + Aimag[9] - Areal[10] - Aimag[10]
             + Areal[13] - Aimag[13] - Areal[14] + Aimag[14];

    a_i[13] = -Areal[1] + Aimag[1] + Areal[2] - Aimag[2]
             - Areal[5] + Aimag[5] + Areal[6] - Aimag[6]
             - Areal[9] + Aimag[9] + Areal[10] - Aimag[10]
             + Areal[13] + Aimag[13] - Areal[14] - Aimag[14];

    // a14
    a_r[14] = -Aimag[0] - Areal[1] + Areal[2] - Areal[3]
             + Areal[4] + Aimag[5] - Aimag[6] - Aimag[7]
             + Areal[8] - Aimag[9] + Aimag[10] - Aimag[11]
             + Areal[12] + Aimag[13] - Aimag[14] - Aimag[15];

    a_i[14] =  Areal[0] - Aimag[1] + Aimag[2] - Aimag[3]
             + Aimag[4] - Areal[5] + Areal[6] + Areal[7]
             + Aimag[8] + Areal[9] - Areal[10] + Areal[11]
             + Aimag[12] - Areal[13] + Areal[14] + Areal[15];

    // a15
    a_r[15] = -Areal[2] - Aimag[2] + Areal[3] - Aimag[3]
             + Areal[6] + Aimag[6] - Areal[7] + Aimag[7]
             + Areal[10] + Aimag[10] - Areal[11] + Aimag[11]
             - Areal[14] + Aimag[14] - Areal[15] - Aimag[15];

    a_i[15] =  Areal[2] - Aimag[2] + Areal[3] + Aimag[3]
             - Areal[6] + Aimag[6] - Areal[7] - Aimag[7]
             - Areal[10] + Aimag[10] - Areal[11] - Aimag[11]
             - Areal[14] - Aimag[14] + Areal[15] - Aimag[15];
       // a16
    a_r[16] = -Areal[0] - Aimag[1] - Aimag[2] + Aimag[3]
             - Areal[4] + Aimag[5] + Aimag[6] + Aimag[7]
             - Areal[8] - Aimag[9] - Aimag[10] + Aimag[11]
             + Aimag[12] + Areal[13] + Areal[14] + Areal[15];

    a_i[16] = -Aimag[0] + Areal[1] + Areal[2] - Areal[3]
             - Aimag[4] - Areal[5] - Areal[6] - Areal[7]
             - Aimag[8] + Areal[9] + Areal[10] - Areal[11]
             - Areal[12] + Aimag[13] + Aimag[14] + Aimag[15];

    // a17
    a_r[17] =  Areal[0] - Aimag[0] + Areal[1] - Aimag[1]
             + Areal[4] - Aimag[4] + Areal[5] - Aimag[5]
             + Areal[8] - Aimag[8] + Areal[9] - Aimag[9]
             - Areal[12] - Aimag[12] - Areal[13] - Aimag[13];

    a_i[17] =  Areal[0] + Aimag[0] + Areal[1] + Aimag[1]
             + Areal[4] + Aimag[4] + Areal[5] + Aimag[5]
             + Areal[8] + Aimag[8] + Areal[9] + Aimag[9]
             + Areal[12] - Aimag[12] + Areal[13] - Aimag[13];

    // a18
    a_r[18] = -Aimag[0] - Aimag[1] - Areal[2] - Aimag[3]
             - Aimag[4] - Aimag[5] - Areal[6] - Aimag[7]
             - Aimag[8] - Aimag[9] + Areal[10] + Aimag[11]
             - Areal[12] - Areal[13] - Aimag[14] + Areal[15];

    a_i[18] =  Areal[0] + Areal[1] - Aimag[2] + Areal[3]
             + Areal[4] + Areal[5] - Aimag[6] + Areal[7]
             + Areal[8] + Areal[9] + Aimag[10] - Areal[11]
             - Aimag[12] - Aimag[13] + Areal[14] + Aimag[15];

    // a19
    a_r[19] =  Areal[2] + Aimag[2] + Areal[3] - Aimag[3]
             + Areal[6] + Aimag[6] + Areal[7] - Aimag[7]
             + Areal[10] + Aimag[10] + Areal[11] - Aimag[11]
             + Areal[14] - Aimag[14] - Areal[15] - Aimag[15];

    a_i[19] = -Areal[2] + Aimag[2] + Areal[3] + Aimag[3]
             - Areal[6] + Aimag[6] + Areal[7] + Aimag[7]
             - Areal[10] + Aimag[10] + Areal[11] + Aimag[11]
             + Areal[14] + Aimag[14] + Areal[15] - Aimag[15];
        // a20
    a_r[20] =  Areal[1] - Aimag[1] - Areal[2] + Aimag[2]
             + Areal[5] - Aimag[5] - Areal[6] + Aimag[6]
             - Areal[9] + Aimag[9] + Areal[10] - Aimag[10]
             + Areal[13] + Aimag[13] - Areal[14] - Aimag[14];

    a_i[20] =  Areal[1] + Aimag[1] - Areal[2] - Aimag[2]
             + Areal[5] + Aimag[5] - Areal[6] - Aimag[6]
             - Areal[9] - Aimag[9] + Areal[10] + Aimag[10]
             - Areal[13] + Aimag[13] + Areal[14] - Aimag[14];

    // a21
    a_r[21] = -Aimag[0] + Aimag[1] - Areal[2] + Aimag[3]
             + Aimag[4] - Aimag[5] + Areal[6] - Aimag[7]
             + Aimag[8] - Aimag[9] - Areal[10] + Aimag[11]
             - Areal[12] + Areal[13] - Aimag[14] - Areal[15];

    a_i[21] =  Areal[0] - Areal[1] - Aimag[2] - Areal[3]
             - Areal[4] + Areal[5] + Aimag[6] + Areal[7]
             - Areal[8] + Areal[9] - Aimag[10] - Areal[11]
             - Aimag[12] + Aimag[13] + Areal[14] - Aimag[15];

    // a22
    a_r[22] = -Areal[0] + Aimag[0] - Areal[3] - Aimag[3]
             + Areal[4] + Aimag[4] - Areal[7] + Aimag[7]
             + Areal[8] + Aimag[8] - Areal[11] + Aimag[11]
             - Areal[12] - Aimag[12] + Areal[15] - Aimag[15];

    a_i[22] = -Areal[0] - Aimag[0] + Areal[3] - Aimag[3]
             - Areal[4] + Aimag[4] - Areal[7] - Aimag[7]
             - Areal[8] + Aimag[8] - Areal[11] - Aimag[11]
             + Areal[12] - Aimag[12] + Areal[15] + Aimag[15];

    // a23
    a_r[23] = -Areal[2] + Aimag[2] + Areal[3] + Aimag[3]
             + Areal[6] + Aimag[6] + Areal[7] - Aimag[7]
             + Areal[10] + Aimag[10] + Areal[11] - Aimag[11]
             - Areal[14] - Aimag[14] - Areal[15] + Aimag[15];

    a_i[23] = -Areal[2] - Aimag[2] - Areal[3] + Aimag[3]
             - Areal[6] + Aimag[6] + Areal[7] + Aimag[7]
             - Areal[10] + Aimag[10] + Areal[11] + Aimag[11]
             + Areal[14] - Aimag[14] - Areal[15] - Aimag[15];
        // a24
    a_r[24] = -Areal[0] + Areal[1] + Aimag[2] - Areal[3]
             + Aimag[4] - Aimag[5] + Areal[6] + Aimag[7]
             + Aimag[8] - Aimag[9] - Areal[10] - Aimag[11]
             - Aimag[12] + Aimag[13] + Areal[14] + Aimag[15];

    a_i[24] = -Aimag[0] + Aimag[1] - Areal[2] - Aimag[3]
             - Areal[4] + Areal[5] + Aimag[6] - Areal[7]
             - Areal[8] + Areal[9] - Aimag[10] + Areal[11]
             + Areal[12] - Areal[13] + Aimag[14] - Areal[15];

    // a25
    a_r[25] =  Areal[2] + Aimag[2] + Areal[3] - Aimag[3]
             - Areal[6] + Aimag[6] + Areal[7] + Aimag[7]
             + Areal[10] - Aimag[10] - Areal[11] - Aimag[11]
             + Areal[14] - Aimag[14] - Areal[15] - Aimag[15];

    a_i[25] = -Areal[2] + Aimag[2] + Areal[3] + Aimag[3]
             - Areal[6] - Aimag[6] - Areal[7] + Aimag[7]
             + Areal[10] + Aimag[10] + Areal[11] - Aimag[11]
             + Areal[14] + Aimag[14] + Areal[15] - Aimag[15];

    // a26
    a_r[26] =  Areal[1] - Aimag[1] + Areal[2] - Aimag[2]
             - Areal[5] + Aimag[5] - Areal[6] + Aimag[6]
             + Areal[9] - Aimag[9] + Areal[10] - Aimag[10]
             + Areal[13] + Aimag[13] + Areal[14] + Aimag[14];

    a_i[26] =  Areal[1] + Aimag[1] + Areal[2] + Aimag[2]
             - Areal[5] - Aimag[5] - Areal[6] - Aimag[6]
             + Areal[9] + Aimag[9] + Areal[10] + Aimag[10]
             - Areal[13] + Aimag[13] - Areal[14] + Aimag[14];

    // a27
    a_r[27] =  Aimag[0] + Aimag[1] + Areal[2] - Aimag[3]
             - Areal[4] - Areal[5] + Aimag[6] + Areal[7]
             - Areal[8] - Areal[9] - Aimag[10] - Areal[11]
             - Areal[12] - Areal[13] - Aimag[14] - Areal[15];

    a_i[27] = -Areal[0] - Areal[1] + Aimag[2] + Areal[3]
             - Aimag[4] - Aimag[5] - Areal[6] + Aimag[7]
             - Aimag[8] - Aimag[9] + Areal[10] - Aimag[11]
             - Aimag[12] - Aimag[13] + Areal[14] - Aimag[15];
        // a28
    a_r[28] = -Areal[0] - Aimag[0] - Areal[1] - Aimag[1]
             - Areal[4] + Aimag[4] - Areal[5] + Aimag[5]
             + Areal[8] - Aimag[8] + Areal[9] - Aimag[9]
             - Areal[12] + Aimag[12] - Areal[13] + Aimag[13];

    a_i[28] =  Areal[0] - Aimag[0] + Areal[1] - Aimag[1]
             - Areal[4] - Aimag[4] - Areal[5] - Aimag[5]
             + Areal[8] + Aimag[8] + Areal[9] + Aimag[9]
             - Areal[12] - Aimag[12] - Areal[13] - Aimag[13];

    // a29
    a_r[29] =  Areal[0] - Aimag[0] + Areal[3] + Aimag[3]
             - Areal[4] + Aimag[4] - Areal[7] - Aimag[7]
             + Areal[8] - Aimag[8] + Areal[11] + Aimag[11]
             + Areal[12] + Aimag[12] - Areal[15] + Aimag[15];

    a_i[29] =  Areal[0] + Aimag[0] - Areal[3] + Aimag[3]
             - Areal[4] - Aimag[4] + Areal[7] - Aimag[7]
             + Areal[8] + Aimag[8] - Areal[11] + Aimag[11]
             - Areal[12] + Aimag[12] - Areal[15] - Aimag[15];

    // a30
    a_r[30] =  Areal[1] - Aimag[1] + Areal[2] - Aimag[2]
             - Areal[5] + Aimag[5] - Areal[6] + Aimag[6]
             - Areal[9] + Aimag[9] - Areal[10] + Aimag[10]
             - Areal[13] - Aimag[13] - Areal[14] - Aimag[14];

    a_i[30] =  Areal[1] + Aimag[1] + Areal[2] + Aimag[2]
             - Areal[5] - Aimag[5] - Areal[6] - Aimag[6]
             - Areal[9] - Aimag[9] - Areal[10] - Aimag[10]
             + Areal[13] - Aimag[13] + Areal[14] - Aimag[14];

    // a31
    a_r[31] =  Areal[0] - Areal[1] + Aimag[2] + Areal[3]
             + Areal[4] - Areal[5] + Aimag[6] + Areal[7]
             - Areal[8] + Areal[9] + Aimag[10] + Areal[11]
             + Aimag[12] - Aimag[13] + Areal[14] - Aimag[15];

    a_i[31] =  Aimag[0] - Aimag[1] - Areal[2] + Aimag[3]
             + Aimag[4] - Aimag[5] - Areal[6] + Aimag[7]
             - Aimag[8] + Aimag[9] - Areal[10] + Aimag[11]
             - Areal[12] + Areal[13] + Aimag[14] + Areal[15];
        // a32
    a_r[32] =  Areal[2] - Aimag[2] + Areal[3] + Aimag[3]
             - Areal[6] - Aimag[6] + Areal[7] - Aimag[7]
             + Areal[10] + Aimag[10] - Areal[11] + Aimag[11]
             - Areal[14] - Aimag[14] + Areal[15] - Aimag[15];

    a_i[32] =  Areal[2] + Aimag[2] - Areal[3] + Aimag[3]
             + Areal[6] - Aimag[6] + Areal[7] + Aimag[7]
             - Areal[10] + Aimag[10] - Areal[11] - Aimag[11]
             + Areal[14] - Aimag[14] + Areal[15] + Aimag[15];

    // a33
    a_r[33] =  Areal[0] - Aimag[1] + Aimag[2] + Aimag[3]
             - Areal[4] - Aimag[5] + Aimag[6] - Aimag[7]
             - Areal[8] + Aimag[9] - Aimag[10] - Aimag[11]
             - Aimag[12] + Areal[13] - Areal[14] + Areal[15];

    a_i[33] =  Aimag[0] + Areal[1] - Areal[2] - Areal[3]
             - Aimag[4] + Areal[5] - Areal[6] + Areal[7]
             - Aimag[8] - Areal[9] + Areal[10] + Areal[11]
             + Areal[12] + Aimag[13] - Aimag[14] + Aimag[15];

    // a34
    a_r[34] =  Aimag[0] - Aimag[1] - Areal[2] - Aimag[3]
             - Areal[4] + Areal[5] - Aimag[6] + Areal[7]
             + Areal[8] - Areal[9] - Aimag[10] + Areal[11]
             + Areal[12] - Areal[13] - Aimag[14] + Areal[15];

    a_i[34] = -Areal[0] + Areal[1] - Aimag[2] + Areal[3]
             - Aimag[4] + Aimag[5] + Areal[6] + Aimag[7]
             + Aimag[8] - Aimag[9] + Areal[10] + Aimag[11]
             + Aimag[12] - Aimag[13] + Areal[14] + Aimag[15];

    // a35
    a_r[35] =  Areal[2] + Aimag[2] + Areal[3] - Aimag[3]
             - Areal[6] - Aimag[6] - Areal[7] + Aimag[7]
             + Areal[10] + Aimag[10] + Areal[11] - Aimag[11]
             - Areal[14] + Aimag[14] + Areal[15] + Aimag[15];

    a_i[35] = -Areal[2] + Aimag[2] + Areal[3] + Aimag[3]
             + Areal[6] - Aimag[6] - Areal[7] - Aimag[7]
             - Areal[10] + Aimag[10] + Areal[11] + Aimag[11]
             - Areal[14] - Aimag[14] - Areal[15] + Aimag[15];
    // a36
    a_r[36] = -Areal[1] + Aimag[1] - Areal[2] + Aimag[2]
             - Areal[5] - Aimag[5] - Areal[6] - Aimag[6]
             + Areal[9] + Aimag[9] + Areal[10] + Aimag[10]
             + Areal[13] + Aimag[13] + Areal[14] + Aimag[14];

    a_i[36] = -Areal[1] - Aimag[1] - Areal[2] - Aimag[2]
             + Areal[5] - Aimag[5] + Areal[6] - Aimag[6]
             - Areal[9] + Aimag[9] - Areal[10] + Aimag[10]
             - Areal[13] + Aimag[13] - Areal[14] + Aimag[14];

    // a37
    a_r[37] =  Areal[0] + Aimag[1] + Aimag[2] + Aimag[3]
             - Aimag[4] - Areal[5] - Areal[6] + Areal[7]
             - Aimag[8] + Areal[9] + Areal[10] + Areal[11]
             + Aimag[12] + Areal[13] + Areal[14] - Areal[15];

    a_i[37] =  Aimag[0] - Areal[1] - Areal[2] - Areal[3]
             + Areal[4] - Aimag[5] - Aimag[6] + Aimag[7]
             + Areal[8] + Aimag[9] + Aimag[10] + Aimag[11]
             - Areal[12] + Aimag[13] + Aimag[14] - Aimag[15];

    // a38
    a_r[38] =  Areal[1] + Aimag[1] + Areal[2] + Aimag[2]
             - Areal[5] + Aimag[5] - Areal[6] + Aimag[6]
             - Areal[9] + Aimag[9] - Areal[10] + Aimag[10]
             - Areal[13] + Aimag[13] - Areal[14] + Aimag[14];

    a_i[38] = -Areal[1] + Aimag[1] - Areal[2] + Aimag[2]
             - Areal[5] - Aimag[5] - Areal[6] - Aimag[6]
             - Areal[9] - Aimag[9] - Areal[10] - Aimag[10]
             - Areal[13] - Aimag[13] - Areal[14] - Aimag[14];

    // a39
    a_r[39] = -Areal[0] + Aimag[1] + Aimag[2] + Aimag[3]
             - Areal[4] - Aimag[5] - Aimag[6] + Aimag[7]
             + Areal[8] - Aimag[9] - Aimag[10] - Aimag[11]
             - Aimag[12] + Areal[13] + Areal[14] - Areal[15];

    a_i[39] = -Aimag[0] - Areal[1] - Areal[2] - Areal[3]
             - Aimag[4] + Areal[5] + Areal[6] - Areal[7]
             + Aimag[8] + Areal[9] + Areal[10] + Areal[11]
             + Areal[12] + Aimag[13] + Aimag[14] - Aimag[15];

    // a40
    a_r[40] = -Areal[0] + Aimag[0] - Areal[1] + Aimag[1]
             + Areal[4] - Aimag[4] + Areal[5] - Aimag[5]
             - Areal[8] + Aimag[8] - Areal[9] + Aimag[9]
             - Areal[12] - Aimag[12] - Areal[13] - Aimag[13];

    a_i[40] = -Areal[0] - Aimag[0] - Areal[1] - Aimag[1]
             + Areal[4] + Aimag[4] + Areal[5] + Aimag[5]
             - Areal[8] - Aimag[8] - Areal[9] - Aimag[9]
             + Areal[12] - Aimag[12] + Areal[13] - Aimag[13];
      // a41
    a_r[41] =  Areal[0] + Aimag[0] - Areal[3] + Aimag[3]
            - Areal[4] - Aimag[4] + Areal[7] - Aimag[7]
            - Areal[8] - Aimag[8] + Areal[11] - Aimag[11]
            + Areal[12] - Aimag[12] + Areal[15] + Aimag[15];

    a_i[41] = -Areal[0] + Aimag[0] - Areal[3] - Aimag[3]
            + Areal[4] - Aimag[4] + Areal[7] + Aimag[7]
            + Areal[8] - Aimag[8] + Areal[11] + Aimag[11]
            + Areal[12] + Aimag[12] - Areal[15] + Aimag[15];

    // a42
    a_r[42] =  Areal[0] - Aimag[0] - Areal[3] - Aimag[3]
            + Areal[4] + Aimag[4] + Areal[7] - Aimag[7]
            + Areal[8] + Aimag[8] + Areal[11] - Aimag[11]
            + Areal[12] + Aimag[12] + Areal[15] - Aimag[15];

    a_i[42] =  Areal[0] + Aimag[0] + Areal[3] - Aimag[3]
            - Areal[4] + Aimag[4] + Areal[7] + Aimag[7]
            - Areal[8] + Aimag[8] + Areal[11] + Aimag[11]
            - Areal[12] + Aimag[12] + Areal[15] + Aimag[15];

    // a43
    a_r[43] = -Aimag[0] + Areal[1] - Areal[2] - Areal[3]
            + Areal[4] - Aimag[5] + Aimag[6] - Aimag[7]
            - Areal[8] - Aimag[9] + Aimag[10] + Aimag[11]
            - Areal[12] + Aimag[13] - Aimag[14] + Aimag[15];

    a_i[43] =  Areal[0] + Aimag[1] - Aimag[2] - Aimag[3]
            + Aimag[4] + Areal[5] - Areal[6] + Areal[7]
            - Aimag[8] + Areal[9] - Areal[10] - Areal[11]
            - Aimag[12] - Areal[13] + Areal[14] - Areal[15];

    // a44
    a_r[44] =  Areal[2] + Aimag[2] - Areal[3] + Aimag[3]
            - Areal[6] + Aimag[6] - Areal[7] - Aimag[7]
            - Areal[10] + Aimag[10] - Areal[11] - Aimag[11]
            - Areal[14] + Aimag[14] - Areal[15] - Aimag[15];

    a_i[44] = -Areal[2] + Aimag[2] - Areal[3] - Aimag[3]
            - Areal[6] - Aimag[6] + Areal[7] - Aimag[7]
            - Areal[10] - Aimag[10] + Areal[11] - Aimag[11]
            - Areal[14] - Aimag[14] + Areal[15] - Aimag[15];

    // a45
    a_r[45] = -Areal[0] - Aimag[0] + Areal[1] + Aimag[1]
            + Areal[4] - Aimag[4] - Areal[5] + Aimag[5]
            - Areal[8] + Aimag[8] + Areal[9] - Aimag[9]
            - Areal[12] + Aimag[12] + Areal[13] - Aimag[13];

    a_i[45] =  Areal[0] - Aimag[0] - Areal[1] + Aimag[1]
            + Areal[4] + Aimag[4] - Areal[5] - Aimag[5]
            - Areal[8] - Aimag[8] + Areal[9] + Aimag[9]
            - Areal[12] - Aimag[12] + Areal[13] + Aimag[13];
        // a46
    a_r[46] =  Areal[0] + Aimag[0] + Areal[3] - Aimag[3]
             + Areal[4] + Aimag[4] + Areal[7] - Aimag[7]
             + Areal[8] + Aimag[8] + Areal[11] - Aimag[11]
             + Areal[12] - Aimag[12] - Areal[15] - Aimag[15];

    a_i[46] = -Areal[0] + Aimag[0] + Areal[3] + Aimag[3]
             - Areal[4] + Aimag[4] + Areal[7] + Aimag[7]
             - Areal[8] + Aimag[8] + Areal[11] + Aimag[11]
             + Areal[12] + Aimag[12] + Areal[15] - Aimag[15];

    // a47
    a_r[47] =  Areal[0] - Aimag[1] - Aimag[2] + Aimag[3]
             - Aimag[4] + Areal[5] + Areal[6] + Areal[7]
             + Aimag[8] + Areal[9] + Areal[10] - Areal[11]
             - Aimag[12] + Areal[13] + Areal[14] + Areal[15];

    a_i[47] =  Aimag[0] + Areal[1] + Areal[2] - Areal[3]
             + Areal[4] + Aimag[5] + Aimag[6] + Aimag[7]
             - Areal[8] + Aimag[9] + Aimag[10] - Aimag[11]
             + Areal[12] + Aimag[13] + Aimag[14] + Aimag[15];
end         
endmodule
        
        
