sub_game_ball_shadow_update:
	ld a,(entities.ball.x_pos + 1)
	ld (ix + entity_t.x_pos + 1),a
	ld a,(entities.ball.y_pos + 1)
	inc a
	ld (ix + entity_t.y_pos_cache),a
	ld l,a
	ld h,000h
	add hl,hl
	ld de,0cee6h
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld de,(ball.z_pos)
	call sub_mul_de_bc
	ld d,e
	ld e,h
	xor a
	ld hl,(entities.ball.y_pos)
	sbc hl,de
	ld (ix + entity_t.y_pos),l
	ld (ix + entity_t.y_pos + 1),h
	jp sub_game_ball_shadow_update_sizes
