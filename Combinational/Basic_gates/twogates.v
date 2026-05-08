module top_module (
    input in1,
    input in2,
    input in3,
    output out);
wire o;
    assign o=~(in1^in2);
    assign out=o^in3;
endmodule

