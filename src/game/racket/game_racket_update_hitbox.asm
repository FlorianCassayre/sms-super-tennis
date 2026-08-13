sub_game_racket_update_hitbox:
	ld a,(ix + entity_t.ball_incoming)		;2bbf
	and a			;2bc2
	jr z,l2bf2h		;2bc3
	ld a,(ix + entity_t.y_pos + 1)		;2bc5
	cp 018h		;2bc8
	jr nc,+		;2bca
	ld a,018h		;2bcc
+:
	cp 0d7h		;2bce
	jr c,+		;2bd0
	ld a,0d7h		;2bd2
+:
	ld e,a			;2bd4
	call sub_game_ball_compute_horizontal_deflection		;2bd5
	ld e,(ix + entity_t.x_pos + 1)		;2bd8
	bit 0,(ix + entity_t.id)		;2bdb
	jr nz,+		;2bdf
	ld d,a			;2be1
	ld a,e			;2be2
	add a,004h		;2be3
	ld e,a			;2be5
	ld a,d			;2be6
+:
	sub e			;2be7
	ld a,001h		;2be8
	jr c,l2beeh		;2bea
l2bech:
	ld a,000h		;2bec
l2beeh:
	ld (ix + entity_t.facing_dir),a		;2bee
	ret			;2bf1
l2bf2h:
	ld a,(ix + entity_t.input_dirs)		;2bf2
	and a			;2bf5
	jr z,l2c04h		;2bf6
	and 00ch		;2bf8
	jr z,l2c04h		;2bfa
	and 004h		;2bfc
	ld a,001h		;2bfe
l2c00h:
	jr nz,l2beeh		;2c00
	jr l2bech		;2c02
l2c04h:
	ld a,(ix + entity_t.x_pos + 1)		;2c04
	cp 080h		;2c07
	ld a,000h		;2c09
	jr c,l2c0fh		;2c0b
	ld a,001h		;2c0d
l2c0fh:
	ld (ix + entity_t.facing_dir),a		;2c0f
	ret			;2c12
