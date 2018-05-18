program CountingSort;

Uses sysutils;

var 
    cnt, out, list : array[0..9999] of integer;
    i, j, k, len : integer;
    num : string;

begin
    readln(num);
    len := length(num);
    for i := 0 to len - 1 do list[i] := StrToInt(num[i + 1]);
    for i := 0 to 9 do cnt[i] := 0;
    for i := 0 to len - 1 do inc(cnt[list[i]]);
    for i := 1 to 9 do cnt[i] += cnt[i - 1];
    for i := 0 to len - 1 do begin
        k := list[i];
        out[cnt[k] - 1] := k;
        dec(cnt[k]);
    end;
    if out[0] = 0 then begin
        for i := 1 to len - 1 do begin
            if out[i] <> 0 then begin
                j := out[i];
                break;
            end;
        end;
        out[i] := out[0];
        out[0] := j;
    end;
    for i := 0 to len - 1 do write(out[i]);
    writeln;
    for i := 0 to 9 do cnt[i] := 0;
    for i := 0 to len - 1 do inc(cnt[list[i]]);
    for i := 1 to 9 do cnt[i] += cnt[i - 1];
    for i := 0 to len - 1 do begin
        k := list[i];
        out[len - cnt[k]] := k;
        dec(cnt[k]);
    end;
    for i := 0 to len - 1 do write(out[i]);
end.
