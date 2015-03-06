	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	subs r1, r0, #1
    it le
    bxle lr

	mov r2 ,#0
    mov r3, #1
.L4:
	add r0, r2, r3
	mov r2, r3
	mov r3, r0
	subs r1, #1
	bgt .L4

    bx lr
	.size fibonacci, .-fibonacci
	.end
