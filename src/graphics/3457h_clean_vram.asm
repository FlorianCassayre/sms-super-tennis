sub_3457h_clean_vram:
	push bc			;3457
	push de			;3458
	push hl			;3459
	push de			;345a
	pop bc			;345b
	ld de,gui_text_game_set_match		;345c
	di			;345f
	call sub_vram_fill_word		;3460
	ei			;3463
	pop hl			;3464
	ld de,040h		;3465
	add hl,de			;3468
	pop de			;3469
	pop bc			;346a
	djnz sub_3457h_clean_vram		;346b
	ret			;346d
