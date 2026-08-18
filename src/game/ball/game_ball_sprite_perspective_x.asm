sub_game_ball_sprite_perspective_x:
	ld a,(ball.y_pos + 1)
	ld e,a
	ld d,000h
	ld hl,data.projection
	add hl,de
	ld a,(hl)
	ld (ix + entity_t.y_pos + 1),a
	ld (ix + entity_t.y_pos_cache),a
	ld l,a
	ld h,000h
	add hl,hl
	ld de,data.projection.screen_y_to_scale
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	exx
	ld de,(ball.x_pos)
	ld hl,08000h
	xor a
	sbc hl,de
	push af
	jr nc,@calc_x
	xor a
	ex de,hl
	ld hl,0
	sbc hl,de
@calc_x:
	push hl
	exx
	pop bc
	call sub_mul_de_bc
	pop af
	ld d,e
	ld e,h
	ld hl,08000h
	jr nc,@subtract_x
	xor a
	adc hl,de
	jr c,@out_of_bounds
	jr @store_x
@subtract_x:
	xor a
	sbc hl,de
	jr c,@out_of_bounds
@store_x:
	ld (ix + entity_t.x_pos + 1),h
	ret
@out_of_bounds:
	ld (ix + entity_t.y_pos + 1),0d8h
	ret
