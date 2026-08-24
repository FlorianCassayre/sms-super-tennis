sub_game_umpire_check_announcement:
	ld hl,state.main_game_state
	ld e,006h
	ld a,(state.match_state_flags)
	bit 3,a
	jr z,l0b36h
	ld e,GAME_FSM_BASE | game_fsm_state_t.score_announcement
l0b36h:
	ld (hl),e
	inc hl
	ld (hl),000h
	ret
