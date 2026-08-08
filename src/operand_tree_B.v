module operand_tree_B
#(
    parameter W = 16
)
(
    input signed [W-1:0] Breal0,
    input signed [W-1:0] Breal1,
    input signed [W-1:0] Breal2,
    input signed [W-1:0] Breal3,
    input signed [W-1:0] Breal4,
    input signed [W-1:0] Breal5,
    input signed [W-1:0] Breal6,
    input signed [W-1:0] Breal7,
    input signed [W-1:0] Breal8,
    input signed [W-1:0] Breal9,
    input signed [W-1:0] Breal10,
    input signed [W-1:0] Breal11,
    input signed [W-1:0] Breal12,
    input signed [W-1:0] Breal13,
    input signed [W-1:0] Breal14,
    input signed [W-1:0] Breal15,

    input signed [W-1:0] Bimag0,
    input signed [W-1:0] Bimag1,
    input signed [W-1:0] Bimag2,
    input signed [W-1:0] Bimag3,
    input signed [W-1:0] Bimag4,
    input signed [W-1:0] Bimag5,
    input signed [W-1:0] Bimag6,
    input signed [W-1:0] Bimag7,
    input signed [W-1:0] Bimag8,
    input signed [W-1:0] Bimag9,
    input signed [W-1:0] Bimag10,
    input signed [W-1:0] Bimag11,
    input signed [W-1:0] Bimag12,
    input signed [W-1:0] Bimag13,
    input signed [W-1:0] Bimag14,
    input signed [W-1:0] Bimag15,

    output signed [W+5:0] b0_r,
    output signed [W+5:0] b0_i,

    output signed [W+5:0] b1_r,
    output signed [W+5:0] b1_i,

    output signed [W+5:0] b2_r,
    output signed [W+5:0] b2_i,

    output signed [W+5:0] b3_r,
    output signed [W+5:0] b3_i,

    output signed [W+5:0] b4_r,
    output signed [W+5:0] b4_i,

    output signed [W+5:0] b5_r,
    output signed [W+5:0] b5_i,

    output signed [W+5:0] b6_r,
    output signed [W+5:0] b6_i,

    output signed [W+5:0] b7_r,
    output signed [W+5:0] b7_i,

    output signed [W+5:0] b8_r,
    output signed [W+5:0] b8_i,

    output signed [W+5:0] b9_r,
    output signed [W+5:0] b9_i,

    output signed [W+5:0] b10_r,
    output signed [W+5:0] b10_i,

    output signed [W+5:0] b11_r,
    output signed [W+5:0] b11_i,

    output signed [W+5:0] b12_r,
    output signed [W+5:0] b12_i,

    output signed [W+5:0] b13_r,
    output signed [W+5:0] b13_i,

    output signed [W+5:0] b14_r,
    output signed [W+5:0] b14_i,

    output signed [W+5:0] b15_r,
    output signed [W+5:0] b15_i,

    output signed [W+5:0] b16_r,
    output signed [W+5:0] b16_i,

    output signed [W+5:0] b17_r,
    output signed [W+5:0] b17_i,

    output signed [W+5:0] b18_r,
    output signed [W+5:0] b18_i,

    output signed [W+5:0] b19_r,
    output signed [W+5:0] b19_i,

    output signed [W+5:0] b20_r,
    output signed [W+5:0] b20_i,

    output signed [W+5:0] b21_r,
    output signed [W+5:0] b21_i,

    output signed [W+5:0] b22_r,
    output signed [W+5:0] b22_i,

    output signed [W+5:0] b23_r,
    output signed [W+5:0] b23_i,

    output signed [W+5:0] b24_r,
    output signed [W+5:0] b24_i,

    output signed [W+5:0] b25_r,
    output signed [W+5:0] b25_i,

    output signed [W+5:0] b26_r,
    output signed [W+5:0] b26_i,

    output signed [W+5:0] b27_r,
    output signed [W+5:0] b27_i,

    output signed [W+5:0] b28_r,
    output signed [W+5:0] b28_i,

    output signed [W+5:0] b29_r,
    output signed [W+5:0] b29_i,

    output signed [W+5:0] b30_r,
    output signed [W+5:0] b30_i,

    output signed [W+5:0] b31_r,
    output signed [W+5:0] b31_i,

    output signed [W+5:0] b32_r,
    output signed [W+5:0] b32_i,

    output signed [W+5:0] b33_r,
    output signed [W+5:0] b33_i,

    output signed [W+5:0] b34_r,
    output signed [W+5:0] b34_i,

    output signed [W+5:0] b35_r,
    output signed [W+5:0] b35_i,

    output signed [W+5:0] b36_r,
    output signed [W+5:0] b36_i,

    output signed [W+5:0] b37_r,
    output signed [W+5:0] b37_i,

    output signed [W+5:0] b38_r,
    output signed [W+5:0] b38_i,

    output signed [W+5:0] b39_r,
    output signed [W+5:0] b39_i,

    output signed [W+5:0] b40_r,
    output signed [W+5:0] b40_i,

    output signed [W+5:0] b41_r,
    output signed [W+5:0] b41_i,

    output signed [W+5:0] b42_r,
    output signed [W+5:0] b42_i,

    output signed [W+5:0] b43_r,
    output signed [W+5:0] b43_i,

    output signed [W+5:0] b44_r,
    output signed [W+5:0] b44_i,

    output signed [W+5:0] b45_r,
    output signed [W+5:0] b45_i,

    output signed [W+5:0] b46_r,
    output signed [W+5:0] b46_i,

    output signed [W+5:0] b47_r,
    output signed [W+5:0] b47_i
);

