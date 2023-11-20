program z2;
var
  arr: array[1..20] of integer;
  i,j,n,mult,sum,s,e,pointer:integer;
begin
  writeln('Введите диапазон из 2 чисел');
  readln(s);
  readln(e);
  j := 0;
  mult := 0;
  sum := 0;
  pointer := 1;

  for i:=1 to 20 do
  begin
    arr[i] := random(e)-s;
  end;

  while pointer <= 20 do
  begin
    if arr[pointer] mod 2 = 0 then
      j := j + 1;
    pointer := pointer + 2
  end;

  for i:=1 to 20 do
  begin
    if arr[i] mod 2 = 1 then
      mult := mult * arr[i];
    sum := sum + arr[i]
  end;

  writeln('Кол-во чётных чилес, стоящих на нечётных местах: ', j);
  writeln('Произведение нечётных элементов: ', mult);
  writeln('Сумма эелементов массива: ', sum);
end.