l12deh_racket_hit:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_racket_hit		; 3e 8c ;12de
	ld (psg_engine.track_request_id),a		; 32 00 de ;12e0
	ld hl,l1338h		; 21 38 13 ;12e3
	ld a,(state.ball_hit_type)		; 3a 46 c0 ;12e6
	add a,a			; 87 ;12e9
	ld c,a			; 4f ;12ea
	ld b,000h		; 06 00 ;12eb
	add hl,bc			; 09 ;12ed
	ld e,(hl)			; 5e ;12ee
	inc hl			; 23 ;12ef
	ld d,(hl)			; 56 ;12f0
	ld a,(0c509h)		; 3a 09 c5 ;12f1
	sub 080h		; d6 80 ;12f4
	jr nc,l12fah		; 30 02 ;12f6
	neg		; ed 44 ;12f8
l12fah:
	ld c,000h		; 0e 00 ;12fa
	cp 018h		; fe 18 ;12fc
	jr c,l1308h		; 38 08 ;12fe
l1300h:
	ld c,001h		; 0e 01 ;1300
	cp 040h		; fe 40 ;1302
	jr c,l1308h		; 38 02 ;1304
	ld c,002h		; 0e 02 ;1306
l1308h:
	ld a,c			; 79 ;1308
	add a,a			; 87 ;1309
	add a,a			; 87 ;130a
	ld c,a			; 4f ;130b
	ld b,000h		; 06 00 ;130c
	ex de,hl			; eb ;130e
	add hl,bc			; 09 ;130f
	ld e,(hl)			; 5e ;1310
	inc hl			; 23 ;1311
	ld d,(hl)			; 56 ;1312
	inc hl			; 23 ;1313
	ld c,(hl)			; 4e ;1314
	inc hl			; 23 ;1315
	ld b,(hl)			; 46 ;1316
	ld a,(0c042h)		; 3a 42 c0 ;1317
	and 001h		; e6 01 ;131a
	jr z,l1325h		; 28 07 ;131c
	xor a			; af ;131e
	ld hl,0		; 21 00 00 ;131f
	sbc hl,de		; ed 52 ;1322
	ex de,hl			; eb ;1324
l1325h:
	ld (ball.y_vel),de		; ed 53 0c c5 ;1325
	ld (ball.z_vel),bc		; ed 43 06 c5 ;1329
	call sub_load_ball_z_gravity		; cd 8f 13 ;132d
	ld c,000h		; 0e 00 ;1330
	call sub_compute_ball_x_velocity		; cd a8 13 ;1332
	jp sub_l1362h_ball		; c3 62 13 ;1335
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
