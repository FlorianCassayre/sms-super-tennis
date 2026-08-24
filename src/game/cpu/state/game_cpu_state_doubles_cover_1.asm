sub_game_cpu_state_doubles_cover_1:
	bit 7,(ix + entity_t.cpu_state)
	jr nz,@l2132h
	set 7,(ix + entity_t.cpu_state)
	ld (ix + entity_t.shot_button),000h
	ret
@l2132h:
	ld a,(ix + entity_t.cpu_sub_state)
	cp 002h
	jr z,@l2146h
	cp 005h
	jr z,@l2146h
	cp 001h
	jr nz,@l214bh
	ld (ix + entity_t.cpu_state),game_cpu_state_t.baseline_attack
	ret
@l2146h:
	ld (ix + entity_t.cpu_state),game_cpu_state_t.wait
	ret
@l214bh:
	ld b,(ix + entity_t.x_div_pos)
	ld a,(iy + entity_t.input_dirs)
	and 00ch
	jr nz,@l2162h
	ld a,(iy + entity_t.x_div_pos)
	cp 004h
	ld b,008h
	jr c,@l217ah
	ld b,004h
	jr @l217ah
@l2162h:
	bit 3,a
	jr z,@l216fh
	ld a,b
	cp 003h
	ld b,004h
	jr c,@l217ah
	jr @l2176h
@l216fh:
	ld a,b
	cp 005h
	jr nc,@l217ah
	ld b,008h
@l2176h:
	ld (ix + entity_t.input_dirs),b
	ret
@l217ah:
	xor a
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.cpu_state),game_cpu_state_t.serve_wait
	ret
