sub_graphics_palette_load:
	ld a,l			;0481
	out (O_VDP_CTRL),a		;0482
	ld a,0c0h		;0484
	or h			;0486
	out (O_VDP_CTRL),a		;0487
-:
	ex (sp),hl			;0489
	ex (sp),hl			;048a
	ld a,(de)			;048b
	out (IO_VDP_DATA),a		;048c
	inc de			;048e
	djnz -		;048f
	ret			;0491
