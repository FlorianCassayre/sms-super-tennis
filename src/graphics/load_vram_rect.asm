sub_load_vram_rect:
	push bc			;0464
	ld b,000h		;0465
	call sub_set_vdp_write_addr		;0467
-:
	ld a,(de)			;046a
	out (IO_VDP_DATA),a		;046b
	inc de			;046d

	; Waste some cycles
	ex (sp),hl			;046e
	ex (sp),hl			;046f

	ld a,(de)			;0470
	out (IO_VDP_DATA),a		;0471
	inc de			;0473
	dec bc			;0474
	ld a,c			;0475
	or b			;0476
	jr nz,-		;0477
	ld bc,040h		;0479
	add hl,bc			;047c
	pop bc			;047d
	djnz sub_load_vram_rect		;047e
	ret			;0480
