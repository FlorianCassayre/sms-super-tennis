sub_audio_track_loader:
	ld a,(psg_engine.track_request_id)
	bit 7,a
	jp z,l7dc8h
	cp 0a2h
	jp nc,l7dc8h
	sub 081h
	ret m
	ld c,a
	ld b,000h
	ld hl,audio_track_data
	add hl,bc
	add hl,bc
	ld c,(hl)
	inc hl
	ld b,(hl)
	ld de,audio_track_routine - audio_track_data - 1
	add hl,de
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ld a,(psg_engine.priority_flag)
	jp (hl)
