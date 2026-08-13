sub_load_vram_rect_dynamic:
	ld hl,0c4a7h		;35b0
	ld a,(hl)			;35b3
	or a			;35b4
	ret z			;35b5
	ld (hl),000h		;35b6
	ld hl,(0c4a8h)		;35b8
	ld de,(0c4aah)		;35bb
	ld bc,(0c4ach)
	jp sub_load_vram_rect		;35c3
