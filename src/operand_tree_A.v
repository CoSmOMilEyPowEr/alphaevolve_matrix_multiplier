module operand_tree_A
#(
    parameter W = 16
)
(
    input signed [W-1:0] Areal0,  input signed [W-1:0] Aimag0,
    input signed [W-1:0] Areal1,  input signed [W-1:0] Aimag1,
    input signed [W-1:0] Areal2,  input signed [W-1:0] Aimag2,
    input signed [W-1:0] Areal3,  input signed [W-1:0] Aimag3,
    input signed [W-1:0] Areal4,  input signed [W-1:0] Aimag4,
    input signed [W-1:0] Areal5,  input signed [W-1:0] Aimag5,
    input signed [W-1:0] Areal6,  input signed [W-1:0] Aimag6,
    input signed [W-1:0] Areal7,  input signed [W-1:0] Aimag7,
    input signed [W-1:0] Areal8,  input signed [W-1:0] Aimag8,
    input signed [W-1:0] Areal9,  input signed [W-1:0] Aimag9,
    input signed [W-1:0] Areal10, input signed [W-1:0] Aimag10,
    input signed [W-1:0] Areal11, input signed [W-1:0] Aimag11,
    input signed [W-1:0] Areal12, input signed [W-1:0] Aimag12,
    input signed [W-1:0] Areal13, input signed [W-1:0] Aimag13,
    input signed [W-1:0] Areal14, input signed [W-1:0] Aimag14,
    input signed [W-1:0] Areal15, input signed [W-1:0] Aimag15,

    output signed [W+5:0] a0_r,  output signed [W+5:0] a0_i,
    output signed [W+5:0] a1_r,  output signed [W+5:0] a1_i,
    output signed [W+5:0] a2_r,  output signed [W+5:0] a2_i,
    output signed [W+5:0] a3_r,  output signed [W+5:0] a3_i,
    output signed [W+5:0] a4_r,  output signed [W+5:0] a4_i,
    output signed [W+5:0] a5_r,  output signed [W+5:0] a5_i,
    output signed [W+5:0] a6_r,  output signed [W+5:0] a6_i,
    output signed [W+5:0] a7_r,  output signed [W+5:0] a7_i,
    output signed [W+5:0] a8_r,  output signed [W+5:0] a8_i,
    output signed [W+5:0] a9_r,  output signed [W+5:0] a9_i,
    output signed [W+5:0] a10_r, output signed [W+5:0] a10_i,
    output signed [W+5:0] a11_r, output signed [W+5:0] a11_i,
    output signed [W+5:0] a12_r, output signed [W+5:0] a12_i,
    output signed [W+5:0] a13_r, output signed [W+5:0] a13_i,
    output signed [W+5:0] a14_r, output signed [W+5:0] a14_i,
    output signed [W+5:0] a15_r, output signed [W+5:0] a15_i,
    output signed [W+5:0] a16_r, output signed [W+5:0] a16_i,
    output signed [W+5:0] a17_r, output signed [W+5:0] a17_i,
    output signed [W+5:0] a18_r, output signed [W+5:0] a18_i,
    output signed [W+5:0] a19_r, output signed [W+5:0] a19_i,
    output signed [W+5:0] a20_r, output signed [W+5:0] a20_i,
    output signed [W+5:0] a21_r, output signed [W+5:0] a21_i,
    output signed [W+5:0] a22_r, output signed [W+5:0] a22_i,
    output signed [W+5:0] a23_r, output signed [W+5:0] a23_i,
    output signed [W+5:0] a24_r, output signed [W+5:0] a24_i,
    output signed [W+5:0] a25_r, output signed [W+5:0] a25_i,
    output signed [W+5:0] a26_r, output signed [W+5:0] a26_i,
    output signed [W+5:0] a27_r, output signed [W+5:0] a27_i,
    output signed [W+5:0] a28_r, output signed [W+5:0] a28_i,
    output signed [W+5:0] a29_r, output signed [W+5:0] a29_i,
    output signed [W+5:0] a30_r, output signed [W+5:0] a30_i,
    output signed [W+5:0] a31_r, output signed [W+5:0] a31_i,
    output signed [W+5:0] a32_r, output signed [W+5:0] a32_i,
    output signed [W+5:0] a33_r, output signed [W+5:0] a33_i,
    output signed [W+5:0] a34_r, output signed [W+5:0] a34_i,
    output signed [W+5:0] a35_r, output signed [W+5:0] a35_i,
    output signed [W+5:0] a36_r, output signed [W+5:0] a36_i,
    output signed [W+5:0] a37_r, output signed [W+5:0] a37_i,
    output signed [W+5:0] a38_r, output signed [W+5:0] a38_i,
    output signed [W+5:0] a39_r, output signed [W+5:0] a39_i,
    output signed [W+5:0] a40_r, output signed [W+5:0] a40_i,
    output signed [W+5:0] a41_r, output signed [W+5:0] a41_i,
    output signed [W+5:0] a42_r, output signed [W+5:0] a42_i,
    output signed [W+5:0] a43_r, output signed [W+5:0] a43_i,
    output signed [W+5:0] a44_r, output signed [W+5:0] a44_i,
    output signed [W+5:0] a45_r, output signed [W+5:0] a45_i,
    output signed [W+5:0] a46_r, output signed [W+5:0] a46_i,
    output signed [W+5:0] a47_r, output signed [W+5:0] a47_i
);
assign a0_r =
      Areal0 - Aimag0
    + Areal1 - Aimag1
    + Areal4 + Aimag4
    + Areal5 + Aimag5
    + Areal8 + Aimag8
    + Areal9 + Aimag9
    + Areal12 + Aimag12
    + Areal13 + Aimag13;

