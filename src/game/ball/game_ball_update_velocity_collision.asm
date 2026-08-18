sub_game_ball_update_velocity_collision:
	xor a
	ld de,(ball.x_vel)
	ld hl,(ball.x_pos)
	adc hl,de
	bit 7,d
	jr nz,@check_x_moving_left
	jr nc,@check_y_axis
	jr @reverse_x_vel
@check_x_moving_left:
	jr c,@check_y_axis
@reverse_x_vel:
	xor a
	ld hl,0
	sbc hl,de
	ld (ball.x_vel),hl
@check_y_axis:
	xor a
	ld de,(ball.y_vel)
	ld hl,(ball.y_pos)
	adc hl,de
	bit 7,d
	jr nz,@check_y_moving_backward
	jr nc,@check_y_moving_forward
	jr @handle_wall_hit
@check_y_moving_backward:
	jr nc,@handle_wall_sound
	ld a,(ball.y_pos + 1)
	cp 080h
	ret c
	ld a,h
	cp 081h
	ret nc
	jr @check_net_collision
@check_y_moving_forward:
	ld a,(ball.y_pos + 1)
	cp 081h
	ret nc
	ld a,h
	cp 080h
	ret c
@check_net_collision:
	ld a,(ball.x_pos + 1)
	cp 038h
	ret c
	cp 0c9h
	ret nc
	ld a,(ball.racket_contact_flag)
	bit 7,a
	ret nz
	ld a,(ball.z_pos + 1)
	cp 010h
	ret nc
	ld hl,08000h
	ld (ball.y_pos),hl
	ld hl,ball.racket_contact_flag
	set 7,(hl)
	set 6,(hl)
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_ball_net
	ld (psg_engine.track_request_id),a
	ld a,(ball.foul_triggered_flag)
	or a
	jr nz,@calc_net_z_bounce
	ld a,game_foul_t.net
	ld (ball.foul_type),a
@calc_net_z_bounce:
	ld hl,(ball.z_vel)
	push hl
	call sub_game_ball_update_velocity_bounce
	pop de
	bit 7,d
	jr z,@store_z_vel
	ld hl,0
	xor a
	sbc hl,de
	ex de,hl
@store_z_vel:
	ld (ball.z_vel),de
	jr @reverse_y_and_end_play
@handle_wall_sound:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_wall
	ld (psg_engine.track_request_id),a
@handle_wall_hit:
	ld a,(ball.foul_triggered_flag)
	or a
	jr nz,@reverse_y_and_end_play
	ld a,002h
	ld (ball.foul_type),a
	ld a,001h
	ld (ball.foul_triggered_flag),a
@reverse_y_and_end_play:
	ld hl,state.match_state_flags
	res 0,(hl)
	xor a
	ld hl,0
	ld de,(ball.y_vel)
	sbc hl,de
	ld (ball.y_vel),hl
	ret
