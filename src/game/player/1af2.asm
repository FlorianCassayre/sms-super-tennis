sub_1af2h:
	bit 7,(ix + entity_t.state_index)		;1af2
	jr nz,l1b17h		;1af6
	set 7,(ix + entity_t.state_index)		;1af8
	ld (ix + entity_t.animation_id),007h		;1afc
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1b00
	ld (ix + entity_t.swing_type_id),019h		;1b04
	ld a,entity_state_t.ball_toss_update		;1b08
	ld (entities.ball.state_index),a		;1b0a
	bit 0,(ix + entity_t.id)		;1b0d
	ret z			;1b11
	ld (ix + entity_t.cpu_state),008h		;1b12
	ret			;1b16
l1b17h:
	bit 0,(ix + entity_t.id)		;1b17
	call nz,sub_game_cpu_update		;1b1b
	ld a,(ix + entity_t.id)		;1b1e
	bit 0,a		;1b21
	ld b,(ix + entity_t.shot_button)		;1b23
	jr nz,l1b37h		;1b26
	and 002h		;1b28
	ld a,(joy.1.current)		;1b2a
	jr z,l1b32h		;1b2d
	ld a,(joy.2.current)		;1b2f
l1b32h:
	rra			;1b32
	rra			;1b33
	rra			;1b34
	rra			;1b35
	ld b,a			;1b36
l1b37h:
	bit 0,b		;1b37
	jr nz,l1b5bh		;1b39
	ld (ix + entity_t.render_facing_dir),000h		;1b3b
	call sub_game_player_update_animation		;1b3f
	ld a,(ix + entity_t.animation_flags_or_frame)		;1b42
	and a			;1b45
	jr nz,l1b50h		;1b46
	ld (ix + entity_t.animation_id),007h		;1b48
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1b4c
l1b50h:
	ld a,(state.match_flags)		;1b50
	bit 7,a		;1b53
	ret nz			;1b55
	ld (ix + entity_t.state_index),entity_state_t.player_update_server_state_076b		;1b56
	ret			;1b5a
l1b5bh:
	ld hl,state.match_flags		;1b5b
	bit 7,(hl)		;1b5e
	ret z			;1b60
	ld (ix + entity_t.state_index),entity_state_t.l1b68h_0763		;1b61
	set 6,(hl)		;1b65
	ret			;1b67
