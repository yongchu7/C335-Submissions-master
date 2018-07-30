
	.text
	.syntax unified
	.thumb
	.global	push	
	.type	push, %function

push:
	adds	sp ,-4
	str	r0, [sp]
	adds	r4, 1	
	bx	lr
	
	.global	counter		
	.type	counter, %function
counter:
	mov	r4,0
	mov	r0,r4
	bx	lr
	
	.global	r4		
	.type	r4, %function
r4:
	mov	r0,r4
	bx	lr
	.end
