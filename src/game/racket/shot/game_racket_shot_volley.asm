sub_game_racket_shot_volley:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_racket_hit
	ld (psg_engine.track_request_id),a
	ld a,(ball.y_pos + 1)
	sub 080h
	jr nc,l11bfh
	neg
l11bfh:
	ld hl,l1215h_slow
	cp 01ch
	jr c,l11c9h
	ld hl,l1209h_fast
l11c9h:
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
	jr z,l11e7h
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
l11e7h:
	ld (ball.y_vel),de
	ld (ball.z_vel),bc
	ld hl,l1221h_gravity_modifier
	ld a,(state.ball_hit_type)
	add a,a
	ld c,a
	ld b,000h
	add hl,bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld (ball.z_gravity),de
	ld c,002h
	call sub_compute_ball_x_velocity
	jp sub_l1362h_ball

l1209h_fast:
	.DB $c0
	.DB $fd
	.DB $e0
	.DB $ff
	.DB $00
	.DB $fd
	.DB $d6
	.DB $ff
	.DB $80
	.DB $fb
	.DB $c0
	.DB $ff
l1215h_slow:
	.DB $c0
	.DB $fd
	.DB $40
	.DB $00
	.DB $00
	.DB $fd
	.DB $54
	.DB $00
	.DB $80
	.DB $fb
	.DB $80
	.DB $00
l1221h_gravity_modifier:
	.DB $09
	.DB $00
	.DB $0f
	.DB $00
	.DB $1c
	.DB $00
