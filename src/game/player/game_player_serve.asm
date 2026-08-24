sub_game_player_serve:
	bit 7,(ix + entity_t.state_index)
	jr nz,@l1b17h
		set 7,(ix + entity_t.state_index)

		ld (ix + entity_t.animation_id),game_player_animation_type_t.serve_tossed
		ld (ix + entity_t.animation_flags_or_frame),0ffh
		ld (ix + entity_t.swing_type_id),019h
		ld a,entity_state_t.ball_toss_update
		ld (entities.ball.state_index),a
		bit 0,(ix + entity_t.id)
		ret z
		ld (ix + entity_t.cpu_state),game_cpu_state_t.smash
		ret
	@l1b17h:

	bit 0,(ix + entity_t.id)
	call nz,sub_game_cpu_update ; Only for CPU player

	ld a,(ix + entity_t.id)
	bit 0,a
	ld b,(ix + entity_t.shot_button)
	jr nz,@is_cpu
		and 002h
		ld a,(joy.1.current)
		jr z,@l1b32h
			ld a,(joy.2.current)
		@l1b32h:
		rra
		rra
		rra
		rra
		ld b,a
	@is_cpu:

	bit 0,b
	jr nz,@swing
		ld (ix + entity_t.render_facing_dir),$00
		call sub_game_player_update_animation
		ld a,(ix + entity_t.animation_flags_or_frame)
		and a
		jr nz,@tossed
			ld (ix + entity_t.animation_id),game_player_animation_type_t.serve_tossed
			ld (ix + entity_t.animation_flags_or_frame),0ffh
		@tossed:
		ld a,(state.match_flags)
		bit 7,a
		ret nz
		ld (ix + entity_t.state_index),entity_state_t.player_update_server_state_076b
		ret
	@swing:

	; Trigger the serve swing
	ld hl,state.match_flags
	bit 7,(hl)
	ret z
	ld (ix + entity_t.state_index),entity_state_t.serve_swing_0763
	set 6,(hl)
	ret
