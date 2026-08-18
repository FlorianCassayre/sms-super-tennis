sub_joy_update_state:
	ld a,(state.match_state_flags)
	bit 2,a
	ret z
	bit 3,a
	jp nz,++
	bit 7,a
	jr z,+
	ld a,(joy.2.current)
	ld (joy.2.pressed),a
	call sub_get_joy_p2
	ld (joy.2.current),a
+:
	ld a,(joy.1.current)
	ld (joy.1.pressed),a
	call sub_get_joy_p1
	ld (joy.1.current),a
	ret
	.INCLUDE "io/get_joy_p2.asm"
	.INCLUDE "io/get_joy_p1.asm"
++:
	ret
