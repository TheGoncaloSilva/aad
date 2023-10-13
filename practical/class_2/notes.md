# Ex: 2.1
## ex_1.s:
    * r1 = 5
    * r4 = 0
    * r6 = 101 & 111 = 5
    * r8 = 101 ! 1001 = 1101 = 13 = 0xD
    * r10 = 101 ~| 1011 = 1110 = 14 = 0xE (only 1 when different)

# Ex: 2.2
    * r4 = -5 = 0xFFFFFFFB
    * r6 = 0
    * Register 1 is written in clock cycle 10 and read in clock cycles 8 and 9 (see diagram above)
    
# Ex: 3 - Algorithm in C
```c
int values[] = {1,2,3,4,5,6,7,8,9,10};
int nelem = 10;
int sum;
int i;
sum = 0;
for (i = 0; i < nelem; i++)
    sum += values[i];
```