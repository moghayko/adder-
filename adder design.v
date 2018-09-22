module adder (
  input wire [15:0] a,
  input wire [15:0] b,
  output wire [15:0] out,
  output wire carry
);
  assign {carry,out}=a+b;
endmodule