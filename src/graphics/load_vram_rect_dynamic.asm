sub_load_vram_rect_dynamic:
	ld hl,score.gui_update_flag		;35b0
	ld a,(hl)			;35b3
	or a			;35b4
	ret z			;35b5
	ld (hl),000h		;35b6
	ld hl,(score.vram_dest)		;35b8
	ld de,(score.vram_src)		;35bb
	ld bc,(score.box_dimensions)
	jp sub_load_vram_rect		;35c3
