module multiplier_array
#(
    parameter W = 16
)
(
    //=========================
    // A operands
    //=========================

    input signed [W+5:0] a0_r,  input signed [W+5:0] a0_i,
    input signed [W+5:0] a1_r,  input signed [W+5:0] a1_i,
    input signed [W+5:0] a2_r,  input signed [W+5:0] a2_i,
    input signed [W+5:0] a3_r,  input signed [W+5:0] a3_i,
    input signed [W+5:0] a4_r,  input signed [W+5:0] a4_i,
    input signed [W+5:0] a5_r,  input signed [W+5:0] a5_i,
    input signed [W+5:0] a6_r,  input signed [W+5:0] a6_i,
    input signed [W+5:0] a7_r,  input signed [W+5:0] a7_i,
    input signed [W+5:0] a8_r,  input signed [W+5:0] a8_i,
    input signed [W+5:0] a9_r,  input signed [W+5:0] a9_i,
    input signed [W+5:0] a10_r, input signed [W+5:0] a10_i,
    input signed [W+5:0] a11_r, input signed [W+5:0] a11_i,
    input signed [W+5:0] a12_r, input signed [W+5:0] a12_i,
    input signed [W+5:0] a13_r, input signed [W+5:0] a13_i,
    input signed [W+5:0] a14_r, input signed [W+5:0] a14_i,
    input signed [W+5:0] a15_r, input signed [W+5:0] a15_i,
    input signed [W+5:0] a16_r, input signed [W+5:0] a16_i,
    input signed [W+5:0] a17_r, input signed [W+5:0] a17_i,
    input signed [W+5:0] a18_r, input signed [W+5:0] a18_i,
    input signed [W+5:0] a19_r, input signed [W+5:0] a19_i,
    input signed [W+5:0] a20_r, input signed [W+5:0] a20_i,
    input signed [W+5:0] a21_r, input signed [W+5:0] a21_i,
    input signed [W+5:0] a22_r, input signed [W+5:0] a22_i,
    input signed [W+5:0] a23_r, input signed [W+5:0] a23_i,
    input signed [W+5:0] a24_r, input signed [W+5:0] a24_i,
    input signed [W+5:0] a25_r, input signed [W+5:0] a25_i,
    input signed [W+5:0] a26_r, input signed [W+5:0] a26_i,
    input signed [W+5:0] a27_r, input signed [W+5:0] a27_i,
    input signed [W+5:0] a28_r, input signed [W+5:0] a28_i,
    input signed [W+5:0] a29_r, input signed [W+5:0] a29_i,
    input signed [W+5:0] a30_r, input signed [W+5:0] a30_i,
    input signed [W+5:0] a31_r, input signed [W+5:0] a31_i,
    input signed [W+5:0] a32_r, input signed [W+5:0] a32_i,
    input signed [W+5:0] a33_r, input signed [W+5:0] a33_i,
    input signed [W+5:0] a34_r, input signed [W+5:0] a34_i,
    input signed [W+5:0] a35_r, input signed [W+5:0] a35_i,
    input signed [W+5:0] a36_r, input signed [W+5:0] a36_i,
    input signed [W+5:0] a37_r, input signed [W+5:0] a37_i,
    input signed [W+5:0] a38_r, input signed [W+5:0] a38_i,
    input signed [W+5:0] a39_r, input signed [W+5:0] a39_i,
    input signed [W+5:0] a40_r, input signed [W+5:0] a40_i,
    input signed [W+5:0] a41_r, input signed [W+5:0] a41_i,
    input signed [W+5:0] a42_r, input signed [W+5:0] a42_i,
    input signed [W+5:0] a43_r, input signed [W+5:0] a43_i,
    input signed [W+5:0] a44_r, input signed [W+5:0] a44_i,
    input signed [W+5:0] a45_r, input signed [W+5:0] a45_i,
    input signed [W+5:0] a46_r, input signed [W+5:0] a46_i,
    input signed [W+5:0] a47_r, input signed [W+5:0] a47_i,

    //=========================
    // B operands
    //=========================

    input signed [W+5:0] b0_r,  input signed [W+5:0] b0_i,
    input signed [W+5:0] b1_r,  input signed [W+5:0] b1_i,
    input signed [W+5:0] b2_r,  input signed [W+5:0] b2_i,
    input signed [W+5:0] b3_r,  input signed [W+5:0] b3_i,
    input signed [W+5:0] b4_r,  input signed [W+5:0] b4_i,
    input signed [W+5:0] b5_r,  input signed [W+5:0] b5_i,
    input signed [W+5:0] b6_r,  input signed [W+5:0] b6_i,
    input signed [W+5:0] b7_r,  input signed [W+5:0] b7_i,
    input signed [W+5:0] b8_r,  input signed [W+5:0] b8_i,
    input signed [W+5:0] b9_r,  input signed [W+5:0] b9_i,
    input signed [W+5:0] b10_r, input signed [W+5:0] b10_i,
    input signed [W+5:0] b11_r, input signed [W+5:0] b11_i,
    input signed [W+5:0] b12_r, input signed [W+5:0] b12_i,
    input signed [W+5:0] b13_r, input signed [W+5:0] b13_i,
    input signed [W+5:0] b14_r, input signed [W+5:0] b14_i,
    input signed [W+5:0] b15_r, input signed [W+5:0] b15_i,
    input signed [W+5:0] b16_r, input signed [W+5:0] b16_i,
    input signed [W+5:0] b17_r, input signed [W+5:0] b17_i,
    input signed [W+5:0] b18_r, input signed [W+5:0] b18_i,
    input signed [W+5:0] b19_r, input signed [W+5:0] b19_i,
    input signed [W+5:0] b20_r, input signed [W+5:0] b20_i,
    input signed [W+5:0] b21_r, input signed [W+5:0] b21_i,
    input signed [W+5:0] b22_r, input signed [W+5:0] b22_i,
    input signed [W+5:0] b23_r, input signed [W+5:0] b23_i,
    input signed [W+5:0] b24_r, input signed [W+5:0] b24_i,
    input signed [W+5:0] b25_r, input signed [W+5:0] b25_i,
    input signed [W+5:0] b26_r, input signed [W+5:0] b26_i,
    input signed [W+5:0] b27_r, input signed [W+5:0] b27_i,
    input signed [W+5:0] b28_r, input signed [W+5:0] b28_i,
    input signed [W+5:0] b29_r, input signed [W+5:0] b29_i,
    input signed [W+5:0] b30_r, input signed [W+5:0] b30_i,
    input signed [W+5:0] b31_r, input signed [W+5:0] b31_i,
    input signed [W+5:0] b32_r, input signed [W+5:0] b32_i,
    input signed [W+5:0] b33_r, input signed [W+5:0] b33_i,
    input signed [W+5:0] b34_r, input signed [W+5:0] b34_i,
    input signed [W+5:0] b35_r, input signed [W+5:0] b35_i,
    input signed [W+5:0] b36_r, input signed [W+5:0] b36_i,
    input signed [W+5:0] b37_r, input signed [W+5:0] b37_i,
    input signed [W+5:0] b38_r, input signed [W+5:0] b38_i,
    input signed [W+5:0] b39_r, input signed [W+5:0] b39_i,
    input signed [W+5:0] b40_r, input signed [W+5:0] b40_i,
    input signed [W+5:0] b41_r, input signed [W+5:0] b41_i,
    input signed [W+5:0] b42_r, input signed [W+5:0] b42_i,
    input signed [W+5:0] b43_r, input signed [W+5:0] b43_i,
    input signed [W+5:0] b44_r, input signed [W+5:0] b44_i,
    input signed [W+5:0] b45_r, input signed [W+5:0] b45_i,
    input signed [W+5:0] b46_r, input signed [W+5:0] b46_i,
    input signed [W+5:0] b47_r, input signed [W+5:0] b47_i,

    //=========================
    // Products
    //=========================

    output signed [2*(W+6):0] t0_r,  output signed [2*(W+6):0] t0_i,
    output signed [2*(W+6):0] t1_r,  output signed [2*(W+6):0] t1_i,
    output signed [2*(W+6):0] t2_r,  output signed [2*(W+6):0] t2_i,
    output signed [2*(W+6):0] t3_r,  output signed [2*(W+6):0] t3_i,
    output signed [2*(W+6):0] t4_r,  output signed [2*(W+6):0] t4_i,
    output signed [2*(W+6):0] t5_r,  output signed [2*(W+6):0] t5_i,
    output signed [2*(W+6):0] t6_r,  output signed [2*(W+6):0] t6_i,
    output signed [2*(W+6):0] t7_r,  output signed [2*(W+6):0] t7_i,
    output signed [2*(W+6):0] t8_r,  output signed [2*(W+6):0] t8_i,
    output signed [2*(W+6):0] t9_r,  output signed [2*(W+6):0] t9_i,
    output signed [2*(W+6):0] t10_r, output signed [2*(W+6):0] t10_i,
    output signed [2*(W+6):0] t11_r, output signed [2*(W+6):0] t11_i,
    output signed [2*(W+6):0] t12_r, output signed [2*(W+6):0] t12_i,
    output signed [2*(W+6):0] t13_r, output signed [2*(W+6):0] t13_i,
    output signed [2*(W+6):0] t14_r, output signed [2*(W+6):0] t14_i,
    output signed [2*(W+6):0] t15_r, output signed [2*(W+6):0] t15_i,
    output signed [2*(W+6):0] t16_r, output signed [2*(W+6):0] t16_i,
    output signed [2*(W+6):0] t17_r, output signed [2*(W+6):0] t17_i,
    output signed [2*(W+6):0] t18_r, output signed [2*(W+6):0] t18_i,
    output signed [2*(W+6):0] t19_r, output signed [2*(W+6):0] t19_i,
    output signed [2*(W+6):0] t20_r, output signed [2*(W+6):0] t20_i,
    output signed [2*(W+6):0] t21_r, output signed [2*(W+6):0] t21_i,
    output signed [2*(W+6):0] t22_r, output signed [2*(W+6):0] t22_i,
    output signed [2*(W+6):0] t23_r, output signed [2*(W+6):0] t23_i,
    output signed [2*(W+6):0] t24_r, output signed [2*(W+6):0] t24_i,
    output signed [2*(W+6):0] t25_r, output signed [2*(W+6):0] t25_i,
    output signed [2*(W+6):0] t26_r, output signed [2*(W+6):0] t26_i,
    output signed [2*(W+6):0] t27_r, output signed [2*(W+6):0] t27_i,
    output signed [2*(W+6):0] t28_r, output signed [2*(W+6):0] t28_i,
    output signed [2*(W+6):0] t29_r, output signed [2*(W+6):0] t29_i,
    output signed [2*(W+6):0] t30_r, output signed [2*(W+6):0] t30_i,
    output signed [2*(W+6):0] t31_r, output signed [2*(W+6):0] t31_i,
    output signed [2*(W+6):0] t32_r, output signed [2*(W+6):0] t32_i,
    output signed [2*(W+6):0] t33_r, output signed [2*(W+6):0] t33_i,
    output signed [2*(W+6):0] t34_r, output signed [2*(W+6):0] t34_i,
    output signed [2*(W+6):0] t35_r, output signed [2*(W+6):0] t35_i,
    output signed [2*(W+6):0] t36_r, output signed [2*(W+6):0] t36_i,
    output signed [2*(W+6):0] t37_r, output signed [2*(W+6):0] t37_i,
    output signed [2*(W+6):0] t38_r, output signed [2*(W+6):0] t38_i,
    output signed [2*(W+6):0] t39_r, output signed [2*(W+6):0] t39_i,
    output signed [2*(W+6):0] t40_r, output signed [2*(W+6):0] t40_i,
    output signed [2*(W+6):0] t41_r, output signed [2*(W+6):0] t41_i,
    output signed [2*(W+6):0] t42_r, output signed [2*(W+6):0] t42_i,
    output signed [2*(W+6):0] t43_r, output signed [2*(W+6):0] t43_i,
    output signed [2*(W+6):0] t44_r, output signed [2*(W+6):0] t44_i,
    output signed [2*(W+6):0] t45_r, output signed [2*(W+6):0] t45_i,
    output signed [2*(W+6):0] t46_r, output signed [2*(W+6):0] t46_i,
    output signed [2*(W+6):0] t47_r, output signed [2*(W+6):0] t47_i
);
complex_multiplier #(W+6) M0 (
    .ar(a0_r), .ai(a0_i),
    .br(b0_r), .bi(b0_i),
    .pr(t0_r), .pi(t0_i)
);

