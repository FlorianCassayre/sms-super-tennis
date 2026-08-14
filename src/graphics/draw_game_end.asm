sub_draw_game_end:
	ld a,(0c499h)		;33c4
	cp 002h		;33c7
	jp z,@game_lost		;33c9
	ld a,(0c49ah)		;33cc
	cp 002h		;33cf
	jp z,@game_won		;33d1
	jp @maybe_tie		;33d4
@game_lost:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_lost		;33d7
	ld (psg_engine.track_request_id),a		;33d9
	ld hl,03b48h		;33dc
	ld b,008h		;33df
	ld de,00018h		;33e1
	call sub_3457h_clean_vram		;33e4
	call sub_draw_game_end_line		;33e7
	ld hl,03c18h		;33ea
	ld de,gui_text_lost		;33ed
	ld b,008h		;33f0
	call sub_game_gui_draw_typewriter_match_end		;33f2
	ld a,005h		;33f5
	call sub_wait_a_frames		;33f7
	ld hl,03cd6h		;33fa
	ld b,00ah		;33fd
	call sub_game_gui_draw_typewriter_match_end		;33ff
	ld a,005h		;3402
	ld (0c49dh),a		;3404
	jp @end		;3407
@game_won:
	ld a,(0c04ah)		;340a
	cp 004h		;340d
	jp z,sub_game_gui_win_special		;340f
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_won		;3412
	ld (psg_engine.track_request_id),a		;3414
	ld hl,03b48h		;3417
	ld de,00018h		;341a
	ld b,009h		;341d
	call sub_3457h_clean_vram		;341f
	call sub_draw_game_end_line		;3422
	ld hl,03c18h		;3425
	ld de,gui_text_win		;3428
	ld b,007h		;342b
	call sub_game_gui_draw_typewriter_match_end		;342d
	ld a,005h		;3430
	call sub_wait_a_frames		;3432
	ld hl,03ccch		;3435
	ld b,00eh		;3438
	call sub_game_gui_draw_typewriter_match_end		;343a
	ld a,005h		;343d
	call sub_wait_a_frames		;343f
	ld hl,03d16h		;3442
	ld b,00fh		;3445
	call sub_game_gui_draw_typewriter_match_end		;3447
	ld a,005h		;344a
	ld (0c49dh),a		;344c
	jp @end		;344f
@maybe_tie:
	xor a			;3452
	ld (0c49dh),a		;3453
@end:
	ret			;3456
