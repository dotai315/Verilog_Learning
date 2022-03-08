module half_adder_tb();
  reg a = 0;
  reg b = 0;
  wire s;
  wire c;
  
  half_adder ins(a, b, s, c);
  
  initial begin 
    a = 1'b0;
    b = 1'b0;
    #10;
    a = 1'b0;
    b = 1'b1;
    #10;
    a = 1'b1;
    b = 1'b0;
    #10;
    a = 1'b1;
    b = 1'b1;
    #10;
  end
endmodule