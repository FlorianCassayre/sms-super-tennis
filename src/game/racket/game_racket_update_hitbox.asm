sub_game_racket_update_hitbox:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr z,l2bf2h
	ld a,(ix + entity_t.y_pos + 1)
	cp 018h
	jr nc,+
	ld a,018h
+:
	cp 0d7h
	jr c,+
	ld a,0d7h
+:
	ld e,a
	call sub_game_ball_compute_horizontal_deflection
	ld e,(ix + entity_t.x_pos + 1)
	bit 0,(ix + entity_t.id)
	jr nz,+
	ld d,a
	ld a,e
	add a,004h
	ld e,a
	ld a,d
+:
	sub e
	ld a,001h
	jr c,l2beeh
l2bech:
	ld a,000h
l2beeh:
	ld (ix + entity_t.facing_dir),a
	ret
l2bf2h:
	ld a,(ix + entity_t.input_dirs)
	and a
	jr z,l2c04h
	and 00ch
	jr z,l2c04h
	and 004h
	ld a,001h
l2c00h:
	jr nz,l2beeh
	jr l2bech
l2c04h:
	ld a,(ix + entity_t.x_pos + 1)
	cp 080h
	ld a,000h
	jr c,l2c0fh
	ld a,001h
l2c0fh:
	ld (ix + entity_t.facing_dir),a
	ret
