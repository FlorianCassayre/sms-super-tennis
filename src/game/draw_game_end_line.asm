sub_draw_game_end_line:
	ld hl,03b8ah		;346e
	ld de,034abh		;3471
	ld b,016h		;3474
	call sub_game_gui_draw_typewriter_match_end		;3476
	ld a,005h		;3479
	call sub_wait_a_frames		;347b
	ret			;347e
