
	.text
	.syntax unified
	.thumb
	.global	add	
	.type	add, %function
add:
	adds	r0,r1
	bx	lr
	
	.global	sub	
	.type	sub, %function
sub:
	subs	r0,r1
	bx	lr
	
	.global	multi
	.type	multi, %function
multi:
	mul	r0,r1
	bx	lr

	.global	divid	
	.type	divid, %function
divid:
	cmp	r0,r1
	ble	get_div_ans
	mov	r0,r3
	bx	lr
	

	.global	empty
	.type	empty, %function
empty:
	cmp	r4,0	
	bne	b1	
	mov	r0,1
	bx	lr

	.global	address
	.type	address, %function
address:
	mov	r0,sp
	bx	lr
	
	.global	or
	.type	or, %function
or:
	nop
	orrs	r0,r1
	mov     pc,lr
	
	.global	and
	.type	and, %function
and:	
	nop
	ands	r0,r1
	mov     pc,lr
	.end
