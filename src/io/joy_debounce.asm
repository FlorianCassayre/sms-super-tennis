sub_joy_debounce:
	ld a,(state.main_game_state)
	bit 7,a
	ret z
	and 00fh
	cp 000h
	call z,sub_graphics_palette_swap_flags
	call sub_get_joy_p2
	and 030h
	jr nz,+
	call sub_get_joy_p1
	and 030h
	jr z,+++
	ld c,000h
	jr ++
+:
	ld c,0d0h
++:
	ex af,af'
	ld hl,state.main_game_state
	ld a,04fh
	and (hl)
	cp 041h
	jr nz,+
	ld hl,0c009h
	ex af,af'
	cp (hl)
	ret z
	ld a,c
	ld (state.match_state_flags),a
	ld a,000h
	ld (psg_engine.track_request_id),a
	ld a,002h
	ld (state.main_game_state),a
	ret
+:
	res 6,a
	cp 001h
	ret z
	ld a,087h
	ld (state.main_game_state),a
	ex af,af'
	ld (0c009h),a
	ld a,000h
	ld (psg_engine.track_request_id),a
	ret
+++:
	ex af,af'
	ld a,(state.main_game_state)
	and 00fh
	cp 001h
	ret nz
	ex af,af'
	ld (0c009h),a
	ret
