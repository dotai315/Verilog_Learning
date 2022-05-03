module dff_from_nand();

wire  Q;
wire  Q_BAR;
wire  X;
wire  Y;
reg   D;
reg   CLK;

nand  U1(X    ,D    ,CLK);
nand  U2(Y    ,X    ,CLK);
nand  U3(Q    ,Q_BAR,X  );
nand  U4(Q_BAR,Q    ,Y  );

initial begin
  $monitor("CLK = %b D = %b Q = %b", CLK, D, Q);
  CLK = 0;
  D   = 0;
  #3  D = 1;
  #3  D = 0;
  #3  $finish;
end 

always  #2 CLK=~CLK;

endmodule
