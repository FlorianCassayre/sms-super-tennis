l1c4ah_jump_table:
	.DW player_top_action_state_idle		;1c4a
	.DW player_top_action_state_start_move		;1c4c
	.DW player_top_action_state_moving		;1c4e
	.DW player_top_action_state_start_swing		;1c50
	.DW player_top_action_state_swinging		;1c52
	.DW player_top_action_state_turn_around		;1c54

player_top_action_state_idle:
	ld a,(ix + entity_t.shot_button)		;1c56
	and 003h		;1c59
	jr z,l1c64h		;1c5b
	ld (ix + entity_t.action_state),002h		;1c5d
	jp player_top_action_state_moving		;1c61
l1c64h:
	ld a,(ix + entity_t.input_dirs)		;1c64
	and a			;1c67
	jr nz,l1c95h		;1c68
	ld a,(ix + entity_t.ball_incoming)		;1c6a
	and a			;1c6d
	jr z,l1c78h		;1c6e
	bit 7,a		;1c70
	jr nz,l1c95h		;1c72
	set 7,(ix + entity_t.ball_incoming)		;1c74
l1c78h:
	ld a,(ix + entity_t.animation_flags_or_frame)		;1c78
	and a			;1c7b
	jr nz,l1c92h		;1c7c
	ld (ix + entity_t.animation_id),000h		;1c7e
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1c82
	call sub_game_racket_update_hitbox		;1c86
	ld a,(ix + entity_t.facing_dir)		;1c89
	ld (ix + entity_t.prev_facing_dir),a		;1c8c
	ld (ix + entity_t.render_facing_dir),a		;1c8f
l1c92h:
	jp sub_game_player_update_animation		;1c92
l1c95h:
	ld (ix + entity_t.action_state),001h		;1c95
	jp player_top_action_state_start_move		;1c99
player_top_action_state_start_swing:
	ld a,(ix + entity_t.shot_button)		;1c9c
	and 003h		;1c9f
	jr z,l1caah		;1ca1
	ld (ix + entity_t.action_state),004h		;1ca3
	jp player_top_action_state_swinging		;1ca7
l1caah:
	ld a,(ix + entity_t.input_dirs)		;1caa
	ld c,a			;1cad
	and 00ch		;1cae
	jr nz,l1ccdh		;1cb0
	ld a,(ix + entity_t.ball_incoming)		;1cb2
	and a			;1cb5
	jr z,l1cc6h		;1cb6
	push bc			;1cb8
	call sub_game_racket_update_hitbox		;1cb9
	pop bc			;1cbc
	ld a,(ix + entity_t.facing_dir)		;1cbd
	ld b,(ix + entity_t.prev_facing_dir)		;1cc0
	cp b			;1cc3
	jr nz,l1cf0h		;1cc4
l1cc6h:
	ld a,c			;1cc6
	and 003h		;1cc7
	jr z,l1ceah		;1cc9
	jr l1cdch		;1ccb
l1ccdh:
	call sub_game_racket_update_hitbox		;1ccd
	ld a,(ix + entity_t.facing_dir)		;1cd0
	ld b,(ix + entity_t.prev_facing_dir)		;1cd3
	cp b			;1cd6
	jr nz,l1cf0h		;1cd7
	ld (ix + entity_t.render_facing_dir),a		;1cd9
l1cdch:
	ld a,(ix + entity_t.animation_flags_or_frame)		;1cdc
	and a			;1cdf
	jr nz,l1ceah		;1ce0
	ld (ix + entity_t.animation_id),002h		;1ce2
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1ce6
l1ceah:
	call sub_game_player_apply_movement		;1cea
	jp sub_game_player_update_animation		;1ced
l1cf0h:
	ld (ix + entity_t.action_state),005h		;1cf0
	jp player_top_action_state_turn_around		;1cf4
player_top_action_state_start_move:
	ld a,(ix + entity_t.action_state)		;1cf7
	bit 7,a		;1cfa
	jr nz,l1d17h		;1cfc
	set 7,a		;1cfe
	ld (ix + entity_t.action_state),a		;1d00
	ld (ix + entity_t.animation_id),00ah		;1d03
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1d07
	call sub_game_racket_update_hitbox		;1d0b
	ld a,(ix + entity_t.facing_dir)		;1d0e
	ld (ix + entity_t.prev_facing_dir),a		;1d11
	ld (ix + entity_t.render_facing_dir),a		;1d14
l1d17h:
	call sub_game_player_apply_movement		;1d17
	call sub_game_player_update_animation		;1d1a
	ld a,(ix + entity_t.animation_flags_or_frame)		;1d1d
	and a			;1d20
	ret nz			;1d21
	ld (ix + entity_t.action_state),003h		;1d22
	ret			;1d26
player_top_action_state_moving:
	ld a,(ix + entity_t.action_state)		;1d27
	bit 7,a		;1d2a
	jr nz,l1d47h		;1d2c
	set 7,a		;1d2e
	ld (ix + entity_t.action_state),a		;1d30
	ld (ix + entity_t.animation_id),00ah		;1d33
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1d37
	call sub_game_racket_update_hitbox		;1d3b
	ld a,(ix + entity_t.facing_dir)		;1d3e
	ld (ix + entity_t.prev_facing_dir),a		;1d41
	ld (ix + entity_t.render_facing_dir),a		;1d44
l1d47h:
	call sub_game_player_apply_movement		;1d47
	call sub_game_player_update_animation		;1d4a
	ld a,(ix + entity_t.animation_flags_or_frame)		;1d4d
	and a			;1d50
	ret nz			;1d51
	ld (ix + entity_t.action_state),004h		;1d52
	ret			;1d56
player_top_action_state_turn_around:
	ld a,(ix + entity_t.action_state)		;1d57
	bit 7,a		;1d5a
	jr nz,l1d73h		;1d5c
	set 7,(ix + entity_t.action_state)		;1d5e
	call sub_game_racket_update_hitbox		;1d62
	ld a,(ix + entity_t.facing_dir)		;1d65
	ld (ix + entity_t.render_facing_dir),a		;1d68
	ld (ix + entity_t.animation_id),00bh		;1d6b
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1d6f
l1d73h:
	call sub_game_player_apply_movement		;1d73
	call sub_game_player_update_animation		;1d76
	ld a,(ix + entity_t.animation_flags_or_frame)		;1d79
	and a			;1d7c
	ret nz			;1d7d
	ld a,(ix + entity_t.facing_dir)		;1d7e
	ld (ix + entity_t.prev_facing_dir),a		;1d81
	ld (ix + entity_t.action_state),003h		;1d84
	ret			;1d88
