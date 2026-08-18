sub_3457h_clean_vram:
	push bc
	push de
	push hl
	push de
	pop bc
	ld de,gui_text_game_set_match
	di
	call sub_vram_fill_word
	ei
	pop hl
	ld de,040h
	add hl,de
	pop de
	pop bc
	djnz sub_3457h_clean_vram
	ret
