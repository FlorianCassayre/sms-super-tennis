l1227h:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_8a		;1227
	ld (psg_engine.track_request_id),a		;1229
	ld hl,l1260h		;122c
	ld a,(state.ball_hit_type)		;122f
	add a,a			;1232
	add a,a			;1233
	ld c,a			;1234
	ld b,000h		;1235
	add hl,bc			;1237
	ld e,(hl)			;1238
	inc hl			;1239
	ld d,(hl)			;123a
	inc hl			;123b
	ld c,(hl)			;123c
	inc hl			;123d
	ld b,(hl)			;123e
	ld a,(game.last_hitter)		;123f
	and 001h		;1242
	jr z,l124dh		;1244
	xor a			;1246
	ld hl,0		;1247
	sbc hl,de		;124a
	ex de,hl			;124c
l124dh:
	ld (ball.y_vel),de		;124d
	ld (ball.z_vel),bc		;1251
	call sub_load_ball_z_gravity		;1255
	ld c,003h		;1258
	call sub_compute_ball_x_velocity		;125a
	jp sub_l1362h_ball		;125d

l1260h:
	.DB $00		;1260
	.DB $ff		;1261
	.DB $c0		;1262
	.DB $ff		;1263
	.DB $ab		;1264
	.DB $fe		;1265
	.DB $ab		;1266
	.DB $ff		;1267
	.DB $00		;1268
	.DB $fe		;1269
	.DB $50		;126a
	.DB $ff		;126b
