sub_game_cpu_state_net:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l1f7fh
	ld (ix + entity_t.cpu_state),game_cpu_state_t.track_ball
	ld (ix + entity_t.cpu_sub_state),000h
	ld (ix + entity_t.shot_button),000h
	ret
@l1f7fh:
	bit 0,(ix + entity_t.id)
	jr nz,@l1f97h
	ld a,(entities.ball.y_pos + 1)
	add a,008h
	ld e,(ix + entity_t.y_pos + 1)
	sub e
	jr c,@l1fe0h
	cp 006h
	jr nc,@l1fe0h
	jp @l1fa6h
@l1f97h:
	ld a,(entities.ball.y_pos + 1)
	sub 008h
	ld e,(ix + entity_t.y_pos + 1)
	sub e
	jr nc,@l1fc0h
	cp 0fah
	jr nc,@l1fc0h
@l1fa6h:
	ld a,(state.match_state_flags)
	bit 7,a
	ld a,004h
	ld b,002h
	jr z,@l1fb5h
	ld a,game_cpu_state_t.doubles_cover_2
	ld b,001h
@l1fb5h:
	ld (ix + entity_t.cpu_state),a
	ld (iy + entity_t.cpu_sub_state),b
	ld (ix + entity_t.shot_button),000h
	ret
@l1fc0h:
	ld e,04ch
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,04c00h
	call sub_game_cpu_calculate_intercept_direction_1
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_1
	ld a,(ix + entity_t.hit_readiness)
	and a
	ld (ix + entity_t.shot_button),a
	ret z
	inc (ix + entity_t.cpu_state_timer)
	ret
@l1fe0h:
	ld e,080h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,08000h
	call sub_game_cpu_calculate_intercept_direction_2
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_2
	ld a,(ix + entity_t.hit_readiness)
	and a
	ld (ix + entity_t.shot_button),a
	ret z
@l1ffch:
	inc (ix + entity_t.cpu_state_timer)
	ret
