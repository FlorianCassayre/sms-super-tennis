sub_game_gui_end_draw:
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
	ld hl,VDP_NAME_TABLE_ADDRESS(4, 13)
	ld b,008h
	ld de,00018h
	call sub_3457h_clean_vram
	call sub_game_gui_end_draw_line
	ld hl,VDP_NAME_TABLE_ADDRESS(12, 16)
	ld de,gui_text_lost
	ld b,008h
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	call sub_wait_a_frames
	ld hl,VDP_NAME_TABLE_ADDRESS(11, 19)
	ld b,00ah
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	ld (score.delay_timer),a
	jp @end
@game_won:
	ld a,(state.settings.computer_level)
	cp 004h
	jp z,sub_game_gui_win_special
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_won
	ld (psg_engine.track_request_id),a
	ld hl,VDP_NAME_TABLE_ADDRESS(4, 13)
	ld de,00018h
	ld b,009h
	call sub_3457h_clean_vram
	call sub_game_gui_end_draw_line
	ld hl,VDP_NAME_TABLE_ADDRESS(12, 16)
	ld de,gui_text_win
	ld b,007h
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	call sub_wait_a_frames
	ld hl,VDP_NAME_TABLE_ADDRESS(6, 19)
	ld b,00eh
	call sub_game_gui_draw_typewriter_match_end
	ld a,005h
	call sub_wait_a_frames
	ld hl,VDP_NAME_TABLE_ADDRESS(11, 20)
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
