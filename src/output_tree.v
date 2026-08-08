module output_tree
#(
    parameter W = 16
)
(

    //====================================================
    // Inputs from multiplier array
    //====================================================

    input signed [2*(W+6):0] t0_r,
    input signed [2*(W+6):0] t0_i,
    input signed [2*(W+6):0] t1_r,
    input signed [2*(W+6):0] t1_i,
    input signed [2*(W+6):0] t2_r,
    input signed [2*(W+6):0] t2_i,
    input signed [2*(W+6):0] t3_r,
    input signed [2*(W+6):0] t3_i,
    input signed [2*(W+6):0] t4_r,
    input signed [2*(W+6):0] t4_i,
    input signed [2*(W+6):0] t5_r,
    input signed [2*(W+6):0] t5_i,
    input signed [2*(W+6):0] t6_r,
    input signed [2*(W+6):0] t6_i,
    input signed [2*(W+6):0] t7_r,
    input signed [2*(W+6):0] t7_i,
    input signed [2*(W+6):0] t8_r,
    input signed [2*(W+6):0] t8_i,
    input signed [2*(W+6):0] t9_r,
    input signed [2*(W+6):0] t9_i,
    input signed [2*(W+6):0] t10_r,
    input signed [2*(W+6):0] t10_i,
    input signed [2*(W+6):0] t11_r,
    input signed [2*(W+6):0] t11_i,
    input signed [2*(W+6):0] t12_r,
    input signed [2*(W+6):0] t12_i,
    input signed [2*(W+6):0] t13_r,
    input signed [2*(W+6):0] t13_i,
    input signed [2*(W+6):0] t14_r,
    input signed [2*(W+6):0] t14_i,
    input signed [2*(W+6):0] t15_r,
    input signed [2*(W+6):0] t15_i,
    input signed [2*(W+6):0] t16_r,
    input signed [2*(W+6):0] t16_i,
    input signed [2*(W+6):0] t17_r,
    input signed [2*(W+6):0] t17_i,
    input signed [2*(W+6):0] t18_r,
    input signed [2*(W+6):0] t18_i,
    input signed [2*(W+6):0] t19_r,
    input signed [2*(W+6):0] t19_i,
    input signed [2*(W+6):0] t20_r,
    input signed [2*(W+6):0] t20_i,
    input signed [2*(W+6):0] t21_r,
    input signed [2*(W+6):0] t21_i,
    input signed [2*(W+6):0] t22_r,
    input signed [2*(W+6):0] t22_i,
    input signed [2*(W+6):0] t23_r,
    input signed [2*(W+6):0] t23_i,
    input signed [2*(W+6):0] t24_r,
    input signed [2*(W+6):0] t24_i,
    input signed [2*(W+6):0] t25_r,
    input signed [2*(W+6):0] t25_i,
    input signed [2*(W+6):0] t26_r,
    input signed [2*(W+6):0] t26_i,
    input signed [2*(W+6):0] t27_r,
    input signed [2*(W+6):0] t27_i,
    input signed [2*(W+6):0] t28_r,
    input signed [2*(W+6):0] t28_i,
    input signed [2*(W+6):0] t29_r,
    input signed [2*(W+6):0] t29_i,
    input signed [2*(W+6):0] t30_r,
    input signed [2*(W+6):0] t30_i,
    input signed [2*(W+6):0] t31_r,
    input signed [2*(W+6):0] t31_i,
    input signed [2*(W+6):0] t32_r,
    input signed [2*(W+6):0] t32_i,
    input signed [2*(W+6):0] t33_r,
    input signed [2*(W+6):0] t33_i,
    input signed [2*(W+6):0] t34_r,
    input signed [2*(W+6):0] t34_i,
    input signed [2*(W+6):0] t35_r,
    input signed [2*(W+6):0] t35_i,
    input signed [2*(W+6):0] t36_r,
    input signed [2*(W+6):0] t36_i,
    input signed [2*(W+6):0] t37_r,
    input signed [2*(W+6):0] t37_i,
    input signed [2*(W+6):0] t38_r,
    input signed [2*(W+6):0] t38_i,
    input signed [2*(W+6):0] t39_r,
    input signed [2*(W+6):0] t39_i,
    input signed [2*(W+6):0] t40_r,
    input signed [2*(W+6):0] t40_i,
    input signed [2*(W+6):0] t41_r,
    input signed [2*(W+6):0] t41_i,
    input signed [2*(W+6):0] t42_r,
    input signed [2*(W+6):0] t42_i,
    input signed [2*(W+6):0] t43_r,
    input signed [2*(W+6):0] t43_i,
    input signed [2*(W+6):0] t44_r,
    input signed [2*(W+6):0] t44_i,
    input signed [2*(W+6):0] t45_r,
    input signed [2*(W+6):0] t45_i,
    input signed [2*(W+6):0] t46_r,
    input signed [2*(W+6):0] t46_i,
    input signed [2*(W+6):0] t47_r,
    input signed [2*(W+6):0] t47_i,
    
        //====================================================
    // Outputs (4x4 complex result matrix)
    //====================================================

    output signed [2*(W+7):0] C1_r,
    output signed [2*(W+7):0] C1_i,

    output signed [2*(W+7):0] C2_r,
    output signed [2*(W+7):0] C2_i,

    output signed [2*(W+7):0] C3_r,
    output signed [2*(W+7):0] C3_i,

    output signed [2*(W+7):0] C4_r,
    output signed [2*(W+7):0] C4_i,

    output signed [2*(W+7):0] C5_r,
    output signed [2*(W+7):0] C5_i,

    output signed [2*(W+7):0] C6_r,
    output signed [2*(W+7):0] C6_i,

    output signed [2*(W+7):0] C7_r,
    output signed [2*(W+7):0] C7_i,

    output signed [2*(W+7):0] C8_r,
    output signed [2*(W+7):0] C8_i,

    output signed [2*(W+7):0] C9_r,
    output signed [2*(W+7):0] C9_i,

    output signed [2*(W+7):0] C10_r,
    output signed [2*(W+7):0] C10_i,

    output signed [2*(W+7):0] C11_r,
    output signed [2*(W+7):0] C11_i,

    output signed [2*(W+7):0] C12_r,
    output signed [2*(W+7):0] C12_i,

    output signed [2*(W+7):0] C13_r,
    output signed [2*(W+7):0] C13_i,

    output signed [2*(W+7):0] C14_r,
    output signed [2*(W+7):0] C14_i,

    output signed [2*(W+7):0] C15_r,
    output signed [2*(W+7):0] C15_i,

    output signed [2*(W+7):0] C16_r,
    output signed [2*(W+7):0] C16_i
);

