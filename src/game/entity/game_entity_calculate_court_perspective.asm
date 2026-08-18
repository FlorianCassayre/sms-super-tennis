sub_game_entity_calculate_court_perspective:
	ld a,(ix + entity_t.x_pos + 1)
	bit 0,(ix + entity_t.id)
	ld c,008h
	ld b,01eh
	jp z,+
	ld c,036h
	ld b,013h
+:
	sub c
	jr nc,+
	xor a
+:
	call sub_div_a_b_c
	ld (ix + entity_t.x_div_pos),c
	ld a,(ix + entity_t.y_pos + 1)
	bit 0,(ix + entity_t.id)
	ld c,06ch
	ld b,00dh
	jr z,+
	ld c,01dh
	ld b,006h
+:
	sub c
	jr nc,+
	xor a
+:
	call sub_div_a_b_c
	ld (ix + entity_t.y_div_pos),c
	ret
