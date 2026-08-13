sub_vram_fill_byte:
	call sub_set_vdp_write_addr		;0440
	push bc			;0443
	push de			;0444
-:
	ld a,(de)			;0445
	out (IO_VDP_DATA),a		;0446
	dec bc			;0448
	ld a,c			;0449
	or b			;044a
	jr nz,-		;044b
	pop de			;044d
	pop bc			;044e
	ret			;044f
