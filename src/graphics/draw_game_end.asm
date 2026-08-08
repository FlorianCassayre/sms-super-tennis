sub_draw_game_end:
	ld a,(0c499h)		; 3a 99 c4 ;33c4
	cp 002h		; fe 02 ;33c7
	jp z,@game_won		; ca d7 33 ;33c9
	ld a,(0c49ah)		; 3a 9a c4 ;33cc
	cp 002h		; fe 02 ;33cf
	jp z,@game_lost		; ca 0a 34 ;33d1
	jp @maybe_tie		; c3 52 34 ;33d4
@game_won:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_lost		; 3e 87 ;33d7
	ld (psg_engine.track_request_id),a		; 32 00 de ;33d9
	ld hl,03b48h		; 21 48 3b ;33dc
	ld b,008h		; 06 08 ;33df
	ld de,00018h		; 11 18 00 ;33e1
	call sub_3457h_clean_vram		; cd 57 34 ;33e4
	call sub_draw_game_end_line		; cd 6e 34 ;33e7
	ld hl,03c18h		; 21 18 3c ;33ea
	ld de,0351fh		; 11 1f 35 ;33ed
	ld b,008h		; 06 08 ;33f0
	call sub_draw_game_end_typewriter		; cd 7f 34 ;33f2
	ld a,005h		; 3e 05 ;33f5
	call sub_wait_a_frames		; cd e6 35 ;33f7
	ld hl,03cd6h		; 21 d6 3c ;33fa
	ld b,00ah		; 06 0a ;33fd
	call sub_draw_game_end_typewriter		; cd 7f 34 ;33ff
	ld a,005h		; 3e 05 ;3402
	ld (0c49dh),a		; 32 9d c4 ;3404
	jp @end		; c3 56 34 ;3407
@game_lost:
	ld a,(0c04ah)		; 3a 4a c0 ;340a
	cp 004h		; fe 04 ;340d
	jp z,sub_3607h		; ca 07 36 ;340f
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_match_won		; 3e 86 ;3412
	ld (psg_engine.track_request_id),a		; 32 00 de ;3414
	ld hl,03b48h		; 21 48 3b ;3417
	ld de,00018h		; 11 18 00 ;341a
	ld b,009h		; 06 09 ;341d
	call sub_3457h_clean_vram		; cd 57 34 ;341f
	call sub_draw_game_end_line		; cd 6e 34 ;3422
	ld hl,03c18h		; 21 18 3c ;3425
	ld de,034d7h		; 11 d7 34 ;3428
	ld b,007h		; 06 07 ;342b
	call sub_draw_game_end_typewriter		; cd 7f 34 ;342d
	ld a,005h		; 3e 05 ;3430
	call sub_wait_a_frames		; cd e6 35 ;3432
	ld hl,03ccch		; 21 cc 3c ;3435
	ld b,00eh		; 06 0e ;3438
	call sub_draw_game_end_typewriter		; cd 7f 34 ;343a
	ld a,005h		; 3e 05 ;343d
	call sub_wait_a_frames		; cd e6 35 ;343f
	ld hl,03d16h		; 21 16 3d ;3442
	ld b,00fh		; 06 0f ;3445
	call sub_draw_game_end_typewriter		; cd 7f 34 ;3447
	ld a,005h		; 3e 05 ;344a
	ld (0c49dh),a		; 32 9d c4 ;344c
	jp @end		; c3 56 34 ;344f
@maybe_tie:
	xor a			; af ;3452
	ld (0c49dh),a		; 32 9d c4 ;3453
@end:
	ret			; c9 ;3456
