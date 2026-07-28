; --- generated header ---
.MEMORYMAP
    SLOTSIZE $8000
    SLOT 0 $0000
    DEFAULTSLOT 0
.ENDME
.ROMBANKMAP
    BANKSTOTAL 1
    BANKSIZE $8000
    BANKS 1
.ENDRO
; --- end generated header ---
; z80dasm 1.1.6
; command line: z80dasm -g 0x0000 -a -l super-tennis-usa-europe.sms

	.ORGA	00000h

	.INCLUDE "algorithm/rle_constants.asm"
	.INCLUDE "game/constants.asm"
	.INCLUDE "io/constants.asm"
	.INCLUDE "audio/constants.asm"
	.INCLUDE "physics/constants.asm"

start:
	jp init		; c3 85 00 ;0000
l0003h:
	.DB $3f			;0003
l0004h:
	.DB $3f			;0004
l0005h:
	.DB $37			;0005
	.DB $08			;0006
	.DB $03			;0007
l0008h:
	.DB $00			;0008
l0009h:
	.DB $2f			;0009
	.DB $2a $25 $0f		;000a
	dec bc			; 0b ;000d
l000eh:
	ld a,(bc)			; 0a ;000e
	dec b			; 05 ;000f
l0010h:
	ld b,030h		; 06 30 ;0010
l0012h:
	ccf			; 3f ;0012
l0013h:
	ld hl,(l0b00h)		; 2a 00 0b ;0013
l0016h:
	ccf			; 3f ;0016
	inc (hl)			; 34 ;0017
l0018h:
	jr c,l0029h		; 38 0f ;0018
	rra			; 1f ;001a
l001bh:
	ld b,000h		; 06 00 ;001b
	nop			; 00 ;001d
	nop			; 00 ;001e
	nop			; 00 ;001f
l0020h:
	nop			; 00 ;0020
	nop			; 00 ;0021
l0022h:
	nop			; 00 ;0022
	jr nc,l0034h		; 30 0f ;0023
	rlca			; 07 ;0025
l0026h:
	ld (bc),a			; 02 ;0026
	nop			; 00 ;0027
	nop			; 00 ;0028
l0029h:
	nop			; 00 ;0029
l002ah:
	nop			; 00 ;002a
	nop			; 00 ;002b
	ccf			; 3f ;002c
l002dh:
	nop			; 00 ;002d
	rrca			; 0f ;002e
	rst 38h			; ff ;002f
	rst 38h			; ff ;0030
	rst 38h			; ff ;0031
	rst 38h			; ff ;0032
	rst 38h			; ff ;0033
l0034h:
	rst 38h			; ff ;0034
	rst 38h			; ff ;0035
	rst 38h			; ff ;0036
l0037h:
	rst 38h			; ff ;0037
	jp isr_vblank_update		; c3 65 01 ;0038
l003bh:
	ld d,080h		; 16 80 ;003b
	and b			; a0 ;003d
	add a,c			; 81 ;003e
l003fh:
	rst 38h			; ff ;003f
l0040h:
	add a,d			; 82 ;0040
	rst 38h			; ff ;0041
	add a,e			; 83 ;0042
	rst 38h			; ff ;0043
	add a,h			; 84 ;0044
	rst 38h			; ff ;0045
	add a,l			; 85 ;0046
	ei			; fb ;0047
	add a,(hl)			; 86 ;0048
	nop			; 00 ;0049
	add a,a			; 87 ;004a
	nop			; 00 ;004b
	adc a,b			; 88 ;004c
	nop			; 00 ;004d
	adc a,c			; 89 ;004e
	cp a			; bf ;004f
	adc a,d			; 8a ;0050
	nop			; 00 ;0051
	nop			; 00 ;0052
	nop			; 00 ;0053
	nop			; 00 ;0054
	nop			; 00 ;0055
	rst 38h			; ff ;0056
	rst 38h			; ff ;0057
	rst 38h			; ff ;0058
	rst 38h			; ff ;0059
	rst 38h			; ff ;005a
	rst 38h			; ff ;005b
	rst 38h			; ff ;005c
	rst 38h			; ff ;005d
	rst 38h			; ff ;005e
	rst 38h			; ff ;005f
	rst 38h			; ff ;0060
	rst 38h			; ff ;0061
	rst 38h			; ff ;0062
	rst 38h			; ff ;0063
	rst 38h			; ff ;0064
	rst 38h			; ff ;0065
	push af			; f5 ;0066
	ld a,(0c000h)		; 3a 00 c0 ;0067
	and 00ch		; e6 0c ;006a
	cp 004h		; fe 04 ;006c
	jr nz,l0082h		; 20 12 ;006e
	ld a,(0c005h)		; 3a 05 c0 ;0070
	cp 00fh		; fe 0f ;0073
	jr c,l0082h		; 38 0b ;0075
	xor a			; af ;0077
l0078h:
	ld (0c005h),a		; 32 05 c0 ;0078
	ld a,(0c004h)		; 3a 04 c0 ;007b
	cpl			; 2f ;007e
l007fh:
	ld (0c004h),a		; 32 04 c0 ;007f
l0082h:
	pop af			; f1 ;0082
	retn		; ed 45 ;0083
.INCLUDE "init.asm"
	nop			; 00 ;023d
	nop			; 00 ;023e
	nop			; 00 ;023f
	nop			; 00 ;0240
	nop			; 00 ;0241
	nop			; 00 ;0242
	nop			; 00 ;0243
	nop			; 00 ;0244
	nop			; 00 ;0245
	nop			; 00 ;0246
	nop			; 00 ;0247
	nop			; 00 ;0248
l0249h:
	nop			; 00 ;0249
	nop			; 00 ;024a
	nop			; 00 ;024b
	nop			; 00 ;024c
	nop			; 00 ;024d
	nop			; 00 ;024e
	nop			; 00 ;024f
	ld a,010h		; 3e 10 ;0250
	out (0bfh),a		; d3 bf ;0252
	ld a,0c0h		; 3e c0 ;0254
	out (0bfh),a		; d3 bf ;0256
	ld a,(l001bh)		; 3a 1b 00 ;0258
	out (0beh),a		; d3 be ;025b
l025dh:
	pop af			; f1 ;025d
	ei			; fb ;025e
	ret			; c9 ;025f
	.INCLUDE "graphics/delay_vdp.asm"
	.INCLUDE "graphics/update_cond_color.asm"
	.INCLUDE "io/027bh_joy.asm"
	.INCLUDE "audio/wait_for_audio_event.asm"
	.INCLUDE "audio/wait_for_audio_idle.asm"
	nop			; 00 ;0385
	.DB $11 $e0 ;0386
	.INCLUDE "graphics/init_background_name_table.asm"
	.INCLUDE "graphics/display.asm"
sub_03adh:
	ld hl,(0c08ah)		; 2a 8a c0 ;03ad
	dec hl			; 2b ;03b0
	ld (0c08ah),hl		; 22 8a c0 ;03b1
	ld a,l			; 7d ;03b4
	or h			; b4 ;03b5
	ret			; c9 ;03b6
	.INCLUDE "graphics/upload_vram_chunks.asm"
	push hl			; e5 ;03cc
	ld hl,(0c08ch)		; 2a 8c c0 ;03cd
	ld a,h			; 7c ;03d0
	rrca			; 0f ;03d1
	rrca			; 0f ;03d2
	xor h			; ac ;03d3
	rrca			; 0f ;03d4
	xor l			; ad ;03d5
	rrca			; 0f ;03d6
	rrca			; 0f ;03d7
	rrca			; 0f ;03d8
	rrca			; 0f ;03d9
	xor l			; ad ;03da
	rra			; 1f ;03db
	adc hl,hl		; ed 6a ;03dc
	jr nz,l03e3h		; 20 03 ;03de
	ld hl,0733ch		; 21 3c 73 ;03e0
l03e3h:
	ld a,r		; ed 5f ;03e3
	xor l			; ad ;03e5
	ld (0c08ch),hl		; 22 8c c0 ;03e6
	pop hl			; e1 ;03e9
	ret			; c9 ;03ea
	ld d,000h		; 16 00 ;03eb
	ld l,d			; 6a ;03ed
	ld b,008h		; 06 08 ;03ee
l03f0h:
	add hl,hl			; 29 ;03f0
	jr nc,l03f4h		; 30 01 ;03f1
	add hl,de			; 19 ;03f3
l03f4h:
	djnz l03f0h		; 10 fa ;03f4
	ret			; c9 ;03f6
	.INCLUDE "math/mul_de_bc.asm"
	.INCLUDE "math/div_hl_de_bc.asm"
	.INCLUDE "graphics/set_vdp_write_addr.asm"
	.INCLUDE "graphics/cp_ram_vram.asm"
	.INCLUDE "graphics/vram_fill_byte.asm"
	.INCLUDE "graphics/vram_fill_word.asm"
	.INCLUDE "graphics/load_vram_rect.asm"
	.INCLUDE "graphics/load_cram.asm"
	.INCLUDE "graphics/cp_1bit_ram_vram.asm"
	.INCLUDE "algorithm/rle_decompress_bitplanes.asm"
l051ah:
	call sub_05cch_z_ordering		; cd cc 05 ;051a
	xor a			; af ;051d
l051eh:
	ld e,a			; 5f ;051e
	ld d,000h		; 16 00 ;051f
	push af			; f5 ;0521
	ld hl,0c1c4h		; 21 c4 c1 ;0522
	add hl,de			; 19 ;0525
	ld a,(hl)			; 7e ;0526
	add a,a			; 87 ;0527
	ld e,a			; 5f ;0528
l0529h:
	ld d,000h		; 16 00 ;0529
	ld hl,l074fh		; 21 4f 07 ;052b
	add hl,de			; 19 ;052e
	ld e,(hl)			; 5e ;052f
	inc hl			; 23 ;0530
	ld d,(hl)			; 56 ;0531
	push de			; d5 ;0532
	pop ix		; dd e1 ;0533
	ld a,(ix+002h)		; dd 7e 02 ;0535
	or a			; b7 ;0538
	jr z,l053eh		; 28 03 ;0539
	call sub_render_sprites		; cd 47 05 ;053b
l053eh:
	pop af			; f1 ;053e
	inc a			; 3c ;053f
	cp 006h		; fe 06 ;0540
	jr nz,l051eh		; 20 da ;0542
	jp l05a1h		; c3 a1 05 ;0544
	.INCLUDE "graphics/render_sprites.asm"
l05a1h:
	ld a,(0c080h)		; 3a 80 c0 ;05a1
	ld hl,0c081h		; 21 81 c0 ;05a4
	sub (hl)			; 96 ;05a7
	jr nc,l05bch		; 30 12 ;05a8
	neg		; ed 44 ;05aa
	ld b,a			; 47 ;05ac
	ld a,(0c080h)		; 3a 80 c0 ;05ad
	ld e,a			; 5f ;05b0
	ld d,000h		; 16 00 ;05b1
	ld hl,0c100h		; 21 00 c1 ;05b3
	add hl,de			; 19 ;05b6
l05b7h:
	ld (hl),0d0h		; 36 d0 ;05b7
	inc hl			; 23 ;05b9
	djnz l05b7h		; 10 fb ;05ba
l05bch:
	ld a,(0c080h)		; 3a 80 c0 ;05bc
sub_05bfh:
	ld (0c081h),a		; 32 81 c0 ;05bf
	xor a			; af ;05c2
	ld (0c080h),a		; 32 80 c0 ;05c3
	ld hl,0c089h		; 21 89 c0 ;05c6
	set 7,(hl)		; cb fe ;05c9
	ret			; c9 ;05cb
sub_05cch_z_ordering:
	xor a			; af ;05cc
	ld (0c1cah),a		; 32 ca c1 ;05cd
	inc a			; 3c ;05d0
	ld (0c1cbh),a		; 32 cb c1 ;05d1
l05d4h:
	ld a,(0c1cah)		; 3a ca c1 ;05d4
	ld e,a			; 5f ;05d7
	ld d,000h		; 16 00 ;05d8
	ld hl,0c1c4h		; 21 c4 c1 ;05da
	add hl,de			; 19 ;05dd
	ld a,(hl)			; 7e ;05de
	add a,a			; 87 ;05df
	ld e,a			; 5f ;05e0
	ld hl,l0636h		; 21 36 06 ;05e1
	add hl,de			; 19 ;05e4
	ld e,(hl)			; 5e ;05e5
	inc hl			; 23 ;05e6
	ld d,(hl)			; 56 ;05e7
	ex de,hl			; eb ;05e8
	ld c,(hl)			; 4e ;05e9
l05eah:
	ld a,(0c1cbh)		; 3a cb c1 ;05ea
	ld e,a			; 5f ;05ed
	ld d,000h		; 16 00 ;05ee
	ld hl,0c1c4h		; 21 c4 c1 ;05f0
	add hl,de			; 19 ;05f3
	ld a,(hl)			; 7e ;05f4
	add a,a			; 87 ;05f5
	ld e,a			; 5f ;05f6
	ld hl,l0636h		; 21 36 06 ;05f7
	add hl,de			; 19 ;05fa
	ld e,(hl)			; 5e ;05fb
	inc hl			; 23 ;05fc
	ld d,(hl)			; 56 ;05fd
	ld a,(de)			; 1a ;05fe
	cp c			; b9 ;05ff
sub_0600h:
	jr c,l061bh		; 38 19 ;0600
	ld c,a			; 4f ;0602
	ld a,(0c1cah)		; 3a ca c1 ;0603
	ld e,a			; 5f ;0606
	ld d,000h		; 16 00 ;0607
	ld hl,0c1c4h		; 21 c4 c1 ;0609
	add hl,de			; 19 ;060c
	ld b,(hl)			; 46 ;060d
	push hl			; e5 ;060e
	ld a,(0c1cbh)		; 3a cb c1 ;060f
	ld e,a			; 5f ;0612
	ld hl,0c1c4h		; 21 c4 c1 ;0613
	add hl,de			; 19 ;0616
	ld a,(hl)			; 7e ;0617
	pop de			; d1 ;0618
	ld (de),a			; 12 ;0619
	ld (hl),b			; 70 ;061a
l061bh:
	ld a,(0c1cbh)		; 3a cb c1 ;061b
	inc a			; 3c ;061e
	ld (0c1cbh),a		; 32 cb c1 ;061f
	cp 006h		; fe 06 ;0622
	jr nz,l05eah		; 20 c4 ;0624
	ld a,(0c1cah)		; 3a ca c1 ;0626
	inc a			; 3c ;0629
	ld (0c1cah),a		; 32 ca c1 ;062a
	cp 005h		; fe 05 ;062d
	ret z			; c8 ;062f
	inc a			; 3c ;0630
	ld (0c1cbh),a		; 32 cb c1 ;0631
	jr l05d4h		; 18 9e ;0634
l0636h:
	.DW $c214			; 14 ;0636
	.DW $c254		; c2 54 c2 ;0637
	.DW $c294			; 94 ;063a
	.DW $c2d4		; c2 d4 c2 ;063b
	.DW $c314			; 14 ;063e
	.DW $c354		; c3 54 c3 ;063f
sub_0642h_animation_loop:
	ld a,(ix+004h)		; dd 7e 04 ;0642
	add a,a			; 87 ;0645
	ld e,a			; 5f ;0646
	ld d,000h		; 16 00 ;0647
	ld hl,unknown_table_0		; 21 24 41 ;0649
	add hl,de			; 19 ;064c
	ld e,(hl)			; 5e ;064d
	inc hl			; 23 ;064e
	ld d,(hl)			; 56 ;064f
	ld a,(de)			; 1a ;0650
	ld (ix+005h),a		; dd 77 05 ;0651
	inc de			; 13 ;0654
	ld (ix+006h),e		; dd 73 06 ;0655
	ld (ix+007h),d		; dd 72 07 ;0658
	ret			; c9 ;065b
l065ch:
	ld hl,l06bfh		; 21 bf 06 ;065c
	ld a,(0c509h)		; 3a 09 c5 ;065f
	cp 050h		; fe 50 ;0662
	jr nc,l0669h		; 30 03 ;0664
	ld hl,l06dfh		; 21 df 06 ;0666
l0669h:
	ld a,(0c501h)		; 3a 01 c5 ;0669
	cp 050h		; fe 50 ;066c
	jr c,l0672h		; 38 02 ;066e
	ld a,04fh		; 3e 4f ;0670
l0672h:
	rrca			; 0f ;0672
	rrca			; 0f ;0673
	rrca			; 0f ;0674
	and 00fh		; e6 0f ;0675
	add a,a			; 87 ;0677
	ld e,a			; 5f ;0678
	ld d,000h		; 16 00 ;0679
	add hl,de			; 19 ;067b
	ld a,(0c089h)		; 3a 89 c0 ;067c
	ld c,a			; 4f ;067f
	ld a,(0c510h)		; 3a 10 c5 ;0680
	cp (hl)			; be ;0683
	jr z,l068ch		; 28 06 ;0684
	ld a,(hl)			; 7e ;0686
	ld (0c510h),a		; 32 10 c5 ;0687
	set 5,c		; cb e9 ;068a
l068ch:
	inc hl			; 23 ;068c
	ld a,(0c511h)		; 3a 11 c5 ;068d
	cp (hl)			; be ;0690
	jr z,l0699h		; 28 06 ;0691
	ld a,(hl)			; 7e ;0693
	ld (0c511h),a		; 32 11 c5 ;0694
	set 6,c		; cb f1 ;0697
l0699h:
	ld a,c			; 79 ;0699
	ld (0c089h),a		; 32 89 c0 ;069a
	ld de,l06ffh		; 11 ff 06 ;069d
	ld a,(0c510h)		; 3a 10 c5 ;06a0
	add a,a			; 87 ;06a3
	ld l,a			; 6f ;06a4
	ld h,000h		; 26 00 ;06a5
	add hl,de			; 19 ;06a7
	ld a,(hl)			; 7e ;06a8
	inc hl			; 23 ;06a9
	ld h,(hl)			; 66 ;06aa
	ld l,a			; 6f ;06ab
	ld (0c512h),hl		; 22 12 c5 ;06ac
	ld a,(0c511h)		; 3a 11 c5 ;06af
	add a,a			; 87 ;06b2
	ld l,a			; 6f ;06b3
l06b4h:
	ld h,000h		; 26 00 ;06b4
	add hl,de			; 19 ;06b6
	ld a,(hl)			; 7e ;06b7
sub_06b8h:
	inc hl			; 23 ;06b8
	ld h,(hl)			; 66 ;06b9
	ld l,a			; 6f ;06ba
	ld (0c514h),hl		; 22 14 c5 ;06bb
	ret			; c9 ;06be
l06bfh:
	ld bc,00206h		; 01 06 02 ;06bf
	rlca			; 07 ;06c2
	ld (bc),a			; 02 ;06c3
	rlca			; 07 ;06c4
	ld (bc),a			; 02 ;06c5
	rlca			; 07 ;06c6
	inc bc			; 03 ;06c7
	rlca			; 07 ;06c8
	inc bc			; 03 ;06c9
	rlca			; 07 ;06ca
	inc bc			; 03 ;06cb
sub_06cch:
	ex af,af'			; 08 ;06cc
	inc bc			; 03 ;06cd
	ex af,af'			; 08 ;06ce
	inc b			; 04 ;06cf
	ex af,af'			; 08 ;06d0
	inc b			; 04 ;06d1
	ex af,af'			; 08 ;06d2
	inc b			; 04 ;06d3
	ex af,af'			; 08 ;06d4
	inc b			; 04 ;06d5
	ex af,af'			; 08 ;06d6
	inc b			; 04 ;06d7
	ex af,af'			; 08 ;06d8
	inc b			; 04 ;06d9
	ex af,af'			; 08 ;06da
	inc b			; 04 ;06db
	ex af,af'			; 08 ;06dc
	inc b			; 04 ;06dd
	ex af,af'			; 08 ;06de
l06dfh:
	nop			; 00 ;06df
	dec b			; 05 ;06e0
	ld bc,00104h+2		; 01 06 01 ;06e1
	ld b,001h		; 06 01 ;06e4
	ld b,002h		; 06 02 ;06e6
	ld b,002h		; 06 02 ;06e8
	ld b,002h		; 06 02 ;06ea
	rlca			; 07 ;06ec
	ld (bc),a			; 02 ;06ed
	rlca			; 07 ;06ee
	inc bc			; 03 ;06ef
	rlca			; 07 ;06f0
	inc bc			; 03 ;06f1
	ex af,af'			; 08 ;06f2
	inc b			; 04 ;06f3
	ex af,af'			; 08 ;06f4
	inc b			; 04 ;06f5
	ex af,af'			; 08 ;06f6
	inc b			; 04 ;06f7
	ex af,af'			; 08 ;06f8
	inc b			; 04 ;06f9
	ex af,af'			; 08 ;06fa
	inc b			; 04 ;06fb
	ex af,af'			; 08 ;06fc
	inc b			; 04 ;06fd
	ex af,af'			; 08 ;06fe
l06ffh:
	nop			; 00 ;06ff
	add a,020h		; c6 20 ;0700
	add a,040h		; c6 40 ;0702
	add a,060h		; c6 60 ;0704
	add a,080h		; c6 80 ;0706
	add a,0a0h		; c6 a0 ;0708
	add a,0c0h		; c6 c0 ;070a
	add a,0e0h		; c6 e0 ;070c
	add a,000h		; c6 00 ;070e
	rst 0			; c7 ;0710
l0711h_fsm_dispatch:
	ld hl,l074fh		; 21 4f 07 ;0711
	ld a,(0c086h)		; 3a 86 c0 ;0714
	add a,a			; 87 ;0717
	ld e,a			; 5f ;0718
	ld d,000h		; 16 00 ;0719
	add hl,de			; 19 ;071b
	ld e,(hl)			; 5e ;071c
	inc hl			; 23 ;071d
	ld d,(hl)			; 56 ;071e
	push de			; d5 ;071f
	pop ix		; dd e1 ;0720
	ld a,(ix+002h)		; dd 7e 02 ;0722
	or a			; b7 ;0725
	jr z,l0732h		; 28 0a ;0726
	ld hl,l0732h		; 21 32 07 ;0728
	push hl			; e5 ;072b
	ld hl,00759h		; 21 59 07 ;072c
	jp l0807h_game_fsm		; c3 07 08 ;072f
l0732h:
	call sub_0642h_animation_loop		; cd 42 06 ;0732
	ld de,0c086h		; 11 86 c0 ;0735
	ld a,(de)			; 1a ;0738
	ld c,a			; 4f ;0739
	ld b,000h		; 06 00 ;073a
	ld hl,0c1c4h		; 21 c4 c1 ;073c
l073fh:
	add hl,bc			; 09 ;073f
	ld a,(ix+001h)		; dd 7e 01 ;0740
	ld (hl),a			; 77 ;0743
	inc c			; 0c ;0744
	ld a,c			; 79 ;0745
	ld (de),a			; 12 ;0746
	sub 006h		; d6 06 ;0747
	jr nz,l0711h_fsm_dispatch		; 20 c6 ;0749
	ld (de),a			; 12 ;074b
	jp l051ah		; c3 1a 05 ;074c
l074fh:
	nop			; 00 ;074f
	jp nz,0c240h		; c2 40 c2 ;0750
	add a,b			; 80 ;0753
	jp nz,0c2c0h		; c2 c0 c2 ;0754
	nop			; 00 ;0757
	jp 0c340h		; c3 40 c3 ;0758
	rst 38h			; ff ;075b
	inc hl			; 23 ;075c
	or b			; b0 ;075d
	dec de			; 1b ;075e
	ld e,a			; 5f ;075f
	ld a,(de)			; 1a ;0760
	jp p,0681ah		; f2 1a 68 ;0761
	dec de			; 1b ;0764
	ld e,a			; 5f ;0765
	ld a,(de)			; 1a ;0766
	jp p,0681ah		; f2 1a 68 ;0767
	dec de			; 1b ;076a
	ld e,a			; 5f ;076b
	ld a,(de)			; 1a ;076c
	xor a			; af ;076d
	dec de			; 1b ;076e
	xor a			; af ;076f
	dec de			; 1b ;0770
	xor a			; af ;0771
	dec de			; 1b ;0772
	xor a			; af ;0773
	dec de			; 1b ;0774
	xor a			; af ;0775
	dec de			; 1b ;0776
	xor a			; af ;0777
	dec de			; 1b ;0778
	xor a			; af ;0779
	dec de			; 1b ;077a
	xor a			; af ;077b
	dec de			; 1b ;077c
	xor a			; af ;077d
sub_077eh:
	dec de			; 1b ;077e
	ld a,h			; 7c ;077f
	inc h			; 24 ;0780
	dec hl			; 2b ;0781
	inc e			; 1c ;0782
	ld a,(de)			; 1a ;0783
	rrca			; 0f ;0784
	dec e			; 1d ;0785
	rrca			; 0f ;0786
	ld c,l			; 4d ;0787
	rrca			; 0f ;0788
	and l			; a5 ;0789
	rrca			; 0f ;078a
	rra			; 1f ;078b
	djnz l073fh		; 10 b1 ;078c
	ld de,l1227h		; 11 27 12 ;078e
	ld l,h			; 6c ;0791
	ld (de),a			; 12 ;0792
	sbc a,012h		; de 12 ;0793
	.INCLUDE "io/joy_debounce.asm"
	.INCLUDE "game/game_fsm.asm"
l0811h:
	or b			; b0 ;0811
	ld c,021h		; 0e 21 ;0812
	ex af,af'			; 08 ;0814
	ret nz			; c0 ;0815
	ex af,af'			; 08 ;0816
	sbc a,b			; 98 ;0817
	ex af,af'			; 08 ;0818
	jr l0826h		; 18 0b ;0819
	dec sp			; 3b ;081b
	dec bc			; 0b ;081c
	ld l,e			; 6b ;081d
	inc c			; 0c ;081e
	and a			; a7 ;081f
	ex af,af'			; 08 ;0820
	ld hl,0c006h		; 21 06 c0 ;0821
	bit 6,(hl)		; cb 76 ;0824
l0826h:
	jp nz,l088dh		; c2 8d 08 ;0826
	di			; f3 ;0829
	call sub_disable_display		; cd a4 03 ;082a
	call sub_init_background_name_table		; cd 88 03 ;082d
	ld hl,start		; 21 00 00 ;0830
	ld de,l3b08h		; 11 08 3b ;0833
	ld b,008h		; 06 08 ;0836
	call sub_load_cram		; cd 81 04 ;0838
	ld hl,l0010h		; 21 10 00 ;083b
	ld de,l3b10h		; 11 10 3b ;083e
	ld b,00bh		; 06 0b ;0841
	call sub_load_cram		; cd 81 04 ;0843
	ld de,02600h		; 11 00 26 ;0846
	ld hl,data_planes_1_0		; 21 1b 3b ;0849
	call sub_rle_decompress_bitplanes		; cd b5 04 ;084c
	ld hl,03854h		; 21 54 38 ;084f
	ld de,data_tiles_1_super		; 11 fa 3e ;0852
	ld b,5		; 06 05 ;0855
	ld c,10		; 0e 0a ;0857
	call sub_load_vram_rect		; cd 64 04 ;0859
	ld de,039c0h		; 11 c0 39 ;085c
	ld hl,data_planes_2_0		; 21 5e 3f ;085f
	call sub_rle_decompress_bitplanes		; cd b5 04 ;0862
	ld hl,data_chunks_0		; 21 7f 40 ;0865
	call sub_upload_vram_chunks		; cd b7 03 ;0868
	ld hl,03d96h		; 21 96 3d ;086b
	ld de,l40f0h		; 11 f0 40 ;086e
	ld bc,l0016h		; 01 16 00 ;0871
	call sub_cp_ram_vram		; cd 2f 04 ;0874
	xor a			; af ;0877
	ld (0de04h),a		; 32 04 de ;0878
	ld (0c011h),a		; 32 11 c0 ;087b
	ld hl,0c006h		; 21 06 c0 ;087e
	set 6,(hl)		; cb f6 ;0881
	ld a,088h		; 3e 88 ;0883
	ld (0de00h),a		; 32 00 de ;0885
	call sub_enable_display		; cd a0 03 ;0888
	ei			; fb ;088b
	ret			; c9 ;088c
l088dh:
	ld a,(0de04h)		; 3a 04 de ;088d
	rlca			; 07 ;0890
	ret nc			; d0 ;0891
	ld a,083h		; 3e 83 ;0892
	ld (0c006h),a		; 32 06 c0 ;0894
	ret			; c9 ;0897
	ld hl,0c000h		; 21 00 c0 ;0898
	set 3,(hl)		; cb de ;089b
	set 7,(hl)		; cb fe ;089d
	ld a,003h		; 3e 03 ;089f
	ld (0c045h),a		; 32 45 c0 ;08a1
	jp l0abdh		; c3 bd 0a ;08a4
	xor a			; af ;08a7
	ld (0c000h),a		; 32 00 c0 ;08a8
	ld hl,0c040h		; 21 40 c0 ;08ab
	ld de,0c041h		; 11 41 c0 ;08ae
	ld bc,00541h		; 01 41 05 ;08b1
	ld (hl),a			; 77 ;08b4
	ldir		; ed b0 ;08b5
	ld hl,0c006h		; 21 06 c0 ;08b7
	ld (hl),081h		; 36 81 ;08ba
	inc hl			; 23 ;08bc
	ld (hl),000h		; 36 00 ;08bd
	ret			; c9 ;08bf
	ld hl,0c006h		; 21 06 c0 ;08c0
	bit 6,(hl)		; cb 76 ;08c3
	jp nz,l096eh		; c2 6e 09 ;08c5
	set 6,(hl)		; cb f6 ;08c8
	di			; f3 ;08ca
	call sub_disable_display		; cd a4 03 ;08cb
	call sub_init_background_name_table		; cd 88 03 ;08ce
	ld de,start		; 11 00 00 ;08d1
	ld hl,data_planes_10_0		; 21 e3 5d ;08d4
	call sub_rle_decompress_bitplanes		; cd b5 04 ;08d7
	ld hl,0c047h		; 21 47 c0 ;08da
	ld b,004h		; 06 04 ;08dd
	xor a			; af ;08df
l08e0h:
	ld (hl),a			; 77 ;08e0
	inc hl			; 23 ;08e1
	djnz l08e0h		; 10 fc ;08e2
	ld (0c491h),a		; 32 91 c4 ;08e4
	ld (0c496h),a		; 32 96 c4 ;08e7
	call sub_get_joy_p1		; cd 0f 03 ;08ea
	ld (0c493h),a		; 32 93 c4 ;08ed
	ld (0c494h),a		; 32 94 c4 ;08f0
	ld hl,03886h		; 21 86 38 ;08f3
	ld de,0cb04h		; 11 04 cb ;08f6
	ld bc,l0026h		; 01 26 00 ;08f9
	call sub_cp_ram_vram		; cd 2f 04 ;08fc
	ld hl,0394ah		; 21 4a 39 ;08ff
	ld de,0cb2ah		; 11 2a cb ;0902
	ld bc,l0020h		; 01 20 00 ;0905
	call sub_cp_ram_vram		; cd 2f 04 ;0908
	ld hl,039e2h		; 21 e2 39 ;090b
	ld de,0cb4ah		; 11 4a cb ;090e
	ld bc,l0016h		; 01 16 00 ;0911
	call sub_cp_ram_vram		; cd 2f 04 ;0914
	ld hl,03a4ah		; 21 4a 3a ;0917
	ld de,0cb60h		; 11 60 cb ;091a
	ld bc,l0020h		; 01 20 00 ;091d
	call sub_cp_ram_vram		; cd 2f 04 ;0920
	ld hl,03ae2h		; 21 e2 3a ;0923
	ld de,0cb4ah		; 11 4a cb ;0926
	ld bc,l0016h		; 01 16 00 ;0929
	call sub_cp_ram_vram		; cd 2f 04 ;092c
	ld hl,03b4ah		; 21 4a 3b ;092f
	ld de,0cb80h		; 11 80 cb ;0932
	ld bc,0001bh+1		; 01 1c 00 ;0935
	call sub_cp_ram_vram		; cd 2f 04 ;0938
	ld hl,03be2h		; 21 e2 3b ;093b
	ld de,0cb4ah		; 11 4a cb ;093e
	ld bc,l0016h		; 01 16 00 ;0941
	call sub_cp_ram_vram		; cd 2f 04 ;0944
	ld hl,03c86h		; 21 86 3c ;0947
	ld de,0cb9ch		; 11 9c cb ;094a
	ld bc,l002ah		; 01 2a 00 ;094d
	call sub_cp_ram_vram		; cd 2f 04 ;0950
	ld hl,03d10h		; 21 10 3d ;0953
	ld de,0cbc6h		; 11 c6 cb ;0956
	ld bc,l0022h		; 01 22 00 ;0959
	call sub_cp_ram_vram		; cd 2f 04 ;095c
	call sub_enable_display		; cd a0 03 ;095f
	xor a			; af ;0962
	ld (0c48ah),a		; 32 8a c4 ;0963
	ld (0c499h),a		; 32 99 c4 ;0966
	ld (0c49ah),a		; 32 9a c4 ;0969
sub_enable_interrupts:
	ei			; fb ;096c
	ret			; c9 ;096d
l096eh:
	call sub_vdp_build_sprite_buffer		; cd 10 0a ;096e
	ld hl,0c496h		; 21 96 c4 ;0971
	inc (hl)			; 34 ;0974
	ld hl,0c494h		; 21 94 c4 ;0975
	call sub_get_joy_p1		; cd 0f 03 ;0978
	cp (hl)			; be ;097b
	ret z			; c8 ;097c
	dec hl			; 2b ;097d
	cp (hl)			; be ;097e
	jp z,l0988h		; ca 88 09 ;097f
	ld (hl),a			; 77 ;0982
	xor a			; af ;0983
	ld (0c49ch),a		; 32 9c c4 ;0984
	ret			; c9 ;0987
l0988h:
	ld hl,0c49ch		; 21 9c c4 ;0988
	inc (hl)			; 34 ;098b
	ld a,(hl)			; 7e ;098c
	cp 003h		; fe 03 ;098d
	ret c			; d8 ;098f
	xor a			; af ;0990
	ld (hl),a			; 77 ;0991
	ld hl,0c493h		; 21 93 c4 ;0992
	ld a,(hl)			; 7e ;0995
	and 030h		; e6 30 ;0996
	ld b,a			; 47 ;0998
	inc hl			; 23 ;0999
	ld a,(hl)			; 7e ;099a
	and 030h		; e6 30 ;099b
	cpl			; 2f ;099d
	and b			; a0 ;099e
	jr nz,l09f7h		; 20 56 ;099f
	ld hl,0c493h		; 21 93 c4 ;09a1
	ld a,(hl)			; 7e ;09a4
	inc hl			; 23 ;09a5
	ld (hl),a			; 77 ;09a6
	dec hl			; 2b ;09a7
	cp 000h		; fe 00 ;09a8
	ret z			; c8 ;09aa
	ld b,(hl)			; 46 ;09ab
	ld hl,0c491h		; 21 91 c4 ;09ac
	ld a,(hl)			; 7e ;09af
	srl b		; cb 38 ;09b0
	sbc a,000h		; de 00 ;09b2
	ld (hl),a			; 77 ;09b4
	jp nc,l09bah		; d2 ba 09 ;09b5
	ld (hl),003h		; 36 03 ;09b8
l09bah:
	ld a,(hl)			; 7e ;09ba
	srl b		; cb 38 ;09bb
	adc a,000h		; ce 00 ;09bd
	ld (hl),a			; 77 ;09bf
	cp 004h		; fe 04 ;09c0
	jp c,l09c7h		; da c7 09 ;09c2
	ld (hl),000h		; 36 00 ;09c5
l09c7h:
	ld e,(hl)			; 5e ;09c7
	ld d,000h		; 16 00 ;09c8
	ld hl,0c047h		; 21 47 c0 ;09ca
	add hl,de			; 19 ;09cd
	ld a,e			; 7b ;09ce
	cp 003h		; fe 03 ;09cf
	jr nz,l09d7h		; 20 04 ;09d1
	ld e,004h		; 1e 04 ;09d3
	jr l09d9h		; 18 02 ;09d5
l09d7h:
	ld e,002h		; 1e 02 ;09d7
l09d9h:
	ld a,(hl)			; 7e ;09d9
	srl b		; cb 38 ;09da
	jp nc,l09e6h		; d2 e6 09 ;09dc
	sbc a,000h		; de 00 ;09df
	ld (hl),a			; 77 ;09e1
	jp nc,l09e6h		; d2 e6 09 ;09e2
	ld (hl),e			; 73 ;09e5
l09e6h:
	inc e			; 1c ;09e6
	ld a,(hl)			; 7e ;09e7
	srl b		; cb 38 ;09e8
	jp nc,l09f6h		; d2 f6 09 ;09ea
	adc a,000h		; ce 00 ;09ed
	ld (hl),a			; 77 ;09ef
	cp e			; bb ;09f0
	jp c,l09f6h		; da f6 09 ;09f1
	ld (hl),000h		; 36 00 ;09f4
l09f6h:
	ret			; c9 ;09f6
l09f7h:
	ld a,(0c048h)		; 3a 48 c0 ;09f7
	ld (0c4b2h),a		; 32 b2 c4 ;09fa
	add a,002h		; c6 02 ;09fd
	ld (0c4b0h),a		; 32 b0 c4 ;09ff
	ld a,(0c04ah)		; 3a 4a c0 ;0a02
	ld (0c4b1h),a		; 32 b1 c4 ;0a05
	srl a		; cb 3f ;0a08
	ld (0c4b3h),a		; 32 b3 c4 ;0a0a
	jp l0abdh		; c3 bd 0a ;0a0d
.INCLUDE "graphics/vdp_build_sprite_buffer.asm"
sub_0a85h:
	push bc			; c5 ;0a85
	push de			; d5 ;0a86
	ld b,004h		; 06 04 ;0a87
	ld de,l489bh		; 11 9b 48 ;0a89
l0a8ch:
	push de			; d5 ;0a8c
	exx			; d9 ;0a8d
	pop de			; d1 ;0a8e
	ld a,(de)			; 1a ;0a8f
	add a,c			; 81 ;0a90
	ld (hl),a			; 77 ;0a91
	inc hl			; 23 ;0a92
	inc de			; 13 ;0a93
	push de			; d5 ;0a94
	exx			; d9 ;0a95
	pop de			; d1 ;0a96
	ld a,(de)			; 1a ;0a97
	add a,c			; 81 ;0a98
	ld (hl),a			; 77 ;0a99
	inc hl			; 23 ;0a9a
	inc de			; 13 ;0a9b
	ld a,(de)			; 1a ;0a9c
	ld (hl),a			; 77 ;0a9d
	inc hl			; 23 ;0a9e
	inc de			; 13 ;0a9f
	djnz l0a8ch		; 10 ea ;0aa0
	pop de			; d1 ;0aa2
	pop bc			; c1 ;0aa3
	ret			; c9 ;0aa4
sub_0aa5h:
	push de			; d5 ;0aa5
	cp 001h		; fe 01 ;0aa6
	ld d,a			; 57 ;0aa8
	ld a,b			; 78 ;0aa9
	jr c,l0abah		; 38 0e ;0aaa
	jr z,l0ab9h		; 28 0b ;0aac
	ld a,d			; 7a ;0aae
	cp 003h		; fe 03 ;0aaf
	ld a,b			; 78 ;0ab1
	jr c,l0ab8h		; 38 04 ;0ab2
	jr z,l0ab7h		; 28 01 ;0ab4
	add a,c			; 81 ;0ab6
l0ab7h:
	add a,c			; 81 ;0ab7
l0ab8h:
	add a,c			; 81 ;0ab8
l0ab9h:
	add a,c			; 81 ;0ab9
l0abah:
	ld c,a			; 4f ;0aba
	pop de			; d1 ;0abb
	ret			; c9 ;0abc
l0abdh:
	di			; f3 ;0abd
	call sub_disable_display		; cd a4 03 ;0abe
	ld hl,start		; 21 00 00 ;0ac1
	ld de,l0003h		; 11 03 00 ;0ac4
	ld b,020h		; 06 20 ;0ac7
	call sub_load_cram		; cd 81 04 ;0ac9
	ld de,02600h		; 11 00 26 ;0acc
	ld hl,data_planes_6_0		; 21 c5 4f ;0acf
	call sub_rle_decompress_bitplanes		; cd b5 04 ;0ad2
	ld de,03800h		; 11 00 38 ;0ad5
	ld hl,data_planes_7_2		; 21 54 56 ;0ad8
	call sub_rle_decompress_bitplanes		; cd b5 04 ;0adb
	ld de,start		; 11 00 00 ;0ade
	ld hl,data_planes_10_0		; 21 e3 5d ;0ae1
	call sub_rle_decompress_bitplanes		; cd b5 04 ;0ae4
	ld hl,0c100h		; 21 00 c1 ;0ae7
	ld de,0c101h		; 11 01 c1 ;0aea
	ld bc,l003fh		; 01 3f 00 ;0aed
	ld (hl),0d0h		; 36 d0 ;0af0
	ldir		; ed b0 ;0af2
	call sub_35c6h		; cd c6 35 ;0af4
	ld a,(0c04ah)		; 3a 4a c0 ;0af7
	rrca			; 0f ;0afa
	and 007h		; e6 07 ;0afb
	ld (0c046h),a		; 32 46 c0 ;0afd
l0b00h:
	ld a,081h		; 3e 81 ;0b00
	ld (0de00h),a		; 32 00 de ;0b02
	ld a,005h		; 3e 05 ;0b05
	ld hl,0c000h		; 21 00 c0 ;0b07
	bit 3,(hl)		; cb 5e ;0b0a
	jr z,l0b10h		; 28 02 ;0b0c
	or 080h		; f6 80 ;0b0e
l0b10h:
	ld (0c006h),a		; 32 06 c0 ;0b10
	call sub_enable_display		; cd a0 03 ;0b13
	ei			; fb ;0b16
	ret			; c9 ;0b17
	ld a,(0c518h)		; 3a 18 c5 ;0b18
	or a			; b7 ;0b1b
	jr nz,l0b28h		; 20 0a ;0b1c
l0b1eh:
	call sub_check_player_location		; cd 87 17 ;0b1e
	call 014b4h		; cd b4 14 ;0b21
	call l0711h_fsm_dispatch		; cd 11 07 ;0b24
	ret			; c9 ;0b27
l0b28h:
	ld hl,0c006h		; 21 06 c0 ;0b28
	ld e,006h		; 1e 06 ;0b2b
	ld a,(0c000h)		; 3a 00 c0 ;0b2d
	bit 3,a		; cb 5f ;0b30
	jr z,l0b36h		; 28 02 ;0b32
	ld e,086h		; 1e 86 ;0b34
l0b36h:
	ld (hl),e			; 73 ;0b36
	inc hl			; 23 ;0b37
	ld (hl),000h		; 36 00 ;0b38
	ret			; c9 ;0b3a
	ld hl,0c495h		; 21 95 c4 ;0b3b
	ld a,0f8h		; 3e f8 ;0b3e
	and (hl)			; a6 ;0b40
	ld (hl),a			; 77 ;0b41
	ld hl,0c200h		; 21 00 c2 ;0b42
	ld de,0c201h		; 11 01 c2 ;0b45
	ld bc,0017fh		; 01 7f 01 ;0b48
	ld (hl),000h		; 36 00 ;0b4b
	ldir		; ed b0 ;0b4d
	ld hl,start		; 21 00 00 ;0b4f
	ld (0c518h),hl		; 22 18 c5 ;0b52
	xor a			; af ;0b55
	ld (0c040h),a		; 32 40 c0 ;0b56
	ld (0c516h),a		; 32 16 c5 ;0b59
	ld (BALL_STATE),a		; 32 17 c5 ;0b5c
	ld hl,0c100h		; 21 00 c1 ;0b5f
	ld de,0c101h		; 11 01 c1 ;0b62
	ld bc,l003fh		; 01 3f 00 ;0b65
	ld (hl),0d0h		; 36 d0 ;0b68
	ldir		; ed b0 ;0b6a
	ld a,(0c043h)		; 3a 43 c0 ;0b6c
	or a			; b7 ;0b6f
	jr z,l0ba8h		; 28 36 ;0b70
	dec a			; 3d ;0b72
	jr z,l0ba0h		; 28 2b ;0b73
	dec a			; 3d ;0b75
	jr z,l0b8fh		; 28 17 ;0b76
	dec a			; 3d ;0b78
	jr z,l0b81h		; 28 06 ;0b79
	ld a,(0c044h)		; 3a 44 c0 ;0b7b
	or a			; b7 ;0b7e
	jr nz,l0ba0h		; 20 1f ;0b7f
l0b81h:
	ld hl,0c045h		; 21 45 c0 ;0b81
	ld a,(hl)			; 7e ;0b84
	inc a			; 3c ;0b85
	cp 004h		; fe 04 ;0b86
	jr nz,l0b8ch		; 20 02 ;0b88
	ld a,000h		; 3e 00 ;0b8a
l0b8ch:
	ld (hl),a			; 77 ;0b8c
	jr l0ba0h		; 18 11 ;0b8d
l0b8fh:
	ld hl,0c044h		; 21 44 c0 ;0b8f
	ld (hl),000h		; 36 00 ;0b92
	inc hl			; 23 ;0b94
	ld a,(hl)			; 7e ;0b95
	inc a			; 3c ;0b96
	cp 004h		; fe 04 ;0b97
	jr nz,l0b9dh		; 20 02 ;0b99
	ld a,000h		; 3e 00 ;0b9b
l0b9dh:
	ld (hl),a			; 77 ;0b9d
	jr l0ba8h		; 18 08 ;0b9e
l0ba0h:
	ld hl,0c044h		; 21 44 c0 ;0ba0
	ld a,(hl)			; 7e ;0ba3
	inc a			; 3c ;0ba4
	and 001h		; e6 01 ;0ba5
	ld (hl),a			; 77 ;0ba7
l0ba8h:
	ld hl,l0c43h		; 21 43 0c ;0ba8
	ld a,(0c000h)		; 3a 00 c0 ;0bab
	bit 7,a		; cb 7f ;0bae
	jr nz,l0bb5h		; 20 03 ;0bb0
	ld hl,l0c3fh		; 21 3f 0c ;0bb2
l0bb5h:
	ld a,(0c045h)		; 3a 45 c0 ;0bb5
	ld e,a			; 5f ;0bb8
	ld d,000h		; 16 00 ;0bb9
	add hl,de			; 19 ;0bbb
	ld a,(hl)			; 7e ;0bbc
	ld (0c041h),a		; 32 41 c0 ;0bbd
	ld hl,l0c57h		; 21 57 0c ;0bc0
	ld a,(0c000h)		; 3a 00 c0 ;0bc3
	bit 7,a		; cb 7f ;0bc6
	jr nz,l0bcdh		; 20 03 ;0bc8
	ld hl,l0c47h		; 21 47 0c ;0bca
l0bcdh:
	ld a,(0c041h)		; 3a 41 c0 ;0bcd
	add a,a			; 87 ;0bd0
	add a,a			; 87 ;0bd1
	ld e,a			; 5f ;0bd2
	ld d,000h		; 16 00 ;0bd3
	add hl,de			; 19 ;0bd5
	ld a,(hl)			; 7e ;0bd6
	ld (0c202h),a		; 32 02 c2 ;0bd7
	inc hl			; 23 ;0bda
	ld a,(hl)			; 7e ;0bdb
	ld (0c242h),a		; 32 42 c2 ;0bdc
	inc hl			; 23 ;0bdf
	ld a,(hl)			; 7e ;0be0
	ld (0c282h),a		; 32 82 c2 ;0be1
	inc hl			; 23 ;0be4
	ld a,(hl)			; 7e ;0be5
	ld (0c2c2h),a		; 32 c2 c2 ;0be6
	ld a,04fh		; 3e 4f ;0be9
	ld (0c344h),a		; 32 44 c3 ;0beb
	ld a,050h		; 3e 50 ;0bee
	ld (0c304h),a		; 32 04 c3 ;0bf0
	ld a,018h		; 3e 18 ;0bf3
	ld (0c302h),a		; 32 02 c3 ;0bf5
	ld a,016h		; 3e 16 ;0bf8
	ld (0c342h),a		; 32 42 c3 ;0bfa
	xor a			; af ;0bfd
	ld (0c303h),a		; 32 03 c3 ;0bfe
	ld (0c343h),a		; 32 43 c3 ;0c01
	ld a,(0c041h)		; 3a 41 c0 ;0c04
	ld e,a			; 5f ;0c07
	ld d,000h		; 16 00 ;0c08
	ld hl,l0c67h		; 21 67 0c ;0c0a
	add hl,de			; 19 ;0c0d
	ld a,(hl)			; 7e ;0c0e
	ld (0c312h),a		; 32 12 c3 ;0c0f
	ld hl,0c1c1h		; 21 c1 c1 ;0c12
	ld de,l0040h		; 11 40 00 ;0c15
	xor a			; af ;0c18
	ld b,006h		; 06 06 ;0c19
l0c1bh:
	add hl,de			; 19 ;0c1b
	ld (hl),a			; 77 ;0c1c
	inc a			; 3c ;0c1d
	djnz l0c1bh		; 10 fb ;0c1e
	ld a,(0c041h)		; 3a 41 c0 ;0c20
	ld (0c042h),a		; 32 42 c0 ;0c23
	ld hl,0c000h		; 21 00 c0 ;0c26
	set 2,(hl)		; cb d6 ;0c29
	ld a,001h		; 3e 01 ;0c2b
	ld (0c011h),a		; 32 11 c0 ;0c2d
	ld (0c48ch),a		; 32 8c c4 ;0c30
	ld a,004h		; 3e 04 ;0c33
	bit 3,(hl)		; cb 5e ;0c35
	jr z,l0c3bh		; 28 02 ;0c37
	or 080h		; f6 80 ;0c39
l0c3bh:
	ld (0c006h),a		; 32 06 c0 ;0c3b
	ret			; c9 ;0c3e
l0c3fh:
	nop			; 00 ;0c3f
	ld bc,000ffh+1		; 01 00 01 ;0c40
l0c43h:
	nop			; 00 ;0c43
	ld bc,00302h		; 01 02 03 ;0c44
l0c47h:
	inc bc			; 03 ;0c47
	ld (bc),a			; 02 ;0c48
	nop			; 00 ;0c49
	nop			; 00 ;0c4a
	ld bc,l0003h		; 01 03 00 ;0c4b
	nop			; 00 ;0c4e
	nop			; 00 ;0c4f
	nop			; 00 ;0c50
	nop			; 00 ;0c51
	nop			; 00 ;0c52
	nop			; 00 ;0c53
	nop			; 00 ;0c54
	nop			; 00 ;0c55
	nop			; 00 ;0c56
l0c57h:
	inc bc			; 03 ;0c57
	ld (bc),a			; 02 ;0c58
	ld bc,00102h		; 01 02 01 ;0c59
	inc bc			; 03 ;0c5c
	ld bc,00102h		; 01 02 01 ;0c5d
	ld (bc),a			; 02 ;0c60
	inc bc			; 03 ;0c61
	ld (bc),a			; 02 ;0c62
	ld bc,00102h		; 01 02 01 ;0c63
	inc bc			; 03 ;0c66
l0c67h:
	ld (bc),a			; 02 ;0c67
	ld bc,00102h		; 01 02 01 ;0c68
	ld hl,0c007h		; 21 07 c0 ;0c6b
	ld a,(hl)			; 7e ;0c6e
	dec a			; 3d ;0c6f
	jr z,l0c8eh		; 28 1c ;0c70
	dec a			; 3d ;0c72
	jr z,l0c99h		; 28 24 ;0c73
	dec a			; 3d ;0c75
	jr z,l0cbah		; 28 42 ;0c76
	dec a			; 3d ;0c78
	jp z,l0d25h		; ca 25 0d ;0c79
	dec a			; 3d ;0c7c
	jp z,l0d3eh		; ca 3e 0d ;0c7d
	ld (hl),001h		; 36 01 ;0c80
	ld hl,l0078h		; 21 78 00 ;0c82
	ld (0c08ah),hl		; 22 8a c0 ;0c85
	call sub_0d84h		; cd 84 0d ;0c88
	jp l2ee1h		; c3 e1 2e ;0c8b
l0c8eh:
	call sub_03adh		; cd ad 03 ;0c8e
	jp nz,l0b1eh		; c2 1e 0b ;0c91
	ld a,002h		; 3e 02 ;0c94
	ld (0c007h),a		; 32 07 c0 ;0c96
l0c99h:
	ld a,(0c040h)		; 3a 40 c0 ;0c99
	bit 7,a		; cb 7f ;0c9c
	jp nz,l0b1eh		; c2 1e 0b ;0c9e
	ld hl,0c000h		; 21 00 c0 ;0ca1
	res 2,(hl)		; cb 96 ;0ca4
	ld a,003h		; 3e 03 ;0ca6
	ld (0c007h),a		; 32 07 c0 ;0ca8
	call sub_2feah		; cd ea 2f ;0cab
	ld a,(0c000h)		; 3a 00 c0 ;0cae
	bit 3,a		; cb 5f ;0cb1
	ret z			; c8 ;0cb3
	ld a,000h		; 3e 00 ;0cb4
	ld (0de00h),a		; 32 00 de ;0cb6
	ret			; c9 ;0cb9
l0cbah:
	ld a,(0c48bh)		; 3a 8b c4 ;0cba
	bit 0,a		; cb 47 ;0cbd
	jp nz,l0d5fh		; c2 5f 0d ;0cbf
	ld a,(0c481h)		; 3a 81 c4 ;0cc2
	bit 0,a		; cb 47 ;0cc5
	jr nz,l0d07h		; 20 3e ;0cc7
	ld a,(0c495h)		; 3a 95 c4 ;0cc9
	bit 0,a		; cb 47 ;0ccc
	jp z,l0d63h		; ca 63 0d ;0cce
l0cd1h:
	ld hl,0c100h		; 21 00 c1 ;0cd1
	ld (hl),0d0h		; 36 d0 ;0cd4
	ld a,080h		; 3e 80 ;0cd6
	ld (0c089h),a		; 32 89 c0 ;0cd8
	xor a			; af ;0cdb
	ld (0c202h),a		; 32 02 c2 ;0cdc
	ld (0c242h),a		; 32 42 c2 ;0cdf
	ld (0c282h),a		; 32 82 c2 ;0ce2
	ld (0c2c2h),a		; 32 c2 c2 ;0ce5
	ld (0c302h),a		; 32 02 c3 ;0ce8
	ld (0c302h),a		; 32 02 c3 ;0ceb
	ld a,004h		; 3e 04 ;0cee
	ld (0c007h),a		; 32 07 c0 ;0cf0
	call sub_31b8h		; cd b8 31 ;0cf3
	ld a,(0c481h)		; 3a 81 c4 ;0cf6
	bit 0,a		; cb 47 ;0cf9
	ret z			; c8 ;0cfb
	ld a,(0c045h)		; 3a 45 c0 ;0cfc
	ld (0c51ch),a		; 32 1c c5 ;0cff
	xor a			; af ;0d02
	ld (0c51bh),a		; 32 1b c5 ;0d03
	ret			; c9 ;0d06
l0d07h:
	ld a,(0c495h)		; 3a 95 c4 ;0d07
	bit 0,a		; cb 47 ;0d0a
	jr z,l0d1ah		; 28 0c ;0d0c
	ld a,(0c51ch)		; 3a 1c c5 ;0d0e
	ld (0c045h),a		; 32 45 c0 ;0d11
	xor a			; af ;0d14
	ld (0c481h),a		; 32 81 c4 ;0d15
	jr l0cd1h		; 18 b7 ;0d18
l0d1ah:
	ld hl,0c51bh		; 21 1b c5 ;0d1a
	ld a,(hl)			; 7e ;0d1d
	or a			; b7 ;0d1e
	jr nz,l0d6fh		; 20 4e ;0d1f
	ld (hl),001h		; 36 01 ;0d21
	jr l0d6bh		; 18 46 ;0d23
l0d25h:
	ld a,(0c495h)		; 3a 95 c4 ;0d25
	bit 1,a		; cb 4f ;0d28
	jr z,l0d67h		; 28 3b ;0d2a
	bit 2,a		; cb 57 ;0d2c
	jr z,l0d67h		; 28 37 ;0d2e
	ld a,005h		; 3e 05 ;0d30
	ld (0c007h),a		; 32 07 c0 ;0d32
	ld hl,000b4h		; 21 b4 00 ;0d35
	ld (0c08ah),hl		; 22 8a c0 ;0d38
	jp l33c4h		; c3 c4 33 ;0d3b
l0d3eh:
	ld hl,0c089h		; 21 89 c0 ;0d3e
	set 7,(hl)		; cb fe ;0d41
	call sub_03adh		; cd ad 03 ;0d43
	ret nz			; c0 ;0d46
l0d47h:
	xor a			; af ;0d47
	ld (0c000h),a		; 32 00 c0 ;0d48
	ld hl,0c006h		; 21 06 c0 ;0d4b
	ld (hl),080h		; 36 80 ;0d4e
	inc hl			; 23 ;0d50
	ld (hl),a			; 77 ;0d51
	ld hl,0c040h		; 21 40 c0 ;0d52
	ld de,0c041h		; 11 41 c0 ;0d55
	ld bc,l0529h		; 01 29 05 ;0d58
	ld (hl),a			; 77 ;0d5b
	ldir		; ed b0 ;0d5c
	ret			; c9 ;0d5e
l0d5fh:
	ld a,000h		; 3e 00 ;0d5f
	jr l0d71h		; 18 0e ;0d61
l0d63h:
	ld a,001h		; 3e 01 ;0d63
	jr l0d71h		; 18 0a ;0d65
l0d67h:
	ld a,002h		; 3e 02 ;0d67
	jr l0d71h		; 18 06 ;0d69
l0d6bh:
	ld a,003h		; 3e 03 ;0d6b
	jr l0d71h		; 18 02 ;0d6d
l0d6fh:
	ld a,004h		; 3e 04 ;0d6f
l0d71h:
	ld (0c043h),a		; 32 43 c0 ;0d71
	ld a,(0c000h)		; 3a 00 c0 ;0d74
	bit 3,a		; cb 5f ;0d77
	jr nz,l0d47h		; 20 cc ;0d79
	ld hl,0c006h		; 21 06 c0 ;0d7b
	ld (hl),005h		; 36 05 ;0d7e
	inc hl			; 23 ;0d80
	ld (hl),000h		; 36 00 ;0d81
	ret			; c9 ;0d83
sub_0d84h:
	ld a,(0c518h)		; 3a 18 c5 ;0d84
	dec a			; 3d ;0d87
	jr z,l0db5h		; 28 2b ;0d88
	dec a			; 3d ;0d8a
	jr z,l0da4h		; 28 17 ;0d8b
	dec a			; 3d ;0d8d
	jr z,l0d9ah		; 28 0a ;0d8e
	ld a,(0c041h)		; 3a 41 c0 ;0d90
	ld (0c042h),a		; 32 42 c0 ;0d93
	ld c,000h		; 0e 00 ;0d96
	jr l0dc0h		; 18 26 ;0d98
l0d9ah:
	ld a,(0c519h)		; 3a 19 c5 ;0d9a
	or a			; b7 ;0d9d
	jr nz,l0da4h		; 20 04 ;0d9e
	ld c,000h		; 0e 00 ;0da0
	jr l0dc0h		; 18 1c ;0da2
l0da4h:
	ld c,001h		; 0e 01 ;0da4
	ld a,(0c519h)		; 3a 19 c5 ;0da6
	dec a			; 3d ;0da9
	jr z,l0dc0h		; 28 14 ;0daa
	ld c,000h		; 0e 00 ;0dac
	dec a			; 3d ;0dae
	jr z,l0dc0h		; 28 0f ;0daf
	ld c,002h		; 0e 02 ;0db1
	jr l0dc0h		; 18 0b ;0db3
l0db5h:
	ld c,002h		; 0e 02 ;0db5
	ld a,(0c040h)		; 3a 40 c0 ;0db7
	bit 0,a		; cb 47 ;0dba
	jr nz,l0dc0h		; 20 02 ;0dbc
	ld c,003h		; 0e 03 ;0dbe
l0dc0h:
	ld a,(0c042h)		; 3a 42 c0 ;0dc0
	ld e,a			; 5f ;0dc3
	ld d,000h		; 16 00 ;0dc4
	ld hl,l0e00h		; 21 00 0e ;0dc6
	add hl,de			; 19 ;0dc9
	ld a,(hl)			; 7e ;0dca
	or c			; b1 ;0dcb
	ld (0c480h),a		; 32 80 c4 ;0dcc
	ret			; c9 ;0dcf
l0dd0h:
	ld d,c			; 51 ;0dd0
	add a,b			; 80 ;0dd1
	ld d,d			; 52 ;0dd2
	add a,b			; 80 ;0dd3
	add a,b			; 80 ;0dd4
	xor (hl)			; ae ;0dd5
	add a,b			; 80 ;0dd6
	xor l			; ad ;0dd7
	add a,b			; 80 ;0dd8
	xor (hl)			; ae ;0dd9
	ld d,d			; 52 ;0dda
	add a,b			; 80 ;0ddb
	ld d,c			; 51 ;0ddc
	add a,b			; 80 ;0ddd
	ld d,d			; 52 ;0dde
	add a,b			; 80 ;0ddf
	add a,b			; 80 ;0de0
	xor (hl)			; ae ;0de1
	add a,b			; 80 ;0de2
	xor l			; ad ;0de3
	add a,b			; 80 ;0de4
	xor (hl)			; ae ;0de5
	ld d,d			; 52 ;0de6
	add a,b			; 80 ;0de7
l0de8h:
	add hl,hl			; 29 ;0de8
	add a,b			; 80 ;0de9
	ld d,d			; 52 ;0dea
	xor (hl)			; ae ;0deb
	ld b,h			; 44 ;0dec
	cp h			; bc ;0ded
	add a,b			; 80 ;0dee
	out (052h),a		; d3 52 ;0def
	xor (hl)			; ae ;0df1
	ld b,h			; 44 ;0df2
	cp h			; bc ;0df3
	add hl,hl			; 29 ;0df4
	add a,b			; 80 ;0df5
	ld d,d			; 52 ;0df6
	xor (hl)			; ae ;0df7
	ld b,h			; 44 ;0df8
	cp h			; bc ;0df9
	add a,b			; 80 ;0dfa
	out (052h),a		; d3 52 ;0dfb
	xor (hl)			; ae ;0dfd
	ld b,h			; 44 ;0dfe
	cp h			; bc ;0dff
l0e00h:
	ld b,b			; 40 ;0e00
	add a,b			; 80 ;0e01
	ld b,b			; 40 ;0e02
	add a,b			; 80 ;0e03
sub_0e04h:
	ld a,(0c518h)		; 3a 18 c5 ;0e04
	or a			; b7 ;0e07
	ret nz			; c0 ;0e08
	ld a,(0c040h)		; 3a 40 c0 ;0e09
	bit 0,a		; cb 47 ;0e0c
	jr z,l0e3bh		; 28 2b ;0e0e
	ld a,(0c041h)		; 3a 41 c0 ;0e10
	add a,a			; 87 ;0e13
	ld e,a			; 5f ;0e14
	add a,a			; 87 ;0e15
	add a,e			; 83 ;0e16
	ld e,a			; 5f ;0e17
	ld d,000h		; 16 00 ;0e18
	ld hl,l0dd0h		; 21 d0 0d ;0e1a
	add hl,de			; 19 ;0e1d
	ld a,(0c509h)		; 3a 09 c5 ;0e1e
	cp (hl)			; be ;0e21
	jr c,l0e6fh		; 38 4b ;0e22
	inc hl			; 23 ;0e24
	cp (hl)			; be ;0e25
	jr nc,l0e6fh		; 30 47 ;0e26
	inc hl			; 23 ;0e28
	ld a,(0c044h)		; 3a 44 c0 ;0e29
	add a,a			; 87 ;0e2c
	ld e,a			; 5f ;0e2d
	add hl,de			; 19 ;0e2e
	ld a,(0c50bh)		; 3a 0b c5 ;0e2f
	cp (hl)			; be ;0e32
	jr c,l0e6fh		; 38 3a ;0e33
	inc hl			; 23 ;0e35
	cp (hl)			; be ;0e36
	jr c,l0e67h		; 38 2e ;0e37
	jr l0e6fh		; 18 34 ;0e39
l0e3bh:
	ld a,(0c042h)		; 3a 42 c0 ;0e3b
	add a,a			; 87 ;0e3e
	ld e,a			; 5f ;0e3f
	add a,a			; 87 ;0e40
	add a,e			; 83 ;0e41
	ld e,a			; 5f ;0e42
	ld d,000h		; 16 00 ;0e43
	ld hl,l0de8h		; 21 e8 0d ;0e45
	add hl,de			; 19 ;0e48
	ld a,(0c509h)		; 3a 09 c5 ;0e49
	cp (hl)			; be ;0e4c
	jr c,l0e6bh		; 38 1c ;0e4d
	inc hl			; 23 ;0e4f
	cp (hl)			; be ;0e50
	jr nc,l0e6bh		; 30 18 ;0e51
	inc hl			; 23 ;0e53
	ld a,(0c000h)		; 3a 00 c0 ;0e54
	bit 7,a		; cb 7f ;0e57
	jr z,l0e5dh		; 28 02 ;0e59
	inc hl			; 23 ;0e5b
	inc hl			; 23 ;0e5c
l0e5dh:
	ld a,(0c50bh)		; 3a 0b c5 ;0e5d
	cp (hl)			; be ;0e60
	jr c,l0e6bh		; 38 08 ;0e61
	inc hl			; 23 ;0e63
	cp (hl)			; be ;0e64
	jr nc,l0e6bh		; 30 04 ;0e65
l0e67h:
	ld a,002h		; 3e 02 ;0e67
	jr l0e7bh		; 18 10 ;0e69
l0e6bh:
	ld a,001h		; 3e 01 ;0e6b
	jr l0e71h		; 18 02 ;0e6d
l0e6fh:
	ld a,003h		; 3e 03 ;0e6f
l0e71h:
	ld hl,0c000h		; 21 00 c0 ;0e71
	res 0,(hl)		; cb 86 ;0e74
	ld hl,0c518h		; 21 18 c5 ;0e76
	ld (hl),002h		; 36 02 ;0e79
l0e7bh:
	ld (0c519h),a		; 32 19 c5 ;0e7b
	ret			; c9 ;0e7e
sub_0e7fh:
	ld hl,l0eaah		; 21 aa 0e ;0e7f
	ld a,(0c509h)		; 3a 09 c5 ;0e82
	cp (hl)			; be ;0e85
	jr c,l0ea4h		; 38 1c ;0e86
	inc hl			; 23 ;0e88
	cp (hl)			; be ;0e89
	jr nc,l0ea4h		; 30 18 ;0e8a
	inc hl			; 23 ;0e8c
	ld a,(0c000h)		; 3a 00 c0 ;0e8d
	bit 7,a		; cb 7f ;0e90
	jr z,l0e96h		; 28 02 ;0e92
	inc hl			; 23 ;0e94
	inc hl			; 23 ;0e95
l0e96h:
	ld a,(0c50bh)		; 3a 0b c5 ;0e96
	cp (hl)			; be ;0e99
	jr c,l0ea4h		; 38 08 ;0e9a
	inc hl			; 23 ;0e9c
	cp (hl)			; be ;0e9d
	jr nc,l0ea4h		; 30 04 ;0e9e
	ld a,000h		; 3e 00 ;0ea0
	jr l0ea6h		; 18 02 ;0ea2
l0ea4h:
	ld a,001h		; 3e 01 ;0ea4
l0ea6h:
	ld (0c51dh),a		; 32 1d c5 ;0ea6
	ret			; c9 ;0ea9
l0eaah:
	add hl,hl			; 29 ;0eaa
	out (052h),a		; d3 52 ;0eab
	xor (hl)			; ae ;0ead
	ld b,h			; 44 ;0eae
	cp h			; bc ;0eaf
	ld hl,0c006h		; 21 06 c0 ;0eb0
	bit 6,(hl)		; cb 76 ;0eb3
	jr nz,l0eefh		; 20 38 ;0eb5
	set 6,(hl)		; cb f6 ;0eb7
	ld a,(0c010h)		; 3a 10 c0 ;0eb9
	or a			; b7 ;0ebc
	jr nz,l0ef3h		; 20 34 ;0ebd
	di			; f3 ;0ebf
	call sub_disable_display		; cd a4 03 ;0ec0
	call sub_init_background_name_table		; cd 88 03 ;0ec3
	ld hl,l2c00h		; 21 00 2c ;0ec6
	ld de,0c76ch		; 11 6c c7 ;0ec9
	ld bc,000e0h		; 01 e0 00 ;0ecc
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
	ld (0c08ah),hl		; 22 8a c0 ;0eeb
	ret			; c9 ;0eee
l0eefh:
	call sub_03adh		; cd ad 03 ;0eef
	ret nz			; c0 ;0ef2
l0ef3h:
	ld hl,0c006h		; 21 06 c0 ;0ef3
	ld (hl),081h		; 36 81 ;0ef6
	ret			; c9 ;0ef8
sub_0ef9h:
	ld hl,0c006h		; 21 06 c0 ;0ef9
	bit 6,(hl)		; cb 76 ;0efc
	ret z			; c8 ;0efe
	bit 5,(hl)		; cb 6e ;0eff
	ret nz			; c0 ;0f01
l0f02h:
	set 5,(hl)		; cb ee ;0f02
	ld hl,start		; 21 00 00 ;0f04
	ld de,l002dh		; 11 2d 00 ;0f07
	ld b,002h		; 06 02 ;0f0a
	call sub_load_cram		; cd 81 04 ;0f0c
	ld hl,l0010h		; 21 10 00 ;0f0f
	ld de,l002dh		; 11 2d 00 ;0f12
	ld b,001h		; 06 01 ;0f15
	jp sub_load_cram		; c3 81 04 ;0f17
	jp l1548h		; c3 48 15 ;0f1a
	ld a,(0c30dh)		; 3a 0d c3 ;0f1d
	ld (ix+00dh),a		; dd 77 0d ;0f20
	ld a,(0c30bh)		; 3a 0b c3 ;0f23
	inc a			; 3c ;0f26
	ld (ix+014h),a		; dd 77 14 ;0f27
	ld l,a			; 6f ;0f2a
	ld h,000h		; 26 00 ;0f2b
	add hl,hl			; 29 ;0f2d
	ld de,0cee6h		; 11 e6 ce ;0f2e
	add hl,de			; 19 ;0f31
	ld c,(hl)			; 4e ;0f32
	inc hl			; 23 ;0f33
	ld b,(hl)			; 46 ;0f34
	ld de,(0c500h)		; ed 5b 00 c5 ;0f35
	call sub_mul_de_bc		; cd f7 03 ;0f39
	ld d,e			; 53 ;0f3c
	ld e,h			; 5c ;0f3d
	xor a			; af ;0f3e
	ld hl,(0c30ah)		; 2a 0a c3 ;0f3f
	sbc hl,de		; ed 52 ;0f42
	ld (ix+00ah),l		; dd 75 0a ;0f44
	ld (ix+00bh),h		; dd 74 0b ;0f47
	jp l065ch		; c3 5c 06 ;0f4a
	ld a,(ix+003h)		; dd 7e 03 ;0f4d
	dec a			; 3d ;0f50
	jr z,l0f79h		; 28 26 ;0f51
	ld (ix+003h),001h		; dd 36 03 01 ;0f53
	ld hl,0ff00h		; 21 00 ff ;0f57
	ld (VEL_Y),hl		; 22 06 c5 ;0f5a
	ld hl,l0004h		; 21 04 00 ;0f5d
	ld (0c502h),hl		; 22 02 c5 ;0f60
	ld hl,start		; 21 00 00 ;0f63
	ld (VEL_Z),hl		; 22 0e c5 ;0f66
	ld (VEL_X),hl		; 22 0c c5 ;0f69
	ld hl,0c040h		; 21 40 c0 ;0f6c
	set 7,(hl)		; cb fe ;0f6f
	set 0,(hl)		; cb c6 ;0f71
	ld hl,0c000h		; 21 00 c0 ;0f73
	set 0,(hl)		; cb c6 ;0f76
	ret			; c9 ;0f78
l0f79h:
	xor a			; af ;0f79
	ld de,l1300h		; 11 00 13 ;0f7a
	ld hl,(0c500h)		; 2a 00 c5 ;0f7d
	sbc hl,de		; ed 52 ;0f80
	jr z,l0f86h		; 28 02 ;0f82
	jr nc,l0fa2h		; 30 1c ;0f84
l0f86h:
	ld hl,0c040h		; 21 40 c0 ;0f86
	bit 6,(hl)		; cb 76 ;0f89
	jr nz,l0f95h		; 20 08 ;0f8b
	res 7,(hl)		; cb be ;0f8d
	ld (ix+002h),018h		; dd 36 02 18 ;0f8f
	jr l0f99h		; 18 04 ;0f93
l0f95h:
	ld (ix+002h),015h		; dd 36 02 15 ;0f95
l0f99h:
	ld (ix+003h),000h		; dd 36 03 00 ;0f99
	ld hl,0c000h		; 21 00 c0 ;0f9d
	res 0,(hl)		; cb 86 ;0fa0
l0fa2h:
	jp l1548h		; c3 48 15 ;0fa2
	ld hl,l1300h		; 21 00 13 ;0fa5
	ld (0c500h),hl		; 22 00 c5 ;0fa8
	ld a,(0c041h)		; 3a 41 c0 ;0fab
	add a,a			; 87 ;0fae
	add a,a			; 87 ;0faf
	add a,a			; 87 ;0fb0
	ld e,a			; 5f ;0fb1
	ld d,000h		; 16 00 ;0fb2
	ld hl,l0fffh		; 21 ff 0f ;0fb4
	add hl,de			; 19 ;0fb7
	ld e,(hl)			; 5e ;0fb8
	inc hl			; 23 ;0fb9
	ld d,(hl)			; 56 ;0fba
	ld (0c508h),de		; ed 53 08 c5 ;0fbb
	inc hl			; 23 ;0fbf
	ld c,(hl)			; 4e ;0fc0
	inc hl			; 23 ;0fc1
	ld b,(hl)			; 46 ;0fc2
	inc hl			; 23 ;0fc3
	ld e,(hl)			; 5e ;0fc4
	inc hl			; 23 ;0fc5
	ld d,(hl)			; 56 ;0fc6
	inc hl			; 23 ;0fc7
	ld a,(hl)			; 7e ;0fc8
	inc hl			; 23 ;0fc9
	ld h,(hl)			; 66 ;0fca
	ld l,a			; 6f ;0fcb
	ld a,(hl)			; 7e ;0fcc
	inc hl			; 23 ;0fcd
	ld h,(hl)			; 66 ;0fce
	ld l,a			; 6f ;0fcf
	add hl,de			; 19 ;0fd0
	ld de,08000h		; 11 00 80 ;0fd1
	xor a			; af ;0fd4
	ex de,hl			; eb ;0fd5
	sbc hl,de		; ed 52 ;0fd6
	push af			; f5 ;0fd8
	jr nc,l0fe2h		; 30 07 ;0fd9
	xor a			; af ;0fdb
	ld de,start		; 11 00 00 ;0fdc
	ex de,hl			; eb ;0fdf
	sbc hl,de		; ed 52 ;0fe0
l0fe2h:
	ld de,start		; 11 00 00 ;0fe2
	ex de,hl			; eb ;0fe5
	call sub_div_hl_de_bc		; cd 0b 04 ;0fe6
	ld d,e			; 53 ;0fe9
	ld e,h			; 5c ;0fea
	ld hl,08000h		; 21 00 80 ;0feb
	pop af			; f1 ;0fee
	jr nc,l0ff6h		; 30 05 ;0fef
	xor a			; af ;0ff1
	adc hl,de		; ed 5a ;0ff2
	jr l0ff9h		; 18 03 ;0ff4
l0ff6h:
	xor a			; af ;0ff6
	sbc hl,de		; ed 52 ;0ff7
l0ff9h:
	ld (0c50ah),hl		; 22 0a c5 ;0ff9
	jp l1548h		; c3 48 15 ;0ffc
l0fffh:
	nop			; 00 ;0fff
l1000h:
	out (095h),a		; d3 95 ;1000
	ld bc,00c00h		; 01 00 0c ;1002
	inc c			; 0c ;1005
	jp nz,02700h		; c2 00 27 ;1006
	out (000h),a		; d3 00 ;1009
	nop			; 00 ;100b
	jp m,0c24ch		; fa 4c c2 ;100c
	nop			; 00 ;100f
	out (095h),a		; d3 95 ;1010
	ld bc,00c00h		; 01 00 0c ;1012
	adc a,h			; 8c ;1015
	jp nz,02700h		; c2 00 27 ;1016
	out (000h),a		; d3 00 ;1019
	nop			; 00 ;101b
	jp m,0c2cch		; fa cc c2 ;101c
	ld a,08ch		; 3e 8c ;101f
	ld (0de00h),a		; 32 00 de ;1021
	ld hl,l10ebh		; 21 eb 10 ;1024
	ld a,(0c046h)		; 3a 46 c0 ;1027
	add a,a			; 87 ;102a
	ld e,a			; 5f ;102b
	ld d,000h		; 16 00 ;102c
	add hl,de			; 19 ;102e
	ld c,(hl)			; 4e ;102f
	inc hl			; 23 ;1030
	ld b,(hl)			; 46 ;1031
	push bc			; c5 ;1032
	ld hl,l10bbh		; 21 bb 10 ;1033
	ld a,(0c041h)		; 3a 41 c0 ;1036
	add a,a			; 87 ;1039
	add a,a			; 87 ;103a
	ld e,a			; 5f ;103b
	ld a,(0c044h)		; 3a 44 c0 ;103c
	add a,a			; 87 ;103f
	add a,e			; 83 ;1040
	ld e,a			; 5f ;1041
	add hl,de			; 19 ;1042
	ld c,(hl)			; 4e ;1043
	inc hl			; 23 ;1044
	ld b,(hl)			; 46 ;1045
	push bc			; c5 ;1046
	ld a,(0c041h)		; 3a 41 c0 ;1047
	add a,a			; 87 ;104a
	ld e,a			; 5f ;104b
	ld hl,l10b3h		; 21 b3 10 ;104c
	add hl,de			; 19 ;104f
	ld a,(0c044h)		; 3a 44 c0 ;1050
	or a			; b7 ;1053
	jr z,l1057h		; 28 01 ;1054
	inc hl			; 23 ;1056
l1057h:
	ld a,(0c50bh)		; 3a 0b c5 ;1057
	sub (hl)			; 96 ;105a
	rrca			; 0f ;105b
	rrca			; 0f ;105c
	rrca			; 0f ;105d
	and 007h		; e6 07 ;105e
	cp 004h		; fe 04 ;1060
	jr c,l1066h		; 38 02 ;1062
	ld a,003h		; 3e 03 ;1064
l1066h:
	add a,a			; 87 ;1066
	ld e,a			; 5f ;1067
	pop hl			; e1 ;1068
	add hl,de			; 19 ;1069
	ld a,r		; ed 5f ;106a
	and 001h		; e6 01 ;106c
	jr z,l1071h		; 28 01 ;106e
	inc hl			; 23 ;1070
l1071h:
	ld a,(hl)			; 7e ;1071
	add a,a			; 87 ;1072
	add a,a			; 87 ;1073
	add a,a			; 87 ;1074
	ld e,a			; 5f ;1075
	pop hl			; e1 ;1076
	add hl,de			; 19 ;1077
	ld e,(hl)			; 5e ;1078
	inc hl			; 23 ;1079
	ld d,(hl)			; 56 ;107a
	inc hl			; 23 ;107b
	ld c,(hl)			; 4e ;107c
	inc hl			; 23 ;107d
	ld b,(hl)			; 46 ;107e
	push de			; d5 ;107f
	push bc			; c5 ;1080
	inc hl			; 23 ;1081
	ld e,(hl)			; 5e ;1082
	inc hl			; 23 ;1083
	ld d,(hl)			; 56 ;1084
	inc hl			; 23 ;1085
	ld c,(hl)			; 4e ;1086
	inc hl			; 23 ;1087
	ld b,(hl)			; 46 ;1088
	ld a,(0c041h)		; 3a 41 c0 ;1089
	and 001h		; e6 01 ;108c
	jr z,l10a0h		; 28 10 ;108e
	xor a			; af ;1090
	ld hl,start		; 21 00 00 ;1091
	sbc hl,de		; ed 52 ;1094
	push hl			; e5 ;1096
	xor a			; af ;1097
	ld hl,start		; 21 00 00 ;1098
	sbc hl,bc		; ed 42 ;109b
	push hl			; e5 ;109d
	pop bc			; c1 ;109e
	pop de			; d1 ;109f
l10a0h:
	ld (VEL_X),de		; ed 53 0c c5 ;10a0
	ld (VEL_Z),bc		; ed 43 0e c5 ;10a4
	pop hl			; e1 ;10a8
	ld (VEL_Y),hl		; 22 06 c5 ;10a9
	pop hl			; e1 ;10ac
l10adh:
	ld (0c502h),hl		; 22 02 c5 ;10ad
	jp 01362h		; c3 62 13 ;10b0
l10b3h:
	sub b			; 90 ;10b3
	ld h,b			; 60 ;10b4
	ld d,b			; 50 ;10b5
	add a,b			; 80 ;10b6
	sub b			; 90 ;10b7
	ld h,b			; 60 ;10b8
	ld d,b			; 50 ;10b9
	add a,b			; 80 ;10ba
l10bbh:
	rl b		; cb 10 ;10bb
	out (010h),a		; d3 10 ;10bd
	in a,(010h)		; db 10 ;10bf
	ex (sp),hl			; e3 ;10c1
	djnz $-53		; 10 cb ;10c2
	djnz $-45		; 10 d3 ;10c4
	djnz $-37		; 10 db ;10c6
	djnz l10adh		; 10 e3 ;10c8
	djnz l10cch		; 10 00 ;10ca
l10cch:
	ld bc,start		; 01 00 00 ;10cc
	inc bc			; 03 ;10cf
	inc bc			; 03 ;10d0
	ld (bc),a			; 02 ;10d1
	inc bc			; 03 ;10d2
	rlca			; 07 ;10d3
	ld b,007h		; 06 07 ;10d4
	rlca			; 07 ;10d6
	inc b			; 04 ;10d7
	inc b			; 04 ;10d8
	dec b			; 05 ;10d9
	inc b			; 04 ;10da
	inc bc			; 03 ;10db
	ld (bc),a			; 02 ;10dc
	ld (bc),a			; 02 ;10dd
	ld (bc),a			; 02 ;10de
	nop			; 00 ;10df
	nop			; 00 ;10e0
	ld bc,00400h		; 01 00 04 ;10e1
	dec b			; 05 ;10e4
	inc b			; 04 ;10e5
	inc b			; 04 ;10e6
	rlca			; 07 ;10e7
	rlca			; 07 ;10e8
	ld b,007h		; 06 07 ;10e9
l10ebh:
	pop af			; f1 ;10eb
	djnz $+49		; 10 31 ;10ec
	ld de,l1171h		; 11 71 11 ;10ee
	inc bc			; 03 ;10f1
	nop			; 00 ;10f2
	ret po			; e0 ;10f3
	rst 38h			; ff ;10f4
	add a,b			; 80 ;10f5
	cp 078h		; fe 78 ;10f6
	rst 38h			; ff ;10f8
	inc bc			; 03 ;10f9
	nop			; 00 ;10fa
	ret po			; e0 ;10fb
	rst 38h			; ff ;10fc
	add a,b			; 80 ;10fd
	cp 0bch		; fe bc ;10fe
	rst 38h			; ff ;1100
	inc bc			; 03 ;1101
	nop			; 00 ;1102
	ret po			; e0 ;1103
	rst 38h			; ff ;1104
	add a,b			; 80 ;1105
	cp 010h		; fe 10 ;1106
	rst 38h			; ff ;1108
	inc bc			; 03 ;1109
	nop			; 00 ;110a
	ret po			; e0 ;110b
	rst 38h			; ff ;110c
	add a,b			; 80 ;110d
	cp 050h		; fe 50 ;110e
	rst 38h			; ff ;1110
	inc bc			; 03 ;1111
	nop			; 00 ;1112
	ret po			; e0 ;1113
	rst 38h			; ff ;1114
	add a,b			; 80 ;1115
	cp 088h		; fe 88 ;1116
	nop			; 00 ;1118
	inc bc			; 03 ;1119
	nop			; 00 ;111a
	ret po			; e0 ;111b
	rst 38h			; ff ;111c
	add a,b			; 80 ;111d
	cp 044h		; fe 44 ;111e
	nop			; 00 ;1120
	inc bc			; 03 ;1121
	nop			; 00 ;1122
	ret po			; e0 ;1123
	rst 38h			; ff ;1124
	add a,b			; 80 ;1125
	cp 0f0h		; fe f0 ;1126
	nop			; 00 ;1128
	inc bc			; 03 ;1129
	nop			; 00 ;112a
	ret po			; e0 ;112b
	rst 38h			; ff ;112c
	add a,b			; 80 ;112d
	cp 0b0h		; fe b0 ;112e
	nop			; 00 ;1130
	dec b			; 05 ;1131
	nop			; 00 ;1132
	ret po			; e0 ;1133
	rst 38h			; ff ;1134
	nop			; 00 ;1135
	cp 048h		; fe 48 ;1136
	rst 38h			; ff ;1138
	dec b			; 05 ;1139
	nop			; 00 ;113a
	ret po			; e0 ;113b
	rst 38h			; ff ;113c
	nop			; 00 ;113d
	cp 0ach		; fe ac ;113e
	rst 38h			; ff ;1140
	dec b			; 05 ;1141
	nop			; 00 ;1142
	ret po			; e0 ;1143
	rst 38h			; ff ;1144
	nop			; 00 ;1145
	cp 0c0h		; fe c0 ;1146
	cp 005h		; fe 05 ;1148
	nop			; 00 ;114a
	ret po			; e0 ;114b
	rst 38h			; ff ;114c
	nop			; 00 ;114d
	cp 016h		; fe 16 ;114e
	rst 38h			; ff ;1150
	dec b			; 05 ;1151
	nop			; 00 ;1152
	ret po			; e0 ;1153
	rst 38h			; ff ;1154
	nop			; 00 ;1155
	cp 0b8h		; fe b8 ;1156
	nop			; 00 ;1158
	dec b			; 05 ;1159
	nop			; 00 ;115a
	ret po			; e0 ;115b
	rst 38h			; ff ;115c
	nop			; 00 ;115d
	cp 05ah		; fe 5a ;115e
	nop			; 00 ;1160
	dec b			; 05 ;1161
	nop			; 00 ;1162
	ret po			; e0 ;1163
	rst 38h			; ff ;1164
	nop			; 00 ;1165
	cp 040h		; fe 40 ;1166
	ld bc,l0005h		; 01 05 00 ;1168
	ret po			; e0 ;116b
	rst 38h			; ff ;116c
	nop			; 00 ;116d
	cp 0eah		; fe ea ;116e
	nop			; 00 ;1170
l1171h:
	dec bc			; 0b ;1171
	nop			; 00 ;1172
	ret po			; e0 ;1173
	rst 38h			; ff ;1174
	nop			; 00 ;1175
	.DB 0fdh,0f0h,0feh	;illegal sequence		;1176
	dec bc			; 0b ;1179
	nop			; 00 ;117a
	ret po			; e0 ;117b
	rst 38h			; ff ;117c
	nop			; 00 ;117d
	.DB 0fdh,078h,0ffh	;illegal sequence		;117e
	dec bc			; 0b ;1181
	nop			; 00 ;1182
	ret po			; e0 ;1183
	rst 38h			; ff ;1184
	nop			; 00 ;1185
	.DB 0fdh,020h,0feh	;illegal sequence		;1186
	dec bc			; 0b ;1189
	nop			; 00 ;118a
	ret po			; e0 ;118b
	rst 38h			; ff ;118c
	nop			; 00 ;118d
	.DB 0fdh,0a0h,0feh	;illegal sequence		;118e
	dec bc			; 0b ;1191
	nop			; 00 ;1192
	ret po			; e0 ;1193
	rst 38h			; ff ;1194
	nop			; 00 ;1195
	.DB 0fdh,010h,001h	;illegal sequence		;1196
	dec bc			; 0b ;1199
	nop			; 00 ;119a
	ret po			; e0 ;119b
	rst 38h			; ff ;119c
	nop			; 00 ;119d
	.DB 0fdh,088h,000h	;illegal sequence		;119e
	dec bc			; 0b ;11a1
	nop			; 00 ;11a2
	ret po			; e0 ;11a3
	rst 38h			; ff ;11a4
	nop			; 00 ;11a5
	.DB 0fdh,0e0h,001h	;illegal sequence		;11a6
	dec bc			; 0b ;11a9
	nop			; 00 ;11aa
	ret po			; e0 ;11ab
	rst 38h			; ff ;11ac
	nop			; 00 ;11ad
	.DB 0fdh,060h	;ld iyh,b		;11ae
	ld bc,08c3eh		; 01 3e 8c ;11b0
	ld (0de00h),a		; 32 00 de ;11b3
	ld a,(0c509h)		; 3a 09 c5 ;11b6
	sub 080h		; d6 80 ;11b9
	jr nc,l11bfh		; 30 02 ;11bb
	neg		; ed 44 ;11bd
l11bfh:
	ld hl,l1215h		; 21 15 12 ;11bf
	cp 01ch		; fe 1c ;11c2
	jr c,l11c9h		; 38 03 ;11c4
	ld hl,l1209h		; 21 09 12 ;11c6
l11c9h:
	ld a,(0c046h)		; 3a 46 c0 ;11c9
	add a,a			; 87 ;11cc
	add a,a			; 87 ;11cd
	ld c,a			; 4f ;11ce
	ld b,000h		; 06 00 ;11cf
	add hl,bc			; 09 ;11d1
	ld e,(hl)			; 5e ;11d2
	inc hl			; 23 ;11d3
	ld d,(hl)			; 56 ;11d4
	inc hl			; 23 ;11d5
	ld c,(hl)			; 4e ;11d6
	inc hl			; 23 ;11d7
	ld b,(hl)			; 46 ;11d8
	ld a,(0c042h)		; 3a 42 c0 ;11d9
	and 001h		; e6 01 ;11dc
	jr z,l11e7h		; 28 07 ;11de
	xor a			; af ;11e0
	ld hl,start		; 21 00 00 ;11e1
	sbc hl,de		; ed 52 ;11e4
	ex de,hl			; eb ;11e6
l11e7h:
	ld (VEL_X),de		; ed 53 0c c5 ;11e7
	ld (VEL_Y),bc		; ed 43 06 c5 ;11eb
	ld hl,l1221h		; 21 21 12 ;11ef
	ld a,(0c046h)		; 3a 46 c0 ;11f2
	add a,a			; 87 ;11f5
	ld c,a			; 4f ;11f6
	ld b,000h		; 06 00 ;11f7
	add hl,bc			; 09 ;11f9
	ld e,(hl)			; 5e ;11fa
	inc hl			; 23 ;11fb
	ld d,(hl)			; 56 ;11fc
	ld (0c502h),de		; ed 53 02 c5 ;11fd
	ld c,002h		; 0e 02 ;1201
	call sub_13a8h		; cd a8 13 ;1203
	jp 01362h		; c3 62 13 ;1206
l1209h:
	ret nz			; c0 ;1209
	.DB 0fdh,0e0h,0ffh	;illegal sequence		;120a
	nop			; 00 ;120d
	.DB 0fdh,0d6h,0ffh	;illegal sequence		;120e
	add a,b			; 80 ;1211
	ei			; fb ;1212
	ret nz			; c0 ;1213
	rst 38h			; ff ;1214
l1215h:
	ret nz			; c0 ;1215
	.DB 0fdh,040h,000h	;illegal sequence		;1216
	nop			; 00 ;1219
	.DB 0fdh,054h	;ld d,iyh		;121a
	nop			; 00 ;121c
	add a,b			; 80 ;121d
	ei			; fb ;121e
	add a,b			; 80 ;121f
	nop			; 00 ;1220
l1221h:
	add hl,bc			; 09 ;1221
	nop			; 00 ;1222
	rrca			; 0f ;1223
	nop			; 00 ;1224
	inc e			; 1c ;1225
	nop			; 00 ;1226
l1227h:
	ld a,08ah		; 3e 8a ;1227
	ld (0de00h),a		; 32 00 de ;1229
	ld hl,l1260h		; 21 60 12 ;122c
	ld a,(0c046h)		; 3a 46 c0 ;122f
	add a,a			; 87 ;1232
	add a,a			; 87 ;1233
	ld c,a			; 4f ;1234
	ld b,000h		; 06 00 ;1235
	add hl,bc			; 09 ;1237
	ld e,(hl)			; 5e ;1238
	inc hl			; 23 ;1239
	ld d,(hl)			; 56 ;123a
	inc hl			; 23 ;123b
	ld c,(hl)			; 4e ;123c
	inc hl			; 23 ;123d
	ld b,(hl)			; 46 ;123e
	ld a,(0c042h)		; 3a 42 c0 ;123f
	and 001h		; e6 01 ;1242
	jr z,l124dh		; 28 07 ;1244
	xor a			; af ;1246
	ld hl,start		; 21 00 00 ;1247
	sbc hl,de		; ed 52 ;124a
	ex de,hl			; eb ;124c
l124dh:
	ld (VEL_X),de		; ed 53 0c c5 ;124d
	ld (VEL_Y),bc		; ed 43 06 c5 ;1251
	call sub_138fh		; cd 8f 13 ;1255
	ld c,003h		; 0e 03 ;1258
	call sub_13a8h		; cd a8 13 ;125a
	jp 01362h		; c3 62 13 ;125d
l1260h:
	nop			; 00 ;1260
	rst 38h			; ff ;1261
	ret nz			; c0 ;1262
	rst 38h			; ff ;1263
	xor e			; ab ;1264
	cp 0abh		; fe ab ;1265
	rst 38h			; ff ;1267
	nop			; 00 ;1268
	cp 050h		; fe 50 ;1269
	rst 38h			; ff ;126b
	ld a,08bh		; 3e 8b ;126c
	ld (0de00h),a		; 32 00 de ;126e
	ld hl,l12c0h		; 21 c0 12 ;1271
	ld a,(0c046h)		; 3a 46 c0 ;1274
	add a,a			; 87 ;1277
	ld c,a			; 4f ;1278
	ld b,000h		; 06 00 ;1279
	add hl,bc			; 09 ;127b
	ld e,(hl)			; 5e ;127c
	inc hl			; 23 ;127d
	ld d,(hl)			; 56 ;127e
	ld a,(0c509h)		; 3a 09 c5 ;127f
	sub 080h		; d6 80 ;1282
	jr nc,l1288h		; 30 02 ;1284
	neg		; ed 44 ;1286
l1288h:
	ld c,000h		; 0e 00 ;1288
	cp 030h		; fe 30 ;128a
	jr c,l1290h		; 38 02 ;128c
	ld c,001h		; 0e 01 ;128e
l1290h:
	ld a,c			; 79 ;1290
	add a,a			; 87 ;1291
	add a,a			; 87 ;1292
	ld c,a			; 4f ;1293
	ld b,000h		; 06 00 ;1294
	ex de,hl			; eb ;1296
	add hl,bc			; 09 ;1297
	ld e,(hl)			; 5e ;1298
	inc hl			; 23 ;1299
	ld d,(hl)			; 56 ;129a
	inc hl			; 23 ;129b
	ld c,(hl)			; 4e ;129c
	inc hl			; 23 ;129d
	ld b,(hl)			; 46 ;129e
	ld a,(0c042h)		; 3a 42 c0 ;129f
	and 001h		; e6 01 ;12a2
	jr z,l12adh		; 28 07 ;12a4
	xor a			; af ;12a6
	ld hl,start		; 21 00 00 ;12a7
	sbc hl,de		; ed 52 ;12aa
	ex de,hl			; eb ;12ac
l12adh:
	ld (VEL_X),de		; ed 53 0c c5 ;12ad
	ld (VEL_Y),bc		; ed 43 06 c5 ;12b1
	call sub_138fh		; cd 8f 13 ;12b5
	ld c,001h		; 0e 01 ;12b8
	call sub_13a8h		; cd a8 13 ;12ba
	jp 01362h		; c3 62 13 ;12bd
l12c0h:
	add a,012h		; c6 12 ;12c0
	adc a,012h		; ce 12 ;12c2
	sub 012h		; d6 12 ;12c4
	ld h,b			; 60 ;12c6
	rst 38h			; ff ;12c7
	djnz $-1		; 10 ff ;12c8
	ld h,b			; 60 ;12ca
	rst 38h			; ff ;12cb
	ret nc			; d0 ;12cc
	cp 02bh		; fe 2b ;12cd
	rst 38h			; ff ;12cf
	ret c			; d8 ;12d0
	cp 02bh		; fe 2b ;12d1
	rst 38h			; ff ;12d3
	add a,b			; 80 ;12d4
	cp 0c0h		; fe c0 ;12d5
	cp 040h		; fe 40 ;12d7
	cp 0c0h		; fe c0 ;12d9
	cp 0d0h		; fe d0 ;12db
	.DB 0fdh,03eh,08ch	;illegal sequence		;12dd
	ld (0de00h),a		; 32 00 de ;12e0
	ld hl,l1338h		; 21 38 13 ;12e3
	ld a,(0c046h)		; 3a 46 c0 ;12e6
	add a,a			; 87 ;12e9
	ld c,a			; 4f ;12ea
	ld b,000h		; 06 00 ;12eb
	add hl,bc			; 09 ;12ed
	ld e,(hl)			; 5e ;12ee
	inc hl			; 23 ;12ef
	ld d,(hl)			; 56 ;12f0
	ld a,(0c509h)		; 3a 09 c5 ;12f1
	sub 080h		; d6 80 ;12f4
	jr nc,l12fah		; 30 02 ;12f6
	neg		; ed 44 ;12f8
l12fah:
	ld c,000h		; 0e 00 ;12fa
	cp 018h		; fe 18 ;12fc
	jr c,l1308h		; 38 08 ;12fe
l1300h:
	ld c,001h		; 0e 01 ;1300
	cp 040h		; fe 40 ;1302
	jr c,l1308h		; 38 02 ;1304
	ld c,002h		; 0e 02 ;1306
l1308h:
	ld a,c			; 79 ;1308
	add a,a			; 87 ;1309
	add a,a			; 87 ;130a
	ld c,a			; 4f ;130b
	ld b,000h		; 06 00 ;130c
	ex de,hl			; eb ;130e
	add hl,bc			; 09 ;130f
	ld e,(hl)			; 5e ;1310
	inc hl			; 23 ;1311
	ld d,(hl)			; 56 ;1312
	inc hl			; 23 ;1313
	ld c,(hl)			; 4e ;1314
	inc hl			; 23 ;1315
	ld b,(hl)			; 46 ;1316
	ld a,(0c042h)		; 3a 42 c0 ;1317
	and 001h		; e6 01 ;131a
	jr z,l1325h		; 28 07 ;131c
	xor a			; af ;131e
	ld hl,start		; 21 00 00 ;131f
	sbc hl,de		; ed 52 ;1322
	ex de,hl			; eb ;1324
l1325h:
	ld (VEL_X),de		; ed 53 0c c5 ;1325
	ld (VEL_Y),bc		; ed 43 06 c5 ;1329
	call sub_138fh		; cd 8f 13 ;132d
	ld c,000h		; 0e 00 ;1330
	call sub_13a8h		; cd a8 13 ;1332
	jp 01362h		; c3 62 13 ;1335
l1338h:
	ld a,013h		; 3e 13 ;1338
	ld c,d			; 4a ;133a
	inc de			; 13 ;133b
	ld d,(hl)			; 56 ;133c
	inc de			; 13 ;133d
	nop			; 00 ;133e
	rst 38h			; ff ;133f
	ret nz			; c0 ;1340
	rst 38h			; ff ;1341
	nop			; 00 ;1342
	rst 38h			; ff ;1343
	ld (hl),b			; 70 ;1344
	rst 38h			; ff ;1345
	nop			; 00 ;1346
	rst 38h			; ff ;1347
	ld d,b			; 50 ;1348
	rst 38h			; ff ;1349
	xor e			; ab ;134a
	cp 0abh		; fe ab ;134b
	rst 38h			; ff ;134d
	xor e			; ab ;134e
	cp 040h		; fe 40 ;134f
	rst 38h			; ff ;1351
	xor e			; ab ;1352
	cp 016h		; fe 16 ;1353
	rst 38h			; ff ;1355
	nop			; 00 ;1356
	cp 080h		; fe 80 ;1357
	rst 38h			; ff ;1359
	nop			; 00 ;135a
	cp 0e0h		; fe e0 ;135b
	cp 000h		; fe 00 ;135d
	cp 0a0h		; fe a0 ;135f
	cp 03eh		; fe 3e ;1361
	dec d			; 15 ;1363
	ld (0c302h),a		; 32 02 c3 ;1364
	xor a			; af ;1367
	ld (0c303h),a		; 32 03 c3 ;1368
	ld a,(0c042h)		; 3a 42 c0 ;136b
	ld e,a			; 5f ;136e
	ld d,000h		; 16 00 ;136f
	ld hl,l138bh		; 21 8b 13 ;1371
	add hl,de			; 19 ;1374
	ld a,(hl)			; 7e ;1375
	ld (0c312h),a		; 32 12 c3 ;1376
	ld hl,0c040h		; 21 40 c0 ;1379
	set 7,(hl)		; cb fe ;137c
	ld a,(0c501h)		; 3a 01 c5 ;137e
	cp 010h		; fe 10 ;1381
	ret nc			; d0 ;1383
	ld hl,l1000h		; 21 00 10 ;1384
	ld (0c500h),hl		; 22 00 c5 ;1387
	ret			; c9 ;138a
l138bh:
	ld bc,00102h		; 01 02 01 ;138b
	ld (bc),a			; 02 ;138e
sub_138fh:
	ld a,(0c046h)		; 3a 46 c0 ;138f
	add a,a			; 87 ;1392
	ld e,a			; 5f ;1393
	ld d,000h		; 16 00 ;1394
	ld hl,l13a2h		; 21 a2 13 ;1396
	add hl,de			; 19 ;1399
	ld e,(hl)			; 5e ;139a
	inc hl			; 23 ;139b
	ld d,(hl)			; 56 ;139c
	ld (0c502h),de		; ed 53 02 c5 ;139d
	ret			; c9 ;13a1
l13a2h:
	inc bc			; 03 ;13a2
	nop			; 00 ;13a3
	dec b			; 05 ;13a4
	nop			; 00 ;13a5
	dec bc			; 0b ;13a6
	nop			; 00 ;13a7
sub_13a8h:
	ld a,c			; 79 ;13a8
	add a,a			; 87 ;13a9
	ld c,a			; 4f ;13aa
	ld b,000h		; 06 00 ;13ab
	ld hl,l13e6h		; 21 e6 13 ;13ad
	add hl,bc			; 09 ;13b0
	ld e,(hl)			; 5e ;13b1
	inc hl			; 23 ;13b2
	ld d,(hl)			; 56 ;13b3
	ld a,(0c046h)		; 3a 46 c0 ;13b4
	add a,a			; 87 ;13b7
	ld c,a			; 4f ;13b8
	add a,a			; 87 ;13b9
	ld b,a			; 47 ;13ba
	add a,a			; 87 ;13bb
	add a,a			; 87 ;13bc
	add a,c			; 81 ;13bd
	add a,b			; 80 ;13be
	ld c,a			; 4f ;13bf
	ld a,(ix+020h)		; dd 7e 20 ;13c0
	sub 00bh		; d6 0b ;13c3
	jr nc,l13c9h		; 30 02 ;13c5
	add a,00bh		; c6 0b ;13c7
l13c9h:
	add a,a			; 87 ;13c9
	add a,c			; 81 ;13ca
	ld c,a			; 4f ;13cb
	ld b,000h		; 06 00 ;13cc
	ex de,hl			; eb ;13ce
	add hl,bc			; 09 ;13cf
	ld e,(hl)			; 5e ;13d0
	inc hl			; 23 ;13d1
	ld d,(hl)			; 56 ;13d2
	ld a,(0c042h)		; 3a 42 c0 ;13d3
	and 001h		; e6 01 ;13d6
	jr z,l13e1h		; 28 07 ;13d8
	xor a			; af ;13da
	ld hl,start		; 21 00 00 ;13db
	sbc hl,de		; ed 52 ;13de
	ex de,hl			; eb ;13e0
l13e1h:
	ld (VEL_Z),de		; ed 53 0e c5 ;13e1
	ret			; c9 ;13e5
l13e6h:
	xor 013h		; ee 13 ;13e6
	jr nc,l13feh		; 30 14 ;13e8
	ld (hl),d			; 72 ;13ea
	inc d			; 14 ;13eb
	xor 013h		; ee 13 ;13ec
	add a,d			; 82 ;13ee
	nop			; 00 ;13ef
l13f0h:
	ld h,(hl)			; 66 ;13f0
	nop			; 00 ;13f1
	ld c,h			; 4c ;13f2
	nop			; 00 ;13f3
	ld (l1800h),a		; 32 00 18 ;13f4
	nop			; 00 ;13f7
	nop			; 00 ;13f8
	nop			; 00 ;13f9
	ret pe			; e8 ;13fa
	rst 38h			; ff ;13fb
	adc a,0ffh		; ce ff ;13fc
l13feh:
	or h			; b4 ;13fe
	rst 38h			; ff ;13ff
l1400h:
	sbc a,d			; 9a ;1400
	rst 38h			; ff ;1401
	ld a,(hl)			; 7e ;1402
	rst 38h			; ff ;1403
	xor a			; af ;1404
	nop			; 00 ;1405
	adc a,c			; 89 ;1406
	nop			; 00 ;1407
	ld h,(hl)			; 66 ;1408
	nop			; 00 ;1409
	ld b,e			; 43 ;140a
	nop			; 00 ;140b
	jr nz,l140eh		; 20 00 ;140c
l140eh:
	nop			; 00 ;140e
	nop			; 00 ;140f
	ret po			; e0 ;1410
	rst 38h			; ff ;1411
	cp l			; bd ;1412
	rst 38h			; ff ;1413
	sbc a,d			; 9a ;1414
	rst 38h			; ff ;1415
	ld (hl),a			; 77 ;1416
	rst 38h			; ff ;1417
	ld d,c			; 51 ;1418
	rst 38h			; ff ;1419
	inc b			; 04 ;141a
	ld bc,000cch		; 01 cc 00 ;141b
	sbc a,b			; 98 ;141e
	nop			; 00 ;141f
	ld h,h			; 64 ;1420
	nop			; 00 ;1421
	jr nc,l1424h		; 30 00 ;1422
l1424h:
	nop			; 00 ;1424
	nop			; 00 ;1425
	ret nc			; d0 ;1426
	rst 38h			; ff ;1427
	sbc a,h			; 9c ;1428
	rst 38h			; ff ;1429
	ld l,b			; 68 ;142a
	rst 38h			; ff ;142b
	inc (hl)			; 34 ;142c
	rst 38h			; ff ;142d
	.DB $fc $fe $51		;142e
	nop			; 00 ;1431
	ccf			; 3f ;1432
	nop			; 00 ;1433
	cpl			; 2f ;1434
	nop			; 00 ;1435
	rra			; 1f ;1436
	nop			; 00 ;1437
	rrca			; 0f ;1438
	nop			; 00 ;1439
	nop			; 00 ;143a
	nop			; 00 ;143b
	pop af			; f1 ;143c
	rst 38h			; ff ;143d
	pop hl			; e1 ;143e
	rst 38h			; ff ;143f
	pop de			; d1 ;1440
	rst 38h			; ff ;1441
	pop bc			; c1 ;1442
	rst 38h			; ff ;1443
	xor a			; af ;1444
	rst 38h			; ff ;1445
	ld l,(hl)			; 6e ;1446
	nop			; 00 ;1447
	ld d,(hl)			; 56 ;1448
	nop			; 00 ;1449
	ld b,b			; 40 ;144a
	nop			; 00 ;144b
	ld hl,(l1400h)		; 2a 00 14 ;144c
	nop			; 00 ;144f
	nop			; 00 ;1450
	nop			; 00 ;1451
	call pe,0d6ffh		; ec ff d6 ;1452
	rst 38h			; ff ;1455
	ret nz			; c0 ;1456
	rst 38h			; ff ;1457
	xor d			; aa ;1458
	rst 38h			; ff ;1459
	sub d			; 92 ;145a
	rst 38h			; ff ;145b
	and d			; a2 ;145c
	nop			; 00 ;145d
	ld a,a			; 7f ;145e
	nop			; 00 ;145f
	ld e,a			; 5f ;1460
	nop			; 00 ;1461
	ld a,000h		; 3e 00 ;1462
	ld e,000h		; 1e 00 ;1464
	nop			; 00 ;1466
	nop			; 00 ;1467
	jp po,0c2ffh		; e2 ff c2 ;1468
	rst 38h			; ff ;146b
	and c			; a1 ;146c
	rst 38h			; ff ;146d
	add a,c			; 81 ;146e
	rst 38h			; ff ;146f
	ld e,(hl)			; 5e ;1470
	rst 38h			; ff ;1471
	push hl			; e5 ;1472
	nop			; 00 ;1473
	inc h			; 24 ;1474
	ld bc,000abh		; 01 ab 00 ;1475
	ld (hl),b			; 70 ;1478
	nop			; 00 ;1479
	ld (hl),000h		; 36 00 ;147a
	nop			; 00 ;147c
	nop			; 00 ;147d
	jp z,090ffh		; ca ff 90 ;147e
	rst 38h			; ff ;1481
	ld d,l			; 55 ;1482
	rst 38h			; ff ;1483
	dec de			; 1b ;1484
	rst 38h			; ff ;1485
	call c,032feh		; dc fe 32 ;1486
	ld bc,00186h		; 01 86 01 ;1489
	call po,09600h		; e4 00 96 ;148c
	nop			; 00 ;148f
	ld c,b			; 48 ;1490
	nop			; 00 ;1491
	nop			; 00 ;1492
	nop			; 00 ;1493
	cp b			; b8 ;1494
	rst 38h			; ff ;1495
	ld l,d			; 6a ;1496
	rst 38h			; ff ;1497
	inc e			; 1c ;1498
	rst 38h			; ff ;1499
	adc a,0feh		; ce fe ;149a
	ld a,d			; 7a ;149c
	cp 0cbh		; fe cb ;149d
	ld bc,l0249h		; 01 49 02 ;149f
	ld d,(hl)			; 56 ;14a2
	ld bc,000e1h		; 01 e1 00 ;14a3
	ld l,h			; 6c ;14a6
	nop			; 00 ;14a7
	nop			; 00 ;14a8
	nop			; 00 ;14a9
	sub h			; 94 ;14aa
	rst 38h			; ff ;14ab
	rra			; 1f ;14ac
	rst 38h			; ff ;14ad
	xor d			; aa ;14ae
	cp 035h		; fe 35 ;14af
	cp 0b7h		; fe b7 ;14b1
	.DB 0fdh,03ah,040h	;illegal sequence		;14b3
	ret nz			; c0 ;14b6
	rlca			; 07 ;14b7
	ret nc			; d0 ;14b8
	ld bc,(0c502h)		; ed 4b 02 c5 ;14b9
	ld hl,(0c506h)		; 2a 06 c5 ;14bd
	add hl,bc			; 09 ;14c0
	ld (0c506h),hl		; 22 06 c5 ;14c1
	xor a			; af ;14c4
	ld de,(0c500h)		; ed 5b 00 c5 ;14c5
	ex de,hl			; eb ;14c9
	sbc hl,de		; ed 52 ;14ca
	ld (0c500h),hl		; 22 00 c5 ;14cc
	bit 7,h		; cb 7c ;14cf
	jp z,l150fh		; ca 0f 15 ;14d1
	ld hl,start		; 21 00 00 ;14d4
	ld (0c500h),hl		; 22 00 c5 ;14d7
	ld hl,0c516h		; 21 16 c5 ;14da
	res 6,(hl)		; cb b6 ;14dd
	call sub_ball_bounce		; cd 9c 15 ;14df
	ld hl,BALL_STATE		; 21 17 c5 ;14e2
	inc (hl)			; 34 ;14e5
	ld a,005h		; 3e 05 ;14e6
	cp (hl)			; be ;14e8
	jr nc,l14f1h		; 30 06 ;14e9
	ld hl,0c040h		; 21 40 c0 ;14eb
	res 7,(hl)		; cb be ;14ee
	ret			; c9 ;14f0
l14f1h:
	ld a,(hl)			; 7e ;14f1
	dec a			; 3d ;14f2
	jr nz,l14ffh		; 20 0a ;14f3
	call sub_0e04h		; cd 04 0e ;14f5
	ld a,08fh		; 3e 8f ;14f8
	ld (0de00h),a		; 32 00 de ;14fa
	jr l150fh		; 18 10 ;14fd
l14ffh:
	dec a			; 3d ;14ff
	jr nz,l150fh		; 20 0d ;1500
	ld hl,0c000h		; 21 00 c0 ;1502
	res 0,(hl)		; cb 86 ;1505
	ld hl,0c518h		; 21 18 c5 ;1507
	ld a,(hl)			; 7e ;150a
	or a			; b7 ;150b
	ret nz			; c0 ;150c
	ld (hl),002h		; 36 02 ;150d
l150fh:
	ld a,(0c516h)		; 3a 16 c5 ;150f
	bit 6,a		; cb 77 ;1512
	ret nz			; c0 ;1514
	call sub_update_ball_state		; cd af 16 ;1515
	call sub_1878h		; cd 78 18 ;1518
	call sub_0e7fh		; cd 7f 0e ;151b
	ld de,(VEL_Z)		; ed 5b 0e c5 ;151e
	ld hl,(0c50ah)		; 2a 0a c5 ;1522
	add hl,de			; 19 ;1525
	ld (0c50ah),hl		; 22 0a c5 ;1526
	ld de,(VEL_X)		; ed 5b 0c c5 ;1529
	ld hl,(0c508h)		; 2a 08 c5 ;152d
	add hl,de			; 19 ;1530
	ld (0c508h),hl		; 22 08 c5 ;1531
	ld c,000h		; 0e 00 ;1534
	ld a,h			; 7c ;1536
	cp 070h		; fe 70 ;1537
	jr c,l1543h		; 38 08 ;1539
	ld c,001h		; 0e 01 ;153b
	cp 090h		; fe 90 ;153d
	jr c,l1543h		; 38 02 ;153f
	ld c,002h		; 0e 02 ;1541
l1543h:
	ld a,c			; 79 ;1543
	ld (0c48ch),a		; 32 8c c4 ;1544
	ret			; c9 ;1547
l1548h:
	ld a,(0c509h)		; 3a 09 c5 ;1548
	ld e,a			; 5f ;154b
	ld d,000h		; 16 00 ;154c
	ld hl,0cbe8h		; 21 e8 cb ;154e
	add hl,de			; 19 ;1551
	ld a,(hl)			; 7e ;1552
	ld (ix+00bh),a		; dd 77 0b ;1553
	ld (ix+014h),a		; dd 77 14 ;1556
	ld l,a			; 6f ;1559
	ld h,000h		; 26 00 ;155a
	add hl,hl			; 29 ;155c
	ld de,0cce8h		; 11 e8 cc ;155d
	add hl,de			; 19 ;1560
	ld e,(hl)			; 5e ;1561
	inc hl			; 23 ;1562
	ld d,(hl)			; 56 ;1563
	exx			; d9 ;1564
	ld de,(0c50ah)		; ed 5b 0a c5 ;1565
	ld hl,08000h		; 21 00 80 ;1569
	xor a			; af ;156c
	sbc hl,de		; ed 52 ;156d
	push af			; f5 ;156f
	jr nc,l1579h		; 30 07 ;1570
	xor a			; af ;1572
	ex de,hl			; eb ;1573
	ld hl,start		; 21 00 00 ;1574
	sbc hl,de		; ed 52 ;1577
l1579h:
	push hl			; e5 ;1579
	exx			; d9 ;157a
	pop bc			; c1 ;157b
	call sub_mul_de_bc		; cd f7 03 ;157c
	pop af			; f1 ;157f
	ld d,e			; 53 ;1580
	ld e,h			; 5c ;1581
	ld hl,08000h		; 21 00 80 ;1582
	jr nc,l158eh		; 30 07 ;1585
	xor a			; af ;1587
	adc hl,de		; ed 5a ;1588
	jr c,l1597h		; 38 0b ;158a
	jr l1593h		; 18 05 ;158c
l158eh:
	xor a			; af ;158e
	sbc hl,de		; ed 52 ;158f
	jr c,l1597h		; 38 04 ;1591
l1593h:
	ld (ix+00dh),h		; dd 74 0d ;1593
	ret			; c9 ;1596
l1597h:
	ld (ix+00bh),0d8h		; dd 36 0b d8 ;1597
	ret			; c9 ;159b
	.INCLUDE "physics/ball_bounce.asm"
	.INCLUDE "physics/compute_ball_deflection.asm"
	.INCLUDE "physics/update_ball_state.asm"
l1769h:
	nop			; 00 ;1769
	nop			; 00 ;176a
	inc b			; 04 ;176b
	inc bc			; 03 ;176c
l176dh:
	nop			; 00 ;176d
	ld bc,00506h		; 01 06 05 ;176e
l1771h:
	nop			; 00 ;1771
	ld (bc),a			; 02 ;1772
l1773h:
	ex af,af'			; 08 ;1773
	rlca			; 07 ;1774
l1775h:
	nop			; 00 ;1775
	nop			; 00 ;1776
	ld bc,00201h+1		; 01 02 02 ;1777
	ld bc,00804h		; 01 04 08 ;177a
	ex af,af'			; 08 ;177d
	inc b			; 04 ;177e
	dec b			; 05 ;177f
	ld a,(bc)			; 0a ;1780
	add hl,bc			; 09 ;1781
	ld b,006h		; 06 06 ;1782
	add hl,bc			; 09 ;1784
	ld a,(bc)			; 0a ;1785
	dec b			; 05 ;1786
	.INCLUDE "physics/check_player_location.asm"
l17e7h:
	call m,0f808h		; fc 08 f8 ;17e7
	djnz l1773h		; 10 87 ;17ea
	add a,a			; 87 ;17ec
	ld e,a			; 5f ;17ed
	ld d,000h		; 16 00 ;17ee
	add hl,de			; 19 ;17f0
sub_17f1h:
	ld a,(ix+00bh)		; dd 7e 0b ;17f1
	add a,(hl)			; 86 ;17f4
	ld c,a			; 4f ;17f5
	inc hl			; 23 ;17f6
	add a,(hl)			; 86 ;17f7
	ld b,a			; 47 ;17f8
	inc hl			; 23 ;17f9
	ld a,(ix+00dh)		; dd 7e 0d ;17fa
	add a,(hl)			; 86 ;17fd
	ld e,a			; 5f ;17fe
	inc hl			; 23 ;17ff
l1800h:
	add a,(hl)			; 86 ;1800
	jr nc,l1804h		; 30 01 ;1801
	ld a,e			; 7b ;1803
l1804h:
	ld d,a			; 57 ;1804
	ret			; c9 ;1805
sub_1806h_bound_check:
	ld bc,(0c08eh)		; ed 4b 8e c0 ;1806
	ld de,(0c090h)		; ed 5b 90 c0 ;180a
	ld a,(0c082h)		; 3a 82 c0 ;180e
	cp c			; b9 ;1811
	jr z,l1818h		; 28 04 ;1812
	jr nc,l1824h		; 30 0e ;1814
	jr l1838h		; 18 20 ;1816
l1818h:
	call sub_1854h		; cd 54 18 ;1818
	ld hl,l1769h		; 21 69 17 ;181b
	ld e,a			; 5f ;181e
	ld d,000h		; 16 00 ;181f
	add hl,de			; 19 ;1821
	ld e,(hl)			; 5e ;1822
	ret			; c9 ;1823
l1824h:
	cp b			; b8 ;1824
	jr z,l182ch		; 28 05 ;1825
	jr c,l182ch		; 38 03 ;1827
	xor a			; af ;1829
	jr l182fh		; 18 03 ;182a
l182ch:
	call sub_1854h		; cd 54 18 ;182c
l182fh:
	ld e,a			; 5f ;182f
	ld d,000h		; 16 00 ;1830
	ld hl,l176dh		; 21 6d 17 ;1832
	add hl,de			; 19 ;1835
	ld e,(hl)			; 5e ;1836
	ret			; c9 ;1837
l1838h:
	ld a,(0c083h)		; 3a 83 c0 ;1838
	cp c			; b9 ;183b
	jr z,l1843h		; 28 05 ;183c
	jr nc,l184fh		; 30 0f ;183e
	xor a			; af ;1840
	jr l1846h		; 18 03 ;1841
l1843h:
	call sub_1854h		; cd 54 18 ;1843
l1846h:
	ld e,a			; 5f ;1846
	ld d,000h		; 16 00 ;1847
	ld hl,l1771h		; 21 71 17 ;1849
	add hl,de			; 19 ;184c
	ld e,(hl)			; 5e ;184d
	ret			; c9 ;184e
l184fh:
	cp b			; b8 ;184f
	jr c,l1843h		; 38 f1 ;1850
	jr l182ch		; 18 d8 ;1852
sub_1854h:
	ld a,(0c084h)		; 3a 84 c0 ;1854
	cp e			; bb ;1857
	jr z,l186fh		; 28 15 ;1858
	jr c,l1863h		; 38 07 ;185a
	cp d			; ba ;185c
	jr z,l1875h		; 28 16 ;185d
	jr c,l1875h		; 38 14 ;185f
	jr l186dh		; 18 0a ;1861
l1863h:
	ld a,(0c085h)		; 3a 85 c0 ;1863
	cp e			; bb ;1866
	jr z,l1872h		; 28 09 ;1867
	jr nc,l1872h		; 30 07 ;1869
	jr l186dh		; 18 00 ;186b
l186dh:
	xor a			; af ;186d
	ret			; c9 ;186e
l186fh:
	ld a,001h		; 3e 01 ;186f
	ret			; c9 ;1871
l1872h:
	ld a,002h		; 3e 02 ;1872
	ret			; c9 ;1874
l1875h:
	ld a,003h		; 3e 03 ;1875
	ret			; c9 ;1877
sub_1878h:
	ld a,(0c000h)		; 3a 00 c0 ;1878
	rrca			; 0f ;187b
	ret nc			; d0 ;187c
	ld hl,l19cbh		; 21 cb 19 ;187d
	ld ix,0c300h		; dd 21 00 c3 ;1880
	call sub_17f1h		; cd f1 17 ;1884
	ld (0c082h),bc		; ed 43 82 c0 ;1887
	ld (0c084h),de		; ed 53 84 c0 ;188b
	ld a,(0c312h)		; 3a 12 c3 ;188f
	rrca			; 0f ;1892
	jr c,l189fh		; 38 0a ;1893
	ld iy,0c200h		; fd 21 00 c2 ;1895
	ld ix,0c280h		; dd 21 80 c2 ;1899
	jr l18a7h		; 18 08 ;189d
l189fh:
	ld iy,0c240h		; fd 21 40 c2 ;189f
	ld ix,0c2c0h		; dd 21 c0 c2 ;18a3
l18a7h:
	ld a,(0c000h)		; 3a 00 c0 ;18a7
	rlca			; 07 ;18aa
	jr nc,l18b1h		; 30 04 ;18ab
	call sub_18b5h_hit		; cd b5 18 ;18ad
	ret c			; d8 ;18b0
l18b1h:
	push iy		; fd e5 ;18b1
	pop ix		; dd e1 ;18b3
sub_18b5h_hit:
	bit 7,(ix+019h)		; dd cb 19 7e ;18b5
	jp z,l1967h		; ca 67 19 ;18b9
	ld a,(0c040h)		; 3a 40 c0 ;18bc
	rlca			; 07 ;18bf
	jp nc,l1967h		; d2 67 19 ;18c0
	ld hl,019dbh		; 21 db 19 ;18c3
	ld a,(ix+01eh)		; dd 7e 1e ;18c6
	call 017ebh		; cd eb 17 ;18c9
	ld (0c08eh),bc		; ed 43 8e c0 ;18cc
	ld (0c090h),de		; ed 53 90 c0 ;18d0
	call sub_1806h_bound_check		; cd 06 18 ;18d4
	ld a,e			; 7b ;18d7
	or a			; b7 ;18d8
	jp z,l1967h		; ca 67 19 ;18d9
	ld hl,01a1dh		; 21 1d 1a ;18dc
	ld a,(ix+01eh)		; dd 7e 1e ;18df
	add a,a			; 87 ;18e2
	ld e,a			; 5f ;18e3
	ld d,000h		; 16 00 ;18e4
	add hl,de			; 19 ;18e6
	ld a,(ix+00bh)		; dd 7e 0b ;18e7
	add a,(hl)			; 86 ;18ea
	ld b,a			; 47 ;18eb
	inc hl			; 23 ;18ec
	add a,(hl)			; 86 ;18ed
	ld c,a			; 4f ;18ee
	ld a,(0c34bh)		; 3a 4b c3 ;18ef
	cp c			; b9 ;18f2
	jp c,l1967h		; da 67 19 ;18f3
	inc hl			; 23 ;18f6
	cp b			; b8 ;18f7
	jp nc,l1967h		; d2 67 19 ;18f8
	ld hl,0c040h		; 21 40 c0 ;18fb
	bit 0,(hl)		; cb 46 ;18fe
	jr z,l1951h		; 28 4f ;1900
	ld bc,01a3fh		; 01 3f 1a ;1902
	ld a,(0c000h)		; 3a 00 c0 ;1905
	bit 7,a		; cb 7f ;1908
	jr z,l1915h		; 28 09 ;190a
	ld a,(0c044h)		; 3a 44 c0 ;190c
	or a			; b7 ;190f
	jr z,l1915h		; 28 03 ;1910
	ld bc,l1a4fh		; 01 4f 1a ;1912
l1915h:
	ld a,(0c041h)		; 3a 41 c0 ;1915
	add a,a			; 87 ;1918
	add a,a			; 87 ;1919
	ld e,a			; 5f ;191a
	ld d,000h		; 16 00 ;191b
	ld h,d			; 62 ;191d
	ld l,(ix+001h)		; dd 6e 01 ;191e
	add hl,de			; 19 ;1921
	add hl,bc			; 09 ;1922
	ld a,(hl)			; 7e ;1923
	or a			; b7 ;1924
	jp z,l1951h		; ca 51 19 ;1925
	dec a			; 3d ;1928
	jp z,l1967h		; ca 67 19 ;1929
	ld hl,0c040h		; 21 40 c0 ;192c
	res 0,(hl)		; cb 86 ;192f
	dec a			; 3d ;1931
	jr z,l1941h		; 28 0d ;1932
	ld a,(0c519h)		; 3a 19 c5 ;1934
	or a			; b7 ;1937
	jr z,l1947h		; 28 0d ;1938
	cp 002h		; fe 02 ;193a
	jr z,l1947h		; 28 09 ;193c
	jp l1967h		; c3 67 19 ;193e
l1941h:
	ld a,(0c519h)		; 3a 19 c5 ;1941
	or a			; b7 ;1944
	jr nz,l1951h		; 20 0a ;1945
l1947h:
	ld a,004h		; 3e 04 ;1947
	ld (0c518h),a		; 32 18 c5 ;1949
	ld hl,0c000h		; 21 00 c0 ;194c
	res 0,(hl)		; cb 86 ;194f
l1951h:
	set 7,(ix+01dh)		; dd cb 1d fe ;1951
	xor a			; af ;1955
	ld (0c303h),a		; 32 03 c3 ;1956
	ld (BALL_STATE),a		; 32 17 c5 ;1959
	ld (0c519h),a		; 32 19 c5 ;195c
	ld a,(ix+001h)		; dd 7e 01 ;195f
	ld (0c042h),a		; 32 42 c0 ;1962
	scf			; 37 ;1965
	ret			; c9 ;1966
l1967h:
	ld a,(0c501h)		; 3a 01 c5 ;1967
	cp 018h		; fe 18 ;196a
	ret nc			; d0 ;196c
	ld hl,l19cfh		; 21 cf 19 ;196d
	ld a,(ix+001h)		; dd 7e 01 ;1970
	call 017ebh		; cd eb 17 ;1973
	ld (0c08eh),bc		; ed 43 8e c0 ;1976
	ld (0c090h),de		; ed 53 90 c0 ;197a
	ld a,(0c30bh)		; 3a 0b c3 ;197e
	cp c			; b9 ;1981
	jr c,l19c9h		; 38 45 ;1982
	cp b			; b8 ;1984
	jr nc,l19c9h		; 30 42 ;1985
	ld a,(0c30dh)		; 3a 0d c3 ;1987
	cp e			; bb ;198a
	jr c,l19c9h		; 38 3c ;198b
	cp d			; ba ;198d
	jr nc,l19c9h		; 30 39 ;198e
	ld a,(0c040h)		; 3a 40 c0 ;1990
	bit 0,a		; cb 47 ;1993
	jr z,l19a5h		; 28 0e ;1995
	ld c,001h		; 0e 01 ;1997
	ld a,(0c041h)		; 3a 41 c0 ;1999
	and c			; a1 ;199c
	ld e,a			; 5f ;199d
	ld a,(ix+001h)		; dd 7e 01 ;199e
	and c			; a1 ;19a1
	cp e			; bb ;19a2
	jr z,l19c9h		; 28 24 ;19a3
l19a5h:
	ld a,003h		; 3e 03 ;19a5
	ld (0c518h),a		; 32 18 c5 ;19a7
	ld c,090h		; 0e 90 ;19aa
	ld a,(ix+001h)		; dd 7e 01 ;19ac
	and 001h		; e6 01 ;19af
	jr z,l19b5h		; 28 02 ;19b1
	ld c,091h		; 0e 91 ;19b3
l19b5h:
	ld a,c			; 79 ;19b5
	ld (0de00h),a		; 32 00 de ;19b6
	ld hl,0c000h		; 21 00 c0 ;19b9
	res 0,(hl)		; cb 86 ;19bc
	ld hl,start		; 21 00 00 ;19be
	ld (VEL_X),hl		; 22 0c c5 ;19c1
	ld (VEL_Z),hl		; 22 0e c5 ;19c4
	scf			; 37 ;19c7
	ret			; c9 ;19c8
l19c9h:
	and a			; a7 ;19c9
	ret			; c9 ;19ca
l19cbh:
	call m,0fc07h		; fc 07 fc ;19cb
	rlca			; 07 ;19ce
l19cfh:
	ret m			; f8 ;19cf
	ex af,af'			; 08 ;19d0
	call m,0fc08h		; fc 08 fc ;19d1
	inc b			; 04 ;19d4
	cp 004h		; fe 04 ;19d5
	ret m			; f8 ;19d7
	ex af,af'			; 08 ;19d8
	call m,0fc08h		; fc 08 fc ;19d9
	inc b			; 04 ;19dc
	cp 004h		; fe 04 ;19dd
	ld sp,hl			; f9 ;19df
	dec b			; 05 ;19e0
	dec c			; 0d ;19e1
l19e2h:
	inc c			; 0c ;19e2
	ld sp,hl			; f9 ;19e3
	dec b			; 05 ;19e4
	jp pe,0f90ch		; ea 0c f9 ;19e5
	dec b			; 05 ;19e8
	dec c			; 0d ;19e9
	inc c			; 0c ;19ea
	ld sp,hl			; f9 ;19eb
	dec b			; 05 ;19ec
	jp pe,0f00ch		; ea 0c f0 ;19ed
	djnz l19ffh		; 10 0d ;19f0
	inc c			; 0c ;19f2
	ret p			; f0 ;19f3
	djnz l19e2h		; 10 ec ;19f4
	inc c			; 0c ;19f6
	ret p			; f0 ;19f7
	djnz l19ffh		; 10 05 ;19f8
	inc c			; 0c ;19fa
	ret p			; f0 ;19fb
	djnz l1a03h		; 10 05 ;19fc
	inc c			; 0c ;19fe
l19ffh:
	ld sp,hl			; f9 ;19ff
	dec b			; 05 ;1a00
	ret p			; f0 ;1a01
	ex af,af'			; 08 ;1a02
l1a03h:
	ld sp,hl			; f9 ;1a03
	dec b			; 05 ;1a04
	ret p			; f0 ;1a05
	ex af,af'			; 08 ;1a06
	ld sp,hl			; f9 ;1a07
	dec b			; 05 ;1a08
	inc bc			; 03 ;1a09
	ex af,af'			; 08 ;1a0a
	ld sp,hl			; f9 ;1a0b
	dec b			; 05 ;1a0c
	inc bc			; 03 ;1a0d
	ex af,af'			; 08 ;1a0e
	call m,0f408h		; fc 08 f4 ;1a0f
	ex af,af'			; 08 ;1a12
	call m,sub_0408h		; fc 08 04 ;1a13
	ex af,af'			; 08 ;1a16
	call m,0f40ch		; fc 0c f4 ;1a17
	ex af,af'			; 08 ;1a1a
	call m,0f408h		; fc 08 f4 ;1a1b
	ex af,af'			; 08 ;1a1e
	nop			; 00 ;1a1f
	ret pe			; e8 ;1a20
	nop			; 00 ;1a21
	ret pe			; e8 ;1a22
	nop			; 00 ;1a23
	ret pe			; e8 ;1a24
	nop			; 00 ;1a25
	ret pe			; e8 ;1a26
	ret p			; f0 ;1a27
	ret pe			; e8 ;1a28
	ret p			; f0 ;1a29
	ret pe			; e8 ;1a2a
	ret po			; e0 ;1a2b
	ret p			; f0 ;1a2c
	ret po			; e0 ;1a2d
	ret m			; f8 ;1a2e
	nop			; 00 ;1a2f
	ret pe			; e8 ;1a30
	nop			; 00 ;1a31
	ret pe			; e8 ;1a32
	nop			; 00 ;1a33
	ret pe			; e8 ;1a34
	nop			; 00 ;1a35
	ret pe			; e8 ;1a36
	ret p			; f0 ;1a37
	ret p			; f0 ;1a38
	ret p			; f0 ;1a39
	ret p			; f0 ;1a3a
	ret p			; f0 ;1a3b
	ret p			; f0 ;1a3c
	call p,000ech		; f4 ec 00 ;1a3d
	ld (bc),a			; 02 ;1a40
	ld bc,00203h		; 01 03 02 ;1a41
	nop			; 00 ;1a44
	inc bc			; 03 ;1a45
	ld bc,00201h		; 01 01 02 ;1a46
	nop			; 00 ;1a49
	inc bc			; 03 ;1a4a
	ld (bc),a			; 02 ;1a4b
	ld bc,l0003h		; 01 03 00 ;1a4c
l1a4fh:
	nop			; 00 ;1a4f
	inc bc			; 03 ;1a50
	ld bc,00302h		; 01 02 03 ;1a51
	nop			; 00 ;1a54
	ld (bc),a			; 02 ;1a55
	ld bc,00300h+1		; 01 01 03 ;1a56
	nop			; 00 ;1a59
	ld (bc),a			; 02 ;1a5a
	inc bc			; 03 ;1a5b
	ld bc,start+2		; 01 02 00 ;1a5c
	ld a,(ix+002h)		; dd 7e 02 ;1a5f
	bit 7,a		; cb 7f ;1a62
	jr nz,l1abbh		; 20 55 ;1a64
	set 7,(ix+002h)		; dd cb 02 fe ;1a66
	cp 003h		; fe 03 ;1a6a
	jr nz,l1a9bh		; 20 2d ;1a6c
	bit 0,(ix+001h)		; dd cb 01 46 ;1a6e
	ld e,000h		; 1e 00 ;1a72
	jr z,l1a78h		; 28 02 ;1a74
	ld e,008h		; 1e 08 ;1a76
l1a78h:
	ld a,(0c044h)		; 3a 44 c0 ;1a78
	add a,a			; 87 ;1a7b
	add a,a			; 87 ;1a7c
	or e			; b3 ;1a7d
	ld e,a			; 5f ;1a7e
	ld d,000h		; 16 00 ;1a7f
	ld hl,l1ae2h		; 21 e2 1a ;1a81
	add hl,de			; 19 ;1a84
	ld a,(hl)			; 7e ;1a85
	ld (ix+00ah),a		; dd 77 0a ;1a86
	inc hl			; 23 ;1a89
	ld a,(hl)			; 7e ;1a8a
	ld (ix+00bh),a		; dd 77 0b ;1a8b
	ld (ix+014h),a		; dd 77 14 ;1a8e
	inc hl			; 23 ;1a91
	ld a,(hl)			; 7e ;1a92
	ld (ix+00ch),a		; dd 77 0c ;1a93
	inc hl			; 23 ;1a96
	ld a,(hl)			; 7e ;1a97
	ld (ix+00dh),a		; dd 77 0d ;1a98
l1a9bh:
	bit 0,(ix+001h)		; dd cb 01 46 ;1a9b
	jr z,l1aa5h		; 28 04 ;1a9f
	ld (ix+030h),007h		; dd 36 30 07 ;1aa1
l1aa5h:
	ld (ix+022h),006h		; dd 36 22 06 ;1aa5
	ld (ix+023h),0ffh		; dd 36 23 ff ;1aa9
	ld hl,00096h		; 21 96 00 ;1aad
	ld (ix+029h),l		; dd 75 29 ;1ab0
	ld (ix+02ah),h		; dd 74 2a ;1ab3
	ld a,001h		; 3e 01 ;1ab6
	ld (0c400h),a		; 32 00 c4 ;1ab8
l1abbh:
	bit 0,(ix+001h)		; dd cb 01 46 ;1abb
	call nz,sub_1e25h		; c4 25 1e ;1abf
	ld (ix+020h),000h		; dd 36 20 00 ;1ac2
	call sub_animate		; cd 69 2a ;1ac6
	ld a,(ix+023h)		; dd 7e 23 ;1ac9
	and a			; a7 ;1acc
	jr z,l1ad7h		; 28 08 ;1acd
	ld (ix+022h),006h		; dd 36 22 06 ;1acf
	ld (ix+023h),0ffh		; dd 36 23 ff ;1ad3
l1ad7h:
	call sub_1b9fh		; cd 9f 1b ;1ad7
	jp nz,sub_move_players		; c2 a1 26 ;1ada
	ld (ix+002h),004h		; dd 36 02 04 ;1add
	ret			; c9 ;1ae1
l1ae2h:
	nop			; 00 ;1ae2
	cp h			; bc ;1ae3
	nop			; 00 ;1ae4
	and b			; a0 ;1ae5
	nop			; 00 ;1ae6
	cp h			; bc ;1ae7
	nop			; 00 ;1ae8
	ld h,b			; 60 ;1ae9
	nop			; 00 ;1aea
	jr z,l1aedh		; 28 00 ;1aeb
l1aedh:
	ld l,a			; 6f ;1aed
	nop			; 00 ;1aee
	jr z,l1af1h		; 28 00 ;1aef
l1af1h:
	sbc a,l			; 9d ;1af1
	bit 7,(ix+002h)		; dd cb 02 7e ;1af2
	jr nz,l1b17h		; 20 1f ;1af6
	set 7,(ix+002h)		; dd cb 02 fe ;1af8
	ld (ix+022h),007h		; dd 36 22 07 ;1afc
	ld (ix+023h),0ffh		; dd 36 23 ff ;1b00
	ld (ix+01fh),019h		; dd 36 1f 19 ;1b04
	ld a,017h		; 3e 17 ;1b08
	ld (0c302h),a		; 32 02 c3 ;1b0a
	bit 0,(ix+001h)		; dd cb 01 46 ;1b0d
	ret z			; c8 ;1b11
	ld (ix+030h),008h		; dd 36 30 08 ;1b12
	ret			; c9 ;1b16
l1b17h:
	bit 0,(ix+001h)		; dd cb 01 46 ;1b17
	call nz,sub_1e25h		; c4 25 1e ;1b1b
	ld a,(ix+001h)		; dd 7e 01 ;1b1e
	bit 0,a		; cb 47 ;1b21
	ld b,(ix+028h)		; dd 46 28 ;1b23
	jr nz,l1b37h		; 20 0f ;1b26
	and 002h		; e6 02 ;1b28
	ld a,(0c1c0h)		; 3a c0 c1 ;1b2a
	jr z,l1b32h		; 28 03 ;1b2d
	ld a,(0c1c2h)		; 3a c2 c1 ;1b2f
l1b32h:
	rra			; 1f ;1b32
	rra			; 1f ;1b33
	rra			; 1f ;1b34
	rra			; 1f ;1b35
	ld b,a			; 47 ;1b36
l1b37h:
	bit 0,b		; cb 40 ;1b37
	jr nz,l1b5bh		; 20 20 ;1b39
	ld (ix+020h),000h		; dd 36 20 00 ;1b3b
	call sub_animate		; cd 69 2a ;1b3f
	ld a,(ix+023h)		; dd 7e 23 ;1b42
	and a			; a7 ;1b45
	jr nz,l1b50h		; 20 08 ;1b46
	ld (ix+022h),007h		; dd 36 22 07 ;1b48
	ld (ix+023h),0ffh		; dd 36 23 ff ;1b4c
l1b50h:
	ld a,(0c040h)		; 3a 40 c0 ;1b50
	bit 7,a		; cb 7f ;1b53
	ret nz			; c0 ;1b55
	ld (ix+002h),009h		; dd 36 02 09 ;1b56
	ret			; c9 ;1b5a
l1b5bh:
	ld hl,0c040h		; 21 40 c0 ;1b5b
	bit 7,(hl)		; cb 7e ;1b5e
	ret z			; c8 ;1b60
	ld (ix+002h),005h		; dd 36 02 05 ;1b61
	set 6,(hl)		; cb f6 ;1b65
	ret			; c9 ;1b67
	bit 7,(ix+002h)		; dd cb 02 7e ;1b68
	jr nz,l1b7eh		; 20 10 ;1b6c
	set 7,(ix+002h)		; dd cb 02 fe ;1b6e
	ld (ix+022h),008h		; dd 36 22 08 ;1b72
	ld (ix+023h),0ffh		; dd 36 23 ff ;1b76
	ld (ix+020h),000h		; dd 36 20 00 ;1b7a
l1b7eh:
	call sub_animate		; cd 69 2a ;1b7e
	call sub_ball_trajectory		; cd 40 2c ;1b81
	ld a,(ix+023h)		; dd 7e 23 ;1b84
	and a			; a7 ;1b87
	ret nz			; c0 ;1b88
	ld a,013h		; 3e 13 ;1b89
	bit 0,(ix+001h)		; dd cb 01 46 ;1b8b
	jr z,l1b97h		; 28 06 ;1b8f
	ld a,014h		; 3e 14 ;1b91
	ld (ix+030h),001h		; dd 36 30 01 ;1b93
l1b97h:
	ld (ix+002h),a		; dd 77 02 ;1b97
	xor a			; af ;1b9a
	ld (0c400h),a		; 32 00 c4 ;1b9b
	ret			; c9 ;1b9e
sub_1b9fh:
	ld l,(ix+029h)		; dd 6e 29 ;1b9f
	ld h,(ix+02ah)		; dd 66 2a ;1ba2
	dec hl			; 2b ;1ba5
	ld (ix+029h),l		; dd 75 29 ;1ba6
	ld (ix+02ah),h		; dd 74 2a ;1ba9
	ld a,l			; 7d ;1bac
	or h			; b4 ;1bad
	ret			; c9 ;1bae
	ret			; c9 ;1baf
	bit 1,(ix+001h)		; dd cb 01 4e ;1bb0
	ld hl,0c242h		; 21 42 c2 ;1bb4
	ld e,004h		; 1e 04 ;1bb7
	jr nz,l1bc0h		; 20 05 ;1bb9
	ld hl,0c2c2h		; 21 c2 c2 ;1bbb
	ld e,000h		; 1e 00 ;1bbe
l1bc0h:
	ld a,(hl)			; 7e ;1bc0
	and 03fh		; e6 3f ;1bc1
	cp 003h		; fe 03 ;1bc3
	ld a,000h		; 3e 00 ;1bc5
	jr z,l1bd4h		; 28 0b ;1bc7
	ld a,(0c000h)		; 3a 00 c0 ;1bc9
	bit 7,a		; cb 7f ;1bcc
	ld a,002h		; 3e 02 ;1bce
	jr nz,l1bd4h		; 20 02 ;1bd0
	ld a,008h		; 3e 08 ;1bd2
l1bd4h:
	or e			; b3 ;1bd4
	ld e,a			; 5f ;1bd5
	ld a,(0c044h)		; 3a 44 c0 ;1bd6
	or e			; b3 ;1bd9
	add a,a			; 87 ;1bda
	ld e,a			; 5f ;1bdb
	ld d,000h		; 16 00 ;1bdc
	ld hl,l1c07h		; 21 07 1c ;1bde
	add hl,de			; 19 ;1be1
	ld a,(hl)			; 7e ;1be2
	ld (ix+030h),a		; dd 77 30 ;1be3
	inc hl			; 23 ;1be6
	ld e,(hl)			; 5e ;1be7
	ld hl,01c1bh		; 21 1b 1c ;1be8
	add hl,de			; 19 ;1beb
	ld a,(hl)			; 7e ;1bec
	ld (ix+00ah),a		; dd 77 0a ;1bed
	inc hl			; 23 ;1bf0
	ld a,(hl)			; 7e ;1bf1
	ld (ix+00bh),a		; dd 77 0b ;1bf2
	ld (ix+014h),a		; dd 77 14 ;1bf5
	inc hl			; 23 ;1bf8
	ld a,(hl)			; 7e ;1bf9
	ld (ix+00ch),a		; dd 77 0c ;1bfa
	inc hl			; 23 ;1bfd
	ld a,(hl)			; 7e ;1bfe
	ld (ix+00dh),a		; dd 77 0d ;1bff
	ld (ix+002h),014h		; dd 36 02 14 ;1c02
	ret			; c9 ;1c06
l1c07h:
	dec b			; 05 ;1c07
	inc c			; 0c ;1c08
	dec b			; 05 ;1c09
	ex af,af'			; 08 ;1c0a
	ld bc,00500h		; 01 00 05 ;1c0b
	ex af,af'			; 08 ;1c0e
	dec b			; 05 ;1c0f
	inc c			; 0c ;1c10
	dec b			; 05 ;1c11
	ex af,af'			; 08 ;1c12
	dec b			; 05 ;1c13
	inc c			; 0c ;1c14
	ld bc,00104h		; 01 04 01 ;1c15
	nop			; 00 ;1c18
	ld bc,l0004h		; 01 04 00 ;1c19
	jr z,l1c1eh		; 28 00 ;1c1c
l1c1eh:
	ld (hl),b			; 70 ;1c1e
	nop			; 00 ;1c1f
	jr z,l1c22h		; 28 00 ;1c20
l1c22h:
	and b			; a0 ;1c22
	nop			; 00 ;1c23
	jr c,l1c26h		; 38 00 ;1c24
l1c26h:
	ld (hl),b			; 70 ;1c26
	nop			; 00 ;1c27
	jr c,l1c2ah		; 38 00 ;1c28
l1c2ah:
	and b			; a0 ;1c2a
	bit 7,(ix+002h)		; dd cb 02 7e ;1c2b
	jr nz,l1c39h		; 20 08 ;1c2f
	set 7,(ix+002h)		; dd cb 02 fe ;1c31
	ld (ix+025h),000h		; dd 36 25 00 ;1c35
l1c39h:
	call sub_2e98h_2d_scale_clamp		; cd 98 2e ;1c39
	call sub_1e25h		; cd 25 1e ;1c3c
	ld a,(ix+025h)		; dd 7e 25 ;1c3f
	and 00fh		; e6 0f ;1c42
	ld hl,l1c4ah		; 21 4a 1c ;1c44
	jp l0807h_game_fsm		; c3 07 08 ;1c47
l1c4ah:
	ld d,(hl)			; 56 ;1c4a
	inc e			; 1c ;1c4b
	rst 30h			; f7 ;1c4c
	inc e			; 1c ;1c4d
	daa			; 27 ;1c4e
	dec e			; 1d ;1c4f
	sbc a,h			; 9c ;1c50
	inc e			; 1c ;1c51
	adc a,c			; 89 ;1c52
	dec e			; 1d ;1c53
	ld d,a			; 57 ;1c54
	dec e			; 1d ;1c55
	ld a,(ix+028h)		; dd 7e 28 ;1c56
	and 003h		; e6 03 ;1c59
	jr z,l1c64h		; 28 07 ;1c5b
	ld (ix+025h),002h		; dd 36 25 02 ;1c5d
	jp l1d27h		; c3 27 1d ;1c61
l1c64h:
	ld a,(ix+015h)		; dd 7e 15 ;1c64
	and a			; a7 ;1c67
	jr nz,l1c95h		; 20 2b ;1c68
	ld a,(ix+027h)		; dd 7e 27 ;1c6a
	and a			; a7 ;1c6d
	jr z,l1c78h		; 28 08 ;1c6e
	bit 7,a		; cb 7f ;1c70
	jr nz,l1c95h		; 20 21 ;1c72
	set 7,(ix+027h)		; dd cb 27 fe ;1c74
l1c78h:
	ld a,(ix+023h)		; dd 7e 23 ;1c78
	and a			; a7 ;1c7b
	jr nz,l1c92h		; 20 14 ;1c7c
	ld (ix+022h),000h		; dd 36 22 00 ;1c7e
	ld (ix+023h),0ffh		; dd 36 23 ff ;1c82
	call sub_ball_racket_hit		; cd bf 2b ;1c86
	ld a,(ix+016h)		; dd 7e 16 ;1c89
	ld (ix+017h),a		; dd 77 17 ;1c8c
	ld (ix+020h),a		; dd 77 20 ;1c8f
l1c92h:
	jp sub_animate		; c3 69 2a ;1c92
l1c95h:
	ld (ix+025h),001h		; dd 36 25 01 ;1c95
	jp l1cf7h		; c3 f7 1c ;1c99
	ld a,(ix+028h)		; dd 7e 28 ;1c9c
	and 003h		; e6 03 ;1c9f
	jr z,l1caah		; 28 07 ;1ca1
	ld (ix+025h),004h		; dd 36 25 04 ;1ca3
	jp l1d89h		; c3 89 1d ;1ca7
l1caah:
	ld a,(ix+015h)		; dd 7e 15 ;1caa
	ld c,a			; 4f ;1cad
	and 00ch		; e6 0c ;1cae
	jr nz,l1ccdh		; 20 1b ;1cb0
	ld a,(ix+027h)		; dd 7e 27 ;1cb2
	and a			; a7 ;1cb5
	jr z,l1cc6h		; 28 0e ;1cb6
	push bc			; c5 ;1cb8
	call sub_ball_racket_hit		; cd bf 2b ;1cb9
	pop bc			; c1 ;1cbc
	ld a,(ix+016h)		; dd 7e 16 ;1cbd
	ld b,(ix+017h)		; dd 46 17 ;1cc0
	cp b			; b8 ;1cc3
	jr nz,l1cf0h		; 20 2a ;1cc4
l1cc6h:
	ld a,c			; 79 ;1cc6
	and 003h		; e6 03 ;1cc7
	jr z,l1ceah		; 28 1f ;1cc9
	jr l1cdch		; 18 0f ;1ccb
l1ccdh:
	call sub_ball_racket_hit		; cd bf 2b ;1ccd
	ld a,(ix+016h)		; dd 7e 16 ;1cd0
	ld b,(ix+017h)		; dd 46 17 ;1cd3
	cp b			; b8 ;1cd6
	jr nz,l1cf0h		; 20 17 ;1cd7
	ld (ix+020h),a		; dd 77 20 ;1cd9
l1cdch:
	ld a,(ix+023h)		; dd 7e 23 ;1cdc
	and a			; a7 ;1cdf
	jr nz,l1ceah		; 20 08 ;1ce0
	ld (ix+022h),002h		; dd 36 22 02 ;1ce2
	ld (ix+023h),0ffh		; dd 36 23 ff ;1ce6
l1ceah:
	call sub_move_players		; cd a1 26 ;1cea
	jp sub_animate		; c3 69 2a ;1ced
l1cf0h:
	ld (ix+025h),005h		; dd 36 25 05 ;1cf0
	jp l1d57h		; c3 57 1d ;1cf4
l1cf7h:
	ld a,(ix+025h)		; dd 7e 25 ;1cf7
	bit 7,a		; cb 7f ;1cfa
	jr nz,l1d17h		; 20 19 ;1cfc
	set 7,a		; cb ff ;1cfe
l1d00h:
	ld (ix+025h),a		; dd 77 25 ;1d00
	ld (ix+022h),00ah		; dd 36 22 0a ;1d03
	ld (ix+023h),0ffh		; dd 36 23 ff ;1d07
	call sub_ball_racket_hit		; cd bf 2b ;1d0b
	ld a,(ix+016h)		; dd 7e 16 ;1d0e
	ld (ix+017h),a		; dd 77 17 ;1d11
	ld (ix+020h),a		; dd 77 20 ;1d14
l1d17h:
	call sub_move_players		; cd a1 26 ;1d17
	call sub_animate		; cd 69 2a ;1d1a
	ld a,(ix+023h)		; dd 7e 23 ;1d1d
	and a			; a7 ;1d20
	ret nz			; c0 ;1d21
	ld (ix+025h),003h		; dd 36 25 03 ;1d22
	ret			; c9 ;1d26
l1d27h:
	ld a,(ix+025h)		; dd 7e 25 ;1d27
	bit 7,a		; cb 7f ;1d2a
	jr nz,l1d47h		; 20 19 ;1d2c
	set 7,a		; cb ff ;1d2e
	ld (ix+025h),a		; dd 77 25 ;1d30
	ld (ix+022h),00ah		; dd 36 22 0a ;1d33
	ld (ix+023h),0ffh		; dd 36 23 ff ;1d37
	call sub_ball_racket_hit		; cd bf 2b ;1d3b
	ld a,(ix+016h)		; dd 7e 16 ;1d3e
	ld (ix+017h),a		; dd 77 17 ;1d41
	ld (ix+020h),a		; dd 77 20 ;1d44
l1d47h:
	call sub_move_players		; cd a1 26 ;1d47
	call sub_animate		; cd 69 2a ;1d4a
	ld a,(ix+023h)		; dd 7e 23 ;1d4d
	and a			; a7 ;1d50
	ret nz			; c0 ;1d51
	ld (ix+025h),004h		; dd 36 25 04 ;1d52
	ret			; c9 ;1d56
l1d57h:
	ld a,(ix+025h)		; dd 7e 25 ;1d57
	bit 7,a		; cb 7f ;1d5a
	jr nz,l1d73h		; 20 15 ;1d5c
	set 7,(ix+025h)		; dd cb 25 fe ;1d5e
	call sub_ball_racket_hit		; cd bf 2b ;1d62
	ld a,(ix+016h)		; dd 7e 16 ;1d65
	ld (ix+020h),a		; dd 77 20 ;1d68
	ld (ix+022h),00bh		; dd 36 22 0b ;1d6b
	ld (ix+023h),0ffh		; dd 36 23 ff ;1d6f
l1d73h:
	call sub_move_players		; cd a1 26 ;1d73
	call sub_animate		; cd 69 2a ;1d76
	ld a,(ix+023h)		; dd 7e 23 ;1d79
	and a			; a7 ;1d7c
	ret nz			; c0 ;1d7d
	ld a,(ix+016h)		; dd 7e 16 ;1d7e
	ld (ix+017h),a		; dd 77 17 ;1d81
	ld (ix+025h),003h		; dd 36 25 03 ;1d84
	ret			; c9 ;1d88
l1d89h:
	ld a,(ix+025h)		; dd 7e 25 ;1d89
	bit 7,a		; cb 7f ;1d8c
	jr nz,l1dffh		; 20 6f ;1d8e
	set 7,a		; cb ff ;1d90
	ld (ix+025h),a		; dd 77 25 ;1d92
	call sub_2c13h_ball_state		; cd 13 2c ;1d95
	ld e,a			; 5f ;1d98
	ld d,a			; 57 ;1d99
	ld a,(ix+02eh)		; dd 7e 2e ;1d9a
	cp 003h		; fe 03 ;1d9d
	jr nc,l1db0h		; 30 0f ;1d9f
	ld a,e			; 7b ;1da1
	cp 002h		; fe 02 ;1da2
	jr c,l1dd3h		; 38 2d ;1da4
	ld e,000h		; 1e 00 ;1da6
	cp 003h		; fe 03 ;1da8
	jr z,l1dd3h		; 28 27 ;1daa
	ld e,001h		; 1e 01 ;1dac
	jr l1dd3h		; 18 23 ;1dae
l1db0h:
	cp 004h		; fe 04 ;1db0
	jr nc,l1db7h		; 30 03 ;1db2
	inc e			; 1c ;1db4
	jr l1dd3h		; 18 1c ;1db5
l1db7h:
	cp 005h		; fe 05 ;1db7
	jr c,l1dd3h		; 38 18 ;1db9
	ld a,(0c401h)		; 3a 01 c4 ;1dbb
	and 07fh		; e6 7f ;1dbe
	cp 01ah		; fe 1a ;1dc0
	ld e,002h		; 1e 02 ;1dc2
	jr z,l1dd3h		; 28 0d ;1dc4
	ld e,003h		; 1e 03 ;1dc6
	cp 01dh		; fe 1d ;1dc8
	jr nz,l1dd3h		; 20 07 ;1dca
	ld a,d			; 7a ;1dcc
	cp 001h		; fe 01 ;1dcd
	jr c,l1dd3h		; 38 02 ;1dcf
	ld e,002h		; 1e 02 ;1dd1
l1dd3h:
	ld a,e			; 7b ;1dd3
	ld b,004h		; 06 04 ;1dd4
	ld c,01ch		; 0e 1c ;1dd6
	and a			; a7 ;1dd8
	jr z,l1defh		; 28 14 ;1dd9
	ld b,003h		; 06 03 ;1ddb
l1dddh:
	ld c,01dh		; 0e 1d ;1ddd
	cp 001h		; fe 01 ;1ddf
	jr z,l1defh		; 28 0c ;1de1
	ld b,005h		; 06 05 ;1de3
	ld c,01bh		; 0e 1b ;1de5
	cp 002h		; fe 02 ;1de7
	jr z,l1defh		; 28 04 ;1de9
	ld b,009h		; 06 09 ;1deb
	ld c,01ah		; 0e 1a ;1ded
l1defh:
	ld (ix+022h),b		; dd 70 22 ;1def
	ld (ix+01fh),c		; dd 71 1f ;1df2
	ld (ix+023h),0ffh		; dd 36 23 ff ;1df5
	ld a,(ix+016h)		; dd 7e 16 ;1df9
	ld (ix+020h),a		; dd 77 20 ;1dfc
l1dffh:
	call sub_move_players		; cd a1 26 ;1dff
	call sub_ball_trajectory		; cd 40 2c ;1e02
	ld a,(ix+023h)		; dd 7e 23 ;1e05
	and a			; a7 ;1e08
	jr z,l1e0fh		; 28 04 ;1e09
	call sub_animate		; cd 69 2a ;1e0b
l1e0eh:
	ret			; c9 ;1e0e
l1e0fh:
	ld a,(ix+027h)		; dd 7e 27 ;1e0f
	and a			; a7 ;1e12
	ld a,000h		; 3e 00 ;1e13
	jr z,l1e19h		; 28 02 ;1e15
	ld a,001h		; 3e 01 ;1e17
l1e19h:
	ld (ix+025h),a		; dd 77 25 ;1e19
	ld (ix+019h),000h		; dd 36 19 00 ;1e1c
	ld (ix+01dh),000h		; dd 36 1d 00 ;1e20
	ret			; c9 ;1e24
sub_1e25h:
	ld a,(ix+001h)		; dd 7e 01 ;1e25
	and 003h		; e6 03 ;1e28
	ld e,a			; 5f ;1e2a
	ld d,000h		; 16 00 ;1e2b
	ld hl,l1e5ah		; 21 5a 1e ;1e2d
	add hl,de			; 19 ;1e30
	ld e,(hl)			; 5e ;1e31
	ld hl,0c200h		; 21 00 c2 ;1e32
	add hl,de			; 19 ;1e35
	push hl			; e5 ;1e36
	pop iy		; fd e1 ;1e37
	ld a,(ix+030h)		; dd 7e 30 ;1e39
	and 00fh		; e6 0f ;1e3c
	ld hl,l1e44h		; 21 44 1e ;1e3e
	jp l0807h_game_fsm		; c3 07 08 ;1e41
l1e44h:
	ld e,(hl)			; 5e ;1e44
	ld e,0feh		; 1e fe ;1e45
	ld e,06ch		; 1e 6c ;1e47
	rra			; 1f ;1e49
	nop			; 00 ;1e4a
	jr nz,$+85		; 20 55 ;1e4b
	jr nz,l1dddh		; 20 8e ;1e4d
	jr nz,$-52		; 20 cc ;1e4f
	jr nz,l1e0eh		; 20 bb ;1e51
	ld hl,l21eeh		; 21 ee 21 ;1e53
	inc hl			; 23 ;1e56
	ld hl,l2183h		; 21 83 21 ;1e57
l1e5ah:
	add a,b			; 80 ;1e5a
	ret nz			; c0 ;1e5b
	nop			; 00 ;1e5c
	ld b,b			; 40 ;1e5d
	ld a,(ix+027h)		; dd 7e 27 ;1e5e
	and a			; a7 ;1e61
	jr nz,l1e83h		; 20 1f ;1e62
	ld (ix+028h),a		; dd 77 28 ;1e64
	ld (ix+015h),a		; dd 77 15 ;1e67
	ld a,(iy+033h)		; fd 7e 33 ;1e6a
	cp 004h		; fe 04 ;1e6d
	jr nz,l1e75h		; 20 04 ;1e6f
	ld (iy+033h),003h		; fd 36 33 03 ;1e71
l1e75h:
	ld a,(ix+031h)		; dd 7e 31 ;1e75
	and 007h		; e6 07 ;1e78
	cp 007h		; fe 07 ;1e7a
	ret nz			; c0 ;1e7c
	ld (ix+030h),004h		; dd 36 30 04 ;1e7d
	jr l1ef0h		; 18 6d ;1e81
l1e83h:
	ld a,(0c401h)		; 3a 01 c4 ;1e83
	cp 019h		; fe 19 ;1e86
	jr z,l1ee8h		; 28 5e ;1e88
	cp 01ch		; fe 1c ;1e8a
	jr nz,l1e9bh		; 20 0d ;1e8c
	ld a,(0c000h)		; 3a 00 c0 ;1e8e
	bit 7,a		; cb 7f ;1e91
	jr nz,l1edfh		; 20 4a ;1e93
	ld (ix+030h),006h		; dd 36 30 06 ;1e95
	jr l1ef0h		; 18 55 ;1e99
l1e9bh:
	bit 0,(ix+001h)		; dd cb 01 46 ;1e9b
	jr nz,l1eb3h		; 20 12 ;1e9f
	ld a,(0c30bh)		; 3a 0b c3 ;1ea1
	add a,008h		; c6 08 ;1ea4
	ld e,(ix+00bh)		; dd 5e 0b ;1ea6
	sub e			; 93 ;1ea9
	jr c,l1ec2h		; 38 16 ;1eaa
	cp 006h		; fe 06 ;1eac
	jr c,l1ee8h		; 38 38 ;1eae
	jp l1ec2h		; c3 c2 1e ;1eb0
l1eb3h:
	ld a,(0c30bh)		; 3a 0b c3 ;1eb3
	sub 008h		; d6 08 ;1eb6
	ld e,(ix+00bh)		; dd 5e 0b ;1eb8
	sub e			; 93 ;1ebb
	jr nc,l1ec2h		; 30 04 ;1ebc
	cp 0fah		; fe fa ;1ebe
	jr c,l1ee8h		; 38 26 ;1ec0
l1ec2h:
	ld a,(0c401h)		; 3a 01 c4 ;1ec2
	cp 01ch		; fe 1c ;1ec5
	jr z,l1ef5h		; 28 2c ;1ec7
	ld a,(0c000h)		; 3a 00 c0 ;1ec9
	bit 7,a		; cb 7f ;1ecc
	jr z,l1edfh		; 28 0f ;1ece
	call sub_compute_ball_deflection		; cd 0a 16 ;1ed0
	ld h,(ix+00dh)		; dd 66 0d ;1ed3
	sub h			; 94 ;1ed6
	jr nc,l1edbh		; 30 02 ;1ed7
	neg		; ed 44 ;1ed9
l1edbh:
	cp 020h		; fe 20 ;1edb
	jr nc,l1ef5h		; 30 16 ;1edd
l1edfh:
	ld (iy+033h),003h		; fd 36 33 03 ;1edf
	ld (ix+030h),002h		; dd 36 30 02 ;1ee3
	ret			; c9 ;1ee7
l1ee8h:
	xor a			; af ;1ee8
	ld (ix+028h),a		; dd 77 28 ;1ee9
	ld (ix+015h),a		; dd 77 15 ;1eec
	ret			; c9 ;1eef
l1ef0h:
	ld (iy+033h),002h		; fd 36 33 02 ;1ef0
	ret			; c9 ;1ef4
l1ef5h:
	ld (iy+033h),001h		; fd 36 33 01 ;1ef5
	ld (ix+030h),00ah		; dd 36 30 0a ;1ef9
	ret			; c9 ;1efd
	ld a,(0c400h)		; 3a 00 c4 ;1efe
	and a			; a7 ;1f01
	ret nz			; c0 ;1f02
	ld a,(ix+033h)		; dd 7e 33 ;1f03
	cp 002h		; fe 02 ;1f06
	jr z,l1f3ch		; 28 32 ;1f08
	cp 005h		; fe 05 ;1f0a
	jr z,l1f3ch		; 28 2e ;1f0c
	cp 003h		; fe 03 ;1f0e
	jr nz,l1f22h		; 20 10 ;1f10
	ld a,(0c000h)		; 3a 00 c0 ;1f12
	bit 7,a		; cb 7f ;1f15
	jr z,l1f22h		; 28 09 ;1f17
	ld (ix+030h),009h		; dd 36 30 09 ;1f19
	ld (ix+033h),004h		; dd 36 33 04 ;1f1d
	ret			; c9 ;1f21
l1f22h:
	ld a,(ix+027h)		; dd 7e 27 ;1f22
	and a			; a7 ;1f25
	jr nz,l1f41h		; 20 19 ;1f26
	ld (ix+028h),a		; dd 77 28 ;1f28
	ld (ix+015h),a		; dd 77 15 ;1f2b
	ld a,(ix+031h)		; dd 7e 31 ;1f2e
	and 003h		; e6 03 ;1f31
	cp 003h		; fe 03 ;1f33
	ret nz			; c0 ;1f35
	ld a,(0c000h)		; 3a 00 c0 ;1f36
	and 080h		; e6 80 ;1f39
	ret nz			; c0 ;1f3b
l1f3ch:
	ld (ix+030h),005h		; dd 36 30 05 ;1f3c
	ret			; c9 ;1f40
l1f41h:
	ld a,(0c000h)		; 3a 00 c0 ;1f41
	ld b,003h		; 06 03 ;1f44
	bit 7,a		; cb 7f ;1f46
	jr z,l1f68h		; 28 1e ;1f48
	ld a,(0c401h)		; 3a 01 c4 ;1f4a
	cp 019h		; fe 19 ;1f4d
	jr z,l1f68h		; 28 17 ;1f4f
	ld a,(ix+033h)		; dd 7e 33 ;1f51
	and a			; a7 ;1f54
	ret z			; c8 ;1f55
	ld b,003h		; 06 03 ;1f56
	cp 001h		; fe 01 ;1f58
	jr z,l1f68h		; 28 0c ;1f5a
	ld b,005h		; 06 05 ;1f5c
	cp 002h		; fe 02 ;1f5e
	jr z,l1f68h		; 28 06 ;1f60
	ld b,009h		; 06 09 ;1f62
	cp 003h		; fe 03 ;1f64
	jr z,l1f68h		; 28 00 ;1f66
l1f68h:
	ld (ix+030h),b		; dd 70 30 ;1f68
	ret			; c9 ;1f6b
	ld a,(ix+027h)		; dd 7e 27 ;1f6c
	and a			; a7 ;1f6f
	jr nz,l1f7fh		; 20 0d ;1f70
	ld (ix+030h),000h		; dd 36 30 00 ;1f72
	ld (ix+033h),000h		; dd 36 33 00 ;1f76
	ld (ix+028h),000h		; dd 36 28 00 ;1f7a
	ret			; c9 ;1f7e
l1f7fh:
	bit 0,(ix+001h)		; dd cb 01 46 ;1f7f
	jr nz,l1f97h		; 20 12 ;1f83
	ld a,(0c30bh)		; 3a 0b c3 ;1f85
	add a,008h		; c6 08 ;1f88
	ld e,(ix+00bh)		; dd 5e 0b ;1f8a
	sub e			; 93 ;1f8d
	jr c,l1fe0h		; 38 50 ;1f8e
	cp 006h		; fe 06 ;1f90
	jr nc,l1fe0h		; 30 4c ;1f92
	jp l1fa6h		; c3 a6 1f ;1f94
l1f97h:
	ld a,(0c30bh)		; 3a 0b c3 ;1f97
	sub 008h		; d6 08 ;1f9a
	ld e,(ix+00bh)		; dd 5e 0b ;1f9c
	sub e			; 93 ;1f9f
	jr nc,l1fc0h		; 30 1e ;1fa0
	cp 0fah		; fe fa ;1fa2
	jr nc,l1fc0h		; 30 1a ;1fa4
l1fa6h:
	ld a,(0c000h)		; 3a 00 c0 ;1fa6
	bit 7,a		; cb 7f ;1fa9
	ld a,004h		; 3e 04 ;1fab
	ld b,002h		; 06 02 ;1fad
	jr z,l1fb5h		; 28 04 ;1faf
	ld a,00ah		; 3e 0a ;1fb1
	ld b,001h		; 06 01 ;1fb3
l1fb5h:
	ld (ix+030h),a		; dd 77 30 ;1fb5
	ld (iy+033h),b		; fd 70 33 ;1fb8
	ld (ix+028h),000h		; dd 36 28 00 ;1fbb
l1fbfh:
	ret			; c9 ;1fbf
l1fc0h:
	ld e,04ch		; 1e 4c ;1fc0
	call sub_compute_ball_deflection		; cd 0a 16 ;1fc2
	ld l,000h		; 2e 00 ;1fc5
	ld h,a			; 67 ;1fc7
	ld de,04c00h		; 11 00 4c ;1fc8
	call sub_221eh_collision_broad		; cd 1e 22 ;1fcb
	ld (ix+015h),a		; dd 77 15 ;1fce
	call sub_2320h		; cd 20 23 ;1fd1
	ld a,(ix+018h)		; dd 7e 18 ;1fd4
	and a			; a7 ;1fd7
	ld (ix+028h),a		; dd 77 28 ;1fd8
	ret z			; c8 ;1fdb
	inc (ix+031h)		; dd 34 31 ;1fdc
	ret			; c9 ;1fdf
l1fe0h:
	ld e,080h		; 1e 80 ;1fe0
	call sub_compute_ball_deflection		; cd 0a 16 ;1fe2
	ld l,000h		; 2e 00 ;1fe5
	ld h,a			; 67 ;1fe7
	ld de,08000h		; 11 00 80 ;1fe8
	call sub_2298h_collision		; cd 98 22 ;1feb
	ld (ix+015h),a		; dd 77 15 ;1fee
	call sub_23aah		; cd aa 23 ;1ff1
	ld a,(ix+018h)		; dd 7e 18 ;1ff4
	and a			; a7 ;1ff7
	ld (ix+028h),a		; dd 77 28 ;1ff8
	ret z			; c8 ;1ffb
l1ffch:
	inc (ix+031h)		; dd 34 31 ;1ffc
	ret			; c9 ;1fff
l2000h:
	ld a,(ix+027h)		; dd 7e 27 ;2000
	and a			; a7 ;2003
	jr nz,l2013h		; 20 0d ;2004
	ld (ix+030h),009h		; dd 36 30 09 ;2006
	ld (ix+033h),000h		; dd 36 33 00 ;200a
	ld (ix+028h),000h		; dd 36 28 00 ;200e
	ret			; c9 ;2012
l2013h:
	bit 0,(ix+001h)		; dd cb 01 46 ;2013
	jr z,l2037h		; 28 1e ;2017
	ld e,028h		; 1e 28 ;2019
	call sub_compute_ball_deflection		; cd 0a 16 ;201b
	ld l,000h		; 2e 00 ;201e
	ld h,a			; 67 ;2020
	ld de,02800h		; 11 00 28 ;2021
	call sub_221eh_collision_broad		; cd 1e 22 ;2024
	ld (ix+015h),a		; dd 77 15 ;2027
	call sub_2320h		; cd 20 23 ;202a
	ld a,(ix+018h)		; dd 7e 18 ;202d
	ld (ix+028h),a		; dd 77 28 ;2030
	inc (ix+031h)		; dd 34 31 ;2033
	ret			; c9 ;2036
l2037h:
	ld e,0b0h		; 1e b0 ;2037
	call sub_compute_ball_deflection		; cd 0a 16 ;2039
	ld l,000h		; 2e 00 ;203c
	ld h,a			; 67 ;203e
	ld de,0b000h		; 11 00 b0 ;203f
	call sub_2298h_collision		; cd 98 22 ;2042
	ld (ix+015h),a		; dd 77 15 ;2045
	call sub_23aah		; cd aa 23 ;2048
	ld a,(ix+018h)		; dd 7e 18 ;204b
	ld (ix+028h),a		; dd 77 28 ;204e
	inc (ix+031h)		; dd 34 31 ;2051
	ret			; c9 ;2054
	bit 0,(ix+027h)		; dd cb 27 46 ;2055
	jr nz,l207eh		; 20 23 ;2059
	ld a,(ix+02eh)		; dd 7e 2e ;205b
	bit 0,(ix+001h)		; dd cb 01 46 ;205e
	jr z,l2075h		; 28 11 ;2062
	cp 002h		; fe 02 ;2064
	jr c,l207eh		; 38 16 ;2066
	ld (ix+015h),001h		; dd 36 15 01 ;2068
	ld (ix+028h),000h		; dd 36 28 00 ;206c
	ld (iy+033h),005h		; fd 36 33 05 ;2070
	ret			; c9 ;2074
l2075h:
	cp 0b0h		; fe b0 ;2075
	jr nc,l207eh		; 30 05 ;2077
	ld (ix+015h),002h		; dd 36 15 02 ;2079
	ret			; c9 ;207d
l207eh:
	xor a			; af ;207e
	ld (ix+015h),a		; dd 77 15 ;207f
	ld (ix+031h),a		; dd 77 31 ;2082
	ld (ix+030h),003h		; dd 36 30 03 ;2085
	ld (iy+033h),005h		; fd 36 33 05 ;2089
	ret			; c9 ;208d
	ld a,(0c400h)		; 3a 00 c4 ;208e
	and a			; a7 ;2091
	ret nz			; c0 ;2092
	bit 0,(ix+027h)		; dd cb 27 46 ;2093
	jr nz,l20b2h		; 20 19 ;2097
l2099h:
	ld a,(0c000h)		; 3a 00 c0 ;2099
	bit 7,a		; cb 7f ;209c
	ld a,002h		; 3e 02 ;209e
	jr z,l20a5h		; 28 03 ;20a0
	call sub_238dh		; cd 8d 23 ;20a2
l20a5h:
	ld (ix+015h),a		; dd 77 15 ;20a5
	ld a,(ix+02eh)		; dd 7e 2e ;20a8
	cp 006h		; fe 06 ;20ab
	ret c			; d8 ;20ad
	ld (ix+033h),000h		; dd 36 33 00 ;20ae
l20b2h:
	ld a,(0c000h)		; 3a 00 c0 ;20b2
	bit 7,a		; cb 7f ;20b5
	jr z,l20c0h		; 28 07 ;20b7
	ld a,(ix+033h)		; dd 7e 33 ;20b9
	cp 005h		; fe 05 ;20bc
	jr z,l2099h		; 28 d9 ;20be
l20c0h:
	xor a			; af ;20c0
	ld (ix+015h),a		; dd 77 15 ;20c1
	ld (ix+031h),a		; dd 77 31 ;20c4
	ld (ix+030h),000h		; dd 36 30 00 ;20c7
	ret			; c9 ;20cb
	ld a,(ix+027h)		; dd 7e 27 ;20cc
	and a			; a7 ;20cf
	jr nz,l20dfh		; 20 0d ;20d0
	ld (ix+030h),004h		; dd 36 30 04 ;20d2
	ld (ix+028h),000h		; dd 36 28 00 ;20d6
	ld (iy+033h),005h		; fd 36 33 05 ;20da
	ret			; c9 ;20de
l20dfh:
	bit 0,(ix+001h)		; dd cb 01 46 ;20df
	jr z,l2106h		; 28 21 ;20e3
	ld e,028h		; 1e 28 ;20e5
	call sub_compute_ball_deflection		; cd 0a 16 ;20e7
	ld l,000h		; 2e 00 ;20ea
	ld h,a			; 67 ;20ec
	ld de,02800h		; 11 00 28 ;20ed
	call sub_221eh_collision_broad		; cd 1e 22 ;20f0
	ld (ix+015h),a		; dd 77 15 ;20f3
	call sub_2320h		; cd 20 23 ;20f6
	ld a,(ix+018h)		; dd 7e 18 ;20f9
	and a			; a7 ;20fc
	ret z			; c8 ;20fd
	ld (ix+028h),a		; dd 77 28 ;20fe
	ld (iy+033h),005h		; fd 36 33 05 ;2101
	ret			; c9 ;2105
l2106h:
	ld e,0b0h		; 1e b0 ;2106
	call sub_compute_ball_deflection		; cd 0a 16 ;2108
	ld l,000h		; 2e 00 ;210b
	ld h,a			; 67 ;210d
	ld de,000b0h		; 11 b0 00 ;210e
	call sub_2298h_collision		; cd 98 22 ;2111
	ld (ix+015h),a		; dd 77 15 ;2114
	call sub_23aah		; cd aa 23 ;2117
	ld a,(ix+018h)		; dd 7e 18 ;211a
	and a			; a7 ;211d
	ret z			; c8 ;211e
	ld (ix+028h),a		; dd 77 28 ;211f
	ret			; c9 ;2122
	bit 7,(ix+030h)		; dd cb 30 7e ;2123
	jr nz,l2132h		; 20 09 ;2127
	set 7,(ix+030h)		; dd cb 30 fe ;2129
	ld (ix+028h),000h		; dd 36 28 00 ;212d
	ret			; c9 ;2131
l2132h:
	ld a,(ix+033h)		; dd 7e 33 ;2132
	cp 002h		; fe 02 ;2135
	jr z,l2146h		; 28 0d ;2137
	cp 005h		; fe 05 ;2139
	jr z,l2146h		; 28 09 ;213b
	cp 001h		; fe 01 ;213d
	jr nz,l214bh		; 20 0a ;213f
	ld (ix+030h),003h		; dd 36 30 03 ;2141
	ret			; c9 ;2145
l2146h:
	ld (ix+030h),005h		; dd 36 30 05 ;2146
	ret			; c9 ;214a
l214bh:
	ld b,(ix+02fh)		; dd 46 2f ;214b
	ld a,(iy+015h)		; fd 7e 15 ;214e
	and 00ch		; e6 0c ;2151
	jr nz,l2162h		; 20 0d ;2153
	ld a,(iy+02fh)		; fd 7e 2f ;2155
	cp 004h		; fe 04 ;2158
	ld b,008h		; 06 08 ;215a
	jr c,l217ah		; 38 1c ;215c
	ld b,004h		; 06 04 ;215e
	jr l217ah		; 18 18 ;2160
l2162h:
	bit 3,a		; cb 5f ;2162
	jr z,l216fh		; 28 09 ;2164
	ld a,b			; 78 ;2166
	cp 003h		; fe 03 ;2167
	ld b,004h		; 06 04 ;2169
	jr c,l217ah		; 38 0d ;216b
	jr l2176h		; 18 07 ;216d
l216fh:
	ld a,b			; 78 ;216f
	cp 005h		; fe 05 ;2170
	jr nc,l217ah		; 30 06 ;2172
	ld b,008h		; 06 08 ;2174
l2176h:
	ld (ix+015h),b		; dd 70 15 ;2176
	ret			; c9 ;2179
l217ah:
	xor a			; af ;217a
	ld (ix+015h),a		; dd 77 15 ;217b
	ld (ix+030h),001h		; dd 36 30 01 ;217e
	ret			; c9 ;2182
l2183h:
	ld b,(ix+02fh)		; dd 46 2f ;2183
	ld a,(iy+015h)		; fd 7e 15 ;2186
	and 00ch		; e6 0c ;2189
	jr nz,l219ah		; 20 0d ;218b
	ld a,(iy+02fh)		; fd 7e 2f ;218d
	cp 004h		; fe 04 ;2190
	ld b,008h		; 06 08 ;2192
	jr c,l21b2h		; 38 1c ;2194
	ld b,004h		; 06 04 ;2196
	jr l21b2h		; 18 18 ;2198
l219ah:
	bit 3,a		; cb 5f ;219a
	jr z,l21a7h		; 28 09 ;219c
	ld a,b			; 78 ;219e
	cp 003h		; fe 03 ;219f
	ld b,004h		; 06 04 ;21a1
	jr c,l21b2h		; 38 0d ;21a3
	jr l21aeh		; 18 07 ;21a5
l21a7h:
	ld a,b			; 78 ;21a7
	cp 005h		; fe 05 ;21a8
	jr nc,l21b2h		; 30 06 ;21aa
	ld b,008h		; 06 08 ;21ac
l21aeh:
	ld (ix+015h),b		; dd 70 15 ;21ae
	ret			; c9 ;21b1
l21b2h:
	xor a			; af ;21b2
	ld (ix+015h),a		; dd 77 15 ;21b3
	ld (ix+030h),000h		; dd 36 30 00 ;21b6
	ret			; c9 ;21ba
	bit 7,(ix+030h)		; dd cb 30 7e ;21bb
	jr nz,l21cdh		; 20 0c ;21bf
	set 7,(ix+030h)		; dd cb 30 fe ;21c1
	ld a,r		; ed 5f ;21c5
	and 01fh		; e6 1f ;21c7
	inc a			; 3c ;21c9
	ld (ix+031h),a		; dd 77 31 ;21ca
l21cdh:
	dec (ix+031h)		; dd 35 31 ;21cd
	ret nz			; c0 ;21d0
	ld a,(0c000h)		; 3a 00 c0 ;21d1
	bit 3,a		; cb 5f ;21d4
	ld a,000h		; 3e 00 ;21d6
	jr nz,l21e6h		; 20 0c ;21d8
	ld a,r		; ed 5f ;21da
	cp 03fh		; fe 3f ;21dc
	jr nc,l21e4h		; 30 04 ;21de
l21e0h:
	and 008h		; e6 08 ;21e0
	jr l21e6h		; 18 02 ;21e2
l21e4h:
	and 004h		; e6 04 ;21e4
l21e6h:
	ld (ix+015h),a		; dd 77 15 ;21e6
	res 7,(ix+030h)		; dd cb 30 be ;21e9
	ret			; c9 ;21ed
l21eeh:
	bit 7,(ix+030h)		; dd cb 30 7e ;21ee
	jr nz,l21fch		; 20 08 ;21f2
	set 7,(ix+030h)		; dd cb 30 fe ;21f4
	ld (ix+031h),000h		; dd 36 31 00 ;21f8
l21fch:
	ld a,(0c501h)		; 3a 01 c5 ;21fc
	cp 02ah		; fe 2a ;21ff
	jr c,l2207h		; 38 04 ;2201
	set 0,(ix+031h)		; dd cb 31 c6 ;2203
l2207h:
	bit 0,(ix+031h)		; dd cb 31 46 ;2207
	ret z			; c8 ;220b
	cp 028h		; fe 28 ;220c
	ret nc			; d0 ;220e
	cp 01ah		; fe 1a ;220f
	ret c			; d8 ;2211
	ld a,r		; ed 5f ;2212
	ld a,r		; ed 5f ;2214
	and 001h		; e6 01 ;2216
	ret nz			; c0 ;2218
	ld (ix+028h),001h		; dd 36 28 01 ;2219
	ret			; c9 ;221d
	.INCLUDE "physics/221eh_collision_broad.asm"
l2290h:
	call pe,0f6eeh		; ec ee f6 ;2290
	cp 002h		; fe 02 ;2293
	ld a,(bc)			; 0a ;2295
	ld (de),a			; 12 ;2296
	inc d			; 14 ;2297
	.INCLUDE "physics/2298h_collision.asm"
	.INCLUDE "math/neg_hl.asm"
sub_2320h:
	ld a,(0c518h)		; 3a 18 c5 ;2320
	and a			; a7 ;2323
	ld b,000h		; 06 00 ;2324
	jr nz,l2389h		; 20 61 ;2326
	ld a,(0c519h)		; 3a 19 c5 ;2328
	and a			; a7 ;232b
	jr nz,l2334h		; 20 06 ;232c
	ld a,(0c51dh)		; 3a 1d c5 ;232e
	and a			; a7 ;2331
	jr nz,l2389h		; 20 55 ;2332
l2334h:
	ld e,(ix+00bh)		; dd 5e 0b ;2334
	ld a,(0c401h)		; 3a 01 c4 ;2337
	cp 01ch		; fe 1c ;233a
	jr nz,l2348h		; 20 0a ;233c
	ld a,(0c04ah)		; 3a 4a c0 ;233e
	rra			; 1f ;2341
	and 003h		; e6 03 ;2342
	sub 002h		; d6 02 ;2344
	add a,e			; 83 ;2346
	ld e,a			; 5f ;2347
l2348h:
	ld a,(0c30bh)		; 3a 0b c3 ;2348
	sub e			; 93 ;234b
	jr nc,l2350h		; 30 02 ;234c
	neg		; ed 44 ;234e
l2350h:
	ld b,a			; 47 ;2350
	ld a,(ix+02eh)		; dd 7e 2e ;2351
	ld e,a			; 5f ;2354
	ld c,00ch		; 0e 0c ;2355
	cp 006h		; fe 06 ;2357
	ld a,b			; 78 ;2359
	ld b,000h		; 06 00 ;235a
	jr nc,l2360h		; 30 02 ;235c
	ld c,006h		; 0e 06 ;235e
l2360h:
	cp c			; b9 ;2360
	jr nc,l2389h		; 30 26 ;2361
	ld b,001h		; 06 01 ;2363
	ld a,e			; 7b ;2365
	cp 002h		; fe 02 ;2366
	jr nc,l2389h		; 30 1f ;2368
	ld a,(0c401h)		; 3a 01 c4 ;236a
	cp 01ah		; fe 1a ;236d
	jr nz,l237dh		; 20 0c ;236f
	; Randomness
	ld a,r		; ed 5f ;2371
	cp 020h		; fe 20 ;2373
	ld b,002h		; 06 02 ;2375
	jr c,l2389h		; 38 10 ;2377
	ld b,001h		; 06 01 ;2379
	jr l2389h		; 18 0c ;237b
l237dh:
	ld a,r		; ed 5f ;237d
	ld a,r		; ed 5f ;237f
	ld b,001h		; 06 01 ;2381
	cp 06fh		; fe 6f ;2383
	jr c,l2389h		; 38 02 ;2385
	ld b,002h		; 06 02 ;2387
l2389h:
	ld (ix+018h),b		; dd 70 18 ;2389
	ret			; c9 ;238c
sub_238dh:
	ld a,(iy+02fh)		; fd 7e 2f ;238d
	cp 004h		; fe 04 ;2390
	ld hl,0a000h		; 21 00 a0 ;2392
	jr c,l239ah		; 38 03 ;2395
	ld hl,05000h		; 21 00 50 ;2397
l239ah:
	bit 0,(ix+001h)		; dd cb 01 46 ;239a
	ld de,04c00h		; 11 00 4c ;239e
	jr nz,l23a6h		; 20 03 ;23a1
	ld de,08800h		; 11 00 88 ;23a3
l23a6h:
	call sub_221eh_collision_broad		; cd 1e 22 ;23a6
	ret			; c9 ;23a9
sub_23aah:
	ld a,(0c518h)		; 3a 18 c5 ;23aa
	and a			; a7 ;23ad
	ld b,000h		; 06 00 ;23ae
	jr nz,l23fbh		; 20 49 ;23b0
	ld a,(0c519h)		; 3a 19 c5 ;23b2
	and a			; a7 ;23b5
	jr nz,l23beh		; 20 06 ;23b6
	ld a,(0c51dh)		; 3a 1d c5 ;23b8
	and a			; a7 ;23bb
	jr nz,l23fbh		; 20 3d ;23bc
l23beh:
	ld a,(0c30bh)		; 3a 0b c3 ;23be
	ld e,a			; 5f ;23c1
	ld a,(ix+00bh)		; dd 7e 0b ;23c2
	sub e			; 93 ;23c5
	jr nc,l23cah		; 30 02 ;23c6
	neg		; ed 44 ;23c8
l23cah:
	ld b,a			; 47 ;23ca
	ld a,(ix+02eh)		; dd 7e 2e ;23cb
	ld e,a			; 5f ;23ce
	ld c,010h		; 0e 10 ;23cf
	cp 001h		; fe 01 ;23d1
	ld a,b			; 78 ;23d3
	ld b,000h		; 06 00 ;23d4
	jr c,l23dah		; 38 02 ;23d6
	ld c,018h		; 0e 18 ;23d8
l23dah:
	cp c			; b9 ;23da
	jr nc,l23fbh		; 30 1e ;23db
	ld b,001h		; 06 01 ;23dd
	ld a,e			; 7b ;23df
	cp 006h		; fe 06 ;23e0
	jr c,l23fbh		; 38 17 ;23e2
	ld a,(0c401h)		; 3a 01 c4 ;23e4
	cp 01ah		; fe 1a ;23e7
	jr nz,l23f3h		; 20 08 ;23e9
	ld a,r		; ed 5f ;23eb
	cp 03fh		; fe 3f ;23ed
	ld b,002h		; 06 02 ;23ef
	jr nc,l23fbh		; 30 08 ;23f1
l23f3h:
	ld a,r		; ed 5f ;23f3
	cp 030h		; fe 30 ;23f5
	jr c,l23fbh		; 38 02 ;23f7
	ld b,001h		; 06 01 ;23f9
l23fbh:
	ld (ix+018h),b		; dd 70 18 ;23fb
	ret			; c9 ;23fe
	bit 1,(ix+001h)		; dd cb 01 4e ;23ff
	ld hl,0c202h		; 21 02 c2 ;2403
	ld e,004h		; 1e 04 ;2406
	jr nz,l240fh		; 20 05 ;2408
	ld hl,0c282h		; 21 82 c2 ;240a
	ld e,000h		; 1e 00 ;240d
l240fh:
	ld a,(hl)			; 7e ;240f
	and 03fh		; e6 3f ;2410
	cp 003h		; fe 03 ;2412
	ld a,002h		; 3e 02 ;2414
	jr z,l2423h		; 28 0b ;2416
	ld a,(0c000h)		; 3a 00 c0 ;2418
	bit 7,a		; cb 7f ;241b
	ld a,000h		; 3e 00 ;241d
	jr nz,l2423h		; 20 02 ;241f
	ld a,008h		; 3e 08 ;2421
l2423h:
	or e			; b3 ;2423
	ld e,a			; 5f ;2424
	ld a,(0c044h)		; 3a 44 c0 ;2425
	and 001h		; e6 01 ;2428
	or e			; b3 ;242a
	add a,a			; 87 ;242b
	ld e,a			; 5f ;242c
	ld d,000h		; 16 00 ;242d
	ld hl,l2458h		; 21 58 24 ;242f
	add hl,de			; 19 ;2432
	ld a,(hl)			; 7e ;2433
	ld (ix+030h),a		; dd 77 30 ;2434
	inc hl			; 23 ;2437
	ld e,(hl)			; 5e ;2438
	ld hl,0246ch		; 21 6c 24 ;2439
	add hl,de			; 19 ;243c
	ld a,(hl)			; 7e ;243d
	ld (ix+00ah),a		; dd 77 0a ;243e
	inc hl			; 23 ;2441
	ld a,(hl)			; 7e ;2442
	ld (ix+00bh),a		; dd 77 0b ;2443
	ld (ix+014h),a		; dd 77 14 ;2446
	inc hl			; 23 ;2449
	ld a,(hl)			; 7e ;244a
	ld (ix+00ch),a		; dd 77 0c ;244b
	inc hl			; 23 ;244e
	ld a,(hl)			; 7e ;244f
	ld (ix+00dh),a		; dd 77 0d ;2450
	ld (ix+002h),013h		; dd 36 02 13 ;2453
	ret			; c9 ;2457
l2458h:
	ld bc,0050ch		; 01 0c 05 ;2458
	inc b			; 04 ;245b
	dec b			; 05 ;245c
	nop			; 00 ;245d
	dec b			; 05 ;245e
	inc b			; 04 ;245f
	dec b			; 05 ;2460
	nop			; 00 ;2461
	ld bc,00508h		; 01 08 05 ;2462
	nop			; 00 ;2465
	ld bc,00104h		; 01 04 01 ;2466
	inc c			; 0c ;2469
	ld bc,l0008h		; 01 08 00 ;246a
	adc a,b			; 88 ;246d
	nop			; 00 ;246e
	ld h,b			; 60 ;246f
	nop			; 00 ;2470
	adc a,b			; 88 ;2471
	nop			; 00 ;2472
	and b			; a0 ;2473
	nop			; 00 ;2474
	or b			; b0 ;2475
	nop			; 00 ;2476
	ld h,b			; 60 ;2477
	nop			; 00 ;2478
	or b			; b0 ;2479
	nop			; 00 ;247a
	and b			; a0 ;247b
	call sub_2e98h_2d_scale_clamp		; cd 98 2e ;247c
	ld a,(0c000h)		; 3a 00 c0 ;247f
	bit 3,a		; cb 5f ;2482
	call nz,sub_1e25h		; c4 25 1e ;2484
	bit 7,(ix+002h)		; dd cb 02 7e ;2487
	jr nz,l2495h		; 20 08 ;248b
	set 7,(ix+002h)		; dd cb 02 fe ;248d
	ld (ix+025h),000h		; dd 36 25 00 ;2491
l2495h:
	ld a,(ix+025h)		; dd 7e 25 ;2495
	and 00fh		; e6 0f ;2498
	ld hl,l24a0h		; 21 a0 24 ;249a
	jp l0807h_game_fsm		; c3 07 08 ;249d
l24a0h:
	xor h			; ac ;24a0
	inc h			; 24 ;24a1
	ld h,c			; 61 ;24a2
	dec h			; 25 ;24a3
	sub c			; 91 ;24a4
	dec h			; 25 ;24a5
	ret m			; f8 ;24a6
	inc h			; 24 ;24a7
	di			; f3 ;24a8
	dec h			; 25 ;24a9
	pop bc			; c1 ;24aa
	dec h			; 25 ;24ab
	call sub_265eh		; cd 5e 26 ;24ac
	jr nz,l24c8h		; 20 17 ;24af
	ld a,c			; 79 ;24b1
	rra			; 1f ;24b2
	rra			; 1f ;24b3
	rra			; 1f ;24b4
	rra			; 1f ;24b5
	and 003h		; e6 03 ;24b6
	jr z,l24c8h		; 28 0e ;24b8
	ld (ix+028h),a		; dd 77 28 ;24ba
	ld a,c			; 79 ;24bd
	and 00fh		; e6 0f ;24be
	ld (ix+015h),a		; dd 77 15 ;24c0
	ld (ix+025h),002h		; dd 36 25 02 ;24c3
	ret			; c9 ;24c7
l24c8h:
	ld a,c			; 79 ;24c8
	and 00fh		; e6 0f ;24c9
	ld (ix+015h),a		; dd 77 15 ;24cb
	jr nz,l24f3h		; 20 23 ;24ce
	ld a,(ix+027h)		; dd 7e 27 ;24d0
	and a			; a7 ;24d3
	jr nz,l24f3h		; 20 1d ;24d4
	ld a,(ix+023h)		; dd 7e 23 ;24d6
	and a			; a7 ;24d9
	jr nz,l24f0h		; 20 14 ;24da
	ld (ix+022h),000h		; dd 36 22 00 ;24dc
	ld (ix+023h),0ffh		; dd 36 23 ff ;24e0
	call sub_ball_racket_hit		; cd bf 2b ;24e4
	ld a,(ix+016h)		; dd 7e 16 ;24e7
	ld (ix+017h),a		; dd 77 17 ;24ea
	ld (ix+020h),a		; dd 77 20 ;24ed
l24f0h:
	jp sub_animate		; c3 69 2a ;24f0
l24f3h:
	ld (ix+025h),001h		; dd 36 25 01 ;24f3
	ret			; c9 ;24f7
	call sub_265eh		; cd 5e 26 ;24f8
	jr nz,l2514h		; 20 17 ;24fb
	ld a,c			; 79 ;24fd
	rra			; 1f ;24fe
	rra			; 1f ;24ff
	rra			; 1f ;2500
	rra			; 1f ;2501
	and 003h		; e6 03 ;2502
	jr z,l2514h		; 28 0e ;2504
	ld (ix+028h),a		; dd 77 28 ;2506
	ld a,c			; 79 ;2509
	and 00fh		; e6 0f ;250a
	ld (ix+015h),a		; dd 77 15 ;250c
	ld (ix+025h),004h		; dd 36 25 04 ;250f
	ret			; c9 ;2513
l2514h:
	ld a,c			; 79 ;2514
	and 00fh		; e6 0f ;2515
	ld (ix+015h),a		; dd 77 15 ;2517
	and 00ch		; e6 0c ;251a
	jr nz,l2539h		; 20 1b ;251c
	ld a,(ix+027h)		; dd 7e 27 ;251e
	and a			; a7 ;2521
	jr z,l2532h		; 28 0e ;2522
	push bc			; c5 ;2524
	call sub_ball_racket_hit		; cd bf 2b ;2525
	pop bc			; c1 ;2528
	ld a,(ix+016h)		; dd 7e 16 ;2529
	ld b,(ix+017h)		; dd 46 17 ;252c
	cp b			; b8 ;252f
	jr nz,l255ch		; 20 2a ;2530
l2532h:
	ld a,c			; 79 ;2532
	and 003h		; e6 03 ;2533
	jr nz,l2548h		; 20 11 ;2535
	jr l2556h		; 18 1d ;2537
l2539h:
	call sub_ball_racket_hit		; cd bf 2b ;2539
	ld a,(ix+016h)		; dd 7e 16 ;253c
	ld b,(ix+017h)		; dd 46 17 ;253f
	cp b			; b8 ;2542
	jr nz,l255ch		; 20 17 ;2543
	ld (ix+020h),a		; dd 77 20 ;2545
l2548h:
	ld a,(ix+023h)		; dd 7e 23 ;2548
	and a			; a7 ;254b
	jr nz,l2556h		; 20 08 ;254c
	ld (ix+022h),002h		; dd 36 22 02 ;254e
	ld (ix+023h),0ffh		; dd 36 23 ff ;2552
l2556h:
	call sub_move_players		; cd a1 26 ;2556
	jp sub_animate		; c3 69 2a ;2559
l255ch:
	ld (ix+025h),005h		; dd 36 25 05 ;255c
	ret			; c9 ;2560
	ld a,(ix+025h)		; dd 7e 25 ;2561
	bit 7,a		; cb 7f ;2564
	jr nz,l2581h		; 20 19 ;2566
	set 7,a		; cb ff ;2568
	ld (ix+025h),a		; dd 77 25 ;256a
	ld (ix+022h),00ah		; dd 36 22 0a ;256d
	ld (ix+023h),0ffh		; dd 36 23 ff ;2571
	call sub_ball_racket_hit		; cd bf 2b ;2575
	ld a,(ix+016h)		; dd 7e 16 ;2578
	ld (ix+017h),a		; dd 77 17 ;257b
	ld (ix+020h),a		; dd 77 20 ;257e
l2581h:
	call sub_move_players		; cd a1 26 ;2581
	call sub_animate		; cd 69 2a ;2584
	ld a,(ix+023h)		; dd 7e 23 ;2587
	and a			; a7 ;258a
	ret nz			; c0 ;258b
	ld (ix+025h),003h		; dd 36 25 03 ;258c
	ret			; c9 ;2590
	ld a,(ix+025h)		; dd 7e 25 ;2591
	bit 7,a		; cb 7f ;2594
	jr nz,l25b1h		; 20 19 ;2596
	set 7,a		; cb ff ;2598
	ld (ix+025h),a		; dd 77 25 ;259a
	ld (ix+022h),00ah		; dd 36 22 0a ;259d
	ld (ix+023h),0ffh		; dd 36 23 ff ;25a1
	call sub_ball_racket_hit		; cd bf 2b ;25a5
	ld a,(ix+016h)		; dd 7e 16 ;25a8
	ld (ix+017h),a		; dd 77 17 ;25ab
	ld (ix+020h),a		; dd 77 20 ;25ae
l25b1h:
	call sub_move_players		; cd a1 26 ;25b1
	call sub_animate		; cd 69 2a ;25b4
	ld a,(ix+023h)		; dd 7e 23 ;25b7
	and a			; a7 ;25ba
	ret nz			; c0 ;25bb
	ld (ix+025h),004h		; dd 36 25 04 ;25bc
	ret			; c9 ;25c0
	ld a,(ix+025h)		; dd 7e 25 ;25c1
	bit 7,a		; cb 7f ;25c4
	jr nz,l25ddh		; 20 15 ;25c6
	set 7,(ix+025h)		; dd cb 25 fe ;25c8
	call sub_ball_racket_hit		; cd bf 2b ;25cc
	ld a,(ix+016h)		; dd 7e 16 ;25cf
	ld (ix+020h),a		; dd 77 20 ;25d2
	ld (ix+022h),00bh		; dd 36 22 0b ;25d5
	ld (ix+023h),0ffh		; dd 36 23 ff ;25d9
l25ddh:
	call sub_move_players		; cd a1 26 ;25dd
	call sub_animate		; cd 69 2a ;25e0
	ld a,(ix+023h)		; dd 7e 23 ;25e3
	and a			; a7 ;25e6
	ret nz			; c0 ;25e7
	ld a,(ix+016h)		; dd 7e 16 ;25e8
	ld (ix+017h),a		; dd 77 17 ;25eb
	ld (ix+025h),003h		; dd 36 25 03 ;25ee
	ret			; c9 ;25f2
	ld a,(ix+025h)		; dd 7e 25 ;25f3
	bit 7,a		; cb 7f ;25f6
	jr nz,l2638h		; 20 3e ;25f8
	set 7,a		; cb ff ;25fa
	ld (ix+025h),a		; dd 77 25 ;25fc
	call sub_2c13h_ball_state		; cd 13 2c ;25ff
	ld b,004h		; 06 04 ;2602
	ld c,01ch		; 0e 1c ;2604
	cp 003h		; fe 03 ;2606
	jr z,l2628h		; 28 1e ;2608
	ld b,a			; 47 ;260a
	ld a,(ix+02eh)		; dd 7e 2e ;260b
	cp 003h		; fe 03 ;260e
	jr c,l2614h		; 38 02 ;2610
	ld b,002h		; 06 02 ;2612
l2614h:
	ld a,b			; 78 ;2614
	ld b,009h		; 06 09 ;2615
	ld c,01ah		; 0e 1a ;2617
	and a			; a7 ;2619
	jr z,l2628h		; 28 0c ;261a
	ld b,005h		; 06 05 ;261c
	ld c,01bh		; 0e 1b ;261e
	cp 001h		; fe 01 ;2620
	jr z,l2628h		; 28 04 ;2622
	ld b,003h		; 06 03 ;2624
	ld c,01dh		; 0e 1d ;2626
l2628h:
	ld (ix+022h),b		; dd 70 22 ;2628
	ld (ix+01fh),c		; dd 71 1f ;262b
	ld (ix+023h),0ffh		; dd 36 23 ff ;262e
	ld a,(ix+016h)		; dd 7e 16 ;2632
	ld (ix+020h),a		; dd 77 20 ;2635
l2638h:
	call sub_move_players		; cd a1 26 ;2638
	call sub_ball_trajectory		; cd 40 2c ;263b
	ld a,(ix+023h)		; dd 7e 23 ;263e
	and a			; a7 ;2641
	jr z,l2648h		; 28 04 ;2642
	call sub_animate		; cd 69 2a ;2644
	ret			; c9 ;2647
l2648h:
	ld a,(ix+027h)		; dd 7e 27 ;2648
	and a			; a7 ;264b
	ld a,000h		; 3e 00 ;264c
	jr z,l2652h		; 28 02 ;264e
	ld a,001h		; 3e 01 ;2650
l2652h:
	ld (ix+025h),a		; dd 77 25 ;2652
	ld (ix+019h),000h		; dd 36 19 00 ;2655
	ld (ix+01dh),000h		; dd 36 1d 00 ;2659
	ret			; c9 ;265d
sub_265eh:
	ld a,(0c000h)		; 3a 00 c0 ;265e
	bit 3,a		; cb 5f ;2661
	jr z,l2678h		; 28 13 ;2663
	ld a,(ix+028h)		; dd 7e 28 ;2665
	rla			; 17 ;2668
	rla			; 17 ;2669
	rla			; 17 ;266a
	rla			; 17 ;266b
	and 030h		; e6 30 ;266c
	ld e,(ix+015h)		; dd 5e 15 ;266e
	or e			; b3 ;2671
	and 03fh		; e6 3f ;2672
	ld c,a			; 4f ;2674
	ret z			; c8 ;2675
	xor a			; af ;2676
	ret			; c9 ;2677
l2678h:
	ld a,(0c1c1h)		; 3a c1 c1 ;2678
	ld b,a			; 47 ;267b
	ld a,(0c1c0h)		; 3a c0 c1 ;267c
	ld c,a			; 4f ;267f
	ld a,(ix+001h)		; dd 7e 01 ;2680
	and 002h		; e6 02 ;2683
	jr z,l268fh		; 28 08 ;2685
	ld a,(0c1c3h)		; 3a c3 c1 ;2687
	ld b,a			; 47 ;268a
	ld a,(0c1c2h)		; 3a c2 c1 ;268b
	ld c,a			; 4f ;268e
l268fh:
	ld a,b			; 78 ;268f
	and 020h		; e6 20 ;2690
	ld e,a			; 5f ;2692
	ld a,c			; 79 ;2693
	and 020h		; e6 20 ;2694
	and e			; a3 ;2696
	ret nz			; c0 ;2697
	ld a,b			; 78 ;2698
	and 010h		; e6 10 ;2699
	ld e,a			; 5f ;269b
	ld a,c			; 79 ;269c
	and 010h		; e6 10 ;269d
	and e			; a3 ;269f
	ret			; c9 ;26a0
	.INCLUDE "physics/move_players.asm"
	.INCLUDE "graphics/26ab_update.asm"
	.INCLUDE "physics/player_movement.asm"
	.INCLUDE "physics/apply_player_movement.asm"
	.INCLUDE "physics/data/table_player_velocity_top_a.asm"
	.INCLUDE "physics/data/table_player_velocity_top_b.asm"
	.INCLUDE "physics/data/table_player_velocity_bottom.asm"
	.INCLUDE "graphics/animate.asm"
data_animation_attributes:
	.INCLUDE "data/animation_table.asm"
	.INCLUDE "physics/ball_racket_hit.asm"
	.INCLUDE "physics/2c13h_ball_state.asm"
	.INCLUDE "physics/ball_trajectory.asm"
	.INCLUDE "math/abs10.asm"
l2d58h:
	rst 38h			; ff ;2d58
	rst 38h			; ff ;2d59
	rst 38h			; ff ;2d5a
	nop			; 00 ;2d5b
	nop			; 00 ;2d5c
	nop			; 00 ;2d5d
	nop			; 00 ;2d5e
	nop			; 00 ;2d5f
	nop			; 00 ;2d60
	nop			; 00 ;2d61
	nop			; 00 ;2d62
	nop			; 00 ;2d63
	nop			; 00 ;2d64
	ld bc,000ffh+2		; 01 01 01 ;2d65
	ld bc,000ffh+2		; 01 01 01 ;2d68
	nop			; 00 ;2d6b
	nop			; 00 ;2d6c
	nop			; 00 ;2d6d
	nop			; 00 ;2d6e
	nop			; 00 ;2d6f
	nop			; 00 ;2d70
	nop			; 00 ;2d71
	nop			; 00 ;2d72
	nop			; 00 ;2d73
	nop			; 00 ;2d74
	rst 38h			; ff ;2d75
	rst 38h			; ff ;2d76
	rst 38h			; ff ;2d77
l2d78h:
	nop			; 00 ;2d78
	nop			; 00 ;2d79
	nop			; 00 ;2d7a
	rst 38h			; ff ;2d7b
	nop			; 00 ;2d7c
	nop			; 00 ;2d7d
	nop			; 00 ;2d7e
	nop			; 00 ;2d7f
	nop			; 00 ;2d80
	nop			; 00 ;2d81
	nop			; 00 ;2d82
	nop			; 00 ;2d83
	ld bc,start		; 01 00 00 ;2d84
	nop			; 00 ;2d87
	nop			; 00 ;2d88
	nop			; 00 ;2d89
	nop			; 00 ;2d8a
	ld bc,start		; 01 00 00 ;2d8b
	nop			; 00 ;2d8e
	nop			; 00 ;2d8f
	nop			; 00 ;2d90
	nop			; 00 ;2d91
	nop			; 00 ;2d92
	nop			; 00 ;2d93
	rst 38h			; ff ;2d94
	nop			; 00 ;2d95
	nop			; 00 ;2d96
	nop			; 00 ;2d97
l2d98h:
	ld a,(bc)			; 0a ;2d98
	add hl,bc			; 09 ;2d99
	rlca			; 07 ;2d9a
	dec b			; 05 ;2d9b
	ld a,(bc)			; 0a ;2d9c
	add hl,bc			; 09 ;2d9d
	rlca			; 07 ;2d9e
	dec b			; 05 ;2d9f
	ld a,(bc)			; 0a ;2da0
	add hl,bc			; 09 ;2da1
	rlca			; 07 ;2da2
	dec b			; 05 ;2da3
	ld a,(bc)			; 0a ;2da4
	add hl,bc			; 09 ;2da5
	rlca			; 07 ;2da6
	dec b			; 05 ;2da7
	ld a,(bc)			; 0a ;2da8
	add hl,bc			; 09 ;2da9
	rlca			; 07 ;2daa
	dec b			; 05 ;2dab
	ld a,(bc)			; 0a ;2dac
	add hl,bc			; 09 ;2dad
	rlca			; 07 ;2dae
	dec b			; 05 ;2daf
	ld a,(bc)			; 0a ;2db0
	add hl,bc			; 09 ;2db1
	rlca			; 07 ;2db2
	dec b			; 05 ;2db3
	ld a,(bc)			; 0a ;2db4
	add hl,bc			; 09 ;2db5
	rlca			; 07 ;2db6
	dec b			; 05 ;2db7
	ld a,(bc)			; 0a ;2db8
	add hl,bc			; 09 ;2db9
	rlca			; 07 ;2dba
	dec b			; 05 ;2dbb
	ld a,(bc)			; 0a ;2dbc
	add hl,bc			; 09 ;2dbd
	rlca			; 07 ;2dbe
	dec b			; 05 ;2dbf
	ld a,(bc)			; 0a ;2dc0
	add hl,bc			; 09 ;2dc1
	rlca			; 07 ;2dc2
	dec b			; 05 ;2dc3
	ld a,(bc)			; 0a ;2dc4
	add hl,bc			; 09 ;2dc5
	rlca			; 07 ;2dc6
	dec b			; 05 ;2dc7
	ld a,(bc)			; 0a ;2dc8
	add hl,bc			; 09 ;2dc9
	rlca			; 07 ;2dca
	dec b			; 05 ;2dcb
	ld a,(bc)			; 0a ;2dcc
	add hl,bc			; 09 ;2dcd
	rlca			; 07 ;2dce
	dec b			; 05 ;2dcf
	ld a,(bc)			; 0a ;2dd0
	add hl,bc			; 09 ;2dd1
	rlca			; 07 ;2dd2
	dec b			; 05 ;2dd3
	ld a,(bc)			; 0a ;2dd4
	add hl,bc			; 09 ;2dd5
	rlca			; 07 ;2dd6
	dec b			; 05 ;2dd7
	ld a,(bc)			; 0a ;2dd8
	add hl,bc			; 09 ;2dd9
	rlca			; 07 ;2dda
	dec b			; 05 ;2ddb
	ld a,(bc)			; 0a ;2ddc
	add hl,bc			; 09 ;2ddd
	rlca			; 07 ;2dde
	dec b			; 05 ;2ddf
	ld a,(bc)			; 0a ;2de0
	add hl,bc			; 09 ;2de1
	rlca			; 07 ;2de2
	dec b			; 05 ;2de3
	ld a,(bc)			; 0a ;2de4
	add hl,bc			; 09 ;2de5
	rlca			; 07 ;2de6
	dec b			; 05 ;2de7
	ld a,(bc)			; 0a ;2de8
	add hl,bc			; 09 ;2de9
	rlca			; 07 ;2dea
	dec b			; 05 ;2deb
	ld a,(bc)			; 0a ;2dec
	add hl,bc			; 09 ;2ded
	rlca			; 07 ;2dee
	dec b			; 05 ;2def
	ld a,(bc)			; 0a ;2df0
	add hl,bc			; 09 ;2df1
	rlca			; 07 ;2df2
	dec b			; 05 ;2df3
	ld a,(bc)			; 0a ;2df4
	add hl,bc			; 09 ;2df5
	rlca			; 07 ;2df6
	dec b			; 05 ;2df7
	ld a,(bc)			; 0a ;2df8
	ex af,af'			; 08 ;2df9
	ld b,004h		; 06 04 ;2dfa
	ld a,(bc)			; 0a ;2dfc
	ex af,af'			; 08 ;2dfd
	ld b,004h		; 06 04 ;2dfe
	add hl,bc			; 09 ;2e00
	rlca			; 07 ;2e01
	ld b,004h		; 06 04 ;2e02
	add hl,bc			; 09 ;2e04
	rlca			; 07 ;2e05
	ld b,004h		; 06 04 ;2e06
	add hl,bc			; 09 ;2e08
	rlca			; 07 ;2e09
	ld b,004h		; 06 04 ;2e0a
	add hl,bc			; 09 ;2e0c
	rlca			; 07 ;2e0d
	ld b,004h		; 06 04 ;2e0e
	add hl,bc			; 09 ;2e10
	rlca			; 07 ;2e11
	ld b,004h		; 06 04 ;2e12
	add hl,bc			; 09 ;2e14
	rlca			; 07 ;2e15
	ld b,004h		; 06 04 ;2e16
	ld a,(bc)			; 0a ;2e18
	ex af,af'			; 08 ;2e19
	ld b,004h		; 06 04 ;2e1a
	ld a,(bc)			; 0a ;2e1c
	ex af,af'			; 08 ;2e1d
	ld b,004h		; 06 04 ;2e1e
	add hl,bc			; 09 ;2e20
	rlca			; 07 ;2e21
	ld b,004h		; 06 04 ;2e22
	add hl,bc			; 09 ;2e24
	rlca			; 07 ;2e25
	ld b,004h		; 06 04 ;2e26
	add hl,bc			; 09 ;2e28
	rlca			; 07 ;2e29
	ld b,004h		; 06 04 ;2e2a
	add hl,bc			; 09 ;2e2c
	rlca			; 07 ;2e2d
	ld b,004h		; 06 04 ;2e2e
	add hl,bc			; 09 ;2e30
	rlca			; 07 ;2e31
	ld b,004h		; 06 04 ;2e32
	add hl,bc			; 09 ;2e34
	rlca			; 07 ;2e35
	ld b,004h		; 06 04 ;2e36
	ld a,(bc)			; 0a ;2e38
	add hl,bc			; 09 ;2e39
	rlca			; 07 ;2e3a
	dec b			; 05 ;2e3b
	ld a,(bc)			; 0a ;2e3c
	add hl,bc			; 09 ;2e3d
	rlca			; 07 ;2e3e
	dec b			; 05 ;2e3f
	ld a,(bc)			; 0a ;2e40
	add hl,bc			; 09 ;2e41
	rlca			; 07 ;2e42
	dec b			; 05 ;2e43
	ld a,(bc)			; 0a ;2e44
	add hl,bc			; 09 ;2e45
	rlca			; 07 ;2e46
	dec b			; 05 ;2e47
	ld a,(bc)			; 0a ;2e48
	add hl,bc			; 09 ;2e49
	rlca			; 07 ;2e4a
	dec b			; 05 ;2e4b
	ld a,(bc)			; 0a ;2e4c
	add hl,bc			; 09 ;2e4d
	rlca			; 07 ;2e4e
	dec b			; 05 ;2e4f
	ld a,(bc)			; 0a ;2e50
	add hl,bc			; 09 ;2e51
	rlca			; 07 ;2e52
	dec b			; 05 ;2e53
	ld a,(bc)			; 0a ;2e54
	add hl,bc			; 09 ;2e55
	rlca			; 07 ;2e56
	dec b			; 05 ;2e57
	ld a,(bc)			; 0a ;2e58
	add hl,bc			; 09 ;2e59
	rlca			; 07 ;2e5a
	dec b			; 05 ;2e5b
	ld a,(bc)			; 0a ;2e5c
	add hl,bc			; 09 ;2e5d
	rlca			; 07 ;2e5e
	dec b			; 05 ;2e5f
	ld a,(bc)			; 0a ;2e60
	add hl,bc			; 09 ;2e61
	rlca			; 07 ;2e62
	dec b			; 05 ;2e63
	ld a,(bc)			; 0a ;2e64
	add hl,bc			; 09 ;2e65
	rlca			; 07 ;2e66
	dec b			; 05 ;2e67
	ld a,(bc)			; 0a ;2e68
	add hl,bc			; 09 ;2e69
	rlca			; 07 ;2e6a
	dec b			; 05 ;2e6b
	ld a,(bc)			; 0a ;2e6c
	add hl,bc			; 09 ;2e6d
	rlca			; 07 ;2e6e
	dec b			; 05 ;2e6f
	ld a,(bc)			; 0a ;2e70
	add hl,bc			; 09 ;2e71
	rlca			; 07 ;2e72
	dec b			; 05 ;2e73
	ld a,(bc)			; 0a ;2e74
	add hl,bc			; 09 ;2e75
	rlca			; 07 ;2e76
	dec b			; 05 ;2e77
	ld a,(bc)			; 0a ;2e78
	add hl,bc			; 09 ;2e79
	rlca			; 07 ;2e7a
	dec b			; 05 ;2e7b
	ld a,(bc)			; 0a ;2e7c
	add hl,bc			; 09 ;2e7d
	rlca			; 07 ;2e7e
	dec b			; 05 ;2e7f
	ld a,(bc)			; 0a ;2e80
	add hl,bc			; 09 ;2e81
	rlca			; 07 ;2e82
	dec b			; 05 ;2e83
	ld a,(bc)			; 0a ;2e84
	add hl,bc			; 09 ;2e85
	rlca			; 07 ;2e86
	dec b			; 05 ;2e87
	ld a,(bc)			; 0a ;2e88
	add hl,bc			; 09 ;2e89
	rlca			; 07 ;2e8a
	dec b			; 05 ;2e8b
	ld a,(bc)			; 0a ;2e8c
	add hl,bc			; 09 ;2e8d
	rlca			; 07 ;2e8e
	dec b			; 05 ;2e8f
	ld a,(bc)			; 0a ;2e90
	add hl,bc			; 09 ;2e91
	rlca			; 07 ;2e92
	dec b			; 05 ;2e93
	ld a,(bc)			; 0a ;2e94
	add hl,bc			; 09 ;2e95
	rlca			; 07 ;2e96
	dec b			; 05 ;2e97
	.INCLUDE "graphics/2e98h_2d_scale_clamp.asm"
	.INCLUDE "math/div_a_b_c.asm"
l2edfh:
	ld c,a			; 4f ;2edf
	ret			; c9 ;2ee0
l2ee1h:
	ld hl,0c480h		; 21 80 c4 ;2ee1
	ld a,(hl)			; 7e ;2ee4
	ld b,a			; 47 ;2ee5
	and 080h		; e6 80 ;2ee6
	rlca			; 07 ;2ee8
	ld c,b			; 48 ;2ee9
	ld b,a			; 47 ;2eea
	ld a,c			; 79 ;2eeb
	and 003h		; e6 03 ;2eec
	cp 000h		; fe 00 ;2eee
	jp z,l2f11h		; ca 11 2f ;2ef0
	cp 001h		; fe 01 ;2ef3
	jp z,l2f3dh		; ca 3d 2f ;2ef5
	cp 002h		; fe 02 ;2ef8
	jp z,l2f99h		; ca 99 2f ;2efa
	cp 003h		; fe 03 ;2efd
	jp z,l2f6bh		; ca 6b 2f ;2eff
	jr l2f10h		; 18 0c ;2f02
l2f04h:
	ld a,001h		; 3e 01 ;2f04
	ld (0c4a5h),a		; 32 a5 c4 ;2f06
	xor a			; af ;2f09
	ld (0c49dh),a		; 32 9d c4 ;2f0a
	ld (0c4a6h),a		; 32 a6 c4 ;2f0d
l2f10h:
	ret			; c9 ;2f10
l2f11h:
	ld a,096h		; 3e 96 ;2f11
	ld (0de00h),a		; 32 00 de ;2f13
	xor a			; af ;2f16
	ld (0c48bh),a		; 32 8b c4 ;2f17
	ld c,b			; 48 ;2f1a
	ld b,000h		; 06 00 ;2f1b
	ld hl,0c488h		; 21 88 c4 ;2f1d
	add hl,bc			; 09 ;2f20
	inc (hl)			; 34 ;2f21
	ld hl,03906h		; 21 06 39 ;2f22
	ld (0c4a8h),hl		; 22 a8 c4 ;2f25
	ld hl,0ca86h		; 21 86 ca ;2f28
	ld (0c4aah),hl		; 22 aa c4 ;2f2b
	ld h,004h		; 26 04 ;2f2e
	ld l,004h		; 2e 04 ;2f30
	ld (0c4ach),hl		; 22 ac c4 ;2f32
	ld a,001h		; 3e 01 ;2f35
	ld (0c4a7h),a		; 32 a7 c4 ;2f37
	jp l2f04h		; c3 04 2f ;2f3a
l2f3dh:
	ld a,097h		; 3e 97 ;2f3d
	ld (0de00h),a		; 32 00 de ;2f3f
	xor a			; af ;2f42
	ld (0c48bh),a		; 32 8b c4 ;2f43
	ld c,b			; 48 ;2f46
	ld b,000h		; 06 00 ;2f47
	ld hl,0c489h		; 21 89 c4 ;2f49
	xor a			; af ;2f4c
	sbc hl,bc		; ed 42 ;2f4d
	inc (hl)			; 34 ;2f4f
	ld hl,03906h		; 21 06 39 ;2f50
	ld (0c4a8h),hl		; 22 a8 c4 ;2f53
	ld hl,0ca5eh		; 21 5e ca ;2f56
	ld (0c4aah),hl		; 22 aa c4 ;2f59
	ld h,004h		; 26 04 ;2f5c
	ld l,005h		; 2e 05 ;2f5e
	ld (0c4ach),hl		; 22 ac c4 ;2f60
	ld a,001h		; 3e 01 ;2f63
	ld (0c4a7h),a		; 32 a7 c4 ;2f65
	jp l2f04h		; c3 04 2f ;2f68
l2f6bh:
	ld a,099h		; 3e 99 ;2f6b
	ld (0de00h),a		; 32 00 de ;2f6d
	xor a			; af ;2f70
	ld (0c48bh),a		; 32 8b c4 ;2f71
	ld c,b			; 48 ;2f74
	ld b,000h		; 06 00 ;2f75
	ld hl,0c489h		; 21 89 c4 ;2f77
	xor a			; af ;2f7a
	sbc hl,bc		; ed 42 ;2f7b
	inc (hl)			; 34 ;2f7d
	ld hl,03906h		; 21 06 39 ;2f7e
	ld (0c4a8h),hl		; 22 a8 c4 ;2f81
	ld hl,0ca36h		; 21 36 ca ;2f84
	ld (0c4aah),hl		; 22 aa c4 ;2f87
	ld h,004h		; 26 04 ;2f8a
	ld l,005h		; 2e 05 ;2f8c
	ld (0c4ach),hl		; 22 ac c4 ;2f8e
	ld a,001h		; 3e 01 ;2f91
	ld (0c4a7h),a		; 32 a7 c4 ;2f93
	jp l2f04h		; c3 04 2f ;2f96
l2f99h:
	ld a,098h		; 3e 98 ;2f99
	ld (0de00h),a		; 32 00 de ;2f9b
	ld hl,0c48bh		; 21 8b c4 ;2f9e
	inc (hl)			; 34 ;2fa1
	ld a,(hl)			; 7e ;2fa2
	cp 002h		; fe 02 ;2fa3
	jp nc,l2fc3h		; d2 c3 2f ;2fa5
	ld hl,03904h		; 21 04 39 ;2fa8
	ld (0c4a8h),hl		; 22 a8 c4 ;2fab
	ld hl,0c9feh		; 21 fe c9 ;2fae
	ld (0c4aah),hl		; 22 aa c4 ;2fb1
	ld h,004h		; 26 04 ;2fb4
	ld l,007h		; 2e 07 ;2fb6
	ld (0c4ach),hl		; 22 ac c4 ;2fb8
	ld a,001h		; 3e 01 ;2fbb
	ld (0c4a7h),a		; 32 a7 c4 ;2fbd
	jp l2f10h		; c3 10 2f ;2fc0
l2fc3h:
	xor a			; af ;2fc3
	ld (hl),a			; 77 ;2fc4
	ld c,b			; 48 ;2fc5
	ld b,000h		; 06 00 ;2fc6
	ld hl,0c489h		; 21 89 c4 ;2fc8
	xor a			; af ;2fcb
	sbc hl,bc		; ed 42 ;2fcc
	inc (hl)			; 34 ;2fce
	ld hl,038c4h		; 21 c4 38 ;2fcf
	ld (0c4a8h),hl		; 22 a8 c4 ;2fd2
	ld hl,0c980h		; 21 80 c9 ;2fd5
	ld (0c4aah),hl		; 22 aa c4 ;2fd8
	ld h,005h		; 26 05 ;2fdb
	ld l,007h		; 2e 07 ;2fdd
	ld (0c4ach),hl		; 22 ac c4 ;2fdf
	ld a,001h		; 3e 01 ;2fe2
	ld (0c4a7h),a		; 32 a7 c4 ;2fe4
	jp l2f10h		; c3 10 2f ;2fe7
sub_2feah:
	call sub_315eh		; cd 5e 31 ;2fea
	ld a,(0c481h)		; 3a 81 c4 ;2fed
	cp 000h		; fe 00 ;2ff0
	jp nz,l30d5h		; c2 d5 30 ;2ff2
	ld a,(0c488h)		; 3a 88 c4 ;2ff5
	cp 004h		; fe 04 ;2ff8
	jp c,l300fh		; da 0f 30 ;2ffa
	jp nz,l302ah		; c2 2a 30 ;2ffd
	ld hl,0c489h		; 21 89 c4 ;3000
	sub (hl)			; 96 ;3003
	jp z,l302fh		; ca 2f 30 ;3004
	ld a,(0c489h)		; 3a 89 c4 ;3007
	cp 003h		; fe 03 ;300a
	jp c,l302ah		; da 2a 30 ;300c
l300fh:
	ld a,(0c489h)		; 3a 89 c4 ;300f
	cp 004h		; fe 04 ;3012
	jp c,l3037h		; da 37 30 ;3014
	jp nz,l3025h		; c2 25 30 ;3017
	ld a,(0c488h)		; 3a 88 c4 ;301a
	cp 003h		; fe 03 ;301d
	jp c,l3025h		; da 25 30 ;301f
	jp l3037h		; c3 37 30 ;3022
l3025h:
	ld a,010h		; 3e 10 ;3025
	jp l3177h		; c3 77 31 ;3027
l302ah:
	ld a,001h		; 3e 01 ;302a
	jp l3177h		; c3 77 31 ;302c
l302fh:
	ld a,003h		; 3e 03 ;302f
	ld (0c488h),a		; 32 88 c4 ;3031
	ld (0c489h),a		; 32 89 c4 ;3034
l3037h:
	ld b,002h		; 06 02 ;3037
	ld de,03938h		; 11 38 39 ;3039
	ld hl,0c489h		; 21 89 c4 ;303c
l303fh:
	push bc			; c5 ;303f
	ld a,(hl)			; 7e ;3040
	cp 000h		; fe 00 ;3041
	jr nz,l3048h		; 20 03 ;3043
	ld hl,0caech		; 21 ec ca ;3045
l3048h:
	cp 001h		; fe 01 ;3048
	jr nz,l304fh		; 20 03 ;304a
	ld hl,0caf0h		; 21 f0 ca ;304c
l304fh:
	cp 002h		; fe 02 ;304f
	jr nz,l3056h		; 20 03 ;3051
	ld hl,0caf4h		; 21 f4 ca ;3053
l3056h:
	cp 003h		; fe 03 ;3056
	jr nz,l305dh		; 20 03 ;3058
	ld hl,0caf8h		; 21 f8 ca ;305a
l305dh:
	cp 004h		; fe 04 ;305d
	jr nz,l3081h		; 20 20 ;305f
	ld hl,0cafch		; 21 fc ca ;3061
	push de			; d5 ;3064
	ex de,hl			; eb ;3065
	ld bc,l0004h		; 01 04 00 ;3066
	di			; f3 ;3069
	call sub_cp_ram_vram		; cd 2f 04 ;306a
	ei			; fb ;306d
	pop de			; d1 ;306e
	ld hl,039f8h		; 21 f8 39 ;306f
	xor a			; af ;3072
	sbc hl,de		; ed 52 ;3073
	ld de,03938h		; 11 38 39 ;3075
	add hl,de			; 19 ;3078
	ex de,hl			; eb ;3079
	ld hl,0cb00h		; 21 00 cb ;307a
	pop bc			; c1 ;307d
	ld b,001h		; 06 01 ;307e
	push bc			; c5 ;3080
l3081h:
	ex de,hl			; eb ;3081
	ld bc,l0004h		; 01 04 00 ;3082
	di			; f3 ;3085
	call sub_cp_ram_vram		; cd 2f 04 ;3086
	ei			; fb ;3089
	pop bc			; c1 ;308a
	ld hl,0c488h		; 21 88 c4 ;308b
	ld de,039f8h		; 11 f8 39 ;308e
	djnz l303fh		; 10 ac ;3091
	ld a,(hl)			; 7e ;3093
	inc hl			; 23 ;3094
	ld b,(hl)			; 46 ;3095
	cp 003h		; fe 03 ;3096
	jp nz,l30b6h		; c2 b6 30 ;3098
	sub b			; 90 ;309b
	jp nz,l30b6h		; c2 b6 30 ;309c
	ld a,(0c48bh)		; 3a 8b c4 ;309f
	cp 000h		; fe 00 ;30a2
	jr nz,l30b6h		; 20 10 ;30a4
	ld a,001h		; 3e 01 ;30a6
	call sub_35e6h		; cd e6 35 ;30a8
	call sub_313ch		; cd 3c 31 ;30ab
	ld a,050h		; 3e 50 ;30ae
	call sub_35e6h		; cd e6 35 ;30b0
	call sub_315eh		; cd 5e 31 ;30b3
l30b6h:
	xor a			; af ;30b6
	ld (0c4a6h),a		; 32 a6 c4 ;30b7
	ld (0c49dh),a		; 32 9d c4 ;30ba
	call sub_3566h		; cd 66 35 ;30bd
	xor a			; af ;30c0
	ld (0c4a5h),a		; 32 a5 c4 ;30c1
	ld (0c49eh),a		; 32 9e c4 ;30c4
	ld a,001h		; 3e 01 ;30c7
	ld (0c49dh),a		; 32 9d c4 ;30c9
	ld a,(0c089h)		; 3a 89 c0 ;30cc
	or 080h		; f6 80 ;30cf
	ld (0c089h),a		; 32 89 c0 ;30d1
	ret			; c9 ;30d4
l30d5h:
	ld hl,0c488h		; 21 88 c4 ;30d5
	ld a,(hl)			; 7e ;30d8
	cp 007h		; fe 07 ;30d9
	jp c,l30edh		; da ed 30 ;30db
	inc hl			; 23 ;30de
	sub (hl)			; 96 ;30df
	jp c,l30edh		; da ed 30 ;30e0
	cp 002h		; fe 02 ;30e3
	jp c,l30edh		; da ed 30 ;30e5
	ld a,001h		; 3e 01 ;30e8
	jp l3177h		; c3 77 31 ;30ea
l30edh:
	ld hl,0c489h		; 21 89 c4 ;30ed
	ld a,(hl)			; 7e ;30f0
	cp 007h		; fe 07 ;30f1
	jp c,l3105h		; da 05 31 ;30f3
	dec hl			; 2b ;30f6
	sub (hl)			; 96 ;30f7
	jp c,l3105h		; da 05 31 ;30f8
	cp 002h		; fe 02 ;30fb
	jp c,l3105h		; da 05 31 ;30fd
	ld a,010h		; 3e 10 ;3100
	jp l3177h		; c3 77 31 ;3102
l3105h:
	ld a,(0c488h)		; 3a 88 c4 ;3105
	call sub_3182h		; cd 82 31 ;3108
	ld a,d			; 7a ;310b
	cp 000h		; fe 00 ;310c
	jr z,l3117h		; 28 07 ;310e
	ld hl,039f8h		; 21 f8 39 ;3110
	ld b,002h		; 06 02 ;3113
	jr l311ch		; 18 05 ;3115
l3117h:
	ld hl,039fah		; 21 fa 39 ;3117
	ld b,001h		; 06 01 ;311a
l311ch:
	call sub_3192_draw		; cd 92 31 ;311c
	ld a,(0c489h)		; 3a 89 c4 ;311f
	call sub_3182h		; cd 82 31 ;3122
	ld a,d			; 7a ;3125
	cp 000h		; fe 00 ;3126
	jr z,l3131h		; 28 07 ;3128
	ld hl,03938h		; 21 38 39 ;312a
	ld b,002h		; 06 02 ;312d
	jr l3136h		; 18 05 ;312f
l3131h:
	ld hl,0393ah		; 21 3a 39 ;3131
	ld b,001h		; 06 01 ;3134
l3136h:
	call sub_3192_draw		; cd 92 31 ;3136
	jp l30b6h		; c3 b6 30 ;3139
sub_313ch:
	ld a,09ah		; 3e 9a ;313c
	ld (0de00h),a		; 32 00 de ;313e
	ld hl,03904h		; 21 04 39 ;3141
	ld (0c4a8h),hl		; 22 a8 c4 ;3144
	ld hl,0c9c6h		; 21 c6 c9 ;3147
	ld (0c4aah),hl		; 22 aa c4 ;314a
	ld h,004h		; 26 04 ;314d
	ld l,007h		; 2e 07 ;314f
	ld (0c4ach),hl		; 22 ac c4 ;3151
	ld a,001h		; 3e 01 ;3154
	ld (0c4a7h),a		; 32 a7 c4 ;3156
	xor a			; af ;3159
	ld (0c4afh),a		; 32 af c4 ;315a
	ret			; c9 ;315d
sub_315eh:
	ld hl,038c4h		; 21 c4 38 ;315e
	ld (0c4a8h),hl		; 22 a8 c4 ;3161
	ld hl,0caa6h		; 21 a6 ca ;3164
	ld (0c4aah),hl		; 22 aa c4 ;3167
	ld h,005h		; 26 05 ;316a
	ld l,007h		; 2e 07 ;316c
	ld (0c4ach),hl		; 22 ac c4 ;316e
	ld a,001h		; 3e 01 ;3171
	ld (0c4a7h),a		; 32 a7 c4 ;3173
	ret			; c9 ;3176
l3177h:
	ld (0c497h),a		; 32 97 c4 ;3177
	ld a,001h		; 3e 01 ;317a
	ld (0c495h),a		; 32 95 c4 ;317c
	jp l30b6h		; c3 b6 30 ;317f
sub_3182h:
	ld de,start		; 11 00 00 ;3182
l3185h:
	cp 00ah		; fe 0a ;3185
	jp c,l3190h		; da 90 31 ;3187
	sub 00ah		; d6 0a ;318a
	inc d			; 14 ;318c
	jp l3185h		; c3 85 31 ;318d
l3190h:
	ld e,a			; 5f ;3190
	ret			; c9 ;3191
	.INCLUDE "graphics/3192_draw.asm"
sub_31b8h:
	ld a,(0c49dh)		; 3a 9d c4 ;31b8
	cp 000h		; fe 00 ;31bb
	jr z,l31d1h		; 28 12 ;31bd
	dec a			; 3d ;31bf
	ld (0c49dh),a		; 32 9d c4 ;31c0
l31c3h:
	ld a,(0c089h)		; 3a 89 c0 ;31c3
	or 080h		; f6 80 ;31c6
	ld (0c089h),a		; 32 89 c0 ;31c8
	call sub_wait_for_audio_event		; cd 6a 03 ;31cb
	jp sub_31b8h		; c3 b8 31 ;31ce
l31d1h:
	ld a,(0c49eh)		; 3a 9e c4 ;31d1
	cp 001h		; fe 01 ;31d4
	jr c,l31e5h		; 38 0d ;31d6
	jp z,l3205h		; ca 05 32 ;31d8
	cp 003h		; fe 03 ;31db
	jp c,l3303h		; da 03 33 ;31dd
	jp z,l3353h		; ca 53 33 ;31e0
	jr sub_31b8h		; 18 d3 ;31e3
l31e5h:
	ld hl,03b54h		; 21 54 3b ;31e5
	ld (0c4a8h),hl		; 22 a8 c4 ;31e8
	ld hl,0c84ch		; 21 4c c8 ;31eb
	ld (0c4aah),hl		; 22 aa c4 ;31ee
	ld h,007h		; 26 07 ;31f1
	ld l,00bh		; 2e 0b ;31f3
	ld (0c4ach),hl		; 22 ac c4 ;31f5
	ld a,001h		; 3e 01 ;31f8
	ld (0c4a7h),a		; 32 a7 c4 ;31fa
	ld a,001h		; 3e 01 ;31fd
	ld (0c49eh),a		; 32 9e c4 ;31ff
	jp l31c3h		; c3 c3 31 ;3202
l3205h:
	ld a,(0c497h)		; 3a 97 c4 ;3205
	ld b,a			; 47 ;3208
	xor a			; af ;3209
	ld a,(0c48ah)		; 3a 8a c4 ;320a
	rla			; 17 ;320d
	ld hl,0c482h		; 21 82 c4 ;320e
	ld e,a			; 5f ;3211
	ld d,000h		; 16 00 ;3212
	add hl,de			; 19 ;3214
	ld a,b			; 78 ;3215
	cp 010h		; fe 10 ;3216
	jp nz,l3249h		; c2 49 32 ;3218
	inc (hl)			; 34 ;321b
	ld de,start		; 11 00 00 ;321c
	ld a,(hl)			; 7e ;321f
	cp 006h		; fe 06 ;3220
	jr c,l322fh		; 38 0b ;3222
	cp 007h		; fe 07 ;3224
	jr nc,l3236h		; 30 0e ;3226
	inc hl			; 23 ;3228
	ld a,(hl)			; 7e ;3229
	dec hl			; 2b ;322a
	cp 005h		; fe 05 ;322b
	jr c,l3236h		; 38 07 ;322d
l322fh:
	ld a,083h		; 3e 83 ;322f
	ld (0de00h),a		; 32 00 de ;3231
	jr l3276h		; 18 40 ;3234
l3236h:
	ld a,085h		; 3e 85 ;3236
	ld (0de00h),a		; 32 00 de ;3238
	ld a,(0c499h)		; 3a 99 c4 ;323b
	inc a			; 3c ;323e
	ld (0c499h),a		; 32 99 c4 ;323f
	ld a,001h		; 3e 01 ;3242
	ld (0c4aeh),a		; 32 ae c4 ;3244
	jr l3276h		; 18 2d ;3247
l3249h:
	inc hl			; 23 ;3249
	inc (hl)			; 34 ;324a
	ld de,0007fh+1		; 11 80 00 ;324b
	ld a,(hl)			; 7e ;324e
	cp 006h		; fe 06 ;324f
	jr c,l325eh		; 38 0b ;3251
	cp 007h		; fe 07 ;3253
	jr nc,l3265h		; 30 0e ;3255
	dec hl			; 2b ;3257
	ld a,(hl)			; 7e ;3258
	inc hl			; 23 ;3259
	cp 005h		; fe 05 ;325a
	jr c,l3265h		; 38 07 ;325c
l325eh:
	ld a,082h		; 3e 82 ;325e
	ld (0de00h),a		; 32 00 de ;3260
	jr l3276h		; 18 11 ;3263
l3265h:
	ld a,084h		; 3e 84 ;3265
	ld (0de00h),a		; 32 00 de ;3267
	ld a,(0c49ah)		; 3a 9a c4 ;326a
	inc a			; 3c ;326d
	ld (0c49ah),a		; 32 9a c4 ;326e
	ld a,001h		; 3e 01 ;3271
	ld (0c4aeh),a		; 32 ae c4 ;3273
l3276h:
	ld (0c4a8h),hl		; 22 a8 c4 ;3276
	ld (0c4aah),de		; ed 53 aa c4 ;3279
	ld hl,0c482h		; 21 82 c4 ;327d
	push hl			; e5 ;3280
	ld e,(hl)			; 5e ;3281
	ld d,000h		; 16 00 ;3282
	ld b,001h		; 06 01 ;3284
	ld hl,03c1eh		; 21 1e 3c ;3286
	ld (0c4a0h),hl		; 22 a0 c4 ;3289
	call sub_3192_draw		; cd 92 31 ;328c
	pop hl			; e1 ;328f
	inc hl			; 23 ;3290
	push hl			; e5 ;3291
	ld e,(hl)			; 5e ;3292
	ld d,000h		; 16 00 ;3293
	ld b,001h		; 06 01 ;3295
	ld hl,03c9eh		; 21 9e 3c ;3297
	call sub_3192_draw		; cd 92 31 ;329a
	pop hl			; e1 ;329d
	inc hl			; 23 ;329e
	ld e,(hl)			; 5e ;329f
	inc hl			; 23 ;32a0
	push hl			; e5 ;32a1
	ld a,(0c48ah)		; 3a 8a c4 ;32a2
	cp 001h		; fe 01 ;32a5
	jp c,l32ebh		; da eb 32 ;32a7
	ld d,000h		; 16 00 ;32aa
	ld b,001h		; 06 01 ;32ac
	ld hl,03c22h		; 21 22 3c ;32ae
	ld (0c4a0h),hl		; 22 a0 c4 ;32b1
	call sub_3192_draw		; cd 92 31 ;32b4
	pop hl			; e1 ;32b7
	push hl			; e5 ;32b8
	ld e,(hl)			; 5e ;32b9
	ld d,000h		; 16 00 ;32ba
	ld b,001h		; 06 01 ;32bc
	ld hl,03ca1h+1		; 21 a2 3c ;32be
	call sub_3192_draw		; cd 92 31 ;32c1
	pop hl			; e1 ;32c4
	inc hl			; 23 ;32c5
	ld e,(hl)			; 5e ;32c6
	inc hl			; 23 ;32c7
	push hl			; e5 ;32c8
	ld a,(0c48ah)		; 3a 8a c4 ;32c9
	cp 002h		; fe 02 ;32cc
	jp c,l32ebh		; da eb 32 ;32ce
	ld d,000h		; 16 00 ;32d1
	ld b,001h		; 06 01 ;32d3
	ld hl,03c26h		; 21 26 3c ;32d5
	ld (0c4a0h),hl		; 22 a0 c4 ;32d8
	call sub_3192_draw		; cd 92 31 ;32db
	pop hl			; e1 ;32de
	push hl			; e5 ;32df
	ld e,(hl)			; 5e ;32e0
	ld d,000h		; 16 00 ;32e1
	ld b,001h		; 06 01 ;32e3
	ld hl,03ca6h		; 21 a6 3c ;32e5
	call sub_3192_draw		; cd 92 31 ;32e8
l32ebh:
	pop hl			; e1 ;32eb
	ld hl,(0c4a0h)		; 2a a0 c4 ;32ec
	ld de,(0c4aah)		; ed 5b aa c4 ;32ef
	add hl,de			; 19 ;32f3
	ld (0c4a0h),hl		; 22 a0 c4 ;32f4
	xor a			; af ;32f7
	ld (0c4a4h),a		; 32 a4 c4 ;32f8
	ld a,002h		; 3e 02 ;32fb
	ld (0c49eh),a		; 32 9e c4 ;32fd
	jp l31c3h		; c3 c3 31 ;3300
l3303h:
	ld a,(0c4a4h)		; 3a a4 c4 ;3303
	and 001h		; e6 01 ;3306
	cp 000h		; fe 00 ;3308
	jr nz,l3311h		; 20 05 ;330a
	ld de,start+1		; 11 01 00 ;330c
	jr l3318h		; 18 07 ;330f
l3311h:
	ld hl,(0c4a8h)		; 2a a8 c4 ;3311
	ld d,(hl)			; 56 ;3314
	inc d			; 14 ;3315
	ld e,001h		; 1e 01 ;3316
l3318h:
	ld hl,(0c4a0h)		; 2a a0 c4 ;3318
	ld a,l			; 7d ;331b
	di			; f3 ;331c
	out (0bfh),a		; d3 bf ;331d
	ld a,h			; 7c ;331f
	or 040h		; f6 40 ;3320
	out (0bfh),a		; d3 bf ;3322
	ld a,d			; 7a ;3324
	ex (sp),hl			; e3 ;3325
	ex (sp),hl			; e3 ;3326
	out (0beh),a		; d3 be ;3327
	ld a,e			; 7b ;3329
	ex (sp),hl			; e3 ;332a
	ex (sp),hl			; e3 ;332b
	out (0beh),a		; d3 be ;332c
	ei			; fb ;332e
	ld a,(0c4a4h)		; 3a a4 c4 ;332f
	inc a			; 3c ;3332
	ld (0c4a4h),a		; 32 a4 c4 ;3333
	cp 00ah		; fe 0a ;3336
	jr nc,l3342h		; 30 08 ;3338
	ld a,008h		; 3e 08 ;333a
	ld (0c49dh),a		; 32 9d c4 ;333c
	jp l31c3h		; c3 c3 31 ;333f
l3342h:
	xor a			; af ;3342
	ld (0c4a4h),a		; 32 a4 c4 ;3343
	ld a,003h		; 3e 03 ;3346
	ld (0c49eh),a		; 32 9e c4 ;3348
	ld a,080h		; 3e 80 ;334b
	ld (0c49dh),a		; 32 9d c4 ;334d
	jp l31c3h		; c3 c3 31 ;3350
l3353h:
	ld hl,03b54h		; 21 54 3b ;3353
	ld (0c4a8h),hl		; 22 a8 c4 ;3356
	ld hl,0c8e6h		; 21 e6 c8 ;3359
	ld (0c4aah),hl		; 22 aa c4 ;335c
	ld h,007h		; 26 07 ;335f
	ld l,00bh		; 2e 0b ;3361
	ld (0c4ach),hl		; 22 ac c4 ;3363
	ld a,001h		; 3e 01 ;3366
	ld (0c4a7h),a		; 32 a7 c4 ;3368
	ld hl,0c482h		; 21 82 c4 ;336b
	xor a			; af ;336e
	ld a,(0c48ah)		; 3a 8a c4 ;336f
	rla			; 17 ;3372
	ld d,000h		; 16 00 ;3373
	ld e,a			; 5f ;3375
	add hl,de			; 19 ;3376
	ld a,(hl)			; 7e ;3377
	cp 006h		; fe 06 ;3378
	jr nz,l3382h		; 20 06 ;337a
	inc hl			; 23 ;337c
	ld a,(hl)			; 7e ;337d
	cp 006h		; fe 06 ;337e
	jr z,l33a4h		; 28 22 ;3380
l3382h:
	ld a,(0c4aeh)		; 3a ae c4 ;3382
	cp 000h		; fe 00 ;3385
	jr z,l33b1h		; 28 28 ;3387
	xor a			; af ;3389
	ld (0c4aeh),a		; 32 ae c4 ;338a
	ld hl,0c48ah		; 21 8a c4 ;338d
	inc (hl)			; 34 ;3390
	ld a,(0c499h)		; 3a 99 c4 ;3391
	cp 002h		; fe 02 ;3394
	jp nc,l33ach		; d2 ac 33 ;3396
	ld a,(0c49ah)		; 3a 9a c4 ;3399
	cp 002h		; fe 02 ;339c
	jp nc,l33ach		; d2 ac 33 ;339e
	jp l33b1h		; c3 b1 33 ;33a1
l33a4h:
	ld a,001h		; 3e 01 ;33a4
	ld (0c481h),a		; 32 81 c4 ;33a6
	jp l33bah		; c3 ba 33 ;33a9
l33ach:
	ld a,004h		; 3e 04 ;33ac
	ld (0c495h),a		; 32 95 c4 ;33ae
l33b1h:
	ld hl,0c495h		; 21 95 c4 ;33b1
	set 1,(hl)		; cb ce ;33b4
	xor a			; af ;33b6
	ld (0c481h),a		; 32 81 c4 ;33b7
l33bah:
	xor a			; af ;33ba
	ld (0c488h),a		; 32 88 c4 ;33bb
	ld (0c489h),a		; 32 89 c4 ;33be
	jp l3037h		; c3 37 30 ;33c1
l33c4h:
	ld a,(0c499h)		; 3a 99 c4 ;33c4
	cp 002h		; fe 02 ;33c7
	jp z,l33d7h		; ca d7 33 ;33c9
	ld a,(0c49ah)		; 3a 9a c4 ;33cc
	cp 002h		; fe 02 ;33cf
	jp z,l340ah		; ca 0a 34 ;33d1
	jp l3452h		; c3 52 34 ;33d4
l33d7h:
	ld a,087h		; 3e 87 ;33d7
	ld (0de00h),a		; 32 00 de ;33d9
	ld hl,03b48h		; 21 48 3b ;33dc
	ld b,008h		; 06 08 ;33df
	ld de,l0018h		; 11 18 00 ;33e1
	call sub_3457h		; cd 57 34 ;33e4
	call sub_346eh		; cd 6e 34 ;33e7
	ld hl,03c18h		; 21 18 3c ;33ea
	ld de,0351fh		; 11 1f 35 ;33ed
	ld b,008h		; 06 08 ;33f0
	call sub_347fh		; cd 7f 34 ;33f2
	ld a,005h		; 3e 05 ;33f5
	call sub_35e6h		; cd e6 35 ;33f7
	ld hl,03cd6h		; 21 d6 3c ;33fa
	ld b,00ah		; 06 0a ;33fd
	call sub_347fh		; cd 7f 34 ;33ff
	ld a,005h		; 3e 05 ;3402
	ld (0c49dh),a		; 32 9d c4 ;3404
	jp l3456h		; c3 56 34 ;3407
l340ah:
	ld a,(0c04ah)		; 3a 4a c0 ;340a
	cp 004h		; fe 04 ;340d
	jp z,l3607h		; ca 07 36 ;340f
	ld a,086h		; 3e 86 ;3412
	ld (0de00h),a		; 32 00 de ;3414
	ld hl,03b48h		; 21 48 3b ;3417
	ld de,l0018h		; 11 18 00 ;341a
	ld b,009h		; 06 09 ;341d
	call sub_3457h		; cd 57 34 ;341f
	call sub_346eh		; cd 6e 34 ;3422
	ld hl,03c18h		; 21 18 3c ;3425
	ld de,034d7h		; 11 d7 34 ;3428
	ld b,007h		; 06 07 ;342b
	call sub_347fh		; cd 7f 34 ;342d
	ld a,005h		; 3e 05 ;3430
	call sub_35e6h		; cd e6 35 ;3432
	ld hl,03ccch		; 21 cc 3c ;3435
	ld b,00eh		; 06 0e ;3438
	call sub_347fh		; cd 7f 34 ;343a
	ld a,005h		; 3e 05 ;343d
	call sub_35e6h		; cd e6 35 ;343f
	ld hl,03d16h		; 21 16 3d ;3442
	ld b,00fh		; 06 0f ;3445
	call sub_347fh		; cd 7f 34 ;3447
	ld a,005h		; 3e 05 ;344a
	ld (0c49dh),a		; 32 9d c4 ;344c
	jp l3456h		; c3 56 34 ;344f
l3452h:
	xor a			; af ;3452
	ld (0c49dh),a		; 32 9d c4 ;3453
l3456h:
	ret			; c9 ;3456
sub_3457h:
	push bc			; c5 ;3457
	push de			; d5 ;3458
	push hl			; e5 ;3459
	push de			; d5 ;345a
	pop bc			; c1 ;345b
	ld de,l34a9h		; 11 a9 34 ;345c
	di			; f3 ;345f
	call sub_vram_fill_word		; cd 50 04 ;3460
	ei			; fb ;3463
	pop hl			; e1 ;3464
	ld de,l0040h		; 11 40 00 ;3465
	add hl,de			; 19 ;3468
	pop de			; d1 ;3469
	pop bc			; c1 ;346a
	djnz sub_3457h		; 10 ea ;346b
	ret			; c9 ;346d
sub_346eh:
	ld hl,03b8ah		; 21 8a 3b ;346e
	ld de,034abh		; 11 ab 34 ;3471
	ld b,016h		; 06 16 ;3474
	call sub_347fh		; cd 7f 34 ;3476
	ld a,005h		; 3e 05 ;3479
	call sub_35e6h		; cd e6 35 ;347b
	ret			; c9 ;347e
sub_347fh:
	di			; f3 ;347f
	ld a,l			; 7d ;3480
	out (0bfh),a		; d3 bf ;3481
	ld a,h			; 7c ;3483
	or 040h		; f6 40 ;3484
	out (0bfh),a		; d3 bf ;3486
	push bc			; c5 ;3488
	ld b,005h		; 06 05 ;3489
	call sub_35ffh		; cd ff 35 ;348b
	pop bc			; c1 ;348e
	ld a,(de)			; 1a ;348f
	out (0beh),a		; d3 be ;3490
	inc de			; 13 ;3492
	ld a,(de)			; 1a ;3493
	push bc			; c5 ;3494
	ld b,005h		; 06 05 ;3495
	call sub_35ffh		; cd ff 35 ;3497
	pop bc			; c1 ;349a
	out (0beh),a		; d3 be ;349b
	inc de			; 13 ;349d
	inc hl			; 23 ;349e
	inc hl			; 23 ;349f
	ld a,005h		; 3e 05 ;34a0
	ei			; fb ;34a2
	call sub_35e6h		; cd e6 35 ;34a3
	djnz sub_347fh		; 10 d7 ;34a6
	ret			; c9 ;34a8
l34a9h:
	nop			; 00 ;34a9
	ld bc,00112h		; 01 12 01 ;34aa
	inc c			; 0c ;34ad
	ld bc,00118h		; 01 18 01 ;34ae
	djnz l34b4h		; 10 01 ;34b1
	dec hl			; 2b ;34b3
l34b4h:
	ld bc,0012ah+1		; 01 2b 01 ;34b4
	dec hl			; 2b ;34b7
	ld bc,000ffh+1		; 01 00 01 ;34b8
	nop			; 00 ;34bb
	ld bc,0011eh		; 01 1e 01 ;34bc
	djnz l34c2h		; 10 01 ;34bf
	rra			; 1f ;34c1
l34c2h:
	ld bc,0012ah+1		; 01 2b 01 ;34c2
	dec hl			; 2b ;34c5
	ld bc,0012ah+1		; 01 2b 01 ;34c6
	nop			; 00 ;34c9
	ld bc,000ffh+1		; 01 00 01 ;34ca
	jr l34d0h		; 18 01 ;34cd
	inc c			; 0c ;34cf
l34d0h:
	ld bc,0011eh+1		; 01 1f 01 ;34d0
	ld c,001h		; 0e 01 ;34d3
	inc de			; 13 ;34d5
	ld bc,00124h		; 01 24 01 ;34d6
	ld a,(de)			; 1a ;34d9
	ld bc,0011eh+2		; 01 20 01 ;34da
	nop			; 00 ;34dd
	ld bc,00122h		; 01 22 01 ;34de
	inc d			; 14 ;34e1
	ld bc,00118h+1		; 01 19 01 ;34e2
	inc de			; 13 ;34e5
	ld bc,0010ah+2		; 01 0c 01 ;34e6
	ld hl,01000h+1		; 21 01 10 ;34e9
	ld bc,000ffh+1		; 01 00 01 ;34ec
	inc h			; 24 ;34ef
	ld bc,00118h+2		; 01 1a 01 ;34f0
	jr nz,l34f6h		; 20 01 ;34f3
	nop			; 00 ;34f5
l34f6h:
	ld bc,0011eh+1		; 01 1f 01 ;34f6
	dec e			; 1d ;34f9
	ld bc,00112h+2		; 01 14 01 ;34fa
	djnz l3500h		; 10 01 ;34fd
	rrca			; 0f ;34ff
l3500h:
	ld bc,0010ah+2		; 01 0c 01 ;3500
	nop			; 00 ;3503
	ld bc,00112h+1		; 01 13 01 ;3504
	inc c			; 0c ;3507
	ld bc,0011dh		; 01 1d 01 ;3508
	rrca			; 0f ;350b
	ld bc,0010fh+1		; 01 10 01 ;350c
	dec e			; 1d ;350f
	ld bc,000ffh+1		; 01 00 01 ;3510
	rla			; 17 ;3513
	ld bc,0010fh+1		; 01 10 01 ;3514
	ld hl,01000h+1		; 21 01 10 ;3517
	ld bc,00117h		; 01 17 01 ;351a
	inc l			; 2c ;351d
	ld bc,00124h		; 01 24 01 ;351e
	ld a,(de)			; 1a ;3521
	ld bc,0011eh+2		; 01 20 01 ;3522
	nop			; 00 ;3525
	ld bc,00117h		; 01 17 01 ;3526
	ld a,(de)			; 1a ;3529
	ld bc,0011eh		; 01 1e 01 ;352a
	djnz l3530h		; 10 01 ;352d
	rra			; 1f ;352f
l3530h:
	ld bc,0011dh		; 01 1d 01 ;3530
	inc h			; 24 ;3533
	ld bc,000ffh+1		; 01 00 01 ;3534
	inc c			; 0c ;3537
	ld bc,00112h		; 01 12 01 ;3538
	inc c			; 0c ;353b
	ld bc,00112h+2		; 01 14 01 ;353c
	add hl,de			; 19 ;353f
	ld bc,0012ah+2		; 01 2c 01 ;3540
sub_3543h:
	ld a,(0c000h)		; 3a 00 c0 ;3543
	bit 2,a		; cb 57 ;3546
	ret z			; c8 ;3548
	ld a,(0c48ch)		; 3a 8c c4 ;3549
	add a,a			; 87 ;354c
	ld e,a			; 5f ;354d
	ld d,000h		; 16 00 ;354e
	ld hl,l3560h		; 21 60 35 ;3550
	add hl,de			; 19 ;3553
	ld e,(hl)			; 5e ;3554
	inc hl			; 23 ;3555
	ld d,(hl)			; 56 ;3556
	ld hl,03a08h		; 21 08 3a ;3557
	ld bc,start+2		; 01 02 00 ;355a
	jp sub_cp_ram_vram		; c3 2f 04 ;355d
l3560h:
	.DW unknown_word_1		;3560
	.DW unknown_word_0		;3562
	.DW unknown_word_2		;3564
sub_3566h:
	ld a,(0c4a5h)		; 3a a5 c4 ;3566
	cp 000h		; fe 00 ;3569
	ret z			; c8 ;356b
	ld a,(0c49dh)		; 3a 9d c4 ;356c
	cp 000h		; fe 00 ;356f
	jr z,l3578h		; 28 05 ;3571
	dec a			; 3d ;3573
	ld (0c49dh),a		; 32 9d c4 ;3574
	ret			; c9 ;3577
l3578h:
	ld a,004h		; 3e 04 ;3578
	out (0bfh),a		; d3 bf ;357a
	.IFDEF _UE
		ld b,005h		; 06 05 ;357c
		call sub_35ffh		; cd ff 35 ;357e
    .ENDIF
	ld a,0c0h		; 3e c0 ;3581
	out (0bfh),a		; d3 bf ;3583
	ld a,(0c4a6h)		; 3a a6 c4 ;3585
	cp 002h		; fe 02 ;3588
	jr z,l3599h		; 28 0d ;358a
	cp 000h		; fe 00 ;358c
	jr nz,l35a1h		; 20 11 ;358e
	ld a,001h		; 3e 01 ;3590
	ld (0c4a6h),a		; 32 a6 c4 ;3592
	ld a,003h		; 3e 03 ;3595
	jr l35a8h		; 18 0f ;3597
l3599h:
	xor a			; af ;3599
	ld (0c4a6h),a		; 32 a6 c4 ;359a
	ld a,002h		; 3e 02 ;359d
	jr l35a8h		; 18 07 ;359f
l35a1h:
	ld a,002h		; 3e 02 ;35a1
	ld (0c4a6h),a		; 32 a6 c4 ;35a3
	ld a,013h		; 3e 13 ;35a6
l35a8h:
	out (0beh),a		; d3 be ;35a8
	.DB $3e		;35aa
	.DB $02		;35ab
	ld (0c49dh),a		; 32 9d c4 ;35ac
	ret			; c9 ;35af
	.INCLUDE "graphics/load_vram_rect_dynamic.asm"
sub_35c6h:
	ld hl,l35dch		; 21 dc 35 ;35c6
	xor a			; af ;35c9
	ld a,(0c04ah)		; 3a 4a c0 ;35ca
	rla			; 17 ;35cd
	ld e,a			; 5f ;35ce
	ld d,000h		; 16 00 ;35cf
	add hl,de			; 19 ;35d1
	ex de,hl			; eb ;35d2
	ld hl,00013h+2		; 21 15 00 ;35d3
	ld b,002h		; 06 02 ;35d6
	call sub_load_cram		; cd 81 04 ;35d8
	ret			; c9 ;35db
l35dch:
	dec hl			; 2b ;35dc
	jr c,$+15		; 38 0f ;35dd
	jr nc,l35e4h		; 30 03 ;35df
	dec a			; 3d ;35e1
	jr nz,$+15		; 20 0f ;35e2
l35e4h:
	djnz l35e8h		; 10 02 ;35e4
sub_35e6h:
	push af			; f5 ;35e6
	push bc			; c5 ;35e7
l35e8h:
	push de			; d5 ;35e8
	push hl			; e5 ;35e9
	ld b,a			; 47 ;35ea
l35ebh:
	push bc			; c5 ;35eb
	ld a,(0c089h)		; 3a 89 c0 ;35ec
	or 080h		; f6 80 ;35ef
	ld (0c089h),a		; 32 89 c0 ;35f1
	call sub_wait_for_audio_event		; cd 6a 03 ;35f4
	pop bc			; c1 ;35f7
	djnz l35ebh		; 10 f1 ;35f8
	pop hl			; e1 ;35fa
	pop de			; d1 ;35fb
	pop bc			; c1 ;35fc
	pop af			; f1 ;35fd
	ret			; c9 ;35fe
sub_35ffh:
	nop			; 00 ;35ff
	nop			; 00 ;3600
	nop			; 00 ;3601
	nop			; 00 ;3602
	nop			; 00 ;3603
	djnz sub_35ffh		; 10 f9 ;3604
	ret			; c9 ;3606
l3607h:
	ld a,0d0h		; 3e d0 ;3607
	ld (0c140h),a		; 32 40 c1 ;3609
	ld (0c100h),a		; 32 00 c1 ;360c
	ld a,(0c089h)		; 3a 89 c0 ;360f
	or 080h		; f6 80 ;3612
	ld (0c089h),a		; 32 89 c0 ;3614
	call sub_wait_for_audio_event		; cd 6a 03 ;3617
	ld hl,03e00h		; 21 00 3e ;361a
	ld (0c4a8h),hl		; 22 a8 c4 ;361d
	ld a,000h		; 3e 00 ;3620
	ld (0c4ach),a		; 32 ac c4 ;3622
	ld b,018h		; 06 18 ;3625
l3627h:
	push bc			; c5 ;3627
	ld hl,(0c4a8h)		; 2a a8 c4 ;3628
	ld de,l3706h		; 11 06 37 ;362b
	ld bc,l0020h		; 01 20 00 ;362e
	di			; f3 ;3631
	call sub_vram_fill_word		; cd 50 04 ;3632
	ei			; fb ;3635
	ld b,008h		; 06 08 ;3636
l3638h:
	push bc			; c5 ;3638
	ld a,(0c4ach)		; 3a ac c4 ;3639
	inc a			; 3c ;363c
	di			; f3 ;363d
	ld (0c4ach),a		; 32 ac c4 ;363e
	out (0bfh),a		; d3 bf ;3641
	ld a,089h		; 3e 89 ;3643
	out (0bfh),a		; d3 bf ;3645
	ei			; fb ;3647
	call sub_wait_for_audio_event		; cd 6a 03 ;3648
	pop bc			; c1 ;364b
	djnz l3638h		; 10 ea ;364c
	ld hl,(0c4a8h)		; 2a a8 c4 ;364e
	ld de,l0040h		; 11 40 00 ;3651
	add hl,de			; 19 ;3654
	push hl			; e5 ;3655
	ld de,03f00h		; 11 00 3f ;3656
	xor a			; af ;3659
	sbc hl,de		; ed 52 ;365a
	jr c,l3663h		; 38 05 ;365c
	pop hl			; e1 ;365e
	ld hl,03800h		; 21 00 38 ;365f
	push hl			; e5 ;3662
l3663h:
	pop hl			; e1 ;3663
	ld (0c4a8h),hl		; 22 a8 c4 ;3664
	pop bc			; c1 ;3667
	djnz l3627h		; 10 bd ;3668
	xor a			; af ;366a
	ld (0c011h),a		; 32 11 c0 ;366b
	ld hl,l0010h		; 21 10 00 ;366e
	ld de,l3719h		; 11 19 37 ;3671
	ld b,001h		; 06 01 ;3674
	call sub_load_cram		; cd 81 04 ;3676
	ld a,005h		; 3e 05 ;3679
	call sub_35e6h		; cd e6 35 ;367b
	di			; f3 ;367e
	ld hl,start		; 21 00 00 ;367f
	ld de,l3708h		; 11 08 37 ;3682
	ld b,011h		; 06 11 ;3685
	call sub_load_cram		; cd 81 04 ;3687
	call sub_disable_display		; cd a4 03 ;368a
	call sub_init_background_name_table		; cd 88 03 ;368d
	ld a,000h		; 3e 00 ;3690
	out (0bfh),a		; d3 bf ;3692
	ld a,089h		; 3e 89 ;3694
	out (0bfh),a		; d3 bf ;3696
	ld hl,data_planes_0_0		; 21 e3 37 ;3698
	ld de,02600h		; 11 00 26 ;369b
	call sub_rle_decompress_bitplanes		; cd b5 04 ;369e
	ld hl,03a5ah		; 21 5a 3a ;36a1
	ld de,data_tiles_2		; 11 83 37 ;36a4
	ld bc,(8 << 8) | 6		; 01 06 08 ;36a7
	call sub_load_vram_rect		; cd 64 04 ;36aa
	ld hl,data_chunks_1		; 21 1a 37 ;36ad
	call sub_upload_vram_chunks		; cd b7 03 ;36b0
	ei			; fb ;36b3
	ld a,086h		; 3e 86 ;36b4
	ld (0de00h),a		; 32 00 de ;36b6
	call sub_enable_display		; cd a0 03 ;36b9
	ld a,040h		; 3e 40 ;36bc
	call sub_35e6h		; cd e6 35 ;36be
	ld hl,03b60h		; 21 60 3b ;36c1
	ld de,l3777h		; 11 77 37 ;36c4
	ld bc,l0004h		; 01 04 00 ;36c7
	call sub_cp_ram_vram		; cd 2f 04 ;36ca
	ld a,005h		; 3e 05 ;36cd
	call sub_35e6h		; cd e6 35 ;36cf
	ld hl,03b60h		; 21 60 3b ;36d2
	ld de,l377bh		; 11 7b 37 ;36d5
	ld bc,l0004h		; 01 04 00 ;36d8
	call sub_cp_ram_vram		; cd 2f 04 ;36db
	ld a,028h		; 3e 28 ;36de
	call sub_35e6h		; cd e6 35 ;36e0
	ld hl,03b60h		; 21 60 3b ;36e3
	ld de,l3777h		; 11 77 37 ;36e6
	ld bc,l0004h		; 01 04 00 ;36e9
	call sub_cp_ram_vram		; cd 2f 04 ;36ec
	ld a,005h		; 3e 05 ;36ef
	call sub_35e6h		; cd e6 35 ;36f1
	ld hl,03b60h		; 21 60 3b ;36f4
	ld de,l377fh		; 11 7f 37 ;36f7
	ld bc,l0004h		; 01 04 00 ;36fa
	call sub_cp_ram_vram		; cd 2f 04 ;36fd
	ld a,060h		; 3e 60 ;3700
	call sub_35e6h		; cd e6 35 ;3702
	ret			; c9 ;3705
l3706h:
	ld (hl),001h		; 36 01 ;3706
l3708h:
	ld a,(03f00h)		; 3a 00 3f ;3708
	cpl			; 2f ;370b
	inc bc			; 03 ;370c
	ld hl,(l160bh)		; 2a 0b 16 ;370d
	dec h			; 25 ;3710
	nop			; 00 ;3711
	nop			; 00 ;3712
	nop			; 00 ;3713
	nop			; 00 ;3714
	nop			; 00 ;3715
	nop			; 00 ;3716
	nop			; 00 ;3717
	.DB $3a		;3718
l3719h:
	.DB $06		;3719
data_chunks_1:
	.INCLUDE "data/chunks_1.asm"
l3777h:
	ld e,b			; 58 ;3777
	ld bc,00159h		; 01 59 01 ;3778
l377bh:
	ld e,d			; 5a ;377b
	ld bc,0015bh		; 01 5b 01 ;377c
l377fh:
	ld b,h			; 44 ;377f
	ld bc,00145h		; 01 45 01 ;3780
data_tiles_2:
	.INCLUDE "tiles/tiles_2.asm"
data_planes_0_0:
	.INCLUDE "tiles/planes_0_0.asm"
	.INCLUDE "tiles/planes_0_1.asm"
	.INCLUDE "tiles/planes_0_2.asm"
	.INCLUDE "tiles/planes_0_3.asm"
l3b08h:
	.DB $30 $3f		;3b08
	scf			; 37 ;3b0a
	nop			; 00 ;3b0b
	daa			; 27 ;3b0c
	dec hl			; 2b ;3b0d
	rrca			; 0f ;3b0e
	dec sp			; 3b ;3b0f
l3b10h:
	jr nc,l3b12h		; 30 00 ;3b10
l3b12h:
	nop			; 00 ;3b12
	nop			; 00 ;3b13
	nop			; 00 ;3b14
	nop			; 00 ;3b15
	nop			; 00 ;3b16
	nop			; 00 ;3b17
	nop			; 00 ;3b18
	inc bc			; 03 ;3b19
	nop			; 00 ;3b1a
data_planes_1_0:
	.INCLUDE "tiles/planes_1_0.asm"
	.INCLUDE "tiles/planes_1_1.asm"
	.INCLUDE "tiles/planes_1_2.asm"
	.INCLUDE "tiles/planes_1_3.asm"
data_tiles_1_super:
	.INCLUDE "tiles/tiles_1_super.asm"
data_planes_2_0:
	.INCLUDE "tiles/planes_2_0.asm"
	.INCLUDE "tiles/planes_2_1.asm"
	.INCLUDE "tiles/planes_2_2.asm"
	.INCLUDE "tiles/planes_2_3.asm"
data_chunks_0:
	.INCLUDE "data/chunks_0.asm"
l40f0h:
	ld h,001h		; 26 01 ;40f0
	nop			; 00 ;40f2
	ld bc,00127h		; 01 27 01 ;40f3
	jr z,l40f9h		; 28 01 ;40f6
	add hl,hl			; 29 ;40f8
l40f9h:
	ld bc,0012ah		; 01 2a 01 ;40f9
	nop			; 00 ;40fc
	ld bc,00102h		; 01 02 01 ;40fd
l4100h:
	ld a,(bc)			; 0a ;4100
	ld bc,00109h		; 01 09 01 ;4101
	rlca			; 07 ;4104
	.DB $01		;4105
	.INCLUDE "io/check_hardware.asm"
unknown_table_0:
	.INCLUDE "data/unknown_table_0.asm"
	call m,0fefch		; fc fc fe ;4898
l489bh:
	nop			; 00 ;489b
	nop			; 00 ;489c
	push af			; f5 ;489d
	nop			; 00 ;489e
	ex af,af'			; 08 ;489f
	or 008h		; f6 08 ;48a0
	nop			; 00 ;48a2
	rst 30h			; f7 ;48a3
	ex af,af'			; 08 ;48a4
	ex af,af'			; 08 ;48a5
	ret m			; f8 ;48a6
	.INCLUDE "data/animation_frames.asm"
data_planes_3_0:
	.INCLUDE "tiles/planes_3_0.asm"
	.INCLUDE "tiles/planes_3_1.asm"
	.INCLUDE "tiles/planes_3_2.asm"
	.INCLUDE "tiles/planes_3_3.asm"
data_planes_4_0:
	.INCLUDE "tiles/planes_4_0.asm"
	.INCLUDE "tiles/planes_4_1.asm"
	.INCLUDE "tiles/planes_4_2.asm"
	.INCLUDE "tiles/planes_4_3.asm"
data_planes_5_0:
	.INCLUDE "tiles/planes_5_0.asm"
	.INCLUDE "tiles/planes_5_1.asm"
	.INCLUDE "tiles/planes_5_2.asm"
	.INCLUDE "tiles/planes_5_3.asm"
data_planes_6_0:
	.INCLUDE "tiles/planes_6_0.asm"
	.INCLUDE "tiles/planes_6_1.asm"
	.INCLUDE "tiles/planes_6_2.asm"
data_planes_7_0:
	.INCLUDE "tiles/planes_7_0.asm"
	.INCLUDE "tiles/planes_7_1.asm"
data_planes_7_2:
	.INCLUDE "tiles/planes_7_2.asm"
	.INCLUDE "tiles/planes_7_3.asm"
	.INCLUDE "tiles/planes_7_4.asm"
	.INCLUDE "tiles/planes_7_5.asm"
unknown_word_0:
	.DW $0152		;5952
unknown_word_1:
	.DW $018a		;5954
unknown_word_2:
	.DW $018b		;5956
data_planes_8_0:
	.INCLUDE "tiles/planes_8_0.asm"
	.INCLUDE "tiles/planes_8_1.asm"
	.INCLUDE "tiles/planes_8_2.asm"
	.INCLUDE "tiles/planes_8_3.asm"
data_planes_9_0:
	.INCLUDE "tiles/planes_9_0.asm"
	.INCLUDE "tiles/planes_9_1.asm"
	.INCLUDE "tiles/planes_9_2.asm"
	.INCLUDE "tiles/planes_9_3.asm"
data_planes_10_0:
	.INCLUDE "tiles/planes_10_0.asm"
	.INCLUDE "tiles/planes_10_1.asm"
	.INCLUDE "tiles/planes_10_2.asm"
	.INCLUDE "tiles/planes_10_3.asm"
data_planes_11_0:
	.INCLUDE "tiles/planes_11_0.asm"
	.INCLUDE "tiles/planes_11_1.asm"
	.INCLUDE "tiles/planes_11_2.asm"
	.INCLUDE "tiles/planes_11_3.asm"
	.IFDEF _J
	    .INCLUDE "fragment.asm"
	.ENDIF
l7149h:
	.DB $04			; 04 ;7149
    .DB $80			; 80 ;714a
    .DB $20		; 20 ;714b
    .DB $05		; 05 ;714c
    .DW l716eh		;714d
	.DB $f5		;714f
	.DB $01		;7150
	.DB $08		;7151
	.DB $0d		;7152
	.DB $80		;7153
	.DB $21		;7154
	.DB $05		;7155
	.DW l71beh		;7156
	.DB $f5		;7158
	.DB $02		;7159
	.DB $01		;715a
	.DB $0b		;715b
	.DB $80		;715c
	.DB $22		;715d
	.DB $05		;715e
	.DW l71ffh			;715f
	.DB $f5		;7161
	.DB $02		;7162
	.DB $01		;7163
	.DB $0b		;7164
	.DB $80		;7165
	.DB $23		;7166
	.DB $05		;7167
	.DW l7244h			;7168
	.DB $03		;716a
	.DB $01		;716b
	.DB $01		;716c
	.DB $0d		;716d
l716eh:
	.DB $a0		;716e
	.DB $01		;716f
	.DB $9f		;7170
	.DB $a0		;7171
	.DB $02		;7172
	.DB $a0		;7173
	.DB $01		;7174
	.DB $9f		;7175
	.DB $a0		;7176
	.DB $02		;7177
	.DB $a0		;7178
	.DB $01		;7179
	.DB $9f		;717a
	.DB $a0		;717b
	.DB $02		;717c
	.DB $a9		;717d
	.DB $a5		;717e
	.DB $a2		;717f
	.DB $a0		;7180
	.DB $9f		;7181
	.DB $9e		;7182
	.DB $9b		;7183
	.DB $9d		;7184
	.DB $04		;7185
	.DB $99		;7186
	.DB $02		;7187
	.DB $a0		;7188
	.DB $01		;7189
	.DB $9f		;718a
	.DB $a0		;718b
	.DB $02		;718c
	.DB $a0		;718d
	.DB $01		;718e
	.DB $9f		;718f
	.DB $a0		;7190
	.DB $02		;7191
	.DB $a0		;7192
	.DB $01		;7193
	.DB $9f		;7194
	.DB $a0		;7195
	.DB $02		;7196
	.DB $a9		;7197
	.DB $a5		;7198
	.DB $a2		;7199
	.DB $a0		;719a
	.DB $a1		;719b
	.DB $a2		;719c
	.DB $a4		;719d
	.DB $a5		;719e
	.DB $04		;719f
	.DB $a5		;71a0
	.DB $a9		;71a1
	.DB $02		;71a2
	.DB $a9		;71a3
	.DB $01		;71a4
	.DB $a9		;71a5
	.DB $a9		;71a6
	.DB $06		;71a7
	.DB $aa		;71a8
	.DB $02		;71a9
	.DB $a9		;71aa
	.DB $aa		;71ab
	.DB $a9		;71ac
	.DB $a9		;71ad
	.DB $01		;71ae
	.DB $a9		;71af
	.DB $a9		;71b0
	.DB $06		;71b1
	.DB $a7		;71b2
	.DB $02		;71b3
	.DB $a5		;71b4
	.DB $a7		;71b5
	.DB $a9		;71b6
	.DB $02		;71b7
	.DB $a9		;71b8
	.DB $01		;71b9
	.DB $a9		;71ba
	.DB $a9		;71bb
	.DB $0c		;71bc
	.DB $e2		;71bd
l71beh:
	.DB $80		;71be
	.DB $02		;71bf
	.DB $99		;71c0
	.DB $02		;71c1
	.DB $a0		;71c2
	.DB $99		;71c3
	.DB $a0		;71c4
	.DB $99		;71c5
	.DB $a0		;71c6
	.DB $99		;71c7
	.DB $a0		;71c8
	.DB $94		;71c9
	.DB $a0		;71ca
	.DB $94		;71cb
	.DB $a0		;71cc
	.DB $99		;71cd
	.DB $a0		;71ce
	.DB $99		;71cf
	.DB $a0		;71d0
	.DB $99		;71d1
	.DB $a0		;71d2
	.DB $99		;71d3
	.DB $a0		;71d4
	.DB $99		;71d5
	.DB $a0		;71d6
	.DB $99		;71d7
	.DB $a0		;71d8
	.DB $94		;71d9
	.DB $a0		;71da
	.DB $94		;71db
	.DB $9e		;71dc
	.DB $99		;71dd
	.DB $a0		;71de
	.DB $99		;71df
	.DB $04		;71e0
	.DB $a0		;71e1
	.DB $02		;71e2
	.DB $a0		;71e3
	.DB $01		;71e4
	.DB $a0		;71e5
	.DB $a0		;71e6
	.DB $06		;71e7
	.DB $a2		;71e8
	.DB $02		;71e9
	.DB $a0		;71ea
	.DB $a2		;71eb
	.DB $a0		;71ec
	.DB $a0		;71ed
	.DB $01		;71ee
	.DB $a0		;71ef
	.DB $a0		;71f0
	.DB $06		;71f1
	.DB $9e		;71f2
	.DB $02		;71f3
	.DB $9d		;71f4
	.DB $9e		;71f5
	.DB $a0		;71f6
	.DB $a0		;71f7
	.DB $01		;71f8
	.DB $a0		;71f9
	.DB $e4		;71fa
	.DB $01		;71fb
	.DB $a0		;71fc
	.DB $0c		;71fd
	.DB $e2		;71fe
l71ffh:
	.DB $80		;71ff
	.DB $02		;7200
	.DB $e4		;7201
	.DB $0a		;7202
	.DB $99		;7203
	.DB $02		;7204
	.DB $9d		;7205
	.DB $99		;7206
	.DB $9d		;7207
	.DB $99		;7208
	.DB $9d		;7209
	.DB $99		;720a
	.DB $9d		;720b
	.DB $94		;720c
	.DB $9b		;720d
	.DB $94		;720e
	.DB $9b		;720f
	.DB $99		;7210
	.DB $9d		;7211
	.DB $99		;7212
	.DB $9d		;7213
	.DB $99		;7214
	.DB $9d		;7215
	.DB $99		;7216
	.DB $9d		;7217
	.DB $99		;7218
	.DB $9d		;7219
	.DB $99		;721a
	.DB $9d		;721b
	.DB $94		;721c
	.DB $9b		;721d
	.DB $94		;721e
	.DB $9b		;721f
	.DB $99		;7220
	.DB $9d		;7221
	.DB $99		;7222
	.DB $04		;7223
	.DB $99		;7224
	.DB $02		;7225
	.DB $99		;7226
	.DB $01		;7227
	.DB $99		;7228
	.DB $99		;7229
	.DB $06		;722a
	.DB $99		;722b
	.DB $02		;722c
	.DB $99		;722d
	.DB $99		;722e
	.DB $99		;722f
	.DB $99		;7230
	.DB $01		;7231
	.DB $99		;7232
	.DB $99		;7233
	.DB $06		;7234
	.DB $99		;7235
	.DB $02		;7236
	.DB $99		;7237
	.DB $99		;7238
	.DB $99		;7239
	.DB $99		;723a
	.DB $01		;723b
	.DB $99		;723c
	.DB $e4		;723d
	.DB $01		;723e
	.DB $99		;723f
	.DB $0c		;7240
	.DB $80		;7241
	.DB $08		;7242
	.DB $e6		;7243
l7244h:
	.DB $e3		;7244
	.DB $04		;7245
	.DB $80		;7246
	.DB $02		;7247
l7248h:
	.DB $e1		;7248
	.DB $09		;7249
	.DB $e4		;724a
	.DB $02		;724b
	.DB $8d		;724c
	.DB $04		;724d
	.DB $e1		;724e
	.DB $0c		;724f
	.DB $e4		;7250
	.DB $05		;7251
	.DB $04		;7252
	.DB $e1		;7253
	.DB $09		;7254
	.DB $e4		;7255
	.DB $02		;7256
	.DB $02		;7257
	.DB $02		;7258
	.DB $e1		;7259
	.DB $0c		;725a
	.DB $e4		;725b
	.DB $05		;725c
	.DB $04		;725d
	.DB $ec		;725e
	.DB $00		;725f
	.DB $04		;7260
	.DW l7248h
l7263h:
	.DB $e1		;7263
	.DB $09		;7264
	.DB $e4		;7265
	.DB $02		;7266
	.DB $01		;7267
	.DB $01		;7268
	.DB $01		;7269
	.DB $01		;726a
	.DB $e1		;726b
	.DB $0c		;726c
	.DB $e4		;726d
	.DB $05		;726e
	.DB $02		;726f
	.DB $e1		;7270
	.DB $09		;7271
	.DB $e4		;7272
	.DB $02		;7273
	.DB $01		;7274
	.DB $01		;7275
	.DB $02		;7276
	.DB $e1		;7277
	.DB $0c		;7278
	.DB $e4		;7279
	.DB $05		;727a
	.DB $02		;727b
	.DB $02		;727c
	.DB $02		;727d
	.DB $ec		;727e
	.DB $00		;727f
	.DB $02		;7280
	.DW l7263h
	.DB $e1		;7283
	.DB $09		;7284
	.DB $e4		;7285
	.DB $02		;7286
	.DB $01		;7287
	.DB $01		;7288
	.DB $01		;7289
	.DB $01		;728a
	.DB $e1		;728b
	.DB $0c		;728c
	.DB $e4		;728d
	.DB $05		;728e
	.DB $02		;728f
	.DB $e2		;7290
l7291h:
	.DB $03		;7291
	.DB $80		;7292
	.DB $20		;7293
	.DB $04		;7294
	.DW l7283h
	.DB $f7		;7297
	.DB $03		;7298
	.DB $05		;7299
	.DB $0d		;729a
	.DB $80		;729b
	.DB $21		;729c
	.DB $04		;729d
	.DW l72bbh		;729e
	.DB $f7		;72a0
	.DB $04		;72a1
	.DB $05		;72a2
	.DB $0b		;72a3
	.DB $80		;72a4
	.DB $22		;72a5
	.DB $04		;72a6
	.DW l72cbh			;72a7
	.DB $f7		;72a9
	.DB $04		;72aa
	.DB $05		;72ab
	.DB $0b		;72ac
l7283h:
	.DB $ac		;72ad
	.DB $04		;72ae
	.DB $ac		;72af
	.DB $b0		;72b0
	.DB $b0		;72b1
	.DB $b1		;72b2
	.DB $02		;72b3
	.DB $ae		;72b4
	.DB $ae		;72b5
	.DB $e4		;72b6
	.DB $01		;72b7
	.DB $b1		;72b8
	.DB $0a		;72b9
	.DB $e2		;72ba
l72bbh:
	.DB $a9		;72bb
	.DB $04		;72bc
	.DB $a9		;72bd
	.DB $a7		;72be
	.DB $a7		;72bf
	.DB $a9		;72c0
	.DB $02		;72c1
	.DB $a9		;72c2
	.DB $a9		;72c3
	.DB $e4		;72c4
	.DB $01		;72c5
	.DB $a9		;72c6
	.DB $0a		;72c7
	.DB $80		;72c8
	.DB $08		;72c9
	.DB $e6		;72ca
l72cbh:
	.DB $99		;72cb
	.DB $02		;72cc
	.DB $a0		;72cd
	.DB $9d		;72ce
	.DB $a0		;72cf
	.DB $94		;72d0
	.DB $9e		;72d1
	.DB $9b		;72d2
	.DB $9e		;72d3
	.DB $99		;72d4
	.DB $a0		;72d5
	.DB $9d		;72d6
	.DB $a0		;72d7
	.DB $e4		;72d8
	.DB $01		;72d9
	.DB $99		;72da
	.DB $08		;72db
	.DB $e2		;72dc
l72ddh:
	.DB $03		;72dd
	.DB $80		;72de
	.DB $20		;72df
	.DB $04		;72e0
	.DW l72f9h		;72e1
	.DB $f9		;72e3
	.DB $01		;72e4
	.DB $08		;72e5
	.DB $0d		;72e6
	.DB $80		;72e7
	.DB $21		;72e8
	.DB $04		;72e9
	.DW l7307h		;72ea
	.DB $f9		;72ec
	.DB $02		;72ed
	.DB $06		;72ee
	.DB $0a		;72ef
	.DB $80		;72f0
	.DB $22		;72f1
	.DB $04		;72f2
	.DW l7318h		;72f3
	.DB $f9		;72f5
	.DB $02		;72f6
	.DB $06		;72f7
	.DB $09		;72f8
l72f9h:
	.DB $a5		;72f9
	.DB $04		;72fa
	.DB $a0		;72fb
	.DB $9d		;72fc
	.DB $99		;72fd
	.DB $a0		;72fe
	.DB $02		;72ff
	.DB $9e		;7300
	.DB $9d		;7301
	.DB $9b		;7302
	.DB $99		;7303
	.DB $04		;7304
	.DB $80		;7305
	.DB $e2		;7306
l7307h:
	.DB $99		;7307
	.DB $02		;7308
	.DB $a0		;7309
	.DB $99		;730a
	.DB $a0		;730b
	.DB $99		;730c
	.DB $a0		;730d
	.DB $99		;730e
	.DB $a0		;730f
	.DB $94		;7310
	.DB $a0		;7311
	.DB $94		;7312
	.DB $9e		;7313
	.DB $9d		;7314
	.DB $04		;7315
	.DB $99		;7316
	.DB $e2		;7317
l7318h:
	.DB $99		;7318
	.DB $02		;7319
	.DB $9d		;731a
	.DB $99		;731b
	.DB $9d		;731c
	.DB $99		;731d
	.DB $9d		;731e
	.DB $99		;731f
	.DB $9d		;7320
	.DB $94		;7321
	.DB $9b		;7322
	.DB $94		;7323
	.DB $98		;7324
	.DB $99		;7325
	.DB $04		;7326
	.DB $99		;7327
	.DB $80		;7328
	.DB $08		;7329
	.DB $e6		;732a
l732bh:
	.DB $03		;732b
	.DB $80		;732c
	.DB $20		;732d
	.DB $05		;732e
	.DW l7347h		;732f
	.DB $f7		;7331
	.DB $04		;7332
	.DB $08		;7333
	.DB $0d		;7334
	.DB $80		;7335
	.DB $21		;7336
	.DB $05		;7337
	.DW l7357h		;7338
	.DB $f7		;733a
	.DB $04		;733b
	.DB $08		;733c
	.DB $0b		;733d
	.DB $80		;733e
	.DB $22		;733f
	.DB $05		;7340
	.DW l7367h		;7341
	.DB $f7		;7343
	.DB $04		;7344
	.DB $08		;7345
	.DB $0b		;7346
l7347h:
	.DB $ac		;7347
	.DB $04		;7348
	.DB $ac		;7349
	.DB $03		;734a
	.DB $ac		;734b
	.DB $01		;734c
	.DB $b0		;734d
	.DB $02		;734e
	.DB $b0		;734f
	.DB $04		;7350
	.DB $b0		;7351
	.DB $02		;7352
	.DB $b1		;7353
	.DB $b1		;7354
	.DB $0e		;7355
	.DB $e2		;7356
l7357h:
	.DB $a9		;7357
	.DB $04		;7358
	.DB $a9		;7359
	.DB $03		;735a
	.DB $a9		;735b
	.DB $01		;735c
	.DB $a7		;735d
	.DB $02		;735e
	.DB $a7		;735f
	.DB $04		;7360
	.DB $a7		;7361
	.DB $02		;7362
	.DB $a9		;7363
	.DB $a9		;7364
	.DB $0e		;7365
	.DB $e2		;7366
l7367h:
	.DB $a5		;7367
	.DB $04		;7368
	.DB $a5		;7369
	.DB $03		;736a
	.DB $a5		;736b
	.DB $01		;736c
	.DB $a0		;736d
	.DB $02		;736e
	.DB $a0		;736f
	.DB $04		;7370
	.DB $a0		;7371
	.DB $02		;7372
	.DB $a5		;7373
	.DB $a4		;7374
	.DB $01		;7375
	.DB $a2		;7376
	.DB $a0		;7377
	.DB $9e		;7378
	.DB $9d		;7379
	.DB $9b		;737a
	.DB $99		;737b
	.DB $08		;737c
	.DB $80		;737d
	.DB $08		;737e
	.DB $e6		;737f
l7380h:
	.DB $03		;7380
	.DB $80		;7381
	.DB $20		;7382
	.DB $06		;7383
	.DW l739ch		;7384
	.DB $f5		;7386
	.DB $04		;7387
	.DB $09		;7388
	.DB $0d		;7389
	.DB $80		;738a
	.DB $21		;738b
	.DB $06		;738c
	.DW l73b7h		;738d
	.DB $f5		;738f
	.DB $03		;7390
	.DB $01		;7391
	.DB $0b		;7392
	.DB $80		;7393
	.DB $22		;7394
	.DB $06		;7395
	.DW l73c3h		;7396
	.DB $f5		;7398
	.DB $03		;7399
	.DB $01		;739a
	.DB $0b		;739b
l739ch:
	.DB $b0		;739c
	.DB $02		;739d
	.DB $b1		;739e
	.DB $01		;739f
	.DB $ab		;73a0
	.DB $02		;73a1
	.DB $a0		;73a2
	.DB $01		;73a3
	.DB $a8		;73a4
	.DB $02		;73a5
	.DB $a9		;73a6
	.DB $01		;73a7
	.DB $a4		;73a8
	.DB $02		;73a9
	.DB $a5		;73aa
	.DB $01		;73ab
	.DB $a0		;73ac
	.DB $02		;73ad
	.DB $a0		;73ae
	.DB $01		;73af
	.DB $a0		;73b0
	.DB $a2		;73b1
	.DB $a4		;73b2
	.DB $a5		;73b3
	.DB $03		;73b4
	.DB $a5		;73b5
	.DB $e2		;73b6
l73b7h:
	.DB $9d		;73b7
	.DB $06		;73b8
	.DB $e4		;73b9
	.DB $0a		;73ba
	.DB $9d		;73bb
	.DB $03		;73bc
	.DB $9d		;73bd
	.DB $9e		;73be
	.DB $9e		;73bf
	.DB $9d		;73c0
	.DB $9d		;73c1
	.DB $e2		;73c2
l73c3h:
	.DB $99		;73c3
	.DB $06		;73c4
	.DB $e4		;73c5
	.DB $0a		;73c6
	.DB $99		;73c7
	.DB $03		;73c8
	.DB $99		;73c9
	.DB $94		;73ca
	.DB $94		;73cb
	.DB $99		;73cc
	.DB $99		;73cd
	.DB $80		;73ce
	.DB $08		;73cf
	.DB $e6		;73d0
l73d1h:
	.DB $04		;73d1
	.DB $80		;73d2
	.DB $20		;73d3
	.DB $05		;73d4
	.DW l73f6h		;73d5
	.DB $f7		;73d7
	.DB $01		;73d8
	.DB $08		;73d9
	.DB $0d		;73da
	.DB $80		;73db
	.DB $21		;73dc
	.DB $05		;73dd
	.DW l7422h		;73de
	.DB $f7		;73e0
	.DB $01		;73e1
	.DB $08		;73e2
	.DB $0b		;73e3
	.DB $80		;73e4
	.DB $22		;73e5
	.DB $05		;73e6
	.DW l744eh		;73e7
	.DB $f7		;73e9
	.DB $02		;73ea
	.DB $09		;73eb
	.DB $0b		;73ec
	.DB $80		;73ed
	.DB $23		;73ee
	.DB $05		;73ef
	.DW l7480h		;73f0
	.DB $03		;73f2
	.DB $01		;73f3
	.DB $01		;73f4
	.DB $0d		;73f5
l73f6h:
	.DB $ac		;73f6
	.DB $04		;73f7
	.DB $ac		;73f8
	.DB $03		;73f9
	.DB $ac		;73fa
	.DB $01		;73fb
	.DB $ae		;73fc
	.DB $02		;73fd
	.DB $ae		;73fe
	.DB $04		;73ff
	.DB $ae		;7400
	.DB $02		;7401
	.DB $ac		;7402
	.DB $04		;7403
	.DB $ac		;7404
	.DB $03		;7405
	.DB $ac		;7406
	.DB $01		;7407
	.DB $aa		;7408
	.DB $02		;7409
	.DB $aa		;740a
	.DB $04		;740b
	.DB $aa		;740c
	.DB $02		;740d
	.DB $ac		;740e
	.DB $04		;740f
	.DB $ac		;7410
	.DB $03		;7411
	.DB $ac		;7412
	.DB $01		;7413
	.DB $b0		;7414
	.DB $02		;7415
	.DB $b0		;7416
	.DB $04		;7417
	.DB $b0		;7418
	.DB $02		;7419
	.DB $b1		;741a
	.DB $02		;741b
	.DB $b1		;741c
	.DB $01		;741d
	.DB $b1		;741e
	.DB $b1		;741f
	.DB $0c		;7420
	.DB $e2		;7421
l7422h:
	.DB $a9		;7422
	.DB $04		;7423
	.DB $a9		;7424
	.DB $03		;7425
	.DB $a9		;7426
	.DB $01		;7427
	.DB $aa		;7428
	.DB $02		;7429
	.DB $aa		;742a
	.DB $04		;742b
	.DB $aa		;742c
	.DB $02		;742d
	.DB $a9		;742e
	.DB $04		;742f
	.DB $a9		;7430
	.DB $03		;7431
	.DB $a9		;7432
	.DB $01		;7433
	.DB $a7		;7434
	.DB $02		;7435
	.DB $a7		;7436
	.DB $04		;7437
	.DB $a7		;7438
	.DB $02		;7439
	.DB $a9		;743a
	.DB $04		;743b
	.DB $a9		;743c
	.DB $03		;743d
	.DB $a9		;743e
	.DB $01		;743f
	.DB $a7		;7440
	.DB $02		;7441
	.DB $a7		;7442
	.DB $04		;7443
	.DB $a7		;7444
	.DB $02		;7445
	.DB $a9		;7446
	.DB $02		;7447
	.DB $a9		;7448
	.DB $01		;7449
	.DB $a9		;744a
	.DB $a9		;744b
	.DB $0c		;744c
	.DB $e2		;744d
l744eh:
	.DB $a5		;744e
	.DB $04		;744f
	.DB $a5		;7450
	.DB $03		;7451
	.DB $a5		;7452
	.DB $01		;7453
	.DB $9e		;7454
	.DB $02		;7455
	.DB $9e		;7456
	.DB $04		;7457
	.DB $9e		;7458
	.DB $02		;7459
	.DB $a5		;745a
	.DB $04		;745b
	.DB $a5		;745c
	.DB $03		;745d
	.DB $a5		;745e
	.DB $01		;745f
	.DB $a0		;7460
	.DB $02		;7461
	.DB $a0		;7462
	.DB $04		;7463
	.DB $a0		;7464
	.DB $02		;7465
	.DB $a5		;7466
	.DB $04		;7467
	.DB $a5		;7468
	.DB $03		;7469
	.DB $a5		;746a
	.DB $01		;746b
	.DB $a0		;746c
	.DB $02		;746d
	.DB $a0		;746e
	.DB $04		;746f
	.DB $a0		;7470
	.DB $02		;7471
	.DB $a5		;7472
	.DB $02		;7473
	.DB $a4		;7474
	.DB $01		;7475
	.DB $a2		;7476
	.DB $a0		;7477
	.DB $a1		;7478
	.DB $a2		;7479
	.DB $a4		;747a
	.DB $a5		;747b
	.DB $08		;747c
	.DB $80		;747d
	.DB $08		;747e
	.DB $e6		;747f
l7480h:
	.DB $e3		;7480
	.DB $04		;7481
l7482h:
	.DB $e1		;7482
	.DB $09		;7483
	.DB $e4		;7484
	.DB $02		;7485
	.DB $8d		;7486
	.DB $04		;7487
	.DB $e1		;7488
	.DB $0c		;7489
	.DB $e4		;748a
	.DB $05		;748b
	.DB $04		;748c
	.DB $e1		;748d
	.DB $09		;748e
	.DB $e4		;748f
	.DB $02		;7490
	.DB $02		;7491
	.DB $02		;7492
	.DB $e1		;7493
	.DB $0c		;7494
	.DB $e4		;7495
	.DB $05		;7496
	.DB $04		;7497
	.DB $ec		;7498
	.DB $00		;7499
	.DB $04		;749a
	.DW l7482h		;749b
	.DB $e2		;749d
l749eh:
	.DB $04		;749e
	.DB $80		;749f
	.DB $20		;74a0
	.DB $04		;74a1
	.DW l74c3h		;74a2
	.DB $f7		;74a4
	.DB $04		;74a5
	.DB $09		;74a6
	.DB $0d		;74a7
	.DB $80		;74a8
	.DB $21		;74a9
	.DB $04		;74aa
	.DW l74e9h		;74ab
	.DB $f7		;74ad
	.DB $04		;74ae
	.DB $01		;74af
	.DB $0b		;74b0
	.DB $80		;74b1
	.DB $22		;74b2
	.DB $04		;74b3
	.DW l74f8h		;74b4
	.DB $f7		;74b6
	.DB $04		;74b7
	.DB $01		;74b8
	.DB $0b		;74b9
	.DB $80		;74ba
	.DB $23		;74bb
	.DB $04		;74bc
	.DW l7509h		;74bd
	.DB $03		;74bf
	.DB $04		;74c0
	.DB $08		;74c1
	.DB $0b		;74c2
l74c3h:
	.DB $b1		;74c3
	.DB $02		;74c4
	.DB $b0		;74c5
	.DB $b1		;74c6
	.DB $ac		;74c7
	.DB $ab		;74c8
	.DB $ac		;74c9
	.DB $a9		;74ca
	.DB $a8		;74cb
	.DB $a9		;74cc
	.DB $a5		;74cd
	.DB $a4		;74ce
	.DB $a5		;74cf
	.DB $ac		;74d0
	.DB $04		;74d1
	.DB $ac		;74d2
	.DB $02		;74d3
	.DB $ac		;74d4
	.DB $aa		;74d5
	.DB $a9		;74d6
	.DB $a7		;74d7
	.DB $04		;74d8
	.DB $a7		;74d9
	.DB $02		;74da
	.DB $a0		;74db
	.DB $a2		;74dc
	.DB $a4		;74dd
	.DB $a5		;74de
	.DB $06		;74df
	.DB $a5		;74e0
	.DB $01		;74e1
	.DB $a9		;74e2
	.DB $ac		;74e3
	.DB $b1		;74e4
	.DB $03		;74e5
	.DB $a5		;74e6
	.DB $06		;74e7
	.DB $e2		;74e8
l74e9h:
	.DB $9d		;74e9
	.DB $0c		;74ea
	.DB $e4		;74eb
	.DB $0a		;74ec
	.DB $9d		;74ed
	.DB $06		;74ee
	.DB $9d		;74ef
	.DB $9b		;74f0
	.DB $9b		;74f1
	.DB $9e		;74f2
	.DB $9e		;74f3
	.DB $99		;74f4
	.DB $9d		;74f5
	.DB $99		;74f6
	.DB $e2		;74f7
l74f8h:
	.DB $99		;74f8
	.DB $0c		;74f9
	.DB $e4		;74fa
	.DB $0a		;74fb
	.DB $99		;74fc
	.DB $06		;74fd
	.DB $99		;74fe
	.DB $94		;74ff
	.DB $94		;7500
	.DB $94		;7501
	.DB $94		;7502
	.DB $99		;7503
	.DB $99		;7504
	.DB $99		;7505
	.DB $80		;7506
	.DB $08		;7507
	.DB $e6		;7508
l7509h:
	.DB $e3		;7509
	.DB $04		;750a
l750bh:
	.DB $e1		;750b
	.DB $09		;750c
	.DB $e4		;750d
	.DB $02		;750e
	.DB $8d		;750f
	.DB $04		;7510
	.DB $02		;7511
	.DB $e1		;7512
	.DB $0c		;7513
	.DB $e4		;7514
	.DB $05		;7515
	.DB $04		;7516
	.DB $e1		;7517
	.DB $09		;7518
	.DB $e4		;7519
	.DB $02		;751a
	.DB $02		;751b
	.DB $ec		;751c
	.DB $00		;751d
	.DB $06		;751e
	.DW l750bh		;751f
	.DB $e2		;7521
l7522h:
	.DB $03		;7522
	.DB $80		;7523
	.DB $20		;7524
	.DB $04		;7525
	.DW l753eh		;7526
	.DB $00		;7528
	.DB $01		;7529
	.DB $04		;752a
	.DB $0e		;752b
	.DB $80		;752c
	.DB $21		;752d
	.DB $04		;752e
	.DW l755ah		;752f
	.DB $00		;7531
	.DB $01		;7532
	.DB $05		;7533
	.DB $0d		;7534
	.DB $80		;7535
	.DB $22		;7536
	.DB $04		;7537
	.DW l7575h		;7538
	.DB $00		;753a
	.DB $00		;753b
	.DB $03		;753c
	.DB $0d		;753d
l753eh:
	.DB $a0		;753e
	.DB $02		;753f
	.DB $02		;7540
	.DB $9e		;7541
	.DB $04		;7542
	.DB $9d		;7543
	.DB $02		;7544
	.DB $02		;7545
	.DB $9e		;7546
	.DB $04		;7547
	.DB $a0		;7548
	.DB $02		;7549
	.DB $02		;754a
	.DB $02		;754b
	.DB $06		;754c
	.DB $80		;754d
	.DB $04		;754e
	.DB $9b		;754f
	.DB $04		;7550
	.DB $04		;7551
	.DB $04		;7552
	.DB $9d		;7553
	.DB $99		;7554
	.DB $02		;7555
	.DB $02		;7556
	.DB $02		;7557
	.DB $04		;7558
	.DB $e2		;7559
l755ah:
	.DB $9d		;755a
	.DB $02		;755b
	.DB $02		;755c
	.DB $9b		;755d
	.DB $04		;755e
	.DB $99		;755f
	.DB $02		;7560
	.DB $02		;7561
	.DB $04		;7562
	.DB $9d		;7563
	.DB $02		;7564
	.DB $02		;7565
	.DB $02		;7566
	.DB $06		;7567
	.DB $80		;7568
	.DB $04		;7569
	.DB $98		;756a
	.DB $04		;756b
	.DB $04		;756c
	.DB $04		;756d
	.DB $99		;756e
	.DB $96		;756f
	.DB $02		;7570
	.DB $02		;7571
	.DB $02		;7572
	.DB $04		;7573
	.DB $e2		;7574
l7575h:
	.DB $81		;7575
	.DB $02		;7576
	.DB $8d		;7577
	.DB $ec		;7578
	.DB $00		;7579
	.DB $08		;757a
	.DW l7575h		;757b
	.DB $88		;757d
	.DB $94		;757e
	.DB $88		;757f
	.DB $94		;7580
	.DB $88		;7581
	.DB $94		;7582
	.DB $88		;7583
	.DB $94		;7584
	.DB $81		;7585
	.DB $8d		;7586
	.DB $81		;7587
	.DB $8d		;7588
	.DB $80		;7589
	.DB $08		;758a
	.DB $e6		;758b
l758ch:
	.DB $02		;758c
	.DB $a8		;758d
	.DB $21		;758e
	.DB $06		;758f
	.DW l759fh		;7590
	.DB $00		;7592
	.DB $00		;7593
	.DB $05		;7594
	.DB $0e		;7595
	.DB $a8		;7596
	.DB $22		;7597
	.DB $06		;7598
	.DW l75a5h		;7599
	.DB $00		;759b
	.DB $00		;759c
	.DB $06		;759d
	.DB $0d		;759e
l759fh:
	.DB $01		;759f
	.DB $03		;75a0
	.DB $01		;75a1
	.DB $02		;75a2
	.DB $02		;75a3
	.DB $e2		;75a4
l75a5h:
	.DB $01		;75a5
	.DB $f0		;75a6
	.DB $01		;75a7
	.DB $ef		;75a8
	.DB $02		;75a9
	.DB $e2		;75aa
l75abh:
	.DB $02		;75ab
	.DB $a8		;75ac
	.DB $21		;75ad
	.DB $06		;75ae
	.DW l75beh		;75af
	.DB $00		;75b1
	.DB $00		;75b2
	.DB $05		;75b3
	.DB $0e		;75b4
	.DB $a8		;75b5
	.DB $22		;75b6
	.DB $06		;75b7
	.DW l75d4h		;75b8
	.DB $00		;75ba
	.DB $00		;75bb
	.DB $06		;75bc
	.DB $0d		;75bd
l75beh:
	.DB $01		;75be
	.DB $50		;75bf
	.DB $01		;75c0
	.DB $52		;75c1
	.DB $02		;75c2
	.DB $e4		;75c3
	.DB $00		;75c4
	.DB $e1		;75c5
	.DB $0b		;75c6
	.DB $e0		;75c7
	.DB $01		;75c8
	.DB $02		;75c9
	.DB $80		;75ca
	.DB $01		;75cb
	.DB $01		;75cc
	.DB $4c		;75cd
	.DB $02		;75ce
	.DB $02		;75cf
	.DB $02		;75d0
	.DB $02		;75d1
	.DB $0a		;75d2
	.DB $e2		;75d3
l75d4h:
	.DB $02		;75d4
	.DB $00		;75d5
	.DB $02		;75d6
	.DB $02		;75d7
	.DB $02		;75d8
	.DB $e4		;75d9
	.DB $00		;75da
	.DB $ed		;75db
	.DB $01		;75dc
	.DB $e1		;75dd
	.DB $0e		;75de
	.DB $e0		;75df
	.DB $01		;75e0
	.DB $02		;75e1
	.DB $00		;75e2
	.DB $00		;75e3
	.DB $0f		;75e4
	.DB $4c		;75e5
	.DB $01		;75e6
	.DB $10		;75e7
	.DB $01		;75e8
	.DB $30		;75e9
	.DB $0a		;75ea
	.IFDEF _J
		.DB $e2
		.DB $03
    	.DB $a8
    	.DB $20
    	.DB $01
    	.DB $3f
    	.DB $7b
    	.DB $00
    	.DB $00
    	.DB $05
    	.DB $0d
    	.DB $a8
    	.DB $21
    	.DB $01
    	.DB $4a
    	.DB $7b
    	.DB $00
    	.DB $00
    	.DB $06
    	.DB $0d
    	.DB $a0
    	.DB $23
    	.DB $01
    	.DB $55
    	.DB $7b
    	.DB $03
    	.DB $00
    	.DB $08
    	.DB $0f
    	.DB $01
    	.DB $03
    	.DB $01
    	.DB $02
    	.DB $01
    	.DB $00
    	.DB $70
    	.DB $02
    	.DB $d0
    	.DB $08
    	.DB $e2
    	.DB $01
    	.DB $f0
    	.DB $01
    	.DB $ef
    	.DB $01
    	.DB $00
    	.DB $e0
    	.DB $02
    	.DB $bf
    	.DB $05
    	.DB $e2
    	.DB $bd
    	.DB $99
    	.DB $0e
    .ENDIF
	.DB $e2		;75eb
l75ech:
	.DB $03		;75ec
	.DB $a0		;75ed
	.DB $20		;75ee
	.DB $03		;75ef
	.DW l7608h		;75f0
	.DB $00		;75f2
	.DB $00		;75f3
	.DB $01		;75f4
	.DB $0a		;75f5
	.DB $a0		;75f6
	.DB $21		;75f7
	.DB $03		;75f8
	.DW l760ch		;75f9
	.DB $03		;75fb
	.DB $01		;75fc
	.DB $00		;75fd
	.DB $0a		;75fe
	.DB $a0		;75ff
	.DB $23		;7600
	.DB $03		;7601
	.DW l7610h		;7602
	.DB $03		;7604
	.DB $01		;7605
	.DB $08		;7606
	.DB $0a		;7607
l7608h:
	.DB $81		;7608
	.DB $bd		;7609
	.DB $06		;760a
	.DB $e2		;760b
l760ch:
	.DB $a5		;760c
	.DB $b1		;760d
	.DB $04		;760e
	.DB $e2		;760f
l7610h:
	.IFDEF _UE
		.DB $e3		;7610
		.DB $07		;7611
	.ENDIF
	.DB $ab		;7612
	.DB $b3		;7613
	.DB $04		;7614
	.DB $ef		;7615
l7616h:
	.DB $02		;7616
	.DB $a0		;7617
	.DB $21		;7618
	.DB $01		;7619
	.DW l7629h		;761a
	.DB $03		;761c
	.DB $01		;761d
	.DB $01		;761e
	.DB $0e		;761f
	.DB $a0		;7620
	.DB $22		;7621
	.DB $01		;7622
	.DW l7629h		;7623
	.DB $02		;7625
	.DB $01		;7626
	.DB $01		;7627
	.DB $0e		;7628
l7629h:
	.DB $a5		;7629
	.DB $a4		;762a
	.DB $03		;762b
	.DB $a2		;762c
	.DB $a1		;762d
	.DB $03		;762e
	.DB $9e		;762f
	.DB $9d		;7630
	.DB $06		;7631
	.DB $e2		;7632
l7633h:
	.IFDEF _J
		.DB $02
		.DB $a0
		.DB $21
		.DB $01
		.DB $b1
		.DB $7b
		.DB $03
		.DB $01
		.DB $05
		.DB $0d
		.DB $a0
		.DB $23
		.DB $01
		.DB $b8
		.DB $7b
		.DB $03
		.DB $01
		.DB $01
		.DB $0d
		.DB $8d
		.DB $8c
		.DB $02
		.DB $92
		.DB $94
		.DB $08
		.DB $e2
		.DB $92
		.DB $8f
		.DB $02
		.DB $99
		.DB $96
		.DB $08
	.ENDIF
	.IFDEF _UE
		.DB $03		;7633
		.DB $a8		;7634
		.DB $20		;7635
		.DB $01		;7636
		.DB $4f		;7637
		.DB $76		;7638
		.DB $00		;7639
		.DB $00		;763a
		.DB $02		;763b
		.DB $0d		;763c
		.DB $a8		;763d
		.DB $21		;763e
		.DB $01		;763f
		.DB $55		;7640
		.DB $76		;7641
		.DB $00		;7642
		.DB $00		;7643
		.DB $02		;7644
		.DB $0d		;7645
		.DB $a8		;7646
		.DB $23		;7647
		.DB $01		;7648
		.DB $5b		;7649
		.DB $76		;764a
		.DB $00		;764b
		.DB $00		;764c
		.DB $02		;764d
		.DB $0f		;764e
		.DB $02		;764f
		.DB $20		;7650
		.DB $02		;7651
		.DB $30		;7652
		.DB $06		;7653
		.DB $e2		;7654
		.DB $02		;7655
		.DB $40		;7656
		.DB $02		;7657
		.DB $50		;7658
		.DB $06		;7659
		.DB $e2		;765a
		.DB $e3		;765b
		.DB $07		;765c
		.DB $00		;765d
		.DB $40		;765e
		.DB $00		;765f
		.DB $50		;7660
		.DB $02		;7661
		.DB $00		;7662
		.DB $00		;7663
		.DB $00		;7664
		.DB $00		;7665
		.DB $04		;7666
	.ENDIF
	.DB $e2		;7667
l7668h:
	.DB $02		;7668
	.DB $88		;7669
	.DB $21		;766a
	.DB $02		;766b
	.DW l767bh		;766c
	.DB $03		;766e
	.DB $01		;766f
	.DB $03		;7670
	.DB $0e		;7671
	.DB $80		;7672
	.DB $23		;7673
	.DB $02		;7674
	.DW l7682h		;7675
	.DB $03		;7677
	.DB $00		;7678
	.DB $03		;7679
	.DB $0d		;767a
l767bh:
	.DB $01		;767b
	.DB $20		;767c
	.DB $02		;767d
	.DB $00		;767e
	.DB $e0		;767f
	.DB $06		;7680
	.DB $e2		;7681
l7682h:
	.DB $e3		;7682
	.DB $07		;7683
	.DB $8d		;7684
	.DB $02		;7685
	.DB $b1		;7686
	.DB $06		;7687
	.DB $e2		;7688
l7689h:
	.DB $02		;7689
	.DB $a8		;768a
	.DB $21		;768b
	.DB $02		;768c
	.DW l769ch		;768d
	.DB $03		;768f
	.DB $01		;7690
	.DB $01		;7691
	.DB $0e		;7692
	.DB $a8		;7693
	.DB $22		;7694
	.DB $02		;7695
	.DW l76ach		;7696
	.DB $03		;7698
	.DB $00		;7699
	.DB $01		;769a
	.DB $0d		;769b
l769ch:
	.DB $01		;769c
	.DB $00		;769d
	.DB $00		;769e
	.DB $30		;769f
	.DB $04		;76a0
	.DB $ec		;76a1
	.DB $00		;76a2
	.DB $04		;76a3
	.DW l769ch		;76a4
	.DB $00		;76a6
	.DB $40		;76a7
	.DB $00		;76a8
	.DB $30		;76a9
	.DB $09		;76aa
	.DB $e2		;76ab
l76ach:
	.DB $01		;76ac
	.DB $30		;76ad
	.DB $01		;76ae
	.DB $00		;76af
	.DB $04		;76b0
	.DB $ec		;76b1
	.DB $00		;76b2
	.DB $04		;76b3
	.DW l76ach		;76b4
	.DB $00		;76b6
	.DB $60		;76b7
	.DB $00		;76b8
	.DB $43		;76b9
	.DB $09		;76ba
	.DB $e2		;76bb
l76bch:
	.DB $01		;76bc
	.DB $80		;76bd
	.DB $20		;76be
	.DB $02		;76bf
	.DW l76c6h		;76c0
	.DB $03		;76c2
	.DB $00		;76c3
	.DB $01		;76c4
	.DB $0b		;76c5
l76c6h:
	.DB $8d		;76c6
	.DB $01		;76c7
	.DB $e2		;76c8
l76c9h:
	.DB $01		;76c9
	.DB $a0		;76ca
	.DB $20		;76cb
	.DB $01		;76cc
	.DW l76d3h		;76cd
	.DB $03		;76cf
	.DB $00		;76d0
	.DB $01		;76d1
	.DB $0b		;76d2
l76d3h:
	.DB $91		;76d3
	.DB $92		;76d4
	.DB $03		;76d5
	.DB $e2		;76d6
l76d7h:
	.DB $02		;76d7
	.DB $a8		;76d8
	.DB $21		;76d9
	.DB $01		;76da
	.DW l76eah		;76db
	.DB $03		;76dd
	.DB $00		;76de
	.DB $00		;76df
	.DB $0b		;76e0
	.DB $a8		;76e1
	.DB $22		;76e2
	.DB $01		;76e3
	.DW l76f5h		;76e4
	.DB $03		;76e6
	.DB $01		;76e7
	.DB $00		;76e8
	.DB $0e		;76e9
l76eah:
	.DB $02		;76ea
	.DB $02		;76eb
	.DB $02		;76ec
	.DB $02		;76ed
	.DB $0a		;76ee
	.DB $02		;76ef
	.DB $01		;76f0
	.DB $02		;76f1
	.DB $80		;76f2
	.DB $26		;76f3
	.DB $e2		;76f4
l76f5h:
	.DB $01		;76f5
	.DB $10		;76f6
	.DB $01		;76f7
	.DB $30		;76f8
	.DB $0a		;76f9
	.DB $01		;76fa
	.DB $30		;76fb
	.DB $02		;76fc
	.DB $00		;76fd
	.DB $26		;76fe
	.DB $e2		;76ff
l7700h:
	.DB $03		;7700
	.DB $88		;7701
	.DB $20		;7702
	.DB $01		;7703
	.DW l771ch		;7704
	.DB $00		;7706
	.DB $02		;7707
	.DB $03		;7708
	.DB $0a		;7709
	.DB $88		;770a
	.DB $21		;770b
	.DB $01		;770c
	.DW l7735h		;770d
	.DB $00		;770f
	.DB $01		;7710
	.DB $03		;7711
	.DB $0d		;7712
	.DB $88		;7713
	.DB $22		;7714
	.DB $01		;7715
	.DW l774eh		;7716
	.DB $00		;7718
	.DB $02		;7719
	.DB $03		;771a
	.DB $0a		;771b
l771ch:
	.DB $00		;771c
	.DB $50		;771d
	.DB $01		;771e
	.DB $00		;771f
	.DB $40		;7720
	.DB $01		;7721
	.DB $00		;7722
	.DB $30		;7723
	.DB $01		;7724
	.DB $00		;7725
	.DB $00		;7726
	.DB $04		;7727
	.DB $00		;7728
	.DB $90		;7729
	.DB $01		;772a
	.DB $00		;772b
	.DB $a0		;772c
	.DB $01		;772d
	.DB $00		;772e
	.DB $b0		;772f
	.DB $01		;7730
	.DB $00		;7731
	.DB $d0		;7732
	.DB $01		;7733
	.DB $e2		;7734
l7735h:
	.DB $00		;7735
	.DB $48		;7736
	.DB $01		;7737
	.DB $00		;7738
	.DB $38		;7739
	.DB $01		;773a
	.DB $00		;773b
	.DB $40		;773c
	.DB $01		;773d
	.DB $00		;773e
	.DB $00		;773f
	.DB $04		;7740
	.DB $00		;7741
	.DB $a0		;7742
	.DB $01		;7743
	.DB $00		;7744
	.DB $90		;7745
	.DB $01		;7746
	.DB $00		;7747
	.DB $b0		;7748
	.DB $01		;7749
	.DB $00		;774a
	.DB $c0		;774b
	.DB $01		;774c
	.DB $e2		;774d
l774eh:
	.DB $00		;774e
	.DB $70		;774f
	.DB $01		;7750
	.DB $00		;7751
	.DB $60		;7752
	.DB $01		;7753
	.DB $00		;7754
	.DB $50		;7755
	.DB $01		;7756
	.DB $00		;7757
	.DB $00		;7758
	.DB $04		;7759
	.DB $00		;775a
	.DB $b0		;775b
	.DB $01		;775c
	.DB $00		;775d
	.DB $c0		;775e
	.DB $01		;775f
	.DB $00		;7760
	.DB $d0		;7761
	.DB $01		;7762
	.DB $00		;7763
	.DB $f0		;7764
	.DB $01		;7765
	.DB $e2		;7766
l7767h:
	.DB $03		;7767
	.DB $88		;7768
	.DB $20		;7769
	.DB $01		;776a
	.DW l7783h		;776b
	.DB $03		;776d
	.DB $00		;776e
	.DB $04		;776f
	.DB $0f		;7770
	.DB $88		;7771
	.DB $21		;7772
	.DB $01		;7773
	.DW l77b4h		;7774
	.DB $03		;7776
	.DB $01		;7777
	.DB $03		;7778
	.DB $0d		;7779
	.DB $88		;777a
	.DB $22		;777b
	.DB $01		;777c
	.DW l77e5h		;777d
	.DB $00		;777f
	.DB $02		;7780
	.DB $02		;7781
	.DB $0b		;7782
l7783h:
	.DB $e1		;7783
	.DB $0e		;7784
	.DB $00		;7785
	.DB $60		;7786
	.DB $01		;7787
	.DB $00		;7788
	.DB $58		;7789
	.DB $01		;778a
	.DB $00		;778b
	.DB $50		;778c
	.DB $01		;778d
	.DB $00		;778e
	.DB $00		;778f
	.DB $02		;7790
	.DB $e1		;7791
	.DB $0d		;7792
	.DB $00		;7793
	.DB $80		;7794
	.DB $01		;7795
	.DB $00		;7796
	.DB $90		;7797
	.DB $01		;7798
	.DB $00		;7799
	.DB $c0		;779a
	.DB $01		;779b
	.DB $00		;779c
	.DB $d0		;779d
	.DB $01		;779e
	.DB $00		;779f
	.DB $f0		;77a0
	.DB $01		;77a1
	.DB $00		;77a2
	.DB $00		;77a3
	.DB $02		;77a4
	.DB $e1		;77a5
	.DB $0b		;77a6
	.DB $01		;77a7
	.DB $10		;77a8
	.DB $01		;77a9
	.DB $01		;77aa
	.DB $20		;77ab
	.DB $01		;77ac
	.DB $01		;77ad
	.DB $40		;77ae
	.DB $01		;77af
	.DB $01		;77b0
	.DB $70		;77b1
	.DB $01		;77b2
	.DB $e2		;77b3
l77b4h:
	.DB $e1		;77b4
	.DB $0d		;77b5
	.DB $00		;77b6
	.DB $70		;77b7
	.DB $01		;77b8
	.DB $00		;77b9
	.DB $68		;77ba
	.DB $01		;77bb
	.DB $00		;77bc
	.DB $60		;77bd
	.DB $01		;77be
	.DB $00		;77bf
	.DB $00		;77c0
	.DB $02		;77c1
	.DB $e1		;77c2
	.DB $0b		;77c3
	.DB $00		;77c4
	.DB $90		;77c5
	.DB $01		;77c6
	.DB $00		;77c7
	.DB $a0		;77c8
	.DB $01		;77c9
	.DB $00		;77ca
	.DB $d0		;77cb
	.DB $01		;77cc
	.DB $00		;77cd
	.DB $e0		;77ce
	.DB $01		;77cf
	.DB $01		;77d0
	.DB $00		;77d1
	.DB $01		;77d2
	.DB $00		;77d3
	.DB $00		;77d4
	.DB $02		;77d5
	.DB $e1		;77d6
	.DB $0a		;77d7
	.DB $01		;77d8
	.DB $20		;77d9
	.DB $01		;77da
	.DB $01		;77db
	.DB $30		;77dc
	.DB $01		;77dd
	.DB $01		;77de
	.DB $50		;77df
	.DB $01		;77e0
	.DB $01		;77e1
	.DB $80		;77e2
	.DB $01		;77e3
	.DB $e2		;77e4
l77e5h:
	.DB $e1		;77e5
	.DB $0d		;77e6
	.DB $00		;77e7
	.DB $80		;77e8
	.DB $01		;77e9
	.DB $00		;77ea
	.DB $78		;77eb
	.DB $01		;77ec
	.DB $00		;77ed
	.DB $70		;77ee
	.DB $01		;77ef
	.DB $00		;77f0
	.DB $00		;77f1
	.DB $02		;77f2
	.DB $e1		;77f3
	.DB $0b		;77f4
	.DB $00		;77f5
	.DB $a0		;77f6
	.DB $01		;77f7
	.DB $00		;77f8
	.DB $b0		;77f9
	.DB $01		;77fa
	.DB $00		;77fb
	.DB $e0		;77fc
	.DB $01		;77fd
	.DB $01		;77fe
	.DB $00		;77ff
	.DB $01		;7800
	.DB $01		;7801
	.DB $20		;7802
	.DB $01		;7803
	.DB $00		;7804
	.DB $00		;7805
	.DB $02		;7806
	.DB $e1		;7807
	.DB $0a		;7808
	.DB $01		;7809
	.DB $40		;780a
	.DB $01		;780b
	.DB $01		;780c
	.DB $50		;780d
	.DB $01		;780e
	.DB $01		;780f
	.DB $70		;7810
	.DB $01		;7811
	.DB $01		;7812
	.DB $a0		;7813
	.DB $01		;7814
	.DB $e2		;7815
l7816h:
	.DB $03		;7816
	.DB $a8		;7817
	.DB $20		;7818
	.DB $02		;7819
	.DW l7832h		;781a
	.DB $00		;781c
	.DB $00		;781d
	.DB $04		;781e
	.DB $0d		;781f
	.DB $a8		;7820
	.DB $21		;7821
	.DB $02		;7822
	.DW l7842h		;7823
	.DB $00		;7825
	.DB $01		;7826
	.DB $04		;7827
	.DB $0e		;7828
	.DB $a8		;7829
	.DB $22		;782a
	.DB $02		;782b
	.DW l7852h		;782c
	.DB $00		;782e
	.DB $00		;782f
	.DB $03		;7830
	.DB $0d		;7831
l7832h:
	.DB $00		;7832
	.DB $67		;7833
	.DB $00		;7834
	.DB $5e		;7835
	.DB $06		;7836
	.DB $00		;7837
	.DB $c0		;7838
	.DB $01		;7839
	.DB $f0		;783a
	.DB $03		;783b
	.DB $00		;783c
	.DB $d0		;783d
	.DB $01		;783e
	.DB $f0		;783f
	.DB $04		;7840
	.DB $e2		;7841
l7842h:
	.DB $00		;7842
	.DB $66		;7843
	.DB $00		;7844
	.DB $54		;7845
	.DB $06		;7846
	.DB $00		;7847
	.DB $90		;7848
	.DB $00		;7849
	.DB $f6		;784a
	.DB $03		;784b
	.DB $00		;784c
	.DB $c0		;784d
	.DB $00		;784e
	.DB $f0		;784f
	.DB $02		;7850
	.DB $e2		;7851
l7852h:
	.DB $00		;7852
	.DB $60		;7853
	.DB $00		;7854
	.DB $43		;7855
	.DB $06		;7856
	.DB $00		;7857
	.DB $90		;7858
	.DB $00		;7859
	.DB $c0		;785a
	.DB $07		;785b
	.DB $e2		;785c
l785dh:
	.DB $03		;785d
	.DB $a8		;785e
	.DB $20		;785f
	.DB $02		;7860
	.DW l7879h		;7861
	.DB $03		;7863
	.DB $00		;7864
	.DB $05		;7865
	.DB $0b		;7866
	.DB $a8		;7867
	.DB $21		;7868
	.DB $02		;7869
	.DW l7889h		;786a
	.DB $03		;786c
	.DB $01		;786d
	.DB $03		;786e
	.DB $0e		;786f
	.DB $a8		;7870
	.DB $22		;7871
	.DB $02		;7872
	.DW l7899h		;7873
	.DB $03		;7875
	.DB $00		;7876
	.DB $03		;7877
	.DB $0d		;7878
l7879h:
	.DB $00		;7879
	.DB $35		;787a
	.DB $00		;787b
	.DB $26		;787c
	.DB $04		;787d
	.DB $00		;787e
	.DB $00		;787f
	.DB $00		;7880
	.DB $00		;7881
	.DB $04		;7882
	.DB $00		;7883
	.DB $50		;7884
	.DB $00		;7885
	.DB $60		;7886
	.DB $03		;7887
	.DB $e2		;7888
l7889h:
	.DB $00		;7889
	.DB $50		;788a
	.DB $00		;788b
	.DB $37		;788c
	.DB $06		;788d
	.DB $00		;788e
	.DB $00		;788f
	.DB $00		;7890
	.DB $00		;7891
	.DB $02		;7892
	.DB $00		;7893
	.DB $80		;7894
	.DB $00		;7895
	.DB $e0		;7896
	.DB $03		;7897
	.DB $e2		;7898
l7899h:
	.DB $00		;7899
	.DB $80		;789a
	.DB $00		;789b
	.DB $10		;789c
	.DB $06		;789d
	.DB $00		;789e
	.DB $00		;789f
	.DB $00		;78a0
	.DB $00		;78a1
	.DB $02		;78a2
	.DB $00		;78a3
	.DB $70		;78a4
	.DB $00		;78a5
	.DB $40		;78a6
	.DB $03		;78a7
	.DB $e2		;78a8
l78a9h:
	.DB $03		;78a9
	.DB $a8		;78aa
	.DB $20		;78ab
	.DB $02		;78ac
	.DW l78c5h		;78ad
	.DB $03		;78af
	.DB $00		;78b0
	.DB $05		;78b1
	.DB $0f		;78b2
	.DB $a8		;78b3
	.DB $21		;78b4
	.DB $02		;78b5
	.DW l78d0h		;78b6
	.DB $03		;78b8
	.DB $01		;78b9
	.DB $04		;78ba
	.DB $08		;78bb
	.DB $a8		;78bc
	.DB $22		;78bd
	.DB $02		;78be
	.DW l78dbh		;78bf
	.DB $03		;78c1
	.DB $00		;78c2
	.DB $06		;78c3
	.DB $09		;78c4
l78c5h:
	.DB $00		;78c5
	.DB $40		;78c6
	.DB $00		;78c7
	.DB $32		;78c8
	.DB $06		;78c9
	.DB $00		;78ca
	.DB $40		;78cb
	.DB $00		;78cc
	.DB $60		;78cd
	.DB $03		;78ce
	.DB $e2		;78cf
l78d0h:
	.DB $00		;78d0
	.DB $60		;78d1
	.DB $00		;78d2
	.DB $40		;78d3
	.DB $06		;78d4
	.DB $00		;78d5
	.DB $60		;78d6
	.DB $00		;78d7
	.DB $98		;78d8
	.DB $03		;78d9
	.DB $e2		;78da
l78dbh:
	.DB $00		;78db
	.DB $50		;78dc
	.DB $02		;78dd
	.DB $80		;78de
	.DB $06		;78df
	.DB $00		;78e0
	.DB $a0		;78e1
	.DB $00		;78e2
	.DB $f0		;78e3
	.DB $03		;78e4
	.DB $e2		;78e5
l78e6h:
	.DB $02		;78e6
	.DB $a8		;78e7
	.DB $21		;78e8
	.DB $04		;78e9
	.DW l78f9h		;78ea
	.DB $03		;78ec
	.DB $01		;78ed
	.DB $01		;78ee
	.DB $0e		;78ef
	.DB $a8		;78f0
	.DB $22		;78f1
	.DB $01		;78f2
	.DW l78ffh		;78f3
	.DB $00		;78f5
	.DB $00		;78f6
	.DB $06		;78f7
	.DB $0d		;78f8
l78f9h:
	.DB $01		;78f9
	.DB $00		;78fa
	.DB $01		;78fb
	.DB $02		;78fc
	.DB $04		;78fd
	.DB $e2		;78fe
l78ffh:
	.DB $00		;78ff
	.DB $f8		;7900
	.DB $00		;7901
	.DB $fb		;7902
	.DB $04		;7903
	.DB $e2		;7904
l7905h:
	.DW l7919h_0		;7905
	.DW l7919h_1		;7907
	.DW l7919h_2		;7909
	.DW l7919h_3		;790b
	.DW l7919h_4		;790d
	.DW l7919h_5		;790f
	.DW l7919h_6		;7911
	.DW l7919h_7		;7913
	.DW l7919h_8		;7915
	.DW l7919h_9		;7917
l7919h_0:
	.DB $de		;7919
	.DB $ff		;791a
	.DB $ee		;791b
	.DB $dd		;791c
	.DB $cc		;791d
	.DB $bb		;791e
	.DB $aa		;791f
	.DB $01		;7920
l7919h_1:
	.DB $ff		;7921
	.DB $02		;7922
l7919h_2:
	.DB $ff		;7923
	.DB $fd		;7924
	.DB $02		;7925
l7919h_3:
	.DB $ff		;7926
	.DB $ee		;7927
	.DB $dd		;7928
	.DB $cc		;7929
	.DB $bb		;792a
	.DB $aa		;792b
	.DB $01		;792c
l7919h_4:
	.DB $ff		;792d
	.DB $ed		;792e
	.DB $dc		;792f
	.DB $ba		;7930
	.DB $a9		;7931
	.DB $87		;7932
	.DB $02		;7933
l7919h_5:
	.DB $ef		;7934
	.DB $ee		;7935
	.DB $dc		;7936
	.DB $ba		;7937
	.DB $a9		;7938
	.DB $87		;7939
	.DB $76		;793a
	.DB $65		;793b
	.DB $54		;793c
	.DB $01		;793d
l7919h_6:
	.DB $ff		;793e
	.DB $ed		;793f
	.DB $ca		;7940
	.DB $02		;7941
l7919h_7:
	.DB $ef		;7942
	.DB $ed		;7943
	.DB $cc		;7944
	.DB $bb		;7945
	.DB $aa		;7946
	.DB $99		;7947
	.DB $01		;7948
l7919h_8:
	.DB $df		;7949
	.DB $ff		;794a
	.DB $ed		;794b
	.DB $1c		;794c
	.DB $ba		;794d
	.DB $98		;794e
	.DB $02		;794f
l7919h_9:
	.DB $ef		;7950
	.DB $fe		;7951
	.DB $ed		;7952
	.DB $dd		;7953
	.DB $cb		;7954
	.DB $02		;7955
l7956h:
	.DW l7956h_0		;7956
	.DW l7956h_1		;7958
	.DW l7956h_2		;795a
	.DW l7956h_3		;795c
l7956h_0:
	.DB $ee		;795e
	.DB $ff		;795f
	.DB $01		;7960
l7956h_1:
	.DB $ff		;7961
	.DB $ee		;7962
	.DB $00		;7963
l7956h_2:
	.DB $ff		;7964
	.DB $ee		;7965
	.DB $ff		;7966
	.DB $ee		;7967
	.DB $dd		;7968
	.DB $ee		;7969
	.DB $00		;796a
l7956h_3:
	.DB $ee		;796b
	.DB $dd		;796c
	.DB $ee		;796d
	.DB $00		;796e
	.IFDEF _UE
		.INCLUDE "fragment.asm"
	.ENDIF
	.DSB 298, $ff			;7ea3
	.IFDEF _UE
		.DSB 35, $ff			;7f9c
    .ENDIF
	.DB "TMR SEGA"			;7ff0
	.DB $ff $ff			;7ff8
	.IFDEF _J
		.DB $a6			;7ff9
		.DB $6f			;7ffa
	.ENDIF
	.IFDEF _UE
		.DB $d4			;7ff9
		.DB $88			;7ffa
	.ENDIF
	.DB $07		;7ffa
	.DB $40			;7ffd
	; Version?
	.IFDEF _J
		.DB $00		;7ffe
	.ENDIF
	.IFDEF _UE
		.DB $01		;7ffe
	.ENDIF
	.DB $4c		;7fff
