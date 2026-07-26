sub_load_vram_rect_dynamic:
	ld hl,0c4a7h		; 21 a7 c4 ;35b0
	ld a,(hl)			; 7e ;35b3
	or a			; b7 ;35b4
	ret z			; c8 ;35b5
	ld (hl),000h		; 36 00 ;35b6
	ld hl,(0c4a8h)		; 2a a8 c4 ;35b8
	ld de,(0c4aah)		; ed 5b aa c4 ;35bb
	ld bc,(0c4ach)
	jp sub_load_vram_rect		; c3 64 04 ;35c3