assign a0_i =
      Areal0 + Aimag0
    + Areal1 + Aimag1
    - Areal4 + Aimag4
    - Areal5 + Aimag5
    - Areal8 + Aimag8
    - Areal9 + Aimag9
    - Areal12 + Aimag12
    - Areal13 + Aimag13;

assign a1_r =
      Areal0 - Aimag0
    - Areal3 - Aimag3
    + Areal4 - Aimag4
    - Areal7 - Aimag7
    - Areal8 + Aimag8
    + Areal11 + Aimag11
    + Areal12 + Aimag12
    + Areal15 - Aimag15;

assign a1_i =
      Areal0 + Aimag0
    + Areal3 - Aimag3
    + Areal4 + Aimag4
    + Areal7 - Aimag7
    - Areal8 - Aimag8
    - Areal11 + Aimag11
    - Areal12 + Aimag12
    + Areal15 + Aimag15;

assign a2_r =
    - Areal1
    + Areal2
    + Aimag5
    - Aimag6
    - Aimag9
    + Aimag10
    + Aimag13
    - Aimag14;

assign a2_i =
    - Aimag1
    + Aimag2
    - Areal5
    + Areal6
    + Areal9
    - Areal10
    - Areal13
    + Areal14;

assign a3_r =
      Aimag0
    - Areal1
    + Areal2
    - Areal3
    - Aimag4
    - Areal5
    + Areal6
    + Areal7
    + Aimag8
    - Areal9
    + Areal10
    - Areal11
    - Areal12
    + Aimag13
    - Aimag14
    - Aimag15;

assign a3_i =
    - Areal0
    - Aimag1
    + Aimag2
    - Aimag3
    + Areal4
    - Aimag5
    + Aimag6
    + Aimag7
    - Areal8
    - Aimag9
    + Aimag10
    - Aimag11
    - Aimag12
    - Areal13
    + Areal14
    + Areal15;

assign a4_r =
      Areal0 - Aimag0
    - Areal1 + Aimag1
    - Areal4 - Aimag4
    + Areal5 + Aimag5
    - Areal8 - Aimag8
    + Areal9 + Aimag9
    + Areal12 + Aimag12
    - Areal13 - Aimag13;

assign a4_i =
      Areal0 + Aimag0
    - Areal1 - Aimag1
    + Areal4 - Aimag4
    - Areal5 + Aimag5
    + Areal8 - Aimag8
    - Areal9 + Aimag9
    - Areal12 + Aimag12
    + Areal13 - Aimag13;

