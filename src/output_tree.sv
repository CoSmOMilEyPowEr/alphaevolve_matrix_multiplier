module output_tree #(
    parameter W = 16
)(
    //====================================================
    // Inputs from multiplier array
    //====================================================

    input  logic signed [2*(W+6):0] TReal [47:0],
    input  logic signed [2*(W+6):0] TImag [47:0],

    //====================================================
    // Outputs (4x4 complex result matrix)
    //====================================================

    output logic signed [2*(W+7):0] CReal [15:0],
    output logic signed [2*(W+7):0] CImag [15:0]

);
assign CReal[0] =
    -TReal[5]  +TReal[8]  -TReal[11] +TReal[14] -TReal[16] -TReal[18]
    +TReal[28] +TReal[34] +TReal[36] -TReal[38] +TReal[39] -TReal[42]
    -TReal[43] -TReal[44] +TReal[47]
    -TImag[0] +TImag[1] -TImag[9] -TImag[11] +TImag[15] +TImag[16]
    -TImag[17] +TImag[18] +TImag[24] -TImag[26] -TImag[27] -TImag[30]
    +TImag[32] +TImag[37] +TImag[39] +TImag[40] +TImag[46];

assign CImag[0] =
    -TImag[5] +TImag[8] -TImag[11] +TImag[14] -TImag[16] -TImag[18]
    +TImag[28] +TImag[34] +TImag[36] -TImag[38] +TImag[39] -TImag[42]
    -TImag[43] -TImag[44] +TImag[47]
    +TReal[0] -TReal[1] +TReal[9] +TReal[11] -TReal[15] -TReal[16]
    +TReal[17] -TReal[18] -TReal[24] +TReal[26] +TReal[27] +TReal[30]
    -TReal[32] -TReal[37] -TReal[39] -TReal[40] -TReal[46];

assign CReal[1] =
    +TReal[2] -TReal[3] +TReal[5] +TReal[6] -TReal[8] +TReal[11]
    -TReal[12] +TReal[18] +TReal[20] -TReal[22] -TReal[28] -TReal[33]
    -TReal[34] -TReal[37] +TReal[44]
    +TImag[0] +TImag[3] +TImag[11] -TImag[13] -TImag[14] -TImag[15]
    +TImag[17] -TImag[18] -TImag[24] +TImag[27] +TImag[29] -TImag[32]
    +TImag[33] -TImag[40] -TImag[41] +TImag[43] +TImag[47];

assign CImag[1] =
    +TImag[2] -TImag[3] +TImag[5] +TImag[6] -TImag[8] +TImag[11]
    -TImag[12] +TImag[18] +TImag[20] -TImag[22] -TImag[28] -TImag[33]
    -TImag[34] -TImag[37] +TImag[44]
    -TReal[0] -TReal[3] -TReal[11] +TReal[13] +TReal[14] +TReal[15]
    -TReal[17] +TReal[18] +TReal[24] -TReal[27] -TReal[29] +TReal[32]
    -TReal[33] +TReal[40] +TReal[41] -TReal[43] -TReal[47];

assign CReal[2] =
    -TReal[2] +TReal[3] -TReal[5] +TReal[12] -TReal[16] -TReal[18]
    -TReal[20] -TReal[23] -TReal[25] +TReal[27] -TReal[31] +TReal[33]
    +TReal[34] +TReal[36] -TReal[38] -TReal[44] +TReal[47]
    +TImag[8] -TImag[11] +TImag[13] +TImag[14] +TImag[15] -TImag[19]
    -TImag[21] +TImag[24] -TImag[26] -TImag[30] +TImag[32] -TImag[35]
    +TImag[37] +TImag[39] -TImag[43];

assign CImag[2] =
    -TImag[2] +TImag[3] -TImag[5] +TImag[12] -TImag[16] -TImag[18]
    -TImag[20] -TImag[23] -TImag[25] +TImag[27] -TImag[31] +TImag[33]
    +TImag[34] +TImag[36] -TImag[38] -TImag[44] +TImag[47]
    -TReal[8] +TReal[11] -TReal[13] -TReal[14] -TReal[15] +TReal[19]
    +TReal[21] -TReal[24] +TReal[26] +TReal[30] -TReal[32] +TReal[35]
    -TReal[37] -TReal[39] +TReal[43];

