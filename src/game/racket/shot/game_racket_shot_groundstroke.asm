sub_game_racket_shot_groundstroke:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_racket_hit		;12de
	ld (psg_engine.track_request_id),a		;12e0
	ld hl,l1338h		;12e3
	ld a,(state.ball_hit_type)		;12e6
	add a,a			;12e9
	ld c,a			;12ea
	ld b,000h		;12eb
	add hl,bc			;12ed
	ld e,(hl)			;12ee
	inc hl			;12ef
	ld d,(hl)			;12f0
	ld a,(ball.y_pos + 1)		;12f1
	sub 080h		;12f4
	jr nc,l12fah		;12f6
	neg		;12f8
l12fah:
	ld c,000h		;12fa
	cp 018h		;12fc
	jr c,l1308h		;12fe
l1300h:
	ld c,001h		;1300
	cp 040h		;1302
	jr c,l1308h		;1304
	ld c,002h		;1306
l1308h:
	ld a,c			;1308
	add a,a			;1309
	add a,a			;130a
	ld c,a			;130b
	ld b,000h		;130c
	ex de,hl			;130e
	add hl,bc			;130f
	ld e,(hl)			;1310
	inc hl			;1311
	ld d,(hl)			;1312
	inc hl			;1313
	ld c,(hl)			;1314
	inc hl			;1315
	ld b,(hl)			;1316
	ld a,(state.last_hitter)		;1317
	and 001h		;131a
	jr z,l1325h		;131c
	xor a			;131e
	ld hl,0		;131f
	sbc hl,de		;1322
	ex de,hl			;1324
l1325h:
	ld (ball.y_vel),de		;1325
	ld (ball.z_vel),bc		;1329
	call sub_load_ball_z_gravity		;132d
	ld c,000h		;1330
	call sub_compute_ball_x_velocity		;1332
	jp sub_l1362h_ball		;1335

l1338h:
	.DB $3e		;1338
	.DB $13		;1339
	.DB $4a		;133a
	.DB $13		;133b
	.DB $56		;133c
	.DB $13		;133d
	.DB $00		;133e
	.DB $ff		;133f
	.DB $c0		;1340
	.DB $ff		;1341
	.DB $00		;1342
	.DB $ff		;1343
	.DB $70		;1344
	.DB $ff		;1345
	.DB $00		;1346
	.DB $ff		;1347
	.DB $50		;1348
	.DB $ff		;1349
	.DB $ab		;134a
	.DB $fe		;134b
	.DB $ab		;134c
	.DB $ff		;134d
	.DB $ab		;134e
	.DB $fe		;134f
	.DB $40		;1350
	.DB $ff		;1351
	.DB $ab		;1352
	.DB $fe		;1353
	.DB $16		;1354
	.DB $ff		;1355
	.DB $00		;1356
	.DB $fe		;1357
	.DB $80		;1358
	.DB $ff		;1359
	.DB $00		;135a
	.DB $fe		;135b
	.DB $e0		;135c
	.DB $fe		;135d
	.DB $00		;135e
	.DB $fe		;135f
	.DB $a0		;1360
	.DB $fe		;1361
