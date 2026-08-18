sub_joy_debounce:
	ld a,(state.main_game_state)		;0795
	bit 7,a		;0798
	ret z			;079a
	and 00fh		;079b
	cp 000h		;079d
	call z,sub_graphics_palette_swap_flags		;079f
	call sub_get_joy_p2		;07a2
	and 030h		;07a5
	jr nz,+		;07a7
	call sub_get_joy_p1		;07a9
	and 030h		;07ac
	jr z,+++		;07ae
	ld c,000h		;07b0
	jr ++		;07b2
+:
	ld c,0d0h		;07b4
++:
	ex af,af'			;07b6
	ld hl,state.main_game_state		;07b7
	ld a,04fh		;07ba
	and (hl)			;07bc
	cp 041h		;07bd
	jr nz,+		;07bf
	ld hl,0c009h		;07c1
	ex af,af'			;07c4
	cp (hl)			;07c5
	ret z			;07c6
	ld a,c			;07c7
	ld (state.match_state_flags),a		;07c8
	ld a,000h		;07cb
	ld (psg_engine.track_request_id),a		;07cd
	ld a,002h		;07d0
	ld (state.main_game_state),a		;07d2
	ret			;07d5
+:
	res 6,a		;07d6
	cp 001h		;07d8
	ret z			;07da
	ld a,087h		;07db
	ld (state.main_game_state),a		;07dd
	ex af,af'			;07e0
	ld (0c009h),a		;07e1
	ld a,000h		;07e4
	ld (psg_engine.track_request_id),a		;07e6
	ret			;07e9
+++:
	ex af,af'			;07ea
	ld a,(state.main_game_state)		;07eb
	and 00fh		;07ee
	cp 001h		;07f0
	ret nz			;07f2
	ex af,af'			;07f3
	ld (0c009h),a		;07f4
	ret			;07f7
