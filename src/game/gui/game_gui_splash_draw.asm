sub_game_gui_splash_draw:
	ld hl,0c006h		;0821
	bit 6,(hl)
	jp nz,@audio_track_finished		;0826
	di			;0829
	call sub_disable_display		;082a

	; Fill screen with blank tiles and hide sprites
	call sub_graphics_name_fill_blank_tile		;082d

	; Load primary palette (logo and font colors)
	ld hl,0		;0830
	ld de,game_gui_splash_palette_primary		;0833
	ld b,8		;0836
	call sub_graphics_palette_load		;0838

	; Load secondary palette (blue + red for the cursor)
	ld hl,00010h		;083b
	ld de,game_gui_splash_palette_secondary		;083e
	ld b,11		;0841
	call sub_graphics_palette_load		;0843

	; Load "Super" and "TENNIS" tiles (+ junk)
	ld de,02600h		;0846
	ld hl,data_planes_splash		;0849
	call sub_rle_decompress_bitplanes_to_vram		;084c

	; "Super" logo
	ld hl,03854h		;084f
	ld de,data_tiles_1_super		;0852
	ld b,5		;0855
	ld c,10		;0857
	call sub_load_vram_rect		;0859

	; "TENNIS" logo
	ld de,039c0h		;085c
	ld hl,data_planes_tennis		;085f
	call sub_rle_decompress_bitplanes_to_vram		;0862

	; "Push [...] button" texts
	ld hl,gui_text_splash		;0865
	call sub_upload_vram_chunks		;0868

	; "(c) SEGA 1986" trademark
	ld hl,03d96h		;086b
	ld de,l40f0h_name_table		;086e
	ld bc,22		;0871
	call sub_cp_ram_vram		;0874

	xor a			;0877
	ld (psg_engine.maybe_end_track),a		;0878
	ld (0c011h),a		;087b
	ld hl,0c006h		;087e
	set 6,(hl)		;0881
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_splash_screen		;0883
	ld (psg_engine.track_request_id),a		;0885
	call sub_enable_display		;0888
	ei			;088b
	ret			;088c
@audio_track_finished:
	ld a,(psg_engine.maybe_end_track)		;088d
	rlca			;0890
	ret nc			;0891
	ld a,083h		;0892
	ld (0c006h),a		;0894
	ret			;0897
