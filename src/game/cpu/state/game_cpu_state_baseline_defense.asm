sub_game_cpu_state_baseline_defense:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l20dfh
	ld (ix + entity_t.cpu_state),game_cpu_state_t.return_center
	ld (ix + entity_t.shot_button),000h
	ld (iy + entity_t.cpu_sub_state),005h
	ret
@l20dfh:
	bit 0,(ix + entity_t.id)
	jr z,@l2106h
	ld e,028h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,02800h
	call sub_game_cpu_calculate_intercept_direction_1
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_1
	ld a,(ix + entity_t.hit_readiness)
	and a
	ret z
	ld (ix + entity_t.shot_button),a
	ld (iy + entity_t.cpu_sub_state),005h
	ret
@l2106h:
	ld e,0b0h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,000b0h
	call sub_game_cpu_calculate_intercept_direction_2
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_2
	ld a,(ix + entity_t.hit_readiness)
	and a
	ret z
	ld (ix + entity_t.shot_button),a
	ret
