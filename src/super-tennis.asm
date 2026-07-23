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

	.INCLUDE "io/constants.asm"

start:
	jp init		; c3 85 00 ;0000
l0003h:
	.DB $3f			;0003
l0004h:
	.DB $3f			;0004
l0005h:
	.DB $37			;0005
l0006h:
	.DB $08			;0006
l0007h:
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
l0030h:
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
sub_0038h:
	jp l0165h		; c3 65 01 ;0038
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
sub_0070h:
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
init:
	di			; f3 ;0085
	ld sp,0dffeh		; 31 fe df ;0086
	im 1		; ed 56 ;0089
	; Clear RAM range 0xc000-0xc03f
	ld hl,0c000h		; 21 00 c0 ;008b
	ld de,0c001h		; 11 01 c0 ;008e
	ld bc,l003fh		; 01 3f 00 ;0091
	ld (hl),000h		; 36 00 ;0094
l0096h:
	ldir		; ed b0 ;0096
	.IFDEF _J
		call sub_75b4h		; cd b4 75 ;0098
	.ENDIF
	.IFDEF _UE
		call sub_7dd7h		; cd d7 7d ;0098
	.ENDIF
	ld a,092h		; 3e 92 ;009b
	out (0dfh),a		; d3 df ;009d
	ld a,055h		; 3e 55 ;009f
	out (0deh),a		; d3 de ;00a1
	in a,(0deh)		; db de ;00a3
	cp 055h		; fe 55 ;00a5
	ld c,000h		; 0e 00 ;00a7
	jr z,l00adh		; 28 02 ;00a9
l00abh:
	ld c,0ffh		; 0e ff ;00ab
l00adh:
	ld a,0aah		; 3e aa ;00ad
	out (0deh),a		; d3 de ;00af
	in a,(0deh)		; db de ;00b1
	cp 0aah		; fe aa ;00b3
	ld a,000h		; 3e 00 ;00b5
	jr z,l00bbh		; 28 02 ;00b7
	ld a,0ffh		; 3e ff ;00b9
l00bbh:
	or c			; b1 ;00bb
	ld (0c002h),a		; 32 02 c0 ;00bc
	ld a,007h		; 3e 07 ;00bf
	out (0deh),a		; d3 de ;00c1
	ld b,00ah		; 06 0a ;00c3
	ld de,0ffffh		; 11 ff ff ;00c5
l00c8h:
	ld hl,l39deh		; 21 de 39 ;00c8
l00cbh:
	add hl,de			; 19 ;00cb
l00cch:
	jr c,l00cbh		; 38 fd ;00cc
	djnz l00c8h		; 10 f8 ;00ce
	.IFDEF _J
		call 04101h		; cd 01 41 ;00d0
	.ENDIF
	.IFDEF _UE
		call 04106h		; cd 06 41 ;00d0
	.ENDIF
	ld (0c010h),a		; 32 10 c0 ;00d3
l00d6h:
	di			; f3 ;00d6
	ld sp,0dffeh		; 31 fe df ;00d7
	xor a			; af ;00da
	ld (0c003h),a		; 32 03 c0 ;00db
	ld (0c000h),a		; 32 00 c0 ;00de
l00e1h:
	ld (0c004h),a		; 32 04 c0 ;00e1
	ld hl,0c040h		; 21 40 c0 ;00e4
	ld de,0c041h		; 11 41 c0 ;00e7
	ld bc,l1fbfh		; 01 bf 1f ;00ea
	ld (hl),000h		; 36 00 ;00ed
	ldir		; ed b0 ;00ef
l00f1h:
	in a,(0bfh)		; db bf ;00f1
	ld b,016h		; 06 16 ;00f3
	ld c,0bfh		; 0e bf ;00f5
	ld hl,l003bh		; 21 3b 00 ;00f7
	otir		; ed b3 ;00fa
	ld hl,start		; 21 00 00 ;00fc
l00ffh:
	ld de,l002dh		; 11 2d 00 ;00ff
l0102h:
	ld b,001h		; 06 01 ;0102
l0104h:
	call sub_0481h		; cd 81 04 ;0104
	ld hl,l0010h		; 21 10 00 ;0107
l010ah:
	ld de,l002dh		; 11 2d 00 ;010a
l010dh:
	ld b,001h		; 06 01 ;010d
l010fh:
	call sub_0481h		; cd 81 04 ;010f
l0112h:
	ld de,l2000h		; 11 00 20 ;0112
	.IFDEF _J
		ld hl,05b3eh		; 21 3e 5b ;0115
	.ENDIF
	.IFDEF _UE
		ld hl,05b43h		; 21 43 5b ;0115
	.ENDIF
l0118h:
	call sub_04b5h		; cd b5 04 ;0118
	ld de,start		; 11 00 00 ;011b
l011eh:
	.IFDEF _J
		ld hl,l5ddeh		; 21 de 5d ;011e
	.ENDIF
	.IFDEF _UE
		ld hl,l5de3h		; 21 e3 5d ;011e
	.ENDIF
	call sub_04b5h		; cd b5 04 ;0121
l0124h:
	ld de,0c600h		; 11 00 c6 ;0124
l0127h:
	.IFDEF _J
		ld hl,l70c6h		; 21 c6 70 ;0127
	.ENDIF
	.IFDEF _UE
		ld hl,l70cbh		; 21 cb 70 ;0127
	.ENDIF
l012ah:
	call sub_04edh		; cd ed 04 ;012a
	ld de,0c720h		; 11 20 c7 ;012d
l0130h:
	.IFDEF _J
		ld hl,04b41h		; 21 41 4b ;0130
	.ENDIF
	.IFDEF _UE
		ld hl,04b46h		; 21 46 4b ;0130
	.ENDIF
l0133h:
	call sub_04edh		; cd ed 04 ;0133
l0136h:
	ld de,0c76ch		; 11 6c c7 ;0136
	.IFDEF _J
		ld hl,04b6fh		; 21 6f 4b ;0139
	.ENDIF
	.IFDEF _UE
		ld hl,04b74h		; 21 74 4b ;0139
	.ENDIF
l013ch:
	call sub_04edh		; cd ed 04 ;013c
	ld de,0c84ch		; 11 4c c8 ;013f
l0142h:
	.IFDEF _J
		ld hl,05953h		; 21 53 59 ;0142
	.ENDIF
	.IFDEF _UE
		ld hl,05958h		; 21 58 59 ;0142
	.ENDIF
l0145h:
	call sub_04edh		; cd ed 04 ;0145
l0148h:
	ld de,0cbe8h		; 11 e8 cb ;0148
	.IFDEF _J
		ld hl,04c32h		; 21 32 4c ;014b
	.ENDIF
	.IFDEF _UE
		ld hl,04c37h		; 21 37 4c ;014b
	.ENDIF
	call sub_04edh		; cd ed 04 ;014e
l0151h:
	call l0386h+2		; cd 88 03 ;0151
	ld a,080h		; 3e 80 ;0154
	ld (0de00h),a		; 32 00 de ;0156
l0159h:
	ld a,080h		; 3e 80 ;0159
l015bh:
	ld (0c006h),a		; 32 06 c0 ;015b
	call sub_03a0h		; cd a0 03 ;015e
	ei			; fb ;0161
	jp l07f8h		; c3 f8 07 ;0162
l0165h:
	push af			; f5 ;0165
	in a,(0bfh)		; db bf ;0166
	bit 7,a		; cb 7f ;0168
l016ah:
	jp z,l0237h		; ca 37 02 ;016a
	push ix		; dd e5 ;016d
	push iy		; fd e5 ;016f
	push bc			; c5 ;0171
	push de			; d5 ;0172
	push hl			; e5 ;0173
	ex af,af'			; 08 ;0174
	exx			; d9 ;0175
	push af			; f5 ;0176
	push bc			; c5 ;0177
	push de			; d5 ;0178
	push hl			; e5 ;0179
	ld hl,0c003h		; 21 03 c0 ;017a
	in a,(0ddh)		; db dd ;017d
l017fh:
	and 010h		; e6 10 ;017f
	ld c,(hl)			; 4e ;0181
	ld (hl),a			; 77 ;0182
	xor c			; a9 ;0183
	and c			; a1 ;0184
	jp nz,l0213h		; c2 13 02 ;0185
	ld a,(0c005h)		; 3a 05 c0 ;0188
	inc a			; 3c ;018b
	cp 00fh		; fe 0f ;018c
	jr c,l0192h		; 38 02 ;018e
	ld a,00fh		; 3e 0f ;0190
l0192h:
	ld (0c005h),a		; 32 05 c0 ;0192
	ld a,(0c004h)		; 3a 04 c0 ;0195
	or a			; b7 ;0198
	jp nz,l0219h		; c2 19 02 ;0199
	ld a,(0c001h)		; 3a 01 c0 ;019c
	or a			; b7 ;019f
l01a0h:
	jp nz,l0224h		; c2 24 02 ;01a0
	ld c,0beh		; 0e be ;01a3
	ld a,(0c089h)		; 3a 89 c0 ;01a5
	rlca			; 07 ;01a8
	jp nc,l022fh		; d2 2f 02 ;01a9
	ld hl,l1fc0h		; 21 c0 1f ;01ac
	call sub_set_vdp_write_addr		; cd 26 04 ;01af
	ld hl,(0c514h)		; 2a 14 c5 ;01b2
	ld b,020h		; 06 20 ;01b5
	otir		; ed b3 ;01b7
	ld hl,l1fe0h		; 21 e0 1f ;01b9
	call sub_set_vdp_write_addr		; cd 26 04 ;01bc
	ld hl,(0c512h)		; 2a 12 c5 ;01bf
	ld b,020h		; 06 20 ;01c2
	otir		; ed b3 ;01c4
	ld hl,03f00h		; 21 00 3f ;01c6
	call sub_set_vdp_write_addr		; cd 26 04 ;01c9
	ld hl,0c100h		; 21 00 c1 ;01cc
	ld b,040h		; 06 40 ;01cf
	otir		; ed b3 ;01d1
	ld hl,l3f80h		; 21 80 3f ;01d3
	call sub_set_vdp_write_addr		; cd 26 04 ;01d6
	ld hl,0c140h		; 21 40 c1 ;01d9
	ld b,080h		; 06 80 ;01dc
	otir		; ed b3 ;01de
	xor a			; af ;01e0
	ld (0c089h),a		; 32 89 c0 ;01e1
l01e4h:
	call sub_3543h		; cd 43 35 ;01e4
	ld c,00ch		; 0e 0c ;01e7
	call sub_0260h		; cd 60 02 ;01e9
	call sub_0268h		; cd 68 02 ;01ec
	.IFDEF _J
		call sub_35abh		; cd ab 35 ;01ef
	.ENDIF
	.IFDEF _UE
		call sub_35b0h		; cd b0 35 ;01ef
	.ENDIF
	call sub_3566h		; cd 66 35 ;01f2
	call sub_027bh		; cd 7b 02 ;01f5
	call sub_0795h		; cd 95 07 ;01f8
l01fbh:
	.IFDEF _J
		call sub_7144h		; cd 44 71 ;01fb
	.ENDIF
	.IFDEF _UE
		call sub_796fh		; cd 6f 79 ;01fb
	.ENDIF
l01feh:
	ld hl,0c001h		; 21 01 c0 ;01fe
l0201h:
	ld (hl),001h		; 36 01 ;0201
l0203h:
	pop hl			; e1 ;0203
	pop de			; d1 ;0204
l0205h:
	pop bc			; c1 ;0205
l0206h:
	pop af			; f1 ;0206
	exx			; d9 ;0207
	ex af,af'			; 08 ;0208
	pop hl			; e1 ;0209
	pop de			; d1 ;020a
	pop bc			; c1 ;020b
	pop iy		; fd e1 ;020c
	pop ix		; dd e1 ;020e
	pop af			; f1 ;0210
	ei			; fb ;0211
	ret			; c9 ;0212
l0213h:
	.IFDEF _J
		call sub_75b4h		; cd b4 75 ;0213
	.ENDIF
	.IFDEF _UE
		call sub_7dd7h		; cd d7 7d ;0213
	.ENDIF
	jp l00d6h		; c3 d6 00 ;0216
l0219h:
	ld c,018h		; 0e 18 ;0219
	call sub_0260h		; cd 60 02 ;021b
	call sub_0268h		; cd 68 02 ;021e
	jp l01feh		; c3 fe 01 ;0221
l0224h:
	ld c,018h		; 0e 18 ;0224
	call sub_0260h		; cd 60 02 ;0226
	call sub_0268h		; cd 68 02 ;0229
	jp l01fbh		; c3 fb 01 ;022c
l022fh:
	ld c,00dh		; 0e 0d ;022f
	call sub_0260h		; cd 60 02 ;0231
	jp l01e4h		; c3 e4 01 ;0234
l0237h:
	ld a,(0c011h)		; 3a 11 c0 ;0237
	or a			; b7 ;023a
	jr z,l025dh		; 28 20 ;023b
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
sub_0260h:
	ld b,01fh		; 06 1f ;0260
l0262h:
	djnz l0262h		; 10 fe ;0262
	dec c			; 0d ;0264
	jr nz,sub_0260h		; 20 f9 ;0265
	ret			; c9 ;0267
sub_0268h:
	ld a,(0c011h)		; 3a 11 c0 ;0268
	or a			; b7 ;026b
	ret z			; c8 ;026c
	ld a,010h		; 3e 10 ;026d
	out (0bfh),a		; d3 bf ;026f
	ld a,0c0h		; 3e c0 ;0271
	out (0bfh),a		; d3 bf ;0273
	ld a,(l0013h)		; 3a 13 00 ;0275
	out (0beh),a		; d3 be ;0278
	ret			; c9 ;027a
sub_027bh:
	ld a,(0c000h)		; 3a 00 c0 ;027b
	bit 2,a		; cb 57 ;027e
l0280h:
	ret z			; c8 ;0280
l0281h:
	bit 3,a		; cb 5f ;0281
	jp nz,l0369h		; c2 69 03 ;0283
	bit 7,a		; cb 7f ;0286
	jr z,l0296h		; 28 0c ;0288
	ld a,(0c1c2h)		; 3a c2 c1 ;028a
	ld (0c1c3h),a		; 32 c3 c1 ;028d
	call sub_get_joy_p2		; cd a3 02 ;0290
	ld (0c1c2h),a		; 32 c2 c1 ;0293
l0296h:
	ld a,(0c1c0h)		; 3a c0 c1 ;0296
l0299h:
	ld (0c1c1h),a		; 32 c1 c1 ;0299
	call sub_get_joy_p1		; cd 0f 03 ;029c
	ld (0c1c0h),a		; 32 c0 c1 ;029f
	ret			; c9 ;02a2
	.INCLUDE "io/get_joy_p2.asm"
	.INCLUDE "io/get_joy_p1.asm"
l0369h:
	ret			; c9 ;0369
l036ah:
	ld a,(0c004h)		; 3a 04 c0 ;036a
	or a			; b7 ;036d
	call nz,sub_037bh		; c4 7b 03 ;036e
	ld hl,0c001h		; 21 01 c0 ;0371
	ld a,(hl)			; 7e ;0374
	or a			; b7 ;0375
	jr z,l036ah		; 28 f2 ;0376
	ld (hl),000h		; 36 00 ;0378
	ret			; c9 ;037a
sub_037bh:
	.IFDEF _J
		call sub_75b4h		; cd b4 75 ;037b
	.ENDIF
	.IFDEF _UE
		call sub_7dd7h		; cd d7 7d ;037b
	.ENDIF
l037eh:
	ld a,(0c004h)		; 3a 04 c0 ;037e
l0381h:
	or a			; b7 ;0381
	jr nz,l037eh		; 20 fa ;0382
	ret			; c9 ;0384
	nop			; 00 ;0385
l0386h:
	ld de,l21e0h		; 11 e0 21 ;0386
	nop			; 00 ;0389
	jr c,l039dh		; 38 11 ;038a
	add a,l			; 85 ;038c
	inc bc			; 03 ;038d
	ld bc,l037eh+2		; 01 80 03 ;038e
	call sub_0450h		; cd 50 04 ;0391
	ld hl,03f00h		; 21 00 3f ;0394
	ld de,l0386h+1		; 11 87 03 ;0397
	ld bc,l0040h		; 01 40 00 ;039a
l039dh:
	jp l0440h		; c3 40 04 ;039d
sub_03a0h:
	ld a,0e0h		; 3e e0 ;03a0
	jr l03a6h		; 18 02 ;03a2
sub_03a4h:
	ld a,0a0h		; 3e a0 ;03a4
l03a6h:
	out (0bfh),a		; d3 bf ;03a6
	ld a,081h		; 3e 81 ;03a8
	out (0bfh),a		; d3 bf ;03aa
	ret			; c9 ;03ac
sub_03adh:
	ld hl,(0c08ah)		; 2a 8a c0 ;03ad
	dec hl			; 2b ;03b0
	ld (0c08ah),hl		; 22 8a c0 ;03b1
	ld a,l			; 7d ;03b4
	or h			; b4 ;03b5
	ret			; c9 ;03b6
sub_03b7h:
	ld b,(hl)			; 46 ;03b7
	inc hl			; 23 ;03b8
l03b9h:
	push bc			; c5 ;03b9
	ld e,(hl)			; 5e ;03ba
	inc hl			; 23 ;03bb
	ld d,(hl)			; 56 ;03bc
	inc hl			; 23 ;03bd
	ld c,(hl)			; 4e ;03be
	inc hl			; 23 ;03bf
	ld b,(hl)			; 46 ;03c0
	inc hl			; 23 ;03c1
	ex de,hl			; eb ;03c2
	call sub_cp_ram_vram		; cd 2f 04 ;03c3
	ex de,hl			; eb ;03c6
	add hl,bc			; 09 ;03c7
	pop bc			; c1 ;03c8
	djnz l03b9h		; 10 ee ;03c9
	ret			; c9 ;03cb
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
l03e0h:
	ld hl,l733ch		; 21 3c 73 ;03e0
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
sub_040bh:
	ld a,010h		; 3e 10 ;040b
l040dh:
	sla e		; cb 23 ;040d
	rl d		; cb 12 ;040f
	adc hl,hl		; ed 6a ;0411
	jr c,l041eh		; 38 09 ;0413
	sbc hl,bc		; ed 42 ;0415
	jr nc,l0421h		; 30 08 ;0417
	add hl,bc			; 09 ;0419
	dec a			; 3d ;041a
	jr nz,l040dh		; 20 f0 ;041b
	ret			; c9 ;041d
l041eh:
	or a			; b7 ;041e
	sbc hl,bc		; ed 42 ;041f
l0421h:
	inc e			; 1c ;0421
	dec a			; 3d ;0422
	jr nz,l040dh		; 20 e8 ;0423
	ret			; c9 ;0425
	.INCLUDE "graphics/set_vdp_write_addr.asm"
	.INCLUDE "graphics/cp_ram_vram.asm"
l0440h:
	call sub_set_vdp_write_addr		; cd 26 04 ;0440
	push bc			; c5 ;0443
	push de			; d5 ;0444
l0445h:
	ld a,(de)			; 1a ;0445
	out (0beh),a		; d3 be ;0446
	dec bc			; 0b ;0448
	ld a,c			; 79 ;0449
	or b			; b0 ;044a
	jr nz,l0445h		; 20 f8 ;044b
	pop de			; d1 ;044d
	pop bc			; c1 ;044e
	ret			; c9 ;044f
sub_0450h:
	call sub_set_vdp_write_addr		; cd 26 04 ;0450
	ex (sp),hl			; e3 ;0453
	ex (sp),hl			; e3 ;0454
l0455h:
	ld a,(de)			; 1a ;0455
	out (0beh),a		; d3 be ;0456
	push de			; d5 ;0458
	inc de			; 13 ;0459
	ld a,(de)			; 1a ;045a
	out (0beh),a		; d3 be ;045b
	pop de			; d1 ;045d
	dec bc			; 0b ;045e
	ld a,c			; 79 ;045f
	or b			; b0 ;0460
	jr nz,l0455h		; 20 f2 ;0461
	ret			; c9 ;0463
l0464h:
	push bc			; c5 ;0464
	ld b,000h		; 06 00 ;0465
	call sub_set_vdp_write_addr		; cd 26 04 ;0467
l046ah:
	ld a,(de)			; 1a ;046a
	out (0beh),a		; d3 be ;046b
	inc de			; 13 ;046d
	ex (sp),hl			; e3 ;046e
	ex (sp),hl			; e3 ;046f
	ld a,(de)			; 1a ;0470
	out (0beh),a		; d3 be ;0471
	inc de			; 13 ;0473
	dec bc			; 0b ;0474
	ld a,c			; 79 ;0475
	or b			; b0 ;0476
	jr nz,l046ah		; 20 f1 ;0477
	ld bc,l0040h		; 01 40 00 ;0479
	add hl,bc			; 09 ;047c
	pop bc			; c1 ;047d
	djnz l0464h		; 10 e4 ;047e
	ret			; c9 ;0480
sub_0481h:
	ld a,l			; 7d ;0481
	out (0bfh),a		; d3 bf ;0482
	ld a,0c0h		; 3e c0 ;0484
l0486h:
	or h			; b4 ;0486
	out (0bfh),a		; d3 bf ;0487
l0489h:
	ex (sp),hl			; e3 ;0489
	ex (sp),hl			; e3 ;048a
	ld a,(de)			; 1a ;048b
	out (0beh),a		; d3 be ;048c
	inc de			; 13 ;048e
	djnz l0489h		; 10 f8 ;048f
	ret			; c9 ;0491
sub_0492h:
	ld (0c088h),a		; 32 88 c0 ;0492
	call sub_set_vdp_write_addr		; cd 26 04 ;0495
	ex de,hl			; eb ;0498
l0499h:
	ld a,(hl)			; 7e ;0499
	exx			; d9 ;049a
	ld c,0beh		; 0e be ;049b
	ld b,004h		; 06 04 ;049d
	ld h,a			; 67 ;049f
	ld a,(0c088h)		; 3a 88 c0 ;04a0
l04a3h:
	rra			; 1f ;04a3
	ld d,h			; 54 ;04a4
l04a5h:
	jr c,l04a9h		; 38 02 ;04a5
	ld d,000h		; 16 00 ;04a7
l04a9h:
	out (c),d		; ed 51 ;04a9
	djnz l04a3h		; 10 f6 ;04ab
	exx			; d9 ;04ad
	inc hl			; 23 ;04ae
	dec bc			; 0b ;04af
	ld a,b			; 78 ;04b0
	or c			; b1 ;04b1
	jr nz,l0499h		; 20 e5 ;04b2
	ret			; c9 ;04b4
sub_04b5h:
	ld b,004h		; 06 04 ;04b5
l04b7h:
	push bc			; c5 ;04b7
	push de			; d5 ;04b8
	call sub_04c2h		; cd c2 04 ;04b9
	pop de			; d1 ;04bc
	inc de			; 13 ;04bd
sub_04beh:
	pop bc			; c1 ;04be
	djnz l04b7h		; 10 f6 ;04bf
	ret			; c9 ;04c1
sub_04c2h:
	ld a,(hl)			; 7e ;04c2
	inc hl			; 23 ;04c3
	or a			; b7 ;04c4
	ret z			; c8 ;04c5
	ld b,a			; 47 ;04c6
	and 080h		; e6 80 ;04c7
	ld c,a			; 4f ;04c9
	ld a,b			; 78 ;04ca
	and 07fh		; e6 7f ;04cb
	ld b,a			; 47 ;04cd
l04ceh:
	ld a,e			; 7b ;04ce
	out (0bfh),a		; d3 bf ;04cf
	ld a,d			; 7a ;04d1
	or 040h		; f6 40 ;04d2
	out (0bfh),a		; d3 bf ;04d4
	ex (sp),hl			; e3 ;04d6
	ex (sp),hl			; e3 ;04d7
	ld a,(hl)			; 7e ;04d8
	out (0beh),a		; d3 be ;04d9
	xor a			; af ;04db
	or c			; b1 ;04dc
	jr z,l04e0h		; 28 01 ;04dd
	inc hl			; 23 ;04df
l04e0h:
	inc de			; 13 ;04e0
	inc de			; 13 ;04e1
	inc de			; 13 ;04e2
	inc de			; 13 ;04e3
	djnz l04ceh		; 10 e8 ;04e4
	jp nz,sub_04c2h		; c2 c2 04 ;04e6
	inc hl			; 23 ;04e9
	jp sub_04c2h		; c3 c2 04 ;04ea
sub_04edh:
	ld b,004h		; 06 04 ;04ed
l04efh:
	push bc			; c5 ;04ef
l04f0h:
	push de			; d5 ;04f0
	call sub_04fah		; cd fa 04 ;04f1
	pop de			; d1 ;04f4
	inc de			; 13 ;04f5
	pop bc			; c1 ;04f6
	djnz l04efh		; 10 f6 ;04f7
	ret			; c9 ;04f9
sub_04fah:
	ld a,(hl)			; 7e ;04fa
	inc hl			; 23 ;04fb
	or a			; b7 ;04fc
	ret z			; c8 ;04fd
	ld b,a			; 47 ;04fe
	and 080h		; e6 80 ;04ff
	ld c,a			; 4f ;0501
l0502h:
	ld a,b			; 78 ;0502
	and 07fh		; e6 7f ;0503
	ld b,a			; 47 ;0505
l0506h:
	ld a,(hl)			; 7e ;0506
	ld (de),a			; 12 ;0507
l0508h:
	xor a			; af ;0508
	or c			; b1 ;0509
	jr z,l050dh		; 28 01 ;050a
l050ch:
	inc hl			; 23 ;050c
l050dh:
	inc de			; 13 ;050d
	inc de			; 13 ;050e
	inc de			; 13 ;050f
	inc de			; 13 ;0510
	djnz l0506h		; 10 f3 ;0511
	jp nz,sub_04fah		; c2 fa 04 ;0513
	inc hl			; 23 ;0516
	jp sub_04fah		; c3 fa 04 ;0517
l051ah:
	call sub_05cch		; cd cc 05 ;051a
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
	call sub_0547h		; cd 47 05 ;053b
l053eh:
	pop af			; f1 ;053e
	inc a			; 3c ;053f
	cp 006h		; fe 06 ;0540
	jr nz,l051eh		; 20 da ;0542
	jp l05a1h		; c3 a1 05 ;0544
sub_0547h:
	ld a,(0c080h)		; 3a 80 c0 ;0547
	ld e,a			; 5f ;054a
	ld d,000h		; 16 00 ;054b
	add a,(ix+005h)		; dd 86 05 ;054d
	cp 040h		; fe 40 ;0550
	ret nc			; d0 ;0552
	ld hl,0c100h		; 21 00 c1 ;0553
	add hl,de			; 19 ;0556
	push hl			; e5 ;0557
	ld hl,0c140h		; 21 40 c1 ;0558
	add hl,de			; 19 ;055b
	add hl,de			; 19 ;055c
	exx			; d9 ;055d
	pop hl			; e1 ;055e
	ld e,(ix+006h)		; dd 5e 06 ;055f
	ld d,(ix+007h)		; dd 56 07 ;0562
	ld b,(ix+005h)		; dd 46 05 ;0565
l0568h:
	ld a,(de)			; 1a ;0568
	add a,(ix+00bh)		; dd 86 0b ;0569
	cp 0d0h		; fe d0 ;056c
	jr nz,l0572h		; 20 02 ;056e
	ld a,0d8h		; 3e d8 ;0570
l0572h:
	ld (hl),a			; 77 ;0572
	inc de			; 13 ;0573
	ld a,(de)			; 1a ;0574
	ex af,af'			; 08 ;0575
	inc de			; 13 ;0576
	ld a,(de)			; 1a ;0577
	inc de			; 13 ;0578
	exx			; d9 ;0579
	ex af,af'			; 08 ;057a
	ld c,(ix+00dh)		; dd 4e 0d ;057b
	bit 7,a		; cb 7f ;057e
	jr z,l0588h		; 28 06 ;0580
	add a,c			; 81 ;0582
l0583h:
	ld (hl),a			; 77 ;0583
	jr c,l0590h		; 38 0a ;0584
l0586h:
	jr l058ch		; 18 04 ;0586
l0588h:
	add a,c			; 81 ;0588
	ld (hl),a			; 77 ;0589
	jr nc,l0590h		; 30 04 ;058a
l058ch:
	exx			; d9 ;058c
	ld (hl),0d8h		; 36 d8 ;058d
sub_058fh:
	exx			; d9 ;058f
l0590h:
	inc hl			; 23 ;0590
	ex af,af'			; 08 ;0591
	ld (hl),a			; 77 ;0592
	inc hl			; 23 ;0593
	exx			; d9 ;0594
	inc hl			; 23 ;0595
	djnz l0568h		; 10 d0 ;0596
	ld a,(ix+005h)		; dd 7e 05 ;0598
	ld hl,0c080h		; 21 80 c0 ;059b
	add a,(hl)			; 86 ;059e
	ld (hl),a			; 77 ;059f
	ret			; c9 ;05a0
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
sub_05cch:
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
l05fch:
	inc hl			; 23 ;05fc
	ld d,(hl)			; 56 ;05fd
	ld a,(de)			; 1a ;05fe
	cp c			; b9 ;05ff
sub_0600h:
	jr c,l061bh		; 38 19 ;0600
	ld c,a			; 4f ;0602
l0603h:
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
	inc d			; 14 ;0636
	jp nz,0c254h		; c2 54 c2 ;0637
	sub h			; 94 ;063a
	jp nz,0c2d4h		; c2 d4 c2 ;063b
	inc d			; 14 ;063e
	jp 0c354h		; c3 54 c3 ;063f
sub_0642h:
	ld a,(ix+004h)		; dd 7e 04 ;0642
	add a,a			; 87 ;0645
	ld e,a			; 5f ;0646
	ld d,000h		; 16 00 ;0647
	.IFDEF _J
		ld hl,l411fh		; 21 1f 41 ;0649
	.ENDIF
	.IFDEF _UE
		ld hl,l4124h		; 21 24 41 ;0649
	.ENDIF
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
l069dh:
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
	ld bc,l0206h		; 01 06 02 ;06bf
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
	ld bc,l0104h+2		; 01 06 01 ;06e1
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
l0702h:
	add a,040h		; c6 40 ;0702
l0704h:
	add a,060h		; c6 60 ;0704
	add a,080h		; c6 80 ;0706
	add a,0a0h		; c6 a0 ;0708
	add a,0c0h		; c6 c0 ;070a
	add a,0e0h		; c6 e0 ;070c
sub_070eh:
	add a,000h		; c6 00 ;070e
	rst 0			; c7 ;0710
l0711h:
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
	jp l0807h		; c3 07 08 ;072f
l0732h:
	call sub_0642h		; cd 42 06 ;0732
	ld de,0c086h		; 11 86 c0 ;0735
	ld a,(de)			; 1a ;0738
	ld c,a			; 4f ;0739
	ld b,000h		; 06 00 ;073a
	ld hl,0c1c4h		; 21 c4 c1 ;073c
l073fh:
	add hl,bc			; 09 ;073f
	ld a,(ix+001h)		; dd 7e 01 ;0740
sub_0743h:
	ld (hl),a			; 77 ;0743
	inc c			; 0c ;0744
	ld a,c			; 79 ;0745
	ld (de),a			; 12 ;0746
	sub 006h		; d6 06 ;0747
	jr nz,l0711h		; 20 c6 ;0749
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
l0781h:
	dec hl			; 2b ;0781
	inc e			; 1c ;0782
	ld a,(de)			; 1a ;0783
	rrca			; 0f ;0784
	dec e			; 1d ;0785
	rrca			; 0f ;0786
	ld c,l			; 4d ;0787
sub_0788h:
	rrca			; 0f ;0788
	and l			; a5 ;0789
	rrca			; 0f ;078a
	rra			; 1f ;078b
	djnz l073fh		; 10 b1 ;078c
	ld de,l1227h		; 11 27 12 ;078e
	ld l,h			; 6c ;0791
	ld (de),a			; 12 ;0792
	sbc a,012h		; de 12 ;0793
sub_0795h:
	ld a,(0c006h)		; 3a 06 c0 ;0795
	bit 7,a		; cb 7f ;0798
	ret z			; c8 ;079a
	and 00fh		; e6 0f ;079b
	cp 000h		; fe 00 ;079d
	call z,sub_0ef9h		; cc f9 0e ;079f
	call sub_get_joy_p2		; cd a3 02 ;07a2
	and 030h		; e6 30 ;07a5
	jr nz,l07b4h		; 20 0b ;07a7
	call sub_get_joy_p1		; cd 0f 03 ;07a9
	and 030h		; e6 30 ;07ac
	jr z,l07eah		; 28 3a ;07ae
	ld c,000h		; 0e 00 ;07b0
	jr l07b6h		; 18 02 ;07b2
l07b4h:
	ld c,0d0h		; 0e d0 ;07b4
l07b6h:
	ex af,af'			; 08 ;07b6
	ld hl,0c006h		; 21 06 c0 ;07b7
	ld a,04fh		; 3e 4f ;07ba
	and (hl)			; a6 ;07bc
	cp 041h		; fe 41 ;07bd
	jr nz,l07d6h		; 20 15 ;07bf
	ld hl,0c009h		; 21 09 c0 ;07c1
	ex af,af'			; 08 ;07c4
	cp (hl)			; be ;07c5
	ret z			; c8 ;07c6
	ld a,c			; 79 ;07c7
	ld (0c000h),a		; 32 00 c0 ;07c8
	ld a,000h		; 3e 00 ;07cb
	ld (0de00h),a		; 32 00 de ;07cd
	ld a,002h		; 3e 02 ;07d0
	ld (0c006h),a		; 32 06 c0 ;07d2
	ret			; c9 ;07d5
l07d6h:
	res 6,a		; cb b7 ;07d6
	cp 001h		; fe 01 ;07d8
	ret z			; c8 ;07da
	ld a,087h		; 3e 87 ;07db
	ld (0c006h),a		; 32 06 c0 ;07dd
	ex af,af'			; 08 ;07e0
	ld (0c009h),a		; 32 09 c0 ;07e1
	ld a,000h		; 3e 00 ;07e4
	ld (0de00h),a		; 32 00 de ;07e6
	ret			; c9 ;07e9
l07eah:
	ex af,af'			; 08 ;07ea
	ld a,(0c006h)		; 3a 06 c0 ;07eb
	and 00fh		; e6 0f ;07ee
	cp 001h		; fe 01 ;07f0
	ret nz			; c0 ;07f2
	ex af,af'			; 08 ;07f3
	ld (0c009h),a		; 32 09 c0 ;07f4
	ret			; c9 ;07f7
l07f8h:
	call l036ah		; cd 6a 03 ;07f8
	ld hl,l07f8h		; 21 f8 07 ;07fb
	push hl			; e5 ;07fe
	ld a,(0c006h)		; 3a 06 c0 ;07ff
	and 00fh		; e6 0f ;0802
l0804h:
	ld hl,l0811h		; 21 11 08 ;0804
l0807h:
	add a,a			; 87 ;0807
	ld e,a			; 5f ;0808
	ld d,000h		; 16 00 ;0809
	add hl,de			; 19 ;080b
	ld a,(hl)			; 7e ;080c
	inc hl			; 23 ;080d
	ld h,(hl)			; 66 ;080e
	ld l,a			; 6f ;080f
	jp (hl)			; e9 ;0810
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
	call sub_03a4h		; cd a4 03 ;082a
	call l0386h+2		; cd 88 03 ;082d
	ld hl,start		; 21 00 00 ;0830
	.IFDEF _J
		ld de,l3b03h		; 11 03 3b ;0833
	.ENDIF
	.IFDEF _UE
		ld de,l3b08h		; 11 08 3b ;0833
	.ENDIF
	ld b,008h		; 06 08 ;0836
	call sub_0481h		; cd 81 04 ;0838
	ld hl,l0010h		; 21 10 00 ;083b
	.IFDEF _J
		ld de,l3b0bh		; 11 0b 3b ;083e
	.ENDIF
	.IFDEF _UE
		ld de,l3b10h		; 11 10 3b ;083e
	.ENDIF
	ld b,00bh		; 06 0b ;0841
	call sub_0481h		; cd 81 04 ;0843
	ld de,02600h		; 11 00 26 ;0846
	.IFDEF _J
		ld hl,l3b16h		; 21 16 3b ;0849
	.ENDIF
	.IFDEF _UE
		ld hl,l3b1bh		; 21 1b 3b ;0849
	.ENDIF
	call sub_04b5h		; cd b5 04 ;084c
	ld hl,03854h		; 21 54 38 ;084f
	.IFDEF _J
		ld de,l3ef5h		; 11 f5 3e ;0852
	.ENDIF
	.IFDEF _UE
		ld de,l3efah		; 11 fa 3e ;0852
	.ENDIF
	ld b,005h		; 06 05 ;0855
	ld c,00ah		; 0e 0a ;0857
	call l0464h		; cd 64 04 ;0859
	ld de,l39c0h		; 11 c0 39 ;085c
	.IFDEF _J
		ld hl,03f59h		; 21 59 3f ;085f
	.ENDIF
	.IFDEF _UE
		ld hl,03f5eh		; 21 5e 3f ;085f
	.ENDIF
	call sub_04b5h		; cd b5 04 ;0862
	.IFDEF _J
		ld hl,0407ah		; 21 7a 40 ;0865
	.ENDIF
	.IFDEF _UE
		ld hl,0407fh		; 21 7f 40 ;0865
	.ENDIF
	call sub_03b7h		; cd b7 03 ;0868
	ld hl,l3d96h		; 21 96 3d ;086b
	.IFDEF _J
		ld de,l40ebh		; 11 eb 40 ;086e
	.ENDIF
	.IFDEF _UE
		ld de,l40f0h		; 11 f0 40 ;086e
	.ENDIF
	ld bc,l0016h		; 01 16 00 ;0871
	call sub_cp_ram_vram		; cd 2f 04 ;0874
	xor a			; af ;0877
	ld (0de04h),a		; 32 04 de ;0878
	ld (0c011h),a		; 32 11 c0 ;087b
	ld hl,0c006h		; 21 06 c0 ;087e
	set 6,(hl)		; cb f6 ;0881
	ld a,088h		; 3e 88 ;0883
	ld (0de00h),a		; 32 00 de ;0885
	call sub_03a0h		; cd a0 03 ;0888
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
	call sub_03a4h		; cd a4 03 ;08cb
	call l0386h+2		; cd 88 03 ;08ce
	ld de,start		; 11 00 00 ;08d1
	.IFDEF _J
		ld hl,l5ddeh		; 21 de 5d ;08d4
	.ENDIF
	.IFDEF _UE
		ld hl,l5de3h		; 21 e3 5d ;08d4
	.ENDIF
	call sub_04b5h		; cd b5 04 ;08d7
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
	ld hl,l3886h		; 21 86 38 ;08f3
	ld de,0cb04h		; 11 04 cb ;08f6
	ld bc,l0026h		; 01 26 00 ;08f9
	call sub_cp_ram_vram		; cd 2f 04 ;08fc
	ld hl,l394ah		; 21 4a 39 ;08ff
	ld de,0cb2ah		; 11 2a cb ;0902
	ld bc,l0020h		; 01 20 00 ;0905
	call sub_cp_ram_vram		; cd 2f 04 ;0908
	ld hl,l39e2h		; 21 e2 39 ;090b
	ld de,0cb4ah		; 11 4a cb ;090e
	ld bc,l0016h		; 01 16 00 ;0911
	call sub_cp_ram_vram		; cd 2f 04 ;0914
	ld hl,l3a4ah		; 21 4a 3a ;0917
	ld de,0cb60h		; 11 60 cb ;091a
	ld bc,l0020h		; 01 20 00 ;091d
	call sub_cp_ram_vram		; cd 2f 04 ;0920
	ld hl,l3ae2h		; 21 e2 3a ;0923
	ld de,0cb4ah		; 11 4a cb ;0926
	ld bc,l0016h		; 01 16 00 ;0929
	call sub_cp_ram_vram		; cd 2f 04 ;092c
	ld hl,l3b4ah		; 21 4a 3b ;092f
	ld de,0cb80h		; 11 80 cb ;0932
	ld bc,l001bh+1		; 01 1c 00 ;0935
	call sub_cp_ram_vram		; cd 2f 04 ;0938
	ld hl,l3be2h		; 21 e2 3b ;093b
	ld de,0cb4ah		; 11 4a cb ;093e
	ld bc,l0016h		; 01 16 00 ;0941
	call sub_cp_ram_vram		; cd 2f 04 ;0944
	ld hl,l3c86h		; 21 86 3c ;0947
	ld de,0cb9ch		; 11 9c cb ;094a
	ld bc,l002ah		; 01 2a 00 ;094d
	call sub_cp_ram_vram		; cd 2f 04 ;0950
	ld hl,03d10h		; 21 10 3d ;0953
	ld de,0cbc6h		; 11 c6 cb ;0956
	ld bc,l0022h		; 01 22 00 ;0959
	call sub_cp_ram_vram		; cd 2f 04 ;095c
	call sub_03a0h		; cd a0 03 ;095f
	xor a			; af ;0962
	ld (0c48ah),a		; 32 8a c4 ;0963
	ld (0c499h),a		; 32 99 c4 ;0966
	ld (0c49ah),a		; 32 9a c4 ;0969
sub_096ch:
	ei			; fb ;096c
	ret			; c9 ;096d
l096eh:
	call sub_0a10h		; cd 10 0a ;096e
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
l0a08h:
	srl a		; cb 3f ;0a08
	ld (0c4b3h),a		; 32 b3 c4 ;0a0a
	jp l0abdh		; c3 bd 0a ;0a0d
sub_0a10h:
	ld hl,0c140h		; 21 40 c1 ;0a10
	exx			; d9 ;0a13
	ld hl,0c100h		; 21 00 c1 ;0a14
	ld c,033h		; 0e 33 ;0a17
	ld b,020h		; 06 20 ;0a19
	exx			; d9 ;0a1b
	xor a			; af ;0a1c
	ld (0c492h),a		; 32 92 c4 ;0a1d
	ld b,003h		; 06 03 ;0a20
	ld de,0c047h		; 11 47 c0 ;0a22
l0a25h:
	push bc			; c5 ;0a25
	ld a,(0c491h)		; 3a 91 c4 ;0a26
	ld b,a			; 47 ;0a29
	ld a,(0c492h)		; 3a 92 c4 ;0a2a
	cp b			; b8 ;0a2d
	jr nz,l0a3ah		; 20 0a ;0a2e
	ld a,(0c496h)		; 3a 96 c4 ;0a30
	and 01fh		; e6 1f ;0a33
	cp 00fh		; fe 0f ;0a35
	jp c,l0a45h		; da 45 0a ;0a37
l0a3ah:
	ld c,028h		; 0e 28 ;0a3a
	ld b,084h		; 06 84 ;0a3c
	ld a,(de)			; 1a ;0a3e
	call sub_0aa5h		; cd a5 0a ;0a3f
	call sub_0a85h		; cd 85 0a ;0a42
l0a45h:
	exx			; d9 ;0a45
	ld a,c			; 79 ;0a46
	add a,b			; 80 ;0a47
	ld c,a			; 4f ;0a48
	exx			; d9 ;0a49
	inc de			; 13 ;0a4a
	ld a,(0c492h)		; 3a 92 c4 ;0a4b
	inc a			; 3c ;0a4e
	ld (0c492h),a		; 32 92 c4 ;0a4f
	pop bc			; c1 ;0a52
	djnz l0a25h		; 10 d0 ;0a53
	ld a,(0c491h)		; 3a 91 c4 ;0a55
	ld b,a			; 47 ;0a58
	ld a,(0c492h)		; 3a 92 c4 ;0a59
	cp b			; b8 ;0a5c
	jr nz,l0a69h		; 20 0a ;0a5d
	ld a,(0c496h)		; 3a 96 c4 ;0a5f
	and 01fh		; e6 1f ;0a62
	cp 00fh		; fe 0f ;0a64
	jp c,l0a78h		; da 78 0a ;0a66
l0a69h:
	ld c,020h		; 0e 20 ;0a69
	ld b,03ch		; 06 3c ;0a6b
	ld a,(de)			; 1a ;0a6d
	call sub_0aa5h		; cd a5 0a ;0a6e
	exx			; d9 ;0a71
	ld c,09bh		; 0e 9b ;0a72
	exx			; d9 ;0a74
	call sub_0a85h		; cd 85 0a ;0a75
l0a78h:
	ld a,0d0h		; 3e d0 ;0a78
	ld (hl),a			; 77 ;0a7a
	exx			; d9 ;0a7b
	ld (hl),a			; 77 ;0a7c
	exx			; d9 ;0a7d
	ld hl,0c089h		; 21 89 c0 ;0a7e
	set 7,(hl)		; cb fe ;0a81
	ei			; fb ;0a83
	ret			; c9 ;0a84
sub_0a85h:
	push bc			; c5 ;0a85
	push de			; d5 ;0a86
	ld b,004h		; 06 04 ;0a87
	.IFDEF _J
		ld de,l4896h		; 11 96 48 ;0a89
	.ENDIF
	.IFDEF _UE
		ld de,l489bh		; 11 9b 48 ;0a89
	.ENDIF
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
	call sub_03a4h		; cd a4 03 ;0abe
	ld hl,start		; 21 00 00 ;0ac1
	ld de,l0003h		; 11 03 00 ;0ac4
	ld b,020h		; 06 20 ;0ac7
	call sub_0481h		; cd 81 04 ;0ac9
	ld de,02600h		; 11 00 26 ;0acc
	.IFDEF _J
		ld hl,l4fc0h		; 21 c0 4f ;0acf
	.ENDIF
	.IFDEF _UE
		ld hl,l4fc5h		; 21 c5 4f ;0acf
	.ENDIF
	call sub_04b5h		; cd b5 04 ;0ad2
	ld de,03800h		; 11 00 38 ;0ad5
	.IFDEF _J
		ld hl,l564fh		; 21 4f 56 ;0ad8
	.ENDIF
	.IFDEF _UE
		ld hl,l5654h		; 21 54 56 ;0ad8
	.ENDIF
	call sub_04b5h		; cd b5 04 ;0adb
	ld de,start		; 11 00 00 ;0ade
	.IFDEF _J
		ld hl,l5ddeh		; 21 de 5d ;0ae1
	.ENDIF
	.IFDEF _UE
		ld hl,l5de3h		; 21 e3 5d ;0ae1
	.ENDIF
	call sub_04b5h		; cd b5 04 ;0ae4
	ld hl,0c100h		; 21 00 c1 ;0ae7
	ld de,0c101h		; 11 01 c1 ;0aea
	ld bc,l003fh		; 01 3f 00 ;0aed
	ld (hl),0d0h		; 36 d0 ;0af0
	ldir		; ed b0 ;0af2
	.IFDEF _J
		call sub_35c1h		; cd c1 35 ;0af4
	.ENDIF
	.IFDEF _UE
		call sub_35c6h		; cd c6 35 ;0af4
	.ENDIF
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
	call sub_03a0h		; cd a0 03 ;0b13
	ei			; fb ;0b16
	ret			; c9 ;0b17
	ld a,(0c518h)		; 3a 18 c5 ;0b18
	or a			; b7 ;0b1b
	jr nz,l0b28h		; 20 0a ;0b1c
l0b1eh:
	call sub_1787h		; cd 87 17 ;0b1e
	call 014b4h		; cd b4 14 ;0b21
	call l0711h		; cd 11 07 ;0b24
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
	ld bc,l017fh		; 01 7f 01 ;0b48
	ld (hl),000h		; 36 00 ;0b4b
	ldir		; ed b0 ;0b4d
	ld hl,start		; 21 00 00 ;0b4f
	ld (0c518h),hl		; 22 18 c5 ;0b52
	xor a			; af ;0b55
	ld (0c040h),a		; 32 40 c0 ;0b56
	ld (0c516h),a		; 32 16 c5 ;0b59
	ld (0c517h),a		; 32 17 c5 ;0b5c
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
	ld bc,l00ffh+1		; 01 00 01 ;0c40
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
	ld bc,l0102h		; 01 02 01 ;0c59
	inc bc			; 03 ;0c5c
	ld bc,l0102h		; 01 02 01 ;0c5d
	ld (bc),a			; 02 ;0c60
	inc bc			; 03 ;0c61
	ld (bc),a			; 02 ;0c62
	ld bc,l0102h		; 01 02 01 ;0c63
	inc bc			; 03 ;0c66
l0c67h:
	ld (bc),a			; 02 ;0c67
	ld bc,l0102h		; 01 02 01 ;0c68
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
l0d03h:
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
l0de1h:
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
l0e01h:
	add a,b			; 80 ;0e01
	ld b,b			; 40 ;0e02
l0e03h:
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
sub_0e8ch:
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
l0eb9h:
	ld a,(0c010h)		; 3a 10 c0 ;0eb9
	or a			; b7 ;0ebc
	jr nz,l0ef3h		; 20 34 ;0ebd
	di			; f3 ;0ebf
	call sub_03a4h		; cd a4 03 ;0ec0
	call l0386h+2		; cd 88 03 ;0ec3
	ld hl,l2c00h		; 21 00 2c ;0ec6
	ld de,0c76ch		; 11 6c c7 ;0ec9
	ld bc,000e0h		; 01 e0 00 ;0ecc
	ld a,001h		; 3e 01 ;0ecf
	call sub_0492h		; cd 92 04 ;0ed1
	ld hl,l3a8eh		; 21 8e 3a ;0ed4
	ld de,0c720h		; 11 20 c7 ;0ed7
	ld bc,l0213h		; 01 13 02 ;0eda
	call l0464h		; cd 64 04 ;0edd
	xor a			; af ;0ee0
l0ee1h:
	ld (0c011h),a		; 32 11 c0 ;0ee1
	call sub_03a0h		; cd a0 03 ;0ee4
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
l0f07h:
	ld de,l002dh		; 11 2d 00 ;0f07
	ld b,002h		; 06 02 ;0f0a
	call sub_0481h		; cd 81 04 ;0f0c
	ld hl,l0010h		; 21 10 00 ;0f0f
	ld de,l002dh		; 11 2d 00 ;0f12
	ld b,001h		; 06 01 ;0f15
	jp sub_0481h		; c3 81 04 ;0f17
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
	ld (0c506h),hl		; 22 06 c5 ;0f5a
	ld hl,l0004h		; 21 04 00 ;0f5d
	ld (0c502h),hl		; 22 02 c5 ;0f60
	ld hl,start		; 21 00 00 ;0f63
	ld (0c50eh),hl		; 22 0e c5 ;0f66
	ld (0c50ch),hl		; 22 0c c5 ;0f69
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
l0fb9h:
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
	call sub_040bh		; cd 0b 04 ;0fe6
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
	ld (0c50ch),de		; ed 53 0c c5 ;10a0
	ld (0c50eh),bc		; ed 43 0e c5 ;10a4
	pop hl			; e1 ;10a8
	ld (0c506h),hl		; 22 06 c5 ;10a9
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
	ld (0c50ch),de		; ed 53 0c c5 ;11e7
	ld (0c506h),bc		; ed 43 06 c5 ;11eb
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
l1203h:
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
l1232h:
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
	ld (0c50ch),de		; ed 53 0c c5 ;124d
	ld (0c506h),bc		; ed 43 06 c5 ;1251
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
	ld (0c50ch),de		; ed 53 0c c5 ;12ad
	ld (0c506h),bc		; ed 43 06 c5 ;12b1
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
	ld (0c50ch),de		; ed 53 0c c5 ;1325
	ld (0c506h),bc		; ed 43 06 c5 ;1329
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
	ld bc,l0102h		; 01 02 01 ;138b
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
	ld (0c50eh),de		; ed 53 0e c5 ;13e1
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
	ld bc,l00cch		; 01 cc 00 ;141b
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
	call m,sub_51feh		; fc fe 51 ;142e
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
l1448h:
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
	ld bc,l00abh		; 01 ab 00 ;1475
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
	ld bc,l00e1h		; 01 e1 00 ;14a3
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
	call sub_159ch		; cd 9c 15 ;14df
	ld hl,0c517h		; 21 17 c5 ;14e2
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
l1500h:
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
	call sub_16afh		; cd af 16 ;1515
	call sub_1878h		; cd 78 18 ;1518
	call sub_0e7fh		; cd 7f 0e ;151b
	ld de,(0c50eh)		; ed 5b 0e c5 ;151e
	ld hl,(0c50ah)		; 2a 0a c5 ;1522
	add hl,de			; 19 ;1525
	ld (0c50ah),hl		; 22 0a c5 ;1526
	ld de,(0c50ch)		; ed 5b 0c c5 ;1529
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
sub_159ch:
	ld de,(0c506h)		; ed 5b 06 c5 ;159c
	ld bc,000a0h		; 01 a0 00 ;15a0
	call sub_mul_de_bc		; cd f7 03 ;15a3
	ld d,e			; 53 ;15a6
	ld e,h			; 5c ;15a7
	xor a			; af ;15a8
	ld hl,start		; 21 00 00 ;15a9
	sbc hl,de		; ed 52 ;15ac
	ld (0c506h),hl		; 22 06 c5 ;15ae
	ld a,(0c517h)		; 3a 17 c5 ;15b1
	cp 002h		; fe 02 ;15b4
	ret nc			; d0 ;15b6
	ld de,(0c50eh)		; ed 5b 0e c5 ;15b7
	bit 7,d		; cb 7a ;15bb
	jr z,l15c6h		; 28 07 ;15bd
	xor a			; af ;15bf
	ld hl,start		; 21 00 00 ;15c0
	sbc hl,de		; ed 52 ;15c3
	ex de,hl			; eb ;15c5
l15c6h:
	ld bc,l007fh+1		; 01 80 00 ;15c6
	call sub_mul_de_bc		; cd f7 03 ;15c9
	ld d,e			; 53 ;15cc
	ld e,h			; 5c ;15cd
	ld a,(0c50fh)		; 3a 0f c5 ;15ce
	bit 7,a		; cb 7f ;15d1
	jr z,l15dch		; 28 07 ;15d3
	xor a			; af ;15d5
	ld hl,start		; 21 00 00 ;15d6
	sbc hl,de		; ed 52 ;15d9
	ex de,hl			; eb ;15db
l15dch:
	ld (0c50eh),de		; ed 53 0e c5 ;15dc
	ld de,(0c50ch)		; ed 5b 0c c5 ;15e0
	bit 7,d		; cb 7a ;15e4
	jr z,l15efh		; 28 07 ;15e6
	xor a			; af ;15e8
	ld hl,start		; 21 00 00 ;15e9
	sbc hl,de		; ed 52 ;15ec
	ex de,hl			; eb ;15ee
l15efh:
	ld bc,l007fh+1		; 01 80 00 ;15ef
	call sub_mul_de_bc		; cd f7 03 ;15f2
	ld d,e			; 53 ;15f5
	ld e,h			; 5c ;15f6
	ld a,(0c50dh)		; 3a 0d c5 ;15f7
	bit 7,a		; cb 7f ;15fa
	jr z,l1605h		; 28 07 ;15fc
	xor a			; af ;15fe
	ld hl,start		; 21 00 00 ;15ff
	sbc hl,de		; ed 52 ;1602
	ex de,hl			; eb ;1604
l1605h:
	ld (0c50ch),de		; ed 53 0c c5 ;1605
	ret			; c9 ;1609
sub_160ah:
	ld a,e			; 7b ;160a
l160bh:
	sub 018h		; d6 18 ;160b
	jr nc,l1611h		; 30 02 ;160d
	ld a,000h		; 3e 00 ;160f
l1611h:
	ld e,a			; 5f ;1611
	ld d,000h		; 16 00 ;1612
	ld hl,0d0e8h		; 21 e8 d0 ;1614
	add hl,de			; 19 ;1617
	ld a,(hl)			; 7e ;1618
	ld (0c51ah),a		; 32 1a c5 ;1619
	ld a,(0c509h)		; 3a 09 c5 ;161c
	sub (hl)			; 96 ;161f
	jr nc,l1624h		; 30 02 ;1620
	neg		; ed 44 ;1622
l1624h:
	ld d,a			; 57 ;1624
	ld e,000h		; 1e 00 ;1625
	ld bc,(0c50ch)		; ed 4b 0c c5 ;1627
	bit 7,b		; cb 78 ;162b
	jr z,l1637h		; 28 08 ;162d
	xor a			; af ;162f
	ld hl,start		; 21 00 00 ;1630
	sbc hl,bc		; ed 42 ;1633
	push hl			; e5 ;1635
	pop bc			; c1 ;1636
l1637h:
	ld hl,start		; 21 00 00 ;1637
	call sub_040bh		; cd 0b 04 ;163a
	ld b,e			; 43 ;163d
	ld c,h			; 4c ;163e
	ld de,(0c50eh)		; ed 5b 0e c5 ;163f
	push de			; d5 ;1643
	bit 7,d		; cb 7a ;1644
	jr z,l164fh		; 28 07 ;1646
	xor a			; af ;1648
	ld hl,start		; 21 00 00 ;1649
	sbc hl,de		; ed 52 ;164c
	ex de,hl			; eb ;164e
l164fh:
	call sub_mul_de_bc		; cd f7 03 ;164f
	ld d,e			; 53 ;1652
	ld e,h			; 5c ;1653
	pop hl			; e1 ;1654
	bit 7,h		; cb 7c ;1655
	jr z,l1660h		; 28 07 ;1657
	xor a			; af ;1659
	ld hl,start		; 21 00 00 ;165a
	sbc hl,de		; ed 52 ;165d
	ex de,hl			; eb ;165f
l1660h:
	ld hl,(0c50ah)		; 2a 0a c5 ;1660
	add hl,de			; 19 ;1663
	push hl			; e5 ;1664
	ld a,(0c51ah)		; 3a 1a c5 ;1665
	ld e,a			; 5f ;1668
	ld d,000h		; 16 00 ;1669
	ld hl,0cbe8h		; 21 e8 cb ;166b
	add hl,de			; 19 ;166e
	ld a,(hl)			; 7e ;166f
	ld l,a			; 6f ;1670
	ld h,000h		; 26 00 ;1671
	add hl,hl			; 29 ;1673
	ld de,0cce8h		; 11 e8 cc ;1674
	add hl,de			; 19 ;1677
	ld e,(hl)			; 5e ;1678
	inc hl			; 23 ;1679
	ld d,(hl)			; 56 ;167a
	exx			; d9 ;167b
	pop de			; d1 ;167c
	ld hl,08000h		; 21 00 80 ;167d
	xor a			; af ;1680
	sbc hl,de		; ed 52 ;1681
	push af			; f5 ;1683
	jr nc,l168dh		; 30 07 ;1684
	xor a			; af ;1686
	ex de,hl			; eb ;1687
	ld hl,start		; 21 00 00 ;1688
	sbc hl,de		; ed 52 ;168b
l168dh:
	push hl			; e5 ;168d
	exx			; d9 ;168e
	pop bc			; c1 ;168f
	call sub_mul_de_bc		; cd f7 03 ;1690
	pop af			; f1 ;1693
	ld d,e			; 53 ;1694
	ld e,h			; 5c ;1695
	ld hl,08000h		; 21 00 80 ;1696
	jr nc,l16a2h		; 30 07 ;1699
	xor a			; af ;169b
	adc hl,de		; ed 5a ;169c
	jr c,l16a9h		; 38 09 ;169e
	jr l16a7h		; 18 05 ;16a0
l16a2h:
	xor a			; af ;16a2
	sbc hl,de		; ed 52 ;16a3
	jr c,l16ach		; 38 05 ;16a5
l16a7h:
	ld a,h			; 7c ;16a7
	ret			; c9 ;16a8
l16a9h:
	ld a,0ffh		; 3e ff ;16a9
	ret			; c9 ;16ab
l16ach:
	ld a,000h		; 3e 00 ;16ac
	ret			; c9 ;16ae
sub_16afh:
	xor a			; af ;16af
	ld de,(0c50eh)		; ed 5b 0e c5 ;16b0
	ld hl,(0c50ah)		; 2a 0a c5 ;16b4
	adc hl,de		; ed 5a ;16b7
	bit 7,d		; cb 7a ;16b9
	jr nz,l16c1h		; 20 04 ;16bb
	jr nc,l16cch		; 30 0d ;16bd
	jr l16c3h		; 18 02 ;16bf
l16c1h:
	jr c,l16cch		; 38 09 ;16c1
l16c3h:
	xor a			; af ;16c3
	ld hl,start		; 21 00 00 ;16c4
	sbc hl,de		; ed 52 ;16c7
	ld (0c50eh),hl		; 22 0e c5 ;16c9
l16cch:
	xor a			; af ;16cc
	ld de,(0c50ch)		; ed 5b 0c c5 ;16cd
	ld hl,(0c508h)		; 2a 08 c5 ;16d1
	adc hl,de		; ed 5a ;16d4
	bit 7,d		; cb 7a ;16d6
	jr nz,l16deh		; 20 04 ;16d8
	jr nc,l16ech		; 30 10 ;16da
	jr l1746h		; 18 68 ;16dc
l16deh:
	jr nc,l1741h		; 30 61 ;16de
	ld a,(0c509h)		; 3a 09 c5 ;16e0
	cp 080h		; fe 80 ;16e3
	ret c			; d8 ;16e5
	ld a,h			; 7c ;16e6
	cp 081h		; fe 81 ;16e7
	ret nc			; d0 ;16e9
	jr l16f6h		; 18 0a ;16ea
l16ech:
	ld a,(0c509h)		; 3a 09 c5 ;16ec
	cp 081h		; fe 81 ;16ef
	ret nc			; d0 ;16f1
	ld a,h			; 7c ;16f2
	cp 080h		; fe 80 ;16f3
	ret c			; d8 ;16f5
l16f6h:
	ld a,(0c50bh)		; 3a 0b c5 ;16f6
	cp 038h		; fe 38 ;16f9
	ret c			; d8 ;16fb
	cp 0c9h		; fe c9 ;16fc
	ret nc			; d0 ;16fe
	ld a,(0c516h)		; 3a 16 c5 ;16ff
	bit 7,a		; cb 7f ;1702
	ret nz			; c0 ;1704
	ld a,(0c501h)		; 3a 01 c5 ;1705
	cp 010h		; fe 10 ;1708
	ret nc			; d0 ;170a
	ld hl,08000h		; 21 00 80 ;170b
	ld (0c508h),hl		; 22 08 c5 ;170e
	ld hl,0c516h		; 21 16 c5 ;1711
l1714h:
	set 7,(hl)		; cb fe ;1714
	set 6,(hl)		; cb f6 ;1716
	ld a,08eh		; 3e 8e ;1718
	ld (0de00h),a		; 32 00 de ;171a
	ld a,(0c519h)		; 3a 19 c5 ;171d
	or a			; b7 ;1720
	jr nz,l1728h		; 20 05 ;1721
	ld a,001h		; 3e 01 ;1723
	ld (0c518h),a		; 32 18 c5 ;1725
l1728h:
	ld hl,(0c506h)		; 2a 06 c5 ;1728
	push hl			; e5 ;172b
	call sub_159ch		; cd 9c 15 ;172c
	pop de			; d1 ;172f
	bit 7,d		; cb 7a ;1730
	jr z,l173bh		; 28 07 ;1732
	ld hl,start		; 21 00 00 ;1734
	xor a			; af ;1737
	sbc hl,de		; ed 52 ;1738
	ex de,hl			; eb ;173a
l173bh:
	ld (0c506h),de		; ed 53 06 c5 ;173b
	jr l1756h		; 18 15 ;173f
l1741h:
	ld a,089h		; 3e 89 ;1741
	ld (0de00h),a		; 32 00 de ;1743
l1746h:
	ld a,(0c519h)		; 3a 19 c5 ;1746
	or a			; b7 ;1749
	jr nz,l1756h		; 20 0a ;174a
	ld a,002h		; 3e 02 ;174c
	ld (0c518h),a		; 32 18 c5 ;174e
	ld a,001h		; 3e 01 ;1751
	ld (0c519h),a		; 32 19 c5 ;1753
l1756h:
	ld hl,0c000h		; 21 00 c0 ;1756
	res 0,(hl)		; cb 86 ;1759
	xor a			; af ;175b
	ld hl,start		; 21 00 00 ;175c
	ld de,(0c50ch)		; ed 5b 0c c5 ;175f
	sbc hl,de		; ed 52 ;1763
	ld (0c50ch),hl		; 22 0c c5 ;1765
	ret			; c9 ;1768
l1769h:
	nop			; 00 ;1769
	nop			; 00 ;176a
	inc b			; 04 ;176b
	inc bc			; 03 ;176c
l176dh:
	nop			; 00 ;176d
	ld bc,l0506h		; 01 06 05 ;176e
l1771h:
	nop			; 00 ;1771
	ld (bc),a			; 02 ;1772
l1773h:
	ex af,af'			; 08 ;1773
	rlca			; 07 ;1774
l1775h:
	nop			; 00 ;1775
	nop			; 00 ;1776
	ld bc,l0201h+1		; 01 02 02 ;1777
	ld bc,l0804h		; 01 04 08 ;177a
	ex af,af'			; 08 ;177d
	inc b			; 04 ;177e
	dec b			; 05 ;177f
	ld a,(bc)			; 0a ;1780
	add hl,bc			; 09 ;1781
	ld b,006h		; 06 06 ;1782
	add hl,bc			; 09 ;1784
	ld a,(bc)			; 0a ;1785
	dec b			; 05 ;1786
sub_1787h:
	ld a,(0c000h)		; 3a 00 c0 ;1787
	rlca			; 07 ;178a
	ret nc			; d0 ;178b
	ld ix,0c200h		; dd 21 00 c2 ;178c
	ld iy,0c280h		; fd 21 80 c2 ;1790
	call sub_179fh		; cd 9f 17 ;1794
	ld ix,0c240h		; dd 21 40 c2 ;1797
	ld iy,0c2c0h		; fd 21 c0 c2 ;179b
sub_179fh:
	ld e,000h		; 1e 00 ;179f
	ld a,(ix+014h)		; dd 7e 14 ;17a1
	sub (iy+014h)		; fd 96 14 ;17a4
	jr nc,l17abh		; 30 02 ;17a7
	neg		; ed 44 ;17a9
l17abh:
	cp 004h		; fe 04 ;17ab
	jr nc,l17d6h		; 30 27 ;17ad
	ld hl,l17e7h		; 21 e7 17 ;17af
	call sub_17f1h		; cd f1 17 ;17b2
	ld (0c082h),bc		; ed 43 82 c0 ;17b5
	ld (0c084h),de		; ed 53 84 c0 ;17b9
	push ix		; dd e5 ;17bd
	push iy		; fd e5 ;17bf
	pop ix		; dd e1 ;17c1
	ld hl,l17e7h		; 21 e7 17 ;17c3
	call sub_17f1h		; cd f1 17 ;17c6
	pop ix		; dd e1 ;17c9
	ld (0c08eh),bc		; ed 43 8e c0 ;17cb
	ld (0c090h),de		; ed 53 90 c0 ;17cf
	call sub_1806h		; cd 06 18 ;17d3
l17d6h:
	ld d,000h		; 16 00 ;17d6
	ld hl,l1775h		; 21 75 17 ;17d8
	add hl,de			; 19 ;17db
	add hl,de			; 19 ;17dc
	ld c,(hl)			; 4e ;17dd
	inc hl			; 23 ;17de
	ld b,(hl)			; 46 ;17df
	ld (ix+02dh),c		; dd 71 2d ;17e0
	ld (iy+02dh),b		; fd 70 2d ;17e3
	ret			; c9 ;17e6
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
sub_1806h:
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
sub_1858h:
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
	call sub_18b5h		; cd b5 18 ;18ad
	ret c			; d8 ;18b0
l18b1h:
	push iy		; fd e5 ;18b1
	pop ix		; dd e1 ;18b3
sub_18b5h:
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
	call sub_1806h		; cd 06 18 ;18d4
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
	ld (0c517h),a		; 32 17 c5 ;1959
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
	ld (0c50ch),hl		; 22 0c c5 ;19c1
	ld (0c50eh),hl		; 22 0e c5 ;19c4
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
	ld bc,l0203h		; 01 03 02 ;1a41
	nop			; 00 ;1a44
	inc bc			; 03 ;1a45
	ld bc,l0201h		; 01 01 02 ;1a46
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
	ld hl,l0096h		; 21 96 00 ;1aad
	ld (ix+029h),l		; dd 75 29 ;1ab0
	ld (ix+02ah),h		; dd 74 2a ;1ab3
	ld a,001h		; 3e 01 ;1ab6
	ld (0c400h),a		; 32 00 c4 ;1ab8
l1abbh:
	bit 0,(ix+001h)		; dd cb 01 46 ;1abb
	call nz,sub_1e25h		; c4 25 1e ;1abf
	ld (ix+020h),000h		; dd 36 20 00 ;1ac2
	call sub_2a69h		; cd 69 2a ;1ac6
	ld a,(ix+023h)		; dd 7e 23 ;1ac9
	and a			; a7 ;1acc
	jr z,l1ad7h		; 28 08 ;1acd
	ld (ix+022h),006h		; dd 36 22 06 ;1acf
	ld (ix+023h),0ffh		; dd 36 23 ff ;1ad3
l1ad7h:
	call sub_1b9fh		; cd 9f 1b ;1ad7
	jp nz,l26a1h		; c2 a1 26 ;1ada
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
	call sub_2a69h		; cd 69 2a ;1b3f
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
	call sub_2a69h		; cd 69 2a ;1b7e
	call sub_2c40h		; cd 40 2c ;1b81
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
l1c06h:
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
	ld bc,l0104h		; 01 04 01 ;1c15
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
	call sub_2e98h		; cd 98 2e ;1c39
	call sub_1e25h		; cd 25 1e ;1c3c
	ld a,(ix+025h)		; dd 7e 25 ;1c3f
	and 00fh		; e6 0f ;1c42
	ld hl,l1c4ah		; 21 4a 1c ;1c44
	jp l0807h		; c3 07 08 ;1c47
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
	call sub_2bbfh		; cd bf 2b ;1c86
	ld a,(ix+016h)		; dd 7e 16 ;1c89
	ld (ix+017h),a		; dd 77 17 ;1c8c
	ld (ix+020h),a		; dd 77 20 ;1c8f
l1c92h:
	jp sub_2a69h		; c3 69 2a ;1c92
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
	call sub_2bbfh		; cd bf 2b ;1cb9
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
	call sub_2bbfh		; cd bf 2b ;1ccd
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
	call l26a1h		; cd a1 26 ;1cea
	jp sub_2a69h		; c3 69 2a ;1ced
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
	call sub_2bbfh		; cd bf 2b ;1d0b
	ld a,(ix+016h)		; dd 7e 16 ;1d0e
	ld (ix+017h),a		; dd 77 17 ;1d11
	ld (ix+020h),a		; dd 77 20 ;1d14
l1d17h:
	call l26a1h		; cd a1 26 ;1d17
	call sub_2a69h		; cd 69 2a ;1d1a
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
	call sub_2bbfh		; cd bf 2b ;1d3b
	ld a,(ix+016h)		; dd 7e 16 ;1d3e
	ld (ix+017h),a		; dd 77 17 ;1d41
	ld (ix+020h),a		; dd 77 20 ;1d44
l1d47h:
	call l26a1h		; cd a1 26 ;1d47
l1d4ah:
	call sub_2a69h		; cd 69 2a ;1d4a
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
	call sub_2bbfh		; cd bf 2b ;1d62
	ld a,(ix+016h)		; dd 7e 16 ;1d65
	ld (ix+020h),a		; dd 77 20 ;1d68
	ld (ix+022h),00bh		; dd 36 22 0b ;1d6b
	ld (ix+023h),0ffh		; dd 36 23 ff ;1d6f
l1d73h:
	call l26a1h		; cd a1 26 ;1d73
	call sub_2a69h		; cd 69 2a ;1d76
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
	call sub_2c13h		; cd 13 2c ;1d95
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
	call l26a1h		; cd a1 26 ;1dff
	call sub_2c40h		; cd 40 2c ;1e02
	ld a,(ix+023h)		; dd 7e 23 ;1e05
	and a			; a7 ;1e08
	jr z,l1e0fh		; 28 04 ;1e09
	call sub_2a69h		; cd 69 2a ;1e0b
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
	jp l0807h		; c3 07 08 ;1e41
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
	call sub_160ah		; cd 0a 16 ;1ed0
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
l1f02h:
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
	call sub_160ah		; cd 0a 16 ;1fc2
	ld l,000h		; 2e 00 ;1fc5
	ld h,a			; 67 ;1fc7
	ld de,l4c00h		; 11 00 4c ;1fc8
	call sub_221eh		; cd 1e 22 ;1fcb
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
	call sub_160ah		; cd 0a 16 ;1fe2
	ld l,000h		; 2e 00 ;1fe5
	ld h,a			; 67 ;1fe7
	ld de,08000h		; 11 00 80 ;1fe8
	call sub_2298h		; cd 98 22 ;1feb
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
	call sub_160ah		; cd 0a 16 ;201b
	ld l,000h		; 2e 00 ;201e
	ld h,a			; 67 ;2020
	ld de,02800h		; 11 00 28 ;2021
	call sub_221eh		; cd 1e 22 ;2024
	ld (ix+015h),a		; dd 77 15 ;2027
	call sub_2320h		; cd 20 23 ;202a
	ld a,(ix+018h)		; dd 7e 18 ;202d
	ld (ix+028h),a		; dd 77 28 ;2030
	inc (ix+031h)		; dd 34 31 ;2033
	ret			; c9 ;2036
l2037h:
	ld e,0b0h		; 1e b0 ;2037
	call sub_160ah		; cd 0a 16 ;2039
	ld l,000h		; 2e 00 ;203c
	ld h,a			; 67 ;203e
	ld de,0b000h		; 11 00 b0 ;203f
	call sub_2298h		; cd 98 22 ;2042
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
	call sub_160ah		; cd 0a 16 ;20e7
	ld l,000h		; 2e 00 ;20ea
	ld h,a			; 67 ;20ec
	ld de,02800h		; 11 00 28 ;20ed
	call sub_221eh		; cd 1e 22 ;20f0
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
	call sub_160ah		; cd 0a 16 ;2108
	ld l,000h		; 2e 00 ;210b
	ld h,a			; 67 ;210d
	ld de,000b0h		; 11 b0 00 ;210e
	call sub_2298h		; cd 98 22 ;2111
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
l2203h:
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
sub_221eh:
	ld a,(0c518h)		; 3a 18 c5 ;221e
	and a			; a7 ;2221
	ld a,000h		; 3e 00 ;2222
	ret nz			; c0 ;2224
	push hl			; e5 ;2225
	exx			; d9 ;2226
	pop hl			; e1 ;2227
	ld e,(ix+00ch)		; dd 5e 0c ;2228
	ld d,(ix+00dh)		; dd 56 0d ;222b
	xor a			; af ;222e
	sbc hl,de		; ed 52 ;222f
	ld b,008h		; 06 08 ;2231
	jr nc,l223ah		; 30 05 ;2233
	call sub_neg_hl		; cd 19 23 ;2235
	ld b,004h		; 06 04 ;2238
l223ah:
	ld a,(ix+02eh)		; dd 7e 2e ;223a
	ld de,00500h		; 11 00 05 ;223d
	cp 006h		; fe 06 ;2240
	jr nc,l2247h		; 30 03 ;2242
	ld de,00c00h		; 11 00 0c ;2244
l2247h:
	xor a			; af ;2247
	ld c,h			; 4c ;2248
	sbc hl,de		; ed 52 ;2249
	jr z,l226ah		; 28 1d ;224b
	jr nc,l226ch		; 30 1d ;224d
	call sub_neg_hl		; cd 19 23 ;224f
	ld a,h			; 7c ;2252
	cp 003h		; fe 03 ;2253
	jr c,l226ah		; 38 13 ;2255
	ld a,c			; 79 ;2257
	bit 2,b		; cb 50 ;2258
	jr nz,l225fh		; 20 03 ;225a
	neg		; ed 44 ;225c
	ld d,a			; 57 ;225e
l225fh:
	exx			; d9 ;225f
	push hl			; e5 ;2260
	exx			; d9 ;2261
	pop hl			; e1 ;2262
	add hl,de			; 19 ;2263
	ld (ix+00ch),l		; dd 75 0c ;2264
	ld (ix+00dh),h		; dd 74 0d ;2267
l226ah:
	ld b,000h		; 06 00 ;226a
l226ch:
	push bc			; c5 ;226c
	exx			; d9 ;226d
	pop bc			; c1 ;226e
	ld l,(ix+00ah)		; dd 6e 0a ;226f
	ld h,(ix+00bh)		; dd 66 0b ;2272
	ex de,hl			; eb ;2275
	xor a			; af ;2276
	sbc hl,de		; ed 52 ;2277
	ld c,002h		; 0e 02 ;2279
	jr nc,l2282h		; 30 05 ;227b
	ld c,001h		; 0e 01 ;227d
	call sub_neg_hl		; cd 19 23 ;227f
l2282h:
	ld de,00300h		; 11 00 03 ;2282
	xor a			; af ;2285
	sbc hl,de		; ed 52 ;2286
	jr nc,l228ch		; 30 02 ;2288
	ld c,000h		; 0e 00 ;228a
l228ch:
	xor a			; af ;228c
	or c			; b1 ;228d
	or b			; b0 ;228e
	ret			; c9 ;228f
l2290h:
	call pe,0f6eeh		; ec ee f6 ;2290
	cp 002h		; fe 02 ;2293
	ld a,(bc)			; 0a ;2295
	ld (de),a			; 12 ;2296
	inc d			; 14 ;2297
sub_2298h:
	ld a,(0c518h)		; 3a 18 c5 ;2298
	and a			; a7 ;229b
	ld a,000h		; 3e 00 ;229c
	ret nz			; c0 ;229e
	push hl			; e5 ;229f
	exx			; d9 ;22a0
	ld e,(ix+02eh)		; dd 5e 2e ;22a1
	ld d,000h		; 16 00 ;22a4
	ld hl,l2290h		; 21 90 22 ;22a6
	add hl,de			; 19 ;22a9
	ld a,(hl)			; 7e ;22aa
	pop hl			; e1 ;22ab
	ld e,(ix+00ch)		; dd 5e 0c ;22ac
	ld d,(ix+00dh)		; dd 56 0d ;22af
	push hl			; e5 ;22b2
	xor a			; af ;22b3
	sbc hl,de		; ed 52 ;22b4
	ld c,h			; 4c ;22b6
	pop hl			; e1 ;22b7
	add a,d			; 82 ;22b8
	ld d,a			; 57 ;22b9
	xor a			; af ;22ba
	sbc hl,de		; ed 52 ;22bb
	ld b,008h		; 06 08 ;22bd
	jr nc,l22c6h		; 30 05 ;22bf
	call sub_neg_hl		; cd 19 23 ;22c1
	ld b,004h		; 06 04 ;22c4
l22c6h:
	ld a,b			; 78 ;22c6
	ld de,l1000h		; 11 00 10 ;22c7
	cp 004h		; fe 04 ;22ca
	jr z,l22d1h		; 28 03 ;22cc
	ld de,l1800h		; 11 00 18 ;22ce
l22d1h:
	xor a			; af ;22d1
	sbc hl,de		; ed 52 ;22d2
	jr z,l22f3h		; 28 1d ;22d4
	jr nc,l22f5h		; 30 1d ;22d6
	call sub_neg_hl		; cd 19 23 ;22d8
	ld a,h			; 7c ;22db
	cp 004h		; fe 04 ;22dc
	jr c,l22f3h		; 38 13 ;22de
	ld a,c			; 79 ;22e0
	bit 2,b		; cb 50 ;22e1
	jr nz,l22e8h		; 20 03 ;22e3
	neg		; ed 44 ;22e5
	ld d,a			; 57 ;22e7
l22e8h:
	exx			; d9 ;22e8
	push hl			; e5 ;22e9
	exx			; d9 ;22ea
	pop hl			; e1 ;22eb
	add hl,de			; 19 ;22ec
	ld (ix+00ch),l		; dd 75 0c ;22ed
	ld (ix+00dh),h		; dd 74 0d ;22f0
l22f3h:
	ld b,000h		; 06 00 ;22f3
l22f5h:
	push bc			; c5 ;22f5
	exx			; d9 ;22f6
	pop bc			; c1 ;22f7
	ld l,(ix+00ah)		; dd 6e 0a ;22f8
	ld h,(ix+00bh)		; dd 66 0b ;22fb
	ex de,hl			; eb ;22fe
	xor a			; af ;22ff
	sbc hl,de		; ed 52 ;2300
	ld c,001h		; 0e 01 ;2302
	jr c,l230bh		; 38 05 ;2304
	ld c,002h		; 0e 02 ;2306
	call sub_neg_hl		; cd 19 23 ;2308
l230bh:
	ld de,00800h		; 11 00 08 ;230b
	xor a			; af ;230e
	sbc hl,de		; ed 52 ;230f
	jr nc,l2315h		; 30 02 ;2311
	ld c,000h		; 0e 00 ;2313
l2315h:
	xor a			; af ;2315
	or c			; b1 ;2316
	or b			; b0 ;2317
	ret			; c9 ;2318
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
	ld a,r		; ed 5f ;2371
	cp 020h		; fe 20 ;2373
	ld b,002h		; 06 02 ;2375
	jr c,l2389h		; 38 10 ;2377
l2379h:
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
	ld hl,l5000h		; 21 00 50 ;2397
l239ah:
	bit 0,(ix+001h)		; dd cb 01 46 ;239a
	ld de,l4c00h		; 11 00 4c ;239e
	jr nz,l23a6h		; 20 03 ;23a1
	ld de,08800h		; 11 00 88 ;23a3
l23a6h:
	call sub_221eh		; cd 1e 22 ;23a6
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
	ld bc,l050ch		; 01 0c 05 ;2458
	inc b			; 04 ;245b
	dec b			; 05 ;245c
	nop			; 00 ;245d
	dec b			; 05 ;245e
	inc b			; 04 ;245f
	dec b			; 05 ;2460
	nop			; 00 ;2461
	ld bc,l0508h		; 01 08 05 ;2462
	nop			; 00 ;2465
	ld bc,l0104h		; 01 04 01 ;2466
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
	call sub_2e98h		; cd 98 2e ;247c
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
	jp l0807h		; c3 07 08 ;249d
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
	call sub_2bbfh		; cd bf 2b ;24e4
	ld a,(ix+016h)		; dd 7e 16 ;24e7
	ld (ix+017h),a		; dd 77 17 ;24ea
	ld (ix+020h),a		; dd 77 20 ;24ed
l24f0h:
	jp sub_2a69h		; c3 69 2a ;24f0
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
	call sub_2bbfh		; cd bf 2b ;2525
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
	call sub_2bbfh		; cd bf 2b ;2539
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
	call l26a1h		; cd a1 26 ;2556
	jp sub_2a69h		; c3 69 2a ;2559
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
	call sub_2bbfh		; cd bf 2b ;2575
	ld a,(ix+016h)		; dd 7e 16 ;2578
	ld (ix+017h),a		; dd 77 17 ;257b
	ld (ix+020h),a		; dd 77 20 ;257e
l2581h:
	call l26a1h		; cd a1 26 ;2581
	call sub_2a69h		; cd 69 2a ;2584
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
	call sub_2bbfh		; cd bf 2b ;25a5
	ld a,(ix+016h)		; dd 7e 16 ;25a8
	ld (ix+017h),a		; dd 77 17 ;25ab
	ld (ix+020h),a		; dd 77 20 ;25ae
l25b1h:
	call l26a1h		; cd a1 26 ;25b1
	call sub_2a69h		; cd 69 2a ;25b4
	ld a,(ix+023h)		; dd 7e 23 ;25b7
	and a			; a7 ;25ba
	ret nz			; c0 ;25bb
	ld (ix+025h),004h		; dd 36 25 04 ;25bc
	ret			; c9 ;25c0
	ld a,(ix+025h)		; dd 7e 25 ;25c1
	bit 7,a		; cb 7f ;25c4
	jr nz,l25ddh		; 20 15 ;25c6
	set 7,(ix+025h)		; dd cb 25 fe ;25c8
	call sub_2bbfh		; cd bf 2b ;25cc
	ld a,(ix+016h)		; dd 7e 16 ;25cf
	ld (ix+020h),a		; dd 77 20 ;25d2
	ld (ix+022h),00bh		; dd 36 22 0b ;25d5
	ld (ix+023h),0ffh		; dd 36 23 ff ;25d9
l25ddh:
	call l26a1h		; cd a1 26 ;25dd
	call sub_2a69h		; cd 69 2a ;25e0
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
	call sub_2c13h		; cd 13 2c ;25ff
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
	call l26a1h		; cd a1 26 ;2638
	call sub_2c40h		; cd 40 2c ;263b
	ld a,(ix+023h)		; dd 7e 23 ;263e
	and a			; a7 ;2641
	jr z,l2648h		; 28 04 ;2642
	call sub_2a69h		; cd 69 2a ;2644
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
l26a1h:
	call sub_26abh		; cd ab 26 ;26a1
	call sub_26cbh		; cd cb 26 ;26a4
	call sub_27f5h		; cd f5 27 ;26a7
	ret			; c9 ;26aa
sub_26abh:
	ld a,(0c000h)		; 3a 00 c0 ;26ab
	bit 3,a		; cb 5f ;26ae
	ret nz			; c0 ;26b0
	ld a,(ix+001h)		; dd 7e 01 ;26b1
	ld b,a			; 47 ;26b4
	and 001h		; e6 01 ;26b5
	ret nz			; c0 ;26b7
	ld a,b			; 78 ;26b8
	and 002h		; e6 02 ;26b9
	jr nz,l26c2h		; 20 05 ;26bb
	ld a,(0c1c0h)		; 3a c0 c1 ;26bd
	jr l26c5h		; 18 03 ;26c0
l26c2h:
	ld a,(0c1c2h)		; 3a c2 c1 ;26c2
l26c5h:
	and 00fh		; e6 0f ;26c5
	ld (ix+015h),a		; dd 77 15 ;26c7
	ret			; c9 ;26ca
sub_26cbh:
	xor a			; af ;26cb
	ex af,af'			; 08 ;26cc
	ld hl,00800h		; 21 00 08 ;26cd
	ld b,003h		; 06 03 ;26d0
	ld c,009h		; 0e 09 ;26d2
	ld a,(ix+002h)		; dd 7e 02 ;26d4
	and 07fh		; e6 7f ;26d7
	cp b			; b8 ;26d9
	jr z,l26dfh		; 28 03 ;26da
	cp c			; b9 ;26dc
	jr nz,l2704h		; 20 25 ;26dd
l26dfh:
	ld hl,l4100h		; 21 00 41 ;26df
	ld a,(ix+001h)		; dd 7e 01 ;26e2
	and 001h		; e6 01 ;26e5
	jr nz,l26f5h		; 20 0c ;26e7
	ld a,(0c044h)		; 3a 44 c0 ;26e9
	and 001h		; e6 01 ;26ec
	jr nz,l270eh		; 20 1e ;26ee
	ld hl,08d00h		; 21 00 8d ;26f0
	jr l270eh		; 18 19 ;26f3
l26f5h:
	ld hl,06000h		; 21 00 60 ;26f5
	ld a,(0c044h)		; 3a 44 c0 ;26f8
	and 001h		; e6 01 ;26fb
	jr z,l270eh		; 28 0f ;26fd
	ld hl,08800h		; 21 00 88 ;26ff
	jr l270eh		; 18 0a ;2702
l2704h:
	ld a,(ix+001h)		; dd 7e 01 ;2704
	and 001h		; e6 01 ;2707
	jr z,l270eh		; 28 03 ;2709
	ld hl,03680h		; 21 80 36 ;270b
l270eh:
	ld (ix+03ch),l		; dd 75 3c ;270e
	ld (ix+03dh),h		; dd 74 3d ;2711
	ld d,(ix+00dh)		; dd 56 0d ;2714
	ld a,(ix+00ch)		; dd 7e 0c ;2717
	ld b,004h		; 06 04 ;271a
	sub l			; 95 ;271c
	jr nc,l2725h		; 30 06 ;271d
	ld a,d			; 7a ;271f
	sub 001h		; d6 01 ;2720
	ld d,a			; 57 ;2722
	jr c,l2785h		; 38 60 ;2723
l2725h:
	ld a,d			; 7a ;2725
	sub h			; 94 ;2726
	jr c,l2785h		; 38 5c ;2727
	ld hl,0f800h		; 21 00 f8 ;2729
	ld b,003h		; 06 03 ;272c
	ld c,009h		; 0e 09 ;272e
	ld a,(ix+002h)		; dd 7e 02 ;2730
	and 07fh		; e6 7f ;2733
	cp b			; b8 ;2735
	jr z,l273bh		; 28 03 ;2736
	cp c			; b9 ;2738
	jr nz,l2760h		; 20 25 ;2739
l273bh:
	ld hl,0c000h		; 21 00 c0 ;273b
	ld a,(ix+001h)		; dd 7e 01 ;273e
	and 001h		; e6 01 ;2741
	jr nz,l2751h		; 20 0c ;2743
l2745h:
	ld a,(0c044h)		; 3a 44 c0 ;2745
	and 001h		; e6 01 ;2748
	jr z,l276ah		; 28 1e ;274a
	ld hl,l7400h		; 21 00 74 ;274c
	jr l276ah		; 18 19 ;274f
l2751h:
	ld hl,09d00h		; 21 00 9d ;2751
	ld a,(0c044h)		; 3a 44 c0 ;2754
	and 001h		; e6 01 ;2757
	jr nz,l276ah		; 20 0f ;2759
	ld hl,l7600h		; 21 00 76 ;275b
	jr l276ah		; 18 0a ;275e
l2760h:
	ld a,(ix+001h)		; dd 7e 01 ;2760
	and 001h		; e6 01 ;2763
	jr z,l276ah		; 28 03 ;2765
	ld hl,0c9ffh		; 21 ff c9 ;2767
l276ah:
	ld (ix+03eh),l		; dd 75 3e ;276a
	ld (ix+03fh),h		; dd 74 3f ;276d
	ld d,(ix+00dh)		; dd 56 0d ;2770
	ld a,(ix+00ch)		; dd 7e 0c ;2773
	sub l			; 95 ;2776
	jr c,l277fh		; 38 06 ;2777
	ld a,d			; 7a ;2779
	sub 001h		; d6 01 ;277a
	ld d,a			; 57 ;277c
	jr c,l2788h		; 38 09 ;277d
l277fh:
	ld a,d			; 7a ;277f
	sub h			; 94 ;2780
	jr c,l2788h		; 38 05 ;2781
	ld b,008h		; 06 08 ;2783
l2785h:
	ex af,af'			; 08 ;2785
	or b			; b0 ;2786
	ex af,af'			; 08 ;2787
l2788h:
	ld hl,06c00h		; 21 00 6c ;2788
	ld b,003h		; 06 03 ;278b
	ld c,009h		; 0e 09 ;278d
	ld a,(ix+002h)		; dd 7e 02 ;278f
	and 07fh		; e6 7f ;2792
	cp b			; b8 ;2794
	jr z,l27e0h		; 28 49 ;2795
	cp c			; b9 ;2797
	jr z,l27e0h		; 28 46 ;2798
	ld a,(ix+001h)		; dd 7e 01 ;279a
	and 001h		; e6 01 ;279d
	jr z,l27a4h		; 28 03 ;279f
	ld hl,l1d00h		; 21 00 1d ;27a1
l27a4h:
	ld d,(ix+00bh)		; dd 56 0b ;27a4
	ld a,(ix+00ah)		; dd 7e 0a ;27a7
	ld b,001h		; 06 01 ;27aa
	sub l			; 95 ;27ac
	jr nc,l27b5h		; 30 06 ;27ad
	ld a,d			; 7a ;27af
	sub 001h		; d6 01 ;27b0
	ld d,a			; 57 ;27b2
	jr c,l27dbh		; 38 26 ;27b3
l27b5h:
	ld a,d			; 7a ;27b5
	sub h			; 94 ;27b6
	jr c,l27dbh		; 38 22 ;27b7
	ld hl,0cb00h		; 21 00 cb ;27b9
	ld a,(ix+001h)		; dd 7e 01 ;27bc
	and 001h		; e6 01 ;27bf
	jr z,l27c6h		; 28 03 ;27c1
	ld hl,l4cffh		; 21 ff 4c ;27c3
l27c6h:
	ld d,(ix+00bh)		; dd 56 0b ;27c6
	ld a,(ix+00ah)		; dd 7e 0a ;27c9
	sub l			; 95 ;27cc
	jr nc,l27d5h		; 30 06 ;27cd
	ld a,d			; 7a ;27cf
	sub 001h		; d6 01 ;27d0
	ld d,a			; 57 ;27d2
	jr c,l27e4h		; 38 0f ;27d3
l27d5h:
	ld a,d			; 7a ;27d5
	sub h			; 94 ;27d6
	jr c,l27e4h		; 38 0b ;27d7
	ld b,002h		; 06 02 ;27d9
l27dbh:
	ex af,af'			; 08 ;27db
	or b			; b0 ;27dc
	ex af,af'			; 08 ;27dd
	jr l27e4h		; 18 04 ;27de
l27e0h:
	ld b,003h		; 06 03 ;27e0
	jr l27dbh		; 18 f7 ;27e2
l27e4h:
	ld a,(ix+02dh)		; dd 7e 2d ;27e4
	and 00fh		; e6 0f ;27e7
	ld b,a			; 47 ;27e9
	ex af,af'			; 08 ;27ea
	or b			; b0 ;27eb
	cpl			; 2f ;27ec
	ld b,(ix+015h)		; dd 46 15 ;27ed
	and b			; a0 ;27f0
	ld (ix+012h),a		; dd 77 12 ;27f1
	ret			; c9 ;27f4
sub_27f5h:
	xor a			; af ;27f5
	ld (0c402h),a		; 32 02 c4 ;27f6
	bit 0,(ix+001h)		; dd cb 01 46 ;27f9
	jr nz,l2819h		; 20 1a ;27fd
	ld hl,l28b1h		; 21 b1 28 ;27ff
	ld a,(0c047h)		; 3a 47 c0 ;2802
	call sub_2821h		; cd 21 28 ;2805
	ld hl,l2935h		; 21 35 29 ;2808
	ld a,(0c047h)		; 3a 47 c0 ;280b
	ld (0c402h),a		; 32 02 c4 ;280e
	ld a,(0c049h)		; 3a 49 c0 ;2811
	and a			; a7 ;2814
	ret z			; c8 ;2815
	dec a			; 3d ;2816
	jr sub_2821h		; 18 08 ;2817
l2819h:
	ld hl,l298dh		; 21 8d 29 ;2819
	ld a,(0c04ah)		; 3a 4a c0 ;281c
	and 007h		; e6 07 ;281f
sub_2821h:
	ld e,a			; 5f ;2821
	ld a,e			; 7b ;2822
	add a,a			; 87 ;2823
	ld d,a			; 57 ;2824
	add a,a			; 87 ;2825
	add a,a			; 87 ;2826
	add a,d			; 82 ;2827
	add a,e			; 83 ;2828
	add a,a			; 87 ;2829
	add a,a			; 87 ;282a
	ld e,a			; 5f ;282b
	ld a,(ix+012h)		; dd 7e 12 ;282c
	and 00fh		; e6 0f ;282f
	cp 00bh		; fe 0b ;2831
	jr c,l2836h		; 38 01 ;2833
	xor a			; af ;2835
l2836h:
	add a,a			; 87 ;2836
	add a,a			; 87 ;2837
	ld d,000h		; 16 00 ;2838
	add a,e			; 83 ;283a
	ld e,a			; 5f ;283b
	jr nc,l283fh		; 30 01 ;283c
	inc d			; 14 ;283e
l283fh:
	add hl,de			; 19 ;283f
	push hl			; e5 ;2840
	push ix		; dd e5 ;2841
	pop hl			; e1 ;2843
	ld de,l000eh		; 11 0e 00 ;2844
	add hl,de			; 19 ;2847
	ex de,hl			; eb ;2848
	pop hl			; e1 ;2849
	ld bc,l0004h		; 01 04 00 ;284a
	ldir		; ed b0 ;284d
	ld e,(ix+00ch)		; dd 5e 0c ;284f
	ld d,(ix+00dh)		; dd 56 0d ;2852
	ld l,(ix+010h)		; dd 6e 10 ;2855
	ld h,(ix+011h)		; dd 66 11 ;2858
	ld a,(0c402h)		; 3a 02 c4 ;285b
l285eh:
	sub 001h		; d6 01 ;285e
	jp c,l2867h		; da 67 28 ;2860
	add hl,hl			; 29 ;2863
	jp l285eh		; c3 5e 28 ;2864
l2867h:
	add hl,de			; 19 ;2867
	ld (ix+00ch),l		; dd 75 0c ;2868
	ld (ix+00dh),h		; dd 74 0d ;286b
	ld e,(ix+03ch)		; dd 5e 3c ;286e
	ld d,(ix+03dh)		; dd 56 3d ;2871
	ld c,l			; 4d ;2874
	ld b,h			; 44 ;2875
	xor a			; af ;2876
	sbc hl,de		; ed 52 ;2877
	jr c,l2888h		; 38 0d ;2879
	ld e,(ix+03eh)		; dd 5e 3e ;287b
	ld d,(ix+03fh)		; dd 56 3f ;287e
	ld l,c			; 69 ;2881
	ld h,b			; 60 ;2882
	xor a			; af ;2883
	sbc hl,de		; ed 52 ;2884
	jr c,l288eh		; 38 06 ;2886
l2888h:
	ld (ix+00ch),e		; dd 73 0c ;2888
	ld (ix+00dh),d		; dd 72 0d ;288b
l288eh:
	ld e,(ix+00ah)		; dd 5e 0a ;288e
	ld d,(ix+00bh)		; dd 56 0b ;2891
	ld l,(ix+00eh)		; dd 6e 0e ;2894
	ld h,(ix+00fh)		; dd 66 0f ;2897
	ld a,(0c402h)		; 3a 02 c4 ;289a
l289dh:
	sub 001h		; d6 01 ;289d
	jp c,l28a6h		; da a6 28 ;289f
	add hl,hl			; 29 ;28a2
	jp l289dh		; c3 9d 28 ;28a3
l28a6h:
	add hl,de			; 19 ;28a6
	ld (ix+00ah),l		; dd 75 0a ;28a7
	ld (ix+00bh),h		; dd 74 0b ;28aa
	ld (ix+014h),h		; dd 74 14 ;28ad
	ret			; c9 ;28b0
l28b1h:
	nop			; 00 ;28b1
	nop			; 00 ;28b2
	nop			; 00 ;28b3
	nop			; 00 ;28b4
	nop			; 00 ;28b5
	rst 38h			; ff ;28b6
	nop			; 00 ;28b7
	nop			; 00 ;28b8
	nop			; 00 ;28b9
	ld bc,start		; 01 00 00 ;28ba
	nop			; 00 ;28bd
	nop			; 00 ;28be
	nop			; 00 ;28bf
	nop			; 00 ;28c0
	nop			; 00 ;28c1
	nop			; 00 ;28c2
	nop			; 00 ;28c3
	rst 38h			; ff ;28c4
	nop			; 00 ;28c5
	rst 38h			; ff ;28c6
	nop			; 00 ;28c7
	rst 38h			; ff ;28c8
	nop			; 00 ;28c9
	ld bc,0ff00h		; 01 00 ff ;28ca
	nop			; 00 ;28cd
	nop			; 00 ;28ce
	nop			; 00 ;28cf
	nop			; 00 ;28d0
	nop			; 00 ;28d1
	nop			; 00 ;28d2
	nop			; 00 ;28d3
	ld bc,0ff00h		; 01 00 ff ;28d4
	nop			; 00 ;28d7
	ld bc,l00ffh+1		; 01 00 01 ;28d8
	nop			; 00 ;28db
	ld bc,start		; 01 00 00 ;28dc
	nop			; 00 ;28df
	nop			; 00 ;28e0
	add a,b			; 80 ;28e1
	cp 000h		; fe 00 ;28e2
	nop			; 00 ;28e4
	add a,b			; 80 ;28e5
	ld bc,start		; 01 00 00 ;28e6
	nop			; 00 ;28e9
	nop			; 00 ;28ea
	nop			; 00 ;28eb
	nop			; 00 ;28ec
	nop			; 00 ;28ed
	nop			; 00 ;28ee
	add a,b			; 80 ;28ef
	cp 080h		; fe 80 ;28f0
	cp 080h		; fe 80 ;28f2
	cp 080h		; fe 80 ;28f4
	ld bc,0fe80h		; 01 80 fe ;28f6
	nop			; 00 ;28f9
	nop			; 00 ;28fa
	nop			; 00 ;28fb
	nop			; 00 ;28fc
	nop			; 00 ;28fd
	nop			; 00 ;28fe
	add a,b			; 80 ;28ff
	ld bc,0fe80h		; 01 80 fe ;2900
	add a,b			; 80 ;2903
	ld bc,l017fh+1		; 01 80 01 ;2904
	add a,b			; 80 ;2907
	ld bc,start		; 01 00 00 ;2908
	nop			; 00 ;290b
	nop			; 00 ;290c
	nop			; 00 ;290d
	cp 000h		; fe 00 ;290e
	nop			; 00 ;2910
	nop			; 00 ;2911
	ld (bc),a			; 02 ;2912
	nop			; 00 ;2913
	nop			; 00 ;2914
	nop			; 00 ;2915
	nop			; 00 ;2916
	nop			; 00 ;2917
	nop			; 00 ;2918
	nop			; 00 ;2919
	nop			; 00 ;291a
	nop			; 00 ;291b
	cp 000h		; fe 00 ;291c
	cp 000h		; fe 00 ;291e
	cp 000h		; fe 00 ;2920
	ld (bc),a			; 02 ;2922
	nop			; 00 ;2923
	cp 000h		; fe 00 ;2924
	nop			; 00 ;2926
	nop			; 00 ;2927
	nop			; 00 ;2928
	nop			; 00 ;2929
	nop			; 00 ;292a
	nop			; 00 ;292b
	ld (bc),a			; 02 ;292c
	nop			; 00 ;292d
	cp 000h		; fe 00 ;292e
	ld (bc),a			; 02 ;2930
	nop			; 00 ;2931
	ld (bc),a			; 02 ;2932
	nop			; 00 ;2933
	ld (bc),a			; 02 ;2934
l2935h:
	nop			; 00 ;2935
	nop			; 00 ;2936
	nop			; 00 ;2937
	nop			; 00 ;2938
	add a,b			; 80 ;2939
	rst 38h			; ff ;293a
	nop			; 00 ;293b
	nop			; 00 ;293c
	add a,b			; 80 ;293d
	nop			; 00 ;293e
	nop			; 00 ;293f
	nop			; 00 ;2940
	nop			; 00 ;2941
	nop			; 00 ;2942
	nop			; 00 ;2943
	nop			; 00 ;2944
	nop			; 00 ;2945
	nop			; 00 ;2946
	ld b,b			; 40 ;2947
	nop			; 00 ;2948
	add a,b			; 80 ;2949
	rst 38h			; ff ;294a
	ld b,b			; 40 ;294b
	nop			; 00 ;294c
	add a,b			; 80 ;294d
	nop			; 00 ;294e
	ld b,b			; 40 ;294f
	nop			; 00 ;2950
	nop			; 00 ;2951
	nop			; 00 ;2952
	nop			; 00 ;2953
	nop			; 00 ;2954
	nop			; 00 ;2955
	nop			; 00 ;2956
	ret nz			; c0 ;2957
	rst 38h			; ff ;2958
	add a,b			; 80 ;2959
	rst 38h			; ff ;295a
	ret nz			; c0 ;295b
	rst 38h			; ff ;295c
	add a,b			; 80 ;295d
	nop			; 00 ;295e
	ret nz			; c0 ;295f
	rst 38h			; ff ;2960
	nop			; 00 ;2961
	nop			; 00 ;2962
	nop			; 00 ;2963
	nop			; 00 ;2964
	ld b,b			; 40 ;2965
	nop			; 00 ;2966
	nop			; 00 ;2967
	nop			; 00 ;2968
	ret nz			; c0 ;2969
	rst 38h			; ff ;296a
	nop			; 00 ;296b
	nop			; 00 ;296c
	nop			; 00 ;296d
	nop			; 00 ;296e
	nop			; 00 ;296f
	nop			; 00 ;2970
	nop			; 00 ;2971
	nop			; 00 ;2972
	add a,b			; 80 ;2973
	rst 38h			; ff ;2974
	ld b,b			; 40 ;2975
	nop			; 00 ;2976
	add a,b			; 80 ;2977
	rst 38h			; ff ;2978
	ret nz			; c0 ;2979
	rst 38h			; ff ;297a
	add a,b			; 80 ;297b
	rst 38h			; ff ;297c
	nop			; 00 ;297d
	nop			; 00 ;297e
	nop			; 00 ;297f
	nop			; 00 ;2980
	nop			; 00 ;2981
	nop			; 00 ;2982
	add a,b			; 80 ;2983
	nop			; 00 ;2984
	ld b,b			; 40 ;2985
	nop			; 00 ;2986
	add a,b			; 80 ;2987
	nop			; 00 ;2988
	ret nz			; c0 ;2989
	rst 38h			; ff ;298a
	add a,b			; 80 ;298b
	nop			; 00 ;298c
l298dh:
	nop			; 00 ;298d
	nop			; 00 ;298e
	nop			; 00 ;298f
	nop			; 00 ;2990
	ret nc			; d0 ;2991
	rst 38h			; ff ;2992
	nop			; 00 ;2993
	nop			; 00 ;2994
	jr nc,l2997h		; 30 00 ;2995
l2997h:
	nop			; 00 ;2997
	nop			; 00 ;2998
	nop			; 00 ;2999
	nop			; 00 ;299a
	nop			; 00 ;299b
	nop			; 00 ;299c
	nop			; 00 ;299d
	nop			; 00 ;299e
	ret nz			; c0 ;299f
	rst 38h			; ff ;29a0
	ret nc			; d0 ;29a1
	rst 38h			; ff ;29a2
	ret nz			; c0 ;29a3
	rst 38h			; ff ;29a4
	jr nc,l29a7h		; 30 00 ;29a5
l29a7h:
	ret nz			; c0 ;29a7
	rst 38h			; ff ;29a8
	nop			; 00 ;29a9
	nop			; 00 ;29aa
	nop			; 00 ;29ab
	nop			; 00 ;29ac
	nop			; 00 ;29ad
	nop			; 00 ;29ae
	ld b,b			; 40 ;29af
	nop			; 00 ;29b0
	ret nc			; d0 ;29b1
	rst 38h			; ff ;29b2
	ld b,b			; 40 ;29b3
	nop			; 00 ;29b4
	jr nc,l29b7h		; 30 00 ;29b5
l29b7h:
	ld b,b			; 40 ;29b7
	nop			; 00 ;29b8
	nop			; 00 ;29b9
	nop			; 00 ;29ba
	nop			; 00 ;29bb
	nop			; 00 ;29bc
	ret nz			; c0 ;29bd
	rst 38h			; ff ;29be
	nop			; 00 ;29bf
	nop			; 00 ;29c0
	ld b,b			; 40 ;29c1
	nop			; 00 ;29c2
	nop			; 00 ;29c3
	nop			; 00 ;29c4
	nop			; 00 ;29c5
	nop			; 00 ;29c6
	nop			; 00 ;29c7
	nop			; 00 ;29c8
	nop			; 00 ;29c9
	nop			; 00 ;29ca
	and b			; a0 ;29cb
	rst 38h			; ff ;29cc
	ret nz			; c0 ;29cd
	rst 38h			; ff ;29ce
	and b			; a0 ;29cf
	rst 38h			; ff ;29d0
	ld b,b			; 40 ;29d1
	nop			; 00 ;29d2
	and b			; a0 ;29d3
	rst 38h			; ff ;29d4
	nop			; 00 ;29d5
	nop			; 00 ;29d6
	nop			; 00 ;29d7
	nop			; 00 ;29d8
	nop			; 00 ;29d9
	nop			; 00 ;29da
	ld h,b			; 60 ;29db
	nop			; 00 ;29dc
	ret nz			; c0 ;29dd
	rst 38h			; ff ;29de
	ld h,b			; 60 ;29df
	nop			; 00 ;29e0
	ld b,b			; 40 ;29e1
	nop			; 00 ;29e2
	ld h,b			; 60 ;29e3
	nop			; 00 ;29e4
	nop			; 00 ;29e5
	nop			; 00 ;29e6
	nop			; 00 ;29e7
	nop			; 00 ;29e8
	or b			; b0 ;29e9
	rst 38h			; ff ;29ea
	nop			; 00 ;29eb
	nop			; 00 ;29ec
	ld d,b			; 50 ;29ed
	nop			; 00 ;29ee
	nop			; 00 ;29ef
	nop			; 00 ;29f0
	nop			; 00 ;29f1
	nop			; 00 ;29f2
	nop			; 00 ;29f3
	nop			; 00 ;29f4
	nop			; 00 ;29f5
	nop			; 00 ;29f6
	add a,b			; 80 ;29f7
	rst 38h			; ff ;29f8
	or b			; b0 ;29f9
	rst 38h			; ff ;29fa
	add a,b			; 80 ;29fb
	rst 38h			; ff ;29fc
	ld d,b			; 50 ;29fd
	nop			; 00 ;29fe
	add a,b			; 80 ;29ff
	rst 38h			; ff ;2a00
	nop			; 00 ;2a01
l2a02h:
	nop			; 00 ;2a02
	nop			; 00 ;2a03
	nop			; 00 ;2a04
	nop			; 00 ;2a05
	nop			; 00 ;2a06
	add a,b			; 80 ;2a07
	nop			; 00 ;2a08
	or b			; b0 ;2a09
	rst 38h			; ff ;2a0a
	add a,b			; 80 ;2a0b
	nop			; 00 ;2a0c
	ld d,b			; 50 ;2a0d
	nop			; 00 ;2a0e
	add a,b			; 80 ;2a0f
	nop			; 00 ;2a10
	nop			; 00 ;2a11
	nop			; 00 ;2a12
	nop			; 00 ;2a13
	nop			; 00 ;2a14
	sub b			; 90 ;2a15
	rst 38h			; ff ;2a16
	nop			; 00 ;2a17
	nop			; 00 ;2a18
	ld (hl),b			; 70 ;2a19
	ld bc,start		; 01 00 00 ;2a1a
	nop			; 00 ;2a1d
	nop			; 00 ;2a1e
	nop			; 00 ;2a1f
	nop			; 00 ;2a20
	nop			; 00 ;2a21
	nop			; 00 ;2a22
	ld h,b			; 60 ;2a23
	rst 38h			; ff ;2a24
	sub b			; 90 ;2a25
	rst 38h			; ff ;2a26
	ld h,b			; 60 ;2a27
	rst 38h			; ff ;2a28
	ld (hl),b			; 70 ;2a29
	ld bc,0ff60h		; 01 60 ff ;2a2a
	nop			; 00 ;2a2d
	nop			; 00 ;2a2e
	nop			; 00 ;2a2f
	nop			; 00 ;2a30
	nop			; 00 ;2a31
	nop			; 00 ;2a32
	and b			; a0 ;2a33
	nop			; 00 ;2a34
	sub b			; 90 ;2a35
	rst 38h			; ff ;2a36
	and b			; a0 ;2a37
	nop			; 00 ;2a38
	ld (hl),b			; 70 ;2a39
	ld bc,000a0h		; 01 a0 00 ;2a3a
	nop			; 00 ;2a3d
	nop			; 00 ;2a3e
	nop			; 00 ;2a3f
	nop			; 00 ;2a40
	nop			; 00 ;2a41
	rst 38h			; ff ;2a42
	nop			; 00 ;2a43
	nop			; 00 ;2a44
	nop			; 00 ;2a45
	ld bc,start		; 01 00 00 ;2a46
	nop			; 00 ;2a49
	nop			; 00 ;2a4a
	nop			; 00 ;2a4b
	nop			; 00 ;2a4c
	nop			; 00 ;2a4d
	nop			; 00 ;2a4e
	ret po			; e0 ;2a4f
	cp 000h		; fe 00 ;2a50
	rst 38h			; ff ;2a52
	ret po			; e0 ;2a53
	cp 000h		; fe 00 ;2a54
	ld bc,0fee0h		; 01 e0 fe ;2a56
	nop			; 00 ;2a59
	nop			; 00 ;2a5a
	nop			; 00 ;2a5b
	nop			; 00 ;2a5c
	nop			; 00 ;2a5d
	nop			; 00 ;2a5e
	jr nz,l2a62h		; 20 01 ;2a5f
	nop			; 00 ;2a61
l2a62h:
	rst 38h			; ff ;2a62
	jr nz,l2a66h		; 20 01 ;2a63
	nop			; 00 ;2a65
l2a66h:
	ld bc,l011eh+2		; 01 20 01 ;2a66
sub_2a69h:
	ld a,(ix+023h)		; dd 7e 23 ;2a69
	and a			; a7 ;2a6c
	ret z			; c8 ;2a6d
	ld a,(ix+022h)		; dd 7e 22 ;2a6e
	bit 7,a		; cb 7f ;2a71
	jr nz,l2adfh		; 20 6a ;2a73
	set 7,(ix+022h)		; dd cb 22 fe ;2a75
	ld e,a			; 5f ;2a79
	ld a,(ix+001h)		; dd 7e 01 ;2a7a
	ld c,a			; 4f ;2a7d
	and 001h		; e6 01 ;2a7e
	ld b,000h		; 06 00 ;2a80
	jr z,l2a88h		; 28 04 ;2a82
	ld b,018h		; 06 18 ;2a84
	jr l2a8fh		; 18 07 ;2a86
l2a88h:
	ld a,c			; 79 ;2a88
	and 002h		; e6 02 ;2a89
	jr z,l2a8fh		; 28 02 ;2a8b
	ld b,00ch		; 06 0c ;2a8d
l2a8fh:
	ld a,(ix+020h)		; dd 7e 20 ;2a8f
	and 001h		; e6 01 ;2a92
	jr z,l2a98h		; 28 02 ;2a94
	ld a,024h		; 3e 24 ;2a96
l2a98h:
	add a,e			; 83 ;2a98
	add a,b			; 80 ;2a99
	add a,a			; 87 ;2a9a
	ld e,a			; 5f ;2a9b
	ld d,000h		; 16 00 ;2a9c
	ld hl,l2b2fh		; 21 2f 2b ;2a9e
	add hl,de			; 19 ;2aa1
	ld e,(hl)			; 5e ;2aa2
	inc hl			; 23 ;2aa3
	ld d,(hl)			; 56 ;2aa4
	ex de,hl			; eb ;2aa5
	ld a,(hl)			; 7e ;2aa6
	ld (ix+009h),a		; dd 77 09 ;2aa7
	inc hl			; 23 ;2aaa
	ld e,(hl)			; 5e ;2aab
	ld a,(0c04ah)		; 3a 4a c0 ;2aac
	rra			; 1f ;2aaf
	and 003h		; e6 03 ;2ab0
	ld d,a			; 57 ;2ab2
	ld a,e			; 7b ;2ab3
	sub d			; 92 ;2ab4
	ld (ix+019h),a		; dd 77 19 ;2ab5
	inc hl			; 23 ;2ab8
	ld a,(hl)			; 7e ;2ab9
	ld (ix+01ah),a		; dd 77 1a ;2aba
	inc hl			; 23 ;2abd
	ld a,(hl)			; 7e ;2abe
	ld (ix+01bh),a		; dd 77 1b ;2abf
	inc hl			; 23 ;2ac2
	ld a,(hl)			; 7e ;2ac3
	ld (ix+01eh),a		; dd 77 1e ;2ac4
	inc hl			; 23 ;2ac7
	ld (ix+02bh),l		; dd 75 2b ;2ac8
	ld (ix+02ch),h		; dd 74 2c ;2acb
	ld a,(hl)			; 7e ;2ace
	ld (ix+004h),a		; dd 77 04 ;2acf
	inc hl			; 23 ;2ad2
	ld a,(hl)			; 7e ;2ad3
	sub d			; 92 ;2ad4
	jr z,l2ad9h		; 28 02 ;2ad5
	jr nc,l2adbh		; 30 02 ;2ad7
l2ad9h:
	ld a,001h		; 3e 01 ;2ad9
l2adbh:
	ld (ix+008h),a		; dd 77 08 ;2adb
	ret			; c9 ;2ade
l2adfh:
	bit 7,(ix+019h)		; dd cb 19 7e ;2adf
	jr z,l2aefh		; 28 0a ;2ae3
	ld a,(ix+01ah)		; dd 7e 1a ;2ae5
	sub 001h		; d6 01 ;2ae8
	jr c,l2af2h		; 38 06 ;2aea
	ld (ix+01ah),a		; dd 77 1a ;2aec
l2aefh:
	dec (ix+019h)		; dd 35 19 ;2aef
l2af2h:
	dec (ix+008h)		; dd 35 08 ;2af2
	ret nz			; c0 ;2af5
	dec (ix+009h)		; dd 35 09 ;2af6
	jr nz,l2b00h		; 20 05 ;2af9
	ld (ix+023h),000h		; dd 36 23 00 ;2afb
	ret			; c9 ;2aff
l2b00h:
	ld l,(ix+02bh)		; dd 6e 2b ;2b00
	ld h,(ix+02ch)		; dd 66 2c ;2b03
	inc hl			; 23 ;2b06
	inc hl			; 23 ;2b07
	ld (ix+02bh),l		; dd 75 2b ;2b08
	ld (ix+02ch),h		; dd 74 2c ;2b0b
	ld a,(hl)			; 7e ;2b0e
	ld (ix+004h),a		; dd 77 04 ;2b0f
	inc hl			; 23 ;2b12
	ld a,(hl)			; 7e ;2b13
	ld e,a			; 5f ;2b14
	ld a,(0c04ah)		; 3a 4a c0 ;2b15
	rra			; 1f ;2b18
	and 003h		; e6 03 ;2b19
	ld d,a			; 57 ;2b1b
	ld a,e			; 7b ;2b1c
	sub d			; 92 ;2b1d
	jr z,l2b22h		; 28 02 ;2b1e
	jr nc,l2b24h		; 30 02 ;2b20
l2b22h:
	ld a,001h		; 3e 01 ;2b22
l2b24h:
	ld (ix+008h),a		; dd 77 08 ;2b24
	ld a,(ix+019h)		; dd 7e 19 ;2b27
	sub d			; 92 ;2b2a
	ld (ix+019h),a		; dd 77 19 ;2b2b
	ret			; c9 ;2b2e
l2b2fh:
	or b			; b0 ;2b2f
	ld c,b			; 48 ;2b30
	cp c			; b9 ;2b31
	ld c,b			; 48 ;2b32
	ret nz			; c0 ;2b33
	ld c,b			; 48 ;2b34
	exx			; d9 ;2b35
	ld c,b			; 48 ;2b36
	rst 30h			; f7 ;2b37
	ld c,b			; 48 ;2b38
	dec d			; 15 ;2b39
	ld c,c			; 49 ;2b3a
	ld sp,l3849h		; 31 49 38 ;2b3b
	ld c,c			; 49 ;2b3e
	ccf			; 3f ;2b3f
	ld c,c			; 49 ;2b40
	ld c,h			; 4c ;2b41
	ld c,c			; 49 ;2b42
	ld e,e			; 5b ;2b43
	ld c,c			; 49 ;2b44
	add a,d			; 82 ;2b45
	ld c,c			; 49 ;2b46
	sbc a,h			; 9c ;2b47
	ld c,c			; 49 ;2b48
	and l			; a5 ;2b49
	ld c,c			; 49 ;2b4a
	xor h			; ac ;2b4b
	ld c,c			; 49 ;2b4c
	push bc			; c5 ;2b4d
	ld c,c			; 49 ;2b4e
	ex (sp),hl			; e3 ;2b4f
	ld c,c			; 49 ;2b50
	ld bc,l1d4ah		; 01 4a 1d ;2b51
	ld c,d			; 4a ;2b54
	inc h			; 24 ;2b55
	ld c,d			; 4a ;2b56
	dec hl			; 2b ;2b57
	ld c,d			; 4a ;2b58
	jr c,l2ba5h		; 38 4a ;2b59
	ld b,a			; 47 ;2b5b
	ld c,d			; 4a ;2b5c
	ld l,(hl)			; 6e ;2b5d
	ld c,d			; 4a ;2b5e
	ld a,a			; 7f ;2b5f
	ld c,d			; 4a ;2b60
	adc a,b			; 88 ;2b61
	ld c,d			; 4a ;2b62
	adc a,a			; 8f ;2b63
	ld c,d			; 4a ;2b64
	jp nz,0cf4ah		; c2 4a cf ;2b65
	ld c,d			; 4a ;2b68
	push hl			; e5 ;2b69
	ld c,d			; 4a ;2b6a
	ret p			; f0 ;2b6b
	ld c,d			; 4a ;2b6c
	rst 30h			; f7 ;2b6d
	ld c,d			; 4a ;2b6e
	cp 04ah		; fe 4a ;2b6f
	push hl			; e5 ;2b71
	ld c,d			; 4a ;2b72
	ld hl,02c4bh		; 21 4b 2c ;2b73
	ld c,e			; 4b ;2b76
	and a			; a7 ;2b77
	ld c,b			; 48 ;2b78
	ret			; c9 ;2b79
	ld c,b			; 48 ;2b7a
	ret nc			; d0 ;2b7b
	ld c,b			; 48 ;2b7c
	ret pe			; e8 ;2b7d
	ld c,b			; 48 ;2b7e
	ld b,049h		; 06 49 ;2b7f
	ld (03149h),hl		; 22 49 31 ;2b81
	ld c,c			; 49 ;2b84
	jr c,l2bd0h		; 38 49 ;2b85
	ccf			; 3f ;2b87
	ld c,c			; 49 ;2b88
	ld (l6649h),hl		; 22 49 66 ;2b89
	ld c,c			; 49 ;2b8c
	ld (hl),c			; 71 ;2b8d
	ld c,c			; 49 ;2b8e
	sub e			; 93 ;2b8f
	ld c,c			; 49 ;2b90
	or l			; b5 ;2b91
	ld c,c			; 49 ;2b92
	cp h			; bc ;2b93
	ld c,c			; 49 ;2b94
	call nc,0f249h		; d4 49 f2 ;2b95
	ld c,c			; 49 ;2b98
	ld c,04ah		; 0e 4a ;2b99
	dec e			; 1d ;2b9b
	ld c,d			; 4a ;2b9c
	inc h			; 24 ;2b9d
	ld c,d			; 4a ;2b9e
	dec hl			; 2b ;2b9f
	ld c,d			; 4a ;2ba0
	ld c,04ah		; 0e 4a ;2ba1
	ld d,d			; 52 ;2ba3
	ld c,d			; 4a ;2ba4
l2ba5h:
	ld e,l			; 5d ;2ba5
	ld c,d			; 4a ;2ba6
	ld a,a			; 7f ;2ba7
	ld c,d			; 4a ;2ba8
	sbc a,b			; 98 ;2ba9
	ld c,d			; 4a ;2baa
	sbc a,a			; 9f ;2bab
	ld c,d			; 4a ;2bac
	xor b			; a8 ;2bad
	ld c,d			; 4a ;2bae
	or l			; b5 ;2baf
	ld c,d			; 4a ;2bb0
	call c,0f04ah		; dc 4a f0 ;2bb1
	ld c,d			; 4a ;2bb4
	rst 30h			; f7 ;2bb5
	ld c,d			; 4a ;2bb6
	cp 04ah		; fe 4a ;2bb7
	add hl,bc			; 09 ;2bb9
	ld c,e			; 4b ;2bba
	ld d,04bh		; 16 4b ;2bbb
	add hl,sp			; 39 ;2bbd
	ld c,e			; 4b ;2bbe
sub_2bbfh:
	ld a,(ix+027h)		; dd 7e 27 ;2bbf
	and a			; a7 ;2bc2
	jr z,l2bf2h		; 28 2d ;2bc3
	ld a,(ix+00bh)		; dd 7e 0b ;2bc5
	cp 018h		; fe 18 ;2bc8
	jr nc,l2bceh		; 30 02 ;2bca
	ld a,018h		; 3e 18 ;2bcc
l2bceh:
	cp 0d7h		; fe d7 ;2bce
l2bd0h:
	jr c,l2bd4h		; 38 02 ;2bd0
	ld a,0d7h		; 3e d7 ;2bd2
l2bd4h:
	ld e,a			; 5f ;2bd4
	call sub_160ah		; cd 0a 16 ;2bd5
	ld e,(ix+00dh)		; dd 5e 0d ;2bd8
	bit 0,(ix+001h)		; dd cb 01 46 ;2bdb
	jr nz,l2be7h		; 20 06 ;2bdf
	ld d,a			; 57 ;2be1
	ld a,e			; 7b ;2be2
	add a,004h		; c6 04 ;2be3
	ld e,a			; 5f ;2be5
	ld a,d			; 7a ;2be6
l2be7h:
	sub e			; 93 ;2be7
	ld a,001h		; 3e 01 ;2be8
	jr c,l2beeh		; 38 02 ;2bea
l2bech:
	ld a,000h		; 3e 00 ;2bec
l2beeh:
	ld (ix+016h),a		; dd 77 16 ;2bee
	ret			; c9 ;2bf1
l2bf2h:
	ld a,(ix+015h)		; dd 7e 15 ;2bf2
	and a			; a7 ;2bf5
	jr z,l2c04h		; 28 0c ;2bf6
	and 00ch		; e6 0c ;2bf8
	jr z,l2c04h		; 28 08 ;2bfa
	and 004h		; e6 04 ;2bfc
	ld a,001h		; 3e 01 ;2bfe
l2c00h:
	jr nz,l2beeh		; 20 ec ;2c00
	jr l2bech		; 18 e8 ;2c02
l2c04h:
	ld a,(ix+00dh)		; dd 7e 0d ;2c04
	cp 080h		; fe 80 ;2c07
	ld a,000h		; 3e 00 ;2c09
	jr c,l2c0fh		; 38 02 ;2c0b
	ld a,001h		; 3e 01 ;2c0d
l2c0fh:
	ld (ix+016h),a		; dd 77 16 ;2c0f
	ret			; c9 ;2c12
sub_2c13h:
	ld a,003h		; 3e 03 ;2c13
	bit 0,(ix+028h)		; dd cb 28 46 ;2c15
	ret z			; c8 ;2c19
	ld de,0c501h		; 11 01 c5 ;2c1a
	ld a,(de)			; 1a ;2c1d
	bit 0,(ix+001h)		; dd cb 01 46 ;2c1e
	jr nz,l2c28h		; 20 04 ;2c22
	cp 010h		; fe 10 ;2c24
	jr l2c2ah		; 18 02 ;2c26
l2c28h:
	cp 00ah		; fe 0a ;2c28
l2c2ah:
	ld b,a			; 47 ;2c2a
	ld a,002h		; 3e 02 ;2c2b
	ret c			; d8 ;2c2d
	ld a,b			; 78 ;2c2e
	bit 0,(ix+001h)		; dd cb 01 46 ;2c2f
	jr nz,l2c39h		; 20 04 ;2c33
	cp 018h		; fe 18 ;2c35
	jr l2c3bh		; 18 02 ;2c37
l2c39h:
	cp 01ch		; fe 1c ;2c39
l2c3bh:
	ld a,001h		; 3e 01 ;2c3b
	ret c			; d8 ;2c3d
	xor a			; af ;2c3e
	ret			; c9 ;2c3f
sub_2c40h:
	ld a,(ix+01ah)		; dd 7e 1a ;2c40
	and a			; a7 ;2c43
	jr nz,l2c4fh		; 20 09 ;2c44
	res 7,(ix+019h)		; dd cb 19 be ;2c46
	bit 7,(ix+01dh)		; dd cb 1d 7e ;2c4a
	ret z			; c8 ;2c4e
l2c4fh:
	ld b,a			; 47 ;2c4f
	ld a,(0c519h)		; 3a 19 c5 ;2c50
	cp 001h		; fe 01 ;2c53
	ret z			; c8 ;2c55
	bit 7,(ix+01dh)		; dd cb 1d 7e ;2c56
	ret z			; c8 ;2c5a
	ld a,(ix+002h)		; dd 7e 02 ;2c5b
	and 07fh		; e6 7f ;2c5e
	cp 005h		; fe 05 ;2c60
	jr z,l2c79h		; 28 15 ;2c62
	ld a,(0c040h)		; 3a 40 c0 ;2c64
	bit 0,a		; cb 47 ;2c67
	jr z,l2c79h		; 28 0e ;2c69
	ld a,(0c041h)		; 3a 41 c0 ;2c6b
	cp (ix+001h)		; dd be 01 ;2c6e
	jr nz,l2c79h		; 20 06 ;2c71
	ld hl,0c000h		; 21 00 c0 ;2c73
	res 0,(hl)		; cb 86 ;2c76
	ret			; c9 ;2c78
l2c79h:
	res 7,(ix+01dh)		; dd cb 1d be ;2c79
	ld a,(ix+01fh)		; dd 7e 1f ;2c7d
	ld (0c302h),a		; 32 02 c3 ;2c80
	ld (0c401h),a		; 32 01 c4 ;2c83
	ld a,b			; 78 ;2c86
	ld b,(ix+01bh)		; dd 46 1b ;2c87
	call sub_2ed0h		; cd d0 2e ;2c8a
	ld e,c			; 59 ;2c8d
	ld a,(ix+02fh)		; dd 7e 2f ;2c8e
	rrca			; 0f ;2c91
	rrca			; 0f ;2c92
	rrca			; 0f ;2c93
	bit 0,(ix+001h)		; dd cb 01 46 ;2c94
	jr z,l2c9bh		; 28 01 ;2c98
	cpl			; 2f ;2c9a
l2c9bh:
	and 0e0h		; e6 e0 ;2c9b
	or e			; b3 ;2c9d
	ld e,a			; 5f ;2c9e
	ld a,(ix+02eh)		; dd 7e 2e ;2c9f
	rla			; 17 ;2ca2
	rla			; 17 ;2ca3
	bit 0,(ix+001h)		; dd cb 01 46 ;2ca4
	jr z,l2cabh		; 28 01 ;2ca8
	cpl			; 2f ;2caa
l2cabh:
	and 01ch		; e6 1c ;2cab
	or e			; b3 ;2cad
	ld e,a			; 5f ;2cae
	ld d,000h		; 16 00 ;2caf
	ld hl,l2d98h		; 21 98 2d ;2cb1
	add hl,de			; 19 ;2cb4
	ld a,(hl)			; 7e ;2cb5
	bit 0,(ix+001h)		; dd cb 01 46 ;2cb6
	jr z,l2cc7h		; 28 0b ;2cba
	bit 0,(ix+020h)		; dd cb 20 46 ;2cbc
	jr nz,l2cd0h		; 20 0e ;2cc0
	call sub_2d52h		; cd 52 2d ;2cc2
	jr l2cd0h		; 18 09 ;2cc5
l2cc7h:
	bit 0,(ix+020h)		; dd cb 20 46 ;2cc7
	jr z,l2cd0h		; 28 03 ;2ccb
	call sub_2d52h		; cd 52 2d ;2ccd
l2cd0h:
	and 01fh		; e6 1f ;2cd0
	ld de,0c320h		; 11 20 c3 ;2cd2
	bit 0,(ix+001h)		; dd cb 01 46 ;2cd5
	jr z,l2cdeh		; 28 03 ;2cd9
	ld b,00bh		; 06 0b ;2cdb
	add a,b			; 80 ;2cdd
l2cdeh:
	ld (de),a			; 12 ;2cde
	ld a,(0c4b0h)		; 3a b0 c4 ;2cdf
	ld e,000h		; 1e 00 ;2ce2
	bit 0,(ix+001h)		; dd cb 01 46 ;2ce4
	jr z,l2cefh		; 28 05 ;2ce8
	ld a,(0c4b1h)		; 3a b1 c4 ;2cea
	ld e,010h		; 1e 10 ;2ced
l2cefh:
	ld hl,l2d58h		; 21 58 2d ;2cef
	call sub_2d0eh		; cd 0e 2d ;2cf2
	ld a,(0c4b2h)		; 3a b2 c4 ;2cf5
	ld e,000h		; 1e 00 ;2cf8
	bit 0,(ix+001h)		; dd cb 01 46 ;2cfa
	jr z,l2d05h		; 28 05 ;2cfe
	ld a,(0c4b3h)		; 3a b3 c4 ;2d00
	ld e,010h		; 1e 10 ;2d03
l2d05h:
	ld hl,l2d78h		; 21 78 2d ;2d05
	call sub_2d0eh		; cd 0e 2d ;2d08
	jp l2d35h		; c3 35 2d ;2d0b
sub_2d0eh:
	ld c,a			; 4f ;2d0e
	ld a,(ix+02fh)		; dd 7e 2f ;2d0f
	and 007h		; e6 07 ;2d12
l2d14h:
	or e			; b3 ;2d14
	ld e,a			; 5f ;2d15
	ld a,(ix+020h)		; dd 7e 20 ;2d16
	rla			; 17 ;2d19
	rla			; 17 ;2d1a
	rla			; 17 ;2d1b
	and 008h		; e6 08 ;2d1c
	or e			; b3 ;2d1e
	ld e,a			; 5f ;2d1f
	ld d,000h		; 16 00 ;2d20
	add hl,de			; 19 ;2d22
	ld a,(hl)			; 7e ;2d23
	and a			; a7 ;2d24
	ret z			; c8 ;2d25
	bit 7,a		; cb 7f ;2d26
	ld a,c			; 79 ;2d28
	jr z,l2d2dh		; 28 02 ;2d29
	neg		; ed 44 ;2d2b
l2d2dh:
	ld c,a			; 4f ;2d2d
	ld de,0c320h		; 11 20 c3 ;2d2e
	ld a,(de)			; 1a ;2d31
	add a,c			; 81 ;2d32
	ld (de),a			; 12 ;2d33
	ret			; c9 ;2d34
l2d35h:
	ld a,(ix+001h)		; dd 7e 01 ;2d35
	and 001h		; e6 01 ;2d38
	ld a,000h		; 3e 00 ;2d3a
	ld b,001h		; 06 01 ;2d3c
	jr z,l2d44h		; 28 04 ;2d3e
	ld a,001h		; 3e 01 ;2d40
	ld b,000h		; 06 00 ;2d42
l2d44h:
	ld de,l0040h		; 11 40 00 ;2d44
	ld hl,0c227h		; 21 27 c2 ;2d47
	ld (hl),a			; 77 ;2d4a
	add hl,de			; 19 ;2d4b
	ld (hl),b			; 70 ;2d4c
	add hl,de			; 19 ;2d4d
	ld (hl),a			; 77 ;2d4e
	add hl,de			; 19 ;2d4f
	ld (hl),b			; 70 ;2d50
	ret			; c9 ;2d51
sub_2d52h:
	sub 00ah		; d6 0a ;2d52
	ret nc			; d0 ;2d54
	neg		; ed 44 ;2d55
	ret			; c9 ;2d57
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
	ld bc,l00ffh+2		; 01 01 01 ;2d65
	ld bc,l00ffh+2		; 01 01 01 ;2d68
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
sub_2e98h:
	ld a,(ix+00dh)		; dd 7e 0d ;2e98
	bit 0,(ix+001h)		; dd cb 01 46 ;2e9b
	ld c,008h		; 0e 08 ;2e9f
	ld b,01eh		; 06 1e ;2ea1
	jp z,l2eaah		; ca aa 2e ;2ea3
	ld c,036h		; 0e 36 ;2ea6
	ld b,013h		; 06 13 ;2ea8
l2eaah:
	sub c			; 91 ;2eaa
	jr nc,l2eaeh		; 30 01 ;2eab
	xor a			; af ;2ead
l2eaeh:
	call sub_2ed0h		; cd d0 2e ;2eae
	ld (ix+02fh),c		; dd 71 2f ;2eb1
	ld a,(ix+00bh)		; dd 7e 0b ;2eb4
	bit 0,(ix+001h)		; dd cb 01 46 ;2eb7
	ld c,06ch		; 0e 6c ;2ebb
	ld b,00dh		; 06 0d ;2ebd
	jr z,l2ec5h		; 28 04 ;2ebf
	ld c,01dh		; 0e 1d ;2ec1
	ld b,006h		; 06 06 ;2ec3
l2ec5h:
	sub c			; 91 ;2ec5
	jr nc,l2ec9h		; 30 01 ;2ec6
	xor a			; af ;2ec8
l2ec9h:
	call sub_2ed0h		; cd d0 2e ;2ec9
	ld (ix+02eh),c		; dd 71 2e ;2ecc
	ret			; c9 ;2ecf
sub_2ed0h:
	ld c,a			; 4f ;2ed0
	ld a,b			; 78 ;2ed1
	and a			; a7 ;2ed2
	jp z,l2edfh		; ca df 2e ;2ed3
	ld a,c			; 79 ;2ed6
	ld c,0ffh		; 0e ff ;2ed7
l2ed9h:
	inc c			; 0c ;2ed9
	sub b			; 90 ;2eda
	jp nc,l2ed9h		; d2 d9 2e ;2edb
	ret			; c9 ;2ede
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
	ld hl,l3906h		; 21 06 39 ;2f22
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
	ld hl,l3906h		; 21 06 39 ;2f50
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
	ld hl,l3906h		; 21 06 39 ;2f7e
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
	ld hl,l3904h		; 21 04 39 ;2fa8
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
	ld hl,l38c4h		; 21 c4 38 ;2fcf
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
l3000h:
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
	ld hl,l39f8h		; 21 f8 39 ;306f
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
	ld de,l39f8h		; 11 f8 39 ;308e
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
	ld hl,l39f8h		; 21 f8 39 ;3110
	ld b,002h		; 06 02 ;3113
	jr l311ch		; 18 05 ;3115
l3117h:
	ld hl,l39fah		; 21 fa 39 ;3117
	ld b,001h		; 06 01 ;311a
l311ch:
	call sub_3192h		; cd 92 31 ;311c
	ld a,(0c489h)		; 3a 89 c4 ;311f
	call sub_3182h		; cd 82 31 ;3122
	ld a,d			; 7a ;3125
	cp 000h		; fe 00 ;3126
	jr z,l3131h		; 28 07 ;3128
	ld hl,03938h		; 21 38 39 ;312a
	ld b,002h		; 06 02 ;312d
	jr l3136h		; 18 05 ;312f
l3131h:
	ld hl,l393ah		; 21 3a 39 ;3131
	ld b,001h		; 06 01 ;3134
l3136h:
	call sub_3192h		; cd 92 31 ;3136
	jp l30b6h		; c3 b6 30 ;3139
sub_313ch:
	ld a,09ah		; 3e 9a ;313c
	ld (0de00h),a		; 32 00 de ;313e
	ld hl,l3904h		; 21 04 39 ;3141
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
	ld hl,l38c4h		; 21 c4 38 ;315e
	ld (0c4a8h),hl		; 22 a8 c4 ;3161
	ld hl,0caa6h		; 21 a6 ca ;3164
	ld (0c4aah),hl		; 22 aa c4 ;3167
	ld h,005h		; 26 05 ;316a
l316ch:
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
sub_3192h:
	di			; f3 ;3192
	ld a,l			; 7d ;3193
	out (0bfh),a		; d3 bf ;3194
	ld a,h			; 7c ;3196
	set 6,a		; cb f7 ;3197
	out (0bfh),a		; d3 bf ;3199
	ld a,b			; 78 ;319b
	cp 002h		; fe 02 ;319c
	jr c,l31a3h		; 38 03 ;319e
	ld a,d			; 7a ;31a0
	jr l31a4h		; 18 01 ;31a1
l31a3h:
	ld a,e			; 7b ;31a3
l31a4h:
	inc a			; 3c ;31a4
	out (0beh),a		; d3 be ;31a5
	ex (sp),hl			; e3 ;31a7
	ex (sp),hl			; e3 ;31a8
	ex (sp),hl			; e3 ;31a9
	ex (sp),hl			; e3 ;31aa
	ld a,001h		; 3e 01 ;31ab
	out (0beh),a		; d3 be ;31ad
	ex (sp),hl			; e3 ;31af
	ex (sp),hl			; e3 ;31b0
	ex (sp),hl			; e3 ;31b1
	ex (sp),hl			; e3 ;31b2
	ld a,e			; 7b ;31b3
	djnz l31a4h		; 10 ee ;31b4
	ei			; fb ;31b6
	ret			; c9 ;31b7
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
	call l036ah		; cd 6a 03 ;31cb
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
	ld hl,l3b54h		; 21 54 3b ;31e5
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
l3208h:
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
	ld de,l007fh+1		; 11 80 00 ;324b
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
	call sub_3192h		; cd 92 31 ;328c
	pop hl			; e1 ;328f
	inc hl			; 23 ;3290
	push hl			; e5 ;3291
	ld e,(hl)			; 5e ;3292
	ld d,000h		; 16 00 ;3293
	ld b,001h		; 06 01 ;3295
	ld hl,03c9eh		; 21 9e 3c ;3297
	call sub_3192h		; cd 92 31 ;329a
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
	ld hl,l3c22h		; 21 22 3c ;32ae
	ld (0c4a0h),hl		; 22 a0 c4 ;32b1
	call sub_3192h		; cd 92 31 ;32b4
	pop hl			; e1 ;32b7
	push hl			; e5 ;32b8
	ld e,(hl)			; 5e ;32b9
	ld d,000h		; 16 00 ;32ba
	ld b,001h		; 06 01 ;32bc
	ld hl,l3ca1h+1		; 21 a2 3c ;32be
	call sub_3192h		; cd 92 31 ;32c1
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
	ld hl,l3c26h		; 21 26 3c ;32d5
	ld (0c4a0h),hl		; 22 a0 c4 ;32d8
	call sub_3192h		; cd 92 31 ;32db
	pop hl			; e1 ;32de
	push hl			; e5 ;32df
	ld e,(hl)			; 5e ;32e0
	ld d,000h		; 16 00 ;32e1
	ld b,001h		; 06 01 ;32e3
	ld hl,l3ca6h		; 21 a6 3c ;32e5
	call sub_3192h		; cd 92 31 ;32e8
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
	ld hl,l3b54h		; 21 54 3b ;3353
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
	ld hl,l3b48h		; 21 48 3b ;33dc
	ld b,008h		; 06 08 ;33df
	ld de,l0018h		; 11 18 00 ;33e1
	call sub_3457h		; cd 57 34 ;33e4
	call sub_346eh		; cd 6e 34 ;33e7
	ld hl,l3c18h		; 21 18 3c ;33ea
	ld de,0351fh		; 11 1f 35 ;33ed
	ld b,008h		; 06 08 ;33f0
	call sub_347fh		; cd 7f 34 ;33f2
	ld a,005h		; 3e 05 ;33f5
	call sub_35e6h		; cd e6 35 ;33f7
	ld hl,l3cd6h		; 21 d6 3c ;33fa
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
	ld hl,l3b48h		; 21 48 3b ;3417
	ld de,l0018h		; 11 18 00 ;341a
	ld b,009h		; 06 09 ;341d
	call sub_3457h		; cd 57 34 ;341f
	call sub_346eh		; cd 6e 34 ;3422
	ld hl,l3c18h		; 21 18 3c ;3425
	ld de,034d7h		; 11 d7 34 ;3428
	ld b,007h		; 06 07 ;342b
	call sub_347fh		; cd 7f 34 ;342d
	ld a,005h		; 3e 05 ;3430
	call sub_35e6h		; cd e6 35 ;3432
	ld hl,l3ccch		; 21 cc 3c ;3435
	ld b,00eh		; 06 0e ;3438
	call sub_347fh		; cd 7f 34 ;343a
	ld a,005h		; 3e 05 ;343d
	call sub_35e6h		; cd e6 35 ;343f
	ld hl,l3d16h		; 21 16 3d ;3442
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
	call sub_0450h		; cd 50 04 ;3460
	ei			; fb ;3463
	pop hl			; e1 ;3464
	ld de,l0040h		; 11 40 00 ;3465
	add hl,de			; 19 ;3468
	pop de			; d1 ;3469
	pop bc			; c1 ;346a
	djnz sub_3457h		; 10 ea ;346b
	ret			; c9 ;346d
sub_346eh:
	ld hl,l3b8ah		; 21 8a 3b ;346e
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
	ld bc,l0112h		; 01 12 01 ;34aa
	inc c			; 0c ;34ad
	ld bc,l0118h		; 01 18 01 ;34ae
	djnz l34b4h		; 10 01 ;34b1
	dec hl			; 2b ;34b3
l34b4h:
	ld bc,l012ah+1		; 01 2b 01 ;34b4
	dec hl			; 2b ;34b7
	ld bc,l00ffh+1		; 01 00 01 ;34b8
	nop			; 00 ;34bb
	ld bc,l011eh		; 01 1e 01 ;34bc
	djnz l34c2h		; 10 01 ;34bf
	rra			; 1f ;34c1
l34c2h:
	ld bc,l012ah+1		; 01 2b 01 ;34c2
	dec hl			; 2b ;34c5
	ld bc,l012ah+1		; 01 2b 01 ;34c6
	nop			; 00 ;34c9
	ld bc,l00ffh+1		; 01 00 01 ;34ca
	jr l34d0h		; 18 01 ;34cd
	inc c			; 0c ;34cf
l34d0h:
	ld bc,l011eh+1		; 01 1f 01 ;34d0
	ld c,001h		; 0e 01 ;34d3
	inc de			; 13 ;34d5
	ld bc,l0124h		; 01 24 01 ;34d6
	ld a,(de)			; 1a ;34d9
	ld bc,l011eh+2		; 01 20 01 ;34da
	nop			; 00 ;34dd
	ld bc,00122h		; 01 22 01 ;34de
	inc d			; 14 ;34e1
	ld bc,l0118h+1		; 01 19 01 ;34e2
	inc de			; 13 ;34e5
	ld bc,l010ah+2		; 01 0c 01 ;34e6
	ld hl,l1000h+1		; 21 01 10 ;34e9
	ld bc,l00ffh+1		; 01 00 01 ;34ec
	inc h			; 24 ;34ef
	ld bc,l0118h+2		; 01 1a 01 ;34f0
	jr nz,l34f6h		; 20 01 ;34f3
	nop			; 00 ;34f5
l34f6h:
	ld bc,l011eh+1		; 01 1f 01 ;34f6
	dec e			; 1d ;34f9
	ld bc,l0112h+2		; 01 14 01 ;34fa
	djnz l3500h		; 10 01 ;34fd
	rrca			; 0f ;34ff
l3500h:
	ld bc,l010ah+2		; 01 0c 01 ;3500
	nop			; 00 ;3503
	ld bc,l0112h+1		; 01 13 01 ;3504
	inc c			; 0c ;3507
	ld bc,0011dh		; 01 1d 01 ;3508
	rrca			; 0f ;350b
	ld bc,l010fh+1		; 01 10 01 ;350c
	dec e			; 1d ;350f
	ld bc,l00ffh+1		; 01 00 01 ;3510
	rla			; 17 ;3513
	ld bc,l010fh+1		; 01 10 01 ;3514
	ld hl,l1000h+1		; 21 01 10 ;3517
	ld bc,00117h		; 01 17 01 ;351a
	inc l			; 2c ;351d
	ld bc,l0124h		; 01 24 01 ;351e
	ld a,(de)			; 1a ;3521
	ld bc,l011eh+2		; 01 20 01 ;3522
	nop			; 00 ;3525
	ld bc,00117h		; 01 17 01 ;3526
	ld a,(de)			; 1a ;3529
	ld bc,l011eh		; 01 1e 01 ;352a
	djnz l3530h		; 10 01 ;352d
	rra			; 1f ;352f
l3530h:
	ld bc,0011dh		; 01 1d 01 ;3530
	inc h			; 24 ;3533
	ld bc,l00ffh+1		; 01 00 01 ;3534
	inc c			; 0c ;3537
	ld bc,l0112h		; 01 12 01 ;3538
	inc c			; 0c ;353b
	ld bc,l0112h+2		; 01 14 01 ;353c
	add hl,de			; 19 ;353f
	ld bc,l012ah+2		; 01 2c 01 ;3540
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
	ld hl,l3a08h		; 21 08 3a ;3557
	ld bc,start+2		; 01 02 00 ;355a
	jp sub_cp_ram_vram		; c3 2f 04 ;355d
l3560h:
	ld d,h			; 54 ;3560
	ld e,c			; 59 ;3561
	ld d,d			; 52 ;3562
	ld e,c			; 59 ;3563
	ld d,(hl)			; 56 ;3564
	ld e,c			; 59 ;3565
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
	ld b,005h		; 06 05 ;357c
	call sub_35ffh		; cd ff 35 ;357e
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
sub_35abh:
	.DB $02		;35ab
	ld (0c49dh),a		; 32 9d c4 ;35ac
	ret			; c9 ;35af
sub_35b0h:
	ld hl,0c4a7h		; 21 a7 c4 ;35b0
	ld a,(hl)			; 7e ;35b3
	or a			; b7 ;35b4
	ret z			; c8 ;35b5
	ld (hl),000h		; 36 00 ;35b6
	ld hl,(0c4a8h)		; 2a a8 c4 ;35b8
	ld de,(0c4aah)		; ed 5b aa c4 ;35bb
	.DB $ed $4b		;35bf
sub_35c1h:
	.DB $ac $c4		;35c1
	jp l0464h		; c3 64 04 ;35c3
sub_35c6h:
	ld hl,l35dch		; 21 dc 35 ;35c6
	xor a			; af ;35c9
	ld a,(0c04ah)		; 3a 4a c0 ;35ca
	rla			; 17 ;35cd
	ld e,a			; 5f ;35ce
	ld d,000h		; 16 00 ;35cf
	add hl,de			; 19 ;35d1
	ex de,hl			; eb ;35d2
	ld hl,l0013h+2		; 21 15 00 ;35d3
	ld b,002h		; 06 02 ;35d6
	call sub_0481h		; cd 81 04 ;35d8
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
	call l036ah		; cd 6a 03 ;35f4
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
	call l036ah		; cd 6a 03 ;3617
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
	call sub_0450h		; cd 50 04 ;3632
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
	call l036ah		; cd 6a 03 ;3648
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
	ld de,03719h		; 11 19 37 ;3671
	ld b,001h		; 06 01 ;3674
	call sub_0481h		; cd 81 04 ;3676
	ld a,005h		; 3e 05 ;3679
	call sub_35e6h		; cd e6 35 ;367b
	di			; f3 ;367e
	ld hl,start		; 21 00 00 ;367f
	ld de,l3708h		; 11 08 37 ;3682
	ld b,011h		; 06 11 ;3685
	call sub_0481h		; cd 81 04 ;3687
	call sub_03a4h		; cd a4 03 ;368a
	call l0386h+2		; cd 88 03 ;368d
	ld a,000h		; 3e 00 ;3690
	out (0bfh),a		; d3 bf ;3692
	ld a,089h		; 3e 89 ;3694
	out (0bfh),a		; d3 bf ;3696
	ld hl,l37e3h		; 21 e3 37 ;3698
	ld de,02600h		; 11 00 26 ;369b
	call sub_04b5h		; cd b5 04 ;369e
	ld hl,l3a5ah		; 21 5a 3a ;36a1
	ld de,l3783h		; 11 83 37 ;36a4
	ld bc,l0804h+2		; 01 06 08 ;36a7
	call l0464h		; cd 64 04 ;36aa
	ld hl,0371ah		; 21 1a 37 ;36ad
	call sub_03b7h		; cd b7 03 ;36b0
	ei			; fb ;36b3
	ld a,086h		; 3e 86 ;36b4
	ld (0de00h),a		; 32 00 de ;36b6
	call sub_03a0h		; cd a0 03 ;36b9
	ld a,040h		; 3e 40 ;36bc
	call sub_35e6h		; cd e6 35 ;36be
	ld hl,l3b60h		; 21 60 3b ;36c1
	ld de,l3777h		; 11 77 37 ;36c4
	ld bc,l0004h		; 01 04 00 ;36c7
	call sub_cp_ram_vram		; cd 2f 04 ;36ca
	ld a,005h		; 3e 05 ;36cd
	call sub_35e6h		; cd e6 35 ;36cf
	ld hl,l3b60h		; 21 60 3b ;36d2
	ld de,l377bh		; 11 7b 37 ;36d5
	ld bc,l0004h		; 01 04 00 ;36d8
	call sub_cp_ram_vram		; cd 2f 04 ;36db
	ld a,028h		; 3e 28 ;36de
	call sub_35e6h		; cd e6 35 ;36e0
	ld hl,l3b60h		; 21 60 3b ;36e3
	ld de,l3777h		; 11 77 37 ;36e6
	ld bc,l0004h		; 01 04 00 ;36e9
	call sub_cp_ram_vram		; cd 2f 04 ;36ec
	ld a,005h		; 3e 05 ;36ef
	call sub_35e6h		; cd e6 35 ;36f1
	ld hl,l3b60h		; 21 60 3b ;36f4
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
	ld a,(00306h)		; 3a 06 03 ;3718
	ret c			; d8 ;371b
	jr c,$+14		; 38 0e ;371c
	nop			; 00 ;371e
	inc h			; 24 ;371f
	ld bc,l0118h+2		; 01 1a 01 ;3720
	jr nz,l3726h		; 20 01 ;3723
	nop			; 00 ;3725
l3726h:
	ld bc,00122h		; 01 22 01 ;3726
	inc d			; 14 ;3729
	ld bc,l0118h+1		; 01 19 01 ;372a
	ld c,h			; 4c ;372d
	add hl,sp			; 39 ;372e
	ld e,000h		; 1e 00 ;372f
	ld c,001h		; 0e 01 ;3731
	ld a,(de)			; 1a ;3733
l3734h:
	ld bc,l0118h+1		; 01 19 01 ;3734
	ld (de),a			; 12 ;3737
	ld bc,0011dh		; 01 1d 01 ;3738
	inc c			; 0c ;373b
	ld bc,l011eh+1		; 01 1f 01 ;373c
	jr nz,l3742h		; 20 01 ;373f
	rla			; 17 ;3741
l3742h:
	ld bc,l010ah+2		; 01 0c 01 ;3742
	rra			; 1f ;3745
	ld bc,l0112h+2		; 01 14 01 ;3746
	ld a,(de)			; 1a ;3749
	ld bc,l0118h+1		; 01 19 01 ;374a
	ld e,001h		; 1e 01 ;374d
	sub d			; 92 ;374f
	add hl,sp			; 39 ;3750
	inc h			; 24 ;3751
	nop			; 00 ;3752
	inc h			; 24 ;3753
	ld bc,l0118h+2		; 01 1a 01 ;3754
	jr nz,l375ah		; 20 01 ;3757
	nop			; 00 ;3759
l375ah:
	ld bc,l010ah+2		; 01 0c 01 ;375a
	dec e			; 1d ;375d
	ld bc,l010fh+1		; 01 10 01 ;375e
	nop			; 00 ;3761
	ld bc,00122h		; 01 22 01 ;3762
	ld a,(de)			; 1a ;3765
	ld bc,l0118h+1		; 01 19 01 ;3766
	rrca			; 0f ;3769
	ld bc,l010fh+1		; 01 10 01 ;376a
	dec e			; 1d ;376d
	ld bc,l010fh+2		; 01 11 01 ;376e
	jr nz,l3774h		; 20 01 ;3771
	rla			; 17 ;3773
l3774h:
	ld bc,l012ah+1		; 01 2b 01 ;3774
l3777h:
	ld e,b			; 58 ;3777
	ld bc,l0159h		; 01 59 01 ;3778
l377bh:
	ld e,d			; 5a ;377b
	ld bc,l015bh		; 01 5b 01 ;377c
l377fh:
	ld b,h			; 44 ;377f
	ld bc,l0145h		; 01 45 01 ;3780
l3783h:
	nop			; 00 ;3783
	ld bc,l00ffh+1		; 01 00 01 ;3784
	jr nc,$+1		; 30 01 ;3787
	ld sp,03201h		; 31 01 32 ;3789
	ld bc,l0133h		; 01 33 01 ;378c
	inc (hl)			; 34 ;378f
	ld bc,l0133h+2		; 01 35 01 ;3790
	ld (hl),001h		; 36 01 ;3793
	ld (hl),001h		; 36 01 ;3795
	scf			; 37 ;3797
	ld bc,l0136h+2		; 01 38 01 ;3798
	add hl,sp			; 39 ;379b
	ld bc,l0136h		; 01 36 01 ;379c
	ld (hl),001h		; 36 01 ;379f
	ld (hl),001h		; 36 01 ;37a1
	ld (hl),001h		; 36 01 ;37a3
	ld a,(l3b01h)		; 3a 01 3b ;37a5
	ld bc,l013ch		; 01 3c 01 ;37a8
	dec a			; 3d ;37ab
	ld bc,l013ch+2		; 01 3e 01 ;37ac
	ccf			; 3f ;37af
	ld bc,00140h		; 01 40 01 ;37b0
	ld b,c			; 41 ;37b3
	ld bc,l0142h		; 01 42 01 ;37b4
	ld b,e			; 43 ;37b7
	ld bc,l0142h+2		; 01 44 01 ;37b8
	ld b,l			; 45 ;37bb
	ld bc,l0145h+1		; 01 46 01 ;37bc
	ld b,a			; 47 ;37bf
	ld bc,l0148h		; 01 48 01 ;37c0
	ld c,c			; 49 ;37c3
	ld bc,l0148h+2		; 01 4a 01 ;37c4
	ld c,e			; 4b ;37c7
	ld bc,0014ch		; 01 4c 01 ;37c8
	nop			; 00 ;37cb
	ld bc,0014dh		; 01 4d 01 ;37cc
	ld c,(hl)			; 4e ;37cf
	ld bc,0014fh		; 01 4f 01 ;37d0
	ld d,b			; 50 ;37d3
	ld bc,l0151h		; 01 51 01 ;37d4
	ld d,d			; 52 ;37d7
	ld bc,l0151h+2		; 01 53 01 ;37d8
	ld d,h			; 54 ;37db
	ld bc,00155h		; 01 55 01 ;37dc
	ld d,(hl)			; 56 ;37df
	ld bc,00157h		; 01 57 01 ;37e0
l37e3h:
	ld b,000h		; 06 00 ;37e3
	add a,d			; 82 ;37e5
	ccf			; 3f ;37e6
	rst 38h			; ff ;37e7
	inc b			; 04 ;37e8
	nop			; 00 ;37e9
	add a,h			; 84 ;37ea
	inc bc			; 03 ;37eb
	rlca			; 07 ;37ec
	pop hl			; e1 ;37ed
	cp 003h		; fe 03 ;37ee
	nop			; 00 ;37f0
	inc b			; 04 ;37f1
	rst 38h			; ff ;37f2
	add a,c			; 81 ;37f3
	ld a,a			; 7f ;37f4
	inc b			; 04 ;37f5
	nop			; 00 ;37f6
	add a,h			; 84 ;37f7
	ret nz			; c0 ;37f8
	ret po			; e0 ;37f9
	ret p			; f0 ;37fa
	ret m			; f8 ;37fb
	inc b			; 04 ;37fc
	nop			; 00 ;37fd
	add a,d			; 82 ;37fe
	ld bc,00302h+1		; 01 03 03 ;37ff
	rlca			; 07 ;3802
	add a,d			; 82 ;3803
	rra			; 1f ;3804
	ld a,a			; 7f ;3805
	dec c			; 0d ;3806
	rst 38h			; ff ;3807
	add a,l			; 85 ;3808
	rst 8			; cf ;3809
	rst 30h			; f7 ;380a
	ei			; fb ;380b
	.DB 0fdh,0feh,003h	;illegal sequence		;380c
	rst 38h			; ff ;380f
	ld (bc),a			; 02 ;3810
	ret m			; f8 ;3811
	inc bc			; 03 ;3812
	call m,07c81h		; fc 81 7c ;3813
	ld (bc),a			; 02 ;3816
	cp (hl)			; be ;3817
	inc bc			; 03 ;3818
	rrca			; 0f ;3819
	dec b			; 05 ;381a
	rra			; 1f ;381b
	ld b,0deh		; 06 de ;381c
	add a,e			; 83 ;381e
	cp 0deh		; fe de ;381f
	rra			; 1f ;3821
	inc bc			; 03 ;3822
	ld e,002h		; 1e 02 ;3823
	ld a,(de)			; 1a ;3825
	add a,e			; 83 ;3826
	dec c			; 0d ;3827
	rrca			; 0f ;3828
	ei			; fb ;3829
	dec b			; 05 ;382a
	rst 30h			; f7 ;382b
	add a,d			; 82 ;382c
	ret p			; f0 ;382d
	ld h,e			; 63 ;382e
	ld b,0ffh		; 06 ff ;382f
	add a,e			; 83 ;3831
	nop			; 00 ;3832
	ret nz			; c0 ;3833
l3834h:
	rst 38h			; ff ;3834
	inc bc			; 03 ;3835
	rst 0			; c7 ;3836
	ld (bc),a			; 02 ;3837
	rst 10h			; d7 ;3838
	add a,e			; 83 ;3839
	djnz $+23		; 10 17 ;383a
	sbc a,a			; 9f ;383c
	inc bc			; 03 ;383d
	sbc a,(hl)			; 9e ;383e
	ld (bc),a			; 02 ;383f
	ld e,084h		; 1e 84 ;3840
	rra			; 1f ;3842
	.DB 0edh;next byte illegal after ed		;3843
	sbc a,0feh		; de fe ;3844
	ld (bc),a			; 02 ;3846
l3847h:
	sbc a,002h		; de 02 ;3847
l3849h:
	cp (hl)			; be ;3849
	add a,h			; 84 ;384a
	ld a,(hl)			; 7e ;384b
	call m,sub_070eh		; fc 0e 07 ;384c
	dec b			; 05 ;384f
	inc bc			; 03 ;3850
	adc a,d			; 8a ;3851
	ld bc,l00cch		; 01 cc 00 ;3852
	add a,a			; 87 ;3855
	xor (hl)			; ae ;3856
	xor 0f3h		; ee f3 ;3857
	ret m			; f8 ;3859
	rst 38h			; ff ;385a
	ccf			; 3f ;385b
	ld (bc),a			; 02 ;385c
	rst 0			; c7 ;385d
	ld (bc),a			; 02 ;385e
	rst 28h			; ef ;385f
	sub e			; 93 ;3860
	sbc a,a			; 9f ;3861
	ld a,a			; 7f ;3862
	rst 38h			; ff ;3863
	ret m			; f8 ;3864
	add a,087h		; c6 87 ;3865
	adc a,l			; 8d ;3867
	adc a,l			; 8d ;3868
	sub e			; 93 ;3869
	sbc a,h			; 9c ;386a
	sbc a,a			; 9f ;386b
	ld (hl),001h		; 36 01 ;386c
	jp 0e7e3h		; c3 e3 e7 ;386e
	add a,a			; 87 ;3871
	daa			; 27 ;3872
	rst 20h			; e7 ;3873
	inc bc			; 03 ;3874
	call c,0bc03h		; dc 03 bc ;3875
	add a,h			; 84 ;3878
	cp b			; b8 ;3879
	ret m			; f8 ;387a
	ld bc,00300h		; 01 00 03 ;387b
	ld bc,l0003h		; 01 03 00 ;387e
	ld b,0ffh		; 06 ff ;3881
	ld (bc),a			; 02 ;3883
	ld a,a			; 7f ;3884
	inc bc			; 03 ;3885
l3886h:
	rst 38h			; ff ;3886
	add a,d			; 82 ;3887
	jp m,mul_de_bc_loop		; fa fc 03 ;3888
	rst 38h			; ff ;388b
	ld (bc),a			; 02 ;388c
	sbc a,a			; 9f ;388d
	ld (bc),a			; 02 ;388e
	ccf			; 3f ;388f
	inc b			; 04 ;3890
	rst 38h			; ff ;3891
l3892h:
	inc bc			; 03 ;3892
	rst 0			; c7 ;3893
	adc a,d			; 8a ;3894
	add a,0cfh		; c6 cf ;3895
	adc a,(hl)			; 8e ;3897
	adc a,a			; 8f ;3898
	sbc a,a			; 9f ;3899
	jr c,$-72		; 38 b8 ;389a
	cp b			; b8 ;389c
	ld a,b			; 78 ;389d
	ld (hl),b			; 70 ;389e
	inc bc			; 03 ;389f
	ret p			; f0 ;38a0
	add a,h			; 84 ;38a1
	ld a,a			; 7f ;38a2
	scf			; 37 ;38a3
	scf			; 37 ;38a4
	dec sp			; 3b ;38a5
	inc bc			; 03 ;38a6
	add hl,sp			; 39 ;38a7
	add a,(hl)			; 86 ;38a8
	dec de			; 1b ;38a9
	rst 38h			; ff ;38aa
	call m,0fffch		; fc fc ff ;38ab
	cp 004h		; fe 04 ;38ae
	rst 38h			; ff ;38b0
	ld (bc),a			; 02 ;38b1
	ld a,a			; 7f ;38b2
	ld (bc),a			; 02 ;38b3
	cp 087h		; fe 87 ;38b4
	.DB 0fdh,0fbh,0ffh	;illegal sequence		;38b6
	sbc a,a			; 9f ;38b9
	ccf			; 3f ;38ba
	ccf			; 3f ;38bb
	ld a,a			; 7f ;38bc
	inc b			; 04 ;38bd
	rst 38h			; ff ;38be
	rlca			; 07 ;38bf
	ret p			; f0 ;38c0
	add a,c			; 81 ;38c1
	ret po			; e0 ;38c2
	ex af,af'			; 08 ;38c3
l38c4h:
	nop			; 00 ;38c4
	inc b			; 04 ;38c5
	dec de			; 1b ;38c6
	add a,c			; 81 ;38c7
	dec bc			; 0b ;38c8
	inc bc			; 03 ;38c9
	nop			; 00 ;38ca
	dec b			; 05 ;38cb
	rst 38h			; ff ;38cc
	add a,e			; 83 ;38cd
	ld a,a			; 7f ;38ce
	ccf			; 3f ;38cf
	rrca			; 0f ;38d0
	dec b			; 05 ;38d1
	rst 38h			; ff ;38d2
	add a,e			; 83 ;38d3
	call m,0e0f8h		; fc f8 e0 ;38d4
	dec b			; 05 ;38d7
	rst 38h			; ff ;38d8
	add a,c			; 81 ;38d9
	inc bc			; 03 ;38da
	ld (bc),a			; 02 ;38db
	nop			; 00 ;38dc
	ld b,0e0h		; 06 e0 ;38dd
	sub a			; 97 ;38df
	ld h,b			; 60 ;38e0
	jr nz,$-1		; 20 ff ;38e1
	ret c			; d8 ;38e3
	adc a,(hl)			; 8e ;38e4
	adc a,a			; 8f ;38e5
	adc a,a			; 8f ;38e6
	sub e			; 93 ;38e7
	sbc a,h			; 9c ;38e8
	sbc a,a			; 9f ;38e9
	or 039h		; f6 39 ;38ea
	inc bc			; 03 ;38ec
	add a,e			; 83 ;38ed
	rst 20h			; e7 ;38ee
	rst 0			; c7 ;38ef
	daa			; 27 ;38f0
	rst 20h			; e7 ;38f1
	ret m			; f8 ;38f2
	ret po			; e0 ;38f3
	ret nz			; c0 ;38f4
	sub b			; 90 ;38f5
	sbc a,(hl)			; 9e ;38f6
	inc bc			; 03 ;38f7
	sbc a,a			; 9f ;38f8
	add a,l			; 85 ;38f9
	ld a,001h		; 3e 01 ;38fa
	inc bc			; 03 ;38fc
	inc bc			; 03 ;38fd
	ld h,a			; 67 ;38fe
	inc bc			; 03 ;38ff
	rst 20h			; e7 ;3900
	nop			; 00 ;3901
	ld h,a			; 67 ;3902
	nop			; 00 ;3903
l3904h:
	add a,c			; 81 ;3904
	inc c			; 0c ;3905
l3906h:
	rlca			; 07 ;3906
	nop			; 00 ;3907
	add a,d			; 82 ;3908
	ccf			; 3f ;3909
	nop			; 00 ;390a
	inc bc			; 03 ;390b
	djnz l3911h		; 10 03 ;390c
	jr nc,l3892h		; 30 82 ;390e
	ret m			; f8 ;3910
l3911h:
	nop			; 00 ;3911
	inc bc			; 03 ;3912
	ld b,b			; 40 ;3913
	ld (bc),a			; 02 ;3914
	ret nz			; c0 ;3915
	add a,c			; 81 ;3916
	ld b,b			; 40 ;3917
	djnz l391ah		; 10 00 ;3918
l391ah:
	and c			; a1 ;391a
	ld (bc),a			; 02 ;391b
	inc de			; 13 ;391c
	ccf			; 3f ;391d
	ccf			; 3f ;391e
	add hl,sp			; 39 ;391f
	ld sp,l3834h		; 31 34 38 ;3920
	ccf			; 3f ;3923
	rst 8			; cf ;3924
	rst 38h			; ff ;3925
	rra			; 1f ;3926
	rrca			; 0f ;3927
	rrca			; 0f ;3928
	ld e,a			; 5f ;3929
	ld a,a			; 7f ;392a
	rst 38h			; ff ;392b
	rst 20h			; e7 ;392c
	rst 38h			; ff ;392d
	pop af			; f1 ;392e
	jp po,0f4e2h		; e2 e2 f4 ;392f
	call m,0c0ffh		; fc ff c0 ;3932
	ret m			; f8 ;3935
	ret m			; f8 ;3936
	jr c,l3951h		; 38 18 ;3937
	ld e,b			; 58 ;3939
l393ah:
	jr c,$-8		; 38 f8 ;393a
	ld b,000h		; 06 00 ;393c
	ld (bc),a			; 02 ;393e
	ld b,b			; 40 ;393f
	add a,c			; 81 ;3940
	ld (bc),a			; 02 ;3941
	inc b			; 04 ;3942
	inc bc			; 03 ;3943
	ld (bc),a			; 02 ;3944
	ld bc,l007fh+2		; 01 81 00 ;3945
	inc b			; 04 ;3948
	ccf			; 3f ;3949
l394ah:
	add a,h			; 84 ;394a
	rra			; 1f ;394b
	sbc a,a			; 9f ;394c
	sbc a,a			; 9f ;394d
	rrca			; 0f ;394e
	inc bc			; 03 ;394f
	rst 38h			; ff ;3950
l3951h:
	add a,d			; 82 ;3951
	jp m,l05fch		; fa fc 05 ;3952
	rst 38h			; ff ;3955
	ld (bc),a			; 02 ;3956
	ld a,a			; 7f ;3957
	inc b			; 04 ;3958
	rst 38h			; ff ;3959
	inc bc			; 03 ;395a
	ret m			; f8 ;395b
	add a,l			; 85 ;395c
	ld sp,hl			; f9 ;395d
	pop af			; f1 ;395e
	pop af			; f1 ;395f
	ret p			; f0 ;3960
	ret po			; e0 ;3961
	inc bc			; 03 ;3962
	ret nz			; c0 ;3963
	ld (bc),a			; 02 ;3964
	add a,b			; 80 ;3965
	inc bc			; 03 ;3966
	nop			; 00 ;3967
	add a,l			; 85 ;3968
	rrca			; 0f ;3969
	rlca			; 07 ;396a
	rlca			; 07 ;396b
	inc bc			; 03 ;396c
	ld bc,l0003h		; 01 03 00 ;396d
	add a,e			; 83 ;3970
	rst 38h			; ff ;3971
	ret m			; f8 ;3972
	call m,0ff03h		; fc 03 ff ;3973
	adc a,(hl)			; 8e ;3976
	ld a,a			; 7f ;3977
	rra			; 1f ;3978
	rst 38h			; ff ;3979
	ccf			; 3f ;397a
	ld a,a			; 7f ;397b
	rst 38h			; ff ;397c
	rst 38h			; ff ;397d
	cp 0fch		; fe fc ;397e
	ret p			; f0 ;3980
	ret po			; e0 ;3981
	ret nz			; c0 ;3982
	ret nz			; c0 ;3983
	add a,b			; 80 ;3984
	inc e			; 1c ;3985
	nop			; 00 ;3986
	add a,d			; 82 ;3987
	ld h,a			; 67 ;3988
	ld a,b			; 78 ;3989
	inc b			; 04 ;398a
	ld a,a			; 7f ;398b
	add a,h			; 84 ;398c
	ccf			; 3f ;398d
	rrca			; 0f ;398e
	call z,0043ch		; cc 3c 04 ;398f
	call m,0f882h		; fc 82 f8 ;3992
	ret po			; e0 ;3995
	djnz l3998h		; 10 00 ;3996
l3998h:
	sub c			; 91 ;3998
	rst 20h			; e7 ;3999
	rst 38h			; ff ;399a
	rst 38h			; ff ;399b
	pop af			; f1 ;399c
	ret po			; e0 ;399d
	ret p			; f0 ;399e
	call m,0c9ffh		; fc ff c9 ;399f
	cp 0fch		; fe fc ;39a2
	call m,sub_1858h		; fc 58 18 ;39a4
	jr c,$-8		; 38 f8 ;39a7
	rst 20h			; e7 ;39a9
	inc bc			; 03 ;39aa
	rst 38h			; ff ;39ab
	adc a,h			; 8c ;39ac
	rst 28h			; ef ;39ad
	pop af			; f1 ;39ae
	cp 0ffh		; fe ff ;39af
	pop bc			; c1 ;39b1
	cp 0fch		; fe fc ;39b2
	call m,0b8f8h		; fc f8 b8 ;39b4
	ld a,b			; 78 ;39b7
	ret m			; f8 ;39b8
	nop			; 00 ;39b9
	ld h,a			; 67 ;39ba
	nop			; 00 ;39bb
	add a,c			; 81 ;39bc
	inc c			; 0c ;39bd
	rlca			; 07 ;39be
	nop			; 00 ;39bf
l39c0h:
	add a,d			; 82 ;39c0
	ccf			; 3f ;39c1
	nop			; 00 ;39c2
	inc bc			; 03 ;39c3
	djnz l39c9h		; 10 03 ;39c4
	jr nz,l394ah		; 20 82 ;39c6
	ret pe			; e8 ;39c8
l39c9h:
	nop			; 00 ;39c9
	inc bc			; 03 ;39ca
	ld b,b			; 40 ;39cb
	ld (bc),a			; 02 ;39cc
	ret nz			; c0 ;39cd
	add a,c			; 81 ;39ce
	ld b,b			; 40 ;39cf
	djnz l39d2h		; 10 00 ;39d0
l39d2h:
	add a,d			; 82 ;39d2
	ld (bc),a			; 02 ;39d3
	inc de			; 13 ;39d4
	ld (bc),a			; 02 ;39d5
	ccf			; 3f ;39d6
	ld (bc),a			; 02 ;39d7
	jr l39ddh		; 18 03 ;39d8
	nop			; 00 ;39da
	add a,l			; 85 ;39db
	ret nz			; c0 ;39dc
l39ddh:
	ret m			; f8 ;39dd
l39deh:
	jr l39e0h		; 18 00 ;39de
l39e0h:
	jr nz,l39e5h		; 20 03 ;39e0
l39e2h:
	nop			; 00 ;39e2
	add a,l			; 85 ;39e3
	rlca			; 07 ;39e4
l39e5h:
	ccf			; 3f ;39e5
	ld (hl),c			; 71 ;39e6
	ld h,b			; 60 ;39e7
	ld l,b			; 68 ;39e8
	inc bc			; 03 ;39e9
	ld h,b			; 60 ;39ea
	add a,c			; 81 ;39eb
	ret nz			; c0 ;39ec
	ld (bc),a			; 02 ;39ed
	ret m			; f8 ;39ee
	ld (bc),a			; 02 ;39ef
	jr c,l39f5h		; 38 03 ;39f0
	jr l39fah		; 18 06 ;39f2
	nop			; 00 ;39f4
l39f5h:
	add a,h			; 84 ;39f5
	ld b,b			; 40 ;39f6
	nop			; 00 ;39f7
l39f8h:
	ld (bc),a			; 02 ;39f8
	inc bc			; 03 ;39f9
l39fah:
	inc bc			; 03 ;39fa
	ld (bc),a			; 02 ;39fb
	ld (bc),a			; 02 ;39fc
	ld bc,l0007h		; 01 07 00 ;39fd
	add a,c			; 81 ;3a00
	add a,b			; 80 ;3a01
	add hl,bc			; 09 ;3a02
	nop			; 00 ;3a03
	ld (bc),a			; 02 ;3a04
	ld h,b			; 60 ;3a05
	ld (bc),a			; 02 ;3a06
	ld b,b			; 40 ;3a07
l3a08h:
	inc b			; 04 ;3a08
	nop			; 00 ;3a09
	inc bc			; 03 ;3a0a
	jr c,$-122		; 38 86 ;3a0b
	add hl,sp			; 39 ;3a0d
	jr nc,$+113		; 30 71 ;3a0e
	ld (hl),d			; 72 ;3a10
	ld h,d			; 62 ;3a11
	ret nz			; c0 ;3a12
	ld (bc),a			; 02 ;3a13
	ld b,b			; 40 ;3a14
	ld (bc),a			; 02 ;3a15
	add a,b			; 80 ;3a16
	inc c			; 0c ;3a17
	nop			; 00 ;3a18
	ld (bc),a			; 02 ;3a19
	inc bc			; 03 ;3a1a
	add a,d			; 82 ;3a1b
	nop			; 00 ;3a1c
	ld bc,l0004h		; 01 04 00 ;3a1d
	ld (bc),a			; 02 ;3a20
	add a,b			; 80 ;3a21
	ld (bc),a			; 02 ;3a22
	ld bc,0028bh		; 01 8b 02 ;3a23
	inc b			; 04 ;3a26
	nop			; 00 ;3a27
	ld h,d			; 62 ;3a28
	jp nc,092d2h		; d2 d2 92 ;3a29
	inc de			; 13 ;3a2c
	add hl,bc			; 09 ;3a2d
	add hl,bc			; 09 ;3a2e
	dec c			; 0d ;3a2f
	ld c,000h		; 0e 00 ;3a30
	add a,d			; 82 ;3a32
	inc bc			; 03 ;3a33
	rlca			; 07 ;3a34
	dec b			; 05 ;3a35
l3a36h:
	nop			; 00 ;3a36
	sub e			; 93 ;3a37
	ld a,a			; 7f ;3a38
	rst 38h			; ff ;3a39
	rst 38h			; ff ;3a3a
	ld h,b			; 60 ;3a3b
	jr c,l3a5dh		; 38 1f ;3a3c
	rrca			; 0f ;3a3e
	nop			; 00 ;3a3f
	add a,b			; 80 ;3a40
	ret nz			; c0 ;3a41
	ret p			; f0 ;3a42
	inc c			; 0c ;3a43
	jr c,l3a36h		; 38 f0 ;3a44
	ret po			; e0 ;3a46
	nop			; 00 ;3a47
	inc bc			; 03 ;3a48
	rlca			; 07 ;3a49
l3a4ah:
	rra			; 1f ;3a4a
	dec b			; 05 ;3a4b
	dec b			; 05 ;3a4c
	add a,c			; 81 ;3a4d
	.DB 0fdh,002h,0ffh	;illegal sequence		;3a4e
	ld b,000h		; 06 00 ;3a51
	and b			; a0 ;3a53
	add a,b			; 80 ;3a54
	ret nz			; c0 ;3a55
	rlca			; 07 ;3a56
	ccf			; 3f ;3a57
	ld a,a			; 7f ;3a58
	ld (hl),e			; 73 ;3a59
l3a5ah:
	ld h,b			; 60 ;3a5a
	ld h,d			; 62 ;3a5b
	ld h,b			; 60 ;3a5c
l3a5dh:
	ld h,b			; 60 ;3a5d
	ret			; c9 ;3a5e
	cp 0fch		; fe fc ;3a5f
	call m,sub_5878h		; fc 78 58 ;3a61
	jr l3a7eh		; 18 18 ;3a64
	rlca			; 07 ;3a66
	rra			; 1f ;3a67
	ccf			; 3f ;3a68
	ld a,a			; 7f ;3a69
	ld l,a			; 6f ;3a6a
	ld h,c			; 61 ;3a6b
	ld h,b			; 60 ;3a6c
	ld h,b			; 60 ;3a6d
	pop bc			; c1 ;3a6e
	cp 0fch		; fe fc ;3a6f
	call m,098f8h		; fc f8 98 ;3a71
	ld (bc),a			; 02 ;3a74
	jr l3a77h		; 18 00 ;3a75
l3a77h:
	ld c,000h		; 0e 00 ;3a77
	add a,d			; 82 ;3a79
	ld e,001h		; 1e 01 ;3a7a
	rlca			; 07 ;3a7c
	nop			; 00 ;3a7d
l3a7eh:
	add a,c			; 81 ;3a7e
	add a,b			; 80 ;3a7f
	jr nz,l3a82h		; 20 00 ;3a80
l3a82h:
	add a,l			; 85 ;3a82
	jr nc,l3a8dh		; 30 08 ;3a83
l3a85h:
	inc b			; 04 ;3a85
	ld (bc),a			; 02 ;3a86
	ld bc,l0008h		; 01 08 00 ;3a87
	add a,c			; 81 ;3a8a
	add a,b			; 80 ;3a8b
	ld (bc),a			; 02 ;3a8c
l3a8dh:
	ld b,b			; 40 ;3a8d
l3a8eh:
	ex af,af'			; 08 ;3a8e
	nop			; 00 ;3a8f
	ld b,020h		; 06 20 ;3a90
	add a,e			; 83 ;3a92
	nop			; 00 ;3a93
	jr nz,l3a96h		; 20 00 ;3a94
l3a96h:
	inc bc			; 03 ;3a96
	ld bc,l0502h		; 01 02 05 ;3a97
	add a,e			; 83 ;3a9a
	ld (bc),a			; 02 ;3a9b
	nop			; 00 ;3a9c
	inc b			; 04 ;3a9d
	dec b			; 05 ;3a9e
	ex af,af'			; 08 ;3a9f
	add a,d			; 82 ;3aa0
	rrca			; 0f ;3aa1
l3aa2h:
	sub b			; 90 ;3aa2
	ld b,000h		; 06 00 ;3aa3
	add a,c			; 81 ;3aa5
	rst 38h			; ff ;3aa6
	ld (bc),a			; 02 ;3aa7
	nop			; 00 ;3aa8
	inc bc			; 03 ;3aa9
	jr z,l3aaeh		; 28 02 ;3aaa
	ex af,af'			; 08 ;3aac
	add a,e			; 83 ;3aad
l3aaeh:
	rst 8			; cf ;3aae
	nop			; 00 ;3aaf
	ld h,b			; 60 ;3ab0
	dec b			; 05 ;3ab1
	ld hl,0a084h		; 21 84 a0 ;3ab2
	ld (de),a			; 12 ;3ab5
	jr nz,l3ab8h		; 20 00 ;3ab6
l3ab8h:
	ld (bc),a			; 02 ;3ab8
	jr nz,l3abdh		; 20 02 ;3ab9
	ld b,b			; 40 ;3abb
	add a,e			; 83 ;3abc
l3abdh:
	add a,b			; 80 ;3abd
l3abeh:
	nop			; 00 ;3abe
	ld bc,l0007h		; 01 07 00 ;3abf
	add a,a			; 87 ;3ac2
	jr nz,l3a85h		; 20 c0 ;3ac3
	ld b,b			; 40 ;3ac5
	ld b,b			; 40 ;3ac6
	nop			; 00 ;3ac7
	ex af,af'			; 08 ;3ac8
	rlca			; 07 ;3ac9
	inc bc			; 03 ;3aca
	nop			; 00 ;3acb
	add a,l			; 85 ;3acc
	jr nz,l3adfh		; 20 10 ;3acd
	djnz l3af1h		; 10 20 ;3acf
	add a,b			; 80 ;3ad1
	inc bc			; 03 ;3ad2
	nop			; 00 ;3ad3
	adc a,(hl)			; 8e ;3ad4
	ex af,af'			; 08 ;3ad5
	djnz l3ae8h		; 10 10 ;3ad6
	ex af,af'			; 08 ;3ad8
	inc bc			; 03 ;3ad9
	nop			; 00 ;3ada
	add hl,bc			; 09 ;3adb
	ld b,004h		; 06 04 ;3adc
	inc b			; 04 ;3ade
l3adfh:
	nop			; 00 ;3adf
	jr nz,l3aa2h		; 20 c0 ;3ae0
l3ae2h:
	nop			; 00 ;3ae2
	inc bc			; 03 ;3ae3
	jr nz,l3ae9h		; 20 03 ;3ae4
	ld b,b			; 40 ;3ae6
	dec d			; 15 ;3ae7
l3ae8h:
	nop			; 00 ;3ae8
l3ae9h:
	add a,d			; 82 ;3ae9
	dec b			; 05 ;3aea
	inc bc			; 03 ;3aeb
	dec b			; 05 ;3aec
	nop			; 00 ;3aed
	ld (bc),a			; 02 ;3aee
	add a,b			; 80 ;3aef
	ld (hl),b			; 70 ;3af0
l3af1h:
	nop			; 00 ;3af1
	adc a,e			; 8b ;3af2
	djnz l3b01h		; 10 0c ;3af3
	inc bc			; 03 ;3af5
	nop			; 00 ;3af6
	add hl,bc			; 09 ;3af7
	ld b,004h		; 06 04 ;3af8
	inc b			; 04 ;3afa
	nop			; 00 ;3afb
	jr nz,l3abeh		; 20 c0 ;3afc
	add hl,bc			; 09 ;3afe
	nop			; 00 ;3aff
	add a,d			; 82 ;3b00
l3b01h:
	.DB $01 $06		;3b01
l3b03h:
	.DB $02		;3b03
	inc b			; 04 ;3b04
	inc b			; 04 ;3b05
	nop			; 00 ;3b06
	nop			; 00 ;3b07
l3b08h:
	jr nc,l3b49h		; 30 3f ;3b08
	scf			; 37 ;3b0a
l3b0bh:
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
l3b16h:
	nop			; 00 ;3b16
	nop			; 00 ;3b17
	nop			; 00 ;3b18
	inc bc			; 03 ;3b19
	nop			; 00 ;3b1a
l3b1bh:
	inc b			; 04 ;3b1b
	nop			; 00 ;3b1c
	ret c			; d8 ;3b1d
	inc bc			; 03 ;3b1e
	rrca			; 0f ;3b1f
	jr $+48		; 18 30 ;3b20
	nop			; 00 ;3b22
	ld e,03fh		; 1e 3f ;3b23
	rst 38h			; ff ;3b25
	rst 38h			; ff ;3b26
	cp 018h		; fe 18 ;3b27
	ret po			; e0 ;3b29
	ld a,a			; 7f ;3b2a
	ld a,(hl)			; 7e ;3b2b
	ret z			; c8 ;3b2c
	adc a,b			; 88 ;3b2d
	ret p			; f0 ;3b2e
	ret m			; f8 ;3b2f
	call nz,sub_3f63h		; c4 63 3f ;3b30
	rrca			; 0f ;3b33
	rlca			; 07 ;3b34
	ld bc,start		; 01 00 00 ;3b35
	ld bc,0e006h		; 01 06 e0 ;3b38
	call m,0e106h		; fc 06 e1 ;3b3b
	ccf			; 3f ;3b3e
	rst 28h			; ef ;3b3f
	sbc a,h			; 9c ;3b40
	ld l,h			; 6c ;3b41
	rlca			; 07 ;3b42
	ccf			; 3f ;3b43
	rst 38h			; ff ;3b44
	cp 0e7h		; fe e7 ;3b45
	adc a,a			; 8f ;3b47
l3b48h:
	sub c			; 91 ;3b48
l3b49h:
	or c			; b1 ;3b49
l3b4ah:
	ret p			; f0 ;3b4a
	di			; f3 ;3b4b
	ld (0cf66h),a		; 32 66 cf ;3b4c
	adc a,a			; 8f ;3b4f
	sbc a,b			; 98 ;3b50
	ld sp,0e000h		; 31 00 e0 ;3b51
l3b54h:
	jr nz,l3bb7h		; 20 61 ;3b54
	pop bc			; c1 ;3b56
	add a,e			; 83 ;3b57
	add a,l			; 85 ;3b58
	dec bc			; 0b ;3b59
	ld h,a			; 67 ;3b5a
	rst 38h			; ff ;3b5b
	and b			; a0 ;3b5c
	rrca			; 0f ;3b5d
	ld sp,hl			; f9 ;3b5e
	ret po			; e0 ;3b5f
l3b60h:
	ld hl,08043h		; 21 43 80 ;3b60
	pop bc			; c1 ;3b63
	inc hl			; 23 ;3b64
	ld (de),a			; 12 ;3b65
	rst 30h			; f7 ;3b66
	rst 30h			; f7 ;3b67
	and l			; a5 ;3b68
	dec l			; 2d ;3b69
	call m,031feh		; fc fe 31 ;3b6a
	ld e,c			; 59 ;3b6d
	sbc a,a			; 9f ;3b6e
	cp a			; bf ;3b6f
	ld h,a			; 67 ;3b70
	call sub_7c38h		; cd 38 7c ;3b71
	ld b,(hl)			; 46 ;3b74
	jp nz,0fe02h		; c2 02 fe ;3b75
	ld (bc),a			; 02 ;3b78
	ld (00cdah),a		; 32 da 0c ;3b79
	add hl,bc			; 09 ;3b7c
	ld c,00eh		; 0e 0e ;3b7d
	add hl,bc			; 09 ;3b7f
	inc c			; 0c ;3b80
	ld b,003h		; 06 03 ;3b81
	adc a,b			; 88 ;3b83
	jr l3bc5h		; 18 3f ;3b84
	ld a,(hl)			; 7e ;3b86
	jp nz,l1804h		; c2 04 18 ;3b87
l3b8ah:
	ret po			; e0 ;3b8a
	and c			; a1 ;3b8b
	and b			; a0 ;3b8c
	jr nz,l3bbfh		; 20 30 ;3b8d
	rra			; 1f ;3b8f
	rrca			; 0f ;3b90
	nop			; 00 ;3b91
	nop			; 00 ;3b92
	pop hl			; e1 ;3b93
	ret nz			; c0 ;3b94
	ex af,af'			; 08 ;3b95
	inc e			; 1c ;3b96
	rst 30h			; f7 ;3b97
	jp start		; c3 00 00 ;3b98
	or (hl)			; b6 ;3b9b
	jp pe,l2d14h		; ea 14 2d ;3b9c
	rst 28h			; ef ;3b9f
	sbc a,a			; 9f ;3ba0
	ld de,l3c35h		; 11 35 3c ;3ba1
	add a,c			; 81 ;3ba4
	jp po,l0eb9h		; e2 b9 0e ;3ba5
	ld bc,start		; 01 00 00 ;3ba8
	ld c,l			; 4d ;3bab
	sbc a,b			; 98 ;3bac
	ld h,b			; 60 ;3bad
	add a,(hl)			; 86 ;3bae
	dec sp			; 3b ;3baf
	pop bc			; c1 ;3bb0
	nop			; 00 ;3bb1
	nop			; 00 ;3bb2
	sbc a,d			; 9a ;3bb3
	ld (l316ch),a		; 32 6c 31 ;3bb4
l3bb7h:
	rlca			; 07 ;3bb7
	call m,start		; fc 00 00 ;3bb8
	ld (hl),d			; 72 ;3bbb
	ld d,e			; 53 ;3bbc
	exx			; d9 ;3bbd
	adc a,b			; 88 ;3bbe
l3bbfh:
	ld c,003h		; 0e 03 ;3bbf
	nop			; 00 ;3bc1
	; "Super" (somewhere here)
	nop			; 00 ;3bc2
	ld c,01ah		; 0e 1a ;3bc3
l3bc5h:
	jp p,l1c06h		; f2 06 1c ;3bc5
	ret m			; f8 ;3bc8
	nop			; 00 ;3bc9
	nop			; 00 ;3bca
	ccf			; 3f ;3bcb
	ld a,(hl)			; 7e ;3bcc
	ld c,d			; 4a ;3bcd
	ld d,d			; 52 ;3bce
	ld a,h			; 7c ;3bcf
	ld a,h			; 7c ;3bd0
	ld c,b			; 48 ;3bd1
	jr nc,l3bd4h		; 30 00 ;3bd2
l3bd4h:
	ld a,a			; 7f ;3bd4
	inc b			; 04 ;3bd5
	ld b,b			; 40 ;3bd6
	add a,h			; 84 ;3bd7
	ld a,a			; 7f ;3bd8
	nop			; 00 ;3bd9
	nop			; 00 ;3bda
	rst 38h			; ff ;3bdb
	inc b			; 04 ;3bdc
	nop			; 00 ;3bdd
	add a,h			; 84 ;3bde
	call m,l0004h		; fc 04 00 ;3bdf
l3be2h:
	rst 38h			; ff ;3be2
	rlca			; 07 ;3be3
	nop			; 00 ;3be4
	add a,c			; 81 ;3be5
	ld a,a			; 7f ;3be6
	ld b,040h		; 06 40 ;3be7
	add a,d			; 82 ;3be9
	nop			; 00 ;3bea
	rst 38h			; ff ;3beb
	inc b			; 04 ;3bec
	nop			; 00 ;3bed
	add a,h			; 84 ;3bee
	rrca			; 0f ;3bef
	ex af,af'			; 08 ;3bf0
	nop			; 00 ;3bf1
	rst 38h			; ff ;3bf2
	inc b			; 04 ;3bf3
	nop			; 00 ;3bf4
	sub h			; 94 ;3bf5
	rst 38h			; ff ;3bf6
	nop			; 00 ;3bf7
	nop			; 00 ;3bf8
	call m,01008h		; fc 08 10 ;3bf9
	jr nz,l3c3eh		; 20 40 ;3bfc
	add a,b			; 80 ;3bfe
	nop			; 00 ;3bff
	nop			; 00 ;3c00
	ret po			; e0 ;3c01
	djnz l3c14h		; 10 10 ;3c02
	ex af,af'			; 08 ;3c04
	inc b			; 04 ;3c05
	inc b			; 04 ;3c06
	ld (bc),a			; 02 ;3c07
	nop			; 00 ;3c08
	rlca			; 07 ;3c09
	ld b,004h		; 06 04 ;3c0a
	ld (bc),a			; 02 ;3c0c
	nop			; 00 ;3c0d
	add a,d			; 82 ;3c0e
	ld bc,l0206h		; 01 06 02 ;3c0f
	ex af,af'			; 08 ;3c12
	ld (bc),a			; 02 ;3c13
l3c14h:
	djnz $-125		; 10 83 ;3c14
	nop			; 00 ;3c16
	ccf			; 3f ;3c17
l3c18h:
	ret nz			; c0 ;3c18
	ld b,000h		; 06 00 ;3c19
	add a,e			; 83 ;3c1b
	ret p			; f0 ;3c1c
	ld c,001h		; 0e 01 ;3c1d
	inc bc			; 03 ;3c1f
	nop			; 00 ;3c20
	add a,c			; 81 ;3c21
l3c22h:
	ld a,b			; 78 ;3c22
	inc bc			; 03 ;3c23
	nop			; 00 ;3c24
	add a,e			; 83 ;3c25
l3c26h:
	add a,b			; 80 ;3c26
	ld h,b			; 60 ;3c27
	jr $+10		; 18 0a ;3c28
	inc b			; 04 ;3c2a
	ex af,af'			; 08 ;3c2b
	nop			; 00 ;3c2c
	ex af,af'			; 08 ;3c2d
	ld b,b			; 40 ;3c2e
	ex af,af'			; 08 ;3c2f
	ex af,af'			; 08 ;3c30
	ld (bc),a			; 02 ;3c31
	ld bc,l0006h		; 01 06 00 ;3c32
l3c35h:
	ld (bc),a			; 02 ;3c35
	inc b			; 04 ;3c36
	add a,a			; 87 ;3c37
	add a,h			; 84 ;3c38
	ld b,h			; 44 ;3c39
	ld b,h			; 44 ;3c3a
	inc h			; 24 ;3c3b
	inc e			; 1c ;3c3c
	nop			; 00 ;3c3d
l3c3eh:
	djnz l3c44h		; 10 04 ;3c3e
	jr nz,l3c44h		; 20 02 ;3c40
	djnz $-125		; 10 83 ;3c42
l3c44h:
	ex af,af'			; 08 ;3c44
	ld bc,00302h		; 01 02 03 ;3c45
	inc b			; 04 ;3c48
	add a,h			; 84 ;3c49
	ld (bc),a			; 02 ;3c4a
	ld bc,08700h		; 01 00 87 ;3c4b
	ld b,000h		; 06 00 ;3c4e
	add a,h			; 84 ;3c50
	add a,b			; 80 ;3c51
	ex af,af'			; 08 ;3c52
	ret nc			; d0 ;3c53
	jr nz,l3c5bh		; 20 05 ;3c54
	nop			; 00 ;3c56
	add a,d			; 82 ;3c57
	ex af,af'			; 08 ;3c58
	rrca			; 0f ;3c59
	inc b			; 04 ;3c5a
l3c5bh:
	nop			; 00 ;3c5b
	add a,l			; 85 ;3c5c
	rrca			; 0f ;3c5d
	ex af,af'			; 08 ;3c5e
	ex af,af'			; 08 ;3c5f
	ld b,001h		; 06 01 ;3c60
	ex af,af'			; 08 ;3c62
	nop			; 00 ;3c63
	adc a,l			; 8d ;3c64
	add a,b			; 80 ;3c65
	ld b,b			; 40 ;3c66
	jr nc,l3c71h		; 30 08 ;3c67
	ld b,000h		; 06 00 ;3c69
	jr c,l3c91h		; 38 24 ;3c6b
	inc h			; 24 ;3c6d
	ld (02121h),hl		; 22 21 21 ;3c6e
l3c71h:
	jr nz,l3c7ah		; 20 07 ;3c71
	nop			; 00 ;3c73
	adc a,b			; 88 ;3c74
	add a,b			; 80 ;3c75
	ld b,b			; 40 ;3c76
	ld b,b			; 40 ;3c77
	jr nz,l3c8ah		; 20 10 ;3c78
l3c7ah:
	djnz l3c84h		; 10 08 ;3c7a
	rlca			; 07 ;3c7c
	add a,c			; 81 ;3c7d
	nop			; 00 ;3c7e
	nop			; 00 ;3c7f
	inc b			; 04 ;3c80
	nop			; 00 ;3c81
	ret c			; d8 ;3c82
	inc bc			; 03 ;3c83
l3c84h:
	ld c,01fh		; 0e 1f ;3c84
l3c86h:
	ccf			; 3f ;3c86
	nop			; 00 ;3c87
	ld e,033h		; 1e 33 ;3c88
l3c8ah:
	pop hl			; e1 ;3c8a
	add a,c			; 81 ;3c8b
	ld b,0f8h		; 06 f8 ;3c8c
	ret po			; e0 ;3c8e
	ld h,c			; 61 ;3c8f
	ld b,(hl)			; 46 ;3c90
l3c91h:
	ret m			; f8 ;3c91
	ret m			; f8 ;3c92
	sub b			; 90 ;3c93
	adc a,b			; 88 ;3c94
	call nz,03063h		; c4 63 30 ;3c95
	inc c			; 0c ;3c98
	rlca			; 07 ;3c99
	ld bc,start		; 01 00 00 ;3c9a
	ld bc,0e006h		; 01 06 e0 ;3c9d
	inc e			; 1c ;3ca0
l3ca1h:
	cp 0ffh		; fe ff ;3ca1
	jr c,l3ca1h		; 38 fc ;3ca3
	sbc a,h			; 9c ;3ca5
l3ca6h:
	ld l,h			; 6c ;3ca6
	rlca			; 07 ;3ca7
	jr c,$-1		; 38 ff ;3ca8
	rst 38h			; ff ;3caa
	call po,09188h		; e4 88 91 ;3cab
	or c			; b1 ;3cae
	ret p			; f0 ;3caf
	inc de			; 13 ;3cb0
	di			; f3 ;3cb1
	rst 20h			; e7 ;3cb2
	call z,09888h		; cc 88 98 ;3cb3
	ld sp,0e000h		; 31 00 e0 ;3cb6
	ret po			; e0 ;3cb9
	pop hl			; e1 ;3cba
	ld b,c			; 41 ;3cbb
	add a,d			; 82 ;3cbc
	add a,l			; 85 ;3cbd
	dec bc			; 0b ;3cbe
	ld h,a			; 67 ;3cbf
	cp b			; b8 ;3cc0
	rst 38h			; ff ;3cc1
	rst 38h			; ff ;3cc2
	add hl,de			; 19 ;3cc3
	jr nz,$+33		; 20 21 ;3cc4
	ld b,e			; 43 ;3cc6
	add a,b			; 80 ;3cc7
	ld b,c			; 41 ;3cc8
	ex (sp),hl			; e3 ;3cc9
	di			; f3 ;3cca
	sub (hl)			; 96 ;3ccb
l3ccch:
	sub h			; 94 ;3ccc
	and l			; a5 ;3ccd
	dec l			; 2d ;3cce
	call m,0ff82h		; fc 82 ff ;3ccf
	rst 18h			; df ;3cd2
	sbc a,c			; 99 ;3cd3
	or e			; b3 ;3cd4
	ld h,a			; 67 ;3cd5
l3cd6h:
	call sub_6c38h		; cd 38 6c ;3cd6
	ld a,(hl)			; 7e ;3cd9
	cp 002h		; fe 02 ;3cda
	sub d			; 92 ;3cdc
	ld (bc),a			; 02 ;3cdd
	ld (l0f02h),a		; 32 02 0f ;3cde
	ld (bc),a			; 02 ;3ce1
	ld c,002h		; 0e 02 ;3ce2
	rrca			; 0f ;3ce4
	sub b			; 90 ;3ce5
	ld b,003h		; 06 03 ;3ce6
	adc a,a			; 8f ;3ce8
	rra			; 1f ;3ce9
	ccf			; 3f ;3cea
	ld a,(hl)			; 7e ;3ceb
	cp 0fch		; fe fc ;3cec
	jr $-32		; 18 e0 ;3cee
	cp a			; bf ;3cf0
	cp a			; bf ;3cf1
	jr nz,l3d24h		; 20 30 ;3cf2
	jr l3d05h		; 18 0f ;3cf4
	ld (bc),a			; 02 ;3cf6
	nop			; 00 ;3cf7
	ld (bc),a			; 02 ;3cf8
	rst 38h			; ff ;3cf9
	cp (hl)			; be ;3cfa
	ex af,af'			; 08 ;3cfb
	inc e			; 1c ;3cfc
	halt			; 76 ;3cfd
	jp start		; c3 00 00 ;3cfe
	cp a			; bf ;3d01
	ei			; fb ;3d02
	inc d			; 14 ;3d03
	dec l			; 2d ;3d04
l3d05h:
	ld l,c			; 69 ;3d05
	sbc a,e			; 9b ;3d06
	dec e			; 1d ;3d07
	dec a			; 3d ;3d08
	rst 38h			; ff ;3d09
	rst 38h			; ff ;3d0a
	jp po,l0fb9h		; e2 b9 0f ;3d0b
	ld bc,start		; 01 00 00 ;3d0e
	rst 8			; cf ;3d11
	sbc a,a			; 9f ;3d12
	ld h,b			; 60 ;3d13
	add a,(hl)			; 86 ;3d14
	ei			; fb ;3d15
l3d16h:
	pop bc			; c1 ;3d16
	nop			; 00 ;3d17
	nop			; 00 ;3d18
	ei			; fb ;3d19
	di			; f3 ;3d1a
	ld l,h			; 6c ;3d1b
	ld sp,0fcffh		; 31 ff fc ;3d1c
	nop			; 00 ;3d1f
	nop			; 00 ;3d20
	cp 0dfh		; fe df ;3d21
	exx			; d9 ;3d23
l3d24h:
	adc a,b			; 88 ;3d24
	rrca			; 0f ;3d25
	inc bc			; 03 ;3d26
	nop			; 00 ;3d27
	nop			; 00 ;3d28
	ld c,01eh		; 0e 1e ;3d29
	jp p,0fc06h		; f2 06 fc ;3d2b
	ret m			; f8 ;3d2e
	nop			; 00 ;3d2f
	nop			; 00 ;3d30
	dec h			; 25 ;3d31
	ld l,d			; 6a ;3d32
	ld a,d			; 7a ;3d33
	ld (hl),d			; 72 ;3d34
	ld d,h			; 54 ;3d35
	ld b,h			; 44 ;3d36
	ld c,b			; 48 ;3d37
	jr nc,l3d3ch		; 30 02 ;3d38
	nop			; 00 ;3d3a
	inc b			; 04 ;3d3b
l3d3ch:
	ccf			; 3f ;3d3c
	inc b			; 04 ;3d3d
	nop			; 00 ;3d3e
	inc b			; 04 ;3d3f
	rst 38h			; ff ;3d40
	ld (bc),a			; 02 ;3d41
	inc bc			; 03 ;3d42
	ld (bc),a			; 02 ;3d43
	nop			; 00 ;3d44
	ld b,0ffh		; 06 ff ;3d45
	ld (bc),a			; 02 ;3d47
	nop			; 00 ;3d48
	ld b,03fh		; 06 3f ;3d49
	ld (bc),a			; 02 ;3d4b
	nop			; 00 ;3d4c
	inc b			; 04 ;3d4d
	rst 38h			; ff ;3d4e
	ld (bc),a			; 02 ;3d4f
	ret p			; f0 ;3d50
	ld (bc),a			; 02 ;3d51
	nop			; 00 ;3d52
	inc b			; 04 ;3d53
	rst 38h			; ff ;3d54
	inc b			; 04 ;3d55
	nop			; 00 ;3d56
	add a,h			; 84 ;3d57
	ret p			; f0 ;3d58
	ret po			; e0 ;3d59
	ret nz			; c0 ;3d5a
	add a,b			; 80 ;3d5b
	inc b			; 04 ;3d5c
	nop			; 00 ;3d5d
	ld (bc),a			; 02 ;3d5e
	ret po			; e0 ;3d5f
	add a,h			; 84 ;3d60
	ret p			; f0 ;3d61
	ret m			; f8 ;3d62
	ret m			; f8 ;3d63
	call m,start+2		; fc 02 00 ;3d64
	ld b,003h		; 06 03 ;3d67
	inc bc			; 03 ;3d69
	nop			; 00 ;3d6a
	add a,c			; 81 ;3d6b
	ld bc,l0702h		; 01 02 07 ;3d6c
	ld (bc),a			; 02 ;3d6f
	rrca			; 0f ;3d70
	ld (bc),a			; 02 ;3d71
	nop			; 00 ;3d72
	add a,c			; 81 ;3d73
	ccf			; 3f ;3d74
	dec b			; 05 ;3d75
	rst 38h			; ff ;3d76
	ld (bc),a			; 02 ;3d77
	nop			; 00 ;3d78
	add a,d			; 82 ;3d79
	ret p			; f0 ;3d7a
	cp 003h		; fe 03 ;3d7b
	rst 38h			; ff ;3d7d
	add a,c			; 81 ;3d7e
	add a,a			; 87 ;3d7f
	inc b			; 04 ;3d80
	nop			; 00 ;3d81
	add a,d			; 82 ;3d82
	add a,b			; 80 ;3d83
	ret po			; e0 ;3d84
	ld (bc),a			; 02 ;3d85
	ret m			; f8 ;3d86
	ex af,af'			; 08 ;3d87
	inc bc			; 03 ;3d88
	ex af,af'			; 08 ;3d89
	rst 38h			; ff ;3d8a
	ex af,af'			; 08 ;3d8b
	ccf			; 3f ;3d8c
	ex af,af'			; 08 ;3d8d
	ret p			; f0 ;3d8e
	ld (bc),a			; 02 ;3d8f
	cp 006h		; fe 06 ;3d90
	rst 38h			; ff ;3d92
	inc bc			; 03 ;3d93
	inc bc			; 03 ;3d94
	ld (bc),a			; 02 ;3d95
l3d96h:
	add a,e			; 83 ;3d96
	add a,h			; 84 ;3d97
	jp 0ffe3h		; c3 e3 ff ;3d98
	rrca			; 0f ;3d9b
	inc b			; 04 ;3d9c
	rra			; 1f ;3d9d
	ld (bc),a			; 02 ;3d9e
	rrca			; 0f ;3d9f
	add a,e			; 83 ;3da0
	rlca			; 07 ;3da1
	cp 0fch		; fe fc ;3da2
	inc bc			; 03 ;3da4
	ret m			; f8 ;3da5
	add a,e			; 83 ;3da6
	call m,0fffeh		; fc fe ff ;3da7
	ex af,af'			; 08 ;3daa
	nop			; 00 ;3dab
	add a,d			; 82 ;3dac
	ret p			; f0 ;3dad
	jr nz,l3db6h		; 20 06 ;3dae
	nop			; 00 ;3db0
	ld (bc),a			; 02 ;3db1
	ret p			; f0 ;3db2
	inc b			; 04 ;3db3
	rst 38h			; ff ;3db4
	ld (bc),a			; 02 ;3db5
l3db6h:
	ret p			; f0 ;3db6
	add a,d			; 82 ;3db7
	rlca			; 07 ;3db8
	ld bc,l0006h		; 01 06 00 ;3db9
	inc bc			; 03 ;3dbc
	rst 38h			; ff ;3dbd
	adc a,d			; 8a ;3dbe
	ld a,a			; 7f ;3dbf
	ccf			; 3f ;3dc0
	rrca			; 0f ;3dc1
	rlca			; 07 ;3dc2
	ld bc,0c7ffh		; 01 ff c7 ;3dc3
	jp 0c1c3h		; c3 c3 c1 ;3dc6
	inc bc			; 03 ;3dc9
	ret nz			; c0 ;3dca
	rlca			; 07 ;3dcb
	rst 38h			; ff ;3dcc
	add a,a			; 87 ;3dcd
	ld a,a			; 7f ;3dce
	ccf			; 3f ;3dcf
	ccf			; 3f ;3dd0
	rra			; 1f ;3dd1
	rrca			; 0f ;3dd2
	rrca			; 0f ;3dd3
	rlca			; 07 ;3dd4
	ld (bc),a			; 02 ;3dd5
	nop			; 00 ;3dd6
	nop			; 00 ;3dd7
	ld b,000h		; 06 00 ;3dd8
	add a,d			; 82 ;3dda
	rlca			; 07 ;3ddb
	rrca			; 0f ;3ddc
	ld b,000h		; 06 00 ;3ddd
	add a,c			; 81 ;3ddf
	ret po			; e0 ;3de0
	inc bc			; 03 ;3de1
	nop			; 00 ;3de2
	adc a,b			; 88 ;3de3
	jr nc,l3e56h		; 30 70 ;3de4
	ld h,b			; 60 ;3de6
	ld (hl),b			; 70 ;3de7
	jr c,l3e06h		; 38 1c ;3de8
	rrca			; 0f ;3dea
	inc bc			; 03 ;3deb
	dec b			; 05 ;3dec
	nop			; 00 ;3ded
	adc a,a			; 8f ;3dee
	ld bc,0e000h		; 01 00 e0 ;3def
	ret m			; f8 ;3df2
	ld e,007h		; 1e 07 ;3df3
	inc bc			; 03 ;3df5
	ld h,e			; 63 ;3df6
	add a,e			; 83 ;3df7
	nop			; 00 ;3df8
	nop			; 00 ;3df9
	inc a			; 3c ;3dfa
	pop hl			; e1 ;3dfb
	inc bc			; 03 ;3dfc
	rlca			; 07 ;3dfd
	ld (bc),a			; 02 ;3dfe
	ld c,002h		; 0e 02 ;3dff
	nop			; 00 ;3e01
	xor d			; aa ;3e02
	pop bc			; c1 ;3e03
	add a,c			; 81 ;3e04
	inc bc			; 03 ;3e05
l3e06h:
	rlca			; 07 ;3e06
	rlca			; 07 ;3e07
	ld c,000h		; 0e 00 ;3e08
	nop			; 00 ;3e0a
	ret nz			; c0 ;3e0b
	add a,b			; 80 ;3e0c
	add a,b			; 80 ;3e0d
	ld bc,00401h+1		; 01 02 04 ;3e0e
	nop			; 00 ;3e11
	nop			; 00 ;3e12
	ld e,a			; 5f ;3e13
	ret p			; f0 ;3e14
	ret po			; e0 ;3e15
	ret nz			; c0 ;3e16
	ret nz			; c0 ;3e17
	add a,b			; 80 ;3e18
	nop			; 00 ;3e19
	nop			; 00 ;3e1a
	ret nz			; c0 ;3e1b
	pop hl			; e1 ;3e1c
	ld h,c			; 61 ;3e1d
	ld h,e			; 63 ;3e1e
	ld b,d			; 42 ;3e1f
	jp nz,start		; c2 00 00 ;3e20
	adc a,086h		; ce 86 ;3e23
	ld b,00ch		; 06 0c ;3e25
	jr l3e59h		; 18 30 ;3e27
	nop			; 00 ;3e29
	nop			; 00 ;3e2a
	jr c,l3e69h		; 38 3c ;3e2b
	ld (bc),a			; 02 ;3e2d
	ld l,h			; 6c ;3e2e
	ld (bc),a			; 02 ;3e2f
	call z,start+2		; cc 02 00 ;3e30
	ld (bc),a			; 02 ;3e33
	inc b			; 04 ;3e34
	ld (bc),a			; 02 ;3e35
	nop			; 00 ;3e36
l3e37h:
	add a,c			; 81 ;3e37
	ld bc,l0003h		; 01 03 00 ;3e38
	add a,l			; 85 ;3e3b
	ld c,01ch		; 0e 1c ;3e3c
	nop			; 00 ;3e3e
	nop			; 00 ;3e3f
	ret po			; e0 ;3e40
	inc bc			; 03 ;3e41
	nop			; 00 ;3e42
	add a,e			; 83 ;3e43
	rra			; 1f ;3e44
	rrca			; 0f ;3e45
	rlca			; 07 ;3e46
	dec b			; 05 ;3e47
	nop			; 00 ;3e48
	add a,e			; 83 ;3e49
	rst 30h			; f7 ;3e4a
	ex (sp),hl			; e3 ;3e4b
	add a,c			; 81 ;3e4c
	dec b			; 05 ;3e4d
	nop			; 00 ;3e4e
	adc a,d			; 8a ;3e4f
	ex (sp),hl			; e3 ;3e50
	jp nz,l0486h		; c2 86 04 ;3e51
	ld c,00ah		; 0e 0a ;3e54
l3e56h:
	nop			; 00 ;3e56
	nop			; 00 ;3e57
	inc e			; 1c ;3e58
l3e59h:
	ld b,006h		; 06 06 ;3e59
	nop			; 00 ;3e5b
	add a,d			; 82 ;3e5c
	rra			; 1f ;3e5d
	ld a,c			; 79 ;3e5e
	ld b,000h		; 06 00 ;3e5f
	add a,d			; 82 ;3e61
	add a,e			; 83 ;3e62
	adc a,006h		; ce 06 ;3e63
	nop			; 00 ;3e65
	add a,d			; 82 ;3e66
	ld b,007h		; 06 07 ;3e67
l3e69h:
	ld b,000h		; 06 00 ;3e69
	add a,d			; 82 ;3e6b
	inc c			; 0c ;3e6c
	ret m			; f8 ;3e6d
	inc b			; 04 ;3e6e
	nop			; 00 ;3e6f
	adc a,b			; 88 ;3e70
	ld (bc),a			; 02 ;3e71
	inc b			; 04 ;3e72
	inc (hl)			; 34 ;3e73
	inc l			; 2c ;3e74
	jr z,l3eafh		; 28 38 ;3e75
	jr nc,l3e79h		; 30 00 ;3e77
l3e79h:
	ld (086ffh),a		; 32 ff 86 ;3e79
	cp 0fch		; fe fc ;3e7c
	ret m			; f8 ;3e7e
	ret p			; f0 ;3e7f
	ret po			; e0 ;3e80
	ret nz			; c0 ;3e81
	ld (bc),a			; 02 ;3e82
	ret p			; f0 ;3e83
	ld (bc),a			; 02 ;3e84
	ret m			; f8 ;3e85
	add a,h			; 84 ;3e86
	call m,0fefeh		; fc fe fe ;3e87
	rst 38h			; ff ;3e8a
	ex af,af'			; 08 ;3e8b
	rrca			; 0f ;3e8c
	add a,h			; 84 ;3e8d
	nop			; 00 ;3e8e
	ld bc,l0f07h		; 01 07 0f ;3e8f
	ld (bc),a			; 02 ;3e92
	rra			; 1f ;3e93
	inc bc			; 03 ;3e94
	ccf			; 3f ;3e95
	rlca			; 07 ;3e96
	rst 38h			; ff ;3e97
	add a,d			; 82 ;3e98
	ret p			; f0 ;3e99
	cp 006h		; fe 06 ;3e9a
	rst 38h			; ff ;3e9c
	ld (bc),a			; 02 ;3e9d
	nop			; 00 ;3e9e
	add a,h			; 84 ;3e9f
	add a,b			; 80 ;3ea0
	ret po			; e0 ;3ea1
	ret m			; f8 ;3ea2
	call m,0fe02h		; fc 02 fe ;3ea3
	ex af,af'			; 08 ;3ea6
	rrca			; 0f ;3ea7
	djnz $-1		; 10 ff ;3ea8
	ex af,af'			; 08 ;3eaa
	call m,0ff08h		; fc 08 ff ;3eab
	ld (bc),a			; 02 ;3eae
l3eafh:
	adc a,a			; 8f ;3eaf
	add a,c			; 81 ;3eb0
	rst 8			; cf ;3eb1
	ld (bc),a			; 02 ;3eb2
	rst 28h			; ef ;3eb3
	inc bc			; 03 ;3eb4
	rst 38h			; ff ;3eb5
	add a,c			; 81 ;3eb6
	ccf			; 3f ;3eb7
	inc b			; 04 ;3eb8
	ld a,a			; 7f ;3eb9
	ld (bc),a			; 02 ;3eba
	ccf			; 3f ;3ebb
	add a,c			; 81 ;3ebc
	rra			; 1f ;3ebd
	ld (bc),a			; 02 ;3ebe
	rst 38h			; ff ;3ebf
	inc bc			; 03 ;3ec0
	cp 004h		; fe 04 ;3ec1
	rst 38h			; ff ;3ec3
	add a,c			; 81 ;3ec4
	add a,a			; 87 ;3ec5
	inc b			; 04 ;3ec6
	nop			; 00 ;3ec7
	add a,(hl)			; 86 ;3ec8
	add a,b			; 80 ;3ec9
	ret po			; e0 ;3eca
	call m,0f0f8h		; fc f8 f0 ;3ecb
	jr nz,l3ed4h		; 20 04 ;3ece
	nop			; 00 ;3ed0
	ex af,af'			; 08 ;3ed1
	rst 38h			; ff ;3ed2
	add a,h			; 84 ;3ed3
l3ed4h:
	rra			; 1f ;3ed4
	rrca			; 0f ;3ed5
	rlca			; 07 ;3ed6
	ld bc,l0004h		; 01 04 00 ;3ed7
	dec b			; 05 ;3eda
	rst 38h			; ff ;3edb
	add a,e			; 83 ;3edc
	ld a,a			; 7f ;3edd
	ccf			; 3f ;3ede
	rrca			; 0f ;3edf
	inc b			; 04 ;3ee0
	rst 38h			; ff ;3ee1
	add a,h			; 84 ;3ee2
	rst 30h			; f7 ;3ee3
	di			; f3 ;3ee4
	di			; f3 ;3ee5
	pop af			; f1 ;3ee6
	ld a,(bc)			; 0a ;3ee7
	rst 38h			; ff ;3ee8
	add a,h			; 84 ;3ee9
	ld a,a			; 7f ;3eea
	ccf			; 3f ;3eeb
	ccf			; 3f ;3eec
	rra			; 1f ;3eed
	ld (bc),a			; 02 ;3eee
	rrca			; 0f ;3eef
	nop			; 00 ;3ef0
	ld a,a			; 7f ;3ef1
	nop			; 00 ;3ef2
	ld a,a			; 7f ;3ef3
	nop			; 00 ;3ef4
l3ef5h:
	ld a,a			; 7f ;3ef5
	nop			; 00 ;3ef6
	inc hl			; 23 ;3ef7
	nop			; 00 ;3ef8
	nop			; 00 ;3ef9
l3efah:
	jr nc,$+1		; 30 01 ;3efa
	ld sp,start+1		; 31 01 00 ;3efc
	ld bc,l00ffh+1		; 01 00 01 ;3eff
	nop			; 00 ;3f02
	ld bc,l00ffh+1		; 01 00 01 ;3f03
	nop			; 00 ;3f06
	ld bc,l00ffh+1		; 01 00 01 ;3f07
	nop			; 00 ;3f0a
	ld bc,l00ffh+1		; 01 00 01 ;3f0b
	ld (start+1),a		; 32 01 00 ;3f0e
	ld bc,l00ffh+1		; 01 00 01 ;3f11
	nop			; 00 ;3f14
	ld bc,l00ffh+1		; 01 00 01 ;3f15
	nop			; 00 ;3f18
	ld bc,l00ffh+1		; 01 00 01 ;3f19
	nop			; 00 ;3f1c
	ld bc,l00ffh+1		; 01 00 01 ;3f1d
	nop			; 00 ;3f20
	ld bc,l0133h		; 01 33 01 ;3f21
	inc (hl)			; 34 ;3f24
	ld bc,l0133h+2		; 01 35 01 ;3f25
	ld (hl),001h		; 36 01 ;3f28
	scf			; 37 ;3f2a
	ld bc,l0136h+2		; 01 38 01 ;3f2b
	add hl,sp			; 39 ;3f2e
	ld bc,0013ah		; 01 3a 01 ;3f2f
	dec sp			; 3b ;3f32
	ld bc,l00ffh+1		; 01 00 01 ;3f33
	inc a			; 3c ;3f36
	ld bc,l013ch+1		; 01 3d 01 ;3f37
	ld a,001h		; 3e 01 ;3f3a
l3f3ch:
	ccf			; 3f ;3f3c
	ld bc,00140h		; 01 40 01 ;3f3d
	ld b,c			; 41 ;3f40
	ld bc,l0142h		; 01 42 01 ;3f41
	ld b,e			; 43 ;3f44
	ld bc,l0142h+2		; 01 44 01 ;3f45
	ld b,l			; 45 ;3f48
	ld bc,l00ffh+1		; 01 00 01 ;3f49
	nop			; 00 ;3f4c
	ld bc,l00ffh+1		; 01 00 01 ;3f4d
	nop			; 00 ;3f50
	ld bc,l0145h+1		; 01 46 01 ;3f51
	nop			; 00 ;3f54
	ld bc,l00ffh+1		; 01 00 01 ;3f55
	nop			; 00 ;3f58
	ld bc,l00ffh+1		; 01 00 01 ;3f59
	nop			; 00 ;3f5c
	ld bc,0008fh		; 01 8f 00 ;3f5d
	ld b,a			; 47 ;3f60
	ld c,c			; 49 ;3f61
	ld b,a			; 47 ;3f62
sub_3f63h:
	ld c,d			; 4a ;3f63
	ld c,h			; 4c ;3f64
	nop			; 00 ;3f65
	ld c,(hl)			; 4e ;3f66
	ld c,d			; 4a ;3f67
	ld c,d			; 4a ;3f68
	ld c,a			; 4f ;3f69
	nop			; 00 ;3f6a
	ld c,d			; 4a ;3f6b
	ld d,b			; 50 ;3f6c
	ld d,d			; 52 ;3f6d
	inc bc			; 03 ;3f6e
	nop			; 00 ;3f6f
	adc a,l			; 8d ;3f70
	ld d,l			; 55 ;3f71
	nop			; 00 ;3f72
	ld d,(hl)			; 56 ;3f73
	nop			; 00 ;3f74
	nop			; 00 ;3f75
	ld e,b			; 58 ;3f76
	ld d,(hl)			; 56 ;3f77
	ld d,(hl)			; 56 ;3f78
	ld e,c			; 59 ;3f79
	nop			; 00 ;3f7a
	ld d,(hl)			; 56 ;3f7b
	ld e,d			; 5a ;3f7c
	ld e,h			; 5c ;3f7d
	inc bc			; 03 ;3f7e
	nop			; 00 ;3f7f
l3f80h:
	adc a,l			; 8d ;3f80
	ld d,l			; 55 ;3f81
	nop			; 00 ;3f82
	ld d,(hl)			; 56 ;3f83
	ld c,h			; 4c ;3f84
	nop			; 00 ;3f85
	ld d,l			; 55 ;3f86
	ld d,(hl)			; 56 ;3f87
	ld d,(hl)			; 56 ;3f88
	ld d,l			; 55 ;3f89
	nop			; 00 ;3f8a
	ld d,(hl)			; 56 ;3f8b
	ld e,a			; 5f ;3f8c
	ld h,b			; 60 ;3f8d
	inc bc			; 03 ;3f8e
	nop			; 00 ;3f8f
	adc a,l			; 8d ;3f90
	ld d,l			; 55 ;3f91
	nop			; 00 ;3f92
	ld d,(hl)			; 56 ;3f93
	nop			; 00 ;3f94
	nop			; 00 ;3f95
	ld h,c			; 61 ;3f96
	ld d,(hl)			; 56 ;3f97
	ld d,(hl)			; 56 ;3f98
	ld h,d			; 62 ;3f99
	nop			; 00 ;3f9a
	ld d,(hl)			; 56 ;3f9b
	ld e,l			; 5d ;3f9c
	ld e,e			; 5b ;3f9d
	inc bc			; 03 ;3f9e
	nop			; 00 ;3f9f
	adc a,l			; 8d ;3fa0
	ld c,c			; 49 ;3fa1
	nop			; 00 ;3fa2
	ld c,d			; 4a ;3fa3
	ld c,h			; 4c ;3fa4
	nop			; 00 ;3fa5
	ld c,a			; 4f ;3fa6
	ld c,d			; 4a ;3fa7
	ld c,d			; 4a ;3fa8
	ld h,e			; 63 ;3fa9
	nop			; 00 ;3faa
	ld c,d			; 4a ;3fab
	ld d,e			; 53 ;3fac
	ld d,c			; 51 ;3fad
	add a,c			; 81 ;3fae
	nop			; 00 ;3faf
	nop			; 00 ;3fb0
	inc bc			; 03 ;3fb1
	ld bc,l0381h		; 01 81 03 ;3fb2
	inc b			; 04 ;3fb5
	ld bc,l0381h		; 01 81 03 ;3fb6
	inc bc			; 03 ;3fb9
	ld bc,l0381h		; 01 81 03 ;3fba
	dec bc			; 0b ;3fbd
	ld bc,l0381h		; 01 81 03 ;3fbe
	inc bc			; 03 ;3fc1
	ld bc,l0381h		; 01 81 03 ;3fc2
	dec bc			; 0b ;3fc5
	ld bc,l0381h		; 01 81 03 ;3fc6
	inc bc			; 03 ;3fc9
	ld bc,00383h		; 01 83 03 ;3fca
	ld bc,00907h		; 01 07 09 ;3fcd
	ld bc,l0381h		; 01 81 03 ;3fd0
	inc bc			; 03 ;3fd3
	ld bc,l0381h		; 01 81 03 ;3fd4
	ld (bc),a			; 02 ;3fd7
	rlca			; 07 ;3fd8
	inc bc			; 03 ;3fd9
	ld bc,l0583h		; 01 83 05 ;3fda
	ld bc,l0205h		; 01 05 02 ;3fdd
	ld bc,l0702h		; 01 02 07 ;3fe0
	add a,c			; 81 ;3fe3
	dec b			; 05 ;3fe4
	ld (bc),a			; 02 ;3fe5
	ld bc,l0702h+1		; 01 03 07 ;3fe6
	add a,c			; 81 ;3fe9
	ld bc,08f00h		; 01 00 8f ;3fea
	nop			; 00 ;3fed
	ld c,b			; 48 ;3fee
	ld c,b			; 48 ;3fef
	nop			; 00 ;3ff0
	ld c,e			; 4b ;3ff1
	ld c,l			; 4d ;3ff2
	ld c,d			; 4a ;3ff3
	ld c,a			; 4f ;3ff4
	nop			; 00 ;3ff5
	ld c,(hl)			; 4e ;3ff6
	ld c,d			; 4a ;3ff7
	ld c,d			; 4a ;3ff8
	nop			; 00 ;3ff9
	ld d,c			; 51 ;3ffa
	ld d,e			; 53 ;3ffb
	ld (bc),a			; 02 ;3ffc
	nop			; 00 ;3ffd
	ld (bc),a			; 02 ;3ffe
	ld d,h			; 54 ;3fff
l4000h:
	adc a,h			; 8c ;4000
	nop			; 00 ;4001
l4002h:
	ld d,a			; 57 ;4002
	nop			; 00 ;4003
	ld d,(hl)			; 56 ;4004
	ld e,c			; 59 ;4005
	nop			; 00 ;4006
	ld e,b			; 58 ;4007
	ld d,(hl)			; 56 ;4008
	ld d,(hl)			; 56 ;4009
	nop			; 00 ;400a
	ld e,e			; 5b ;400b
	ld e,l			; 5d ;400c
	ld (bc),a			; 02 ;400d
	nop			; 00 ;400e
	ld (bc),a			; 02 ;400f
	ld d,h			; 54 ;4010
	adc a,h			; 8c ;4011
	nop			; 00 ;4012
	ld e,(hl)			; 5e ;4013
	ld c,l			; 4d ;4014
	ld d,(hl)			; 56 ;4015
	ld d,l			; 55 ;4016
	nop			; 00 ;4017
	ld d,l			; 55 ;4018
	ld d,(hl)			; 56 ;4019
	ld d,(hl)			; 56 ;401a
	nop			; 00 ;401b
	ld h,b			; 60 ;401c
	ld e,a			; 5f ;401d
	ld (bc),a			; 02 ;401e
	nop			; 00 ;401f
	ld (bc),a			; 02 ;4020
	ld d,h			; 54 ;4021
	adc a,h			; 8c ;4022
	nop			; 00 ;4023
	ld d,a			; 57 ;4024
	nop			; 00 ;4025
	ld d,(hl)			; 56 ;4026
	ld h,d			; 62 ;4027
	nop			; 00 ;4028
	ld h,c			; 61 ;4029
	ld d,(hl)			; 56 ;402a
	ld d,(hl)			; 56 ;402b
	nop			; 00 ;402c
	ld e,h			; 5c ;402d
	ld e,d			; 5a ;402e
	ld (bc),a			; 02 ;402f
	nop			; 00 ;4030
	ld (bc),a			; 02 ;4031
	ld c,a			; 4f ;4032
	adc a,h			; 8c ;4033
	nop			; 00 ;4034
	ld c,e			; 4b ;4035
	ld c,l			; 4d ;4036
	ld c,d			; 4a ;4037
	ld h,e			; 63 ;4038
	nop			; 00 ;4039
	ld c,a			; 4f ;403a
	ld c,d			; 4a ;403b
	ld c,d			; 4a ;403c
	nop			; 00 ;403d
	ld d,d			; 52 ;403e
	ld d,b			; 50 ;403f
	add a,c			; 81 ;4040
	nop			; 00 ;4041
	nop			; 00 ;4042
	ld (bc),a			; 02 ;4043
	ld bc,l0381h		; 01 81 03 ;4044
	rlca			; 07 ;4047
	ld bc,l0381h		; 01 81 03 ;4048
	rlca			; 07 ;404b
	ld bc,l0381h		; 01 81 03 ;404c
	rlca			; 07 ;404f
	ld bc,l0381h		; 01 81 03 ;4050
	rlca			; 07 ;4053
	ld bc,l0381h		; 01 81 03 ;4054
	rlca			; 07 ;4057
	ld bc,l0381h		; 01 81 03 ;4058
	inc bc			; 03 ;405b
	ld bc,l0781h		; 01 81 07 ;405c
	inc bc			; 03 ;405f
	ld bc,l0381h		; 01 81 03 ;4060
	rlca			; 07 ;4063
	ld bc,l0381h		; 01 81 03 ;4064
	ld (bc),a			; 02 ;4067
	ld bc,l0702h		; 01 02 07 ;4068
	ld (bc),a			; 02 ;406b
	ld bc,l0586h		; 01 86 05 ;406c
	rlca			; 07 ;406f
	ld bc,l0104h+1		; 01 05 01 ;4070
	dec b			; 05 ;4073
	ld (bc),a			; 02 ;4074
	ld bc,l0702h		; 01 02 07 ;4075
	add a,l			; 85 ;4078
	dec b			; 05 ;4079
	ld bc,00707h		; 01 07 07 ;407a
	ld bc,00300h		; 01 00 03 ;407d
	ret z			; c8 ;4080
	dec sp			; 3b ;4081
	jr nc,l4084h		; 30 00 ;4082
l4084h:
	dec de			; 1b ;4084
	ld bc,l011eh+2		; 01 20 01 ;4085
	ld e,001h		; 1e 01 ;4088
	inc de			; 13 ;408a
	ld bc,l00ffh+1		; 01 00 01 ;408b
	ld (bc),a			; 02 ;408e
	ld bc,l00ffh+1		; 01 00 01 ;408f
	dec de			; 1b ;4092
	ld bc,00117h		; 01 17 01 ;4093
	inc c			; 0c ;4096
	ld bc,l0124h		; 01 24 01 ;4097
	nop			; 00 ;409a
	ld bc,l011eh		; 01 1e 01 ;409b
	rra			; 1f ;409e
	ld bc,l010ah+2		; 01 0c 01 ;409f
	dec e			; 1d ;40a2
	ld bc,l011eh+1		; 01 1f 01 ;40a3
	nop			; 00 ;40a6
	ld bc,l010dh		; 01 0d 01 ;40a7
	jr nz,l40adh		; 20 01 ;40aa
	rra			; 1f ;40ac
l40adh:
	ld bc,l011eh+1		; 01 1f 01 ;40ad
	ld a,(de)			; 1a ;40b0
	ld bc,l0118h+1		; 01 19 01 ;40b1
	ld e,(hl)			; 5e ;40b4
	inc a			; 3c ;40b5
	inc b			; 04 ;40b6
	nop			; 00 ;40b7
	ld a,(de)			; 1a ;40b8
	ld bc,0011dh		; 01 1d 01 ;40b9
	ret z			; c8 ;40bc
	inc a			; 3c ;40bd
	jr nc,l40c0h		; 30 00 ;40be
l40c0h:
	dec de			; 1b ;40c0
	ld bc,l011eh+2		; 01 20 01 ;40c1
	ld e,001h		; 1e 01 ;40c4
	inc de			; 13 ;40c6
	ld bc,l00ffh+1		; 01 00 01 ;40c7
	inc bc			; 03 ;40ca
	ld bc,l00ffh+1		; 01 00 01 ;40cb
	dec de			; 1b ;40ce
	ld bc,00117h		; 01 17 01 ;40cf
	inc c			; 0c ;40d2
	ld bc,l0124h		; 01 24 01 ;40d3
	nop			; 00 ;40d6
	ld bc,l011eh		; 01 1e 01 ;40d7
	rra			; 1f ;40da
	ld bc,l010ah+2		; 01 0c 01 ;40db
	dec e			; 1d ;40de
	ld bc,l011eh+1		; 01 1f 01 ;40df
	nop			; 00 ;40e2
	ld bc,l010dh		; 01 0d 01 ;40e3
	jr nz,l40e9h		; 20 01 ;40e6
	rra			; 1f ;40e8
l40e9h:
	.DB $01 $1f		;40e9
l40ebh:
	.DB $01		;40eb
	ld a,(de)			; 1a ;40ec
	ld bc,l0118h+1		; 01 19 01 ;40ed
l40f0h:
	ld h,001h		; 26 01 ;40f0
	nop			; 00 ;40f2
	ld bc,l0127h		; 01 27 01 ;40f3
	jr z,l40f9h		; 28 01 ;40f6
	add hl,hl			; 29 ;40f8
l40f9h:
	ld bc,l012ah		; 01 2a 01 ;40f9
	nop			; 00 ;40fc
	ld bc,l0102h		; 01 02 01 ;40fd
l4100h:
	ld a,(bc)			; 0a ;4100
	ld bc,00109h		; 01 09 01 ;4101
	rlca			; 07 ;4104
	ld bc,0f53eh		; 01 3e f5 ;4105
	out (03fh),a		; d3 3f ;4108
	in a,(0ddh)		; db dd ;410a
	and 0c0h		; e6 c0 ;410c
	cp 0c0h		; fe c0 ;410e
	jr nz,l4122h		; 20 10 ;4110
	ld a,055h		; 3e 55 ;4112
	out (03fh),a		; d3 3f ;4114
	in a,(0ddh)		; db dd ;4116
	and 0c0h		; e6 c0 ;4118
	or a			; b7 ;411a
	jr nz,l4122h		; 20 05 ;411b
	ld a,0ffh		; 3e ff ;411d
l411fh:
	out (03fh),a		; d3 3f ;411f
	ret			; c9 ;4121
l4122h:
	xor a			; af ;4122
	ret			; c9 ;4123
l4124h:
	add a,041h		; c6 41 ;4124
	rst 18h			; df ;4126
	ld b,c			; 41 ;4127
	push af			; f5 ;4128
	ld b,c			; 41 ;4129
	dec bc			; 0b ;412a
	ld b,d			; 42 ;412b
	dec de			; 1b ;412c
	ld b,d			; 42 ;412d
	inc (hl)			; 34 ;412e
	ld b,d			; 42 ;412f
	ld c,l			; 4d ;4130
	ld b,d			; 42 ;4131
	ld h,e			; 63 ;4132
	ld b,d			; 42 ;4133
	ld a,c			; 79 ;4134
	ld b,d			; 42 ;4135
	adc a,a			; 8f ;4136
	ld b,d			; 42 ;4137
	xor b			; a8 ;4138
	ld b,d			; 42 ;4139
	pop bc			; c1 ;413a
	ld b,d			; 42 ;413b
	jp c,0f342h		; da 42 f3 ;413c
	ld b,d			; 42 ;413f
	add hl,bc			; 09 ;4140
	ld b,e			; 43 ;4141
	rra			; 1f ;4142
	ld b,e			; 43 ;4143
	jr c,l4189h		; 38 43 ;4144
	ld d,c			; 51 ;4146
	ld b,e			; 43 ;4147
	ld h,a			; 67 ;4148
	ld b,e			; 43 ;4149
	ld a,l			; 7d ;414a
	ld b,e			; 43 ;414b
	sub (hl)			; 96 ;414c
	ld b,e			; 43 ;414d
	or d			; b2 ;414e
	ld b,e			; 43 ;414f
	ret z			; c8 ;4150
	ld b,e			; 43 ;4151
	pop hl			; e1 ;4152
	ld b,e			; 43 ;4153
	call p,sub_0743h		; f4 43 07 ;4154
	ld b,h			; 44 ;4157
	inc hl			; 23 ;4158
	ld b,h			; 44 ;4159
	ccf			; 3f ;415a
	ld b,h			; 44 ;415b
	ld e,b			; 58 ;415c
	ld b,h			; 44 ;415d
	ld (hl),h			; 74 ;415e
	ld b,h			; 44 ;415f
	adc a,l			; 8d ;4160
	ld b,h			; 44 ;4161
	and e			; a3 ;4162
	ld b,h			; 44 ;4163
	cp c			; b9 ;4164
	ld b,h			; 44 ;4165
	ret			; c9 ;4166
	ld b,h			; 44 ;4167
	jp po,0fb44h		; e2 44 fb ;4168
	ld b,h			; 44 ;416b
	ld de,l2745h		; 11 45 27 ;416c
	ld b,l			; 45 ;416f
	dec a			; 3d ;4170
	ld b,l			; 45 ;4171
	ld d,(hl)			; 56 ;4172
	ld b,l			; 45 ;4173
	ld l,a			; 6f ;4174
	ld b,l			; 45 ;4175
	adc a,b			; 88 ;4176
	ld b,l			; 45 ;4177
	and c			; a1 ;4178
	ld b,l			; 45 ;4179
	or a			; b7 ;417a
	ld b,l			; 45 ;417b
	call 0e645h		; cd 45 e6 ;417c
	ld b,l			; 45 ;417f
	rst 38h			; ff ;4180
	ld b,l			; 45 ;4181
	dec d			; 15 ;4182
	ld b,(hl)			; 46 ;4183
	dec hl			; 2b ;4184
	ld b,(hl)			; 46 ;4185
	ld b,h			; 44 ;4186
	ld b,(hl)			; 46 ;4187
	ld h,b			; 60 ;4188
l4189h:
	ld b,(hl)			; 46 ;4189
	halt			; 76 ;418a
	ld b,(hl)			; 46 ;418b
	adc a,a			; 8f ;418c
	ld b,(hl)			; 46 ;418d
	and d			; a2 ;418e
	ld b,(hl)			; 46 ;418f
	or l			; b5 ;4190
	ld b,(hl)			; 46 ;4191
	pop de			; d1 ;4192
	ld b,(hl)			; 46 ;4193
	im 0		; ed 46 ;4194
	ld b,047h		; 06 47 ;4196
	ld (l3847h),hl		; 22 47 38 ;4198
	ld b,a			; 47 ;419b
	ld c,e			; 4b ;419c
	ld b,a			; 47 ;419d
	ld e,(hl)			; 5e ;419e
	ld b,a			; 47 ;419f
	ld l,(hl)			; 6e ;41a0
	ld b,a			; 47 ;41a1
	add a,c			; 81 ;41a2
	ld b,a			; 47 ;41a3
	sub h			; 94 ;41a4
	ld b,a			; 47 ;41a5
	and c			; a1 ;41a6
	ld b,a			; 47 ;41a7
	or c			; b1 ;41a8
	ld b,a			; 47 ;41a9
	cp (hl)			; be ;41aa
	ld b,a			; 47 ;41ab
	adc a,047h		; ce 47 ;41ac
	sbc a,047h		; de 47 ;41ae
	pop af			; f1 ;41b0
	ld b,a			; 47 ;41b1
	ld bc,l1448h		; 01 48 14 ;41b2
	ld c,b			; 48 ;41b5
	inc h			; 24 ;41b6
	ld c,b			; 48 ;41b7
	inc (hl)			; 34 ;41b8
	ld c,b			; 48 ;41b9
	ld b,a			; 47 ;41ba
	ld c,b			; 48 ;41bb
	ld e,l			; 5d ;41bc
	ld c,b			; 48 ;41bd
	ld (hl),b			; 70 ;41be
	ld c,b			; 48 ;41bf
	add a,e			; 83 ;41c0
	ld c,b			; 48 ;41c1
	sub e			; 93 ;41c2
	ld c,b			; 48 ;41c3
	sub a			; 97 ;41c4
	ld c,b			; 48 ;41c5
	ex af,af'			; 08 ;41c6
	ret po			; e0 ;41c7
	jp p,0e100h		; f2 00 e1 ;41c8
	cp 017h		; fe 17 ;41cb
	ret pe			; e8 ;41cd
	di			; f3 ;41ce
	ld hl,0fbe8h		; 21 e8 fb ;41cf
	add hl,hl			; 29 ;41d2
	jp pe,l2a02h		; ea 02 2a ;41d3
	ret p			; f0 ;41d6
	call m,0f87ah		; fc 7a f8 ;41d7
	jp m,0f57ch		; fa 7c f5 ;41da
	ld (bc),a			; 02 ;41dd
	ld a,e			; 7b ;41de
	rlca			; 07 ;41df
	ret po			; e0 ;41e0
	jp p,0e100h		; f2 00 e1 ;41e1
	cp 017h		; fe 17 ;41e4
	ret pe			; e8 ;41e6
	di			; f3 ;41e7
	ld hl,0fbe8h		; 21 e8 fb ;41e8
	add hl,hl			; 29 ;41eb
	jp pe,l2a02h		; ea 02 2a ;41ec
	ret p			; f0 ;41ef
	call m,0f87dh		; fc 7d f8 ;41f0
	call m,sub_077eh		; fc 7e 07 ;41f3
	pop hl			; e1 ;41f6
	jp m,0e81bh		; fa 1b e8 ;41f7
	ei			; fb ;41fa
	ld sp,003e8h		; 31 e8 03 ;41fb
	inc b			; 04 ;41fe
	ret p			; f0 ;41ff
	or 07fh		; f6 7f ;4200
l4202h:
	ret p			; f0 ;4202
	cp 05ah		; fe 5a ;4203
	ret m			; f8 ;4205
	or 080h		; f6 80 ;4206
	ret m			; f8 ;4208
	cp 081h		; fe 81 ;4209
	dec b			; 05 ;420b
	pop hl			; e1 ;420c
	jp m,0e81bh		; fa 1b e8 ;420d
	ei			; fb ;4210
	ld sp,003e8h		; 31 e8 03 ;4211
	inc b			; 04 ;4214
	ret p			; f0 ;4215
	call m,0f882h		; fc 82 f8 ;4216
	ei			; fb ;4219
	add a,e			; 83 ;421a
	ex af,af'			; 08 ;421b
	pop hl			; e1 ;421c
	cp 017h		; fe 17 ;421d
	ret pe			; e8 ;421f
	jp m,0e845h		; fa 45 e8 ;4220
	ld (bc),a			; 02 ;4223
	ld b,(hl)			; 46 ;4224
	ret p			; f0 ;4225
	ret m			; f8 ;4226
	add a,h			; 84 ;4227
	ret p			; f0 ;4228
	nop			; 00 ;4229
	add a,(hl)			; 86 ;422a
	push af			; f5 ;422b
	jp p,0f814h		; f2 14 f8 ;422c
	jp m,0f885h		; fa 85 f8 ;422f
	ld (bc),a			; 02 ;4232
	add a,a			; 87 ;4233
	ex af,af'			; 08 ;4234
	pop hl			; e1 ;4235
	jp m,0e81bh		; fa 1b e8 ;4236
	or 047h		; f6 47 ;4239
	ret pe			; e8 ;423b
	cp 048h		; fe 48 ;423c
	ret p			; f0 ;423e
	or 088h		; f6 88 ;423f
	ret p			; f0 ;4241
	cp 089h		; fe 89 ;4242
	jp p,l0104h		; f2 04 01 ;4244
	ret m			; f8 ;4247
	or 05bh		; f6 5b ;4248
	ret m			; f8 ;424a
	.DB 0fdh,05ch	;ld e,iyh		;424b
	rlca			; 07 ;424d
	jp po,01cfbh		; e2 fb 1c ;424e
	ret pe			; e8 ;4251
	jp m,0e849h		; fa 49 e8 ;4252
	ld (bc),a			; 02 ;4255
	ld c,d			; 4a ;4256
	ret p			; f0 ;4257
	ret m			; f8 ;4258
	adc a,d			; 8a ;4259
	ret p			; f0 ;425a
	nop			; 00 ;425b
	ld h,c			; 61 ;425c
	ret m			; f8 ;425d
	ret m			; f8 ;425e
	ld h,d			; 62 ;425f
	ret m			; f8 ;4260
	nop			; 00 ;4261
	ld h,e			; 63 ;4262
	rlca			; 07 ;4263
	ex (sp),hl			; e3 ;4264
	call m,0e81dh		; fc 1d e8 ;4265
	rst 30h			; f7 ;4268
	dec d			; 15 ;4269
	ret pe			; e8 ;426a
	rst 38h			; ff ;426b
	ld c,e			; 4b ;426c
	ret p			; f0 ;426d
	rst 30h			; f7 ;426e
	adc a,(hl)			; 8e ;426f
	ret p			; f0 ;4270
	rst 38h			; ff ;4271
	adc a,e			; 8b ;4272
	ret m			; f8 ;4273
	rst 30h			; f7 ;4274
	adc a,h			; 8c ;4275
	ret m			; f8 ;4276
	rst 38h			; ff ;4277
	adc a,l			; 8d ;4278
	rlca			; 07 ;4279
	ex (sp),hl			; e3 ;427a
	ei			; fb ;427b
	dec e			; 1d ;427c
	ret pe			; e8 ;427d
	or 016h		; f6 16 ;427e
	ret pe			; e8 ;4280
	cp 04bh		; fe 4b ;4281
	ret p			; f0 ;4283
	or 08eh		; f6 8e ;4284
	ret p			; f0 ;4286
	cp 08bh		; fe 8b ;4287
	ret m			; f8 ;4289
	rst 30h			; f7 ;428a
	adc a,h			; 8c ;428b
	ret m			; f8 ;428c
	rst 38h			; ff ;428d
	adc a,a			; 8f ;428e
	ex af,af'			; 08 ;428f
	ret po			; e0 ;4290
	jp p,0e100h		; f2 00 e1 ;4291
	cp 017h		; fe 17 ;4294
	ret pe			; e8 ;4296
	di			; f3 ;4297
	ld hl,0fbe8h		; 21 e8 fb ;4298
	add hl,hl			; 29 ;429b
	jp pe,l2a02h		; ea 02 2a ;429c
	ret p			; f0 ;429f
	jp m,0f04ch		; fa 4c f0 ;42a0
	ld (bc),a			; 02 ;42a3
	ld c,l			; 4d ;42a4
	ret m			; f8 ;42a5
	ld c,(iy+008h)		; fd 4e 08 ;42a6
	jp po,01802h		; e2 02 18 ;42a9
	ret pe			; e8 ;42ac
	dec iy		; fd 2b ;42ad
	ret pe			; e8 ;42af
	dec b			; 05 ;42b0
	inc l			; 2c ;42b1
	ret p			; f0 ;42b2
	.DB 0fdh,04fh,0f0h	;illegal sequence		;42b3
	dec b			; 05 ;42b6
	ld d,b			; 50 ;42b7
	di			; f3 ;42b8
	dec c			; 0d ;42b9
	ld bc,0fdf8h		; 01 f8 fd ;42ba
	ld d,c			; 51 ;42bd
	ret m			; f8 ;42be
	dec b			; 05 ;42bf
	ld d,d			; 52 ;42c0
	ex af,af'			; 08 ;42c1
	pop hl			; e1 ;42c2
	ld bc,0e219h		; 01 19 e2 ;42c3
	inc c			; 0c ;42c6
	ld (bc),a			; 02 ;42c7
	ret pe			; e8 ;42c8
	.DB 0fdh,02dh	;dec iyl		;42c9
	ret pe			; e8 ;42cb
	dec b			; 05 ;42cc
	ld l,0f0h		; 2e f0 ;42cd
	call m,0f053h		; fc 53 f0 ;42cf
	inc b			; 04 ;42d2
	ld d,h			; 54 ;42d3
	ret m			; f8 ;42d4
	.DB 0fdh,051h,0f8h	;illegal sequence		;42d5
l42d8h:
	inc b			; 04 ;42d8
	ld d,l			; 55 ;42d9
	ex af,af'			; 08 ;42da
	ret po			; e0 ;42db
	call m,0e103h		; fc 03 e1 ;42dc
	ld (bc),a			; 02 ;42df
	ld a,(de)			; 1a ;42e0
	ret pe			; e8 ;42e1
	call m,0e82fh		; fc 2f e8 ;42e2
	inc b			; 04 ;42e5
	jr nc,l42d8h		; 30 f0 ;42e6
	call m,0f056h		; fc 56 f0 ;42e8
	inc b			; 04 ;42eb
	ld d,a			; 57 ;42ec
	ret m			; f8 ;42ed
	call m,0f858h		; fc 58 f8 ;42ee
	inc b			; 04 ;42f1
	ld d,l			; 55 ;42f2
	rlca			; 07 ;42f3
	pop hl			; e1 ;42f4
	jp m,0e81bh		; fa 1b e8 ;42f5
	ei			; fb ;42f8
	ld sp,003e8h		; 31 e8 03 ;42f9
	inc b			; 04 ;42fc
	ret p			; f0 ;42fd
	or 059h		; f6 59 ;42fe
	ret p			; f0 ;4300
	cp 05ah		; fe 5a ;4301
	ret m			; f8 ;4303
	or 05bh		; f6 5b ;4304
	ret m			; f8 ;4306
	cp 05ch		; fe 5c ;4307
	rlca			; 07 ;4309
	jp po,l1cf7h+2		; e2 f9 1c ;430a
	ret pe			; e8 ;430d
	jp m,0f232h		; fa 32 f2 ;430e
	xor 005h		; ee 05 ;4311
	rst 28h			; ef ;4313
	or 05eh		; f6 5e ;4314
	ret p			; f0 ;4316
	cp 05dh		; fe 5d ;4317
	rst 30h			; f7 ;4319
	or 05fh		; f6 5f ;431a
	ret m			; f8 ;431c
	cp 063h		; fe 63 ;431d
	ex af,af'			; 08 ;431f
	ret po			; e0 ;4320
	rst 28h			; ef ;4321
	ld b,0e1h		; 06 e1 ;4322
	jp m,0e81dh		; fa 1d e8 ;4324
	rst 30h			; f7 ;4327
	inc sp			; 33 ;4328
	ret pe			; e8 ;4329
	rst 38h			; ff ;432a
	inc (hl)			; 34 ;432b
	ret p			; f0 ;432c
	rst 30h			; f7 ;432d
	ld h,b			; 60 ;432e
	ret p			; f0 ;432f
	rst 38h			; ff ;4330
	ld h,c			; 61 ;4331
	ret m			; f8 ;4332
	rst 30h			; f7 ;4333
	ld h,d			; 62 ;4334
	ret m			; f8 ;4335
	rst 38h			; ff ;4336
	ld h,e			; 63 ;4337
	ex af,af'			; 08 ;4338
	pop hl			; e1 ;4339
	ld sp,hl			; f9 ;433a
	ld e,0e0h		; 1e e0 ;433b
	rst 38h			; ff ;433d
	rlca			; 07 ;433e
	ret pe			; e8 ;433f
	rst 30h			; f7 ;4340
	dec (hl)			; 35 ;4341
	ret pe			; e8 ;4342
	rst 38h			; ff ;4343
	ld (hl),0f0h		; 36 f0 ;4344
	rst 30h			; f7 ;4346
	ld h,h			; 64 ;4347
	ret p			; f0 ;4348
	rst 38h			; ff ;4349
	ld h,l			; 65 ;434a
	ret m			; f8 ;434b
	rst 30h			; f7 ;434c
	ld h,d			; 62 ;434d
	ret m			; f8 ;434e
	rst 38h			; ff ;434f
	ld h,e			; 63 ;4350
	rlca			; 07 ;4351
	ex (sp),hl			; e3 ;4352
	add iy,de		; fd 19 ;4353
	ret pe			; e8 ;4355
	ld sp,hl			; f9 ;4356
	scf			; 37 ;4357
	ret pe			; e8 ;4358
	ld bc,0f008h		; 01 08 f0 ;4359
	ld sp,hl			; f9 ;435c
	ld h,(hl)			; 66 ;435d
	ret p			; f0 ;435e
	ld bc,0f867h		; 01 67 f8 ;435f
	ld sp,hl			; f9 ;4362
	ld l,b			; 68 ;4363
	ret m			; f8 ;4364
	ld bc,00769h		; 01 69 07 ;4365
	ex (sp),hl			; e3 ;4368
	call m,0e819h		; fc 19 e8 ;4369
	ret m			; f8 ;436c
	scf			; 37 ;436d
	ret pe			; e8 ;436e
	nop			; 00 ;436f
	add hl,bc			; 09 ;4370
	ret p			; f0 ;4371
	ret m			; f8 ;4372
	ld h,(hl)			; 66 ;4373
	ret p			; f0 ;4374
	nop			; 00 ;4375
	ld h,a			; 67 ;4376
	ret m			; f8 ;4377
	ld sp,hl			; f9 ;4378
	ld l,d			; 6a ;4379
	ret m			; f8 ;437a
	ld bc,00869h		; 01 69 08 ;437b
	jp po,018fch		; e2 fc 18 ;437e
	jp (hl)			; e9 ;4381
	call p,0e938h		; f4 38 e9 ;4382
	call m,0e839h		; fc 39 e8 ;4385
	inc b			; 04 ;4388
	ld a,(0f4f1h)		; 3a f1 f4 ;4389
	ld a,(bc)			; 0a ;438c
	pop af			; f1 ;438d
	call m,0f96bh		; fc 6b f9 ;438e
	call p,0f90bh		; f4 0b f9 ;4391
	call m,sub_096ch		; fc 6c 09 ;4394
	jp po,l1ffch		; e2 fc 1f ;4397
	pop hl			; e1 ;439a
	nop			; 00 ;439b
	ld (0f0e9h),hl		; 22 e9 f0 ;439c
	inc c			; 0c ;439f
	jp (hl)			; e9 ;43a0
	ret m			; f8 ;43a1
	dec sp			; 3b ;43a2
	jp (hl)			; e9 ;43a3
	nop			; 00 ;43a4
	inc a			; 3c ;43a5
	pop af			; f1 ;43a6
	ret p			; f0 ;43a7
	dec c			; 0d ;43a8
	pop af			; f1 ;43a9
	ld sp,hl			; f9 ;43aa
	ld l,l			; 6d ;43ab
	call p,sub_6e01h		; f4 01 6e ;43ac
	ld sp,hl			; f9 ;43af
	ret m			; f8 ;43b0
	ld l,a			; 6f ;43b1
	rlca			; 07 ;43b2
	ret po			; e0 ;43b3
	pop af			; f1 ;43b4
	ld bc,0f6e0h		; 01 e0 f6 ;43b5
	inc hl			; 23 ;43b8
	ret po			; e0 ;43b9
	cp 020h		; fe 20 ;43ba
	ret pe			; e8 ;43bc
	rst 38h			; ff ;43bd
	dec a			; 3d ;43be
	ret p			; f0 ;43bf
	ld (iy-008h),b		; fd 70 f8 ;43c0
	ld sp,hl			; f9 ;43c3
	ld (hl),c			; 71 ;43c4
	ret m			; f8 ;43c5
	ld bc,00872h		; 01 72 08 ;43c6
	ret c			; d8 ;43c9
	dec b			; 05 ;43ca
	ld c,0e0h		; 0e e0 ;43cb
	inc bc			; 03 ;43cd
	inc h			; 24 ;43ce
	ret pe			; e8 ;43cf
	ei			; fb ;43d0
	ccf			; 3f ;43d1
	ret pe			; e8 ;43d2
	inc bc			; 03 ;43d3
	ld a,0e4h		; 3e e4 ;43d4
	nop			; 00 ;43d6
	add hl,de			; 19 ;43d7
	ret p			; f0 ;43d8
	ld (iy-00bh),e		; fd 73 f5 ;43d9
	push af			; f5 ;43dc
	ld (hl),h			; 74 ;43dd
	ret m			; f8 ;43de
	ld (iy+006h),l		; fd 75 06 ;43df
	jp po,02503h		; e2 03 25 ;43e2
	ret pe			; e8 ;43e5
	ei			; fb ;43e6
	ld b,b			; 40 ;43e7
	jp pe,l0f02h+1		; ea 03 0f ;43e8
	push hl			; e5 ;43eb
	nop			; 00 ;43ec
	add hl,de			; 19 ;43ed
	ret p			; f0 ;43ee
	ei			; fb ;43ef
	halt			; 76 ;43f0
	ret m			; f8 ;43f1
	ei			; fb ;43f2
	ld (hl),a			; 77 ;43f3
	ld b,0eah		; 06 ea ;43f4
	ret m			; f8 ;43f6
	djnz $-22		; 10 ea ;43f7
	nop			; 00 ;43f9
	ld b,c			; 41 ;43fa
	rst 20h			; e7 ;43fb
	cp 01eh		; fe 1e ;43fc
	jp p,011f8h		; f2 f8 11 ;43fe
	jp p,l7800h		; f2 00 78 ;4401
	jp m,l79fch		; fa fc 79 ;4404
	add hl,bc			; 09 ;4407
l4408h:
	ret c			; d8 ;4408
	nop			; 00 ;4409
	ld c,0e1h		; 0e e1 ;440a
	.DB 0fdh,01ah,0e0h	;illegal sequence		;440c
	nop			; 00 ;440f
	ld h,0e8h		; 26 e8 ;4410
	ret m			; f8 ;4412
	cpl			; 2f ;4413
	ret pe			; e8 ;4414
	nop			; 00 ;4415
	jr nc,l4408h		; 30 f0 ;4416
	ret m			; f8 ;4418
	ld d,(hl)			; 56 ;4419
	ret p			; f0 ;441a
	nop			; 00 ;441b
	ld d,a			; 57 ;441c
	ret m			; f8 ;441d
	ret m			; f8 ;441e
	ld e,b			; 58 ;441f
	ret m			; f8 ;4420
	nop			; 00 ;4421
	ld d,l			; 55 ;4422
	add hl,bc			; 09 ;4423
	ret c			; d8 ;4424
	or 00eh		; f6 0e ;4425
	pop hl			; e1 ;4427
	call m,0e01ah		; fc 1a e0 ;4428
	ret m			; f8 ;442b
	daa			; 27 ;442c
	ret pe			; e8 ;442d
	ret m			; f8 ;442e
	dec (hl)			; 35 ;442f
	ret pe			; e8 ;4430
	nop			; 00 ;4431
	ld (hl),0f0h		; 36 f0 ;4432
	ret m			; f8 ;4434
	ld h,h			; 64 ;4435
	ret p			; f0 ;4436
	nop			; 00 ;4437
	ld h,l			; 65 ;4438
	ret m			; f8 ;4439
	ret m			; f8 ;443a
	ld h,d			; 62 ;443b
	ret m			; f8 ;443c
	nop			; 00 ;443d
	ld h,e			; 63 ;443e
	ex af,af'			; 08 ;443f
	jp po,01cfbh		; e2 fb 1c ;4440
	ret pe			; e8 ;4443
	ret p			; f0 ;4444
	ld (de),a			; 12 ;4445
	ret pe			; e8 ;4446
	ret m			; f8 ;4447
	ld b,d			; 42 ;4448
	ret pe			; e8 ;4449
	nop			; 00 ;444a
	ld b,e			; 43 ;444b
	ret p			; f0 ;444c
	ret m			; f8 ;444d
	ld h,b			; 60 ;444e
	ret p			; f0 ;444f
	nop			; 00 ;4450
	ld h,c			; 61 ;4451
	ret m			; f8 ;4452
	ret m			; f8 ;4453
	ld h,d			; 62 ;4454
	ret m			; f8 ;4455
	nop			; 00 ;4456
	ld h,e			; 63 ;4457
	add hl,bc			; 09 ;4458
	jp c,l13f0h		; da f0 13 ;4459
	ret po			; e0 ;445c
	ret m			; f8 ;445d
	jr z,$-31		; 28 e1 ;445e
	call m,0e81dh		; fc 1d e8 ;4460
	ret m			; f8 ;4463
	ld b,h			; 44 ;4464
	ret pe			; e8 ;4465
	nop			; 00 ;4466
	inc (hl)			; 34 ;4467
	ret p			; f0 ;4468
	ret m			; f8 ;4469
	ld h,b			; 60 ;446a
	ret p			; f0 ;446b
	nop			; 00 ;446c
	ld h,c			; 61 ;446d
	ret m			; f8 ;446e
	ret m			; f8 ;446f
	ld h,d			; 62 ;4470
	ret m			; f8 ;4471
	nop			; 00 ;4472
	ld h,e			; 63 ;4473
	ex af,af'			; 08 ;4474
	ret po			; e0 ;4475
	jp p,0e100h		; f2 00 e1 ;4476
	cp 090h		; fe 90 ;4479
	ret pe			; e8 ;447b
	di			; f3 ;447c
	ld hl,0fbe8h		; 21 e8 fb ;447d
	add hl,hl			; 29 ;4480
	jp pe,l2a02h		; ea 02 2a ;4481
	ret p			; f0 ;4484
	call m,0f87ah		; fc 7a f8 ;4485
	jp m,0f57ch		; fa 7c f5 ;4488
	ld (bc),a			; 02 ;448b
	ld a,e			; 7b ;448c
	rlca			; 07 ;448d
	ret po			; e0 ;448e
	jp p,0e100h		; f2 00 e1 ;448f
	cp 090h		; fe 90 ;4492
	ret pe			; e8 ;4494
	di			; f3 ;4495
	ld hl,0fbe8h		; 21 e8 fb ;4496
	add hl,hl			; 29 ;4499
	jp pe,l2a02h		; ea 02 2a ;449a
	ret p			; f0 ;449d
	call m,0f87dh		; fc 7d f8 ;449e
	call m,sub_077eh		; fc 7e 07 ;44a1
	pop hl			; e1 ;44a4
	jp m,0e894h		; fa 94 e8 ;44a5
	ei			; fb ;44a8
	ld sp,003e8h		; 31 e8 03 ;44a9
	inc b			; 04 ;44ac
	ret p			; f0 ;44ad
	or 07fh		; f6 7f ;44ae
	ret p			; f0 ;44b0
	cp 05ah		; fe 5a ;44b1
	ret m			; f8 ;44b3
	or 080h		; f6 80 ;44b4
	ret m			; f8 ;44b6
	cp 081h		; fe 81 ;44b7
	dec b			; 05 ;44b9
	pop hl			; e1 ;44ba
	jp m,0e894h		; fa 94 e8 ;44bb
	ei			; fb ;44be
	ld sp,003e8h		; 31 e8 03 ;44bf
	inc b			; 04 ;44c2
	ret p			; f0 ;44c3
	call m,0f882h		; fc 82 f8 ;44c4
	ei			; fb ;44c7
	add a,e			; 83 ;44c8
	ex af,af'			; 08 ;44c9
	pop hl			; e1 ;44ca
	cp 090h		; fe 90 ;44cb
	ret pe			; e8 ;44cd
	jp m,0e845h		; fa 45 e8 ;44ce
	ld (bc),a			; 02 ;44d1
	ld b,(hl)			; 46 ;44d2
	ret p			; f0 ;44d3
	ret m			; f8 ;44d4
	add a,h			; 84 ;44d5
	ret p			; f0 ;44d6
	nop			; 00 ;44d7
	add a,(hl)			; 86 ;44d8
	push af			; f5 ;44d9
	jp p,0f814h		; f2 14 f8 ;44da
	jp m,0f885h		; fa 85 f8 ;44dd
	ld (bc),a			; 02 ;44e0
	add a,a			; 87 ;44e1
	ex af,af'			; 08 ;44e2
	pop hl			; e1 ;44e3
	jp m,0e894h		; fa 94 e8 ;44e4
	or 047h		; f6 47 ;44e7
	ret pe			; e8 ;44e9
	cp 048h		; fe 48 ;44ea
	ret p			; f0 ;44ec
	or 088h		; f6 88 ;44ed
	ret p			; f0 ;44ef
	cp 089h		; fe 89 ;44f0
	jp p,l0104h		; f2 04 01 ;44f2
	ret m			; f8 ;44f5
	or 05bh		; f6 5b ;44f6
	ret m			; f8 ;44f8
	.DB 0fdh,05ch	;ld e,iyh		;44f9
	rlca			; 07 ;44fb
	jp po,095fbh		; e2 fb 95 ;44fc
	ret pe			; e8 ;44ff
	jp m,0e849h		; fa 49 e8 ;4500
	ld (bc),a			; 02 ;4503
	ld c,d			; 4a ;4504
	ret p			; f0 ;4505
	ret m			; f8 ;4506
	adc a,d			; 8a ;4507
	ret p			; f0 ;4508
	nop			; 00 ;4509
	ld h,c			; 61 ;450a
	ret m			; f8 ;450b
	ret m			; f8 ;450c
	ld h,d			; 62 ;450d
	ret m			; f8 ;450e
	nop			; 00 ;450f
	ld h,e			; 63 ;4510
	rlca			; 07 ;4511
	ex (sp),hl			; e3 ;4512
	call m,0e896h		; fc 96 e8 ;4513
	rst 30h			; f7 ;4516
	dec d			; 15 ;4517
	ret pe			; e8 ;4518
	rst 38h			; ff ;4519
	ld c,e			; 4b ;451a
	ret p			; f0 ;451b
	rst 30h			; f7 ;451c
	adc a,(hl)			; 8e ;451d
	ret p			; f0 ;451e
	rst 38h			; ff ;451f
	adc a,e			; 8b ;4520
	ret m			; f8 ;4521
	rst 30h			; f7 ;4522
	adc a,h			; 8c ;4523
	ret m			; f8 ;4524
	rst 38h			; ff ;4525
	adc a,l			; 8d ;4526
	rlca			; 07 ;4527
	ex (sp),hl			; e3 ;4528
	ei			; fb ;4529
	sub (hl)			; 96 ;452a
	ret pe			; e8 ;452b
	or 016h		; f6 16 ;452c
	ret pe			; e8 ;452e
	cp 04bh		; fe 4b ;452f
	ret p			; f0 ;4531
	or 08eh		; f6 8e ;4532
	ret p			; f0 ;4534
	cp 08bh		; fe 8b ;4535
	ret m			; f8 ;4537
	rst 30h			; f7 ;4538
	adc a,h			; 8c ;4539
	ret m			; f8 ;453a
	rst 38h			; ff ;453b
	adc a,a			; 8f ;453c
	ex af,af'			; 08 ;453d
	ret po			; e0 ;453e
	jp p,0e100h		; f2 00 e1 ;453f
	cp 090h		; fe 90 ;4542
	ret pe			; e8 ;4544
	di			; f3 ;4545
	ld hl,0fbe8h		; 21 e8 fb ;4546
	add hl,hl			; 29 ;4549
	jp pe,l2a02h		; ea 02 2a ;454a
	ret p			; f0 ;454d
	jp m,0f04ch		; fa 4c f0 ;454e
	ld (bc),a			; 02 ;4551
	ld c,l			; 4d ;4552
	ret m			; f8 ;4553
	ld c,(iy+008h)		; fd 4e 08 ;4554
	jp po,09102h		; e2 02 91 ;4557
	ret pe			; e8 ;455a
	dec iy		; fd 2b ;455b
	ret pe			; e8 ;455d
	dec b			; 05 ;455e
	inc l			; 2c ;455f
	ret p			; f0 ;4560
	.DB 0fdh,04fh,0f0h	;illegal sequence		;4561
	dec b			; 05 ;4564
	ld d,b			; 50 ;4565
	di			; f3 ;4566
	dec c			; 0d ;4567
	ld bc,0fdf8h		; 01 f8 fd ;4568
	ld d,c			; 51 ;456b
	ret m			; f8 ;456c
	dec b			; 05 ;456d
	ld d,d			; 52 ;456e
	ex af,af'			; 08 ;456f
	pop hl			; e1 ;4570
	ld bc,0e292h		; 01 92 e2 ;4571
	inc c			; 0c ;4574
	ld (bc),a			; 02 ;4575
	ret pe			; e8 ;4576
	.DB 0fdh,02dh	;dec iyl		;4577
	ret pe			; e8 ;4579
	dec b			; 05 ;457a
	ld l,0f0h		; 2e f0 ;457b
	call m,0f053h		; fc 53 f0 ;457d
	inc b			; 04 ;4580
	ld d,h			; 54 ;4581
	ret m			; f8 ;4582
	.DB 0fdh,051h,0f8h	;illegal sequence		;4583
l4586h:
	inc b			; 04 ;4586
	ld d,l			; 55 ;4587
	ex af,af'			; 08 ;4588
	ret po			; e0 ;4589
	call m,0e103h		; fc 03 e1 ;458a
	ld (bc),a			; 02 ;458d
	sub e			; 93 ;458e
	ret pe			; e8 ;458f
	call m,0e82fh		; fc 2f e8 ;4590
	inc b			; 04 ;4593
	jr nc,l4586h		; 30 f0 ;4594
	call m,0f056h		; fc 56 f0 ;4596
	inc b			; 04 ;4599
	ld d,a			; 57 ;459a
	ret m			; f8 ;459b
	call m,0f858h		; fc 58 f8 ;459c
	inc b			; 04 ;459f
	ld d,l			; 55 ;45a0
	rlca			; 07 ;45a1
	pop hl			; e1 ;45a2
	jp m,0e894h		; fa 94 e8 ;45a3
	ei			; fb ;45a6
	ld sp,003e8h		; 31 e8 03 ;45a7
	inc b			; 04 ;45aa
	ret p			; f0 ;45ab
	or 059h		; f6 59 ;45ac
	ret p			; f0 ;45ae
	cp 05ah		; fe 5a ;45af
	ret m			; f8 ;45b1
	or 05bh		; f6 5b ;45b2
	ret m			; f8 ;45b4
	cp 05ch		; fe 5c ;45b5
	rlca			; 07 ;45b7
	jp po,095f9h		; e2 f9 95 ;45b8
	ret pe			; e8 ;45bb
	jp m,0f232h		; fa 32 f2 ;45bc
	xor 005h		; ee 05 ;45bf
	rst 28h			; ef ;45c1
	or 05eh		; f6 5e ;45c2
	ret p			; f0 ;45c4
	cp 05dh		; fe 5d ;45c5
	rst 30h			; f7 ;45c7
	or 05fh		; f6 5f ;45c8
	ret m			; f8 ;45ca
	cp 063h		; fe 63 ;45cb
	ex af,af'			; 08 ;45cd
	ret po			; e0 ;45ce
	rst 28h			; ef ;45cf
	ld b,0e1h		; 06 e1 ;45d0
	jp m,0e896h		; fa 96 e8 ;45d2
	rst 30h			; f7 ;45d5
	inc sp			; 33 ;45d6
	ret pe			; e8 ;45d7
	rst 38h			; ff ;45d8
	inc (hl)			; 34 ;45d9
	ret p			; f0 ;45da
	rst 30h			; f7 ;45db
	ld h,b			; 60 ;45dc
	ret p			; f0 ;45dd
	rst 38h			; ff ;45de
	ld h,c			; 61 ;45df
	ret m			; f8 ;45e0
	rst 30h			; f7 ;45e1
	ld h,d			; 62 ;45e2
	ret m			; f8 ;45e3
	rst 38h			; ff ;45e4
	ld h,e			; 63 ;45e5
	ex af,af'			; 08 ;45e6
	pop hl			; e1 ;45e7
	ld sp,hl			; f9 ;45e8
	sub a			; 97 ;45e9
	ret po			; e0 ;45ea
	rst 38h			; ff ;45eb
	rlca			; 07 ;45ec
	ret pe			; e8 ;45ed
	rst 30h			; f7 ;45ee
	dec (hl)			; 35 ;45ef
	ret pe			; e8 ;45f0
	rst 38h			; ff ;45f1
	ld (hl),0f0h		; 36 f0 ;45f2
	rst 30h			; f7 ;45f4
	ld h,h			; 64 ;45f5
	ret p			; f0 ;45f6
	rst 38h			; ff ;45f7
	ld h,l			; 65 ;45f8
	ret m			; f8 ;45f9
	rst 30h			; f7 ;45fa
	ld h,d			; 62 ;45fb
	ret m			; f8 ;45fc
	rst 38h			; ff ;45fd
	ld h,e			; 63 ;45fe
	rlca			; 07 ;45ff
	ex (sp),hl			; e3 ;4600
	.DB 0fdh,092h,0e8h	;illegal sequence		;4601
	ld sp,hl			; f9 ;4604
	scf			; 37 ;4605
	ret pe			; e8 ;4606
	ld bc,0f008h		; 01 08 f0 ;4607
	ld sp,hl			; f9 ;460a
	ld h,(hl)			; 66 ;460b
	ret p			; f0 ;460c
	ld bc,0f867h		; 01 67 f8 ;460d
	ld sp,hl			; f9 ;4610
	ld l,b			; 68 ;4611
	ret m			; f8 ;4612
	ld bc,00769h		; 01 69 07 ;4613
	ex (sp),hl			; e3 ;4616
	call m,0e892h		; fc 92 e8 ;4617
	ret m			; f8 ;461a
	scf			; 37 ;461b
	ret pe			; e8 ;461c
	nop			; 00 ;461d
	add hl,bc			; 09 ;461e
	ret p			; f0 ;461f
	ret m			; f8 ;4620
	ld h,(hl)			; 66 ;4621
	ret p			; f0 ;4622
	nop			; 00 ;4623
	ld h,a			; 67 ;4624
	ret m			; f8 ;4625
	ld sp,hl			; f9 ;4626
	ld l,d			; 6a ;4627
	ret m			; f8 ;4628
	ld bc,00869h		; 01 69 08 ;4629
	jp po,091fch		; e2 fc 91 ;462c
	jp (hl)			; e9 ;462f
	call p,0e938h		; f4 38 e9 ;4630
	call m,0e839h		; fc 39 e8 ;4633
	inc b			; 04 ;4636
	ld a,(0f4f1h)		; 3a f1 f4 ;4637
	ld a,(bc)			; 0a ;463a
	pop af			; f1 ;463b
	call m,0f96bh		; fc 6b f9 ;463c
	call p,0f90bh		; f4 0b f9 ;463f
	call m,sub_096ch		; fc 6c 09 ;4642
	jp po,098fch		; e2 fc 98 ;4645
	pop hl			; e1 ;4648
	nop			; 00 ;4649
	ld (0f0e9h),hl		; 22 e9 f0 ;464a
	inc c			; 0c ;464d
	jp (hl)			; e9 ;464e
	ret m			; f8 ;464f
	dec sp			; 3b ;4650
	jp (hl)			; e9 ;4651
	nop			; 00 ;4652
	inc a			; 3c ;4653
	pop af			; f1 ;4654
	ret p			; f0 ;4655
	dec c			; 0d ;4656
	pop af			; f1 ;4657
	ld sp,hl			; f9 ;4658
	ld l,l			; 6d ;4659
	call p,sub_6e01h		; f4 01 6e ;465a
	ld sp,hl			; f9 ;465d
	ret m			; f8 ;465e
	ld l,a			; 6f ;465f
	rlca			; 07 ;4660
	ret po			; e0 ;4661
	pop af			; f1 ;4662
	ld bc,0f6e0h		; 01 e0 f6 ;4663
	inc hl			; 23 ;4666
	ret po			; e0 ;4667
	cp 099h		; fe 99 ;4668
	ret pe			; e8 ;466a
	rst 38h			; ff ;466b
	dec a			; 3d ;466c
	ret p			; f0 ;466d
	ld (iy-008h),b		; fd 70 f8 ;466e
	ld sp,hl			; f9 ;4671
	ld (hl),c			; 71 ;4672
	ret m			; f8 ;4673
	ld bc,00872h		; 01 72 08 ;4674
	ret c			; d8 ;4677
	dec b			; 05 ;4678
	ld c,0e0h		; 0e e0 ;4679
	inc bc			; 03 ;467b
	inc h			; 24 ;467c
	ret pe			; e8 ;467d
	ei			; fb ;467e
	ccf			; 3f ;467f
	ret pe			; e8 ;4680
	inc bc			; 03 ;4681
	ld a,0e4h		; 3e e4 ;4682
	nop			; 00 ;4684
	sub d			; 92 ;4685
	ret p			; f0 ;4686
	ld (iy-00bh),e		; fd 73 f5 ;4687
	push af			; f5 ;468a
	ld (hl),h			; 74 ;468b
	ret m			; f8 ;468c
	push af			; f5 ;468d
	ld (hl),l			; 75 ;468e
	ld b,0e2h		; 06 e2 ;468f
l4691h:
	inc bc			; 03 ;4691
	dec h			; 25 ;4692
	ret pe			; e8 ;4693
	ei			; fb ;4694
	ld b,b			; 40 ;4695
	jp pe,l0f02h+1		; ea 03 0f ;4696
	push hl			; e5 ;4699
	nop			; 00 ;469a
	sub d			; 92 ;469b
	ret p			; f0 ;469c
	ei			; fb ;469d
	halt			; 76 ;469e
	ret m			; f8 ;469f
	ei			; fb ;46a0
	ld (hl),a			; 77 ;46a1
	ld b,0eah		; 06 ea ;46a2
	ret m			; f8 ;46a4
	djnz l4691h		; 10 ea ;46a5
	nop			; 00 ;46a7
	ld b,c			; 41 ;46a8
	rst 20h			; e7 ;46a9
	cp 097h		; fe 97 ;46aa
	jp p,011f8h		; f2 f8 11 ;46ac
	jp p,l7800h		; f2 00 78 ;46af
	jp m,l79fch		; fa fc 79 ;46b2
	add hl,bc			; 09 ;46b5
l46b6h:
	ret c			; d8 ;46b6
	nop			; 00 ;46b7
	ld c,0e1h		; 0e e1 ;46b8
	.DB 0fdh,093h,0e0h	;illegal sequence		;46ba
	nop			; 00 ;46bd
	ld h,0e8h		; 26 e8 ;46be
	ret m			; f8 ;46c0
	cpl			; 2f ;46c1
	ret pe			; e8 ;46c2
	nop			; 00 ;46c3
	jr nc,l46b6h		; 30 f0 ;46c4
	ret m			; f8 ;46c6
	ld d,(hl)			; 56 ;46c7
	ret p			; f0 ;46c8
	nop			; 00 ;46c9
	ld d,a			; 57 ;46ca
	ret m			; f8 ;46cb
	ret m			; f8 ;46cc
	ld e,b			; 58 ;46cd
	ret m			; f8 ;46ce
	nop			; 00 ;46cf
	ld d,l			; 55 ;46d0
	add hl,bc			; 09 ;46d1
	ret c			; d8 ;46d2
	or 00eh		; f6 0e ;46d3
	pop hl			; e1 ;46d5
	call m,0e093h		; fc 93 e0 ;46d6
	ret m			; f8 ;46d9
	daa			; 27 ;46da
	ret pe			; e8 ;46db
	ret m			; f8 ;46dc
	dec (hl)			; 35 ;46dd
	ret pe			; e8 ;46de
	nop			; 00 ;46df
	ld (hl),0f0h		; 36 f0 ;46e0
	ret m			; f8 ;46e2
	ld h,h			; 64 ;46e3
	ret p			; f0 ;46e4
	nop			; 00 ;46e5
	ld h,l			; 65 ;46e6
	ret m			; f8 ;46e7
	ret m			; f8 ;46e8
	ld h,d			; 62 ;46e9
	ret m			; f8 ;46ea
	nop			; 00 ;46eb
	ld h,e			; 63 ;46ec
	ex af,af'			; 08 ;46ed
	jp po,095fbh		; e2 fb 95 ;46ee
	ret pe			; e8 ;46f1
	ret p			; f0 ;46f2
	ld (de),a			; 12 ;46f3
	ret pe			; e8 ;46f4
	ret m			; f8 ;46f5
	ld b,d			; 42 ;46f6
	ret pe			; e8 ;46f7
	nop			; 00 ;46f8
	ld b,e			; 43 ;46f9
	ret p			; f0 ;46fa
	ret m			; f8 ;46fb
	ld h,b			; 60 ;46fc
	ret p			; f0 ;46fd
	nop			; 00 ;46fe
	ld h,c			; 61 ;46ff
	ret m			; f8 ;4700
	ret m			; f8 ;4701
	ld h,d			; 62 ;4702
	ret m			; f8 ;4703
	nop			; 00 ;4704
	ld h,e			; 63 ;4705
	add hl,bc			; 09 ;4706
	jp c,l13f0h		; da f0 13 ;4707
	ret po			; e0 ;470a
	ret m			; f8 ;470b
	jr z,$-31		; 28 e1 ;470c
	call m,0e896h		; fc 96 e8 ;470e
	ret m			; f8 ;4711
	ld b,h			; 44 ;4712
	ret pe			; e8 ;4713
	nop			; 00 ;4714
	inc (hl)			; 34 ;4715
	ret p			; f0 ;4716
	ret m			; f8 ;4717
	ld h,b			; 60 ;4718
	ret p			; f0 ;4719
	nop			; 00 ;471a
	ld h,c			; 61 ;471b
	ret m			; f8 ;471c
	ret m			; f8 ;471d
	ld h,d			; 62 ;471e
	ret m			; f8 ;471f
	nop			; 00 ;4720
	ld h,e			; 63 ;4721
	rlca			; 07 ;4722
	pop hl			; e1 ;4723
	ret m			; f8 ;4724
	sbc a,d			; 9a ;4725
	jp (hl)			; e9 ;4726
	ret m			; f8 ;4727
	xor a			; af ;4728
	jp (hl)			; e9 ;4729
	call m,0f1a5h		; fc a5 f1 ;472a
	ret m			; f8 ;472d
	out (0f1h),a		; d3 f1 ;472e
	nop			; 00 ;4730
	call nc,0f8f9h		; d4 f9 f8 ;4731
	or b			; b0 ;4734
	ld sp,hl			; f9 ;4735
	nop			; 00 ;4736
	or c			; b1 ;4737
	ld b,0e8h		; 06 e8 ;4738
	call m,0eaa5h		; fc a5 ea ;473a
	pop af			; f1 ;473d
	sbc a,e			; 9b ;473e
	ret p			; f0 ;473f
	push af			; f5 ;4740
	or d			; b2 ;4741
	ret p			; f0 ;4742
	.DB 0fdh,0d5h,0f8h	;illegal sequence		;4743
	ld sp,hl			; f9 ;4746
	or e			; b3 ;4747
	ret m			; f8 ;4748
	ld bc,l06b4h		; 01 b4 06 ;4749
	ret pe			; e8 ;474c
	call m,0f3a5h		; fc a5 f3 ;474d
	jp p,0f09bh		; f2 9b f0 ;4750
	ret m			; f8 ;4753
	or l			; b5 ;4754
	ret p			; f0 ;4755
	nop			; 00 ;4756
	sub 0f8h		; d6 f8 ;4757
	ret m			; f8 ;4759
	or (hl)			; b6 ;475a
	ret m			; f8 ;475b
	nop			; 00 ;475c
	or a			; b7 ;475d
	dec b			; 05 ;475e
	ret pe			; e8 ;475f
	and (iy-018h)		; fd a6 e8 ;4760
	inc bc			; 03 ;4763
	sbc a,h			; 9c ;4764
	ret p			; f0 ;4765
	ret m			; f8 ;4766
	rst 10h			; d7 ;4767
	ret p			; f0 ;4768
	nop			; 00 ;4769
	ret c			; d8 ;476a
	ret m			; f8 ;476b
	call m,sub_06b8h		; fc b8 06 ;476c
	ret pe			; e8 ;476f
	or 09dh		; f6 9d ;4770
	ret pe			; e8 ;4772
	cp 0a7h		; fe a7 ;4773
	ret p			; f0 ;4775
	ret m			; f8 ;4776
	exx			; d9 ;4777
	ret p			; f0 ;4778
	nop			; 00 ;4779
	jp c,0f8f8h		; da f8 f8 ;477a
	cp c			; b9 ;477d
	ret m			; f8 ;477e
	nop			; 00 ;477f
	cp d			; ba ;4780
	ld b,0e8h		; 06 e8 ;4781
	call m,0eaa7h		; fc a7 ea ;4783
	ld bc,0f09ah		; 01 9a f0 ;4786
	rst 30h			; f7 ;4789
	in a,(0f0h)		; db f0 ;478a
	rst 38h			; ff ;478c
	call c,0f7f8h		; dc f8 f7 ;478d
	cp e			; bb ;4790
	ret m			; f8 ;4791
	rst 38h			; ff ;4792
	cp h			; bc ;4793
	inc b			; 04 ;4794
	jp (hl)			; e9 ;4795
	call m,0f0a7h		; fc a7 f0 ;4796
	ei			; fb ;4799
	.DB 0ddh,0f8h,0f8h	;illegal sequence		;479a
	cp l			; bd ;479d
	push af			; f5 ;479e
	nop			; 00 ;479f
	sbc a,(hl)			; 9e ;47a0
	dec b			; 05 ;47a1
	ret pe			; e8 ;47a2
	call p,0e89fh		; f4 9f e8 ;47a3
	ei			; fb ;47a6
	xor b			; a8 ;47a7
	ret p			; f0 ;47a8
	ret m			; f8 ;47a9
	sbc a,0f0h		; de f0 ;47aa
	nop			; 00 ;47ac
	rst 18h			; df ;47ad
	ret m			; f8 ;47ae
	call m,sub_04beh		; fc be 04 ;47af
	ret pe			; e8 ;47b2
	ei			; fb ;47b3
	xor c			; a9 ;47b4
	ret p			; f0 ;47b5
	ret m			; f8 ;47b6
	ret po			; e0 ;47b7
	ret p			; f0 ;47b8
	nop			; 00 ;47b9
	pop hl			; e1 ;47ba
	ret m			; f8 ;47bb
	call m,sub_05bfh		; fc bf 05 ;47bc
	ret pe			; e8 ;47bf
	jp m,0f0a9h		; fa a9 f0 ;47c0
	ret m			; f8 ;47c3
	jp po,000f0h		; e2 f0 00 ;47c4
	ex (sp),hl			; e3 ;47c7
	ret m			; f8 ;47c8
	ret m			; f8 ;47c9
	ret nz			; c0 ;47ca
	ret m			; f8 ;47cb
	nop			; 00 ;47cc
	pop bc			; c1 ;47cd
	dec b			; 05 ;47ce
	ret pe			; e8 ;47cf
	call m,0f0aah		; fc aa f0 ;47d0
	ret m			; f8 ;47d3
	and b			; a0 ;47d4
	ret p			; f0 ;47d5
	nop			; 00 ;47d6
	call po,0f8f8h		; e4 f8 f8 ;47d7
	jp nz,000f8h		; c2 f8 00 ;47da
	jp 0e806h		; c3 06 e8 ;47dd
	ret m			; f8 ;47e0
	call nz,000e8h		; c4 e8 00 ;47e1
	xor e			; ab ;47e4
	ret p			; f0 ;47e5
	ret m			; f8 ;47e6
	push hl			; e5 ;47e7
	ret p			; f0 ;47e8
	nop			; 00 ;47e9
	and 0f0h		; e6 f0 ;47ea
	rlca			; 07 ;47ec
	sbc a,e			; 9b ;47ed
	ret m			; f8 ;47ee
	call m,005c5h		; fc c5 05 ;47ef
	ret po			; e0 ;47f2
	nop			; 00 ;47f3
	rst 20h			; e7 ;47f4
	ret po			; e0 ;47f5
	rlca			; 07 ;47f6
	sbc a,e			; 9b ;47f7
	ret pe			; e8 ;47f8
	.DB 0fdh,0ach	;xor iyh		;47f9
	ret p			; f0 ;47fb
	.DB 0fdh,0e8h,0f8h	;illegal sequence		;47fc
	.DB 0fdh,0c6h,006h	;illegal sequence		;47ff
	ret po			; e0 ;4802
	jp m,0e8a1h		; fa a1 e8 ;4803
	jp m,0e8c7h		; fa c7 e8 ;4806
	ld (bc),a			; 02 ;4809
	xor l			; ad ;480a
	ret p			; f0 ;480b
	jp m,0f0e9h		; fa e9 f0 ;480c
	ld (bc),a			; 02 ;480f
	jp pe,0fcf8h		; ea f8 fc ;4810
	ret z			; c8 ;4813
	dec b			; 05 ;4814
	ret pe			; e8 ;4815
	rst 38h			; ff ;4816
	xor (hl)			; ae ;4817
	ret p			; f0 ;4818
	jp m,0f0ebh		; fa eb f0 ;4819
	ld (bc),a			; 02 ;481c
	ret			; c9 ;481d
	ret m			; f8 ;481e
	jp m,0f8cah		; fa ca f8 ;481f
	ld (bc),a			; 02 ;4822
	and d			; a2 ;4823
	dec b			; 05 ;4824
	ret pe			; e8 ;4825
	.DB 0fdh,0a7h,0e7h	;illegal sequence		;4826
	dec b			; 05 ;4829
	sbc a,d			; 9a ;482a
	ret p			; f0 ;482b
	call m,0efech		; fc ec ef ;482c
	inc b			; 04 ;482f
	set 7,b		; cb f8 ;4830
	call m,sub_06cch		; fc cc 06 ;4832
	ret po			; e0 ;4835
	jp p,0e8a3h		; f2 a3 e8 ;4836
	jp p,0e8a4h		; f2 a4 e8 ;4839
	call m,0f0a6h		; fc a6 f0 ;483c
	rst 30h			; f7 ;483f
	.DB 0edh;next byte illegal after ed		;4840
	ret p			; f0 ;4841
	rst 38h			; ff ;4842
	xor 0f8h		; ee f8 ;4843
	call m,007beh		; fc be 07 ;4845
	pop hl			; e1 ;4848
	ret m			; f8 ;4849
	sbc a,d			; 9a ;484a
	jp (hl)			; e9 ;484b
	ret m			; f8 ;484c
	xor a			; af ;484d
	ret pe			; e8 ;484e
	call m,0f0a5h		; fc a5 f0 ;484f
	ret m			; f8 ;4852
	rst 28h			; ef ;4853
	ret p			; f0 ;4854
	nop			; 00 ;4855
	ret p			; f0 ;4856
	ret m			; f8 ;4857
	ret m			; f8 ;4858
	call 000f8h		; cd f8 00 ;4859
	adc a,006h		; ce 06 ;485c
	pop hl			; e1 ;485e
	ret m			; f8 ;485f
	sbc a,d			; 9a ;4860
	jp (hl)			; e9 ;4861
	ret m			; f8 ;4862
	xor a			; af ;4863
	ret pe			; e8 ;4864
	call m,0f0a5h		; fc a5 f0 ;4865
	ret m			; f8 ;4868
	rst 28h			; ef ;4869
	ret p			; f0 ;486a
	nop			; 00 ;486b
	pop af			; f1 ;486c
	ret m			; f8 ;486d
	.DB 0fdh,0cfh,006h	;illegal sequence		;486e
	jp (hl)			; e9 ;4871
	or 09dh		; f6 9d ;4872
	jp (hl)			; e9 ;4874
	cp 0a7h		; fe a7 ;4875
	pop af			; f1 ;4877
	ret m			; f8 ;4878
	jp p,l00f1h		; f2 f1 00 ;4879
	di			; f3 ;487c
	ld sp,hl			; f9 ;487d
	ret m			; f8 ;487e
	ret nc			; d0 ;487f
	ld sp,hl			; f9 ;4880
	nop			; 00 ;4881
	pop de			; d1 ;4882
	dec b			; 05 ;4883
	jp (hl)			; e9 ;4884
	or 09dh		; f6 9d ;4885
	jp (hl)			; e9 ;4887
	cp 0a7h		; fe a7 ;4888
	pop af			; f1 ;488a
	ret m			; f8 ;488b
	exx			; d9 ;488c
	pop af			; f1 ;488d
	nop			; 00 ;488e
	call p,0fbf9h		; f4 f9 fb ;488f
	jp nc,0fc01h		; d2 01 fc ;4892
	.DB $fc		;4895
l4896h:
	.DB $ff $01		;4896
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
	ld (bc),a			; 02 ;48a7
	ld a,a			; 7f ;48a8
	nop			; 00 ;48a9
	nop			; 00 ;48aa
	nop			; 00 ;48ab
	rlca			; 07 ;48ac
	ld (l3208h),a		; 32 08 32 ;48ad
	ld (bc),a			; 02 ;48b0
	ld a,a			; 7f ;48b1
	nop			; 00 ;48b2
	nop			; 00 ;48b3
	nop			; 00 ;48b4
	ld de,l1232h		; 11 32 12 ;48b5
	ld (l7f01h),a		; 32 01 7f ;48b8
	nop			; 00 ;48bb
	nop			; 00 ;48bc
	nop			; 00 ;48bd
	nop			; 00 ;48be
	ld bc,l7f02h		; 01 02 7f ;48bf
	nop			; 00 ;48c2
	nop			; 00 ;48c3
	nop			; 00 ;48c4
	nop			; 00 ;48c5
	inc b			; 04 ;48c6
	ld bc,l0104h		; 01 04 01 ;48c7
	ld a,a			; 7f ;48ca
	nop			; 00 ;48cb
	nop			; 00 ;48cc
	nop			; 00 ;48cd
	ld (bc),a			; 02 ;48ce
	ld bc,l7f02h		; 01 02 7f ;48cf
	nop			; 00 ;48d2
	nop			; 00 ;48d3
	nop			; 00 ;48d4
	ld (bc),a			; 02 ;48d5
	inc b			; 04 ;48d6
	inc bc			; 03 ;48d7
	inc b			; 04 ;48d8
	dec b			; 05 ;48d9
	inc b			; 04 ;48da
	dec bc			; 0b ;48db
	inc bc			; 03 ;48dc
	ld bc,00308h+1		; 01 09 03 ;48dd
	inc b			; 04 ;48e0
	dec b			; 05 ;48e1
	ld a,(bc)			; 0a ;48e2
	dec b			; 05 ;48e3
	dec bc			; 0b ;48e4
	dec b			; 05 ;48e5
	inc c			; 0c ;48e6
	ld a,(bc)			; 0a ;48e7
	dec b			; 05 ;48e8
	inc b			; 04 ;48e9
	dec bc			; 0b ;48ea
	inc bc			; 03 ;48eb
	ld (bc),a			; 02 ;48ec
	dec c			; 0d ;48ed
	inc bc			; 03 ;48ee
	dec b			; 05 ;48ef
	dec b			; 05 ;48f0
	ld c,005h		; 0e 05 ;48f1
	rrca			; 0f ;48f3
	dec b			; 05 ;48f4
	djnz l4901h		; 10 0a ;48f5
	dec b			; 05 ;48f7
	inc b			; 04 ;48f8
	dec bc			; 0b ;48f9
	inc bc			; 03 ;48fa
	inc bc			; 03 ;48fb
	add hl,bc			; 09 ;48fc
	inc bc			; 03 ;48fd
	inc b			; 04 ;48fe
	dec b			; 05 ;48ff
	ld a,(bc)			; 0a ;4900
l4901h:
	dec b			; 05 ;4901
	dec bc			; 0b ;4902
	dec b			; 05 ;4903
	add hl,de			; 19 ;4904
	ld a,(bc)			; 0a ;4905
	dec b			; 05 ;4906
	inc b			; 04 ;4907
	dec bc			; 0b ;4908
	inc bc			; 03 ;4909
	inc b			; 04 ;490a
	dec c			; 0d ;490b
	inc bc			; 03 ;490c
	dec b			; 05 ;490d
	dec b			; 05 ;490e
	ld c,005h		; 0e 05 ;490f
	rrca			; 0f ;4911
	dec b			; 05 ;4912
	ld a,(de)			; 1a ;4913
	ld a,(bc)			; 0a ;4914
	inc b			; 04 ;4915
	inc b			; 04 ;4916
	dec bc			; 0b ;4917
	inc bc			; 03 ;4918
	dec b			; 05 ;4919
	add hl,bc			; 09 ;491a
	dec b			; 05 ;491b
	inc b			; 04 ;491c
	dec b			; 05 ;491d
	ld a,(bc)			; 0a ;491e
	inc bc			; 03 ;491f
	dec bc			; 0b ;4920
	ld a,(bc)			; 0a ;4921
	dec b			; 05 ;4922
	inc b			; 04 ;4923
	dec bc			; 0b ;4924
	inc bc			; 03 ;4925
	ld b,00dh		; 06 0d ;4926
	dec b			; 05 ;4928
	dec b			; 05 ;4929
	dec b			; 05 ;492a
	ld b,003h		; 06 03 ;492b
	dec de			; 1b ;492d
	inc bc			; 03 ;492e
	inc e			; 1c ;492f
	ld a,(bc)			; 0a ;4930
	ld bc,l007fh		; 01 7f 00 ;4931
	nop			; 00 ;4934
	nop			; 00 ;4935
	inc de			; 13 ;4936
	ld bc,l7f01h		; 01 01 7f ;4937
	nop			; 00 ;493a
	nop			; 00 ;493b
	nop			; 00 ;493c
	inc d			; 14 ;493d
	ld bc,l0603h+1		; 01 04 06 ;493e
	rrca			; 0f ;4941
	inc b			; 04 ;4942
	rlca			; 07 ;4943
	dec d			; 15 ;4944
	dec b			; 05 ;4945
	ld d,004h		; 16 04 ;4946
	rla			; 17 ;4948
	inc b			; 04 ;4949
	jr l4954h		; 18 08 ;494a
	dec b			; 05 ;494c
	dec b			; 05 ;494d
	dec bc			; 0b ;494e
	inc bc			; 03 ;494f
	ex af,af'			; 08 ;4950
	add hl,bc			; 09 ;4951
	dec b			; 05 ;4952
	dec d			; 15 ;4953
l4954h:
	dec b			; 05 ;4954
	ld d,004h		; 16 04 ;4955
	rla			; 17 ;4957
	inc b			; 04 ;4958
	jr l4963h		; 18 08 ;4959
	inc bc			; 03 ;495b
	ld a,a			; 7f ;495c
	nop			; 00 ;495d
	nop			; 00 ;495e
	nop			; 00 ;495f
	ld a,(bc)			; 0a ;4960
	ld (bc),a			; 02 ;4961
	inc b			; 04 ;4962
l4963h:
	ld (bc),a			; 02 ;4963
	nop			; 00 ;4964
	ld (bc),a			; 02 ;4965
	inc bc			; 03 ;4966
	ld a,a			; 7f ;4967
	nop			; 00 ;4968
	nop			; 00 ;4969
	nop			; 00 ;496a
	ld c,002h		; 0e 02 ;496b
	dec c			; 0d ;496d
	ld (bc),a			; 02 ;496e
	ld (bc),a			; 02 ;496f
	ld (bc),a			; 02 ;4970
	ld b,07fh		; 06 7f ;4971
	nop			; 00 ;4973
	nop			; 00 ;4974
	nop			; 00 ;4975
	add hl,bc			; 09 ;4976
	ld bc,l010ah		; 01 0a 01 ;4977
	dec bc			; 0b ;497a
	ld bc,l010fh		; 01 0f 01 ;497b
	ld c,001h		; 0e 01 ;497e
	dec c			; 0d ;4980
	ld bc,l7f06h		; 01 06 7f ;4981
	nop			; 00 ;4984
	nop			; 00 ;4985
	nop			; 00 ;4986
	dec c			; 0d ;4987
	ld bc,l010dh+1		; 01 0e 01 ;4988
	rrca			; 0f ;498b
	ld bc,l010ah+1		; 01 0b 01 ;498c
	ld a,(bc)			; 0a ;498f
	ld bc,00109h		; 01 09 01 ;4990
	ld (bc),a			; 02 ;4993
	ld a,a			; 7f ;4994
	nop			; 00 ;4995
	nop			; 00 ;4996
	nop			; 00 ;4997
	inc h			; 24 ;4998
	ld (03225h),a		; 32 25 32 ;4999
	ld (bc),a			; 02 ;499c
	ld a,a			; 7f ;499d
	nop			; 00 ;499e
	nop			; 00 ;499f
	nop			; 00 ;49a0
	ld l,032h		; 2e 32 ;49a1
	cpl			; 2f ;49a3
	ld (l7f01h),a		; 32 01 7f ;49a4
	nop			; 00 ;49a7
	nop			; 00 ;49a8
	nop			; 00 ;49a9
	dec e			; 1d ;49aa
	ld bc,l7f02h		; 01 02 7f ;49ab
	nop			; 00 ;49ae
	nop			; 00 ;49af
	nop			; 00 ;49b0
	dec e			; 1d ;49b1
	inc b			; 04 ;49b2
	ld e,004h		; 1e 04 ;49b3
	ld bc,l007fh		; 01 7f 00 ;49b5
	nop			; 00 ;49b8
	nop			; 00 ;49b9
	rra			; 1f ;49ba
	ld bc,l7f02h		; 01 02 7f ;49bb
	nop			; 00 ;49be
	nop			; 00 ;49bf
	nop			; 00 ;49c0
	rra			; 1f ;49c1
	inc b			; 04 ;49c2
	jr nz,l49c9h		; 20 04 ;49c3
	dec b			; 05 ;49c5
	inc b			; 04 ;49c6
	dec bc			; 0b ;49c7
	inc bc			; 03 ;49c8
l49c9h:
	ld bc,00326h		; 01 26 03 ;49c9
	ld hl,l2704h+1		; 21 05 27 ;49cc
	dec b			; 05 ;49cf
	jr z,l49d7h		; 28 05 ;49d0
	add hl,hl			; 29 ;49d2
	ld a,(bc)			; 0a ;49d3
	dec b			; 05 ;49d4
	inc b			; 04 ;49d5
	dec bc			; 0b ;49d6
l49d7h:
	inc bc			; 03 ;49d7
	ld (bc),a			; 02 ;49d8
	ld hl,(l2203h)		; 2a 03 22 ;49d9
	dec b			; 05 ;49dc
	dec hl			; 2b ;49dd
	dec b			; 05 ;49de
	inc l			; 2c ;49df
	dec b			; 05 ;49e0
	dec l			; 2d ;49e1
	ld a,(bc)			; 0a ;49e2
	dec b			; 05 ;49e3
	inc b			; 04 ;49e4
	dec bc			; 0b ;49e5
	inc bc			; 03 ;49e6
	inc bc			; 03 ;49e7
	ld h,003h		; 26 03 ;49e8
	ld hl,l2704h+1		; 21 05 27 ;49ea
	dec b			; 05 ;49ed
	jr z,l49f5h		; 28 05 ;49ee
	ld (hl),00ah		; 36 0a ;49f0
	dec b			; 05 ;49f2
	inc b			; 04 ;49f3
	dec bc			; 0b ;49f4
l49f5h:
	inc bc			; 03 ;49f5
	inc b			; 04 ;49f6
	ld hl,(l2203h)		; 2a 03 22 ;49f7
	dec b			; 05 ;49fa
	dec hl			; 2b ;49fb
	dec b			; 05 ;49fc
	inc l			; 2c ;49fd
	dec b			; 05 ;49fe
	scf			; 37 ;49ff
	ld a,(bc)			; 0a ;4a00
	inc b			; 04 ;4a01
	inc b			; 04 ;4a02
l4a03h:
	dec bc			; 0b ;4a03
	inc bc			; 03 ;4a04
	dec b			; 05 ;4a05
	ld h,003h		; 26 03 ;4a06
	ld hl,l2704h+1		; 21 05 27 ;4a08
	dec b			; 05 ;4a0b
	jr z,l4a18h		; 28 0a ;4a0c
	dec b			; 05 ;4a0e
	inc b			; 04 ;4a0f
	dec bc			; 0b ;4a10
	inc bc			; 03 ;4a11
	ld b,02ah		; 06 2a ;4a12
	inc bc			; 03 ;4a14
	ld (02305h),hl		; 22 05 23 ;4a15
l4a18h:
	dec b			; 05 ;4a18
	jr c,l4a20h		; 38 05 ;4a19
	add hl,sp			; 39 ;4a1b
	ld a,(bc)			; 0a ;4a1c
	ld bc,l007fh		; 01 7f 00 ;4a1d
l4a20h:
	nop			; 00 ;4a20
	nop			; 00 ;4a21
	jr nc,$+1		; 30 01 ;4a22
	ld bc,l007fh		; 01 7f 00 ;4a24
	nop			; 00 ;4a27
	nop			; 00 ;4a28
	ld sp,00401h		; 31 01 04 ;4a29
	ld b,00fh		; 06 0f ;4a2c
	inc b			; 04 ;4a2e
	rlca			; 07 ;4a2f
	ld (l3303h+2),a		; 32 05 33 ;4a30
	inc b			; 04 ;4a33
	inc (hl)			; 34 ;4a34
	inc b			; 04 ;4a35
	dec (hl)			; 35 ;4a36
	ex af,af'			; 08 ;4a37
	dec b			; 05 ;4a38
	dec b			; 05 ;4a39
	rrca			; 0f ;4a3a
	inc b			; 04 ;4a3b
	ex af,af'			; 08 ;4a3c
	ld h,005h		; 26 05 ;4a3d
	ld (l3303h+2),a		; 32 05 33 ;4a3f
	inc b			; 04 ;4a42
	inc (hl)			; 34 ;4a43
	inc b			; 04 ;4a44
	dec (hl)			; 35 ;4a45
	ex af,af'			; 08 ;4a46
	inc bc			; 03 ;4a47
	ld a,a			; 7f ;4a48
	nop			; 00 ;4a49
	nop			; 00 ;4a4a
	nop			; 00 ;4a4b
	daa			; 27 ;4a4c
	ld (bc),a			; 02 ;4a4d
	ld hl,l1d00h+2		; 21 02 1d ;4a4e
	ld (bc),a			; 02 ;4a51
	inc bc			; 03 ;4a52
	ld a,a			; 7f ;4a53
	nop			; 00 ;4a54
	nop			; 00 ;4a55
	nop			; 00 ;4a56
	dec hl			; 2b ;4a57
	ld (bc),a			; 02 ;4a58
	ld (l1f02h),hl		; 22 02 1f ;4a59
	ld (bc),a			; 02 ;4a5c
	ld b,07fh		; 06 7f ;4a5d
	nop			; 00 ;4a5f
	nop			; 00 ;4a60
	nop			; 00 ;4a61
	ld h,001h		; 26 01 ;4a62
	daa			; 27 ;4a64
	ld bc,l0127h+1		; 01 28 01 ;4a65
	inc l			; 2c ;4a68
	ld bc,l012ah+1		; 01 2b 01 ;4a69
	ld hl,(sub_0600h+1)		; 2a 01 06 ;4a6c
	ld a,a			; 7f ;4a6f
	nop			; 00 ;4a70
	nop			; 00 ;4a71
	nop			; 00 ;4a72
	ld hl,(l2b00h+1)		; 2a 01 2b ;4a73
	ld bc,l012ah+2		; 01 2c 01 ;4a76
	jr z,l4a7ch		; 28 01 ;4a79
	daa			; 27 ;4a7b
l4a7ch:
	ld bc,l0124h+2		; 01 26 01 ;4a7c
	ld (bc),a			; 02 ;4a7f
	ld a,a			; 7f ;4a80
	nop			; 00 ;4a81
	nop			; 00 ;4a82
	nop			; 00 ;4a83
	ld b,d			; 42 ;4a84
	ld (03243h),a		; 32 43 32 ;4a85
	ld bc,l007fh		; 01 7f 00 ;4a88
	nop			; 00 ;4a8b
	nop			; 00 ;4a8c
	ld c,l			; 4d ;4a8d
	ld bc,l7f02h		; 01 02 7f ;4a8e
	nop			; 00 ;4a91
	nop			; 00 ;4a92
	nop			; 00 ;4a93
	ld c,l			; 4d ;4a94
	inc b			; 04 ;4a95
	ld c,(hl)			; 4e ;4a96
	inc b			; 04 ;4a97
	ld bc,l007fh		; 01 7f 00 ;4a98
	nop			; 00 ;4a9b
	nop			; 00 ;4a9c
	ld c,e			; 4b ;4a9d
	ld bc,l7f02h		; 01 02 7f ;4a9e
	nop			; 00 ;4aa1
	nop			; 00 ;4aa2
	nop			; 00 ;4aa3
	ld c,e			; 4b ;4aa4
	inc b			; 04 ;4aa5
	ld c,h			; 4c ;4aa6
	inc b			; 04 ;4aa7
	inc b			; 04 ;4aa8
	nop			; 00 ;4aa9
	dec bc			; 0b ;4aaa
	inc bc			; 03 ;4aab
	add hl,bc			; 09 ;4aac
	ld a,(l3b01h+2)		; 3a 03 3b ;4aad
	inc bc			; 03 ;4ab0
	inc a			; 3c ;4ab1
	inc bc			; 03 ;4ab2
	dec a			; 3d ;4ab3
	ex af,af'			; 08 ;4ab4
	inc b			; 04 ;4ab5
	nop			; 00 ;4ab6
	dec bc			; 0b ;4ab7
	inc bc			; 03 ;4ab8
	ld a,(bc)			; 0a ;4ab9
	ld a,(l3b01h+2)		; 3a 03 3b ;4aba
	inc bc			; 03 ;4abd
	inc a			; 3c ;4abe
	inc bc			; 03 ;4abf
	dec a			; 3d ;4ac0
	ex af,af'			; 08 ;4ac1
	inc b			; 04 ;4ac2
	nop			; 00 ;4ac3
	dec bc			; 0b ;4ac4
	inc bc			; 03 ;4ac5
	dec bc			; 0b ;4ac6
	ld a,003h		; 3e 03 ;4ac7
	ccf			; 3f ;4ac9
	inc bc			; 03 ;4aca
	ld b,b			; 40 ;4acb
	inc bc			; 03 ;4acc
	ld b,c			; 41 ;4acd
	ex af,af'			; 08 ;4ace
	inc b			; 04 ;4acf
	nop			; 00 ;4ad0
	dec bc			; 0b ;4ad1
	inc bc			; 03 ;4ad2
	inc c			; 0c ;4ad3
	ld a,003h		; 3e 03 ;4ad4
	ccf			; 3f ;4ad6
	inc bc			; 03 ;4ad7
	ld b,b			; 40 ;4ad8
	inc bc			; 03 ;4ad9
	ld b,c			; 41 ;4ada
	ex af,af'			; 08 ;4adb
	ld (bc),a			; 02 ;4adc
	nop			; 00 ;4add
	dec bc			; 0b ;4ade
	inc bc			; 03 ;4adf
	dec c			; 0d ;4ae0
	ld a,(l4a03h)		; 3a 03 4a ;4ae1
	dec b			; 05 ;4ae4
	inc bc			; 03 ;4ae5
	nop			; 00 ;4ae6
	dec bc			; 0b ;4ae7
	inc bc			; 03 ;4ae8
	ld c,03eh		; 0e 3e ;4ae9
	inc bc			; 03 ;4aeb
	ccf			; 3f ;4aec
	inc bc			; 03 ;4aed
	ld c,c			; 49 ;4aee
	dec b			; 05 ;4aef
	ld bc,l007fh		; 01 7f 00 ;4af0
	nop			; 00 ;4af3
	nop			; 00 ;4af4
	ld b,h			; 44 ;4af5
	ld bc,l7f01h		; 01 01 7f ;4af6
	nop			; 00 ;4af9
	nop			; 00 ;4afa
	nop			; 00 ;4afb
	ld b,l			; 45 ;4afc
	ld bc,l0603h		; 01 03 06 ;4afd
	inc de			; 13 ;4b00
	dec b			; 05 ;4b01
	rrca			; 0f ;4b02
	ld b,(hl)			; 46 ;4b03
	ld a,(bc)			; 0a ;4b04
	ld b,a			; 47 ;4b05
	rlca			; 07 ;4b06
	ld c,b			; 48 ;4b07
	ld a,(bc)			; 0a ;4b08
	inc b			; 04 ;4b09
	inc bc			; 03 ;4b0a
	rrca			; 0f ;4b0b
	inc b			; 04 ;4b0c
	djnz l4b49h		; 10 3a ;4b0d
	inc bc			; 03 ;4b0f
	ld b,(hl)			; 46 ;4b10
	rlca			; 07 ;4b11
	ld b,a			; 47 ;4b12
	rlca			; 07 ;4b13
	ld c,b			; 48 ;4b14
	ld a,(bc)			; 0a ;4b15
	inc bc			; 03 ;4b16
	ld a,a			; 7f ;4b17
	nop			; 00 ;4b18
	nop			; 00 ;4b19
	nop			; 00 ;4b1a
	ld b,d			; 42 ;4b1b
	inc bc			; 03 ;4b1c
	dec sp			; 3b ;4b1d
	inc bc			; 03 ;4b1e
	ld a,(00302h+1)		; 3a 03 03 ;4b1f
	ld a,a			; 7f ;4b22
	nop			; 00 ;4b23
	nop			; 00 ;4b24
	nop			; 00 ;4b25
	ld b,d			; 42 ;4b26
	inc bc			; 03 ;4b27
	ccf			; 3f ;4b28
	inc bc			; 03 ;4b29
	ld a,003h		; 3e 03 ;4b2a
	inc b			; 04 ;4b2c
	ld a,a			; 7f ;4b2d
	nop			; 00 ;4b2e
	nop			; 00 ;4b2f
	nop			; 00 ;4b30
	ld a,(l3b01h+2)		; 3a 03 3b ;4b31
	inc bc			; 03 ;4b34
	ccf			; 3f ;4b35
	inc bc			; 03 ;4b36
	ld a,003h		; 3e 03 ;4b37
	inc b			; 04 ;4b39
	ld a,a			; 7f ;4b3a
	nop			; 00 ;4b3b
	nop			; 00 ;4b3c
	nop			; 00 ;4b3d
	ld a,003h		; 3e 03 ;4b3e
	ccf			; 3f ;4b40
	inc bc			; 03 ;4b41
	dec sp			; 3b ;4b42
	inc bc			; 03 ;4b43
	ld a,(00302h+1)		; 3a 03 03 ;4b44
	ld h,b			; 60 ;4b47
	sub b			; 90 ;4b48
l4b49h:
	ld h,d			; 62 ;4b49
	nop			; 00 ;4b4a
	ld h,l			; 65 ;4b4b
	ld h,e			; 63 ;4b4c
	ld h,a			; 67 ;4b4d
	ld l,c			; 69 ;4b4e
	ld l,e			; 6b ;4b4f
	ld l,l			; 6d ;4b50
	ld l,a			; 6f ;4b51
	ld (hl),c			; 71 ;4b52
	ld (hl),e			; 73 ;4b53
	ld (hl),h			; 74 ;4b54
	ld (hl),d			; 72 ;4b55
	halt			; 76 ;4b56
	ld a,b			; 78 ;4b57
	ld a,d			; 7a ;4b58
	nop			; 00 ;4b59
	inc de			; 13 ;4b5a
	ld bc,00300h		; 01 00 03 ;4b5b
	ld h,c			; 61 ;4b5e
	sub b			; 90 ;4b5f
	ld h,e			; 63 ;4b60
	ld h,h			; 64 ;4b61
	ld h,d			; 62 ;4b62
	ld h,(hl)			; 66 ;4b63
l4b64h:
	ld l,b			; 68 ;4b64
	ld l,d			; 6a ;4b65
	ld l,h			; 6c ;4b66
	ld l,(hl)			; 6e ;4b67
	ld (hl),b			; 70 ;4b68
	ld (hl),d			; 72 ;4b69
	nop			; 00 ;4b6a
	ld (hl),l			; 75 ;4b6b
	ld (hl),e			; 73 ;4b6c
	ld (hl),a			; 77 ;4b6d
	ld a,c			; 79 ;4b6e
	ld a,e			; 7b ;4b6f
	nop			; 00 ;4b70
	inc de			; 13 ;4b71
	ld bc,l1500h		; 01 00 15 ;4b72
	nop			; 00 ;4b75
	and e			; a3 ;4b76
	inc c			; 0c ;4b77
	nop			; 00 ;4b78
	call z,sub_0038h		; cc 38 00 ;4b79
	nop			; 00 ;4b7c
	ld c,038h		; 0e 38 ;4b7d
	ret p			; f0 ;4b7f
	nop			; 00 ;4b80
	nop			; 00 ;4b81
	jr c,l4b64h		; 38 e0 ;4b82
	nop			; 00 ;4b84
	inc e			; 1c ;4b85
	inc bc			; 03 ;4b86
	dec sp			; 3b ;4b87
	ret p			; f0 ;4b88
	call m,0f77ch		; fc 7c f7 ;4b89
	ld e,0deh		; 1e de ;4b8c
	ld (hl),b			; 70 ;4b8e
	pop af			; f1 ;4b8f
	rlca			; 07 ;4b90
	ret nz			; c0 ;4b91
	ld a,b			; 78 ;4b92
	pop af			; f1 ;4b93
	ld (hl),b			; 70 ;4b94
	ret nz			; c0 ;4b95
	add hl,de			; 19 ;4b96
	inc sp			; 33 ;4b97
	sbc a,b			; 98 ;4b98
	jr nc,l4b9bh		; 30 00 ;4b99
l4b9bh:
	dec d			; 15 ;4b9b
	nop			; 00 ;4b9c
	and e			; a3 ;4b9d
	inc c			; 0c ;4b9e
	nop			; 00 ;4b9f
	call z,sub_0070h		; cc 70 00 ;4ba0
	nop			; 00 ;4ba3
	inc e			; 1c ;4ba4
	ld (hl),b			; 70 ;4ba5
	ret po			; e0 ;4ba6
	nop			; 00 ;4ba7
	nop			; 00 ;4ba8
	ld (hl),b			; 70 ;4ba9
	ret po			; e0 ;4baa
	nop			; 00 ;4bab
	jr c,l4bb5h		; 38 07 ;4bac
	ld (hl),b			; 70 ;4bae
	jr nc,$+28		; 30 1c ;4baf
	ld a,h			; 7c ;4bb1
	rst 20h			; e7 ;4bb2
	ld a,0dch		; 3e dc ;4bb3
l4bb5h:
	ld (hl),b			; 70 ;4bb5
	ret po			; e0 ;4bb6
	ld c,0e0h		; 0e e0 ;4bb7
	ld (hl),c			; 71 ;4bb9
	ret po			; e0 ;4bba
	ret nz			; c0 ;4bbb
	ret po			; e0 ;4bbc
	add hl,de			; 19 ;4bbd
	inc sp			; 33 ;4bbe
	sbc a,b			; 98 ;4bbf
	jr nc,l4bc2h		; 30 00 ;4bc0
l4bc2h:
	add a,h			; 84 ;4bc2
	nop			; 00 ;4bc3
	rra			; 1f ;4bc4
	nop			; 00 ;4bc5
	rst 38h			; ff ;4bc6
	inc bc			; 03 ;4bc7
	nop			; 00 ;4bc8
	sub c			; 91 ;4bc9
	ret po			; e0 ;4bca
	nop			; 00 ;4bcb
	jr c,l4bceh		; 38 00 ;4bcc
l4bceh:
	rlca			; 07 ;4bce
	nop			; 00 ;4bcf
	ccf			; 3f ;4bd0
	nop			; 00 ;4bd1
	cp 000h		; fe 00 ;4bd2
	jr c,l4bd6h		; 38 00 ;4bd4
l4bd6h:
	rlca			; 07 ;4bd6
	ccf			; 3f ;4bd7
	inc c			; 0c ;4bd8
	rst 38h			; ff ;4bd9
	call z,l7f02h		; cc 02 7f ;4bda
	ld (bc),a			; 02 ;4bdd
	call m,sub_7f9ch		; fc 9c 7f ;4bde
	rst 38h			; ff ;4be1
	cp 0fch		; fe fc ;4be2
	ld (hl),b			; 70 ;4be4
	rst 38h			; ff ;4be5
	ld a,(hl)			; 7e ;4be6
	ret m			; f8 ;4be7
	ld c,0e0h		; 0e e0 ;4be8
	jr c,l4bfah		; 38 0e ;4bea
	ld a,h			; 7c ;4bec
	ex (sp),hl			; e3 ;4bed
	ld a,(hl)			; 7e ;4bee
	sbc a,h			; 9c ;4bef
	ld (hl),a			; 77 ;4bf0
	ret po			; e0 ;4bf1
	cp 070h		; fe 70 ;4bf2
	ld (hl),a			; 77 ;4bf4
	ret po			; e0 ;4bf5
	nop			; 00 ;4bf6
	ld a,b			; 78 ;4bf7
	add hl,de			; 19 ;4bf8
	inc sp			; 33 ;4bf9
l4bfah:
	sbc a,b			; 98 ;4bfa
	jr nc,l4bfdh		; 30 00 ;4bfb
l4bfdh:
	cp b			; b8 ;4bfd
	nop			; 00 ;4bfe
	ccf			; 3f ;4bff
l4c00h:
	nop			; 00 ;4c00
l4c01h:
	cp 000h		; fe 00 ;4c01
	ld bc,0e000h		; 01 00 e0 ;4c03
	nop			; 00 ;4c06
	jr c,l4c09h		; 38 00 ;4c07
l4c09h:
	rrca			; 0f ;4c09
	nop			; 00 ;4c0a
	ccf			; 3f ;4c0b
	nop			; 00 ;4c0c
	rst 38h			; ff ;4c0d
	nop			; 00 ;4c0e
	jr c,l4c11h		; 38 00 ;4c0f
l4c11h:
	inc e			; 1c ;4c11
	inc c			; 0c ;4c12
	dec e			; 1d ;4c13
	call z,03fdch		; cc dc 3f ;4c14
	rst 38h			; ff ;4c17
	cp 0f8h		; fe f8 ;4c18
	ld a,a			; 7f ;4c1a
	ld a,a			; 7f ;4c1b
	call m,070f8h		; fc f8 70 ;4c1c
	ld a,a			; 7f ;4c1f
	call m,l1defh+1		; fc f0 1d ;4c20
	ret nz			; c0 ;4c23
	ret m			; f8 ;4c24
	ld c,076h		; 0e 76 ;4c25
	ex (sp),hl			; e3 ;4c27
	xor 01ch		; ee 1c ;4c28
	ld (hl),e			; 73 ;4c2a
	ret po			; e0 ;4c2b
	call m,07338h		; fc 38 73 ;4c2c
	ret po			; e0 ;4c2f
	add a,b			; 80 ;4c30
	inc e			; 1c ;4c31
	dec sp			; 3b ;4c32
	rst 38h			; ff ;4c33
	cp b			; b8 ;4c34
	call m,0c000h		; fc 00 c0 ;4c35
	jr l4c53h		; 18 19 ;4c38
	dec de			; 1b ;4c3a
	inc e			; 1c ;4c3b
	ld e,01fh		; 1e 1f ;4c3c
	ld hl,sub_2320h+2		; 21 22 23 ;4c3e
	dec h			; 25 ;4c41
	ld h,028h		; 26 28 ;4c42
	ld hl,(02f2dh)		; 2a 2d 2f ;4c44
	ld (l3734h),a		; 32 34 37 ;4c47
	add hl,sp			; 39 ;4c4a
	inc a			; 3c ;4c4b
	ld a,041h		; 3e 41 ;4c4c
	ld b,h			; 44 ;4c4e
	ld b,a			; 47 ;4c4f
	ld c,c			; 49 ;4c50
	ld c,h			; 4c ;4c51
	ld c,a			; 4f ;4c52
l4c53h:
	ld d,d			; 52 ;4c53
	ld d,l			; 55 ;4c54
	ld e,b			; 58 ;4c55
	ld e,d			; 5a ;4c56
	ld e,l			; 5d ;4c57
	ld h,b			; 60 ;4c58
	ld h,e			; 63 ;4c59
	ld h,a			; 67 ;4c5a
	ld l,d			; 6a ;4c5b
	ld l,l			; 6d ;4c5c
	ld (hl),b			; 70 ;4c5d
	ld (hl),e			; 73 ;4c5e
	halt			; 76 ;4c5f
	ld a,d			; 7a ;4c60
	ld a,l			; 7d ;4c61
	add a,b			; 80 ;4c62
	add a,e			; 83 ;4c63
	adc a,b			; 88 ;4c64
	adc a,(hl)			; 8e ;4c65
	sub e			; 93 ;4c66
	sbc a,c			; 99 ;4c67
	sbc a,(hl)			; 9e ;4c68
	and e			; a3 ;4c69
	xor c			; a9 ;4c6a
	xor (hl)			; ae ;4c6b
	or h			; b4 ;4c6c
	cp c			; b9 ;4c6d
	cp a			; bf ;4c6e
	call nz,0cfcah		; c4 ca cf ;4c6f
	push de			; d5 ;4c72
	jp c,0e5e0h		; da e0 e5 ;4c73
	ex de,hl			; eb ;4c76
	ret p			; f0 ;4c77
	inc c			; 0c ;4c78
	nop			; 00 ;4c79
	call p,0c3c0h		; f4 c0 c3 ;4c7a
	push bc			; c5 ;4c7d
	ret z			; c8 ;4c7e
	set 1,l		; cb cd ;4c7f
	ret nc			; d0 ;4c81
	out (0d5h),a		; d3 d5 ;4c82
	ret c			; d8 ;4c84
	in a,(0ddh)		; db dd ;4c85
	ret po			; e0 ;4c87
	ex (sp),hl			; e3 ;4c88
	push hl			; e5 ;4c89
	ret pe			; e8 ;4c8a
	ex de,hl			; eb ;4c8b
	.DB 0edh;next byte illegal after ed		;4c8c
	ret p			; f0 ;4c8d
	di			; f3 ;4c8e
	push af			; f5 ;4c8f
	ret m			; f8 ;4c90
	ei			; fb ;4c91
	.DB 0fdh,000h,003h	;illegal sequence		;4c92
	dec b			; 05 ;4c95
	ex af,af'			; 08 ;4c96
	dec bc			; 0b ;4c97
	dec c			; 0d ;4c98
	djnz l4caeh		; 10 13 ;4c99
	dec d			; 15 ;4c9b
	jr l4cb9h		; 18 1b ;4c9c
	dec e			; 1d ;4c9e
	jr nz,l4cc4h		; 20 23 ;4c9f
	dec h			; 25 ;4ca1
	jr z,l4ccfh		; 28 2b ;4ca2
	dec l			; 2d ;4ca4
	jr nc,l4cdah		; 30 33 ;4ca5
	dec (hl)			; 35 ;4ca7
	jr c,l4ce5h		; 38 3b ;4ca8
	dec a			; 3d ;4caa
	ld b,b			; 40 ;4cab
	ld b,e			; 43 ;4cac
	ld b,l			; 45 ;4cad
l4caeh:
	ld c,b			; 48 ;4cae
	ld c,e			; 4b ;4caf
	ld c,l			; 4d ;4cb0
	ld d,b			; 50 ;4cb1
	ld d,e			; 53 ;4cb2
	ld d,l			; 55 ;4cb3
	ld e,b			; 58 ;4cb4
	ld e,e			; 5b ;4cb5
	ld e,l			; 5d ;4cb6
	ld h,b			; 60 ;4cb7
	ld h,e			; 63 ;4cb8
l4cb9h:
	ld h,l			; 65 ;4cb9
	ld l,b			; 68 ;4cba
	ld l,e			; 6b ;4cbb
	ld l,l			; 6d ;4cbc
	ld (hl),b			; 70 ;4cbd
	ld (hl),e			; 73 ;4cbe
	ld (hl),l			; 75 ;4cbf
	ld a,b			; 78 ;4cc0
	ld a,e			; 7b ;4cc1
	ld a,l			; 7d ;4cc2
	add a,b			; 80 ;4cc3
l4cc4h:
	add a,e			; 83 ;4cc4
	add a,l			; 85 ;4cc5
	adc a,b			; 88 ;4cc6
	adc a,e			; 8b ;4cc7
	adc a,l			; 8d ;4cc8
	sub b			; 90 ;4cc9
	sub e			; 93 ;4cca
	sub l			; 95 ;4ccb
	sbc a,b			; 98 ;4ccc
	sbc a,e			; 9b ;4ccd
	sbc a,l			; 9d ;4cce
l4ccfh:
	and b			; a0 ;4ccf
	and e			; a3 ;4cd0
	and l			; a5 ;4cd1
	xor b			; a8 ;4cd2
	xor e			; ab ;4cd3
	xor l			; ad ;4cd4
	or b			; b0 ;4cd5
	or e			; b3 ;4cd6
	or l			; b5 ;4cd7
	cp b			; b8 ;4cd8
	cp e			; bb ;4cd9
l4cdah:
	cp l			; bd ;4cda
	ret nz			; c0 ;4cdb
	jp 0c8c5h		; c3 c5 c8 ;4cdc
	set 1,l		; cb cd ;4cdf
	ret nc			; d0 ;4ce1
	out (0d5h),a		; d3 d5 ;4ce2
	ret c			; d8 ;4ce4
l4ce5h:
	in a,(0ddh)		; db dd ;4ce5
	ret po			; e0 ;4ce7
	ex (sp),hl			; e3 ;4ce8
	push hl			; e5 ;4ce9
	ret pe			; e8 ;4cea
	ex de,hl			; eb ;4ceb
	.DB 0edh;next byte illegal after ed		;4cec
	ret p			; f0 ;4ced
	di			; f3 ;4cee
	inc c			; 0c ;4cef
	nop			; 00 ;4cf0
	and l			; a5 ;4cf1
	ret nz			; c0 ;4cf2
	jp nz,0c5c4h		; c2 c4 c5 ;4cf3
	rst 0			; c7 ;4cf6
	ret			; c9 ;4cf7
	set 1,h		; cb cc ;4cf8
	adc a,0d0h		; ce d0 ;4cfa
	jp nc,0d5d4h		; d2 d4 d5 ;4cfc
l4cffh:
	rst 10h			; d7 ;4cff
	exx			; d9 ;4d00
	in a,(0dch)		; db dc ;4d01
	sbc a,0e0h		; de e0 ;4d03
	jp po,0e5e4h		; e2 e4 e5 ;4d05
	rst 20h			; e7 ;4d08
	jp (hl)			; e9 ;4d09
	ex de,hl			; eb ;4d0a
	call pe,0f0eeh		; ec ee f0 ;4d0b
	jp p,0f5f4h		; f2 f4 f5 ;4d0e
	rst 30h			; f7 ;4d11
	ld sp,hl			; f9 ;4d12
	ei			; fb ;4d13
	call m,000feh		; fc fe 00 ;4d14
	ld (bc),a			; 02 ;4d17
	ld bc,l0201h+1		; 01 02 02 ;4d18
	inc bc			; 03 ;4d1b
	inc bc			; 03 ;4d1c
	inc bc			; 03 ;4d1d
	inc b			; 04 ;4d1e
	inc bc			; 03 ;4d1f
	dec b			; 05 ;4d20
	ld (bc),a			; 02 ;4d21
	ld b,003h		; 06 03 ;4d22
	rlca			; 07 ;4d24
	inc bc			; 03 ;4d25
	ex af,af'			; 08 ;4d26
	inc bc			; 03 ;4d27
	add hl,bc			; 09 ;4d28
	ld (bc),a			; 02 ;4d29
	ld a,(bc)			; 0a ;4d2a
	inc bc			; 03 ;4d2b
	dec bc			; 0b ;4d2c
	inc bc			; 03 ;4d2d
	inc c			; 0c ;4d2e
	inc bc			; 03 ;4d2f
	dec c			; 0d ;4d30
	ld (bc),a			; 02 ;4d31
	ld c,003h		; 0e 03 ;4d32
	rrca			; 0f ;4d34
	inc bc			; 03 ;4d35
	djnz l4d3bh		; 10 03 ;4d36
	ld de,01202h		; 11 02 12 ;4d38
l4d3bh:
	inc bc			; 03 ;4d3b
	inc de			; 13 ;4d3c
	inc bc			; 03 ;4d3d
	inc d			; 14 ;4d3e
	inc bc			; 03 ;4d3f
	dec d			; 15 ;4d40
	ld (bc),a			; 02 ;4d41
	ld d,003h		; 16 03 ;4d42
	rla			; 17 ;4d44
	inc bc			; 03 ;4d45
	jr l4d4bh		; 18 03 ;4d46
	add hl,de			; 19 ;4d48
	ld (bc),a			; 02 ;4d49
	ld a,(de)			; 1a ;4d4a
l4d4bh:
	inc bc			; 03 ;4d4b
	dec de			; 1b ;4d4c
	inc bc			; 03 ;4d4d
	inc e			; 1c ;4d4e
	inc bc			; 03 ;4d4f
	dec e			; 1d ;4d50
	or b			; b0 ;4d51
	nop			; 00 ;4d52
	ld a,(bc)			; 0a ;4d53
	ld d,021h		; 16 21 ;4d54
	inc l			; 2c ;4d56
	inc sp			; 33 ;4d57
	add hl,sp			; 39 ;4d58
	ccf			; 3f ;4d59
	ld b,(hl)			; 46 ;4d5a
	ld c,h			; 4c ;4d5b
	ld d,e			; 53 ;4d5c
	ld e,b			; 58 ;4d5d
	ld e,(hl)			; 5e ;4d5e
	ld h,e			; 63 ;4d5f
	ld l,c			; 69 ;4d60
	ld l,a			; 6f ;4d61
	ld (hl),h			; 74 ;4d62
	ld a,d			; 7a ;4d63
	add a,b			; 80 ;4d64
	add a,l			; 85 ;4d65
	adc a,d			; 8a ;4d66
	adc a,a			; 8f ;4d67
	sub h			; 94 ;4d68
	sbc a,c			; 99 ;4d69
	sbc a,(hl)			; 9e ;4d6a
	and e			; a3 ;4d6b
	xor b			; a8 ;4d6c
	xor l			; ad ;4d6d
	or c			; b1 ;4d6e
	or l			; b5 ;4d6f
	cp c			; b9 ;4d70
	cp l			; bd ;4d71
	pop bc			; c1 ;4d72
	push bc			; c5 ;4d73
	ret			; c9 ;4d74
	call 0d5d1h		; cd d1 d5 ;4d75
	exx			; d9 ;4d78
	pop ix		; dd e1 ;4d79
	push hl			; e5 ;4d7b
	jp (hl)			; e9 ;4d7c
	.DB 0edh;next byte illegal after ed		;4d7d
	pop af			; f1 ;4d7e
	push af			; f5 ;4d7f
	ld sp,hl			; f9 ;4d80
	.DB 0fdh,000h,0c0h	;illegal sequence		;4d81
	jr l4da0h		; 18 1a ;4d84
	dec de			; 1b ;4d86
	dec e			; 1d ;4d87
	ld e,01fh		; 1e 1f ;4d88
	ld hl,02422h		; 21 22 24 ;4d8a
	dec h			; 25 ;4d8d
	daa			; 27 ;4d8e
	jr z,$+43		; 28 2b ;4d8f
	dec l			; 2d ;4d91
	jr nc,l4dc6h		; 30 32 ;4d92
	dec (hl)			; 35 ;4d94
	scf			; 37 ;4d95
	ld a,(l3f3ch)		; 3a 3c 3f ;4d96
	ld b,d			; 42 ;4d99
	ld b,l			; 45 ;4d9a
	ld b,a			; 47 ;4d9b
	ld c,d			; 4a ;4d9c
	ld c,l			; 4d ;4d9d
	ld d,b			; 50 ;4d9e
	ld d,e			; 53 ;4d9f
l4da0h:
	ld d,l			; 55 ;4da0
	ld e,b			; 58 ;4da1
	ld e,e			; 5b ;4da2
	ld e,(hl)			; 5e ;4da3
	ld h,c			; 61 ;4da4
	ld h,h			; 64 ;4da5
	ld h,a			; 67 ;4da6
	ld l,d			; 6a ;4da7
	ld l,(hl)			; 6e ;4da8
	ld (hl),c			; 71 ;4da9
	ld (hl),h			; 74 ;4daa
	ld (hl),a			; 77 ;4dab
	ld a,d			; 7a ;4dac
	ld a,l			; 7d ;4dad
	add a,c			; 81 ;4dae
	add a,h			; 84 ;4daf
	adc a,c			; 89 ;4db0
	adc a,a			; 8f ;4db1
	sub h			; 94 ;4db2
	sbc a,d			; 9a ;4db3
	sbc a,a			; 9f ;4db4
	and l			; a5 ;4db5
	xor d			; aa ;4db6
	or b			; b0 ;4db7
	or l			; b5 ;4db8
	cp e			; bb ;4db9
	ret nz			; c0 ;4dba
	add a,0cbh		; c6 cb ;4dbb
	pop de			; d1 ;4dbd
	sub 0dch		; d6 dc ;4dbe
	pop hl			; e1 ;4dc0
	rst 20h			; e7 ;4dc1
	call pe,l24f0h+1		; ec f1 24 ;4dc2
	nop			; 00 ;4dc5
l4dc6h:
	ld e,h			; 5c ;4dc6
	ld bc,l0030h		; 01 30 00 ;4dc7
	ld d,b			; 50 ;4dca
	ld bc,002b0h		; 01 b0 02 ;4dcb
	dec c			; 0d ;4dce
	jr $+36		; 18 24 ;4dcf
	ld l,034h		; 2e 34 ;4dd1
	dec sp			; 3b ;4dd3
	ld b,c			; 41 ;4dd4
	ld b,a			; 47 ;4dd5
	ld c,(hl)			; 4e ;4dd6
	ld d,h			; 54 ;4dd7
	ld e,c			; 59 ;4dd8
	ld e,a			; 5f ;4dd9
	ld h,l			; 65 ;4dda
	ld l,d			; 6a ;4ddb
	ld (hl),b			; 70 ;4ddc
	halt			; 76 ;4ddd
	ld a,h			; 7c ;4dde
	add a,c			; 81 ;4ddf
	add a,(hl)			; 86 ;4de0
	adc a,e			; 8b ;4de1
	sub b			; 90 ;4de2
	sub l			; 95 ;4de3
	sbc a,d			; 9a ;4de4
	sbc a,a			; 9f ;4de5
	and h			; a4 ;4de6
	xor c			; a9 ;4de7
	xor (hl)			; ae ;4de8
	or d			; b2 ;4de9
	or (hl)			; b6 ;4dea
	cp d			; ba ;4deb
	cp (hl)			; be ;4dec
	jp nz,0cac6h		; c2 c6 ca ;4ded
	adc a,0d2h		; ce d2 ;4df0
	sub 0dah		; d6 da ;4df2
	sbc a,0e2h		; de e2 ;4df4
	and 0eah		; e6 ea ;4df6
	xor 0f2h		; ee f2 ;4df8
	or 0fah		; f6 fa ;4dfa
	cp 000h		; fe 00 ;4dfc
	ret nz			; c0 ;4dfe
	add hl,de			; 19 ;4dff
	ld a,(de)			; 1a ;4e00
l4e01h:
	inc e			; 1c ;4e01
	dec e			; 1d ;4e02
	ld e,020h		; 1e 20 ;4e03
l4e05h:
	ld hl,l2423h		; 21 23 24 ;4e05
	ld h,027h		; 26 27 ;4e08
	add hl,hl			; 29 ;4e0a
	dec hl			; 2b ;4e0b
	ld l,030h		; 2e 30 ;4e0c
	inc sp			; 33 ;4e0e
	dec (hl)			; 35 ;4e0f
	jr c,l4e4ch		; 38 3a ;4e10
	dec a			; 3d ;4e12
	ccf			; 3f ;4e13
	ld b,d			; 42 ;4e14
	ld b,l			; 45 ;4e15
	ld c,b			; 48 ;4e16
	ld c,e			; 4b ;4e17
	ld c,(hl)			; 4e ;4e18
	ld d,c			; 51 ;4e19
	ld d,e			; 53 ;4e1a
	ld d,(hl)			; 56 ;4e1b
	ld e,c			; 59 ;4e1c
	ld e,h			; 5c ;4e1d
	ld e,a			; 5f ;4e1e
	ld h,d			; 62 ;4e1f
	ld h,l			; 65 ;4e20
	ld l,b			; 68 ;4e21
	ld l,e			; 6b ;4e22
	ld l,(hl)			; 6e ;4e23
	ld (hl),d			; 72 ;4e24
	ld (hl),l			; 75 ;4e25
	ld a,b			; 78 ;4e26
	ld a,e			; 7b ;4e27
	ld a,(hl)			; 7e ;4e28
	add a,c			; 81 ;4e29
	add a,l			; 85 ;4e2a
	adc a,e			; 8b ;4e2b
	sub b			; 90 ;4e2c
	sub (hl)			; 96 ;4e2d
	sbc a,e			; 9b ;4e2e
	and c			; a1 ;4e2f
	and (hl)			; a6 ;4e30
	xor h			; ac ;4e31
	or c			; b1 ;4e32
	or a			; b7 ;4e33
	cp h			; bc ;4e34
	jp nz,0cdc7h		; c2 c7 cd ;4e35
	jp nc,0ddd7h		; d2 d7 dd ;4e38
	jp po,0ede8h		; e2 e8 ed ;4e3b
	di			; f3 ;4e3e
	inc c			; 0c ;4e3f
	nop			; 00 ;4e40
	call p,0c4c1h		; f4 c1 c4 ;4e41
	rst 0			; c7 ;4e44
	ret			; c9 ;4e45
	call z,0d1cfh		; cc cf d1 ;4e46
	call nc,0d9d7h		; d4 d7 d9 ;4e49
l4e4ch:
	call c,0e1dfh		; dc df e1 ;4e4c
	call po,0e9e7h		; e4 e7 e9 ;4e4f
	call pe,0f1efh		; ec ef f1 ;4e52
	call p,0f9f7h		; f4 f7 f9 ;4e55
	call m,l01feh+1		; fc ff 01 ;4e58
	inc b			; 04 ;4e5b
	rlca			; 07 ;4e5c
	add hl,bc			; 09 ;4e5d
	inc c			; 0c ;4e5e
	rrca			; 0f ;4e5f
	ld de,l1714h		; 11 14 17 ;4e60
	add hl,de			; 19 ;4e63
	inc e			; 1c ;4e64
	rra			; 1f ;4e65
	ld hl,02724h		; 21 24 27 ;4e66
	add hl,hl			; 29 ;4e69
	inc l			; 2c ;4e6a
	cpl			; 2f ;4e6b
	ld sp,l3734h		; 31 34 37 ;4e6c
	add hl,sp			; 39 ;4e6f
	inc a			; 3c ;4e70
	ccf			; 3f ;4e71
	ld b,c			; 41 ;4e72
	ld b,h			; 44 ;4e73
	ld b,a			; 47 ;4e74
	ld c,c			; 49 ;4e75
	ld c,h			; 4c ;4e76
	ld c,a			; 4f ;4e77
	ld d,c			; 51 ;4e78
	ld d,h			; 54 ;4e79
	ld d,a			; 57 ;4e7a
	ld e,c			; 59 ;4e7b
	ld e,h			; 5c ;4e7c
	ld e,a			; 5f ;4e7d
	ld h,c			; 61 ;4e7e
	ld h,h			; 64 ;4e7f
	ld h,a			; 67 ;4e80
	ld l,c			; 69 ;4e81
	ld l,h			; 6c ;4e82
	ld l,a			; 6f ;4e83
	ld (hl),c			; 71 ;4e84
	ld (hl),h			; 74 ;4e85
	ld (hl),a			; 77 ;4e86
	ld a,c			; 79 ;4e87
	ld a,h			; 7c ;4e88
	ld a,a			; 7f ;4e89
	add a,c			; 81 ;4e8a
	add a,h			; 84 ;4e8b
	add a,a			; 87 ;4e8c
	adc a,c			; 89 ;4e8d
	adc a,h			; 8c ;4e8e
	adc a,a			; 8f ;4e8f
	sub c			; 91 ;4e90
	sub h			; 94 ;4e91
	sub a			; 97 ;4e92
	sbc a,c			; 99 ;4e93
	sbc a,h			; 9c ;4e94
	sbc a,a			; 9f ;4e95
	and c			; a1 ;4e96
	and h			; a4 ;4e97
	and a			; a7 ;4e98
	xor c			; a9 ;4e99
	xor h			; ac ;4e9a
	xor a			; af ;4e9b
	or c			; b1 ;4e9c
	or h			; b4 ;4e9d
	or a			; b7 ;4e9e
	cp c			; b9 ;4e9f
	cp h			; bc ;4ea0
	cp a			; bf ;4ea1
	pop bc			; c1 ;4ea2
	call nz,0c9c7h		; c4 c7 c9 ;4ea3
	call z,0d1cfh		; cc cf d1 ;4ea6
	call nc,0d9d7h		; d4 d7 d9 ;4ea9
	call c,0e1dfh		; dc df e1 ;4eac
	call po,0e9e7h		; e4 e7 e9 ;4eaf
	call pe,0f1efh		; ec ef f1 ;4eb2
	call p,0000ch		; f4 0c 00 ;4eb5
	and h			; a4 ;4eb8
	pop bc			; c1 ;4eb9
	jp 0c6c4h		; c3 c4 c6 ;4eba
	ret z			; c8 ;4ebd
	jp z,0cdcch		; ca cc cd ;4ebe
	rst 8			; cf ;4ec1
	pop de			; d1 ;4ec2
	out (0d4h),a		; d3 d4 ;4ec3
	sub 0d8h		; d6 d8 ;4ec5
	jp c,0dddch		; da dc dd ;4ec7
	rst 18h			; df ;4eca
	pop hl			; e1 ;4ecb
	ex (sp),hl			; e3 ;4ecc
	call po,0e8e6h		; e4 e6 e8 ;4ecd
	jp pe,0edech		; ea ec ed ;4ed0
	rst 28h			; ef ;4ed3
	pop af			; f1 ;4ed4
	di			; f3 ;4ed5
	call p,0f8f6h		; f4 f6 f8 ;4ed6
	jp m,0fdfch		; fa fc fd ;4ed9
	rst 38h			; ff ;4edc
	ld (bc),a			; 02 ;4edd
	ld bc,l0203h		; 01 03 02 ;4ede
	inc bc			; 03 ;4ee1
	inc bc			; 03 ;4ee2
	ld (bc),a			; 02 ;4ee3
	inc b			; 04 ;4ee4
	inc bc			; 03 ;4ee5
	dec b			; 05 ;4ee6
	inc bc			; 03 ;4ee7
	ld b,003h		; 06 03 ;4ee8
	rlca			; 07 ;4eea
	ld (bc),a			; 02 ;4eeb
	ex af,af'			; 08 ;4eec
	inc bc			; 03 ;4eed
	add hl,bc			; 09 ;4eee
	inc bc			; 03 ;4eef
	ld a,(bc)			; 0a ;4ef0
	inc bc			; 03 ;4ef1
	dec bc			; 0b ;4ef2
	ld (bc),a			; 02 ;4ef3
	inc c			; 0c ;4ef4
	inc bc			; 03 ;4ef5
	dec c			; 0d ;4ef6
	inc bc			; 03 ;4ef7
	ld c,003h		; 0e 03 ;4ef8
	rrca			; 0f ;4efa
	ld (bc),a			; 02 ;4efb
	djnz l4f01h		; 10 03 ;4efc
	ld de,l1203h		; 11 03 12 ;4efe
l4f01h:
	inc bc			; 03 ;4f01
	inc de			; 13 ;4f02
	ld (bc),a			; 02 ;4f03
	inc d			; 14 ;4f04
	inc bc			; 03 ;4f05
	dec d			; 15 ;4f06
	inc bc			; 03 ;4f07
	ld d,003h		; 16 03 ;4f08
	rla			; 17 ;4f0a
	ld (bc),a			; 02 ;4f0b
	jr l4f11h		; 18 03 ;4f0c
	add hl,de			; 19 ;4f0e
	inc bc			; 03 ;4f0f
	ld a,(de)			; 1a ;4f10
l4f11h:
	inc bc			; 03 ;4f11
	dec de			; 1b ;4f12
	ld (bc),a			; 02 ;4f13
	inc e			; 1c ;4f14
	inc bc			; 03 ;4f15
	dec e			; 1d ;4f16
	or c			; b1 ;4f17
	ld e,005h		; 1e 05 ;4f18
	djnz l4f37h		; 10 1b ;4f1a
	ld h,02fh		; 26 2f ;4f1c
	ld (hl),03ch		; 36 3c ;4f1e
	ld b,e			; 43 ;4f20
	ld c,c			; 49 ;4f21
	ld c,a			; 4f ;4f22
	ld d,l			; 55 ;4f23
	ld e,e			; 5b ;4f24
	ld h,c			; 61 ;4f25
	ld h,(hl)			; 66 ;4f26
	ld l,h			; 6c ;4f27
	ld (hl),d			; 72 ;4f28
	ld (hl),a			; 77 ;4f29
	ld a,l			; 7d ;4f2a
	add a,d			; 82 ;4f2b
	add a,a			; 87 ;4f2c
	adc a,h			; 8c ;4f2d
	sub c			; 91 ;4f2e
	sub (hl)			; 96 ;4f2f
	sbc a,e			; 9b ;4f30
	and b			; a0 ;4f31
	and (hl)			; a6 ;4f32
	xor e			; ab ;4f33
	xor a			; af ;4f34
	or e			; b3 ;4f35
	or a			; b7 ;4f36
l4f37h:
	cp e			; bb ;4f37
	cp a			; bf ;4f38
	jp 0cbc7h		; c3 c7 cb ;4f39
	rst 8			; cf ;4f3c
	out (0d7h),a		; d3 d7 ;4f3d
	in a,(0dfh)		; db df ;4f3f
	ex (sp),hl			; e3 ;4f41
	rst 20h			; e7 ;4f42
	ex de,hl			; eb ;4f43
	rst 28h			; ef ;4f44
	di			; f3 ;4f45
	rst 30h			; f7 ;4f46
	ei			; fb ;4f47
	rst 38h			; ff ;4f48
	nop			; 00 ;4f49
	ret nz			; c0 ;4f4a
	add hl,de			; 19 ;4f4b
	ld a,(de)			; 1a ;4f4c
	inc e			; 1c ;4f4d
	dec e			; 1d ;4f4e
	rra			; 1f ;4f4f
	jr nz,l4f74h		; 20 22 ;4f50
	inc hl			; 23 ;4f52
	inc h			; 24 ;4f53
	ld h,027h		; 26 27 ;4f54
	ld hl,(02f2ch)		; 2a 2c 2f ;4f56
	ld sp,03634h		; 31 34 36 ;4f59
	add hl,sp			; 39 ;4f5c
	dec sp			; 3b ;4f5d
	ld a,040h		; 3e 40 ;4f5e
	ld b,e			; 43 ;4f60
	ld b,(hl)			; 46 ;4f61
	ld c,c			; 49 ;4f62
	ld c,h			; 4c ;4f63
	ld c,(hl)			; 4e ;4f64
	ld d,c			; 51 ;4f65
	ld d,h			; 54 ;4f66
	ld d,a			; 57 ;4f67
	ld e,d			; 5a ;4f68
	ld e,h			; 5c ;4f69
	ld e,a			; 5f ;4f6a
	ld h,e			; 63 ;4f6b
	ld h,(hl)			; 66 ;4f6c
	ld l,c			; 69 ;4f6d
	ld l,h			; 6c ;4f6e
	ld l,a			; 6f ;4f6f
	ld (hl),d			; 72 ;4f70
	halt			; 76 ;4f71
	ld a,c			; 79 ;4f72
	ld a,h			; 7c ;4f73
l4f74h:
	ld a,a			; 7f ;4f74
	add a,d			; 82 ;4f75
	add a,a			; 87 ;4f76
	adc a,h			; 8c ;4f77
	sub d			; 92 ;4f78
	sub a			; 97 ;4f79
	sbc a,l			; 9d ;4f7a
	and d			; a2 ;4f7b
	xor b			; a8 ;4f7c
	xor l			; ad ;4f7d
	or e			; b3 ;4f7e
	cp b			; b8 ;4f7f
	cp l			; bd ;4f80
	jp 0cec8h		; c3 c8 ce ;4f81
	out (0d9h),a		; d3 d9 ;4f84
	sbc a,0e4h		; de e4 ;4f86
	jp (hl)			; e9 ;4f88
	rst 28h			; ef ;4f89
	call p,00024h		; f4 24 00 ;4f8a
	ld e,h			; 5c ;4f8d
	ld bc,l0030h		; 01 30 00 ;4f8e
	ld d,b			; 50 ;4f91
	ld bc,008b0h		; 01 b0 08 ;4f92
	inc de			; 13 ;4f95
	ld e,029h		; 1e 29 ;4f96
	ld sp,l3e37h		; 31 37 3e ;4f98
	ld b,h			; 44 ;4f9b
	ld c,e			; 4b ;4f9c
	ld d,c			; 51 ;4f9d
	ld d,a			; 57 ;4f9e
	ld e,h			; 5c ;4f9f
	ld h,d			; 62 ;4fa0
	ld l,b			; 68 ;4fa1
	ld l,l			; 6d ;4fa2
	ld (hl),e			; 73 ;4fa3
	ld a,c			; 79 ;4fa4
	ld a,(hl)			; 7e ;4fa5
	add a,e			; 83 ;4fa6
	adc a,b			; 88 ;4fa7
	adc a,(hl)			; 8e ;4fa8
	sub e			; 93 ;4fa9
	sbc a,b			; 98 ;4faa
	sbc a,l			; 9d ;4fab
	and d			; a2 ;4fac
	and a			; a7 ;4fad
	xor h			; ac ;4fae
	or b			; b0 ;4faf
	or h			; b4 ;4fb0
	cp b			; b8 ;4fb1
	cp h			; bc ;4fb2
	ret nz			; c0 ;4fb3
	call nz,0ccc8h		; c4 c8 cc ;4fb4
	ret nc			; d0 ;4fb7
	call nc,0dcd8h		; d4 d8 dc ;4fb8
	ret po			; e0 ;4fbb
	call po,0ece8h		; e4 e8 ec ;4fbc
	ret p			; f0 ;4fbf
l4fc0h:
	call p,0fcf8h		; f4 f8 fc ;4fc0
	rst 38h			; ff ;4fc3
	nop			; 00 ;4fc4
l4fc5h:
	ld (bc),a			; 02 ;4fc5
	rst 38h			; ff ;4fc6
	add a,h			; 84 ;4fc7
	.DB 0fdh,0d5h,084h	;illegal sequence		;4fc8
	adc a,004h		; ce 04 ;4fcb
	rst 38h			; ff ;4fcd
	sub (hl)			; 96 ;4fce
	ccf			; 3f ;4fcf
	ld a,c			; 79 ;4fd0
	add hl,sp			; 39 ;4fd1
	ld a,c			; 79 ;4fd2
	ex (sp),hl			; e3 ;4fd3
	pop hl			; e1 ;4fd4
	rst 38h			; ff ;4fd5
	rst 38h			; ff ;4fd6
	adc a,(hl)			; 8e ;4fd7
	adc a,h			; 8c ;4fd8
	call c,sub_058fh		; dc 8f 05 ;4fd9
	inc b			; 04 ;4fdc
	rst 38h			; ff ;4fdd
	rst 38h			; ff ;4fde
	ld a,a			; 7f ;4fdf
	ld sp,0fb31h		; 31 31 fb ;4fe0
	cp e			; bb ;4fe3
	ccf			; 3f ;4fe4
	inc bc			; 03 ;4fe5
	rst 38h			; ff ;4fe6
	adc a,l			; 8d ;4fe7
	xor c			; a9 ;4fe8
	xor e			; ab ;4fe9
	and c			; a1 ;4fea
	ex (sp),hl			; e3 ;4feb
	pop bc			; c1 ;4fec
	sbc a,a			; 9f ;4fed
	add a,d			; 82 ;4fee
	xor (hl)			; ae ;4fef
	jp z,0eafah		; ca fa ea ;4ff0
	jp pe,030aah		; ea aa 30 ;4ff3
	rst 38h			; ff ;4ff6
	ex af,af'			; 08 ;4ff7
	xor d			; aa ;4ff8
	jr nz,$-1		; 20 ff ;4ff9
	inc bc			; 03 ;4ffb
	xor e			; ab ;4ffc
	inc bc			; 03 ;4ffd
	xor a			; af ;4ffe
	ld (bc),a			; 02 ;4fff
l5000h:
	.DB $bf		;5000
	.DB $08		;5001
	.DB $ff		;5002
	.DB $04		;5003
	.DB $aa		;5004
	.DB $03		;5005
	.DB $ab		;5006
	.DB $82		;5007
	.DB $af		;5008
	.DB $bf		;5009
	.DB $07		;500a
	.DB $ff		;500b
	.DB $02		;500c
	.DB $af		;500d
	.DB $03		;500e
	.DB $bf		;500f
	.DB $06		;5010
	.DB $ff		;5011
	.DB $03		;5012
	.DB $fe		;5013
	.DB $02		;5014
	.DB $fc		;5015
	.DB $02		;5016
	.DB $00		;5017
	.DB $81		;5018
	.DB $3f		;5019
	.DB $03		;501a
	.DB $7f		;501b
	.DB $02		;501c
	.DB $ff		;501d
	.DB $02		;501e
	.DB $00		;501f
	.DB $02		;5020
	.DB $e7		;5021
	.DB $04		;5022
	.DB $cf		;5023
	.DB $02		;5024
	.DB $00		;5025
	.DB $06		;5026
	.DB $ff		;5027
	.DB $02		;5028
	.DB $00		;5029
	.DB $02		;502a
	.DB $fe		;502b
	.DB $04		;502c
	.DB $ff		;502d
	.DB $81		;502e
	.DB $fc		;502f
	.DB $03		;5030
	.DB $f9		;5031
	.DB $03		;5032
	.DB $f3		;5033
	.DB $81		;5034
	.DB $e7		;5035
	.DB $08		;5036
	.DB $ff		;5037
	.DB $04		;5038
	.DB $9f		;5039
	.DB $04		;503a
	.DB $3f		;503b
	.DB $02		;503c
	.DB $e7		;503d
	.DB $03		;503e
	.DB $cf		;503f
	.DB $03		;5040
	.DB $9f		;5041
	.DB $04		;5042
	.DB $fe		;5043
	.DB $04		;5044
	.DB $fc		;5045
	.DB $04		;5046
	.DB $7f		;5047
	.DB $03		;5048
	.DB $ff		;5049
	.DB $81		;504a
	.DB $00		;504b
	.DB $07		;504c
	.DB $ff		;504d
	.DB $81		;504e
	.DB $00		;504f
	.DB $03		;5050
	.DB $ff		;5051
	.DB $85		;5052
	.DB $e9		;5053
	.DB $eb		;5054
	.DB $f0		;5055
	.DB $c1		;5056
	.DB $c3		;5057
	.DB $03		;5058
	.DB $3f		;5059
	.DB $03		;505a
	.DB $7f		;505b
	.DB $02		;505c
	.DB $ff		;505d
	.DB $81		;505e
	.DB $f8		;505f
	.DB $03		;5060
	.DB $f9		;5061
	.DB $04		;5062
	.DB $f3		;5063
	.DB $81		;5064
	.DB $00		;5065
	.DB $07		;5066
	.DB $fe		;5067
	.DB $8a		;5068
	.DB $fb		;5069
	.DB $fe		;506a
	.DB $0f		;506b
	.DB $4f		;506c
	.DB $6f		;506d
	.DB $21		;506e
	.DB $bf		;506f
	.DB $9f		;5070
	.DB $ff		;5071
	.DB $7f		;5072
	.DB $05		;5073
	.DB $ff		;5074
	.DB $81		;5075
	.DB $df		;5076
	.DB $04		;5077
	.DB $e7		;5078
	.DB $04		;5079
	.DB $cf		;507a
	.DB $08		;507b
	.DB $fe		;507c
	.DB $90		;507d
	.DB $c1		;507e
	.DB $fe		;507f
	.DB $c1		;5080
	.DB $c9		;5081
	.DB $c9		;5082
	.DB $ee		;5083
	.DB $da		;5084
	.DB $87		;5085
	.DB $ff		;5086
	.DB $3f		;5087
	.DB $ff		;5088
	.DB $df		;5089
	.DB $df		;508a
	.DB $ef		;508b
	.DB $2f		;508c
	.DB $d7		;508d
	.DB $02		;508e
	.DB $ff		;508f
	.DB $06		;5090
	.DB $6f		;5091
	.DB $0a		;5092
	.DB $ff		;5093
	.DB $85		;5094
	.DB $ef		;5095
	.DB $ff		;5096
	.DB $ef		;5097
	.DB $ff		;5098
	.DB $bf		;5099
	.DB $0b		;509a
	.DB $ff		;509b
	.DB $85		;509c
	.DB $bf		;509d
	.DB $ff		;509e
	.DB $bf		;509f
	.DB $ff		;50a0
	.DB $bf		;50a1
	.DB $03		;50a2
	.DB $ff		;50a3
	.DB $88		;50a4
	.DB $fe		;50a5
	.DB $ff		;50a6
	.DB $fe		;50a7
	.DB $ff		;50a8
	.DB $fe		;50a9
	.DB $ff		;50aa
	.DB $89		;50ab
	.DB $db		;50ac
	.DB $04		;50ad
	.DB $bb		;50ae
	.DB $82		;50af
	.DB $3b		;50b0
	.DB $00		;50b1
	.DB $04		;50b2
	.DB $7b		;50b3
	.DB $84		;50b4
	.DB $7d		;50b5
	.DB $bd		;50b6
	.DB $bd		;50b7
	.DB $99		;50b8
	.DB $07		;50b9
	.DB $6f		;50ba
	.DB $81		;50bb
	.DB $9f		;50bc
	.DB $04		;50bd
	.DB $ff		;50be
	.DB $87		;50bf
	.DB $fe		;50c0
	.DB $ff		;50c1
	.DB $fe		;50c2
	.DB $ff		;50c3
	.DB $bf		;50c4
	.DB $ff		;50c5
	.DB $bf		;50c6
	.DB $05		;50c7
	.DB $ff		;50c8
	.DB $87		;50c9
	.DB $fe		;50ca
	.DB $ff		;50cb
	.DB $fe		;50cc
	.DB $ff		;50cd
	.DB $fe		;50ce
	.DB $ff		;50cf
	.DB $fe		;50d0
	.DB $09		;50d1
	.DB $ff		;50d2
	.DB $82		;50d3
	.DB $f0		;50d4
	.DB $c0		;50d5
	.DB $02		;50d6
	.DB $80		;50d7
	.DB $04		;50d8
	.DB $00		;50d9
	.DB $82		;50da
	.DB $0f		;50db
	.DB $03		;50dc
	.DB $06		;50dd
	.DB $00		;50de
	.DB $85		;50df
	.DB $ff		;50e0
	.DB $7f		;50e1
	.DB $7f		;50e2
	.DB $5b		;50e3
	.DB $59		;50e4
	.DB $02		;50e5
	.DB $57		;50e6
	.DB $04		;50e7
	.DB $55		;50e8
	.DB $03		;50e9
	.DB $d5		;50ea
	.DB $02		;50eb
	.DB $f5		;50ec
	.DB $04		;50ed
	.DB $00		;50ee
	.DB $02		;50ef
	.DB $80		;50f0
	.DB $83		;50f1
	.DB $c0		;50f2
	.DB $f0		;50f3
	.DB $f5		;50f4
	.DB $03		;50f5
	.DB $fd		;50f6
	.DB $04		;50f7
	.DB $ff		;50f8
	.DB $04		;50f9
	.DB $9f		;50fa
	.DB $04		;50fb
	.DB $cf		;50fc
	.DB $04		;50fd
	.DB $fe		;50fe
	.DB $04		;50ff
	.DB $ff		;5100
	.DB $02		;5101
	.DB $7f		;5102
	.DB $02		;5103
	.DB $00		;5104
	.DB $06		;5105
	.DB $ff		;5106
	.DB $02		;5107
	.DB $00		;5108
	.DB $04		;5109
	.DB $ff		;510a
	.DB $02		;510b
	.DB $9f		;510c
	.DB $02		;510d
	.DB $1f		;510e
	.DB $04		;510f
	.DB $cf		;5110
	.DB $02		;5111
	.DB $ff		;5112
	.DB $04		;5113
	.DB $7f		;5114
	.DB $02		;5115
	.DB $00		;5116
	.DB $04		;5117
	.DB $f9		;5118
	.DB $02		;5119
	.DB $fc		;511a
	.DB $02		;511b
	.DB $00		;511c
	.DB $02		;511d
	.DB $e7		;511e
	.DB $03		;511f
	.DB $f3		;5120
	.DB $81		;5121
	.DB $f9		;5122
	.DB $02		;5123
	.DB $01		;5124
	.DB $04		;5125
	.DB $00		;5126
	.DB $81		;5127
	.DB $80		;5128
	.DB $03		;5129
	.DB $ff		;512a
	.DB $85		;512b
	.DB $01		;512c
	.DB $31		;512d
	.DB $03		;512e
	.DB $07		;512f
	.DB $1f		;5130
	.DB $08		;5131
	.DB $ff		;5132
	.DB $03		;5133
	.DB $f8		;5134
	.DB $05		;5135
	.DB $ff		;5136
	.DB $03		;5137
	.DB $00		;5138
	.DB $05		;5139
	.DB $ff		;513a
	.DB $03		;513b
	.DB $18		;513c
	.DB $02		;513d
	.DB $fe		;513e
	.DB $03		;513f
	.DB $ff		;5140
	.DB $03		;5141
	.DB $00		;5142
	.DB $02		;5143
	.DB $7f		;5144
	.DB $03		;5145
	.DB $ff		;5146
	.DB $03		;5147
	.DB $18		;5148
	.DB $08		;5149
	.DB $f8		;514a
	.DB $08		;514b
	.DB $18		;514c
	.DB $18		;514d
	.DB $00		;514e
	.DB $03		;514f
	.DB $f8		;5150
	.DB $02		;5151
	.DB $ff		;5152
	.DB $03		;5153
	.DB $f8		;5154
	.DB $03		;5155
	.DB $00		;5156
	.DB $02		;5157
	.DB $ff		;5158
	.DB $03		;5159
	.DB $00		;515a
	.DB $03		;515b
	.DB $18		;515c
	.DB $02		;515d
	.DB $ff		;515e
	.DB $03		;515f
	.DB $18		;5160
	.DB $02		;5161
	.DB $f8		;5162
	.DB $02		;5163
	.DB $38		;5164
	.DB $04		;5165
	.DB $f8		;5166
	.DB $81		;5167
	.DB $a0		;5168
	.DB $03		;5169
	.DB $80		;516a
	.DB $05		;516b
	.DB $00		;516c
	.DB $89		;516d
	.DB $81		;516e
	.DB $c1		;516f
	.DB $e3		;5170
	.DB $e7		;5171
	.DB $ef		;5172
	.DB $ff		;5173
	.DB $ff		;5174
	.DB $b0		;5175
	.DB $c0		;5176
	.DB $02		;5177
	.DB $80		;5178
	.DB $04		;5179
	.DB $00		;517a
	.DB $03		;517b
	.DB $ff		;517c
	.DB $02		;517d
	.DB $f5		;517e
	.DB $83		;517f
	.DB $f9		;5180
	.DB $c1		;5181
	.DB $c3		;5182
	.DB $03		;5183
	.DB $ff		;5184
	.DB $85		;5185
	.DB $a1		;5186
	.DB $ab		;5187
	.DB $c1		;5188
	.DB $c1		;5189
	.DB $c3		;518a
	.DB $00		;518b
	.DB $b0		;518c
	.DB $84		;518d
	.DB $00		;518e
	.DB $02		;518f
	.DB $2a		;5190
	.DB $7b		;5191
	.DB $b5		;5192
	.DB $7b		;5193
	.DB $7b		;5194
	.DB $23		;5195
	.DB $01		;5196
	.DB $c0		;5197
	.DB $86		;5198
	.DB $c6		;5199
	.DB $86		;519a
	.DB $c1		;519b
	.DB $c0		;519c
	.DB $04		;519d
	.DB $00		;519e
	.DB $71		;519f
	.DB $73		;51a0
	.DB $ab		;51a1
	.DB $75		;51a2
	.DB $23		;51a3
	.DB $03		;51a4
	.DB $31		;51a5
	.DB $00		;51a6
	.DB $80		;51a7
	.DB $ce		;51a8
	.DB $ce		;51a9
	.DB $b5		;51aa
	.DB $ce		;51ab
	.DB $ce		;51ac
	.DB $81		;51ad
	.DB $00		;51ae
	.DB $00		;51af
	.DB $56		;51b0
	.DB $54		;51b1
	.DB $5e		;51b2
	.DB $dd		;51b3
	.DB $be		;51b4
	.DB $72		;51b5
	.DB $7d		;51b6
	.DB $51		;51b7
	.DB $b5		;51b8
	.DB $65		;51b9
	.DB $55		;51ba
	.DB $15		;51bb
	.DB $55		;51bc
	.DB $30		;51bd
	.DB $00		;51be
	.DB $08		;51bf
	.DB $55		;51c0
	.DB $20		;51c1
	.DB $00		;51c2
	.DB $81		;51c3
	.DB $55		;51c4
	.DB $03		;51c5
	.DB $57		;51c6
	.DB $03		;51c7
	.DB $5f		;51c8
	.DB $81		;51c9
	.DB $7f		;51ca
	.DB $08		;51cb
	.DB $ff		;51cc
	.DB $05		;51cd
	.DB $55		;51ce
	.DB $03		;51cf
	.DB $57		;51d0
	.DB $02		;51d1
	.DB $7f		;51d2
	.DB $06		;51d3
	.DB $ff		;51d4
	.DB $03		;51d5
	.DB $5f		;51d6
	.DB $03		;51d7
	.DB $7f		;51d8
	.DB $62		;51d9
	.DB $ff		;51da
	.DB $88		;51db
	.DB $81		;51dc
	.DB $00		;51dd
	.DB $00		;51de
	.DB $17		;51df
	.DB $15		;51e0
	.DB $8f		;51e1
	.DB $ff		;51e2
	.DB $3f		;51e3
	.DB $18		;51e4
	.DB $ff		;51e5
	.DB $86		;51e6
	.DB $05		;51e7
	.DB $11		;51e8
	.DB $f0		;51e9
	.DB $b9		;51ea
	.DB $9c		;51eb
	.DB $9f		;51ec
	.DB $02		;51ed
	.DB $c1		;51ee
	.DB $02		;51ef
	.DB $ff		;51f0
	.DB $86		;51f1
	.DB $3f		;51f2
	.DB $1f		;51f3
	.DB $4f		;51f4
	.DB $0f		;51f5
	.DB $0f		;51f6
	.DB $2f		;51f7
	.DB $10		;51f8
	.DB $ff		;51f9
	.DB $82		;51fa
	.DB $df		;51fb
	.DB $81		;51fc
	.DB $03		;51fd
sub_51feh:
	.DB $eb		;51fe
	.DB $9a		;51ff
	.DB $ee		;5200
	.DB $da		;5201
l5202h:
	.DB $ff		;5202
	.DB $0f		;5203
	.DB $ff		;5204
	.DB $1f		;5205
	.DB $df		;5206
	.DB $df		;5207
	.DB $ef		;5208
	.DB $2f		;5209
	.DB $d7		;520a
	.DB $90		;520b
	.DB $00		;520c
	.DB $05		;520d
	.DB $60		;520e
	.DB $65		;520f
	.DB $60		;5210
	.DB $65		;5211
	.DB $60		;5212
	.DB $00		;5213
	.DB $00		;5214
	.DB $55		;5215
	.DB $00		;5216
	.DB $55		;5217
	.DB $00		;5218
	.DB $55		;5219
	.DB $03		;521a
	.DB $00		;521b
	.DB $85		;521c
	.DB $55		;521d
	.DB $00		;521e
	.DB $55		;521f
	.DB $00		;5220
	.DB $55		;5221
	.DB $03		;5222
	.DB $00		;5223
	.DB $85		;5224
	.DB $55		;5225
	.DB $00		;5226
	.DB $55		;5227
	.DB $00		;5228
	.DB $55		;5229
	.DB $03		;522a
	.DB $00		;522b
	.DB $85		;522c
	.DB $55		;522d
	.DB $00		;522e
	.DB $55		;522f
	.DB $00		;5230
	.DB $55		;5231
	.DB $03		;5232
	.DB $00		;5233
	.DB $88		;5234
	.DB $55		;5235
	.DB $00		;5236
	.DB $55		;5237
	.DB $00		;5238
	.DB $55		;5239
	.DB $00		;523a
	.DB $c9		;523b
	.DB $db		;523c
	.DB $04		;523d
	.DB $bb		;523e
	.DB $82		;523f
	.DB $7b		;5240
	.DB $48		;5241
	.DB $04		;5242
	.DB $7b		;5243
	.DB $ab		;5244
	.DB $7d		;5245
	.DB $bd		;5246
	.DB $bd		;5247
	.DB $9d		;5248
	.DB $65		;5249
	.DB $60		;524a
	.DB $65		;524b
	.DB $60		;524c
	.DB $65		;524d
	.DB $60		;524e
	.DB $65		;524f
	.DB $90		;5250
	.DB $55		;5251
	.DB $00		;5252
	.DB $55		;5253
	.DB $00		;5254
	.DB $55		;5255
	.DB $00		;5256
	.DB $55		;5257
	.DB $00		;5258
	.DB $55		;5259
	.DB $00		;525a
	.DB $55		;525b
	.DB $00		;525c
	.DB $55		;525d
	.DB $00		;525e
	.DB $55		;525f
	.DB $00		;5260
	.DB $55		;5261
	.DB $00		;5262
	.DB $55		;5263
	.DB $00		;5264
	.DB $55		;5265
	.DB $00		;5266
	.DB $55		;5267
	.DB $00		;5268
	.DB $55		;5269
	.DB $00		;526a
	.DB $55		;526b
	.DB $00		;526c
	.DB $55		;526d
	.DB $00		;526e
	.DB $55		;526f
	.DB $09		;5270
	.DB $00		;5271
	.DB $82		;5272
	.DB $04		;5273
	.DB $00		;5274
	.DB $02		;5275
	.DB $01		;5276
	.DB $04		;5277
	.DB $00		;5278
	.DB $87		;5279
	.DB $21		;527a
	.DB $80		;527b
	.DB $80		;527c
	.DB $a4		;527d
	.DB $a6		;527e
	.DB $a9		;527f
	.DB $a8		;5280
	.DB $06		;5281
	.DB $aa		;5282
	.DB $03		;5283
	.DB $ea		;5284
	.DB $04		;5285
	.DB $00		;5286
	.DB $02		;5287
	.DB $80		;5288
	.DB $82		;5289
	.DB $c0		;528a
	.DB $f0		;528b
	.DB $03		;528c
	.DB $fa		;528d
	.DB $03		;528e
	.DB $fe		;528f
	.DB $42		;5290
	.DB $ff		;5291
	.DB $85		;5292
	.DB $50		;5293
	.DB $60		;5294
	.DB $00		;5295
	.DB $00		;5296
	.DB $80		;5297
	.DB $03		;5298
	.DB $ff		;5299
	.DB $85		;529a
	.DB $89		;529b
	.DB $b1		;529c
	.DB $c3		;529d
	.DB $07		;529e
	.DB $1f		;529f
	.DB $05		;52a0
	.DB $ff		;52a1
	.DB $81		;52a2
	.DB $c0		;52a3
	.DB $02		;52a4
	.DB $df		;52a5
	.DB $03		;52a6
	.DB $d8		;52a7
	.DB $02		;52a8
	.DB $ff		;52a9
	.DB $81		;52aa
	.DB $00		;52ab
	.DB $02		;52ac
	.DB $ff		;52ad
	.DB $03		;52ae
	.DB $00		;52af
	.DB $02		;52b0
	.DB $ff		;52b1
	.DB $81		;52b2
	.DB $00		;52b3
	.DB $02		;52b4
	.DB $ff		;52b5
	.DB $03		;52b6
	.DB $18		;52b7
	.DB $02		;52b8
	.DB $ff		;52b9
	.DB $81		;52ba
	.DB $00		;52bb
	.DB $02		;52bc
	.DB $ff		;52bd
	.DB $03		;52be
	.DB $00		;52bf
	.DB $02		;52c0
	.DB $ff		;52c1
	.DB $81		;52c2
	.DB $00		;52c3
	.DB $02		;52c4
	.DB $ff		;52c5
	.DB $03		;52c6
	.DB $18		;52c7
	.DB $08		;52c8
	.DB $d8		;52c9
	.DB $08		;52ca
	.DB $18		;52cb
	.DB $18		;52cc
	.DB $00		;52cd
	.DB $03		;52ce
	.DB $d8		;52cf
	.DB $02		;52d0
	.DB $df		;52d1
	.DB $03		;52d2
	.DB $d8		;52d3
	.DB $03		;52d4
	.DB $00		;52d5
	.DB $02		;52d6
	.DB $ff		;52d7
	.DB $03		;52d8
	.DB $00		;52d9
	.DB $03		;52da
	.DB $18		;52db
	.DB $02		;52dc
	.DB $ff		;52dd
	.DB $03		;52de
	.DB $18		;52df
	.DB $08		;52e0
	.DB $d8		;52e1
	.DB $82		;52e2
	.DB $50		;52e3
	.DB $40		;52e4
	.DB $07		;52e5
	.DB $00		;52e6
	.DB $89		;52e7
	.DB $81		;52e8
	.DB $c1		;52e9
	.DB $e3		;52ea
	.DB $e7		;52eb
	.DB $ef		;52ec
	.DB $ff		;52ed
	.DB $ff		;52ee
	.DB $70		;52ef
	.DB $40		;52f0
	.DB $02		;52f1
	.DB $80		;52f2
	.DB $04		;52f3
	.DB $00		;52f4
	.DB $81		;52f5
	.DB $83		;52f6
	.DB $02		;52f7
	.DB $01		;52f8
	.DB $02		;52f9
	.DB $0b		;52fa
	.DB $8b		;52fb
	.DB $87		;52fc
	.DB $ff		;52fd
	.DB $3f		;52fe
	.DB $81		;52ff
	.DB $00		;5300
	.DB $00		;5301
	.DB $5e		;5302
	.DB $55		;5303
	.DB $bf		;5304
	.DB $ff		;5305
	.DB $3f		;5306
	.DB $00		;5307
	.DB $02		;5308
	.DB $ff		;5309
	.DB $8c		;530a
	.DB $fd		;530b
	.DB $d5		;530c
	.DB $84		;530d
	.DB $ce		;530e
	.DB $fc		;530f
	.DB $fc		;5310
	.DB $ff		;5311
	.DB $e3		;5312
	.DB $01		;5313
	.DB $41		;5314
	.DB $03		;5315
	.DB $61		;5316
	.DB $02		;5317
	.DB $3f		;5318
	.DB $02		;5319
	.DB $ff		;531a
	.DB $85		;531b
	.DB $8e		;531c
	.DB $8c		;531d
	.DB $dc		;531e
	.DB $8f		;531f
	.DB $df		;5320
	.DB $03		;5321
	.DB $ff		;5322
	.DB $96		;5323
	.DB $7f		;5324
	.DB $31		;5325
	.DB $31		;5326
	.DB $fb		;5327
	.DB $ff		;5328
	.DB $ff		;5329
	.DB $df		;532a
	.DB $bf		;532b
	.DB $3f		;532c
	.DB $29		;532d
	.DB $2b		;532e
	.DB $a1		;532f
	.DB $23		;5330
	.DB $7f		;5331
	.DB $fe		;5332
	.DB $fc		;5333
	.DB $aa		;5334
	.DB $c2		;5335
	.DB $ea		;5336
	.DB $ca		;5337
	.DB $aa		;5338
	.DB $2a		;5339
	.DB $0a		;533a
    .INCLUDE "tiles/wall.asm"
	.DB $03		;539c
	.DB $01		;539d
	.DB $02		;539e
	.DB $03		;539f
	.DB $02		;53a0
	.DB $ff		;53a1
	.DB $81		;53a2
	.DB $c0		;53a3
	.DB $03		;53a4
	.DB $80		;53a5
	.DB $02		;53a6
	.DB $00		;53a7
	.DB $02		;53a8
	.DB $ff		;53a9
	.DB $02		;53aa
	.DB $18		;53ab
	.DB $04		;53ac
	.DB $30		;53ad
	.DB $02		;53ae
	.DB $ff		;53af
	.DB $06		;53b0
	.DB $00		;53b1
	.DB $02		;53b2
	.DB $ff		;53b3
	.DB $02		;53b4
	.DB $01		;53b5
	.DB $04		;53b6
	.DB $00		;53b7
	.DB $81		;53b8
	.DB $03		;53b9
	.DB $03		;53ba
	.DB $06		;53bb
	.DB $03		;53bc
	.DB $0c		;53bd
	.DB $81		;53be
	.DB $18		;53bf
	.DB $08		;53c0
	.DB $00		;53c1
	.DB $04		;53c2
	.DB $60		;53c3
	.DB $04		;53c4
	.DB $c0		;53c5
	.DB $02		;53c6
	.DB $18		;53c7
	.DB $03		;53c8
	.DB $30		;53c9
	.DB $03		;53ca
	.DB $60		;53cb
	.DB $04		;53cc
	.DB $01		;53cd
	.DB $04		;53ce
	.DB $03		;53cf
	.DB $04		;53d0
	.DB $80		;53d1
	.DB $03		;53d2
	.DB $00		;53d3
	.DB $81		;53d4
	.DB $ff		;53d5
	.DB $07		;53d6
	.DB $00		;53d7
	.DB $89		;53d8
	.DB $ff		;53d9
	.DB $7e		;53da
	.DB $ff		;53db
	.DB $ff		;53dc
	.DB $e8		;53dd
	.DB $ea		;53de
	.DB $70		;53df
	.DB $00		;53e0
	.DB $b8		;53e1
	.DB $03		;53e2
	.DB $c0		;53e3
	.DB $03		;53e4
	.DB $80		;53e5
	.DB $02		;53e6
	.DB $00		;53e7
	.DB $81		;53e8
	.DB $07		;53e9
	.DB $03		;53ea
	.DB $06		;53eb
	.DB $04		;53ec
	.DB $0c		;53ed
	.DB $81		;53ee
	.DB $ff		;53ef
	.DB $07		;53f0
	.DB $01		;53f1
	.DB $90		;53f2
	.DB $86		;53f3
	.DB $92		;53f4
	.DB $f0		;53f5
	.DB $c9		;53f6
	.DB $ed		;53f7
	.DB $a1		;53f8
	.DB $7f		;53f9
	.DB $5f		;53fa
	.DB $00		;53fb
	.DB $00		;53fc
	.DB $c0		;53fd
	.DB $20		;53fe
	.DB $d0		;53ff
	.DB $50		;5400
	.DB $50		;5401
	.DB $70		;5402
	.DB $04		;5403
	.DB $18		;5404
	.DB $04		;5405
	.DB $30		;5406
	.DB $08		;5407
	.DB $01		;5408
	.DB $82		;5409
	.DB $41		;540a
	.DB $7f		;540b
	.DB $03		;540c
	.DB $2b		;540d
	.DB $bb		;540e
	.DB $2e		;540f
	.DB $5a		;5410
	.DB $7f		;5411
	.DB $40		;5412
	.DB $c0		;5413
	.DB $00		;5414
	.DB $c0		;5415
	.DB $c0		;5416
	.DB $e0		;5417
	.DB $20		;5418
	.DB $d0		;5419
	.DB $00		;541a
	.DB $0f		;541b
	.DB $0a		;541c
	.DB $6f		;541d
	.DB $6a		;541e
	.DB $6f		;541f
	.DB $6a		;5420
	.DB $6f		;5421
	.INCLUDE "tiles/net.asm"
	.DB $02		;544a
	.DB $49		;544b
	.DB $03		;544c
	.DB $89		;544d
	.DB $83		;544e
	.DB $88		;544f
	.DB $48		;5450
	.DB $7b		;5451
	.DB $04		;5452
	.DB $08		;5453
	.DB $ae		;5454
	.DB $04		;5455
	.DB $84		;5456
	.DB $84		;5457
	.DB $a4		;5458
	.DB $6a		;5459
	.DB $6f		;545a
	.DB $6a		;545b
	.DB $6f		;545c
	.DB $6a		;545d
	.DB $6f		;545e
	.DB $6a		;545f
	.DB $0f		;5460
	.DB $aa		;5461
	.DB $ff		;5462
	.DB $aa		;5463
	.DB $ff		;5464
	.DB $ab		;5465
	.DB $ff		;5466
	.DB $ab		;5467
	.DB $ff		;5468
	.DB $ea		;5469
	.DB $ff		;546a
	.DB $ea		;546b
	.DB $ff		;546c
	.DB $aa		;546d
	.DB $ff		;546e
	.DB $aa		;546f
	.DB $ff		;5470
	.DB $ab		;5471
	.DB $ff		;5472
	.DB $ab		;5473
	.DB $ff		;5474
	.DB $ab		;5475
	.DB $ff		;5476
	.DB $ab		;5477
	.DB $ff		;5478
	.DB $aa		;5479
	.DB $ff		;547a
	.DB $aa		;547b
	.DB $ff		;547c
	.DB $aa		;547d
	.DB $ff		;547e
	.DB $aa		;547f
	.DB $ff		;5480
	.DB $f0		;5481
	.DB $c0		;5482
	.DB $02		;5483
	.DB $80		;5484
	.DB $04		;5485
	.DB $00		;5486
	.DB $82		;5487
	.DB $0f		;5488
	.DB $03		;5489
	.DB $06		;548a
	.DB $00		;548b
	.DB $88		;548c
	.DB $7f		;548d
	.DB $3f		;548e
	.DB $5f		;548f
	.DB $4b		;5490
	.DB $51		;5491
	.DB $53		;5492
	.DB $55		;5493
	.DB $54		;5494
	.DB $05		;5495
	.DB $55		;5496
	.DB $03		;5497
	.DB $15		;5498
	.DB $08		;5499
	.DB $00		;549a
	.DB $03		;549b
	.DB $05		;549c
	.DB $03		;549d
	.DB $01		;549e
	.DB $02		;549f
	.DB $00		;54a0
	.DB $04		;54a1
	.DB $60		;54a2
	.DB $04		;54a3
	.DB $30		;54a4
	.DB $04		;54a5
	.DB $01		;54a6
	.DB $04		;54a7
	.DB $00		;54a8
	.DB $02		;54a9
	.DB $80		;54aa
	.DB $02		;54ab
	.DB $ff		;54ac
	.DB $06		;54ad
	.DB $00		;54ae
	.DB $02		;54af
	.DB $ff		;54b0
	.DB $04		;54b1
	.DB $00		;54b2
	.DB $02		;54b3
	.DB $60		;54b4
	.DB $02		;54b5
	.DB $e0		;54b6
	.DB $04		;54b7
	.DB $30		;54b8
	.DB $02		;54b9
	.DB $00		;54ba
	.DB $04		;54bb
	.DB $80		;54bc
	.DB $02		;54bd
	.DB $ff		;54be
	.DB $04		;54bf
	.DB $06		;54c0
	.DB $02		;54c1
	.DB $03		;54c2
	.DB $02		;54c3
	.DB $ff		;54c4
	.DB $02		;54c5
	.DB $18		;54c6
	.DB $03		;54c7
	.DB $0c		;54c8
	.DB $88		;54c9
	.DB $06		;54ca
	.DB $fe		;54cb
	.DB $fe		;54cc
	.DB $77		;54cd
	.DB $6f		;54ce
	.DB $9f		;54cf
	.DB $ff		;54d0
	.DB $7f		;54d1
	.DB $03		;54d2
	.DB $00		;54d3
	.DB $85		;54d4
	.DB $ba		;54d5
	.DB $b6		;54d6
	.DB $cc		;54d7
	.DB $38		;54d8
	.DB $e0		;54d9
	.DB $05		;54da
	.DB $00		;54db
	.DB $03		;54dc
	.DB $3f		;54dd
	.DB $03		;54de
	.DB $38		;54df
	.DB $02		;54e0
	.DB $00		;54e1
	.DB $03		;54e2
	.DB $ff		;54e3
	.DB $05		;54e4
	.DB $00		;54e5
	.DB $03		;54e6
	.DB $ff		;54e7
	.DB $03		;54e8
	.DB $18		;54e9
	.DB $02		;54ea
	.DB $01		;54eb
	.DB $03		;54ec
	.DB $ff		;54ed
	.DB $03		;54ee
	.DB $00		;54ef
	.DB $02		;54f0
	.DB $80		;54f1
	.DB $03		;54f2
	.DB $ff		;54f3
	.DB $03		;54f4
	.DB $18		;54f5
	.DB $08		;54f6
	.DB $38		;54f7
	.DB $08		;54f8
	.DB $18		;54f9
	.DB $82		;54fa
	.DB $00		;54fb
	.DB $3c		;54fc
	.DB $04		;54fd
	.DB $18		;54fe
	.DB $84		;54ff
	.DB $3c		;5500
l5501h:
	.DB $00		;5501
	.DB $00		;5502
	.DB $ff		;5503
	.DB $04		;5504
	.DB $66		;5505
	.DB $84		;5506
	.DB $ff		;5507
	.DB $00		;5508
	.DB $00		;5509
	.DB $ff		;550a
	.DB $04		;550b
	.DB $5a		;550c
	.DB $82		;550d
	.DB $ff		;550e
	.DB $00		;550f
	.DB $03		;5510
	.DB $38		;5511
	.DB $02		;5512
	.DB $3f		;5513
	.DB $03		;5514
	.DB $38		;5515
	.DB $03		;5516
	.DB $00		;5517
	.DB $02		;5518
	.DB $ff		;5519
	.DB $03		;551a
	.DB $00		;551b
	.DB $03		;551c
	.DB $18		;551d
	.DB $02		;551e
	.DB $ff		;551f
	.DB $03		;5520
	.DB $18		;5521
	.DB $02		;5522
	.DB $38		;5523
	.DB $02		;5524
	.DB $f8		;5525
	.DB $04		;5526
	.DB $38		;5527
	.DB $81		;5528
	.DB $a0		;5529
	.DB $03		;552a
	.DB $80		;552b
	.DB $0c		;552c
	.DB $00		;552d
	.DB $02		;552e
	.DB $80		;552f
	.DB $06		;5530
	.DB $00		;5531
	.DB $81		;5532
	.DB $7c		;5533
	.DB $02		;5534
	.DB $fe		;5535
	.DB $02		;5536
	.DB $f4		;5537
	.DB $8b		;5538
	.DB $78		;5539
	.DB $00		;553a
	.DB $bc		;553b
	.DB $7e		;553c
	.DB $ff		;553d
	.DB $ff		;553e
	.DB $a1		;553f
	.DB $aa		;5540
	.DB $40		;5541
	.DB $00		;5542
	.DB $b4		;5543
	.DB $00		;5544
	.DB $ac		;5545
	.DB $03		;5546
	.DB $7b		;5547
	.DB $7b		;5548
	.DB $6b		;5549
	.DB $7b		;554a
	.DB $31		;554b
	.DB $78		;554c
	.DB $78		;554d
	.DB $80		;554e
	.DB $dc		;554f
	.DB $fe		;5550
	.DB $be		;5551
	.DB $fe		;5552
	.DB $9e		;5553
	.DB $00		;5554
	.DB $00		;5555
	.DB $71		;5556
	.DB $73		;5557
	.DB $73		;5558
	.DB $77		;5559
	.DB $23		;555a
	.DB $01		;555b
	.DB $03		;555c
	.DB $03		;555d
	.DB $80		;555e
	.DB $ce		;555f
	.DB $ce		;5560
	.DB $ee		;5561
	.DB $ce		;5562
	.DB $84		;5563
	.DB $ce		;5564
	.DB $ce		;5565
	.DB $20		;5566
	.DB $5e		;5567
	.DB $fe		;5568
	.DB $fe		;5569
	.DB $fc		;556a
	.DB $5e		;556b
	.DB $1c		;556c
	.DB $3e		;556d
	.DB $71		;556e
	.DB $7f		;556f
	.DB $77		;5570
	.DB $3f		;5571
	.DB $03		;5572
	.DB $7f		;5573
	.DB $7f		;5574
	.DB $ff		;5575
	.DB $05		;5576
	.DB $ff		;5577
	.DB $03		;5578
	.DB $fe		;5579
	.DB $02		;557a
	.DB $fc		;557b
	.DB $20		;557c
	.DB $00		;557d
	.DB $81		;557e
	.DB $fc		;557f
	.DB $03		;5580
	.DB $f8		;5581
	.DB $03		;5582
	.DB $f0		;5583
	.DB $81		;5584
	.DB $e0		;5585
	.DB $10		;5586
	.DB $00		;5587
	.DB $02		;5588
	.DB $e0		;5589
	.DB $03		;558a
	.DB $c0		;558b
	.DB $03		;558c
	.DB $80		;558d
	.DB $18		;558e
	.DB $00		;558f
	.DB $88		;5590
	.DB $81		;5591
	.DB $00		;5592
	.DB $00		;5593
	.DB $17		;5594
	.DB $15		;5595
	.DB $8f		;5596
	.DB $ff		;5597
	.DB $3f		;5598
	.DB $18		;5599
	.DB $00		;559a
	.DB $82		;559b
	.DB $05		;559c
	.DB $01		;559d
	.DB $03		;559e
	.DB $70		;559f
	.DB $87		;55a0
	.DB $7e		;55a1
	.DB $9e		;55a2
	.DB $a0		;55a3
	.DB $ff		;55a4
	.DB $ff		;55a5
	.DB $3f		;55a6
	.DB $1f		;55a7
	.DB $03		;55a8
	.DB $0f		;55a9
	.DB $81		;55aa
	.DB $2f		;55ab
	.DB $10		;55ac
	.DB $00		;55ad
	.DB $82		;55ae
	.DB $be		;55af
	.DB $ff		;55b0
	.DB $03		;55b1
	.DB $d4		;55b2
	.DB $9a		;55b3
	.DB $d1		;55b4
	.DB $a5		;55b5
	.DB $80		;55b6
	.DB $0f		;55b7
	.DB $ff		;55b8
	.DB $1f		;55b9
	.DB $3f		;55ba
	.DB $3f		;55bb
	.DB $1f		;55bc
	.DB $df		;55bd
	.DB $2f		;55be
	.DB $90		;55bf
	.DB $00		;55c0
	.DB $95		;55c1
	.DB $90		;55c2
	.DB $95		;55c3
	.DB $90		;55c4
	.DB $95		;55c5
	.DB $90		;55c6
	.DB $00		;55c7
	.DB $00		;55c8
	.DB $55		;55c9
	.DB $00		;55ca
	.DB $55		;55cb
	.DB $00		;55cc
	.DB $55		;55cd
	.DB $03		;55ce
	.DB $00		;55cf
	.DB $83		;55d0
	.DB $40		;55d1
	.DB $00		;55d2
	.DB $40		;55d3
	.DB $1b		;55d4
	.DB $00		;55d5
	.DB $02		;55d6
	.DB $b6		;55d7
	.DB $03		;55d8
	.DB $76		;55d9
	.DB $81		;55da
	.DB $77		;55db
	.DB $02		;55dc
	.DB $b7		;55dd
	.DB $04		;55de
	.DB $f7		;55df
	.DB $81		;55e0
	.DB $fb		;55e1
	.DB $03		;55e2
	.DB $7b		;55e3
	.DB $8f		;55e4
	.DB $95		;55e5
	.DB $90		;55e6
	.DB $95		;55e7
	.DB $90		;55e8
	.DB $95		;55e9
	.DB $90		;55ea
	.DB $95		;55eb
	.DB $f0		;55ec
	.DB $55		;55ed
	.DB $00		;55ee
	.DB $55		;55ef
	.DB $00		;55f0
	.DB $54		;55f1
	.DB $00		;55f2
	.DB $54		;55f3
	.DB $19		;55f4
	.DB $00		;55f5
	.DB $82		;55f6
	.DB $f0		;55f7
	.DB $c0		;55f8
	.DB $02		;55f9
	.DB $80		;55fa
	.DB $04		;55fb
	.DB $00		;55fc
	.DB $82		;55fd
	.DB $01		;55fe
	.DB $03		;55ff
	.DB $02		;5600
	.DB $01		;5601
	.DB $04		;5602
	.DB $00		;5603
	.DB $87		;5604
	.DB $c0		;5605
	.DB $de		;5606
	.DB $fe		;5607
	.DB $f6		;5608
	.DB $fe		;5609
	.DB $fc		;560a
	.DB $fe		;560b
	.DB $09		;560c
	.DB $ff		;560d
	.DB $04		;560e
	.DB $00		;560f
	.DB $02		;5610
	.DB $80		;5611
	.DB $82		;5612
	.DB $c0		;5613
	.DB $f0		;5614
	.DB $08		;5615
	.DB $ff		;5616
	.DB $38		;5617
	.DB $00		;5618
	.DB $02		;5619
	.DB $07		;561a
	.DB $03		;561b
	.DB $03		;561c
	.DB $03		;561d
	.DB $01		;561e
	.DB $82		;561f
	.DB $af		;5620
	.DB $9f		;5621
	.DB $06		;5622
	.DB $ff		;5623
	.DB $83		;5624
	.DB $77		;5625
	.DB $4f		;5626
	.DB $3f		;5627
	.DB $05		;5628
	.DB $ff		;5629
	.DB $70		;562a
	.DB $00		;562b
	.DB $82		;562c
	.DB $f0		;562d
	.DB $c0		;562e
	.DB $02		;562f
	.DB $80		;5630
	.DB $05		;5631
	.DB $00		;5632
	.DB $89		;5633
	.DB $81		;5634
	.DB $c1		;5635
	.DB $e3		;5636
	.DB $e7		;5637
	.DB $ef		;5638
	.DB $ff		;5639
	.DB $ff		;563a
	.DB $f0		;563b
	.DB $c0		;563c
	.DB $02		;563d
	.DB $80		;563e
	.DB $04		;563f
	.DB $00		;5640
	.DB $81		;5641
	.DB $83		;5642
	.DB $02		;5643
	.DB $01		;5644
	.DB $02		;5645
	.DB $0b		;5646
	.DB $8b		;5647
	.DB $87		;5648
	.DB $ff		;5649
	.DB $3f		;564a
	.DB $81		;564b
	.DB $00		;564c
	.DB $00		;564d
	.DB $5e		;564e
l564fh:
	.DB $55		;564f
	.DB $bf		;5650
	.DB $ff		;5651
	.DB $3f		;5652
	.DB $00		;5653
l5654h:
	.DB $02		;5654
	.DB $30		;5655
	.DB $06		;5656
	.DB $32		;5657
	.DB $05		;5658
	.DB $33		;5659
	.DB $03		;565a
	.DB $31		;565b
	.DB $86		;565c
	.DB $30		;565d
	.DB $34		;565e
	.DB $36		;565f
	.DB $37		;5660
	.DB $39		;5661
	.DB $3b		;5662
	.DB $08		;5663
	.DB $36		;5664
	.DB $87		;5665
	.DB $35		;5666
	.DB $31		;5667
	.DB $30		;5668
	.DB $35		;5669
	.DB $36		;566a
	.DB $3d		;566b
	.DB $3f		;566c
	.DB $08		;566d
	.DB $36		;566e
	.DB $85		;566f
	.DB $69		;5670
	.DB $00		;5671
	.DB $6a		;5672
	.DB $34		;5673
	.DB $3c		;5674
	.DB $0b		;5675
	.DB $42		;5676
	.DB $85		;5677
	.DB $00		;5678
	.DB $1b		;5679
	.DB $00		;567a
	.DB $35		;567b
	.DB $43		;567c
	.DB $0b		;567d
	.DB $42		;567e
	.DB $03		;567f
	.DB $00		;5680
	.DB $82		;5681
	.DB $3c		;5682
	.DB $45		;5683
	.DB $03		;5684
	.DB $42		;5685
	.DB $88		;5686
	.DB $47		;5687
	.DB $49		;5688
	.DB $49		;5689
	.DB $4a		;568a
	.DB $49		;568b
	.DB $48		;568c
	.DB $46		;568d
	.DB $42		;568e
	.DB $03		;568f
	.DB $00		;5690
	.DB $81		;5691
	.DB $3c		;5692
	.DB $04		;5693
	.DB $42		;5694
	.DB $05		;5695
	.DB $4c		;5696
	.DB $87		;5697
	.DB $4d		;5698
	.DB $4b		;5699
	.DB $42		;569a
	.DB $00		;569b
	.DB $1a		;569c
	.DB $00		;569d
	.DB $43		;569e
	.DB $04		;569f
	.DB $42		;56a0
	.DB $81		;56a1
	.DB $4f		;56a2
	.DB $04		;56a3
	.DB $51		;56a4
	.DB $83		;56a5
	.DB $50		;56a6
	.DB $4e		;56a7
	.DB $42		;56a8
	.DB $03		;56a9
	.DB $00		;56aa
	.DB $99		;56ab
	.DB $45		;56ac
	.DB $42		;56ad
	.DB $52		;56ae
	.DB $42		;56af
	.DB $46		;56b0
	.DB $54		;56b1
	.DB $51		;56b2
	.DB $51		;56b3
	.DB $55		;56b4
	.DB $51		;56b5
	.DB $51		;56b6
	.DB $53		;56b7
	.DB $42		;56b8
	.DB $6d		;56b9
	.DB $00		;56ba
	.DB $6d		;56bb
	.DB $42		;56bc
	.DB $42		;56bd
	.DB $56		;56be
	.DB $42		;56bf
	.DB $4b		;56c0
	.DB $58		;56c1
	.DB $4c		;56c2
	.DB $4c		;56c3
	.DB $59		;56c4
	.DB $03		;56c5
	.DB $4c		;56c6
	.DB $06		;56c7
	.DB $42		;56c8
	.DB $87		;56c9
	.DB $5a		;56ca
	.DB $5c		;56cb
	.DB $5e		;56cc
	.DB $60		;56cd
	.DB $5f		;56ce
	.DB $5f		;56cf
	.DB $61		;56d0
	.DB $03		;56d1
	.DB $5f		;56d2
	.DB $81		;56d3
	.DB $5d		;56d4
	.DB $05		;56d5
	.DB $42		;56d6
	.DB $83		;56d7
	.DB $62		;56d8
	.DB $64		;56d9
	.DB $66		;56da
	.DB $03		;56db
	.DB $68		;56dc
	.DB $85		;56dd
	.DB $67		;56de
	.DB $68		;56df
	.DB $68		;56e0
	.DB $67		;56e1
	.DB $65		;56e2
	.DB $05		;56e3
	.DB $42		;56e4
	.DB $82		;56e5
	.DB $77		;56e6
	.DB $42		;56e7
	.DB $04		;56e8
	.DB $4c		;56e9
	.DB $85		;56ea
	.DB $59		;56eb
	.DB $4c		;56ec
	.DB $4c		;56ed
	.DB $6f		;56ee
	.DB $4b		;56ef
	.DB $07		;56f0
	.DB $42		;56f1
	.DB $04		;56f2
	.DB $4c		;56f3
	.DB $85		;56f4
	.DB $59		;56f5
	.DB $4c		;56f6
	.DB $4c		;56f7
	.DB $58		;56f8
	.DB $4e		;56f9
	.DB $06		;56fa
	.DB $42		;56fb
	.DB $81		;56fc
	.DB $46		;56fd
	.DB $04		;56fe
	.DB $4c		;56ff
	.DB $85		;5700
	.DB $59		;5701
	.DB $4c		;5702
	.DB $4c		;5703
	.DB $4d		;5704
l5705h:
	.DB $53		;5705
	.DB $06		;5706
	.DB $42		;5707
	.DB $82		;5708
	.DB $4b		;5709
	.DB $4f		;570a
	.DB $03		;570b
	.DB $4c		;570c
	.DB $85		;570d
	.DB $59		;570e
	.DB $4c		;570f
	.DB $4c		;5710
	.DB $70		;5711
	.DB $4c		;5712
	.DB $06		;5713
	.DB $42		;5714
	.DB $82		;5715
	.DB $4e		;5716
	.DB $73		;5717
	.DB $03		;5718
	.DB $72		;5719
	.DB $81		;571a
	.DB $71		;571b
	.DB $03		;571c
	.DB $72		;571d
	.DB $81		;571e
	.DB $4c		;571f
	.DB $06		;5720
	.DB $42		;5721
	.DB $82		;5722
	.DB $53		;5723
	.DB $58		;5724
	.DB $08		;5725
	.DB $4c		;5726
	.DB $81		;5727
	.DB $46		;5728
	.DB $05		;5729
	.DB $42		;572a
	.DB $82		;572b
	.DB $4c		;572c
	.DB $4d		;572d
	.DB $08		;572e
	.DB $4c		;572f
	.DB $81		;5730
	.DB $4b		;5731
	.DB $05		;5732
	.DB $42		;5733
	.DB $82		;5734
	.DB $4c		;5735
	.DB $70		;5736
	.DB $07		;5737
	.DB $4c		;5738
	.DB $82		;5739
	.DB $4f		;573a
	.DB $4e		;573b
	.DB $04		;573c
	.DB $42		;573d
	.DB $81		;573e
	.DB $46		;573f
	.DB $09		;5740
	.DB $4c		;5741
	.DB $82		;5742
	.DB $6f		;5743
	.DB $53		;5744
	.DB $04		;5745
	.DB $42		;5746
	.DB $81		;5747
	.DB $4b		;5748
	.DB $09		;5749
	.DB $4c		;574a
	.DB $82		;574b
	.DB $58		;574c
	.DB $4c		;574d
	.DB $04		;574e
	.DB $42		;574f
	.DB $81		;5750
	.DB $76		;5751
	.DB $05		;5752
	.DB $49		;5753
	.DB $81		;5754
	.DB $74		;5755
	.DB $03		;5756
	.DB $49		;5757
	.DB $82		;5758
	.DB $75		;5759
	.DB $49		;575a
	.DB $12		;575b
	.DB $42		;575c
	.DB $00		;575d
	.DB $08		;575e
	.DB $01		;575f
	.DB $08		;5760
	.DB $03		;5761
	.DB $0e		;5762
	.DB $01		;5763
	.DB $02		;5764
	.DB $03		;5765
	.DB $38		;5766
	.DB $01		;5767
	.DB $82		;5768
	.DB $03		;5769
	.DB $01		;576a
	.DB $02		;576b
	.DB $03		;576c
	.DB $0e		;576d
	.DB $01		;576e
	.DB $02		;576f
	.DB $03		;5770
	.DB $0e		;5771
	.DB $01		;5772
	.DB $02		;5773
	.DB $03		;5774
	.DB $0a		;5775
	.DB $01		;5776
	.DB $02		;5777
	.DB $05		;5778
	.DB $84		;5779
	.DB $03		;577a
	.DB $05		;577b
	.DB $05		;577c
	.DB $03		;577d
	.DB $03		;577e
	.DB $01		;577f
	.DB $81		;5780
	.DB $03		;5781
	.DB $08		;5782
	.DB $01		;5783
	.DB $81		;5784
	.DB $03		;5785
	.DB $0f		;5786
	.DB $01		;5787
	.DB $05		;5788
	.DB $03		;5789
	.DB $0b		;578a
	.DB $01		;578b
	.DB $05		;578c
	.DB $03		;578d
	.DB $0b		;578e
	.DB $01		;578f
	.DB $81		;5790
	.DB $03		;5791
	.DB $03		;5792
	.DB $01		;5793
	.DB $81		;5794
	.DB $03		;5795
	.DB $0b		;5796
	.DB $01		;5797
	.DB $81		;5798
	.DB $03		;5799
	.DB $02		;579a
	.DB $01		;579b
	.DB $02		;579c
	.DB $03		;579d
	.DB $0b		;579e
	.DB $01		;579f
	.DB $81		;57a0
	.DB $03		;57a1
	.DB $02		;57a2
	.DB $01		;57a3
	.DB $02		;57a4
	.DB $03		;57a5
	.DB $0b		;57a6
	.DB $01		;57a7
	.DB $81		;57a8
	.DB $03		;57a9
	.DB $0b		;57aa
	.DB $01		;57ab
	.DB $81		;57ac
	.DB $03		;57ad
	.DB $18		;57ae
	.DB $01		;57af
	.DB $81		;57b0
	.DB $03		;57b1
	.DB $0f		;57b2
	.DB $01		;57b3
	.DB $81		;57b4
	.DB $03		;57b5
	.DB $06		;57b6
	.DB $01		;57b7
	.DB $81		;57b8
	.DB $03		;57b9
	.DB $07		;57ba
	.DB $01		;57bb
	.DB $02		;57bc
	.DB $03		;57bd
	.DB $0f		;57be
	.DB $01		;57bf
	.DB $81		;57c0
	.DB $03		;57c1
	.DB $0e		;57c2
	.DB $01		;57c3
	.DB $81		;57c4
	.DB $03		;57c5
	.DB $05		;57c6
	.DB $01		;57c7
	.DB $81		;57c8
	.DB $03		;57c9
	.DB $05		;57ca
	.DB $05		;57cb
	.DB $81		;57cc
	.DB $01		;57cd
	.DB $03		;57ce
	.DB $05		;57cf
	.DB $82		;57d0
	.DB $01		;57d1
	.DB $05		;57d2
	.DB $12		;57d3
	.DB $01		;57d4
	.DB $00		;57d5
	.DB $02		;57d6
	.DB $31		;57d7
	.DB $06		;57d8
	.DB $33		;57d9
	.DB $05		;57da
	.DB $32		;57db
	.DB $03		;57dc
	.DB $30		;57dd
	.DB $85		;57de
	.DB $31		;57df
	.DB $35		;57e0
	.DB $36		;57e1
	.DB $38		;57e2
	.DB $3a		;57e3
	.DB $09		;57e4
	.DB $36		;57e5
	.DB $87		;57e6
	.DB $34		;57e7
	.DB $30		;57e8
	.DB $31		;57e9
	.DB $3c		;57ea
	.DB $36		;57eb
	.DB $3e		;57ec
	.DB $40		;57ed
	.DB $08		;57ee
	.DB $36		;57ef
	.DB $02		;57f0
	.DB $00		;57f1
	.DB $83		;57f2
	.DB $30		;57f3
	.DB $35		;57f4
	.DB $41		;57f5
	.DB $0b		;57f6
	.DB $42		;57f7
	.DB $85		;57f8
	.DB $0e		;57f9
	.DB $20		;57fa
	.DB $34		;57fb
	.DB $3c		;57fc
	.DB $44		;57fd
	.DB $0b		;57fe
	.DB $42		;57ff
l5800h:
	.DB $84		;5800
	.DB $00		;5801
	.DB $01		;5802
	.DB $6b		;5803
	.DB $3c		;5804
	.DB $03		;5805
	.DB $42		;5806
	.DB $87		;5807
	.DB $46		;5808
	.DB $48		;5809
	.DB $49		;580a
	.DB $4a		;580b
	.DB $49		;580c
	.DB $49		;580d
	.DB $47		;580e
	.DB $02		;580f
	.DB $42		;5810
	.DB $02		;5811
	.DB $00		;5812
	.DB $82		;5813
	.DB $3c		;5814
	.DB $41		;5815
	.DB $03		;5816
	.DB $42		;5817
	.DB $82		;5818
	.DB $4b		;5819
	.DB $4d		;581a
	.DB $05		;581b
	.DB $4c		;581c
	.DB $02		;581d
	.DB $42		;581e
	.DB $84		;581f
	.DB $24		;5820
	.DB $20		;5821
	.DB $3c		;5822
	.DB $44		;5823
	.DB $03		;5824
	.DB $42		;5825
	.DB $82		;5826
	.DB $4e		;5827
	.DB $50		;5828
	.DB $04		;5829
	.DB $51		;582a
	.DB $86		;582b
	.DB $4f		;582c
	.DB $42		;582d
	.DB $42		;582e
	.DB $00		;582f
	.DB $01		;5830
	.DB $6c		;5831
	.DB $04		;5832
	.DB $42		;5833
	.DB $90		;5834
	.DB $53		;5835
	.DB $51		;5836
	.DB $51		;5837
	.DB $55		;5838
	.DB $51		;5839
	.DB $51		;583a
	.DB $54		;583b
	.DB $46		;583c
	.DB $42		;583d
	.DB $00		;583e
	.DB $00		;583f
	.DB $6e		;5840
	.DB $42		;5841
	.DB $42		;5842
	.DB $57		;5843
	.DB $42		;5844
	.DB $03		;5845
	.DB $4c		;5846
	.DB $85		;5847
	.DB $59		;5848
	.DB $4c		;5849
	.DB $4c		;584a
	.DB $58		;584b
	.DB $4b		;584c
	.DB $06		;584d
	.DB $42		;584e
	.DB $82		;584f
	.DB $5b		;5850
	.DB $5d		;5851
	.DB $03		;5852
	.DB $5f		;5853
	.DB $86		;5854
	.DB $61		;5855
	.DB $5f		;5856
	.DB $5f		;5857
	.DB $60		;5858
	.DB $5e		;5859
	.DB $5c		;585a
	.DB $05		;585b
	.DB $42		;585c
	.DB $86		;585d
	.DB $63		;585e
	.DB $65		;585f
	.DB $67		;5860
	.DB $68		;5861
	.DB $68		;5862
	.DB $67		;5863
	.DB $03		;5864
	.DB $68		;5865
	.DB $82		;5866
	.DB $66		;5867
	.DB $64		;5868
	.DB $05		;5869
	.DB $42		;586a
	.DB $86		;586b
	.DB $78		;586c
	.DB $4b		;586d
	.DB $6f		;586e
	.DB $4c		;586f
	.DB $4c		;5870
	.DB $59		;5871
	.DB $04		;5872
	.DB $4c		;5873
	.DB $07		;5874
	.DB $42		;5875
	.DB $85		;5876
	.DB $4e		;5877
sub_5878h:
	.DB $58		;5878
	.DB $4c		;5879
	.DB $4c		;587a
	.DB $59		;587b
	.DB $04		;587c
	.DB $4c		;587d
	.DB $07		;587e
	.DB $42		;587f
	.DB $85		;5880
	.DB $53		;5881
	.DB $4d		;5882
	.DB $4c		;5883
	.DB $4c		;5884
	.DB $59		;5885
	.DB $04		;5886
	.DB $4c		;5887
	.DB $81		;5888
	.DB $46		;5889
	.DB $06		;588a
	.DB $42		;588b
	.DB $85		;588c
	.DB $4c		;588d
	.DB $70		;588e
	.DB $4c		;588f
	.DB $4c		;5890
	.DB $59		;5891
	.DB $03		;5892
	.DB $4c		;5893
	.DB $82		;5894
	.DB $4f		;5895
	.DB $4b		;5896
	.DB $06		;5897
	.DB $42		;5898
	.DB $81		;5899
	.DB $4c		;589a
	.DB $03		;589b
	.DB $72		;589c
	.DB $81		;589d
	.DB $71		;589e
	.DB $03		;589f
	.DB $72		;58a0
	.DB $82		;58a1
	.DB $73		;58a2
	.DB $4e		;58a3
	.DB $05		;58a4
	.DB $42		;58a5
	.DB $81		;58a6
	.DB $46		;58a7
	.DB $08		;58a8
	.DB $4c		;58a9
	.DB $82		;58aa
	.DB $58		;58ab
	.DB $53		;58ac
	.DB $05		;58ad
	.DB $42		;58ae
	.DB $81		;58af
	.DB $4b		;58b0
	.DB $08		;58b1
	.DB $4c		;58b2
	.DB $82		;58b3
	.DB $4d		;58b4
	.DB $4c		;58b5
	.DB $05		;58b6
	.DB $42		;58b7
	.DB $82		;58b8
	.DB $4e		;58b9
	.DB $4f		;58ba
	.DB $07		;58bb
	.DB $4c		;58bc
	.DB $82		;58bd
	.DB $70		;58be
	.DB $4c		;58bf
	.DB $05		;58c0
	.DB $42		;58c1
	.DB $82		;58c2
	.DB $53		;58c3
	.DB $6f		;58c4
	.DB $09		;58c5
	.DB $4c		;58c6
	.DB $81		;58c7
	.DB $46		;58c8
	.DB $04		;58c9
	.DB $42		;58ca
	.DB $82		;58cb
	.DB $4c		;58cc
	.DB $58		;58cd
	.DB $09		;58ce
	.DB $4c		;58cf
	.DB $81		;58d0
	.DB $4b		;58d1
	.DB $04		;58d2
	.DB $42		;58d3
	.DB $82		;58d4
	.DB $49		;58d5
	.DB $75		;58d6
	.DB $03		;58d7
	.DB $49		;58d8
	.DB $81		;58d9
	.DB $74		;58da
	.DB $05		;58db
	.DB $49		;58dc
	.DB $81		;58dd
	.DB $76		;58de
	.DB $12		;58df
	.DB $42		;58e0
	.DB $00		;58e1
	.DB $08		;58e2
	.DB $01		;58e3
	.DB $08		;58e4
	.DB $03		;58e5
	.DB $0e		;58e6
	.DB $01		;58e7
	.DB $02		;58e8
	.DB $03		;58e9
	.DB $0f		;58ea
	.DB $01		;58eb
	.DB $81		;58ec
	.DB $03		;58ed
	.DB $0f		;58ee
	.DB $01		;58ef
	.DB $81		;58f0
	.DB $03		;58f1
	.DB $1a		;58f2
	.DB $01		;58f3
	.DB $81		;58f4
	.DB $03		;58f5
	.DB $04		;58f6
	.DB $01		;58f7
	.DB $81		;58f8
	.DB $03		;58f9
	.DB $0f		;58fa
	.DB $01		;58fb
	.DB $81		;58fc
	.DB $03		;58fd
	.DB $0a		;58fe
	.DB $01		;58ff
	.DB $81		;5900
	.DB $03		;5901
	.DB $0a		;5902
	.DB $01		;5903
	.DB $02		;5904
	.DB $05		;5905
	.DB $81		;5906
	.DB $01		;5907
	.DB $02		;5908
	.DB $05		;5909
	.DB $02		;590a
	.DB $03		;590b
	.DB $0e		;590c
	.DB $01		;590d
	.DB $02		;590e
	.DB $03		;590f
	.DB $0c		;5910
	.DB $01		;5911
	.DB $05		;5912
	.DB $03		;5913
	.DB $0b		;5914
	.DB $01		;5915
	.DB $05		;5916
	.DB $03		;5917
	.DB $07		;5918
	.DB $01		;5919
	.DB $81		;591a
	.DB $03		;591b
	.DB $27		;591c
	.DB $01		;591d
	.DB $81		;591e
	.DB $03		;591f
	.DB $07		;5920
	.DB $01		;5921
	.DB $81		;5922
	.DB $03		;5923
	.DB $06		;5924
	.DB $01		;5925
	.DB $02		;5926
	.DB $03		;5927
	.DB $0a		;5928
	.DB $01		;5929
	.DB $81		;592a
	.DB $03		;592b
	.DB $04		;592c
	.DB $01		;592d
	.DB $81		;592e
	.DB $03		;592f
	.DB $0e		;5930
	.DB $01		;5931
	.DB $02		;5932
	.DB $03		;5933
	.DB $0e		;5934
	.DB $01		;5935
	.DB $81		;5936
	.DB $03		;5937
	.DB $17		;5938
	.DB $01		;5939
	.DB $81		;593a
	.DB $03		;593b
	.DB $09		;593c
	.DB $01		;593d
	.DB $81		;593e
	.DB $03		;593f
	.DB $0f		;5940
	.DB $01		;5941
	.DB $81		;5942
	.DB $03		;5943
	.DB $04		;5944
	.DB $01		;5945
	.DB $82		;5946
	.DB $05		;5947
	.DB $03		;5948
	.DB $03		;5949
	.DB $05		;594a
	.DB $81		;594b
	.DB $03		;594c
	.DB $05		;594d
	.DB $05		;594e
	.DB $13		;594f
	.DB $01		;5950
	.DB $00		;5951
	.DB $52		;5952
	.DB $01		;5953
	.DB $8a		;5954
	.DB $01		;5955
	.DB $8b		;5956
	.DB $01		;5957
	.DB $8d		;5958
	.DB $79		;5959
	.DB $7a		;595a
	.DB $7b		;595b
	.DB $7d		;595c
	.DB $7b		;595d
	.DB $79		;595e
	.DB $00		;595f
	.DB $00		;5960
	.DB $80		;5961
	.DB $81		;5962
	.DB $82		;5963
	.DB $83		;5964
	.DB $84		;5965
	.DB $03		;5966
	.DB $85		;5967
	.DB $83		;5968
	.DB $83		;5969
	.DB $0e		;596a
	.DB $20		;596b
	.DB $03		;596c
	.DB $00		;596d
	.DB $82		;596e
	.DB $83		;596f
	.DB $84		;5970
	.DB $03		;5971
	.DB $85		;5972
	.DB $83		;5973
	.DB $83		;5974
	.DB $24		;5975
	.DB $20		;5976
	.DB $03		;5977
	.DB $00		;5978
	.DB $82		;5979
	.DB $79		;597a
	.DB $7a		;597b
	.DB $03		;597c
	.DB $7b		;597d
	.DB $84		;597e
	.DB $79		;597f
	.DB $4c		;5980
	.DB $4c		;5981
	.DB $59		;5982
	.DB $05		;5983
	.DB $4c		;5984
	.DB $81		;5985
	.DB $59		;5986
	.DB $04		;5987
	.DB $4c		;5988
	.DB $81		;5989
	.DB $59		;598a
	.DB $02		;598b
	.DB $4c		;598c
	.DB $03		;598d
	.DB $72		;598e
	.DB $81		;598f
	.DB $71		;5990
	.DB $02		;5991
	.DB $72		;5992
	.DB $10		;5993
	.DB $4c		;5994
	.DB $8b		;5995
	.DB $87		;5996
	.DB $00		;5997
	.DB $00		;5998
	.DB $6d		;5999
	.DB $1a		;599a
	.DB $0d		;599b
	.DB $10		;599c
	.DB $00		;599d
	.DB $11		;599e
	.DB $20		;599f
	.DB $1f		;59a0
	.DB $03		;59a1
	.DB $00		;59a2
	.DB $04		;59a3
	.DB $42		;59a4
	.DB $04		;59a5
	.DB $00		;59a6
	.DB $82		;59a7
	.DB $10		;59a8
	.DB $0e		;59a9
	.DB $04		;59aa
	.DB $00		;59ab
	.DB $04		;59ac
	.DB $42		;59ad
	.DB $04		;59ae
	.DB $00		;59af
	.DB $82		;59b0
	.DB $0c		;59b1
	.DB $17		;59b2
	.DB $04		;59b3
	.DB $00		;59b4
	.DB $04		;59b5
	.DB $42		;59b6
	.DB $03		;59b7
	.DB $00		;59b8
	.DB $81		;59b9
	.DB $10		;59ba
	.DB $03		;59bb
	.DB $00		;59bc
	.DB $83		;59bd
	.DB $42		;59be
	.DB $88		;59bf
	.DB $42		;59c0
	.DB $03		;59c1
	.DB $00		;59c2
	.DB $81		;59c3
	.DB $20		;59c4
	.DB $03		;59c5
	.DB $00		;59c6
	.DB $8f		;59c7
	.DB $42		;59c8
	.DB $88		;59c9
	.DB $42		;59ca
	.DB $00		;59cb
	.DB $6d		;59cc
	.DB $14		;59cd
	.DB $00		;59ce
	.DB $00		;59cf
	.DB $6d		;59d0
	.DB $42		;59d1
	.DB $42		;59d2
	.DB $41		;59d3
	.DB $42		;59d4
	.DB $42		;59d5
	.DB $43		;59d6
	.DB $0d		;59d7
	.DB $42		;59d8
	.DB $97		;59d9
	.DB $00		;59da
	.DB $02		;59db
	.DB $04		;59dc
	.DB $05		;59dd
	.DB $00		;59de
	.DB $00		;59df
	.DB $1b		;59e0
	.DB $0c		;59e1
	.DB $10		;59e2
	.DB $00		;59e3
	.DB $10		;59e4
	.DB $10		;59e5
	.DB $00		;59e6
	.DB $10		;59e7
	.DB $10		;59e8
	.DB $1f		;59e9
	.DB $2b		;59ea
	.DB $1e		;59eb
	.DB $10		;59ec
	.DB $0f		;59ed
	.DB $17		;59ee
	.DB $21		;59ef
	.DB $17		;59f0
	.DB $03		;59f1
	.DB $00		;59f2
	.DB $9d		;59f3
	.DB $0d		;59f4
	.DB $00		;59f5
	.DB $00		;59f6
	.DB $03		;59f7
	.DB $00		;59f8
	.DB $1a		;59f9
	.DB $1f		;59fa
	.DB $1a		;59fb
	.DB $00		;59fc
	.DB $10		;59fd
	.DB $10		;59fe
	.DB $04		;59ff
	.DB $00		;5a00
	.DB $17		;5a01
	.DB $24		;5a02
	.DB $1d		;5a03
l5a04h:
	.DB $1f		;5a04
	.DB $1b		;5a05
	.DB $0e		;5a06
	.DB $18		;5a07
	.DB $20		;5a08
	.DB $10		;5a09
	.DB $00		;5a0a
	.DB $10		;5a0b
	.DB $10		;5a0c
	.DB $00		;5a0d
	.DB $10		;5a0e
	.DB $10		;5a0f
	.DB $1f		;5a10
	.DB $08		;5a11
	.DB $00		;5a12
	.DB $00		;5a13
	.DB $05		;5a14
	.DB $01		;5a15
	.DB $81		;5a16
	.DB $03		;5a17
	.DB $0a		;5a18
	.DB $01		;5a19
	.DB $81		;5a1a
	.DB $03		;5a1b
	.DB $0a		;5a1c
	.DB $01		;5a1d
	.DB $81		;5a1e
	.DB $03		;5a1f
	.DB $05		;5a20
	.DB $01		;5a21
	.DB $05		;5a22
	.DB $05		;5a23
	.DB $81		;5a24
	.DB $07		;5a25
	.DB $08		;5a26
	.DB $01		;5a27
	.DB $81		;5a28
	.DB $03		;5a29
	.DB $20		;5a2a
	.DB $01		;5a2b
	.DB $81		;5a2c
	.DB $07		;5a2d
	.DB $3f		;5a2e
	.DB $01		;5a2f
	.DB $81		;5a30
	.DB $07		;5a31
	.DB $03		;5a32
	.DB $01		;5a33
	.DB $81		;5a34
	.DB $03		;5a35
	.DB $52		;5a36
	.DB $01		;5a37
	.DB $00		;5a38
	.DB $02		;5a39
	.DB $7a		;5a3a
	.DB $85		;5a3b
	.DB $7c		;5a3c
	.DB $7a		;5a3d
	.DB $7a		;5a3e
	.DB $7e		;5a3f
	.DB $00		;5a40
	.DB $03		;5a41
	.DB $7f		;5a42
	.DB $81		;5a43
	.DB $7e		;5a44
	.DB $05		;5a45
	.DB $84		;5a46
	.DB $82		;5a47
	.DB $86		;5a48
	.DB $1b		;5a49
	.DB $03		;5a4a
	.DB $7f		;5a4b
	.DB $81		;5a4c
	.DB $86		;5a4d
	.DB $05		;5a4e
	.DB $84		;5a4f
	.DB $82		;5a50
	.DB $7e		;5a51
	.DB $1a		;5a52
	.DB $03		;5a53
	.DB $7f		;5a54
	.DB $81		;5a55
	.DB $7e		;5a56
	.DB $05		;5a57
	.DB $7a		;5a58
	.DB $03		;5a59
	.DB $4c		;5a5a
	.DB $81		;5a5b
	.DB $59		;5a5c
	.DB $04		;5a5d
	.DB $4c		;5a5e
	.DB $81		;5a5f
	.DB $59		;5a60
	.DB $05		;5a61
	.DB $4c		;5a62
	.DB $81		;5a63
	.DB $59		;5a64
	.DB $02		;5a65
	.DB $4c		;5a66
	.DB $02		;5a67
	.DB $72		;5a68
	.DB $81		;5a69
	.DB $71		;5a6a
	.DB $02		;5a6b
	.DB $72		;5a6c
	.DB $11		;5a6d
	.DB $4c		;5a6e
	.DB $03		;5a6f
	.DB $00		;5a70
	.DB $c7		;5a71
	.DB $0f		;5a72
	.DB $20		;5a73
	.DB $17		;5a74
	.DB $00		;5a75
	.DB $00		;5a76
	.DB $0c		;5a77
	.DB $17		;5a78
	.DB $6d		;5a79
	.DB $00		;5a7a
	.DB $00		;5a7b
	.DB $6d		;5a7c
	.DB $42		;5a7d
	.DB $88		;5a7e
	.DB $42		;5a7f
	.DB $87		;5a80
	.DB $00		;5a81
	.DB $00		;5a82
	.DB $6d		;5a83
	.DB $0f		;5a84
	.DB $20		;5a85
	.DB $10		;5a86
	.DB $6d		;5a87
	.DB $00		;5a88
	.DB $00		;5a89
	.DB $6d		;5a8a
	.DB $42		;5a8b
	.DB $88		;5a8c
	.DB $42		;5a8d
	.DB $87		;5a8e
	.DB $00		;5a8f
	.DB $00		;5a90
	.DB $6d		;5a91
	.DB $11		;5a92
	.DB $20		;5a93
	.DB $1f		;5a94
	.DB $6d		;5a95
	.DB $00		;5a96
	.DB $00		;5a97
	.DB $6d		;5a98
	.DB $42		;5a99
	.DB $88		;5a9a
	.DB $42		;5a9b
	.DB $89		;5a9c
	.DB $00		;5a9d
	.DB $6d		;5a9e
	.DB $19		;5a9f
	.DB $1f		;5aa0
	.DB $6d		;5aa1
	.DB $00		;5aa2
	.DB $6d		;5aa3
	.DB $42		;5aa4
	.DB $42		;5aa5
	.DB $89		;5aa6
	.DB $00		;5aa7
	.DB $6d		;5aa8
	.DB $1a		;5aa9
	.DB $1f		;5aaa
	.DB $6d		;5aab
	.DB $00		;5aac
	.DB $6d		;5aad
	.DB $42		;5aae
	.DB $42		;5aaf
	.DB $89		;5ab0
	.DB $00		;5ab1
	.DB $00		;5ab2
	.DB $19		;5ab3
	.DB $6d		;5ab4
	.DB $00		;5ab5
	.DB $42		;5ab6
	.DB $88		;5ab7
	.DB $3c		;5ab8
	.DB $03		;5ab9
	.DB $42		;5aba
	.DB $84		;5abb
	.DB $44		;5abc
	.DB $42		;5abd
	.DB $42		;5abe
	.DB $45		;5abf
	.DB $0a		;5ac0
	.DB $42		;5ac1
	.DB $98		;5ac2
	.DB $01		;5ac3
	.DB $06		;5ac4
	.DB $01		;5ac5
	.DB $01		;5ac6
	.DB $0c		;5ac7
	.DB $00		;5ac8
	.DB $17		;5ac9
	.DB $24		;5aca
	.DB $1d		;5acb
	.DB $17		;5acc
	.DB $21		;5acd
	.DB $17		;5ace
	.DB $1e		;5acf
	.DB $17		;5ad0
	.DB $0e		;5ad1
	.DB $02		;5ad2
	.DB $00		;5ad3
	.DB $1b		;5ad4
	.DB $10		;5ad5
	.DB $00		;5ad6
	.DB $10		;5ad7
	.DB $10		;5ad8
	.DB $00		;5ad9
	.DB $0c		;5ada
	.DB $04		;5adb
	.DB $00		;5adc
	.DB $a3		;5add
	.DB $0e		;5ade
	.DB $2b		;5adf
	.DB $0e		;5ae0
	.DB $19		;5ae1
	.DB $1d		;5ae2
	.DB $17		;5ae3
	.DB $17		;5ae4
	.DB $21		;5ae5
	.DB $17		;5ae6
	.DB $2b		;5ae7
	.DB $1b		;5ae8
	.DB $0c		;5ae9
	.DB $10		;5aea
	.DB $00		;5aeb
	.DB $24		;5aec
	.DB $10		;5aed
	.DB $1a		;5aee
	.DB $1b		;5aef
	.DB $1f		;5af0
	.DB $1d		;5af1
	.DB $17		;5af2
	.DB $21		;5af3
	.DB $17		;5af4
	.DB $1e		;5af5
	.DB $17		;5af6
	.DB $0e		;5af7
	.DB $02		;5af8
	.DB $00		;5af9
	.DB $03		;5afa
	.DB $00		;5afb
	.DB $04		;5afc
	.DB $00		;5afd
	.DB $05		;5afe
	.DB $00		;5aff
	.DB $06		;5b00
	.DB $00		;5b01
	.DB $0a		;5b02
	.DB $01		;5b03
	.DB $81		;5b04
	.DB $03		;5b05
	.DB $0a		;5b06
	.DB $01		;5b07
	.DB $81		;5b08
	.DB $03		;5b09
	.DB $0a		;5b0a
	.DB $01		;5b0b
	.DB $81		;5b0c
	.DB $03		;5b0d
	.DB $05		;5b0e
	.DB $05		;5b0f
	.DB $03		;5b10
	.DB $01		;5b11
	.DB $81		;5b12
	.DB $03		;5b13
	.DB $0a		;5b14
	.DB $01		;5b15
	.DB $81		;5b16
	.DB $03		;5b17
	.DB $04		;5b18
	.DB $01		;5b19
	.DB $81		;5b1a
	.DB $03		;5b1b
	.DB $20		;5b1c
	.DB $01		;5b1d
	.DB $81		;5b1e
	.DB $03		;5b1f
	.DB $06		;5b20
	.DB $01		;5b21
	.DB $81		;5b22
	.DB $07		;5b23
	.DB $06		;5b24
	.DB $01		;5b25
	.DB $81		;5b26
	.DB $03		;5b27
	.DB $06		;5b28
	.DB $01		;5b29
	.DB $81		;5b2a
	.DB $07		;5b2b
	.DB $06		;5b2c
	.DB $01		;5b2d
	.DB $81		;5b2e
	.DB $03		;5b2f
	.DB $05		;5b30
	.DB $01		;5b31
	.DB $81		;5b32
	.DB $07		;5b33
	.DB $04		;5b34
	.DB $01		;5b35
	.DB $81		;5b36
	.DB $03		;5b37
	.DB $04		;5b38
	.DB $01		;5b39
	.DB $81		;5b3a
	.DB $07		;5b3b
	.DB $04		;5b3c
	.DB $01		;5b3d
	.DB $81		;5b3e
	.DB $03		;5b3f
	.DB $5b		;5b40
	.DB $01		;5b41
	.DB $00		;5b42
	.DB $09		;5b43
	.INCLUDE "tiles/font_fill.asm"
	.INCLUDE "tiles/copyright.asm"
	.INCLUDE "tiles/sega_logo.asm"
	.INCLUDE "tiles/font_fill_continued.asm"
	.DB $00		;5c9d
	.DB $08		;5c9e
	.DB $00		;5c9f
	.INCLUDE "tiles/font_stroke.asm"
	.DB $00		;5dd4
	.DB $7f		;5dd5
	.DB $00		;5dd6
	.DB $7f		;5dd7
	.DB $00		;5dd8
	.DB $6a		;5dd9
	.DB $00		;5dda
	.DB $00		;5ddb
	.DB $7f		;5ddc
	.DB $00		;5ddd
l5ddeh:
	.DB $7f		;5dde
	.DB $00		;5ddf
	.DB $6a		;5de0
	.DB $00		;5de1
	.DB $00		;5de2
l5de3h:
	.INCLUDE "tiles/racket.asm"
	.DB $30		;5e8b
	.DB $10		;5e8c
	.DB $38		;5e8d
	.DB $28		;5e8e
	.DB $39		;5e8f
	.DB $2b		;5e90
	.DB $3f		;5e91
	.DB $1f		;5e92
	.DB $0b		;5e93
	.DB $40		;5e94
	.DB $e0		;5e95
	.DB $a0		;5e96
	.DB $e3		;5e97
	.DB $a7		;5e98
	.DB $ef		;5e99
	.DB $6f		;5e9a
	.DB $27		;5e9b
	.DB $7c		;5e9c
	.DB $fe		;5e9d
	.DB $ff		;5e9e
	.DB $f0		;5e9f
	.DB $d4		;5ea0
	.DB $c0		;5ea1
	.DB $40		;5ea2
	.DB $60		;5ea3
	.DB $7c		;5ea4
	.DB $fe		;5ea5
	.DB $fe		;5ea6
	.DB $ff		;5ea7
	.DB $f4		;5ea8
	.DB $f4		;5ea9
	.DB $f0		;5eaa
	.DB $60		;5eab
	.DB $7c		;5eac
	.DB $fe		;5ead
	.DB $ff		;5eae
	.DB $fe		;5eaf
	.DB $fc		;5eb0
	.DB $fc		;5eb1
	.DB $f8		;5eb2
	.DB $78		;5eb3
	.DB $38		;5eb4
	.DB $7c		;5eb5
	.DB $05		;5eb6
	.DB $fe		;5eb7
	.DB $98		;5eb8
	.DB $7c		;5eb9
	.DB $3e		;5eba
	.DB $7f		;5ebb
	.DB $ff		;5ebc
	.DB $8f		;5ebd
	.DB $2b		;5ebe
	.DB $03		;5ebf
	.DB $03		;5ec0
	.DB $07		;5ec1
	.DB $3e		;5ec2
	.DB $7f		;5ec3
	.DB $7f		;5ec4
	.DB $ff		;5ec5
	.DB $2f		;5ec6
	.DB $2f		;5ec7
	.DB $0f		;5ec8
	.DB $06		;5ec9
	.DB $3e		;5eca
	.DB $7f		;5ecb
	.DB $ff		;5ecc
	.DB $7f		;5ecd
	.DB $3f		;5ece
	.DB $3f		;5ecf
	.DB $1f		;5ed0
	.DB $02		;5ed1
	.DB $1e		;5ed2
	.DB $06		;5ed3
	.DB $3f		;5ed4
	.DB $95		;5ed5
	.DB $1f		;5ed6
	.DB $1e		;5ed7
	.DB $7e		;5ed8
	.DB $7e		;5ed9
	.DB $f8		;5eda
	.DB $f0		;5edb
	.DB $f8		;5edc
	.DB $f1		;5edd
	.DB $7b		;5ede
	.DB $3c		;5edf
	.DB $7e		;5ee0
	.DB $78		;5ee1
	.DB $f0		;5ee2
	.DB $78		;5ee3
	.DB $30		;5ee4
	.DB $10		;5ee5
	.DB $3c		;5ee6
	.DB $30		;5ee7
	.DB $18		;5ee8
	.DB $10		;5ee9
	.DB $00		;5eea
	.DB $02		;5eeb
	.DB $0c		;5eec
	.DB $0c		;5eed
	.DB $00		;5eee
	.DB $81		;5eef
	.DB $30		;5ef0
	.DB $05		;5ef1
	.DB $00		;5ef2
	.DB $02		;5ef3
	.DB $02		;5ef4
	.DB $04		;5ef5
	.DB $00		;5ef6
	.DB $82		;5ef7
	.DB $20		;5ef8
	.DB $f0		;5ef9
	.DB $06		;5efa
	.DB $00		;5efb
	.DB $85		;5efc
	.DB $70		;5efd
	.DB $e0		;5efe
	.DB $04		;5eff
	.DB $06		;5f00
	.DB $02		;5f01
	.DB $05		;5f02
	.DB $00		;5f03
	.DB $83		;5f04
	.DB $20		;5f05
	.DB $60		;5f06
	.DB $40		;5f07
	.DB $06		;5f08
	.DB $00		;5f09
	.DB $83		;5f0a
	.DB $80		;5f0b
	.DB $c0		;5f0c
	.DB $40		;5f0d
	.DB $05		;5f0e
	.DB $00		;5f0f
	.DB $83		;5f10
	.DB $39		;5f11
	.DB $7f		;5f12
	.DB $3f		;5f13
	.DB $02		;5f14
	.DB $1f		;5f15
	.DB $02		;5f16
	.DB $7f		;5f17
	.DB $81		;5f18
	.DB $40		;5f19
	.DB $03		;5f1a
	.DB $60		;5f1b
	.DB $81		;5f1c
	.DB $40		;5f1d
	.DB $04		;5f1e
	.DB $00		;5f1f
	.DB $81		;5f20
	.DB $04		;5f21
	.DB $02		;5f22
	.DB $0f		;5f23
	.DB $04		;5f24
	.DB $1f		;5f25
	.DB $02		;5f26
	.DB $00		;5f27
	.DB $81		;5f28
	.DB $80		;5f29
	.DB $04		;5f2a
	.DB $c0		;5f2b
	.DB $02		;5f2c
	.DB $00		;5f2d
	.DB $82		;5f2e
	.DB $07		;5f2f
	.DB $1f		;5f30
	.DB $02		;5f31
	.DB $3f		;5f32
	.DB $03		;5f33
	.DB $1f		;5f34
	.DB $92		;5f35
	.DB $00		;5f36
	.DB $01		;5f37
	.DB $e1		;5f38
	.DB $e0		;5f39
	.DB $e0		;5f3a
	.DB $c0		;5f3b
	.DB $80		;5f3c
	.DB $80		;5f3d
	.DB $00		;5f3e
	.DB $01		;5f3f
	.DB $07		;5f40
	.DB $0f		;5f41
	.DB $1f		;5f42
	.DB $0f		;5f43
	.DB $07		;5f44
	.DB $07		;5f45
	.DB $00		;5f46
	.DB $f0		;5f47
	.DB $02		;5f48
	.DB $f8		;5f49
	.DB $02		;5f4a
	.DB $f0		;5f4b
	.DB $02		;5f4c
	.DB $e0		;5f4d
	.DB $87		;5f4e
	.DB $03		;5f4f
	.DB $27		;5f50
	.DB $7f		;5f51
	.DB $ff		;5f52
	.DB $ff		;5f53
	.DB $9e		;5f54
	.DB $0e		;5f55
	.DB $03		;5f56
	.DB $00		;5f57
	.DB $8a		;5f58
	.DB $2c		;5f59
	.DB $7e		;5f5a
	.DB $7e		;5f5b
	.DB $fe		;5f5c
	.DB $67		;5f5d
	.DB $47		;5f5e
	.DB $80		;5f5f
	.DB $01		;5f60
	.DB $03		;5f61
	.DB $0f		;5f62
	.DB $02		;5f63
	.DB $07		;5f64
	.DB $02		;5f65
	.DB $03		;5f66
	.DB $82		;5f67
	.DB $00		;5f68
	.DB $e0		;5f69
	.DB $06		;5f6a
	.DB $f0		;5f6b
	.DB $82		;5f6c
	.DB $00		;5f6d
	.DB $0f		;5f6e
	.DB $02		;5f6f
	.DB $1f		;5f70
	.DB $02		;5f71
	.DB $0f		;5f72
	.DB $02		;5f73
	.DB $07		;5f74
	.DB $83		;5f75
	.DB $00		;5f76
	.DB $c0		;5f77
	.DB $e0		;5f78
	.DB $03		;5f79
	.DB $f0		;5f7a
	.DB $02		;5f7b
	.DB $e0		;5f7c
	.DB $03		;5f7d
	.DB $00		;5f7e
	.DB $81		;5f7f
	.DB $07		;5f80
	.DB $03		;5f81
	.DB $0f		;5f82
	.DB $86		;5f83
	.DB $1f		;5f84
	.DB $00		;5f85
	.DB $01		;5f86
	.DB $07		;5f87
	.DB $07		;5f88
	.DB $03		;5f89
	.DB $03		;5f8a
	.DB $01		;5f8b
	.DB $82		;5f8c
	.DB $00		;5f8d
	.DB $e7		;5f8e
	.DB $02		;5f8f
	.DB $ff		;5f90
	.DB $02		;5f91
	.DB $fc		;5f92
	.DB $02		;5f93
	.DB $f8		;5f94
	.DB $09		;5f95
	.DB $00		;5f96
	.DB $83		;5f97
	.DB $02		;5f98
	.DB $0f		;5f99
	.DB $3f		;5f9a
	.DB $02		;5f9b
	.DB $0f		;5f9c
	.DB $02		;5f9d
	.DB $1f		;5f9e
	.DB $84		;5f9f
	.DB $00		;5fa0
	.DB $38		;5fa1
	.DB $f8		;5fa2
	.DB $f0		;5fa3
	.DB $02		;5fa4
	.DB $e0		;5fa5
	.DB $02		;5fa6
	.DB $c0		;5fa7
	.DB $02		;5fa8
	.DB $fc		;5fa9
	.DB $04		;5faa
	.DB $7c		;5fab
	.DB $84		;5fac
	.DB $fc		;5fad
	.DB $3c		;5fae
	.DB $f8		;5faf
	.DB $f0		;5fb0
	.DB $02		;5fb1
	.DB $e0		;5fb2
	.DB $02		;5fb3
	.DB $c0		;5fb4
	.DB $02		;5fb5
	.DB $80		;5fb6
	.DB $83		;5fb7
	.DB $03		;5fb8
	.DB $0f		;5fb9
	.DB $1f		;5fba
	.DB $03		;5fbb
	.DB $3f		;5fbc
	.DB $02		;5fbd
	.DB $1f		;5fbe
	.DB $82		;5fbf
	.DB $03		;5fc0
	.DB $1f		;5fc1
	.DB $02		;5fc2
	.DB $3f		;5fc3
	.DB $03		;5fc4
	.DB $1f		;5fc5
	.DB $83		;5fc6
	.DB $03		;5fc7
	.DB $f0		;5fc8
	.DB $fc		;5fc9
	.DB $02		;5fca
	.DB $fe		;5fcb
	.DB $02		;5fcc
	.DB $f8		;5fcd
	.DB $04		;5fce
	.DB $00		;5fcf
	.DB $82		;5fd0
	.DB $0e		;5fd1
	.DB $0f		;5fd2
	.DB $03		;5fd3
	.DB $07		;5fd4
	.DB $86		;5fd5
	.DB $03		;5fd6
	.DB $00		;5fd7
	.DB $38		;5fd8
	.DB $f0		;5fd9
	.DB $f0		;5fda
	.DB $f8		;5fdb
	.DB $03		;5fdc
	.DB $f0		;5fdd
	.DB $82		;5fde
	.DB $00		;5fdf
	.DB $03		;5fe0
	.DB $02		;5fe1
	.DB $0f		;5fe2
	.DB $02		;5fe3
	.DB $07		;5fe4
	.DB $02		;5fe5
	.DB $03		;5fe6
	.DB $83		;5fe7
	.DB $00		;5fe8
	.DB $04		;5fe9
	.DB $1f		;5fea
	.DB $03		;5feb
	.DB $07		;5fec
	.DB $84		;5fed
	.DB $0f		;5fee
	.DB $1f		;5fef
	.DB $00		;5ff0
	.DB $c0		;5ff1
	.DB $02		;5ff2
	.DB $e0		;5ff3
	.DB $02		;5ff4
	.DB $c0		;5ff5
	.DB $02		;5ff6
	.DB $80		;5ff7
	.DB $86		;5ff8
	.DB $00		;5ff9
	.DB $01		;5ffa
	.DB $03		;5ffb
	.DB $07		;5ffc
	.DB $07		;5ffd
	.DB $01		;5ffe
	.DB $03		;5fff
	.DB $00		;6000
	.DB $82		;6001
	.DB $38		;6002
	.DB $f8		;6003
	.DB $03		;6004
	.DB $f0		;6005
	.DB $87		;6006
	.DB $f8		;6007
	.DB $78		;6008
	.DB $00		;6009
	.DB $00		;600a
	.DB $3b		;600b
	.DB $7f		;600c
	.DB $1f		;600d
	.DB $03		;600e
	.DB $0f		;600f
	.DB $83		;6010
	.DB $80		;6011
	.DB $e0		;6012
	.DB $c0		;6013
	.DB $03		;6014
	.DB $e0		;6015
	.DB $02		;6016
	.DB $c0		;6017
	.DB $03		;6018
	.DB $00		;6019
	.DB $81		;601a
	.DB $f0		;601b
	.DB $03		;601c
	.DB $f8		;601d
	.DB $82		;601e
	.DB $fc		;601f
	.DB $1f		;6020
	.DB $02		;6021
	.DB $00		;6022
	.DB $02		;6023
	.DB $01		;6024
	.DB $82		;6025
	.DB $21		;6026
	.DB $1f		;6027
	.DB $05		;6028
	.DB $00		;6029
	.DB $82		;602a
	.DB $20		;602b
	.DB $c0		;602c
	.DB $03		;602d
	.DB $00		;602e
	.DB $89		;602f
	.DB $06		;6030
	.DB $00		;6031
	.DB $00		;6032
	.DB $e0		;6033
	.DB $60		;6034
	.DB $00		;6035
	.DB $00		;6036
	.DB $1f		;6037
	.DB $0e		;6038
	.DB $03		;6039
	.DB $00		;603a
	.DB $83		;603b
	.DB $01		;603c
	.DB $10		;603d
	.DB $0e		;603e
	.DB $03		;603f
	.DB $00		;6040
	.DB $83		;6041
	.DB $a4		;6042
	.DB $b3		;6043
	.DB $c8		;6044
	.DB $05		;6045
	.DB $00		;6046
	.DB $83		;6047
	.DB $40		;6048
	.DB $60		;6049
	.DB $30		;604a
	.DB $03		;604b
	.DB $00		;604c
	.DB $83		;604d
	.DB $08		;604e
	.DB $18		;604f
	.DB $10		;6050
	.DB $04		;6051
	.DB $00		;6052
	.DB $81		;6053
	.DB $0f		;6054
	.DB $04		;6055
	.DB $00		;6056
	.DB $8d		;6057
	.DB $10		;6058
	.DB $0f		;6059
	.DB $00		;605a
	.DB $c0		;605b
	.DB $00		;605c
	.DB $20		;605d
	.DB $40		;605e
	.DB $40		;605f
	.DB $80		;6060
	.DB $00		;6061
	.DB $00		;6062
	.DB $08		;6063
	.DB $10		;6064
	.DB $0a		;6065
	.DB $00		;6066
	.DB $81		;6067
	.DB $0f		;6068
	.DB $03		;6069
	.DB $00		;606a
	.DB $81		;606b
	.DB $40		;606c
	.DB $04		;606d
	.DB $00		;606e
	.DB $81		;606f
	.DB $80		;6070
	.DB $05		;6071
	.DB $00		;6072
	.DB $82		;6073
	.DB $10		;6074
	.DB $18		;6075
	.DB $03		;6076
	.DB $00		;6077
	.DB $81		;6078
	.DB $02		;6079
	.DB $02		;607a
	.DB $00		;607b
	.DB $03		;607c
	.DB $01		;607d
	.DB $02		;607e
	.DB $00		;607f
	.DB $82		;6080
	.DB $04		;6081
	.DB $d0		;6082
	.DB $03		;6083
	.DB $00		;6084
	.DB $85		;6085
	.DB $84		;6086
	.DB $78		;6087
	.DB $00		;6088
	.DB $08		;6089
	.DB $18		;608a
	.DB $09		;608b
	.DB $00		;608c
	.DB $87		;608d
	.DB $04		;608e
	.DB $0c		;608f
	.DB $08		;6090
	.DB $00		;6091
	.DB $00		;6092
	.DB $70		;6093
	.DB $e0		;6094
	.DB $04		;6095
	.DB $00		;6096
	.DB $8e		;6097
	.DB $88		;6098
	.DB $70		;6099
	.DB $00		;609a
	.DB $04		;609b
	.DB $00		;609c
	.DB $00		;609d
	.DB $60		;609e
	.DB $c5		;609f
	.DB $03		;60a0
	.DB $00		;60a1
	.DB $00		;60a2
	.DB $10		;60a3
	.DB $18		;60a4
	.DB $08		;60a5
	.DB $04		;60a6
	.DB $00		;60a7
	.DB $89		;60a8
	.DB $03		;60a9
	.DB $00		;60aa
	.DB $04		;60ab
	.DB $02		;60ac
	.DB $02		;60ad
	.DB $01		;60ae
	.DB $00		;60af
	.DB $00		;60b0
	.DB $f0		;60b1
	.DB $04		;60b2
	.DB $00		;60b3
	.DB $85		;60b4
	.DB $08		;60b5
	.DB $f0		;60b6
	.DB $00		;60b7
	.DB $10		;60b8
	.DB $08		;60b9
	.DB $09		;60ba
	.DB $00		;60bb
	.DB $86		;60bc
	.DB $04		;60bd
	.DB $0c		;60be
	.DB $18		;60bf
	.DB $00		;60c0
	.DB $00		;60c1
	.DB $02		;60c2
	.DB $04		;60c3
	.DB $00		;60c4
	.DB $81		;60c5
	.DB $01		;60c6
	.DB $06		;60c7
	.DB $00		;60c8
	.DB $81		;60c9
	.DB $f0		;60ca
	.DB $03		;60cb
	.DB $00		;60cc
	.DB $02		;60cd
	.DB $1f		;60ce
	.DB $81		;60cf
	.DB $01		;60d0
	.DB $03		;60d1
	.DB $00		;60d2
	.DB $82		;60d3
	.DB $3f		;60d4
	.DB $1e		;60d5
	.DB $03		;60d6
	.DB $80		;60d7
	.DB $03		;60d8
	.DB $00		;60d9
	.DB $83		;60da
	.DB $20		;60db
	.DB $c0		;60dc
	.DB $01		;60dd
	.DB $04		;60de
	.DB $00		;60df
	.DB $81		;60e0
	.DB $38		;60e1
	.DB $07		;60e2
	.DB $00		;60e3
	.DB $84		;60e4
	.DB $70		;60e5
	.DB $00		;60e6
	.DB $00		;60e7
	.DB $02		;60e8
	.DB $04		;60e9
	.DB $00		;60ea
	.DB $89		;60eb
	.DB $70		;60ec
	.DB $00		;60ed
	.DB $00		;60ee
	.DB $e0		;60ef
	.DB $00		;60f0
	.DB $00		;60f1
	.DB $14		;60f2
	.DB $18		;60f3
	.DB $e0		;60f4
	.DB $03		;60f5
	.DB $00		;60f6
	.DB $84		;60f7
	.DB $06		;60f8
	.DB $00		;60f9
	.DB $00		;60fa
	.DB $80		;60fb
	.DB $03		;60fc
	.DB $00		;60fd
	.DB $02		;60fe
	.DB $3f		;60ff
	.DB $89		;6100
	.DB $0e		;6101
	.DB $00		;6102
	.DB $01		;6103
	.DB $01		;6104
	.DB $43		;6105
	.DB $3c		;6106
	.DB $00		;6107
	.DB $40		;6108
	.DB $80		;6109
	.DB $03		;610a
	.DB $00		;610b
	.DB $81		;610c
	.DB $c0		;610d
	.DB $05		;610e
	.DB $00		;610f
	.DB $81		;6110
	.DB $38		;6111
	.DB $03		;6112
	.DB $00		;6113
	.DB $86		;6114
	.DB $02		;6115
	.DB $00		;6116
	.DB $00		;6117
	.DB $e0		;6118
	.DB $10		;6119
	.DB $08		;611a
	.DB $06		;611b
	.DB $00		;611c
	.DB $81		;611d
	.DB $18		;611e
	.DB $04		;611f
	.DB $00		;6120
	.DB $81		;6121
	.DB $60		;6122
	.DB $06		;6123
	.DB $00		;6124
	.DB $81		;6125
	.DB $04		;6126
	.DB $03		;6127
	.DB $00		;6128
	.DB $82		;6129
	.DB $38		;612a
	.DB $44		;612b
	.DB $05		;612c
	.DB $00		;612d
	.DB $02		;612e
	.DB $02		;612f
	.DB $07		;6130
	.DB $00		;6131
	.DB $81		;6132
	.DB $30		;6133
	.DB $06		;6134
	.DB $00		;6135
	.DB $83		;6136
	.DB $18		;6137
	.DB $2f		;6138
	.DB $10		;6139
	.DB $02		;613a
	.DB $00		;613b
	.DB $02		;613c
	.DB $10		;613d
	.DB $02		;613e
	.DB $00		;613f
	.DB $82		;6140
	.DB $18		;6141
	.DB $08		;6142
	.DB $03		;6143
	.DB $00		;6144
	.DB $8a		;6145
	.DB $c0		;6146
	.DB $f8		;6147
	.DB $80		;6148
	.DB $00		;6149
	.DB $40		;614a
	.DB $60		;614b
	.DB $20		;614c
	.DB $00		;614d
	.DB $30		;614e
	.DB $10		;614f
	.DB $05		;6150
	.DB $00		;6151
	.DB $81		;6152
	.DB $7c		;6153
	.DB $02		;6154
	.DB $00		;6155
	.DB $02		;6156
	.DB $04		;6157
	.DB $82		;6158
	.DB $87		;6159
	.DB $7c		;615a
	.DB $06		;615b
	.DB $00		;615c
	.DB $81		;615d
	.DB $60		;615e
	.DB $06		;615f
	.DB $00		;6160
	.DB $85		;6161
	.DB $40		;6162
	.DB $70		;6163
	.DB $00		;6164
	.DB $00		;6165
	.DB $7c		;6166
	.DB $02		;6167
	.DB $00		;6168
	.DB $02		;6169
	.DB $04		;616a
	.DB $82		;616b
	.DB $06		;616c
	.DB $7c		;616d
	.DB $03		;616e
	.DB $00		;616f
	.DB $87		;6170
	.DB $02		;6171
	.DB $00		;6172
	.DB $20		;6173
	.DB $18		;6174
	.DB $00		;6175
	.DB $00		;6176
	.DB $02		;6177
	.DB $02		;6178
	.DB $00		;6179
	.DB $03		;617a
	.DB $01		;617b
	.DB $04		;617c
	.DB $00		;617d
	.DB $81		;617e
	.DB $1c		;617f
	.DB $08		;6180
	.DB $00		;6181
	.DB $8c		;6182
	.DB $02		;6183
	.DB $06		;6184
	.DB $04		;6185
	.DB $00		;6186
	.DB $00		;6187
	.DB $81		;6188
	.DB $34		;6189
	.DB $00		;618a
	.DB $40		;618b
	.DB $40		;618c
	.DB $c0		;618d
	.DB $7e		;618e
	.DB $03		;618f
	.DB $00		;6190
	.DB $8d		;6191
	.DB $20		;6192
	.DB $00		;6193
	.DB $02		;6194
	.DB $0c		;6195
	.DB $00		;6196
	.DB $00		;6197
	.DB $07		;6198
	.DB $00		;6199
	.DB $00		;619a
	.DB $40		;619b
	.DB $c0		;619c
	.DB $88		;619d
	.DB $07		;619e
	.DB $05		;619f
	.DB $00		;61a0
	.DB $85		;61a1
	.DB $1c		;61a2
	.DB $0c		;61a3
	.DB $00		;61a4
	.DB $00		;61a5
	.DB $c0		;61a6
	.DB $02		;61a7
	.DB $00		;61a8
	.DB $02		;61a9
	.DB $48		;61aa
	.DB $84		;61ab
	.DB $70		;61ac
	.DB $c0		;61ad
	.DB $00		;61ae
	.DB $30		;61af
	.DB $0a		;61b0
	.DB $00		;61b1
	.DB $03		;61b2
	.DB $01		;61b3
	.DB $02		;61b4
	.DB $00		;61b5
	.DB $02		;61b6
	.DB $10		;61b7
	.DB $8a		;61b8
	.DB $12		;61b9
	.DB $00		;61ba
	.DB $00		;61bb
	.DB $08		;61bc
	.DB $f0		;61bd
	.DB $00		;61be
	.DB $03		;61bf
	.DB $00		;61c0
	.DB $00		;61c1
	.DB $04		;61c2
	.DB $02		;61c3
	.DB $02		;61c4
	.DB $02		;61c5
	.DB $00		;61c6
	.DB $02		;61c7
	.DB $fc		;61c8
	.DB $81		;61c9
	.DB $c0		;61ca
	.DB $03		;61cb
	.DB $00		;61cc
	.DB $82		;61cd
	.DB $7e		;61ce
	.DB $bc		;61cf
	.DB $05		;61d0
	.DB $00		;61d1
	.DB $84		;61d2
	.DB $0e		;61d3
	.DB $00		;61d4
	.DB $00		;61d5
	.DB $40		;61d6
	.DB $04		;61d7
	.DB $00		;61d8
	.DB $81		;61d9
	.DB $0e		;61da
	.DB $02		;61db
	.DB $00		;61dc
	.DB $03		;61dd
	.DB $01		;61de
	.DB $03		;61df
	.DB $00		;61e0
	.DB $83		;61e1
	.DB $04		;61e2
	.DB $03		;61e3
	.DB $80		;61e4
	.DB $04		;61e5
	.DB $00		;61e6
	.DB $9d		;61e7
	.DB $1c		;61e8
	.DB $00		;61e9
	.DB $00		;61ea
	.DB $7c		;61eb
	.DB $fe		;61ec
	.DB $ff		;61ed
	.DB $f0		;61ee
	.DB $d4		;61ef
	.DB $c0		;61f0
	.DB $40		;61f1
	.DB $60		;61f2
	.DB $7c		;61f3
	.DB $fe		;61f4
	.DB $fe		;61f5
	.DB $ff		;61f6
	.DB $f4		;61f7
	.DB $f4		;61f8
	.DB $f0		;61f9
	.DB $60		;61fa
	.DB $7c		;61fb
	.DB $fe		;61fc
	.DB $ff		;61fd
	.DB $fe		;61fe
	.DB $fc		;61ff
	.DB $fc		;6200
	.DB $f8		;6201
	.DB $78		;6202
	.DB $38		;6203
	.DB $7c		;6204
	.DB $05		;6205
	.DB $fe		;6206
	.DB $98		;6207
	.DB $7c		;6208
	.DB $3e		;6209
	.DB $7f		;620a
	.DB $ff		;620b
	.DB $8f		;620c
	.DB $2b		;620d
	.DB $03		;620e
	.DB $03		;620f
	.DB $07		;6210
	.DB $3e		;6211
	.DB $7f		;6212
	.DB $7f		;6213
	.DB $ff		;6214
	.DB $2f		;6215
	.DB $2f		;6216
	.DB $0f		;6217
	.DB $06		;6218
	.DB $3e		;6219
	.DB $7f		;621a
	.DB $ff		;621b
	.DB $7f		;621c
	.DB $3f		;621d
	.DB $3f		;621e
	.DB $1f		;621f
	.DB $02		;6220
	.DB $1e		;6221
	.DB $06		;6222
	.DB $3f		;6223
	.DB $94		;6224
	.DB $1f		;6225
	.DB $1e		;6226
	.DB $7e		;6227
	.DB $7e		;6228
	.DB $f8		;6229
	.DB $f0		;622a
	.DB $f8		;622b
	.DB $f1		;622c
	.DB $7b		;622d
	.DB $3c		;622e
	.DB $7e		;622f
	.DB $78		;6230
	.DB $f0		;6231
	.DB $78		;6232
	.DB $30		;6233
	.DB $10		;6234
	.DB $3c		;6235
	.DB $00		;6236
	.DB $00		;6237
	.DB $18		;6238
	.DB $04		;6239
	.DB $24		;623a
	.DB $81		;623b
	.DB $38		;623c
	.DB $03		;623d
	.DB $00		;623e
	.DB $81		;623f
	.DB $70		;6240
	.DB $03		;6241
	.DB $88		;6242
	.DB $88		;6243
	.DB $70		;6244
	.DB $18		;6245
	.DB $24		;6246
	.DB $44		;6247
	.DB $44		;6248
	.DB $48		;6249
	.DB $70		;624a
	.DB $80		;624b
	.DB $03		;624c
	.DB $00		;624d
	.DB $89		;624e
	.DB $0e		;624f
	.DB $11		;6250
	.DB $10		;6251
	.DB $10		;6252
	.DB $0f		;6253
	.DB $00		;6254
	.DB $00		;6255
	.DB $20		;6256
	.DB $1e		;6257
	.DB $03		;6258
	.DB $11		;6259
	.DB $89		;625a
	.DB $6e		;625b
	.DB $00		;625c
	.DB $60		;625d
	.DB $90		;625e
	.DB $88		;625f
	.DB $88		;6260
	.DB $48		;6261
	.DB $38		;6262
	.DB $04		;6263
	.DB $05		;6264
	.DB $00		;6265
	.DB $85		;6266
	.DB $34		;6267
	.DB $4b		;6268
	.DB $49		;6269
	.DB $48		;626a
	.DB $18		;626b
	.DB $04		;626c
	.DB $24		;626d
	.DB $85		;626e
	.DB $18		;626f
	.DB $10		;6270
	.DB $10		;6271
	.DB $18		;6272
	.DB $0e		;6273
	.DB $03		;6274
	.DB $09		;6275
	.DB $81		;6276
	.DB $06		;6277
	.DB $05		;6278
	.DB $00		;6279
	.DB $81		;627a
	.DB $10		;627b
	.DB $05		;627c
	.DB $28		;627d
	.DB $81		;627e
	.DB $18		;627f
	.DB $03		;6280
	.DB $08		;6281
	.DB $04		;6282
	.DB $00		;6283
	.DB $85		;6284
	.INCLUDE "tiles/face_hair_eyes.asm"
	.DB $03		;62d1
	.DB $20		;62d2
	.DB $08		;62d3
	.DB $00		;62d4
	.DB $81		;62d5
	.DB $0c		;62d6
	.DB $07		;62d7
	.DB $00		;62d8
	.DB $02		;62d9
	.DB $10		;62da
	.DB $04		;62db
	.DB $00		;62dc
	.DB $82		;62dd
	.DB $c0		;62de
	.DB $60		;62df
	.DB $08		;62e0
	.DB $00		;62e1
	.DB $81		;62e2
	.DB $0c		;62e3
	.DB $0a		;62e4
	.DB $00		;62e5
	.DB $81		;62e6
	.DB $60		;62e7
	.DB $07		;62e8
	.DB $00		;62e9
	.DB $82		;62ea
	.DB $60		;62eb
	.DB $80		;62ec
	.DB $03		;62ed
	.DB $00		;62ee
	.DB $81		;62ef
	.DB $06		;62f0
	.DB $04		;62f1
	.DB $00		;62f2
	.DB $81		;62f3
	.DB $80		;62f4
	.DB $05		;62f5
	.DB $00		;62f6
	.DB $81		;62f7
	.DB $30		;62f8
	.DB $07		;62f9
	.DB $00		;62fa
	.DB $81		;62fb
	.DB $0c		;62fc
	.DB $04		;62fd
	.DB $00		;62fe
	.DB $02		;62ff
	.DB $08		;6300
	.DB $06		;6301
	.DB $00		;6302
	.DB $81		;6303
	.DB $30		;6304
	.DB $0a		;6305
	.DB $00		;6306
	.DB $81		;6307
	.DB $06		;6308
	.DB $04		;6309
	.DB $00		;630a
	.DB $81		;630b
	.DB $30		;630c
	.DB $04		;630d
	.DB $00		;630e
	.DB $81		;630f
	.DB $1e		;6310
	.DB $05		;6311
	.DB $00		;6312
	.DB $81		;6313
	.DB $0c		;6314
	.DB $07		;6315
	.DB $00		;6316
	.DB $81		;6317
	.DB $60		;6318
	.DB $07		;6319
	.DB $00		;631a
	.DB $81		;631b
	.DB $66		;631c
	.DB $07		;631d
	.DB $00		;631e
	.DB $81		;631f
	.DB $06		;6320
	.DB $07		;6321
	.DB $00		;6322
	.DB $86		;6323
	.DB $60		;6324
	.DB $00		;6325
	.DB $30		;6326
	.DB $00		;6327
	.DB $00		;6328
	.DB $06		;6329
	.DB $09		;632a
	.DB $00		;632b
	.DB $81		;632c
	.DB $30		;632d
	.DB $02		;632e
	.DB $00		;632f
	.DB $02		;6330
	.DB $01		;6331
	.DB $82		;6332
	.DB $00		;6333
	.DB $01		;6334
	.DB $07		;6335
	.DB $00		;6336
	.DB $84		;6337
	.DB $60		;6338
	.DB $00		;6339
	.DB $02		;633a
	.DB $06		;633b
	.DB $04		;633c
	.DB $00		;633d
	.DB $84		;633e
	.DB $40		;633f
	.DB $80		;6340
	.DB $08		;6341
	.DB $10		;6342
	.DB $02		;6343
	.DB $00		;6344
	.DB $02		;6345
	.DB $01		;6346
	.DB $08		;6347
	.DB $00		;6348
	.DB $83		;6349
	.DB $40		;634a
	.DB $00		;634b
	.DB $06		;634c
	.DB $08		;634d
	.DB $00		;634e
	.DB $02		;634f
	.DB $80		;6350
	.DB $03		;6351
	.DB $00		;6352
	.DB $02		;6353
	.DB $20		;6354
	.DB $84		;6355
	.DB $00		;6356
	.DB $03		;6357
	.DB $00		;6358
	.DB $20		;6359
	.DB $0a		;635a
	.DB $00		;635b
	.DB $83		;635c
	.DB $06		;635d
	.DB $00		;635e
	.DB $60		;635f
	.DB $07		;6360
	.DB $00		;6361
	.DB $81		;6362
	.DB $03		;6363
	.DB $06		;6364
	.DB $00		;6365
	.DB $81		;6366
	.DB $08		;6367
	.DB $07		;6368
	.DB $00		;6369
	.DB $82		;636a
	.DB $30		;636b
	.DB $0c		;636c
	.DB $05		;636d
	.DB $00		;636e
	.DB $81		;636f
	.DB $10		;6370
	.DB $08		;6371
	.DB $00		;6372
	.DB $81		;6373
	.DB $c0		;6374
	.DB $06		;6375
	.DB $00		;6376
	.DB $82		;6377
	.DB $0c		;6378
	.DB $30		;6379
	.DB $07		;637a
	.DB $00		;637b
	.DB $03		;637c
	.DB $01		;637d
	.DB $05		;637e
	.DB $00		;637f
	.DB $02		;6380
	.DB $f8		;6381
	.DB $82		;6382
	.DB $18		;6383
	.DB $80		;6384
	.DB $04		;6385
	.DB $00		;6386
	.DB $82		;6387
	.DB $02		;6388
	.DB $07		;6389
	.DB $02		;638a
	.DB $3f		;638b
	.DB $06		;638c
	.DB $00		;638d
	.DB $02		;638e
	.DB $fc		;638f
	.DB $05		;6390
	.DB $00		;6391
	.DB $81		;6392
	.DB $04		;6393
	.DB $02		;6394
	.DB $07		;6395
	.DB $06		;6396
	.DB $00		;6397
	.DB $82		;6398
	.DB $e0		;6399
	.DB $80		;639a
	.DB $04		;639b
	.DB $00		;639c
	.DB $83		;639d
	.DB $06		;639e
	.DB $0f		;639f
	.DB $08		;63a0
	.DB $06		;63a1
	.DB $00		;63a2
	.DB $83		;63a3
	.DB $e0		;63a4
	.DB $c0		;63a5
	.DB $40		;63a6
	.DB $05		;63a7
	.DB $00		;63a8
	.DB $8b		;63a9
	.DB $0c		;63aa
	.DB $0f		;63ab
	.DB $07		;63ac
	.DB $00		;63ad
	.DB $00		;63ae
	.DB $08		;63af
	.DB $00		;63b0
	.DB $10		;63b1
	.DB $00		;63b2
	.DB $c0		;63b3
	.DB $80		;63b4
	.DB $06		;63b5
	.DB $00		;63b6
	.DB $82		;63b7
	.DB $80		;63b8
	.DB $fe		;63b9
	.DB $06		;63ba
	.DB $00		;63bb
	.DB $82		;63bc
	.DB $0f		;63bd
	.DB $03		;63be
	.DB $05		;63bf
	.DB $00		;63c0
	.DB $81		;63c1
	.DB $40		;63c2
	.DB $02		;63c3
	.DB $c0		;63c4
	.DB $02		;63c5
	.DB $00		;63c6
	.DB $03		;63c7
	.DB $01		;63c8
	.DB $84		;63c9
	.DB $00		;63ca
	.DB $0f		;63cb
	.DB $09		;63cc
	.DB $c0		;63cd
	.DB $02		;63ce
	.DB $80		;63cf
	.DB $02		;63d0
	.DB $00		;63d1
	.DB $81		;63d2
	.DB $20		;63d3
	.DB $02		;63d4
	.DB $f0		;63d5
	.DB $02		;63d6
	.DB $01		;63d7
	.DB $87		;63d8
	.DB $03		;63d9
	.DB $02		;63da
	.DB $02		;63db
	.DB $00		;63dc
	.DB $1f		;63dd
	.DB $1f		;63de
	.DB $80		;63df
	.DB $04		;63e0
	.DB $00		;63e1
	.DB $83		;63e2
	.DB $40		;63e3
	.DB $e0		;63e4
	.DB $80		;63e5
	.DB $05		;63e6
	.DB $00		;63e7
	.DB $02		;63e8
	.DB $f0		;63e9
	.DB $81		;63ea
	.DB $e0		;63eb
	.DB $06		;63ec
	.DB $00		;63ed
	.DB $81		;63ee
	.DB $03		;63ef
	.DB $03		;63f0
	.DB $00		;63f1
	.DB $02		;63f2
	.DB $02		;63f3
	.DB $82		;63f4
	.DB $00		;63f5
	.DB $10		;63f6
	.DB $02		;63f7
	.DB $f0		;63f8
	.DB $06		;63f9
	.DB $00		;63fa
	.DB $82		;63fb
	.DB $02		;63fc
	.DB $06		;63fd
	.DB $05		;63fe
	.DB $00		;63ff
	.DB $83		;6400
	.DB $8c		;6401
	.DB $fc		;6402
	.DB $38		;6403
	.DB $03		;6404
	.DB $00		;6405
	.DB $84		;6406
	.DB $10		;6407
	.DB $18		;6408
	.DB $1f		;6409
	.DB $01		;640a
	.DB $06		;640b
	.DB $00		;640c
	.DB $02		;640d
	.DB $80		;640e
	.DB $06		;640f
	.DB $00		;6410
	.DB $83		;6411
	.DB $18		;6412
	.DB $1f		;6413
	.DB $07		;6414
	.DB $05		;6415
	.DB $00		;6416
	.DB $83		;6417
	.DB $80		;6418
	.DB $fc		;6419
	.DB $0c		;641a
	.DB $06		;641b
	.DB $00		;641c
	.DB $81		;641d
	.DB $07		;641e
	.DB $07		;641f
	.DB $00		;6420
	.DB $02		;6421
	.DB $e0		;6422
	.DB $06		;6423
	.DB $00		;6424
	.DB $81		;6425
	.DB $01		;6426
	.DB $05		;6427
	.DB $00		;6428
	.DB $83		;6429
	.DB $38		;642a
	.DB $f8		;642b
	.DB $30		;642c
	.DB $05		;642d
	.DB $00		;642e
	.DB $84		;642f
	.DB $38		;6430
	.DB $f8		;6431
	.DB $f0		;6432
	.DB $30		;6433
	.DB $04		;6434
	.DB $00		;6435
	.DB $84		;6436
	.DB $06		;6437
	.DB $0f		;6438
	.DB $0c		;6439
	.DB $08		;643a
	.DB $05		;643b
	.DB $00		;643c
	.DB $82		;643d
	.DB $e0		;643e
	.DB $40		;643f
	.DB $06		;6440
	.DB $00		;6441
	.DB $02		;6442
	.DB $c0		;6443
	.DB $81		;6444
	.DB $00		;6445
	.DB $02		;6446
	.DB $fe		;6447
	.DB $05		;6448
	.DB $c0		;6449
	.DB $81		;644a
	.DB $00		;644b
	.DB $02		;644c
	.DB $7e		;644d
	.DB $05		;644e
	.DB $06		;644f
	.DB $02		;6450
	.DB $00		;6451
	.DB $04		;6452
	.DB $c0		;6453
	.DB $02		;6454
	.DB $fe		;6455
	.DB $02		;6456
	.DB $00		;6457
	.DB $04		;6458
	.DB $06		;6459
	.DB $02		;645a
	.DB $7e		;645b
	.DB $85		;645c
	.DB $00		;645d
	.DB $38		;645e
	.DB $5c		;645f
	.DB $6c		;6460
	.DB $0c		;6461
	.DB $04		;6462
	.DB $00		;6463
	.DB $02		;6464
	.DB $38		;6465
	.DB $02		;6466
	.DB $30		;6467
	.DB $04		;6468
	.DB $00		;6469
	.DB $84		;646a
	.DB $38		;646b
	.DB $74		;646c
	.DB $6c		;646d
	.DB $0c		;646e
	.DB $04		;646f
	.DB $00		;6470
	.DB $00		;6471
	.DB $86		;6472
	.DB $00		;6473
	.DB $20		;6474
	.DB $50		;6475
	.DB $20		;6476
	.DB $50		;6477
	.DB $20		;6478
	.DB $03		;6479
	.DB $00		;647a
	.DB $84		;647b
	.DB $28		;647c
	.DB $54		;647d
	.DB $28		;647e
	.DB $10		;647f
	.DB $04		;6480
	.DB $00		;6481
	.DB $8d		;6482
	.DB $28		;6483
	.DB $14		;6484
	; Face 1
	.DB $28		;6485
	.DB $14		;6486
	.DB $28		;6487
	.DB $10		;6488
	.DB $00		;6489
	.DB $00		;648a
	.DB $50		;648b
	.DB $28		;648c
	.DB $50		;648d
	.DB $28		;648e
	.DB $10		;648f
	.DB $03		;6490
	.DB $00		;6491
	.DB $9d		;6492
	.DB $88		;6493
	.DB $e4		;6494
	.DB $ca		;6495
	.DB $d4		;6496
	.DB $4a		;6497
	.DB $04		;6498
	.DB $60		;6499
	.DB $00		;649a
	.DB $00		;649b
	.DB $14		;649c
	.DB $2a		;649d
	.DB $14		;649e
	.DB $28		;649f
	.DB $10		;64a0
	.DB $00		;64a1
	.DB $00		;64a2
	.DB $10		;64a3
	.DB $28		;64a4
	.DB $14		;64a5
	.DB $28		;64a6
	.DB $14		;64a7
	.DB $08		;64a8
	.DB $00		;64a9
	.DB $00		;64aa
	.DB $0a		;64ab
	.DB $14		;64ac
	.DB $0a		;64ad
	.DB $14		;64ae
	.DB $08		;64af
	.DB $03		;64b0
	.DB $00		;64b1
	.DB $9c		;64b2
	.DB $02		;64b3
	.DB $00		;64b4
	.DB $c2		;64b5
	.DB $fc		;64b6
	.DB $f2		;64b7
	.DB $f0		;64b8
	.DB $f8		;64b9
	.DB $00		;64ba
	.DB $04		;64bb
	.DB $00		;64bc
	.DB $fc		;64bd
	.DB $e0		;64be
	.DB $f4		;64bf
	.DB $f0		;64c0
	.DB $f0		;64c1
	.DB $71		;64c2
	.DB $70		;64c3
	.DB $50		;64c4
	.DB $00		;64c5
	.DB $02		;64c6
	.DB $01		;64c7
	.DB $01		;64c8
	.DB $51		;64c9
	.DB $21		;64ca
	.DB $53		;64cb
	.DB $23		;64cc
	.DB $53		;64cd
	.DB $03		;64ce
	.DB $03		;64cf
	.DB $00		;64d0
	.DB $8d		;64d1
	.DB $04		;64d2
	.DB $0f		;64d3
	.DB $0f		;64d4
	.DB $07		;64d5
	.DB $01		;64d6
	.DB $01		;64d7
	.DB $00		;64d8
	.DB $10		;64d9
	.DB $20		;64da
	.DB $50		;64db
	.DB $20		;64dc
	.DB $50		;64dd
	.DB $20		;64de
	.DB $04		;64df
	.DB $00		;64e0
	.DB $87		;64e1
	.DB $04		;64e2
	.DB $0a		;64e3
	.DB $14		;64e4
	.DB $0a		;64e5
	.DB $14		;64e6
	.DB $08		;64e7
	.DB $00		;64e8
	.DB $02		;64e9
	.DB $e7		;64ea
	.DB $02		;64eb
	.DB $c0		;64ec
	.DB $a3		;64ed
	.DB $80		;64ee
	.DB $8a		;64ef
	.DB $14		;64f0
	.DB $00		;64f1
	.DB $00		;64f2
	.DB $03		;64f3
	.DB $07		;64f4
	.DB $0f		;64f5
	.DB $0f		;64f6
	.DB $03		;64f7
	.DB $00		;64f8
	.DB $28		;64f9
	.DB $50		;64fa
	.DB $28		;64fb
	.DB $50		;64fc
	.DB $07		;64fd
	.DB $03		;64fe
	.DB $03		;64ff
	.DB $01		;6500
	.DB $03		;6501
	.DB $01		;6502
	.DB $08		;6503
	.DB $11		;6504
	.DB $28		;6505
	.DB $10		;6506
	.DB $28		;6507
	.DB $10		;6508
	.DB $00		;6509
	.DB $00		;650a
	.DB $08		;650b
	.DB $14		;650c
	.DB $0a		;650d
	.DB $14		;650e
	.DB $0a		;650f
	.DB $04		;6510
	.DB $03		;6511
	.DB $00		;6512
	.DB $96		;6513
	.DB $08		;6514
	.DB $10		;6515
	.DB $28		;6516
	.DB $10		;6517
	.DB $20		;6518
	.DB $00		;6519
	.DB $00		;651a
	.DB $10		;651b
	.DB $00		;651c
	.DB $11		;651d
	.DB $03		;651e
	.DB $17		;651f
	.DB $07		;6520
	.DB $07		;6521
	.DB $00		;6522
	.DB $40		;6523
	.DB $00		;6524
	.DB $43		;6525
	.DB $07		;6526
	.DB $4f		;6527
	.DB $0f		;6528
	.DB $1f		;6529
	.DB $03		;652a
	.DB $00		;652b
	.DB $85		;652c
	.DB $0e		;652d
	.DB $2a		;652e
	.DB $3f		;652f
	.DB $3e		;6530
	.DB $1e		;6531
	.DB $04		;6532
	.DB $00		;6533
	.DB $02		;6534
	.DB $0a		;6535
	.DB $82		;6536
	.DB $0e		;6537
	.DB $1e		;6538
	.DB $04		;6539
	.DB $00		;653a
	.DB $02		;653b
	.DB $02		;653c
	.DB $82		;653d
	.DB $06		;653e
	.DB $04		;653f
	.DB $0b		;6540
	.DB $00		;6541
	.DB $85		;6542
	.DB $70		;6543
	.DB $54		;6544
	.DB $fc		;6545
	.DB $fc		;6546
	.DB $79		;6547
	.DB $04		;6548
	.DB $00		;6549
	.DB $02		;654a
	.DB $50		;654b
	.DB $82		;654c
	.DB $70		;654d
	.DB $78		;654e
	.DB $04		;654f
	.DB $00		;6550
	.DB $02		;6551
	.DB $40		;6552
	.DB $82		;6553
	.DB $60		;6554
	.DB $20		;6555
	.DB $08		;6556
	.DB $00		;6557
	.DB $02		;6558
	.DB $01		;6559
	.DB $92		;655a
	.DB $00		;655b
	.DB $06		;655c
	.DB $0e		;655d
	.DB $06		;655e
	.DB $0f		;655f
	.DB $07		;6560
	.DB $00		;6561
	.DB $00		;6562
	.DB $06		;6563
	.DB $0f		;6564
	.DB $87		;6565
	.DB $cf		;6566
	.DB $ff		;6567
	.DB $fe		;6568
	.DB $00		;6569
	.DB $00		;656a
	.DB $08		;656b
	.DB $1d		;656c
	.DB $02		;656d
	.DB $13		;656e
	.DB $02		;656f
	.DB $00		;6570
	.DB $82		;6571
	.DB $02		;6572
	.DB $06		;6573
	.DB $03		;6574
	.DB $0c		;6575
	.DB $03		;6576
	.DB $0e		;6577
	.DB $87		;6578
	.DB $00		;6579
	.DB $1c		;657a
	.DB $0c		;657b
	.DB $1e		;657c
	.DB $07		;657d
	.DB $03		;657e
	.DB $01		;657f
	.DB $03		;6580
	.DB $00		;6581
	.DB $02		;6582
	.DB $07		;6583
	.DB $84		;6584
	.DB $06		;6585
	.DB $0e		;6586
	.DB $3c		;6587
	.DB $fc		;6588
	.DB $06		;6589
	.DB $00		;658a
	.DB $82		;658b
	.DB $78		;658c
	.DB $fc		;658d
	.DB $03		;658e
	.DB $00		;658f
	.DB $02		;6590
	.DB $07		;6591
	.DB $81		;6592
	.DB $06		;6593
	.DB $02		;6594
	.DB $0e		;6595
	.DB $03		;6596
	.DB $00		;6597
	.DB $02		;6598
	.DB $e0		;6599
	.DB $81		;659a
	.DB $60		;659b
	.DB $02		;659c
	.DB $70		;659d
	.DB $02		;659e
	.DB $00		;659f
	.DB $84		;65a0
	.DB $20		;65a1
	.DB $30		;65a2
	.DB $74		;65a3
	.DB $10		;65a4
	.DB $03		;65a5
	.DB $00		;65a6
	.DB $82		;65a7
	.DB $3f		;65a8
	.DB $7f		;65a9
	.DB $03		;65aa
	.DB $ff		;65ab
	.DB $02		;65ac
	.DB $7f		;65ad
	.DB $8a		;65ae
	.DB $40		;65af
	.DB $60		;65b0
	.DB $60		;65b1
	.DB $70		;65b2
	.DB $78		;65b3
	.DB $3e		;65b4
	.DB $1e		;65b5
	.DB $08		;65b6
	.DB $00		;65b7
	.DB $04		;65b8
	.DB $02		;65b9
	.DB $0f		;65ba
	.DB $03		;65bb
	.DB $1f		;65bc
	.DB $81		;65bd
	.DB $1d		;65be
	.DB $02		;65bf
	.DB $00		;65c0
	.DB $02		;65c1
	.DB $c0		;65c2
	.DB $a0		;65c3
	.DB $f0		;65c4
	.DB $e0		;65c5
	.DB $c0		;65c6
	.DB $e0		;65c7
	.DB $00		;65c8
	.DB $07		;65c9
	.DB $1f		;65ca
	.DB $3f		;65cb
	.DB $7f		;65cc
	.DB $7f		;65cd
	.DB $3f		;65ce
	.DB $1f		;65cf
	.DB $00		;65d0
	.DB $86		;65d1
	.DB $fe		;65d2
	.DB $fe		;65d3
	.DB $f8		;65d4
	.DB $e0		;65d5
	.DB $80		;65d6
	.DB $80		;65d7
	.DB $00		;65d8
	.DB $01		;65d9
	.DB $07		;65da
	.DB $0f		;65db
	.DB $1f		;65dc
	.DB $3f		;65dd
	.DB $3f		;65de
	.DB $1f		;65df
	.DB $1c		;65e0
	.DB $fc		;65e1
	.DB $fc		;65e2
	.DB $f8		;65e3
	.DB $02		;65e4
	.DB $f0		;65e5
	.DB $02		;65e6
	.DB $e0		;65e7
	.DB $83		;65e8
	.DB $03		;65e9
	.DB $3f		;65ea
	.DB $7f		;65eb
	.DB $02		;65ec
	.DB $ff		;65ed
	.DB $02		;65ee
	.DB $fe		;65ef
	.DB $93		;65f0
	.DB $7e		;65f1
	.DB $00		;65f2
	.DB $00		;65f3
	.DB $3c		;65f4
	.DB $7e		;65f5
	.DB $7e		;65f6
	.DB $fe		;65f7
	.DB $ff		;65f8
	.DB $ff		;65f9
	.DB $00		;65fa
	.DB $c3		;65fb
	.DB $ff		;65fc
	.DB $6f		;65fd
	.DB $7f		;65fe
	.DB $3f		;65ff
l6600h:
	.DB $0f		;6600
	.DB $03		;6601
	.DB $00		;6602
	.DB $e0		;6603
	.DB $06		;6604
	.DB $f0		;6605
	.DB $84		;6606
	.DB $38		;6607
	.DB $3f		;6608
	.DB $3f		;6609
	.DB $1f		;660a
	.DB $02		;660b
	.DB $0f		;660c
	.DB $02		;660d
	.DB $07		;660e
	.DB $81		;660f
	.DB $20		;6610
	.DB $05		;6611
	.DB $f0		;6612
	.DB $02		;6613
	.DB $e0		;6614
	.DB $03		;6615
	.DB $00		;6616
	.DB $81		;6617
	.DB $07		;6618
	.DB $03		;6619
	.DB $0f		;661a
	.DB $8a		;661b
	.DB $1f		;661c
	.DB $00		;661d
	.DB $01		;661e
	.DB $07		;661f
	.DB $0f		;6620
	.DB $0f		;6621
	.DB $1d		;6622
	.DB $3d		;6623
	.DB $39		;6624
	.DB $00		;6625
	.DB $03		;6626
	.DB $ff		;6627
	.DB $02		;6628
	.DB $fc		;6629
	.DB $02		;662a
	.DB $f8		;662b
	.DB $85		;662c
	.DB $16		;662d
	.DB $1e		;662e
	.DB $fc		;662f
	.DB $f0		;6630
	.DB $c0		;6631
	.DB $04		;6632
	.DB $00		;6633
	.DB $83		;6634
	.DB $03		;6635
	.DB $0f		;6636
	.DB $bf		;6637
	.DB $03		;6638
	.DB $ff		;6639
	.DB $85		;663a
	.DB $1f		;663b
	.DB $0e		;663c
	.DB $fc		;663d
	.DB $fc		;663e
	.DB $f0		;663f
	.DB $02		;6640
	.DB $e0		;6641
	.DB $02		;6642
	.DB $c0		;6643
	.DB $82		;6644
	.DB $fc		;6645
	.DB $fe		;6646
	.DB $02		;6647
	.DB $7f		;6648
l6649h:
	.DB $02		;6649
	.DB $7c		;664a
	.DB $84		;664b
	.DB $fc		;664c
	.DB $3c		;664d
	.DB $f8		;664e
	.DB $f0		;664f
	.DB $02		;6650
	.DB $e0		;6651
	.DB $02		;6652
	.DB $c0		;6653
	.DB $02		;6654
	.DB $80		;6655
	.DB $85		;6656
	.DB $03		;6657
	.DB $0f		;6658
	.DB $1f		;6659
	.DB $3f		;665a
	.DB $7f		;665b
	.DB $03		;665c
	.DB $ff		;665d
	.DB $82		;665e
	.DB $03		;665f
	.DB $1f		;6660
	.DB $02		;6661
	.DB $3f		;6662
	.DB $02		;6663
	.DB $7f		;6664
	.DB $84		;6665
	.DB $1f		;6666
	.DB $03		;6667
	.DB $f0		;6668
	.DB $fc		;6669
	.DB $04		;666a
	.DB $fe		;666b
	.DB $86		;666c
	.DB $0c		;666d
	.DB $00		;666e
	.DB $c0		;666f
	.DB $f0		;6670
	.DB $fe		;6671
	.DB $3f		;6672
	.DB $03		;6673
	.DB $07		;6674
	.DB $93		;6675
	.DB $03		;6676
	.DB $00		;6677
	.DB $3e		;6678
	.DB $ff		;6679
	.DB $ff		;667a
	.DB $fb		;667b
	.DB $f3		;667c
	.DB $f7		;667d
	.DB $f3		;667e
	.DB $00		;667f
	.DB $03		;6680
	.DB $0f		;6681
	.DB $0f		;6682
	.DB $5f		;6683
	.DB $ff		;6684
	.DB $fb		;6685
	.DB $03		;6686
	.DB $00		;6687
	.DB $07		;6688
	.DB $02		;6689
	.DB $1f		;668a
	.DB $02		;668b
	.DB $3f		;668c
	.DB $8d		;668d
	.DB $7f		;668e
	.DB $ff		;668f
	.DB $00		;6690
	.DB $c0		;6691
	.DB $e0		;6692
	.DB $e0		;6693
	.DB $f0		;6694
	.DB $fc		;6695
	.DB $be		;6696
	.DB $8e		;6697
	.DB $00		;6698
	.DB $01		;6699
	.DB $03		;669a
	.DB $05		;669b
	.DB $07		;669c
	.DB $83		;669d
	.DB $00		;669e
	.DB $f8		;669f
	.DB $fc		;66a0
	.DB $05		;66a1
	.DB $fe		;66a2
	.DB $02		;66a3
	.DB $00		;66a4
	.DB $8e		;66a5
	.DB $3e		;66a6
	.DB $7d		;66a7
	.DB $7d		;66a8
	.DB $7b		;66a9
	.DB $3b		;66aa
	.DB $30		;66ab
	.DB $00		;66ac
	.DB $e0		;66ad
	.DB $38		;66ae
	.DB $dc		;66af
	.DB $dc		;66b0
	.DB $cf		;66b1
	.DB $87		;66b2
	.DB $46		;66b3
	.DB $03		;66b4
	.DB $00		;66b5
	.DB $81		;66b6
	.DB $f0		;66b7
	.DB $03		;66b8
	.DB $f8		;66b9
	.DB $82		;66ba
	.DB $fc		;66bb
	.DB $1f		;66bc
	.DB $04		;66bd
	.DB $00		;66be
	.DB $81		;66bf
	.DB $20		;66c0
	.DB $02		;66c1
	.DB $1e		;66c2
	.DB $04		;66c3
	.DB $00		;66c4
	.DB $86		;66c5
	.DB $20		;66c6
	.DB $60		;66c7
	.DB $e0		;66c8
	.DB $e0		;66c9
	.DB $f7		;66ca
	.DB $e6		;66cb
	.DB $03		;66cc
	.DB $e0		;66cd
	.DB $85		;66ce
	.DB $60		;66cf
	.DB $00		;66d0
	.DB $00		;66d1
	.DB $1e		;66d2
	.DB $0e		;66d3
	.DB $04		;66d4
	.DB $00		;66d5
	.DB $96		;66d6
	.DB $10		;66d7
	.DB $1e		;66d8
	.DB $f0		;66d9
	.DB $f0		;66da
	.DB $7c		;66db
	.DB $18		;66dc
	.DB $2c		;66dd
	.DB $f0		;66de
	.DB $f8		;66df
	.DB $38		;66e0
	.DB $1e		;66e1
	.DB $1c		;66e2
	.DB $3c		;66e3
	.DB $78		;66e4
	.DB $70		;66e5
	.DB $30		;66e6
	.DB $00		;66e7
	.DB $00		;66e8
	.DB $38		;66e9
	.DB $18		;66ea
	.DB $18		;66eb
	.DB $10		;66ec
	.DB $04		;66ed
	.DB $00		;66ee
	.DB $81		;66ef
	.DB $0f		;66f0
	.DB $04		;66f1
	.DB $00		;66f2
	.DB $8d		;66f3
	.DB $10		;66f4
	.DB $0f		;66f5
	.DB $0f		;66f6
	.DB $c0		;66f7
	.DB $00		;66f8
	.DB $20		;66f9
	.DB $20		;66fa
	.DB $30		;66fb
	.DB $78		;66fc
	.DB $38		;66fd
	.DB $18		;66fe
	.DB $18		;66ff
	.DB $10		;6700
	.DB $0a		;6701
	.DB $00		;6702
	.DB $81		;6703
	.DB $0f		;6704
l6705h:
	.DB $03		;6705
	.DB $07		;6706
	.DB $8d		;6707
	.DB $40		;6708
	.DB $20		;6709
	.DB $20		;670a
	.DB $30		;670b
	.DB $38		;670c
	.DB $b8		;670d
	.DB $18		;670e
	.DB $18		;670f
	.DB $0f		;6710
	.DB $0e		;6711
	.DB $1c		;6712
	.DB $1c		;6713
	.DB $18		;6714
	.DB $03		;6715
	.DB $00		;6716
	.DB $81		;6717
	.DB $03		;6718
	.DB $03		;6719
	.DB $00		;671a
	.DB $86		;671b
	.DB $04		;671c
	.DB $0f		;671d
	.DB $1e		;671e
	.DB $1c		;671f
	.DB $fa		;6720
	.DB $e8		;6721
	.DB $03		;6722
	.DB $00		;6723
	.DB $83		;6724
	.DB $04		;6725
	.DB $78		;6726
	.DB $38		;6727
	.DB $02		;6728
	.DB $18		;6729
	.DB $06		;672a
	.DB $00		;672b
	.DB $8a		;672c
	.DB $38		;672d
	.DB $3c		;672e
	.DB $1c		;672f
	.DB $1c		;6730
	.DB $0c		;6731
	.DB $08		;6732
	.DB $00		;6733
	.DB $00		;6734
	.DB $f0		;6735
	.DB $e0		;6736
	.DB $04		;6737
	.DB $00		;6738
	.DB $8e		;6739
	.DB $88		;673a
	.DB $f0		;673b
	.DB $10		;673c
	.DB $17		;673d
	.DB $1f		;673e
	.DB $3e		;673f
	.DB $18		;6740
	.DB $34		;6741
	.DB $0e		;6742
	.DB $1f		;6743
	.DB $1c		;6744
	.DB $18		;6745
	.DB $18		;6746
	.DB $08		;6747
	.DB $04		;6748
	.DB $00		;6749
	.DB $89		;674a
	.DB $03		;674b
	.DB $00		;674c
	.DB $04		;674d
	.DB $04		;674e
	.DB $0c		;674f
	.DB $1e		;6750
	.DB $1c		;6751
	.DB $18		;6752
	.DB $f0		;6753
	.DB $04		;6754
	.DB $00		;6755
	.DB $85		;6756
	.DB $08		;6757
	.DB $f0		;6758
	.DB $f0		;6759
	.DB $18		;675a
	.DB $08		;675b
	.DB $06		;675c
	.DB $00		;675d
	.DB $8e		;675e
	.DB $f0		;675f
	.DB $70		;6760
	.DB $78		;6761
	.DB $3c		;6762
	.DB $1c		;6763
	.DB $18		;6764
	.DB $00		;6765
	.DB $00		;6766
	.DB $02		;6767
	.DB $04		;6768
	.DB $04		;6769
	.DB $0c		;676a
	.DB $1c		;676b
	.DB $1d		;676c
	.DB $02		;676d
	.DB $18		;676e
	.DB $04		;676f
	.DB $00		;6770
	.DB $81		;6771
	.DB $f0		;6772
	.DB $03		;6773
	.DB $e0		;6774
	.DB $02		;6775
	.DB $1f		;6776
	.DB $81		;6777
	.DB $01		;6778
	.DB $03		;6779
	.DB $00		;677a
	.DB $85		;677b
	.DB $20		;677c
	.DB $1c		;677d
	.DB $f8		;677e
	.DB $b0		;677f
	.DB $80		;6780
	.DB $03		;6781
	.DB $00		;6782
	.DB $83		;6783
	.DB $20		;6784
	.DB $e0		;6785
	.DB $1d		;6786
	.DB $02		;6787
	.DB $1c		;6788
	.DB $03		;6789
	.DB $38		;678a
	.DB $02		;678b
	.DB $00		;678c
	.DB $82		;678d
	.DB $e0		;678e
	.DB $f0		;678f
	.DB $04		;6790
	.DB $70		;6791
	.DB $02		;6792
	.DB $00		;6793
	.DB $83		;6794
	.DB $3f		;6795
	.DB $38		;6796
	.DB $78		;6797
	.DB $03		;6798
	.DB $70		;6799
	.DB $02		;679a
	.DB $00		;679b
	.DB $88		;679c
	.DB $e0		;679d
	.DB $00		;679e
	.DB $00		;679f
	.DB $06		;67a0
	.DB $0f		;67a1
	.DB $ef		;67a2
	.DB $e7		;67a3
	.DB $e6		;67a4
	.DB $02		;67a5
	.DB $c6		;67a6
	.DB $03		;67a7
	.DB $80		;67a8
	.DB $03		;67a9
	.DB $00		;67aa
	.DB $02		;67ab
	.DB $3f		;67ac
	.DB $81		;67ad
	.DB $0e		;67ae
	.DB $03		;67af
	.DB $00		;67b0
	.DB $8f		;67b1
	.DB $42		;67b2
	.DB $3c		;67b3
	.DB $00		;67b4
	.DB $40		;67b5
	.DB $e0		;67b6
	.DB $f0		;67b7
	.DB $70		;67b8
	.DB $60		;67b9
	.DB $c0		;67ba
	.DB $00		;67bb
	.DB $1e		;67bc
	.DB $0e		;67bd
	.DB $0e		;67be
	.DB $1c		;67bf
	.DB $38		;67c0
	.DB $03		;67c1
	.DB $00		;67c2
	.DB $89		;67c3
	.DB $02		;67c4
	.DB $00		;67c5
	.DB $00		;67c6
	.DB $e1		;67c7
	.DB $73		;67c8
	.DB $7f		;67c9
	.DB $f7		;67ca
	.DB $e6		;67cb
	.DB $0e		;67cc
	.DB $02		;67cd
	.DB $1c		;67ce
	.DB $02		;67cf
	.DB $18		;67d0
	.DB $03		;67d1
	.DB $00		;67d2
	.DB $02		;67d3
	.DB $60		;67d4
	.DB $06		;67d5
	.DB $00		;67d6
	.DB $81		;67d7
	.DB $04		;67d8
	.DB $03		;67d9
	.DB $00		;67da
	.DB $82		;67db
	.DB $38		;67dc
	.DB $7c		;67dd
	.DB $02		;67de
	.DB $78		;67df
	.DB $03		;67e0
	.DB $00		;67e1
	.DB $02		;67e2
	.DB $03		;67e3
	.DB $03		;67e4
	.DB $00		;67e5
	.DB $85		;67e6
	.DB $f8		;67e7
	.DB $f0		;67e8
	.DB $60		;67e9
	.DB $10		;67ea
	.DB $30		;67eb
	.DB $07		;67ec
	.DB $00		;67ed
	.DB $87		;67ee
	.DB $2f		;67ef
	.DB $1f		;67f0
	.DB $0f		;67f1
	.DB $07		;67f2
	.DB $1f		;67f3
	.DB $1e		;67f4
	.DB $00		;67f5
	.DB $02		;67f6
	.DB $18		;67f7
	.DB $05		;67f8
	.DB $00		;67f9
	.DB $89		;67fa
	.DB $78		;67fb
	.DB $f8		;67fc
	.DB $b8		;67fd
	.DB $78		;67fe
	.DB $70		;67ff
l6800h:
	.DB $20		;6800
	.DB $30		;6801
	.DB $30		;6802
	.DB $10		;6803
	.DB $05		;6804
	.DB $00		;6805
	.DB $81		;6806
	.DB $7c		;6807
	.DB $04		;6808
	.DB $00		;6809
	.DB $84		;680a
	.DB $83		;680b
	.DB $7f		;680c
	.DB $73		;680d
	.DB $00		;680e
	.DB $02		;680f
	.DB $20		;6810
	.DB $03		;6811
	.DB $60		;6812
	.DB $02		;6813
	.DB $00		;6814
	.DB $84		;6815
	.DB $1c		;6816
	.DB $38		;6817
	.DB $38		;6818
	.DB $30		;6819
	.DB $02		;681a
	.DB $70		;681b
	.DB $02		;681c
	.DB $00		;681d
	.DB $81		;681e
	.DB $7c		;681f
	.DB $04		;6820
	.DB $00		;6821
	.DB $83		;6822
	.DB $02		;6823
	.DB $7e		;6824
	.DB $3e		;6825
	.DB $03		;6826
	.DB $1e		;6827
	.DB $02		;6828
	.DB $38		;6829
	.DB $84		;682a
	.DB $18		;682b
	.DB $00		;682c
	.DB $00		;682d
	.DB $03		;682e
	.DB $03		;682f
	.DB $00		;6830
	.DB $83		;6831
	.DB $04		;6832
	.DB $0f		;6833
	.DB $0e		;6834
	.DB $03		;6835
	.DB $0c		;6836
	.DB $81		;6837
	.DB $1c		;6838
	.DB $05		;6839
	.DB $00		;683a
	.DB $8a		;683b
	.DB $38		;683c
	.DB $1c		;683d
	.DB $1c		;683e
	.DB $0e		;683f
	.DB $06		;6840
	.DB $04		;6841
	.DB $00		;6842
	.DB $00		;6843
	.DB $fe		;6844
	.DB $3a		;6845
	.DB $03		;6846
	.DB $00		;6847
	.DB $82		;6848
	.DB $80		;6849
	.DB $7e		;684a
	.DB $04		;684b
	.DB $3c		;684c
	.DB $02		;684d
	.DB $0e		;684e
	.DB $8c		;684f
	.DB $0c		;6850
	.DB $00		;6851
	.DB $00		;6852
	.DB $7f		;6853
	.DB $70		;6854
	.DB $e0		;6855
	.DB $a0		;6856
	.DB $00		;6857
	.DB $08		;6858
	.DB $07		;6859
	.DB $07		;685a
	.DB $1e		;685b
	.DB $04		;685c
	.DB $1c		;685d
	.DB $8c		;685e
	.DB $0c		;685f
	.DB $00		;6860
	.DB $00		;6861
	.DB $c0		;6862
	.DB $00		;6863
	.DB $00		;6864
	.DB $08		;6865
	.DB $0c		;6866
	.DB $1e		;6867
	.DB $9e		;6868
	.DB $8c		;6869
	.DB $30		;686a
	.DB $07		;686b
	.DB $00		;686c
	.DB $9b		;686d
	.DB $03		;686e
	.DB $01		;686f
	.DB $00		;6870
	.DB $00		;6871
	.DB $1c		;6872
	.DB $1e		;6873
	.DB $1c		;6874
	.DB $18		;6875
	.DB $fc		;6876
	.DB $fc		;6877
	.DB $6c		;6878
	.DB $00		;6879
	.DB $00		;687a
	.DB $08		;687b
	.DB $f8		;687c
	.DB $38		;687d
	.DB $03		;687e
	.DB $00		;687f
	.DB $00		;6880
	.DB $04		;6881
	.DB $0c		;6882
	.DB $1c		;6883
	.DB $1c		;6884
	.DB $18		;6885
	.DB $fc		;6886
	.DB $fc		;6887
	.DB $c0		;6888
	.DB $03		;6889
	.DB $00		;688a
	.DB $84		;688b
	.DB $02		;688c
	.DB $9c		;688d
	.DB $07		;688e
	.DB $0f		;688f
	.DB $04		;6890
	.DB $0e		;6891
	.DB $02		;6892
	.DB $00		;6893
	.DB $83		;6894
	.DB $fc		;6895
	.DB $1c		;6896
	.DB $1e		;6897
	.DB $03		;6898
	.DB $0e		;6899
	.DB $02		;689a
	.DB $00		;689b
	.DB $83		;689c
	.DB $1f		;689d
	.DB $0d		;689e
	.DB $01		;689f
	.DB $03		;68a0
	.DB $00		;68a1
	.DB $83		;68a2
	.DB $04		;68a3
	.DB $07		;68a4
	.DB $b8		;68a5
	.DB $02		;68a6
	.DB $38		;68a7
	.DB $03		;68a8
	.DB $1c		;68a9
	.DB $02		;68aa
	.DB $00		;68ab
	.DB $8c		;68ac
	.DB $7c		;68ad
	.DB $fe		;68ae
	.DB $ff		;68af
	.DB $fe		;68b0
	.DB $fa		;68b1
	.DB $ff		;68b2
	.DB $7e		;68b3
	.DB $7e		;68b4
	.DB $7c		;68b5
	.DB $fe		;68b6
	.DB $fe		;68b7
	.DB $ff		;68b8
	.DB $03		;68b9
	.DB $fe		;68ba
	.DB $84		;68bb
	.DB $7e		;68bc
	.DB $7c		;68bd
	.DB $fe		;68be
	.DB $ff		;68bf
	.DB $04		;68c0
	.DB $fe		;68c1
	.DB $83		;68c2
	.DB $7c		;68c3
	.DB $38		;68c4
	.DB $7c		;68c5
	.DB $05		;68c6
	.DB $fe		;68c7
	.DB $8d		;68c8
	.DB $7c		;68c9
	.DB $3e		;68ca
	.DB $7f		;68cb
	.DB $ff		;68cc
	.DB $ff		;68cd
	.DB $5f		;68ce
	.DB $ff		;68cf
	.DB $ff		;68d0
	.DB $7f		;68d1
	.DB $3e		;68d2
	.DB $7f		;68d3
	.DB $7f		;68d4
	.DB $ff		;68d5
	.DB $03		;68d6
	.DB $7f		;68d7
	.DB $84		;68d8
	.DB $7e		;68d9
	.DB $3e		;68da
	.DB $7f		;68db
	.DB $ff		;68dc
	.DB $04		;68dd
	.DB $7f		;68de
	.DB $82		;68df
	.DB $3e		;68e0
	.DB $1e		;68e1
	.DB $06		;68e2
	.DB $3f		;68e3
	.DB $02		;68e4
	.DB $1f		;68e5
	.DB $82		;68e6
	.DB $7f		;68e7
	.DB $7e		;68e8
	.DB $03		;68e9
	.DB $fe		;68ea
	.DB $83		;68eb
	.DB $ff		;68ec
	.DB $7f		;68ed
	.DB $3c		;68ee
	.DB $02		;68ef
	.DB $7e		;68f0
	.DB $04		;68f1
	.DB $ff		;68f2
	.DB $81		;68f3
	.DB $fe		;68f4
	.DB $03		;68f5
	.DB $00		;68f6
	.DB $84		;68f7
	.DB $08		;68f8
	.DB $10		;68f9
	.DB $08		;68fa
	.DB $10		;68fb
	.DB $05		;68fc
	.DB $00		;68fd
	.DB $89		;68fe
	.DB $20		;68ff
	.DB $50		;6900
	.DB $20		;6901
	.DB $00		;6902
	.DB $00		;6903
	.DB $08		;6904
	.DB $10		;6905
	.DB $28		;6906
	.DB $10		;6907
	.DB $06		;6908
	.DB $00		;6909
	.DB $83		;690a
	.DB $04		;690b
	.DB $0a		;690c
	.DB $05		;690d
	.DB $05		;690e
	.DB $00		;690f
	.DB $9a		;6910
	.DB $c4		;6911
	.DB $ea		;6912
	.DB $64		;6913
	.DB $10		;6914
	.DB $70		;6915
	.DB $00		;6916
	.DB $40		;6917
	.DB $20		;6918
	.DB $50		;6919
	.DB $20		;691a
	.DB $00		;691b
	.DB $02		;691c
	.DB $06		;691d
	.DB $73		;691e
	.DB $3f		;691f
	.DB $0f		;6920
	.DB $07		;6921
	.DB $03		;6922
	.DB $20		;6923
	.DB $12		;6924
	.DB $23		;6925
	.DB $00		;6926
	.DB $08		;6927
	.DB $10		;6928
	.DB $08		;6929
	.DB $10		;692a
	.DB $03		;692b
	.DB $00		;692c
	.DB $02		;692d
	.DB $80		;692e
	.DB $86		;692f
	.DB $84		;6930
	.DB $02		;6931
	.DB $04		;6932
	.DB $00		;6933
	.DB $00		;6934
	.DB $80		;6935
	.DB $04		;6936
	.DB $00		;6937
	.DB $85		;6938
	.DB $10		;6939
	.DB $00		;693a
	.DB $10		;693b
	.DB $00		;693c
	.DB $10		;693d
	.DB $03		;693e
	.DB $00		;693f
	.DB $84		;6940
	.DB $04		;6941
	.DB $0c		;6942
	.DB $0e		;6943
	.DB $07		;6944
	.DB $03		;6945
	.DB $00		;6946
	.DB $85		;6947
	.DB $78		;6948
	.DB $28		;6949
	.DB $7c		;694a
	.DB $7c		;694b
	.DB $3e		;694c
	.DB $03		;694d
	.DB $00		;694e
	.DB $85		;694f
	.DB $7c		;6950
	.DB $54		;6951
	.DB $fc		;6952
	.DB $7c		;6953
	.DB $7b		;6954
	.DB $03		;6955
	.DB $00		;6956
	.DB $85		;6957
	.DB $3c		;6958
	.DB $28		;6959
	.DB $7c		;695a
	.DB $7c		;695b
	.DB $f8		;695c
	.DB $03		;695d
	.DB $00		;695e
	.DB $85		;695f
	.DB $7c		;6960
	.DB $54		;6961
	.DB $7e		;6962
	.DB $7c		;6963
	.DB $bc		;6964
	.DB $03		;6965
	.DB $00		;6966
	.DB $83		;6967
	.DB $7c		;6968
	.DB $54		;6969
	.DB $7e		;696a
	.DB $02		;696b
	.DB $7c		;696c
	.DB $02		;696d
	.DB $00		;696e
	.DB $86		;696f
	.DB $78		;6970
	.DB $28		;6971
	.DB $7c		;6972
	.DB $7c		;6973
	.DB $3c		;6974
	.DB $3e		;6975
	.DB $02		;6976
	.DB $00		;6977
	.DB $02		;6978
	.DB $80		;6979
	.DB $02		;697a
	.DB $c0		;697b
	.DB $92		;697c
	.DB $80		;697d
	.DB $d8		;697e
	.DB $03		;697f
	.DB $11		;6980
	.DB $2c		;6981
	.DB $3a		;6982
	.DB $3e		;6983
	.DB $3e		;6984
	.DB $5c		;6985
	.DB $fe		;6986
	.DB $00		;6987
	.DB $00		;6988
	.DB $c0		;6989
	.DB $60		;698a
	.DB $d0		;698b
	.DB $f0		;698c
	.DB $e0		;698d
	.DB $c0		;698e
	.DB $03		;698f
	.DB $00		;6990
	.DB $85		;6991
	.DB $38		;6992
	.DB $2c		;6993
	.DB $78		;6994
	.DB $7c		;6995
	.DB $f8		;6996
	.DB $03		;6997
	.DB $00		;6998
	.DB $03		;6999
	.DB $30		;699a
	.DB $87		;699b
	.DB $18		;699c
	.DB $1c		;699d
	.DB $0f		;699e
	.DB $0c		;699f
	.DB $0c		;69a0
	.DB $00		;69a1
	.DB $1c		;69a2
	.DB $03		;69a3
	.DB $00		;69a4
	.DB $8d		;69a5
	.DB $f0		;69a6
	.DB $e0		;69a7
	.DB $f0		;69a8
	.DB $68		;69a9
	.DB $28		;69aa
	.DB $18		;69ab
	.DB $30		;69ac
	.DB $00		;69ad
	.DB $01		;69ae
	.DB $03		;69af
	.DB $17		;69b0
	.DB $3f		;69b1
	.DB $3c		;69b2
	.DB $03		;69b3
	.DB $00		;69b4
	.DB $85		;69b5
	.DB $07		;69b6
	.DB $0e		;69b7
	.DB $0c		;69b8
	.DB $00		;69b9
	.DB $1c		;69ba
	.DB $03		;69bb
	.DB $00		;69bc
	.DB $03		;69bd
	.DB $e0		;69be
	.DB $85		;69bf
	.DB $c0		;69c0
	.DB $60		;69c1
	.DB $60		;69c2
	.DB $10		;69c3
	.DB $f0		;69c4
	.DB $02		;69c5
	.DB $03		;69c6
	.DB $02		;69c7
	.DB $07		;69c8
	.DB $89		;69c9
	.DB $0e		;69ca
	.DB $3c		;69cb
	.DB $18		;69cc
	.DB $01		;69cd
	.DB $03		;69ce
	.DB $07		;69cf
	.DB $06		;69d0
	.DB $08		;69d1
	.DB $0e		;69d2
	.DB $03		;69d3
	.DB $00		;69d4
	.DB $82		;69d5
	.DB $78		;69d6
	.DB $38		;69d7
	.DB $04		;69d8
	.DB $30		;69d9
	.DB $97		;69da
	.DB $00		;69db
	.DB $78		;69dc
	.DB $7e		;69dd
	.DB $6e		;69de
	.DB $66		;69df
	.DB $ee		;69e0
	.DB $ec		;69e1
	.DB $cc		;69e2
	.DB $10		;69e3
	.DB $0e		;69e4
	.DB $0f		;69e5
	.DB $07		;69e6
	.DB $0f		;69e7
	.DB $16		;69e8
	.DB $14		;69e9
	.DB $18		;69ea
	.DB $0c		;69eb
	.DB $00		;69ec
	.DB $f0		;69ed
	.DB $30		;69ee
	.DB $30		;69ef
	.DB $00		;69f0
	.DB $38		;69f1
	.DB $03		;69f2
	.DB $00		;69f3
	.DB $03		;69f4
	.DB $07		;69f5
	.DB $8a		;69f6
	.DB $03		;69f7
	.DB $06		;69f8
	.DB $06		;69f9
	.DB $08		;69fa
	.DB $0f		;69fb
	.DB $e0		;69fc
	.DB $70		;69fd
	.DB $30		;69fe
	.DB $00		;69ff
	.DB $38		;6a00
	.DB $03		;6a01
	.DB $00		;6a02
	.DB $82		;6a03
	.DB $01		;6a04
	.DB $1e		;6a05
	.DB $04		;6a06
	.DB $0c		;6a07
	.DB $a7		;6a08
	.DB $00		;6a09
	.DB $1e		;6a0a
	.DB $fc		;6a0b
	.DB $ec		;6a0c
	.DB $cc		;6a0d
	.DB $ee		;6a0e
	.DB $6e		;6a0f
	.DB $66		;6a10
	.DB $10		;6a11
	.DB $e0		;6a12
	.DB $ff		;6a13
	.DB $67		;6a14
	.DB $e7		;6a15
	.DB $e3		;6a16
	.DB $e3		;6a17
	.DB $67		;6a18
	.DB $00		;6a19
	.DB $e7		;6a1a
	.DB $1e		;6a1b
	.DB $0e		;6a1c
	.DB $0c		;6a1d
	.DB $0c		;6a1e
	.DB $0e		;6a1f
	.DB $06		;6a20
	.DB $00		;6a21
	.DB $0e		;6a22
	.DB $e0		;6a23
	.DB $e0		;6a24
	.DB $f0		;6a25
	.DB $70		;6a26
	.DB $60		;6a27
	.DB $60		;6a28
	.DB $00		;6a29
	.DB $70		;6a2a
	.DB $07		;6a2b
	.DB $06		;6a2c
	.DB $06		;6a2d
	.DB $00		;6a2e
	.DB $0e		;6a2f
	.DB $03		;6a30
	.DB $00		;6a31
	.DB $81		;6a32
	.DB $f0		;6a33
	.DB $02		;6a34
	.DB $70		;6a35
	.DB $02		;6a36
	.DB $30		;6a37
	.DB $9b		;6a38
	.DB $00		;6a39
	.DB $30		;6a3a
	.DB $70		;6a3b
	.DB $00		;6a3c
	.DB $60		;6a3d
	.DB $39		;6a3e
	.DB $12		;6a3f
	.DB $1b		;6a40
	.DB $1b		;6a41
	.DB $1d		;6a42
	.DB $0f		;6a43
	.DB $7f		;6a44
	.DB $77		;6a45
	.DB $6e		;6a46
	.DB $0e		;6a47
	.DB $e6		;6a48
	.DB $04		;6a49
	.DB $01		;6a4a
	.DB $0f		;6a4b
	.DB $dc		;6a4c
	.DB $d8		;6a4d
	.DB $d8		;6a4e
	.DB $98		;6a4f
	.DB $58		;6a50
	.DB $d4		;6a51
	.DB $8c		;6a52
	.DB $38		;6a53
	.DB $03		;6a54
	.DB $18		;6a55
	.DB $02		;6a56
	.DB $0d		;6a57
	.DB $03		;6a58
	.DB $0f		;6a59
	.DB $88		;6a5a
	.DB $6e		;6a5b
	.DB $ee		;6a5c
	.DB $e6		;6a5d
	.DB $86		;6a5e
	.DB $c6		;6a5f
	.DB $08		;6a60
	.DB $06		;6a61
	.DB $03		;6a62
	.DB $02		;6a63
	.DB $c0		;6a64
	.DB $02		;6a65
	.DB $e0		;6a66
	.DB $90		;6a67
	.DB $f0		;6a68
	.DB $b0		;6a69
	.DB $38		;6a6a
	.DB $18		;6a6b
	.DB $1f		;6a6c
	.DB $1d		;6a6d
	.DB $1b		;6a6e
	.DB $5b		;6a6f
	.DB $5b		;6a70
	.DB $63		;6a71
	.DB $60		;6a72
	.DB $03		;6a73
	.DB $00		;6a74
	.DB $c0		;6a75
	.DB $c0		;6a76
	.DB $80		;6a77
	.DB $04		;6a78
	.DB $00		;6a79
	.DB $88		;6a7a
	.DB $ee		;6a7b
	.DB $e6		;6a7c
	.DB $66		;6a7d
	.DB $60		;6a7e
	.DB $66		;6a7f
	.DB $00		;6a80
	.DB $60		;6a81
	.DB $e0		;6a82
	.DB $02		;6a83
	.DB $01		;6a84
	.DB $03		;6a85
	.DB $03		;6a86
	.DB $9c		;6a87
	.DB $0c		;6a88
	.DB $0f		;6a89
	.DB $03		;6a8a
	.DB $e0		;6a8b
	.DB $d0		;6a8c
	.DB $b0		;6a8d
	.DB $3c		;6a8e
	.DB $34		;6a8f
	.DB $0c		;6a90
	.DB $18		;6a91
	.DB $00		;6a92
	.DB $1e		;6a93
	.DB $3c		;6a94
	.DB $38		;6a95
	.DB $3c		;6a96
	.DB $0c		;6a97
	.DB $72		;6a98
	.DB $0e		;6a99
	.DB $1c		;6a9a
	.DB $0b		;6a9b
	.DB $0d		;6a9c
	.DB $3c		;6a9d
	.DB $2c		;6a9e
	.DB $30		;6a9f
	.DB $18		;6aa0
	.DB $00		;6aa1
	.DB $00		;6aa2
	.DB $80		;6aa3
	.DB $03		;6aa4
	.DB $c0		;6aa5
	.DB $95		;6aa6
	.DB $30		;6aa7
	.DB $f0		;6aa8
	.DB $c0		;6aa9
	.DB $00		;6aaa
	.DB $3c		;6aab
	.DB $1c		;6aac
	.DB $3c		;6aad
	.DB $30		;6aae
	.DB $4e		;6aaf
	.DB $70		;6ab0
	.DB $38		;6ab1
	.DB $00		;6ab2
	.DB $0f		;6ab3
	.DB $03		;6ab4
	.DB $03		;6ab5
	.DB $0f		;6ab6
	.DB $0c		;6ab7
	.DB $00		;6ab8
	.DB $02		;6ab9
	.DB $07		;6aba
	.DB $e0		;6abb
	.DB $03		;6abc
	.DB $f0		;6abd
	.DB $02		;6abe
	.DB $00		;6abf
	.DB $82		;6ac0
	.DB $e0		;6ac1
	.DB $78		;6ac2
	.DB $03		;6ac3
	.DB $fe		;6ac4
	.DB $86		;6ac5
	.DB $7e		;6ac6
	.DB $7c		;6ac7
	.DB $78		;6ac8
	.DB $00		;6ac9
	.DB $40		;6aca
	.DB $f8		;6acb
	.DB $02		;6acc
	.DB $fe		;6acd
	.DB $03		;6ace
	.DB $ff		;6acf
	.DB $82		;6ad0
	.DB $03		;6ad1
	.DB $00		;6ad2
	.DB $05		;6ad3
	.DB $07		;6ad4
	.DB $8b		;6ad5
	.DB $03		;6ad6
	.DB $00		;6ad7
	.DB $08		;6ad8
	.DB $f8		;6ad9
	.DB $f0		;6ada
	.DB $f0		;6adb
	.DB $f8		;6adc
	.DB $fc		;6add
	.DB $e8		;6ade
	.DB $00		;6adf
	.DB $70		;6ae0
	.DB $02		;6ae1
	.DB $03		;6ae2
	.DB $02		;6ae3
	.DB $07		;6ae4
	.DB $8c		;6ae5
	.DB $01		;6ae6
	.DB $00		;6ae7
	.DB $07		;6ae8
	.DB $0f		;6ae9
	.DB $f8		;6aea
	.DB $fc		;6aeb
	.DB $fe		;6aec
	.DB $fe		;6aed
	.DB $e0		;6aee
	.DB $00		;6aef
	.DB $20		;6af0
	.DB $b0		;6af1
	.DB $02		;6af2
	.DB $07		;6af3
	.DB $03		;6af4
	.DB $0f		;6af5
	.DB $8c		;6af6
	.DB $03		;6af7
	.DB $00		;6af8
	.DB $08		;6af9
	.DB $c0		;6afa
	.DB $e0		;6afb
	.DB $e0		;6afc
	.DB $d8		;6afd
	.DB $e8		;6afe
	.DB $f0		;6aff
	.DB $30		;6b00
	.DB $60		;6b01
	.DB $7c		;6b02
	.DB $03		;6b03
	.DB $fe		;6b04
	.DB $8c		;6b05
	.DB $7e		;6b06
	.DB $fe		;6b07
	.DB $7e		;6b08
	.DB $00		;6b09
	.DB $7f		;6b0a
	.DB $2f		;6b0b
	.DB $3f		;6b0c
	.DB $1f		;6b0d
	.DB $0f		;6b0e
	.DB $0f		;6b0f
	.DB $00		;6b10
	.DB $1c		;6b11
	.DB $05		;6b12
	.DB $c0		;6b13
	.DB $83		;6b14
	.DB $80		;6b15
	.DB $00		;6b16
	.DB $20		;6b17
	.DB $02		;6b18
	.DB $1f		;6b19
	.DB $02		;6b1a
	.DB $1e		;6b1b
	.DB $85		;6b1c
	.DB $0e		;6b1d
	.DB $07		;6b1e
	.DB $00		;6b1f
	.DB $06		;6b20
	.DB $20		;6b21
	.DB $02		;6b22
	.DB $60		;6b23
	.DB $02		;6b24
	.DB $e0		;6b25
	.DB $81		;6b26
	.DB $c0		;6b27
	.DB $02		;6b28
	.DB $00		;6b29
	.DB $02		;6b2a
	.DB $3e		;6b2b
	.DB $87		;6b2c
	.DB $3c		;6b2d
	.DB $3d		;6b2e
	.DB $1d		;6b2f
	.DB $1f		;6b30
	.DB $00		;6b31
	.DB $00		;6b32
	.DB $40		;6b33
	.DB $04		;6b34
	.DB $c0		;6b35
	.DB $83		;6b36
	.DB $80		;6b37
	.DB $00		;6b38
	.DB $60		;6b39
	.DB $04		;6b3a
	.DB $e0		;6b3b
	.DB $87		;6b3c
	.DB $f0		;6b3d
	.DB $00		;6b3e
	.DB $00		;6b3f
	.DB $10		;6b40
	.DB $0f		;6b41
	.DB $07		;6b42
	.DB $03		;6b43
	.DB $03		;6b44
	.DB $01		;6b45
	.DB $88		;6b46
	.DB $00		;6b47
	.DB $03		;6b48
	.DB $fc		;6b49
	.DB $fe		;6b4a
	.DB $fc		;6b4b
	.DB $f8		;6b4c
	.DB $f0		;6b4d
	.DB $e0		;6b4e
	.DB $09		;6b4f
	.DB $00		;6b50
	.DB $89		;6b51
	.DB $18		;6b52
	.DB $fe		;6b53
	.DB $7e		;6b54
	.DB $7c		;6b55
	.DB $7c		;6b56
	.DB $fc		;6b57
	.DB $70		;6b58
	.DB $00		;6b59
	.DB $c4		;6b5a
	.DB $04		;6b5b
	.DB $0f		;6b5c
	.DB $8c		;6b5d
	.DB $07		;6b5e
	.DB $00		;6b5f
	.DB $1e		;6b60
	.DB $1f		;6b61
	.DB $e0		;6b62
	.DB $e0		;6b63
	.DB $f0		;6b64
	.DB $b8		;6b65
	.DB $9c		;6b66
	.DB $00		;6b67
	.DB $00		;6b68
	.DB $80		;6b69
	.DB $02		;6b6a
	.DB $07		;6b6b
	.DB $03		;6b6c
	.DB $0f		;6b6d
	.DB $a4		;6b6e
	.DB $07		;6b6f
	.DB $00		;6b70
	.DB $18		;6b71
	.DB $7c		;6b72
	.DB $7f		;6b73
	.DB $ff		;6b74
	.DB $fe		;6b75
	.DB $f8		;6b76
	.DB $78		;6b77
	.DB $00		;6b78
	.DB $f2		;6b79
	.DB $7f		;6b7a
	.DB $3f		;6b7b
	.DB $1f		;6b7c
	.DB $0f		;6b7d
	.DB $07		;6b7e
	.DB $07		;6b7f
	.DB $00		;6b80
	.DB $0f		;6b81
	.DB $e0		;6b82
	.DB $f8		;6b83
	.DB $fc		;6b84
	.DB $ec		;6b85
	.DB $fc		;6b86
	.DB $f8		;6b87
	.DB $00		;6b88
	.DB $10		;6b89
	.DB $1f		;6b8a
	.DB $0f		;6b8b
	.DB $07		;6b8c
	.DB $0f		;6b8d
	.DB $0f		;6b8e
	.DB $03		;6b8f
	.DB $00		;6b90
	.DB $01		;6b91
	.DB $e0		;6b92
	.DB $03		;6b93
	.DB $f0		;6b94
	.DB $85		;6b95
	.DB $c0		;6b96
	.DB $00		;6b97
	.DB $c8		;6b98
	.DB $f0		;6b99
	.DB $e0		;6b9a
	.DB $03		;6b9b
	.DB $f0		;6b9c
	.DB $84		;6b9d
	.DB $c0		;6b9e
	.DB $00		;6b9f
	.DB $08		;6ba0
	.DB $c0		;6ba1
	.DB $02		;6ba2
	.DB $03		;6ba3
	.DB $02		;6ba4
	.DB $07		;6ba5
	.DB $97		;6ba6
	.DB $01		;6ba7
	.DB $00		;6ba8
	.DB $03		;6ba9
	.DB $07		;6baa
	.DB $f8		;6bab
	.DB $fc		;6bac
	.DB $fe		;6bad
	.DB $fe		;6bae
	.DB $e0		;6baf
	.DB $00		;6bb0
	.DB $80		;6bb1
	.DB $c0		;6bb2
	.DB $f8		;6bb3
	.DB $fc		;6bb4
	.DB $fe		;6bb5
	.DB $fe		;6bb6
	.DB $e0		;6bb7
	.DB $00		;6bb8
	.DB $00		;6bb9
	.DB $80		;6bba
	.DB $00		;6bbb
	.DB $01		;6bbc
	.DB $3f		;6bbd
	.DB $04		;6bbe
	.DB $20		;6bbf
	.DB $84		;6bc0
	.DB $60		;6bc1
	.DB $00		;6bc2
	.DB $01		;6bc3
	.DB $39		;6bc4
	.DB $04		;6bc5
	.DB $01		;6bc6
	.DB $81		;6bc7
	.DB $03		;6bc8
	.DB $02		;6bc9
	.DB $00		;6bca
	.DB $03		;6bcb
	.DB $20		;6bcc
	.DB $83		;6bcd
	.DB $00		;6bce
	.DB $01		;6bcf
	.DB $7f		;6bd0
	.DB $02		;6bd1
	.DB $00		;6bd2
	.DB $05		;6bd3
	.DB $01		;6bd4
	.DB $85		;6bd5
	.DB $3f		;6bd6
	.DB $38		;6bd7
	.DB $5c		;6bd8
	.DB $6c		;6bd9
	.DB $0c		;6bda
	.DB $04		;6bdb
	.DB $00		;6bdc
	.DB $02		;6bdd
	.DB $38		;6bde
	.DB $02		;6bdf
	.DB $30		;6be0
	.DB $04		;6be1
	.DB $00		;6be2
	.DB $84		;6be3
	.DB $38		;6be4
	.DB $74		;6be5
	.DB $6c		;6be6
	.DB $0c		;6be7
	.DB $04		;6be8
	.DB $00		;6be9
	.DB $00		;6bea
	.DB $51		;6beb
	.DB $00		;6bec
	.DB $03		;6bed
	.DB $03		;6bee
	.DB $81		;6bef
	.DB $01		;6bf0
	.DB $08		;6bf1
	.DB $00		;6bf2
	.DB $02		;6bf3
	.DB $03		;6bf4
	.DB $1f		;6bf5
	.DB $00		;6bf6
	.DB $02		;6bf7
	.DB $80		;6bf8
	.DB $06		;6bf9
	.DB $00		;6bfa
	.DB $02		;6bfb
	.DB $03		;6bfc
	.DB $83		;6bfd
	.DB $07		;6bfe
	.DB $06		;6bff
	.DB $07		;6c00
	.DB $7f		;6c01
	.DB $00		;6c02
	.DB $7f		;6c03
	.DB $00		;6c04
	.DB $66		;6c05
	.DB $00		;6c06
	.DB $81		;6c07
	.DB $c0		;6c08
	.DB $17		;6c09
	.DB $00		;6c0a
	.DB $81		;6c0b
	.DB $1c		;6c0c
	.DB $06		;6c0d
	.DB $00		;6c0e
	.DB $82		;6c0f
	.DB $f0		;6c10
	.DB $f8		;6c11
	.DB $51		;6c12
	.DB $00		;6c13
	.DB $85		;6c14
	.DB $1f		;6c15
	.DB $3f		;6c16
	.DB $3e		;6c17
	.DB $3e		;6c18
	.DB $1e		;6c19
	.DB $03		;6c1a
	.DB $00		;6c1b
	.DB $02		;6c1c
	.DB $80		;6c1d
	.DB $02		;6c1e
	.DB $c0		;6c1f
	.DB $05		;6c20
	.DB $00		;6c21
	.DB $88		;6c22
	.DB $0e		;6c23
	.DB $0f		;6c24
	.DB $07		;6c25
	.DB $90		;6c26
	.DB $f8		;6c27
	.DB $78		;6c28
	.DB $00		;6c29
	.DB $11		;6c2a
	.DB $03		;6c2b
	.DB $1f		;6c2c
	.DB $82		;6c2d
	.DB $1e		;6c2e
	.DB $0e		;6c2f
	.DB $03		;6c30
	.DB $00		;6c31
	.DB $81		;6c32
	.DB $80		;6c33
	.DB $02		;6c34
	.DB $40		;6c35
	.DB $07		;6c36
	.DB $00		;6c37
sub_6c38h:
	.DB $89		;6c38
	.DB $80		;6c39
	.DB $c0		;6c3a
	.DB $78		;6c3b
	.DB $78		;6c3c
	.DB $00		;6c3d
	.DB $04		;6c3e
	.DB $04		;6c3f
	.DB $0c		;6c40
	.DB $18		;6c41
	.DB $04		;6c42
	.DB $00		;6c43
	.DB $04		;6c44
	.DB $1f		;6c45
	.DB $81		;6c46
	.DB $0f		;6c47
	.DB $03		;6c48
	.DB $00		;6c49
	.DB $02		;6c4a
	.DB $c0		;6c4b
	.DB $02		;6c4c
	.DB $80		;6c4d
	.DB $03		;6c4e
	.DB $00		;6c4f
	.DB $82		;6c50
	.DB $04		;6c51
	.DB $0c		;6c52
	.DB $02		;6c53
	.DB $18		;6c54
	.DB $04		;6c55
	.DB $00		;6c56
	.DB $81		;6c57
	.DB $07		;6c58
	.DB $03		;6c59
	.DB $0f		;6c5a
	.DB $04		;6c5b
	.DB $00		;6c5c
	.DB $81		;6c5d
	.DB $80		;6c5e
	.DB $04		;6c5f
	.DB $c0		;6c60
	.DB $06		;6c61
	.DB $00		;6c62
	.DB $02		;6c63
	.DB $20		;6c64
	.DB $88		;6c65
	.DB $38		;6c66
	.DB $1c		;6c67
	.DB $1c		;6c68
	.DB $00		;6c69
	.DB $03		;6c6a
	.DB $07		;6c6b
	.DB $06		;6c6c
	.DB $02		;6c6d
	.DB $05		;6c6e
	.DB $00		;6c6f
	.DB $03		;6c70
	.DB $fc		;6c71
	.DB $81		;6c72
	.DB $78		;6c73
	.DB $03		;6c74
	.DB $00		;6c75
	.DB $83		;6c76
	.DB $04		;6c77
	.DB $7c		;6c78
	.DB $78		;6c79
	.DB $09		;6c7a
	.DB $00		;6c7b
	.DB $85		;6c7c
	.DB $06		;6c7d
	.DB $1e		;6c7e
	.DB $1c		;6c7f
	.DB $00		;6c80
	.DB $18		;6c81
	.DB $04		;6c82
	.DB $f8		;6c83
	.DB $81		;6c84
	.DB $70		;6c85
	.DB $04		;6c86
	.DB $00		;6c87
	.DB $83		;6c88
	.DB $01		;6c89
	.DB $03		;6c8a
	.DB $02		;6c8b
	.DB $03		;6c8c
	.DB $00		;6c8d
	.DB $02		;6c8e
	.DB $60		;6c8f
	.DB $82		;6c90
	.DB $30		;6c91
	.DB $18		;6c92
	.DB $04		;6c93
	.DB $00		;6c94
	.DB $02		;6c95
	.DB $03		;6c96
	.DB $02		;6c97
	.DB $01		;6c98
	.DB $04		;6c99
	.DB $00		;6c9a
	.DB $04		;6c9b
	.DB $f8		;6c9c
	.DB $85		;6c9d
	.DB $f0		;6c9e
	.DB $00		;6c9f
	.DB $0c		;6ca0
	.DB $20		;6ca1
	.DB $30		;6ca2
	.DB $02		;6ca3
	.DB $18		;6ca4
	.DB $08		;6ca5
	.DB $00		;6ca6
	.DB $85		;6ca7
	.DB $02		;6ca8
	.DB $06		;6ca9
	.DB $3c		;6caa
	.DB $3c		;6cab
	.DB $01		;6cac
	.DB $04		;6cad
	.DB $03		;6cae
	.DB $03		;6caf
	.DB $00		;6cb0
	.DB $81		;6cb1
	.DB $e0		;6cb2
	.DB $03		;6cb3
	.DB $f0		;6cb4
	.DB $06		;6cb5
	.DB $00		;6cb6
	.DB $81		;6cb7
	.DB $1e		;6cb8
	.DB $03		;6cb9
	.DB $3f		;6cba
	.DB $82		;6cbb
	.DB $00		;6cbc
	.DB $01		;6cbd
	.DB $03		;6cbe
	.DB $00		;6cbf
	.DB $81		;6cc0
	.DB $80		;6cc1
	.DB $03		;6cc2
	.DB $c0		;6cc3
	.DB $07		;6cc4
	.DB $00		;6cc5
	.DB $82		;6cc6
	.DB $38		;6cc7
	.DB $3c		;6cc8
	.DB $06		;6cc9
	.DB $00		;6cca
	.DB $82		;6ccb
	.DB $70		;6ccc
	.DB $78		;6ccd
	.DB $06		;6cce
	.DB $00		;6ccf
	.DB $87		;6cd0
	.DB $70		;6cd1
	.DB $78		;6cd2
	.DB $18		;6cd3
	.DB $fc		;6cd4
	.DB $fc		;6cd5
	.DB $e8		;6cd6
	.DB $e0		;6cd7
	.DB $04		;6cd8
	.DB $00		;6cd9
	.DB $82		;6cda
	.DB $01		;6cdb
	.DB $07		;6cdc
	.DB $02		;6cdd
	.DB $00		;6cde
	.DB $02		;6cdf
	.DB $c0		;6ce0
	.DB $03		;6ce1
	.DB $00		;6ce2
	.DB $86		;6ce3
	.DB $71		;6ce4
	.DB $7f		;6ce5
	.DB $7e		;6ce6
	.DB $7e		;6ce7
	.DB $3c		;6ce8
	.DB $00		;6ce9
	.DB $02		;6cea
	.DB $80		;6ceb
	.DB $04		;6cec
	.DB $00		;6ced
	.DB $82		;6cee
	.DB $30		;6cef
	.DB $f0		;6cf0
	.DB $05		;6cf1
	.DB $00		;6cf2
	.DB $88		;6cf3
	.DB $3c		;6cf4
	.DB $3e		;6cf5
	.DB $00		;6cf6
	.DB $7c		;6cf7
	.DB $7e		;6cf8
	.DB $fe		;6cf9
	.DB $1e		;6cfa
	.DB $0c		;6cfb
	.DB $07		;6cfc
	.DB $00		;6cfd
	.DB $88		;6cfe
	.DB $20		;6cff
	.DB $38		;6d00
	.DB $18		;6d01
	.DB $1c		;6d02
	.DB $00		;6d03
	.DB $80		;6d04
	.DB $f0		;6d05
	.DB $70		;6d06
	.DB $04		;6d07
	.DB $00		;6d08
	.DB $81		;6d09
	.DB $78		;6d0a
	.DB $03		;6d0b
	.DB $fc		;6d0c
	.DB $81		;6d0d
	.DB $c4		;6d0e
	.DB $04		;6d0f
	.DB $00		;6d10
	.DB $86		;6d11
	.DB $06		;6d12
	.DB $0e		;6d13
	.DB $1c		;6d14
	.DB $1c		;6d15
	.DB $18		;6d16
	.DB $10		;6d17
	.DB $06		;6d18
	.DB $00		;6d19
	.DB $83		;6d1a
	.DB $30		;6d1b
	.DB $38		;6d1c
	.DB $1c		;6d1d
	.DB $03		;6d1e
	.DB $3f		;6d1f
	.DB $85		;6d20
	.DB $27		;6d21
	.DB $10		;6d22
	.DB $00		;6d23
	.DB $00		;6d24
	.DB $20		;6d25
	.DB $03		;6d26
	.DB $60		;6d27
	.DB $87		;6d28
	.DB $40		;6d29
	.DB $00		;6d2a
	.DB $10		;6d2b
	.DB $1c		;6d2c
	.DB $0c		;6d2d
	.DB $f8		;6d2e
	.DB $38		;6d2f
	.DB $03		;6d30
	.DB $00		;6d31
	.DB $02		;6d32
	.DB $80		;6d33
	.DB $84		;6d34
	.DB $c0		;6d35
	.DB $04		;6d36
	.DB $00		;6d37
	.DB $20		;6d38
	.DB $02		;6d39
	.DB $38		;6d3a
	.DB $04		;6d3b
	.DB $00		;6d3c
	.DB $85		;6d3d
	.DB $7e		;6d3e
	.DB $fe		;6d3f
	.DB $fb		;6d40
	.DB $fb		;6d41
	.DB $78		;6d42
	.DB $08		;6d43
	.DB $00		;6d44
	.DB $82		;6d45
	.DB $70		;6d46
	.DB $78		;6d47
	.DB $05		;6d48
	.DB $00		;6d49
	.DB $84		;6d4a
	.DB $80		;6d4b
	.DB $f0		;6d4c
	.DB $78		;6d4d
	.DB $00		;6d4e
	.DB $02		;6d4f
	.DB $7e		;6d50
	.DB $02		;6d51
	.DB $7a		;6d52
	.DB $81		;6d53
	.DB $78		;6d54
	.DB $05		;6d55
	.DB $00		;6d56
	.DB $8a		;6d57
	.DB $06		;6d58
	.DB $47		;6d59
	.DB $60		;6d5a
	.DB $7c		;6d5b
	.DB $3c		;6d5c
	.DB $00		;6d5d
	.DB $03		;6d5e
	.DB $07		;6d5f
	.DB $06		;6d60
	.DB $02		;6d61
	.DB $06		;6d62
	.DB $00		;6d63
	.DB $82		;6d64
	.DB $3c		;6d65
	.DB $38		;6d66
	.DB $08		;6d67
	.DB $00		;6d68
	.DB $89		;6d69
	.DB $03		;6d6a
	.DB $0f		;6d6b
	.DB $0c		;6d6c
	.DB $00		;6d6d
	.DB $c0		;6d6e
	.DB $fe		;6d6f
	.DB $be		;6d70
	.DB $be		;6d71
	.DB $3e		;6d72
	.DB $05		;6d73
	.DB $00		;6d74
	.DB $87		;6d75
	.DB $30		;6d76
	.DB $71		;6d77
	.DB $03		;6d78
	.DB $1f		;6d79
	.DB $1e		;6d7a
	.DB $00		;6d7b
	.DB $07		;6d7c
	.DB $03		;6d7d
	.DB $0f		;6d7e
	.DB $81		;6d7f
	.DB $07		;6d80
	.DB $07		;6d81
	.DB $00		;6d82
	.DB $8e		;6d83
	.DB $12		;6d84
	.DB $1f		;6d85
	.DB $0f		;6d86
	.DB $00		;6d87
	.DB $e0		;6d88
	.DB $f0		;6d89
	.DB $b0		;6d8a
	.DB $b0		;6d8b
	.DB $80		;6d8c
	.DB $00		;6d8d
	.DB $00		;6d8e
	.DB $0c		;6d8f
	.DB $3c		;6d90
	.DB $30		;6d91
	.DB $06		;6d92
	.DB $00		;6d93
	.DB $84		;6d94
	.DB $02		;6d95
	.DB $07		;6d96
	.DB $06		;6d97
	.DB $02		;6d98
	.DB $05		;6d99
	.DB $00		;6d9a
	.DB $84		;6d9b
	.DB $80		;6d9c
	.DB $f8		;6d9d
	.DB $f8		;6d9e
	.DB $f0		;6d9f
	.DB $03		;6da0
	.DB $00		;6da1
	.DB $03		;6da2
	.DB $03		;6da3
	.DB $02		;6da4
	.DB $01		;6da5
	.DB $04		;6da6
	.DB $00		;6da7
	.DB $81		;6da8
	.DB $3c		;6da9
	.DB $03		;6daa
	.DB $fe		;6dab
	.DB $82		;6dac
	.DB $80		;6dad
	.DB $40		;6dae
	.DB $06		;6daf
	.DB $00		;6db0
	.DB $82		;6db1
	.DB $0e		;6db2
	.DB $1e		;6db3
	.DB $06		;6db4
	.DB $00		;6db5
	.DB $82		;6db6
	.DB $0e		;6db7
	.DB $1e		;6db8
	.DB $03		;6db9
	.DB $00		;6dba
	.DB $81		;6dbb
	.DB $01		;6dbc
	.DB $03		;6dbd
	.DB $03		;6dbe
	.DB $07		;6dbf
	.DB $00		;6dc0
	.DB $9c		;6dc1
	.DB $1c		;6dc2
	.DB $3c		;6dc3
	.DB $7c		;6dc4
	.DB $fe		;6dc5
	.DB $ff		;6dc6
	.DB $f0		;6dc7
	.DB $d0		;6dc8
	.DB $c0		;6dc9
	.DB $40		;6dca
	.DB $60		;6dcb
	.DB $7c		;6dcc
	.DB $fe		;6dcd
	.DB $fe		;6dce
	.DB $ff		;6dcf
	.DB $f4		;6dd0
	.DB $f4		;6dd1
	.DB $f0		;6dd2
	.DB $60		;6dd3
	.DB $7c		;6dd4
	.DB $fe		;6dd5
	.DB $ff		;6dd6
	.DB $fe		;6dd7
	.DB $fc		;6dd8
	.DB $fc		;6dd9
	.DB $f8		;6dda
	.DB $78		;6ddb
	.DB $38		;6ddc
	.DB $7c		;6ddd
	.DB $05		;6dde
	.DB $fe		;6ddf
	.DB $98		;6de0
	.DB $7c		;6de1
	.DB $3e		;6de2
	.DB $7f		;6de3
	.DB $ff		;6de4
	.DB $8f		;6de5
	.DB $0b		;6de6
	.DB $03		;6de7
	.DB $03		;6de8
	.DB $06		;6de9
	.DB $3e		;6dea
	.DB $7f		;6deb
	.DB $7f		;6dec
	.DB $ff		;6ded
	.DB $2f		;6dee
	.DB $2f		;6def
	.DB $0f		;6df0
	.DB $06		;6df1
	.DB $3e		;6df2
	.DB $7f		;6df3
	.DB $ff		;6df4
	.DB $7f		;6df5
	.DB $3f		;6df6
	.DB $3f		;6df7
	.DB $1f		;6df8
	.DB $02		;6df9
	.DB $1e		;6dfa
	.DB $06		;6dfb
	.DB $3f		;6dfc
	.DB $8f		;6dfd
	.DB $1f		;6dfe
	.DB $1e		;6dff
	.DB $7e		;6e00
sub_6e01h:
	.DB $7e		;6e01
	.DB $f8		;6e02
	.DB $f0		;6e03
	.DB $f8		;6e04
	.DB $f0		;6e05
	.DB $78		;6e06
	.DB $3c		;6e07
	.DB $7e		;6e08
	.DB $78		;6e09
	.DB $f0		;6e0a
	.DB $78		;6e0b
	.DB $30		;6e0c
	.DB $05		;6e0d
	.DB $00		;6e0e
	.DB $84		;6e0f
	.DB $08		;6e10
	.DB $10		;6e11
	.DB $08		;6e12
	.DB $10		;6e13
	.DB $05		;6e14
	.DB $00		;6e15
	.DB $89		;6e16
	.DB $20		;6e17
	.DB $50		;6e18
	.DB $20		;6e19
	.DB $00		;6e1a
	.DB $00		;6e1b
	.DB $08		;6e1c
	.DB $10		;6e1d
	.DB $28		;6e1e
	.DB $10		;6e1f
	.DB $06		;6e20
	.DB $00		;6e21
	.DB $83		;6e22
	.DB $04		;6e23
	.DB $0a		;6e24
	.DB $05		;6e25
	.DB $05		;6e26
	.DB $00		;6e27
	.DB $8a		;6e28
	.DB $c4		;6e29
	.DB $0a		;6e2a
	.DB $04		;6e2b
	.DB $70		;6e2c
	.DB $70		;6e2d
	.DB $00		;6e2e
	.DB $40		;6e2f
	.DB $20		;6e30
	.DB $50		;6e31
	.DB $20		;6e32
	.DB $05		;6e33
	.DB $00		;6e34
	.DB $8b		;6e35
	.DB $01		;6e36
	.DB $07		;6e37
	.DB $03		;6e38
	.DB $23		;6e39
	.DB $11		;6e3a
	.DB $21		;6e3b
	.DB $00		;6e3c
	.DB $08		;6e3d
	.DB $10		;6e3e
	.DB $08		;6e3f
	.DB $10		;6e40
	.DB $03		;6e41
	.DB $00		;6e42
	.DB $88		;6e43
	.DB $80		;6e44
	.DB $00		;6e45
	.DB $04		;6e46
	.DB $02		;6e47
	.DB $04		;6e48
	.DB $00		;6e49
	.DB $00		;6e4a
	.DB $80		;6e4b
	.DB $04		;6e4c
	.DB $00		;6e4d
	.DB $85		;6e4e
	.DB $10		;6e4f
	.DB $00		;6e50
	.DB $10		;6e51
	.DB $00		;6e52
	.DB $10		;6e53
	.DB $0e		;6e54
	.DB $00		;6e55
	.DB $81		;6e56
	.DB $06		;6e57
	.DB $07		;6e58
	.DB $00		;6e59
	.DB $81		;6e5a
	.DB $40		;6e5b
	.DB $07		;6e5c
	.DB $00		;6e5d
	.DB $81		;6e5e
	.DB $c0		;6e5f
	.DB $07		;6e60
	.DB $00		;6e61
	.DB $81		;6e62
	.DB $04		;6e63
	.DB $07		;6e64
	.DB $00		;6e65
	.DB $81		;6e66
	.DB $44		;6e67
	.DB $06		;6e68
	.DB $00		;6e69
	.DB $82		;6e6a
	.DB $0c		;6e6b
	.DB $3e		;6e6c
	.DB $07		;6e6d
	.DB $00		;6e6e
	.DB $81		;6e6f
	.DB $18		;6e70
	.DB $07		;6e71
	.DB $00		;6e72
	.DB $81		;6e73
	.DB $1e		;6e74
	.DB $07		;6e75
	.DB $00		;6e76
	.DB $81		;6e77
	.DB $c0		;6e78
	.DB $07		;6e79
	.DB $00		;6e7a
	.DB $81		;6e7b
	.DB $e0		;6e7c
	.DB $07		;6e7d
	.DB $00		;6e7e
	.DB $81		;6e7f
	.DB $04		;6e80
	.DB $03		;6e81
	.DB $00		;6e82
	.DB $82		;6e83
	.DB $0c		;6e84
	.DB $1c		;6e85
	.DB $06		;6e86
	.DB $00		;6e87
	.DB $03		;6e88
	.DB $18		;6e89
	.DB $82		;6e8a
	.DB $30		;6e8b
	.DB $00		;6e8c
	.DB $02		;6e8d
	.DB $01		;6e8e
	.DB $09		;6e8f
	.DB $00		;6e90
	.DB $82		;6e91
	.DB $0c		;6e92
	.DB $1c		;6e93
	.DB $03		;6e94
	.DB $00		;6e95
	.DB $81		;6e96
	.DB $e0		;6e97
	.DB $05		;6e98
	.DB $00		;6e99
	.DB $86		;6e9a
	.DB $70		;6e9b
	.DB $f0		;6e9c
	.DB $03		;6e9d
	.DB $03		;6e9e
	.DB $07		;6e9f
	.DB $01		;6ea0
	.DB $03		;6ea1
	.DB $00		;6ea2
	.DB $02		;6ea3
	.DB $01		;6ea4
	.DB $02		;6ea5
	.DB $00		;6ea6
	.DB $02		;6ea7
	.DB $0e		;6ea8
	.DB $03		;6ea9
	.DB $00		;6eaa
	.DB $81		;6eab
	.DB $f8		;6eac
	.DB $05		;6ead
	.DB $00		;6eae
	.DB $81		;6eaf
	.DB $30		;6eb0
	.DB $02		;6eb1
	.DB $78		;6eb2
	.DB $02		;6eb3
	.DB $00		;6eb4
	.DB $02		;6eb5
	.DB $80		;6eb6
	.DB $83		;6eb7
	.DB $c0		;6eb8
	.DB $1c		;6eb9
	.DB $0e		;6eba
	.DB $03		;6ebb
	.DB $00		;6ebc
	.DB $03		;6ebd
	.DB $18		;6ebe
	.DB $81		;6ebf
	.DB $0c		;6ec0
	.DB $04		;6ec1
	.DB $00		;6ec2
	.DB $82		;6ec3
	.DB $30		;6ec4
	.DB $38		;6ec5
	.DB $03		;6ec6
	.DB $00		;6ec7
	.DB $81		;6ec8
	.DB $07		;6ec9
	.DB $05		;6eca
	.DB $00		;6ecb
	.DB $82		;6ecc
	.DB $0e		;6ecd
	.DB $0f		;6ece
	.DB $03		;6ecf
	.DB $00		;6ed0
	.DB $82		;6ed1
	.DB $30		;6ed2
	.DB $38		;6ed3
	.DB $03		;6ed4
	.DB $00		;6ed5
	.DB $82		;6ed6
	.DB $1f		;6ed7
	.DB $1e		;6ed8
	.DB $04		;6ed9
	.DB $00		;6eda
	.DB $83		;6edb
	.DB $0c		;6edc
	.DB $1e		;6edd
	.DB $3c		;6ede
	.DB $02		;6edf
	.DB $00		;6ee0
	.DB $02		;6ee1
	.DB $02		;6ee2
	.DB $84		;6ee3
	.DB $06		;6ee4
	.DB $70		;6ee5
	.DB $e0		;6ee6
	.DB $9f		;6ee7
	.DB $05		;6ee8
	.DB $00		;6ee9
	.DB $83		;6eea
	.DB $66		;6eeb
	.DB $e7		;6eec
	.DB $1e		;6eed
	.DB $05		;6eee
	.DB $00		;6eef
	.DB $83		;6ef0
	.DB $06		;6ef1
	.DB $0e		;6ef2
	.DB $80		;6ef3
	.DB $05		;6ef4
	.DB $00		;6ef5
	.DB $82		;6ef6
	.DB $60		;6ef7
	.DB $70		;6ef8
	.DB $03		;6ef9
	.DB $00		;6efa
	.DB $82		;6efb
	.DB $06		;6efc
	.DB $0e		;6efd
	.DB $03		;6efe
	.DB $00		;6eff
	.DB $81		;6f00
	.DB $e0		;6f01
	.DB $04		;6f02
	.DB $00		;6f03
	.DB $02		;6f04
	.DB $30		;6f05
	.DB $81		;6f06
	.DB $70		;6f07
	.DB $07		;6f08
	.DB $00		;6f09
	.DB $91		;6f0a
	.DB $03		;6f0b
	.DB $1f		;6f0c
	.DB $00		;6f0d
	.DB $00		;6f0e
	.DB $60		;6f0f
	.DB $e0		;6f10
	.DB $02		;6f11
	.DB $07		;6f12
	.DB $0f		;6f13
	.DB $18		;6f14
	.DB $00		;6f15
	.DB $00		;6f16
	.DB $40		;6f17
	.DB $c0		;6f18
	.DB $cc		;6f19
	.DB $9c		;6f1a
	.DB $38		;6f1b
	.DB $05		;6f1c
	.DB $00		;6f1d
	.DB $84		;6f1e
	.DB $02		;6f1f
	.DB $0f		;6f20
	.DB $0f		;6f21
	.DB $00		;6f22
	.DB $02		;6f23
	.DB $80		;6f24
	.DB $02		;6f25
	.DB $c0		;6f26
	.DB $84		;6f27
	.DB $0e		;6f28
	.DB $06		;6f29
	.DB $03		;6f2a
	.DB $c0		;6f2b
	.DB $03		;6f2c
	.DB $00		;6f2d
	.DB $04		;6f2e
	.DB $80		;6f2f
	.DB $81		;6f30
	.DB $03		;6f31
	.DB $02		;6f32
	.DB $00		;6f33
	.DB $03		;6f34
	.DB $60		;6f35
	.DB $82		;6f36
	.DB $63		;6f37
	.DB $03		;6f38
	.DB $08		;6f39
	.DB $00		;6f3a
	.DB $81		;6f3b
	.DB $0c		;6f3c
	.DB $02		;6f3d
	.DB $00		;6f3e
	.DB $02		;6f3f
	.DB $06		;6f40
	.DB $02		;6f41
	.DB $60		;6f42
	.DB $81		;6f43
	.DB $e0		;6f44
	.DB $05		;6f45
	.DB $00		;6f46
	.DB $02		;6f47
	.DB $0f		;6f48
	.DB $81		;6f49
	.DB $03		;6f4a
	.DB $03		;6f4b
	.DB $00		;6f4c
	.DB $86		;6f4d
	.DB $04		;6f4e
	.DB $0c		;6f4f
	.DB $0c		;6f50
	.DB $18		;6f51
	.DB $00		;6f52
	.DB $06		;6f53
	.DB $03		;6f54
	.DB $00		;6f55
	.DB $8a		;6f56
	.DB $30		;6f57
	.DB $7e		;6f58
	.DB $0e		;6f59
	.DB $1c		;6f5a
	.DB $00		;6f5b
	.DB $00		;6f5c
	.DB $20		;6f5d
	.DB $30		;6f5e
	.DB $30		;6f5f
	.DB $18		;6f60
	.DB $06		;6f61
	.DB $00		;6f62
	.DB $02		;6f63
	.DB $f0		;6f64
	.DB $81		;6f65
	.DB $c0		;6f66
	.DB $04		;6f67
	.DB $00		;6f68
	.DB $87		;6f69
	.DB $0c		;6f6a
	.DB $7e		;6f6b
	.DB $70		;6f6c
	.DB $38		;6f6d
	.DB $00		;6f6e
	.DB $07		;6f6f
	.DB $02		;6f70
	.DB $02		;6f71
	.DB $00		;6f72
	.DB $02		;6f73
	.DB $01		;6f74
	.DB $86		;6f75
	.DB $03		;6f76
	.DB $01		;6f77
	.DB $e0		;6f78
	.DB $70		;6f79
	.DB $70		;6f7a
	.DB $f0		;6f7b
	.DB $03		;6f7c
	.DB $f8		;6f7d
	.DB $8b		;6f7e
	.DB $98		;6f7f
	.DB $9e		;6f80
	.DB $f2		;6f81
	.DB $f2		;6f82
	.DB $72		;6f83
	.DB $02		;6f84
	.DB $07		;6f85
	.DB $3f		;6f86
	.DB $7f		;6f87
	.DB $78		;6f88
	.DB $fe		;6f89
	.DB $02		;6f8a
	.DB $f8		;6f8b
	.DB $04		;6f8c
	.DB $fc		;6f8d
	.DB $81		;6f8e
	.DB $07		;6f8f
	.DB $02		;6f90
	.DB $06		;6f91
	.DB $04		;6f92
	.DB $07		;6f93
	.DB $85		;6f94
	.DB $0f		;6f95
	.DB $80		;6f96
	.DB $00		;6f97
	.DB $30		;6f98
	.DB $f0		;6f99
	.DB $03		;6f9a
	.DB $e0		;6f9b
	.DB $81		;6f9c
	.DB $f0		;6f9d
	.DB $02		;6f9e
	.DB $03		;6f9f
	.DB $03		;6fa0
	.DB $07		;6fa1
	.DB $02		;6fa2
	.DB $0f		;6fa3
	.DB $85		;6fa4
	.DB $08		;6fa5
	.DB $f0		;6fa6
	.DB $f8		;6fa7
	.DB $f8		;6fa8
	.DB $f0		;6fa9
	.DB $04		;6faa
	.DB $e0		;6fab
	.DB $02		;6fac
	.DB $07		;6fad
	.DB $03		;6fae
	.DB $0e		;6faf
	.DB $03		;6fb0
	.DB $0f		;6fb1
	.DB $02		;6fb2
	.DB $c0		;6fb3
	.DB $81		;6fb4
	.DB $40		;6fb5
	.DB $03		;6fb6
	.DB $00		;6fb7
	.DB $8d		;6fb8
	.DB $c0		;6fb9
	.DB $e0		;6fba
	.DB $60		;6fbb
	.DB $de		;6fbc
	.DB $8c		;6fbd
	.DB $84		;6fbe
	.DB $40		;6fbf
	.DB $f0		;6fc0
	.DB $f8		;6fc1
	.DB $fe		;6fc2
	.DB $03		;6fc3
	.DB $00		;6fc4
	.DB $08		;6fc5
	.DB $04		;6fc6
	.DB $0f		;6fc7
	.DB $81		;6fc8
	.DB $1f		;6fc9
	.DB $07		;6fca
	.DB $c0		;6fcb
	.DB $84		;6fcc
	.DB $e0		;6fcd
	.DB $1f		;6fce
	.DB $07		;6fcf
	.DB $06		;6fd0
	.DB $03		;6fd1
	.DB $00		;6fd2
	.DB $02		;6fd3
	.DB $0f		;6fd4
	.DB $96		;6fd5
	.DB $20		;6fd6
	.DB $60		;6fd7
	.DB $00		;6fd8
	.DB $00		;6fd9
	.DB $20		;6fda
	.DB $e0		;6fdb
	.DB $f0		;6fdc
	.DB $f0		;6fdd
	.DB $3e		;6fde
	.DB $0e		;6fdf
	.DB $0c		;6fe0
	.DB $00		;6fe1
	.DB $00		;6fe2
	.DB $11		;6fe3
	.DB $1f		;6fe4
	.DB $1f		;6fe5
	.DB $40		;6fe6
	.DB $c0		;6fe7
	.DB $00		;6fe8
	.DB $00		;6fe9
	.DB $40		;6fea
	.DB $c0		;6feb
	.DB $03		;6fec
	.DB $e0		;6fed
	.DB $81		;6fee
	.DB $60		;6fef
	.DB $02		;6ff0
	.DB $e0		;6ff1
	.DB $04		;6ff2
	.DB $f0		;6ff3
	.DB $03		;6ff4
	.DB $03		;6ff5
	.DB $03		;6ff6
	.DB $01		;6ff7
	.DB $02		;6ff8
	.DB $03		;6ff9
	.DB $08		;6ffa
	.DB $f0		;6ffb
	.DB $08		;6ffc
	.DB $00		;6ffd
	.DB $84		;6ffe
l6fffh:
	.DB $1e		;6fff
	.DB $0e
	ld b,b			; 40 ;7001
	ld h,b			; 60 ;7002
	inc b			; 04 ;7003
	call m,l0f02h+1		; fc 03 0f ;7004
	inc b			; 04 ;7007
	rra			; 1f ;7008
	add a,h			; 84 ;7009
	ld bc,0e0e0h		; 01 e0 e0 ;700a
	ret nz			; c0 ;700d
	dec b			; 05 ;700e
	add a,b			; 80 ;700f
	ld (bc),a			; 02 ;7010
	rlca			; 07 ;7011
	inc bc			; 03 ;7012
	rrca			; 0f ;7013
	inc bc			; 03 ;7014
	rra			; 1f ;7015
	add a,d			; 82 ;7016
	ld a,h			; 7c ;7017
	ld (hl),b			; 70 ;7018
	ld (bc),a			; 02 ;7019
	ret p			; f0 ;701a
	ld (bc),a			; 02 ;701b
	ret m			; f8 ;701c
	ld (bc),a			; 02 ;701d
	call m,l1e83h+1		; fc 84 1e ;701e
l7021h:
	rra			; 1f ;7021
	rra			; 1f ;7022
	rrca			; 0f ;7023
	inc bc			; 03 ;7024
	rlca			; 07 ;7025
	add a,d			; 82 ;7026
	rrca			; 0f ;7027
	ld h,b			; 60 ;7028
	ld (bc),a			; 02 ;7029
	ret p			; f0 ;702a
	inc b			; 04 ;702b
	ret po			; e0 ;702c
	add a,l			; 85 ;702d
	ret p			; f0 ;702e
	rlca			; 07 ;702f
	rlca			; 07 ;7030
	ld b,002h		; 06 02 ;7031
	ld (bc),a			; 02 ;7033
	nop			; 00 ;7034
	ld (bc),a			; 02 ;7035
	ld bc,0e090h		; 01 90 e0 ;7036
	ret p			; f0 ;7039
	ld (hl),b			; 70 ;703a
	ld (hl),b			; 70 ;703b
	ld a,b			; 78 ;703c
	ret m			; f8 ;703d
	ret m			; f8 ;703e
	jr nc,l7021h		; 30 e0 ;703f
	ret p			; f0 ;7041
	ld (hl),b			; 70 ;7042
	ld (hl),b			; 70 ;7043
	ld a,b			; 78 ;7044
	ret m			; f8 ;7045
	ret m			; f8 ;7046
	ret p			; f0 ;7047
	ld (bc),a			; 02 ;7048
	inc bc			; 03 ;7049
	inc bc			; 03 ;704a
	rlca			; 07 ;704b
	ld (bc),a			; 02 ;704c
	rrca			; 0f ;704d
	sub c			; 91 ;704e
	inc c			; 0c ;704f
	ret p			; f0 ;7050
	ret m			; f8 ;7051
	ret m			; f8 ;7052
	ret p			; f0 ;7053
	ret po			; e0 ;7054
	ret po			; e0 ;7055
	ret nz			; c0 ;7056
	ld b,b			; 40 ;7057
	ret p			; f0 ;7058
	ret m			; f8 ;7059
	ret m			; f8 ;705a
	ret p			; f0 ;705b
	ret po			; e0 ;705c
	ret nz			; c0 ;705d
	ret nz			; c0 ;705e
	add a,b			; 80 ;705f
	ld hl,00300h		; 21 00 03 ;7060
	add a,b			; 80 ;7063
	add a,c			; 81 ;7064
	ld c,006h		; 0e 06 ;7065
	nop			; 00 ;7067
	add a,d			; 82 ;7068
	ld b,b			; 40 ;7069
	jr c,l7070h		; 38 04 ;706a
	nop			; 00 ;706c
	inc bc			; 03 ;706d
	add a,b			; 80 ;706e
	add a,c			; 81 ;706f
l7070h:
	ld c,003h		; 0e 03 ;7070
	nop			; 00 ;7072
	nop			; 00 ;7073
	ld a,a			; 7f ;7074
	nop			; 00 ;7075
	ld a,a			; 7f ;7076
	nop			; 00 ;7077
	ld a,a			; 7f ;7078
	nop			; 00 ;7079
	ld a,a			; 7f ;707a
	nop			; 00 ;707b
	ld a,a			; 7f ;707c
	nop			; 00 ;707d
	ld a,a			; 7f ;707e
	nop			; 00 ;707f
	ld a,a			; 7f ;7080
	nop			; 00 ;7081
	ld a,a			; 7f ;7082
	nop			; 00 ;7083
	ld a,a			; 7f ;7084
	nop			; 00 ;7085
	ld a,a			; 7f ;7086
	nop			; 00 ;7087
	ld a,a			; 7f ;7088
	nop			; 00 ;7089
	ld a,a			; 7f ;708a
	nop			; 00 ;708b
	ld a,a			; 7f ;708c
	nop			; 00 ;708d
	ld a,a			; 7f ;708e
	nop			; 00 ;708f
	ld a,a			; 7f ;7090
l7091h:
	nop			; 00 ;7091
	scf			; 37 ;7092
	nop			; 00 ;7093
	add a,c			; 81 ;7094
	cp 002h		; fe 02 ;7095
	rst 38h			; ff ;7097
	inc b			; 04 ;7098
	ret po			; e0 ;7099
	add a,h			; 84 ;709a
	ld h,b			; 60 ;709b
	ld a,(hl)			; 7e ;709c
	ld a,a			; 7f ;709d
	ccf			; 3f ;709e
	inc b			; 04 ;709f
	rlca			; 07 ;70a0
	add a,e			; 83 ;70a1
	inc bc			; 03 ;70a2
	nop			; 00 ;70a3
	ret nz			; c0 ;70a4
	inc bc			; 03 ;70a5
	ret po			; e0 ;70a6
	add a,l			; 85 ;70a7
	cp 0ffh		; fe ff ;70a8
	ld a,a			; 7f ;70aa
	nop			; 00 ;70ab
	ld b,003h		; 06 03 ;70ac
	rlca			; 07 ;70ae
	ld (bc),a			; 02 ;70af
	ld a,a			; 7f ;70b0
	add a,(hl)			; 86 ;70b1
	ccf			; 3f ;70b2
	jr c,l7091h		; 38 dc ;70b3
	call pe,sub_0e8ch		; ec 8c 0e ;70b5
	inc bc			; 03 ;70b8
l70b9h:
	nop			; 00 ;70b9
	ld (bc),a			; 02 ;70ba
	jr c,$-125		; 38 83 ;70bb
	jr nc,l712fh		; 30 70 ;70bd
	jr c,$+3		; 38 03 ;70bf
	nop			; 00 ;70c1
	add a,l			; 85 ;70c2
	jr c,l70b9h		; 38 f4 ;70c3
	.DB $ec			;70c5
l70c6h:
	.DB $8c $0e			;70c6
	inc bc			; 03 ;70c8
	nop			; 00 ;70c9
	nop			; 00 ;70ca
l70cbh:
	inc b			; 04 ;70cb
	nop			; 00 ;70cc
	add a,c			; 81 ;70cd
	djnz l70d6h		; 10 06 ;70ce
	nop			; 00 ;70d0
	ld (bc),a			; 02 ;70d1
	jr l70d9h		; 18 05 ;70d2
	nop			; 00 ;70d4
	add a,h			; 84 ;70d5
l70d6h:
	jr l7114h		; 18 3c ;70d6
	inc a			; 3c ;70d8
l70d9h:
	jr $+3		; 18 03 ;70d9
	nop			; 00 ;70db
	add a,c			; 81 ;70dc
	jr c,l70e3h		; 38 04 ;70dd
	ld a,h			; 7c ;70df
	add a,h			; 84 ;70e0
	jr c,l70e3h		; 38 00 ;70e1
l70e3h:
	jr c,l7161h		; 38 7c ;70e3
	inc b			; 04 ;70e5
	cp 082h		; fe 82 ;70e6
	ld a,h			; 7c ;70e8
	jr c,l70efh		; 38 04 ;70e9
	nop			; 00 ;70eb
	add a,c			; 81 ;70ec
	jr $+7		; 18 07 ;70ed
l70efh:
	nop			; 00 ;70ef
	ld (bc),a			; 02 ;70f0
	jr $+5		; 18 05 ;70f1
	nop			; 00 ;70f3
	add a,e			; 83 ;70f4
	jr $+60		; 18 3c ;70f5
	jr l70fdh		; 18 04 ;70f7
	nop			; 00 ;70f9
	add a,h			; 84 ;70fa
	jr c,l7179h		; 38 7c ;70fb
l70fdh:
	ld a,h			; 7c ;70fd
	jr c,l7102h		; 38 02 ;70fe
	nop			; 00 ;7100
	nop			; 00 ;7101
l7102h:
	inc b			; 04 ;7102
	nop			; 00 ;7103
	add a,c			; 81 ;7104
	djnz l710dh		; 10 06 ;7105
	nop			; 00 ;7107
	ld (bc),a			; 02 ;7108
	jr l7110h		; 18 05 ;7109
	nop			; 00 ;710b
	add a,h			; 84 ;710c
l710dh:
	jr l714bh		; 18 3c ;710d
	inc a			; 3c ;710f
l7110h:
	jr $+3		; 18 03 ;7110
	nop			; 00 ;7112
	add a,c			; 81 ;7113
l7114h:
	jr c,l711ah		; 38 04 ;7114
	ld a,h			; 7c ;7116
	add a,h			; 84 ;7117
	jr c,l711ah		; 38 00 ;7118
l711ah:
	jr c,l7198h		; 38 7c ;711a
	inc b			; 04 ;711c
	cp 082h		; fe 82 ;711d
	ld a,h			; 7c ;711f
	jr c,l7142h		; 38 20 ;7120
	nop			; 00 ;7122
	nop			; 00 ;7123
	inc b			; 04 ;7124
	nop			; 00 ;7125
	add a,c			; 81 ;7126
	djnz l712fh		; 10 06 ;7127
	nop			; 00 ;7129
	ld (bc),a			; 02 ;712a
	jr l7132h		; 18 05 ;712b
	nop			; 00 ;712d
	add a,h			; 84 ;712e
l712fh:
	jr $+60		; 18 3c ;712f
	inc a			; 3c ;7131
l7132h:
	jr $+3		; 18 03 ;7132
	nop			; 00 ;7134
	add a,c			; 81 ;7135
	jr c,l713ch		; 38 04 ;7136
	ld a,h			; 7c ;7138
	add a,h			; 84 ;7139
	jr c,l713ch		; 38 00 ;713a
l713ch:
	jr c,$+124		; 38 7c ;713c
	inc b			; 04 ;713e
	cp 082h		; fe 82 ;713f
	ld a,h			; 7c ;7141
l7142h:
	jr c,$+32		; 38 20 ;7142
sub_7144h:
	nop			; 00 ;7144
	nop			; 00 ;7145
	ld c,b			; 48 ;7146
	nop			; 00 ;7147
	nop			; 00 ;7148
	inc b			; 04 ;7149
	add a,b			; 80 ;714a
l714bh:
	jr nz,$+5		; 20 05 ;714b
	ld l,(hl)			; 6e ;714d
	ld (hl),c			; 71 ;714e
	push af			; f5 ;714f
	ld bc,l0d07h+1		; 01 08 0d ;7150
	add a,b			; 80 ;7153
	ld hl,0be05h		; 21 05 be ;7154
	ld (hl),c			; 71 ;7157
	push af			; f5 ;7158
	ld (bc),a			; 02 ;7159
	ld bc,0800bh		; 01 0b 80 ;715a
	ld (0ff05h),hl		; 22 05 ff ;715d
	ld (hl),c			; 71 ;7160
l7161h:
	push af			; f5 ;7161
	ld (bc),a			; 02 ;7162
	ld bc,0800bh		; 01 0b 80 ;7163
	inc hl			; 23 ;7166
	dec b			; 05 ;7167
	ld b,h			; 44 ;7168
	ld (hl),d			; 72 ;7169
	inc bc			; 03 ;716a
	ld bc,00d01h		; 01 01 0d ;716b
	and b			; a0 ;716e
	ld bc,0a09fh		; 01 9f a0 ;716f
	ld (bc),a			; 02 ;7172
	and b			; a0 ;7173
	ld bc,0a09fh		; 01 9f a0 ;7174
	ld (bc),a			; 02 ;7177
	and b			; a0 ;7178
l7179h:
	ld bc,0a09fh		; 01 9f a0 ;7179
	ld (bc),a			; 02 ;717c
	xor c			; a9 ;717d
	and l			; a5 ;717e
	and d			; a2 ;717f
	and b			; a0 ;7180
	sbc a,a			; 9f ;7181
	sbc a,(hl)			; 9e ;7182
	sbc a,e			; 9b ;7183
	sbc a,l			; 9d ;7184
	inc b			; 04 ;7185
	sbc a,c			; 99 ;7186
	ld (bc),a			; 02 ;7187
	and b			; a0 ;7188
	ld bc,0a09fh		; 01 9f a0 ;7189
	ld (bc),a			; 02 ;718c
	and b			; a0 ;718d
	ld bc,0a09fh		; 01 9f a0 ;718e
	ld (bc),a			; 02 ;7191
	and b			; a0 ;7192
	ld bc,0a09fh		; 01 9f a0 ;7193
	ld (bc),a			; 02 ;7196
	xor c			; a9 ;7197
l7198h:
	and l			; a5 ;7198
	and d			; a2 ;7199
	and b			; a0 ;719a
	and c			; a1 ;719b
	and d			; a2 ;719c
	and h			; a4 ;719d
	and l			; a5 ;719e
	inc b			; 04 ;719f
	and l			; a5 ;71a0
	xor c			; a9 ;71a1
	ld (bc),a			; 02 ;71a2
	xor c			; a9 ;71a3
	ld bc,0a9a9h		; 01 a9 a9 ;71a4
	ld b,0aah		; 06 aa ;71a7
	ld (bc),a			; 02 ;71a9
	xor c			; a9 ;71aa
	xor d			; aa ;71ab
	xor c			; a9 ;71ac
	xor c			; a9 ;71ad
	ld bc,0a9a9h		; 01 a9 a9 ;71ae
	ld b,0a7h		; 06 a7 ;71b1
	ld (bc),a			; 02 ;71b3
	and l			; a5 ;71b4
	and a			; a7 ;71b5
	xor c			; a9 ;71b6
	ld (bc),a			; 02 ;71b7
	xor c			; a9 ;71b8
	ld bc,0a9a9h		; 01 a9 a9 ;71b9
	inc c			; 0c ;71bc
	jp po,l0280h		; e2 80 02 ;71bd
	sbc a,c			; 99 ;71c0
	ld (bc),a			; 02 ;71c1
	and b			; a0 ;71c2
	sbc a,c			; 99 ;71c3
	and b			; a0 ;71c4
	sbc a,c			; 99 ;71c5
	and b			; a0 ;71c6
	sbc a,c			; 99 ;71c7
	and b			; a0 ;71c8
	sub h			; 94 ;71c9
	and b			; a0 ;71ca
	sub h			; 94 ;71cb
	and b			; a0 ;71cc
	sbc a,c			; 99 ;71cd
	and b			; a0 ;71ce
	sbc a,c			; 99 ;71cf
	and b			; a0 ;71d0
	sbc a,c			; 99 ;71d1
	and b			; a0 ;71d2
	sbc a,c			; 99 ;71d3
	and b			; a0 ;71d4
	sbc a,c			; 99 ;71d5
	and b			; a0 ;71d6
	sbc a,c			; 99 ;71d7
	and b			; a0 ;71d8
	sub h			; 94 ;71d9
	and b			; a0 ;71da
	sub h			; 94 ;71db
	sbc a,(hl)			; 9e ;71dc
	sbc a,c			; 99 ;71dd
	and b			; a0 ;71de
	sbc a,c			; 99 ;71df
	inc b			; 04 ;71e0
	and b			; a0 ;71e1
	ld (bc),a			; 02 ;71e2
	and b			; a0 ;71e3
	ld bc,0a0a0h		; 01 a0 a0 ;71e4
	ld b,0a2h		; 06 a2 ;71e7
	ld (bc),a			; 02 ;71e9
	and b			; a0 ;71ea
	and d			; a2 ;71eb
	and b			; a0 ;71ec
	and b			; a0 ;71ed
	ld bc,0a0a0h		; 01 a0 a0 ;71ee
	ld b,09eh		; 06 9e ;71f1
	ld (bc),a			; 02 ;71f3
	sbc a,l			; 9d ;71f4
	sbc a,(hl)			; 9e ;71f5
	and b			; a0 ;71f6
	and b			; a0 ;71f7
	ld bc,0e4a0h		; 01 a0 e4 ;71f8
	ld bc,00ca0h		; 01 a0 0c ;71fb
	jp po,l0280h		; e2 80 02 ;71fe
	call po,0990ah		; e4 0a 99 ;7201
	ld (bc),a			; 02 ;7204
	sbc a,l			; 9d ;7205
	sbc a,c			; 99 ;7206
	sbc a,l			; 9d ;7207
	sbc a,c			; 99 ;7208
	sbc a,l			; 9d ;7209
	sbc a,c			; 99 ;720a
	sbc a,l			; 9d ;720b
	sub h			; 94 ;720c
	sbc a,e			; 9b ;720d
	sub h			; 94 ;720e
	sbc a,e			; 9b ;720f
	sbc a,c			; 99 ;7210
	sbc a,l			; 9d ;7211
	sbc a,c			; 99 ;7212
	sbc a,l			; 9d ;7213
	sbc a,c			; 99 ;7214
	sbc a,l			; 9d ;7215
	sbc a,c			; 99 ;7216
	sbc a,l			; 9d ;7217
	sbc a,c			; 99 ;7218
	sbc a,l			; 9d ;7219
	sbc a,c			; 99 ;721a
	sbc a,l			; 9d ;721b
	sub h			; 94 ;721c
	sbc a,e			; 9b ;721d
	sub h			; 94 ;721e
	sbc a,e			; 9b ;721f
	sbc a,c			; 99 ;7220
	sbc a,l			; 9d ;7221
	sbc a,c			; 99 ;7222
	inc b			; 04 ;7223
	sbc a,c			; 99 ;7224
	ld (bc),a			; 02 ;7225
	sbc a,c			; 99 ;7226
	ld bc,09999h		; 01 99 99 ;7227
	ld b,099h		; 06 99 ;722a
	ld (bc),a			; 02 ;722c
	sbc a,c			; 99 ;722d
	sbc a,c			; 99 ;722e
	sbc a,c			; 99 ;722f
	sbc a,c			; 99 ;7230
	ld bc,09999h		; 01 99 99 ;7231
	ld b,099h		; 06 99 ;7234
	ld (bc),a			; 02 ;7236
	sbc a,c			; 99 ;7237
	sbc a,c			; 99 ;7238
	sbc a,c			; 99 ;7239
	sbc a,c			; 99 ;723a
	ld bc,0e499h		; 01 99 e4 ;723b
	ld bc,l0c99h		; 01 99 0c ;723e
	add a,b			; 80 ;7241
	ex af,af'			; 08 ;7242
	and 0e3h		; e6 e3 ;7243
	inc b			; 04 ;7245
	add a,b			; 80 ;7246
	ld (bc),a			; 02 ;7247
	pop hl			; e1 ;7248
	add hl,bc			; 09 ;7249
	call po,08d02h		; e4 02 8d ;724a
	inc b			; 04 ;724d
	pop hl			; e1 ;724e
	inc c			; 0c ;724f
	call po,00405h		; e4 05 04 ;7250
	pop hl			; e1 ;7253
	add hl,bc			; 09 ;7254
	call po,l0201h+1		; e4 02 02 ;7255
	ld (bc),a			; 02 ;7258
	pop hl			; e1 ;7259
	inc c			; 0c ;725a
	call po,00405h		; e4 05 04 ;725b
	call pe,l0400h		; ec 00 04 ;725e
	ld c,b			; 48 ;7261
	ld (hl),d			; 72 ;7262
	pop hl			; e1 ;7263
	add hl,bc			; 09 ;7264
	call po,l0102h		; e4 02 01 ;7265
	ld bc,l00ffh+2		; 01 01 01 ;7268
	pop hl			; e1 ;726b
	inc c			; 0c ;726c
	call po,l0205h		; e4 05 02 ;726d
	pop hl			; e1 ;7270
	add hl,bc			; 09 ;7271
	call po,l0102h		; e4 02 01 ;7272
	ld bc,0e102h		; 01 02 e1 ;7275
	inc c			; 0c ;7278
	call po,l0205h		; e4 05 02 ;7279
	ld (bc),a			; 02 ;727c
	ld (bc),a			; 02 ;727d
	call pe,l01feh+2		; ec 00 02 ;727e
	ld h,e			; 63 ;7281
	ld (hl),d			; 72 ;7282
	pop hl			; e1 ;7283
	add hl,bc			; 09 ;7284
	call po,l0102h		; e4 02 01 ;7285
	ld bc,l00ffh+2		; 01 01 01 ;7288
	pop hl			; e1 ;728b
	inc c			; 0c ;728c
	call po,l0205h		; e4 05 02 ;728d
	jp po,08003h		; e2 03 80 ;7290
	jr nz,l7299h		; 20 04 ;7293
	xor l			; ad ;7295
	ld (hl),d			; 72 ;7296
	rst 30h			; f7 ;7297
	inc bc			; 03 ;7298
l7299h:
	dec b			; 05 ;7299
	dec c			; 0d ;729a
	add a,b			; 80 ;729b
	ld hl,0bb04h		; 21 04 bb ;729c
	ld (hl),d			; 72 ;729f
	rst 30h			; f7 ;72a0
	inc b			; 04 ;72a1
	dec b			; 05 ;72a2
	dec bc			; 0b ;72a3
	add a,b			; 80 ;72a4
	ld (0cb04h),hl		; 22 04 cb ;72a5
	ld (hl),d			; 72 ;72a8
	rst 30h			; f7 ;72a9
	inc b			; 04 ;72aa
	dec b			; 05 ;72ab
	dec bc			; 0b ;72ac
	xor h			; ac ;72ad
	inc b			; 04 ;72ae
	xor h			; ac ;72af
	or b			; b0 ;72b0
	or b			; b0 ;72b1
	or c			; b1 ;72b2
	ld (bc),a			; 02 ;72b3
	xor (hl)			; ae ;72b4
	xor (hl)			; ae ;72b5
	call po,0b101h		; e4 01 b1 ;72b6
	ld a,(bc)			; 0a ;72b9
	jp po,l04a9h		; e2 a9 04 ;72ba
	xor c			; a9 ;72bd
	and a			; a7 ;72be
	and a			; a7 ;72bf
	xor c			; a9 ;72c0
	ld (bc),a			; 02 ;72c1
	xor c			; a9 ;72c2
	xor c			; a9 ;72c3
	call po,0a901h		; e4 01 a9 ;72c4
	ld a,(bc)			; 0a ;72c7
	add a,b			; 80 ;72c8
	ex af,af'			; 08 ;72c9
	and 099h		; e6 99 ;72ca
	ld (bc),a			; 02 ;72cc
	and b			; a0 ;72cd
	sbc a,l			; 9d ;72ce
	and b			; a0 ;72cf
	sub h			; 94 ;72d0
	sbc a,(hl)			; 9e ;72d1
	sbc a,e			; 9b ;72d2
	sbc a,(hl)			; 9e ;72d3
	sbc a,c			; 99 ;72d4
	and b			; a0 ;72d5
	sbc a,l			; 9d ;72d6
	and b			; a0 ;72d7
	call po,09901h		; e4 01 99 ;72d8
	ex af,af'			; 08 ;72db
	jp po,08003h		; e2 03 80 ;72dc
	jr nz,$+4		; 20 04 ;72df
	ld sp,hl			; f9 ;72e1
	ld (hl),d			; 72 ;72e2
	ld sp,hl			; f9 ;72e3
	ld bc,l0d07h+1		; 01 08 0d ;72e4
	add a,b			; 80 ;72e7
	ld hl,l0704h		; 21 04 07 ;72e8
	ld (hl),e			; 73 ;72eb
	ld sp,hl			; f9 ;72ec
	ld (bc),a			; 02 ;72ed
	ld b,00ah		; 06 0a ;72ee
	add a,b			; 80 ;72f0
	ld (l1804h),hl		; 22 04 18 ;72f1
	ld (hl),e			; 73 ;72f4
	ld sp,hl			; f9 ;72f5
	ld (bc),a			; 02 ;72f6
	ld b,009h		; 06 09 ;72f7
	and l			; a5 ;72f9
	inc b			; 04 ;72fa
	and b			; a0 ;72fb
	sbc a,l			; 9d ;72fc
	sbc a,c			; 99 ;72fd
	and b			; a0 ;72fe
	ld (bc),a			; 02 ;72ff
	sbc a,(hl)			; 9e ;7300
	sbc a,l			; 9d ;7301
	sbc a,e			; 9b ;7302
	sbc a,c			; 99 ;7303
	inc b			; 04 ;7304
	add a,b			; 80 ;7305
	jp po,l0299h		; e2 99 02 ;7306
	and b			; a0 ;7309
	sbc a,c			; 99 ;730a
	and b			; a0 ;730b
	sbc a,c			; 99 ;730c
	and b			; a0 ;730d
	sbc a,c			; 99 ;730e
	and b			; a0 ;730f
	sub h			; 94 ;7310
	and b			; a0 ;7311
	sub h			; 94 ;7312
	sbc a,(hl)			; 9e ;7313
	sbc a,l			; 9d ;7314
	inc b			; 04 ;7315
	sbc a,c			; 99 ;7316
	jp po,l0299h		; e2 99 02 ;7317
	sbc a,l			; 9d ;731a
	sbc a,c			; 99 ;731b
	sbc a,l			; 9d ;731c
	sbc a,c			; 99 ;731d
	sbc a,l			; 9d ;731e
	sbc a,c			; 99 ;731f
	sbc a,l			; 9d ;7320
	sub h			; 94 ;7321
	sbc a,e			; 9b ;7322
	sub h			; 94 ;7323
	sbc a,b			; 98 ;7324
	sbc a,c			; 99 ;7325
	inc b			; 04 ;7326
	sbc a,c			; 99 ;7327
	add a,b			; 80 ;7328
	ex af,af'			; 08 ;7329
	and 003h		; e6 03 ;732a
	add a,b			; 80 ;732c
	jr nz,l7334h		; 20 05 ;732d
	ld b,a			; 47 ;732f
	ld (hl),e			; 73 ;7330
	rst 30h			; f7 ;7331
	inc b			; 04 ;7332
	ex af,af'			; 08 ;7333
l7334h:
	dec c			; 0d ;7334
	add a,b			; 80 ;7335
	ld hl,l5705h		; 21 05 57 ;7336
	ld (hl),e			; 73 ;7339
	rst 30h			; f7 ;733a
	inc b			; 04 ;733b
l733ch:
	ex af,af'			; 08 ;733c
	dec bc			; 0b ;733d
	add a,b			; 80 ;733e
	ld (l6705h),hl		; 22 05 67 ;733f
	ld (hl),e			; 73 ;7342
	rst 30h			; f7 ;7343
	inc b			; 04 ;7344
	ex af,af'			; 08 ;7345
	dec bc			; 0b ;7346
	xor h			; ac ;7347
	inc b			; 04 ;7348
	xor h			; ac ;7349
	inc bc			; 03 ;734a
	xor h			; ac ;734b
	ld bc,002b0h		; 01 b0 02 ;734c
	or b			; b0 ;734f
	inc b			; 04 ;7350
	or b			; b0 ;7351
	ld (bc),a			; 02 ;7352
	or c			; b1 ;7353
	or c			; b1 ;7354
	ld c,0e2h		; 0e e2 ;7355
	xor c			; a9 ;7357
	inc b			; 04 ;7358
	xor c			; a9 ;7359
	inc bc			; 03 ;735a
	xor c			; a9 ;735b
	ld bc,002a7h		; 01 a7 02 ;735c
	and a			; a7 ;735f
	inc b			; 04 ;7360
	and a			; a7 ;7361
	ld (bc),a			; 02 ;7362
	xor c			; a9 ;7363
	xor c			; a9 ;7364
	ld c,0e2h		; 0e e2 ;7365
	and l			; a5 ;7367
	inc b			; 04 ;7368
	and l			; a5 ;7369
	inc bc			; 03 ;736a
	and l			; a5 ;736b
	ld bc,002a0h		; 01 a0 02 ;736c
	and b			; a0 ;736f
	inc b			; 04 ;7370
	and b			; a0 ;7371
	ld (bc),a			; 02 ;7372
	and l			; a5 ;7373
	and h			; a4 ;7374
	ld bc,0a0a2h		; 01 a2 a0 ;7375
	sbc a,(hl)			; 9e ;7378
	sbc a,l			; 9d ;7379
	sbc a,e			; 9b ;737a
	sbc a,c			; 99 ;737b
	ex af,af'			; 08 ;737c
	add a,b			; 80 ;737d
	ex af,af'			; 08 ;737e
	and 003h		; e6 03 ;737f
	add a,b			; 80 ;7381
	jr nz,l738ah		; 20 06 ;7382
	sbc a,h			; 9c ;7384
	ld (hl),e			; 73 ;7385
	push af			; f5 ;7386
	inc b			; 04 ;7387
	add hl,bc			; 09 ;7388
	dec c			; 0d ;7389
l738ah:
	add a,b			; 80 ;738a
	ld hl,0b706h		; 21 06 b7 ;738b
	ld (hl),e			; 73 ;738e
	push af			; f5 ;738f
	inc bc			; 03 ;7390
	ld bc,0800bh		; 01 0b 80 ;7391
	ld (0c306h),hl		; 22 06 c3 ;7394
	ld (hl),e			; 73 ;7397
	push af			; f5 ;7398
	inc bc			; 03 ;7399
	ld bc,0b00bh		; 01 0b b0 ;739a
	ld (bc),a			; 02 ;739d
	or c			; b1 ;739e
	ld bc,002abh		; 01 ab 02 ;739f
	and b			; a0 ;73a2
	ld bc,002a7h+1		; 01 a8 02 ;73a3
	xor c			; a9 ;73a6
	ld bc,sub_get_joy_p2+1		; 01 a4 02 ;73a7
	and l			; a5 ;73aa
	ld bc,002a0h		; 01 a0 02 ;73ab
	and b			; a0 ;73ae
	ld bc,0a2a0h		; 01 a0 a2 ;73af
	and h			; a4 ;73b2
	and l			; a5 ;73b3
	inc bc			; 03 ;73b4
	and l			; a5 ;73b5
	jp po,l069dh		; e2 9d 06 ;73b6
	call po,09d0ah		; e4 0a 9d ;73b9
	inc bc			; 03 ;73bc
	sbc a,l			; 9d ;73bd
	sbc a,(hl)			; 9e ;73be
	sbc a,(hl)			; 9e ;73bf
	sbc a,l			; 9d ;73c0
	sbc a,l			; 9d ;73c1
	jp po,l0699h		; e2 99 06 ;73c2
	call po,0990ah		; e4 0a 99 ;73c5
	inc bc			; 03 ;73c8
	sbc a,c			; 99 ;73c9
	sub h			; 94 ;73ca
	sub h			; 94 ;73cb
	sbc a,c			; 99 ;73cc
	sbc a,c			; 99 ;73cd
	add a,b			; 80 ;73ce
	ex af,af'			; 08 ;73cf
	and 004h		; e6 04 ;73d0
	add a,b			; 80 ;73d2
	jr nz,$+5		; 20 05 ;73d3
	or 073h		; f6 73 ;73d5
	rst 30h			; f7 ;73d7
	ld bc,l0d07h+1		; 01 08 0d ;73d8
	add a,b			; 80 ;73db
	ld hl,l2203h+2		; 21 05 22 ;73dc
	ld (hl),h			; 74 ;73df
	rst 30h			; f7 ;73e0
	ld bc,00b08h		; 01 08 0b ;73e1
	add a,b			; 80 ;73e4
	ld (l4e05h),hl		; 22 05 4e ;73e5
	ld (hl),h			; 74 ;73e8
	rst 30h			; f7 ;73e9
	ld (bc),a			; 02 ;73ea
	add hl,bc			; 09 ;73eb
	dec bc			; 0b ;73ec
	add a,b			; 80 ;73ed
	inc hl			; 23 ;73ee
	dec b			; 05 ;73ef
	add a,b			; 80 ;73f0
	ld (hl),h			; 74 ;73f1
	inc bc			; 03 ;73f2
	ld bc,00d01h		; 01 01 0d ;73f3
	xor h			; ac ;73f6
	inc b			; 04 ;73f7
	xor h			; ac ;73f8
	inc bc			; 03 ;73f9
	xor h			; ac ;73fa
	ld bc,002aeh		; 01 ae 02 ;73fb
	xor (hl)			; ae ;73fe
	inc b			; 04 ;73ff
l7400h:
	xor (hl)			; ae ;7400
	ld (bc),a			; 02 ;7401
	xor h			; ac ;7402
	inc b			; 04 ;7403
	xor h			; ac ;7404
	inc bc			; 03 ;7405
	xor h			; ac ;7406
	ld bc,002aah		; 01 aa 02 ;7407
	xor d			; aa ;740a
	inc b			; 04 ;740b
	xor d			; aa ;740c
	ld (bc),a			; 02 ;740d
	xor h			; ac ;740e
	inc b			; 04 ;740f
	xor h			; ac ;7410
	inc bc			; 03 ;7411
	xor h			; ac ;7412
	ld bc,002b0h		; 01 b0 02 ;7413
	or b			; b0 ;7416
	inc b			; 04 ;7417
	or b			; b0 ;7418
	ld (bc),a			; 02 ;7419
	or c			; b1 ;741a
	ld (bc),a			; 02 ;741b
	or c			; b1 ;741c
	ld bc,0b1b1h		; 01 b1 b1 ;741d
	inc c			; 0c ;7420
	jp po,l04a9h		; e2 a9 04 ;7421
	xor c			; a9 ;7424
	inc bc			; 03 ;7425
	xor c			; a9 ;7426
	ld bc,002aah		; 01 aa 02 ;7427
	xor d			; aa ;742a
	inc b			; 04 ;742b
	xor d			; aa ;742c
	ld (bc),a			; 02 ;742d
	xor c			; a9 ;742e
	inc b			; 04 ;742f
	xor c			; a9 ;7430
	inc bc			; 03 ;7431
	xor c			; a9 ;7432
	ld bc,002a7h		; 01 a7 02 ;7433
	and a			; a7 ;7436
	inc b			; 04 ;7437
	and a			; a7 ;7438
	ld (bc),a			; 02 ;7439
	xor c			; a9 ;743a
	inc b			; 04 ;743b
	xor c			; a9 ;743c
	inc bc			; 03 ;743d
	xor c			; a9 ;743e
	ld bc,002a7h		; 01 a7 02 ;743f
	and a			; a7 ;7442
	inc b			; 04 ;7443
	and a			; a7 ;7444
	ld (bc),a			; 02 ;7445
	xor c			; a9 ;7446
	ld (bc),a			; 02 ;7447
	xor c			; a9 ;7448
	ld bc,0a9a9h		; 01 a9 a9 ;7449
	inc c			; 0c ;744c
	jp po,l04a5h		; e2 a5 04 ;744d
	and l			; a5 ;7450
	inc bc			; 03 ;7451
	and l			; a5 ;7452
	ld bc,0029eh		; 01 9e 02 ;7453
	sbc a,(hl)			; 9e ;7456
	inc b			; 04 ;7457
	sbc a,(hl)			; 9e ;7458
	ld (bc),a			; 02 ;7459
	and l			; a5 ;745a
	inc b			; 04 ;745b
	and l			; a5 ;745c
	inc bc			; 03 ;745d
	and l			; a5 ;745e
	ld bc,002a0h		; 01 a0 02 ;745f
	and b			; a0 ;7462
	inc b			; 04 ;7463
	and b			; a0 ;7464
	ld (bc),a			; 02 ;7465
	and l			; a5 ;7466
	inc b			; 04 ;7467
	and l			; a5 ;7468
	inc bc			; 03 ;7469
	and l			; a5 ;746a
	ld bc,002a0h		; 01 a0 02 ;746b
	and b			; a0 ;746e
	inc b			; 04 ;746f
	and b			; a0 ;7470
	ld (bc),a			; 02 ;7471
	and l			; a5 ;7472
	ld (bc),a			; 02 ;7473
	and h			; a4 ;7474
	ld bc,0a0a2h		; 01 a2 a0 ;7475
	and c			; a1 ;7478
	and d			; a2 ;7479
	and h			; a4 ;747a
	and l			; a5 ;747b
	ex af,af'			; 08 ;747c
	add a,b			; 80 ;747d
	ex af,af'			; 08 ;747e
	and 0e3h		; e6 e3 ;747f
	inc b			; 04 ;7481
	pop hl			; e1 ;7482
	add hl,bc			; 09 ;7483
	call po,08d02h		; e4 02 8d ;7484
	inc b			; 04 ;7487
	pop hl			; e1 ;7488
	inc c			; 0c ;7489
	call po,00405h		; e4 05 04 ;748a
	pop hl			; e1 ;748d
	add hl,bc			; 09 ;748e
	call po,l0201h+1		; e4 02 02 ;748f
	ld (bc),a			; 02 ;7492
	pop hl			; e1 ;7493
	inc c			; 0c ;7494
	call po,00405h		; e4 05 04 ;7495
	call pe,l0400h		; ec 00 04 ;7498
	add a,d			; 82 ;749b
	ld (hl),h			; 74 ;749c
	jp po,08004h		; e2 04 80 ;749d
	jr nz,l74a6h		; 20 04 ;74a0
	jp 0f774h		; c3 74 f7 ;74a2
	inc b			; 04 ;74a5
l74a6h:
	add hl,bc			; 09 ;74a6
	dec c			; 0d ;74a7
	add a,b			; 80 ;74a8
	ld hl,0e904h		; 21 04 e9 ;74a9
	ld (hl),h			; 74 ;74ac
	rst 30h			; f7 ;74ad
	inc b			; 04 ;74ae
	ld bc,0800bh		; 01 0b 80 ;74af
	ld (0f804h),hl		; 22 04 f8 ;74b2
	ld (hl),h			; 74 ;74b5
	rst 30h			; f7 ;74b6
	inc b			; 04 ;74b7
	ld bc,0800bh		; 01 0b 80 ;74b8
	inc hl			; 23 ;74bb
	inc b			; 04 ;74bc
	add hl,bc			; 09 ;74bd
	ld (hl),l			; 75 ;74be
	inc bc			; 03 ;74bf
	inc b			; 04 ;74c0
	ex af,af'			; 08 ;74c1
	dec bc			; 0b ;74c2
	or c			; b1 ;74c3
	ld (bc),a			; 02 ;74c4
	or b			; b0 ;74c5
	or c			; b1 ;74c6
	xor h			; ac ;74c7
	xor e			; ab ;74c8
	xor h			; ac ;74c9
	xor c			; a9 ;74ca
	xor b			; a8 ;74cb
	xor c			; a9 ;74cc
	and l			; a5 ;74cd
	and h			; a4 ;74ce
	and l			; a5 ;74cf
	xor h			; ac ;74d0
	inc b			; 04 ;74d1
	xor h			; ac ;74d2
	ld (bc),a			; 02 ;74d3
	xor h			; ac ;74d4
	xor d			; aa ;74d5
	xor c			; a9 ;74d6
	and a			; a7 ;74d7
	inc b			; 04 ;74d8
	and a			; a7 ;74d9
	ld (bc),a			; 02 ;74da
	and b			; a0 ;74db
	and d			; a2 ;74dc
	and h			; a4 ;74dd
	and l			; a5 ;74de
	ld b,0a5h		; 06 a5 ;74df
	ld bc,0aca9h		; 01 a9 ac ;74e1
	or c			; b1 ;74e4
	inc bc			; 03 ;74e5
	and l			; a5 ;74e6
	ld b,0e2h		; 06 e2 ;74e7
	sbc a,l			; 9d ;74e9
	inc c			; 0c ;74ea
	call po,09d0ah		; e4 0a 9d ;74eb
	ld b,09dh		; 06 9d ;74ee
	sbc a,e			; 9b ;74f0
	sbc a,e			; 9b ;74f1
	sbc a,(hl)			; 9e ;74f2
	sbc a,(hl)			; 9e ;74f3
	sbc a,c			; 99 ;74f4
	sbc a,l			; 9d ;74f5
	sbc a,c			; 99 ;74f6
	jp po,l0c99h		; e2 99 0c ;74f7
	call po,0990ah		; e4 0a 99 ;74fa
	ld b,099h		; 06 99 ;74fd
	sub h			; 94 ;74ff
	sub h			; 94 ;7500
	sub h			; 94 ;7501
	sub h			; 94 ;7502
	sbc a,c			; 99 ;7503
l7504h:
	sbc a,c			; 99 ;7504
	sbc a,c			; 99 ;7505
	add a,b			; 80 ;7506
	ex af,af'			; 08 ;7507
	and 0e3h		; e6 e3 ;7508
	inc b			; 04 ;750a
	pop hl			; e1 ;750b
	add hl,bc			; 09 ;750c
	call po,08d02h		; e4 02 8d ;750d
	inc b			; 04 ;7510
	ld (bc),a			; 02 ;7511
	pop hl			; e1 ;7512
	inc c			; 0c ;7513
	call po,00405h		; e4 05 04 ;7514
	pop hl			; e1 ;7517
	add hl,bc			; 09 ;7518
	call po,l0201h+1		; e4 02 02 ;7519
	call pe,sub_0600h		; ec 00 06 ;751c
	dec bc			; 0b ;751f
	ld (hl),l			; 75 ;7520
	jp po,08003h		; e2 03 80 ;7521
	jr nz,$+4		; 20 04 ;7524
	ld a,075h		; 3e 75 ;7526
	nop			; 00 ;7528
	ld bc,sub_0e04h		; 01 04 0e ;7529
	add a,b			; 80 ;752c
	ld hl,l5a04h		; 21 04 5a ;752d
	ld (hl),l			; 75 ;7530
	nop			; 00 ;7531
	ld bc,l0d03h+2		; 01 05 0d ;7532
	add a,b			; 80 ;7535
	ld (l7504h),hl		; 22 04 75 ;7536
	ld (hl),l			; 75 ;7539
	nop			; 00 ;753a
	nop			; 00 ;753b
	inc bc			; 03 ;753c
	dec c			; 0d ;753d
	and b			; a0 ;753e
	ld (bc),a			; 02 ;753f
	ld (bc),a			; 02 ;7540
	sbc a,(hl)			; 9e ;7541
	inc b			; 04 ;7542
	sbc a,l			; 9d ;7543
	ld (bc),a			; 02 ;7544
	ld (bc),a			; 02 ;7545
	sbc a,(hl)			; 9e ;7546
	inc b			; 04 ;7547
	and b			; a0 ;7548
	ld (bc),a			; 02 ;7549
	ld (bc),a			; 02 ;754a
	ld (bc),a			; 02 ;754b
	ld b,080h		; 06 80 ;754c
	inc b			; 04 ;754e
	sbc a,e			; 9b ;754f
	inc b			; 04 ;7550
	inc b			; 04 ;7551
	inc b			; 04 ;7552
	sbc a,l			; 9d ;7553
	sbc a,c			; 99 ;7554
	ld (bc),a			; 02 ;7555
	ld (bc),a			; 02 ;7556
	ld (bc),a			; 02 ;7557
	inc b			; 04 ;7558
	jp po,0029dh		; e2 9d 02 ;7559
	ld (bc),a			; 02 ;755c
	sbc a,e			; 9b ;755d
	inc b			; 04 ;755e
	sbc a,c			; 99 ;755f
	ld (bc),a			; 02 ;7560
	ld (bc),a			; 02 ;7561
	inc b			; 04 ;7562
	sbc a,l			; 9d ;7563
	ld (bc),a			; 02 ;7564
	ld (bc),a			; 02 ;7565
	ld (bc),a			; 02 ;7566
	ld b,080h		; 06 80 ;7567
	inc b			; 04 ;7569
	sbc a,b			; 98 ;756a
	inc b			; 04 ;756b
	inc b			; 04 ;756c
	inc b			; 04 ;756d
	sbc a,c			; 99 ;756e
	sub (hl)			; 96 ;756f
	ld (bc),a			; 02 ;7570
	ld (bc),a			; 02 ;7571
	ld (bc),a			; 02 ;7572
	inc b			; 04 ;7573
	jp po,l0281h		; e2 81 02 ;7574
	adc a,l			; 8d ;7577
	call pe,00800h		; ec 00 08 ;7578
	ld (hl),l			; 75 ;757b
	ld (hl),l			; 75 ;757c
	adc a,b			; 88 ;757d
	sub h			; 94 ;757e
	adc a,b			; 88 ;757f
	sub h			; 94 ;7580
	adc a,b			; 88 ;7581
	sub h			; 94 ;7582
	adc a,b			; 88 ;7583
	sub h			; 94 ;7584
	add a,c			; 81 ;7585
	adc a,l			; 8d ;7586
	add a,c			; 81 ;7587
	adc a,l			; 8d ;7588
	add a,b			; 80 ;7589
	ex af,af'			; 08 ;758a
	and 002h		; e6 02 ;758b
	xor b			; a8 ;758d
	ld hl,09f06h		; 21 06 9f ;758e
	ld (hl),l			; 75 ;7591
	nop			; 00 ;7592
	nop			; 00 ;7593
	dec b			; 05 ;7594
	ld c,0a8h		; 0e a8 ;7595
	ld (0a506h),hl		; 22 06 a5 ;7597
	ld (hl),l			; 75 ;759a
	nop			; 00 ;759b
	nop			; 00 ;759c
	ld b,00dh		; 06 0d ;759d
	ld bc,l0102h+1		; 01 03 01 ;759f
	ld (bc),a			; 02 ;75a2
	ld (bc),a			; 02 ;75a3
	jp po,0f001h		; e2 01 f0 ;75a4
	ld bc,002efh		; 01 ef 02 ;75a7
	jp po,0a802h		; e2 02 a8 ;75aa
	ld hl,0be06h		; 21 06 be ;75ad
	ld (hl),l			; 75 ;75b0
	nop			; 00 ;75b1
	nop			; 00 ;75b2
	dec b			; 05 ;75b3
sub_75b4h:
	ld c,0a8h		; 0e a8 ;75b4
	ld (0d406h),hl		; 22 06 d4 ;75b6
	ld (hl),l			; 75 ;75b9
	nop			; 00 ;75ba
	nop			; 00 ;75bb
	ld b,00dh		; 06 0d ;75bc
	ld bc,00150h		; 01 50 01 ;75be
	ld d,d			; 52 ;75c1
	ld (bc),a			; 02 ;75c2
	call po,0e100h		; e4 00 e1 ;75c3
	dec bc			; 0b ;75c6
	ret po			; e0 ;75c7
	ld bc,08002h		; 01 02 80 ;75c8
	ld bc,l4c01h		; 01 01 4c ;75cb
	ld (bc),a			; 02 ;75ce
	ld (bc),a			; 02 ;75cf
	ld (bc),a			; 02 ;75d0
	ld (bc),a			; 02 ;75d1
	ld a,(bc)			; 0a ;75d2
	jp po,start+2		; e2 02 00 ;75d3
	ld (bc),a			; 02 ;75d6
	ld (bc),a			; 02 ;75d7
	ld (bc),a			; 02 ;75d8
	call po,0ed00h		; e4 00 ed ;75d9
	ld bc,l0ee1h		; 01 e1 0e ;75dc
	ret po			; e0 ;75df
	ld bc,start+2		; 01 02 00 ;75e0
	nop			; 00 ;75e3
	rrca			; 0f ;75e4
	ld c,h			; 4c ;75e5
	ld bc,l010fh+1		; 01 10 01 ;75e6
	jr nc,$+10		; 30 0a ;75e9
	jp po,0a003h		; e2 03 a0 ;75eb
	jr nz,l75f3h		; 20 03 ;75ee
	ex af,af'			; 08 ;75f0
	halt			; 76 ;75f1
	nop			; 00 ;75f2
l75f3h:
	nop			; 00 ;75f3
	ld bc,0a00ah		; 01 0a a0 ;75f4
	ld hl,00c03h		; 21 03 0c ;75f7
	halt			; 76 ;75fa
	inc bc			; 03 ;75fb
	ld bc,00a00h		; 01 00 0a ;75fc
	and b			; a0 ;75ff
l7600h:
	inc hl			; 23 ;7600
	inc bc			; 03 ;7601
	djnz l767ah		; 10 76 ;7602
	inc bc			; 03 ;7604
	ld bc,l0a08h		; 01 08 0a ;7605
	add a,c			; 81 ;7608
	cp l			; bd ;7609
	ld b,0e2h		; 06 e2 ;760a
	and l			; a5 ;760c
	or c			; b1 ;760d
	inc b			; 04 ;760e
	jp po,007e3h		; e2 e3 07 ;760f
	xor e			; ab ;7612
	or e			; b3 ;7613
	inc b			; 04 ;7614
	rst 28h			; ef ;7615
	ld (bc),a			; 02 ;7616
	and b			; a0 ;7617
	ld hl,02901h		; 21 01 29 ;7618
	halt			; 76 ;761b
	inc bc			; 03 ;761c
	ld bc,l0e01h		; 01 01 0e ;761d
	and b			; a0 ;7620
	ld (02901h),hl		; 22 01 29 ;7621
	halt			; 76 ;7624
	ld (bc),a			; 02 ;7625
	ld bc,l0e01h		; 01 01 0e ;7626
	and l			; a5 ;7629
	and h			; a4 ;762a
	inc bc			; 03 ;762b
	and d			; a2 ;762c
	and c			; a1 ;762d
	inc bc			; 03 ;762e
	sbc a,(hl)			; 9e ;762f
	sbc a,l			; 9d ;7630
	ld b,0e2h		; 06 e2 ;7631
	inc bc			; 03 ;7633
	xor b			; a8 ;7634
	jr nz,l7638h		; 20 01 ;7635
	ld c,a			; 4f ;7637
l7638h:
	halt			; 76 ;7638
	nop			; 00 ;7639
	nop			; 00 ;763a
	ld (bc),a			; 02 ;763b
	dec c			; 0d ;763c
	xor b			; a8 ;763d
	ld hl,l5501h		; 21 01 55 ;763e
	halt			; 76 ;7641
	nop			; 00 ;7642
	nop			; 00 ;7643
	ld (bc),a			; 02 ;7644
	dec c			; 0d ;7645
	xor b			; a8 ;7646
	inc hl			; 23 ;7647
	ld bc,l765bh		; 01 5b 76 ;7648
	nop			; 00 ;764b
	nop			; 00 ;764c
	ld (bc),a			; 02 ;764d
	rrca			; 0f ;764e
	ld (bc),a			; 02 ;764f
	jr nz,l7654h		; 20 02 ;7650
	jr nc,$+6		; 30 06 ;7652
l7654h:
	jp po,l4002h		; e2 02 40 ;7654
	ld (bc),a			; 02 ;7657
	ld d,b			; 50 ;7658
	ld b,0e2h		; 06 e2 ;7659
l765bh:
	ex (sp),hl			; e3 ;765b
	rlca			; 07 ;765c
	nop			; 00 ;765d
	ld b,b			; 40 ;765e
	nop			; 00 ;765f
	ld d,b			; 50 ;7660
	ld (bc),a			; 02 ;7661
	nop			; 00 ;7662
	nop			; 00 ;7663
	nop			; 00 ;7664
	nop			; 00 ;7665
	inc b			; 04 ;7666
	jp po,08802h		; e2 02 88 ;7667
	ld hl,07b02h		; 21 02 7b ;766a
	halt			; 76 ;766d
	inc bc			; 03 ;766e
	ld bc,l0e03h		; 01 03 0e ;766f
	add a,b			; 80 ;7672
	inc hl			; 23 ;7673
	ld (bc),a			; 02 ;7674
	add a,d			; 82 ;7675
	halt			; 76 ;7676
	inc bc			; 03 ;7677
	nop			; 00 ;7678
	inc bc			; 03 ;7679
l767ah:
	dec c			; 0d ;767a
	ld bc,00220h		; 01 20 02 ;767b
	nop			; 00 ;767e
	ret po			; e0 ;767f
	ld b,0e2h		; 06 e2 ;7680
	ex (sp),hl			; e3 ;7682
	rlca			; 07 ;7683
	adc a,l			; 8d ;7684
	ld (bc),a			; 02 ;7685
	or c			; b1 ;7686
	ld b,0e2h		; 06 e2 ;7687
	ld (bc),a			; 02 ;7689
	xor b			; a8 ;768a
	ld hl,09c02h		; 21 02 9c ;768b
	halt			; 76 ;768e
	inc bc			; 03 ;768f
	ld bc,l0e01h		; 01 01 0e ;7690
	xor b			; a8 ;7693
	ld (0ac02h),hl		; 22 02 ac ;7694
	halt			; 76 ;7697
	inc bc			; 03 ;7698
	nop			; 00 ;7699
	ld bc,l010dh		; 01 0d 01 ;769a
	nop			; 00 ;769d
	nop			; 00 ;769e
	jr nc,l76a5h		; 30 04 ;769f
	call pe,l0400h		; ec 00 04 ;76a1
	sbc a,h			; 9c ;76a4
l76a5h:
	halt			; 76 ;76a5
	nop			; 00 ;76a6
	ld b,b			; 40 ;76a7
	nop			; 00 ;76a8
	jr nc,l76b4h		; 30 09 ;76a9
	jp po,l3000h+1		; e2 01 30 ;76ab
	ld bc,00400h		; 01 00 04 ;76ae
	call pe,l0400h		; ec 00 04 ;76b1
l76b4h:
	xor h			; ac ;76b4
	halt			; 76 ;76b5
	nop			; 00 ;76b6
	ld h,b			; 60 ;76b7
	nop			; 00 ;76b8
	ld b,e			; 43 ;76b9
	add hl,bc			; 09 ;76ba
	jp po,08001h		; e2 01 80 ;76bb
	jr nz,l76c2h		; 20 02 ;76be
	add a,076h		; c6 76 ;76c0
l76c2h:
	inc bc			; 03 ;76c2
	nop			; 00 ;76c3
	ld bc,08d0bh		; 01 0b 8d ;76c4
	ld bc,001e2h		; 01 e2 01 ;76c7
	and b			; a0 ;76ca
	jr nz,$+1		; 20 01 ;76cb
	out (076h),a		; d3 76 ;76cd
	inc bc			; 03 ;76cf
	nop			; 00 ;76d0
	ld bc,0910bh		; 01 0b 91 ;76d1
	sub d			; 92 ;76d4
	inc bc			; 03 ;76d5
	jp po,0a802h		; e2 02 a8 ;76d6
	ld hl,0ea01h		; 21 01 ea ;76d9
	halt			; 76 ;76dc
	inc bc			; 03 ;76dd
	nop			; 00 ;76de
	nop			; 00 ;76df
	dec bc			; 0b ;76e0
	xor b			; a8 ;76e1
	ld (0f501h),hl		; 22 01 f5 ;76e2
	halt			; 76 ;76e5
	inc bc			; 03 ;76e6
	ld bc,l0e00h		; 01 00 0e ;76e7
	ld (bc),a			; 02 ;76ea
	ld (bc),a			; 02 ;76eb
	ld (bc),a			; 02 ;76ec
	ld (bc),a			; 02 ;76ed
	ld a,(bc)			; 0a ;76ee
	ld (bc),a			; 02 ;76ef
	ld bc,08002h		; 01 02 80 ;76f0
	ld h,0e2h		; 26 e2 ;76f3
	ld bc,l010fh+1		; 01 10 01 ;76f5
	jr nc,l7704h		; 30 0a ;76f8
	ld bc,l022fh+1		; 01 30 02 ;76fa
	nop			; 00 ;76fd
	ld h,0e2h		; 26 e2 ;76fe
	inc bc			; 03 ;7700
	adc a,b			; 88 ;7701
	jr nz,l7705h		; 20 01 ;7702
l7704h:
	inc e			; 1c ;7704
l7705h:
	ld (hl),a			; 77 ;7705
	nop			; 00 ;7706
	ld (bc),a			; 02 ;7707
	inc bc			; 03 ;7708
	ld a,(bc)			; 0a ;7709
	adc a,b			; 88 ;770a
	ld hl,l3500h+1		; 21 01 35 ;770b
	ld (hl),a			; 77 ;770e
	nop			; 00 ;770f
	ld bc,l0d03h		; 01 03 0d ;7710
	adc a,b			; 88 ;7713
	ld (l4e01h),hl		; 22 01 4e ;7714
	ld (hl),a			; 77 ;7717
	nop			; 00 ;7718
	ld (bc),a			; 02 ;7719
	inc bc			; 03 ;771a
	ld a,(bc)			; 0a ;771b
	nop			; 00 ;771c
	ld d,b			; 50 ;771d
	ld bc,l4000h		; 01 00 40 ;771e
	ld bc,l3000h		; 01 00 30 ;7721
	ld bc,start		; 01 00 00 ;7724
	inc b			; 04 ;7727
	nop			; 00 ;7728
	sub b			; 90 ;7729
	ld bc,0a000h		; 01 00 a0 ;772a
	ld bc,0b000h		; 01 00 b0 ;772d
	ld bc,0d000h		; 01 00 d0 ;7730
	ld bc,l00e1h+1		; 01 e2 00 ;7733
	ld c,b			; 48 ;7736
	ld bc,03800h		; 01 00 38 ;7737
	ld bc,l4000h		; 01 00 40 ;773a
	ld bc,start		; 01 00 00 ;773d
	inc b			; 04 ;7740
	nop			; 00 ;7741
	and b			; a0 ;7742
	ld bc,09000h		; 01 00 90 ;7743
	ld bc,0b000h		; 01 00 b0 ;7746
	ld bc,0c000h		; 01 00 c0 ;7749
	ld bc,l00e1h+1		; 01 e2 00 ;774c
	ld (hl),b			; 70 ;774f
	ld bc,06000h		; 01 00 60 ;7750
	ld bc,l5000h		; 01 00 50 ;7753
	ld bc,start		; 01 00 00 ;7756
	inc b			; 04 ;7759
	nop			; 00 ;775a
	or b			; b0 ;775b
	ld bc,0c000h		; 01 00 c0 ;775c
	ld bc,0d000h		; 01 00 d0 ;775f
	ld bc,0f000h		; 01 00 f0 ;7762
	ld bc,l03e0h+2		; 01 e2 03 ;7765
	adc a,b			; 88 ;7768
	jr nz,l776ch		; 20 01 ;7769
	add a,e			; 83 ;776b
l776ch:
	ld (hl),a			; 77 ;776c
	inc bc			; 03 ;776d
	nop			; 00 ;776e
	inc b			; 04 ;776f
	rrca			; 0f ;7770
	adc a,b			; 88 ;7771
	ld hl,0b401h		; 21 01 b4 ;7772
	ld (hl),a			; 77 ;7775
	inc bc			; 03 ;7776
	ld bc,l0d03h		; 01 03 0d ;7777
	adc a,b			; 88 ;777a
	ld (0e501h),hl		; 22 01 e5 ;777b
	ld (hl),a			; 77 ;777e
	nop			; 00 ;777f
	ld (bc),a			; 02 ;7780
	ld (bc),a			; 02 ;7781
	dec bc			; 0b ;7782
	pop hl			; e1 ;7783
	ld c,000h		; 0e 00 ;7784
	ld h,b			; 60 ;7786
	ld bc,l5800h		; 01 00 58 ;7787
	ld bc,l5000h		; 01 00 50 ;778a
	ld bc,start		; 01 00 00 ;778d
	ld (bc),a			; 02 ;7790
	pop hl			; e1 ;7791
	dec c			; 0d ;7792
	nop			; 00 ;7793
	add a,b			; 80 ;7794
	ld bc,09000h		; 01 00 90 ;7795
	ld bc,0c000h		; 01 00 c0 ;7798
	ld bc,0d000h		; 01 00 d0 ;779b
	ld bc,0f000h		; 01 00 f0 ;779e
	ld bc,start		; 01 00 00 ;77a1
	ld (bc),a			; 02 ;77a4
	pop hl			; e1 ;77a5
	dec bc			; 0b ;77a6
	ld bc,l010fh+1		; 01 10 01 ;77a7
	ld bc,l011eh+2		; 01 20 01 ;77aa
	ld bc,00140h		; 01 40 01 ;77ad
	ld bc,00170h		; 01 70 01 ;77b0
	jp po,l0de1h		; e2 e1 0d ;77b3
	nop			; 00 ;77b6
	ld (hl),b			; 70 ;77b7
	ld bc,l6800h		; 01 00 68 ;77b8
	ld bc,06000h		; 01 00 60 ;77bb
	ld bc,start		; 01 00 00 ;77be
	ld (bc),a			; 02 ;77c1
	pop hl			; e1 ;77c2
	dec bc			; 0b ;77c3
	nop			; 00 ;77c4
	sub b			; 90 ;77c5
	ld bc,0a000h		; 01 00 a0 ;77c6
	ld bc,0d000h		; 01 00 d0 ;77c9
	ld bc,0e000h		; 01 00 e0 ;77cc
	ld bc,start+1		; 01 01 00 ;77cf
	ld bc,start		; 01 00 00 ;77d2
	ld (bc),a			; 02 ;77d5
	pop hl			; e1 ;77d6
	ld a,(bc)			; 0a ;77d7
	ld bc,l011eh+2		; 01 20 01 ;77d8
	ld bc,l0130h		; 01 30 01 ;77db
	ld bc,00150h		; 01 50 01 ;77de
	ld bc,l017fh+1		; 01 80 01 ;77e1
	jp po,l0de1h		; e2 e1 0d ;77e4
	nop			; 00 ;77e7
	add a,b			; 80 ;77e8
	ld bc,l7800h		; 01 00 78 ;77e9
	ld bc,l6fffh+1		; 01 00 70 ;77ec
	ld bc,start		; 01 00 00 ;77ef
	ld (bc),a			; 02 ;77f2
	pop hl			; e1 ;77f3
	dec bc			; 0b ;77f4
	nop			; 00 ;77f5
	and b			; a0 ;77f6
	ld bc,0b000h		; 01 00 b0 ;77f7
	ld bc,0e000h		; 01 00 e0 ;77fa
	ld bc,start+1		; 01 01 00 ;77fd
l7800h:
	ld bc,l2000h+1		; 01 01 20 ;7800
	ld bc,start		; 01 00 00 ;7803
	ld (bc),a			; 02 ;7806
	pop hl			; e1 ;7807
	ld a,(bc)			; 0a ;7808
	ld bc,00140h		; 01 40 01 ;7809
	ld bc,00150h		; 01 50 01 ;780c
	ld bc,00170h		; 01 70 01 ;780f
	ld bc,l01a0h		; 01 a0 01 ;7812
	jp po,0a803h		; e2 03 a8 ;7815
	jr nz,$+2		; 20 02 ;7818
	ld (l0078h),a		; 32 78 00 ;781a
	nop			; 00 ;781d
	inc b			; 04 ;781e
	dec c			; 0d ;781f
	xor b			; a8 ;7820
	ld hl,l4202h		; 21 02 42 ;7821
	ld a,b			; 78 ;7824
	nop			; 00 ;7825
	ld bc,sub_0e04h		; 01 04 0e ;7826
	xor b			; a8 ;7829
	ld (l5202h),hl		; 22 02 52 ;782a
	ld a,b			; 78 ;782d
	nop			; 00 ;782e
	nop			; 00 ;782f
	inc bc			; 03 ;7830
	dec c			; 0d ;7831
	nop			; 00 ;7832
	ld h,a			; 67 ;7833
	nop			; 00 ;7834
	ld e,(hl)			; 5e ;7835
	ld b,000h		; 06 00 ;7836
	ret nz			; c0 ;7838
	ld bc,l03f0h		; 01 f0 03 ;7839
	nop			; 00 ;783c
	ret nc			; d0 ;783d
	ld bc,l04f0h		; 01 f0 04 ;783e
	jp po,l6600h		; e2 00 66 ;7841
	nop			; 00 ;7844
	ld d,h			; 54 ;7845
	ld b,000h		; 06 00 ;7846
	sub b			; 90 ;7848
	nop			; 00 ;7849
	or 003h		; f6 03 ;784a
	nop			; 00 ;784c
	ret nz			; c0 ;784d
	nop			; 00 ;784e
	ret p			; f0 ;784f
	ld (bc),a			; 02 ;7850
	jp po,06000h		; e2 00 60 ;7851
	nop			; 00 ;7854
	ld b,e			; 43 ;7855
	ld b,000h		; 06 00 ;7856
	sub b			; 90 ;7858
	nop			; 00 ;7859
	ret nz			; c0 ;785a
	rlca			; 07 ;785b
	jp po,0a803h		; e2 03 a8 ;785c
	jr nz,l7863h		; 20 02 ;785f
	ld a,c			; 79 ;7861
	ld a,b			; 78 ;7862
l7863h:
	inc bc			; 03 ;7863
	nop			; 00 ;7864
	dec b			; 05 ;7865
	dec bc			; 0b ;7866
	xor b			; a8 ;7867
	ld hl,08902h		; 21 02 89 ;7868
	ld a,b			; 78 ;786b
	inc bc			; 03 ;786c
	ld bc,l0e03h		; 01 03 0e ;786d
	xor b			; a8 ;7870
	ld (09902h),hl		; 22 02 99 ;7871
	ld a,b			; 78 ;7874
	inc bc			; 03 ;7875
	nop			; 00 ;7876
	inc bc			; 03 ;7877
	dec c			; 0d ;7878
	nop			; 00 ;7879
	dec (hl)			; 35 ;787a
	nop			; 00 ;787b
	ld h,004h		; 26 04 ;787c
	nop			; 00 ;787e
	nop			; 00 ;787f
	nop			; 00 ;7880
	nop			; 00 ;7881
	inc b			; 04 ;7882
	nop			; 00 ;7883
	ld d,b			; 50 ;7884
	nop			; 00 ;7885
	ld h,b			; 60 ;7886
	inc bc			; 03 ;7887
	jp po,l5000h		; e2 00 50 ;7888
	nop			; 00 ;788b
	scf			; 37 ;788c
	ld b,000h		; 06 00 ;788d
	nop			; 00 ;788f
	nop			; 00 ;7890
	nop			; 00 ;7891
	ld (bc),a			; 02 ;7892
	nop			; 00 ;7893
	add a,b			; 80 ;7894
	nop			; 00 ;7895
	ret po			; e0 ;7896
	inc bc			; 03 ;7897
	jp po,08000h		; e2 00 80 ;7898
	nop			; 00 ;789b
	djnz l78a4h		; 10 06 ;789c
	nop			; 00 ;789e
	nop			; 00 ;789f
	nop			; 00 ;78a0
	nop			; 00 ;78a1
	ld (bc),a			; 02 ;78a2
	nop			; 00 ;78a3
l78a4h:
	ld (hl),b			; 70 ;78a4
	nop			; 00 ;78a5
	ld b,b			; 40 ;78a6
	inc bc			; 03 ;78a7
	jp po,0a803h		; e2 03 a8 ;78a8
	jr nz,l78afh		; 20 02 ;78ab
	push bc			; c5 ;78ad
	ld a,b			; 78 ;78ae
l78afh:
	inc bc			; 03 ;78af
	nop			; 00 ;78b0
	dec b			; 05 ;78b1
	rrca			; 0f ;78b2
	xor b			; a8 ;78b3
	ld hl,0d002h		; 21 02 d0 ;78b4
	ld a,b			; 78 ;78b7
	inc bc			; 03 ;78b8
	ld bc,l0804h		; 01 04 08 ;78b9
	xor b			; a8 ;78bc
	ld (0db02h),hl		; 22 02 db ;78bd
	ld a,b			; 78 ;78c0
	inc bc			; 03 ;78c1
	nop			; 00 ;78c2
	ld b,009h		; 06 09 ;78c3
	nop			; 00 ;78c5
	ld b,b			; 40 ;78c6
	nop			; 00 ;78c7
	ld (l0006h),a		; 32 06 00 ;78c8
	ld b,b			; 40 ;78cb
	nop			; 00 ;78cc
	ld h,b			; 60 ;78cd
	inc bc			; 03 ;78ce
	jp po,06000h		; e2 00 60 ;78cf
	nop			; 00 ;78d2
	ld b,b			; 40 ;78d3
	ld b,000h		; 06 00 ;78d4
	ld h,b			; 60 ;78d6
	nop			; 00 ;78d7
	sbc a,b			; 98 ;78d8
	inc bc			; 03 ;78d9
	jp po,l5000h		; e2 00 50 ;78da
	ld (bc),a			; 02 ;78dd
	add a,b			; 80 ;78de
	ld b,000h		; 06 00 ;78df
	and b			; a0 ;78e1
	nop			; 00 ;78e2
	ret p			; f0 ;78e3
	inc bc			; 03 ;78e4
	jp po,0a802h		; e2 02 a8 ;78e5
	ld hl,0f904h		; 21 04 f9 ;78e8
	ld a,b			; 78 ;78eb
	inc bc			; 03 ;78ec
	ld bc,l0e01h		; 01 01 0e ;78ed
	xor b			; a8 ;78f0
	ld (0ff01h),hl		; 22 01 ff ;78f1
	ld a,b			; 78 ;78f4
	nop			; 00 ;78f5
	nop			; 00 ;78f6
	ld b,00dh		; 06 0d ;78f7
	ld bc,l00ffh+1		; 01 00 01 ;78f9
	ld (bc),a			; 02 ;78fc
	inc b			; 04 ;78fd
	jp po,0f800h		; e2 00 f8 ;78fe
	nop			; 00 ;7901
	ei			; fb ;7902
	inc b			; 04 ;7903
	jp po,l7919h		; e2 19 79 ;7904
	ld hl,l2379h		; 21 79 23 ;7907
	ld a,c			; 79 ;790a
	ld h,079h		; 26 79 ;790b
	dec l			; 2d ;790d
	ld a,c			; 79 ;790e
	inc (hl)			; 34 ;790f
	ld a,c			; 79 ;7910
	ld a,079h		; 3e 79 ;7911
	ld b,d			; 42 ;7913
	ld a,c			; 79 ;7914
	ld c,c			; 49 ;7915
	ld a,c			; 79 ;7916
	ld d,b			; 50 ;7917
	ld a,c			; 79 ;7918
l7919h:
	sbc a,0ffh		; de ff ;7919
	xor 0ddh		; ee dd ;791b
	call z,0aabbh		; cc bb aa ;791d
	ld bc,002feh+1		; 01 ff 02 ;7920
	rst 38h			; ff ;7923
	.DB 0fdh,002h,0ffh	;illegal sequence		;7924
	xor 0ddh		; ee dd ;7927
	call z,0aabbh		; cc bb aa ;7929
	ld bc,0edffh		; 01 ff ed ;792c
	call c,0a9bah		; dc ba a9 ;792f
	add a,a			; 87 ;7932
	ld (bc),a			; 02 ;7933
	rst 28h			; ef ;7934
	xor 0dch		; ee dc ;7935
	cp d			; ba ;7937
	xor c			; a9 ;7938
	add a,a			; 87 ;7939
	halt			; 76 ;793a
	ld h,l			; 65 ;793b
	ld d,h			; 54 ;793c
	ld bc,0edffh		; 01 ff ed ;793d
	jp z,0ef02h		; ca 02 ef ;7940
	.DB 0edh;next byte illegal after ed		;7943
	call z,0aabbh		; cc bb aa ;7944
	sbc a,c			; 99 ;7947
	ld bc,0ffdfh		; 01 df ff ;7948
	.DB 0edh;next byte illegal after ed		;794b
	inc e			; 1c ;794c
	cp d			; ba ;794d
	sbc a,b			; 98 ;794e
	ld (bc),a			; 02 ;794f
	rst 28h			; ef ;7950
	cp 0edh		; fe ed ;7951
	bit 3,(ix+002h)		; dd cb 02 5e ;7953
	ld a,c			; 79 ;7957
	ld h,c			; 61 ;7958
	ld a,c			; 79 ;7959
	ld h,h			; 64 ;795a
	ld a,c			; 79 ;795b
	ld l,e			; 6b ;795c
	ld a,c			; 79 ;795d
	xor 0ffh		; ee ff ;795e
	ld bc,0eeffh		; 01 ff ee ;7960
	nop			; 00 ;7963
	rst 38h			; ff ;7964
	xor 0ffh		; ee ff ;7965
	xor 0ddh		; ee dd ;7967
	xor 000h		; ee 00 ;7969
	xor 0ddh		; ee dd ;796b
	xor 000h		; ee 00 ;796d
sub_796fh:
	call sub_79a8h		; cd a8 79 ;796f
	call sub_798ch		; cd 8c 79 ;7972
	ld ix,0de05h		; dd 21 05 de ;7975
	ld b,007h		; 06 07 ;7979
l797bh:
	push bc			; c5 ;797b
	bit 7,(ix+000h)		; dd cb 00 7e ;797c
	call nz,sub_7addh		; c4 dd 7a ;7980
	ld de,l0020h		; 11 20 00 ;7983
	add ix,de		; dd 19 ;7986
	pop bc			; c1 ;7988
	djnz l797bh		; 10 f0 ;7989
	ret			; c9 ;798b
sub_798ch:
	ld a,(0de01h)		; 3a 01 de ;798c
	or a			; b7 ;798f
	ret z			; c8 ;7990
	ld hl,0de02h		; 21 02 de ;7991
	dec (hl)			; 35 ;7994
	ret nz			; c0 ;7995
	ld a,a			; 7f ;7996
	dec a			; 3d ;7997
	ld (0de0dh),a		; 32 0d de ;7998
	ld (0de2dh),a		; 32 2d de ;799b
	ld (0de4dh),a		; 32 4d de ;799e
	ld (0de01h),a		; 32 01 de ;79a1
	ld a,018h		; 3e 18 ;79a4
	ld (hl),a			; 77 ;79a6
	ret			; c9 ;79a7
sub_79a8h:
	ld a,(0de00h)		; 3a 00 de ;79a8
	bit 7,a		; cb 7f ;79ab
	jp z,l7dc8h		; ca c8 7d ;79ad
	cp 0a2h		; fe a2 ;79b0
	jp nc,l7dc8h		; d2 c8 7d ;79b2
	sub 081h		; d6 81 ;79b5
	ret m			; f8 ;79b7
	ld c,a			; 4f ;79b8
	ld b,000h		; 06 00 ;79b9
	ld hl,l79cfh		; 21 cf 79 ;79bb
	add hl,bc			; 09 ;79be
	add hl,bc			; 09 ;79bf
	ld c,(hl)			; 4e ;79c0
	inc hl			; 23 ;79c1
	ld b,(hl)			; 46 ;79c2
	ld de,l0037h		; 11 37 00 ;79c3
	add hl,de			; 19 ;79c6
	ld a,(hl)			; 7e ;79c7
	inc hl			; 23 ;79c8
	ld h,(hl)			; 66 ;79c9
	ld l,a			; 6f ;79ca
	ld a,(0de03h)		; 3a 03 de ;79cb
	jp (hl)			; e9 ;79ce
l79cfh:
	ld c,c			; 49 ;79cf
	ld (hl),c			; 71 ;79d0
	sub c			; 91 ;79d1
	ld (hl),d			; 72 ;79d2
	ld (ix+02bh),d		; dd 72 2b ;79d3
	ld (hl),e			; 73 ;79d6
	add a,b			; 80 ;79d7
	ld (hl),e			; 73 ;79d8
	pop de			; d1 ;79d9
	ld (hl),e			; 73 ;79da
	sbc a,(hl)			; 9e ;79db
	ld (hl),h			; 74 ;79dc
	ld (0e675h),hl		; 22 75 e6 ;79dd
	ld a,b			; 78 ;79e0
	adc a,h			; 8c ;79e1
	ld (hl),l			; 75 ;79e2
	xor e			; ab ;79e3
	ld (hl),l			; 75 ;79e4
	adc a,h			; 8c ;79e5
	ld (hl),l			; 75 ;79e6
	call pe,01675h		; ec 75 16 ;79e7
	halt			; 76 ;79ea
	inc sp			; 33 ;79eb
	halt			; 76 ;79ec
	ld l,b			; 68 ;79ed
	halt			; 76 ;79ee
	adc a,c			; 89 ;79ef
	halt			; 76 ;79f0
	cp h			; bc ;79f1
	halt			; 76 ;79f2
	ret			; c9 ;79f3
	halt			; 76 ;79f4
	rst 10h			; d7 ;79f5
	halt			; 76 ;79f6
	rst 10h			; d7 ;79f7
	halt			; 76 ;79f8
	nop			; 00 ;79f9
	ld (hl),a			; 77 ;79fa
	ld h,a			; 67 ;79fb
l79fch:
	ld (hl),a			; 77 ;79fc
	ld d,078h		; 16 78 ;79fd
	ld e,l			; 5d ;79ff
	ld a,b			; 78 ;7a00
	xor c			; a9 ;7a01
	ld a,b			; 78 ;7a02
	rst 10h			; d7 ;7a03
	ld a,d			; 7a ;7a04
	dec bc			; 0b ;7a05
	jr nz,l7a69h		; 20 61 ;7a06
	ld a,d			; 7a ;7a08
	ld h,c			; 61 ;7a09
	ld a,d			; 7a ;7a0a
	ld h,c			; 61 ;7a0b
	ld a,d			; 7a ;7a0c
	ld h,c			; 61 ;7a0d
	ld a,d			; 7a ;7a0e
	ld h,c			; 61 ;7a0f
	ld a,d			; 7a ;7a10
	ld h,c			; 61 ;7a11
	ld a,d			; 7a ;7a12
	ld h,c			; 61 ;7a13
	ld a,d			; 7a ;7a14
	ld h,c			; 61 ;7a15
	ld a,d			; 7a ;7a16
	and (hl)			; a6 ;7a17
	ld a,d			; 7a ;7a18
	and (hl)			; a6 ;7a19
	ld a,d			; 7a ;7a1a
	and (hl)			; a6 ;7a1b
	ld a,d			; 7a ;7a1c
	and (hl)			; a6 ;7a1d
	ld a,d			; 7a ;7a1e
	ld (hl),d			; 72 ;7a1f
	ld a,d			; 7a ;7a20
	and (hl)			; a6 ;7a21
	ld a,d			; 7a ;7a22
	adc a,l			; 8d ;7a23
	ld a,d			; 7a ;7a24
	and (hl)			; a6 ;7a25
	ld a,d			; 7a ;7a26
	and (hl)			; a6 ;7a27
	ld a,d			; 7a ;7a28
	sbc a,(hl)			; 9e ;7a29
	ld a,d			; 7a ;7a2a
	sbc a,(hl)			; 9e ;7a2b
	ld a,d			; 7a ;7a2c
	and (hl)			; a6 ;7a2d
	ld a,d			; 7a ;7a2e
	and (hl)			; a6 ;7a2f
	ld a,d			; 7a ;7a30
	ld l,(hl)			; 6e ;7a31
	ld a,d			; 7a ;7a32
	ld l,(hl)			; 6e ;7a33
	ld a,d			; 7a ;7a34
	ld l,(hl)			; 6e ;7a35
	ld a,d			; 7a ;7a36
	ld l,(hl)			; 6e ;7a37
	ld a,d			; 7a ;7a38
	ld l,(hl)			; 6e ;7a39
	ld a,d			; 7a ;7a3a
	ld c,a			; 4f ;7a3b
	ld a,d			; 7a ;7a3c
	ccf			; 3f ;7a3d
	ld a,d			; 7a ;7a3e
	ld hl,0de01h		; 21 01 de ;7a3f
	ld (hl),c			; 71 ;7a42
	inc hl			; 23 ;7a43
	ld (hl),b			; 70 ;7a44
	xor a			; af ;7a45
	ld (0de65h),a		; 32 65 de ;7a46
	dec a			; 3d ;7a49
	out (07fh),a		; d3 7f ;7a4a
	jp l7ad7h		; c3 d7 7a ;7a4c
	xor a			; af ;7a4f
	ld (0de25h),a		; 32 25 de ;7a50
	ld (0de45h),a		; 32 45 de ;7a53
	ld a,0bfh		; 3e bf ;7a56
	out (07fh),a		; d3 7f ;7a58
	ld a,0dfh		; 3e df ;7a5a
	out (07fh),a		; d3 7f ;7a5c
	jp l7ad7h		; c3 d7 7a ;7a5e
	call l7dc8h		; cd c8 7d ;7a61
	ld a,080h		; 3e 80 ;7a64
	ld (0de03h),a		; 32 03 de ;7a66
l7a69h:
	ld de,0de05h		; 11 05 de ;7a69
	jr l7aafh		; 18 41 ;7a6c
	ld e,010h		; 1e 10 ;7a6e
	jr l7a92h		; 18 20 ;7a70
	or a			; b7 ;7a72
	jr nz,l7ad7h		; 20 62 ;7a73
	ld (0de03h),a		; 32 03 de ;7a75
	ld de,0de85h		; 11 85 de ;7a78
	ld hl,0de05h		; 21 05 de ;7a7b
	set 2,(hl)		; cb d6 ;7a7e
	ld hl,0de25h		; 21 25 de ;7a80
	set 2,(hl)		; cb d6 ;7a83
	ld hl,0de45h		; 21 45 de ;7a85
	set 2,(hl)		; cb d6 ;7a88
	jp l7aafh		; c3 af 7a ;7a8a
	or a			; b7 ;7a8d
	jr nz,l7ad7h		; 20 47 ;7a8e
	jr l7a99h		; 18 07 ;7a90
l7a92h:
	cp e			; bb ;7a92
	jr nc,l7ad7h		; 30 42 ;7a93
	ld a,e			; 7b ;7a95
	ld (0de03h),a		; 32 03 de ;7a96
l7a99h:
	call sub_7de3h		; cd e3 7d ;7a99
	jr l7aa1h		; 18 03 ;7a9c
	or a			; b7 ;7a9e
	jr nz,l7ad7h		; 20 36 ;7a9f
l7aa1h:
	ld de,0de05h		; 11 05 de ;7aa1
	jr l7aafh		; 18 09 ;7aa4
	or a			; b7 ;7aa6
	jr nz,l7ad7h		; 20 2e ;7aa7
	ld de,0de25h		; 11 25 de ;7aa9
	call sub_7de3h		; cd e3 7d ;7aac
l7aafh:
	push bc			; c5 ;7aaf
	call sub_7dd7h		; cd d7 7d ;7ab0
	pop bc			; c1 ;7ab3
	ld h,b			; 60 ;7ab4
	ld l,c			; 69 ;7ab5
	ld b,(hl)			; 46 ;7ab6
	inc hl			; 23 ;7ab7
l7ab8h:
	push bc			; c5 ;7ab8
	ld bc,l0009h		; 01 09 00 ;7ab9
	ldir		; ed b0 ;7abc
	ld a,020h		; 3e 20 ;7abe
	ld (de),a			; 12 ;7ac0
	inc de			; 13 ;7ac1
	ld a,001h		; 3e 01 ;7ac2
	ld (de),a			; 12 ;7ac4
	inc de			; 13 ;7ac5
	xor a			; af ;7ac6
	ld (de),a			; 12 ;7ac7
	inc de			; 13 ;7ac8
	ld (de),a			; 12 ;7ac9
	inc de			; 13 ;7aca
	ld (de),a			; 12 ;7acb
	push hl			; e5 ;7acc
	ld hl,l0012h		; 21 12 00 ;7acd
	add hl,de			; 19 ;7ad0
	ex de,hl			; eb ;7ad1
	pop hl			; e1 ;7ad2
	inc de			; 13 ;7ad3
	pop bc			; c1 ;7ad4
	djnz l7ab8h		; 10 e1 ;7ad5
l7ad7h:
	ld a,080h		; 3e 80 ;7ad7
	ld (0de00h),a		; 32 00 de ;7ad9
	ret			; c9 ;7adc
sub_7addh:
	ld e,(ix+00ch)		; dd 5e 0c ;7add
	ld d,(ix+00dh)		; dd 56 0d ;7ae0
	inc de			; 13 ;7ae3
	ld (ix+00ch),e		; dd 73 0c ;7ae4
	ld (ix+00dh),d		; dd 72 0d ;7ae7
	ld l,(ix+00ah)		; dd 6e 0a ;7aea
	ld h,(ix+00bh)		; dd 66 0b ;7aed
	or a			; b7 ;7af0
	sbc hl,de		; ed 52 ;7af1
	call z,sub_7c43h		; cc 43 7c ;7af3
	ld e,(ix+010h)		; dd 5e 10 ;7af6
	ld d,(ix+011h)		; dd 56 11 ;7af9
	ld a,e			; 7b ;7afc
	or d			; b2 ;7afd
	jr nz,l7b07h		; 20 07 ;7afe
	ld (ix+016h),00fh		; dd 36 16 0f ;7b00
	jp l7bb5h		; c3 b5 7b ;7b04
l7b07h:
	bit 5,(ix+000h)		; dd cb 00 6e ;7b07
	jr nz,l7b32h		; 20 25 ;7b0b
	ld a,(ix+006h)		; dd 7e 06 ;7b0d
	or a			; b7 ;7b10
	jr nz,l7b27h		; 20 14 ;7b11
	ld (ix+012h),e		; dd 73 12 ;7b13
	ld (ix+013h),d		; dd 72 13 ;7b16
	jp l7b6eh		; c3 6e 7b ;7b19
sub_7b1ch:
	dec a			; 3d ;7b1c
	ld c,a			; 4f ;7b1d
	ld b,000h		; 06 00 ;7b1e
	add hl,bc			; 09 ;7b20
	add hl,bc			; 09 ;7b21
	ld a,(hl)			; 7e ;7b22
	inc hl			; 23 ;7b23
	ld h,(hl)			; 66 ;7b24
	ld l,a			; 6f ;7b25
	ret			; c9 ;7b26
l7b27h:
	ld hl,07956h		; 21 56 79 ;7b27
	call sub_7b1ch		; cd 1c 7b ;7b2a
	call sub_7c0dh		; cd 0d 7c ;7b2d
	jr l7b6eh		; 18 3c ;7b30
l7b32h:
	push de			; d5 ;7b32
	ld l,(ix+014h)		; dd 6e 14 ;7b33
	ld h,(ix+015h)		; dd 66 15 ;7b36
	or a			; b7 ;7b39
	sbc hl,de		; ed 52 ;7b3a
	push af			; f5 ;7b3c
	ld a,l			; 7d ;7b3d
	jp p,l7b43h		; f2 43 7b ;7b3e
	neg		; ed 44 ;7b41
l7b43h:
	ld h,a			; 67 ;7b43
	ld e,(ix+00ch)		; dd 5e 0c ;7b44
	call sub_mul_h_e		; cd 84 7e ;7b47
	ld e,(ix+00ah)		; dd 5e 0a ;7b4a
	call sub_div_hl_e		; cd 90 7e ;7b4d
	ld e,a			; 5f ;7b50
	ld d,000h		; 16 00 ;7b51
	pop af			; f1 ;7b53
	ld a,e			; 7b ;7b54
	jp p,l7b5eh		; f2 5e 7b ;7b55
	neg		; ed 44 ;7b58
	jr z,l7b5eh		; 28 02 ;7b5a
	dec d			; 15 ;7b5c
	ld e,a			; 5f ;7b5d
l7b5eh:
	pop hl			; e1 ;7b5e
	add hl,de			; 19 ;7b5f
	ex de,hl			; eb ;7b60
	ld (ix+012h),e		; dd 73 12 ;7b61
	ld (ix+013h),d		; dd 72 13 ;7b64
	ld a,(ix+006h)		; dd 7e 06 ;7b67
	or a			; b7 ;7b6a
	jp nz,l7b27h		; c2 27 7b ;7b6b
l7b6eh:
	ld a,(ix+007h)		; dd 7e 07 ;7b6e
	or a			; b7 ;7b71
	jr nz,l7b7fh		; 20 0b ;7b72
	ld a,(ix+008h)		; dd 7e 08 ;7b74
	cpl			; 2f ;7b77
	and 00fh		; e6 0f ;7b78
	ld (ix+016h),a		; dd 77 16 ;7b7a
	jr l7b8ah		; 18 0b ;7b7d
l7b7fh:
	res 7,a		; cb bf ;7b7f
	ld hl,07905h		; 21 05 79 ;7b81
	call sub_7b1ch		; cd 1c 7b ;7b84
	call sub_7bd3h		; cd d3 7b ;7b87
l7b8ah:
	bit 6,(ix+000h)		; dd cb 00 76 ;7b8a
	jr nz,l7bb5h		; 20 25 ;7b8e
	ld a,(ix+001h)		; dd 7e 01 ;7b90
	and 00fh		; e6 0f ;7b93
	ld c,a			; 4f ;7b95
	ld b,000h		; 06 00 ;7b96
	ld hl,l7bc8h		; 21 c8 7b ;7b98
	add hl,bc			; 09 ;7b9b
	ld c,(hl)			; 4e ;7b9c
	ld a,(ix+012h)		; dd 7e 12 ;7b9d
	and 00fh		; e6 0f ;7ba0
	or c			; b1 ;7ba2
	call sub_7dc0h		; cd c0 7d ;7ba3
	ld a,(ix+012h)		; dd 7e 12 ;7ba6
	and 0f0h		; e6 f0 ;7ba9
	or (ix+013h)		; dd b6 13 ;7bab
	rrca			; 0f ;7bae
	rrca			; 0f ;7baf
	rrca			; 0f ;7bb0
	rrca			; 0f ;7bb1
	call sub_7dc0h		; cd c0 7d ;7bb2
l7bb5h:
	ld a,(ix+001h)		; dd 7e 01 ;7bb5
	and 00fh		; e6 0f ;7bb8
	ld c,a			; 4f ;7bba
	ld b,000h		; 06 00 ;7bbb
	ld hl,l7bcch		; 21 cc 7b ;7bbd
	add hl,bc			; 09 ;7bc0
	ld a,(hl)			; 7e ;7bc1
	or (ix+016h)		; dd b6 16 ;7bc2
	jp sub_7dc0h		; c3 c0 7d ;7bc5
l7bc8h:
	add a,b			; 80 ;7bc8
	and b			; a0 ;7bc9
	ret nz			; c0 ;7bca
	ret nz			; c0 ;7bcb
l7bcch:
	sub b			; 90 ;7bcc
	or b			; b0 ;7bcd
	ret nc			; d0 ;7bce
	ret p			; f0 ;7bcf
l7bd0h:
	ld (ix+00eh),a		; dd 77 0e ;7bd0
sub_7bd3h:
	push hl			; e5 ;7bd3
	ld a,(ix+00eh)		; dd 7e 0e ;7bd4
	srl a		; cb 3f ;7bd7
	push af			; f5 ;7bd9
	ld c,a			; 4f ;7bda
	ld b,000h		; 06 00 ;7bdb
	add hl,bc			; 09 ;7bdd
	pop af			; f1 ;7bde
	ld a,(hl)			; 7e ;7bdf
	pop hl			; e1 ;7be0
	jr c,l7bf7h		; 38 14 ;7be1
	rrca			; 0f ;7be3
	rrca			; 0f ;7be4
	rrca			; 0f ;7be5
	rrca			; 0f ;7be6
	or a			; b7 ;7be7
	jr z,l7bd0h		; 28 e6 ;7be8
	cp 010h		; fe 10 ;7bea
	jr nz,l7bf3h		; 20 05 ;7bec
	dec (ix+00eh)		; dd 35 0e ;7bee
	jr sub_7bd3h		; 18 e0 ;7bf1
l7bf3h:
	cp 020h		; fe 20 ;7bf3
	jr z,l7c02h		; 28 0b ;7bf5
l7bf7h:
	inc (ix+00eh)		; dd 34 0e ;7bf7
	or 0f0h		; f6 f0 ;7bfa
	add a,(ix+008h)		; dd 86 08 ;7bfc
	inc a			; 3c ;7bff
	jr c,l7c03h		; 38 01 ;7c00
l7c02h:
	xor a			; af ;7c02
l7c03h:
	cpl			; 2f ;7c03
	and 00fh		; e6 0f ;7c04
	ld (ix+016h),a		; dd 77 16 ;7c06
	ret			; c9 ;7c09
l7c0ah:
	ld (ix+00fh),a		; dd 77 0f ;7c0a
sub_7c0dh:
	push hl			; e5 ;7c0d
	ld a,(ix+00fh)		; dd 7e 0f ;7c0e
	srl a		; cb 3f ;7c11
	push af			; f5 ;7c13
	ld c,a			; 4f ;7c14
	ld b,000h		; 06 00 ;7c15
	add hl,bc			; 09 ;7c17
	pop af			; f1 ;7c18
	ld a,(hl)			; 7e ;7c19
	pop hl			; e1 ;7c1a
	jr c,l7c31h		; 38 14 ;7c1b
	rrca			; 0f ;7c1d
	rrca			; 0f ;7c1e
	rrca			; 0f ;7c1f
	rrca			; 0f ;7c20
	or a			; b7 ;7c21
	jp z,l7c0ah		; ca 0a 7c ;7c22
	cp 010h		; fe 10 ;7c25
	jr nz,l7c31h		; 20 08 ;7c27
	dec (ix+00fh)		; dd 35 0f ;7c29
	jr sub_7c0dh		; 18 df ;7c2c
	cp 020h		; fe 20 ;7c2e
	ret z			; c8 ;7c30
l7c31h:
	inc (ix+00fh)		; dd 34 0f ;7c31
	cpl			; 2f ;7c34
	and 00fh		; e6 0f ;7c35
	ld l,a			; 6f ;7c37
sub_7c38h:
	ld h,000h		; 26 00 ;7c38
	ex de,hl			; eb ;7c3a
	add hl,de			; 19 ;7c3b
	ld (ix+012h),l		; dd 75 12 ;7c3c
	ld (ix+013h),h		; dd 74 13 ;7c3f
	ret			; c9 ;7c42
sub_7c43h:
	ld e,(ix+003h)		; dd 5e 03 ;7c43
	ld d,(ix+004h)		; dd 56 04 ;7c46
l7c49h:
	ld a,(de)			; 1a ;7c49
	inc de			; 13 ;7c4a
	cp 0e0h		; fe e0 ;7c4b
	jp nc,l7cd7h		; d2 d7 7c ;7c4d
	bit 3,(ix+000h)		; dd cb 00 5e ;7c50
	jr nz,l7cb6h		; 20 60 ;7c54
	or a			; b7 ;7c56
	jp p,l7c92h		; f2 92 7c ;7c57
	sub 080h		; d6 80 ;7c5a
	jr z,l7c61h		; 28 03 ;7c5c
	add a,(ix+005h)		; dd 86 05 ;7c5e
l7c61h:
	ld hl,l7df2h		; 21 f2 7d ;7c61
	ld c,a			; 4f ;7c64
	ld b,000h		; 06 00 ;7c65
	add hl,bc			; 09 ;7c67
	add hl,bc			; 09 ;7c68
	ld a,(hl)			; 7e ;7c69
	ld (ix+010h),a		; dd 77 10 ;7c6a
	inc hl			; 23 ;7c6d
	ld a,(hl)			; 7e ;7c6e
	ld (ix+011h),a		; dd 77 11 ;7c6f
	bit 5,(ix+000h)		; dd cb 00 6e ;7c72
	jr z,l7cd0h		; 28 58 ;7c76
	ld a,(de)			; 1a ;7c78
	inc de			; 13 ;7c79
	sub 080h		; d6 80 ;7c7a
	add a,(ix+005h)		; dd 86 05 ;7c7c
	ld hl,l7df2h		; 21 f2 7d ;7c7f
	ld c,a			; 4f ;7c82
	ld b,000h		; 06 00 ;7c83
	add hl,bc			; 09 ;7c85
	add hl,bc			; 09 ;7c86
	ld a,(hl)			; 7e ;7c87
	ld (ix+014h),a		; dd 77 14 ;7c88
	inc hl			; 23 ;7c8b
	ld a,(hl)			; 7e ;7c8c
	ld (ix+015h),a		; dd 77 15 ;7c8d
l7c90h:
	ld a,(de)			; 1a ;7c90
l7c91h:
	inc de			; 13 ;7c91
l7c92h:
	push de			; d5 ;7c92
	ld h,a			; 67 ;7c93
	ld e,(ix+002h)		; dd 5e 02 ;7c94
	call sub_mul_h_e		; cd 84 7e ;7c97
	pop de			; d1 ;7c9a
	ld (ix+00ah),l		; dd 75 0a ;7c9b
	ld (ix+00bh),h		; dd 74 0b ;7c9e
l7ca1h:
	xor a			; af ;7ca1
	ld (ix+00eh),a		; dd 77 0e ;7ca2
	ld (ix+00fh),a		; dd 77 0f ;7ca5
	ld (ix+003h),e		; dd 73 03 ;7ca8
	ld (ix+004h),d		; dd 72 04 ;7cab
	xor a			; af ;7cae
	ld (ix+00ch),a		; dd 77 0c ;7caf
	ld (ix+00dh),a		; dd 77 0d ;7cb2
	ret			; c9 ;7cb5
l7cb6h:
	ld (ix+011h),a		; dd 77 11 ;7cb6
	ld a,(de)			; 1a ;7cb9
	inc de			; 13 ;7cba
	ld (ix+010h),a		; dd 77 10 ;7cbb
	bit 5,(ix+000h)		; dd cb 00 6e ;7cbe
	jr z,l7c90h		; 28 cc ;7cc2
	ld a,(de)			; 1a ;7cc4
	inc de			; 13 ;7cc5
	ld (ix+015h),a		; dd 77 15 ;7cc6
	ld a,(de)			; 1a ;7cc9
	inc de			; 13 ;7cca
	ld (ix+014h),a		; dd 77 14 ;7ccb
	jr l7c90h		; 18 c0 ;7cce
l7cd0h:
	ld a,(de)			; 1a ;7cd0
	or a			; b7 ;7cd1
	jp p,l7c91h		; f2 91 7c ;7cd2
	jr l7ca1h		; 18 ca ;7cd5
l7cd7h:
	ld hl,l7ceah		; 21 ea 7c ;7cd7
	push hl			; e5 ;7cda
	and 01fh		; e6 1f ;7cdb
	ld hl,l7ceeh		; 21 ee 7c ;7cdd
	ld c,a			; 4f ;7ce0
	ld b,000h		; 06 00 ;7ce1
	add hl,bc			; 09 ;7ce3
	add hl,bc			; 09 ;7ce4
	ld a,(hl)			; 7e ;7ce5
	inc hl			; 23 ;7ce6
	ld h,(hl)			; 66 ;7ce7
	ld l,a			; 6f ;7ce8
	jp (hl)			; e9 ;7ce9
l7ceah:
	inc de			; 13 ;7cea
	jp l7c49h		; c3 49 7c ;7ceb
l7ceeh:
	ld e,07dh		; 1e 7d ;7cee
	inc hl			; 23 ;7cf0
	ld a,l			; 7d ;7cf1
	ld e,(hl)			; 5e ;7cf2
	ld a,l			; 7d ;7cf3
	jr z,l7d73h		; 28 7d ;7cf4
	ccf			; 3f ;7cf6
	ld a,l			; 7d ;7cf7
	ld c,c			; 49 ;7cf8
	ld a,l			; 7d ;7cf9
	ld c,07dh		; 0e 7d ;7cfa
	ld c,a			; 4f ;7cfc
	ld a,l			; 7d ;7cfd
	ld c,a			; 4f ;7cfe
	ld a,l			; 7d ;7cff
	ld c,a			; 4f ;7d00
	ld a,l			; 7d ;7d01
	ld l,e			; 6b ;7d02
	ld a,l			; 7d ;7d03
	add a,(hl)			; 86 ;7d04
	ld a,l			; 7d ;7d05
	sbc a,c			; 99 ;7d06
	ld a,l			; 7d ;7d07
	ld b,h			; 44 ;7d08
	ld a,l			; 7d ;7d09
	ld d,07dh		; 16 7d ;7d0a
	ld c,a			; 4f ;7d0c
	ld a,l			; 7d ;7d0d
	ld a,080h		; 3e 80 ;7d0e
	ld (0de04h),a		; 32 04 de ;7d10
	jp l7d5eh		; c3 5e 7d ;7d13
	ld a,(de)			; 1a ;7d16
	add a,(ix+005h)		; dd 86 05 ;7d17
	ld (ix+005h),a		; dd 77 05 ;7d1a
	ret			; c9 ;7d1d
	ld a,(de)			; 1a ;7d1e
	ld (ix+002h),a		; dd 77 02 ;7d1f
	ret			; c9 ;7d22
	ld a,(de)			; 1a ;7d23
	ld (ix+008h),a		; dd 77 08 ;7d24
	ret			; c9 ;7d27
	ld a,(de)			; 1a ;7d28
	or 0e0h		; f6 e0 ;7d29
	push af			; f5 ;7d2b
	call sub_7dc0h		; cd c0 7d ;7d2c
	pop af			; f1 ;7d2f
	or 0fch		; f6 fc ;7d30
	inc a			; 3c ;7d32
	jr nz,l7d3ah		; 20 05 ;7d33
	res 6,(ix+000h)		; dd cb 00 b6 ;7d35
	ret			; c9 ;7d39
l7d3ah:
	set 6,(ix+000h)		; dd cb 00 f6 ;7d3a
	ret			; c9 ;7d3e
	ld a,(de)			; 1a ;7d3f
	ld (ix+007h),a		; dd 77 07 ;7d40
	ret			; c9 ;7d43
	ld a,(de)			; 1a ;7d44
	ld (ix+006h),a		; dd 77 06 ;7d45
	ret			; c9 ;7d48
l7d49h:
	ex de,hl			; eb ;7d49
	ld e,(hl)			; 5e ;7d4a
	inc hl			; 23 ;7d4b
	ld d,(hl)			; 56 ;7d4c
	dec de			; 1b ;7d4d
	ret			; c9 ;7d4e
	ld hl,0de05h		; 21 05 de ;7d4f
	res 2,(hl)		; cb 96 ;7d52
	ld hl,0de25h		; 21 25 de ;7d54
	res 2,(hl)		; cb 96 ;7d57
	ld hl,0de45h		; 21 45 de ;7d59
	res 2,(hl)		; cb 96 ;7d5c
l7d5eh:
	xor a			; af ;7d5e
	ld (0de03h),a		; 32 03 de ;7d5f
	ld (ix+000h),a		; dd 77 00 ;7d62
	call sub_7db1h		; cd b1 7d ;7d65
	pop hl			; e1 ;7d68
	pop hl			; e1 ;7d69
	ret			; c9 ;7d6a
	ld a,(de)			; 1a ;7d6b
	ld c,a			; 4f ;7d6c
	inc de			; 13 ;7d6d
	ld a,(de)			; 1a ;7d6e
	ld b,a			; 47 ;7d6f
	push bc			; c5 ;7d70
	push ix		; dd e5 ;7d71
l7d73h:
	pop hl			; e1 ;7d73
	dec (ix+009h)		; dd 35 09 ;7d74
	ld c,(ix+009h)		; dd 4e 09 ;7d77
	dec (ix+009h)		; dd 35 09 ;7d7a
	ld b,000h		; 06 00 ;7d7d
	add hl,bc			; 09 ;7d7f
	ld (hl),d			; 72 ;7d80
	dec hl			; 2b ;7d81
	ld (hl),e			; 73 ;7d82
	pop de			; d1 ;7d83
	dec de			; 1b ;7d84
	ret			; c9 ;7d85
	push ix		; dd e5 ;7d86
	pop hl			; e1 ;7d88
	ld c,(ix+009h)		; dd 4e 09 ;7d89
	ld b,000h		; 06 00 ;7d8c
	add hl,bc			; 09 ;7d8e
	ld e,(hl)			; 5e ;7d8f
	inc hl			; 23 ;7d90
	ld d,(hl)			; 56 ;7d91
	inc (ix+009h)		; dd 34 09 ;7d92
	inc (ix+009h)		; dd 34 09 ;7d95
	ret			; c9 ;7d98
	ld a,(de)			; 1a ;7d99
	inc de			; 13 ;7d9a
	add a,017h		; c6 17 ;7d9b
	ld c,a			; 4f ;7d9d
	ld b,000h		; 06 00 ;7d9e
	push ix		; dd e5 ;7da0
	pop hl			; e1 ;7da2
	add hl,bc			; 09 ;7da3
	ld a,(hl)			; 7e ;7da4
	or a			; b7 ;7da5
	jr nz,l7daah		; 20 02 ;7da6
	ld a,(de)			; 1a ;7da8
	ld (hl),a			; 77 ;7da9
l7daah:
	inc de			; 13 ;7daa
	dec (hl)			; 35 ;7dab
	jp nz,l7d49h		; c2 49 7d ;7dac
	inc de			; 13 ;7daf
	ret			; c9 ;7db0
sub_7db1h:
	ld a,(ix+001h)		; dd 7e 01 ;7db1
	and 00fh		; e6 0f ;7db4
	ld c,a			; 4f ;7db6
	ld b,000h		; 06 00 ;7db7
	ld hl,l7bcch		; 21 cc 7b ;7db9
	add hl,bc			; 09 ;7dbc
	ld a,(hl)			; 7e ;7dbd
	or 00fh		; f6 0f ;7dbe
sub_7dc0h:
	bit 2,(ix+000h)		; dd cb 00 56 ;7dc0
	ret nz			; c0 ;7dc4
	out (07fh),a		; d3 7f ;7dc5
	ret			; c9 ;7dc7
l7dc8h:
	exx			; d9 ;7dc8
	ld hl,0de01h		; 21 01 de ;7dc9
	ld de,0de02h		; 11 02 de ;7dcc
	ld bc,000dfh		; 01 df 00 ;7dcf
	ld (hl),000h		; 36 00 ;7dd2
	ldir		; ed b0 ;7dd4
	exx			; d9 ;7dd6
sub_7dd7h:
	exx			; d9 ;7dd7
	ld hl,l7deeh		; 21 ee 7d ;7dd8
	ld c,07fh		; 0e 7f ;7ddb
	ld b,004h		; 06 04 ;7ddd
	otir		; ed b3 ;7ddf
	exx			; d9 ;7de1
	ret			; c9 ;7de2
sub_7de3h:
	xor a			; af ;7de3
	ld (0de85h),a		; 32 85 de ;7de4
	ld (0dea5h),a		; 32 a5 de ;7de7
	ld (0dec5h),a		; 32 c5 de ;7dea
	ret			; c9 ;7ded
l7deeh:
	sbc a,a			; 9f ;7dee
	cp a			; bf ;7def
	rst 18h			; df ;7df0
	rst 38h			; ff ;7df1
l7df2h:
	nop			; 00 ;7df2
	nop			; 00 ;7df3
	rst 38h			; ff ;7df4
	inc bc			; 03 ;7df5
	rst 0			; c7 ;7df6
	inc bc			; 03 ;7df7
	sub b			; 90 ;7df8
	inc bc			; 03 ;7df9
	ld e,l			; 5d ;7dfa
	inc bc			; 03 ;7dfb
	dec l			; 2d ;7dfc
	inc bc			; 03 ;7dfd
	rst 38h			; ff ;7dfe
	ld (bc),a			; 02 ;7dff
	call nc,0ab02h		; d4 02 ab ;7e00
	ld (bc),a			; 02 ;7e03
	add a,l			; 85 ;7e04
	ld (bc),a			; 02 ;7e05
	ld h,c			; 61 ;7e06
	ld (bc),a			; 02 ;7e07
	ccf			; 3f ;7e08
	ld (bc),a			; 02 ;7e09
	ld e,002h		; 1e 02 ;7e0a
	nop			; 00 ;7e0c
	ld (bc),a			; 02 ;7e0d
	ex (sp),hl			; e3 ;7e0e
	ld bc,001c8h		; 01 c8 01 ;7e0f
	xor a			; af ;7e12
	ld bc,00196h		; 01 96 01 ;7e13
	add a,b			; 80 ;7e16
	ld bc,l016ah		; 01 6a 01 ;7e17
	ld d,(hl)			; 56 ;7e1a
	ld bc,l0142h+1		; 01 43 01 ;7e1b
	jr nc,l7e21h		; 30 01 ;7e1e
	rra			; 1f ;7e20
l7e21h:
	ld bc,l010fh		; 01 0f 01 ;7e21
	nop			; 00 ;7e24
	ld bc,l00f1h+1		; 01 f2 00 ;7e25
	call po,0d700h		; e4 00 d7 ;7e28
	nop			; 00 ;7e2b
	rlc b		; cb 00 ;7e2c
	ret nz			; c0 ;7e2e
	nop			; 00 ;7e2f
	or l			; b5 ;7e30
	nop			; 00 ;7e31
	xor e			; ab ;7e32
	nop			; 00 ;7e33
	and c			; a1 ;7e34
	nop			; 00 ;7e35
	sbc a,b			; 98 ;7e36
	nop			; 00 ;7e37
	sub b			; 90 ;7e38
	nop			; 00 ;7e39
	adc a,b			; 88 ;7e3a
	nop			; 00 ;7e3b
	add a,b			; 80 ;7e3c
	nop			; 00 ;7e3d
	ld a,c			; 79 ;7e3e
	nop			; 00 ;7e3f
	ld (hl),d			; 72 ;7e40
	nop			; 00 ;7e41
	ld l,h			; 6c ;7e42
	nop			; 00 ;7e43
	ld h,(hl)			; 66 ;7e44
	nop			; 00 ;7e45
	ld h,b			; 60 ;7e46
	nop			; 00 ;7e47
	ld e,e			; 5b ;7e48
	nop			; 00 ;7e49
	ld d,l			; 55 ;7e4a
	nop			; 00 ;7e4b
	ld d,c			; 51 ;7e4c
	nop			; 00 ;7e4d
	ld c,h			; 4c ;7e4e
	nop			; 00 ;7e4f
	ld c,b			; 48 ;7e50
	nop			; 00 ;7e51
	ld b,h			; 44 ;7e52
	nop			; 00 ;7e53
	ld b,b			; 40 ;7e54
	nop			; 00 ;7e55
	inc a			; 3c ;7e56
	nop			; 00 ;7e57
	add hl,sp			; 39 ;7e58
	nop			; 00 ;7e59
	ld (hl),000h		; 36 00 ;7e5a
	inc sp			; 33 ;7e5c
	nop			; 00 ;7e5d
	jr nc,l7e60h		; 30 00 ;7e5e
l7e60h:
	dec l			; 2d ;7e60
	nop			; 00 ;7e61
	dec hl			; 2b ;7e62
	nop			; 00 ;7e63
	jr z,l7e66h		; 28 00 ;7e64
l7e66h:
	ld h,000h		; 26 00 ;7e66
	inc h			; 24 ;7e68
	nop			; 00 ;7e69
	ld (l2000h),hl		; 22 00 20 ;7e6a
	nop			; 00 ;7e6d
	ld e,000h		; 1e 00 ;7e6e
	inc e			; 1c ;7e70
	nop			; 00 ;7e71
	dec de			; 1b ;7e72
	nop			; 00 ;7e73
	add hl,de			; 19 ;7e74
	nop			; 00 ;7e75
	jr l7e78h		; 18 00 ;7e76
l7e78h:
	ld d,000h		; 16 00 ;7e78
	dec d			; 15 ;7e7a
	nop			; 00 ;7e7b
	inc d			; 14 ;7e7c
	nop			; 00 ;7e7d
	inc de			; 13 ;7e7e
	nop			; 00 ;7e7f
	ld (de),a			; 12 ;7e80
	nop			; 00 ;7e81
	.DB $11 $00		;7e82
    .INCLUDE "math/mul_h_e.asm"
    .INCLUDE "math/div_hl_e.asm"
	.DSB 94, $ff			;7ea3
l7f01h:
	.DSB 1, $ff			;7f01
l7f02h:
	.DSB 4, $ff			;7f02
l7f06h:
	.DSB 150, $ff			;7f06
sub_7f9ch:
    .DSB 84, $ff			;7f9c
	.DB "TMR SEGA"			;7ff0
	.DB $ff $ff			;7ff8
	call nc,sub_0788h		; d4 88 07 ;7ffa
	ld b,b			; 40 ;7ffd
	.DB 001h,04ch		;7ffe
