sub_game_gui_end_prepare_vram:
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
	djnz sub_game_gui_end_prepare_vram
	ret