assign C1_r =
    -t5_r
    +t8_r
    -t11_r
    +t14_r
    -t16_r
    -t18_r
    +t28_r
    +t34_r
    +t36_r
    -t38_r
    +t39_r
    -t42_r
    -t43_r
    -t44_r
    +t47_r
    -t0_i
    +t1_i
    -t9_i
    -t11_i
    +t15_i
    +t16_i
    -t17_i
    +t18_i
    +t24_i
    -t26_i
    -t27_i
    -t30_i
    +t32_i
    +t37_i
    +t39_i
    +t40_i
    +t46_i;

assign C1_i =
    -t5_i
    +t8_i
    -t11_i
    +t14_i
    -t16_i
    -t18_i
    +t28_i
    +t34_i
    +t36_i
    -t38_i
    +t39_i
    -t42_i
    -t43_i
    -t44_i
    +t47_i
    +t0_r
    -t1_r
    +t9_r
    +t11_r
    -t15_r
    -t16_r
    +t17_r
    -t18_r
    -t24_r
    +t26_r
    +t27_r
    +t30_r
    -t32_r
    -t37_r
    -t39_r
    -t40_r
    -t46_r;
    
    assign C2_r =
    +t2_r
    -t3_r
    +t5_r
    +t6_r
    -t8_r
    +t11_r
    -t12_r
    +t18_r
    +t20_r
    -t22_r
    -t28_r
    -t33_r
    -t34_r
    -t37_r
    +t44_r
    +t0_i
    +t3_i
    +t11_i
    -t13_i
    -t14_i
    -t15_i
    +t17_i
    -t18_i
    -t24_i
    +t27_i
    +t29_i
    -t32_i
    +t33_i
    -t40_i
    -t41_i
    +t43_i
    +t47_i;

