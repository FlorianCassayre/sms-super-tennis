sub_vram_fill_word:
	call sub_set_vdp_write_addr		; cd 26 04 ;0450
	ex (sp),hl			; e3 ;0453
	ex (sp),hl			; e3 ;0454
-:
	ld a,(de)			; 1a ;0455
	out (IO_VDP_DATA),a		; d3 be ;0456
	push de			; d5 ;0458
	inc de			; 13 ;0459
	ld a,(de)			; 1a ;045a
	out (IO_VDP_DATA),a		; d3 be ;045b
	pop de			; d1 ;045d
	dec bc			; 0b ;045e
	ld a,c			; 79 ;045f
	or b			; b0 ;0460
	jr nz,-		; 20 f2 ;0461
	ret			; c9 ;0463
