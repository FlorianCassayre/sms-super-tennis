sub_apply_player_movement:
	xor a
	ld (TEMP_VEL_SHIFT_MULT),a
	bit 0,(ix + entity_t.id)
	jr nz,l2819h
	ld hl,game_level_speed_base_table.asm
	ld a,(state.settings.speed_level)
	call sub_lookup_player_velocity
	ld hl,game_level_control_boost_table
	ld a,(state.settings.speed_level)
	ld (TEMP_VEL_SHIFT_MULT),a
	ld a,(state.settings.player_type)
	and a
	ret z
	dec a
	jr sub_lookup_player_velocity
l2819h:
	ld hl,game_level_cpu_velocity_table
	ld a,(state.settings.computer_level)
	and $07
sub_lookup_player_velocity:
	ld e,a
	ld a,e
	add a,a
	ld d,a
	add a,a
	add a,a
	add a,d
	add a,e
	add a,a
	add a,a
	ld e,a
	ld a,(ix + entity_t.allowed_dirs)
	and $0F
	cp $0B
	jr c,l2836h
	xor a
l2836h:
	add a,a
	add a,a
	ld d,$00
	add a,e
	ld e,a
	jr nc,l283fh
	inc d
l283fh:
	add hl,de
	push hl
	push ix
	pop hl
	ld de,entity_t.y_vel
	add hl,de
	ex de,hl
	pop hl
	ld bc,$0004
	ldir
	ld e,(ix + entity_t.x_pos)
	ld d,(ix + entity_t.x_pos + 1)
	ld l,(ix + entity_t.x_vel)
	ld h,(ix + entity_t.x_vel + 1)
	ld a,(TEMP_VEL_SHIFT_MULT)
l285eh:
	sub 1
	jp c,l2867h
	add hl,hl
	jp l285eh
l2867h:
	add hl,de
	ld (ix + entity_t.x_pos),l
	ld (ix + entity_t.x_pos + 1),h
	ld e,(ix + entity_t.cache_x_min)
	ld d,(ix + entity_t.cache_x_min + 1)
	ld c,l
	ld b,h
	xor a
	sbc hl,de
	jr c,l2888h
	ld e,(ix + entity_t.cache_x_max)
	ld d,(ix + entity_t.cache_x_max + 1)
	ld l,c
	ld h,b
	xor a
	sbc hl,de
	jr c,l288eh
l2888h:
	ld (ix + entity_t.x_pos),e
	ld (ix + entity_t.x_pos + 1),d
l288eh:
	ld e,(ix + entity_t.y_pos)
	ld d,(ix + entity_t.y_pos + 1)
	ld l,(ix + entity_t.y_vel)
	ld h,(ix + entity_t.y_vel + 1)
	ld a,(TEMP_VEL_SHIFT_MULT)
l289dh:
	sub 1
	jp c,l28a6h
	add hl,hl
	jp l289dh
l28a6h:
	add hl,de
	ld (ix + entity_t.y_pos),l
	ld (ix + entity_t.y_pos + 1),h
	ld (ix + entity_t.y_pos_cache),h
	ret