assign C2_i =
    +t2_i
    -t3_i
    +t5_i
    +t6_i
    -t8_i
    +t11_i
    -t12_i
    +t18_i
    +t20_i
    -t22_i
    -t28_i
    -t33_i
    -t34_i
    -t37_i
    +t44_i
    -t0_r
    -t3_r
    -t11_r
    +t13_r
    +t14_r
    +t15_r
    -t17_r
    +t18_r
    +t24_r
    -t27_r
    -t29_r
    +t32_r
    -t33_r
    +t40_r
    +t41_r
    -t43_r
    -t47_r;

assign C3_r =
    -t2_r
    +t3_r
    -t5_r
    +t12_r
    -t16_r
    -t18_r
    -t20_r
    -t23_r
    -t25_r
    +t27_r
    -t31_r
    +t33_r
    +t34_r
    +t36_r
    -t38_r
    -t44_r
    +t47_r
    +t8_i
    -t11_i
    +t13_i
    +t14_i
    +t15_i
    -t19_i
    -t21_i
    +t24_i
    -t26_i
    -t30_i
    +t32_i
    -t35_i
    +t37_i
    +t39_i
    -t43_i;

assign C3_i =
    -t2_i
    +t3_i
    -t5_i
    +t12_i
    -t16_i
    -t18_i
    -t20_i
    -t23_i
    -t25_i
    +t27_i
    -t31_i
    +t33_i
    +t34_i
    +t36_i
    -t38_i
    -t44_i
    +t47_i
    -t8_r
    +t11_r
    -t13_r
    -t14_r
    -t15_r
    +t19_r
    +t21_r
    -t24_r
    +t26_r
    +t30_r
    -t32_r
    +t35_r
    -t37_r
    -t39_r
    +t43_r;

assign C4_r =
    -t6_r
    +t7_r
    +t8_r
    -t10_r
    -t11_r
    +t14_r
    -t21_r
    +t22_r
    +t24_r
    +t28_r
    +t37_r
    +t39_r
    -t42_r
    -t43_r
    -t0_i
    +t1_i
    -t3_i
    +t4_i
    -t9_i
    +t16_i
    -t17_i
    +t18_i
    -t27_i
    -t29_i
    +t31_i
    -t33_i
    -t34_i
    +t40_i
    +t41_i
    +t45_i
    +t46_i
    -t47_i;

assign C4_i =
    -t6_i
    +t7_i
    +t8_i
    -t10_i
    -t11_i
    +t14_i
    -t21_i
    +t22_i
    +t24_i
    +t28_i
    +t37_i
    +t39_i
    -t42_i
    -t43_i
    +t0_r
    -t1_r
    +t3_r
    -t4_r
    +t9_r
    -t16_r
    +t17_r
    -t18_r
    +t27_r
    +t29_r
    -t31_r
    +t33_r
    +t34_r
    -t40_r
    -t41_r
    -t45_r
    -t46_r
    +t47_r;
assign C5_r =
    -t0_r
    -t1_r
    -t5_r
    +t11_r
    -t16_r
    -t18_r
    -t24_r
    +t26_r
    -t27_r
    +t30_r
    -t32_r
    +t36_r
    -t37_r
    -t38_r
    -t39_r
    +t42_r
    -t46_r
    +t8_i
    +t9_i
    +t11_i
    +t14_i
    -t15_i
    -t16_i
    -t17_i
    +t18_i
    +t28_i
    -t34_i
    +t39_i
    -t40_i
    -t43_i
    +t44_i
    +t47_i;

assign C5_i =
    -t0_i
    -t1_i
    -t5_i
    +t11_i
    -t16_i
    -t18_i
    -t24_i
    +t26_i
    -t27_i
    +t30_i
    -t32_i
    +t36_i
    -t37_i
    -t38_i
    -t39_i
    +t42_i
    -t46_i
    -t8_r
    -t9_r
    -t11_r
    -t14_r
    +t15_r
    +t16_r
    +t17_r
    -t18_r
    -t28_r
    +t34_r
    -t39_r
    +t40_r
    +t43_r
    -t44_r
    -t47_r;

