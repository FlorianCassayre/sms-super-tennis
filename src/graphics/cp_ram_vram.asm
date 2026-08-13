sub_cp_ram_vram:
	call sub_set_vdp_write_addr		;042f
	push de			;0432
	push bc			;0433
-:
	ld a,(de)			;0434
	out (IO_VDP_DATA),a		;0435
	inc de			;0437
	dec bc			;0438
	ld a,c			;0439
	or b			;043a
	jr nz,-		;043b
	pop bc			;043d
	pop de			;043e
	ret			;043f
