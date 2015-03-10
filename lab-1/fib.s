	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	cmp r0, #1
	it le
	bxle lr

	push { r4, r5, lr }
	sub r0, r0, #1
	mov r5, r0
	bl fibonacci
	@ Save the return value of recursive call to fibonacci with R4 - 1 as parameter
	mov r4, r0

	sub r0, r5, #1
	@ Save the return value of recursive call to fibonacci with R5 - 1 as parameter
	bl fibonacci
	add r0, r4
	pop { r4, r5, pc}		@EPILOG

	mov r0, #0			@ R0 = 0
	pop { r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end