complex_multiplier #(W+6) M1 (
    .ar(a1_r), .ai(a1_i),
    .br(b1_r), .bi(b1_i),
    .pr(t1_r), .pi(t1_i)
);

complex_multiplier #(W+6) M2 (
    .ar(a2_r), .ai(a2_i),
    .br(b2_r), .bi(b2_i),
    .pr(t2_r), .pi(t2_i)
);

complex_multiplier #(W+6) M3 (
    .ar(a3_r), .ai(a3_i),
    .br(b3_r), .bi(b3_i),
    .pr(t3_r), .pi(t3_i)
);

complex_multiplier #(W+6) M4 (
    .ar(a4_r), .ai(a4_i),
    .br(b4_r), .bi(b4_i),
    .pr(t4_r), .pi(t4_i)
);

complex_multiplier #(W+6) M5 (
    .ar(a5_r), .ai(a5_i),
    .br(b5_r), .bi(b5_i),
    .pr(t5_r), .pi(t5_i)
);

complex_multiplier #(W+6) M6 (
    .ar(a6_r), .ai(a6_i),
    .br(b6_r), .bi(b6_i),
    .pr(t6_r), .pi(t6_i)
);

complex_multiplier #(W+6) M7 (
    .ar(a7_r), .ai(a7_i),
    .br(b7_r), .bi(b7_i),
    .pr(t7_r), .pi(t7_i)
);

