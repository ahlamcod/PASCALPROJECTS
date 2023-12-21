Program FABONACCI;
Var
  i,N,A,B: Integer;
Begin
  Writeln('donner_un_entier');
  Readln(N);
  A := 1;
  B := 1;
  If (N = 0)  Then
    Begin
      N := 0;
    End
  Else
    Begin
      If
         (N = 2) OR (N = 1)Then
        Begin
          N := 1;
        End
      Else
        Begin
          For i:= 2 To N Do
            Begin
              N := A + B;
              A := B;
              B := N;
            End;
        End;
    End;
  Writeln(N);
  Readln(N);
End.
