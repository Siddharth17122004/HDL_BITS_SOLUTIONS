module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [31:0]sum1;
    wire [15:0]sum_out;
    wire c1,cout;
    add16 instance1(a[15:0],b[15:0],1'b0,sum[15:0],c1);
    add16 instance2(a[31:16],b[31:16],1'b0,sum1[15:0],cout);
    add16 instance3(a[31:16],b[31:16],1'b1,sum1[31:16],cout);
    mux2_1(sum1[15:0],sum1[31:16],c1,sum_out);
    assign sum[31:16]=sum_out;


endmodule
module mux2_1(input[15:0]a,b,input sel,output[15:0]y);
    assign y=sel?b:a;
endmodule
