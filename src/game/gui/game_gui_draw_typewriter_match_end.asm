sub_game_gui_draw_typewriter_match_end:
	di
	ld a,l
	out (O_VDP_CTRL),a
	ld a,h
	or 040h
	out (O_VDP_CTRL),a
	push bc
	ld b,5
	call sub_delay_loop
	pop bc
	ld a,(de)
	out (IO_VDP_DATA),a
	inc de
	ld a,(de)
	push bc
	ld b,5
	call sub_delay_loop
	pop bc
	out (IO_VDP_DATA),a
	inc de
	inc hl
	inc hl
	ld a,5
	ei
	call sub_wait_a_frames
	djnz sub_game_gui_draw_typewriter_match_end
	ret
