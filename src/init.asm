init:
	di
	ld sp,stack_bottom
	im 1
	; Clear RAM range 0xc000-0xc03f
	ld hl,state
	ld de,state + 1
	ld bc,03fh
	ld (hl),000h
	ldir
	; Sound card detection
	call sub_audio_silence
	ld a,$92
	out (0dfh),a
	ld a,$55
	out (0deh),a
	in a,(0deh)
	cp 055h
	ld c,000h
	jr z,+
	ld c,0ffh
+:
	ld a,$aa
	out (0deh),a
	in a,(0deh)
	cp 0aah
	ld a,000h
	jr z,+
	ld a,0ffh
+:
	or c
	ld (0c002h),a
	ld a,$07
	out (0deh),a
	ld b,00ah
	ld de,0ffffh
--:
	ld hl,039deh
-:
	add hl,de
	jr c,-
	djnz --
	call sub_hardware_self_test
	ld (state.hardware_type),a
@l00d6h:
	di
	ld sp,0dffeh
	xor a
	ld (0c003h),a
	ld (state.match_state_flags),a
	ld (0c004h),a
	ld hl,state.match_flags
	ld de,state.current_player
	ld bc,01fbfh
	ld (hl),000h
	ldir
	; VDP initialization
	in a,(I_VDP_STATUS)
	ld b,016h
	ld c,0bfh
	ld hl,hardware_vdp_initial_register_values
	otir
	ld hl,0
	ld de,graphics_palette_black_yellow
	ld b,1
	call sub_graphics_palette_load
	ld hl,00010h
	ld de,graphics_palette_black_yellow
	ld b,1
	call sub_graphics_palette_load
	ld de,02000h
	ld hl,gui_ascii_patterns
	call sub_rle_decompress_bitplanes_to_vram
	ld de,0
	ld hl,game_player_patterns
	call sub_rle_decompress_bitplanes_to_vram
	ld de,data.ball
	ld hl,game_ball_patterns
	call sub_rle_decompress_bitplanes_to_ram
	ld de,data.mark3_name
	ld hl,gui_mark3_names
	call sub_rle_decompress_bitplanes_to_ram
	ld de,data.mark3
	ld hl,gui_mark3_patterns
	call sub_rle_decompress_bitplanes_to_ram
	ld de,data.umpire_settings
	ld hl,game_umpire_names
	call sub_rle_decompress_bitplanes_to_ram
	ld de,data.projection
	ld hl,game_ball_projection
	call sub_rle_decompress_bitplanes_to_ram
	call sub_graphics_name_fill_blank_tile
	ld a,080h
	ld (psg_engine.track_request_id),a
	ld a,080h
	ld (state.main_game_state),a
	call sub_enable_display
	ei
	jp game_fsm
