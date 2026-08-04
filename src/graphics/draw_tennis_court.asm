sub_draw_tennis_court:
	di			; f3 ;0abd
	call sub_disable_display		; cd a4 03 ;0abe
	ld hl,0		; 21 00 00 ;0ac1
	ld de,data_palette_0		; 11 03 00 ;0ac4
	ld b,32		; 06 20 ;0ac7
	call sub_load_cram		; cd 81 04 ;0ac9
	ld de,02600h		; 11 00 26 ;0acc
	ld hl,data_planes_6_0		; 21 c5 4f ;0acf
	call sub_rle_decompress_bitplanes_to_vram		; cd b5 04 ;0ad2
	ld de,03800h		; 11 00 38 ;0ad5
	ld hl,data_planes_7_2		; 21 54 56 ;0ad8
	call sub_rle_decompress_bitplanes_to_vram		; cd b5 04 ;0adb
	ld de,0		; 11 00 00 ;0ade
	ld hl,data_planes_10_0		; 21 e3 5d ;0ae1
	call sub_rle_decompress_bitplanes_to_vram		; cd b5 04 ;0ae4
	ld hl,0c100h		; 21 00 c1 ;0ae7
	ld de,0c101h		; 11 01 c1 ;0aea
	ld bc,63		; 01 3f 00 ;0aed
	ld (hl),0d0h		; 36 d0 ;0af0
	ldir		; ed b0 ;0af2
	call sub_35c6h_palette_load		; cd c6 35 ;0af4
	ld a,(0c04ah)		; 3a 4a c0 ;0af7
	rrca			; 0f ;0afa
	and 007h		; e6 07 ;0afb
	ld (0c046h),a		; 32 46 c0 ;0afd
	ld a,081h		; 3e 81 ;0b00
	ld (0de00h),a		; 32 00 de ;0b02
	ld a,005h		; 3e 05 ;0b05
	ld hl,0c000h		; 21 00 c0 ;0b07
	bit 3,(hl)		; cb 5e ;0b0a
	jr z,+		; 28 02 ;0b0c
	or 080h		; f6 80 ;0b0e
+:
	ld (0c006h),a		; 32 06 c0 ;0b10
	call sub_enable_display		; cd a0 03 ;0b13
	ei			; fb ;0b16
	ret			; c9 ;0b17
