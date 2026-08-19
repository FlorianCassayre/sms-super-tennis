game_fsm_loop:
	call sub_audio_event_wait
	ld hl,game_fsm_loop
	push hl
	ld a,(state.main_game_state)
	and $0f
	ld hl,game_fsm_routines
game_fsm:
	add a,a
	ld e,a
	ld d,0
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
