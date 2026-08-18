sub_game_gui_settings_handle_control:
	ld hl,score.menu_key_repeat_timer
	inc (hl)
	ld a,(hl)
	cp 003h
	ret c
	xor a
	ld (hl),a
	ld hl,0c493h
	ld a,(hl)
	and 030h
	ld b,a
	inc hl
	ld a,(hl)
	and 030h
	cpl
	and b
	jr nz,l09f7h
	ld hl,0c493h
	ld a,(hl)
	inc hl
	ld (hl),a
	dec hl
	cp 000h
	ret z
	ld b,(hl)
	ld hl,score.settings_cursor_y
	ld a,(hl)
	srl b
	sbc a,000h
	ld (hl),a
	jp nc,l09bah
	ld (hl),003h
l09bah:
	ld a,(hl)
	srl b
	adc a,000h
	ld (hl),a
	cp 004h
	jp c,l09c7h
	ld (hl),000h
l09c7h:
	ld e,(hl)
	ld d,000h
	ld hl,state.settings
	add hl,de
	ld a,e
	cp 003h
	jr nz,l09d7h
	ld e,004h
	jr l09d9h
l09d7h:
	ld e,002h
l09d9h:
	ld a,(hl)
	srl b
	jp nc,l09e6h
	sbc a,000h
	ld (hl),a
	jp nc,l09e6h
	ld (hl),e
l09e6h:
	inc e
	ld a,(hl)
	srl b
	jp nc,l09f6h
	adc a,000h
	ld (hl),a
	cp e
	jp c,l09f6h
	ld (hl),000h
l09f6h:
	ret
l09f7h:
	ld a,(state.settings.control_level)
	ld (0c4b2h),a
	add a,002h
	ld (0c4b0h),a
	ld a,(state.settings.computer_level)
	ld (0c4b1h),a
	srl a
	ld (0c4b3h),a
	jp sub_game_court_draw
