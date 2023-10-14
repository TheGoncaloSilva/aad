	.data
values:	.word	1,2,3,4,5,6,7,8,9,10	; values to be ordered
nelem:	.word 	10			; array size
        .text
        .global main

main:	addi 	r1,r0,nelem		; r1 = *nelem
        lw 	r1,0(r1)		; r1 = nelem
	addi	r2,r0,values		; r2 = *values
        addi 	r3,r0,1			; r3 = i
        add 	r4,r0,r0		; r4 = j
        add 	r5,r0,r0		; r5 = tmp

for: 	slt 	r6,r3,r1		; !r6 = i < n
        beqz 	r6,endfor		; for(i=1;i<n;i++){ -- tem q ter 3 nops em cada branch
        lw 	r5,0(r2)		; tmp = arr[i]
	addi 	r4,r3,-1		; j = i - 1
	
while: 	addi	r9,r0,-1		; !r9 = -1
	sgt	r6,r4,r9		; !r6 = j>=0
	beqz    r6, endW            ; while (j >= 0) {
	addi 	r7,r0,4			; !r7 = 4
	mult 	r7,r4,r7		; !r7 = j * 4
	addi	r7,r7,values		; !r7 = *values[j]
	lw	r7,0(r7)		; !r7 = values[j]
	slt	r8,r7,r5		; !r8 = arr[j] < tmp
	and 	r8,r7,r8		; !r7 = j >= 0 && arr[j] < tmp
	bnez	r8,endW			; while (j >= 0 && arr[j] < tmp) {
	addi 	r4,r4,1			; j = j + 1
	addi 	r6,r0,4			; !r6 = 4
	mult 	r6,r4,r6		; !r6 = j * 4
	addi	r6,r6,values		; !r6 = *values[j]
	sw	0(r6),r7		; arr[j + 1] = arr[j]
	addi	r4,r4,-2		; j = j - 2
        j 	while
endW:					; }
	addi 	r3,r3,1			; i++
	addi	r2,r2,4			; r2 = *values[i++]
	j 	for				
endfor:					; }
end:    trap	0			; end of program
	

	
	
	
