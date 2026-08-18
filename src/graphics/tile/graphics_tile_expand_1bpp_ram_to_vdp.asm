sub_graphics_tile_expand_1bpp_ram_to_vdp:
	ld (0c088h),a
	call sub_set_vdp_write_addr
	ex de,hl
--:
	ld a,(hl)
	exx
	ld c,0beh
	ld b,004h
	ld h,a
	ld a,(0c088h)
-:
	rra
	ld d,h
	jr c,+
	ld d,000h
+:
	out (c),d
	djnz -
	exx
	inc hl
	dec bc
	ld a,b
	or c
	jr nz,--
	ret
