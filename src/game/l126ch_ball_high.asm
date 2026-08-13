l126ch_ball_high:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_high		; 3e 8b ;126c
	ld (psg_engine.track_request_id),a		; 32 00 de ;126e
	ld hl,l12c0h		; 21 c0 12 ;1271
	ld a,(state.ball_hit_type)		; 3a 46 c0 ;1274
	add a,a			; 87 ;1277
	ld c,a			; 4f ;1278
	ld b,000h		; 06 00 ;1279
	add hl,bc			; 09 ;127b
	ld e,(hl)			; 5e ;127c
	inc hl			; 23 ;127d
	ld d,(hl)			; 56 ;127e
	ld a,(0c509h)		; 3a 09 c5 ;127f
	sub 080h		; d6 80 ;1282
	jr nc,l1288h		; 30 02 ;1284
	neg		; ed 44 ;1286
l1288h:
	ld c,000h		; 0e 00 ;1288
	cp 030h		; fe 30 ;128a
	jr c,l1290h		; 38 02 ;128c
	ld c,001h		; 0e 01 ;128e
l1290h:
	ld a,c			; 79 ;1290
	add a,a			; 87 ;1291
	add a,a			; 87 ;1292
	ld c,a			; 4f ;1293
	ld b,000h		; 06 00 ;1294
	ex de,hl			; eb ;1296
	add hl,bc			; 09 ;1297
	ld e,(hl)			; 5e ;1298
	inc hl			; 23 ;1299
	ld d,(hl)			; 56 ;129a
	inc hl			; 23 ;129b
	ld c,(hl)			; 4e ;129c
	inc hl			; 23 ;129d
	ld b,(hl)			; 46 ;129e
	ld a,(0c042h)		; 3a 42 c0 ;129f
	and 001h		; e6 01 ;12a2
	jr z,l12adh		; 28 07 ;12a4
	xor a			; af ;12a6
	ld hl,0		; 21 00 00 ;12a7
	sbc hl,de		; ed 52 ;12aa
	ex de,hl			; eb ;12ac
l12adh:
	ld (ball.y_vel),de		; ed 53 0c c5 ;12ad
	ld (ball.z_vel),bc		; ed 43 06 c5 ;12b1
	call sub_load_ball_z_gravity		; cd 8f 13 ;12b5
	ld c,001h		; 0e 01 ;12b8
	call sub_compute_ball_x_velocity		; cd a8 13 ;12ba
	jp sub_l1362h_ball		; c3 62 13 ;12bd
l12c0h:
	.DB $c6		;12c0
	.DB $12		;12c1
	.DB $ce		;12c2
	.DB $12		;12c3
	.DB $d6		;12c4
	.DB $12		;12c5
	.DB $60		;12c6
	.DB $ff		;12c7
	.DB $10		;12c8
	.DB $ff		;12c9
	.DB $60		;12ca
	.DB $ff		;12cb
	.DB $d0		;12cc
	.DB $fe		;12cd
	.DB $2b		;12ce
	.DB $ff		;12cf
	.DB $d8		;12d0
	.DB $fe		;12d1
	.DB $2b		;12d2
	.DB $ff		;12d3
	.DB $80		;12d4
	.DB $fe		;12d5
	.DB $c0		;12d6
	.DB $fe		;12d7
	.DB $40		;12d8
	.DB $fe		;12d9
	.DB $c0		;12da
	.DB $fe		;12db
	.DB $d0		;12dc
	.DB $fd		;12dd
