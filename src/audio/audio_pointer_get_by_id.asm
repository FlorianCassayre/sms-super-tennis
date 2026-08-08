sub_audio_pointer_get_by_id:
	dec a			; 3d ;7b1c
	ld c,a			; 4f ;7b1d
	ld b,000h		; 06 00 ;7b1e
	add hl,bc			; 09 ;7b20
	add hl,bc			; 09 ;7b21
	ld a,(hl)			; 7e ;7b22
	inc hl			; 23 ;7b23
	ld h,(hl)			; 66 ;7b24
	ld l,a			; 6f ;7b25
	ret			; c9 ;7b26
