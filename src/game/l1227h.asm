l1227h:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_8a		; 3e 8a ;1227
	ld (psg_engine.track_request_id),a		; 32 00 de ;1229
	ld hl,l1260h		; 21 60 12 ;122c
	ld a,(state.ball_hit_type)		; 3a 46 c0 ;122f
	add a,a			; 87 ;1232
	add a,a			; 87 ;1233
	ld c,a			; 4f ;1234
	ld b,000h		; 06 00 ;1235
	add hl,bc			; 09 ;1237
	ld e,(hl)			; 5e ;1238
	inc hl			; 23 ;1239
	ld d,(hl)			; 56 ;123a
	inc hl			; 23 ;123b
	ld c,(hl)			; 4e ;123c
	inc hl			; 23 ;123d
	ld b,(hl)			; 46 ;123e
	ld a,(0c042h)		; 3a 42 c0 ;123f
	and 001h		; e6 01 ;1242
	jr z,l124dh		; 28 07 ;1244
	xor a			; af ;1246
	ld hl,0		; 21 00 00 ;1247
	sbc hl,de		; ed 52 ;124a
	ex de,hl			; eb ;124c
l124dh:
	ld (ball.y_vel),de		; ed 53 0c c5 ;124d
	ld (ball.z_vel),bc		; ed 43 06 c5 ;1251
	call sub_load_ball_z_gravity		; cd 8f 13 ;1255
	ld c,003h		; 0e 03 ;1258
	call sub_compute_ball_x_velocity		; cd a8 13 ;125a
	jp sub_l1362h_ball		; c3 62 13 ;125d

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
