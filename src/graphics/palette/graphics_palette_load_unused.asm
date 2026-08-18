sub_graphics_palette_load_unused:	; Not used?
	set 5,(hl)		;0f02
	ld hl,0		;0f04
	ld de,graphics_palette_black_yellow		;0f07
	ld b,2		;0f0a
	call sub_graphics_palette_load		;0f0c
	ld hl,00010h		;0f0f
	ld de,graphics_palette_black_yellow		;0f12
	ld b,1		;0f15
	jp sub_graphics_palette_load		;0f17
