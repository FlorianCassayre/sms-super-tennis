sub_2d0eh_movement:
	ld c,a
	ld a,(ix + entity_t.x_div_pos)
	and 007h
	or e
	ld e,a
	ld a,(ix + entity_t.render_facing_dir)
	rla
	rla
	rla
	and 008h
	or e
	ld e,a
	ld d,000h
	add hl,de
	ld a,(hl)
	and a
	ret z
	bit 7,a
	ld a,c
	jr z,+
	neg
+:
	ld c,a
	ld de,entities.ball.render_facing_dir
	ld a,(de)
	add a,c
	ld (de),a
	ret
