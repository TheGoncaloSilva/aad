	    .data
values:	.word	1,2,3,4,5,6,7,8,9,10	; values to be ordered
nelem:	.word 	10			            ; array size
        .text
        .global main

main:	addi 	r1,r0,nelem		; r1 = nelem
        lw 	r2,0(r1)		    ; r2 = values[]
        addi 	r3,r0,1			; r3 = i
        add 	r4,r0,r0		; r4 = j
        add 	r5,r0,r0		; r5 = tmp
for1: 	slt 	r6,r5,r1		; r6 = i <= n mudar que tem = 
        beqz 	r6,endfor1		; for(i=1;i<n;i++){ -- tem q ter 3 nops em cada branch
        lw 	r5,0(r2)		    ; tmp = arr[i]
        addi 	r3,r3,1			; i++
for2:

	    j 	for2
endfor2:				        ; }
	    j 	for1				
endfor1:				        ; }


end:    trap	0			    ; end of program
	

	
	
	