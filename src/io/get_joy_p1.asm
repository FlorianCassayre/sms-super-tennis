sub_get_joy_p1:
	ld a,(RAM_INPUT_ENABLE)		;030f
	and a			;0312
	jr z,+		;0313
	in a,(I_JOYPAD_1)		;0315
	cpl			;0317
	and JOY_MASK_ALL		;0318
	ret			;031a
+:
	ld a,KBD_ROW_JOY_SELECT		;031b
	out (O_DE),a		;031d
	in a,(I_JOYPAD_1)		;031f
	ld c,a			;0321
	ld a,KBD_P1_B1_ROW		;0322
	out (O_DE),a		;0324
	in a,(I_JOYPAD_1)		;0326
	bit KBD_P1_B1_BIT,a		;0328
	jr nz,+		;032a
	res JOY_BIT_B1,c		;032c
+:
	ld a,KBD_P1_B2_ROW		;032e
	out (O_DE),a		;0330
	in a,(I_JOYPAD_1)		;0332
	bit KBD_P1_B2_BIT,a		;0334
	jr nz,+		;0336
	res JOY_BIT_B2,c		;0338
+:
	ld a,KBD_P1_DOWN_ROW		;033a
	out (O_DE),a		;033c
	in a,(I_JOYPAD_1)		;033e
	bit KBD_P1_DOWN_BIT,a		;0340
	jr nz,+		;0342
	res JOY_BIT_DOWN,c		;0344
+:
	ld a,KBD_P1_LEFT_ROW		;0346
	out (O_DE),a		;0348
	in a,(I_JOYPAD_1)		;034a
	bit KBD_P1_LEFT_BIT,a		;034c
	jr nz,+		;034e
	res JOY_BIT_LEFT,c		;0350
+:
	ld a,KBD_P1_RIGHT_ROW		;0352
	out (O_DE),a		;0354
	in a,(I_JOYPAD_1)		;0356
	bit KBD_P1_RIGHT_BIT,a		;0358
	jr nz,+		;035a
	res JOY_BIT_RIGHT,c		;035c
+:
	bit KBD_P1_UP_BIT,a		;035e
	jr nz,+		;0360
	res JOY_BIT_UP,c		;0362
+:
	ld a,c			;0364
	cpl			;0365
	and JOY_MASK_ALL		;0366
	ret			;0368
