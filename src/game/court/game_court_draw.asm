sub_game_court_draw:
	di
	call sub_disable_display
	ld hl,0
	ld de,game_court_palette
	ld b,32
	call sub_graphics_palette_load
	ld de,02600h
	ld hl,game_court_patterns
	call sub_rle_decompress_bitplanes_to_vram
	ld de,VDP_NAME_TABLE_ADDRESS_BASE
	ld hl,game_court_names
	call sub_rle_decompress_bitplanes_to_vram
	ld de,0
	ld hl,game_player_patterns
	call sub_rle_decompress_bitplanes_to_vram
	ld hl,0c100h
	ld de,0c101h
	ld bc,63
	ld (hl),0d0h
	ldir
	call sub_game_player_palette_load_clothes
	ld a,(0c04ah)
	rrca
	and 007h
	ld (state.ball_hit_type),a
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_game_start
	ld (psg_engine.track_request_id),a
	ld a,game_fsm_state_t.prepare_serve
	ld hl,state.match_state_flags
	bit 3,(hl)
	jr z,+
	or GAME_FSM_BASE
+:
	ld (state.main_game_state),a
	call sub_enable_display
	ei
	ret
