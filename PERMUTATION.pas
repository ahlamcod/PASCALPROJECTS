program PERMUTATION;
Var B,C,R,X2,X7,X4,X5,Y: Integer;
Begin
  Readln(B);
  X7 := B Div 10 Mod 10;
  X2 := B Div 1000000 Mod 10;
  R := (B - X7*10) - X2*1000000;
  Y := X7;
  X7 := X2;
  X2 := Y;
  B := R + X7*10+ X2*1000000;
  X4:= B Div 10000 Mod 10;
  X5 := B Div 1000 Mod 10;
  R := B -X4*10000 -X5*1000;
  Y := X4;
  X4 := X5;
  X5 := Y;
  C := R + X4*10000 + X5*1000;
  Writeln(C);
  Readln(C);
End.