module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire[7:0] t,t1;
  	assign t=a<b?a:b;
    assign t1=t<c?t:c;
    assign min=t1<d?t1:d;
    // assign intermediate_result1 = compare? true: false;

endmodule

