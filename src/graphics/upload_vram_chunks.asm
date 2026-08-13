sub_upload_vram_chunks:
	ld b,(hl)			;03b7
	inc hl			;03b8
-:
	push bc			;03b9
	ld e,(hl)			;03ba
	inc hl			;03bb
	ld d,(hl)			;03bc
	inc hl			;03bd
	ld c,(hl)			;03be
	inc hl			;03bf
	ld b,(hl)			;03c0
	inc hl			;03c1
	ex de,hl			;03c2
	call sub_cp_ram_vram		;03c3
	ex de,hl			;03c6
	add hl,bc			;03c7
	pop bc			;03c8
	djnz -		;03c9
	ret			;03cb