complex_multiplier #(W+6) M8 (
    .ar(a8_r), .ai(a8_i),
    .br(b8_r), .bi(b8_i),
    .pr(t8_r), .pi(t8_i)
);

complex_multiplier #(W+6) M9 (
    .ar(a9_r), .ai(a9_i),
    .br(b9_r), .bi(b9_i),
    .pr(t9_r), .pi(t9_i)
);
complex_multiplier #(W+6) M10 (
    .ar(a10_r), .ai(a10_i),
    .br(b10_r), .bi(b10_i),
    .pr(t10_r), .pi(t10_i)
);

complex_multiplier #(W+6) M11 (
    .ar(a11_r), .ai(a11_i),
    .br(b11_r), .bi(b11_i),
    .pr(t11_r), .pi(t11_i)
);

complex_multiplier #(W+6) M12 (
    .ar(a12_r), .ai(a12_i),
    .br(b12_r), .bi(b12_i),
    .pr(t12_r), .pi(t12_i)
);

complex_multiplier #(W+6) M13 (
    .ar(a13_r), .ai(a13_i),
    .br(b13_r), .bi(b13_i),
    .pr(t13_r), .pi(t13_i)
);

complex_multiplier #(W+6) M14 (
    .ar(a14_r), .ai(a14_i),
    .br(b14_r), .bi(b14_i),
    .pr(t14_r), .pi(t14_i)
);

