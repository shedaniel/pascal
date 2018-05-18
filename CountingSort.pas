program CountingSort;

var 
    cnt, out, out2, list : array[0..9999] of integer;
    i, j, k, length : integer;

begin
    readln(length);
    writeln('The length is now ', length, '!\nNow please input the numbers 1 by 1.');
    for i := 0 to length - 1 do readln(list[i]);
    for i := 0 to 9 do cnt[i] := 0;
    for i := 0 to length - 1 do inc(cnt[list[i]]);
    for i := 1 to 9 do cnt[i] += cnt[i - 1];
    for i := 0 to length - 1 do begin
        k := list[i];
        out[cnt[k] - 1] := k;
        dec(cnt[k]);
    end;
    if out[0] = 0 then begin
        for i := 1 to length - 1 do begin
            if out[i] <> 0 then begin
                j := out[i];
                break;
            end;
        end;
        out[i] := out[0];
        out[0] := j;
    end;
    for i := 0 to length - 1 do write(out[i]);
    writeln;
    for i := 0 to 9 do cnt[i] := 0;
    for i := 0 to length - 1 do inc(cnt[list[i]]);
    for i := 1 to 9 do cnt[i] += cnt[i - 1];
    for i := 0 to length - 1 do begin
        k := list[i];
        out[length - cnt[k]] := k;
        dec(cnt[k]);
    end;
    for i := 0 to length - 1 do write(out[i]);
end.