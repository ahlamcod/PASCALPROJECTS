		Unit biblio; // biblio de ahlam

Interface

Function est_parfait (n:Integer): Boolean;

Function concate(a,b: Longint): Longint;

Function decimale_vers_binaire(n:Integer): Integer;

Function puissance(x,p:Integer): Integer;

Function nbpos(x:Integer): Integer;

Function premier(x:Integer): Boolean;

Function facto(n:Integer): Integer;

Function pgcd(x,y:Integer): Integer;

Function ppcm(x,y:Integer): Integer;

Function somechf(x:Integer): Integer;

Function produitchf(x:Integer): Integer;

Function inv(x:Integer): Integer;

Function expos(x,p,k:Integer): Integer;

Function freq(ch,x:Integer): Integer;

Function swapping(x:Integer): Integer;

Function croissant(x:Integer): Integer;

Function decroissant(x:Integer): Integer;

Function decalg(x:Integer): Integer;

Function insern(n,x,p:Integer): Integer;

Function supch(x,ch:Integer): Integer;

Function Conca(x,y:Integer): Integer;

Implementation

Function est_parfait (n:Integer): Boolean;
Var
  s,i: Integer;
  p: Boolean;
Begin
  p := False;
  s := 1;
  For i:=2 To n Div 2 Do
    Begin
      If n Mod i = 0 Then s := s + i;
    End;
  If s=n Then p := True
  Else p := False ;
  est_parfait := P;
End;
Function concate(a,b: Longint): Longint;
Var
  di,b2 : Longint;
Begin
  di := 1 ;
  b2 := b ;
  Repeat
    di := di * 10 ;
    b2 := b2 Div 10 ;
  Until ( b2 = 0 );
  concate := a * di + b ;
End;
Function decimale_vers_binaire(n:Integer): Integer;
Var
  r,i,p : Integer;
Begin
  i := 0;
  p := 1;
  While n<>0 Do
    Begin
      r := n Mod 2;
      i := i+r*p;
      p := p*10;
      n := n Div 2 ;
    End;
  decimale_vers_binaire := i;
End;
Function premier(x:Integer): Boolean;
Var
  i : Integer;
  inter: Boolean;
Begin
  If x<=1 Then inter := False
  Else inter := True;
  i := 2;
  While i<= x Div 2 Do
    Begin
      If x Mod i = 0 Then inter := False;
      i := i+1;
    End;
  premier := inter;
End;
Function facto(n:Integer): Integer;
Var
  i,f: Integer;
Begin
  f := 1;
  For i:=2 To n Do
    f := f*i;
End;
Function pgcd(x,y:Integer): Integer;
Var
  r: Integer;
Begin
  x := Abs(x);
  y := Abs(y);
  If (x*y=0) Then
    Begin
      If x>=y Then pgcd := x
      Else pgcd := y;
    End
  Else
    Begin
      r := x Mod y;
      While r>0 Do
        Begin
          x := y;
          y := r;
          r := x Mod y;
        End;
      pgcd := y;
    End;
End;
Function ppcm(x,y:Integer): Integer;
Begin
  x := Abs(x);
  y := Abs(y);
  ppcm := x*y Div pgcd(x,y);
End;
Function somechf(x:Integer): Integer;
Var
  r: Integer;
Begin
  r := 0;
  While x Div 10 <>0 Do
    Begin
      r := r+x Mod 10;
      x := x Div 10;
    End;
  somechf := r;
End;

Function produitchf(x:Integer): Integer;
Var
  r: Integer;
Begin
  r := 1;
  While x Div 10 <>0 Do
    Begin
      r := r*(x Mod 10);
      x := x Div 10;
    End;
  produitchf := r;
End;

Function puissance(x,p:Integer): Integer;
Var
  i, y: Integer;
Begin
  y := 1;
  For i:=1 To p Do
    y := y*x;
  puissance := y;
End;

Function nbpos(x:Integer): Integer;
Var
  i: Integer;
Begin
  i := 0;
  While x <>0 Do
    Begin
      i := i+1;
      x := x Div 10;
    End;
  nbpos := i;
End;

Function inv(x:Integer): Integer;
Var
  r: Integer;
Begin
  r := 0;
  While x<>0 Do
    Begin
      r := r*10+x Mod 10;
      x := x Div 10;
    End;
  inv := r;
End;

Function expos(x,p,k:Integer): Integer;
Begin
  expos := (x Div puissance(10,p-1))Mod puissance(10,k) ;
End;

Function freq(ch,x:Integer): Integer;
Var
  r,i: Integer;
Begin
  i := 0;
  While x<>0 Do
    Begin
      If x Mod 10=ch Then i := i+1;
      x := x Div 10;
    End;
  freq := i;
End;

Function swapping(x:Integer): Integer;
Var
  i: Integer;
Begin
  i := x-((x Div puissance(10,nbpos(x)-1))*puissance(10,nbpos(x)-1)+x Mod 10);
  x := i+(x Mod 10)*puissance(10,nbpos(x)-1)+x Div puissance(10,nbpos(x)-1);
  swapping := x;
End;
Function croissant(x:Integer): Integer;
Var
  c,i: Integer;
Begin
  i := 0;
  For c:=1 To 9 Do
    Begin
      While x<>0 Do
        Begin
          If x Mod 10 = c Then i := i+c*10;
          x := x Div 10;
        End;
    End;
  croissant := i;
End;

Function decroissant(x:Integer): Integer;
Var
  c,i: Integer;
Begin
  i := 0;
  For c:=9 Downto 0 Do
    Begin
      While x<>0 Do
        Begin
          If x Mod 10 = c Then i := i*10+c;
          x := x Div 10;
        End;
    End;
  decroissant := i;
End;
Function decalg(x:Integer): Integer;
Begin
  decalg := (x Mod puissance(10,nbpos(x)-1))*10+x Div puissance(10,nbpos(x)-1);
End;

Function insern(n,x,p:Integer): Integer;
//inserer un nombre n dans x à partir de la position p
Var
  r,i,s: Integer;
Begin
  r := x Mod puissance(10,p);
  i := x Div puissance(10,p);
  s := r+n*puissance(10,p)+i*puissance(10,p+nbpos(n));
  insern := s;
End;
Function supch(x,ch:Integer): Integer;
//supprimer tous les chiffres=ch dans x
Var
  r,s: Integer;
Begin
  s := 0;
  While x<>0 Do
    Begin
      r := x Div puissance(10,nbpos(x)-1);
      If r=ch Then s := s+x-r*puissance(10,nbpos(x)-1);
      x := x Mod puissance(10,nbpos(x)-1);
    End;
End;

Function Conca(x,y:Integer): Integer;
Begin
  Conca := x*puissance(10,nbpos(y))+y;
End;
End.