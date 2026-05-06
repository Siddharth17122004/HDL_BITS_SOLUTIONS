module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);	
    wire [31:0]b1;
    assign b1=b^{32{sub}};
    wire c1,cout;
    add16 instance1(a[15:0],b1[15:0],sub,sum[15:0],c1);
    add16 instance2(a[31:16],b1[31:16],c1,sum[31:16],cout);
    
endmodule

