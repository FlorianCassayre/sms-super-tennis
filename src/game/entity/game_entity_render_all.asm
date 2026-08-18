sub_game_entity_render_all:
	call sub_game_entity_y_ordering
	xor a
l051eh:
	ld e,a
	ld d,000h
	push af
	ld hl,state.z_order_array
	add hl,de
	ld a,(hl)
	add a,a
	ld e,a
	ld d,000h
	ld hl,l074fh_memory_table
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop ix
	ld a,(ix + entity_t.state_index)
	or a
	jr z,l053eh
	call sub_game_entity_render_one
l053eh:
	pop af
	inc a
	cp 006h
	jr nz,l051eh
	jp sub_graphics_sprite_clean_unused