assign C6_r =
    +t0_r
    -t2_r
    +t3_r
    +t5_r
    +t6_r
    -t11_r
    +t12_r
    -t13_r
    -t14_r
    +t18_r
    -t22_r
    +t24_r
    +t27_r
    +t29_r
    +t32_r
    +t33_r
    -t41_r
    +t43_r
    +t47_r
    +t3_i
    -t8_i
    -t11_i
    +t15_i
    +t17_i
    -t18_i
    -t20_i
    -t28_i
    +t33_i
    +t34_i
    +t37_i
    +t40_i
    -t44_i;

assign C6_i =
    +t0_i
    -t2_i
    +t3_i
    +t5_i
    +t6_i
    -t11_i
    +t12_i
    -t13_i
    -t14_i
    +t18_i
    -t22_i
    +t24_i
    +t27_i
    +t29_i
    +t32_i
    +t33_i
    -t41_i
    +t43_i
    +t47_i
    -t3_r
    +t8_r
    +t11_r
    -t15_r
    -t17_r
    +t18_r
    +t20_r
    +t28_r
    -t33_r
    -t34_r
    -t37_r
    -t40_r
    +t44_r;

assign C7_r =
    +t2_r
    -t3_r
    -t5_r
    -t8_r
    -t12_r
    +t13_r
    +t14_r
    -t16_r
    -t18_r
    -t24_r
    +t26_r
    +t30_r
    -t31_r
    -t32_r
    -t33_r
    +t36_r
    -t37_r
    -t38_r
    -t43_r
    +t11_i
    -t15_i
    -t19_i
    +t20_i
    +t21_i
    -t23_i
    +t25_i
    -t27_i
    -t34_i
    +t35_i
    +t39_i
    +t44_i
    +t47_i;

assign C7_i =
    +t2_i
    -t3_i
    -t5_i
    -t8_i
    -t12_i
    +t13_i
    +t14_i
    -t16_i
    -t18_i
    -t24_i
    +t26_i
    +t30_i
    -t31_i
    -t32_i
    -t33_i
    +t36_i
    -t37_i
    -t38_i
    -t43_i
    -t11_r
    +t15_r
    +t19_r
    -t20_r
    -t21_r
    +t23_r
    -t25_r
    +t27_r
    +t34_r
    -t35_r
    -t39_r
    -t44_r
    -t47_r;

assign C8_r =
    -t0_r
    -t1_r
    -t4_r
    -t6_r
    -t7_r
    -t10_r
    +t11_r
    +t21_r
    +t22_r
    -t27_r
    -t29_r
    -t34_r
    -t39_r
    +t41_r
    +t42_r
    +t45_r
    -t46_r
    -t47_r
    -t3_i
    +t8_i
    +t9_i
    +t14_i
    -t16_i
    -t17_i
    +t18_i
    +t24_i
    +t28_i
    +t31_i
    -t33_i
    -t37_i
    -t40_i
    -t43_i;

assign C8_i =
    -t0_i
    -t1_i
    -t4_i
    -t6_i
    -t7_i
    -t10_i
    +t11_i
    +t21_i
    +t22_i
    -t27_i
    -t29_i
    -t34_i
    -t39_i
    +t41_i
    +t42_i
    +t45_i
    -t46_i
    -t47_i
    +t3_r
    -t8_r
    -t9_r
    -t14_r
    +t16_r
    +t17_r
    -t18_r
    -t24_r
    -t28_r
    -t31_r
    +t33_r
    +t37_r
    +t40_r
    +t43_r;
assign C9_r =
    +t9_r
    +t11_r
    -t15_r
    -t16_r
    +t17_r
    -t18_r
    -t24_r
    +t27_r
    -t28_r
    -t37_r
    -t39_r
    -t40_r
    -t44_r
    +t0_i
    -t1_i
    -t5_i
    +t8_i
    -t11_i
    -t14_i
    +t16_i
    -t18_i
    -t26_i
    +t30_i
    +t32_i
    +t34_i
    +t36_i
    +t38_i
    -t39_i
    +t42_i
    -t43_i
    +t46_i
    -t47_i;

assign C9_i =
    +t9_i
    +t11_i
    -t15_i
    -t16_i
    +t17_i
    -t18_i
    -t24_i
    +t27_i
    -t28_i
    -t37_i
    -t39_i
    -t40_i
    -t44_i
    -t0_r
    +t1_r
    +t5_r
    -t8_r
    +t11_r
    +t14_r
    -t16_r
    +t18_r
    +t26_r
    -t30_r
    -t32_r
    -t34_r
    -t36_r
    -t38_r
    +t39_r
    -t42_r
    +t43_r
    -t46_r
    +t47_r;

