sub_game_gui_end_draw_line:
	ld hl,03b8ah
	ld de,034abh
	ld b,016h
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	call sub_wait_a_frames
	ret
