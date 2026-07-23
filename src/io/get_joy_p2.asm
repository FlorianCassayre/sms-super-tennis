sub_get_joy_p2:
	ld a,(RAM_INPUT_ENABLE)		; 3a 02 c0 ;02a3
	and a			; a7 ;02a6
	jr z,+		; 28 0f ;02a7
	in a,(PORT_JOY1)		; db dc ;02a9
	ld c,a			; 4f ;02ab
	in a,(PORT_JOY2)		; db dd ;02ac
	rl c		; cb 11 ;02ae
	rla			; 17 ;02b0
	rl c		; cb 11 ;02b1
	rla			; 17 ;02b3
	cpl			; 2f ;02b4
	and JOY_MASK_ALL		; e6 3f ;02b5
	ret			; c9 ;02b7
+:
	ld a,KBD_ROW_JOY_SELECT		; 3e 07 ;02b8
	out (PORT_KBD_MATRIX),a		; d3 de ;02ba
	in a,(PORT_JOY1)		; db dc ;02bc
	ld c,a			; 4f ;02be
	in a,(PORT_JOY2)		; db dd ;02bf
	rl c		; cb 11 ;02c1
	rla			; 17 ;02c3
	rl c		; cb 11 ;02c4
	rla			; 17 ;02c6
	ld c,a			; 4f ;02c7
	ld a,KBD_P2_LEFT_ROW		; 3e 01 ;02c8
	out (PORT_KBD_MATRIX),a		; d3 de ;02ca
	in a,(PORT_JOY1)		; db dc ;02cc
	bit KBD_P2_LEFT_BIT,a		; cb 57 ;02ce
	jr nz,+		; 20 02 ;02d0
	res JOY_BIT_LEFT,c		; cb 91 ;02d2
+:
	bit KBD_P2_DOWN_BIT,a		; cb 5f ;02d4
	jr nz,+		; 20 02 ;02d6
	res JOY_BIT_DOWN,c		; cb 89 ;02d8
+:
	ld a,KBD_P2_UP_ROW		; 3e 02 ;02da
	out (PORT_KBD_MATRIX),a		; d3 de ;02dc
	in a,(PORT_JOY1)		; db dc ;02de
	bit KBD_P2_UP_BIT,a		; cb 4f ;02e0
	jr nz,+		; 20 02 ;02e2
	res JOY_BIT_UP,c		; cb 81 ;02e4
+:
	ld a,KBD_P2_RIGHT_ROW		; 3e 03 ;02e6
	out (PORT_KBD_MATRIX),a		; d3 de ;02e8
	in a,(PORT_JOY1)		; db dc ;02ea
	bit KBD_P2_RIGHT_BIT,a		; cb 57 ;02ec
	jr nz,+		; 20 02 ;02ee
	res JOY_BIT_RIGHT,c		; cb 99 ;02f0
+:
	ld a,KBD_P2_B2_ROW		; 3e 05 ;02f2
	out (PORT_KBD_MATRIX),a		; d3 de ;02f4
	in a,(PORT_JOY2)		; db dd ;02f6
	bit KBD_P2_B2_BIT,a		; cb 5f ;02f8
	jr nz,+		; 20 02 ;02fa
	res JOY_BIT_B2,c		; cb a9 ;02fc
+:
	ld a,KBD_P2_B1_ROW		; 3e 06 ;02fe
	out (PORT_KBD_MATRIX),a		; d3 de ;0300
	in a,(PORT_JOY2)		; db dd ;0302
	bit KBD_P2_B1_BIT,a		; cb 57 ;0304
	jr nz,+		; 20 02 ;0306
	res JOY_BIT_B1,c		; cb a1 ;0308
+:
	ld a,c			; 79 ;030a
	cpl			; 2f ;030b
	and JOY_MASK_ALL		; e6 3f ;030c
	ret			; c9 ;030e
