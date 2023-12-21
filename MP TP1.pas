Program MOTDEPASS;
Var
  N,A,P,B,C,R,X2,X7,X4,X5,Y,MP: Integer;
Begin
  Readln(N);
  If N Mod 10 <> 0 Then
    Begin
      A := 10 - N Mod 10;
    End
  Else
    Begin
      A := 0;
    End;
  P := 10;
  While P <= 1000 Do
    Begin
      If (N Div P Mod 10) <> 0 Then
        Begin
          A := A+ (10 - N Div P Mod 10)*P;
        End
      Else
        Begin
          A := A+0;
        End;
      P := P*10;
    End;
  B := A*10000 + N;
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