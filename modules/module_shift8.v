module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]q1,q2,q3;
    my_dff8 ff1(clk,d,q1);
    my_dff8 ff2(clk,q1,q2);
    my_dff8 ff3(clk,q2,q3);
    mux4_1 m1(sel,d,q1,q2,q3,q);

endmodule
module mux4_1(input [1:0]sel,input[7:0]a,b,c,d,output reg [7:0]y);
    always @(*)begin
        case(sel)
            2'b00: y=a;
            2'b01: y=b;
            2'b10: y=c;
            2'b11: y=d;
            default:y=8'd0;
        endcase
    end
endmodule