assign b0_r =
    - Breal0
    - Breal4
    + Breal8
    + Bimag12;

assign b0_i =
    - Bimag0
    - Bimag4
    + Bimag8
    - Breal12;


assign b1_r =
    - Bimag1
    - Bimag3
    - Bimag5
    - Bimag7
    - Bimag9
    - Bimag11
    + Breal13
    + Breal15;

assign b1_i =
      Breal1
    + Breal3
    + Breal5
    + Breal7
    + Breal9
    + Breal11
    + Bimag13
    + Bimag15;


assign b2_r =
      Breal1
    - Bimag1
    - Breal5
    + Bimag5
    + Breal9
    - Bimag9
    + Breal13
    + Bimag13;

assign b2_i =
      Bimag1
    + Breal1
    - Bimag5
    - Breal5
    + Bimag9
    + Breal9
    + Bimag13
    - Breal13;


assign b3_r =
      Bimag0
    - Bimag2
    + Bimag5
    + Bimag6
    - Bimag9
    - Bimag10
    + Breal12
    - Breal14;

assign b3_i =
    - Breal0
    + Breal2
    - Breal5
    - Breal6
    + Breal9
    + Breal10
    + Bimag12
    - Bimag14;


assign b4_r =
    - Breal0
    + Breal2
    + Breal3
    + Breal4
    - Breal6
    - Breal7
    + Breal8
    - Breal10
    - Breal11
    - Bimag12
    + Bimag14
    + Bimag15;

assign b4_i =
    - Bimag0
    + Bimag2
    + Bimag3
    + Bimag4
    - Bimag6
    - Bimag7
    + Bimag8
    - Bimag10
    - Bimag11
    + Breal12
    - Breal14
    - Breal15;


assign b5_r =
      Breal1
    + Breal3
    + Breal5
    + Breal7
    + Breal9
    + Breal11
    - Bimag13
    - Bimag15;

assign b5_i =
      Bimag1
    + Bimag3
    + Bimag5
    + Bimag7
    + Bimag9
    + Bimag11
    + Breal13
    + Breal15;


assign b6_r =
    - Breal1
    + Bimag1
    + Breal5
    - Bimag5
    + Breal9
    - Bimag9
    + Breal13
    + Bimag13;

assign b6_i =
    - Bimag1
    - Breal1
    + Bimag5
    + Breal5
    + Bimag9
    + Breal9
    + Bimag13
    - Breal13;


assign b7_r =
    - Breal0
    + Breal3
    + Breal4
    - Breal7
    - Breal8
    + Breal11
    - Bimag12
    + Bimag15;

assign b7_i =
    - Bimag0
    + Bimag3
    + Bimag4
    - Bimag7
    - Bimag8
    + Bimag11
    + Breal12
    - Breal15;


assign b8_r =
      Breal0
    - Breal2
    - Breal3
    + Breal4
    - Breal6
    - Breal7
    + Breal9
    + Bimag13;

assign b8_i =
      Bimag0
    - Bimag2
    - Bimag3
    + Bimag4
    - Bimag6
    - Bimag7
    + Bimag9
    - Breal13;


assign b9_r =
    - Bimag1
    - Bimag2
    - Bimag3
    - Bimag5
    - Bimag6
    - Bimag7
    + Bimag9
    + Bimag10
    + Bimag11
    + Breal13
    + Breal14
    + Breal15;

