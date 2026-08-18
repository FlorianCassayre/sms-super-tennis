sub_cp_ram_vram:
	call sub_set_vdp_write_addr
	push de
	push bc
-:
	ld a,(de)
	out (IO_VDP_DATA),a
	inc de
	dec bc
	ld a,c
	or b
	jr nz,-
	pop bc
	pop de
	ret
