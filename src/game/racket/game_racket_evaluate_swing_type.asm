sub_game_racket_evaluate_swing_type:
	ld a,003h		;2c13
	bit 0,(ix + entity_t.shot_button)		;2c15
	ret z			;2c19
	ld de,ball.z_pos + 1		;2c1a
	ld a,(de)			;2c1d
	bit 0,(ix + entity_t.id)		;2c1e
	jr nz,+		;2c22
	cp 010h		;2c24
	jr ++		;2c26
+:
	cp 00ah		;2c28
++:
	ld b,a			;2c2a
	ld a,002h		;2c2b
	ret c			;2c2d
	ld a,b			;2c2e
	bit 0,(ix + entity_t.id)		;2c2f
	jr nz,+		;2c33
	cp 018h		;2c35
	jr ++		;2c37
+:
	cp 01ch		;2c39
++:
	ld a,001h		;2c3b
	ret c			;2c3d
	xor a			;2c3e
	ret			;2c3f
