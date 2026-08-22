sub_game_gui_splash_draw:
	ld hl,state.main_game_state
	bit 6,(hl)
	jp nz,@audio_track_finished
	di
	call sub_disable_display

	; Fill screen with blank tiles and hide sprites
	call sub_graphics_name_fill_blank_tile

	; Load primary palette (logo and font colors)
	ld hl,0
	ld de,game_gui_splash_palette_primary
	ld b,8
	call sub_graphics_palette_load

	; Load secondary palette (blue + red for the cursor)
	ld hl,00010h
	ld de,game_gui_splash_palette_secondary
	ld b,11
	call sub_graphics_palette_load

	; Load "Super" and "TENNIS" tiles (+ junk)
	ld de,02600h
	ld hl,gui_splash_patterns
	call sub_rle_decompress_bitplanes_to_vram

	; "Super" logo
	ld hl,VDP_NAME_TABLE_ADDRESS(10, 1)
	ld de,gui_splash_super_names
	ld b,5
	ld c,10
	call sub_load_vram_rect

	; "TENNIS" logo
	ld de,VDP_NAME_TABLE_ADDRESS(0, 7)
	ld hl,gui_splash_tennis_names
	call sub_rle_decompress_bitplanes_to_vram

	; "Push [...] button" texts
	ld hl,gui_text_splash
	call sub_upload_vram_chunks

	; "(c) SEGA 1986" trademark
	ld hl,VDP_NAME_TABLE_ADDRESS(11, 22)
	ld de,game_gui_splash_copyright
	ld bc,22
	call sub_cp_ram_vram

	xor a
	ld (psg_engine.maybe_end_track),a
	ld (state.unknown_flag),a
	ld hl,state.main_game_state
	set 6,(hl)
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_splash_screen
	ld (psg_engine.track_request_id),a
	call sub_enable_display
	ei
	ret
@audio_track_finished:
	ld a,(psg_engine.maybe_end_track)
	rlca
	ret nc
	ld a,GAME_FSM_BASE | game_fsm_state_t.init_tennis_court
	ld (state.main_game_state),a
	ret