assign b9_i =
      Breal1
    + Breal2
    + Breal3
    + Breal5
    + Breal6
    + Breal7
    - Breal9
    - Breal10
    - Breal11
    + Bimag13
    + Bimag14
    + Bimag15;
assign b10_r =
    - Bimag1
    - Bimag3
    + Bimag5
    + Bimag7
    + Bimag9
    + Bimag11
    - Breal13
    - Breal15;

assign b10_i =
      Breal1
    + Breal3
    - Breal5
    - Breal7
    - Breal9
    - Breal11
    - Bimag13
    - Bimag15;


assign b11_r =
      Bimag0
    - Bimag3
    + Bimag4
    - Bimag7
    - Bimag9
    - Bimag10
    - Breal13
    - Breal14;

assign b11_i =
    - Breal0
    + Breal3
    - Breal4
    + Breal7
    + Breal9
    + Breal10
    - Bimag13
    - Bimag14;


assign b12_r =
    - Breal0
    + Breal2
    + Breal3
    - Breal4
    + Breal6
    + Breal7
    + Breal8
    - Breal10
    - Breal11
    - Bimag12
    + Bimag14
    + Bimag15;

assign b12_i =
    - Bimag0
    + Bimag2
    + Bimag3
    - Bimag4
    + Bimag6
    + Bimag7
    + Bimag8
    - Bimag10
    - Bimag11
    + Breal12
    - Breal14
    - Breal15;


assign b13_r =
    - Bimag0
    + Bimag2
    + Bimag4
    - Bimag6
    - Bimag8
    + Bimag10
    - Breal12
    + Breal14;

assign b13_i =
      Breal0
    - Breal2
    - Breal4
    + Breal6
    + Breal8
    - Breal10
    - Bimag12
    + Bimag14;


assign b14_r =
    - Breal1
    - Breal4
    + Breal8
    - Bimag13;

assign b14_i =
    - Bimag1
    - Bimag4
    + Bimag8
    + Breal13;


assign b15_r =
    - Bimag0
    + Bimag3
    - Bimag4
    + Bimag7
    + Bimag8
    - Bimag11
    + Breal12
    - Breal15;

assign b15_i =
      Breal0
    - Breal3
    + Breal4
    - Breal7
    - Breal8
    + Breal11
    + Bimag12
    - Bimag15;


assign b16_r =
      Breal1
    + Breal2
    + Breal4
    - Breal6
    + Breal8
    - Breal10
    + Bimag13
    + Bimag14;

assign b16_i =
      Bimag1
    + Bimag2
    + Bimag4
    - Bimag6
    + Bimag8
    - Bimag10
    - Breal13
    - Breal14;


assign b17_r =
      Bimag0
    - Bimag2
    + Bimag4
    - Bimag6
    + Bimag8
    - Bimag10
    + Breal12
    - Breal14;

assign b17_i =
    - Breal0
    + Breal2
    - Breal4
    + Breal6
    - Breal8
    + Breal10
    + Bimag12
    - Bimag14;


assign b18_r =
      Bimag1
    + Bimag3
    + Bimag5
    + Bimag7
    + Bimag8
    - Bimag10
    + Breal12
    - Breal14;

assign b18_i =
    - Breal1
    - Breal3
    - Breal5
    - Breal7
    - Breal8
    + Breal10
    + Bimag12
    - Bimag14;


assign b19_r =
      Bimag0
    - Bimag2
    - Bimag4
    + Bimag6
    - Bimag8
    + Bimag10
    + Breal12
    - Breal14;

assign b19_i =
    - Breal0
    + Breal2
    + Breal4
    - Breal6
    + Breal8
    - Breal10
    + Bimag12
    - Bimag14;
assign b20_r =
      Bimag1
    + Bimag3
    + Bimag5
    + Bimag7
    - Bimag9
    - Bimag11
    + Breal13
    + Breal15;

assign b20_i =
    - Breal1
    - Breal3
    - Breal5
    - Breal7
    + Breal9
    + Breal11
    + Bimag13
    + Bimag15;


assign b21_r =
    - Breal1
    - Breal2
    + Breal5
    + Breal6
    - Breal8
    + Breal11
    - Bimag12
    + Bimag15;

assign b21_i =
    - Bimag1
    - Bimag2
    + Bimag5
    + Bimag6
    - Bimag8
    + Bimag11
    + Breal12
    - Breal15;


