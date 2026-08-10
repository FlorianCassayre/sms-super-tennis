sub_init_background_name_table:
	ld hl,03800h		; 21 00 38 ;0388
	ld de,l0385h		; 11 85 03 ;038b
	ld bc,00380h		; 01 80 03 ;038e
	call sub_vram_fill_word		; cd 50 04 ;0391
	ld hl,03f00h		; 21 00 3f ;0394
	ld de,00386h+1		; 11 87 03 ;0397
	ld bc,040h		; 01 40 00 ;039a
	jp sub_vram_fill_byte		; c3 40 04 ;039d
