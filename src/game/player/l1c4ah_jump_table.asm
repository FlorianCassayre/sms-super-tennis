l1c4ah_jump_table:
	.DW player_top_action_state_idle
	.DW player_top_action_state_start_move
	.DW player_top_action_state_moving
	.DW player_top_action_state_start_swing
	.DW sub_game_player_top_action_state_swinging
	.DW player_top_action_state_turn_around

player_top_action_state_idle:
	ld a,(ix + entity_t.shot_button)
	and 003h
	jr z,l1c64h
	ld (ix + entity_t.action_state),002h
	jp player_top_action_state_moving
l1c64h:
	ld a,(ix + entity_t.input_dirs)
	and a
	jr nz,l1c95h
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr z,l1c78h
	bit 7,a
	jr nz,l1c95h
	set 7,(ix + entity_t.ball_incoming)
l1c78h:
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	jr nz,l1c92h
	ld (ix + entity_t.animation_id),000h
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.prev_facing_dir),a
	ld (ix + entity_t.render_facing_dir),a
l1c92h:
	jp sub_game_player_update_animation
l1c95h:
	ld (ix + entity_t.action_state),001h
	jp player_top_action_state_start_move
player_top_action_state_start_swing:
	ld a,(ix + entity_t.shot_button)
	and 003h
	jr z,l1caah
	ld (ix + entity_t.action_state),004h
	jp sub_game_player_top_action_state_swinging
l1caah:
	ld a,(ix + entity_t.input_dirs)
	ld c,a
	and 00ch
	jr nz,l1ccdh
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr z,l1cc6h
	push bc
	call sub_game_racket_update_hitbox
	pop bc
	ld a,(ix + entity_t.facing_dir)
	ld b,(ix + entity_t.prev_facing_dir)
	cp b
	jr nz,l1cf0h
l1cc6h:
	ld a,c
	and 003h
	jr z,l1ceah
	jr l1cdch
l1ccdh:
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld b,(ix + entity_t.prev_facing_dir)
	cp b
	jr nz,l1cf0h
	ld (ix + entity_t.render_facing_dir),a
l1cdch:
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	jr nz,l1ceah
	ld (ix + entity_t.animation_id),002h
	ld (ix + entity_t.animation_flags_or_frame),0ffh
l1ceah:
	call sub_game_player_apply_movement
	jp sub_game_player_update_animation
l1cf0h:
	ld (ix + entity_t.action_state),005h
	jp player_top_action_state_turn_around
player_top_action_state_start_move:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l1d17h
	set 7,a
	ld (ix + entity_t.action_state),a
	ld (ix + entity_t.animation_id),00ah
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.prev_facing_dir),a
	ld (ix + entity_t.render_facing_dir),a
l1d17h:
	call sub_game_player_apply_movement
	call sub_game_player_update_animation
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	ret nz
	ld (ix + entity_t.action_state),003h
	ret
player_top_action_state_moving:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l1d47h
	set 7,a
	ld (ix + entity_t.action_state),a
	ld (ix + entity_t.animation_id),00ah
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.prev_facing_dir),a
	ld (ix + entity_t.render_facing_dir),a
l1d47h:
	call sub_game_player_apply_movement
	call sub_game_player_update_animation
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	ret nz
	ld (ix + entity_t.action_state),004h
	ret
player_top_action_state_turn_around:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l1d73h
	set 7,(ix + entity_t.action_state)
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.render_facing_dir),a
	ld (ix + entity_t.animation_id),00bh
	ld (ix + entity_t.animation_flags_or_frame),0ffh
l1d73h:
	call sub_game_player_apply_movement
	call sub_game_player_update_animation
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	ret nz
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.prev_facing_dir),a
	ld (ix + entity_t.action_state),003h
	ret
