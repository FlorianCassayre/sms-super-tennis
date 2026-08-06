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
	ld hl,audio_track_data_pointers		; 21 cf 79 ;79bb
	add hl,bc			; 09 ;79be
	add hl,bc			; 09 ;79bf
	ld c,(hl)			; 4e ;79c0
	inc hl			; 23 ;79c1
	ld b,(hl)			; 46 ;79c2
	ld de,audio_track_routine_pointers - audio_track_data_pointers - 1		; 11 37 00 ;79c3
	add hl,de			; 19 ;79c6
	ld a,(hl)			; 7e ;79c7
	inc hl			; 23 ;79c8
	ld h,(hl)			; 66 ;79c9
	ld l,a			; 6f ;79ca
	ld a,(psg_engine.priority_flag)		; 3a 03 de ;79cb
	jp (hl)			; e9 ;79ce
audio_track_data_pointers:
	.DW l7149h		;79cf
	.DW l7291h		;79d1
	.DW l72ddh		;79d3
	.DW l732bh		;79d5
	.DW l7380h		;79d7
	.DW l73d1h		;79d9
	.DW l749eh		;79db
audio_track_splash_screen:
	.DW l7522h		;79dd
	.DW l78e6h		;79df
	.DW l758ch		;79e1
	.DW l75abh		;79e3
	.IFDEF _J
		.DW $7b23
	.ENDIF
	.IFDEF _UE
		.DW l758ch		;79e5
	.ENDIF
	.DW l75ech		;79e7
	.DW l7616h		;79e9
	.DW l7633h		;79eb
	.DW l7668h		;79ed
	.DW l7689h		;79ef
	.DW l76bch		;79f1
	.DW l76c9h		;79f3
	.DW l76d7h		;79f5
	.DW l76d7h		;79f7
	.DW l7700h		;79f9
	.DW l7767h		;79fb
	.DW l7816h		;79fd
	.DW l785dh		;79ff
audio_track_9a:
	.DW l78a9h		;7a01
	.DW l7ad7h		;7a03
	.DW 0200bh		;7a05
audio_track_routine_pointers:
	.DW l7a61h		;7a07
    .DW l7a61h		;7a09
    .DW l7a61h		;7a0b
    .DW l7a61h		;7a0d
    .DW l7a61h		;7a0f
    .DW l7a61h		;7a11
    .DW l7a61h		;7a13
	.DW l7a61h		;7a15
	.DW l7aa6h		;7a17
    .DW l7aa6h		;7a19
    .DW l7aa6h		;7a1b
	.IFDEF _J
    	.DW l7a8dh
	.ENDIF
	.IFDEF _UE
		.DW l7aa6h		;7a1d
	.ENDIF
	.DW l7a72h		;7a1f
	.DW l7aa6h		;7a21
	.IFDEF _J
    	.DW l7aa6h
	.ENDIF
	.IFDEF _UE
		.DW l7a8dh		;7a23
	.ENDIF
	.DW l7aa6h		;7a25
	.DW l7aa6h		;7a27
	.DW l7a9eh		;7a29
	.DW l7a9eh		;7a2b
	.DW l7aa6h		;7a2d
	.DW l7aa6h		;7a2f
	.DW l7a6eh		;7a31
	.DW l7a6eh		;7a33
	.DW l7a6eh		;7a35
	.DW l7a6eh		;7a37
	.DW l7a6eh		;7a39
	.DW l7a4fh		;7a3b
	.DW l7a3fh		;7a3d
