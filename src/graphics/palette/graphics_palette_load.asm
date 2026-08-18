sub_graphics_palette_load:
	ld a,l
	out (O_VDP_CTRL),a
	ld a,0c0h
	or h
	out (O_VDP_CTRL),a
-:
	ex (sp),hl
	ex (sp),hl
	ld a,(de)
	out (IO_VDP_DATA),a
	inc de
	djnz -
	ret
