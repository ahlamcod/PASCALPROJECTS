Program decalage;
Uses Wincrt;
Var
  NB,N,I,X,P,S: Longint;
Begin
  Writeln('entrez_un_entiez_X');
  Readln(X);
  Writeln('entrez_le_nombre_de_décalage');
  Readln(N);
  NB := 0;
  I := 1;
	p:=1;
  While (X Div P)<>0 Do
    Begin
      s := X Div p ;
      p := p*10
    End ;
  p := p Div 10;
  While (I>0) And (I<(N+1)) Do
    Begin
      NB := X Div P;
      X := (X - (NB*P))*10 + NB;
      I := I + 1;
    End;
  Writeln('le_nombre_est_:',X);
End.