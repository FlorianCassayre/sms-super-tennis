sub_l1362h_ball:
	ld a,015h		;1362
	ld (0c302h),a		; 32 02 c3 ;1364
	xor a			; af ;1367
	ld (0c303h),a		; 32 03 c3 ;1368
	ld a,(0c042h)		; 3a 42 c0 ;136b
	ld e,a			; 5f ;136e
	ld d,000h		; 16 00 ;136f
	ld hl,l138bh		; 21 8b 13 ;1371
	add hl,de			; 19 ;1374
	ld a,(hl)			; 7e ;1375
	ld (0c312h),a		; 32 12 c3 ;1376
	ld hl,0c040h		; 21 40 c0 ;1379
	set 7,(hl)		; cb fe ;137c
	ld a,(ball.z_pos + 1)		; 3a 01 c5 ;137e
	cp 010h		; fe 10 ;1381
	ret nc			; d0 ;1383
	ld hl,01000h		; 21 00 10 ;1384
	ld (ball.z_pos),hl		; 22 00 c5 ;1387
	ret			; c9 ;138a

l138bh:
	.DB $01		;138b
	.DB $02		;138c
	.DB $01		;138d
	.DB $02		;138e
