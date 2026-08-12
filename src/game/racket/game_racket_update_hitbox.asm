sub_game_racket_update_hitbox:
	ld a,(ix + entity_t.ball_incoming)		; dd 7e 27 ;2bbf
	and a			; a7 ;2bc2
	jr z,l2bf2h		; 28 2d ;2bc3
	ld a,(ix + entity_t.y_pos + 1)		; dd 7e 0b ;2bc5
	cp 018h		; fe 18 ;2bc8
	jr nc,+		; 30 02 ;2bca
	ld a,018h		; 3e 18 ;2bcc
+:
	cp 0d7h		; fe d7 ;2bce
	jr c,+		; 38 02 ;2bd0
	ld a,0d7h		; 3e d7 ;2bd2
+:
	ld e,a			; 5f ;2bd4
	call sub_game_ball_compute_horizontal_deflection		; cd 0a 16 ;2bd5
	ld e,(ix + entity_t.x_pos + 1)		; dd 5e 0d ;2bd8
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;2bdb
	jr nz,+		; 20 06 ;2bdf
	ld d,a			; 57 ;2be1
	ld a,e			; 7b ;2be2
	add a,004h		; c6 04 ;2be3
	ld e,a			; 5f ;2be5
	ld a,d			; 7a ;2be6
+:
	sub e			; 93 ;2be7
	ld a,001h		; 3e 01 ;2be8
	jr c,l2beeh		; 38 02 ;2bea
l2bech:
	ld a,000h		; 3e 00 ;2bec
l2beeh:
	ld (ix + entity_t.facing_dir),a		; dd 77 16 ;2bee
	ret			; c9 ;2bf1
l2bf2h:
	ld a,(ix + entity_t.input_dirs)		; dd 7e 15 ;2bf2
	and a			; a7 ;2bf5
	jr z,l2c04h		; 28 0c ;2bf6
	and 00ch		; e6 0c ;2bf8
	jr z,l2c04h		; 28 08 ;2bfa
	and 004h		; e6 04 ;2bfc
	ld a,001h		; 3e 01 ;2bfe
l2c00h:
	jr nz,l2beeh		; 20 ec ;2c00
	jr l2bech		; 18 e8 ;2c02
l2c04h:
	ld a,(ix + entity_t.x_pos + 1)		; dd 7e 0d ;2c04
	cp 080h		; fe 80 ;2c07
	ld a,000h		; 3e 00 ;2c09
	jr c,l2c0fh		; 38 02 ;2c0b
	ld a,001h		; 3e 01 ;2c0d
l2c0fh:
	ld (ix + entity_t.facing_dir),a		; dd 77 16 ;2c0f
	ret			; c9 ;2c12
