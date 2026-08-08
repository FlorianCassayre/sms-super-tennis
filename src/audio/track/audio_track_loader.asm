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
