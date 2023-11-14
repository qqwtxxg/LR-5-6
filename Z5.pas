program z5;
var
  arr1: array of integer;
  arr2: array of integer;
  n, sum1, sum2, i, c:integer;
begin
  writeln('Напишите длину масивов: ');  
  readln(n);
  
  SetLength(arr1,n);
  SetLength(arr2,n);
  
  writeln('Напишите массив-1 из ', n, ' элементов');
  for i:=0 to n-1 do
  begin
    readln(c);
    arr1[i] := c;
  end;
  writeln('Напишите массив-2 из ', n, ' элементов');
  for i:=0 to n-1 do
  begin
    readln(c);
    arr2[i] := c;
  end;
  
  sum1:= 0;
  sum2:= 0;
  for i:=0 to n-1 do
  begin
    sum1:= arr1[i] + sum1;
    sum2:= arr2[i] + sum2;
  end;
  
  if sum1 > sum2 then
  begin
    for i:=0 to n-1 do
    begin
      arr2[i]:= arr2[i]*10;
    end;
  end
  else
  begin
    for i:=0 to n-1 do
    begin
      arr1[i] := arr1[i]*10;
    end;
  end;
  
 writeln('Массивы, которые получились: ');
 for i:=0 to n-1 do
   write(arr1[i], '-');
 writeln();
 for i:=0 to n-1 do
   write(arr2[i], '-');
 writeln();

end.