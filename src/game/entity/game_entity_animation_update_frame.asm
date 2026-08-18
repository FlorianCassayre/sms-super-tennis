sub_game_entity_animation_update_frame:
	ld a,(ix + entity_t.sprite_id)
	add a,a
	ld e,a
	ld d,000h
	ld hl,game_entity_animation_frame_data
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld a,(de)
	ld (ix + entity_t.sprite_count),a
	inc de
	ld (ix + entity_t.sprite_data_ptr),e
	ld (ix + entity_t.sprite_data_ptr + 1),d
	ret
