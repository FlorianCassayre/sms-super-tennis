sub_game_cpu_state_wait:
	ld a,(0c400h)
	and a
	ret nz
	bit 0,(ix + entity_t.ball_incoming)
	jr nz,@l20b2h
@l2099h:
	ld a,(state.match_state_flags)
	bit 7,a
	ld a,002h
	jr z,@l20a5h
	call sub_game_cpu_return_center_intercept
@l20a5h:
	ld (ix + entity_t.input_dirs),a
	ld a,(ix + entity_t.y_div_pos)
	cp 006h
	ret c
	ld (ix + entity_t.cpu_sub_state),000h
@l20b2h:
	ld a,(state.match_state_flags)
	bit 7,a
	jr z,@l20c0h
	ld a,(ix + entity_t.cpu_sub_state)
	cp 005h
	jr z,@l2099h
@l20c0h:
	xor a
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.cpu_state_timer),a
	ld (ix + entity_t.cpu_state),game_cpu_state_t.track_ball
	ret