assign a5_r =
      Areal2 + Aimag2
    - Areal3 + Aimag3
    + Areal6 + Aimag6
    - Areal7 + Aimag7
    - Areal10 - Aimag10
    + Areal11 - Aimag11
    - Areal14 + Aimag14
    - Areal15 - Aimag15;

assign a5_i =
    - Areal2 + Aimag2
    - Areal3 - Aimag3
    - Areal6 + Aimag6
    - Areal7 - Aimag7
    + Areal10 - Aimag10
    + Areal11 + Aimag11
    - Areal14 - Aimag14
    + Areal15 - Aimag15;

assign a10_r =
    - Areal0
    - Aimag0
    + Areal1
    + Aimag1
    - Areal4
    - Aimag4
    + Areal5
    + Aimag5
    + Areal8
    + Aimag8
    - Areal9
    - Aimag9
    + Areal12
    - Aimag12
    - Areal13
    + Aimag13;

assign a10_i =
      Areal0
    - Aimag0
    - Areal1
    + Aimag1
    + Areal4
    - Aimag4
    - Areal5
    + Aimag5
    - Areal8
    + Aimag8
    + Areal9
    - Aimag9
    + Areal12
    + Aimag12
    - Areal13
    - Aimag13;

assign a11_r =
      Areal0
    + Areal1
    + Aimag2
    - Areal3
    - Areal4
    - Areal5
    - Aimag6
    + Areal7
    + Areal8
    + Areal9
    - Aimag10
    + Areal11
    + Aimag12
    + Aimag13
    + Areal14
    + Aimag15;

assign a11_i =
      Aimag0
    + Aimag1
    - Areal2
    - Aimag3
    - Aimag4
    - Aimag5
    + Areal6
    + Aimag7
    + Aimag8
    + Aimag9
    + Areal10
    + Aimag11
    - Areal12
    - Areal13
    + Aimag14
    - Areal15;

assign a12_r =
      Areal1
    - Aimag1
    - Areal2
    + Aimag2
    - Areal5
    - Aimag5
    + Areal6
    + Aimag6
    - Areal9
    - Aimag9
    + Areal10
    + Aimag10
    + Areal13
    + Aimag13
    - Areal14
    - Aimag14;

assign a12_i =
      Areal1
    + Aimag1
    - Areal2
    - Aimag2
    + Areal5
    - Aimag5
    - Areal6
    + Aimag6
    + Areal9
    - Aimag9
    - Areal10
    + Aimag10
    - Areal13
    + Aimag13
    + Areal14
    - Aimag14;

assign a13_r =
      Areal1
    + Aimag1
    - Areal2
    - Aimag2
    + Areal5
    + Aimag5
    - Areal6
    - Aimag6
    + Areal9
    + Aimag9
    - Areal10
    - Aimag10
    + Areal13
    - Aimag13
    - Areal14
    + Aimag14;

assign a13_i =
    - Areal1
    + Aimag1
    + Areal2
    - Aimag2
    - Areal5
    + Aimag5
    + Areal6
    - Aimag6
    - Areal9
    + Aimag9
    + Areal10
    - Aimag10
    + Areal13
    + Aimag13
    - Areal14
    - Aimag14;

assign a14_r =
    - Aimag0
    - Areal1
    + Areal2
    - Areal3
    + Areal4
    + Aimag5
    - Aimag6
    - Aimag7
    + Areal8
    - Aimag9
    + Aimag10
    - Aimag11
    + Areal12
    + Aimag13
    - Aimag14
    - Aimag15;

assign a14_i =
      Areal0
    - Aimag1
    + Aimag2
    - Aimag3
    + Aimag4
    - Areal5
    + Areal6
    + Areal7
    + Aimag8
    + Areal9
    - Areal10
    + Areal11
    + Aimag12
    - Areal13
    + Areal14
    + Areal15;

assign a15_r =
    - Areal2
    - Aimag2
    + Areal3
    - Aimag3
    + Areal6
    + Aimag6
    - Areal7
    + Aimag7
    + Areal10
    + Aimag10
    - Areal11
    + Aimag11
    - Areal14
    + Aimag14
    - Areal15
    - Aimag15;

