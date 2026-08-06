sub_get_joy_p1:
	ld a,(RAM_INPUT_ENABLE)		; 3a 02 c0 ;030f
	and a			; a7 ;0312
	jr z,+		; 28 06 ;0313
	in a,(I_JOYPAD_1)		; db dc ;0315
	cpl			; 2f ;0317
	and JOY_MASK_ALL		; e6 3f ;0318
	ret			; c9 ;031a
+:
	ld a,KBD_ROW_JOY_SELECT		; 3e 07 ;031b
	out (O_DE),a		; d3 de ;031d
	in a,(I_JOYPAD_1)		; db dc ;031f
	ld c,a			; 4f ;0321
	ld a,KBD_P1_B1_ROW		; 3e 02 ;0322
	out (O_DE),a		; d3 de ;0324
	in a,(I_JOYPAD_1)		; db dc ;0326
	bit KBD_P1_B1_BIT,a		; cb 67 ;0328
	jr nz,+		; 20 02 ;032a
	res JOY_BIT_B1,c		; cb a1 ;032c
+:
	ld a,KBD_P1_B2_ROW		; 3e 03 ;032e
	out (O_DE),a		; d3 de ;0330
	in a,(I_JOYPAD_1)		; db dc ;0332
	bit KBD_P1_B2_BIT,a		; cb 67 ;0334
	jr nz,+		; 20 02 ;0336
	res JOY_BIT_B2,c		; cb a9 ;0338
+:
	ld a,KBD_P1_DOWN_ROW		; 3e 04 ;033a
	out (O_DE),a		; d3 de ;033c
	in a,(I_JOYPAD_1)		; db dc ;033e
	bit KBD_P1_DOWN_BIT,a		; cb 6f ;0340
	jr nz,+		; 20 02 ;0342
	res JOY_BIT_DOWN,c		; cb 89 ;0344
+:
	ld a,KBD_P1_LEFT_ROW		; 3e 05 ;0346
	out (O_DE),a		; d3 de ;0348
	in a,(I_JOYPAD_1)		; db dc ;034a
	bit KBD_P1_LEFT_BIT,a		; cb 6f ;034c
	jr nz,+		; 20 02 ;034e
	res JOY_BIT_LEFT,c		; cb 91 ;0350
+:
	ld a,KBD_P1_RIGHT_ROW		; 3e 06 ;0352
	out (O_DE),a		; d3 de ;0354
	in a,(I_JOYPAD_1)		; db dc ;0356
	bit KBD_P1_RIGHT_BIT,a		; cb 6f ;0358
	jr nz,+		; 20 02 ;035a
	res JOY_BIT_RIGHT,c		; cb 99 ;035c
+:
	bit KBD_P1_UP_BIT,a		; cb 77 ;035e
	jr nz,+		; 20 02 ;0360
	res JOY_BIT_UP,c		; cb 81 ;0362
+:
	ld a,c			; 79 ;0364
	cpl			; 2f ;0365
	and JOY_MASK_ALL		; e6 3f ;0366
	ret			; c9 ;0368
