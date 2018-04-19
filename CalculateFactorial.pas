program CalculateFactorial;

var
  times, sum, i : integer;

begin
  readln(times);
  sum := 1;
  for i := times downto 1 do
  begin
    sum := sum * i;
  end;
  writeln(sum);
end.
