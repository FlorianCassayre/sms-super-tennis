sub_game_cpu_calculate_intercept_direction_1:
	ld a,(ball.foul_type)
	and a
	ld a,0
	ret nz
	push hl
	exx
	pop hl
	ld e,(ix + entity_t.x_pos)
	ld d,(ix + entity_t.x_pos + 1)
	xor a
	sbc hl,de
	ld b,008h
	jr nc,+
	call sub_neg_hl
	ld b,004h
+:
	ld a,(ix + entity_t.y_div_pos)
	ld de,00500h
	cp 006h
	jr nc,+
	ld de,00c00h
+:
	xor a
	ld c,h
	sbc hl,de
	jr z,++
	jr nc,+++
	call sub_neg_hl
	ld a,h
	cp 003h
	jr c,++
	ld a,c	; Bug?! Should be `ld a,d`
	bit 2,b
	jr nz,+
	neg
	ld d,a
+:
	exx
	push hl
	exx
	pop hl
	add hl,de
	ld (ix + entity_t.x_pos),l
	ld (ix + entity_t.x_pos + 1),h
++:
	ld b,000h
+++:
	push bc
	exx
	pop bc
	ld l,(ix + entity_t.y_pos)
	ld h,(ix + entity_t.y_pos + 1)
	ex de,hl
	xor a
	sbc hl,de
	ld c,002h
	jr nc,+
	ld c,001h
	call sub_neg_hl
+:
	ld de,00300h
	xor a
	sbc hl,de
	jr nc,+
	ld c,000h
+:
	xor a
	or c
	or b
	ret
