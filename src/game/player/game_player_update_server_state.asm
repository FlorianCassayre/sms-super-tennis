sub_game_player_update_server_state:
	ld a,(ix + entity_t.type)		; dd 7e 02 ;1a5f
	bit 7,a		; cb 7f ;1a62
	jr nz,@update_loop		; 20 55 ;1a64
	set 7,(ix + entity_t.type)		; dd cb 02 fe ;1a66
	cp 003h		; fe 03 ;1a6a
	jr nz,@skip_position_lookup		; 20 2d ;1a6c
	bit 0,(ix + entity_t.id)		; dd cb 01 46 ;1a6e
	ld e,000h		; 1e 00 ;1a72
	jr z,@read_serve_type		; 28 02 ;1a74
	ld e,008h		; 1e 08 ;1a76
@read_serve_type:
	ld a,(0c044h)		; 3a 44 c0 ;1a78
	add a,a			; 87 ;1a7b
	add a,a			; 87 ;1a7c
	or e			; b3 ;1a7d
	ld e,a			; 5f ;1a7e
	ld d,000h		; 16 00 ;1a7f
	ld hl,serve_start_coordinates		; 21 e2 1a ;1a81
	add hl,de			; 19 ;1a84
	ld a,(hl)			; 7e ;1a85
	ld (ix + entity_t.y_pos),a		; dd 77 0a ;1a86
	inc hl			; 23 ;1a89
	ld a,(hl)			; 7e ;1a8a
	ld (ix + entity_t.y_pos + 1),a		; dd 77 0b ;1a8b
	ld (ix + entity_t.y_pos_cache),a		; dd 77 14 ;1a8e
	inc hl			; 23 ;1a91
	ld a,(hl)			; 7e ;1a92
	ld (ix + entity_t.x_pos),a		; dd 77 0c ;1a93
	inc hl			; 23 ;1a96
	ld a,(hl)			; 7e ;1a97
	ld (ix + entity_t.x_pos + 1),a		; dd 77 0d ;1a98
@skip_position_lookup:
	bit 0,(ix + entity_t.id)		; dd cb 01 46 ;1a9b
	jr z,@set_animation_timer		; 28 04 ;1a9f
	ld (ix+030h),007h		; dd 36 30 07 ;1aa1
@set_animation_timer:
	ld (ix + entity_t.animation_id),006h		; dd 36 22 06 ;1aa5
	ld (ix + entity_t.animation_flags_or_frame),0ffh		; dd 36 23 ff ;1aa9
	ld hl,00096h		; 21 96 00 ;1aad
	ld (ix + entity_t.state_timer_low),l		; dd 75 29 ;1ab0
	ld (ix + entity_t.state_timer_high),h		; dd 74 2a ;1ab3
	ld a,001h		; 3e 01 ;1ab6
	ld (0c400h),a		; 32 00 c4 ;1ab8
@update_loop:
	bit 0,(ix + entity_t.id)		; dd cb 01 46 ;1abb
	call nz,sub_game_cpu_update		; c4 25 1e ;1abf
	ld (ix + entity_t.render_facing_dir),000h		; dd 36 20 00 ;1ac2
	call sub_game_player_update_animation		; cd 69 2a ;1ac6
	ld a,(ix + entity_t.animation_flags_or_frame)		; dd 7e 23 ;1ac9
	and a			; a7 ;1acc
	jr z,@check_timer		; 28 08 ;1acd
	ld (ix + entity_t.animation_id),006h		; dd 36 22 06 ;1acf
	ld (ix + entity_t.animation_flags_or_frame),0ffh		; dd 36 23 ff ;1ad3
@check_timer:
	call sub_1b9fh_decrement_timer		; cd 9f 1b ;1ad7
	jp nz,sub_game_player_apply_movement		; c2 a1 26 ;1ada
	ld (ix + entity_t.type),004h		; dd 36 02 04 ;1add
	ret			; c9 ;1ae1

serve_start_coordinates:
	.DB $00	$bc	$00	$a0
	.DB $00 $bc $00 $60
	.DB $00 $28 $00 $6f
	.DB $00 $28 $00 $9d
