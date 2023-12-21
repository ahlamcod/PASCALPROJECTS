Program NBSUITE;
Const MAX=11;   //la taille maximale de tableau
Type TAB=Array [1..MAX] of Integer;  // creation du type tableau des entiers de taille max
Var
  T: TAB ;  // tableau a une dimention
	NBS,I,N,M,TS : Integer;
	//nbs est le nombre des suites croissantes
	// i est l'indice de parcourir le tableau
	// ts la taille de suite croissante
	// n,m les deux nombres adjacentes

	procedure Lect1d ;
 var j : integer;
 begin
     T[1]:=5;
	T[2]:=6;
	T[3]:=7;
	T[4]:=3;
	T[5]:=2;
	T[6]:=7;
	T[7]:=8;
	T[8]:=6;
	T[9]:=5;
	T[10]:=3;
 end ;

 procedure ecrire1d(ti:tab , tai: Integer) ;
 var j : integer;
 begin
 	
     T[1]:=5;
	
 end ;

Begin;
// initialisation du tableau
								 lect1d;
 // fin du tableau
	I := 1;
	ts:=1;
	nbs:= 0;
	While( I < (MAX -1)) DO
	Begin
		N:=T[I];
		M:=T[I+1];

    IF (N<M) Then
	   Begin
		 	TS:= ts + 1;
		 END
		ELSE
			Begin
			 if (TS>= 2) Then
			 Begin
			 	nbs:= nbs+1;
			 end;
			 ts:=1;
			end;
	    I:= I+1;

	END;
					Write('le-nobres-des-seriescroissantes : ' ,nbs);
 Readln;
END.
