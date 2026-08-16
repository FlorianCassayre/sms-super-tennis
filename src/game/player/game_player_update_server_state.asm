sub_game_player_update_server_state:
	ld a,(ix + entity_t.state_index)		;1a5f
	bit 7,a		;1a62
	jr nz,@update_loop		;1a64
	set 7,(ix + entity_t.state_index)		;1a66
	cp entity_state_t.player_update_server_state_075f		;1a6a
	jr nz,@skip_position_lookup		;1a6c
	bit 0,(ix + entity_t.id)		;1a6e
	ld e,000h		;1a72
	jr z,@read_serve_type		;1a74
	ld e,008h		;1a76
@read_serve_type:
	ld a,(0c044h)		;1a78
	add a,a			;1a7b
	add a,a			;1a7c
	or e			;1a7d
	ld e,a			;1a7e
	ld d,000h		;1a7f
	ld hl,serve_start_coordinates		;1a81
	add hl,de			;1a84
	ld a,(hl)			;1a85
	ld (ix + entity_t.y_pos),a		;1a86
	inc hl			;1a89
	ld a,(hl)			;1a8a
	ld (ix + entity_t.y_pos + 1),a		;1a8b
	ld (ix + entity_t.y_pos_cache),a		;1a8e
	inc hl			;1a91
	ld a,(hl)			;1a92
	ld (ix + entity_t.x_pos),a		;1a93
	inc hl			;1a96
	ld a,(hl)			;1a97
	ld (ix + entity_t.x_pos + 1),a		;1a98
@skip_position_lookup:
	bit 0,(ix + entity_t.id)		;1a9b
	jr z,@set_animation_timer		;1a9f
	ld (ix + entity_t.cpu_state),007h		;1aa1
@set_animation_timer:
	ld (ix + entity_t.animation_id),006h		;1aa5
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1aa9
	ld hl,00096h		;1aad
	ld (ix + entity_t.state_timer),l		;1ab0
	ld (ix + entity_t.state_timer + 1),h		;1ab3
	ld a,001h		;1ab6
	ld (0c400h),a		;1ab8
@update_loop:
	bit 0,(ix + entity_t.id)		;1abb
	call nz,sub_game_cpu_update		;1abf
	ld (ix + entity_t.render_facing_dir),000h		;1ac2
	call sub_game_player_update_animation		;1ac6
	ld a,(ix + entity_t.animation_flags_or_frame)		;1ac9
	and a			;1acc
	jr z,@check_timer		;1acd
	ld (ix + entity_t.animation_id),006h		;1acf
	ld (ix + entity_t.animation_flags_or_frame),0ffh		;1ad3
@check_timer:
	call sub_1b9fh_decrement_timer		;1ad7
	jp nz,sub_game_player_apply_movement		;1ada
	ld (ix + entity_t.state_index),entity_state_t.l1af2h_0761		;1add
	ret			;1ae1

serve_start_coordinates:
	.DB $00	$bc	$00	$a0
	.DB $00 $bc $00 $60
	.DB $00 $28 $00 $6f
	.DB $00 $28 $00 $9d
