sub_game_cpu_state_baseline_attack:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l2013h
	ld (ix + entity_t.cpu_state),game_cpu_state_t.doubles_cover_1
	ld (ix + entity_t.cpu_sub_state),000h
	ld (ix + entity_t.shot_button),000h
	ret
@l2013h:
	bit 0,(ix + entity_t.id)
	jr z,@l2037h
	ld e,028h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,02800h
	call sub_game_cpu_calculate_intercept_direction_1
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_1
	ld a,(ix + entity_t.hit_readiness)
	ld (ix + entity_t.shot_button),a
	inc (ix + entity_t.cpu_state_timer)
	ret
@l2037h:
	ld e,0b0h
	call sub_game_ball_compute_horizontal_deflection
	ld l,000h
	ld h,a
	ld de,0b000h
	call sub_game_cpu_calculate_intercept_direction_2
	ld (ix + entity_t.input_dirs),a
	call sub_game_cpu_evaluate_y_dist_2
	ld a,(ix + entity_t.hit_readiness)
	ld (ix + entity_t.shot_button),a
	inc (ix + entity_t.cpu_state_timer)
	ret
