module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [4:0]c;
    assign c[0]=1'b0;
genvar i;
    generate 
        for(i=0;i<4;i=i+1)begin:rca
            
            fa f(.a(x[i]),.b(y[i]),.cin(c[i]),.cout(c[i+1]),.sum(sum[i]));
            
        end
    endgenerate
    assign sum[4]=c[4];
endmodule
            
module fa(input a,b,cin,output cout,sum);
    assign {cout,sum}=a+b+cin;
endmodule
