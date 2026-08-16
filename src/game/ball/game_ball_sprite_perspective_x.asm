sub_game_ball_sprite_perspective_x:
	ld a,(0c509h)		;1548
	ld e,a			;154b
	ld d,000h		;154c
	ld hl,data.planes_5		;154e
	add hl,de			;1551
	ld a,(hl)			;1552
	ld (ix + entity_t.y_pos + 1),a		;1553
	ld (ix + entity_t.y_pos_cache),a		;1556
	ld l,a			;1559
	ld h,000h		;155a
	add hl,hl			;155c
	ld de,0cce8h		;155d
	add hl,de			;1560
	ld e,(hl)			;1561
	inc hl			;1562
	ld d,(hl)			;1563
	exx			;1564
	ld de,(ball.x_pos)		;1565
	ld hl,08000h		;1569
	xor a			;156c
	sbc hl,de		;156d
	push af			;156f
	jr nc,@calc_x		;1570
	xor a			;1572
	ex de,hl			;1573
	ld hl,0		;1574
	sbc hl,de		;1577
@calc_x:
	push hl			;1579
	exx			;157a
	pop bc			;157b
	call sub_mul_de_bc		;157c
	pop af			;157f
	ld d,e			;1580
	ld e,h			;1581
	ld hl,08000h		;1582
	jr nc,@subtract_x		;1585
	xor a			;1587
	adc hl,de		;1588
	jr c,@out_of_bounds		;158a
	jr @store_x		;158c
@subtract_x:
	xor a			;158e
	sbc hl,de		;158f
	jr c,@out_of_bounds		;1591
@store_x:
	ld (ix + entity_t.x_pos + 1),h		;1593
	ret			;1596
@out_of_bounds:
	ld (ix + entity_t.y_pos + 1),0d8h		;1597
	ret			;159b
