sub_2d0eh_movement:
	ld c,a			; 4f ;2d0e
	ld a,(ix + entity_t.x_div_pos)		; dd 7e 2f ;2d0f
	and 007h		; e6 07 ;2d12
	or e			; b3 ;2d14
	ld e,a			; 5f ;2d15
	ld a,(ix + entity_t.render_facing_dir)		; dd 7e 20 ;2d16
	rla			; 17 ;2d19
	rla			; 17 ;2d1a
	rla			; 17 ;2d1b
	and 008h		; e6 08 ;2d1c
	or e			; b3 ;2d1e
	ld e,a			; 5f ;2d1f
	ld d,000h		; 16 00 ;2d20
	add hl,de			; 19 ;2d22
	ld a,(hl)			; 7e ;2d23
	and a			; a7 ;2d24
	ret z			; c8 ;2d25
	bit 7,a		; cb 7f ;2d26
	ld a,c			; 79 ;2d28
	jr z,+		; 28 02 ;2d29
	neg		; ed 44 ;2d2b
+:
	ld c,a			; 4f ;2d2d
	ld de,entities.ball.render_facing_dir		; 11 20 c3 ;2d2e
	ld a,(de)			; 1a ;2d31
	add a,c			; 81 ;2d32
	ld (de),a			; 12 ;2d33
	ret			; c9 ;2d34
