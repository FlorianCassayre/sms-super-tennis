sub_audio_pointer_get_by_id:
	dec a
	ld c,a
	ld b,000h
	add hl,bc
	add hl,bc
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	ret
