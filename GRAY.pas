Program GRAY;
Var
  NB,N,I,A,P1,P2 : Integer;
Begin
FOR I=1 TO 20 Do
  Begin
	While I <> 0 Do
	Begin
	NB:= NB + (I MOD 2) *P1 ;
	P1:= P1*10;
	I:=I DIV 2;
	End;
	
    If NB Mod 2 = 0 Then
      Begin
        If NB Div 10 = 0 Then
          Begin
            NB := NB + 1;
          End
        Else
          Begin
            NB := NB - 1;
          End;
      End
		 Else
		 Begin
		 While A <> 1 Do
		 Begin
		 NB := NB Mod P2;
		 P:= P*10;
		 End;
		 NB:= A*P2 + P2 Div 10;
		 End;
		 WriteLn(NB);
  End;
End.