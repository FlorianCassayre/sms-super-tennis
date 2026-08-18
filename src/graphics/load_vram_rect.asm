sub_load_vram_rect:
	push bc
	ld b,000h
	call sub_set_vdp_write_addr
-:
	ld a,(de)
	out (IO_VDP_DATA),a
	inc de

	; Waste some cycles
	ex (sp),hl
	ex (sp),hl

	ld a,(de)
	out (IO_VDP_DATA),a
	inc de
	dec bc
	ld a,c
	or b
	jr nz,-
	ld bc,040h
	add hl,bc
	pop bc
	djnz sub_load_vram_rect
	ret
