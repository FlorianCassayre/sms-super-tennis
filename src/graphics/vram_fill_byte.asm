sub_vram_fill_byte:
	call sub_set_vdp_write_addr		; cd 26 04 ;0440
	push bc			; c5 ;0443
	push de			; d5 ;0444
-:
	ld a,(de)			; 1a ;0445
	out (IO_VDP_DATA),a		; d3 be ;0446
	dec bc			; 0b ;0448
	ld a,c			; 79 ;0449
	or b			; b0 ;044a
	jr nz,-		; 20 f8 ;044b
	pop de			; d1 ;044d
	pop bc			; c1 ;044e
	ret			; c9 ;044f
