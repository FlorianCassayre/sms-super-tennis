sub_2d0eh_movement:
	ld c,a			;2d0e
	ld a,(ix + entity_t.x_div_pos)		;2d0f
	and 007h		;2d12
	or e			;2d14
	ld e,a			;2d15
	ld a,(ix + entity_t.render_facing_dir)		;2d16
	rla			;2d19
	rla			;2d1a
	rla			;2d1b
	and 008h		;2d1c
	or e			;2d1e
	ld e,a			;2d1f
	ld d,000h		;2d20
	add hl,de			;2d22
	ld a,(hl)			;2d23
	and a			;2d24
	ret z			;2d25
	bit 7,a		;2d26
	ld a,c			;2d28
	jr z,+		;2d29
	neg		;2d2b
+:
	ld c,a			;2d2d
	ld de,entities.ball.render_facing_dir		;2d2e
	ld a,(de)			;2d31
	add a,c			;2d32
	ld (de),a			;2d33
	ret			;2d34
