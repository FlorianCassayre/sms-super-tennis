sub_graphics_sprite_clean_unused:
	ld a,(state.current_sprite_index)
	ld hl,state.previous_sprite_index
	sub (hl)
	jr nc,l05bch
	neg
	ld b,a
	ld a,(state.current_sprite_index)
	ld e,a
	ld d,000h
	ld hl,0c100h
	add hl,de
l05b7h:
	ld (hl),0d0h
	inc hl
	djnz l05b7h
l05bch:
	ld a,(state.current_sprite_index)
	ld (state.previous_sprite_index),a
	xor a
	ld (state.current_sprite_index),a
	ld hl,state.sound_wait_flag
	set 7,(hl)
	ret
