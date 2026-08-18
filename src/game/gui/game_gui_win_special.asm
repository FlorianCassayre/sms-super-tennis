sub_game_gui_win_special:
	ld a,0d0h
	ld (0c140h),a
	ld (0c100h),a
	ld a,(state.sound_wait_flag)
	or 080h
	ld (state.sound_wait_flag),a
	call sub_audio_event_wait
	ld hl,03e00h
	ld (score.vram_dest),hl
	ld a,000h
	ld (score.box_dimensions),a
	ld b,018h
l3627h:
	push bc
	ld hl,(score.vram_dest)
	ld de,l3706h
	ld bc,32
	di
	call sub_vram_fill_word
	ei
	ld b,008h
-:
	push bc
	ld a,(score.box_dimensions)
	inc a
	di
	ld (score.box_dimensions),a
	out (O_VDP_CTRL),a
	ld a,089h
	out (O_VDP_CTRL),a
	ei
	call sub_audio_event_wait
	pop bc
	djnz -
	ld hl,(score.vram_dest)
	ld de,040h
	add hl,de
	push hl
	ld de,03f00h
	xor a
	sbc hl,de
	jr c,+
	pop hl
	ld hl,03800h
	push hl
+:
	pop hl
	ld (score.vram_dest),hl
	pop bc
	djnz l3627h
	xor a
	ld (state.unknown_flag),a
	ld hl,00010h
	ld de,l3719h_palette
	ld b,1
	call sub_graphics_palette_load
	ld a,005h
	call sub_wait_a_frames
	di
	ld hl,0
	ld de,l3708h_palette
	ld b,17
	call sub_graphics_palette_load
	call sub_disable_display
	call sub_graphics_name_fill_blank_tile
	ld a,000h
	out (O_VDP_CTRL),a
	ld a,089h
	out (O_VDP_CTRL),a
	ld hl,game_gui_girl_patterns
	ld de,02600h
	call sub_rle_decompress_bitplanes_to_vram
	ld hl,03a5ah
	ld de,game_gui_girl_names
	ld bc,(8 << 8) | 6
	call sub_load_vram_rect
	ld hl,gui_text_win_special
	call sub_upload_vram_chunks
	ei
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_won
	ld (psg_engine.track_request_id),a
	call sub_enable_display
	ld a,040h
	call sub_wait_a_frames
	ld hl,03b60h
	ld de,game_gui_win_special_tile_eye_1
	ld bc,4
	call sub_cp_ram_vram
	ld a,005h
	call sub_wait_a_frames
	ld hl,03b60h
	ld de,game_gui_win_special_tile_eye_2
	ld bc,4
	call sub_cp_ram_vram
	ld a,028h
	call sub_wait_a_frames
	ld hl,03b60h
	ld de,game_gui_win_special_tile_eye_1
	ld bc,4
	call sub_cp_ram_vram
	ld a,005h
	call sub_wait_a_frames
	ld hl,03b60h
	ld de,game_gui_win_special_tile_eye_3
	ld bc,4
	call sub_cp_ram_vram
	ld a,060h
	call sub_wait_a_frames
	ret

l3706h:
	.DW $0136
l3708h_palette:
	.DB $3a $00 $3f $2f $03 $2a $0b $16 $25 $00 $00 $00 $00 $00 $00 $00
	.DB $3a
l3719h_palette:
	.DB $06
