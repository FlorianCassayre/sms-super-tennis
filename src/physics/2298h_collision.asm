sub_2298h_collision:
	ld a,(ball.foul_type)		;2298
	and a			;229b
	ld a,000h		;229c
	ret nz			;229e
	push hl			;229f
	exx			;22a0
	ld e,(ix + entity_t.y_div_pos)		;22a1
	ld d,000h		;22a4
	ld hl,l2290h		;22a6
	add hl,de			;22a9
	ld a,(hl)			;22aa
	pop hl			;22ab
	ld e,(ix + entity_t.x_pos)		;22ac
	ld d,(ix + entity_t.x_pos + 1)		;22af
	push hl			;22b2
	xor a			;22b3
	sbc hl,de		;22b4
	ld c,h			;22b6
	pop hl			;22b7
	add a,d			;22b8
	ld d,a			;22b9
	xor a			;22ba
	sbc hl,de		;22bb
	ld b,008h		;22bd
	jr nc,+		;22bf
	call sub_neg_hl		;22c1
	ld b,004h		;22c4
+:
	ld a,b			;22c6
	ld de,01000h		;22c7
	cp 004h		;22ca
	jr z,+		;22cc
	ld de,01800h		;22ce
+:
	xor a			;22d1
	sbc hl,de		;22d2
	jr z,++		;22d4
	jr nc,l22f5h		;22d6
	call sub_neg_hl		;22d8
	ld a,h			;22db
	cp 004h		;22dc
	jr c,++		;22de
	ld a,c			;22e0
	bit 2,b		;22e1
	jr nz,+		;22e3
	neg		;22e5
	ld d,a			;22e7
+:
	exx			;22e8
	push hl			;22e9
	exx			;22ea
	pop hl			;22eb
	add hl,de			;22ec
	ld (ix + entity_t.x_pos),l		;22ed
	ld (ix + entity_t.x_pos + 1),h		;22f0
++:
	ld b,000h		;22f3
l22f5h:
	push bc			;22f5
	exx			;22f6
	pop bc			;22f7
	ld l,(ix + entity_t.y_pos)		;22f8
	ld h,(ix + entity_t.y_pos + 1)		;22fb
	ex de,hl			;22fe
	xor a			;22ff
	sbc hl,de		;2300
	ld c,001h		;2302
	jr c,+		;2304
	ld c,002h		;2306
	call sub_neg_hl		;2308
+:
	ld de,00800h		;230b
	xor a			;230e
	sbc hl,de		;230f
	jr nc,+		;2311
	ld c,000h		;2313
+:
	xor a			;2315
	or c			;2316
	or b			;2317
	ret			;2318
