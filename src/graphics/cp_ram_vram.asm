sub_cp_ram_vram:
	call sub_set_vdp_write_addr		; cd 26 04 ;042f
	push de			; d5 ;0432
	push bc			; c5 ;0433
-:
	ld a,(de)			; 1a ;0434
	out (0beh),a		; d3 be ;0435
	inc de			; 13 ;0437
	dec bc			; 0b ;0438
	ld a,c			; 79 ;0439
	or b			; b0 ;043a
	jr nz,-		; 20 f7 ;043b
	pop bc			; c1 ;043d
	pop de			; d1 ;043e
	ret			; c9 ;043f
