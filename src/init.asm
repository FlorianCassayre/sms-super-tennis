init:
	di			; f3 ;0085
	ld sp,0dffeh		; 31 fe df ;0086
	im 1		; ed 56 ;0089
	; Clear RAM range 0xc000-0xc03f
	ld hl,0c000h		; 21 00 c0 ;008b
	ld de,0c001h		; 11 01 c0 ;008e
	ld bc,l003fh		; 01 3f 00 ;0091
	ld (hl),000h		; 36 00 ;0094
	ldir		; ed b0 ;0096
	; Sound card detection
	call sub_audio_silence		; cd d7 7d ;0098
	ld a,092h		; 3e 92 ;009b
	out (0dfh),a		; d3 df ;009d
	ld a,055h		; 3e 55 ;009f
	out (0deh),a		; d3 de ;00a1
	in a,(0deh)		; db de ;00a3
	cp 055h		; fe 55 ;00a5
	ld c,000h		; 0e 00 ;00a7
	jr z,+		; 28 02 ;00a9
	ld c,0ffh		; 0e ff ;00ab
+:
	ld a,0aah		; 3e aa ;00ad
	out (0deh),a		; d3 de ;00af
	in a,(0deh)		; db de ;00b1
	cp 0aah		; fe aa ;00b3
	ld a,000h		; 3e 00 ;00b5
	jr z,+		; 28 02 ;00b7
	ld a,0ffh		; 3e ff ;00b9
+:
	or c			; b1 ;00bb
	ld (0c002h),a		; 32 02 c0 ;00bc
	ld a,007h		; 3e 07 ;00bf
	out (0deh),a		; d3 de ;00c1
	ld b,00ah		; 06 0a ;00c3
	ld de,0ffffh		; 11 ff ff ;00c5
--:
	ld hl,039deh		; 21 de 39 ;00c8
-:
	add hl,de			; 19 ;00cb
	jr c,-		; 38 fd ;00cc
	djnz --		; 10 f8 ;00ce
	call sub_check_hardware		; cd 06 41 ;00d0
	ld (0c010h),a		; 32 10 c0 ;00d3
-:
	di			; f3 ;00d6
	ld sp,0dffeh		; 31 fe df ;00d7
	xor a			; af ;00da
	ld (0c003h),a		; 32 03 c0 ;00db
	ld (0c000h),a		; 32 00 c0 ;00de
	ld (0c004h),a		; 32 04 c0 ;00e1
	ld hl,0c040h		; 21 40 c0 ;00e4
	ld de,0c041h		; 11 41 c0 ;00e7
	ld bc,l1fbfh		; 01 bf 1f ;00ea
	ld (hl),000h		; 36 00 ;00ed
	ldir		; ed b0 ;00ef
	; VDP initialization
	in a,(0bfh)		; db bf ;00f1
	ld b,016h		; 06 16 ;00f3
	ld c,0bfh		; 0e bf ;00f5
	ld hl,l003bh		; 21 3b 00 ;00f7
	otir		; ed b3 ;00fa
	ld hl,start		; 21 00 00 ;00fc
	ld de,l002dh		; 11 2d 00 ;00ff
	ld b,001h		; 06 01 ;0102
	call sub_load_cram		; cd 81 04 ;0104
	ld hl,l0010h		; 21 10 00 ;0107
	ld de,l002dh		; 11 2d 00 ;010a
	ld b,001h		; 06 01 ;010d
	call sub_load_cram		; cd 81 04 ;010f
	ld de,l2000h		; 11 00 20 ;0112
	ld hl,data_planes_9_0		; 21 43 5b ;0115
	call sub_rle_decompress_bitplanes		; cd b5 04 ;0118
	ld de,start		; 11 00 00 ;011b
	ld hl,data_planes_10_0		; 21 e3 5d ;011e
	call sub_rle_decompress_bitplanes		; cd b5 04 ;0121
	ld de,0c600h		; 11 00 c6 ;0124
	ld hl,data_planes_11_0		; 21 cb 70 ;0127
	call sub_rle_decompress_bitplanes_to_ram		; cd ed 04 ;012a
	ld de,0c720h		; 11 20 c7 ;012d
	ld hl,data_planes_3_0		; 21 46 4b ;0130
	call sub_rle_decompress_bitplanes_to_ram		; cd ed 04 ;0133
	ld de,0c76ch		; 11 6c c7 ;0136
	ld hl,data_planes_4_0		; 21 74 4b ;0139
	call sub_rle_decompress_bitplanes_to_ram		; cd ed 04 ;013c
	ld de,0c84ch		; 11 4c c8 ;013f
	ld hl,data_planes_8_0		; 21 58 59 ;0142
	call sub_rle_decompress_bitplanes_to_ram		; cd ed 04 ;0145
	ld de,0cbe8h		; 11 e8 cb ;0148
	ld hl,data_planes_5_0		; 21 37 4c ;014b
	call sub_rle_decompress_bitplanes_to_ram		; cd ed 04 ;014e
	call sub_init_background_name_table		; cd 88 03 ;0151
	ld a,080h		; 3e 80 ;0154
	ld (0de00h),a		; 32 00 de ;0156
	ld a,080h		; 3e 80 ;0159
	ld (0c006h),a		; 32 06 c0 ;015b
	call sub_enable_display		; cd a0 03 ;015e
	ei			; fb ;0161
	jp game_fsm		; c3 f8 07 ;0162
.INCLUDE "graphics/isr_vblank_update.asm"
l0213h:
	call sub_audio_silence		; cd d7 7d ;0213
	jp -		; c3 d6 00 ;0216
l0219h:
	ld c,018h		; 0e 18 ;0219
	call sub_delay_vdp		; cd 60 02 ;021b
	call sub_update_cond_color		; cd 68 02 ;021e
	jp l01feh		; c3 fe 01 ;0221
l0224h:
	ld c,018h		; 0e 18 ;0224
	call sub_delay_vdp		; cd 60 02 ;0226
	call sub_update_cond_color		; cd 68 02 ;0229
	jp l01fbh		; c3 fb 01 ;022c
l022fh:
	ld c,00dh		; 0e 0d ;022f
	call sub_delay_vdp		; cd 60 02 ;0231
	jp l01e4h		; c3 e4 01 ;0234
l0237h:
	ld a,(0c011h)		; 3a 11 c0 ;0237
	or a			; b7 ;023a
	jr z,l025dh		; 28 20 ;023b
