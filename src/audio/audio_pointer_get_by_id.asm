sub_audio_pointer_get_by_id:
	dec a			;7b1c
	ld c,a			;7b1d
	ld b,000h		;7b1e
	add hl,bc			;7b20
	add hl,bc			;7b21
	ld a,(hl)			;7b22
	inc hl			;7b23
	ld h,(hl)			;7b24
	ld l,a			;7b25
	ret			;7b26
