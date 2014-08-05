	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push {r3, r4, r5, lr}

	cmp  r0, #0
	ble .L3	
	sub r0, #1

	mov r3 ,#0
    mov r4, #1
.L4:
	add r5, r3, r4
	mov r3, r4
	mov r4, r5
	
	subs r0, #1
	bne .L4

	mov r0, r5
	pop {r3, r4, r5, pc}
.L3:
	mov r0, #0
	pop {r3, r4, r5, pc}
	
	.size fibonacci, .-fibonacci
	.end
