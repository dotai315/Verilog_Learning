module multiplexer ();

reg   C0;
reg   C1;
reg   C2;
reg   C3;

reg   A;
reg   B;

wire  a_inv;
wire  b_inv;

wire  Y0;
wire  Y1;
wire  Y2;
wire  Y3;

wire  Y;

not U1(a_inv, A);
not U2(b_inv, B);

and U3(Y0, C0, a_inv, b_inv); 
and U4(Y1, C1, a_inv, B    ); 
and U5(Y2, C2, A    , b_inv); 
and U6(Y3, C3, A    , B    );

or U7(Y, Y0, Y1, Y2, Y3);

initial begin
  $monitor(
    "C0 = %b C1 = %b C2 = %b C3 = %b A %b B = %b Y = %b", 
    C0, C1, C2, C3, A, B, Y
  );
  C0 = 0;
  C1 = 0;
  C2 = 0;
  C3 = 0;
  A = 0;
  B = 0;
  #1 A = 1;
  #2 B = 1;
  #4 A = 0;
  #8 $finish;
end

always #1 C0=~C0;
always #2 C1=~C1;
always #3 C2=~C2;
always #4 C3=~C3;
  
endmodule 