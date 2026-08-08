sub_3607h:
	ld a,0d0h		; 3e d0 ;3607
	ld (0c140h),a		; 32 40 c1 ;3609
	ld (0c100h),a		; 32 00 c1 ;360c
	ld a,(0c089h)		; 3a 89 c0 ;360f
	or 080h		; f6 80 ;3612
	ld (0c089h),a		; 32 89 c0 ;3614
	call sub_wait_for_audio_event		; cd 6a 03 ;3617
	ld hl,03e00h		; 21 00 3e ;361a
	ld (0c4a8h),hl		; 22 a8 c4 ;361d
	ld a,000h		; 3e 00 ;3620
	ld (0c4ach),a		; 32 ac c4 ;3622
	ld b,018h		; 06 18 ;3625
l3627h:
	push bc			; c5 ;3627
	ld hl,(0c4a8h)		; 2a a8 c4 ;3628
	ld de,l3706h		; 11 06 37 ;362b
	ld bc,32		; 01 20 00 ;362e
	di			; f3 ;3631
	call sub_vram_fill_word		; cd 50 04 ;3632
	ei			; fb ;3635
	ld b,008h		; 06 08 ;3636
-:
	push bc			; c5 ;3638
	ld a,(0c4ach)		; 3a ac c4 ;3639
	inc a			; 3c ;363c
	di			; f3 ;363d
	ld (0c4ach),a		; 32 ac c4 ;363e
	out (O_VDP_CTRL),a		; d3 bf ;3641
	ld a,089h		; 3e 89 ;3643
	out (O_VDP_CTRL),a		; d3 bf ;3645
	ei			; fb ;3647
	call sub_wait_for_audio_event		; cd 6a 03 ;3648
	pop bc			; c1 ;364b
	djnz -		; 10 ea ;364c
	ld hl,(0c4a8h)		; 2a a8 c4 ;364e
	ld de,l0040h		; 11 40 00 ;3651
	add hl,de			; 19 ;3654
	push hl			; e5 ;3655
	ld de,03f00h		; 11 00 3f ;3656
	xor a			; af ;3659
	sbc hl,de		; ed 52 ;365a
	jr c,+		; 38 05 ;365c
	pop hl			; e1 ;365e
	ld hl,03800h		; 21 00 38 ;365f
	push hl			; e5 ;3662
+:
	pop hl			; e1 ;3663
	ld (0c4a8h),hl		; 22 a8 c4 ;3664
	pop bc			; c1 ;3667
	djnz l3627h		; 10 bd ;3668
	xor a			; af ;366a
	ld (0c011h),a		; 32 11 c0 ;366b
	ld hl,00010h		; 21 10 00 ;366e
	ld de,l3719h_palette		; 11 19 37 ;3671
	ld b,1		; 06 01 ;3674
	call sub_load_cram		; cd 81 04 ;3676
	ld a,005h		; 3e 05 ;3679
	call sub_wait_a_frames		; cd e6 35 ;367b
	di			; f3 ;367e
	ld hl,0		; 21 00 00 ;367f
	ld de,l3708h_palette		; 11 08 37 ;3682
	ld b,17		; 06 11 ;3685
	call sub_load_cram		; cd 81 04 ;3687
	call sub_disable_display		; cd a4 03 ;368a
	call sub_init_background_name_table		; cd 88 03 ;368d
	ld a,000h		; 3e 00 ;3690
	out (O_VDP_CTRL),a		; d3 bf ;3692
	ld a,089h		; 3e 89 ;3694
	out (O_VDP_CTRL),a		; d3 bf ;3696
	ld hl,data_planes_0_0		; 21 e3 37 ;3698
	ld de,02600h		; 11 00 26 ;369b
	call sub_rle_decompress_bitplanes_to_vram		; cd b5 04 ;369e
	ld hl,03a5ah		; 21 5a 3a ;36a1
	ld de,data_tiles_2		; 11 83 37 ;36a4
	ld bc,(8 << 8) | 6		; 01 06 08 ;36a7
	call sub_load_vram_rect		; cd 64 04 ;36aa
	ld hl,data_chunks_1		; 21 1a 37 ;36ad
	call sub_upload_vram_chunks		; cd b7 03 ;36b0
	ei			; fb ;36b3
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_won		; 3e 86 ;36b4
	ld (psg_engine.track_request_id),a		; 32 00 de ;36b6
	call sub_enable_display		; cd a0 03 ;36b9
	ld a,040h		; 3e 40 ;36bc
	call sub_wait_a_frames		; cd e6 35 ;36be
	ld hl,03b60h		; 21 60 3b ;36c1
	ld de,l3777h_palette		; 11 77 37 ;36c4
	ld bc,4		; 01 04 00 ;36c7
	call sub_cp_ram_vram		; cd 2f 04 ;36ca
	ld a,005h		; 3e 05 ;36cd
	call sub_wait_a_frames		; cd e6 35 ;36cf
	ld hl,03b60h		; 21 60 3b ;36d2
	ld de,l377bh_palette		; 11 7b 37 ;36d5
	ld bc,4		; 01 04 00 ;36d8
	call sub_cp_ram_vram		; cd 2f 04 ;36db
	ld a,028h		; 3e 28 ;36de
	call sub_wait_a_frames		; cd e6 35 ;36e0
	ld hl,03b60h		; 21 60 3b ;36e3
	ld de,l3777h_palette		; 11 77 37 ;36e6
	ld bc,4		; 01 04 00 ;36e9
	call sub_cp_ram_vram		; cd 2f 04 ;36ec
	ld a,005h		; 3e 05 ;36ef
	call sub_wait_a_frames		; cd e6 35 ;36f1
	ld hl,03b60h		; 21 60 3b ;36f4
	ld de,l377fh_palette		; 11 7f 37 ;36f7
	ld bc,4		; 01 04 00 ;36fa
	call sub_cp_ram_vram		; cd 2f 04 ;36fd
	ld a,060h		; 3e 60 ;3700
	call sub_wait_a_frames		; cd e6 35 ;3702
	ret			; c9 ;3705
