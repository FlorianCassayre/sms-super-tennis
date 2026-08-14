sub_game_player_joypad_poll:
	ld a,(0c000h)		;26ab
	bit 3,a		;26ae
	ret nz			;26b0
	ld a,(ix + entity_t.id)		;26b1
	ld b,a			;26b4
	and 001h		;26b5
	ret nz			;26b7
	ld a,b			;26b8
	and 002h		;26b9
	jr nz,+		;26bb
	ld a,(0c1c0h)		;26bd
	jr ++		;26c0
+:
	ld a,(0c1c2h)		;26c2
++:
	and 00fh		;26c5
	ld (ix + entity_t.input_dirs),a		;26c7
	ret			;26ca
