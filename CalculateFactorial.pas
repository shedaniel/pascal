program CalculateFactorial;

var
    times, i : integer;
    answer : longint;

begin
    //Set the answer to 1, so we can multiply on it
    answer := 1;

    //Ask user for the times to multiply
    readln(times);

    //Calculate the answer
    for i := 1 to times do
    begin
        answer := answer * i;
    end;

    //Output the sum
    writeln('The answer to ', times, '! is ', answer, '.');
end.
