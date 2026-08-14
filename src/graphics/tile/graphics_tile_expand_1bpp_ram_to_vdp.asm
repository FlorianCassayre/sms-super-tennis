sub_graphics_tile_expand_1bpp_ram_to_vdp:
	ld (0c088h),a		;0492
	call sub_set_vdp_write_addr		;0495
	ex de,hl			;0498
--:
	ld a,(hl)			;0499
	exx			;049a
	ld c,0beh		;049b
	ld b,004h		;049d
	ld h,a			;049f
	ld a,(0c088h)		;04a0
-:
	rra			;04a3
	ld d,h			;04a4
	jr c,+		;04a5
	ld d,000h		;04a7
+:
	out (c),d		;04a9
	djnz -		;04ab
	exx			;04ad
	inc hl			;04ae
	dec bc			;04af
	ld a,b			;04b0
	or c			;04b1
	jr nz,--		;04b2
	ret			;04b4
