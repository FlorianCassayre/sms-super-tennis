sub_0b28h:
	ld hl,state.main_game_state
	ld e,006h
	ld a,(state.match_state_flags)
	bit 3,a
	jr z,l0b36h
	ld e,086h
l0b36h:
	ld (hl),e
	inc hl
	ld (hl),000h
	ret