assign b22_r =
      Bimag0
    - Bimag2
    - Bimag3
    + Bimag4
    - Bimag6
    - Bimag7
    + Bimag8
    - Bimag10
    - Bimag11
    + Breal12
    - Breal14
    - Breal15;

assign b22_i =
    - Breal0
    + Breal2
    + Breal3
    - Breal4
    + Breal6
    + Breal7
    - Breal8
    + Breal10
    + Breal11
    + Bimag12
    - Bimag14
    - Bimag15;


assign b23_r =
    - Breal0
    + Breal2
    + Breal3
    - Breal4
    + Breal6
    + Breal7
    - Breal8
    + Breal10
    + Breal11
    - Bimag12
    + Bimag14
    + Bimag15;

assign b23_i =
    - Bimag0
    + Bimag2
    + Bimag3
    - Bimag4
    + Bimag6
    + Bimag7
    - Bimag8
    + Bimag10
    + Bimag11
    + Breal12
    - Breal14
    - Breal15;


assign b24_r =
    - Bimag1
    + Bimag5
    + Bimag8
    - Bimag10
    - Bimag11
    + Breal12
    - Breal14
    - Breal15;

assign b24_i =
      Breal1
    - Breal5
    - Breal8
    + Breal10
    + Breal11
    + Bimag12
    - Bimag14
    - Bimag15;


assign b25_r =
    - Bimag1
    - Bimag2
    - Bimag3
    - Bimag5
    - Bimag6
    - Bimag7
    + Bimag9
    + Bimag10
    + Bimag11
    - Breal13
    - Breal14
    - Breal15;

assign b25_i =
      Breal1
    + Breal2
    + Breal3
    + Breal5
    + Breal6
    + Breal7
    - Breal9
    - Breal10
    - Breal11
    - Bimag13
    - Bimag14
    - Bimag15;


assign b26_r =
      Breal1
    + Breal2
    - Breal5
    - Breal6
    - Breal9
    - Breal10
    + Bimag13
    + Bimag14;

assign b26_i =
      Bimag1
    + Bimag2
    - Bimag5
    - Bimag6
    - Bimag9
    - Bimag10
    - Breal13
    - Breal14;


assign b27_r =
    - Bimag1
    - Bimag2
    - Bimag3
    - Bimag5
    - Bimag6
    - Bimag7
    + Bimag8
    - Breal12;

assign b27_i =
      Breal1
    + Breal2
    + Breal3
    + Breal5
    + Breal6
    + Breal7
    - Breal8
    - Bimag12;


assign b28_r =
      Breal1
    + Breal5
    + Breal9
    + Bimag13;

assign b28_i =
      Bimag1
    + Bimag5
    + Bimag9
    - Breal13;


assign b29_r =
    - Bimag1
    - Bimag2
    + Bimag5
    + Bimag6
    - Bimag9
    - Bimag10
    - Breal13
    - Breal14;

assign b29_i =
      Breal1
    + Breal2
    - Breal5
    - Breal6
    + Breal9
    + Breal10
    - Bimag13
    - Bimag14;
assign b30_r =
    - Breal0
    + Breal3
    - Breal4
    + Breal7
    - Breal8
    + Breal11
    - Bimag12
    + Bimag15;

assign b30_i =
    - Bimag0
    + Bimag3
    - Bimag4
    + Bimag7
    - Bimag8
    + Bimag11
    + Breal12
    - Breal15;


assign b31_r =
      Breal0
    - Breal2
    - Breal4
    + Breal6
    - Breal9
    - Breal11
    - Bimag13
    - Bimag15;

assign b31_i =
      Bimag0
    - Bimag2
    - Bimag4
    + Bimag6
    - Bimag9
    - Bimag11
    + Breal13
    + Breal15;


assign b32_r =
    - Bimag1
    + Bimag5
    + Bimag9
    + Breal13;

assign b32_i =
      Breal1
    - Breal5
    - Breal9
    + Bimag13;


assign b33_r =
    - Breal1
    - Breal3
    + Breal4
    - Breal7
    - Breal8
    + Breal11
    + Bimag13
    + Bimag15;

assign b33_i =
    - Bimag1
    - Bimag3
    + Bimag4
    - Bimag7
    - Bimag8
    + Bimag11
    - Breal13
    - Breal15;


assign b34_r =
    - Bimag0
    + Bimag4
    - Bimag9
    - Bimag10
    - Bimag11
    - Breal13
    - Breal14
    - Breal15;

assign b34_i =
      Breal0
    - Breal4
    + Breal9
    + Breal10
    + Breal11
    - Bimag13
    - Bimag14
    - Bimag15;


