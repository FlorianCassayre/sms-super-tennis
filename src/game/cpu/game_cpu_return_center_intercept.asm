sub_game_cpu_return_center_intercept:
	ld a,(iy + entity_t.x_div_pos)
	cp 004h
	ld hl,0a000h
	jr c,l239ah
	ld hl,05000h
l239ah:
	bit 0,(ix + entity_t.id)
	ld de,04c00h
	jr nz,l23a6h
	ld de,08800h
l23a6h:
	call sub_game_cpu_calculate_intercept_direction_1
	ret
