Program convertion;
Uses Wincrt;
Var
  b1,n,s: Integer;
Begin
  Writeln( 'donnez_un_entier');
  Repeat
    Readln(n);
  Until n>0;
  Writeln( 'donnez_une_base_entre_2_et_10');
  Repeat
    Readln(b1);
  Until
        (b1>=2) Or (b1<=10);

  Function CONVERT_b10 (n, b1:Longint): Longint;
  Var
    i,s,p,m: Longint;
  Begin
    p := 1;
    i := 1;
    s := 0;
    m := 0;
    While p <n
          Begin
          m:= n Div p Mod 10 *i *p;
          s:= s + m;
          i:= i*b1;
          p:=p*10;
          End;
          convert_b10:= s;
          End;
          End;
          End.