assign CReal[3] =
    -TReal[6] +TReal[7] +TReal[8] -TReal[10] -TReal[11] +TReal[14]
    -TReal[21] +TReal[22] +TReal[24] +TReal[28] +TReal[37] +TReal[39]
    -TReal[42] -TReal[43]
    -TImag[0] +TImag[1] -TImag[3] +TImag[4] -TImag[9] +TImag[16]
    -TImag[17] +TImag[18] -TImag[27] -TImag[29] +TImag[31] -TImag[33]
    -TImag[34] +TImag[40] +TImag[41] +TImag[45] +TImag[46] -TImag[47];

assign CImag[3] =
    -TImag[6] +TImag[7] +TImag[8] -TImag[10] -TImag[11] +TImag[14]
    -TImag[21] +TImag[22] +TImag[24] +TImag[28] +TImag[37] +TImag[39]
    -TImag[42] -TImag[43]
    +TReal[0] -TReal[1] +TReal[3] -TReal[4] +TReal[9] -TReal[16]
    +TReal[17] -TReal[18] +TReal[27] +TReal[29] -TReal[31] +TReal[33]
    +TReal[34] -TReal[40] -TReal[41] -TReal[45] -TReal[46] +TReal[47];

assign CReal[4] =
    -TReal[0] -TReal[1] -TReal[5] +TReal[11] -TReal[16] -TReal[18]
    -TReal[24] +TReal[26] -TReal[27] +TReal[30] -TReal[32] +TReal[36]
    -TReal[37] -TReal[38] -TReal[39] +TReal[42] -TReal[46]
    +TImag[8] +TImag[9] +TImag[11] +TImag[14] -TImag[15] -TImag[16]
    -TImag[17] +TImag[18] +TImag[28] -TImag[34] +TImag[39] -TImag[40]
    -TImag[43] +TImag[44] +TImag[47];

assign CImag[4] =
    -TImag[0] -TImag[1] -TImag[5] +TImag[11] -TImag[16] -TImag[18]
    -TImag[24] +TImag[26] -TImag[27] +TImag[30] -TImag[32] +TImag[36]
    -TImag[37] -TImag[38] -TImag[39] +TImag[42] -TImag[46]
    -TReal[8] -TReal[9] -TReal[11] -TReal[14] +TReal[15] +TReal[16]
    +TReal[17] -TReal[18] -TReal[28] +TReal[34] -TReal[39] +TReal[40]
    +TReal[43] -TReal[44] -TReal[47];
assign CReal[5] =
    +TReal[0] -TReal[2] +TReal[3] +TReal[5] +TReal[6] -TReal[11]
    +TReal[12] -TReal[13] -TReal[14] +TReal[18] -TReal[22] +TReal[24]
    +TReal[27] +TReal[29] +TReal[32] +TReal[33] -TReal[41] +TReal[43]
    +TReal[47]
    +TImag[3] -TImag[8] -TImag[11] +TImag[15] +TImag[17] -TImag[18]
    -TImag[20] -TImag[28] +TImag[33] +TImag[34] +TImag[37] +TImag[40]
    -TImag[44];

assign CImag[5] =
    +TImag[0] -TImag[2] +TImag[3] +TImag[5] +TImag[6] -TImag[11]
    +TImag[12] -TImag[13] -TImag[14] +TImag[18] -TImag[22] +TImag[24]
    +TImag[27] +TImag[29] +TImag[32] +TImag[33] -TImag[41] +TImag[43]
    +TImag[47]
    -TReal[3] +TReal[8] +TReal[11] -TReal[15] -TReal[17] +TReal[18]
    +TReal[20] +TReal[28] -TReal[33] -TReal[34] -TReal[37] -TReal[40]
    +TReal[44];

