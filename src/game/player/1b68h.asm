sub_1b68h:
	bit 7,(ix + entity_t.state_index)
	jr nz,l1b7eh
	set 7,(ix + entity_t.state_index)
	ld (ix + entity_t.animation_id),008h
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	ld (ix + entity_t.render_facing_dir),000h
l1b7eh:
	call sub_game_player_update_animation
	call sub_game_racket_process_swing_contact
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	ret nz
	ld a,entity_state_t.player_update
	bit 0,(ix + entity_t.id)
	jr z,l1b97h
	ld a,entity_state_t.player_action_update_top
	ld (ix + entity_t.cpu_state),001h
l1b97h:
	ld (ix + entity_t.state_index),a
	xor a
	ld (0c400h),a
	ret
