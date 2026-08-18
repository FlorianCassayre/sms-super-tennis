sub_vram_fill_word:
	call sub_set_vdp_write_addr
	ex (sp),hl
	ex (sp),hl
-:
	ld a,(de)
	out (IO_VDP_DATA),a
	push de
	inc de
	ld a,(de)
	out (IO_VDP_DATA),a
	pop de
	dec bc
	ld a,c
	or b
	jr nz,-
	ret
