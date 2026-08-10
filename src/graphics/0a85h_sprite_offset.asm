sub_0a85h_sprite_offset:
	push bc			; c5 ;0a85
	push de			; d5 ;0a86
	ld b,004h		; 06 04 ;0a87
	ld de,l489bh_sprite_attributes		; 11 9b 48 ;0a89
-:
	push de			; d5 ;0a8c
	exx			; d9 ;0a8d
	pop de			; d1 ;0a8e
	ld a,(de)			; 1a ;0a8f
	add a,c			; 81 ;0a90
	ld (hl),a			; 77 ;0a91
	inc hl			; 23 ;0a92
	inc de			; 13 ;0a93
	push de			; d5 ;0a94
	exx			; d9 ;0a95
	pop de			; d1 ;0a96
	ld a,(de)			; 1a ;0a97
	add a,c			; 81 ;0a98
	ld (hl),a			; 77 ;0a99
	inc hl			; 23 ;0a9a
	inc de			; 13 ;0a9b
	ld a,(de)			; 1a ;0a9c
	ld (hl),a			; 77 ;0a9d
	inc hl			; 23 ;0a9e
	inc de			; 13 ;0a9f
	djnz -		; 10 ea ;0aa0
	pop de			; d1 ;0aa2
	pop bc			; c1 ;0aa3
	ret			; c9 ;0aa4
