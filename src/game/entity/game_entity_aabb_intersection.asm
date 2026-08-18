sub_game_entity_aabb_intersection_index:
	add a,a
	add a,a
	ld e,a
	ld d,0
	add hl,de
sub_game_entity_aabb_intersection:
	ld a,(ix + entity_t.y_pos + 1)
	add a,(hl)
	ld c,a
	inc hl
	add a,(hl)
	ld b,a
	inc hl
	ld a,(ix + entity_t.x_pos + 1)
	add a,(hl)
	ld e,a
	inc hl
	add a,(hl)
	jr nc,l1804h
	ld a,e
l1804h:
	ld d,a
	ret
