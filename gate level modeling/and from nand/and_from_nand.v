module and_from_nand();

reg   X;
reg   Y;
wire  W;
wire  F;

nand  U1(W, X, Y);
nand  U2(F, W, W);

initial begin
  $monitor("X = %b Y = %b F = %b", X, Y, F);
  X = 0;
  Y = 0;
  #1  Y = 1;
  #1  X = 1; Y = 0;
  #1  X = 1; Y = 1;
  #1  $finish;
end

endmodule
