l0f02h_palette:	; Not used?
	set 5,(hl)		;0f02
	ld hl,0		;0f04
	ld de,l002dh_palette		;0f07
	ld b,2		;0f0a
	call sub_graphics_palette_load		;0f0c
	ld hl,00010h		;0f0f
	ld de,l002dh_palette		;0f12
	ld b,1		;0f15
	jp sub_graphics_palette_load		;0f17
