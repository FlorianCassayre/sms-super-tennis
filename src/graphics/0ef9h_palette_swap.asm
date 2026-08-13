sub_0ef9h_palette_swap:
	ld hl,0c006h		;0ef9
	bit 6,(hl)		;0efc
	ret z			;0efe
	bit 5,(hl)		;0eff
	ret nz			;0f01
