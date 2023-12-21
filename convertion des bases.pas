FUNCTION CONVERT-DIS (N, b1: Integer);
Var rest,i: integer;
Begin
rest:=0;
p:=0;
while n Do
Begin
rest:= rest+ (n mod 10)*p;
p:= p*b1;
n:= n div 10;
end.