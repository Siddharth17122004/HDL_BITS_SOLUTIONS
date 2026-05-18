module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
genvar i;
    generate 
        for(i=0;i<3;i++)begin:rca
            if(i==0)
                fa f(a[i],b[i],cin,sum[i],cout[i]);
            else
                fa f(a[i],b[i],cout[i-1],sum[i],cout[i]);
        end
    endgenerate
endmodule
module fa(input a,b,cin,output sum,cout);
    assign {cout,sum}=a+b+cin;
endmodule
