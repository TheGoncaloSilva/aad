	.data
values:	.word 1,2,3,4,5,6,7,8,9,10	; values to be added
nelem:	.word 10			; array size
sum:	.space 10 			; sum of the array elements
	.text 4				
	.global main
main:	addi 	r1,r0,nelem		; r1 = *nelem
	lw 	r1,0(r1)		; r1 = nelem
	addi 	r2,r0,values		; r2 = *values[0]
	addi 	r3,r0,0			; r3 = 0 -> sum
	addi 	r4,r0,0			; r4 = 0 -> i

loop:	lw	r5,0(r2)		; r5 = values[i]
	add 	r3,r3,r5		; r3 += r5 -> sum += values[i]
	addi  	r4,r4,1			; r4++ -> i++
	addi 	r2,r2,4			; r2 = *values[++]
	sub 	r7,r1,r4		; r7 = nelem-i
	bnez	r7,loop			; if(nelem - i > 0) then loop
	addi	r6,r0,sum		; r6 = *sum
	sw	0(r6),r3		; sum = r3
	trap 	0			; EOF