assign CReal[6] =
    +TReal[2] -TReal[3] -TReal[5] -TReal[8] -TReal[12] +TReal[13]
    +TReal[14] -TReal[16] -TReal[18] -TReal[24] +TReal[26] +TReal[30]
    -TReal[31] -TReal[32] -TReal[33] +TReal[36] -TReal[37] -TReal[38]
    -TReal[43]
    +TImag[11] -TImag[15] -TImag[19] +TImag[20] +TImag[21] -TImag[23]
    +TImag[25] -TImag[27] -TImag[34] +TImag[35] +TImag[39] +TImag[44]
    +TImag[47];

assign CImag[6] =
    +TImag[2] -TImag[3] -TImag[5] -TImag[8] -TImag[12] +TImag[13]
    +TImag[14] -TImag[16] -TImag[18] -TImag[24] +TImag[26] +TImag[30]
    -TImag[31] -TImag[32] -TImag[33] +TImag[36] -TImag[37] -TImag[38]
    -TImag[43]
    -TReal[11] +TReal[15] +TReal[19] -TReal[20] -TReal[21] +TReal[23]
    -TReal[25] +TReal[27] +TReal[34] -TReal[35] -TReal[39] -TReal[44]
    -TReal[47];

assign CReal[7] =
    -TReal[0] -TReal[1] -TReal[4] -TReal[6] -TReal[7] -TReal[10]
    +TReal[11] +TReal[21] +TReal[22] -TReal[27] -TReal[29] -TReal[34]
    -TReal[39] +TReal[41] +TReal[42] +TReal[45] -TReal[46] -TReal[47]
    -TImag[3] +TImag[8] +TImag[9] +TImag[14] -TImag[16] -TImag[17]
    +TImag[18] +TImag[24] +TImag[28] +TImag[31] -TImag[33] -TImag[37]
    -TImag[40] -TImag[43];

assign CImag[7] =
    -TImag[0] -TImag[1] -TImag[4] -TImag[6] -TImag[7] -TImag[10]
    +TImag[11] +TImag[21] +TImag[22] -TImag[27] -TImag[29] -TImag[34]
    -TImag[39] +TImag[41] +TImag[42] +TImag[45] -TImag[46] -TImag[47]
    +TReal[3] -TReal[8] -TReal[9] -TReal[14] +TReal[16] +TReal[17]
    -TReal[18] -TReal[24] -TReal[28] -TReal[31] +TReal[33] +TReal[37]
    +TReal[40] +TReal[43];

assign CReal[8] =
    +TReal[9] +TReal[11] -TReal[15] -TReal[16] +TReal[17] -TReal[18]
    -TReal[24] +TReal[27] -TReal[28] -TReal[37] -TReal[39] -TReal[40]
    -TReal[44]
    +TImag[0] -TImag[1] -TImag[5] +TImag[8] -TImag[11] -TImag[14]
    +TImag[16] -TImag[18] -TImag[26] +TImag[30] +TImag[32] +TImag[34]
    +TImag[36] +TImag[38] -TImag[39] +TImag[42] -TImag[43] +TImag[46]
    -TImag[47];

assign CImag[8] =
    +TImag[9] +TImag[11] -TImag[15] -TImag[16] +TImag[17] -TImag[18]
    -TImag[24] +TImag[27] -TImag[28] -TImag[37] -TImag[39] -TImag[40]
    -TImag[44]
    -TReal[0] +TReal[1] +TReal[5] -TReal[8] +TReal[11] +TReal[14]
    -TReal[16] +TReal[18] +TReal[26] -TReal[30] -TReal[32] -TReal[34]
    -TReal[36] -TReal[38] +TReal[39] -TReal[42] +TReal[43] -TReal[46]
    +TReal[47];

assign CReal[9] =
    -TReal[3] -TReal[11] -TReal[14] +TReal[15] -TReal[17] +TReal[18]
    -TReal[20] +TReal[24] -TReal[27] +TReal[28] +TReal[33] +TReal[40]
    -TReal[43] +TReal[44] +TReal[47]
    -TImag[0] -TImag[2] +TImag[3] +TImag[5] -TImag[6] -TImag[8]
    +TImag[11] -TImag[12] -TImag[13] +TImag[18] -TImag[22] +TImag[29]
    -TImag[32] -TImag[33] -TImag[34] -TImag[37] +TImag[41];