assign b35_r =
      Bimag1
    + Bimag2
    - Bimag5
    - Bimag6
    + Bimag9
    + Bimag10
    - Breal13
    - Breal14;

assign b35_i =
    - Breal1
    - Breal2
    + Breal5
    + Breal6
    - Breal9
    - Breal10
    - Bimag13
    - Bimag14;


assign b36_r =
    - Breal1
    - Breal2
    - Breal3
    - Breal5
    - Breal6
    - Breal7
    - Breal9
    - Breal10
    - Breal11
    + Bimag13
    + Bimag14
    + Bimag15;

assign b36_i =
    - Bimag1
    - Bimag2
    - Bimag3
    - Bimag5
    - Bimag6
    - Bimag7
    - Bimag9
    - Bimag10
    - Bimag11
    - Breal13
    - Breal14
    - Breal15;


assign b37_r =
    - Bimag1
    - Bimag2
    - Bimag3
    + Bimag4
    - Bimag6
    - Bimag7
    + Bimag8
    - Bimag10
    - Bimag11
    - Breal13
    - Breal14
    - Breal15;

assign b37_i =
      Breal1
    + Breal2
    + Breal3
    - Breal4
    + Breal6
    + Breal7
    - Breal8
    + Breal10
    + Breal11
    - Bimag13
    - Bimag14
    - Bimag15;


assign b38_r =
    - Bimag0
    + Bimag4
    + Bimag8
    - Breal12;

assign b38_i =
      Breal0
    - Breal4
    - Breal8
    - Bimag12;


assign b39_r =
      Bimag0
    - Bimag3
    - Bimag5
    - Bimag7
    - Bimag9
    - Bimag11
    - Breal12
    + Breal15;

assign b39_i =
    - Breal0
    + Breal3
    + Breal5
    + Breal7
    + Breal9
    + Breal11
    - Bimag12
    + Bimag15;
assign b40_r =
    - Bimag1
    - Bimag2
    + Bimag5
    + Bimag6
    + Bimag9
    + Bimag10
    + Breal13
    + Breal14;

assign b40_i =
      Breal1
    + Breal2
    + Breal5
    + Breal6
    - Breal9
    - Breal10
    + Bimag13
    + Bimag14;


assign b41_r =
      Breal0
    - Breal3
    + Breal4
    - Breal7
    - Breal8
    + Breal11
    - Bimag12
    + Bimag15;

assign b41_i =
      Bimag0
    - Bimag3
    + Bimag4
    - Bimag7
    - Bimag8
    + Bimag11
    + Breal12
    - Breal15;


assign b42_r =
    - Bimag0
    + Bimag4
    - Bimag8
    + Breal12;

assign b42_i =
      Breal0
    - Breal4
    + Breal8
    + Bimag12;


assign b43_r =
      Breal0
    - Breal2
    - Breal3
    - Breal5
    - Breal6
    - Breal7
    + Breal9
    + Breal10
    + Breal11
    + Bimag12
    - Bimag14
    - Bimag15;

assign b43_i =
      Bimag0
    - Bimag2
    - Bimag3
    - Bimag5
    - Bimag6
    - Bimag7
    + Bimag9
    + Bimag10
    + Bimag11
    - Breal12
    + Breal14
    + Breal15;


assign b44_r =
      Bimag0
    - Bimag4
    + Bimag8
    + Breal12;

assign b44_i =
    - Breal0
    + Breal4
    - Breal8
    + Bimag12;


assign b45_r =
      Bimag1
    + Bimag2
    + Bimag3
    - Bimag5
    - Bimag6
    - Bimag7
    + Bimag9
    + Bimag10
    + Bimag11
    + Breal13
    + Breal14
    + Breal15;

assign b45_i =
    - Breal1
    - Breal2
    - Breal3
    + Breal5
    + Breal6
    + Breal7
    - Breal9
    - Breal10
    - Breal11
    + Bimag13
    + Bimag14
    + Bimag15;


assign b46_r =
    - Breal0
    + Breal2
    + Breal4
    - Breal6
    + Breal8
    - Breal10
    - Bimag12
    + Bimag14;

assign b46_i =
    - Bimag0
    + Bimag2
    + Bimag4
    - Bimag6
    + Bimag8
    - Bimag10
    + Breal12
    - Breal14;


assign b47_r =
      Breal0
    + Breal5
    + Breal9
    - Bimag12;

assign b47_i =
      Bimag0
    + Bimag5
    + Bimag9
    + Breal12;
    



endmodule