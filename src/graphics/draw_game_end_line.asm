sub_draw_game_end_line:
	ld hl,03b8ah		; 21 8a 3b ;346e
	ld de,034abh		; 11 ab 34 ;3471
	ld b,016h		; 06 16 ;3474
	call sub_draw_game_end_typewriter		; cd 7f 34 ;3476
	ld a,005h		; 3e 05 ;3479
	call sub_wait_a_frames		; cd e6 35 ;347b
	ret			; c9 ;347e
