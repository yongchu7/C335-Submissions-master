
	.text
	.syntax unified
	.thumb
	.global	pop	
	.type	pop, %function


pop:
	ldr	r0, [sp]
	adds	sp ,4
	adds	r4,-1
	bx	lr
	.end


