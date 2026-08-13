sub_audio_track_loader:
	ld a,(psg_engine.track_request_id)		;79a8
	bit 7,a		;79ab
	jp z,l7dc8h		;79ad
	cp 0a2h		;79b0
	jp nc,l7dc8h		;79b2
	sub 081h		;79b5
	ret m			;79b7
	ld c,a			;79b8
	ld b,000h		;79b9
	ld hl,audio_track_data		;79bb
	add hl,bc			;79be
	add hl,bc			;79bf
	ld c,(hl)			;79c0
	inc hl			;79c1
	ld b,(hl)			;79c2
	ld de,audio_track_routine - audio_track_data - 1		;79c3
	add hl,de			;79c6
	ld a,(hl)			;79c7
	inc hl			;79c8
	ld h,(hl)			;79c9
	ld l,a			;79ca
	ld a,(psg_engine.priority_flag)		;79cb
	jp (hl)			;79ce
