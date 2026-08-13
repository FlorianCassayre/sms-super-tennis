sub_game_racket_evaluate_swing_type:
	ld a,003h		; 3e 03 ;2c13
	bit 0,(ix + entity_t.shot_button)		; dd cb 28 46 ;2c15
	ret z			; c8 ;2c19
	ld de,0c501h		; 11 01 c5 ;2c1a
	ld a,(de)			; 1a ;2c1d
	bit 0,(ix + entity_t.id)		; dd cb 01 46 ;2c1e
	jr nz,+		; 20 04 ;2c22
	cp 010h		; fe 10 ;2c24
	jr ++		; 18 02 ;2c26
+:
	cp 00ah		; fe 0a ;2c28
++:
	ld b,a			; 47 ;2c2a
	ld a,002h		; 3e 02 ;2c2b
	ret c			; d8 ;2c2d
	ld a,b			; 78 ;2c2e
	bit 0,(ix + entity_t.id)		; dd cb 01 46 ;2c2f
	jr nz,+		; 20 04 ;2c33
	cp 018h		; fe 18 ;2c35
	jr ++		; 18 02 ;2c37
+:
	cp 01ch		; fe 1c ;2c39
++:
	ld a,001h		; 3e 01 ;2c3b
	ret c			; d8 ;2c3d
	xor a			; af ;2c3e
	ret			; c9 ;2c3f
