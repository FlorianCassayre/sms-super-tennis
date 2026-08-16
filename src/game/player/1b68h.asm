sub_1b68h:
	bit 7,(ix + entity_t.state_index)		;1b68
	jr nz,l1b7eh		;1b6c
	set 7,(ix + entity_t.state_index)		;1b6e
	ld (ix + entity_t.animation_id),008h		;1b72
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1b76
	ld (ix + entity_t.render_facing_dir),000h		;1b7a
l1b7eh:
	call sub_game_player_update_animation		;1b7e
	call sub_game_racket_process_swing_contact		;1b81
	ld a,(ix + entity_t.animation_flags_or_frame)		;1b84
	and a			;1b87
	ret nz			;1b88
	ld a,entity_state_t.player_update		;1b89
	bit 0,(ix + entity_t.id)		;1b8b
	jr z,l1b97h		;1b8f
	ld a,entity_state_t.player_action_update_top		;1b91
	ld (ix + entity_t.cpu_state),001h		;1b93
l1b97h:
	ld (ix + entity_t.state_index),a		;1b97
	xor a			;1b9a
	ld (0c400h),a		;1b9b
	ret			;1b9e
