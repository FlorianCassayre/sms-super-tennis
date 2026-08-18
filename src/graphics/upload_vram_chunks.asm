sub_upload_vram_chunks:
	ld b,(hl)
	inc hl
-:
	push bc
	ld e,(hl)
	inc hl
	ld d,(hl)
	inc hl
	ld c,(hl)
	inc hl
	ld b,(hl)
	inc hl
	ex de,hl
	call sub_cp_ram_vram
	ex de,hl
	add hl,bc
	pop bc
	djnz -
	ret
