sub_check_player_location:
	ld a,(state.match_state_flags)
	rlca
	ret nc
	ld ix,entities.player.1.bottom
	ld iy,entities.player.2.bottom
	call @sub_check_player_pair_collision
	ld ix,entities.player.1.top
	ld iy,entities.player.2.top
@sub_check_player_pair_collision:
	ld e,000h
	ld a,(ix + entity_t.y_pos_cache)
	sub (iy + entity_t.y_pos_cache)
	jr nc,+
	neg
+:
	cp 004h
	jr nc,+
	ld hl,l17e7h_bounding_box
	call sub_game_entity_aabb_intersection
	ld (state.aabb_1.y_min),bc
	ld (state.aabb_1.x_min),de
	push ix
	push iy
	pop ix
	ld hl,l17e7h_bounding_box
	call sub_game_entity_aabb_intersection
	pop ix
	ld (state.aabb_2.y_min),bc
	ld (state.aabb_2.x_min),de
	call sub_aabb_intersection
+:
	ld d,000h
	ld hl,game_player_collision_pushback
	add hl,de
	add hl,de
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld (ix + entity_t.tile_collision),c
	ld (iy + entity_t.tile_collision),b
	ret

l17e7h_bounding_box:
	.DB $fc
	.DB $08
	.DB $f8
	.DB $10