assign a15_i =
      Areal2
    - Aimag2
    + Areal3
    + Aimag3
    - Areal6
    + Aimag6
    - Areal7
    - Aimag7
    - Areal10
    + Aimag10
    - Areal11
    - Aimag11
    - Areal14
    - Aimag14
    + Areal15
    - Aimag15;
assign a16_r =
    - Areal0
    - Aimag1
    - Aimag2
    + Aimag3
    - Areal4
    + Aimag5
    + Aimag6
    + Aimag7
    - Areal8
    - Aimag9
    - Aimag10
    + Aimag11
    + Aimag12
    + Areal13
    + Areal14
    + Areal15;

assign a16_i =
    - Aimag0
    + Areal1
    + Areal2
    - Areal3
    - Aimag4
    - Areal5
    - Areal6
    - Areal7
    - Aimag8
    + Areal9
    + Areal10
    - Areal11
    - Areal12
    + Aimag13
    + Aimag14
    + Aimag15;


assign a17_r =
      Areal0 - Aimag0
    + Areal1 - Aimag1
    + Areal4 - Aimag4
    + Areal5 - Aimag5
    + Areal8 - Aimag8
    + Areal9 - Aimag9
    - Areal12 - Aimag12
    - Areal13 - Aimag13;

assign a17_i =
      Areal0 + Aimag0
    + Areal1 + Aimag1
    + Areal4 + Aimag4
    + Areal5 + Aimag5
    + Areal8 + Aimag8
    + Areal9 + Aimag9
    + Areal12 - Aimag12
    + Areal13 - Aimag13;


assign a18_r =
    - Aimag0
    - Aimag1
    - Areal2
    - Aimag3
    - Aimag4
    - Aimag5
    - Areal6
    - Aimag7
    - Aimag8
    - Aimag9
    + Areal10
    + Aimag11
    - Areal12
    - Areal13
    - Aimag14
    + Areal15;

assign a18_i =
      Areal0
    + Areal1
    - Aimag2
    + Areal3
    + Areal4
    + Areal5
    - Aimag6
    + Areal7
    + Areal8
    + Areal9
    + Aimag10
    - Areal11
    - Aimag12
    - Aimag13
    + Areal14
    + Aimag15;


assign a19_r =
      Areal2
    + Aimag2
    + Areal3
    - Aimag3
    + Areal6
    + Aimag6
    + Areal7
    - Aimag7
    + Areal10
    + Aimag10
    + Areal11
    - Aimag11
    + Areal14
    - Aimag14
    - Areal15
    - Aimag15;

assign a19_i =
    - Areal2
    + Aimag2
    + Areal3
    + Aimag3
    - Areal6
    + Aimag6
    + Areal7
    + Aimag7
    - Areal10
    + Aimag10
    + Areal11
    + Aimag11
    + Areal14
    + Aimag14
    + Areal15
    - Aimag15;


assign a20_r =
      Areal1
    - Aimag1
    - Areal2
    + Aimag2
    + Areal5
    - Aimag5
    - Areal6
    + Aimag6
    - Areal9
    + Aimag9
    + Areal10
    - Aimag10
    + Areal13
    + Aimag13
    - Areal14
    - Aimag14;

assign a20_i =
      Areal1
    + Aimag1
    - Areal2
    - Aimag2
    + Areal5
    + Aimag5
    - Areal6
    - Aimag6
    - Areal9
    - Aimag9
    + Areal10
    + Aimag10
    - Areal13
    + Aimag13
    + Areal14
    - Aimag14;


assign a21_r =
    - Aimag0
    + Aimag1
    - Areal2
    + Aimag3
    + Aimag4
    - Aimag5
    + Areal6
    - Aimag7
    + Aimag8
    - Aimag9
    - Areal10
    + Aimag11
    - Areal12
    + Areal13
    - Aimag14
    - Areal15;

assign a21_i =
      Areal0
    - Areal1
    - Aimag2
    - Areal3
    - Areal4
    + Areal5
    + Aimag6
    + Areal7
    - Areal8
    + Areal9
    - Aimag10
    - Areal11
    - Aimag12
    + Aimag13
    + Areal14
    - Aimag15;
    
