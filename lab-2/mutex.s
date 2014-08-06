	.syntax unified
	.arch armv7-a
	.text

	.equ locked, 1
	.equ unlocked, 0

	.global lock_mutex
	.type lock_mutex, function
lock_mutex:
    push { r3, r4, lr }
	mov r4, locked
	.TRY:
		LDREX r3, [r0]
		CMP r3, unlocked
		STREXEQ r3, r4, [r0]
		CMPEQ r3, unlocked
		BNE .TRY
	pop  { r3, r4, pc }

	.size lock_mutex, .-lock_mutex

	.global unlock_mutex
	.type unlock_mutex, function
unlock_mutex:
	push { r3, lr }
	mov r3, unlocked
	STR r3, [r0]
	pop  { r3, pc }
	.size unlock_mutex, .-unlock_mutex

	.end
