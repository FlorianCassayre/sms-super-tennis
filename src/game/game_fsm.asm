game_fsm:
	call sub_audio_event_wait		;07f8
	ld hl,game_fsm		;07fb
	push hl			;07fe
	ld a,(state.main_game_state)		;07ff
	and 00fh		;0802
	ld hl,l0811h_routines		;0804
l0807h_game_fsm:
	add a,a			;0807
	ld e,a			;0808
	ld d,000h		;0809
	add hl,de			;080b
	ld a,(hl)			;080c
	inc hl			;080d
	ld h,(hl)			;080e
	ld l,a			;080f
	jp (hl)			;0810
