sub_game_gui_draw_typewriter_match_end:
	di			;347f
	ld a,l			;3480
	out (O_VDP_CTRL),a		;3481
	ld a,h			;3483
	or 040h		;3484
	out (O_VDP_CTRL),a		;3486
	push bc			;3488
	ld b,5		;3489
	call sub_delay_loop		;348b
	pop bc			;348e
	ld a,(de)			;348f
	out (IO_VDP_DATA),a		;3490
	inc de			;3492
	ld a,(de)			;3493
	push bc			;3494
	ld b,5		;3495
	call sub_delay_loop		;3497
	pop bc			;349a
	out (IO_VDP_DATA),a		;349b
	inc de			;349d
	inc hl			;349e
	inc hl			;349f
	ld a,5		;34a0
	ei			;34a2
	call sub_wait_a_frames		;34a3
	djnz sub_game_gui_draw_typewriter_match_end		;34a6
	ret			;34a8
