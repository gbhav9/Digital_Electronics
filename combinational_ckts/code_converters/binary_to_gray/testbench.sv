`timescale 1ns/1ps
module tb_b2g();
  reg [3:0] b1, g1;
 
  binarytogray uut ( b1, g1);
  
  
  initial begin 
    $monitor(" time = %t, b1 = %b, g1 = %b", $time, b1, g1);
    #200;
    $finish;
  end
  
   initial begin
    $dumpfile("dump.vcd");
     $dumpvars(0,tb_b2g);
   end
  
  
  initial begin
    b1 = 4'b0000;
    #10;
    b1 = 4'b0001;
    #10;
    b1 = 4'b0010;
    #10;
    b1 = 4'b0011;
    #10;
    b1 = 4'b0100;
    #10;
    b1 = 4'b0101;
    #10;
    b1 = 4'b0110;
    #10;
    b1 = 4'b0111;
    #10;
    b1 = 4'b1000;
    #10;
    b1 = 4'b1001;
    #10;
    b1 = 4'b1010;
    #10;
    b1 = 4'b1011;
    #10;
    b1 = 4'b1100;
    #10;
    b1 = 4'b1101;
    #10;
    b1 = 4'b1110;
    #10;
    b1 = 4'b1111;
    #10;
    
  end
endmodule
