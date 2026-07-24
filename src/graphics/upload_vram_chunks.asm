sub_upload_vram_chunks:
	ld b,(hl)			; 46 ;03b7
	inc hl			; 23 ;03b8
-:
	push bc			; c5 ;03b9
	ld e,(hl)			; 5e ;03ba
	inc hl			; 23 ;03bb
	ld d,(hl)			; 56 ;03bc
	inc hl			; 23 ;03bd
	ld c,(hl)			; 4e ;03be
	inc hl			; 23 ;03bf
	ld b,(hl)			; 46 ;03c0
	inc hl			; 23 ;03c1
	ex de,hl			; eb ;03c2
	call sub_cp_ram_vram		; cd 2f 04 ;03c3
	ex de,hl			; eb ;03c6
	add hl,bc			; 09 ;03c7
	pop bc			; c1 ;03c8
	djnz -		; 10 ee ;03c9
	ret			; c9 ;03cb
