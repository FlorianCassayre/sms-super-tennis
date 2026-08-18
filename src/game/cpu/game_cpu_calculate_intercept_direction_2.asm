sub_game_cpu_calculate_intercept_direction_2:
	ld a,(ball.foul_type)
	and a
	ld a,000h
	ret nz
	push hl
	exx
	ld e,(ix + entity_t.y_div_pos)
	ld d,000h
	ld hl,game_cpu_player_x
	add hl,de
	ld a,(hl)
	pop hl
	ld e,(ix + entity_t.x_pos)
	ld d,(ix + entity_t.x_pos + 1)
	push hl
	xor a			; Bug?!
	sbc hl,de
	ld c,h
	pop hl
	add a,d
	ld d,a	; `game_cpu_player_x + de` stored in `a` is gone, `d` equates `(ix + entity_t.x_pos + 1)`
	xor a
	sbc hl,de
	ld b,008h
	jr nc,+
	call sub_neg_hl
	ld b,004h
+:
	ld a,b
	ld de,01000h
	cp 004h
	jr z,+
	ld de,01800h
+:
	xor a
	sbc hl,de
	jr z,++
	jr nc,l22f5h
	call sub_neg_hl
	ld a,h
	cp 004h
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
l22f5h:
	push bc
	exx
	pop bc
	ld l,(ix + entity_t.y_pos)
	ld h,(ix + entity_t.y_pos + 1)
	ex de,hl
	xor a
	sbc hl,de
	ld c,001h
	jr c,+
	ld c,002h
	call sub_neg_hl
+:
	ld de,00800h
	xor a
	sbc hl,de
	jr nc,+
	ld c,000h
+:
	xor a
	or c
	or b
	ret
