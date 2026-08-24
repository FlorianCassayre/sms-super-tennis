sub_game_cpu_state_return_center:
	bit 0,(ix + entity_t.ball_incoming)
	jr nz,@l207eh
	ld a,(ix + entity_t.y_div_pos)
	bit 0,(ix + entity_t.id)
	jr z,@l2075h
	cp 002h
	jr c,@l207eh
	ld (ix + entity_t.input_dirs),001h
	ld (ix + entity_t.shot_button),000h
	ld (iy + entity_t.cpu_sub_state),005h
	ret
@l2075h:
	cp 0b0h
	jr nc,@l207eh
	ld (ix + entity_t.input_dirs),002h
	ret
@l207eh:
	xor a
	ld (ix + entity_t.input_dirs),a
	ld (ix + entity_t.cpu_state_timer),a
	ld (ix + entity_t.cpu_state),game_cpu_state_t.baseline_attack
	ld (iy + entity_t.cpu_sub_state),005h
	ret
