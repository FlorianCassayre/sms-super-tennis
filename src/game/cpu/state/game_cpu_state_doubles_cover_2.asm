sub_game_cpu_state_doubles_cover_2:
	ld b,(ix + entity_t.x_div_pos)
	ld a,(iy + entity_t.input_dirs)
	and 00ch
	jr nz,@l219ah
	ld a,(iy + entity_t.x_div_pos)
	cp 004h
	ld b,008h
	jr c,@l21b2h
	ld b,004h
	jr @l21b2h
@l219ah:
	bit 3,a
	jr z,@l21a7h
	ld a,b
	cp 003h
	ld b,004h
	jr c,@l21b2h
	jr @l21aeh
@l21a7h:
	ld a,b
	cp 005h
	jr nc,@l21b2h
	ld b,008h
@l21aeh:
	ld (ix + entity_t.input_dirs),b
	ret
@l21b2h:
	xor a
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.cpu_state),game_cpu_state_t.track_ball
	ret
