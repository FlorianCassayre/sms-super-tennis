sub_player_movement:
	xor a
	ex af,af'
	ld hl,BOUND_X_MIN_BOTTOM
	ld b,TYPE_HORIZ_ONLY_1
	ld c,TYPE_HORIZ_ONLY_2
	ld a,(ix + entity_t.state_index)
	and ENT_TYPE_MASK
	cp b
	jr z,+
	cp c
	jr nz,l2704h
+:
	ld hl,BOUND_X_MIN_BOTTOM_SERVE_LEFT
	ld a,(ix + entity_t.id)
	and 1
	jr nz,+
	ld a,(state.match_state_flag)
	and 1
	jr nz,++
	ld hl,BOUND_X_MIN_BOTTOM_SERVE_RIGHT
	jr ++
+:
	ld hl,BOUND_X_MIN_TOP_SERVE_LEFT
	ld a,(state.match_state_flag)
	and 1
	jr z,++
	ld hl,BOUND_X_MIN_TOP_SERVE_RIGHT
	jr ++
l2704h:
	ld a,(ix + entity_t.id)
	and 1
	jr z,++
	ld hl,BOUND_X_MIN_TOP
++:
	ld (ix + entity_t.cache_x_min),l
	ld (ix + entity_t.cache_x_min + 1),h
	ld d,(ix + entity_t.x_pos + 1)
	ld a,(ix + entity_t.x_pos)
	ld b,DIR_LEFT
	sub l
	jr nc,+
	ld a,d
	sub 1
	ld d,a
	jr c,l2785h
+:
	ld a,d
	sub h
	jr c,l2785h
	ld hl,BOUND_X_MAX_BOTTOM
	ld b,TYPE_HORIZ_ONLY_1
	ld c,TYPE_HORIZ_ONLY_2
	ld a,(ix + entity_t.state_index)
	and ENT_TYPE_MASK
	cp b
	jr z,+
	cp c
	jr nz,l2760h
+:
	ld hl,BOUND_X_MAX_BOTTOM_SERVE_RIGHT
	ld a,(ix + entity_t.id)
	and 1
	jr nz,+
	ld a,(state.match_state_flag)
	and 1
	jr z,++
	ld hl,BOUND_X_MAX_BOTTOM_SERVE_LEFT
	jr ++
+:
	ld hl,BOUND_X_MAX_TOP_SERVE_RIGHT
	ld a,(state.match_state_flag)
	and 1
	jr nz,++
	ld hl,BOUND_X_MAX_TOP_SERVE_LEFT
	jr ++
l2760h:
	ld a,(ix + entity_t.id)
	and 1
	jr z,++
	ld hl,BOUND_X_MAX_TOP
++:
	ld (ix + entity_t.cache_x_max),l
	ld (ix + entity_t.cache_x_max + 1),h
	ld d,(ix + entity_t.x_pos + 1)
	ld a,(ix + entity_t.x_pos)
	sub l
	; Bug ?! (should probably be `jr nz` instead of `jr c`)
	jr c,+
	ld a,d
	sub 1
	ld d,a
	jr c,++
+:
	ld a,d
	sub h
	jr c,++
	ld b,DIR_RIGHT
l2785h:
	ex af,af'
	or b
	ex af,af'
++:
	ld hl,BOUND_Y_MIN_BOTTOM
	ld b,TYPE_HORIZ_ONLY_1
	ld c,TYPE_HORIZ_ONLY_2
	ld a,(ix + entity_t.state_index)
	and ENT_TYPE_MASK
	cp b
	jr z,l27e0h
	cp c
	jr z,l27e0h
	ld a,(ix + entity_t.id)
	and 1
	jr z,+
	ld hl,BOUND_Y_MIN_TOP
+:
	ld d,(ix + entity_t.y_pos + 1)
	ld a,(ix + entity_t.y_pos)
	ld b,DIR_UP
	sub l
	jr nc,+
	ld a,d
	sub 1
	ld d,a
	jr c,l27dbh
+:
	ld a,d
	sub h
	jr c,l27dbh
	ld hl,BOUND_Y_MAX_BOTTOM
	ld a,(ix + entity_t.id)
	and 1
	jr z,+
	ld hl,BOUND_Y_MAX_TOP
+:
	ld d,(ix + entity_t.y_pos + 1)
	ld a,(ix + entity_t.y_pos)
	sub l
	jr nc,+
	ld a,d
	sub 1
	ld d,a
	jr c,l27e4h
+:
	ld a,d
	sub h
	jr c,l27e4h
	ld b,DIR_DOWN
l27dbh:
	ex af,af'
	or b
	ex af,af'
	jr l27e4h
l27e0h:
	ld b,DIR_UP | DIR_DOWN
	jr l27dbh
l27e4h:
	ld a,(ix + entity_t.tile_collision)
	and DIR_MASK
	ld b,a
	ex af,af'
	or b
	cpl
	ld b,(ix + entity_t.input_dirs)
	and b
	ld (ix + entity_t.allowed_dirs),a
	ret
