sub_graphics_palette_load:
	ld a,l			; 7d ;0481
	out (O_VDP_CTRL),a		; d3 bf ;0482
	ld a,0c0h		; 3e c0 ;0484
l0486h:
	or h			; b4 ;0486
	out (O_VDP_CTRL),a		; d3 bf ;0487
-:
	ex (sp),hl			; e3 ;0489
	ex (sp),hl			; e3 ;048a
	ld a,(de)			; 1a ;048b
	out (IO_VDP_DATA),a		; d3 be ;048c
	inc de			; 13 ;048e
	djnz -		; 10 f8 ;048f
	ret			; c9 ;0491
