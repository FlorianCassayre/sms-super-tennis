sub_joy_update_state:
	ld a,(state.match_state_flags)		;027b
	bit 2,a		;027e
	ret z			;0280
	bit 3,a		;0281
	jp nz,++		;0283
	bit 7,a		;0286
	jr z,+		;0288
	ld a,(joy.2.current)		;028a
	ld (joy.2.pressed),a		;028d
	call sub_get_joy_p2		;0290
	ld (joy.2.current),a		;0293
+:
	ld a,(joy.1.current)		;0296
	ld (joy.1.pressed),a		;0299
	call sub_get_joy_p1		;029c
	ld (joy.1.current),a		;029f
	ret			;02a2
	.INCLUDE "io/get_joy_p2.asm"
	.INCLUDE "io/get_joy_p1.asm"
++:
	ret			;0369
