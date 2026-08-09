`timescale 1ns/1ps

module top_tb;

parameter W = 16;

logic clk;
logic rst;

logic signed [W-1:0] Areal [15:0];
logic signed [W-1:0] Aimag [15:0];

logic signed [W-1:0] Breal [15:0];
logic signed [W-1:0] Bimag [15:0];

logic signed [2*(W+7):0] CReal [15:0];
logic signed [2*(W+7):0] CImag [15:0];

top #(
    .W(W)
) dut (

    .clk(clk),
    .rst(rst),

    .Areal(Areal),
    .Aimag(Aimag),

    .Breal(Breal),
    .Bimag(Bimag),

    .CReal(CReal),
    .CImag(CImag)
);


always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;

    for (int i=0;i<16;i++) begin
        Areal[i] = 0;
        Aimag[i] = 0;
        Breal[i] = 0;
        Bimag[i] = 0;
    end

    #20;
    rst = 0;

    // Example matrix A
    Areal[0]=1;  Areal[1]=2;  Areal[2]=3;  Areal[3]=4;
    Areal[4]=5;  Areal[5]=6;  Areal[6]=7;  Areal[7]=8;
    Areal[8]=9;  Areal[9]=10; Areal[10]=11; Areal[11]=12;
    Areal[12]=13; Areal[13]=14; Areal[14]=15; Areal[15]=16;

    // Example matrix B
    Breal[0]=1; Breal[5]=1; Breal[10]=1; Breal[15]=1;

    // Wait for pipeline
    repeat(10) @(posedge clk);

    $display("Result:");

    for(int i=0;i<16;i++)
        $display("C[%0d] = %0d + j%0d",
                  i,CReal[i],CImag[i]);

    $finish;

end

endmodule