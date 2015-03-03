	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	subs r1, r0, #2
    itt le
    movle r0, #1
    bxle lr
	push {r4, r5, lr}

	mov r4 ,#1
    mov r5, #1
.L4:
	add r0, r4, r5
	mov r4, r5
	mov r5, r0
	
	subs r1, #1
	bgt .L4

	pop {r4, r5, pc}
	
	.size fibonacci, .-fibonacci
	.end
