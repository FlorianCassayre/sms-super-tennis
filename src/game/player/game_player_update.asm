sub_game_player_update:
	call sub_game_entity_calculate_court_perspective
	ld a,(state.match_state_flags)
	bit 3,a
	call nz,sub_game_cpu_update
	bit 7,(ix + entity_t.state_index)
	jr nz,l2495h
	set 7,(ix + entity_t.state_index)
	ld (ix + entity_t.action_state),000h
l2495h:
	ld a,(ix + entity_t.action_state)
	and 00fh
	ld hl,player_action_state_table
	jp l0807h_game_fsm
player_action_state_table:
	.DW player_action_state_idle
	.DW player_action_state_start_move
	.DW player_action_state_start_swing
	.DW player_action_state_moving
	.DW player_action_state_swinging
	.DW player_action_state_turn_around
player_action_state_idle:
	call sub_game_player_read_input
	jr nz,l24c8h
	ld a,c
	rra
	rra
	rra
	rra
	and 003h
	jr z,l24c8h
	ld (ix + entity_t.shot_button),a
	ld a,c
	and 00fh
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.action_state),002h
	ret
l24c8h:
	ld a,c
	and 00fh
	ld (ix + entity_t.input_dirs),a
	jr nz,l24f3h
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,l24f3h
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	jr nz,l24f0h
	ld (ix + entity_t.animation_id),000h
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.prev_facing_dir),a
	ld (ix + entity_t.render_facing_dir),a
l24f0h:
	jp sub_game_player_update_animation
l24f3h:
	ld (ix + entity_t.action_state),001h
	ret
player_action_state_moving:
	call sub_game_player_read_input
	jr nz,l2514h
	ld a,c
	rra
	rra
	rra
	rra
	and 003h
	jr z,l2514h
	ld (ix + entity_t.shot_button),a
	ld a,c
	and 00fh
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.action_state),004h
	ret
l2514h:
	ld a,c
	and 00fh
	ld (ix + entity_t.input_dirs),a
	and 00ch
	jr nz,l2539h
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr z,l2532h
	push bc
	call sub_game_racket_update_hitbox
	pop bc
	ld a,(ix + entity_t.facing_dir)
	ld b,(ix + entity_t.prev_facing_dir)
	cp b
	jr nz,l255ch
l2532h:
	ld a,c
	and 003h
	jr nz,l2548h
	jr l2556h
l2539h:
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld b,(ix + entity_t.prev_facing_dir)
	cp b
	jr nz,l255ch
	ld (ix + entity_t.render_facing_dir),a
l2548h:
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	jr nz,l2556h
	ld (ix + entity_t.animation_id),002h
	ld (ix + entity_t.animation_flags_or_frame),0ffh
l2556h:
	call sub_game_player_apply_movement
	jp sub_game_player_update_animation
l255ch:
	ld (ix + entity_t.action_state),005h
	ret
player_action_state_start_move:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l2581h
	set 7,a
	ld (ix + entity_t.action_state),a
	ld (ix + entity_t.animation_id),00ah
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.prev_facing_dir),a
	ld (ix + entity_t.render_facing_dir),a
l2581h:
	call sub_game_player_apply_movement
	call sub_game_player_update_animation
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	ret nz
	ld (ix + entity_t.action_state),003h
	ret
player_action_state_start_swing:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l25b1h
	set 7,a
	ld (ix + entity_t.action_state),a
	ld (ix + entity_t.animation_id),00ah
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.prev_facing_dir),a
	ld (ix + entity_t.render_facing_dir),a
l25b1h:
	call sub_game_player_apply_movement
	call sub_game_player_update_animation
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	ret nz
	ld (ix + entity_t.action_state),004h
	ret
player_action_state_turn_around:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l25ddh
	set 7,(ix + entity_t.action_state)
	call sub_game_racket_update_hitbox
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.render_facing_dir),a
	ld (ix + entity_t.animation_id),00bh
	ld (ix + entity_t.animation_flags_or_frame),0ffh
l25ddh:
	call sub_game_player_apply_movement
	call sub_game_player_update_animation
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	ret nz
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.prev_facing_dir),a
	ld (ix + entity_t.action_state),003h
	ret
player_action_state_swinging:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l2638h
	set 7,a
	ld (ix + entity_t.action_state),a
	call sub_game_racket_evaluate_swing_type
	ld b,004h
	ld c,01ch
	cp 003h
	jr z,l2628h
	ld b,a
	ld a,(ix + entity_t.y_div_pos)
	cp 003h
	jr c,l2614h
	ld b,002h
l2614h:
	ld a,b
	ld b,009h
	ld c,01ah
	and a
	jr z,l2628h
	ld b,005h
	ld c,01bh
	cp 001h
	jr z,l2628h
	ld b,003h
	ld c,01dh
l2628h:
	ld (ix + entity_t.animation_id),b
	ld (ix + entity_t.swing_type_id),c
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.render_facing_dir),a
l2638h:
	call sub_game_player_apply_movement
	call sub_game_racket_process_swing_contact
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	jr z,l2648h
	call sub_game_player_update_animation
	ret
l2648h:
	ld a,(ix + entity_t.ball_incoming)
	and a
	ld a,000h
	jr z,l2652h
	ld a,001h
l2652h:
	ld (ix + entity_t.action_state),a
	ld (ix + entity_t.state_flags),000h
	ld (ix + entity_t.racket_contact_flag),000h
	ret
