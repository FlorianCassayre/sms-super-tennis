sub_get_joy_p2:
	ld a,(state.joy_not_mark3)
	and a
	jr z,+
	in a,(I_JOYPAD_1)
	ld c,a
	in a,(I_JOYPAD_2)
	rl c
	rla
	rl c
	rla
	cpl
	and JOY_MASK_ALL
	ret
+:
	ld a,KBD_ROW_JOY_SELECT
	out (O_DE),a
	in a,(I_JOYPAD_1)
	ld c,a
	in a,(I_JOYPAD_2)
	rl c
	rla
	rl c
	rla
	ld c,a
	ld a,KBD_P2_LEFT_ROW
	out (O_DE),a
	in a,(I_JOYPAD_1)
	bit KBD_P2_LEFT_BIT,a
	jr nz,+
	res JOY_BIT_LEFT,c
+:
	bit KBD_P2_DOWN_BIT,a
	jr nz,+
	res JOY_BIT_DOWN,c
+:
	ld a,KBD_P2_UP_ROW
	out (O_DE),a
	in a,(I_JOYPAD_1)
	bit KBD_P2_UP_BIT,a
	jr nz,+
	res JOY_BIT_UP,c
+:
	ld a,KBD_P2_RIGHT_ROW
	out (O_DE),a
	in a,(I_JOYPAD_1)
	bit KBD_P2_RIGHT_BIT,a
	jr nz,+
	res JOY_BIT_RIGHT,c
+:
	ld a,KBD_P2_B2_ROW
	out (O_DE),a
	in a,(I_JOYPAD_2)
	bit KBD_P2_B2_BIT,a
	jr nz,+
	res JOY_BIT_B2,c
+:
	ld a,KBD_P2_B1_ROW
	out (O_DE),a
	in a,(I_JOYPAD_2)
	bit KBD_P2_B1_BIT,a
	jr nz,+
	res JOY_BIT_B1,c
+:
	ld a,c
	cpl
	and JOY_MASK_ALL
	ret
