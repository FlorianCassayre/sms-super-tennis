sub_game_ball_compute_horizontal_deflection:
	ld a,e
	sub 018h
	jr nc,+
	ld a,000h
+:
	ld e,a
	ld d,000h
	ld hl,0d0e8h
	add hl,de
	ld a,(hl)
	ld (ball.deflection_temp),a
	ld a,(ball.y_pos + 1)
	sub (hl)
	jr nc,+
	neg
+:
	ld d,a
	ld e,000h
	ld bc,(ball.y_vel)
	bit 7,b
	jr z,+
	xor a
	ld hl,0
	sbc hl,bc
	push hl
	pop bc
+:
	ld hl,0
	call sub_div_hl_de_bc
	ld b,e
	ld c,h
	ld de,(ball.x_vel)
	push de
	bit 7,d
	jr z,+
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
+:
	call sub_mul_de_bc
	ld d,e
	ld e,h
	pop hl
	bit 7,h
	jr z,+
	xor a
	ld hl,0
	sbc hl,de
	ex de,hl
+:
	ld hl,(ball.x_pos)
	add hl,de
	push hl
	ld a,(ball.deflection_temp)
	ld e,a
	ld d,000h
	ld hl,data.projection
	add hl,de
	ld a,(hl)
	ld l,a
	ld h,000h
	add hl,hl
	ld de,data.projection.screen_y_to_scale
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	exx
	pop de
	ld hl,08000h
	xor a
	sbc hl,de
	push af
	jr nc,+
	xor a
	ex de,hl
	ld hl,0
	sbc hl,de
+:
	push hl
	exx
	pop bc
	call sub_mul_de_bc
	pop af
	ld d,e
	ld e,h
	ld hl,08000h
	jr nc,+
	xor a
	adc hl,de
	jr c,+++
	jr ++
+:
	xor a
	sbc hl,de
	jr c,++++
++:
	ld a,h
	ret
+++:
	ld a,0ffh
	ret
++++:
	ld a,000h
	ret
