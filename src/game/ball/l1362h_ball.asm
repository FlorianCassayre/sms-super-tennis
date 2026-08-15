sub_l1362h_ball:
	ld a,015h		;1362
	ld (entities.ball.state_index),a		;1364
	xor a			;1367
	ld (entities.ball.ball_hit_flag),a		;1368
	ld a,(game.last_hitter)		;136b
	ld e,a			;136e
	ld d,000h		;136f
	ld hl,l138bh		;1371
	add hl,de			;1374
	ld a,(hl)			;1375
	ld (0c312h),a		;1376
	ld hl,game.match_flags		;1379
	set 7,(hl)		;137c
	ld a,(ball.z_pos + 1)		;137e
	cp 010h		;1381
	ret nc			;1383
	ld hl,01000h		;1384
	ld (ball.z_pos),hl		;1387
	ret			;138a

l138bh:
	.DB $01		;138b
	.DB $02		;138c
	.DB $01		;138d
	.DB $02		;138e
