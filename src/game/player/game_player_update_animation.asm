sub_game_player_update_animation:
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	ret z
	ld a,(ix + entity_t.animation_id)
	bit 7,a
	jr nz,+++
	set 7,(ix + entity_t.animation_id)
	ld e,a
	ld a,(ix + entity_t.id)
	ld c,a
	and 001h
	ld b,000h
	jr z,+
	ld b,018h
	jr ++
+:
	ld a,c
	and 002h
	jr z,++
	ld b,00ch
++:
	ld a,(ix + entity_t.render_facing_dir)
	and 001h
	jr z,+
	ld a,024h
+:
	add a,e
	add a,b
	add a,a
	ld e,a
	ld d,000h
	ld hl,data_animation_attributes
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	ex de,hl
	ld a,(hl)
	ld (ix + entity_t.animation_frame_counter),a
	inc hl
	ld e,(hl)
	ld a,(0c04ah)
	rra
	and 003h
	ld d,a
	ld a,e
	sub d
	ld (ix + entity_t.state_flags),a
	inc hl
	ld a,(hl)
	ld (ix + entity_t.time_before_serve),a
	inc hl
	ld a,(hl)
	ld (ix + entity_t.swing_duration),a
	inc hl
	ld a,(hl)
	ld (ix + entity_t.animation_frame),a
	inc hl
	ld (ix + entity_t.animation_pointer),l
	ld (ix + entity_t.animation_pointer + 1),h
	ld a,(hl)
	ld (ix + entity_t.sprite_id),a
	inc hl
	ld a,(hl)
	sub d
	jr z,+
	jr nc,++
+:
	ld a,001h
++:
	ld (ix + entity_t.animation_timer),a
	ret
+++:
	bit 7,(ix + entity_t.state_flags)
	jr z,+
	ld a,(ix + entity_t.time_before_serve)
	sub 001h
	jr c,++
	ld (ix + entity_t.time_before_serve),a
+:
	dec (ix + entity_t.state_flags)
++:
	dec (ix + entity_t.animation_timer)
	ret nz
	dec (ix + entity_t.animation_frame_counter)
	jr nz,+
	ld (ix + entity_t.animation_flags_or_frame),000h
	ret
+:
	ld l,(ix + entity_t.animation_pointer)
	ld h,(ix + entity_t.animation_pointer + 1)
	inc hl
	inc hl
	ld (ix + entity_t.animation_pointer),l
	ld (ix + entity_t.animation_pointer + 1),h
	ld a,(hl)
	ld (ix + entity_t.sprite_id),a
	inc hl
	ld a,(hl)
	ld e,a
	ld a,(0c04ah)
	rra
	and 003h
	ld d,a
	ld a,e
	sub d
	jr z,+
	jr nc,++
+:
	ld a,001h
++:
	ld (ix + entity_t.animation_timer),a
	ld a,(ix + entity_t.state_flags)
	sub d
	ld (ix + entity_t.state_flags),a
	ret
