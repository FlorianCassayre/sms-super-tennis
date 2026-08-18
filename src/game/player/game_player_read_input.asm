sub_game_player_read_input:
	ld a,(state.match_state_flags)
	bit 3,a
	jr z,l2678h
	ld a,(ix + entity_t.shot_button)
	rla
	rla
	rla
	rla
	and 030h
	ld e,(ix + entity_t.input_dirs)
	or e
	and 03fh
	ld c,a
	ret z
	xor a
	ret
l2678h:
	ld a,(joy.1.pressed)
	ld b,a
	ld a,(joy.1.current)
	ld c,a
	ld a,(ix + entity_t.id)
	and 002h
	jr z,l268fh
	ld a,(joy.2.pressed)
	ld b,a
	ld a,(joy.2.current)
	ld c,a
l268fh:
	ld a,b
	and 020h
	ld e,a
	ld a,c
	and 020h
	and e
	ret nz
	ld a,b
	and 010h
	ld e,a
	ld a,c
	and 010h
	and e
	ret
