sub_game_player_update_server_state:
	ld a,(ix + entity_t.state_index)
	bit 7,a
	jr nz,@update_loop
	set 7,(ix + entity_t.state_index)
	cp entity_state_t.player_update_server_state_075f
	jr nz,@skip_position_lookup
	bit 0,(ix + entity_t.id)
	ld e,000h
	jr z,@read_serve_type
	ld e,008h
@read_serve_type:
	ld a,(0c044h)
	add a,a
	add a,a
	or e
	ld e,a
	ld d,000h
	ld hl,serve_start_coordinates
	add hl,de
	ld a,(hl)
	ld (ix + entity_t.y_pos),a
	inc hl
	ld a,(hl)
	ld (ix + entity_t.y_pos + 1),a
	ld (ix + entity_t.y_pos_cache),a
	inc hl
	ld a,(hl)
	ld (ix + entity_t.x_pos),a
	inc hl
	ld a,(hl)
	ld (ix + entity_t.x_pos + 1),a
@skip_position_lookup:
	bit 0,(ix + entity_t.id)
	jr z,@set_animation_timer
	ld (ix + entity_t.cpu_state),007h
@set_animation_timer:
	ld (ix + entity_t.animation_id),game_player_animation_type_t.serve_ready
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	ld hl,00096h
	ld (ix + entity_t.state_timer),l
	ld (ix + entity_t.state_timer + 1),h
	ld a,001h
	ld (0c400h),a
@update_loop:
	bit 0,(ix + entity_t.id)
	call nz,sub_game_cpu_update
	ld (ix + entity_t.render_facing_dir),000h
	call sub_game_player_update_animation
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	jr z,@check_timer
	ld (ix + entity_t.animation_id),game_player_animation_type_t.serve_ready
	ld (ix + entity_t.animation_flags_or_frame),0ffh
@check_timer:
	call sub_1b9fh_decrement_timer
	jp nz,sub_game_player_apply_movement
	ld (ix + entity_t.state_index),entity_state_t.l1af2h_0761
	ret

serve_start_coordinates:
	.DB $00	$bc	$00	$a0
	.DB $00 $bc $00 $60
	.DB $00 $28 $00 $6f
	.DB $00 $28 $00 $9d
