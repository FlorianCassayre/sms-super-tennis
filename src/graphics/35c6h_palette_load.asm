sub_35c6h_palette_load:
	ld hl,l35dch		; 21 dc 35 ;35c6
	xor a			; af ;35c9
	ld a,(0c04ah)		; 3a 4a c0 ;35ca
	rla			; 17 ;35cd
	ld e,a			; 5f ;35ce
	ld d,000h		; 16 00 ;35cf
	add hl,de			; 19 ;35d1
	ex de,hl			; eb ;35d2
	ld hl,00013h+2		; 21 15 00 ;35d3
	ld b,002h		; 06 02 ;35d6
	call sub_graphics_palette_load		; cd 81 04 ;35d8
	ret			; c9 ;35db
