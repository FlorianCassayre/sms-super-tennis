sub_game_ball_update_physics:
	ld a,(state.hit_flags)		;14b4
	rlca			; 07 ;14b7
	ret nc			; d0 ;14b8
	ld bc,(ball.z_gravity)		; ed 4b 02 c5 ;14b9
	ld hl,(ball.z_vel)		; 2a 06 c5 ;14bd
	add hl,bc			; 09 ;14c0
	ld (ball.z_vel),hl		; 22 06 c5 ;14c1
	xor a			; af ;14c4
	ld de,(ball.z_pos)		; ed 5b 00 c5 ;14c5
	ex de,hl			; eb ;14c9
	sbc hl,de		; ed 52 ;14ca
	ld (ball.z_pos),hl		; 22 00 c5 ;14cc
	bit 7,h		; cb 7c ;14cf
	jp z,@update_horizontal_axes		; ca 0f 15 ;14d1
	ld hl,0		; 21 00 00 ;14d4
	ld (ball.z_pos),hl		; 22 00 c5 ;14d7
	ld hl,0c516h		; 21 16 c5 ;14da
	res 6,(hl)		; cb b6 ;14dd
	call sub_game_ball_update_velocity_bounce		; cd 9c 15 ;14df
	ld hl,ball.bounces_count		; 21 17 c5 ;14e2
	inc (hl)			; 34 ;14e5
	ld a,BALL_MAX_BOUNCES		; 3e 05 ;14e6
	cp (hl)			; be ;14e8
	jr nc,@evaluate_bounce_rules		; 30 06 ;14e9
	ld hl,state.hit_flags		; 21 40 c0 ;14eb
	res 7,(hl)		; cb be ;14ee
	ret			; c9 ;14f0
@evaluate_bounce_rules:
	ld a,(hl)			; 7e ;14f1
	dec a			; 3d ;14f2
	jr nz,@check_second_bounce		; 20 0a ;14f3
	call sub_menu_update_ball_out_of_bounds		; cd 04 0e ;14f5
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_bounce		; 3e 8f ;14f8
	ld (psg_engine.track_request_id),a		; 32 00 de ;14fa
	jr @update_horizontal_axes		; 18 10 ;14fd
@check_second_bounce:
	dec a			; 3d ;14ff
	jr nz,@update_horizontal_axes		; 20 0d ;1500
	ld hl,state.match_state_flags		; 21 00 c0 ;1502
	res 0,(hl)		; cb 86 ;1505
	ld hl,ball.foul		; 21 18 c5 ;1507
	ld a,(hl)			; 7e ;150a
	or a			; b7 ;150b
	ret nz			; c0 ;150c
	ld (hl),002h		; 36 02 ;150d
@update_horizontal_axes:
	ld a,(ball.racket_contact_flag)		; 3a 16 c5 ;150f
	bit 6,a		; cb 77 ;1512
	ret nz			; c0 ;1514
	call sub_game_ball_update_velocity_collision		; cd af 16 ;1515
	call sub_player_ball_collision		; cd 78 18 ;1518
	call sub_update_ball_out_of_bounds		; cd 7f 0e ;151b
	ld de,(ball.x_vel)		; ed 5b 0e c5 ;151e
	ld hl,(ball.x_pos)		; 2a 0a c5 ;1522
	add hl,de			; 19 ;1525
	ld (ball.x_pos),hl		; 22 0a c5 ;1526
	ld de,(ball.y_vel)		; ed 5b 0c c5 ;1529
	ld hl,(ball.y_pos)		; 2a 08 c5 ;152d
	add hl,de			; 19 ;1530
	ld (ball.y_pos),hl		; 22 08 c5 ;1531
	ld c,000h		; 0e 00 ;1534
	ld a,h			; 7c ;1536
	cp 070h		; fe 70 ;1537
	jr c,@store_y_sector		; 38 08 ;1539
	ld c,001h		; 0e 01 ;153b
	cp 090h		; fe 90 ;153d
	jr c,@store_y_sector		; 38 02 ;153f
	ld c,002h		; 0e 02 ;1541
@store_y_sector:
	ld a,c			; 79 ;1543
	ld (0c48ch),a		; 32 8c c4 ;1544
	ret			; c9 ;1547
