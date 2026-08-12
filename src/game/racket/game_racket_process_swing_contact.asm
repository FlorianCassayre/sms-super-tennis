sub_game_racket_process_swing_contact:
	ld a,(ix + entity_t.time_before_serve)		; dd 7e 1a ;2c40
	and a			; a7 ;2c43
	jr nz,+		; 20 09 ;2c44
	res 7,(ix+019h)		; dd cb 19 be ;2c46
	bit 7,(ix+01dh)		; dd cb 1d 7e ;2c4a
	ret z			; c8 ;2c4e
+:
	ld b,a			; 47 ;2c4f
	ld a,(0c519h)		; 3a 19 c5 ;2c50
	cp 001h		; fe 01 ;2c53
	ret z			; c8 ;2c55
	bit 7,(ix+01dh)		; dd cb 1d 7e ;2c56
	ret z			; c8 ;2c5a
	ld a,(ix + entity_t.type)		; dd 7e 02 ;2c5b
	and 07fh		; e6 7f ;2c5e
	cp 005h		; fe 05 ;2c60
	jr z,+		; 28 15 ;2c62
	ld a,(0c040h)		; 3a 40 c0 ;2c64
	bit 0,a		; cb 47 ;2c67
	jr z,+		; 28 0e ;2c69
	ld a,(0c041h)		; 3a 41 c0 ;2c6b
	cp (ix + entity_t.side_state)		; dd be 01 ;2c6e
	jr nz,+		; 20 06 ;2c71
	ld hl,0c000h		; 21 00 c0 ;2c73
	res 0,(hl)		; cb 86 ;2c76
	ret			; c9 ;2c78
+:
	res 7,(ix+01dh)		; dd cb 1d be ;2c79
	ld a,(ix+01fh)		; dd 7e 1f ;2c7d
	ld (0c302h),a		; 32 02 c3 ;2c80
	ld (0c401h),a		; 32 01 c4 ;2c83
	ld a,b			; 78 ;2c86
	ld b,(ix+01bh)		; dd 46 1b ;2c87
	call sub_div_a_b_c		; cd d0 2e ;2c8a
	ld e,c			; 59 ;2c8d
	ld a,(ix + entity_t.x_div_pos)		; dd 7e 2f ;2c8e
	rrca			; 0f ;2c91
	rrca			; 0f ;2c92
	rrca			; 0f ;2c93
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;2c94
	jr z,+		; 28 01 ;2c98
	cpl			; 2f ;2c9a
+:
	and 0e0h		; e6 e0 ;2c9b
	or e			; b3 ;2c9d
	ld e,a			; 5f ;2c9e
	ld a,(ix + entity_t.y_div_pos)		; dd 7e 2e ;2c9f
	rla			; 17 ;2ca2
	rla			; 17 ;2ca3
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;2ca4
	jr z,+		; 28 01 ;2ca8
	cpl			; 2f ;2caa
+:
	and 01ch		; e6 1c ;2cab
	or e			; b3 ;2cad
	ld e,a			; 5f ;2cae
	ld d,000h		; 16 00 ;2caf
	ld hl,game_ball_trajectory_data_bounce_magnitude		; 21 98 2d ;2cb1
	add hl,de			; 19 ;2cb4
	ld a,(hl)			; 7e ;2cb5
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;2cb6
	jr z,+		; 28 0b ;2cba
	bit 0,(ix + entity_t.render_facing_dir)		; dd cb 20 46 ;2cbc
	jr nz,++		; 20 0e ;2cc0
	call sub_abs10		; cd 52 2d ;2cc2
	jr ++		; 18 09 ;2cc5
+:
	bit 0,(ix + entity_t.render_facing_dir)		; dd cb 20 46 ;2cc7
	jr z,++		; 28 03 ;2ccb
	call sub_abs10		; cd 52 2d ;2ccd
++:
	and 01fh		; e6 1f ;2cd0
	ld de,0c320h		; 11 20 c3 ;2cd2
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;2cd5
	jr z,+		; 28 03 ;2cd9
	ld b,00bh		; 06 0b ;2cdb
	add a,b			; 80 ;2cdd
+:
	ld (de),a			; 12 ;2cde
	ld a,(0c4b0h)		; 3a b0 c4 ;2cdf
	ld e,000h		; 1e 00 ;2ce2
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;2ce4
	jr z,+		; 28 05 ;2ce8
	ld a,(0c4b1h)		; 3a b1 c4 ;2cea
	ld e,010h		; 1e 10 ;2ced
+:
	ld hl,game_ball_trajectory_data_axis_a		; 21 58 2d ;2cef
	call sub_2d0eh_movement		; cd 0e 2d ;2cf2
	ld a,(0c4b2h)		; 3a b2 c4 ;2cf5
	ld e,000h		; 1e 00 ;2cf8
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;2cfa
	jr z,+		; 28 05 ;2cfe
	ld a,(0c4b3h)		; 3a b3 c4 ;2d00
	ld e,010h		; 1e 10 ;2d03
+:
	ld hl,game_ball_trajectory_data_axis_b		; 21 78 2d ;2d05
	call sub_2d0eh_movement		; cd 0e 2d ;2d08
	jp l2d35h		; c3 35 2d ;2d0b
	.INCLUDE "physics/2d0eh_movement.asm"
l2d35h:
	ld a,(ix + entity_t.side_state)		; dd 7e 01 ;2d35
	and 001h		; e6 01 ;2d38
	ld a,000h		; 3e 00 ;2d3a
	ld b,001h		; 06 01 ;2d3c
	jr z,+		; 28 04 ;2d3e
	ld a,001h		; 3e 01 ;2d40
	ld b,000h		; 06 00 ;2d42
+:
	ld de,040h		; 11 40 00 ;2d44
	ld hl,0c227h		; 21 27 c2 ;2d47
	ld (hl),a			; 77 ;2d4a
	add hl,de			; 19 ;2d4b
	ld (hl),b			; 70 ;2d4c
	add hl,de			; 19 ;2d4d
	ld (hl),a			; 77 ;2d4e
	add hl,de			; 19 ;2d4f
	ld (hl),b			; 70 ;2d50
	ret			; c9 ;2d51