assign C10_r =
    -t3_r
    -t11_r
    -t14_r
    +t15_r
    -t17_r
    +t18_r
    -t20_r
    +t24_r
    -t27_r
    +t28_r
    +t33_r
    +t40_r
    -t43_r
    +t44_r
    +t47_r
    -t0_i
    -t2_i
    +t3_i
    +t5_i
    -t6_i
    -t8_i
    +t11_i
    -t12_i
    -t13_i
    +t18_i
    -t22_i
    +t29_i
    -t32_i
    -t33_i
    -t34_i
    -t37_i
    +t41_i;

assign C10_i =
    -t3_i
    -t11_i
    -t14_i
    +t15_i
    -t17_i
    +t18_i
    -t20_i
    +t24_i
    -t27_i
    +t28_i
    +t33_i
    +t40_i
    -t43_i
    +t44_i
    +t47_i
    +t0_r
    +t2_r
    -t3_r
    -t5_r
    +t6_r
    +t8_r
    -t11_r
    +t12_r
    +t13_r
    -t18_r
    +t22_r
    -t29_r
    +t32_r
    +t33_r
    +t34_r
    +t37_r
    -t41_r;

assign C11_r =
    +t3_r
    +t8_r
    +t14_r
    -t15_r
    -t16_r
    -t18_r
    -t19_r
    +t20_r
    +t23_r
    -t24_r
    +t25_r
    +t31_r
    -t33_r
    -t35_r
    -t37_r
    +t43_r
    -t44_r
    +t2_i
    -t5_i
    -t11_i
    +t12_i
    +t13_i
    +t21_i
    -t26_i
    -t27_i
    +t30_i
    +t32_i
    +t34_i
    +t36_i
    +t38_i
    -t39_i
    -t47_i;

assign C11_i =
    +t3_i
    +t8_i
    +t14_i
    -t15_i
    -t16_i
    -t18_i
    -t19_i
    +t20_i
    +t23_i
    -t24_i
    +t25_i
    +t31_i
    -t33_i
    -t35_i
    -t37_i
    +t43_i
    -t44_i
    -t2_r
    +t5_r
    +t11_r
    -t12_r
    -t13_r
    -t21_r
    +t26_r
    +t27_r
    -t30_r
    -t32_r
    -t34_r
    -t36_r
    -t38_r
    +t39_r
    +t47_r;

assign C12_r =
    +t9_r
    +t11_r
    +t17_r
    -t21_r
    +t27_r
    -t28_r
    -t34_r
    -t39_r
    -t40_r
    -t47_r
    +t0_i
    -t1_i
    -t3_i
    +t4_i
    +t6_i
    -t7_i
    +t8_i
    +t10_i
    -t14_i
    +t16_i
    -t18_i
    +t22_i
    -t24_i
    -t29_i
    +t31_i
    +t33_i
    +t37_i
    -t41_i
    +t42_i
    -t43_i
    +t45_i
    +t46_i;

assign C12_i =
    +t9_i
    +t11_i
    +t17_i
    -t21_i
    +t27_i
    -t28_i
    -t34_i
    -t39_i
    -t40_i
    -t47_i
    -t0_r
    +t1_r
    +t3_r
    -t4_r
    -t6_r
    +t7_r
    -t8_r
    -t10_r
    +t14_r
    -t16_r
    +t18_r
    -t22_r
    +t24_r
    +t29_r
    -t31_r
    -t33_r
    -t37_r
    +t41_r
    -t42_r
    +t43_r
    -t45_r
    -t46_r;
assign C13_r =
    +t5_r
    -t11_r
    +t16_r
    +t18_r
    +t24_r
    +t27_r
    +t28_r
    -t36_r
    +t37_r
    -t38_r
    +t39_r
    +t42_r
    -t44_r
    +t0_i
    +t1_i
    -t8_i
    -t9_i
    -t11_i
    +t14_i
    +t15_i
    -t16_i
    +t17_i
    -t18_i
    +t26_i
    -t30_i
    -t32_i
    +t34_i
    +t39_i
    +t40_i
    +t43_i
    -t46_i
    +t47_i;

