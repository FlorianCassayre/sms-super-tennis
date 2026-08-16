sub_game_entity_aabb_intersection_index:
	add a,a
	add a,a
	ld e,a
	ld d,0
	add hl,de
sub_game_entity_aabb_intersection:
	ld a,(ix + entity_t.y_pos + 1)		;17f1
	add a,(hl)			;17f4
	ld c,a			;17f5
	inc hl			;17f6
	add a,(hl)			;17f7
	ld b,a			;17f8
	inc hl			;17f9
	ld a,(ix + entity_t.x_pos + 1)		;17fa
	add a,(hl)			;17fd
	ld e,a			;17fe
	inc hl			;17ff
	add a,(hl)			;1800
	jr nc,l1804h		;1801
	ld a,e			;1803
l1804h:
	ld d,a			;1804
	ret		;1805
