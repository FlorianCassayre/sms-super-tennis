sub_game_entity_render_one:
	ld a,(state.current_sprite_index)
	ld e,a
	ld d,000h
	add a,(ix + entity_t.sprite_count)
	cp 040h
	ret nc
	ld hl,state.sat_y_buffer
	add hl,de
	push hl
	ld hl,state.sat_xc_buffer
	add hl,de
	add hl,de
	exx
	pop hl
	ld e,(ix + entity_t.sprite_data_ptr)
	ld d,(ix + entity_t.sprite_data_ptr + 1)
	ld b,(ix + entity_t.sprite_count)
l0568h:
	ld a,(de)
	add a,(ix + entity_t.y_pos + 1)
	cp 0d0h
	jr nz,+
	ld a,0d8h
+:
	ld (hl),a
	inc de
	ld a,(de)
	ex af,af'
	inc de
	ld a,(de)
	inc de
	exx
	ex af,af'
	ld c,(ix + entity_t.x_pos + 1)
	bit 7,a
	jr z,+
	add a,c
	ld (hl),a
	jr c,+++
	jr ++
+:
	add a,c
	ld (hl),a
	jr nc,+++
++:
	exx
	ld (hl),0d8h
	exx
+++:
	inc hl
	ex af,af'
	ld (hl),a
	inc hl
	exx
	inc hl
	djnz l0568h
	ld a,(ix + entity_t.sprite_count)
	ld hl,state.current_sprite_index
	add a,(hl)
	ld (hl),a
	ret