assign a22_r =
    - Areal0
    + Aimag0
    - Areal3
    - Aimag3
    + Areal4
    + Aimag4
    - Areal7
    + Aimag7
    + Areal8
    + Aimag8
    - Areal11
    + Aimag11
    - Areal12
    - Aimag12
    + Areal15
    - Aimag15;

assign a22_i =
    - Areal0
    - Aimag0
    + Areal3
    - Aimag3
    - Areal4
    + Aimag4
    - Areal7
    - Aimag7
    - Areal8
    + Aimag8
    - Areal11
    - Aimag11
    + Areal12
    - Aimag12
    + Areal15
    + Aimag15;


assign a23_r =
    - Areal2
    + Aimag2
    + Areal3
    + Aimag3
    + Areal6
    + Aimag6
    + Areal7
    - Aimag7
    + Areal10
    + Aimag10
    + Areal11
    - Aimag11
    - Areal14
    - Aimag14
    - Areal15
    + Aimag15;

assign a23_i =
    - Areal2
    - Aimag2
    - Areal3
    + Aimag3
    - Areal6
    + Aimag6
    + Areal7
    + Aimag7
    - Areal10
    + Aimag10
    + Areal11
    + Aimag11
    + Areal14
    - Aimag14
    - Areal15
    - Aimag15;


assign a24_r =
    - Areal0
    + Areal1
    + Aimag2
    - Areal3
    + Aimag4
    - Aimag5
    + Areal6
    + Aimag7
    + Aimag8
    - Aimag9
    - Areal10
    - Aimag11
    - Aimag12
    + Aimag13
    + Areal14
    + Aimag15;

assign a24_i =
    - Aimag0
    + Aimag1
    - Areal2
    - Aimag3
    - Areal4
    + Areal5
    + Aimag6
    - Areal7
    - Areal8
    + Areal9
    - Aimag10
    + Areal11
    + Areal12
    - Areal13
    + Aimag14
    - Areal15;


assign a25_r =
      Areal2
    + Aimag2
    + Areal3
    - Aimag3
    - Areal6
    + Aimag6
    + Areal7
    + Aimag7
    + Areal10
    - Aimag10
    - Areal11
    - Aimag11
    + Areal14
    - Aimag14
    - Areal15
    - Aimag15;

assign a25_i =
    - Areal2
    + Aimag2
    + Areal3
    + Aimag3
    - Areal6
    - Aimag6
    - Areal7
    + Aimag7
    + Areal10
    + Aimag10
    + Areal11
    - Aimag11
    + Areal14
    + Aimag14
    + Areal15
    - Aimag15;


assign a26_r =
      Areal1
    - Aimag1
    + Areal2
    - Aimag2
    - Areal5
    + Aimag5
    - Areal6
    + Aimag6
    + Areal9
    - Aimag9
    + Areal10
    - Aimag10
    + Areal13
    + Aimag13
    + Areal14
    + Aimag14;

assign a26_i =
      Areal1
    + Aimag1
    + Areal2
    + Aimag2
    - Areal5
    - Aimag5
    - Areal6
    - Aimag6
    + Areal9
    + Aimag9
    + Areal10
    + Aimag10
    - Areal13
    + Aimag13
    - Areal14
    + Aimag14;


assign a27_r =
      Aimag0
    + Aimag1
    + Areal2
    - Aimag3
    - Areal4
    - Areal5
    + Aimag6
    + Areal7
    - Areal8
    - Areal9
    - Aimag10
    - Areal11
    - Areal12
    - Areal13
    - Aimag14
    - Areal15;

assign a27_i =
    - Areal0
    - Areal1
    + Aimag2
    + Areal3
    - Aimag4
    - Aimag5
    - Areal6
    + Aimag7
    - Aimag8
    - Aimag9
    + Areal10
    - Aimag11
    - Aimag12
    - Aimag13
    + Areal14
    - Aimag15;
    
assign a28_r =
    - Areal0
    - Aimag0
    - Areal1
    - Aimag1
    - Areal4
    + Aimag4
    - Areal5
    + Aimag5
    + Areal8
    - Aimag8
    + Areal9
    - Aimag9
    - Areal12
    + Aimag12
    - Areal13
    + Aimag13;

