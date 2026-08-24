sub_game_player_serve_swing:
	bit 7,(ix + entity_t.state_index)
	jr nz,@swing_action
		set 7,(ix + entity_t.state_index)
		ld (ix + entity_t.animation_id),game_player_animation_type_t.serve_hit
		ld (ix + entity_t.animation_flags_or_frame),$ff
		ld (ix + entity_t.render_facing_dir),$00
	@swing_action:

	call sub_game_player_update_animation
	call sub_game_racket_process_swing_contact

	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	ret nz

	ld a,entity_state_t.player_update
	bit 0,(ix + entity_t.id)
	jr z,@is_cpu
		ld a,entity_state_t.player_action_update_top
		ld (ix + entity_t.cpu_state),game_cpu_state_t.serve_wait
	@is_cpu:
	ld (ix + entity_t.state_index),a

	xor a
	ld (0c400h),a
	ret