assign C13_i =
    +t5_i
    -t11_i
    +t16_i
    +t18_i
    +t24_i
    +t27_i
    +t28_i
    -t36_i
    +t37_i
    -t38_i
    +t39_i
    +t42_i
    -t44_i
    -t0_r
    -t1_r
    +t8_r
    +t9_r
    +t11_r
    -t14_r
    -t15_r
    +t16_r
    -t17_r
    +t18_r
    -t26_r
    +t30_r
    +t32_r
    -t34_r
    -t39_r
    -t40_r
    -t43_r
    +t46_r
    -t47_r;

assign C14_r =
    -t2_r
    -t3_r
    -t5_r
    +t6_r
    +t11_r
    -t12_r
    -t14_r
    -t18_r
    -t20_r
    +t22_r
    -t24_r
    -t27_r
    -t28_r
    +t33_r
    -t43_r
    +t44_r
    +t47_r
    -t0_i
    +t3_i
    +t8_i
    +t11_i
    -t13_i
    -t15_i
    -t17_i
    +t18_i
    +t29_i
    +t32_i
    -t33_i
    -t34_i
    -t37_i
    -t40_i
    +t41_i;

assign C14_i =
    -t2_i
    -t3_i
    -t5_i
    +t6_i
    +t11_i
    -t12_i
    -t14_i
    -t18_i
    -t20_i
    +t22_i
    -t24_i
    -t27_i
    -t28_i
    +t33_i
    -t43_i
    +t44_i
    +t47_i
    +t0_r
    -t3_r
    -t8_r
    -t11_r
    +t13_r
    +t15_r
    +t17_r
    -t18_r
    -t29_r
    -t32_r
    +t33_r
    +t34_r
    +t37_r
    +t40_r
    -t41_r;

assign C15_r =
    +t2_r
    +t5_r
    -t8_r
    -t11_r
    +t12_r
    +t14_r
    +t20_r
    +t21_r
    -t23_r
    +t24_r
    +t25_r
    -t36_r
    +t37_r
    -t38_r
    +t39_r
    +t43_r
    -t44_r
    -t3_i
    +t13_i
    +t15_i
    -t16_i
    -t18_i
    -t19_i
    +t26_i
    -t27_i
    -t30_i
    +t31_i
    -t32_i
    +t33_i
    +t34_i
    +t35_i
    +t47_i;

assign C15_i =
    +t2_i
    +t5_i
    -t8_i
    -t11_i
    +t12_i
    +t14_i
    +t20_i
    +t21_i
    -t23_i
    +t24_i
    +t25_i
    -t36_i
    +t37_i
    -t38_i
    +t39_i
    +t43_i
    -t44_i
    +t3_r
    -t13_r
    -t15_r
    +t16_r
    +t18_r
    +t19_r
    -t26_r
    +t27_r
    +t30_r
    -t31_r
    +t32_r
    -t33_r
    -t34_r
    -t35_r
    -t47_r;

assign C16_r =
    +t3_r
    -t6_r
    -t7_r
    -t10_r
    +t16_r
    +t18_r
    -t22_r
    +t27_r
    +t28_r
    -t31_r
    -t33_r
    -t34_r
    +t42_r
    -t47_r
    +t0_i
    +t1_i
    -t4_i
    -t8_i
    -t9_i
    -t11_i
    +t14_i
    +t17_i
    +t21_i
    +t24_i
    -t29_i
    +t37_i
    +t39_i
    +t40_i
    -t41_i
    +t43_i
    +t45_i
    -t46_i;

assign C16_i =
    +t3_i
    -t6_i
    -t7_i
    -t10_i
    +t16_i
    +t18_i
    -t22_i
    +t27_i
    +t28_i
    -t31_i
    -t33_i
    -t34_i
    +t42_i
    -t47_i
    -t0_r
    -t1_r
    +t4_r
    +t8_r
    +t9_r
    +t11_r
    -t14_r
    -t17_r
    -t21_r
    -t24_r
    +t29_r
    -t37_r
    -t39_r
    -t40_r
    +t41_r
    -t43_r
    -t45_r
    +t46_r;


endmodule