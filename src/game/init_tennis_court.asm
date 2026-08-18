sub_init_tennis_court:
	ld hl,state.match_state_flags
	set 3,(hl)
	set 7,(hl)
	ld a,003h
	ld (state.current_server),a
	jp sub_game_court_draw
