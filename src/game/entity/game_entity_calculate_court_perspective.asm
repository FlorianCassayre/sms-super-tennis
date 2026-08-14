sub_game_entity_calculate_court_perspective:
	ld a,(ix + entity_t.x_pos + 1)		;2e98
	bit 0,(ix + entity_t.id)		;2e9b
	ld c,008h		;2e9f
	ld b,01eh		;2ea1
	jp z,+		;2ea3
	ld c,036h		;2ea6
	ld b,013h		;2ea8
+:
	sub c			;2eaa
	jr nc,+		;2eab
	xor a			;2ead
+:
	call sub_div_a_b_c		;2eae
	ld (ix + entity_t.x_div_pos),c		;2eb1
	ld a,(ix + entity_t.y_pos + 1)		;2eb4
	bit 0,(ix + entity_t.id)		;2eb7
	ld c,06ch		;2ebb
	ld b,00dh		;2ebd
	jr z,+		;2ebf
	ld c,01dh		;2ec1
	ld b,006h		;2ec3
+:
	sub c			;2ec5
	jr nc,+		;2ec6
	xor a			;2ec8
+:
	call sub_div_a_b_c		;2ec9
	ld (ix + entity_t.y_div_pos),c		;2ecc
	ret			;2ecf
