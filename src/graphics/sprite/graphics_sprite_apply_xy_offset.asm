sub_graphics_sprite_apply_xy_offset:
	push bc
	push de
	ld b,004h
	ld de,l489bh_sprite_attributes
-:
	push de
	exx
	pop de
	ld a,(de)
	add a,c
	ld (hl),a
	inc hl
	inc de
	push de
	exx
	pop de
	ld a,(de)
	add a,c
	ld (hl),a
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	djnz -
	pop de
	pop bc
	ret
