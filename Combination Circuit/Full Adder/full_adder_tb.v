module full_adder_tb();
  reg a;
  reg b;
  reg cin;
  wire s;
  wire cout;
  reg [3:0] i = 3'd0;
  
  full_adder ins(a, b, cin, s, cout);
  
  initial begin
    a = 1'b0;
    b = 1'b0;
    cin = 1'b0;
    
    #100;
    
    for(i = 0; i < 8; i = i + 1'b1) begin
      {a, b, cin} = {a, b, cin} + 1'b1;
      #20;
    end
  end
  
endmodule
