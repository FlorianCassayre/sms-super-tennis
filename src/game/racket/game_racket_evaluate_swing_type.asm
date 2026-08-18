sub_game_racket_evaluate_swing_type:
	ld a,003h
	bit 0,(ix + entity_t.shot_button)
	ret z
	ld de,ball.z_pos + 1
	ld a,(de)
	bit 0,(ix + entity_t.id)
	jr nz,+
	cp 010h
	jr ++
+:
	cp 00ah
++:
	ld b,a
	ld a,002h
	ret c
	ld a,b
	bit 0,(ix + entity_t.id)
	jr nz,+
	cp 018h
	jr ++
+:
	cp 01ch
++:
	ld a,001h
	ret c
	xor a
	ret