assign CImag[9] =
    -TImag[3] -TImag[11] -TImag[14] +TImag[15] -TImag[17] +TImag[18]
    -TImag[20] +TImag[24] -TImag[27] +TImag[28] +TImag[33] +TImag[40]
    -TImag[43] +TImag[44] +TImag[47]
    +TReal[0] +TReal[2] -TReal[3] -TReal[5] +TReal[6] +TReal[8]
    -TReal[11] +TReal[12] +TReal[13] -TReal[18] +TReal[22] -TReal[29]
    +TReal[32] +TReal[33] +TReal[34] +TReal[37] -TReal[41];
assign CReal[10] =
    +TReal[3] +TReal[8] +TReal[14] -TReal[15] -TReal[16] -TReal[18]
    -TReal[19] +TReal[20] +TReal[23] -TReal[24] +TReal[25] +TReal[31]
    -TReal[33] -TReal[35] -TReal[37] +TReal[43] -TReal[44]
    +TImag[2] -TImag[5] -TImag[11] +TImag[12] +TImag[13] +TImag[21]
    -TImag[26] -TImag[27] +TImag[30] +TImag[32] +TImag[34] +TImag[36]
    +TImag[38] -TImag[39] -TImag[47];

assign CImag[10] =
    +TImag[3] +TImag[8] +TImag[14] -TImag[15] -TImag[16] -TImag[18]
    -TImag[19] +TImag[20] +TImag[23] -TImag[24] +TImag[25] +TImag[31]
    -TImag[33] -TImag[35] -TImag[37] +TImag[43] -TImag[44]
    -TReal[2] +TReal[5] +TReal[11] -TReal[12] -TReal[13] -TReal[21]
    +TReal[26] +TReal[27] -TReal[30] -TReal[32] -TReal[34] -TReal[36]
    -TReal[38] +TReal[39] +TReal[47];

assign CReal[11] =
    +TReal[9] +TReal[11] +TReal[17] -TReal[21] +TReal[27] -TReal[28]
    -TReal[34] -TReal[39] -TReal[40] -TReal[47]
    +TImag[0] -TImag[1] -TImag[3] +TImag[4] +TImag[6] -TImag[7]
    +TImag[8] +TImag[10] -TImag[14] +TImag[16] -TImag[18] +TImag[22]
    -TImag[24] -TImag[29] +TImag[31] +TImag[33] +TImag[37] -TImag[41]
    +TImag[42] -TImag[43] +TImag[45] +TImag[46];

assign CImag[11] =
    +TImag[9] +TImag[11] +TImag[17] -TImag[21] +TImag[27] -TImag[28]
    -TImag[34] -TImag[39] -TImag[40] -TImag[47]
    -TReal[0] +TReal[1] +TReal[3] -TReal[4] -TReal[6] +TReal[7]
    -TReal[8] -TReal[10] +TReal[14] -TReal[16] +TReal[18] -TReal[22]
    +TReal[24] +TReal[29] -TReal[31] -TReal[33] -TReal[37] +TReal[41]
    -TReal[42] +TReal[43] -TReal[45] -TReal[46];

assign CReal[12] =
    +TReal[5] -TReal[11] +TReal[16] +TReal[18] +TReal[24] +TReal[27]
    +TReal[28] -TReal[36] +TReal[37] -TReal[38] +TReal[39] +TReal[42]
    -TReal[44]
    +TImag[0] +TImag[1] -TImag[8] -TImag[9] -TImag[11] +TImag[14]
    +TImag[15] -TImag[16] +TImag[17] -TImag[18] +TImag[26] -TImag[30]
    -TImag[32] +TImag[34] +TImag[39] +TImag[40] +TImag[43] -TImag[46]
    +TImag[47];