assign a28_i =
      Areal0
    - Aimag0
    + Areal1
    - Aimag1
    - Areal4
    - Aimag4
    - Areal5
    - Aimag5
    + Areal8
    + Aimag8
    + Areal9
    + Aimag9
    - Areal12
    - Aimag12
    - Areal13
    - Aimag13;


assign a29_r =
      Areal0
    - Aimag0
    + Areal3
    + Aimag3
    - Areal4
    + Aimag4
    - Areal7
    - Aimag7
    + Areal8
    - Aimag8
    + Areal11
    + Aimag11
    + Areal12
    + Aimag12
    - Areal15
    + Aimag15;

assign a29_i =
      Areal0
    + Aimag0
    - Areal3
    + Aimag3
    - Areal4
    - Aimag4
    + Areal7
    - Aimag7
    + Areal8
    + Aimag8
    - Areal11
    + Aimag11
    - Areal12
    + Aimag12
    - Areal15
    - Aimag15;


assign a30_r =
      Areal1
    - Aimag1
    + Areal2
    - Aimag2
    - Areal5
    + Aimag5
    - Areal6
    + Aimag6
    - Areal9
    + Aimag9
    - Areal10
    + Aimag10
    - Areal13
    - Aimag13
    - Areal14
    - Aimag14;

assign a30_i =
      Areal1
    + Aimag1
    + Areal2
    + Aimag2
    - Areal5
    - Aimag5
    - Areal6
    - Aimag6
    - Areal9
    - Aimag9
    - Areal10
    - Aimag10
    + Areal13
    - Aimag13
    + Areal14
    - Aimag14;


assign a31_r =
      Areal0
    - Areal1
    + Aimag2
    + Areal3
    + Areal4
    - Areal5
    + Aimag6
    + Areal7
    - Areal8
    + Areal9
    + Aimag10
    + Areal11
    + Aimag12
    - Aimag13
    + Areal14
    - Aimag15;

assign a31_i =
      Aimag0
    - Aimag1
    - Areal2
    + Aimag3
    + Aimag4
    - Aimag5
    - Areal6
    + Aimag7
    - Aimag8
    + Aimag9
    - Areal10
    + Aimag11
    - Areal12
    + Areal13
    + Aimag14
    + Areal15;


assign a32_r =
      Areal2
    - Aimag2
    + Areal3
    + Aimag3
    - Areal6
    - Aimag6
    + Areal7
    - Aimag7
    + Areal10
    + Aimag10
    - Areal11
    + Aimag11
    - Areal14
    - Aimag14
    + Areal15
    - Aimag15;

assign a32_i =
      Areal2
    + Aimag2
    - Areal3
    + Aimag3
    + Areal6
    - Aimag6
    + Areal7
    + Aimag7
    - Areal10
    + Aimag10
    - Areal11
    - Aimag11
    + Areal14
    - Aimag14
    + Areal15
    + Aimag15;


assign a33_r =
      Areal0
    - Aimag1
    + Aimag2
    + Aimag3
    - Areal4
    - Aimag5
    + Aimag6
    - Aimag7
    - Areal8
    + Aimag9
    - Aimag10
    - Aimag11
    - Aimag12
    + Areal13
    - Areal14
    + Areal15;
    
assign a33_i =
      Aimag0
    + Areal1
    - Areal2
    - Areal3
    - Aimag4
    + Areal5
    - Areal6
    + Areal7
    - Aimag8
    - Areal9
    + Areal10
    + Areal11
    + Areal12
    + Aimag13
    - Aimag14
    + Aimag15;

assign a34_r =
      Aimag0
    - Aimag1
    - Areal2
    - Aimag3
    - Areal4
    + Areal5
    - Aimag6
    + Areal7
    + Areal8
    - Areal9
    - Aimag10
    + Areal11
    + Areal12
    - Areal13
    - Aimag14
    + Areal15;

assign a34_i =
    - Areal0
    + Areal1
    - Aimag2
    + Areal3
    - Aimag4
    + Aimag5
    + Areal6
    + Aimag7
    + Aimag8
    - Aimag9
    + Areal10
    + Aimag11
    + Aimag12
    - Aimag13
    + Areal14
    + Aimag15;


