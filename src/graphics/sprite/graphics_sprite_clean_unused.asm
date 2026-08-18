sub_graphics_sprite_clean_unused:
	ld a,(state.current_sprite_index)		;05a1
	ld hl,state.previous_sprite_index		;05a4
	sub (hl)			;05a7
	jr nc,l05bch		;05a8
	neg		;05aa
	ld b,a			;05ac
	ld a,(state.current_sprite_index)		;05ad
	ld e,a			;05b0
	ld d,000h		;05b1
	ld hl,0c100h		;05b3
	add hl,de			;05b6
l05b7h:
	ld (hl),0d0h		;05b7
	inc hl			;05b9
	djnz l05b7h		;05ba
l05bch:
	ld a,(state.current_sprite_index)		;05bc
	ld (state.previous_sprite_index),a		;05bf
	xor a			;05c2
	ld (state.current_sprite_index),a		;05c3
	ld hl,state.sound_wait_flag		;05c6
	set 7,(hl)		;05c9
	ret			;05cb
