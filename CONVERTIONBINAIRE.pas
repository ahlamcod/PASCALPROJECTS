Program convertion_binaire;
Var
  N,P,R: Integer;
Begin
  Writeln('donner_un_entier');
  Readln(N);
  R := 0;
  P := 10;
  While N Div 2 <> 0 Do
    Begin
      N := N Div 2;
      R := R + (N Mod 2)*P;
      P := P*10;
    End;
  Writeln(R);
	Readln(R);
End.
