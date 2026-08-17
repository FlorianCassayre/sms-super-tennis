sub_game_racket_shot_volley:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_racket_hit		;11b1
	ld (psg_engine.track_request_id),a		;11b3
	ld a,(ball.y_pos + 1)		;11b6
	sub 080h		;11b9
	jr nc,l11bfh		;11bb
	neg		;11bd
l11bfh:
	ld hl,l1215h_slow		;11bf
	cp 01ch		;11c2
	jr c,l11c9h		;11c4
	ld hl,l1209h_fast		;11c6
l11c9h:
	ld a,(state.ball_hit_type)		;11c9
	add a,a			;11cc
	add a,a			;11cd
	ld c,a			;11ce
	ld b,000h		;11cf
	add hl,bc			;11d1
	ld e,(hl)			;11d2
	inc hl			;11d3
	ld d,(hl)			;11d4
	inc hl			;11d5
	ld c,(hl)			;11d6
	inc hl			;11d7
	ld b,(hl)			;11d8
	ld a,(state.last_hitter)		;11d9
	and 001h		;11dc
	jr z,l11e7h		;11de
	xor a			;11e0
	ld hl,0		;11e1
	sbc hl,de		;11e4
	ex de,hl			;11e6
l11e7h:
	ld (ball.y_vel),de		;11e7
	ld (ball.z_vel),bc		;11eb
	ld hl,l1221h_gravity_modifier		;11ef
	ld a,(state.ball_hit_type)		;11f2
	add a,a			;11f5
	ld c,a			;11f6
	ld b,000h		;11f7
	add hl,bc			;11f9
	ld e,(hl)			;11fa
	inc hl			;11fb
	ld d,(hl)			;11fc
	ld (ball.z_gravity),de		;11fd
	ld c,002h		;1201
	call sub_compute_ball_x_velocity		;1203
	jp sub_l1362h_ball		;1206

l1209h_fast:
	.DB $c0		;1209
	.DB $fd		;120a
	.DB $e0		;120b
	.DB $ff		;120c
	.DB $00		;120d
	.DB $fd		;120e
	.DB $d6		;120f
	.DB $ff		;1210
	.DB $80		;1211
	.DB $fb		;1212
	.DB $c0		;1213
	.DB $ff		;1214
l1215h_slow:
	.DB $c0		;1215
	.DB $fd		;1216
	.DB $40		;1217
	.DB $00		;1218
	.DB $00		;1219
	.DB $fd		;121a
	.DB $54		;121b
	.DB $00		;121c
	.DB $80		;121d
	.DB $fb		;121e
	.DB $80		;121f
	.DB $00		;1220
l1221h_gravity_modifier:
	.DB $09		;1221
	.DB $00		;1222
	.DB $0f		;1223
	.DB $00		;1224
	.DB $1c		;1225
	.DB $00		;1226
