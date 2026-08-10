sub_compute_ball_x_velocity:
	ld a,c			; 79 ;13a8
	add a,a			; 87 ;13a9
	ld c,a			; 4f ;13aa
	ld b,000h		; 06 00 ;13ab
	ld hl,l13e6h		; 21 e6 13 ;13ad
	add hl,bc			; 09 ;13b0
	ld e,(hl)			; 5e ;13b1
	inc hl			; 23 ;13b2
	ld d,(hl)			; 56 ;13b3
	ld a,(0c046h)		; 3a 46 c0 ;13b4
	add a,a			; 87 ;13b7
	ld c,a			; 4f ;13b8
	add a,a			; 87 ;13b9
	ld b,a			; 47 ;13ba
	add a,a			; 87 ;13bb
	add a,a			; 87 ;13bc
	add a,c			; 81 ;13bd
	add a,b			; 80 ;13be
	ld c,a			; 4f ;13bf
	ld a,(ix+020h)		; dd 7e 20 ;13c0
	sub 00bh		; d6 0b ;13c3
	jr nc,l13c9h		; 30 02 ;13c5
	add a,00bh		; c6 0b ;13c7
l13c9h:
	add a,a			; 87 ;13c9
	add a,c			; 81 ;13ca
	ld c,a			; 4f ;13cb
	ld b,000h		; 06 00 ;13cc
	ex de,hl			; eb ;13ce
	add hl,bc			; 09 ;13cf
	ld e,(hl)			; 5e ;13d0
	inc hl			; 23 ;13d1
	ld d,(hl)			; 56 ;13d2
	ld a,(0c042h)		; 3a 42 c0 ;13d3
	and 001h		; e6 01 ;13d6
	jr z,+		; 28 07 ;13d8
	xor a			; af ;13da
	ld hl,0		; 21 00 00 ;13db
	sbc hl,de		; ed 52 ;13de
	ex de,hl			; eb ;13e0
+:
	ld (ball.x_vel),de		; ed 53 0e c5 ;13e1
	ret			; c9 ;13e5

l13e6h:
	.DW l13eeh		;13e6
	.DW l1430h		;13e8
	.DW l1472h		;13ea
	.DW l13eeh		;13ec
l13eeh:
	.DW $0082		;13ee
	.DW $0066		;13f0
	.DW $004c		;13f2
	.DW $0032		;13f4
	.DW $0018		;13f6
	.DW $0000		;13f8
	.DW $ffe8		;13fa
	.DW $ffce		;13fc
	.DW $ffb4		;13fe
l1400h:
	.DW $ff9a		;1400
	.DW $ff7e		;1402
	.DW $00af		;1404
	.DW $0089		;1406
	.DW $0066		;1408
	.DW $0043		;140a
	.DW $0020		;140c
	.DW $0000		;140e
	.DW $ffe0		;1410
	.DW $ffbd		;1412
	.DW $ff9a		;1414
	.DW $ff77		;1416
	.DW $ff51		;1418
	.DW $0104		;141a
	.DW $00cc		;141c
	.DW $0098		;141e
	.DW $0064		;1420
	.DW $0030		;1422
	.DW $0000		;1424
	.DW $ffd0		;1426
	.DW $ff9c		;1428
	.DW $ff68		;142a
	.DW $ff34		;142c
	.DW $fefc		;142e
l1430h:
	.DW $0051		;1430
	.DW $003f		;1432
	.DW $002f		;1434
	.DW $001f		;1436
	.DW $000f		;1438
	.DW $0000		;143a
	.DW $fff1		;143c
	.DW $ffe1		;143e
	.DW $ffd1		;1440
	.DW $ffc1		;1442
	.DW $ffaf		;1444
	.DW $006e		;1446
	.DW $0056		;1448
	.DW $0040		;144a
	.DW $002a		;144c
	.DW $0014		;144e
	.DW $0000		;1450
	.DW $ffec		;1452
	.DW $ffd6		;1454
	.DW $ffc0		;1456
	.DW $ffaa		;1458
	.DW $ff92		;145a
	.DW $00a2		;145c
	.DW $007f		;145e
	.DW $005f		;1460
	.DW $003e		;1462
	.DW $001e		;1464
	.DW $0000		;1466
	.DW $ffe2		;1468
	.DW $ffc2		;146a
	.DW $ffa1		;146c
	.DW $ff81		;146e
	.DW $ff5e		;1470
l1472h:
	.DW $00e5		;1472
	.DW $0124		;1474
	.DW $00ab		;1476
	.DW $0070		;1478
	.DW $0036		;147a
	.DW $0000		;147c
	.DW $ffca		;147e
	.DW $ff90		;1480
	.DW $ff55		;1482
	.DW $ff1b		;1484
	.DW $fedc		;1486
	.DW $0132		;1488
	.DW $0186		;148a
	.DW $00e4		;148c
	.DW $0096		;148e
	.DW $0048		;1490
	.DW $0000		;1492
	.DW $ffb8		;1494
	.DW $ff6a		;1496
	.DW $ff1c		;1498
	.DW $fece		;149a
	.DW $fe7a		;149c
	.DW $01cb		;149e
	.DW $0249		;14a0
	.DW $0156		;14a2
	.DW $00e1		;14a4
	.DW $006c		;14a6
	.DW $0000		;14a8
	.DW $ff94		;14aa
	.DW $ff1f		;14ac
	.DW $feaa		;14ae
	.DW $fe35		;14b0
	.DW $fdb7		;14b2
