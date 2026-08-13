sub_game_ball_update_physics:
	ld a,(state.hit_flags)		;14b4
	rlca			;14b7
	ret nc			;14b8
	ld bc,(ball.z_gravity)		;14b9
	ld hl,(ball.z_vel)		;14bd
	add hl,bc			;14c0
	ld (ball.z_vel),hl		;14c1
	xor a			;14c4
	ld de,(ball.z_pos)		;14c5
	ex de,hl			;14c9
	sbc hl,de		;14ca
	ld (ball.z_pos),hl		;14cc
	bit 7,h		;14cf
	jp z,@update_horizontal_axes		;14d1
	ld hl,0		;14d4
	ld (ball.z_pos),hl		;14d7
	ld hl,0c516h		;14da
	res 6,(hl)		;14dd
	call sub_game_ball_update_velocity_bounce		;14df
	ld hl,ball.bounces_count		;14e2
	inc (hl)			;14e5
	ld a,BALL_MAX_BOUNCES		;14e6
	cp (hl)			;14e8
	jr nc,@evaluate_bounce_rules		;14e9
	ld hl,state.hit_flags		;14eb
	res 7,(hl)		;14ee
	ret			;14f0
@evaluate_bounce_rules:
	ld a,(hl)			;14f1
	dec a			;14f2
	jr nz,@check_second_bounce		;14f3
	call sub_menu_update_ball_out_of_bounds		;14f5
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_bounce		;14f8
	ld (psg_engine.track_request_id),a		;14fa
	jr @update_horizontal_axes		;14fd
@check_second_bounce:
	dec a			;14ff
	jr nz,@update_horizontal_axes		;1500
	ld hl,state.match_state_flags		;1502
	res 0,(hl)		;1505
	ld hl,ball.foul		;1507
	ld a,(hl)			;150a
	or a			;150b
	ret nz			;150c
	ld (hl),002h		;150d
@update_horizontal_axes:
	ld a,(ball.racket_contact_flag)		;150f
	bit 6,a		;1512
	ret nz			;1514
	call sub_game_ball_update_velocity_collision		;1515
	call sub_player_ball_collision		;1518
	call sub_update_ball_out_of_bounds		;151b
	ld de,(ball.x_vel)		;151e
	ld hl,(ball.x_pos)		;1522
	add hl,de			;1525
	ld (ball.x_pos),hl		;1526
	ld de,(ball.y_vel)		;1529
	ld hl,(ball.y_pos)		;152d
	add hl,de			;1530
	ld (ball.y_pos),hl		;1531
	ld c,000h		;1534
	ld a,h			;1536
	cp 070h		;1537
	jr c,@store_y_sector		;1539
	ld c,001h		;153b
	cp 090h		;153d
	jr c,@store_y_sector		;153f
	ld c,002h		;1541
@store_y_sector:
	ld a,c			;1543
	ld (0c48ch),a		;1544
	ret			;1547
