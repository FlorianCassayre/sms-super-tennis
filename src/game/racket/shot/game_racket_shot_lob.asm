sub_game_racket_shot_lob:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_high
	ld (psg_engine.track_request_id),a
	ld hl,l12c0h
	ld a,(state.ball_hit_type)
	add a,a
	ld c,a
	ld b,000h
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(ball.y_pos + 1)
	sub 080h
	jr nc,l1288h
	neg
l1288h:
	ld c,000h
	cp 030h
	jr c,l1290h
	ld c,001h
l1290h:
	ld a,c
	add a,a
	add a,a
	ld c,a
	ld b,000h
	ex de,hl
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld a,(state.last_hitter)
	and 001h
	jr z,l12adh
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
l12adh:
	ld (ball.y_vel),de
	ld (ball.z_vel),bc
	call sub_game_ball_load_z_gravity
	ld c,game_ball_shot_type_t.lob
	call sub_game_ball_compute_x_velocity
	jp sub_game_ball_update_after_hit
l12c0h:
	.DB $c6
	.DB $12
	.DB $ce
	.DB $12
	.DB $d6
	.DB $12
	.DB $60
	.DB $ff
	.DB $10
	.DB $ff
	.DB $60
	.DB $ff
	.DB $d0
	.DB $fe
	.DB $2b
	.DB $ff
	.DB $d8
	.DB $fe
	.DB $2b
	.DB $ff
	.DB $80
	.DB $fe
	.DB $c0
	.DB $fe
	.DB $40
	.DB $fe
	.DB $c0
	.DB $fe
	.DB $d0
	.DB $fd
