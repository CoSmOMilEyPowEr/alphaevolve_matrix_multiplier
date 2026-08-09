module complex_multiplierp2 #(
    parameter int W = 16
)(

    input  logic signed [2*W:0] P1,
    input  logic signed [2*W:0] P2,
    input  logic signed [2*W:0] P3,
  

    output logic signed [2*W:0] pr,
    output logic signed [2*W:0] pi
);



always_comb begin
   
    pr = P1 - P2;
    pi = P3 - P1 - P2;
end

endmodule