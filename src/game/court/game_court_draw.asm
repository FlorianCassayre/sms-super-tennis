sub_game_court_draw:
	di			;0abd
	call sub_disable_display		;0abe
	ld hl,0		;0ac1
	ld de,game_court_palette		;0ac4
	ld b,32		;0ac7
	call sub_graphics_palette_load		;0ac9
	ld de,02600h		;0acc
	ld hl,data_planes_court		;0acf
	call sub_rle_decompress_bitplanes_to_vram		;0ad2
	ld de,VDP_NAME_TABLE_ADDRESS_BASE		;0ad5
	ld hl,data_planes_court_name		;0ad8
	call sub_rle_decompress_bitplanes_to_vram		;0adb
	ld de,0		;0ade
	ld hl,data_planes_player		;0ae1
	call sub_rle_decompress_bitplanes_to_vram		;0ae4
	ld hl,0c100h		;0ae7
	ld de,0c101h		;0aea
	ld bc,63		;0aed
	ld (hl),0d0h		;0af0
	ldir		;0af2
	call sub_game_player_palette_load_clothes		;0af4
	ld a,(0c04ah)		;0af7
	rrca			;0afa
	and 007h		;0afb
	ld (state.ball_hit_type),a		;0afd
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_game_start		;0b00
	ld (psg_engine.track_request_id),a		;0b02
	ld a,005h		;0b05
	ld hl,0c000h		;0b07
	bit 3,(hl)		;0b0a
	jr z,+		;0b0c
	or 080h		;0b0e
+:
	ld (state.main_game_state),a		;0b10
	call sub_enable_display		;0b13
	ei			;0b16
	ret			;0b17
