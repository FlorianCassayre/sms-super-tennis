sub_draw_game_end:
	ld a,(score.sets_won_top)
	cp 002h
	jp z,@game_lost
	ld a,(score.sets_won_bottom)
	cp 002h
	jp z,@game_won
	jp @maybe_tie
@game_lost:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_lost
	ld (psg_engine.track_request_id),a
	ld hl,03b48h
	ld b,008h
	ld de,00018h
	call sub_3457h_clean_vram
	call sub_draw_game_end_line
	ld hl,03c18h
	ld de,gui_text_lost
	ld b,008h
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	call sub_wait_a_frames
	ld hl,03cd6h
	ld b,00ah
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	ld (score.delay_timer),a
	jp @end
@game_won:
	ld a,(0c04ah)
	cp 004h
	jp z,sub_game_gui_win_special
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_won
	ld (psg_engine.track_request_id),a
	ld hl,03b48h
	ld de,00018h
	ld b,009h
	call sub_3457h_clean_vram
	call sub_draw_game_end_line
	ld hl,03c18h
	ld de,gui_text_win
	ld b,007h
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	call sub_wait_a_frames
	ld hl,03ccch
	ld b,00eh
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	call sub_wait_a_frames
	ld hl,03d16h
	ld b,00fh
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	ld (score.delay_timer),a
	jp @end
@maybe_tie:
	xor a
	ld (score.delay_timer),a
@end:
	ret
