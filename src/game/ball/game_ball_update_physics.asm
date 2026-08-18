sub_game_ball_update_physics:
	ld a,(state.match_flags)
	rlca
	ret nc
	ld bc,(ball.z_gravity)
	ld hl,(ball.z_vel)
	add hl,bc
	ld (ball.z_vel),hl
	xor a
	ld de,(ball.z_pos)
	ex de,hl
	sbc hl,de
	ld (ball.z_pos),hl
	bit 7,h
	jp z,@update_horizontal_axes
	ld hl,0
	ld (ball.z_pos),hl
	ld hl,0c516h
	res 6,(hl)
	call sub_game_ball_update_velocity_bounce
	ld hl,ball.bounces_count
	inc (hl)
	ld a,BALL_MAX_BOUNCES
	cp (hl)
	jr nc,@evaluate_bounce_rules
	ld hl,state.match_flags
	res 7,(hl)
	ret
@evaluate_bounce_rules:
	ld a,(hl)
	dec a
	jr nz,@check_second_bounce
	call sub_game_ball_check_out_of_bounds_bounce
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_bounce
	ld (psg_engine.track_request_id),a
	jr @update_horizontal_axes
@check_second_bounce:
	dec a
	jr nz,@update_horizontal_axes
	ld hl,state.match_state_flags
	res 0,(hl)
	ld hl,ball.foul_type
	ld a,(hl)
	or a
	ret nz
	ld (hl),002h
@update_horizontal_axes:
	ld a,(ball.racket_contact_flag)
	bit 6,a
	ret nz
	call sub_game_ball_update_velocity_collision
	call sub_player_ball_collision
	call sub_update_ball_out_of_bounds
	ld de,(ball.x_vel)
	ld hl,(ball.x_pos)
	add hl,de
	ld (ball.x_pos),hl
	ld de,(ball.y_vel)
	ld hl,(ball.y_pos)
	add hl,de
	ld (ball.y_pos),hl
	ld c,000h
	ld a,h
	cp 070h
	jr c,@store_y_sector
	ld c,001h
	cp 090h
	jr c,@store_y_sector
	ld c,002h
@store_y_sector:
	ld a,c
	ld (score.ball_y_sector),a
	ret
