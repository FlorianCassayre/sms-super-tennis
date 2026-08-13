sub_0a85h_sprite_offset:
	push bc			;0a85
	push de			;0a86
	ld b,004h		;0a87
	ld de,l489bh_sprite_attributes		;0a89
-:
	push de			;0a8c
	exx			;0a8d
	pop de			;0a8e
	ld a,(de)			;0a8f
	add a,c			;0a90
	ld (hl),a			;0a91
	inc hl			;0a92
	inc de			;0a93
	push de			;0a94
	exx			;0a95
	pop de			;0a96
	ld a,(de)			;0a97
	add a,c			;0a98
	ld (hl),a			;0a99
	inc hl			;0a9a
	inc de			;0a9b
	ld a,(de)			;0a9c
	ld (hl),a			;0a9d
	inc hl			;0a9e
	inc de			;0a9f
	djnz -		;0aa0
	pop de			;0aa2
	pop bc			;0aa3
	ret			;0aa4
