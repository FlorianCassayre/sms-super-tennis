sub_init_splash_screen:
	ld hl,0c006h		;0eb0
	bit 6,(hl)		;0eb3
	jr nz,l0eefh		;0eb5
	set 6,(hl)		;0eb7
	ld a,(state.hardware_type)		;0eb9
	or a			;0ebc
	jr nz,l0ef3h_hardware_sms		;0ebd
	di			;0ebf
	call sub_disable_display		;0ec0
	call sub_graphics_name_fill_blank_tile		;0ec3
	ld hl,l2c00h		;0ec6
	ld de,0c76ch		;0ec9
	ld bc,224		;0ecc
	ld a,001h		;0ecf
	call sub_graphics_tile_expand_1bpp_ram_to_vdp		;0ed1
	ld hl,03a8eh		;0ed4
	ld de,0c720h		;0ed7
	ld bc,(2 << 8) | 19		;0eda
	call sub_load_vram_rect		;0edd
	xor a			;0ee0
	ld (0c011h),a		;0ee1
	call sub_enable_display		;0ee4
	ei			;0ee7
	ld hl,000f0h		;0ee8
	ld (game.pause_counter),hl		;0eeb
	ret			;0eee
l0eefh:
	call sub_decrement_pause_counter		;0eef
	ret nz			;0ef2
l0ef3h_hardware_sms:
	ld hl,0c006h		;0ef3
	ld (hl),081h		;0ef6
	ret			;0ef8
