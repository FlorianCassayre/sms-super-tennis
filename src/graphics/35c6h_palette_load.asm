sub_35c6h_palette_load:
	ld hl,l35dch		;35c6
	xor a			;35c9
	ld a,(0c04ah)		;35ca
	rla			;35cd
	ld e,a			;35ce
	ld d,000h		;35cf
	add hl,de			;35d1
	ex de,hl			;35d2
	ld hl,00015h		;35d3
	ld b,002h		;35d6
	call sub_graphics_palette_load		;35d8
	ret			;35db

l35dch:
	.DB $2b $38		;35dc
	.DB $0f $30		;35de
	.DB $03 $3d		;35e0
	.DB $20 $0f		;35e2
	.DB $10 $02		;35e4
