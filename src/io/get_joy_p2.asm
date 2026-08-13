sub_get_joy_p2:
	ld a,(RAM_INPUT_ENABLE)		;02a3
	and a			;02a6
	jr z,+		;02a7
	in a,(I_JOYPAD_1)		;02a9
	ld c,a			;02ab
	in a,(I_JOYPAD_2)		;02ac
	rl c		;02ae
	rla			;02b0
	rl c		;02b1
	rla			;02b3
	cpl			;02b4
	and JOY_MASK_ALL		;02b5
	ret			;02b7
+:
	ld a,KBD_ROW_JOY_SELECT		;02b8
	out (O_DE),a		;02ba
	in a,(I_JOYPAD_1)		;02bc
	ld c,a			;02be
	in a,(I_JOYPAD_2)		;02bf
	rl c		;02c1
	rla			;02c3
	rl c		;02c4
	rla			;02c6
	ld c,a			;02c7
	ld a,KBD_P2_LEFT_ROW		;02c8
	out (O_DE),a		;02ca
	in a,(I_JOYPAD_1)		;02cc
	bit KBD_P2_LEFT_BIT,a		;02ce
	jr nz,+		;02d0
	res JOY_BIT_LEFT,c		;02d2
+:
	bit KBD_P2_DOWN_BIT,a		;02d4
	jr nz,+		;02d6
	res JOY_BIT_DOWN,c		;02d8
+:
	ld a,KBD_P2_UP_ROW		;02da
	out (O_DE),a		;02dc
	in a,(I_JOYPAD_1)		;02de
	bit KBD_P2_UP_BIT,a		;02e0
	jr nz,+		;02e2
	res JOY_BIT_UP,c		;02e4
+:
	ld a,KBD_P2_RIGHT_ROW		;02e6
	out (O_DE),a		;02e8
	in a,(I_JOYPAD_1)		;02ea
	bit KBD_P2_RIGHT_BIT,a		;02ec
	jr nz,+		;02ee
	res JOY_BIT_RIGHT,c		;02f0
+:
	ld a,KBD_P2_B2_ROW		;02f2
	out (O_DE),a		;02f4
	in a,(I_JOYPAD_2)		;02f6
	bit KBD_P2_B2_BIT,a		;02f8
	jr nz,+		;02fa
	res JOY_BIT_B2,c		;02fc
+:
	ld a,KBD_P2_B1_ROW		;02fe
	out (O_DE),a		;0300
	in a,(I_JOYPAD_2)		;0302
	bit KBD_P2_B1_BIT,a		;0304
	jr nz,+		;0306
	res JOY_BIT_B1,c		;0308
+:
	ld a,c			;030a
	cpl			;030b
	and JOY_MASK_ALL		;030c
	ret			;030e
