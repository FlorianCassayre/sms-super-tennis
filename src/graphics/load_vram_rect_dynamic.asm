sub_load_vram_rect_dynamic:
	ld hl,score.gui_update_flag
	ld a,(hl)
	or a
	ret z
	ld (hl),000h
	ld hl,(score.vram_dest)
	ld de,(score.vram_src)
	ld bc,(score.box_dimensions)
	jp sub_load_vram_rect
