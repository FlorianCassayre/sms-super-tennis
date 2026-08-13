sub_027bh_joy:
	ld a,(0c000h)		;027b
	bit 2,a		;027e
	ret z			;0280
	bit 3,a		;0281
	jp nz,++		;0283
	bit 7,a		;0286
	jr z,+		;0288
	ld a,(0c1c2h)		;028a
	ld (0c1c3h),a		;028d
	call sub_get_joy_p2		;0290
	ld (0c1c2h),a		;0293
+:
	ld a,(0c1c0h)		;0296
	ld (0c1c1h),a		;0299
	call sub_get_joy_p1		;029c
	ld (0c1c0h),a		;029f
	ret			;02a2
	.INCLUDE "io/get_joy_p2.asm"
	.INCLUDE "io/get_joy_p1.asm"
++:
	ret			;0369
