sub_handle_gui_control:
	ld hl,0c49ch		;0988
	inc (hl)			;098b
	ld a,(hl)			;098c
	cp 003h		;098d
	ret c			;098f
	xor a			;0990
	ld (hl),a			;0991
	ld hl,0c493h		;0992
	ld a,(hl)			;0995
	and 030h		;0996
	ld b,a			;0998
	inc hl			;0999
	ld a,(hl)			;099a
	and 030h		;099b
	cpl			;099d
	and b			;099e
	jr nz,l09f7h		;099f
	ld hl,0c493h		;09a1
	ld a,(hl)			;09a4
	inc hl			;09a5
	ld (hl),a			;09a6
	dec hl			;09a7
	cp 000h		;09a8
	ret z			;09aa
	ld b,(hl)			;09ab
	ld hl,gui.cursor_y		;09ac
	ld a,(hl)			;09af
	srl b		;09b0
	sbc a,000h		;09b2
	ld (hl),a			;09b4
	jp nc,l09bah		;09b5
	ld (hl),003h		;09b8
l09bah:
	ld a,(hl)			;09ba
	srl b		;09bb
	adc a,000h		;09bd
	ld (hl),a			;09bf
	cp 004h		;09c0
	jp c,l09c7h		;09c2
	ld (hl),000h		;09c5
l09c7h:
	ld e,(hl)			;09c7
	ld d,000h		;09c8
	ld hl,game.settings		;09ca
	add hl,de			;09cd
	ld a,e			;09ce
	cp 003h		;09cf
	jr nz,l09d7h		;09d1
	ld e,004h		;09d3
	jr l09d9h		;09d5
l09d7h:
	ld e,002h		;09d7
l09d9h:
	ld a,(hl)			;09d9
	srl b		;09da
	jp nc,l09e6h		;09dc
	sbc a,000h		;09df
	ld (hl),a			;09e1
	jp nc,l09e6h		;09e2
	ld (hl),e			;09e5
l09e6h:
	inc e			;09e6
	ld a,(hl)			;09e7
	srl b		;09e8
	jp nc,l09f6h		;09ea
	adc a,000h		;09ed
	ld (hl),a			;09ef
	cp e			;09f0
	jp c,l09f6h		;09f1
	ld (hl),000h		;09f4
l09f6h:
	ret			;09f6
l09f7h:
	ld a,(game.settings.control_level)		;09f7
	ld (0c4b2h),a		;09fa
	add a,002h		;09fd
	ld (0c4b0h),a		;09ff
	ld a,(state.maybe_random_seed)		;0a02
	ld (0c4b1h),a		;0a05
	srl a		;0a08
	ld (0c4b3h),a		;0a0a
	jp sub_0abd_draw_tennis_court		;0a0d
