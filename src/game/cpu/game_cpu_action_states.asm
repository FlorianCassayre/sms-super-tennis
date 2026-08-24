game_cpu_action_state:
	.DW sub_game_cpu_action_state_top_idle
	.DW sub_game_cpu_action_state_top_start_move
	.DW sub_game_cpu_action_state_top_moving
	.DW sub_game_cpu_action_state_top_start_swing
	.DW sub_game_cpu_action_state_top_swinging
	.DW sub_game_cpu_action_state_top_turn_around

sub_game_cpu_action_state_top_idle:
	ld a,(ix + entity_t.shot_button)
	and 003h
	jr z,l1c64h
	ld (ix + entity_t.action_state),002h
	jp sub_game_cpu_action_state_top_moving
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
	ld (ix + entity_t.animation_id),game_player_animation_type_t.await
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.prev_facing_dir),a
	ld (ix + entity_t.render_facing_dir),a
l1c92h:
	jp sub_game_player_update_animation
l1c95h:
	ld (ix + entity_t.action_state),001h
	jp sub_game_cpu_action_state_top_start_move
sub_game_cpu_action_state_top_start_swing:
	ld a,(ix + entity_t.shot_button)
	and 003h
	jr z,l1caah
	ld (ix + entity_t.action_state),004h
	jp sub_game_cpu_action_state_top_swinging
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
	ld (ix + entity_t.animation_id),game_player_animation_type_t.walk
	ld (ix + entity_t.animation_flags_or_frame),0ffh
l1ceah:
	call sub_game_player_apply_movement
	jp sub_game_player_update_animation
l1cf0h:
	ld (ix + entity_t.action_state),005h
	jp sub_game_cpu_action_state_top_turn_around
sub_game_cpu_action_state_top_start_move:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l1d17h
	set 7,a
	ld (ix + entity_t.action_state),a
	ld (ix + entity_t.animation_id),game_player_animation_type_t.unknown_0a
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
sub_game_cpu_action_state_top_moving:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l1d47h
	set 7,a
	ld (ix + entity_t.action_state),a
	ld (ix + entity_t.animation_id),game_player_animation_type_t.unknown_0a
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
sub_game_cpu_action_state_top_turn_around:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l1d73h
	set 7,(ix + entity_t.action_state)
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.render_facing_dir),a
	ld (ix + entity_t.animation_id),game_player_animation_type_t.turn
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
sub_game_cpu_action_state_top_swinging:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l1dffh
	set 7,a
	ld (ix + entity_t.action_state),a
	call sub_game_racket_evaluate_swing_type
	ld e,a
	ld d,a
	ld a,(ix + entity_t.y_div_pos)
	cp 003h
	jr nc,l1db0h
	ld a,e
	cp 002h
	jr c,l1dd3h
	ld e,000h
	cp 003h
	jr z,l1dd3h
	ld e,001h
	jr l1dd3h
l1db0h:
	cp 004h
	jr nc,l1db7h
	inc e
	jr l1dd3h
l1db7h:
	cp 005h
	jr c,l1dd3h
	ld a,(0c401h)
	and 07fh
	cp 01ah
	ld e,002h
	jr z,l1dd3h
	ld e,003h
	cp 01dh
	jr nz,l1dd3h
	ld a,d
	cp 001h
	jr c,l1dd3h
	ld e,002h
l1dd3h:
	ld a,e
	ld b,game_player_animation_type_t.lob
	ld c,01ch
	and a
	jr z,l1defh
	ld b,game_player_animation_type_t.stroke
	ld c,01dh
	cp 001h
	jr z,l1defh
	ld b,game_player_animation_type_t.unknown_05
	ld c,01bh
	cp 002h
	jr z,l1defh
	ld b,game_player_animation_type_t.volley
	ld c,01ah
l1defh:
	ld (ix + entity_t.animation_id),b
	ld (ix + entity_t.swing_type_id),c
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.render_facing_dir),a
l1dffh:
	call sub_game_player_apply_movement
	call sub_game_racket_process_swing_contact
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	jr z,l1e0fh
	call sub_game_player_update_animation
	ret
l1e0fh:
	ld a,(ix + entity_t.ball_incoming)
	and a
	ld a,000h
	jr z,l1e19h
	ld a,001h
l1e19h:
	ld (ix + entity_t.action_state),a
	ld (ix + entity_t.state_flags),000h
	ld (ix + entity_t.racket_contact_flag),000h
	ret
