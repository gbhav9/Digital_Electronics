`timescale 1ns/1ps
module tb_b2g();
  reg [3:0] b1, e1;
 
  binarytoexcess3 uut ( b1, e1);
  
  
  initial begin 
    $monitor(" time = %t, b1 = %b, e1 = %b", $time, b1, e1);
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
   
    
  end
endmodule
