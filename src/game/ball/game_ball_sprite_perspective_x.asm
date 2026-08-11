sub_game_ball_sprite_perspective_x:
	ld a,(0c509h)		; 3a 09 c5 ;1548
	ld e,a			; 5f ;154b
	ld d,000h		; 16 00 ;154c
	ld hl,0cbe8h		; 21 e8 cb ;154e
	add hl,de			; 19 ;1551
	ld a,(hl)			; 7e ;1552
	ld (ix+00bh),a		; dd 77 0b ;1553
	ld (ix+014h),a		; dd 77 14 ;1556
	ld l,a			; 6f ;1559
	ld h,000h		; 26 00 ;155a
	add hl,hl			; 29 ;155c
	ld de,0cce8h		; 11 e8 cc ;155d
	add hl,de			; 19 ;1560
	ld e,(hl)			; 5e ;1561
	inc hl			; 23 ;1562
	ld d,(hl)			; 56 ;1563
	exx			; d9 ;1564
	ld de,(ball.x_pos)		; ed 5b 0a c5 ;1565
	ld hl,08000h		; 21 00 80 ;1569
	xor a			; af ;156c
	sbc hl,de		; ed 52 ;156d
	push af			; f5 ;156f
	jr nc,@calc_x		; 30 07 ;1570
	xor a			; af ;1572
	ex de,hl			; eb ;1573
	ld hl,0		; 21 00 00 ;1574
	sbc hl,de		; ed 52 ;1577
@calc_x:
	push hl			; e5 ;1579
	exx			; d9 ;157a
	pop bc			; c1 ;157b
	call sub_mul_de_bc		; cd f7 03 ;157c
	pop af			; f1 ;157f
	ld d,e			; 53 ;1580
	ld e,h			; 5c ;1581
	ld hl,08000h		; 21 00 80 ;1582
	jr nc,@subtract_x		; 30 07 ;1585
	xor a			; af ;1587
	adc hl,de		; ed 5a ;1588
	jr c,@out_of_bounds		; 38 0b ;158a
	jr @store_x		; 18 05 ;158c
@subtract_x:
	xor a			; af ;158e
	sbc hl,de		; ed 52 ;158f
	jr c,@out_of_bounds		; 38 04 ;1591
@store_x:
	ld (ix+00dh),h		; dd 74 0d ;1593
	ret			; c9 ;1596
@out_of_bounds:
	ld (ix+00bh),0d8h		; dd 36 0b d8 ;1597
	ret			; c9 ;159b
