sub_game_gui_win_special:
	ld a,0d0h		;3607
	ld (0c140h),a		;3609
	ld (0c100h),a		;360c
	ld a,(game.sound_wait_flag)		;360f
	or 080h		;3612
	ld (game.sound_wait_flag),a		;3614
	call sub_audio_event_wait		;3617
	ld hl,03e00h		;361a
	ld (score.vram_dest),hl		;361d
	ld a,000h		;3620
	ld (score.box_dimensions),a		;3622
	ld b,018h		;3625
l3627h:
	push bc			;3627
	ld hl,(score.vram_dest)		;3628
	ld de,l3706h		;362b
	ld bc,32		;362e
	di			;3631
	call sub_vram_fill_word		;3632
	ei			;3635
	ld b,008h		;3636
-:
	push bc			;3638
	ld a,(score.box_dimensions)		;3639
	inc a			;363c
	di			;363d
	ld (score.box_dimensions),a		;363e
	out (O_VDP_CTRL),a		;3641
	ld a,089h		;3643
	out (O_VDP_CTRL),a		;3645
	ei			;3647
	call sub_audio_event_wait		;3648
	pop bc			;364b
	djnz -		;364c
	ld hl,(score.vram_dest)		;364e
	ld de,040h		;3651
	add hl,de			;3654
	push hl			;3655
	ld de,03f00h		;3656
	xor a			;3659
	sbc hl,de		;365a
	jr c,+		;365c
	pop hl			;365e
	ld hl,03800h		;365f
	push hl			;3662
+:
	pop hl			;3663
	ld (score.vram_dest),hl		;3664
	pop bc			;3667
	djnz l3627h		;3668
	xor a			;366a
	ld (0c011h),a		;366b
	ld hl,00010h		;366e
	ld de,l3719h_palette		;3671
	ld b,1		;3674
	call sub_graphics_palette_load		;3676
	ld a,005h		;3679
	call sub_wait_a_frames		;367b
	di			;367e
	ld hl,0		;367f
	ld de,l3708h_palette		;3682
	ld b,17		;3685
	call sub_graphics_palette_load		;3687
	call sub_disable_display		;368a
	call sub_graphics_name_fill_blank_tile		;368d
	ld a,000h		;3690
	out (O_VDP_CTRL),a		;3692
	ld a,089h		;3694
	out (O_VDP_CTRL),a		;3696
	ld hl,data_planes_girl		;3698
	ld de,02600h		;369b
	call sub_rle_decompress_bitplanes_to_vram		;369e
	ld hl,03a5ah		;36a1
	ld de,data_tiles_2		;36a4
	ld bc,(8 << 8) | 6		;36a7
	call sub_load_vram_rect		;36aa
	ld hl,gui_text_win_special		;36ad
	call sub_upload_vram_chunks		;36b0
	ei			;36b3
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_won		;36b4
	ld (psg_engine.track_request_id),a		;36b6
	call sub_enable_display		;36b9
	ld a,040h		;36bc
	call sub_wait_a_frames		;36be
	ld hl,03b60h		;36c1
	ld de,game_gui_win_special_tile_eye_1		;36c4
	ld bc,4		;36c7
	call sub_cp_ram_vram		;36ca
	ld a,005h		;36cd
	call sub_wait_a_frames		;36cf
	ld hl,03b60h		;36d2
	ld de,game_gui_win_special_tile_eye_2		;36d5
	ld bc,4		;36d8
	call sub_cp_ram_vram		;36db
	ld a,028h		;36de
	call sub_wait_a_frames		;36e0
	ld hl,03b60h		;36e3
	ld de,game_gui_win_special_tile_eye_1		;36e6
	ld bc,4		;36e9
	call sub_cp_ram_vram		;36ec
	ld a,005h		;36ef
	call sub_wait_a_frames		;36f1
	ld hl,03b60h		;36f4
	ld de,game_gui_win_special_tile_eye_3		;36f7
	ld bc,4		;36fa
	call sub_cp_ram_vram		;36fd
	ld a,060h		;3700
	call sub_wait_a_frames		;3702
	ret			;3705

l3706h:
	.DW $0136		;3706
l3708h_palette:
	.DB $3a $00 $3f $2f $03 $2a $0b $16 $25 $00 $00 $00 $00 $00 $00 $00		;3708
	.DB $3a		;3718
l3719h_palette:
	.DB $06		;3719
