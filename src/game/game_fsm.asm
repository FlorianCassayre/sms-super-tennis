game_fsm:
	call sub_audio_event_wait
	ld hl,game_fsm
	push hl
	ld a,(state.main_game_state)
	and 00fh
	ld hl,l0811h_routines
l0807h_game_fsm:
	add a,a
	ld e,a
	ld d,000h
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	jp (hl)
