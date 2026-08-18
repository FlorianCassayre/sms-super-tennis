sub_graphics_palette_load_unused:	; Not used?
	set 5,(hl)
	ld hl,0
	ld de,graphics_palette_black_yellow
	ld b,2
	call sub_graphics_palette_load
	ld hl,00010h
	ld de,graphics_palette_black_yellow
	ld b,1
	jp sub_graphics_palette_load
