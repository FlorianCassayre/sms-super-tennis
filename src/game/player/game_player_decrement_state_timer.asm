sub_game_player_decrement_state_timer:
	ld l,(ix + entity_t.state_timer)
	ld h,(ix + entity_t.state_timer + 1)
	dec hl
	ld (ix + entity_t.state_timer),l
	ld (ix + entity_t.state_timer + 1),h
	ld a,l
	or h
	ret