assign a35_r =
      Areal2
    + Aimag2
    + Areal3
    - Aimag3
    - Areal6
    - Aimag6
    - Areal7
    + Aimag7
    + Areal10
    + Aimag10
    + Areal11
    - Aimag11
    - Areal14
    + Aimag14
    + Areal15
    + Aimag15;

assign a35_i =
    - Areal2
    + Aimag2
    + Areal3
    + Aimag3
    + Areal6
    - Aimag6
    - Areal7
    - Aimag7
    - Areal10
    + Aimag10
    + Areal11
    + Aimag11
    - Areal14
    - Aimag14
    - Areal15
    + Aimag15;


assign a36_r =
    - Areal1
    + Aimag1
    - Areal2
    + Aimag2
    - Areal5
    - Aimag5
    - Areal6
    - Aimag6
    + Areal9
    + Aimag9
    + Areal10
    + Aimag10
    + Areal13
    + Aimag13
    + Areal14
    + Aimag14;

assign a36_i =
    - Areal1
    - Aimag1
    - Areal2
    - Aimag2
    + Areal5
    - Aimag5
    + Areal6
    - Aimag6
    - Areal9
    + Aimag9
    - Areal10
    + Aimag10
    - Areal13
    + Aimag13
    - Areal14
    + Aimag14;


assign a37_r =
      Areal0
    + Aimag1
    + Aimag2
    + Aimag3
    - Aimag4
    - Areal5
    - Areal6
    + Areal7
    - Aimag8
    + Areal9
    + Areal10
    + Areal11
    + Aimag12
    + Areal13
    + Areal14
    - Areal15;

assign a37_i =
      Aimag0
    - Areal1
    - Areal2
    - Areal3
    + Areal4
    - Aimag5
    - Aimag6
    + Aimag7
    + Areal8
    + Aimag9
    + Aimag10
    + Aimag11
    - Areal12
    + Aimag13
    + Aimag14
    - Aimag15;


assign a38_r =
      Areal1
    + Aimag1
    + Areal2
    + Aimag2
    - Areal5
    + Aimag5
    - Areal6
    + Aimag6
    - Areal9
    + Aimag9
    - Areal10
    + Aimag10
    - Areal13
    + Aimag13
    - Areal14
    + Aimag14;

assign a38_i =
    - Areal1
    + Aimag1
    - Areal2
    + Aimag2
    - Areal5
    - Aimag5
    - Areal6
    - Aimag6
    - Areal9
    - Aimag9
    - Areal10
    - Aimag10
    - Areal13
    - Aimag13
    - Areal14
    - Aimag14;


assign a39_r =
    - Areal0
    + Aimag1
    + Aimag2
    + Aimag3
    - Areal4
    - Aimag5
    - Aimag6
    + Aimag7
    + Areal8
    - Aimag9
    - Aimag10
    - Aimag11
    - Aimag12
    + Areal13
    + Areal14
    - Areal15;

assign a39_i =
    - Aimag0
    - Areal1
    - Areal2
    - Areal3
    - Aimag4
    + Areal5
    + Areal6
    - Areal7
    + Aimag8
    + Areal9
    + Areal10
    + Areal11
    + Areal12
    + Aimag13
    + Aimag14
    - Aimag15;
 
 assign a40_r =
    - Areal0
    + Aimag0
    - Areal1
    + Aimag1
    + Areal4
    - Aimag4
    + Areal5
    - Aimag5
    - Areal8
    + Aimag8
    - Areal9
    + Aimag9
    - Areal12
    - Aimag12
    - Areal13
    - Aimag13;

assign a40_i =
    - Areal0
    - Aimag0
    - Areal1
    - Aimag1
    + Areal4
    + Aimag4
    + Areal5
    + Aimag5
    - Areal8
    - Aimag8
    - Areal9
    - Aimag9
    + Areal12
    - Aimag12
    + Areal13
    - Aimag13;


assign a41_r =
      Areal0
    + Aimag0
    - Areal3
    + Aimag3
    - Areal4
    - Aimag4
    + Areal7
    - Aimag7
    - Areal8
    - Aimag8
    + Areal11
    - Aimag11
    + Areal12
    - Aimag12
    + Areal15
    + Aimag15;