complex_multiplier #(W+6) M15 (
    .ar(a15_r), .ai(a15_i),
    .br(b15_r), .bi(b15_i),
    .pr(t15_r), .pi(t15_i)
);

complex_multiplier #(W+6) M16 (
    .ar(a16_r), .ai(a16_i),
    .br(b16_r), .bi(b16_i),
    .pr(t16_r), .pi(t16_i)
);

complex_multiplier #(W+6) M17 (
    .ar(a17_r), .ai(a17_i),
    .br(b17_r), .bi(b17_i),
    .pr(t17_r), .pi(t17_i)
);

complex_multiplier #(W+6) M18 (
    .ar(a18_r), .ai(a18_i),
    .br(b18_r), .bi(b18_i),
    .pr(t18_r), .pi(t18_i)
);

complex_multiplier #(W+6) M19 (
    .ar(a19_r), .ai(a19_i),
    .br(b19_r), .bi(b19_i),
    .pr(t19_r), .pi(t19_i)
);
complex_multiplier #(W+6) M20 (
    .ar(a20_r), .ai(a20_i),
    .br(b20_r), .bi(b20_i),
    .pr(t20_r), .pi(t20_i)
);

complex_multiplier #(W+6) M21 (
    .ar(a21_r), .ai(a21_i),
    .br(b21_r), .bi(b21_i),
    .pr(t21_r), .pi(t21_i)
);

complex_multiplier #(W+6) M22 (
    .ar(a22_r), .ai(a22_i),
    .br(b22_r), .bi(b22_i),
    .pr(t22_r), .pi(t22_i)
);

complex_multiplier #(W+6) M23 (
    .ar(a23_r), .ai(a23_i),
    .br(b23_r), .bi(b23_i),
    .pr(t23_r), .pi(t23_i)
);

complex_multiplier #(W+6) M24 (
    .ar(a24_r), .ai(a24_i),
    .br(b24_r), .bi(b24_i),
    .pr(t24_r), .pi(t24_i)
);

complex_multiplier #(W+6) M25 (
    .ar(a25_r), .ai(a25_i),
    .br(b25_r), .bi(b25_i),
    .pr(t25_r), .pi(t25_i)
);

