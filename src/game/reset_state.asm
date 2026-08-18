sub_reset_state:
	xor a
	ld (state.match_state_flags),a
	ld hl,state.match_flags
	ld de,state.current_player
	ld bc,00541h
	ld (hl),a
	ldir
	ld hl,state.main_game_state
	ld (hl),081h
	inc hl
	ld (hl),000h
	ret
