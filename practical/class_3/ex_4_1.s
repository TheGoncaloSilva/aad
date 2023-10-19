	.data
values:	.word	1,2,3,4,5,6,7,8,9,10	; values to be ordered
nelem:	.word 	10			; array size
        .text
        .global main

main:	addi 	r1,r0,nelem		; r1 = *nelem
	nop
	nop
        lw 	r1,0(r1)		; r1 = nelem
	addi	r2,r0,values		; r2 = *values
        add 	r3,r0,r0		; r3 = i
	nop
	nop
        addi 	r8,r1,-1		; r8 = nelem - 1

for1: 	slt 	r9,r3,r8		; r9 = i < (nelem - 1)
	nop
	nop
        beqz 	r9,endf1		; for(i=0;i<nelem-1;i++){ -- tem q ter 3 nops em cada branch
        
	nop
	nop
	nop
	addi 	r6,r2,4			; r6 = *values[j]
	lw 	r4,0(r2)		; r4 = values[i]
	addi 	r5,r3,1			; r5 = j = i + 1

for2:   lw 	r7,0(r6)		; r7 = values[j]
	nop
	nop
	slt	r9,r4,r7		; r9 = values[i] < values[j]
	
	nop
	nop
	beqz    r9, endf2            	; if (values[i]) < values[j]))
	nop
	nop
	nop
	add	r9,r4,r0		; r9 = values[i]
	add	r4,r7,r0		; r4 = values[j]
	add 	r7,r9,r0		; r7 = values[i]
	nop
	sw	0(r2),r4 		; values[i] = values[j]
	nop
	sw 	0(r6),r7		; values[j] = values[i]
endf2:					; }
	addi	r5,r5,1			; j = j + 1
	nop
	addi 	r6,r6,4			; r6 = *values[j++]
	slt	r9,r5,r1		; r9 = j < nelem
	nop
	nop
	bnez	r9,for2			; compare elements?
	
	nop
	nop
	nop
	addi 	r3,r3,1			; i++
	addi	r2,r2,4			; r2 = *values[i++]
	j 	for1				
	nop
	nop
	nop
endf1:					; }
	trap	0			; end of program
	

	
	
	
