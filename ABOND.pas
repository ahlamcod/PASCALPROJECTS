Program ABOND;
Var
  N,SDIV,I: Integer;
  ABON : Boolean;
Begin
  N := 1
WHILE ABON =FALSE And (N Mod 2 = 0) 
       N:=N+1;
  For I:= 1 To N Div 2 Do
    Begin
      If N Div I = O Then SDIV = SDIV+1 ;
    End;
  If SDIV <= N Then ABON := True
  Else
    Begin
      ABON := False;
    End;
Writeln(N);
Readln;
End.