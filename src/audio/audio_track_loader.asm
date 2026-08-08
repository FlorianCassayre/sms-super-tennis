sub_audio_track_loader:
	ld a,(psg_engine.track_request_id)		; 3a 00 de ;79a8
	bit 7,a		; cb 7f ;79ab
	jp z,l7dc8h		; ca c8 7d ;79ad
	cp 0a2h		; fe a2 ;79b0
	jp nc,l7dc8h		; d2 c8 7d ;79b2
	sub 081h		; d6 81 ;79b5
	ret m			; f8 ;79b7
	ld c,a			; 4f ;79b8
	ld b,000h		; 06 00 ;79b9
	ld hl,audio_track_data		; 21 cf 79 ;79bb
	add hl,bc			; 09 ;79be
	add hl,bc			; 09 ;79bf
	ld c,(hl)			; 4e ;79c0
	inc hl			; 23 ;79c1
	ld b,(hl)			; 46 ;79c2
	ld de,audio_track_routine - audio_track_data - 1		; 11 37 00 ;79c3
	add hl,de			; 19 ;79c6
	ld a,(hl)			; 7e ;79c7
	inc hl			; 23 ;79c8
	ld h,(hl)			; 66 ;79c9
	ld l,a			; 6f ;79ca
	ld a,(psg_engine.priority_flag)		; 3a 03 de ;79cb
	jp (hl)			; e9 ;79ce

audio_track_data:
	.DW audio_track_data_theme_game_start		;79cf	; 81
	.DW audio_track_data_theme_game_won		;79d1	; 82
	.DW audio_track_data_theme_game_lost		;79d3	; 83
	.DW audio_track_data_theme_set_won		;79d5	; 84
	.DW audio_track_data_theme_set_lost		;79d7	; 85
	.DW audio_track_data_theme_match_won		;79d9	; 86
	.DW audio_track_data_theme_match_lost		;79db	; 87
	.DW audio_track_data_theme_splash_screen		;79dd	; 88
	.DW audio_track_data_sound_ball_wall		;79df	; 89
	.DW audio_track_data_sound_racket_hit		;79e1	; 8a
	.DW audio_track_data_sound_ball_high		;79e3	; 8b
	.IFDEF _J
		.DW audio_track_japan_7b23	; 8c
	.ENDIF
	.IFDEF _UE
		.DW audio_track_data_sound_racket_hit		;79e5	; 8c
	.ENDIF
	.DW l75ech		;79e7	; 8d
	.DW audio_track_data_sound_ball_net		;79e9	; 8e
	.DW audio_track_data_sound_ball_bounce		;79eb	; 8f
	.DW l7668h		;79ed	; 90
	.DW l7689h		;79ef	; 91
	.DW l76bch		;79f1	; 92
	.DW l76c9h		;79f3	; 93
	.DW l76d7h		;79f5	; 94
	.DW l76d7h		;79f7	; 95
	.DW audio_track_data_sound_ball_in		;79f9	; 96
	.DW audio_track_data_ball_out		;79fb	; 97
	.DW audio_track_data_sound_fault		;79fd	; 98
	.DW l785dh		;79ff	; 99
	.DW l78a9h		;7a01	; 9a
	.DW l7ad7h		;7a03	; 9b
	.DW 0200bh		;7a05	; 9c

audio_track_routine:
	.DW audio_track_routine_music		;7a07	; 81
    .DW audio_track_routine_music		;7a09	; 82
    .DW audio_track_routine_music		;7a0b	; 83
    .DW audio_track_routine_music		;7a0d	; 84
    .DW audio_track_routine_music		;7a0f	; 85
    .DW audio_track_routine_music		;7a11	; 86
    .DW audio_track_routine_music		;7a13	; 87
	.DW audio_track_routine_music		;7a15	; 88
	.DW audio_track_routine_sound		;7a17	; 89
    .DW audio_track_routine_sound		;7a19	; 8a
    .DW audio_track_routine_sound		;7a1b	; 8b
	.IFDEF _J
    	.DW audio_track_routine_sound_alt	; 8c
	.ENDIF
	.IFDEF _UE
		.DW audio_track_routine_sound		;7a1d	; 8c
	.ENDIF
	.DW l7a72h		;7a1f	; 8d
	.DW audio_track_routine_sound		;7a21	; 8e
	.IFDEF _J
    	.DW audio_track_routine_sound	; 8f
	.ENDIF
	.IFDEF _UE
		.DW audio_track_routine_sound_alt		;7a23	; 8f
	.ENDIF
	.DW audio_track_routine_sound		;7a25	; 90
	.DW audio_track_routine_sound		;7a27	; 91
	.DW l7a9eh		;7a29	; 92
	.DW l7a9eh		;7a2b	; 93
	.DW audio_track_routine_sound		;7a2d	; 94
	.DW audio_track_routine_sound		;7a2f	; 95
	.DW l7a6eh		;7a31	; 96
	.DW l7a6eh		;7a33	; 97
	.DW l7a6eh		;7a35	; 98
	.DW l7a6eh		;7a37	; 99
	.DW l7a6eh		;7a39	; 9a
	.DW l7a4fh		;7a3b	; 9b
	.DW l7a3fh		;7a3d	; 9c
