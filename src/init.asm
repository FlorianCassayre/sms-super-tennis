init:
	di			;0085
	ld sp,stack_bottom		;0086
	im 1		;0089
	; Clear RAM range 0xc000-0xc03f
	ld hl,state		;008b
	ld de,state + 1		;008e
	ld bc,03fh		;0091
	ld (hl),000h		;0094
	ldir		;0096
	; Sound card detection
	call sub_audio_silence		;0098
	ld a,$92		;009b
	out (0dfh),a		;009d
	ld a,$55		;009f
	out (0deh),a		;00a1
	in a,(0deh)		;00a3
	cp 055h		;00a5
	ld c,000h		;00a7
	jr z,+		;00a9
	ld c,0ffh		;00ab
+:
	ld a,$aa		;00ad
	out (0deh),a		;00af
	in a,(0deh)		;00b1
	cp 0aah		;00b3
	ld a,000h		;00b5
	jr z,+		;00b7
	ld a,0ffh		;00b9
+:
	or c			;00bb
	ld (0c002h),a		;00bc
	ld a,$07		;00bf
	out (0deh),a		;00c1
	ld b,00ah		;00c3
	ld de,0ffffh		;00c5
--:
	ld hl,039deh		;00c8
-:
	add hl,de			;00cb
	jr c,-		;00cc
	djnz --		;00ce
	call sub_hardware_self_test		;00d0
	ld (state.hardware_type),a		;00d3
@l00d6h:
	di			;00d6
	ld sp,0dffeh		;00d7
	xor a			;00da
	ld (0c003h),a		;00db
	ld (0c000h),a		;00de
	ld (0c004h),a		;00e1
	ld hl,state.match_flags		;00e4
	ld de,state.current_player		;00e7
	ld bc,01fbfh		;00ea
	ld (hl),000h		;00ed
	ldir		;00ef
	; VDP initialization
	in a,(I_VDP_STATUS)		;00f1
	ld b,016h		;00f3
	ld c,0bfh		;00f5
	ld hl,hardware_vdp_initial_register_values		;00f7
	otir		;00fa
	ld hl,0		;00fc
	ld de,l002dh_palette		;00ff
	ld b,1		;0102
	call sub_graphics_palette_load		;0104
	ld hl,00010h		;0107
	ld de,l002dh_palette		;010a
	ld b,1		;010d
	call sub_graphics_palette_load		;010f
	ld de,02000h		;0112
	ld hl,data_planes_font		;0115
	call sub_rle_decompress_bitplanes_to_vram		;0118
	ld de,0		;011b
	ld hl,data_planes_player		;011e
	call sub_rle_decompress_bitplanes_to_vram		;0121
	ld de,0c600h		;0124
	ld hl,data_planes_ball		;0127
	call sub_rle_decompress_bitplanes_to_ram		;012a
	ld de,data.mark3_name		;012d
	ld hl,data_planes_mark3_name		;0130
	call sub_rle_decompress_bitplanes_to_ram		;0133
	ld de,data.mark3		;0136
	ld hl,data_planes_mark3		;0139
	call sub_rle_decompress_bitplanes_to_ram		;013c
	ld de,data.umpire_settings		;013f
	ld hl,data_planes_umpire_settings		;0142
	call sub_rle_decompress_bitplanes_to_ram		;0145
	ld de,data.projection		;0148
	ld hl,data_planes_projection		;014b
	call sub_rle_decompress_bitplanes_to_ram		;014e
	call sub_graphics_name_fill_blank_tile		;0151
	ld a,080h		;0154
	ld (psg_engine.track_request_id),a		;0156
	ld a,080h		;0159
	ld (state.main_game_state),a		;015b
	call sub_enable_display		;015e
	ei			;0161
	jp game_fsm		;0162
