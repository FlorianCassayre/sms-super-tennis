l0821h:
	ld hl,0c006h		;0821
	bit 6,(hl)
sub_init_splash_screen:
	jp nz,l088dh		; c2 8d 08 ;0826
	di			; f3 ;0829
	call sub_disable_display		; cd a4 03 ;082a
	call sub_init_background_name_table		; cd 88 03 ;082d
	ld hl,0		; 21 00 00 ;0830
	ld de,l3b08h_palette		; 11 08 3b ;0833
	ld b,8		; 06 08 ;0836
	call sub_graphics_palette_load		; cd 81 04 ;0838
	ld hl,00010h		; 21 10 00 ;083b
	ld de,l3b10h_palette		; 11 10 3b ;083e
	ld b,11		; 06 0b ;0841
	call sub_graphics_palette_load		; cd 81 04 ;0843
	ld de,02600h		; 11 00 26 ;0846
	ld hl,data_planes_1_0		; 21 1b 3b ;0849
	call sub_rle_decompress_bitplanes_to_vram		; cd b5 04 ;084c
	ld hl,03854h		; 21 54 38 ;084f
	ld de,data_tiles_1_super		; 11 fa 3e ;0852
	ld b,5		; 06 05 ;0855
	ld c,10		; 0e 0a ;0857
	call sub_load_vram_rect		; cd 64 04 ;0859
	ld de,039c0h		; 11 c0 39 ;085c
	ld hl,data_planes_2_0		; 21 5e 3f ;085f
	call sub_rle_decompress_bitplanes_to_vram		; cd b5 04 ;0862
	ld hl,data_chunks_0		; 21 7f 40 ;0865
	call sub_upload_vram_chunks		; cd b7 03 ;0868
	ld hl,03d96h		; 21 96 3d ;086b
	ld de,l40f0h_name_table		; 11 f0 40 ;086e
	ld bc,22		; 01 16 00 ;0871
	call sub_cp_ram_vram		; cd 2f 04 ;0874
	xor a			; af ;0877
	ld (psg_engine._unknown),a		; 32 04 de ;0878
	ld (0c011h),a		; 32 11 c0 ;087b
	ld hl,0c006h		; 21 06 c0 ;087e
	set 6,(hl)		; cb f6 ;0881
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_splash_screen		; 3e 88 ;0883
	ld (psg_engine.track_request_id),a		; 32 00 de ;0885
	call sub_enable_display		; cd a0 03 ;0888
	ei			; fb ;088b
	ret			; c9 ;088c
l088dh:
	ld a,(psg_engine._unknown)		; 3a 04 de ;088d
	rlca			; 07 ;0890
	ret nc			; d0 ;0891
	ld a,083h		; 3e 83 ;0892
	ld (0c006h),a		; 32 06 c0 ;0894
	ret			; c9 ;0897
l0898h:
	ld hl,0c000h		; 21 00 c0 ;0898
	set 3,(hl)		; cb de ;089b
	set 7,(hl)		; cb fe ;089d
	ld a,003h		; 3e 03 ;089f
	ld (0c045h),a		; 32 45 c0 ;08a1
	jp sub_draw_tennis_court		; c3 bd 0a ;08a4
