module test;
  reg [15:0] a1;
  reg [15:0] b1;
  wire [15:0] out1;
  wire out2;
  adder i_adder
  (
   .a(a1), 
   .b(b1), 
   .out(out1), 
   .carry(out2)
  );
  initial begin 
    // Переполнение
    a1=2**16-1;
    b1=1;
    #1 // Задержка на единицу времени
    $display("a1=%d,b1=%d,out1=%d,out2=%d",a1,b1,out1,out2);
    
    // Обычное сложение
    a1=5;
    b1=23;
    #1 // Задержка на единицу времени
    $display("a1=%d,b1=%d,out1=%d,out2=%d",a1,b1,out1,out2);
  end
endmodule