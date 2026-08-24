sub_game_racket_shot_unknown:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_racket_hit_alt
	ld (psg_engine.track_request_id),a
	ld hl,l1260h
	ld a,(state.ball_hit_type)
	add a,a
	add a,a
	ld c,a
	ld b,000h
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
	jr z,l124dh
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
l124dh:
	ld (ball.y_vel),de
	ld (ball.z_vel),bc
	call sub_game_ball_load_z_gravity
	ld c,game_ball_shot_type_t.unknown
	call sub_game_ball_compute_x_velocity
	jp sub_game_ball_update_after_hit

l1260h:
	.DB $00
	.DB $ff
	.DB $c0
	.DB $ff
	.DB $ab
	.DB $fe
	.DB $ab
	.DB $ff
	.DB $00
	.DB $fe
	.DB $50
	.DB $ff
