sub_game_racket_shot_groundstroke:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_racket_hit
	ld (psg_engine.track_request_id),a
	ld hl,l1338h
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
	jr nc,l12fah
	neg
l12fah:
	ld c,000h
	cp 018h
	jr c,l1308h
l1300h:
	ld c,001h
	cp 040h
	jr c,l1308h
	ld c,002h
l1308h:
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
	jr z,l1325h
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
l1325h:
	ld (ball.y_vel),de
	ld (ball.z_vel),bc
	call sub_game_ball_load_z_gravity
	ld c,game_ball_shot_type_t.groundstroke
	call sub_game_ball_compute_x_velocity
	jp sub_game_ball_update_after_hit

l1338h:
	.DB $3e
	.DB $13
	.DB $4a
	.DB $13
	.DB $56
	.DB $13
	.DB $00
	.DB $ff
	.DB $c0
	.DB $ff
	.DB $00
	.DB $ff
	.DB $70
	.DB $ff
	.DB $00
	.DB $ff
	.DB $50
	.DB $ff
	.DB $ab
	.DB $fe
	.DB $ab
	.DB $ff
	.DB $ab
	.DB $fe
	.DB $40
	.DB $ff
	.DB $ab
	.DB $fe
	.DB $16
	.DB $ff
	.DB $00
	.DB $fe
	.DB $80
	.DB $ff
	.DB $00
	.DB $fe
	.DB $e0
	.DB $fe
	.DB $00
	.DB $fe
	.DB $a0
	.DB $fe
