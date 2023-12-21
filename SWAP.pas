Program Swap;
Uses crt;
Var
  N,P,A,B,Y: Integer;
Begin
  Writeln('ENTRER_UN_NOMBRE', N);
  Readln(N);
  A := (N Mod 10);
  P := 10;
  B := N;
  While B > 9 Do
    Begin
      B := N Div P;
      P := P*10;
    End;
  N := N - P Div 10*B - A;
  Y := B;
  B := A;
  A := Y;
  N := N+A+P Div 10 *B ;
  Writeln(N);
  Readln(N) ;
End.
