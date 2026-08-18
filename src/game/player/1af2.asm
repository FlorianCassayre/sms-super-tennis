sub_1af2h:
	bit 7,(ix + entity_t.state_index)
	jr nz,l1b17h
	set 7,(ix + entity_t.state_index)
	ld (ix + entity_t.animation_id),007h
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	ld (ix + entity_t.swing_type_id),019h
	ld a,entity_state_t.ball_toss_update
	ld (entities.ball.state_index),a
	bit 0,(ix + entity_t.id)
	ret z
	ld (ix + entity_t.cpu_state),008h
	ret
l1b17h:
	bit 0,(ix + entity_t.id)
	call nz,sub_game_cpu_update
	ld a,(ix + entity_t.id)
	bit 0,a
	ld b,(ix + entity_t.shot_button)
	jr nz,l1b37h
	and 002h
	ld a,(joy.1.current)
	jr z,l1b32h
	ld a,(joy.2.current)
l1b32h:
	rra
	rra
	rra
	rra
	ld b,a
l1b37h:
	bit 0,b
	jr nz,l1b5bh
	ld (ix + entity_t.render_facing_dir),000h
	call sub_game_player_update_animation
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	jr nz,l1b50h
	ld (ix + entity_t.animation_id),007h
	ld (ix + entity_t.animation_flags_or_frame),0ffh
l1b50h:
	ld a,(state.match_flags)
	bit 7,a
	ret nz
	ld (ix + entity_t.state_index),entity_state_t.player_update_server_state_076b
	ret
l1b5bh:
	ld hl,state.match_flags
	bit 7,(hl)
	ret z
	ld (ix + entity_t.state_index),entity_state_t.l1b68h_0763
	set 6,(hl)
	ret
