sub_draw_settings_menu:
	ld hl,0c006h		; 21 06 c0 ;08c0
	bit 6,(hl)		; cb 76 ;08c3
	jp nz,+		; c2 6e 09 ;08c5
	set 6,(hl)		; cb f6 ;08c8
	di			; f3 ;08ca
	call sub_disable_display		; cd a4 03 ;08cb
	call sub_init_background_name_table		; cd 88 03 ;08ce
	ld de,0		; 11 00 00 ;08d1
	ld hl,data_planes_10_0		; 21 e3 5d ;08d4
	call sub_rle_decompress_bitplanes_to_vram		; cd b5 04 ;08d7
	ld hl,game_settings		; 21 47 c0 ;08da
	ld b,_sizeof_game_settings_t		; 06 04 ;08dd
	xor a			; af ;08df
-:
	ld (hl),a			; 77 ;08e0
	inc hl			; 23 ;08e1
	djnz -		; 10 fc ;08e2
	ld (gui.cursor_y),a		; 32 91 c4 ;08e4
	ld (gui.tick_counter),a		; 32 96 c4 ;08e7
	call sub_get_joy_p1		; cd 0f 03 ;08ea
	ld (gui.joystick),a		; 32 93 c4 ;08ed
	ld (gui.joystick_previous),a		; 32 94 c4 ;08f0
	ld hl,03886h		; 21 86 38 ;08f3
	ld de,0cb04h		; 11 04 cb ;08f6
	ld bc,38		; 01 26 00 ;08f9
	call sub_cp_ram_vram		; cd 2f 04 ;08fc
	ld hl,0394ah		; 21 4a 39 ;08ff
	ld de,0cb2ah		; 11 2a cb ;0902
	ld bc,32		; 01 20 00 ;0905
	call sub_cp_ram_vram		; cd 2f 04 ;0908
	ld hl,039e2h		; 21 e2 39 ;090b
	ld de,0cb4ah		; 11 4a cb ;090e
	ld bc,22		; 01 16 00 ;0911
	call sub_cp_ram_vram		; cd 2f 04 ;0914
	ld hl,03a4ah		; 21 4a 3a ;0917
	ld de,0cb60h		; 11 60 cb ;091a
	ld bc,32		; 01 20 00 ;091d
	call sub_cp_ram_vram		; cd 2f 04 ;0920
	ld hl,03ae2h		; 21 e2 3a ;0923
	ld de,0cb4ah		; 11 4a cb ;0926
	ld bc,22		; 01 16 00 ;0929
	call sub_cp_ram_vram		; cd 2f 04 ;092c
	ld hl,03b4ah		; 21 4a 3b ;092f
	ld de,0cb80h		; 11 80 cb ;0932
	ld bc,28		; 01 1c 00 ;0935
	call sub_cp_ram_vram		; cd 2f 04 ;0938
	ld hl,03be2h		; 21 e2 3b ;093b
	ld de,0cb4ah		; 11 4a cb ;093e
	ld bc,22		; 01 16 00 ;0941
	call sub_cp_ram_vram		; cd 2f 04 ;0944
	ld hl,03c86h		; 21 86 3c ;0947
	ld de,0cb9ch		; 11 9c cb ;094a
	ld bc,42		; 01 2a 00 ;094d
	call sub_cp_ram_vram		; cd 2f 04 ;0950
	ld hl,03d10h		; 21 10 3d ;0953
	ld de,0cbc6h		; 11 c6 cb ;0956
	ld bc,34		; 01 22 00 ;0959
	call sub_cp_ram_vram		; cd 2f 04 ;095c
	call sub_enable_display		; cd a0 03 ;095f
	xor a			; af ;0962
	ld (score.set_current_index),a		; 32 8a c4 ;0963
	ld (0c499h),a		; 32 99 c4 ;0966
	ld (0c49ah),a		; 32 9a c4 ;0969
	ei			; fb ;096c
	ret			; c9 ;096d
+:
	call sub_vdp_build_sprite_buffer		; cd 10 0a ;096e
	ld hl,gui.tick_counter		; 21 96 c4 ;0971
	inc (hl)			; 34 ;0974
	ld hl,gui.joystick_previous		; 21 94 c4 ;0975
	call sub_get_joy_p1		; cd 0f 03 ;0978
	cp (hl)			; be ;097b
	ret z			; c8 ;097c
	dec hl			; 2b ;097d
	cp (hl)			; be ;097e
	jp z,sub_handle_gui_control		; ca 88 09 ;097f
	ld (hl),a			; 77 ;0982
	xor a			; af ;0983
	ld (0c49ch),a		; 32 9c c4 ;0984
	ret			; c9 ;0987
