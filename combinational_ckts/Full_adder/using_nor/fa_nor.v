`timescale 1ns/1ps
module fa_nor (input a,
               input b,
               input cin,
               output sum,
               output cout);
 
  wire w1,w2,w3,w4,w5,w6,w7;
  nor u1(w1, a, b);
  nor u2(w2, w1, a);
  nor u3(w3, w1, b);
  nor u4(w4, w2, w3);
  nor u5(w5, cin, w4);
  nor u6(w6, w4, w5);
  nor u7(w7, cin, w5);
  nor u8(sum, w6, w7);
  nor u9 (cout, w1, w5);
endmodule
