#include <stdio.h>
#include <string.h>

int cnt[10], out[213142142], list[213142142];
int i, j = 0, k;
char num[] = "";

int main()
{   
    scanf("%s", &num);
    int len = strlen(num);
    for (i = 0; i < len; i++) list[i] = num[i] - '0';
    //Smallest
    for (i = 0; i <= 9; i++) cnt[i] = 0;
    for (i = 0; i < len; i++) cnt[list[i]]++;
    for (i = 1; i <= 9; i++) cnt[i] += cnt[i - 1];
    for (i = 0; i < len; i++) {
        k = list[i];
        out[cnt[k]-1] = k;
        cnt[k]--;
    }
    if (out[0] == 0){
        for (i = 1; i < len; i++){
            if (out[i] != 0){
                j = out[i];
                break;
            }
        }
        out[i] = out[0];
        out[0] = j;
    }
    for (i = 0; i < len; i++) printf("%d", out[i]);
    printf("\n");
    for (i = 0; i <= 9; i++) cnt[i] = 0;
    for (i = 0; i < len; i++) cnt[list[i]]++;
    for (i = 1; i <= 9; i++) cnt[i] += cnt[i - 1];
    for (i = 0; i < len; i++) {
        k = list[i];
        out[len - cnt[k]] = k;
        cnt[k]--;
    }
    for (i = 0; i < len; i++) printf("%d", out[i]);
    return 0;
}