assign a41_i =
    - Areal0
    + Aimag0
    - Areal3
    - Aimag3
    + Areal4
    - Aimag4
    + Areal7
    + Aimag7
    + Areal8
    - Aimag8
    + Areal11
    + Aimag11
    + Areal12
    + Aimag12
    - Areal15
    + Aimag15;


assign a42_r =
      Areal0
    - Aimag0
    - Areal3
    - Aimag3
    + Areal4
    + Aimag4
    + Areal7
    - Aimag7
    + Areal8
    + Aimag8
    + Areal11
    - Aimag11
    + Areal12
    + Aimag12
    + Areal15
    - Aimag15;

assign a42_i =
      Areal0
    + Aimag0
    + Areal3
    - Aimag3
    - Areal4
    + Aimag4
    + Areal7
    + Aimag7
    - Areal8
    + Aimag8
    + Areal11
    + Aimag11
    - Areal12
    + Aimag12
    + Areal15
    + Aimag15;


assign a43_r =
    - Aimag0
    + Areal1
    - Areal2
    - Areal3
    + Areal4
    - Aimag5
    + Aimag6
    - Aimag7
    - Areal8
    - Aimag9
    + Aimag10
    + Aimag11
    - Areal12
    + Aimag13
    - Aimag14
    + Aimag15;

assign a43_i =
      Areal0
    + Aimag1
    - Aimag2
    - Aimag3
    + Aimag4
    + Areal5
    - Areal6
    + Areal7
    - Aimag8
    + Areal9
    - Areal10
    - Areal11
    - Aimag12
    - Areal13
    + Areal14
    - Areal15;


assign a44_r =
      Areal2
    + Aimag2
    - Areal3
    + Aimag3
    - Areal6
    + Aimag6
    - Areal7
    - Aimag7
    - Areal10
    + Aimag10
    - Areal11
    - Aimag11
    - Areal14
    + Aimag14
    - Areal15
    - Aimag15;

assign a44_i =
    - Areal2
    + Aimag2
    - Areal3
    - Aimag3
    - Areal6
    - Aimag6
    + Areal7
    - Aimag7
    - Areal10
    - Aimag10
    + Areal11
    - Aimag11
    - Areal14
    - Aimag14
    + Areal15
    - Aimag15;


assign a45_r =
    - Areal0
    - Aimag0
    + Areal1
    + Aimag1
    + Areal4
    - Aimag4
    - Areal5
    + Aimag5
    - Areal8
    + Aimag8
    + Areal9
    - Aimag9
    - Areal12
    + Aimag12
    + Areal13
    - Aimag13;
    
assign a45_i =
      Areal0
    - Aimag0
    - Areal1
    + Aimag1
    + Areal4
    + Aimag4
    - Areal5
    - Aimag5
    - Areal8
    - Aimag8
    + Areal9
    + Aimag9
    - Areal12
    - Aimag12
    + Areal13
    + Aimag13;


assign a46_r =
      Areal0
    + Aimag0
    + Areal3
    - Aimag3
    + Areal4
    + Aimag4
    + Areal7
    - Aimag7
    + Areal8
    + Aimag8
    + Areal11
    - Aimag11
    + Areal12
    - Aimag12
    - Areal15
    - Aimag15;

assign a46_i =
    - Areal0
    + Aimag0
    + Areal3
    + Aimag3
    - Areal4
    + Aimag4
    + Areal7
    + Aimag7
    - Areal8
    + Aimag8
    + Areal11
    + Aimag11
    + Areal12
    + Aimag12
    + Areal15
    - Aimag15;


assign a47_r =
      Areal0
    - Aimag1
    - Aimag2
    + Aimag3
    - Aimag4
    + Areal5
    + Areal6
    + Areal7
    + Aimag8
    + Areal9
    + Areal10
    - Areal11
    - Aimag12
    + Areal13
    + Areal14
    + Areal15;

assign a47_i =
      Aimag0
    + Areal1
    + Areal2
    - Areal3
    + Areal4
    + Aimag5
    + Aimag6
    + Aimag7
    - Areal8
    + Aimag9
    + Aimag10
    - Aimag11
    + Areal12
    + Aimag13
    + Aimag14
    + Aimag15;   
endmodule