complex_multiplier #(W+6) M26 (
    .ar(a26_r), .ai(a26_i),
    .br(b26_r), .bi(b26_i),
    .pr(t26_r), .pi(t26_i)
);

complex_multiplier #(W+6) M27 (
    .ar(a27_r), .ai(a27_i),
    .br(b27_r), .bi(b27_i),
    .pr(t27_r), .pi(t27_i)
);

complex_multiplier #(W+6) M28 (
    .ar(a28_r), .ai(a28_i),
    .br(b28_r), .bi(b28_i),
    .pr(t28_r), .pi(t28_i)
);

complex_multiplier #(W+6) M29 (
    .ar(a29_r), .ai(a29_i),
    .br(b29_r), .bi(b29_i),
    .pr(t29_r), .pi(t29_i)
);
complex_multiplier #(W+6) M30 (
    .ar(a30_r), .ai(a30_i),
    .br(b30_r), .bi(b30_i),
    .pr(t30_r), .pi(t30_i)
);

complex_multiplier #(W+6) M31 (
    .ar(a31_r), .ai(a31_i),
    .br(b31_r), .bi(b31_i),
    .pr(t31_r), .pi(t31_i)
);

complex_multiplier #(W+6) M32 (
    .ar(a32_r), .ai(a32_i),
    .br(b32_r), .bi(b32_i),
    .pr(t32_r), .pi(t32_i)
);

complex_multiplier #(W+6) M33 (
    .ar(a33_r), .ai(a33_i),
    .br(b33_r), .bi(b33_i),
    .pr(t33_r), .pi(t33_i)
);

complex_multiplier #(W+6) M34 (
    .ar(a34_r), .ai(a34_i),
    .br(b34_r), .bi(b34_i),
    .pr(t34_r), .pi(t34_i)
);

complex_multiplier #(W+6) M35 (
    .ar(a35_r), .ai(a35_i),
    .br(b35_r), .bi(b35_i),
    .pr(t35_r), .pi(t35_i)
);

complex_multiplier #(W+6) M36 (
    .ar(a36_r), .ai(a36_i),
    .br(b36_r), .bi(b36_i),
    .pr(t36_r), .pi(t36_i)
);

complex_multiplier #(W+6) M37 (
    .ar(a37_r), .ai(a37_i),
    .br(b37_r), .bi(b37_i),
    .pr(t37_r), .pi(t37_i)
);

complex_multiplier #(W+6) M38 (
    .ar(a38_r), .ai(a38_i),
    .br(b38_r), .bi(b38_i),
    .pr(t38_r), .pi(t38_i)
);

complex_multiplier #(W+6) M39 (
    .ar(a39_r), .ai(a39_i),
    .br(b39_r), .bi(b39_i),
    .pr(t39_r), .pi(t39_i)
);
complex_multiplier #(W+6) M40 (
    .ar(a40_r), .ai(a40_i),
    .br(b40_r), .bi(b40_i),
    .pr(t40_r), .pi(t40_i)
);

complex_multiplier #(W+6) M41 (
    .ar(a41_r), .ai(a41_i),
    .br(b41_r), .bi(b41_i),
    .pr(t41_r), .pi(t41_i)
);

complex_multiplier #(W+6) M42 (
    .ar(a42_r), .ai(a42_i),
    .br(b42_r), .bi(b42_i),
    .pr(t42_r), .pi(t42_i)
);

complex_multiplier #(W+6) M43 (
    .ar(a43_r), .ai(a43_i),
    .br(b43_r), .bi(b43_i),
    .pr(t43_r), .pi(t43_i)
);

complex_multiplier #(W+6) M44 (
    .ar(a44_r), .ai(a44_i),
    .br(b44_r), .bi(b44_i),
    .pr(t44_r), .pi(t44_i)
);

complex_multiplier #(W+6) M45 (
    .ar(a45_r), .ai(a45_i),
    .br(b45_r), .bi(b45_i),
    .pr(t45_r), .pi(t45_i)
);

complex_multiplier #(W+6) M46 (
    .ar(a46_r), .ai(a46_i),
    .br(b46_r), .bi(b46_i),
    .pr(t46_r), .pi(t46_i)
);

complex_multiplier #(W+6) M47 (
    .ar(a47_r), .ai(a47_i),
    .br(b47_r), .bi(b47_i),
    .pr(t47_r), .pi(t47_i)
);

endmodule