assign CImag[12] =
    +TImag[5] -TImag[11] +TImag[16] +TImag[18] +TImag[24] +TImag[27]
    +TImag[28] -TImag[36] +TImag[37] -TImag[38] +TImag[39] +TImag[42]
    -TImag[44]
    -TReal[0] -TReal[1] +TReal[8] +TReal[9] +TReal[11] -TReal[14]
    -TReal[15] +TReal[16] -TReal[17] +TReal[18] -TReal[26] +TReal[30]
    +TReal[32] -TReal[34] -TReal[39] -TReal[40] -TReal[43] +TReal[46]
    -TReal[47];
assign CReal[13] =
    -TReal[2] -TReal[3] -TReal[5] +TReal[6] +TReal[11] -TReal[12]
    -TReal[14] -TReal[18] -TReal[20] +TReal[22] -TReal[24] -TReal[27]
    -TReal[28] +TReal[33] -TReal[43] +TReal[44] +TReal[47]
    -TImag[0] +TImag[3] +TImag[8] +TImag[11] -TImag[13] -TImag[15]
    -TImag[17] +TImag[18] +TImag[29] +TImag[32] -TImag[33] -TImag[34]
    -TImag[37] -TImag[40] +TImag[41];

assign CImag[13] =
    -TImag[2] -TImag[3] -TImag[5] +TImag[6] +TImag[11] -TImag[12]
    -TImag[14] -TImag[18] -TImag[20] +TImag[22] -TImag[24] -TImag[27]
    -TImag[28] +TImag[33] -TImag[43] +TImag[44] +TImag[47]
    +TReal[0] -TReal[3] -TReal[8] -TReal[11] +TReal[13] +TReal[15]
    +TReal[17] -TReal[18] -TReal[29] -TReal[32] +TReal[33] +TReal[34]
    +TReal[37] +TReal[40] -TReal[41];

assign CReal[14] =
    +TReal[2] +TReal[5] -TReal[8] -TReal[11] +TReal[12] +TReal[14]
    +TReal[20] +TReal[21] -TReal[23] +TReal[24] +TReal[25] -TReal[36]
    +TReal[37] -TReal[38] +TReal[39] +TReal[43] -TReal[44]
    -TImag[3] +TImag[13] +TImag[15] -TImag[16] -TImag[18] -TImag[19]
    +TImag[26] -TImag[27] -TImag[30] +TImag[31] -TImag[32] +TImag[33]
    +TImag[34] +TImag[35] +TImag[47];

assign CImag[14] =
    +TImag[2] +TImag[5] -TImag[8] -TImag[11] +TImag[12] +TImag[14]
    +TImag[20] +TImag[21] -TImag[23] +TImag[24] +TImag[25] -TImag[36]
    +TImag[37] -TImag[38] +TImag[39] +TImag[43] -TImag[44]
    +TReal[3] -TReal[13] -TReal[15] +TReal[16] +TReal[18] +TReal[19]
    -TReal[26] +TReal[27] +TReal[30] -TReal[31] +TReal[32] -TReal[33]
    -TReal[34] -TReal[35] -TReal[47];

assign CReal[15] =
    +TReal[3] -TReal[6] -TReal[7] -TReal[10] +TReal[16] +TReal[18]
    -TReal[22] +TReal[27] +TReal[28] -TReal[31] -TReal[33] -TReal[34]
    +TReal[42] -TReal[47]
    +TImag[0] +TImag[1] -TImag[4] -TImag[8] -TImag[9] -TImag[11]
    +TImag[14] +TImag[17] +TImag[21] +TImag[24] -TImag[29] +TImag[37]
    +TImag[39] +TImag[40] -TImag[41] +TImag[43] +TImag[45] -TImag[46];

assign CImag[15] =
    +TImag[3] -TImag[6] -TImag[7] -TImag[10] +TImag[16] +TImag[18]
    -TImag[22] +TImag[27] +TImag[28] -TImag[31] -TImag[33] -TImag[34]
    +TImag[42] -TImag[47]
    -TReal[0] -TReal[1] +TReal[4] +TReal[8] +TReal[9] +TReal[11]
    -TReal[14] -TReal[17] -TReal[21] -TReal[24] +TReal[29] -TReal[37]
    -TReal[39] -TReal[40] +TReal[41] -TReal[43] -TReal[45] +TReal[46];
    
endmodule