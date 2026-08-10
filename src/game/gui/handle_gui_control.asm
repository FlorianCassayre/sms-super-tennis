sub_handle_gui_control:
	ld hl,0c49ch		; 21 9c c4 ;0988
	inc (hl)			; 34 ;098b
	ld a,(hl)			; 7e ;098c
	cp 003h		; fe 03 ;098d
	ret c			; d8 ;098f
	xor a			; af ;0990
	ld (hl),a			; 77 ;0991
	ld hl,0c493h		; 21 93 c4 ;0992
	ld a,(hl)			; 7e ;0995
	and 030h		; e6 30 ;0996
	ld b,a			; 47 ;0998
	inc hl			; 23 ;0999
	ld a,(hl)			; 7e ;099a
	and 030h		; e6 30 ;099b
	cpl			; 2f ;099d
	and b			; a0 ;099e
	jr nz,l09f7h		; 20 56 ;099f
	ld hl,0c493h		; 21 93 c4 ;09a1
	ld a,(hl)			; 7e ;09a4
	inc hl			; 23 ;09a5
	ld (hl),a			; 77 ;09a6
	dec hl			; 2b ;09a7
	cp 000h		; fe 00 ;09a8
	ret z			; c8 ;09aa
	ld b,(hl)			; 46 ;09ab
	ld hl,gui.cursor_y		; 21 91 c4 ;09ac
	ld a,(hl)			; 7e ;09af
	srl b		; cb 38 ;09b0
	sbc a,000h		; de 00 ;09b2
	ld (hl),a			; 77 ;09b4
	jp nc,l09bah		; d2 ba 09 ;09b5
	ld (hl),003h		; 36 03 ;09b8
l09bah:
	ld a,(hl)			; 7e ;09ba
	srl b		; cb 38 ;09bb
	adc a,000h		; ce 00 ;09bd
	ld (hl),a			; 77 ;09bf
	cp 004h		; fe 04 ;09c0
	jp c,l09c7h		; da c7 09 ;09c2
	ld (hl),000h		; 36 00 ;09c5
l09c7h:
	ld e,(hl)			; 5e ;09c7
	ld d,000h		; 16 00 ;09c8
	ld hl,game_settings		; 21 47 c0 ;09ca
	add hl,de			; 19 ;09cd
	ld a,e			; 7b ;09ce
	cp 003h		; fe 03 ;09cf
	jr nz,l09d7h		; 20 04 ;09d1
	ld e,004h		; 1e 04 ;09d3
	jr l09d9h		; 18 02 ;09d5
l09d7h:
	ld e,002h		; 1e 02 ;09d7
l09d9h:
	ld a,(hl)			; 7e ;09d9
	srl b		; cb 38 ;09da
	jp nc,l09e6h		; d2 e6 09 ;09dc
	sbc a,000h		; de 00 ;09df
	ld (hl),a			; 77 ;09e1
	jp nc,l09e6h		; d2 e6 09 ;09e2
	ld (hl),e			; 73 ;09e5
l09e6h:
	inc e			; 1c ;09e6
	ld a,(hl)			; 7e ;09e7
	srl b		; cb 38 ;09e8
	jp nc,l09f6h		; d2 f6 09 ;09ea
	adc a,000h		; ce 00 ;09ed
	ld (hl),a			; 77 ;09ef
	cp e			; bb ;09f0
	jp c,l09f6h		; da f6 09 ;09f1
	ld (hl),000h		; 36 00 ;09f4
l09f6h:
	ret			; c9 ;09f6
l09f7h:
	ld a,(game_settings.control_level)		; 3a 48 c0 ;09f7
	ld (0c4b2h),a		; 32 b2 c4 ;09fa
	add a,002h		; c6 02 ;09fd
	ld (0c4b0h),a		; 32 b0 c4 ;09ff
	ld a,(0c04ah)		; 3a 4a c0 ;0a02
	ld (0c4b1h),a		; 32 b1 c4 ;0a05
	srl a		; cb 3f ;0a08
	ld (0c4b3h),a		; 32 b3 c4 ;0a0a
	jp sub_draw_tennis_court		; c3 bd 0a ;0a0d
