sub_graphics_palette_swap_flags:
	ld hl,0c006h		;0ef9
	bit 6,(hl)		;0efc
	ret z			;0efe
	bit 5,(hl)		;0eff
	ret nz			;0f01
