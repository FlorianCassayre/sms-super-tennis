sub_vram_fill_byte:
	call sub_set_vdp_write_addr
	push bc
	push de
-:
	ld a,(de)
	out (IO_VDP_DATA),a
	dec bc
	ld a,c
	or b
	jr nz,-
	pop de
	pop bc
	ret
