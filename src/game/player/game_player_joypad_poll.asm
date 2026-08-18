sub_game_player_joypad_poll:
	ld a,(state.match_state_flags)
	bit 3,a
	ret nz
	ld a,(ix + entity_t.id)
	ld b,a
	and 001h
	ret nz
	ld a,b
	and 002h
	jr nz,+
	ld a,(joy.1.current)
	jr ++
+:
	ld a,(joy.2.current)
++:
	and 00fh
	ld (ix + entity_t.input_dirs),a
	ret
