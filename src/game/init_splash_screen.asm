sub_init_splash_screen:
	ld hl,0c006h		; 21 06 c0 ;0eb0
	bit 6,(hl)		; cb 76 ;0eb3
	jr nz,l0eefh		; 20 38 ;0eb5
	set 6,(hl)		; cb f6 ;0eb7
	ld a,(state.hardware_type)		; 3a 10 c0 ;0eb9
	or a			; b7 ;0ebc
	jr nz,l0ef3h_hardware_sms		; 20 34 ;0ebd
	di			; f3 ;0ebf
	call sub_disable_display		; cd a4 03 ;0ec0
	call sub_init_background_name_table		; cd 88 03 ;0ec3
	ld hl,l2c00h		; 21 00 2c ;0ec6
	ld de,0c76ch		; 11 6c c7 ;0ec9
	ld bc,224		; 01 e0 00 ;0ecc
	ld a,001h		; 3e 01 ;0ecf
	call sub_cp_1bit_ram_vram		; cd 92 04 ;0ed1
	ld hl,03a8eh		; 21 8e 3a ;0ed4
	ld de,0c720h		; 11 20 c7 ;0ed7
	ld bc,(2 << 8) | 19		; 01 13 02 ;0eda
	call sub_load_vram_rect		; cd 64 04 ;0edd
	xor a			; af ;0ee0
	ld (0c011h),a		; 32 11 c0 ;0ee1
	call sub_enable_display		; cd a0 03 ;0ee4
	ei			; fb ;0ee7
	ld hl,000f0h		; 21 f0 00 ;0ee8
	ld (game.pause_counter),hl		; 22 8a c0 ;0eeb
	ret			; c9 ;0eee
l0eefh:
	call sub_decrement_pause_counter		; cd ad 03 ;0eef
	ret nz			; c0 ;0ef2
