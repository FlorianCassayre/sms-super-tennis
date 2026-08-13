sub_vram_fill_word:
	call sub_set_vdp_write_addr		;0450
	ex (sp),hl			;0453
	ex (sp),hl			;0454
-:
	ld a,(de)			;0455
	out (IO_VDP_DATA),a		;0456
	push de			;0458
	inc de			;0459
	ld a,(de)			;045a
	out (IO_VDP_DATA),a		;045b
	pop de			;045d
	dec bc			;045e
	ld a,c			;045f
	or b			;0460
	jr nz,-		;0461
	ret			;0463
