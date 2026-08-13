l0f02h:	; Not used?
	set 5,(hl)		; cb ee ;0f02
	ld hl,0		; 21 00 00 ;0f04
	ld de,l002dh_palette		; 11 2d 00 ;0f07
	ld b,2		; 06 02 ;0f0a
	call sub_graphics_palette_load		; cd 81 04 ;0f0c
	ld hl,00010h		; 21 10 00 ;0f0f
	ld de,l002dh_palette		; 11 2d 00 ;0f12
	ld b,1		; 06 01 ;0f15
	jp sub_graphics_palette_load		; c3 81 04 ;0f17
