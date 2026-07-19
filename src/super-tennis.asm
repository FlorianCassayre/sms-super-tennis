; --- generated header ---
.MEMORYMAP
    DEFAULTSLOT 0
    SLOTSIZE $10000
    SLOT 0 $0000
.ENDME
.ROMBANKMAP
    BANKSTOTAL 1
    BANKSIZE $10000
    BANKS 1
.ENDRO
.BANK 0 SLOT 0
; --- end generated header ---
; z80dasm 1.1.6
; command line: z80dasm -g 0x0000 -a -l super-tennis.sms

	.ORGA	00000h

l0000h:
	jp l0085h		;0000
l0003h:
	ccf			;0003
l0004h:
	ccf			;0004
l0005h:
	scf			;0005
l0006h:
	ex af,af'			;0006
l0007h:
	inc bc			;0007
l0008h:
	nop			;0008
l0009h:
	cpl			;0009
	ld hl,(00f25h)		;000a
	dec bc			;000d
l000eh:
	ld a,(bc)			;000e
	dec b			;000f
l0010h:
	ld b,030h		;0010
l0012h:
	ccf			;0012
l0013h:
	ld hl,(l0b00h)		;0013
l0016h:
	ccf			;0016
	inc (hl)			;0017
l0018h:
	jr c,l0029h		;0018
	rra			;001a
l001bh:
	ld b,000h		;001b
	nop			;001d
	nop			;001e
	nop			;001f
l0020h:
	nop			;0020
l0021h:
	nop			;0021
l0022h:
	nop			;0022
	jr nc,l0034h		;0023
	rlca			;0025
l0026h:
	ld (bc),a			;0026
	nop			;0027
	nop			;0028
l0029h:
	nop			;0029
l002ah:
	nop			;002a
	nop			;002b
	ccf			;002c
l002dh:
	nop			;002d
	rrca			;002e
	rst 38h			;002f
l0030h:
	rst 38h			;0030
	rst 38h			;0031
	rst 38h			;0032
	rst 38h			;0033
l0034h:
	rst 38h			;0034
	rst 38h			;0035
	rst 38h			;0036
l0037h:
	rst 38h			;0037
sub_0038h:
	jp l0165h		;0038
l003bh:
	ld d,080h		;003b
	and b			;003d
	add a,c			;003e
l003fh:
	rst 38h			;003f
l0040h:
	add a,d			;0040
	rst 38h			;0041
	add a,e			;0042
	rst 38h			;0043
	add a,h			;0044
	rst 38h			;0045
	add a,l			;0046
	ei			;0047
	add a,(hl)			;0048
	nop			;0049
	add a,a			;004a
	nop			;004b
	adc a,b			;004c
	nop			;004d
	adc a,c			;004e
	cp a			;004f
	adc a,d			;0050
	nop			;0051
	nop			;0052
	nop			;0053
	nop			;0054
	nop			;0055
	rst 38h			;0056
	rst 38h			;0057
	rst 38h			;0058
	rst 38h			;0059
	rst 38h			;005a
	rst 38h			;005b
	rst 38h			;005c
	rst 38h			;005d
	rst 38h			;005e
	rst 38h			;005f
	rst 38h			;0060
	rst 38h			;0061
	rst 38h			;0062
	rst 38h			;0063
	rst 38h			;0064
	rst 38h			;0065
	push af			;0066
	ld a,(0c000h)		;0067
	and 00ch		;006a
sub_006ch:
	cp 004h		;006c
	jr nz,l0082h		;006e
sub_0070h:
	ld a,(0c005h)		;0070
	cp 00fh		;0073
	jr c,l0082h		;0075
	xor a			;0077
l0078h:
	ld (0c005h),a		;0078
	ld a,(0c004h)		;007b
	cpl			;007e
l007fh:
	ld (0c004h),a		;007f
l0082h:
	pop af			;0082
	retn		;0083
l0085h:
	di			;0085
	ld sp,0dffeh		;0086
	im 1		;0089
	ld hl,0c000h		;008b
	ld de,0c001h		;008e
	ld bc,l003fh		;0091
	ld (hl),000h		;0094
l0096h:
	ldir		;0096
	call sub_7dd7h		;0098
	ld a,092h		;009b
	out (0dfh),a		;009d
	ld a,055h		;009f
	out (0deh),a		;00a1
	in a,(0deh)		;00a3
	cp 055h		;00a5
	ld c,000h		;00a7
	jr z,l00adh		;00a9
l00abh:
	ld c,0ffh		;00ab
l00adh:
	ld a,0aah		;00ad
	out (0deh),a		;00af
	in a,(0deh)		;00b1
	cp 0aah		;00b3
	ld a,000h		;00b5
	jr z,l00bbh		;00b7
	ld a,0ffh		;00b9
l00bbh:
	or c			;00bb
	ld (0c002h),a		;00bc
	ld a,007h		;00bf
	out (0deh),a		;00c1
	ld b,00ah		;00c3
	ld de,0ffffh		;00c5
l00c8h:
	ld hl,l39deh		;00c8
l00cbh:
	add hl,de			;00cb
l00cch:
	jr c,l00cbh		;00cc
	djnz l00c8h		;00ce
	call 04106h		;00d0
	ld (0c010h),a		;00d3
l00d6h:
	di			;00d6
	ld sp,0dffeh		;00d7
	xor a			;00da
	ld (0c003h),a		;00db
	ld (0c000h),a		;00de
l00e1h:
	ld (0c004h),a		;00e1
	ld hl,0c040h		;00e4
	ld de,0c041h		;00e7
	ld bc,l1fbfh		;00ea
	ld (hl),000h		;00ed
	ldir		;00ef
l00f1h:
	in a,(0bfh)		;00f1
	ld b,016h		;00f3
	ld c,0bfh		;00f5
	ld hl,l003bh		;00f7
	otir		;00fa
	ld hl,l0000h		;00fc
l00ffh:
	ld de,l002dh		;00ff
l0102h:
	ld b,001h		;0102
l0104h:
	call sub_0481h		;0104
	ld hl,l0010h		;0107
l010ah:
	ld de,l002dh		;010a
l010dh:
	ld b,001h		;010d
l010fh:
	call sub_0481h		;010f
l0112h:
	ld de,l2000h		;0112
	ld hl,05b43h		;0115
l0118h:
	call sub_04b5h		;0118
	ld de,l0000h		;011b
l011eh:
	ld hl,l5de3h		;011e
	call sub_04b5h		;0121
l0124h:
	ld de,0c600h		;0124
l0127h:
	ld hl,l70cbh		;0127
l012ah:
	call sub_04edh		;012a
	ld de,0c720h		;012d
l0130h:
	ld hl,04b46h		;0130
l0133h:
	call sub_04edh		;0133
l0136h:
	ld de,0c76ch		;0136
	ld hl,04b74h		;0139
l013ch:
	call sub_04edh		;013c
	ld de,0c84ch		;013f
l0142h:
	ld hl,05958h		;0142
l0145h:
	call sub_04edh		;0145
l0148h:
	ld de,0cbe8h		;0148
	ld hl,04c37h		;014b
	call sub_04edh		;014e
l0151h:
	call l0386h+2		;0151
	ld a,080h		;0154
	ld (0de00h),a		;0156
l0159h:
	ld a,080h		;0159
l015bh:
	ld (0c006h),a		;015b
	call sub_03a0h		;015e
	ei			;0161
	jp l07f8h		;0162
l0165h:
	push af			;0165
	in a,(0bfh)		;0166
	bit 7,a		;0168
l016ah:
	jp z,l0237h		;016a
	push ix		;016d
	push iy		;016f
	push bc			;0171
	push de			;0172
	push hl			;0173
	ex af,af'			;0174
	exx			;0175
	push af			;0176
	push bc			;0177
	push de			;0178
	push hl			;0179
	ld hl,0c003h		;017a
	in a,(0ddh)		;017d
l017fh:
	and 010h		;017f
	ld c,(hl)			;0181
	ld (hl),a			;0182
	xor c			;0183
	and c			;0184
	jp nz,l0213h		;0185
	ld a,(0c005h)		;0188
	inc a			;018b
	cp 00fh		;018c
	jr c,l0192h		;018e
	ld a,00fh		;0190
l0192h:
	ld (0c005h),a		;0192
	ld a,(0c004h)		;0195
	or a			;0198
	jp nz,l0219h		;0199
	ld a,(0c001h)		;019c
	or a			;019f
l01a0h:
	jp nz,l0224h		;01a0
	ld c,0beh		;01a3
	ld a,(0c089h)		;01a5
	rlca			;01a8
	jp nc,l022fh		;01a9
	ld hl,l1fc0h		;01ac
	call sub_0426h		;01af
	ld hl,(0c514h)		;01b2
	ld b,020h		;01b5
	otir		;01b7
	ld hl,l1fe0h		;01b9
	call sub_0426h		;01bc
	ld hl,(0c512h)		;01bf
	ld b,020h		;01c2
	otir		;01c4
	ld hl,03f00h		;01c6
	call sub_0426h		;01c9
	ld hl,0c100h		;01cc
	ld b,040h		;01cf
	otir		;01d1
	ld hl,l3f80h		;01d3
	call sub_0426h		;01d6
	ld hl,0c140h		;01d9
	ld b,080h		;01dc
	otir		;01de
	xor a			;01e0
	ld (0c089h),a		;01e1
l01e4h:
	call sub_3543h		;01e4
	ld c,00ch		;01e7
	call sub_0260h		;01e9
	call sub_0268h		;01ec
	call sub_35b0h		;01ef
	call sub_3566h		;01f2
	call sub_027bh		;01f5
	call sub_0795h		;01f8
l01fbh:
	call sub_796fh		;01fb
l01feh:
	ld hl,0c001h		;01fe
l0201h:
	ld (hl),001h		;0201
l0203h:
	pop hl			;0203
	pop de			;0204
l0205h:
	pop bc			;0205
l0206h:
	pop af			;0206
l0207h:
	exx			;0207
	ex af,af'			;0208
	pop hl			;0209
	pop de			;020a
	pop bc			;020b
	pop iy		;020c
	pop ix		;020e
	pop af			;0210
	ei			;0211
	ret			;0212
l0213h:
	call sub_7dd7h		;0213
	jp l00d6h		;0216
l0219h:
	ld c,018h		;0219
	call sub_0260h		;021b
	call sub_0268h		;021e
	jp l01feh		;0221
l0224h:
	ld c,018h		;0224
	call sub_0260h		;0226
	call sub_0268h		;0229
	jp l01fbh		;022c
l022fh:
	ld c,00dh		;022f
	call sub_0260h		;0231
	jp l01e4h		;0234
l0237h:
	ld a,(0c011h)		;0237
	or a			;023a
	jr z,l025dh		;023b
	nop			;023d
	nop			;023e
	nop			;023f
	nop			;0240
	nop			;0241
	nop			;0242
	nop			;0243
	nop			;0244
	nop			;0245
	nop			;0246
	nop			;0247
	nop			;0248
l0249h:
	nop			;0249
	nop			;024a
	nop			;024b
	nop			;024c
	nop			;024d
	nop			;024e
	nop			;024f
	ld a,010h		;0250
	out (0bfh),a		;0252
	ld a,0c0h		;0254
	out (0bfh),a		;0256
	ld a,(l001bh)		;0258
	out (0beh),a		;025b
l025dh:
	pop af			;025d
	ei			;025e
	ret			;025f
sub_0260h:
	ld b,01fh		;0260
l0262h:
	djnz l0262h		;0262
	dec c			;0264
	jr nz,sub_0260h		;0265
	ret			;0267
sub_0268h:
	ld a,(0c011h)		;0268
	or a			;026b
	ret z			;026c
	ld a,010h		;026d
	out (0bfh),a		;026f
	ld a,0c0h		;0271
	out (0bfh),a		;0273
	ld a,(l0013h)		;0275
	out (0beh),a		;0278
	ret			;027a
sub_027bh:
	ld a,(0c000h)		;027b
	bit 2,a		;027e
l0280h:
	ret z			;0280
l0281h:
	bit 3,a		;0281
	jp nz,l0369h		;0283
	bit 7,a		;0286
	jr z,l0296h		;0288
	ld a,(0c1c2h)		;028a
	ld (0c1c3h),a		;028d
	call sub_02a3h		;0290
	ld (0c1c2h),a		;0293
l0296h:
	ld a,(0c1c0h)		;0296
l0299h:
	ld (0c1c1h),a		;0299
	call sub_030fh		;029c
	ld (0c1c0h),a		;029f
	ret			;02a2
sub_02a3h:
	ld a,(0c002h)		;02a3
	and a			;02a6
l02a7h:
	jr z,l02b8h		;02a7
	in a,(0dch)		;02a9
l02abh:
	ld c,a			;02ab
	in a,(0ddh)		;02ac
l02aeh:
	rl c		;02ae
l02b0h:
	rla			;02b0
	rl c		;02b1
	rla			;02b3
	cpl			;02b4
	and 03fh		;02b5
	ret			;02b7
l02b8h:
	ld a,007h		;02b8
	out (0deh),a		;02ba
	in a,(0dch)		;02bc
	ld c,a			;02be
	in a,(0ddh)		;02bf
	rl c		;02c1
	rla			;02c3
	rl c		;02c4
	rla			;02c6
	ld c,a			;02c7
	ld a,001h		;02c8
	out (0deh),a		;02ca
	in a,(0dch)		;02cc
	bit 2,a		;02ce
	jr nz,l02d4h		;02d0
	res 2,c		;02d2
l02d4h:
	bit 3,a		;02d4
	jr nz,l02dah		;02d6
	res 1,c		;02d8
l02dah:
	ld a,002h		;02da
	out (0deh),a		;02dc
	in a,(0dch)		;02de
	bit 1,a		;02e0
	jr nz,l02e6h		;02e2
	res 0,c		;02e4
l02e6h:
	ld a,003h		;02e6
	out (0deh),a		;02e8
	in a,(0dch)		;02ea
	bit 2,a		;02ec
	jr nz,l02f2h		;02ee
sub_02f0h:
	res 3,c		;02f0
l02f2h:
	ld a,005h		;02f2
	out (0deh),a		;02f4
	in a,(0ddh)		;02f6
	bit 3,a		;02f8
	jr nz,l02feh		;02fa
	res 5,c		;02fc
l02feh:
	ld a,006h		;02fe
l0300h:
	out (0deh),a		;0300
l0302h:
	in a,(0ddh)		;0302
l0304h:
	bit 2,a		;0304
l0306h:
	jr nz,l030ah		;0306
l0308h:
	res 4,c		;0308
l030ah:
	ld a,c			;030a
	cpl			;030b
	and 03fh		;030c
	ret			;030e
sub_030fh:
	ld a,(0c002h)		;030f
	and a			;0312
	jr z,l031bh		;0313
	in a,(0dch)		;0315
l0317h:
	cpl			;0317
	and 03fh		;0318
	ret			;031a
l031bh:
	ld a,007h		;031b
	out (0deh),a		;031d
	in a,(0dch)		;031f
	ld c,a			;0321
	ld a,002h		;0322
	out (0deh),a		;0324
l0326h:
	in a,(0dch)		;0326
	bit 4,a		;0328
	jr nz,l032eh		;032a
	res 4,c		;032c
l032eh:
	ld a,003h		;032e
	out (0deh),a		;0330
	in a,(0dch)		;0332
	bit 4,a		;0334
	jr nz,l033ah		;0336
sub_0338h:
	res 5,c		;0338
l033ah:
	ld a,004h		;033a
	out (0deh),a		;033c
	in a,(0dch)		;033e
	bit 5,a		;0340
	jr nz,l0346h		;0342
	res 1,c		;0344
l0346h:
	ld a,005h		;0346
	out (0deh),a		;0348
	in a,(0dch)		;034a
l034ch:
	bit 5,a		;034c
	jr nz,l0352h		;034e
	res 2,c		;0350
l0352h:
	ld a,006h		;0352
	out (0deh),a		;0354
	in a,(0dch)		;0356
	bit 5,a		;0358
	jr nz,l035eh		;035a
	res 3,c		;035c
l035eh:
	bit 6,a		;035e
	jr nz,l0364h		;0360
	res 0,c		;0362
l0364h:
	ld a,c			;0364
	cpl			;0365
	and 03fh		;0366
	ret			;0368
l0369h:
	ret			;0369
l036ah:
	ld a,(0c004h)		;036a
	or a			;036d
	call nz,sub_037bh		;036e
	ld hl,0c001h		;0371
	ld a,(hl)			;0374
	or a			;0375
	jr z,l036ah		;0376
	ld (hl),000h		;0378
	ret			;037a
sub_037bh:
	call sub_7dd7h		;037b
l037eh:
	ld a,(0c004h)		;037e
l0381h:
	or a			;0381
	jr nz,l037eh		;0382
	ret			;0384
	nop			;0385
l0386h:
	ld de,l21e0h		;0386
	nop			;0389
	jr c,l039dh		;038a
	add a,l			;038c
	inc bc			;038d
	ld bc,l037eh+2		;038e
	call sub_0450h		;0391
	ld hl,03f00h		;0394
	ld de,l0386h+1		;0397
	ld bc,l0040h		;039a
l039dh:
	jp l0440h		;039d
sub_03a0h:
	ld a,0e0h		;03a0
	jr l03a6h		;03a2
sub_03a4h:
	ld a,0a0h		;03a4
l03a6h:
	out (0bfh),a		;03a6
	ld a,081h		;03a8
	out (0bfh),a		;03aa
	ret			;03ac
sub_03adh:
	ld hl,(0c08ah)		;03ad
	dec hl			;03b0
	ld (0c08ah),hl		;03b1
	ld a,l			;03b4
	or h			;03b5
	ret			;03b6
sub_03b7h:
	ld b,(hl)			;03b7
	inc hl			;03b8
l03b9h:
	push bc			;03b9
	ld e,(hl)			;03ba
	inc hl			;03bb
	ld d,(hl)			;03bc
	inc hl			;03bd
	ld c,(hl)			;03be
	inc hl			;03bf
sub_03c0h:
	ld b,(hl)			;03c0
	inc hl			;03c1
	ex de,hl			;03c2
	call sub_042fh		;03c3
	ex de,hl			;03c6
	add hl,bc			;03c7
	pop bc			;03c8
	djnz l03b9h		;03c9
	ret			;03cb
	push hl			;03cc
	ld hl,(0c08ch)		;03cd
	ld a,h			;03d0
	rrca			;03d1
	rrca			;03d2
	xor h			;03d3
	rrca			;03d4
	xor l			;03d5
	rrca			;03d6
	rrca			;03d7
	rrca			;03d8
	rrca			;03d9
	xor l			;03da
	rra			;03db
	adc hl,hl		;03dc
	jr nz,l03e3h		;03de
l03e0h:
	ld hl,l733ch		;03e0
l03e3h:
	ld a,r		;03e3
	xor l			;03e5
	ld (0c08ch),hl		;03e6
	pop hl			;03e9
	ret			;03ea
	ld d,000h		;03eb
	ld l,d			;03ed
	ld b,008h		;03ee
l03f0h:
	add hl,hl			;03f0
	jr nc,l03f4h		;03f1
	add hl,de			;03f3
l03f4h:
	djnz l03f0h		;03f4
	ret			;03f6
sub_03f7h:
	ld hl,l0000h		;03f7
	ld a,010h		;03fa
l03fch:
	add hl,hl			;03fc
	ex de,hl			;03fd
	adc hl,hl		;03fe
l0400h:
	ex de,hl			;0400
l0401h:
	jr nc,l0407h		;0401
	add hl,bc			;0403
	jr nc,l0407h		;0404
	inc de			;0406
l0407h:
	dec a			;0407
sub_0408h:
	jr nz,l03fch		;0408
sub_040ah:
	ret			;040a
sub_040bh:
	ld a,010h		;040b
l040dh:
	sla e		;040d
	rl d		;040f
	adc hl,hl		;0411
	jr c,l041eh		;0413
	sbc hl,bc		;0415
	jr nc,l0421h		;0417
	add hl,bc			;0419
	dec a			;041a
	jr nz,l040dh		;041b
	ret			;041d
l041eh:
	or a			;041e
sub_041fh:
	sbc hl,bc		;041f
l0421h:
	inc e			;0421
	dec a			;0422
	jr nz,l040dh		;0423
	ret			;0425
sub_0426h:
	ld a,l			;0426
	out (0bfh),a		;0427
	ld a,040h		;0429
	or h			;042b
	out (0bfh),a		;042c
	ret			;042e
sub_042fh:
	call sub_0426h		;042f
	push de			;0432
	push bc			;0433
l0434h:
	ld a,(de)			;0434
	out (0beh),a		;0435
	inc de			;0437
	dec bc			;0438
l0439h:
	ld a,c			;0439
	or b			;043a
	jr nz,l0434h		;043b
	pop bc			;043d
	pop de			;043e
l043fh:
	ret			;043f
l0440h:
	call sub_0426h		;0440
	push bc			;0443
	push de			;0444
l0445h:
	ld a,(de)			;0445
	out (0beh),a		;0446
	dec bc			;0448
	ld a,c			;0449
	or b			;044a
	jr nz,l0445h		;044b
	pop de			;044d
	pop bc			;044e
	ret			;044f
sub_0450h:
	call sub_0426h		;0450
	ex (sp),hl			;0453
	ex (sp),hl			;0454
l0455h:
	ld a,(de)			;0455
	out (0beh),a		;0456
	push de			;0458
	inc de			;0459
	ld a,(de)			;045a
	out (0beh),a		;045b
	pop de			;045d
	dec bc			;045e
	ld a,c			;045f
	or b			;0460
	jr nz,l0455h		;0461
	ret			;0463
l0464h:
	push bc			;0464
	ld b,000h		;0465
	call sub_0426h		;0467
l046ah:
	ld a,(de)			;046a
	out (0beh),a		;046b
	inc de			;046d
	ex (sp),hl			;046e
	ex (sp),hl			;046f
	ld a,(de)			;0470
	out (0beh),a		;0471
	inc de			;0473
	dec bc			;0474
	ld a,c			;0475
	or b			;0476
	jr nz,l046ah		;0477
	ld bc,l0040h		;0479
	add hl,bc			;047c
	pop bc			;047d
	djnz l0464h		;047e
	ret			;0480
sub_0481h:
	ld a,l			;0481
	out (0bfh),a		;0482
	ld a,0c0h		;0484
l0486h:
	or h			;0486
	out (0bfh),a		;0487
l0489h:
	ex (sp),hl			;0489
	ex (sp),hl			;048a
	ld a,(de)			;048b
	out (0beh),a		;048c
	inc de			;048e
	djnz l0489h		;048f
	ret			;0491
sub_0492h:
	ld (0c088h),a		;0492
	call sub_0426h		;0495
	ex de,hl			;0498
l0499h:
	ld a,(hl)			;0499
	exx			;049a
	ld c,0beh		;049b
	ld b,004h		;049d
	ld h,a			;049f
	ld a,(0c088h)		;04a0
l04a3h:
	rra			;04a3
	ld d,h			;04a4
l04a5h:
	jr c,l04a9h		;04a5
	ld d,000h		;04a7
l04a9h:
	out (c),d		;04a9
	djnz l04a3h		;04ab
	exx			;04ad
	inc hl			;04ae
	dec bc			;04af
	ld a,b			;04b0
	or c			;04b1
	jr nz,l0499h		;04b2
	ret			;04b4
sub_04b5h:
	ld b,004h		;04b5
l04b7h:
	push bc			;04b7
	push de			;04b8
	call sub_04c2h		;04b9
	pop de			;04bc
	inc de			;04bd
sub_04beh:
	pop bc			;04be
	djnz l04b7h		;04bf
	ret			;04c1
sub_04c2h:
	ld a,(hl)			;04c2
	inc hl			;04c3
	or a			;04c4
	ret z			;04c5
	ld b,a			;04c6
	and 080h		;04c7
	ld c,a			;04c9
	ld a,b			;04ca
	and 07fh		;04cb
	ld b,a			;04cd
l04ceh:
	ld a,e			;04ce
	out (0bfh),a		;04cf
	ld a,d			;04d1
	or 040h		;04d2
	out (0bfh),a		;04d4
	ex (sp),hl			;04d6
	ex (sp),hl			;04d7
	ld a,(hl)			;04d8
	out (0beh),a		;04d9
	xor a			;04db
	or c			;04dc
	jr z,l04e0h		;04dd
	inc hl			;04df
l04e0h:
	inc de			;04e0
	inc de			;04e1
	inc de			;04e2
	inc de			;04e3
	djnz l04ceh		;04e4
	jp nz,sub_04c2h		;04e6
	inc hl			;04e9
	jp sub_04c2h		;04ea
sub_04edh:
	ld b,004h		;04ed
l04efh:
	push bc			;04ef
l04f0h:
	push de			;04f0
	call sub_04fah		;04f1
	pop de			;04f4
	inc de			;04f5
	pop bc			;04f6
	djnz l04efh		;04f7
	ret			;04f9
sub_04fah:
	ld a,(hl)			;04fa
	inc hl			;04fb
	or a			;04fc
	ret z			;04fd
	ld b,a			;04fe
	and 080h		;04ff
	ld c,a			;0501
l0502h:
	ld a,b			;0502
l0503h:
	and 07fh		;0503
l0505h:
	ld b,a			;0505
l0506h:
	ld a,(hl)			;0506
	ld (de),a			;0507
l0508h:
	xor a			;0508
	or c			;0509
	jr z,l050dh		;050a
l050ch:
	inc hl			;050c
l050dh:
	inc de			;050d
	inc de			;050e
	inc de			;050f
	inc de			;0510
	djnz l0506h		;0511
	jp nz,sub_04fah		;0513
	inc hl			;0516
	jp sub_04fah		;0517
l051ah:
	call sub_05cch		;051a
	xor a			;051d
l051eh:
	ld e,a			;051e
	ld d,000h		;051f
	push af			;0521
	ld hl,0c1c4h		;0522
	add hl,de			;0525
	ld a,(hl)			;0526
	add a,a			;0527
	ld e,a			;0528
l0529h:
	ld d,000h		;0529
	ld hl,l074fh		;052b
	add hl,de			;052e
	ld e,(hl)			;052f
	inc hl			;0530
	ld d,(hl)			;0531
	push de			;0532
	pop ix		;0533
	ld a,(ix+002h)		;0535
	or a			;0538
	jr z,l053eh		;0539
	call sub_0547h		;053b
l053eh:
	pop af			;053e
	inc a			;053f
	cp 006h		;0540
	jr nz,l051eh		;0542
	jp l05a1h		;0544
sub_0547h:
	ld a,(0c080h)		;0547
	ld e,a			;054a
	ld d,000h		;054b
	add a,(ix+005h)		;054d
	cp 040h		;0550
	ret nc			;0552
	ld hl,0c100h		;0553
	add hl,de			;0556
	push hl			;0557
	ld hl,0c140h		;0558
	add hl,de			;055b
	add hl,de			;055c
	exx			;055d
	pop hl			;055e
	ld e,(ix+006h)		;055f
	ld d,(ix+007h)		;0562
	ld b,(ix+005h)		;0565
l0568h:
	ld a,(de)			;0568
	add a,(ix+00bh)		;0569
	cp 0d0h		;056c
	jr nz,l0572h		;056e
	ld a,0d8h		;0570
l0572h:
	ld (hl),a			;0572
	inc de			;0573
	ld a,(de)			;0574
	ex af,af'			;0575
	inc de			;0576
	ld a,(de)			;0577
	inc de			;0578
	exx			;0579
	ex af,af'			;057a
	ld c,(ix+00dh)		;057b
	bit 7,a		;057e
	jr z,l0588h		;0580
l0582h:
	add a,c			;0582
l0583h:
	ld (hl),a			;0583
	jr c,l0590h		;0584
l0586h:
	jr l058ch		;0586
l0588h:
	add a,c			;0588
	ld (hl),a			;0589
	jr nc,l0590h		;058a
l058ch:
	exx			;058c
	ld (hl),0d8h		;058d
sub_058fh:
	exx			;058f
l0590h:
	inc hl			;0590
	ex af,af'			;0591
	ld (hl),a			;0592
	inc hl			;0593
	exx			;0594
	inc hl			;0595
	djnz l0568h		;0596
	ld a,(ix+005h)		;0598
	ld hl,0c080h		;059b
	add a,(hl)			;059e
	ld (hl),a			;059f
	ret			;05a0
l05a1h:
	ld a,(0c080h)		;05a1
	ld hl,0c081h		;05a4
	sub (hl)			;05a7
	jr nc,l05bch		;05a8
	neg		;05aa
	ld b,a			;05ac
	ld a,(0c080h)		;05ad
	ld e,a			;05b0
	ld d,000h		;05b1
	ld hl,0c100h		;05b3
	add hl,de			;05b6
l05b7h:
	ld (hl),0d0h		;05b7
	inc hl			;05b9
	djnz l05b7h		;05ba
l05bch:
	ld a,(0c080h)		;05bc
sub_05bfh:
	ld (0c081h),a		;05bf
	xor a			;05c2
	ld (0c080h),a		;05c3
	ld hl,0c089h		;05c6
	set 7,(hl)		;05c9
	ret			;05cb
sub_05cch:
	xor a			;05cc
	ld (0c1cah),a		;05cd
	inc a			;05d0
	ld (0c1cbh),a		;05d1
l05d4h:
	ld a,(0c1cah)		;05d4
	ld e,a			;05d7
	ld d,000h		;05d8
	ld hl,0c1c4h		;05da
	add hl,de			;05dd
	ld a,(hl)			;05de
	add a,a			;05df
	ld e,a			;05e0
	ld hl,l0636h		;05e1
	add hl,de			;05e4
	ld e,(hl)			;05e5
	inc hl			;05e6
	ld d,(hl)			;05e7
	ex de,hl			;05e8
	ld c,(hl)			;05e9
l05eah:
	ld a,(0c1cbh)		;05ea
	ld e,a			;05ed
	ld d,000h		;05ee
	ld hl,0c1c4h		;05f0
	add hl,de			;05f3
	ld a,(hl)			;05f4
	add a,a			;05f5
	ld e,a			;05f6
	ld hl,l0636h		;05f7
	add hl,de			;05fa
	ld e,(hl)			;05fb
l05fch:
	inc hl			;05fc
	ld d,(hl)			;05fd
	ld a,(de)			;05fe
	cp c			;05ff
sub_0600h:
	jr c,l061bh		;0600
	ld c,a			;0602
l0603h:
	ld a,(0c1cah)		;0603
	ld e,a			;0606
	ld d,000h		;0607
	ld hl,0c1c4h		;0609
sub_060ch:
	add hl,de			;060c
	ld b,(hl)			;060d
	push hl			;060e
	ld a,(0c1cbh)		;060f
	ld e,a			;0612
	ld hl,0c1c4h		;0613
	add hl,de			;0616
	ld a,(hl)			;0617
	pop de			;0618
	ld (de),a			;0619
	ld (hl),b			;061a
l061bh:
	ld a,(0c1cbh)		;061b
	inc a			;061e
	ld (0c1cbh),a		;061f
	cp 006h		;0622
	jr nz,l05eah		;0624
	ld a,(0c1cah)		;0626
	inc a			;0629
	ld (0c1cah),a		;062a
	cp 005h		;062d
	ret z			;062f
	inc a			;0630
	ld (0c1cbh),a		;0631
	jr l05d4h		;0634
l0636h:
	inc d			;0636
	jp nz,0c254h		;0637
	sub h			;063a
	jp nz,0c2d4h		;063b
	inc d			;063e
	jp 0c354h		;063f
sub_0642h:
	ld a,(ix+004h)		;0642
	add a,a			;0645
	ld e,a			;0646
	ld d,000h		;0647
	ld hl,l4124h		;0649
	add hl,de			;064c
	ld e,(hl)			;064d
	inc hl			;064e
	ld d,(hl)			;064f
	ld a,(de)			;0650
	ld (ix+005h),a		;0651
	inc de			;0654
	ld (ix+006h),e		;0655
	ld (ix+007h),d		;0658
	ret			;065b
l065ch:
	ld hl,l06bfh		;065c
	ld a,(0c509h)		;065f
	cp 050h		;0662
	jr nc,l0669h		;0664
	ld hl,l06dfh		;0666
l0669h:
	ld a,(0c501h)		;0669
	cp 050h		;066c
	jr c,l0672h		;066e
	ld a,04fh		;0670
l0672h:
	rrca			;0672
	rrca			;0673
	rrca			;0674
	and 00fh		;0675
	add a,a			;0677
	ld e,a			;0678
	ld d,000h		;0679
	add hl,de			;067b
	ld a,(0c089h)		;067c
	ld c,a			;067f
	ld a,(0c510h)		;0680
	cp (hl)			;0683
	jr z,l068ch		;0684
	ld a,(hl)			;0686
	ld (0c510h),a		;0687
	set 5,c		;068a
l068ch:
	inc hl			;068c
	ld a,(0c511h)		;068d
	cp (hl)			;0690
	jr z,l0699h		;0691
	ld a,(hl)			;0693
	ld (0c511h),a		;0694
	set 6,c		;0697
l0699h:
	ld a,c			;0699
	ld (0c089h),a		;069a
l069dh:
	ld de,l06ffh		;069d
	ld a,(0c510h)		;06a0
	add a,a			;06a3
	ld l,a			;06a4
	ld h,000h		;06a5
	add hl,de			;06a7
	ld a,(hl)			;06a8
	inc hl			;06a9
	ld h,(hl)			;06aa
	ld l,a			;06ab
	ld (0c512h),hl		;06ac
	ld a,(0c511h)		;06af
	add a,a			;06b2
	ld l,a			;06b3
l06b4h:
	ld h,000h		;06b4
	add hl,de			;06b6
	ld a,(hl)			;06b7
sub_06b8h:
	inc hl			;06b8
	ld h,(hl)			;06b9
	ld l,a			;06ba
	ld (0c514h),hl		;06bb
	ret			;06be
l06bfh:
	ld bc,l0206h		;06bf
	rlca			;06c2
	ld (bc),a			;06c3
	rlca			;06c4
	ld (bc),a			;06c5
	rlca			;06c6
	inc bc			;06c7
	rlca			;06c8
	inc bc			;06c9
	rlca			;06ca
	inc bc			;06cb
sub_06cch:
	ex af,af'			;06cc
	inc bc			;06cd
	ex af,af'			;06ce
	inc b			;06cf
	ex af,af'			;06d0
	inc b			;06d1
	ex af,af'			;06d2
	inc b			;06d3
	ex af,af'			;06d4
	inc b			;06d5
	ex af,af'			;06d6
	inc b			;06d7
	ex af,af'			;06d8
	inc b			;06d9
	ex af,af'			;06da
	inc b			;06db
	ex af,af'			;06dc
	inc b			;06dd
	ex af,af'			;06de
l06dfh:
	nop			;06df
	dec b			;06e0
	ld bc,l0104h+2		;06e1
	ld b,001h		;06e4
	ld b,002h		;06e6
	ld b,002h		;06e8
	ld b,002h		;06ea
	rlca			;06ec
	ld (bc),a			;06ed
	rlca			;06ee
	inc bc			;06ef
	rlca			;06f0
	inc bc			;06f1
	ex af,af'			;06f2
	inc b			;06f3
	ex af,af'			;06f4
	inc b			;06f5
	ex af,af'			;06f6
	inc b			;06f7
	ex af,af'			;06f8
	inc b			;06f9
	ex af,af'			;06fa
	inc b			;06fb
	ex af,af'			;06fc
	inc b			;06fd
	ex af,af'			;06fe
l06ffh:
	nop			;06ff
l0700h:
	add a,020h		;0700
l0702h:
	add a,040h		;0702
l0704h:
	add a,060h		;0704
	add a,080h		;0706
	add a,0a0h		;0708
	add a,0c0h		;070a
	add a,0e0h		;070c
sub_070eh:
	add a,000h		;070e
	rst 0			;0710
l0711h:
	ld hl,l074fh		;0711
	ld a,(0c086h)		;0714
	add a,a			;0717
	ld e,a			;0718
	ld d,000h		;0719
	add hl,de			;071b
	ld e,(hl)			;071c
	inc hl			;071d
	ld d,(hl)			;071e
	push de			;071f
	pop ix		;0720
	ld a,(ix+002h)		;0722
	or a			;0725
	jr z,l0732h		;0726
	ld hl,l0732h		;0728
	push hl			;072b
	ld hl,00759h		;072c
	jp l0807h		;072f
l0732h:
	call sub_0642h		;0732
	ld de,0c086h		;0735
	ld a,(de)			;0738
	ld c,a			;0739
	ld b,000h		;073a
	ld hl,0c1c4h		;073c
l073fh:
	add hl,bc			;073f
	ld a,(ix+001h)		;0740
sub_0743h:
	ld (hl),a			;0743
	inc c			;0744
	ld a,c			;0745
	ld (de),a			;0746
	sub 006h		;0747
	jr nz,l0711h		;0749
	ld (de),a			;074b
	jp l051ah		;074c
l074fh:
	nop			;074f
	jp nz,0c240h		;0750
	add a,b			;0753
	jp nz,0c2c0h		;0754
	nop			;0757
	jp 0c340h		;0758
	rst 38h			;075b
	inc hl			;075c
	or b			;075d
	dec de			;075e
	ld e,a			;075f
	ld a,(de)			;0760
	jp p,0681ah		;0761
	dec de			;0764
	ld e,a			;0765
	ld a,(de)			;0766
	jp p,0681ah		;0767
	dec de			;076a
	ld e,a			;076b
	ld a,(de)			;076c
	xor a			;076d
	dec de			;076e
	xor a			;076f
	dec de			;0770
	xor a			;0771
	dec de			;0772
	xor a			;0773
	dec de			;0774
	xor a			;0775
	dec de			;0776
	xor a			;0777
	dec de			;0778
	xor a			;0779
	dec de			;077a
	xor a			;077b
	dec de			;077c
	xor a			;077d
sub_077eh:
	dec de			;077e
	ld a,h			;077f
	inc h			;0780
l0781h:
	dec hl			;0781
	inc e			;0782
	ld a,(de)			;0783
	rrca			;0784
	dec e			;0785
	rrca			;0786
	ld c,l			;0787
sub_0788h:
	rrca			;0788
	and l			;0789
	rrca			;078a
	rra			;078b
	djnz l073fh		;078c
	ld de,l1227h		;078e
	ld l,h			;0791
	ld (de),a			;0792
	sbc a,012h		;0793
sub_0795h:
	ld a,(0c006h)		;0795
	bit 7,a		;0798
	ret z			;079a
	and 00fh		;079b
	cp 000h		;079d
	call z,sub_0ef9h		;079f
	call sub_02a3h		;07a2
	and 030h		;07a5
	jr nz,l07b4h		;07a7
	call sub_030fh		;07a9
	and 030h		;07ac
	jr z,l07eah		;07ae
	ld c,000h		;07b0
	jr l07b6h		;07b2
l07b4h:
	ld c,0d0h		;07b4
l07b6h:
	ex af,af'			;07b6
	ld hl,0c006h		;07b7
	ld a,04fh		;07ba
	and (hl)			;07bc
	cp 041h		;07bd
	jr nz,l07d6h		;07bf
	ld hl,0c009h		;07c1
	ex af,af'			;07c4
	cp (hl)			;07c5
	ret z			;07c6
	ld a,c			;07c7
	ld (0c000h),a		;07c8
	ld a,000h		;07cb
	ld (0de00h),a		;07cd
	ld a,002h		;07d0
	ld (0c006h),a		;07d2
	ret			;07d5
l07d6h:
	res 6,a		;07d6
	cp 001h		;07d8
	ret z			;07da
	ld a,087h		;07db
	ld (0c006h),a		;07dd
	ex af,af'			;07e0
	ld (0c009h),a		;07e1
	ld a,000h		;07e4
	ld (0de00h),a		;07e6
	ret			;07e9
l07eah:
	ex af,af'			;07ea
	ld a,(0c006h)		;07eb
	and 00fh		;07ee
	cp 001h		;07f0
	ret nz			;07f2
	ex af,af'			;07f3
	ld (0c009h),a		;07f4
	ret			;07f7
l07f8h:
	call l036ah		;07f8
	ld hl,l07f8h		;07fb
	push hl			;07fe
	ld a,(0c006h)		;07ff
	and 00fh		;0802
l0804h:
	ld hl,l0811h		;0804
l0807h:
	add a,a			;0807
	ld e,a			;0808
	ld d,000h		;0809
	add hl,de			;080b
	ld a,(hl)			;080c
	inc hl			;080d
	ld h,(hl)			;080e
	ld l,a			;080f
	jp (hl)			;0810
l0811h:
	or b			;0811
	ld c,021h		;0812
	ex af,af'			;0814
	ret nz			;0815
	ex af,af'			;0816
	sbc a,b			;0817
	ex af,af'			;0818
	jr l0826h		;0819
	dec sp			;081b
	dec bc			;081c
	ld l,e			;081d
	inc c			;081e
	and a			;081f
	ex af,af'			;0820
	ld hl,0c006h		;0821
	bit 6,(hl)		;0824
l0826h:
	jp nz,l088dh		;0826
	di			;0829
	call sub_03a4h		;082a
	call l0386h+2		;082d
	ld hl,l0000h		;0830
	ld de,l3b08h		;0833
	ld b,008h		;0836
	call sub_0481h		;0838
	ld hl,l0010h		;083b
	ld de,l3b10h		;083e
	ld b,00bh		;0841
	call sub_0481h		;0843
	ld de,02600h		;0846
	ld hl,l3b1bh		;0849
	call sub_04b5h		;084c
	ld hl,03854h		;084f
	ld de,l3efah		;0852
	ld b,005h		;0855
	ld c,00ah		;0857
	call l0464h		;0859
	ld de,l39c0h		;085c
	ld hl,03f5eh		;085f
	call sub_04b5h		;0862
	ld hl,0407fh		;0865
	call sub_03b7h		;0868
	ld hl,l3d96h		;086b
	ld de,l40f0h		;086e
	ld bc,l0016h		;0871
	call sub_042fh		;0874
	xor a			;0877
	ld (0de04h),a		;0878
	ld (0c011h),a		;087b
	ld hl,0c006h		;087e
	set 6,(hl)		;0881
	ld a,088h		;0883
	ld (0de00h),a		;0885
	call sub_03a0h		;0888
	ei			;088b
	ret			;088c
l088dh:
	ld a,(0de04h)		;088d
	rlca			;0890
	ret nc			;0891
	ld a,083h		;0892
	ld (0c006h),a		;0894
	ret			;0897
	ld hl,0c000h		;0898
	set 3,(hl)		;089b
	set 7,(hl)		;089d
	ld a,003h		;089f
	ld (0c045h),a		;08a1
	jp l0abdh		;08a4
	xor a			;08a7
	ld (0c000h),a		;08a8
	ld hl,0c040h		;08ab
	ld de,0c041h		;08ae
	ld bc,00541h		;08b1
	ld (hl),a			;08b4
	ldir		;08b5
	ld hl,0c006h		;08b7
	ld (hl),081h		;08ba
	inc hl			;08bc
	ld (hl),000h		;08bd
	ret			;08bf
	ld hl,0c006h		;08c0
	bit 6,(hl)		;08c3
	jp nz,l096eh		;08c5
	set 6,(hl)		;08c8
	di			;08ca
	call sub_03a4h		;08cb
	call l0386h+2		;08ce
	ld de,l0000h		;08d1
	ld hl,l5de3h		;08d4
	call sub_04b5h		;08d7
	ld hl,0c047h		;08da
	ld b,004h		;08dd
	xor a			;08df
l08e0h:
	ld (hl),a			;08e0
	inc hl			;08e1
	djnz l08e0h		;08e2
	ld (0c491h),a		;08e4
	ld (0c496h),a		;08e7
	call sub_030fh		;08ea
	ld (0c493h),a		;08ed
	ld (0c494h),a		;08f0
	ld hl,l3886h		;08f3
	ld de,0cb04h		;08f6
	ld bc,l0026h		;08f9
	call sub_042fh		;08fc
	ld hl,l394ah		;08ff
	ld de,0cb2ah		;0902
	ld bc,l0020h		;0905
	call sub_042fh		;0908
	ld hl,l39e2h		;090b
	ld de,0cb4ah		;090e
	ld bc,l0016h		;0911
	call sub_042fh		;0914
	ld hl,l3a4ah		;0917
	ld de,0cb60h		;091a
	ld bc,l0020h		;091d
	call sub_042fh		;0920
	ld hl,l3ae2h		;0923
	ld de,0cb4ah		;0926
	ld bc,l0016h		;0929
	call sub_042fh		;092c
	ld hl,l3b4ah		;092f
	ld de,0cb80h		;0932
	ld bc,l001bh+1		;0935
	call sub_042fh		;0938
	ld hl,l3be2h		;093b
	ld de,0cb4ah		;093e
	ld bc,l0016h		;0941
	call sub_042fh		;0944
	ld hl,l3c86h		;0947
	ld de,0cb9ch		;094a
	ld bc,l002ah		;094d
	call sub_042fh		;0950
	ld hl,03d10h		;0953
	ld de,0cbc6h		;0956
	ld bc,l0022h		;0959
	call sub_042fh		;095c
	call sub_03a0h		;095f
	xor a			;0962
	ld (0c48ah),a		;0963
	ld (0c499h),a		;0966
	ld (0c49ah),a		;0969
sub_096ch:
	ei			;096c
	ret			;096d
l096eh:
	call sub_0a10h		;096e
	ld hl,0c496h		;0971
	inc (hl)			;0974
	ld hl,0c494h		;0975
	call sub_030fh		;0978
	cp (hl)			;097b
	ret z			;097c
	dec hl			;097d
	cp (hl)			;097e
	jp z,l0988h		;097f
	ld (hl),a			;0982
	xor a			;0983
	ld (0c49ch),a		;0984
	ret			;0987
l0988h:
	ld hl,0c49ch		;0988
	inc (hl)			;098b
	ld a,(hl)			;098c
	cp 003h		;098d
	ret c			;098f
	xor a			;0990
	ld (hl),a			;0991
	ld hl,0c493h		;0992
	ld a,(hl)			;0995
	and 030h		;0996
	ld b,a			;0998
	inc hl			;0999
	ld a,(hl)			;099a
	and 030h		;099b
	cpl			;099d
	and b			;099e
	jr nz,l09f7h		;099f
	ld hl,0c493h		;09a1
	ld a,(hl)			;09a4
	inc hl			;09a5
	ld (hl),a			;09a6
	dec hl			;09a7
	cp 000h		;09a8
	ret z			;09aa
	ld b,(hl)			;09ab
	ld hl,0c491h		;09ac
	ld a,(hl)			;09af
	srl b		;09b0
	sbc a,000h		;09b2
	ld (hl),a			;09b4
	jp nc,l09bah		;09b5
	ld (hl),003h		;09b8
l09bah:
	ld a,(hl)			;09ba
	srl b		;09bb
	adc a,000h		;09bd
	ld (hl),a			;09bf
	cp 004h		;09c0
	jp c,l09c7h		;09c2
	ld (hl),000h		;09c5
l09c7h:
	ld e,(hl)			;09c7
	ld d,000h		;09c8
	ld hl,0c047h		;09ca
	add hl,de			;09cd
	ld a,e			;09ce
	cp 003h		;09cf
	jr nz,l09d7h		;09d1
	ld e,004h		;09d3
	jr l09d9h		;09d5
l09d7h:
	ld e,002h		;09d7
l09d9h:
	ld a,(hl)			;09d9
	srl b		;09da
	jp nc,l09e6h		;09dc
	sbc a,000h		;09df
	ld (hl),a			;09e1
	jp nc,l09e6h		;09e2
	ld (hl),e			;09e5
l09e6h:
	inc e			;09e6
	ld a,(hl)			;09e7
	srl b		;09e8
	jp nc,l09f6h		;09ea
	adc a,000h		;09ed
	ld (hl),a			;09ef
	cp e			;09f0
	jp c,l09f6h		;09f1
	ld (hl),000h		;09f4
l09f6h:
	ret			;09f6
l09f7h:
	ld a,(0c048h)		;09f7
	ld (0c4b2h),a		;09fa
	add a,002h		;09fd
	ld (0c4b0h),a		;09ff
	ld a,(0c04ah)		;0a02
	ld (0c4b1h),a		;0a05
l0a08h:
	srl a		;0a08
	ld (0c4b3h),a		;0a0a
	jp l0abdh		;0a0d
sub_0a10h:
	ld hl,0c140h		;0a10
	exx			;0a13
	ld hl,0c100h		;0a14
	ld c,033h		;0a17
	ld b,020h		;0a19
	exx			;0a1b
	xor a			;0a1c
	ld (0c492h),a		;0a1d
	ld b,003h		;0a20
	ld de,0c047h		;0a22
l0a25h:
	push bc			;0a25
	ld a,(0c491h)		;0a26
	ld b,a			;0a29
	ld a,(0c492h)		;0a2a
	cp b			;0a2d
	jr nz,l0a3ah		;0a2e
	ld a,(0c496h)		;0a30
	and 01fh		;0a33
	cp 00fh		;0a35
	jp c,l0a45h		;0a37
l0a3ah:
	ld c,028h		;0a3a
	ld b,084h		;0a3c
	ld a,(de)			;0a3e
	call sub_0aa5h		;0a3f
	call sub_0a85h		;0a42
l0a45h:
	exx			;0a45
	ld a,c			;0a46
	add a,b			;0a47
	ld c,a			;0a48
	exx			;0a49
	inc de			;0a4a
	ld a,(0c492h)		;0a4b
	inc a			;0a4e
	ld (0c492h),a		;0a4f
	pop bc			;0a52
	djnz l0a25h		;0a53
	ld a,(0c491h)		;0a55
	ld b,a			;0a58
	ld a,(0c492h)		;0a59
	cp b			;0a5c
	jr nz,l0a69h		;0a5d
	ld a,(0c496h)		;0a5f
	and 01fh		;0a62
	cp 00fh		;0a64
	jp c,l0a78h		;0a66
l0a69h:
	ld c,020h		;0a69
	ld b,03ch		;0a6b
	ld a,(de)			;0a6d
	call sub_0aa5h		;0a6e
	exx			;0a71
	ld c,09bh		;0a72
	exx			;0a74
	call sub_0a85h		;0a75
l0a78h:
	ld a,0d0h		;0a78
	ld (hl),a			;0a7a
	exx			;0a7b
	ld (hl),a			;0a7c
	exx			;0a7d
	ld hl,0c089h		;0a7e
	set 7,(hl)		;0a81
	ei			;0a83
	ret			;0a84
sub_0a85h:
	push bc			;0a85
	push de			;0a86
	ld b,004h		;0a87
	ld de,l489bh		;0a89
l0a8ch:
	push de			;0a8c
	exx			;0a8d
	pop de			;0a8e
	ld a,(de)			;0a8f
	add a,c			;0a90
	ld (hl),a			;0a91
	inc hl			;0a92
	inc de			;0a93
	push de			;0a94
	exx			;0a95
	pop de			;0a96
	ld a,(de)			;0a97
	add a,c			;0a98
	ld (hl),a			;0a99
	inc hl			;0a9a
	inc de			;0a9b
	ld a,(de)			;0a9c
	ld (hl),a			;0a9d
	inc hl			;0a9e
	inc de			;0a9f
	djnz l0a8ch		;0aa0
	pop de			;0aa2
	pop bc			;0aa3
	ret			;0aa4
sub_0aa5h:
	push de			;0aa5
	cp 001h		;0aa6
	ld d,a			;0aa8
	ld a,b			;0aa9
	jr c,l0abah		;0aaa
	jr z,l0ab9h		;0aac
	ld a,d			;0aae
	cp 003h		;0aaf
	ld a,b			;0ab1
	jr c,l0ab8h		;0ab2
	jr z,l0ab7h		;0ab4
	add a,c			;0ab6
l0ab7h:
	add a,c			;0ab7
l0ab8h:
	add a,c			;0ab8
l0ab9h:
	add a,c			;0ab9
l0abah:
	ld c,a			;0aba
	pop de			;0abb
	ret			;0abc
l0abdh:
	di			;0abd
	call sub_03a4h		;0abe
	ld hl,l0000h		;0ac1
	ld de,l0003h		;0ac4
	ld b,020h		;0ac7
	call sub_0481h		;0ac9
	ld de,02600h		;0acc
	ld hl,l4fc5h		;0acf
	call sub_04b5h		;0ad2
	ld de,03800h		;0ad5
	ld hl,l5654h		;0ad8
	call sub_04b5h		;0adb
	ld de,l0000h		;0ade
	ld hl,l5de3h		;0ae1
	call sub_04b5h		;0ae4
	ld hl,0c100h		;0ae7
	ld de,0c101h		;0aea
	ld bc,l003fh		;0aed
	ld (hl),0d0h		;0af0
	ldir		;0af2
	call sub_35c6h		;0af4
	ld a,(0c04ah)		;0af7
	rrca			;0afa
	and 007h		;0afb
	ld (0c046h),a		;0afd
l0b00h:
	ld a,081h		;0b00
l0b02h:
	ld (0de00h),a		;0b02
	ld a,005h		;0b05
	ld hl,0c000h		;0b07
	bit 3,(hl)		;0b0a
	jr z,l0b10h		;0b0c
	or 080h		;0b0e
l0b10h:
	ld (0c006h),a		;0b10
	call sub_03a0h		;0b13
	ei			;0b16
	ret			;0b17
	ld a,(0c518h)		;0b18
	or a			;0b1b
	jr nz,l0b28h		;0b1c
l0b1eh:
	call sub_1787h		;0b1e
	call 014b4h		;0b21
	call l0711h		;0b24
	ret			;0b27
l0b28h:
	ld hl,0c006h		;0b28
	ld e,006h		;0b2b
	ld a,(0c000h)		;0b2d
	bit 3,a		;0b30
	jr z,l0b36h		;0b32
	ld e,086h		;0b34
l0b36h:
	ld (hl),e			;0b36
	inc hl			;0b37
	ld (hl),000h		;0b38
	ret			;0b3a
	ld hl,0c495h		;0b3b
	ld a,0f8h		;0b3e
	and (hl)			;0b40
	ld (hl),a			;0b41
	ld hl,0c200h		;0b42
	ld de,0c201h		;0b45
	ld bc,l017fh		;0b48
	ld (hl),000h		;0b4b
	ldir		;0b4d
	ld hl,l0000h		;0b4f
	ld (0c518h),hl		;0b52
	xor a			;0b55
	ld (0c040h),a		;0b56
	ld (0c516h),a		;0b59
	ld (0c517h),a		;0b5c
	ld hl,0c100h		;0b5f
	ld de,0c101h		;0b62
	ld bc,l003fh		;0b65
	ld (hl),0d0h		;0b68
	ldir		;0b6a
	ld a,(0c043h)		;0b6c
	or a			;0b6f
	jr z,l0ba8h		;0b70
	dec a			;0b72
	jr z,l0ba0h		;0b73
	dec a			;0b75
	jr z,l0b8fh		;0b76
	dec a			;0b78
	jr z,l0b81h		;0b79
	ld a,(0c044h)		;0b7b
	or a			;0b7e
	jr nz,l0ba0h		;0b7f
l0b81h:
	ld hl,0c045h		;0b81
	ld a,(hl)			;0b84
	inc a			;0b85
	cp 004h		;0b86
	jr nz,l0b8ch		;0b88
	ld a,000h		;0b8a
l0b8ch:
	ld (hl),a			;0b8c
	jr l0ba0h		;0b8d
l0b8fh:
	ld hl,0c044h		;0b8f
	ld (hl),000h		;0b92
	inc hl			;0b94
	ld a,(hl)			;0b95
	inc a			;0b96
	cp 004h		;0b97
	jr nz,l0b9dh		;0b99
	ld a,000h		;0b9b
l0b9dh:
	ld (hl),a			;0b9d
	jr l0ba8h		;0b9e
l0ba0h:
	ld hl,0c044h		;0ba0
	ld a,(hl)			;0ba3
	inc a			;0ba4
	and 001h		;0ba5
	ld (hl),a			;0ba7
l0ba8h:
	ld hl,l0c43h		;0ba8
	ld a,(0c000h)		;0bab
	bit 7,a		;0bae
	jr nz,l0bb5h		;0bb0
	ld hl,l0c3fh		;0bb2
l0bb5h:
	ld a,(0c045h)		;0bb5
	ld e,a			;0bb8
	ld d,000h		;0bb9
	add hl,de			;0bbb
	ld a,(hl)			;0bbc
	ld (0c041h),a		;0bbd
	ld hl,l0c57h		;0bc0
	ld a,(0c000h)		;0bc3
	bit 7,a		;0bc6
	jr nz,l0bcdh		;0bc8
	ld hl,l0c47h		;0bca
l0bcdh:
	ld a,(0c041h)		;0bcd
	add a,a			;0bd0
	add a,a			;0bd1
	ld e,a			;0bd2
	ld d,000h		;0bd3
	add hl,de			;0bd5
	ld a,(hl)			;0bd6
	ld (0c202h),a		;0bd7
	inc hl			;0bda
	ld a,(hl)			;0bdb
	ld (0c242h),a		;0bdc
	inc hl			;0bdf
	ld a,(hl)			;0be0
	ld (0c282h),a		;0be1
	inc hl			;0be4
	ld a,(hl)			;0be5
	ld (0c2c2h),a		;0be6
	ld a,04fh		;0be9
	ld (0c344h),a		;0beb
	ld a,050h		;0bee
	ld (0c304h),a		;0bf0
	ld a,018h		;0bf3
	ld (0c302h),a		;0bf5
	ld a,016h		;0bf8
	ld (0c342h),a		;0bfa
	xor a			;0bfd
	ld (0c303h),a		;0bfe
	ld (0c343h),a		;0c01
	ld a,(0c041h)		;0c04
	ld e,a			;0c07
	ld d,000h		;0c08
	ld hl,l0c67h		;0c0a
	add hl,de			;0c0d
	ld a,(hl)			;0c0e
	ld (0c312h),a		;0c0f
	ld hl,0c1c1h		;0c12
	ld de,l0040h		;0c15
	xor a			;0c18
	ld b,006h		;0c19
l0c1bh:
	add hl,de			;0c1b
	ld (hl),a			;0c1c
	inc a			;0c1d
	djnz l0c1bh		;0c1e
	ld a,(0c041h)		;0c20
	ld (0c042h),a		;0c23
	ld hl,0c000h		;0c26
	set 2,(hl)		;0c29
	ld a,001h		;0c2b
	ld (0c011h),a		;0c2d
	ld (0c48ch),a		;0c30
	ld a,004h		;0c33
	bit 3,(hl)		;0c35
	jr z,l0c3bh		;0c37
	or 080h		;0c39
l0c3bh:
	ld (0c006h),a		;0c3b
	ret			;0c3e
l0c3fh:
	nop			;0c3f
	ld bc,l00ffh+1		;0c40
l0c43h:
	nop			;0c43
	ld bc,l0302h		;0c44
l0c47h:
	inc bc			;0c47
	ld (bc),a			;0c48
	nop			;0c49
	nop			;0c4a
	ld bc,l0003h		;0c4b
	nop			;0c4e
	nop			;0c4f
	nop			;0c50
	nop			;0c51
	nop			;0c52
	nop			;0c53
	nop			;0c54
	nop			;0c55
	nop			;0c56
l0c57h:
	inc bc			;0c57
	ld (bc),a			;0c58
	ld bc,l0102h		;0c59
	inc bc			;0c5c
	ld bc,l0102h		;0c5d
	ld (bc),a			;0c60
	inc bc			;0c61
	ld (bc),a			;0c62
	ld bc,l0102h		;0c63
	inc bc			;0c66
l0c67h:
	ld (bc),a			;0c67
	ld bc,l0102h		;0c68
	ld hl,0c007h		;0c6b
	ld a,(hl)			;0c6e
	dec a			;0c6f
	jr z,l0c8eh		;0c70
	dec a			;0c72
	jr z,l0c99h		;0c73
	dec a			;0c75
	jr z,l0cbah		;0c76
	dec a			;0c78
	jp z,l0d25h		;0c79
	dec a			;0c7c
	jp z,l0d3eh		;0c7d
	ld (hl),001h		;0c80
	ld hl,l0078h		;0c82
	ld (0c08ah),hl		;0c85
	call sub_0d84h		;0c88
	jp l2ee1h		;0c8b
l0c8eh:
	call sub_03adh		;0c8e
	jp nz,l0b1eh		;0c91
	ld a,002h		;0c94
	ld (0c007h),a		;0c96
l0c99h:
	ld a,(0c040h)		;0c99
	bit 7,a		;0c9c
	jp nz,l0b1eh		;0c9e
	ld hl,0c000h		;0ca1
	res 2,(hl)		;0ca4
	ld a,003h		;0ca6
	ld (0c007h),a		;0ca8
	call sub_2feah		;0cab
	ld a,(0c000h)		;0cae
	bit 3,a		;0cb1
	ret z			;0cb3
	ld a,000h		;0cb4
	ld (0de00h),a		;0cb6
	ret			;0cb9
l0cbah:
	ld a,(0c48bh)		;0cba
	bit 0,a		;0cbd
	jp nz,l0d5fh		;0cbf
	ld a,(0c481h)		;0cc2
	bit 0,a		;0cc5
	jr nz,l0d07h		;0cc7
	ld a,(0c495h)		;0cc9
	bit 0,a		;0ccc
	jp z,l0d63h		;0cce
l0cd1h:
	ld hl,0c100h		;0cd1
	ld (hl),0d0h		;0cd4
	ld a,080h		;0cd6
	ld (0c089h),a		;0cd8
	xor a			;0cdb
	ld (0c202h),a		;0cdc
	ld (0c242h),a		;0cdf
	ld (0c282h),a		;0ce2
	ld (0c2c2h),a		;0ce5
	ld (0c302h),a		;0ce8
	ld (0c302h),a		;0ceb
	ld a,004h		;0cee
	ld (0c007h),a		;0cf0
	call sub_31b8h		;0cf3
	ld a,(0c481h)		;0cf6
	bit 0,a		;0cf9
	ret z			;0cfb
	ld a,(0c045h)		;0cfc
	ld (0c51ch),a		;0cff
	xor a			;0d02
l0d03h:
	ld (0c51bh),a		;0d03
	ret			;0d06
l0d07h:
	ld a,(0c495h)		;0d07
	bit 0,a		;0d0a
	jr z,l0d1ah		;0d0c
	ld a,(0c51ch)		;0d0e
	ld (0c045h),a		;0d11
	xor a			;0d14
	ld (0c481h),a		;0d15
	jr l0cd1h		;0d18
l0d1ah:
	ld hl,0c51bh		;0d1a
	ld a,(hl)			;0d1d
	or a			;0d1e
	jr nz,l0d6fh		;0d1f
	ld (hl),001h		;0d21
	jr l0d6bh		;0d23
l0d25h:
	ld a,(0c495h)		;0d25
	bit 1,a		;0d28
	jr z,l0d67h		;0d2a
	bit 2,a		;0d2c
	jr z,l0d67h		;0d2e
	ld a,005h		;0d30
	ld (0c007h),a		;0d32
	ld hl,000b4h		;0d35
	ld (0c08ah),hl		;0d38
	jp l33c4h		;0d3b
l0d3eh:
	ld hl,0c089h		;0d3e
	set 7,(hl)		;0d41
	call sub_03adh		;0d43
	ret nz			;0d46
l0d47h:
	xor a			;0d47
	ld (0c000h),a		;0d48
	ld hl,0c006h		;0d4b
	ld (hl),080h		;0d4e
	inc hl			;0d50
	ld (hl),a			;0d51
	ld hl,0c040h		;0d52
	ld de,0c041h		;0d55
	ld bc,l0529h		;0d58
	ld (hl),a			;0d5b
	ldir		;0d5c
	ret			;0d5e
l0d5fh:
	ld a,000h		;0d5f
	jr l0d71h		;0d61
l0d63h:
	ld a,001h		;0d63
	jr l0d71h		;0d65
l0d67h:
	ld a,002h		;0d67
	jr l0d71h		;0d69
l0d6bh:
	ld a,003h		;0d6b
	jr l0d71h		;0d6d
l0d6fh:
	ld a,004h		;0d6f
l0d71h:
	ld (0c043h),a		;0d71
	ld a,(0c000h)		;0d74
	bit 3,a		;0d77
	jr nz,l0d47h		;0d79
	ld hl,0c006h		;0d7b
	ld (hl),005h		;0d7e
	inc hl			;0d80
	ld (hl),000h		;0d81
	ret			;0d83
sub_0d84h:
	ld a,(0c518h)		;0d84
	dec a			;0d87
	jr z,l0db5h		;0d88
	dec a			;0d8a
	jr z,l0da4h		;0d8b
	dec a			;0d8d
	jr z,l0d9ah		;0d8e
	ld a,(0c041h)		;0d90
	ld (0c042h),a		;0d93
	ld c,000h		;0d96
	jr l0dc0h		;0d98
l0d9ah:
	ld a,(0c519h)		;0d9a
	or a			;0d9d
	jr nz,l0da4h		;0d9e
	ld c,000h		;0da0
	jr l0dc0h		;0da2
l0da4h:
	ld c,001h		;0da4
	ld a,(0c519h)		;0da6
	dec a			;0da9
	jr z,l0dc0h		;0daa
	ld c,000h		;0dac
	dec a			;0dae
	jr z,l0dc0h		;0daf
	ld c,002h		;0db1
	jr l0dc0h		;0db3
l0db5h:
	ld c,002h		;0db5
	ld a,(0c040h)		;0db7
	bit 0,a		;0dba
	jr nz,l0dc0h		;0dbc
	ld c,003h		;0dbe
l0dc0h:
	ld a,(0c042h)		;0dc0
	ld e,a			;0dc3
	ld d,000h		;0dc4
	ld hl,l0e00h		;0dc6
	add hl,de			;0dc9
	ld a,(hl)			;0dca
	or c			;0dcb
	ld (0c480h),a		;0dcc
	ret			;0dcf
l0dd0h:
	ld d,c			;0dd0
	add a,b			;0dd1
	ld d,d			;0dd2
	add a,b			;0dd3
	add a,b			;0dd4
	xor (hl)			;0dd5
	add a,b			;0dd6
	xor l			;0dd7
	add a,b			;0dd8
	xor (hl)			;0dd9
	ld d,d			;0dda
	add a,b			;0ddb
	ld d,c			;0ddc
	add a,b			;0ddd
	ld d,d			;0dde
	add a,b			;0ddf
	add a,b			;0de0
l0de1h:
	xor (hl)			;0de1
	add a,b			;0de2
	xor l			;0de3
	add a,b			;0de4
	xor (hl)			;0de5
	ld d,d			;0de6
	add a,b			;0de7
l0de8h:
	add hl,hl			;0de8
	add a,b			;0de9
	ld d,d			;0dea
	xor (hl)			;0deb
	ld b,h			;0dec
	cp h			;0ded
	add a,b			;0dee
	out (052h),a		;0def
	xor (hl)			;0df1
	ld b,h			;0df2
	cp h			;0df3
	add hl,hl			;0df4
	add a,b			;0df5
	ld d,d			;0df6
	xor (hl)			;0df7
	ld b,h			;0df8
	cp h			;0df9
	add a,b			;0dfa
	out (052h),a		;0dfb
	xor (hl)			;0dfd
	ld b,h			;0dfe
	cp h			;0dff
l0e00h:
	ld b,b			;0e00
l0e01h:
	add a,b			;0e01
	ld b,b			;0e02
l0e03h:
	add a,b			;0e03
sub_0e04h:
	ld a,(0c518h)		;0e04
	or a			;0e07
	ret nz			;0e08
	ld a,(0c040h)		;0e09
	bit 0,a		;0e0c
	jr z,l0e3bh		;0e0e
l0e10h:
	ld a,(0c041h)		;0e10
	add a,a			;0e13
	ld e,a			;0e14
	add a,a			;0e15
	add a,e			;0e16
	ld e,a			;0e17
	ld d,000h		;0e18
	ld hl,l0dd0h		;0e1a
	add hl,de			;0e1d
	ld a,(0c509h)		;0e1e
	cp (hl)			;0e21
	jr c,l0e6fh		;0e22
	inc hl			;0e24
	cp (hl)			;0e25
	jr nc,l0e6fh		;0e26
	inc hl			;0e28
	ld a,(0c044h)		;0e29
	add a,a			;0e2c
	ld e,a			;0e2d
	add hl,de			;0e2e
	ld a,(0c50bh)		;0e2f
	cp (hl)			;0e32
	jr c,l0e6fh		;0e33
	inc hl			;0e35
	cp (hl)			;0e36
	jr c,l0e67h		;0e37
	jr l0e6fh		;0e39
l0e3bh:
	ld a,(0c042h)		;0e3b
	add a,a			;0e3e
	ld e,a			;0e3f
	add a,a			;0e40
	add a,e			;0e41
	ld e,a			;0e42
	ld d,000h		;0e43
	ld hl,l0de8h		;0e45
	add hl,de			;0e48
	ld a,(0c509h)		;0e49
	cp (hl)			;0e4c
	jr c,l0e6bh		;0e4d
	inc hl			;0e4f
	cp (hl)			;0e50
	jr nc,l0e6bh		;0e51
	inc hl			;0e53
	ld a,(0c000h)		;0e54
	bit 7,a		;0e57
	jr z,l0e5dh		;0e59
	inc hl			;0e5b
	inc hl			;0e5c
l0e5dh:
	ld a,(0c50bh)		;0e5d
	cp (hl)			;0e60
	jr c,l0e6bh		;0e61
	inc hl			;0e63
	cp (hl)			;0e64
	jr nc,l0e6bh		;0e65
l0e67h:
	ld a,002h		;0e67
	jr l0e7bh		;0e69
l0e6bh:
	ld a,001h		;0e6b
	jr l0e71h		;0e6d
l0e6fh:
	ld a,003h		;0e6f
l0e71h:
	ld hl,0c000h		;0e71
	res 0,(hl)		;0e74
	ld hl,0c518h		;0e76
	ld (hl),002h		;0e79
l0e7bh:
	ld (0c519h),a		;0e7b
	ret			;0e7e
sub_0e7fh:
	ld hl,l0eaah		;0e7f
	ld a,(0c509h)		;0e82
	cp (hl)			;0e85
	jr c,l0ea4h		;0e86
	inc hl			;0e88
	cp (hl)			;0e89
	jr nc,l0ea4h		;0e8a
sub_0e8ch:
	inc hl			;0e8c
	ld a,(0c000h)		;0e8d
	bit 7,a		;0e90
	jr z,l0e96h		;0e92
	inc hl			;0e94
	inc hl			;0e95
l0e96h:
	ld a,(0c50bh)		;0e96
	cp (hl)			;0e99
	jr c,l0ea4h		;0e9a
	inc hl			;0e9c
	cp (hl)			;0e9d
	jr nc,l0ea4h		;0e9e
	ld a,000h		;0ea0
	jr l0ea6h		;0ea2
l0ea4h:
	ld a,001h		;0ea4
l0ea6h:
	ld (0c51dh),a		;0ea6
	ret			;0ea9
l0eaah:
	add hl,hl			;0eaa
	out (052h),a		;0eab
	xor (hl)			;0ead
	ld b,h			;0eae
	cp h			;0eaf
	ld hl,0c006h		;0eb0
	bit 6,(hl)		;0eb3
	jr nz,l0eefh		;0eb5
	set 6,(hl)		;0eb7
l0eb9h:
	ld a,(0c010h)		;0eb9
	or a			;0ebc
	jr nz,l0ef3h		;0ebd
	di			;0ebf
	call sub_03a4h		;0ec0
	call l0386h+2		;0ec3
	ld hl,l2c00h		;0ec6
	ld de,0c76ch		;0ec9
	ld bc,000e0h		;0ecc
	ld a,001h		;0ecf
	call sub_0492h		;0ed1
	ld hl,l3a8eh		;0ed4
	ld de,0c720h		;0ed7
	ld bc,l0213h		;0eda
	call l0464h		;0edd
	xor a			;0ee0
l0ee1h:
	ld (0c011h),a		;0ee1
	call sub_03a0h		;0ee4
	ei			;0ee7
	ld hl,000f0h		;0ee8
	ld (0c08ah),hl		;0eeb
	ret			;0eee
l0eefh:
	call sub_03adh		;0eef
	ret nz			;0ef2
l0ef3h:
	ld hl,0c006h		;0ef3
	ld (hl),081h		;0ef6
	ret			;0ef8
sub_0ef9h:
	ld hl,0c006h		;0ef9
	bit 6,(hl)		;0efc
	ret z			;0efe
	bit 5,(hl)		;0eff
	ret nz			;0f01
l0f02h:
	set 5,(hl)		;0f02
sub_0f04h:
	ld hl,l0000h		;0f04
l0f07h:
	ld de,l002dh		;0f07
	ld b,002h		;0f0a
	call sub_0481h		;0f0c
	ld hl,l0010h		;0f0f
	ld de,l002dh		;0f12
	ld b,001h		;0f15
	jp sub_0481h		;0f17
	jp l1548h		;0f1a
	ld a,(0c30dh)		;0f1d
	ld (ix+00dh),a		;0f20
	ld a,(0c30bh)		;0f23
	inc a			;0f26
	ld (ix+014h),a		;0f27
	ld l,a			;0f2a
	ld h,000h		;0f2b
	add hl,hl			;0f2d
	ld de,0cee6h		;0f2e
	add hl,de			;0f31
	ld c,(hl)			;0f32
	inc hl			;0f33
	ld b,(hl)			;0f34
	ld de,(0c500h)		;0f35
	call sub_03f7h		;0f39
	ld d,e			;0f3c
	ld e,h			;0f3d
	xor a			;0f3e
	ld hl,(0c30ah)		;0f3f
	sbc hl,de		;0f42
	ld (ix+00ah),l		;0f44
	ld (ix+00bh),h		;0f47
	jp l065ch		;0f4a
	ld a,(ix+003h)		;0f4d
	dec a			;0f50
	jr z,l0f79h		;0f51
	ld (ix+003h),001h		;0f53
	ld hl,0ff00h		;0f57
	ld (0c506h),hl		;0f5a
	ld hl,l0004h		;0f5d
	ld (0c502h),hl		;0f60
	ld hl,l0000h		;0f63
	ld (0c50eh),hl		;0f66
	ld (0c50ch),hl		;0f69
	ld hl,0c040h		;0f6c
	set 7,(hl)		;0f6f
	set 0,(hl)		;0f71
	ld hl,0c000h		;0f73
	set 0,(hl)		;0f76
	ret			;0f78
l0f79h:
	xor a			;0f79
	ld de,l1300h		;0f7a
	ld hl,(0c500h)		;0f7d
	sbc hl,de		;0f80
	jr z,l0f86h		;0f82
	jr nc,l0fa2h		;0f84
l0f86h:
	ld hl,0c040h		;0f86
	bit 6,(hl)		;0f89
	jr nz,l0f95h		;0f8b
	res 7,(hl)		;0f8d
	ld (ix+002h),018h		;0f8f
	jr l0f99h		;0f93
l0f95h:
	ld (ix+002h),015h		;0f95
l0f99h:
	ld (ix+003h),000h		;0f99
	ld hl,0c000h		;0f9d
	res 0,(hl)		;0fa0
l0fa2h:
	jp l1548h		;0fa2
	ld hl,l1300h		;0fa5
	ld (0c500h),hl		;0fa8
	ld a,(0c041h)		;0fab
	add a,a			;0fae
	add a,a			;0faf
	add a,a			;0fb0
	ld e,a			;0fb1
	ld d,000h		;0fb2
	ld hl,l0fffh		;0fb4
	add hl,de			;0fb7
	ld e,(hl)			;0fb8
l0fb9h:
	inc hl			;0fb9
	ld d,(hl)			;0fba
	ld (0c508h),de		;0fbb
	inc hl			;0fbf
	ld c,(hl)			;0fc0
	inc hl			;0fc1
	ld b,(hl)			;0fc2
	inc hl			;0fc3
	ld e,(hl)			;0fc4
	inc hl			;0fc5
	ld d,(hl)			;0fc6
	inc hl			;0fc7
	ld a,(hl)			;0fc8
	inc hl			;0fc9
	ld h,(hl)			;0fca
	ld l,a			;0fcb
	ld a,(hl)			;0fcc
	inc hl			;0fcd
	ld h,(hl)			;0fce
	ld l,a			;0fcf
	add hl,de			;0fd0
	ld de,08000h		;0fd1
	xor a			;0fd4
	ex de,hl			;0fd5
	sbc hl,de		;0fd6
	push af			;0fd8
	jr nc,l0fe2h		;0fd9
	xor a			;0fdb
	ld de,l0000h		;0fdc
	ex de,hl			;0fdf
	sbc hl,de		;0fe0
l0fe2h:
	ld de,l0000h		;0fe2
	ex de,hl			;0fe5
	call sub_040bh		;0fe6
	ld d,e			;0fe9
	ld e,h			;0fea
	ld hl,08000h		;0feb
	pop af			;0fee
	jr nc,l0ff6h		;0fef
	xor a			;0ff1
	adc hl,de		;0ff2
	jr l0ff9h		;0ff4
l0ff6h:
	xor a			;0ff6
	sbc hl,de		;0ff7
l0ff9h:
	ld (0c50ah),hl		;0ff9
	jp l1548h		;0ffc
l0fffh:
	nop			;0fff
l1000h:
	out (095h),a		;1000
	ld bc,00c00h		;1002
	inc c			;1005
	jp nz,02700h		;1006
	out (000h),a		;1009
	nop			;100b
	jp m,0c24ch		;100c
	nop			;100f
	out (095h),a		;1010
	ld bc,00c00h		;1012
	adc a,h			;1015
	jp nz,02700h		;1016
	out (000h),a		;1019
	nop			;101b
	jp m,0c2cch		;101c
	ld a,08ch		;101f
	ld (0de00h),a		;1021
	ld hl,l10ebh		;1024
	ld a,(0c046h)		;1027
	add a,a			;102a
	ld e,a			;102b
	ld d,000h		;102c
	add hl,de			;102e
	ld c,(hl)			;102f
	inc hl			;1030
	ld b,(hl)			;1031
	push bc			;1032
	ld hl,l10bbh		;1033
	ld a,(0c041h)		;1036
	add a,a			;1039
	add a,a			;103a
	ld e,a			;103b
	ld a,(0c044h)		;103c
	add a,a			;103f
	add a,e			;1040
	ld e,a			;1041
	add hl,de			;1042
	ld c,(hl)			;1043
	inc hl			;1044
	ld b,(hl)			;1045
	push bc			;1046
	ld a,(0c041h)		;1047
	add a,a			;104a
	ld e,a			;104b
	ld hl,l10b3h		;104c
	add hl,de			;104f
	ld a,(0c044h)		;1050
	or a			;1053
	jr z,l1057h		;1054
	inc hl			;1056
l1057h:
	ld a,(0c50bh)		;1057
	sub (hl)			;105a
	rrca			;105b
	rrca			;105c
	rrca			;105d
	and 007h		;105e
	cp 004h		;1060
	jr c,l1066h		;1062
	ld a,003h		;1064
l1066h:
	add a,a			;1066
	ld e,a			;1067
	pop hl			;1068
	add hl,de			;1069
	ld a,r		;106a
	and 001h		;106c
	jr z,l1071h		;106e
	inc hl			;1070
l1071h:
	ld a,(hl)			;1071
	add a,a			;1072
	add a,a			;1073
	add a,a			;1074
	ld e,a			;1075
	pop hl			;1076
	add hl,de			;1077
	ld e,(hl)			;1078
	inc hl			;1079
	ld d,(hl)			;107a
	inc hl			;107b
	ld c,(hl)			;107c
	inc hl			;107d
	ld b,(hl)			;107e
	push de			;107f
	push bc			;1080
	inc hl			;1081
	ld e,(hl)			;1082
	inc hl			;1083
	ld d,(hl)			;1084
	inc hl			;1085
	ld c,(hl)			;1086
	inc hl			;1087
	ld b,(hl)			;1088
	ld a,(0c041h)		;1089
	and 001h		;108c
	jr z,l10a0h		;108e
	xor a			;1090
	ld hl,l0000h		;1091
	sbc hl,de		;1094
	push hl			;1096
	xor a			;1097
	ld hl,l0000h		;1098
	sbc hl,bc		;109b
	push hl			;109d
	pop bc			;109e
	pop de			;109f
l10a0h:
	ld (0c50ch),de		;10a0
	ld (0c50eh),bc		;10a4
	pop hl			;10a8
	ld (0c506h),hl		;10a9
	pop hl			;10ac
l10adh:
	ld (0c502h),hl		;10ad
	jp 01362h		;10b0
l10b3h:
	sub b			;10b3
	ld h,b			;10b4
	ld d,b			;10b5
	add a,b			;10b6
	sub b			;10b7
	ld h,b			;10b8
	ld d,b			;10b9
	add a,b			;10ba
l10bbh:
	rl b		;10bb
	out (010h),a		;10bd
	in a,(010h)		;10bf
	ex (sp),hl			;10c1
	djnz $-53		;10c2
	djnz $-45		;10c4
	djnz $-37		;10c6
	djnz l10adh		;10c8
	djnz l10cch		;10ca
l10cch:
	ld bc,l0000h		;10cc
	inc bc			;10cf
	inc bc			;10d0
	ld (bc),a			;10d1
	inc bc			;10d2
	rlca			;10d3
	ld b,007h		;10d4
	rlca			;10d6
	inc b			;10d7
	inc b			;10d8
	dec b			;10d9
	inc b			;10da
	inc bc			;10db
	ld (bc),a			;10dc
	ld (bc),a			;10dd
	ld (bc),a			;10de
	nop			;10df
	nop			;10e0
	ld bc,l0400h		;10e1
	dec b			;10e4
	inc b			;10e5
	inc b			;10e6
	rlca			;10e7
	rlca			;10e8
	ld b,007h		;10e9
l10ebh:
	pop af			;10eb
	djnz $+49		;10ec
	ld de,l1171h		;10ee
	inc bc			;10f1
	nop			;10f2
	ret po			;10f3
	rst 38h			;10f4
	add a,b			;10f5
	cp 078h		;10f6
	rst 38h			;10f8
	inc bc			;10f9
	nop			;10fa
	ret po			;10fb
	rst 38h			;10fc
	add a,b			;10fd
	cp 0bch		;10fe
	rst 38h			;1100
	inc bc			;1101
	nop			;1102
	ret po			;1103
	rst 38h			;1104
	add a,b			;1105
	cp 010h		;1106
	rst 38h			;1108
	inc bc			;1109
	nop			;110a
	ret po			;110b
	rst 38h			;110c
	add a,b			;110d
	cp 050h		;110e
	rst 38h			;1110
	inc bc			;1111
	nop			;1112
	ret po			;1113
	rst 38h			;1114
	add a,b			;1115
	cp 088h		;1116
	nop			;1118
	inc bc			;1119
	nop			;111a
	ret po			;111b
	rst 38h			;111c
	add a,b			;111d
	cp 044h		;111e
	nop			;1120
	inc bc			;1121
	nop			;1122
	ret po			;1123
	rst 38h			;1124
	add a,b			;1125
	cp 0f0h		;1126
	nop			;1128
	inc bc			;1129
	nop			;112a
	ret po			;112b
	rst 38h			;112c
	add a,b			;112d
	cp 0b0h		;112e
	nop			;1130
	dec b			;1131
	nop			;1132
	ret po			;1133
	rst 38h			;1134
	nop			;1135
	cp 048h		;1136
	rst 38h			;1138
	dec b			;1139
	nop			;113a
	ret po			;113b
	rst 38h			;113c
	nop			;113d
	cp 0ach		;113e
	rst 38h			;1140
	dec b			;1141
	nop			;1142
	ret po			;1143
	rst 38h			;1144
	nop			;1145
	cp 0c0h		;1146
	cp 005h		;1148
	nop			;114a
	ret po			;114b
	rst 38h			;114c
	nop			;114d
	cp 016h		;114e
	rst 38h			;1150
	dec b			;1151
	nop			;1152
	ret po			;1153
	rst 38h			;1154
	nop			;1155
	cp 0b8h		;1156
	nop			;1158
	dec b			;1159
	nop			;115a
	ret po			;115b
	rst 38h			;115c
	nop			;115d
	cp 05ah		;115e
	nop			;1160
	dec b			;1161
	nop			;1162
	ret po			;1163
	rst 38h			;1164
	nop			;1165
	cp 040h		;1166
	ld bc,l0005h		;1168
	ret po			;116b
	rst 38h			;116c
	nop			;116d
	cp 0eah		;116e
	nop			;1170
l1171h:
	dec bc			;1171
	nop			;1172
	ret po			;1173
	rst 38h			;1174
	nop			;1175
	.DB 0fdh,0f0h,0feh	;illegal sequence		;1176
	dec bc			;1179
	nop			;117a
	ret po			;117b
	rst 38h			;117c
	nop			;117d
	.DB 0fdh,078h,0ffh	;illegal sequence		;117e
	dec bc			;1181
	nop			;1182
	ret po			;1183
	rst 38h			;1184
	nop			;1185
	.DB 0fdh,020h,0feh	;illegal sequence		;1186
	dec bc			;1189
	nop			;118a
	ret po			;118b
	rst 38h			;118c
	nop			;118d
	.DB 0fdh,0a0h,0feh	;illegal sequence		;118e
	dec bc			;1191
	nop			;1192
	ret po			;1193
	rst 38h			;1194
	nop			;1195
	.DB 0fdh,010h,001h	;illegal sequence		;1196
	dec bc			;1199
	nop			;119a
	ret po			;119b
	rst 38h			;119c
	nop			;119d
	.DB 0fdh,088h,000h	;illegal sequence		;119e
	dec bc			;11a1
	nop			;11a2
	ret po			;11a3
	rst 38h			;11a4
	nop			;11a5
	.DB 0fdh,0e0h,001h	;illegal sequence		;11a6
	dec bc			;11a9
	nop			;11aa
	ret po			;11ab
	rst 38h			;11ac
	nop			;11ad
	.DB 0fdh,060h	;ld iyh,b		;11ae
	ld bc,08c3eh		;11b0
	ld (0de00h),a		;11b3
	ld a,(0c509h)		;11b6
	sub 080h		;11b9
	jr nc,l11bfh		;11bb
	neg		;11bd
l11bfh:
	ld hl,l1215h		;11bf
	cp 01ch		;11c2
	jr c,l11c9h		;11c4
	ld hl,l1209h		;11c6
l11c9h:
	ld a,(0c046h)		;11c9
	add a,a			;11cc
	add a,a			;11cd
	ld c,a			;11ce
	ld b,000h		;11cf
	add hl,bc			;11d1
	ld e,(hl)			;11d2
	inc hl			;11d3
	ld d,(hl)			;11d4
	inc hl			;11d5
	ld c,(hl)			;11d6
	inc hl			;11d7
	ld b,(hl)			;11d8
	ld a,(0c042h)		;11d9
	and 001h		;11dc
	jr z,l11e7h		;11de
	xor a			;11e0
	ld hl,l0000h		;11e1
	sbc hl,de		;11e4
	ex de,hl			;11e6
l11e7h:
	ld (0c50ch),de		;11e7
	ld (0c506h),bc		;11eb
	ld hl,l1221h		;11ef
	ld a,(0c046h)		;11f2
	add a,a			;11f5
	ld c,a			;11f6
	ld b,000h		;11f7
	add hl,bc			;11f9
	ld e,(hl)			;11fa
	inc hl			;11fb
	ld d,(hl)			;11fc
	ld (0c502h),de		;11fd
	ld c,002h		;1201
l1203h:
	call sub_13a8h		;1203
	jp 01362h		;1206
l1209h:
	ret nz			;1209
	.DB 0fdh,0e0h,0ffh	;illegal sequence		;120a
	nop			;120d
	.DB 0fdh,0d6h,0ffh	;illegal sequence		;120e
	add a,b			;1211
	ei			;1212
	ret nz			;1213
	rst 38h			;1214
l1215h:
	ret nz			;1215
	.DB 0fdh,040h,000h	;illegal sequence		;1216
	nop			;1219
	.DB 0fdh,054h	;ld d,iyh		;121a
	nop			;121c
	add a,b			;121d
	ei			;121e
	add a,b			;121f
	nop			;1220
l1221h:
	add hl,bc			;1221
	nop			;1222
	rrca			;1223
	nop			;1224
	inc e			;1225
	nop			;1226
l1227h:
	ld a,08ah		;1227
	ld (0de00h),a		;1229
	ld hl,l1260h		;122c
	ld a,(0c046h)		;122f
l1232h:
	add a,a			;1232
l1233h:
	add a,a			;1233
	ld c,a			;1234
	ld b,000h		;1235
	add hl,bc			;1237
	ld e,(hl)			;1238
	inc hl			;1239
	ld d,(hl)			;123a
	inc hl			;123b
	ld c,(hl)			;123c
	inc hl			;123d
	ld b,(hl)			;123e
	ld a,(0c042h)		;123f
	and 001h		;1242
	jr z,l124dh		;1244
	xor a			;1246
	ld hl,l0000h		;1247
	sbc hl,de		;124a
	ex de,hl			;124c
l124dh:
	ld (0c50ch),de		;124d
	ld (0c506h),bc		;1251
	call sub_138fh		;1255
	ld c,003h		;1258
	call sub_13a8h		;125a
	jp 01362h		;125d
l1260h:
	nop			;1260
	rst 38h			;1261
	ret nz			;1262
	rst 38h			;1263
	xor e			;1264
	cp 0abh		;1265
	rst 38h			;1267
	nop			;1268
	cp 050h		;1269
	rst 38h			;126b
	ld a,08bh		;126c
	ld (0de00h),a		;126e
	ld hl,l12c0h		;1271
	ld a,(0c046h)		;1274
	add a,a			;1277
	ld c,a			;1278
	ld b,000h		;1279
	add hl,bc			;127b
	ld e,(hl)			;127c
	inc hl			;127d
	ld d,(hl)			;127e
	ld a,(0c509h)		;127f
	sub 080h		;1282
	jr nc,l1288h		;1284
	neg		;1286
l1288h:
	ld c,000h		;1288
	cp 030h		;128a
	jr c,l1290h		;128c
	ld c,001h		;128e
l1290h:
	ld a,c			;1290
	add a,a			;1291
	add a,a			;1292
	ld c,a			;1293
	ld b,000h		;1294
	ex de,hl			;1296
	add hl,bc			;1297
	ld e,(hl)			;1298
	inc hl			;1299
	ld d,(hl)			;129a
	inc hl			;129b
	ld c,(hl)			;129c
	inc hl			;129d
	ld b,(hl)			;129e
	ld a,(0c042h)		;129f
	and 001h		;12a2
	jr z,l12adh		;12a4
	xor a			;12a6
	ld hl,l0000h		;12a7
	sbc hl,de		;12aa
	ex de,hl			;12ac
l12adh:
	ld (0c50ch),de		;12ad
	ld (0c506h),bc		;12b1
	call sub_138fh		;12b5
	ld c,001h		;12b8
	call sub_13a8h		;12ba
	jp 01362h		;12bd
l12c0h:
	add a,012h		;12c0
	adc a,012h		;12c2
	sub 012h		;12c4
	ld h,b			;12c6
	rst 38h			;12c7
	djnz $-1		;12c8
	ld h,b			;12ca
	rst 38h			;12cb
	ret nc			;12cc
	cp 02bh		;12cd
	rst 38h			;12cf
	ret c			;12d0
	cp 02bh		;12d1
	rst 38h			;12d3
	add a,b			;12d4
	cp 0c0h		;12d5
	cp 040h		;12d7
	cp 0c0h		;12d9
	cp 0d0h		;12db
	.DB 0fdh,03eh,08ch	;illegal sequence		;12dd
	ld (0de00h),a		;12e0
	ld hl,l1338h		;12e3
	ld a,(0c046h)		;12e6
	add a,a			;12e9
	ld c,a			;12ea
	ld b,000h		;12eb
	add hl,bc			;12ed
	ld e,(hl)			;12ee
	inc hl			;12ef
	ld d,(hl)			;12f0
	ld a,(0c509h)		;12f1
	sub 080h		;12f4
	jr nc,l12fah		;12f6
	neg		;12f8
l12fah:
	ld c,000h		;12fa
	cp 018h		;12fc
	jr c,l1308h		;12fe
l1300h:
	ld c,001h		;1300
	cp 040h		;1302
	jr c,l1308h		;1304
	ld c,002h		;1306
l1308h:
	ld a,c			;1308
	add a,a			;1309
	add a,a			;130a
	ld c,a			;130b
	ld b,000h		;130c
	ex de,hl			;130e
	add hl,bc			;130f
	ld e,(hl)			;1310
	inc hl			;1311
	ld d,(hl)			;1312
	inc hl			;1313
	ld c,(hl)			;1314
	inc hl			;1315
	ld b,(hl)			;1316
	ld a,(0c042h)		;1317
	and 001h		;131a
	jr z,l1325h		;131c
	xor a			;131e
	ld hl,l0000h		;131f
	sbc hl,de		;1322
	ex de,hl			;1324
l1325h:
	ld (0c50ch),de		;1325
	ld (0c506h),bc		;1329
	call sub_138fh		;132d
	ld c,000h		;1330
	call sub_13a8h		;1332
	jp 01362h		;1335
l1338h:
	ld a,013h		;1338
	ld c,d			;133a
	inc de			;133b
	ld d,(hl)			;133c
	inc de			;133d
	nop			;133e
	rst 38h			;133f
	ret nz			;1340
	rst 38h			;1341
	nop			;1342
	rst 38h			;1343
	ld (hl),b			;1344
	rst 38h			;1345
	nop			;1346
	rst 38h			;1347
	ld d,b			;1348
	rst 38h			;1349
	xor e			;134a
	cp 0abh		;134b
	rst 38h			;134d
	xor e			;134e
	cp 040h		;134f
	rst 38h			;1351
	xor e			;1352
	cp 016h		;1353
	rst 38h			;1355
	nop			;1356
	cp 080h		;1357
	rst 38h			;1359
	nop			;135a
	cp 0e0h		;135b
	cp 000h		;135d
	cp 0a0h		;135f
	cp 03eh		;1361
	dec d			;1363
	ld (0c302h),a		;1364
	xor a			;1367
	ld (0c303h),a		;1368
	ld a,(0c042h)		;136b
	ld e,a			;136e
	ld d,000h		;136f
	ld hl,l138bh		;1371
	add hl,de			;1374
	ld a,(hl)			;1375
	ld (0c312h),a		;1376
	ld hl,0c040h		;1379
	set 7,(hl)		;137c
	ld a,(0c501h)		;137e
	cp 010h		;1381
	ret nc			;1383
	ld hl,l1000h		;1384
	ld (0c500h),hl		;1387
	ret			;138a
l138bh:
	ld bc,l0102h		;138b
	ld (bc),a			;138e
sub_138fh:
	ld a,(0c046h)		;138f
	add a,a			;1392
	ld e,a			;1393
	ld d,000h		;1394
	ld hl,l13a2h		;1396
	add hl,de			;1399
	ld e,(hl)			;139a
	inc hl			;139b
	ld d,(hl)			;139c
	ld (0c502h),de		;139d
	ret			;13a1
l13a2h:
	inc bc			;13a2
	nop			;13a3
	dec b			;13a4
	nop			;13a5
	dec bc			;13a6
	nop			;13a7
sub_13a8h:
	ld a,c			;13a8
	add a,a			;13a9
	ld c,a			;13aa
	ld b,000h		;13ab
	ld hl,l13e6h		;13ad
	add hl,bc			;13b0
	ld e,(hl)			;13b1
	inc hl			;13b2
	ld d,(hl)			;13b3
	ld a,(0c046h)		;13b4
	add a,a			;13b7
	ld c,a			;13b8
	add a,a			;13b9
	ld b,a			;13ba
	add a,a			;13bb
	add a,a			;13bc
	add a,c			;13bd
	add a,b			;13be
	ld c,a			;13bf
	ld a,(ix+020h)		;13c0
	sub 00bh		;13c3
	jr nc,l13c9h		;13c5
	add a,00bh		;13c7
l13c9h:
	add a,a			;13c9
	add a,c			;13ca
	ld c,a			;13cb
	ld b,000h		;13cc
	ex de,hl			;13ce
	add hl,bc			;13cf
	ld e,(hl)			;13d0
	inc hl			;13d1
	ld d,(hl)			;13d2
	ld a,(0c042h)		;13d3
	and 001h		;13d6
	jr z,l13e1h		;13d8
	xor a			;13da
	ld hl,l0000h		;13db
	sbc hl,de		;13de
	ex de,hl			;13e0
l13e1h:
	ld (0c50eh),de		;13e1
	ret			;13e5
l13e6h:
	xor 013h		;13e6
	jr nc,l13feh		;13e8
	ld (hl),d			;13ea
	inc d			;13eb
	xor 013h		;13ec
	add a,d			;13ee
	nop			;13ef
l13f0h:
	ld h,(hl)			;13f0
	nop			;13f1
	ld c,h			;13f2
	nop			;13f3
	ld (l1800h),a		;13f4
	nop			;13f7
	nop			;13f8
	nop			;13f9
	ret pe			;13fa
	rst 38h			;13fb
	adc a,0ffh		;13fc
l13feh:
	or h			;13fe
	rst 38h			;13ff
l1400h:
	sbc a,d			;1400
	rst 38h			;1401
	ld a,(hl)			;1402
	rst 38h			;1403
	xor a			;1404
	nop			;1405
	adc a,c			;1406
	nop			;1407
	ld h,(hl)			;1408
	nop			;1409
	ld b,e			;140a
	nop			;140b
	jr nz,l140eh		;140c
l140eh:
	nop			;140e
	nop			;140f
	ret po			;1410
	rst 38h			;1411
	cp l			;1412
	rst 38h			;1413
	sbc a,d			;1414
	rst 38h			;1415
	ld (hl),a			;1416
	rst 38h			;1417
	ld d,c			;1418
	rst 38h			;1419
	inc b			;141a
	ld bc,l00cch		;141b
	sbc a,b			;141e
	nop			;141f
	ld h,h			;1420
	nop			;1421
	jr nc,l1424h		;1422
l1424h:
	nop			;1424
	nop			;1425
	ret nc			;1426
	rst 38h			;1427
	sbc a,h			;1428
	rst 38h			;1429
	ld l,b			;142a
	rst 38h			;142b
	inc (hl)			;142c
	rst 38h			;142d
	call m,sub_51feh		;142e
	nop			;1431
	ccf			;1432
	nop			;1433
	cpl			;1434
	nop			;1435
	rra			;1436
	nop			;1437
	rrca			;1438
	nop			;1439
	nop			;143a
	nop			;143b
	pop af			;143c
	rst 38h			;143d
	pop hl			;143e
	rst 38h			;143f
	pop de			;1440
	rst 38h			;1441
	pop bc			;1442
	rst 38h			;1443
	xor a			;1444
	rst 38h			;1445
	ld l,(hl)			;1446
	nop			;1447
l1448h:
	ld d,(hl)			;1448
	nop			;1449
	ld b,b			;144a
	nop			;144b
	ld hl,(l1400h)		;144c
	nop			;144f
	nop			;1450
	nop			;1451
	call pe,0d6ffh		;1452
	rst 38h			;1455
	ret nz			;1456
	rst 38h			;1457
	xor d			;1458
	rst 38h			;1459
	sub d			;145a
	rst 38h			;145b
	and d			;145c
	nop			;145d
	ld a,a			;145e
	nop			;145f
	ld e,a			;1460
	nop			;1461
	ld a,000h		;1462
	ld e,000h		;1464
	nop			;1466
	nop			;1467
	jp po,0c2ffh		;1468
	rst 38h			;146b
	and c			;146c
	rst 38h			;146d
	add a,c			;146e
	rst 38h			;146f
	ld e,(hl)			;1470
	rst 38h			;1471
	push hl			;1472
	nop			;1473
	inc h			;1474
	ld bc,l00abh		;1475
	ld (hl),b			;1478
	nop			;1479
	ld (hl),000h		;147a
	nop			;147c
	nop			;147d
	jp z,090ffh		;147e
	rst 38h			;1481
	ld d,l			;1482
	rst 38h			;1483
	dec de			;1484
	rst 38h			;1485
	call c,032feh		;1486
	ld bc,00186h		;1489
	call po,09600h		;148c
	nop			;148f
	ld c,b			;1490
	nop			;1491
	nop			;1492
	nop			;1493
	cp b			;1494
	rst 38h			;1495
	ld l,d			;1496
	rst 38h			;1497
	inc e			;1498
	rst 38h			;1499
	adc a,0feh		;149a
	ld a,d			;149c
	cp 0cbh		;149d
	ld bc,l0249h		;149f
	ld d,(hl)			;14a2
	ld bc,l00e1h		;14a3
	ld l,h			;14a6
	nop			;14a7
	nop			;14a8
	nop			;14a9
	sub h			;14aa
	rst 38h			;14ab
	rra			;14ac
	rst 38h			;14ad
	xor d			;14ae
	cp 035h		;14af
	cp 0b7h		;14b1
	.DB 0fdh,03ah,040h	;illegal sequence		;14b3
	ret nz			;14b6
	rlca			;14b7
	ret nc			;14b8
	ld bc,(0c502h)		;14b9
	ld hl,(0c506h)		;14bd
	add hl,bc			;14c0
	ld (0c506h),hl		;14c1
	xor a			;14c4
	ld de,(0c500h)		;14c5
	ex de,hl			;14c9
	sbc hl,de		;14ca
	ld (0c500h),hl		;14cc
	bit 7,h		;14cf
	jp z,l150fh		;14d1
	ld hl,l0000h		;14d4
	ld (0c500h),hl		;14d7
	ld hl,0c516h		;14da
	res 6,(hl)		;14dd
	call sub_159ch		;14df
	ld hl,0c517h		;14e2
	inc (hl)			;14e5
	ld a,005h		;14e6
	cp (hl)			;14e8
	jr nc,l14f1h		;14e9
	ld hl,0c040h		;14eb
	res 7,(hl)		;14ee
	ret			;14f0
l14f1h:
	ld a,(hl)			;14f1
	dec a			;14f2
	jr nz,l14ffh		;14f3
	call sub_0e04h		;14f5
	ld a,08fh		;14f8
	ld (0de00h),a		;14fa
	jr l150fh		;14fd
l14ffh:
	dec a			;14ff
l1500h:
	jr nz,l150fh		;1500
	ld hl,0c000h		;1502
	res 0,(hl)		;1505
	ld hl,0c518h		;1507
	ld a,(hl)			;150a
	or a			;150b
	ret nz			;150c
	ld (hl),002h		;150d
l150fh:
	ld a,(0c516h)		;150f
	bit 6,a		;1512
	ret nz			;1514
	call sub_16afh		;1515
	call sub_1878h		;1518
	call sub_0e7fh		;151b
	ld de,(0c50eh)		;151e
	ld hl,(0c50ah)		;1522
	add hl,de			;1525
	ld (0c50ah),hl		;1526
	ld de,(0c50ch)		;1529
	ld hl,(0c508h)		;152d
	add hl,de			;1530
	ld (0c508h),hl		;1531
	ld c,000h		;1534
	ld a,h			;1536
	cp 070h		;1537
	jr c,l1543h		;1539
	ld c,001h		;153b
	cp 090h		;153d
	jr c,l1543h		;153f
	ld c,002h		;1541
l1543h:
	ld a,c			;1543
	ld (0c48ch),a		;1544
	ret			;1547
l1548h:
	ld a,(0c509h)		;1548
	ld e,a			;154b
	ld d,000h		;154c
	ld hl,0cbe8h		;154e
	add hl,de			;1551
	ld a,(hl)			;1552
	ld (ix+00bh),a		;1553
	ld (ix+014h),a		;1556
	ld l,a			;1559
	ld h,000h		;155a
	add hl,hl			;155c
	ld de,0cce8h		;155d
	add hl,de			;1560
	ld e,(hl)			;1561
	inc hl			;1562
	ld d,(hl)			;1563
	exx			;1564
	ld de,(0c50ah)		;1565
	ld hl,08000h		;1569
	xor a			;156c
	sbc hl,de		;156d
	push af			;156f
	jr nc,l1579h		;1570
	xor a			;1572
	ex de,hl			;1573
	ld hl,l0000h		;1574
	sbc hl,de		;1577
l1579h:
	push hl			;1579
	exx			;157a
	pop bc			;157b
	call sub_03f7h		;157c
	pop af			;157f
	ld d,e			;1580
	ld e,h			;1581
	ld hl,08000h		;1582
	jr nc,l158eh		;1585
	xor a			;1587
	adc hl,de		;1588
	jr c,l1597h		;158a
	jr l1593h		;158c
l158eh:
	xor a			;158e
	sbc hl,de		;158f
	jr c,l1597h		;1591
l1593h:
	ld (ix+00dh),h		;1593
	ret			;1596
l1597h:
	ld (ix+00bh),0d8h		;1597
	ret			;159b
sub_159ch:
	ld de,(0c506h)		;159c
	ld bc,000a0h		;15a0
	call sub_03f7h		;15a3
	ld d,e			;15a6
	ld e,h			;15a7
	xor a			;15a8
	ld hl,l0000h		;15a9
	sbc hl,de		;15ac
	ld (0c506h),hl		;15ae
	ld a,(0c517h)		;15b1
	cp 002h		;15b4
	ret nc			;15b6
	ld de,(0c50eh)		;15b7
	bit 7,d		;15bb
	jr z,l15c6h		;15bd
	xor a			;15bf
	ld hl,l0000h		;15c0
	sbc hl,de		;15c3
	ex de,hl			;15c5
l15c6h:
	ld bc,l007fh+1		;15c6
	call sub_03f7h		;15c9
	ld d,e			;15cc
	ld e,h			;15cd
	ld a,(0c50fh)		;15ce
	bit 7,a		;15d1
	jr z,l15dch		;15d3
	xor a			;15d5
	ld hl,l0000h		;15d6
	sbc hl,de		;15d9
	ex de,hl			;15db
l15dch:
	ld (0c50eh),de		;15dc
	ld de,(0c50ch)		;15e0
	bit 7,d		;15e4
	jr z,l15efh		;15e6
	xor a			;15e8
	ld hl,l0000h		;15e9
	sbc hl,de		;15ec
	ex de,hl			;15ee
l15efh:
	ld bc,l007fh+1		;15ef
	call sub_03f7h		;15f2
	ld d,e			;15f5
	ld e,h			;15f6
	ld a,(0c50dh)		;15f7
	bit 7,a		;15fa
	jr z,l1605h		;15fc
	xor a			;15fe
	ld hl,l0000h		;15ff
	sbc hl,de		;1602
	ex de,hl			;1604
l1605h:
	ld (0c50ch),de		;1605
	ret			;1609
sub_160ah:
	ld a,e			;160a
l160bh:
	sub 018h		;160b
	jr nc,l1611h		;160d
	ld a,000h		;160f
l1611h:
	ld e,a			;1611
	ld d,000h		;1612
	ld hl,0d0e8h		;1614
	add hl,de			;1617
	ld a,(hl)			;1618
	ld (0c51ah),a		;1619
	ld a,(0c509h)		;161c
	sub (hl)			;161f
	jr nc,l1624h		;1620
	neg		;1622
l1624h:
	ld d,a			;1624
	ld e,000h		;1625
	ld bc,(0c50ch)		;1627
	bit 7,b		;162b
	jr z,l1637h		;162d
	xor a			;162f
	ld hl,l0000h		;1630
	sbc hl,bc		;1633
	push hl			;1635
	pop bc			;1636
l1637h:
	ld hl,l0000h		;1637
	call sub_040bh		;163a
	ld b,e			;163d
	ld c,h			;163e
	ld de,(0c50eh)		;163f
	push de			;1643
	bit 7,d		;1644
	jr z,l164fh		;1646
	xor a			;1648
	ld hl,l0000h		;1649
	sbc hl,de		;164c
	ex de,hl			;164e
l164fh:
	call sub_03f7h		;164f
	ld d,e			;1652
	ld e,h			;1653
	pop hl			;1654
	bit 7,h		;1655
	jr z,l1660h		;1657
	xor a			;1659
	ld hl,l0000h		;165a
	sbc hl,de		;165d
	ex de,hl			;165f
l1660h:
	ld hl,(0c50ah)		;1660
	add hl,de			;1663
	push hl			;1664
	ld a,(0c51ah)		;1665
	ld e,a			;1668
	ld d,000h		;1669
	ld hl,0cbe8h		;166b
	add hl,de			;166e
	ld a,(hl)			;166f
	ld l,a			;1670
	ld h,000h		;1671
	add hl,hl			;1673
	ld de,0cce8h		;1674
	add hl,de			;1677
	ld e,(hl)			;1678
	inc hl			;1679
	ld d,(hl)			;167a
	exx			;167b
	pop de			;167c
	ld hl,08000h		;167d
	xor a			;1680
	sbc hl,de		;1681
	push af			;1683
	jr nc,l168dh		;1684
	xor a			;1686
	ex de,hl			;1687
	ld hl,l0000h		;1688
	sbc hl,de		;168b
l168dh:
	push hl			;168d
	exx			;168e
	pop bc			;168f
	call sub_03f7h		;1690
	pop af			;1693
	ld d,e			;1694
	ld e,h			;1695
	ld hl,08000h		;1696
	jr nc,l16a2h		;1699
	xor a			;169b
	adc hl,de		;169c
	jr c,l16a9h		;169e
	jr l16a7h		;16a0
l16a2h:
	xor a			;16a2
	sbc hl,de		;16a3
	jr c,l16ach		;16a5
l16a7h:
	ld a,h			;16a7
	ret			;16a8
l16a9h:
	ld a,0ffh		;16a9
	ret			;16ab
l16ach:
	ld a,000h		;16ac
	ret			;16ae
sub_16afh:
	xor a			;16af
	ld de,(0c50eh)		;16b0
	ld hl,(0c50ah)		;16b4
	adc hl,de		;16b7
	bit 7,d		;16b9
	jr nz,l16c1h		;16bb
	jr nc,l16cch		;16bd
	jr l16c3h		;16bf
l16c1h:
	jr c,l16cch		;16c1
l16c3h:
	xor a			;16c3
	ld hl,l0000h		;16c4
	sbc hl,de		;16c7
	ld (0c50eh),hl		;16c9
l16cch:
	xor a			;16cc
	ld de,(0c50ch)		;16cd
	ld hl,(0c508h)		;16d1
	adc hl,de		;16d4
	bit 7,d		;16d6
	jr nz,l16deh		;16d8
	jr nc,l16ech		;16da
	jr l1746h		;16dc
l16deh:
	jr nc,l1741h		;16de
	ld a,(0c509h)		;16e0
	cp 080h		;16e3
	ret c			;16e5
	ld a,h			;16e6
	cp 081h		;16e7
	ret nc			;16e9
	jr l16f6h		;16ea
l16ech:
	ld a,(0c509h)		;16ec
	cp 081h		;16ef
	ret nc			;16f1
	ld a,h			;16f2
	cp 080h		;16f3
	ret c			;16f5
l16f6h:
	ld a,(0c50bh)		;16f6
	cp 038h		;16f9
	ret c			;16fb
	cp 0c9h		;16fc
	ret nc			;16fe
	ld a,(0c516h)		;16ff
	bit 7,a		;1702
	ret nz			;1704
	ld a,(0c501h)		;1705
	cp 010h		;1708
	ret nc			;170a
	ld hl,08000h		;170b
	ld (0c508h),hl		;170e
	ld hl,0c516h		;1711
l1714h:
	set 7,(hl)		;1714
	set 6,(hl)		;1716
	ld a,08eh		;1718
	ld (0de00h),a		;171a
	ld a,(0c519h)		;171d
	or a			;1720
	jr nz,l1728h		;1721
	ld a,001h		;1723
	ld (0c518h),a		;1725
l1728h:
	ld hl,(0c506h)		;1728
	push hl			;172b
	call sub_159ch		;172c
	pop de			;172f
	bit 7,d		;1730
	jr z,l173bh		;1732
	ld hl,l0000h		;1734
	xor a			;1737
	sbc hl,de		;1738
	ex de,hl			;173a
l173bh:
	ld (0c506h),de		;173b
	jr l1756h		;173f
l1741h:
	ld a,089h		;1741
	ld (0de00h),a		;1743
l1746h:
	ld a,(0c519h)		;1746
	or a			;1749
	jr nz,l1756h		;174a
	ld a,002h		;174c
	ld (0c518h),a		;174e
	ld a,001h		;1751
	ld (0c519h),a		;1753
l1756h:
	ld hl,0c000h		;1756
	res 0,(hl)		;1759
	xor a			;175b
	ld hl,l0000h		;175c
	ld de,(0c50ch)		;175f
	sbc hl,de		;1763
	ld (0c50ch),hl		;1765
	ret			;1768
l1769h:
	nop			;1769
	nop			;176a
	inc b			;176b
	inc bc			;176c
l176dh:
	nop			;176d
	ld bc,l0506h		;176e
l1771h:
	nop			;1771
	ld (bc),a			;1772
l1773h:
	ex af,af'			;1773
	rlca			;1774
l1775h:
	nop			;1775
	nop			;1776
	ld bc,l0201h+1		;1777
	ld bc,l0804h		;177a
	ex af,af'			;177d
	inc b			;177e
	dec b			;177f
	ld a,(bc)			;1780
	add hl,bc			;1781
	ld b,006h		;1782
	add hl,bc			;1784
	ld a,(bc)			;1785
	dec b			;1786
sub_1787h:
	ld a,(0c000h)		;1787
	rlca			;178a
	ret nc			;178b
	ld ix,0c200h		;178c
	ld iy,0c280h		;1790
	call sub_179fh		;1794
	ld ix,0c240h		;1797
	ld iy,0c2c0h		;179b
sub_179fh:
	ld e,000h		;179f
	ld a,(ix+014h)		;17a1
	sub (iy+014h)		;17a4
	jr nc,l17abh		;17a7
	neg		;17a9
l17abh:
	cp 004h		;17ab
	jr nc,l17d6h		;17ad
	ld hl,l17e7h		;17af
	call sub_17f1h		;17b2
	ld (0c082h),bc		;17b5
	ld (0c084h),de		;17b9
	push ix		;17bd
	push iy		;17bf
	pop ix		;17c1
	ld hl,l17e7h		;17c3
	call sub_17f1h		;17c6
	pop ix		;17c9
	ld (0c08eh),bc		;17cb
	ld (0c090h),de		;17cf
	call sub_1806h		;17d3
l17d6h:
	ld d,000h		;17d6
	ld hl,l1775h		;17d8
	add hl,de			;17db
	add hl,de			;17dc
	ld c,(hl)			;17dd
	inc hl			;17de
	ld b,(hl)			;17df
	ld (ix+02dh),c		;17e0
	ld (iy+02dh),b		;17e3
	ret			;17e6
l17e7h:
	call m,0f808h		;17e7
	djnz l1773h		;17ea
	add a,a			;17ec
	ld e,a			;17ed
	ld d,000h		;17ee
	add hl,de			;17f0
sub_17f1h:
	ld a,(ix+00bh)		;17f1
	add a,(hl)			;17f4
	ld c,a			;17f5
	inc hl			;17f6
	add a,(hl)			;17f7
	ld b,a			;17f8
	inc hl			;17f9
	ld a,(ix+00dh)		;17fa
	add a,(hl)			;17fd
	ld e,a			;17fe
	inc hl			;17ff
l1800h:
	add a,(hl)			;1800
	jr nc,l1804h		;1801
	ld a,e			;1803
l1804h:
	ld d,a			;1804
	ret			;1805
sub_1806h:
	ld bc,(0c08eh)		;1806
	ld de,(0c090h)		;180a
	ld a,(0c082h)		;180e
	cp c			;1811
	jr z,l1818h		;1812
	jr nc,l1824h		;1814
	jr l1838h		;1816
l1818h:
	call sub_1854h		;1818
	ld hl,l1769h		;181b
	ld e,a			;181e
	ld d,000h		;181f
	add hl,de			;1821
	ld e,(hl)			;1822
	ret			;1823
l1824h:
	cp b			;1824
	jr z,l182ch		;1825
	jr c,l182ch		;1827
	xor a			;1829
	jr l182fh		;182a
l182ch:
	call sub_1854h		;182c
l182fh:
	ld e,a			;182f
	ld d,000h		;1830
	ld hl,l176dh		;1832
	add hl,de			;1835
	ld e,(hl)			;1836
	ret			;1837
l1838h:
	ld a,(0c083h)		;1838
	cp c			;183b
	jr z,l1843h		;183c
	jr nc,l184fh		;183e
	xor a			;1840
	jr l1846h		;1841
l1843h:
	call sub_1854h		;1843
l1846h:
	ld e,a			;1846
	ld d,000h		;1847
	ld hl,l1771h		;1849
	add hl,de			;184c
	ld e,(hl)			;184d
	ret			;184e
l184fh:
	cp b			;184f
	jr c,l1843h		;1850
	jr l182ch		;1852
sub_1854h:
	ld a,(0c084h)		;1854
	cp e			;1857
sub_1858h:
	jr z,l186fh		;1858
	jr c,l1863h		;185a
	cp d			;185c
	jr z,l1875h		;185d
	jr c,l1875h		;185f
	jr l186dh		;1861
l1863h:
	ld a,(0c085h)		;1863
	cp e			;1866
	jr z,l1872h		;1867
	jr nc,l1872h		;1869
	jr l186dh		;186b
l186dh:
	xor a			;186d
	ret			;186e
l186fh:
	ld a,001h		;186f
	ret			;1871
l1872h:
	ld a,002h		;1872
	ret			;1874
l1875h:
	ld a,003h		;1875
	ret			;1877
sub_1878h:
	ld a,(0c000h)		;1878
	rrca			;187b
	ret nc			;187c
	ld hl,l19cbh		;187d
	ld ix,0c300h		;1880
	call sub_17f1h		;1884
	ld (0c082h),bc		;1887
	ld (0c084h),de		;188b
	ld a,(0c312h)		;188f
	rrca			;1892
	jr c,l189fh		;1893
	ld iy,0c200h		;1895
	ld ix,0c280h		;1899
	jr l18a7h		;189d
l189fh:
	ld iy,0c240h		;189f
	ld ix,0c2c0h		;18a3
l18a7h:
	ld a,(0c000h)		;18a7
	rlca			;18aa
	jr nc,l18b1h		;18ab
	call sub_18b5h		;18ad
	ret c			;18b0
l18b1h:
	push iy		;18b1
	pop ix		;18b3
sub_18b5h:
	bit 7,(ix+019h)		;18b5
	jp z,l1967h		;18b9
	ld a,(0c040h)		;18bc
	rlca			;18bf
	jp nc,l1967h		;18c0
	ld hl,019dbh		;18c3
	ld a,(ix+01eh)		;18c6
	call 017ebh		;18c9
	ld (0c08eh),bc		;18cc
	ld (0c090h),de		;18d0
	call sub_1806h		;18d4
	ld a,e			;18d7
	or a			;18d8
	jp z,l1967h		;18d9
	ld hl,01a1dh		;18dc
	ld a,(ix+01eh)		;18df
	add a,a			;18e2
	ld e,a			;18e3
	ld d,000h		;18e4
	add hl,de			;18e6
	ld a,(ix+00bh)		;18e7
	add a,(hl)			;18ea
	ld b,a			;18eb
	inc hl			;18ec
	add a,(hl)			;18ed
	ld c,a			;18ee
	ld a,(0c34bh)		;18ef
	cp c			;18f2
	jp c,l1967h		;18f3
	inc hl			;18f6
	cp b			;18f7
	jp nc,l1967h		;18f8
	ld hl,0c040h		;18fb
	bit 0,(hl)		;18fe
	jr z,l1951h		;1900
	ld bc,01a3fh		;1902
	ld a,(0c000h)		;1905
	bit 7,a		;1908
	jr z,l1915h		;190a
	ld a,(0c044h)		;190c
	or a			;190f
	jr z,l1915h		;1910
	ld bc,l1a4fh		;1912
l1915h:
	ld a,(0c041h)		;1915
	add a,a			;1918
	add a,a			;1919
	ld e,a			;191a
	ld d,000h		;191b
	ld h,d			;191d
	ld l,(ix+001h)		;191e
	add hl,de			;1921
	add hl,bc			;1922
	ld a,(hl)			;1923
	or a			;1924
	jp z,l1951h		;1925
	dec a			;1928
	jp z,l1967h		;1929
	ld hl,0c040h		;192c
	res 0,(hl)		;192f
	dec a			;1931
	jr z,l1941h		;1932
	ld a,(0c519h)		;1934
	or a			;1937
	jr z,l1947h		;1938
	cp 002h		;193a
	jr z,l1947h		;193c
	jp l1967h		;193e
l1941h:
	ld a,(0c519h)		;1941
	or a			;1944
	jr nz,l1951h		;1945
l1947h:
	ld a,004h		;1947
	ld (0c518h),a		;1949
	ld hl,0c000h		;194c
	res 0,(hl)		;194f
l1951h:
	set 7,(ix+01dh)		;1951
	xor a			;1955
	ld (0c303h),a		;1956
	ld (0c517h),a		;1959
	ld (0c519h),a		;195c
	ld a,(ix+001h)		;195f
	ld (0c042h),a		;1962
	scf			;1965
	ret			;1966
l1967h:
	ld a,(0c501h)		;1967
	cp 018h		;196a
	ret nc			;196c
	ld hl,l19cfh		;196d
	ld a,(ix+001h)		;1970
	call 017ebh		;1973
	ld (0c08eh),bc		;1976
	ld (0c090h),de		;197a
	ld a,(0c30bh)		;197e
	cp c			;1981
	jr c,l19c9h		;1982
	cp b			;1984
	jr nc,l19c9h		;1985
	ld a,(0c30dh)		;1987
	cp e			;198a
	jr c,l19c9h		;198b
	cp d			;198d
	jr nc,l19c9h		;198e
	ld a,(0c040h)		;1990
	bit 0,a		;1993
	jr z,l19a5h		;1995
	ld c,001h		;1997
	ld a,(0c041h)		;1999
	and c			;199c
	ld e,a			;199d
	ld a,(ix+001h)		;199e
	and c			;19a1
	cp e			;19a2
	jr z,l19c9h		;19a3
l19a5h:
	ld a,003h		;19a5
	ld (0c518h),a		;19a7
	ld c,090h		;19aa
	ld a,(ix+001h)		;19ac
	and 001h		;19af
	jr z,l19b5h		;19b1
	ld c,091h		;19b3
l19b5h:
	ld a,c			;19b5
	ld (0de00h),a		;19b6
	ld hl,0c000h		;19b9
	res 0,(hl)		;19bc
	ld hl,l0000h		;19be
	ld (0c50ch),hl		;19c1
	ld (0c50eh),hl		;19c4
	scf			;19c7
	ret			;19c8
l19c9h:
	and a			;19c9
	ret			;19ca
l19cbh:
	call m,0fc07h		;19cb
	rlca			;19ce
l19cfh:
	ret m			;19cf
	ex af,af'			;19d0
	call m,0fc08h		;19d1
	inc b			;19d4
	cp 004h		;19d5
	ret m			;19d7
	ex af,af'			;19d8
	call m,0fc08h		;19d9
	inc b			;19dc
	cp 004h		;19dd
	ld sp,hl			;19df
	dec b			;19e0
	dec c			;19e1
l19e2h:
	inc c			;19e2
	ld sp,hl			;19e3
	dec b			;19e4
	jp pe,0f90ch		;19e5
	dec b			;19e8
	dec c			;19e9
	inc c			;19ea
	ld sp,hl			;19eb
	dec b			;19ec
	jp pe,0f00ch		;19ed
	djnz l19ffh		;19f0
	inc c			;19f2
	ret p			;19f3
	djnz l19e2h		;19f4
	inc c			;19f6
	ret p			;19f7
	djnz l19ffh		;19f8
	inc c			;19fa
	ret p			;19fb
	djnz l1a03h		;19fc
	inc c			;19fe
l19ffh:
	ld sp,hl			;19ff
	dec b			;1a00
	ret p			;1a01
	ex af,af'			;1a02
l1a03h:
	ld sp,hl			;1a03
	dec b			;1a04
	ret p			;1a05
	ex af,af'			;1a06
	ld sp,hl			;1a07
	dec b			;1a08
	inc bc			;1a09
	ex af,af'			;1a0a
	ld sp,hl			;1a0b
	dec b			;1a0c
	inc bc			;1a0d
	ex af,af'			;1a0e
	call m,0f408h		;1a0f
	ex af,af'			;1a12
	call m,sub_0408h		;1a13
	ex af,af'			;1a16
	call m,0f40ch		;1a17
	ex af,af'			;1a1a
	call m,0f408h		;1a1b
	ex af,af'			;1a1e
	nop			;1a1f
	ret pe			;1a20
	nop			;1a21
	ret pe			;1a22
	nop			;1a23
	ret pe			;1a24
	nop			;1a25
	ret pe			;1a26
	ret p			;1a27
	ret pe			;1a28
	ret p			;1a29
	ret pe			;1a2a
	ret po			;1a2b
	ret p			;1a2c
	ret po			;1a2d
	ret m			;1a2e
	nop			;1a2f
	ret pe			;1a30
	nop			;1a31
	ret pe			;1a32
	nop			;1a33
	ret pe			;1a34
	nop			;1a35
	ret pe			;1a36
	ret p			;1a37
	ret p			;1a38
	ret p			;1a39
	ret p			;1a3a
	ret p			;1a3b
	ret p			;1a3c
	call p,000ech		;1a3d
	ld (bc),a			;1a40
	ld bc,l0203h		;1a41
	nop			;1a44
	inc bc			;1a45
	ld bc,l0201h		;1a46
	nop			;1a49
	inc bc			;1a4a
	ld (bc),a			;1a4b
	ld bc,l0003h		;1a4c
l1a4fh:
	nop			;1a4f
	inc bc			;1a50
	ld bc,l0302h		;1a51
	nop			;1a54
	ld (bc),a			;1a55
	ld bc,l0300h+1		;1a56
	nop			;1a59
	ld (bc),a			;1a5a
	inc bc			;1a5b
	ld bc,l0000h+2		;1a5c
	ld a,(ix+002h)		;1a5f
	bit 7,a		;1a62
	jr nz,l1abbh		;1a64
	set 7,(ix+002h)		;1a66
	cp 003h		;1a6a
	jr nz,l1a9bh		;1a6c
	bit 0,(ix+001h)		;1a6e
	ld e,000h		;1a72
	jr z,l1a78h		;1a74
	ld e,008h		;1a76
l1a78h:
	ld a,(0c044h)		;1a78
	add a,a			;1a7b
	add a,a			;1a7c
	or e			;1a7d
	ld e,a			;1a7e
	ld d,000h		;1a7f
	ld hl,l1ae2h		;1a81
	add hl,de			;1a84
	ld a,(hl)			;1a85
	ld (ix+00ah),a		;1a86
	inc hl			;1a89
	ld a,(hl)			;1a8a
	ld (ix+00bh),a		;1a8b
	ld (ix+014h),a		;1a8e
	inc hl			;1a91
	ld a,(hl)			;1a92
	ld (ix+00ch),a		;1a93
	inc hl			;1a96
	ld a,(hl)			;1a97
	ld (ix+00dh),a		;1a98
l1a9bh:
	bit 0,(ix+001h)		;1a9b
	jr z,l1aa5h		;1a9f
	ld (ix+030h),007h		;1aa1
l1aa5h:
	ld (ix+022h),006h		;1aa5
	ld (ix+023h),0ffh		;1aa9
	ld hl,l0096h		;1aad
	ld (ix+029h),l		;1ab0
	ld (ix+02ah),h		;1ab3
	ld a,001h		;1ab6
	ld (0c400h),a		;1ab8
l1abbh:
	bit 0,(ix+001h)		;1abb
	call nz,sub_1e25h		;1abf
	ld (ix+020h),000h		;1ac2
	call sub_2a69h		;1ac6
	ld a,(ix+023h)		;1ac9
	and a			;1acc
	jr z,l1ad7h		;1acd
	ld (ix+022h),006h		;1acf
	ld (ix+023h),0ffh		;1ad3
l1ad7h:
	call sub_1b9fh		;1ad7
	jp nz,l26a1h		;1ada
	ld (ix+002h),004h		;1add
	ret			;1ae1
l1ae2h:
	nop			;1ae2
	cp h			;1ae3
	nop			;1ae4
	and b			;1ae5
	nop			;1ae6
	cp h			;1ae7
	nop			;1ae8
	ld h,b			;1ae9
	nop			;1aea
	jr z,l1aedh		;1aeb
l1aedh:
	ld l,a			;1aed
	nop			;1aee
	jr z,l1af1h		;1aef
l1af1h:
	sbc a,l			;1af1
	bit 7,(ix+002h)		;1af2
	jr nz,l1b17h		;1af6
	set 7,(ix+002h)		;1af8
	ld (ix+022h),007h		;1afc
	ld (ix+023h),0ffh		;1b00
	ld (ix+01fh),019h		;1b04
	ld a,017h		;1b08
	ld (0c302h),a		;1b0a
	bit 0,(ix+001h)		;1b0d
	ret z			;1b11
	ld (ix+030h),008h		;1b12
	ret			;1b16
l1b17h:
	bit 0,(ix+001h)		;1b17
	call nz,sub_1e25h		;1b1b
	ld a,(ix+001h)		;1b1e
	bit 0,a		;1b21
	ld b,(ix+028h)		;1b23
	jr nz,l1b37h		;1b26
	and 002h		;1b28
	ld a,(0c1c0h)		;1b2a
	jr z,l1b32h		;1b2d
	ld a,(0c1c2h)		;1b2f
l1b32h:
	rra			;1b32
	rra			;1b33
	rra			;1b34
	rra			;1b35
	ld b,a			;1b36
l1b37h:
	bit 0,b		;1b37
	jr nz,l1b5bh		;1b39
	ld (ix+020h),000h		;1b3b
	call sub_2a69h		;1b3f
	ld a,(ix+023h)		;1b42
	and a			;1b45
	jr nz,l1b50h		;1b46
	ld (ix+022h),007h		;1b48
	ld (ix+023h),0ffh		;1b4c
l1b50h:
	ld a,(0c040h)		;1b50
	bit 7,a		;1b53
	ret nz			;1b55
	ld (ix+002h),009h		;1b56
	ret			;1b5a
l1b5bh:
	ld hl,0c040h		;1b5b
	bit 7,(hl)		;1b5e
	ret z			;1b60
	ld (ix+002h),005h		;1b61
	set 6,(hl)		;1b65
	ret			;1b67
	bit 7,(ix+002h)		;1b68
	jr nz,l1b7eh		;1b6c
	set 7,(ix+002h)		;1b6e
	ld (ix+022h),008h		;1b72
	ld (ix+023h),0ffh		;1b76
	ld (ix+020h),000h		;1b7a
l1b7eh:
	call sub_2a69h		;1b7e
	call sub_2c40h		;1b81
	ld a,(ix+023h)		;1b84
	and a			;1b87
	ret nz			;1b88
	ld a,013h		;1b89
	bit 0,(ix+001h)		;1b8b
	jr z,l1b97h		;1b8f
	ld a,014h		;1b91
	ld (ix+030h),001h		;1b93
l1b97h:
	ld (ix+002h),a		;1b97
	xor a			;1b9a
	ld (0c400h),a		;1b9b
	ret			;1b9e
sub_1b9fh:
	ld l,(ix+029h)		;1b9f
	ld h,(ix+02ah)		;1ba2
	dec hl			;1ba5
	ld (ix+029h),l		;1ba6
	ld (ix+02ah),h		;1ba9
	ld a,l			;1bac
	or h			;1bad
	ret			;1bae
	ret			;1baf
	bit 1,(ix+001h)		;1bb0
	ld hl,0c242h		;1bb4
	ld e,004h		;1bb7
	jr nz,l1bc0h		;1bb9
	ld hl,0c2c2h		;1bbb
	ld e,000h		;1bbe
l1bc0h:
	ld a,(hl)			;1bc0
	and 03fh		;1bc1
	cp 003h		;1bc3
	ld a,000h		;1bc5
	jr z,l1bd4h		;1bc7
	ld a,(0c000h)		;1bc9
	bit 7,a		;1bcc
	ld a,002h		;1bce
	jr nz,l1bd4h		;1bd0
	ld a,008h		;1bd2
l1bd4h:
	or e			;1bd4
	ld e,a			;1bd5
	ld a,(0c044h)		;1bd6
	or e			;1bd9
	add a,a			;1bda
	ld e,a			;1bdb
	ld d,000h		;1bdc
	ld hl,l1c07h		;1bde
	add hl,de			;1be1
	ld a,(hl)			;1be2
	ld (ix+030h),a		;1be3
	inc hl			;1be6
	ld e,(hl)			;1be7
	ld hl,01c1bh		;1be8
	add hl,de			;1beb
	ld a,(hl)			;1bec
	ld (ix+00ah),a		;1bed
	inc hl			;1bf0
	ld a,(hl)			;1bf1
	ld (ix+00bh),a		;1bf2
	ld (ix+014h),a		;1bf5
	inc hl			;1bf8
	ld a,(hl)			;1bf9
	ld (ix+00ch),a		;1bfa
	inc hl			;1bfd
	ld a,(hl)			;1bfe
	ld (ix+00dh),a		;1bff
	ld (ix+002h),014h		;1c02
l1c06h:
	ret			;1c06
l1c07h:
	dec b			;1c07
	inc c			;1c08
	dec b			;1c09
	ex af,af'			;1c0a
	ld bc,00500h		;1c0b
	ex af,af'			;1c0e
	dec b			;1c0f
	inc c			;1c10
	dec b			;1c11
	ex af,af'			;1c12
	dec b			;1c13
	inc c			;1c14
	ld bc,l0104h		;1c15
	nop			;1c18
	ld bc,l0004h		;1c19
	jr z,l1c1eh		;1c1c
l1c1eh:
	ld (hl),b			;1c1e
	nop			;1c1f
	jr z,l1c22h		;1c20
l1c22h:
	and b			;1c22
	nop			;1c23
	jr c,l1c26h		;1c24
l1c26h:
	ld (hl),b			;1c26
	nop			;1c27
	jr c,l1c2ah		;1c28
l1c2ah:
	and b			;1c2a
	bit 7,(ix+002h)		;1c2b
	jr nz,l1c39h		;1c2f
	set 7,(ix+002h)		;1c31
	ld (ix+025h),000h		;1c35
l1c39h:
	call sub_2e98h		;1c39
	call sub_1e25h		;1c3c
	ld a,(ix+025h)		;1c3f
	and 00fh		;1c42
	ld hl,l1c4ah		;1c44
	jp l0807h		;1c47
l1c4ah:
	ld d,(hl)			;1c4a
	inc e			;1c4b
	rst 30h			;1c4c
	inc e			;1c4d
	daa			;1c4e
	dec e			;1c4f
	sbc a,h			;1c50
	inc e			;1c51
	adc a,c			;1c52
	dec e			;1c53
	ld d,a			;1c54
	dec e			;1c55
	ld a,(ix+028h)		;1c56
	and 003h		;1c59
	jr z,l1c64h		;1c5b
	ld (ix+025h),002h		;1c5d
	jp l1d27h		;1c61
l1c64h:
	ld a,(ix+015h)		;1c64
	and a			;1c67
	jr nz,l1c95h		;1c68
	ld a,(ix+027h)		;1c6a
	and a			;1c6d
	jr z,l1c78h		;1c6e
	bit 7,a		;1c70
	jr nz,l1c95h		;1c72
	set 7,(ix+027h)		;1c74
l1c78h:
	ld a,(ix+023h)		;1c78
	and a			;1c7b
	jr nz,l1c92h		;1c7c
	ld (ix+022h),000h		;1c7e
	ld (ix+023h),0ffh		;1c82
	call sub_2bbfh		;1c86
	ld a,(ix+016h)		;1c89
	ld (ix+017h),a		;1c8c
	ld (ix+020h),a		;1c8f
l1c92h:
	jp sub_2a69h		;1c92
l1c95h:
	ld (ix+025h),001h		;1c95
	jp l1cf7h		;1c99
	ld a,(ix+028h)		;1c9c
	and 003h		;1c9f
	jr z,l1caah		;1ca1
	ld (ix+025h),004h		;1ca3
	jp l1d89h		;1ca7
l1caah:
	ld a,(ix+015h)		;1caa
	ld c,a			;1cad
	and 00ch		;1cae
	jr nz,l1ccdh		;1cb0
	ld a,(ix+027h)		;1cb2
	and a			;1cb5
	jr z,l1cc6h		;1cb6
	push bc			;1cb8
	call sub_2bbfh		;1cb9
	pop bc			;1cbc
	ld a,(ix+016h)		;1cbd
	ld b,(ix+017h)		;1cc0
	cp b			;1cc3
	jr nz,l1cf0h		;1cc4
l1cc6h:
	ld a,c			;1cc6
	and 003h		;1cc7
	jr z,l1ceah		;1cc9
	jr l1cdch		;1ccb
l1ccdh:
	call sub_2bbfh		;1ccd
	ld a,(ix+016h)		;1cd0
	ld b,(ix+017h)		;1cd3
	cp b			;1cd6
	jr nz,l1cf0h		;1cd7
	ld (ix+020h),a		;1cd9
l1cdch:
	ld a,(ix+023h)		;1cdc
	and a			;1cdf
	jr nz,l1ceah		;1ce0
	ld (ix+022h),002h		;1ce2
	ld (ix+023h),0ffh		;1ce6
l1ceah:
	call l26a1h		;1cea
	jp sub_2a69h		;1ced
l1cf0h:
	ld (ix+025h),005h		;1cf0
	jp l1d57h		;1cf4
l1cf7h:
	ld a,(ix+025h)		;1cf7
	bit 7,a		;1cfa
	jr nz,l1d17h		;1cfc
	set 7,a		;1cfe
l1d00h:
	ld (ix+025h),a		;1d00
	ld (ix+022h),00ah		;1d03
	ld (ix+023h),0ffh		;1d07
	call sub_2bbfh		;1d0b
	ld a,(ix+016h)		;1d0e
	ld (ix+017h),a		;1d11
	ld (ix+020h),a		;1d14
l1d17h:
	call l26a1h		;1d17
	call sub_2a69h		;1d1a
	ld a,(ix+023h)		;1d1d
	and a			;1d20
	ret nz			;1d21
	ld (ix+025h),003h		;1d22
	ret			;1d26
l1d27h:
	ld a,(ix+025h)		;1d27
	bit 7,a		;1d2a
	jr nz,l1d47h		;1d2c
	set 7,a		;1d2e
	ld (ix+025h),a		;1d30
	ld (ix+022h),00ah		;1d33
	ld (ix+023h),0ffh		;1d37
	call sub_2bbfh		;1d3b
	ld a,(ix+016h)		;1d3e
	ld (ix+017h),a		;1d41
	ld (ix+020h),a		;1d44
l1d47h:
	call l26a1h		;1d47
l1d4ah:
	call sub_2a69h		;1d4a
	ld a,(ix+023h)		;1d4d
	and a			;1d50
	ret nz			;1d51
	ld (ix+025h),004h		;1d52
	ret			;1d56
l1d57h:
	ld a,(ix+025h)		;1d57
	bit 7,a		;1d5a
	jr nz,l1d73h		;1d5c
	set 7,(ix+025h)		;1d5e
	call sub_2bbfh		;1d62
	ld a,(ix+016h)		;1d65
	ld (ix+020h),a		;1d68
	ld (ix+022h),00bh		;1d6b
	ld (ix+023h),0ffh		;1d6f
l1d73h:
	call l26a1h		;1d73
	call sub_2a69h		;1d76
	ld a,(ix+023h)		;1d79
	and a			;1d7c
	ret nz			;1d7d
	ld a,(ix+016h)		;1d7e
	ld (ix+017h),a		;1d81
	ld (ix+025h),003h		;1d84
	ret			;1d88
l1d89h:
	ld a,(ix+025h)		;1d89
	bit 7,a		;1d8c
	jr nz,l1dffh		;1d8e
	set 7,a		;1d90
	ld (ix+025h),a		;1d92
	call sub_2c13h		;1d95
	ld e,a			;1d98
	ld d,a			;1d99
	ld a,(ix+02eh)		;1d9a
	cp 003h		;1d9d
	jr nc,l1db0h		;1d9f
	ld a,e			;1da1
	cp 002h		;1da2
	jr c,l1dd3h		;1da4
	ld e,000h		;1da6
	cp 003h		;1da8
	jr z,l1dd3h		;1daa
	ld e,001h		;1dac
	jr l1dd3h		;1dae
l1db0h:
	cp 004h		;1db0
	jr nc,l1db7h		;1db2
	inc e			;1db4
	jr l1dd3h		;1db5
l1db7h:
	cp 005h		;1db7
	jr c,l1dd3h		;1db9
	ld a,(0c401h)		;1dbb
	and 07fh		;1dbe
	cp 01ah		;1dc0
	ld e,002h		;1dc2
	jr z,l1dd3h		;1dc4
	ld e,003h		;1dc6
	cp 01dh		;1dc8
	jr nz,l1dd3h		;1dca
	ld a,d			;1dcc
	cp 001h		;1dcd
	jr c,l1dd3h		;1dcf
	ld e,002h		;1dd1
l1dd3h:
	ld a,e			;1dd3
	ld b,004h		;1dd4
	ld c,01ch		;1dd6
	and a			;1dd8
	jr z,l1defh		;1dd9
	ld b,003h		;1ddb
l1dddh:
	ld c,01dh		;1ddd
	cp 001h		;1ddf
	jr z,l1defh		;1de1
	ld b,005h		;1de3
	ld c,01bh		;1de5
	cp 002h		;1de7
	jr z,l1defh		;1de9
	ld b,009h		;1deb
	ld c,01ah		;1ded
l1defh:
	ld (ix+022h),b		;1def
	ld (ix+01fh),c		;1df2
	ld (ix+023h),0ffh		;1df5
	ld a,(ix+016h)		;1df9
	ld (ix+020h),a		;1dfc
l1dffh:
	call l26a1h		;1dff
	call sub_2c40h		;1e02
	ld a,(ix+023h)		;1e05
	and a			;1e08
	jr z,l1e0fh		;1e09
	call sub_2a69h		;1e0b
l1e0eh:
	ret			;1e0e
l1e0fh:
	ld a,(ix+027h)		;1e0f
	and a			;1e12
	ld a,000h		;1e13
	jr z,l1e19h		;1e15
l1e17h:
	ld a,001h		;1e17
l1e19h:
	ld (ix+025h),a		;1e19
sub_1e1ch:
	ld (ix+019h),000h		;1e1c
	ld (ix+01dh),000h		;1e20
	ret			;1e24
sub_1e25h:
	ld a,(ix+001h)		;1e25
	and 003h		;1e28
	ld e,a			;1e2a
	ld d,000h		;1e2b
	ld hl,l1e5ah		;1e2d
	add hl,de			;1e30
	ld e,(hl)			;1e31
	ld hl,0c200h		;1e32
	add hl,de			;1e35
	push hl			;1e36
	pop iy		;1e37
	ld a,(ix+030h)		;1e39
	and 00fh		;1e3c
	ld hl,l1e44h		;1e3e
	jp l0807h		;1e41
l1e44h:
	ld e,(hl)			;1e44
	ld e,0feh		;1e45
	ld e,06ch		;1e47
	rra			;1e49
	nop			;1e4a
	jr nz,$+85		;1e4b
	jr nz,l1dddh		;1e4d
	jr nz,$-52		;1e4f
	jr nz,l1e0eh		;1e51
	ld hl,l21eeh		;1e53
	inc hl			;1e56
	ld hl,l2183h		;1e57
l1e5ah:
	add a,b			;1e5a
	ret nz			;1e5b
	nop			;1e5c
	ld b,b			;1e5d
	ld a,(ix+027h)		;1e5e
	and a			;1e61
	jr nz,l1e83h		;1e62
	ld (ix+028h),a		;1e64
	ld (ix+015h),a		;1e67
	ld a,(iy+033h)		;1e6a
	cp 004h		;1e6d
	jr nz,l1e75h		;1e6f
	ld (iy+033h),003h		;1e71
l1e75h:
	ld a,(ix+031h)		;1e75
	and 007h		;1e78
	cp 007h		;1e7a
	ret nz			;1e7c
	ld (ix+030h),004h		;1e7d
	jr l1ef0h		;1e81
l1e83h:
	ld a,(0c401h)		;1e83
	cp 019h		;1e86
	jr z,l1ee8h		;1e88
	cp 01ch		;1e8a
	jr nz,l1e9bh		;1e8c
	ld a,(0c000h)		;1e8e
	bit 7,a		;1e91
	jr nz,l1edfh		;1e93
	ld (ix+030h),006h		;1e95
	jr l1ef0h		;1e99
l1e9bh:
	bit 0,(ix+001h)		;1e9b
	jr nz,l1eb3h		;1e9f
	ld a,(0c30bh)		;1ea1
	add a,008h		;1ea4
	ld e,(ix+00bh)		;1ea6
	sub e			;1ea9
	jr c,l1ec2h		;1eaa
	cp 006h		;1eac
	jr c,l1ee8h		;1eae
	jp l1ec2h		;1eb0
l1eb3h:
	ld a,(0c30bh)		;1eb3
	sub 008h		;1eb6
	ld e,(ix+00bh)		;1eb8
	sub e			;1ebb
	jr nc,l1ec2h		;1ebc
	cp 0fah		;1ebe
	jr c,l1ee8h		;1ec0
l1ec2h:
	ld a,(0c401h)		;1ec2
	cp 01ch		;1ec5
	jr z,l1ef5h		;1ec7
	ld a,(0c000h)		;1ec9
	bit 7,a		;1ecc
	jr z,l1edfh		;1ece
	call sub_160ah		;1ed0
	ld h,(ix+00dh)		;1ed3
	sub h			;1ed6
	jr nc,l1edbh		;1ed7
	neg		;1ed9
l1edbh:
	cp 020h		;1edb
	jr nc,l1ef5h		;1edd
l1edfh:
	ld (iy+033h),003h		;1edf
	ld (ix+030h),002h		;1ee3
	ret			;1ee7
l1ee8h:
	xor a			;1ee8
	ld (ix+028h),a		;1ee9
	ld (ix+015h),a		;1eec
	ret			;1eef
l1ef0h:
	ld (iy+033h),002h		;1ef0
	ret			;1ef4
l1ef5h:
	ld (iy+033h),001h		;1ef5
	ld (ix+030h),00ah		;1ef9
	ret			;1efd
	ld a,(0c400h)		;1efe
	and a			;1f01
l1f02h:
	ret nz			;1f02
l1f03h:
	ld a,(ix+033h)		;1f03
	cp 002h		;1f06
	jr z,l1f3ch		;1f08
	cp 005h		;1f0a
	jr z,l1f3ch		;1f0c
	cp 003h		;1f0e
	jr nz,l1f22h		;1f10
	ld a,(0c000h)		;1f12
	bit 7,a		;1f15
	jr z,l1f22h		;1f17
	ld (ix+030h),009h		;1f19
	ld (ix+033h),004h		;1f1d
	ret			;1f21
l1f22h:
	ld a,(ix+027h)		;1f22
	and a			;1f25
	jr nz,l1f41h		;1f26
	ld (ix+028h),a		;1f28
	ld (ix+015h),a		;1f2b
	ld a,(ix+031h)		;1f2e
	and 003h		;1f31
	cp 003h		;1f33
	ret nz			;1f35
	ld a,(0c000h)		;1f36
	and 080h		;1f39
	ret nz			;1f3b
l1f3ch:
	ld (ix+030h),005h		;1f3c
	ret			;1f40
l1f41h:
	ld a,(0c000h)		;1f41
	ld b,003h		;1f44
	bit 7,a		;1f46
	jr z,l1f68h		;1f48
	ld a,(0c401h)		;1f4a
	cp 019h		;1f4d
	jr z,l1f68h		;1f4f
	ld a,(ix+033h)		;1f51
	and a			;1f54
	ret z			;1f55
	ld b,003h		;1f56
	cp 001h		;1f58
	jr z,l1f68h		;1f5a
	ld b,005h		;1f5c
	cp 002h		;1f5e
	jr z,l1f68h		;1f60
	ld b,009h		;1f62
	cp 003h		;1f64
	jr z,l1f68h		;1f66
l1f68h:
	ld (ix+030h),b		;1f68
	ret			;1f6b
	ld a,(ix+027h)		;1f6c
	and a			;1f6f
	jr nz,l1f7fh		;1f70
	ld (ix+030h),000h		;1f72
	ld (ix+033h),000h		;1f76
	ld (ix+028h),000h		;1f7a
	ret			;1f7e
l1f7fh:
	bit 0,(ix+001h)		;1f7f
	jr nz,l1f97h		;1f83
	ld a,(0c30bh)		;1f85
	add a,008h		;1f88
	ld e,(ix+00bh)		;1f8a
	sub e			;1f8d
	jr c,l1fe0h		;1f8e
	cp 006h		;1f90
	jr nc,l1fe0h		;1f92
	jp l1fa6h		;1f94
l1f97h:
	ld a,(0c30bh)		;1f97
	sub 008h		;1f9a
	ld e,(ix+00bh)		;1f9c
	sub e			;1f9f
	jr nc,l1fc0h		;1fa0
	cp 0fah		;1fa2
	jr nc,l1fc0h		;1fa4
l1fa6h:
	ld a,(0c000h)		;1fa6
	bit 7,a		;1fa9
	ld a,004h		;1fab
	ld b,002h		;1fad
	jr z,l1fb5h		;1faf
	ld a,00ah		;1fb1
	ld b,001h		;1fb3
l1fb5h:
	ld (ix+030h),a		;1fb5
	ld (iy+033h),b		;1fb8
	ld (ix+028h),000h		;1fbb
l1fbfh:
	ret			;1fbf
l1fc0h:
	ld e,04ch		;1fc0
	call sub_160ah		;1fc2
	ld l,000h		;1fc5
	ld h,a			;1fc7
	ld de,l4c00h		;1fc8
	call sub_221eh		;1fcb
	ld (ix+015h),a		;1fce
	call sub_2320h		;1fd1
	ld a,(ix+018h)		;1fd4
	and a			;1fd7
	ld (ix+028h),a		;1fd8
	ret z			;1fdb
	inc (ix+031h)		;1fdc
	ret			;1fdf
l1fe0h:
	ld e,080h		;1fe0
	call sub_160ah		;1fe2
	ld l,000h		;1fe5
	ld h,a			;1fe7
	ld de,08000h		;1fe8
	call sub_2298h		;1feb
	ld (ix+015h),a		;1fee
	call sub_23aah		;1ff1
	ld a,(ix+018h)		;1ff4
	and a			;1ff7
	ld (ix+028h),a		;1ff8
	ret z			;1ffb
l1ffch:
	inc (ix+031h)		;1ffc
	ret			;1fff
l2000h:
	ld a,(ix+027h)		;2000
	and a			;2003
	jr nz,l2013h		;2004
	ld (ix+030h),009h		;2006
	ld (ix+033h),000h		;200a
	ld (ix+028h),000h		;200e
	ret			;2012
l2013h:
	bit 0,(ix+001h)		;2013
	jr z,l2037h		;2017
	ld e,028h		;2019
	call sub_160ah		;201b
	ld l,000h		;201e
	ld h,a			;2020
	ld de,02800h		;2021
	call sub_221eh		;2024
	ld (ix+015h),a		;2027
	call sub_2320h		;202a
	ld a,(ix+018h)		;202d
	ld (ix+028h),a		;2030
	inc (ix+031h)		;2033
	ret			;2036
l2037h:
	ld e,0b0h		;2037
	call sub_160ah		;2039
l203ch:
	ld l,000h		;203c
	ld h,a			;203e
	ld de,0b000h		;203f
	call sub_2298h		;2042
	ld (ix+015h),a		;2045
	call sub_23aah		;2048
	ld a,(ix+018h)		;204b
	ld (ix+028h),a		;204e
	inc (ix+031h)		;2051
	ret			;2054
	bit 0,(ix+027h)		;2055
	jr nz,l207eh		;2059
	ld a,(ix+02eh)		;205b
	bit 0,(ix+001h)		;205e
	jr z,l2075h		;2062
	cp 002h		;2064
	jr c,l207eh		;2066
	ld (ix+015h),001h		;2068
	ld (ix+028h),000h		;206c
	ld (iy+033h),005h		;2070
	ret			;2074
l2075h:
	cp 0b0h		;2075
	jr nc,l207eh		;2077
	ld (ix+015h),002h		;2079
	ret			;207d
l207eh:
	xor a			;207e
	ld (ix+015h),a		;207f
	ld (ix+031h),a		;2082
	ld (ix+030h),003h		;2085
	ld (iy+033h),005h		;2089
	ret			;208d
	ld a,(0c400h)		;208e
	and a			;2091
	ret nz			;2092
	bit 0,(ix+027h)		;2093
	jr nz,l20b2h		;2097
l2099h:
	ld a,(0c000h)		;2099
	bit 7,a		;209c
	ld a,002h		;209e
	jr z,l20a5h		;20a0
	call sub_238dh		;20a2
l20a5h:
	ld (ix+015h),a		;20a5
	ld a,(ix+02eh)		;20a8
	cp 006h		;20ab
	ret c			;20ad
	ld (ix+033h),000h		;20ae
l20b2h:
	ld a,(0c000h)		;20b2
	bit 7,a		;20b5
	jr z,l20c0h		;20b7
	ld a,(ix+033h)		;20b9
	cp 005h		;20bc
	jr z,l2099h		;20be
l20c0h:
	xor a			;20c0
	ld (ix+015h),a		;20c1
	ld (ix+031h),a		;20c4
	ld (ix+030h),000h		;20c7
	ret			;20cb
	ld a,(ix+027h)		;20cc
	and a			;20cf
	jr nz,l20dfh		;20d0
	ld (ix+030h),004h		;20d2
	ld (ix+028h),000h		;20d6
	ld (iy+033h),005h		;20da
	ret			;20de
l20dfh:
	bit 0,(ix+001h)		;20df
	jr z,l2106h		;20e3
	ld e,028h		;20e5
	call sub_160ah		;20e7
	ld l,000h		;20ea
	ld h,a			;20ec
	ld de,02800h		;20ed
	call sub_221eh		;20f0
	ld (ix+015h),a		;20f3
	call sub_2320h		;20f6
	ld a,(ix+018h)		;20f9
	and a			;20fc
	ret z			;20fd
	ld (ix+028h),a		;20fe
	ld (iy+033h),005h		;2101
	ret			;2105
l2106h:
	ld e,0b0h		;2106
	call sub_160ah		;2108
	ld l,000h		;210b
	ld h,a			;210d
	ld de,000b0h		;210e
	call sub_2298h		;2111
	ld (ix+015h),a		;2114
	call sub_23aah		;2117
	ld a,(ix+018h)		;211a
	and a			;211d
	ret z			;211e
	ld (ix+028h),a		;211f
	ret			;2122
	bit 7,(ix+030h)		;2123
	jr nz,l2132h		;2127
	set 7,(ix+030h)		;2129
	ld (ix+028h),000h		;212d
	ret			;2131
l2132h:
	ld a,(ix+033h)		;2132
	cp 002h		;2135
	jr z,l2146h		;2137
	cp 005h		;2139
	jr z,l2146h		;213b
	cp 001h		;213d
	jr nz,l214bh		;213f
	ld (ix+030h),003h		;2141
	ret			;2145
l2146h:
	ld (ix+030h),005h		;2146
	ret			;214a
l214bh:
	ld b,(ix+02fh)		;214b
	ld a,(iy+015h)		;214e
	and 00ch		;2151
	jr nz,l2162h		;2153
	ld a,(iy+02fh)		;2155
	cp 004h		;2158
	ld b,008h		;215a
	jr c,l217ah		;215c
	ld b,004h		;215e
	jr l217ah		;2160
l2162h:
	bit 3,a		;2162
	jr z,l216fh		;2164
	ld a,b			;2166
	cp 003h		;2167
	ld b,004h		;2169
	jr c,l217ah		;216b
	jr l2176h		;216d
l216fh:
	ld a,b			;216f
	cp 005h		;2170
	jr nc,l217ah		;2172
	ld b,008h		;2174
l2176h:
	ld (ix+015h),b		;2176
	ret			;2179
l217ah:
	xor a			;217a
	ld (ix+015h),a		;217b
	ld (ix+030h),001h		;217e
l2182h:
	ret			;2182
l2183h:
	ld b,(ix+02fh)		;2183
	ld a,(iy+015h)		;2186
	and 00ch		;2189
	jr nz,l219ah		;218b
	ld a,(iy+02fh)		;218d
	cp 004h		;2190
	ld b,008h		;2192
	jr c,l21b2h		;2194
	ld b,004h		;2196
	jr l21b2h		;2198
l219ah:
	bit 3,a		;219a
	jr z,l21a7h		;219c
	ld a,b			;219e
	cp 003h		;219f
	ld b,004h		;21a1
	jr c,l21b2h		;21a3
	jr l21aeh		;21a5
l21a7h:
	ld a,b			;21a7
	cp 005h		;21a8
	jr nc,l21b2h		;21aa
	ld b,008h		;21ac
l21aeh:
	ld (ix+015h),b		;21ae
	ret			;21b1
l21b2h:
	xor a			;21b2
	ld (ix+015h),a		;21b3
	ld (ix+030h),000h		;21b6
	ret			;21ba
	bit 7,(ix+030h)		;21bb
	jr nz,l21cdh		;21bf
	set 7,(ix+030h)		;21c1
	ld a,r		;21c5
	and 01fh		;21c7
	inc a			;21c9
	ld (ix+031h),a		;21ca
l21cdh:
	dec (ix+031h)		;21cd
	ret nz			;21d0
	ld a,(0c000h)		;21d1
	bit 3,a		;21d4
	ld a,000h		;21d6
	jr nz,l21e6h		;21d8
	ld a,r		;21da
	cp 03fh		;21dc
	jr nc,l21e4h		;21de
l21e0h:
	and 008h		;21e0
	jr l21e6h		;21e2
l21e4h:
	and 004h		;21e4
l21e6h:
	ld (ix+015h),a		;21e6
	res 7,(ix+030h)		;21e9
	ret			;21ed
l21eeh:
	bit 7,(ix+030h)		;21ee
	jr nz,l21fch		;21f2
	set 7,(ix+030h)		;21f4
	ld (ix+031h),000h		;21f8
l21fch:
	ld a,(0c501h)		;21fc
	cp 02ah		;21ff
	jr c,l2207h		;2201
l2203h:
	set 0,(ix+031h)		;2203
l2207h:
	bit 0,(ix+031h)		;2207
	ret z			;220b
	cp 028h		;220c
	ret nc			;220e
	cp 01ah		;220f
	ret c			;2211
	ld a,r		;2212
	ld a,r		;2214
	and 001h		;2216
	ret nz			;2218
	ld (ix+028h),001h		;2219
	ret			;221d
sub_221eh:
	ld a,(0c518h)		;221e
	and a			;2221
	ld a,000h		;2222
	ret nz			;2224
	push hl			;2225
	exx			;2226
	pop hl			;2227
	ld e,(ix+00ch)		;2228
	ld d,(ix+00dh)		;222b
	xor a			;222e
	sbc hl,de		;222f
	ld b,008h		;2231
	jr nc,l223ah		;2233
	call sub_2319h		;2235
	ld b,004h		;2238
l223ah:
	ld a,(ix+02eh)		;223a
	ld de,00500h		;223d
	cp 006h		;2240
	jr nc,l2247h		;2242
	ld de,00c00h		;2244
l2247h:
	xor a			;2247
	ld c,h			;2248
	sbc hl,de		;2249
	jr z,l226ah		;224b
	jr nc,l226ch		;224d
	call sub_2319h		;224f
	ld a,h			;2252
	cp 003h		;2253
	jr c,l226ah		;2255
	ld a,c			;2257
	bit 2,b		;2258
	jr nz,l225fh		;225a
	neg		;225c
	ld d,a			;225e
l225fh:
	exx			;225f
	push hl			;2260
	exx			;2261
	pop hl			;2262
	add hl,de			;2263
	ld (ix+00ch),l		;2264
	ld (ix+00dh),h		;2267
l226ah:
	ld b,000h		;226a
l226ch:
	push bc			;226c
	exx			;226d
	pop bc			;226e
	ld l,(ix+00ah)		;226f
	ld h,(ix+00bh)		;2272
	ex de,hl			;2275
	xor a			;2276
	sbc hl,de		;2277
	ld c,002h		;2279
	jr nc,l2282h		;227b
	ld c,001h		;227d
	call sub_2319h		;227f
l2282h:
	ld de,l0300h		;2282
	xor a			;2285
	sbc hl,de		;2286
	jr nc,l228ch		;2288
	ld c,000h		;228a
l228ch:
	xor a			;228c
	or c			;228d
	or b			;228e
	ret			;228f
l2290h:
	call pe,0f6eeh		;2290
	cp 002h		;2293
	ld a,(bc)			;2295
	ld (de),a			;2296
	inc d			;2297
sub_2298h:
	ld a,(0c518h)		;2298
	and a			;229b
	ld a,000h		;229c
	ret nz			;229e
	push hl			;229f
	exx			;22a0
	ld e,(ix+02eh)		;22a1
	ld d,000h		;22a4
	ld hl,l2290h		;22a6
	add hl,de			;22a9
	ld a,(hl)			;22aa
	pop hl			;22ab
	ld e,(ix+00ch)		;22ac
	ld d,(ix+00dh)		;22af
	push hl			;22b2
	xor a			;22b3
	sbc hl,de		;22b4
	ld c,h			;22b6
	pop hl			;22b7
	add a,d			;22b8
	ld d,a			;22b9
	xor a			;22ba
	sbc hl,de		;22bb
	ld b,008h		;22bd
	jr nc,l22c6h		;22bf
	call sub_2319h		;22c1
	ld b,004h		;22c4
l22c6h:
	ld a,b			;22c6
	ld de,l1000h		;22c7
	cp 004h		;22ca
	jr z,l22d1h		;22cc
	ld de,l1800h		;22ce
l22d1h:
	xor a			;22d1
	sbc hl,de		;22d2
	jr z,l22f3h		;22d4
	jr nc,l22f5h		;22d6
	call sub_2319h		;22d8
	ld a,h			;22db
	cp 004h		;22dc
	jr c,l22f3h		;22de
	ld a,c			;22e0
	bit 2,b		;22e1
	jr nz,l22e8h		;22e3
	neg		;22e5
	ld d,a			;22e7
l22e8h:
	exx			;22e8
	push hl			;22e9
	exx			;22ea
	pop hl			;22eb
	add hl,de			;22ec
	ld (ix+00ch),l		;22ed
	ld (ix+00dh),h		;22f0
l22f3h:
	ld b,000h		;22f3
l22f5h:
	push bc			;22f5
	exx			;22f6
	pop bc			;22f7
	ld l,(ix+00ah)		;22f8
	ld h,(ix+00bh)		;22fb
	ex de,hl			;22fe
	xor a			;22ff
	sbc hl,de		;2300
	ld c,001h		;2302
	jr c,l230bh		;2304
	ld c,002h		;2306
	call sub_2319h		;2308
l230bh:
	ld de,00800h		;230b
	xor a			;230e
	sbc hl,de		;230f
	jr nc,l2315h		;2311
	ld c,000h		;2313
l2315h:
	xor a			;2315
	or c			;2316
	or b			;2317
	ret			;2318
sub_2319h:
	xor a			;2319
	sub l			;231a
	ld l,a			;231b
	sbc a,a			;231c
	sub h			;231d
	ld h,a			;231e
	ret			;231f
sub_2320h:
	ld a,(0c518h)		;2320
	and a			;2323
	ld b,000h		;2324
	jr nz,l2389h		;2326
	ld a,(0c519h)		;2328
	and a			;232b
	jr nz,l2334h		;232c
	ld a,(0c51dh)		;232e
	and a			;2331
	jr nz,l2389h		;2332
l2334h:
	ld e,(ix+00bh)		;2334
	ld a,(0c401h)		;2337
	cp 01ch		;233a
	jr nz,l2348h		;233c
	ld a,(0c04ah)		;233e
	rra			;2341
	and 003h		;2342
	sub 002h		;2344
	add a,e			;2346
	ld e,a			;2347
l2348h:
	ld a,(0c30bh)		;2348
	sub e			;234b
	jr nc,l2350h		;234c
	neg		;234e
l2350h:
	ld b,a			;2350
	ld a,(ix+02eh)		;2351
	ld e,a			;2354
	ld c,00ch		;2355
	cp 006h		;2357
	ld a,b			;2359
	ld b,000h		;235a
	jr nc,l2360h		;235c
	ld c,006h		;235e
l2360h:
	cp c			;2360
	jr nc,l2389h		;2361
	ld b,001h		;2363
	ld a,e			;2365
	cp 002h		;2366
	jr nc,l2389h		;2368
	ld a,(0c401h)		;236a
	cp 01ah		;236d
	jr nz,l237dh		;236f
	ld a,r		;2371
	cp 020h		;2373
	ld b,002h		;2375
	jr c,l2389h		;2377
l2379h:
	ld b,001h		;2379
	jr l2389h		;237b
l237dh:
	ld a,r		;237d
	ld a,r		;237f
	ld b,001h		;2381
	cp 06fh		;2383
	jr c,l2389h		;2385
	ld b,002h		;2387
l2389h:
	ld (ix+018h),b		;2389
	ret			;238c
sub_238dh:
	ld a,(iy+02fh)		;238d
	cp 004h		;2390
	ld hl,0a000h		;2392
	jr c,l239ah		;2395
	ld hl,l5000h		;2397
l239ah:
	bit 0,(ix+001h)		;239a
	ld de,l4c00h		;239e
	jr nz,l23a6h		;23a1
	ld de,08800h		;23a3
l23a6h:
	call sub_221eh		;23a6
	ret			;23a9
sub_23aah:
	ld a,(0c518h)		;23aa
	and a			;23ad
	ld b,000h		;23ae
	jr nz,l23fbh		;23b0
	ld a,(0c519h)		;23b2
	and a			;23b5
	jr nz,l23beh		;23b6
	ld a,(0c51dh)		;23b8
	and a			;23bb
	jr nz,l23fbh		;23bc
l23beh:
	ld a,(0c30bh)		;23be
	ld e,a			;23c1
	ld a,(ix+00bh)		;23c2
	sub e			;23c5
	jr nc,l23cah		;23c6
	neg		;23c8
l23cah:
	ld b,a			;23ca
	ld a,(ix+02eh)		;23cb
	ld e,a			;23ce
	ld c,010h		;23cf
	cp 001h		;23d1
	ld a,b			;23d3
	ld b,000h		;23d4
	jr c,l23dah		;23d6
	ld c,018h		;23d8
l23dah:
	cp c			;23da
	jr nc,l23fbh		;23db
	ld b,001h		;23dd
	ld a,e			;23df
	cp 006h		;23e0
	jr c,l23fbh		;23e2
	ld a,(0c401h)		;23e4
	cp 01ah		;23e7
	jr nz,l23f3h		;23e9
	ld a,r		;23eb
	cp 03fh		;23ed
	ld b,002h		;23ef
	jr nc,l23fbh		;23f1
l23f3h:
	ld a,r		;23f3
	cp 030h		;23f5
	jr c,l23fbh		;23f7
	ld b,001h		;23f9
l23fbh:
	ld (ix+018h),b		;23fb
	ret			;23fe
	bit 1,(ix+001h)		;23ff
	ld hl,0c202h		;2403
	ld e,004h		;2406
	jr nz,l240fh		;2408
	ld hl,0c282h		;240a
	ld e,000h		;240d
l240fh:
	ld a,(hl)			;240f
	and 03fh		;2410
	cp 003h		;2412
	ld a,002h		;2414
	jr z,l2423h		;2416
	ld a,(0c000h)		;2418
	bit 7,a		;241b
	ld a,000h		;241d
	jr nz,l2423h		;241f
	ld a,008h		;2421
l2423h:
	or e			;2423
	ld e,a			;2424
	ld a,(0c044h)		;2425
	and 001h		;2428
	or e			;242a
	add a,a			;242b
	ld e,a			;242c
	ld d,000h		;242d
	ld hl,l2458h		;242f
	add hl,de			;2432
	ld a,(hl)			;2433
	ld (ix+030h),a		;2434
	inc hl			;2437
	ld e,(hl)			;2438
	ld hl,0246ch		;2439
	add hl,de			;243c
	ld a,(hl)			;243d
	ld (ix+00ah),a		;243e
	inc hl			;2441
	ld a,(hl)			;2442
	ld (ix+00bh),a		;2443
	ld (ix+014h),a		;2446
	inc hl			;2449
	ld a,(hl)			;244a
	ld (ix+00ch),a		;244b
	inc hl			;244e
	ld a,(hl)			;244f
	ld (ix+00dh),a		;2450
	ld (ix+002h),013h		;2453
	ret			;2457
l2458h:
	ld bc,l050ch		;2458
	inc b			;245b
	dec b			;245c
	nop			;245d
	dec b			;245e
	inc b			;245f
	dec b			;2460
	nop			;2461
	ld bc,l0508h		;2462
	nop			;2465
	ld bc,l0104h		;2466
	inc c			;2469
	ld bc,l0008h		;246a
	adc a,b			;246d
	nop			;246e
	ld h,b			;246f
	nop			;2470
	adc a,b			;2471
	nop			;2472
	and b			;2473
	nop			;2474
	or b			;2475
	nop			;2476
	ld h,b			;2477
	nop			;2478
	or b			;2479
	nop			;247a
	and b			;247b
	call sub_2e98h		;247c
	ld a,(0c000h)		;247f
	bit 3,a		;2482
	call nz,sub_1e25h		;2484
	bit 7,(ix+002h)		;2487
	jr nz,l2495h		;248b
	set 7,(ix+002h)		;248d
	ld (ix+025h),000h		;2491
l2495h:
	ld a,(ix+025h)		;2495
	and 00fh		;2498
	ld hl,l24a0h		;249a
	jp l0807h		;249d
l24a0h:
	xor h			;24a0
	inc h			;24a1
	ld h,c			;24a2
	dec h			;24a3
	sub c			;24a4
	dec h			;24a5
	ret m			;24a6
	inc h			;24a7
	di			;24a8
	dec h			;24a9
	pop bc			;24aa
	dec h			;24ab
	call sub_265eh		;24ac
	jr nz,l24c8h		;24af
	ld a,c			;24b1
	rra			;24b2
	rra			;24b3
	rra			;24b4
	rra			;24b5
	and 003h		;24b6
	jr z,l24c8h		;24b8
	ld (ix+028h),a		;24ba
	ld a,c			;24bd
	and 00fh		;24be
	ld (ix+015h),a		;24c0
	ld (ix+025h),002h		;24c3
	ret			;24c7
l24c8h:
	ld a,c			;24c8
	and 00fh		;24c9
	ld (ix+015h),a		;24cb
	jr nz,l24f3h		;24ce
	ld a,(ix+027h)		;24d0
	and a			;24d3
	jr nz,l24f3h		;24d4
	ld a,(ix+023h)		;24d6
	and a			;24d9
	jr nz,l24f0h		;24da
	ld (ix+022h),000h		;24dc
	ld (ix+023h),0ffh		;24e0
	call sub_2bbfh		;24e4
	ld a,(ix+016h)		;24e7
	ld (ix+017h),a		;24ea
	ld (ix+020h),a		;24ed
l24f0h:
	jp sub_2a69h		;24f0
l24f3h:
	ld (ix+025h),001h		;24f3
	ret			;24f7
	call sub_265eh		;24f8
	jr nz,l2514h		;24fb
	ld a,c			;24fd
	rra			;24fe
	rra			;24ff
	rra			;2500
	rra			;2501
	and 003h		;2502
	jr z,l2514h		;2504
	ld (ix+028h),a		;2506
	ld a,c			;2509
	and 00fh		;250a
	ld (ix+015h),a		;250c
	ld (ix+025h),004h		;250f
	ret			;2513
l2514h:
	ld a,c			;2514
	and 00fh		;2515
	ld (ix+015h),a		;2517
	and 00ch		;251a
	jr nz,l2539h		;251c
	ld a,(ix+027h)		;251e
	and a			;2521
	jr z,l2532h		;2522
	push bc			;2524
	call sub_2bbfh		;2525
	pop bc			;2528
	ld a,(ix+016h)		;2529
	ld b,(ix+017h)		;252c
	cp b			;252f
	jr nz,l255ch		;2530
l2532h:
	ld a,c			;2532
	and 003h		;2533
	jr nz,l2548h		;2535
	jr l2556h		;2537
l2539h:
	call sub_2bbfh		;2539
	ld a,(ix+016h)		;253c
	ld b,(ix+017h)		;253f
	cp b			;2542
	jr nz,l255ch		;2543
	ld (ix+020h),a		;2545
l2548h:
	ld a,(ix+023h)		;2548
	and a			;254b
	jr nz,l2556h		;254c
	ld (ix+022h),002h		;254e
	ld (ix+023h),0ffh		;2552
l2556h:
	call l26a1h		;2556
	jp sub_2a69h		;2559
l255ch:
	ld (ix+025h),005h		;255c
	ret			;2560
	ld a,(ix+025h)		;2561
	bit 7,a		;2564
	jr nz,l2581h		;2566
	set 7,a		;2568
	ld (ix+025h),a		;256a
	ld (ix+022h),00ah		;256d
	ld (ix+023h),0ffh		;2571
	call sub_2bbfh		;2575
	ld a,(ix+016h)		;2578
	ld (ix+017h),a		;257b
	ld (ix+020h),a		;257e
l2581h:
	call l26a1h		;2581
	call sub_2a69h		;2584
	ld a,(ix+023h)		;2587
	and a			;258a
	ret nz			;258b
	ld (ix+025h),003h		;258c
	ret			;2590
	ld a,(ix+025h)		;2591
	bit 7,a		;2594
	jr nz,l25b1h		;2596
	set 7,a		;2598
	ld (ix+025h),a		;259a
	ld (ix+022h),00ah		;259d
	ld (ix+023h),0ffh		;25a1
	call sub_2bbfh		;25a5
	ld a,(ix+016h)		;25a8
	ld (ix+017h),a		;25ab
	ld (ix+020h),a		;25ae
l25b1h:
	call l26a1h		;25b1
	call sub_2a69h		;25b4
	ld a,(ix+023h)		;25b7
	and a			;25ba
	ret nz			;25bb
	ld (ix+025h),004h		;25bc
	ret			;25c0
	ld a,(ix+025h)		;25c1
	bit 7,a		;25c4
	jr nz,l25ddh		;25c6
	set 7,(ix+025h)		;25c8
	call sub_2bbfh		;25cc
	ld a,(ix+016h)		;25cf
	ld (ix+020h),a		;25d2
	ld (ix+022h),00bh		;25d5
	ld (ix+023h),0ffh		;25d9
l25ddh:
	call l26a1h		;25dd
	call sub_2a69h		;25e0
	ld a,(ix+023h)		;25e3
	and a			;25e6
	ret nz			;25e7
	ld a,(ix+016h)		;25e8
	ld (ix+017h),a		;25eb
	ld (ix+025h),003h		;25ee
	ret			;25f2
	ld a,(ix+025h)		;25f3
	bit 7,a		;25f6
	jr nz,l2638h		;25f8
	set 7,a		;25fa
	ld (ix+025h),a		;25fc
	call sub_2c13h		;25ff
	ld b,004h		;2602
	ld c,01ch		;2604
	cp 003h		;2606
	jr z,l2628h		;2608
	ld b,a			;260a
	ld a,(ix+02eh)		;260b
	cp 003h		;260e
	jr c,l2614h		;2610
	ld b,002h		;2612
l2614h:
	ld a,b			;2614
	ld b,009h		;2615
	ld c,01ah		;2617
	and a			;2619
	jr z,l2628h		;261a
	ld b,005h		;261c
	ld c,01bh		;261e
	cp 001h		;2620
	jr z,l2628h		;2622
	ld b,003h		;2624
	ld c,01dh		;2626
l2628h:
	ld (ix+022h),b		;2628
	ld (ix+01fh),c		;262b
	ld (ix+023h),0ffh		;262e
	ld a,(ix+016h)		;2632
	ld (ix+020h),a		;2635
l2638h:
	call l26a1h		;2638
	call sub_2c40h		;263b
	ld a,(ix+023h)		;263e
	and a			;2641
	jr z,l2648h		;2642
	call sub_2a69h		;2644
	ret			;2647
l2648h:
	ld a,(ix+027h)		;2648
	and a			;264b
	ld a,000h		;264c
	jr z,l2652h		;264e
	ld a,001h		;2650
l2652h:
	ld (ix+025h),a		;2652
	ld (ix+019h),000h		;2655
	ld (ix+01dh),000h		;2659
	ret			;265d
sub_265eh:
	ld a,(0c000h)		;265e
	bit 3,a		;2661
	jr z,l2678h		;2663
	ld a,(ix+028h)		;2665
	rla			;2668
	rla			;2669
	rla			;266a
	rla			;266b
	and 030h		;266c
	ld e,(ix+015h)		;266e
	or e			;2671
	and 03fh		;2672
	ld c,a			;2674
	ret z			;2675
	xor a			;2676
	ret			;2677
l2678h:
	ld a,(0c1c1h)		;2678
	ld b,a			;267b
	ld a,(0c1c0h)		;267c
	ld c,a			;267f
	ld a,(ix+001h)		;2680
	and 002h		;2683
	jr z,l268fh		;2685
	ld a,(0c1c3h)		;2687
	ld b,a			;268a
	ld a,(0c1c2h)		;268b
	ld c,a			;268e
l268fh:
	ld a,b			;268f
	and 020h		;2690
	ld e,a			;2692
	ld a,c			;2693
	and 020h		;2694
	and e			;2696
	ret nz			;2697
	ld a,b			;2698
	and 010h		;2699
	ld e,a			;269b
	ld a,c			;269c
	and 010h		;269d
	and e			;269f
	ret			;26a0
l26a1h:
	call sub_26abh		;26a1
	call sub_26cbh		;26a4
	call sub_27f5h		;26a7
	ret			;26aa
sub_26abh:
	ld a,(0c000h)		;26ab
	bit 3,a		;26ae
	ret nz			;26b0
	ld a,(ix+001h)		;26b1
	ld b,a			;26b4
	and 001h		;26b5
	ret nz			;26b7
	ld a,b			;26b8
	and 002h		;26b9
	jr nz,l26c2h		;26bb
	ld a,(0c1c0h)		;26bd
	jr l26c5h		;26c0
l26c2h:
	ld a,(0c1c2h)		;26c2
l26c5h:
	and 00fh		;26c5
	ld (ix+015h),a		;26c7
	ret			;26ca
sub_26cbh:
	xor a			;26cb
	ex af,af'			;26cc
	ld hl,00800h		;26cd
	ld b,003h		;26d0
	ld c,009h		;26d2
	ld a,(ix+002h)		;26d4
	and 07fh		;26d7
	cp b			;26d9
	jr z,l26dfh		;26da
	cp c			;26dc
	jr nz,l2704h		;26dd
l26dfh:
	ld hl,l4100h		;26df
	ld a,(ix+001h)		;26e2
	and 001h		;26e5
	jr nz,l26f5h		;26e7
	ld a,(0c044h)		;26e9
	and 001h		;26ec
	jr nz,l270eh		;26ee
	ld hl,08d00h		;26f0
	jr l270eh		;26f3
l26f5h:
	ld hl,06000h		;26f5
	ld a,(0c044h)		;26f8
	and 001h		;26fb
	jr z,l270eh		;26fd
	ld hl,08800h		;26ff
	jr l270eh		;2702
l2704h:
	ld a,(ix+001h)		;2704
	and 001h		;2707
	jr z,l270eh		;2709
	ld hl,03680h		;270b
l270eh:
	ld (ix+03ch),l		;270e
	ld (ix+03dh),h		;2711
	ld d,(ix+00dh)		;2714
	ld a,(ix+00ch)		;2717
	ld b,004h		;271a
	sub l			;271c
	jr nc,l2725h		;271d
	ld a,d			;271f
	sub 001h		;2720
	ld d,a			;2722
	jr c,l2785h		;2723
l2725h:
	ld a,d			;2725
	sub h			;2726
	jr c,l2785h		;2727
	ld hl,0f800h		;2729
	ld b,003h		;272c
	ld c,009h		;272e
	ld a,(ix+002h)		;2730
	and 07fh		;2733
	cp b			;2735
	jr z,l273bh		;2736
	cp c			;2738
	jr nz,l2760h		;2739
l273bh:
	ld hl,0c000h		;273b
	ld a,(ix+001h)		;273e
	and 001h		;2741
	jr nz,l2751h		;2743
l2745h:
	ld a,(0c044h)		;2745
	and 001h		;2748
	jr z,l276ah		;274a
	ld hl,l7400h		;274c
	jr l276ah		;274f
l2751h:
	ld hl,09d00h		;2751
	ld a,(0c044h)		;2754
	and 001h		;2757
	jr nz,l276ah		;2759
	ld hl,l7600h		;275b
	jr l276ah		;275e
l2760h:
	ld a,(ix+001h)		;2760
	and 001h		;2763
	jr z,l276ah		;2765
	ld hl,0c9ffh		;2767
l276ah:
	ld (ix+03eh),l		;276a
	ld (ix+03fh),h		;276d
	ld d,(ix+00dh)		;2770
	ld a,(ix+00ch)		;2773
	sub l			;2776
	jr c,l277fh		;2777
	ld a,d			;2779
	sub 001h		;277a
	ld d,a			;277c
	jr c,l2788h		;277d
l277fh:
	ld a,d			;277f
	sub h			;2780
	jr c,l2788h		;2781
	ld b,008h		;2783
l2785h:
	ex af,af'			;2785
	or b			;2786
	ex af,af'			;2787
l2788h:
	ld hl,06c00h		;2788
	ld b,003h		;278b
	ld c,009h		;278d
	ld a,(ix+002h)		;278f
	and 07fh		;2792
	cp b			;2794
	jr z,l27e0h		;2795
	cp c			;2797
	jr z,l27e0h		;2798
	ld a,(ix+001h)		;279a
	and 001h		;279d
	jr z,l27a4h		;279f
	ld hl,l1d00h		;27a1
l27a4h:
	ld d,(ix+00bh)		;27a4
	ld a,(ix+00ah)		;27a7
	ld b,001h		;27aa
	sub l			;27ac
	jr nc,l27b5h		;27ad
	ld a,d			;27af
	sub 001h		;27b0
	ld d,a			;27b2
	jr c,l27dbh		;27b3
l27b5h:
	ld a,d			;27b5
	sub h			;27b6
	jr c,l27dbh		;27b7
	ld hl,0cb00h		;27b9
	ld a,(ix+001h)		;27bc
	and 001h		;27bf
	jr z,l27c6h		;27c1
	ld hl,l4cffh		;27c3
l27c6h:
	ld d,(ix+00bh)		;27c6
	ld a,(ix+00ah)		;27c9
	sub l			;27cc
	jr nc,l27d5h		;27cd
	ld a,d			;27cf
	sub 001h		;27d0
	ld d,a			;27d2
	jr c,l27e4h		;27d3
l27d5h:
	ld a,d			;27d5
	sub h			;27d6
	jr c,l27e4h		;27d7
	ld b,002h		;27d9
l27dbh:
	ex af,af'			;27db
	or b			;27dc
	ex af,af'			;27dd
	jr l27e4h		;27de
l27e0h:
	ld b,003h		;27e0
	jr l27dbh		;27e2
l27e4h:
	ld a,(ix+02dh)		;27e4
	and 00fh		;27e7
	ld b,a			;27e9
	ex af,af'			;27ea
	or b			;27eb
	cpl			;27ec
	ld b,(ix+015h)		;27ed
	and b			;27f0
	ld (ix+012h),a		;27f1
	ret			;27f4
sub_27f5h:
	xor a			;27f5
	ld (0c402h),a		;27f6
	bit 0,(ix+001h)		;27f9
	jr nz,l2819h		;27fd
	ld hl,l28b1h		;27ff
	ld a,(0c047h)		;2802
	call sub_2821h		;2805
	ld hl,l2935h		;2808
	ld a,(0c047h)		;280b
	ld (0c402h),a		;280e
	ld a,(0c049h)		;2811
l2814h:
	and a			;2814
	ret z			;2815
	dec a			;2816
	jr sub_2821h		;2817
l2819h:
	ld hl,l298dh		;2819
	ld a,(0c04ah)		;281c
	and 007h		;281f
sub_2821h:
	ld e,a			;2821
	ld a,e			;2822
	add a,a			;2823
	ld d,a			;2824
	add a,a			;2825
	add a,a			;2826
	add a,d			;2827
	add a,e			;2828
	add a,a			;2829
	add a,a			;282a
	ld e,a			;282b
	ld a,(ix+012h)		;282c
	and 00fh		;282f
	cp 00bh		;2831
	jr c,l2836h		;2833
	xor a			;2835
l2836h:
	add a,a			;2836
	add a,a			;2837
	ld d,000h		;2838
	add a,e			;283a
	ld e,a			;283b
	jr nc,l283fh		;283c
	inc d			;283e
l283fh:
	add hl,de			;283f
	push hl			;2840
	push ix		;2841
	pop hl			;2843
	ld de,l000eh		;2844
	add hl,de			;2847
	ex de,hl			;2848
	pop hl			;2849
	ld bc,l0004h		;284a
	ldir		;284d
	ld e,(ix+00ch)		;284f
	ld d,(ix+00dh)		;2852
	ld l,(ix+010h)		;2855
	ld h,(ix+011h)		;2858
	ld a,(0c402h)		;285b
l285eh:
	sub 001h		;285e
	jp c,l2867h		;2860
	add hl,hl			;2863
	jp l285eh		;2864
l2867h:
	add hl,de			;2867
	ld (ix+00ch),l		;2868
	ld (ix+00dh),h		;286b
	ld e,(ix+03ch)		;286e
	ld d,(ix+03dh)		;2871
	ld c,l			;2874
	ld b,h			;2875
	xor a			;2876
	sbc hl,de		;2877
	jr c,l2888h		;2879
	ld e,(ix+03eh)		;287b
	ld d,(ix+03fh)		;287e
	ld l,c			;2881
	ld h,b			;2882
	xor a			;2883
	sbc hl,de		;2884
	jr c,l288eh		;2886
l2888h:
	ld (ix+00ch),e		;2888
	ld (ix+00dh),d		;288b
l288eh:
	ld e,(ix+00ah)		;288e
	ld d,(ix+00bh)		;2891
	ld l,(ix+00eh)		;2894
	ld h,(ix+00fh)		;2897
	ld a,(0c402h)		;289a
l289dh:
	sub 001h		;289d
	jp c,l28a6h		;289f
	add hl,hl			;28a2
	jp l289dh		;28a3
l28a6h:
	add hl,de			;28a6
	ld (ix+00ah),l		;28a7
	ld (ix+00bh),h		;28aa
	ld (ix+014h),h		;28ad
	ret			;28b0
l28b1h:
	nop			;28b1
	nop			;28b2
	nop			;28b3
	nop			;28b4
	nop			;28b5
	rst 38h			;28b6
	nop			;28b7
	nop			;28b8
	nop			;28b9
	ld bc,l0000h		;28ba
	nop			;28bd
	nop			;28be
	nop			;28bf
	nop			;28c0
	nop			;28c1
	nop			;28c2
	nop			;28c3
	rst 38h			;28c4
	nop			;28c5
	rst 38h			;28c6
	nop			;28c7
	rst 38h			;28c8
	nop			;28c9
	ld bc,0ff00h		;28ca
	nop			;28cd
	nop			;28ce
	nop			;28cf
	nop			;28d0
	nop			;28d1
	nop			;28d2
	nop			;28d3
	ld bc,0ff00h		;28d4
	nop			;28d7
	ld bc,l00ffh+1		;28d8
	nop			;28db
	ld bc,l0000h		;28dc
	nop			;28df
	nop			;28e0
	add a,b			;28e1
	cp 000h		;28e2
	nop			;28e4
	add a,b			;28e5
	ld bc,l0000h		;28e6
	nop			;28e9
	nop			;28ea
	nop			;28eb
	nop			;28ec
	nop			;28ed
	nop			;28ee
	add a,b			;28ef
	cp 080h		;28f0
	cp 080h		;28f2
	cp 080h		;28f4
	ld bc,0fe80h		;28f6
	nop			;28f9
	nop			;28fa
	nop			;28fb
	nop			;28fc
	nop			;28fd
	nop			;28fe
	add a,b			;28ff
	ld bc,0fe80h		;2900
	add a,b			;2903
	ld bc,l017fh+1		;2904
	add a,b			;2907
	ld bc,l0000h		;2908
	nop			;290b
	nop			;290c
	nop			;290d
	cp 000h		;290e
	nop			;2910
	nop			;2911
	ld (bc),a			;2912
	nop			;2913
	nop			;2914
	nop			;2915
	nop			;2916
	nop			;2917
	nop			;2918
	nop			;2919
	nop			;291a
	nop			;291b
	cp 000h		;291c
	cp 000h		;291e
	cp 000h		;2920
	ld (bc),a			;2922
	nop			;2923
	cp 000h		;2924
	nop			;2926
	nop			;2927
	nop			;2928
	nop			;2929
	nop			;292a
	nop			;292b
	ld (bc),a			;292c
	nop			;292d
	cp 000h		;292e
	ld (bc),a			;2930
	nop			;2931
	ld (bc),a			;2932
	nop			;2933
	ld (bc),a			;2934
l2935h:
	nop			;2935
	nop			;2936
	nop			;2937
	nop			;2938
	add a,b			;2939
	rst 38h			;293a
	nop			;293b
	nop			;293c
	add a,b			;293d
	nop			;293e
	nop			;293f
	nop			;2940
	nop			;2941
	nop			;2942
	nop			;2943
	nop			;2944
	nop			;2945
	nop			;2946
	ld b,b			;2947
	nop			;2948
	add a,b			;2949
	rst 38h			;294a
	ld b,b			;294b
	nop			;294c
	add a,b			;294d
	nop			;294e
	ld b,b			;294f
	nop			;2950
	nop			;2951
	nop			;2952
	nop			;2953
	nop			;2954
	nop			;2955
	nop			;2956
	ret nz			;2957
	rst 38h			;2958
	add a,b			;2959
	rst 38h			;295a
	ret nz			;295b
	rst 38h			;295c
	add a,b			;295d
	nop			;295e
	ret nz			;295f
	rst 38h			;2960
	nop			;2961
	nop			;2962
	nop			;2963
	nop			;2964
	ld b,b			;2965
	nop			;2966
	nop			;2967
	nop			;2968
	ret nz			;2969
	rst 38h			;296a
	nop			;296b
	nop			;296c
	nop			;296d
	nop			;296e
	nop			;296f
	nop			;2970
	nop			;2971
	nop			;2972
	add a,b			;2973
	rst 38h			;2974
	ld b,b			;2975
	nop			;2976
	add a,b			;2977
	rst 38h			;2978
	ret nz			;2979
	rst 38h			;297a
	add a,b			;297b
	rst 38h			;297c
	nop			;297d
	nop			;297e
	nop			;297f
	nop			;2980
	nop			;2981
	nop			;2982
	add a,b			;2983
	nop			;2984
	ld b,b			;2985
	nop			;2986
	add a,b			;2987
	nop			;2988
	ret nz			;2989
	rst 38h			;298a
	add a,b			;298b
	nop			;298c
l298dh:
	nop			;298d
	nop			;298e
	nop			;298f
	nop			;2990
	ret nc			;2991
	rst 38h			;2992
	nop			;2993
	nop			;2994
	jr nc,l2997h		;2995
l2997h:
	nop			;2997
	nop			;2998
	nop			;2999
	nop			;299a
	nop			;299b
	nop			;299c
	nop			;299d
	nop			;299e
	ret nz			;299f
	rst 38h			;29a0
	ret nc			;29a1
	rst 38h			;29a2
	ret nz			;29a3
	rst 38h			;29a4
	jr nc,l29a7h		;29a5
l29a7h:
	ret nz			;29a7
	rst 38h			;29a8
	nop			;29a9
	nop			;29aa
	nop			;29ab
	nop			;29ac
	nop			;29ad
	nop			;29ae
	ld b,b			;29af
	nop			;29b0
	ret nc			;29b1
	rst 38h			;29b2
	ld b,b			;29b3
	nop			;29b4
	jr nc,l29b7h		;29b5
l29b7h:
	ld b,b			;29b7
	nop			;29b8
	nop			;29b9
	nop			;29ba
	nop			;29bb
	nop			;29bc
	ret nz			;29bd
	rst 38h			;29be
	nop			;29bf
	nop			;29c0
	ld b,b			;29c1
	nop			;29c2
	nop			;29c3
	nop			;29c4
	nop			;29c5
	nop			;29c6
	nop			;29c7
	nop			;29c8
	nop			;29c9
	nop			;29ca
	and b			;29cb
	rst 38h			;29cc
	ret nz			;29cd
	rst 38h			;29ce
	and b			;29cf
	rst 38h			;29d0
	ld b,b			;29d1
	nop			;29d2
	and b			;29d3
	rst 38h			;29d4
	nop			;29d5
	nop			;29d6
	nop			;29d7
	nop			;29d8
	nop			;29d9
	nop			;29da
	ld h,b			;29db
	nop			;29dc
	ret nz			;29dd
	rst 38h			;29de
	ld h,b			;29df
	nop			;29e0
	ld b,b			;29e1
	nop			;29e2
	ld h,b			;29e3
	nop			;29e4
	nop			;29e5
	nop			;29e6
	nop			;29e7
	nop			;29e8
	or b			;29e9
	rst 38h			;29ea
	nop			;29eb
	nop			;29ec
	ld d,b			;29ed
	nop			;29ee
	nop			;29ef
	nop			;29f0
	nop			;29f1
	nop			;29f2
	nop			;29f3
	nop			;29f4
	nop			;29f5
	nop			;29f6
	add a,b			;29f7
	rst 38h			;29f8
	or b			;29f9
	rst 38h			;29fa
	add a,b			;29fb
	rst 38h			;29fc
	ld d,b			;29fd
	nop			;29fe
	add a,b			;29ff
	rst 38h			;2a00
	nop			;2a01
l2a02h:
	nop			;2a02
	nop			;2a03
	nop			;2a04
	nop			;2a05
	nop			;2a06
	add a,b			;2a07
	nop			;2a08
	or b			;2a09
	rst 38h			;2a0a
	add a,b			;2a0b
	nop			;2a0c
	ld d,b			;2a0d
	nop			;2a0e
	add a,b			;2a0f
	nop			;2a10
	nop			;2a11
	nop			;2a12
	nop			;2a13
	nop			;2a14
	sub b			;2a15
	rst 38h			;2a16
	nop			;2a17
	nop			;2a18
	ld (hl),b			;2a19
	ld bc,l0000h		;2a1a
	nop			;2a1d
	nop			;2a1e
	nop			;2a1f
	nop			;2a20
	nop			;2a21
	nop			;2a22
	ld h,b			;2a23
	rst 38h			;2a24
	sub b			;2a25
	rst 38h			;2a26
	ld h,b			;2a27
	rst 38h			;2a28
	ld (hl),b			;2a29
	ld bc,0ff60h		;2a2a
	nop			;2a2d
	nop			;2a2e
	nop			;2a2f
	nop			;2a30
	nop			;2a31
	nop			;2a32
	and b			;2a33
	nop			;2a34
	sub b			;2a35
	rst 38h			;2a36
	and b			;2a37
	nop			;2a38
	ld (hl),b			;2a39
	ld bc,000a0h		;2a3a
	nop			;2a3d
	nop			;2a3e
	nop			;2a3f
	nop			;2a40
	nop			;2a41
	rst 38h			;2a42
	nop			;2a43
	nop			;2a44
	nop			;2a45
	ld bc,l0000h		;2a46
	nop			;2a49
	nop			;2a4a
	nop			;2a4b
	nop			;2a4c
	nop			;2a4d
	nop			;2a4e
	ret po			;2a4f
	cp 000h		;2a50
	rst 38h			;2a52
	ret po			;2a53
	cp 000h		;2a54
	ld bc,0fee0h		;2a56
	nop			;2a59
	nop			;2a5a
	nop			;2a5b
	nop			;2a5c
	nop			;2a5d
	nop			;2a5e
	jr nz,l2a62h		;2a5f
	nop			;2a61
l2a62h:
	rst 38h			;2a62
	jr nz,l2a66h		;2a63
	nop			;2a65
l2a66h:
	ld bc,l011eh+2		;2a66
sub_2a69h:
	ld a,(ix+023h)		;2a69
	and a			;2a6c
	ret z			;2a6d
	ld a,(ix+022h)		;2a6e
	bit 7,a		;2a71
	jr nz,l2adfh		;2a73
	set 7,(ix+022h)		;2a75
	ld e,a			;2a79
	ld a,(ix+001h)		;2a7a
	ld c,a			;2a7d
	and 001h		;2a7e
	ld b,000h		;2a80
	jr z,l2a88h		;2a82
	ld b,018h		;2a84
	jr l2a8fh		;2a86
l2a88h:
	ld a,c			;2a88
	and 002h		;2a89
	jr z,l2a8fh		;2a8b
	ld b,00ch		;2a8d
l2a8fh:
	ld a,(ix+020h)		;2a8f
	and 001h		;2a92
	jr z,l2a98h		;2a94
	ld a,024h		;2a96
l2a98h:
	add a,e			;2a98
	add a,b			;2a99
	add a,a			;2a9a
	ld e,a			;2a9b
	ld d,000h		;2a9c
	ld hl,l2b2fh		;2a9e
	add hl,de			;2aa1
	ld e,(hl)			;2aa2
	inc hl			;2aa3
	ld d,(hl)			;2aa4
	ex de,hl			;2aa5
	ld a,(hl)			;2aa6
	ld (ix+009h),a		;2aa7
	inc hl			;2aaa
	ld e,(hl)			;2aab
	ld a,(0c04ah)		;2aac
	rra			;2aaf
	and 003h		;2ab0
	ld d,a			;2ab2
	ld a,e			;2ab3
	sub d			;2ab4
	ld (ix+019h),a		;2ab5
	inc hl			;2ab8
	ld a,(hl)			;2ab9
	ld (ix+01ah),a		;2aba
	inc hl			;2abd
	ld a,(hl)			;2abe
	ld (ix+01bh),a		;2abf
	inc hl			;2ac2
	ld a,(hl)			;2ac3
	ld (ix+01eh),a		;2ac4
	inc hl			;2ac7
	ld (ix+02bh),l		;2ac8
	ld (ix+02ch),h		;2acb
	ld a,(hl)			;2ace
	ld (ix+004h),a		;2acf
	inc hl			;2ad2
	ld a,(hl)			;2ad3
	sub d			;2ad4
	jr z,l2ad9h		;2ad5
	jr nc,l2adbh		;2ad7
l2ad9h:
	ld a,001h		;2ad9
l2adbh:
	ld (ix+008h),a		;2adb
	ret			;2ade
l2adfh:
	bit 7,(ix+019h)		;2adf
	jr z,l2aefh		;2ae3
	ld a,(ix+01ah)		;2ae5
	sub 001h		;2ae8
	jr c,l2af2h		;2aea
	ld (ix+01ah),a		;2aec
l2aefh:
	dec (ix+019h)		;2aef
l2af2h:
	dec (ix+008h)		;2af2
	ret nz			;2af5
	dec (ix+009h)		;2af6
	jr nz,l2b00h		;2af9
	ld (ix+023h),000h		;2afb
	ret			;2aff
l2b00h:
	ld l,(ix+02bh)		;2b00
	ld h,(ix+02ch)		;2b03
	inc hl			;2b06
	inc hl			;2b07
	ld (ix+02bh),l		;2b08
	ld (ix+02ch),h		;2b0b
	ld a,(hl)			;2b0e
	ld (ix+004h),a		;2b0f
	inc hl			;2b12
	ld a,(hl)			;2b13
	ld e,a			;2b14
	ld a,(0c04ah)		;2b15
	rra			;2b18
	and 003h		;2b19
	ld d,a			;2b1b
	ld a,e			;2b1c
	sub d			;2b1d
	jr z,l2b22h		;2b1e
	jr nc,l2b24h		;2b20
l2b22h:
	ld a,001h		;2b22
l2b24h:
	ld (ix+008h),a		;2b24
	ld a,(ix+019h)		;2b27
	sub d			;2b2a
	ld (ix+019h),a		;2b2b
	ret			;2b2e
l2b2fh:
	or b			;2b2f
	ld c,b			;2b30
	cp c			;2b31
	ld c,b			;2b32
	ret nz			;2b33
	ld c,b			;2b34
	exx			;2b35
	ld c,b			;2b36
	rst 30h			;2b37
	ld c,b			;2b38
	dec d			;2b39
	ld c,c			;2b3a
	ld sp,l3849h		;2b3b
	ld c,c			;2b3e
	ccf			;2b3f
	ld c,c			;2b40
	ld c,h			;2b41
	ld c,c			;2b42
	ld e,e			;2b43
	ld c,c			;2b44
	add a,d			;2b45
	ld c,c			;2b46
	sbc a,h			;2b47
	ld c,c			;2b48
	and l			;2b49
	ld c,c			;2b4a
	xor h			;2b4b
	ld c,c			;2b4c
	push bc			;2b4d
	ld c,c			;2b4e
	ex (sp),hl			;2b4f
	ld c,c			;2b50
	ld bc,l1d4ah		;2b51
	ld c,d			;2b54
	inc h			;2b55
	ld c,d			;2b56
	dec hl			;2b57
	ld c,d			;2b58
	jr c,l2ba5h		;2b59
	ld b,a			;2b5b
	ld c,d			;2b5c
	ld l,(hl)			;2b5d
	ld c,d			;2b5e
	ld a,a			;2b5f
	ld c,d			;2b60
	adc a,b			;2b61
	ld c,d			;2b62
	adc a,a			;2b63
	ld c,d			;2b64
	jp nz,0cf4ah		;2b65
	ld c,d			;2b68
	push hl			;2b69
	ld c,d			;2b6a
	ret p			;2b6b
	ld c,d			;2b6c
	rst 30h			;2b6d
	ld c,d			;2b6e
	cp 04ah		;2b6f
	push hl			;2b71
	ld c,d			;2b72
	ld hl,02c4bh		;2b73
	ld c,e			;2b76
	and a			;2b77
	ld c,b			;2b78
	ret			;2b79
	ld c,b			;2b7a
	ret nc			;2b7b
	ld c,b			;2b7c
	ret pe			;2b7d
	ld c,b			;2b7e
	ld b,049h		;2b7f
	ld (03149h),hl		;2b81
	ld c,c			;2b84
	jr c,l2bd0h		;2b85
	ccf			;2b87
	ld c,c			;2b88
	ld (l6649h),hl		;2b89
	ld c,c			;2b8c
	ld (hl),c			;2b8d
	ld c,c			;2b8e
	sub e			;2b8f
	ld c,c			;2b90
	or l			;2b91
	ld c,c			;2b92
	cp h			;2b93
	ld c,c			;2b94
	call nc,0f249h		;2b95
	ld c,c			;2b98
	ld c,04ah		;2b99
	dec e			;2b9b
	ld c,d			;2b9c
	inc h			;2b9d
	ld c,d			;2b9e
	dec hl			;2b9f
	ld c,d			;2ba0
	ld c,04ah		;2ba1
	ld d,d			;2ba3
	ld c,d			;2ba4
l2ba5h:
	ld e,l			;2ba5
	ld c,d			;2ba6
	ld a,a			;2ba7
	ld c,d			;2ba8
	sbc a,b			;2ba9
	ld c,d			;2baa
	sbc a,a			;2bab
	ld c,d			;2bac
	xor b			;2bad
	ld c,d			;2bae
	or l			;2baf
	ld c,d			;2bb0
	call c,0f04ah		;2bb1
	ld c,d			;2bb4
	rst 30h			;2bb5
	ld c,d			;2bb6
	cp 04ah		;2bb7
	add hl,bc			;2bb9
	ld c,e			;2bba
	ld d,04bh		;2bbb
	add hl,sp			;2bbd
	ld c,e			;2bbe
sub_2bbfh:
	ld a,(ix+027h)		;2bbf
	and a			;2bc2
	jr z,l2bf2h		;2bc3
	ld a,(ix+00bh)		;2bc5
	cp 018h		;2bc8
	jr nc,l2bceh		;2bca
	ld a,018h		;2bcc
l2bceh:
	cp 0d7h		;2bce
l2bd0h:
	jr c,l2bd4h		;2bd0
	ld a,0d7h		;2bd2
l2bd4h:
	ld e,a			;2bd4
	call sub_160ah		;2bd5
	ld e,(ix+00dh)		;2bd8
	bit 0,(ix+001h)		;2bdb
	jr nz,l2be7h		;2bdf
	ld d,a			;2be1
	ld a,e			;2be2
	add a,004h		;2be3
	ld e,a			;2be5
	ld a,d			;2be6
l2be7h:
	sub e			;2be7
	ld a,001h		;2be8
	jr c,l2beeh		;2bea
l2bech:
	ld a,000h		;2bec
l2beeh:
	ld (ix+016h),a		;2bee
	ret			;2bf1
l2bf2h:
	ld a,(ix+015h)		;2bf2
	and a			;2bf5
	jr z,l2c04h		;2bf6
	and 00ch		;2bf8
	jr z,l2c04h		;2bfa
	and 004h		;2bfc
	ld a,001h		;2bfe
l2c00h:
	jr nz,l2beeh		;2c00
	jr l2bech		;2c02
l2c04h:
	ld a,(ix+00dh)		;2c04
	cp 080h		;2c07
	ld a,000h		;2c09
	jr c,l2c0fh		;2c0b
	ld a,001h		;2c0d
l2c0fh:
	ld (ix+016h),a		;2c0f
	ret			;2c12
sub_2c13h:
	ld a,003h		;2c13
	bit 0,(ix+028h)		;2c15
	ret z			;2c19
	ld de,0c501h		;2c1a
	ld a,(de)			;2c1d
	bit 0,(ix+001h)		;2c1e
	jr nz,l2c28h		;2c22
	cp 010h		;2c24
	jr l2c2ah		;2c26
l2c28h:
	cp 00ah		;2c28
l2c2ah:
	ld b,a			;2c2a
	ld a,002h		;2c2b
	ret c			;2c2d
	ld a,b			;2c2e
	bit 0,(ix+001h)		;2c2f
	jr nz,l2c39h		;2c33
	cp 018h		;2c35
	jr l2c3bh		;2c37
l2c39h:
	cp 01ch		;2c39
l2c3bh:
	ld a,001h		;2c3b
	ret c			;2c3d
	xor a			;2c3e
	ret			;2c3f
sub_2c40h:
	ld a,(ix+01ah)		;2c40
	and a			;2c43
	jr nz,l2c4fh		;2c44
	res 7,(ix+019h)		;2c46
	bit 7,(ix+01dh)		;2c4a
	ret z			;2c4e
l2c4fh:
	ld b,a			;2c4f
	ld a,(0c519h)		;2c50
	cp 001h		;2c53
	ret z			;2c55
	bit 7,(ix+01dh)		;2c56
	ret z			;2c5a
	ld a,(ix+002h)		;2c5b
	and 07fh		;2c5e
	cp 005h		;2c60
	jr z,l2c79h		;2c62
	ld a,(0c040h)		;2c64
	bit 0,a		;2c67
	jr z,l2c79h		;2c69
	ld a,(0c041h)		;2c6b
	cp (ix+001h)		;2c6e
	jr nz,l2c79h		;2c71
	ld hl,0c000h		;2c73
	res 0,(hl)		;2c76
	ret			;2c78
l2c79h:
	res 7,(ix+01dh)		;2c79
	ld a,(ix+01fh)		;2c7d
	ld (0c302h),a		;2c80
	ld (0c401h),a		;2c83
	ld a,b			;2c86
	ld b,(ix+01bh)		;2c87
	call sub_2ed0h		;2c8a
	ld e,c			;2c8d
	ld a,(ix+02fh)		;2c8e
	rrca			;2c91
	rrca			;2c92
	rrca			;2c93
	bit 0,(ix+001h)		;2c94
	jr z,l2c9bh		;2c98
	cpl			;2c9a
l2c9bh:
	and 0e0h		;2c9b
	or e			;2c9d
	ld e,a			;2c9e
	ld a,(ix+02eh)		;2c9f
	rla			;2ca2
	rla			;2ca3
	bit 0,(ix+001h)		;2ca4
	jr z,l2cabh		;2ca8
	cpl			;2caa
l2cabh:
	and 01ch		;2cab
	or e			;2cad
	ld e,a			;2cae
	ld d,000h		;2caf
	ld hl,l2d98h		;2cb1
	add hl,de			;2cb4
	ld a,(hl)			;2cb5
	bit 0,(ix+001h)		;2cb6
	jr z,l2cc7h		;2cba
	bit 0,(ix+020h)		;2cbc
	jr nz,l2cd0h		;2cc0
	call sub_2d52h		;2cc2
	jr l2cd0h		;2cc5
l2cc7h:
	bit 0,(ix+020h)		;2cc7
	jr z,l2cd0h		;2ccb
	call sub_2d52h		;2ccd
l2cd0h:
	and 01fh		;2cd0
	ld de,0c320h		;2cd2
	bit 0,(ix+001h)		;2cd5
	jr z,l2cdeh		;2cd9
	ld b,00bh		;2cdb
	add a,b			;2cdd
l2cdeh:
	ld (de),a			;2cde
	ld a,(0c4b0h)		;2cdf
	ld e,000h		;2ce2
	bit 0,(ix+001h)		;2ce4
	jr z,l2cefh		;2ce8
	ld a,(0c4b1h)		;2cea
	ld e,010h		;2ced
l2cefh:
	ld hl,l2d58h		;2cef
	call sub_2d0eh		;2cf2
	ld a,(0c4b2h)		;2cf5
	ld e,000h		;2cf8
	bit 0,(ix+001h)		;2cfa
	jr z,l2d05h		;2cfe
	ld a,(0c4b3h)		;2d00
	ld e,010h		;2d03
l2d05h:
	ld hl,l2d78h		;2d05
	call sub_2d0eh		;2d08
	jp l2d35h		;2d0b
sub_2d0eh:
	ld c,a			;2d0e
	ld a,(ix+02fh)		;2d0f
	and 007h		;2d12
l2d14h:
	or e			;2d14
	ld e,a			;2d15
	ld a,(ix+020h)		;2d16
	rla			;2d19
	rla			;2d1a
	rla			;2d1b
	and 008h		;2d1c
	or e			;2d1e
	ld e,a			;2d1f
	ld d,000h		;2d20
	add hl,de			;2d22
	ld a,(hl)			;2d23
	and a			;2d24
	ret z			;2d25
	bit 7,a		;2d26
	ld a,c			;2d28
	jr z,l2d2dh		;2d29
	neg		;2d2b
l2d2dh:
	ld c,a			;2d2d
	ld de,0c320h		;2d2e
	ld a,(de)			;2d31
	add a,c			;2d32
	ld (de),a			;2d33
	ret			;2d34
l2d35h:
	ld a,(ix+001h)		;2d35
	and 001h		;2d38
	ld a,000h		;2d3a
	ld b,001h		;2d3c
	jr z,l2d44h		;2d3e
	ld a,001h		;2d40
	ld b,000h		;2d42
l2d44h:
	ld de,l0040h		;2d44
	ld hl,0c227h		;2d47
	ld (hl),a			;2d4a
	add hl,de			;2d4b
	ld (hl),b			;2d4c
	add hl,de			;2d4d
	ld (hl),a			;2d4e
	add hl,de			;2d4f
	ld (hl),b			;2d50
	ret			;2d51
sub_2d52h:
	sub 00ah		;2d52
	ret nc			;2d54
	neg		;2d55
	ret			;2d57
l2d58h:
	rst 38h			;2d58
	rst 38h			;2d59
	rst 38h			;2d5a
	nop			;2d5b
	nop			;2d5c
	nop			;2d5d
	nop			;2d5e
	nop			;2d5f
	nop			;2d60
	nop			;2d61
	nop			;2d62
	nop			;2d63
	nop			;2d64
	ld bc,l00ffh+2		;2d65
	ld bc,l00ffh+2		;2d68
	nop			;2d6b
	nop			;2d6c
	nop			;2d6d
	nop			;2d6e
	nop			;2d6f
	nop			;2d70
	nop			;2d71
	nop			;2d72
	nop			;2d73
	nop			;2d74
	rst 38h			;2d75
	rst 38h			;2d76
	rst 38h			;2d77
l2d78h:
	nop			;2d78
	nop			;2d79
	nop			;2d7a
	rst 38h			;2d7b
	nop			;2d7c
	nop			;2d7d
	nop			;2d7e
	nop			;2d7f
	nop			;2d80
	nop			;2d81
	nop			;2d82
	nop			;2d83
	ld bc,l0000h		;2d84
	nop			;2d87
	nop			;2d88
	nop			;2d89
	nop			;2d8a
	ld bc,l0000h		;2d8b
	nop			;2d8e
	nop			;2d8f
	nop			;2d90
	nop			;2d91
	nop			;2d92
	nop			;2d93
	rst 38h			;2d94
	nop			;2d95
	nop			;2d96
	nop			;2d97
l2d98h:
	ld a,(bc)			;2d98
	add hl,bc			;2d99
	rlca			;2d9a
	dec b			;2d9b
	ld a,(bc)			;2d9c
	add hl,bc			;2d9d
	rlca			;2d9e
	dec b			;2d9f
	ld a,(bc)			;2da0
	add hl,bc			;2da1
	rlca			;2da2
	dec b			;2da3
	ld a,(bc)			;2da4
	add hl,bc			;2da5
	rlca			;2da6
	dec b			;2da7
	ld a,(bc)			;2da8
	add hl,bc			;2da9
	rlca			;2daa
	dec b			;2dab
	ld a,(bc)			;2dac
	add hl,bc			;2dad
	rlca			;2dae
	dec b			;2daf
	ld a,(bc)			;2db0
	add hl,bc			;2db1
	rlca			;2db2
	dec b			;2db3
	ld a,(bc)			;2db4
	add hl,bc			;2db5
	rlca			;2db6
	dec b			;2db7
	ld a,(bc)			;2db8
	add hl,bc			;2db9
	rlca			;2dba
	dec b			;2dbb
	ld a,(bc)			;2dbc
	add hl,bc			;2dbd
	rlca			;2dbe
	dec b			;2dbf
	ld a,(bc)			;2dc0
	add hl,bc			;2dc1
	rlca			;2dc2
	dec b			;2dc3
	ld a,(bc)			;2dc4
	add hl,bc			;2dc5
	rlca			;2dc6
	dec b			;2dc7
	ld a,(bc)			;2dc8
	add hl,bc			;2dc9
	rlca			;2dca
	dec b			;2dcb
	ld a,(bc)			;2dcc
	add hl,bc			;2dcd
	rlca			;2dce
	dec b			;2dcf
	ld a,(bc)			;2dd0
	add hl,bc			;2dd1
	rlca			;2dd2
	dec b			;2dd3
	ld a,(bc)			;2dd4
	add hl,bc			;2dd5
	rlca			;2dd6
	dec b			;2dd7
	ld a,(bc)			;2dd8
	add hl,bc			;2dd9
	rlca			;2dda
	dec b			;2ddb
	ld a,(bc)			;2ddc
	add hl,bc			;2ddd
	rlca			;2dde
	dec b			;2ddf
	ld a,(bc)			;2de0
	add hl,bc			;2de1
	rlca			;2de2
	dec b			;2de3
	ld a,(bc)			;2de4
	add hl,bc			;2de5
	rlca			;2de6
	dec b			;2de7
	ld a,(bc)			;2de8
	add hl,bc			;2de9
	rlca			;2dea
	dec b			;2deb
	ld a,(bc)			;2dec
	add hl,bc			;2ded
	rlca			;2dee
	dec b			;2def
	ld a,(bc)			;2df0
	add hl,bc			;2df1
	rlca			;2df2
	dec b			;2df3
	ld a,(bc)			;2df4
	add hl,bc			;2df5
	rlca			;2df6
	dec b			;2df7
	ld a,(bc)			;2df8
	ex af,af'			;2df9
	ld b,004h		;2dfa
	ld a,(bc)			;2dfc
	ex af,af'			;2dfd
	ld b,004h		;2dfe
	add hl,bc			;2e00
	rlca			;2e01
	ld b,004h		;2e02
	add hl,bc			;2e04
	rlca			;2e05
	ld b,004h		;2e06
	add hl,bc			;2e08
	rlca			;2e09
	ld b,004h		;2e0a
	add hl,bc			;2e0c
	rlca			;2e0d
	ld b,004h		;2e0e
	add hl,bc			;2e10
	rlca			;2e11
	ld b,004h		;2e12
	add hl,bc			;2e14
	rlca			;2e15
	ld b,004h		;2e16
	ld a,(bc)			;2e18
	ex af,af'			;2e19
	ld b,004h		;2e1a
	ld a,(bc)			;2e1c
	ex af,af'			;2e1d
	ld b,004h		;2e1e
	add hl,bc			;2e20
	rlca			;2e21
	ld b,004h		;2e22
	add hl,bc			;2e24
	rlca			;2e25
	ld b,004h		;2e26
	add hl,bc			;2e28
	rlca			;2e29
	ld b,004h		;2e2a
	add hl,bc			;2e2c
	rlca			;2e2d
	ld b,004h		;2e2e
	add hl,bc			;2e30
	rlca			;2e31
	ld b,004h		;2e32
	add hl,bc			;2e34
	rlca			;2e35
	ld b,004h		;2e36
	ld a,(bc)			;2e38
	add hl,bc			;2e39
	rlca			;2e3a
	dec b			;2e3b
	ld a,(bc)			;2e3c
	add hl,bc			;2e3d
	rlca			;2e3e
	dec b			;2e3f
	ld a,(bc)			;2e40
	add hl,bc			;2e41
	rlca			;2e42
	dec b			;2e43
	ld a,(bc)			;2e44
	add hl,bc			;2e45
	rlca			;2e46
	dec b			;2e47
	ld a,(bc)			;2e48
	add hl,bc			;2e49
	rlca			;2e4a
	dec b			;2e4b
	ld a,(bc)			;2e4c
	add hl,bc			;2e4d
	rlca			;2e4e
	dec b			;2e4f
	ld a,(bc)			;2e50
	add hl,bc			;2e51
	rlca			;2e52
	dec b			;2e53
	ld a,(bc)			;2e54
	add hl,bc			;2e55
	rlca			;2e56
	dec b			;2e57
	ld a,(bc)			;2e58
	add hl,bc			;2e59
	rlca			;2e5a
	dec b			;2e5b
	ld a,(bc)			;2e5c
	add hl,bc			;2e5d
	rlca			;2e5e
	dec b			;2e5f
	ld a,(bc)			;2e60
	add hl,bc			;2e61
	rlca			;2e62
	dec b			;2e63
	ld a,(bc)			;2e64
	add hl,bc			;2e65
	rlca			;2e66
	dec b			;2e67
	ld a,(bc)			;2e68
	add hl,bc			;2e69
	rlca			;2e6a
	dec b			;2e6b
	ld a,(bc)			;2e6c
	add hl,bc			;2e6d
	rlca			;2e6e
	dec b			;2e6f
	ld a,(bc)			;2e70
	add hl,bc			;2e71
	rlca			;2e72
	dec b			;2e73
	ld a,(bc)			;2e74
	add hl,bc			;2e75
	rlca			;2e76
	dec b			;2e77
	ld a,(bc)			;2e78
	add hl,bc			;2e79
	rlca			;2e7a
	dec b			;2e7b
	ld a,(bc)			;2e7c
	add hl,bc			;2e7d
	rlca			;2e7e
	dec b			;2e7f
	ld a,(bc)			;2e80
	add hl,bc			;2e81
	rlca			;2e82
	dec b			;2e83
	ld a,(bc)			;2e84
	add hl,bc			;2e85
	rlca			;2e86
	dec b			;2e87
	ld a,(bc)			;2e88
	add hl,bc			;2e89
	rlca			;2e8a
	dec b			;2e8b
	ld a,(bc)			;2e8c
	add hl,bc			;2e8d
	rlca			;2e8e
	dec b			;2e8f
	ld a,(bc)			;2e90
	add hl,bc			;2e91
	rlca			;2e92
	dec b			;2e93
	ld a,(bc)			;2e94
	add hl,bc			;2e95
	rlca			;2e96
	dec b			;2e97
sub_2e98h:
	ld a,(ix+00dh)		;2e98
	bit 0,(ix+001h)		;2e9b
	ld c,008h		;2e9f
	ld b,01eh		;2ea1
	jp z,l2eaah		;2ea3
	ld c,036h		;2ea6
	ld b,013h		;2ea8
l2eaah:
	sub c			;2eaa
	jr nc,l2eaeh		;2eab
	xor a			;2ead
l2eaeh:
	call sub_2ed0h		;2eae
	ld (ix+02fh),c		;2eb1
	ld a,(ix+00bh)		;2eb4
	bit 0,(ix+001h)		;2eb7
	ld c,06ch		;2ebb
	ld b,00dh		;2ebd
	jr z,l2ec5h		;2ebf
	ld c,01dh		;2ec1
	ld b,006h		;2ec3
l2ec5h:
	sub c			;2ec5
	jr nc,l2ec9h		;2ec6
	xor a			;2ec8
l2ec9h:
	call sub_2ed0h		;2ec9
	ld (ix+02eh),c		;2ecc
	ret			;2ecf
sub_2ed0h:
	ld c,a			;2ed0
	ld a,b			;2ed1
	and a			;2ed2
	jp z,l2edfh		;2ed3
	ld a,c			;2ed6
	ld c,0ffh		;2ed7
l2ed9h:
	inc c			;2ed9
	sub b			;2eda
	jp nc,l2ed9h		;2edb
	ret			;2ede
l2edfh:
	ld c,a			;2edf
	ret			;2ee0
l2ee1h:
	ld hl,0c480h		;2ee1
	ld a,(hl)			;2ee4
	ld b,a			;2ee5
	and 080h		;2ee6
	rlca			;2ee8
	ld c,b			;2ee9
	ld b,a			;2eea
	ld a,c			;2eeb
	and 003h		;2eec
	cp 000h		;2eee
	jp z,l2f11h		;2ef0
	cp 001h		;2ef3
	jp z,l2f3dh		;2ef5
	cp 002h		;2ef8
	jp z,l2f99h		;2efa
	cp 003h		;2efd
	jp z,l2f6bh		;2eff
	jr l2f10h		;2f02
l2f04h:
	ld a,001h		;2f04
	ld (0c4a5h),a		;2f06
	xor a			;2f09
	ld (0c49dh),a		;2f0a
	ld (0c4a6h),a		;2f0d
l2f10h:
	ret			;2f10
l2f11h:
	ld a,096h		;2f11
	ld (0de00h),a		;2f13
	xor a			;2f16
	ld (0c48bh),a		;2f17
	ld c,b			;2f1a
	ld b,000h		;2f1b
	ld hl,0c488h		;2f1d
	add hl,bc			;2f20
	inc (hl)			;2f21
	ld hl,l3906h		;2f22
	ld (0c4a8h),hl		;2f25
	ld hl,0ca86h		;2f28
	ld (0c4aah),hl		;2f2b
	ld h,004h		;2f2e
	ld l,004h		;2f30
	ld (0c4ach),hl		;2f32
	ld a,001h		;2f35
	ld (0c4a7h),a		;2f37
	jp l2f04h		;2f3a
l2f3dh:
	ld a,097h		;2f3d
	ld (0de00h),a		;2f3f
	xor a			;2f42
	ld (0c48bh),a		;2f43
	ld c,b			;2f46
	ld b,000h		;2f47
	ld hl,0c489h		;2f49
	xor a			;2f4c
	sbc hl,bc		;2f4d
	inc (hl)			;2f4f
	ld hl,l3906h		;2f50
	ld (0c4a8h),hl		;2f53
	ld hl,0ca5eh		;2f56
	ld (0c4aah),hl		;2f59
	ld h,004h		;2f5c
	ld l,005h		;2f5e
	ld (0c4ach),hl		;2f60
	ld a,001h		;2f63
	ld (0c4a7h),a		;2f65
	jp l2f04h		;2f68
l2f6bh:
	ld a,099h		;2f6b
	ld (0de00h),a		;2f6d
	xor a			;2f70
	ld (0c48bh),a		;2f71
	ld c,b			;2f74
	ld b,000h		;2f75
	ld hl,0c489h		;2f77
	xor a			;2f7a
	sbc hl,bc		;2f7b
	inc (hl)			;2f7d
	ld hl,l3906h		;2f7e
	ld (0c4a8h),hl		;2f81
	ld hl,0ca36h		;2f84
	ld (0c4aah),hl		;2f87
	ld h,004h		;2f8a
	ld l,005h		;2f8c
	ld (0c4ach),hl		;2f8e
	ld a,001h		;2f91
	ld (0c4a7h),a		;2f93
	jp l2f04h		;2f96
l2f99h:
	ld a,098h		;2f99
	ld (0de00h),a		;2f9b
	ld hl,0c48bh		;2f9e
	inc (hl)			;2fa1
	ld a,(hl)			;2fa2
	cp 002h		;2fa3
	jp nc,l2fc3h		;2fa5
	ld hl,l3904h		;2fa8
	ld (0c4a8h),hl		;2fab
	ld hl,0c9feh		;2fae
	ld (0c4aah),hl		;2fb1
	ld h,004h		;2fb4
	ld l,007h		;2fb6
	ld (0c4ach),hl		;2fb8
	ld a,001h		;2fbb
	ld (0c4a7h),a		;2fbd
	jp l2f10h		;2fc0
l2fc3h:
	xor a			;2fc3
	ld (hl),a			;2fc4
	ld c,b			;2fc5
	ld b,000h		;2fc6
	ld hl,0c489h		;2fc8
	xor a			;2fcb
	sbc hl,bc		;2fcc
	inc (hl)			;2fce
	ld hl,l38c4h		;2fcf
	ld (0c4a8h),hl		;2fd2
	ld hl,0c980h		;2fd5
	ld (0c4aah),hl		;2fd8
	ld h,005h		;2fdb
	ld l,007h		;2fdd
	ld (0c4ach),hl		;2fdf
	ld a,001h		;2fe2
	ld (0c4a7h),a		;2fe4
	jp l2f10h		;2fe7
sub_2feah:
	call sub_315eh		;2fea
	ld a,(0c481h)		;2fed
	cp 000h		;2ff0
	jp nz,l30d5h		;2ff2
	ld a,(0c488h)		;2ff5
	cp 004h		;2ff8
	jp c,l300fh		;2ffa
	jp nz,l302ah		;2ffd
l3000h:
	ld hl,0c489h		;3000
l3003h:
	sub (hl)			;3003
	jp z,l302fh		;3004
	ld a,(0c489h)		;3007
	cp 003h		;300a
	jp c,l302ah		;300c
l300fh:
	ld a,(0c489h)		;300f
	cp 004h		;3012
	jp c,l3037h		;3014
	jp nz,l3025h		;3017
	ld a,(0c488h)		;301a
	cp 003h		;301d
	jp c,l3025h		;301f
	jp l3037h		;3022
l3025h:
	ld a,010h		;3025
	jp l3177h		;3027
l302ah:
	ld a,001h		;302a
	jp l3177h		;302c
l302fh:
	ld a,003h		;302f
	ld (0c488h),a		;3031
	ld (0c489h),a		;3034
l3037h:
	ld b,002h		;3037
	ld de,03938h		;3039
	ld hl,0c489h		;303c
l303fh:
	push bc			;303f
	ld a,(hl)			;3040
	cp 000h		;3041
	jr nz,l3048h		;3043
	ld hl,0caech		;3045
l3048h:
	cp 001h		;3048
	jr nz,l304fh		;304a
	ld hl,0caf0h		;304c
l304fh:
	cp 002h		;304f
	jr nz,l3056h		;3051
	ld hl,0caf4h		;3053
l3056h:
	cp 003h		;3056
	jr nz,l305dh		;3058
	ld hl,0caf8h		;305a
l305dh:
	cp 004h		;305d
	jr nz,l3081h		;305f
	ld hl,0cafch		;3061
	push de			;3064
	ex de,hl			;3065
	ld bc,l0004h		;3066
	di			;3069
	call sub_042fh		;306a
	ei			;306d
	pop de			;306e
	ld hl,l39f8h		;306f
	xor a			;3072
	sbc hl,de		;3073
	ld de,03938h		;3075
	add hl,de			;3078
	ex de,hl			;3079
	ld hl,0cb00h		;307a
	pop bc			;307d
	ld b,001h		;307e
	push bc			;3080
l3081h:
	ex de,hl			;3081
	ld bc,l0004h		;3082
	di			;3085
l3086h:
	call sub_042fh		;3086
	ei			;3089
	pop bc			;308a
	ld hl,0c488h		;308b
	ld de,l39f8h		;308e
	djnz l303fh		;3091
	ld a,(hl)			;3093
	inc hl			;3094
	ld b,(hl)			;3095
	cp 003h		;3096
	jp nz,l30b6h		;3098
	sub b			;309b
	jp nz,l30b6h		;309c
	ld a,(0c48bh)		;309f
	cp 000h		;30a2
	jr nz,l30b6h		;30a4
	ld a,001h		;30a6
	call sub_35e6h		;30a8
	call sub_313ch		;30ab
	ld a,050h		;30ae
	call sub_35e6h		;30b0
	call sub_315eh		;30b3
l30b6h:
	xor a			;30b6
	ld (0c4a6h),a		;30b7
	ld (0c49dh),a		;30ba
	call sub_3566h		;30bd
	xor a			;30c0
	ld (0c4a5h),a		;30c1
	ld (0c49eh),a		;30c4
	ld a,001h		;30c7
	ld (0c49dh),a		;30c9
	ld a,(0c089h)		;30cc
	or 080h		;30cf
	ld (0c089h),a		;30d1
	ret			;30d4
l30d5h:
	ld hl,0c488h		;30d5
	ld a,(hl)			;30d8
	cp 007h		;30d9
	jp c,l30edh		;30db
	inc hl			;30de
	sub (hl)			;30df
	jp c,l30edh		;30e0
	cp 002h		;30e3
	jp c,l30edh		;30e5
	ld a,001h		;30e8
	jp l3177h		;30ea
l30edh:
	ld hl,0c489h		;30ed
	ld a,(hl)			;30f0
	cp 007h		;30f1
	jp c,l3105h		;30f3
	dec hl			;30f6
	sub (hl)			;30f7
	jp c,l3105h		;30f8
	cp 002h		;30fb
	jp c,l3105h		;30fd
	ld a,010h		;3100
	jp l3177h		;3102
l3105h:
	ld a,(0c488h)		;3105
	call sub_3182h		;3108
	ld a,d			;310b
	cp 000h		;310c
	jr z,l3117h		;310e
	ld hl,l39f8h		;3110
	ld b,002h		;3113
	jr l311ch		;3115
l3117h:
	ld hl,l39fah		;3117
	ld b,001h		;311a
l311ch:
	call sub_3192h		;311c
	ld a,(0c489h)		;311f
	call sub_3182h		;3122
	ld a,d			;3125
	cp 000h		;3126
	jr z,l3131h		;3128
	ld hl,03938h		;312a
	ld b,002h		;312d
	jr l3136h		;312f
l3131h:
	ld hl,l393ah		;3131
	ld b,001h		;3134
l3136h:
	call sub_3192h		;3136
	jp l30b6h		;3139
sub_313ch:
	ld a,09ah		;313c
	ld (0de00h),a		;313e
	ld hl,l3904h		;3141
	ld (0c4a8h),hl		;3144
	ld hl,0c9c6h		;3147
	ld (0c4aah),hl		;314a
	ld h,004h		;314d
	ld l,007h		;314f
	ld (0c4ach),hl		;3151
	ld a,001h		;3154
	ld (0c4a7h),a		;3156
	xor a			;3159
	ld (0c4afh),a		;315a
	ret			;315d
sub_315eh:
	ld hl,l38c4h		;315e
	ld (0c4a8h),hl		;3161
	ld hl,0caa6h		;3164
	ld (0c4aah),hl		;3167
	ld h,005h		;316a
l316ch:
	ld l,007h		;316c
	ld (0c4ach),hl		;316e
	ld a,001h		;3171
	ld (0c4a7h),a		;3173
	ret			;3176
l3177h:
	ld (0c497h),a		;3177
	ld a,001h		;317a
	ld (0c495h),a		;317c
	jp l30b6h		;317f
sub_3182h:
	ld de,l0000h		;3182
l3185h:
	cp 00ah		;3185
	jp c,l3190h		;3187
	sub 00ah		;318a
	inc d			;318c
	jp l3185h		;318d
l3190h:
	ld e,a			;3190
	ret			;3191
sub_3192h:
	di			;3192
	ld a,l			;3193
	out (0bfh),a		;3194
	ld a,h			;3196
	set 6,a		;3197
	out (0bfh),a		;3199
	ld a,b			;319b
	cp 002h		;319c
	jr c,l31a3h		;319e
	ld a,d			;31a0
	jr l31a4h		;31a1
l31a3h:
	ld a,e			;31a3
l31a4h:
	inc a			;31a4
	out (0beh),a		;31a5
	ex (sp),hl			;31a7
	ex (sp),hl			;31a8
	ex (sp),hl			;31a9
	ex (sp),hl			;31aa
	ld a,001h		;31ab
	out (0beh),a		;31ad
	ex (sp),hl			;31af
	ex (sp),hl			;31b0
	ex (sp),hl			;31b1
	ex (sp),hl			;31b2
	ld a,e			;31b3
	djnz l31a4h		;31b4
	ei			;31b6
	ret			;31b7
sub_31b8h:
	ld a,(0c49dh)		;31b8
	cp 000h		;31bb
	jr z,l31d1h		;31bd
	dec a			;31bf
	ld (0c49dh),a		;31c0
l31c3h:
	ld a,(0c089h)		;31c3
	or 080h		;31c6
	ld (0c089h),a		;31c8
	call l036ah		;31cb
	jp sub_31b8h		;31ce
l31d1h:
	ld a,(0c49eh)		;31d1
	cp 001h		;31d4
	jr c,l31e5h		;31d6
	jp z,l3205h		;31d8
	cp 003h		;31db
	jp c,l3303h		;31dd
	jp z,l3353h		;31e0
	jr sub_31b8h		;31e3
l31e5h:
	ld hl,l3b54h		;31e5
	ld (0c4a8h),hl		;31e8
	ld hl,0c84ch		;31eb
	ld (0c4aah),hl		;31ee
	ld h,007h		;31f1
	ld l,00bh		;31f3
	ld (0c4ach),hl		;31f5
	ld a,001h		;31f8
	ld (0c4a7h),a		;31fa
	ld a,001h		;31fd
	ld (0c49eh),a		;31ff
	jp l31c3h		;3202
l3205h:
	ld a,(0c497h)		;3205
l3208h:
	ld b,a			;3208
	xor a			;3209
	ld a,(0c48ah)		;320a
	rla			;320d
	ld hl,0c482h		;320e
	ld e,a			;3211
	ld d,000h		;3212
	add hl,de			;3214
	ld a,b			;3215
	cp 010h		;3216
	jp nz,l3249h		;3218
	inc (hl)			;321b
	ld de,l0000h		;321c
	ld a,(hl)			;321f
	cp 006h		;3220
	jr c,l322fh		;3222
	cp 007h		;3224
	jr nc,l3236h		;3226
	inc hl			;3228
	ld a,(hl)			;3229
	dec hl			;322a
	cp 005h		;322b
	jr c,l3236h		;322d
l322fh:
	ld a,083h		;322f
	ld (0de00h),a		;3231
	jr l3276h		;3234
l3236h:
	ld a,085h		;3236
	ld (0de00h),a		;3238
	ld a,(0c499h)		;323b
	inc a			;323e
	ld (0c499h),a		;323f
	ld a,001h		;3242
	ld (0c4aeh),a		;3244
	jr l3276h		;3247
l3249h:
	inc hl			;3249
	inc (hl)			;324a
	ld de,l007fh+1		;324b
	ld a,(hl)			;324e
	cp 006h		;324f
	jr c,l325eh		;3251
	cp 007h		;3253
	jr nc,l3265h		;3255
	dec hl			;3257
	ld a,(hl)			;3258
	inc hl			;3259
	cp 005h		;325a
	jr c,l3265h		;325c
l325eh:
	ld a,082h		;325e
	ld (0de00h),a		;3260
	jr l3276h		;3263
l3265h:
	ld a,084h		;3265
	ld (0de00h),a		;3267
	ld a,(0c49ah)		;326a
	inc a			;326d
	ld (0c49ah),a		;326e
	ld a,001h		;3271
	ld (0c4aeh),a		;3273
l3276h:
	ld (0c4a8h),hl		;3276
	ld (0c4aah),de		;3279
	ld hl,0c482h		;327d
	push hl			;3280
	ld e,(hl)			;3281
	ld d,000h		;3282
	ld b,001h		;3284
	ld hl,03c1eh		;3286
	ld (0c4a0h),hl		;3289
	call sub_3192h		;328c
	pop hl			;328f
	inc hl			;3290
	push hl			;3291
	ld e,(hl)			;3292
	ld d,000h		;3293
	ld b,001h		;3295
	ld hl,03c9eh		;3297
	call sub_3192h		;329a
	pop hl			;329d
	inc hl			;329e
	ld e,(hl)			;329f
	inc hl			;32a0
	push hl			;32a1
	ld a,(0c48ah)		;32a2
	cp 001h		;32a5
	jp c,l32ebh		;32a7
	ld d,000h		;32aa
	ld b,001h		;32ac
	ld hl,l3c22h		;32ae
	ld (0c4a0h),hl		;32b1
	call sub_3192h		;32b4
	pop hl			;32b7
	push hl			;32b8
	ld e,(hl)			;32b9
	ld d,000h		;32ba
	ld b,001h		;32bc
	ld hl,l3ca1h+1		;32be
	call sub_3192h		;32c1
	pop hl			;32c4
	inc hl			;32c5
	ld e,(hl)			;32c6
	inc hl			;32c7
	push hl			;32c8
	ld a,(0c48ah)		;32c9
	cp 002h		;32cc
	jp c,l32ebh		;32ce
	ld d,000h		;32d1
	ld b,001h		;32d3
	ld hl,l3c26h		;32d5
	ld (0c4a0h),hl		;32d8
	call sub_3192h		;32db
	pop hl			;32de
	push hl			;32df
	ld e,(hl)			;32e0
	ld d,000h		;32e1
	ld b,001h		;32e3
	ld hl,l3ca6h		;32e5
	call sub_3192h		;32e8
l32ebh:
	pop hl			;32eb
	ld hl,(0c4a0h)		;32ec
	ld de,(0c4aah)		;32ef
	add hl,de			;32f3
	ld (0c4a0h),hl		;32f4
	xor a			;32f7
	ld (0c4a4h),a		;32f8
	ld a,002h		;32fb
	ld (0c49eh),a		;32fd
	jp l31c3h		;3300
l3303h:
	ld a,(0c4a4h)		;3303
l3306h:
	and 001h		;3306
	cp 000h		;3308
	jr nz,l3311h		;330a
	ld de,l0000h+1		;330c
	jr l3318h		;330f
l3311h:
	ld hl,(0c4a8h)		;3311
	ld d,(hl)			;3314
	inc d			;3315
	ld e,001h		;3316
l3318h:
	ld hl,(0c4a0h)		;3318
	ld a,l			;331b
	di			;331c
	out (0bfh),a		;331d
	ld a,h			;331f
	or 040h		;3320
	out (0bfh),a		;3322
	ld a,d			;3324
	ex (sp),hl			;3325
	ex (sp),hl			;3326
	out (0beh),a		;3327
	ld a,e			;3329
	ex (sp),hl			;332a
	ex (sp),hl			;332b
	out (0beh),a		;332c
	ei			;332e
	ld a,(0c4a4h)		;332f
	inc a			;3332
	ld (0c4a4h),a		;3333
	cp 00ah		;3336
	jr nc,l3342h		;3338
	ld a,008h		;333a
	ld (0c49dh),a		;333c
	jp l31c3h		;333f
l3342h:
	xor a			;3342
	ld (0c4a4h),a		;3343
	ld a,003h		;3346
	ld (0c49eh),a		;3348
	ld a,080h		;334b
	ld (0c49dh),a		;334d
	jp l31c3h		;3350
l3353h:
	ld hl,l3b54h		;3353
	ld (0c4a8h),hl		;3356
	ld hl,0c8e6h		;3359
	ld (0c4aah),hl		;335c
	ld h,007h		;335f
	ld l,00bh		;3361
	ld (0c4ach),hl		;3363
	ld a,001h		;3366
	ld (0c4a7h),a		;3368
	ld hl,0c482h		;336b
	xor a			;336e
	ld a,(0c48ah)		;336f
	rla			;3372
	ld d,000h		;3373
	ld e,a			;3375
	add hl,de			;3376
	ld a,(hl)			;3377
	cp 006h		;3378
	jr nz,l3382h		;337a
	inc hl			;337c
	ld a,(hl)			;337d
	cp 006h		;337e
	jr z,l33a4h		;3380
l3382h:
	ld a,(0c4aeh)		;3382
	cp 000h		;3385
	jr z,l33b1h		;3387
	xor a			;3389
	ld (0c4aeh),a		;338a
	ld hl,0c48ah		;338d
	inc (hl)			;3390
	ld a,(0c499h)		;3391
	cp 002h		;3394
	jp nc,l33ach		;3396
	ld a,(0c49ah)		;3399
	cp 002h		;339c
	jp nc,l33ach		;339e
	jp l33b1h		;33a1
l33a4h:
	ld a,001h		;33a4
	ld (0c481h),a		;33a6
	jp l33bah		;33a9
l33ach:
	ld a,004h		;33ac
	ld (0c495h),a		;33ae
l33b1h:
	ld hl,0c495h		;33b1
	set 1,(hl)		;33b4
	xor a			;33b6
	ld (0c481h),a		;33b7
l33bah:
	xor a			;33ba
	ld (0c488h),a		;33bb
	ld (0c489h),a		;33be
	jp l3037h		;33c1
l33c4h:
	ld a,(0c499h)		;33c4
	cp 002h		;33c7
	jp z,l33d7h		;33c9
	ld a,(0c49ah)		;33cc
	cp 002h		;33cf
	jp z,l340ah		;33d1
	jp l3452h		;33d4
l33d7h:
	ld a,087h		;33d7
	ld (0de00h),a		;33d9
	ld hl,l3b48h		;33dc
	ld b,008h		;33df
	ld de,l0018h		;33e1
	call sub_3457h		;33e4
	call sub_346eh		;33e7
	ld hl,l3c18h		;33ea
	ld de,0351fh		;33ed
	ld b,008h		;33f0
	call sub_347fh		;33f2
	ld a,005h		;33f5
	call sub_35e6h		;33f7
	ld hl,l3cd6h		;33fa
	ld b,00ah		;33fd
	call sub_347fh		;33ff
	ld a,005h		;3402
	ld (0c49dh),a		;3404
	jp l3456h		;3407
l340ah:
	ld a,(0c04ah)		;340a
	cp 004h		;340d
	jp z,l3607h		;340f
	ld a,086h		;3412
	ld (0de00h),a		;3414
	ld hl,l3b48h		;3417
	ld de,l0018h		;341a
	ld b,009h		;341d
	call sub_3457h		;341f
	call sub_346eh		;3422
	ld hl,l3c18h		;3425
	ld de,034d7h		;3428
	ld b,007h		;342b
	call sub_347fh		;342d
	ld a,005h		;3430
	call sub_35e6h		;3432
	ld hl,l3ccch		;3435
	ld b,00eh		;3438
	call sub_347fh		;343a
	ld a,005h		;343d
	call sub_35e6h		;343f
	ld hl,l3d16h		;3442
	ld b,00fh		;3445
	call sub_347fh		;3447
	ld a,005h		;344a
	ld (0c49dh),a		;344c
	jp l3456h		;344f
l3452h:
	xor a			;3452
	ld (0c49dh),a		;3453
l3456h:
	ret			;3456
sub_3457h:
	push bc			;3457
	push de			;3458
	push hl			;3459
	push de			;345a
	pop bc			;345b
	ld de,l34a9h		;345c
	di			;345f
	call sub_0450h		;3460
	ei			;3463
	pop hl			;3464
	ld de,l0040h		;3465
	add hl,de			;3468
	pop de			;3469
	pop bc			;346a
	djnz sub_3457h		;346b
	ret			;346d
sub_346eh:
	ld hl,l3b8ah		;346e
	ld de,034abh		;3471
	ld b,016h		;3474
	call sub_347fh		;3476
	ld a,005h		;3479
	call sub_35e6h		;347b
	ret			;347e
sub_347fh:
	di			;347f
	ld a,l			;3480
	out (0bfh),a		;3481
	ld a,h			;3483
	or 040h		;3484
	out (0bfh),a		;3486
	push bc			;3488
	ld b,005h		;3489
	call sub_35ffh		;348b
	pop bc			;348e
	ld a,(de)			;348f
	out (0beh),a		;3490
	inc de			;3492
	ld a,(de)			;3493
	push bc			;3494
	ld b,005h		;3495
	call sub_35ffh		;3497
	pop bc			;349a
	out (0beh),a		;349b
	inc de			;349d
	inc hl			;349e
	inc hl			;349f
	ld a,005h		;34a0
	ei			;34a2
	call sub_35e6h		;34a3
	djnz sub_347fh		;34a6
	ret			;34a8
l34a9h:
	nop			;34a9
	ld bc,l0112h		;34aa
	inc c			;34ad
	ld bc,l0118h		;34ae
	djnz l34b4h		;34b1
	dec hl			;34b3
l34b4h:
	ld bc,l012ah+1		;34b4
	dec hl			;34b7
	ld bc,l00ffh+1		;34b8
	nop			;34bb
	ld bc,l011eh		;34bc
	djnz l34c2h		;34bf
	rra			;34c1
l34c2h:
	ld bc,l012ah+1		;34c2
	dec hl			;34c5
	ld bc,l012ah+1		;34c6
	nop			;34c9
	ld bc,l00ffh+1		;34ca
	jr l34d0h		;34cd
	inc c			;34cf
l34d0h:
	ld bc,l011eh+1		;34d0
	ld c,001h		;34d3
	inc de			;34d5
	ld bc,l0124h		;34d6
	ld a,(de)			;34d9
	ld bc,l011eh+2		;34da
	nop			;34dd
	ld bc,00122h		;34de
	inc d			;34e1
	ld bc,l0118h+1		;34e2
	inc de			;34e5
	ld bc,l010ah+2		;34e6
	ld hl,l1000h+1		;34e9
	ld bc,l00ffh+1		;34ec
	inc h			;34ef
	ld bc,l0118h+2		;34f0
	jr nz,l34f6h		;34f3
	nop			;34f5
l34f6h:
	ld bc,l011eh+1		;34f6
	dec e			;34f9
	ld bc,l0112h+2		;34fa
	djnz l3500h		;34fd
	rrca			;34ff
l3500h:
	ld bc,l010ah+2		;3500
	nop			;3503
	ld bc,l0112h+1		;3504
	inc c			;3507
	ld bc,0011dh		;3508
	rrca			;350b
	ld bc,l010fh+1		;350c
	dec e			;350f
	ld bc,l00ffh+1		;3510
	rla			;3513
	ld bc,l010fh+1		;3514
	ld hl,l1000h+1		;3517
	ld bc,00117h		;351a
	inc l			;351d
	ld bc,l0124h		;351e
	ld a,(de)			;3521
	ld bc,l011eh+2		;3522
	nop			;3525
	ld bc,00117h		;3526
	ld a,(de)			;3529
	ld bc,l011eh		;352a
	djnz l3530h		;352d
	rra			;352f
l3530h:
	ld bc,0011dh		;3530
	inc h			;3533
	ld bc,l00ffh+1		;3534
	inc c			;3537
	ld bc,l0112h		;3538
	inc c			;353b
	ld bc,l0112h+2		;353c
	add hl,de			;353f
	ld bc,l012ah+2		;3540
sub_3543h:
	ld a,(0c000h)		;3543
	bit 2,a		;3546
	ret z			;3548
	ld a,(0c48ch)		;3549
	add a,a			;354c
	ld e,a			;354d
	ld d,000h		;354e
	ld hl,l3560h		;3550
	add hl,de			;3553
	ld e,(hl)			;3554
	inc hl			;3555
	ld d,(hl)			;3556
	ld hl,l3a08h		;3557
	ld bc,l0000h+2		;355a
	jp sub_042fh		;355d
l3560h:
	ld d,h			;3560
	ld e,c			;3561
	ld d,d			;3562
	ld e,c			;3563
	ld d,(hl)			;3564
	ld e,c			;3565
sub_3566h:
	ld a,(0c4a5h)		;3566
	cp 000h		;3569
	ret z			;356b
	ld a,(0c49dh)		;356c
	cp 000h		;356f
	jr z,l3578h		;3571
	dec a			;3573
	ld (0c49dh),a		;3574
	ret			;3577
l3578h:
	ld a,004h		;3578
	out (0bfh),a		;357a
	ld b,005h		;357c
	call sub_35ffh		;357e
	ld a,0c0h		;3581
	out (0bfh),a		;3583
	ld a,(0c4a6h)		;3585
	cp 002h		;3588
	jr z,l3599h		;358a
	cp 000h		;358c
	jr nz,l35a1h		;358e
	ld a,001h		;3590
	ld (0c4a6h),a		;3592
	ld a,003h		;3595
	jr l35a8h		;3597
l3599h:
	xor a			;3599
	ld (0c4a6h),a		;359a
	ld a,002h		;359d
	jr l35a8h		;359f
l35a1h:
	ld a,002h		;35a1
	ld (0c4a6h),a		;35a3
	ld a,013h		;35a6
l35a8h:
	out (0beh),a		;35a8
	ld a,002h		;35aa
	ld (0c49dh),a		;35ac
	ret			;35af
sub_35b0h:
	ld hl,0c4a7h		;35b0
	ld a,(hl)			;35b3
	or a			;35b4
	ret z			;35b5
	ld (hl),000h		;35b6
	ld hl,(0c4a8h)		;35b8
	ld de,(0c4aah)		;35bb
	ld bc,(0c4ach)		;35bf
	jp l0464h		;35c3
sub_35c6h:
	ld hl,l35dch		;35c6
	xor a			;35c9
	ld a,(0c04ah)		;35ca
	rla			;35cd
	ld e,a			;35ce
	ld d,000h		;35cf
	add hl,de			;35d1
	ex de,hl			;35d2
	ld hl,l0013h+2		;35d3
	ld b,002h		;35d6
	call sub_0481h		;35d8
	ret			;35db
l35dch:
	dec hl			;35dc
	jr c,$+15		;35dd
	jr nc,l35e4h		;35df
	dec a			;35e1
	jr nz,$+15		;35e2
l35e4h:
	djnz l35e8h		;35e4
sub_35e6h:
	push af			;35e6
	push bc			;35e7
l35e8h:
	push de			;35e8
	push hl			;35e9
	ld b,a			;35ea
l35ebh:
	push bc			;35eb
	ld a,(0c089h)		;35ec
	or 080h		;35ef
	ld (0c089h),a		;35f1
	call l036ah		;35f4
	pop bc			;35f7
	djnz l35ebh		;35f8
	pop hl			;35fa
	pop de			;35fb
	pop bc			;35fc
	pop af			;35fd
	ret			;35fe
sub_35ffh:
	nop			;35ff
	nop			;3600
	nop			;3601
	nop			;3602
	nop			;3603
	djnz sub_35ffh		;3604
	ret			;3606
l3607h:
	ld a,0d0h		;3607
	ld (0c140h),a		;3609
	ld (0c100h),a		;360c
	ld a,(0c089h)		;360f
	or 080h		;3612
	ld (0c089h),a		;3614
	call l036ah		;3617
	ld hl,03e00h		;361a
	ld (0c4a8h),hl		;361d
	ld a,000h		;3620
	ld (0c4ach),a		;3622
	ld b,018h		;3625
l3627h:
	push bc			;3627
	ld hl,(0c4a8h)		;3628
	ld de,l3706h		;362b
	ld bc,l0020h		;362e
	di			;3631
	call sub_0450h		;3632
l3635h:
	ei			;3635
	ld b,008h		;3636
l3638h:
	push bc			;3638
	ld a,(0c4ach)		;3639
	inc a			;363c
	di			;363d
	ld (0c4ach),a		;363e
	out (0bfh),a		;3641
	ld a,089h		;3643
	out (0bfh),a		;3645
	ei			;3647
	call l036ah		;3648
	pop bc			;364b
	djnz l3638h		;364c
	ld hl,(0c4a8h)		;364e
	ld de,l0040h		;3651
	add hl,de			;3654
	push hl			;3655
	ld de,03f00h		;3656
	xor a			;3659
	sbc hl,de		;365a
	jr c,l3663h		;365c
	pop hl			;365e
	ld hl,03800h		;365f
	push hl			;3662
l3663h:
	pop hl			;3663
	ld (0c4a8h),hl		;3664
	pop bc			;3667
	djnz l3627h		;3668
	xor a			;366a
	ld (0c011h),a		;366b
	ld hl,l0010h		;366e
	ld de,03719h		;3671
	ld b,001h		;3674
	call sub_0481h		;3676
	ld a,005h		;3679
	call sub_35e6h		;367b
	di			;367e
	ld hl,l0000h		;367f
	ld de,l3708h		;3682
	ld b,011h		;3685
	call sub_0481h		;3687
	call sub_03a4h		;368a
	call l0386h+2		;368d
	ld a,000h		;3690
	out (0bfh),a		;3692
	ld a,089h		;3694
	out (0bfh),a		;3696
	ld hl,l37e3h		;3698
	ld de,02600h		;369b
	call sub_04b5h		;369e
	ld hl,l3a5ah		;36a1
	ld de,l3783h		;36a4
	ld bc,l0804h+2		;36a7
	call l0464h		;36aa
	ld hl,0371ah		;36ad
	call sub_03b7h		;36b0
	ei			;36b3
	ld a,086h		;36b4
	ld (0de00h),a		;36b6
	call sub_03a0h		;36b9
	ld a,040h		;36bc
	call sub_35e6h		;36be
	ld hl,l3b60h		;36c1
	ld de,l3777h		;36c4
	ld bc,l0004h		;36c7
	call sub_042fh		;36ca
	ld a,005h		;36cd
	call sub_35e6h		;36cf
	ld hl,l3b60h		;36d2
	ld de,l377bh		;36d5
	ld bc,l0004h		;36d8
	call sub_042fh		;36db
	ld a,028h		;36de
	call sub_35e6h		;36e0
	ld hl,l3b60h		;36e3
	ld de,l3777h		;36e6
	ld bc,l0004h		;36e9
	call sub_042fh		;36ec
	ld a,005h		;36ef
	call sub_35e6h		;36f1
	ld hl,l3b60h		;36f4
	ld de,l377fh		;36f7
	ld bc,l0004h		;36fa
	call sub_042fh		;36fd
	ld a,060h		;3700
	call sub_35e6h		;3702
	ret			;3705
l3706h:
	ld (hl),001h		;3706
l3708h:
	ld a,(03f00h)		;3708
	cpl			;370b
	inc bc			;370c
	ld hl,(l160bh)		;370d
	dec h			;3710
	nop			;3711
	nop			;3712
	nop			;3713
	nop			;3714
	nop			;3715
	nop			;3716
	nop			;3717
	ld a,(l0306h)		;3718
	ret c			;371b
	jr c,$+14		;371c
	nop			;371e
	inc h			;371f
	ld bc,l0118h+2		;3720
	jr nz,l3726h		;3723
	nop			;3725
l3726h:
	ld bc,00122h		;3726
	inc d			;3729
	ld bc,l0118h+1		;372a
	ld c,h			;372d
	add hl,sp			;372e
	ld e,000h		;372f
	ld c,001h		;3731
	ld a,(de)			;3733
l3734h:
	ld bc,l0118h+1		;3734
	ld (de),a			;3737
	ld bc,0011dh		;3738
	inc c			;373b
	ld bc,l011eh+1		;373c
	jr nz,l3742h		;373f
	rla			;3741
l3742h:
	ld bc,l010ah+2		;3742
	rra			;3745
	ld bc,l0112h+2		;3746
	ld a,(de)			;3749
	ld bc,l0118h+1		;374a
	ld e,001h		;374d
	sub d			;374f
	add hl,sp			;3750
	inc h			;3751
	nop			;3752
	inc h			;3753
	ld bc,l0118h+2		;3754
	jr nz,l375ah		;3757
	nop			;3759
l375ah:
	ld bc,l010ah+2		;375a
	dec e			;375d
	ld bc,l010fh+1		;375e
	nop			;3761
	ld bc,00122h		;3762
	ld a,(de)			;3765
	ld bc,l0118h+1		;3766
	rrca			;3769
	ld bc,l010fh+1		;376a
	dec e			;376d
	ld bc,l010fh+2		;376e
	jr nz,l3774h		;3771
	rla			;3773
l3774h:
	ld bc,l012ah+1		;3774
l3777h:
	ld e,b			;3777
	ld bc,l0159h		;3778
l377bh:
	ld e,d			;377b
	ld bc,l015bh		;377c
l377fh:
	ld b,h			;377f
	ld bc,l0145h		;3780
l3783h:
	nop			;3783
	ld bc,l00ffh+1		;3784
	jr nc,$+1		;3787
	ld sp,03201h		;3789
	ld bc,l0133h		;378c
	inc (hl)			;378f
	ld bc,l0133h+2		;3790
	ld (hl),001h		;3793
	ld (hl),001h		;3795
	scf			;3797
	ld bc,l0136h+2		;3798
	add hl,sp			;379b
	ld bc,l0136h		;379c
	ld (hl),001h		;379f
	ld (hl),001h		;37a1
	ld (hl),001h		;37a3
	ld a,(l3b01h)		;37a5
	ld bc,l013ch		;37a8
	dec a			;37ab
	ld bc,l013ch+2		;37ac
	ccf			;37af
	ld bc,00140h		;37b0
	ld b,c			;37b3
	ld bc,l0142h		;37b4
	ld b,e			;37b7
	ld bc,l0142h+2		;37b8
	ld b,l			;37bb
	ld bc,l0145h+1		;37bc
	ld b,a			;37bf
	ld bc,l0148h		;37c0
	ld c,c			;37c3
	ld bc,l0148h+2		;37c4
	ld c,e			;37c7
	ld bc,0014ch		;37c8
	nop			;37cb
	ld bc,0014dh		;37cc
	ld c,(hl)			;37cf
	ld bc,0014fh		;37d0
	ld d,b			;37d3
	ld bc,l0151h		;37d4
	ld d,d			;37d7
	ld bc,l0151h+2		;37d8
	ld d,h			;37db
	ld bc,00155h		;37dc
	ld d,(hl)			;37df
	ld bc,00157h		;37e0
l37e3h:
	ld b,000h		;37e3
	add a,d			;37e5
	ccf			;37e6
	rst 38h			;37e7
	inc b			;37e8
	nop			;37e9
	add a,h			;37ea
	inc bc			;37eb
	rlca			;37ec
	pop hl			;37ed
	cp 003h		;37ee
	nop			;37f0
	inc b			;37f1
	rst 38h			;37f2
	add a,c			;37f3
	ld a,a			;37f4
	inc b			;37f5
	nop			;37f6
	add a,h			;37f7
	ret nz			;37f8
	ret po			;37f9
	ret p			;37fa
	ret m			;37fb
	inc b			;37fc
	nop			;37fd
	add a,d			;37fe
	ld bc,l0302h+1		;37ff
	rlca			;3802
	add a,d			;3803
	rra			;3804
	ld a,a			;3805
	dec c			;3806
	rst 38h			;3807
	add a,l			;3808
	rst 8			;3809
	rst 30h			;380a
	ei			;380b
	.DB 0fdh,0feh,003h	;illegal sequence		;380c
	rst 38h			;380f
	ld (bc),a			;3810
	ret m			;3811
	inc bc			;3812
	call m,07c81h		;3813
	ld (bc),a			;3816
	cp (hl)			;3817
	inc bc			;3818
	rrca			;3819
	dec b			;381a
	rra			;381b
	ld b,0deh		;381c
	add a,e			;381e
	cp 0deh		;381f
	rra			;3821
	inc bc			;3822
	ld e,002h		;3823
	ld a,(de)			;3825
	add a,e			;3826
	dec c			;3827
	rrca			;3828
	ei			;3829
	dec b			;382a
	rst 30h			;382b
	add a,d			;382c
	ret p			;382d
	ld h,e			;382e
	ld b,0ffh		;382f
	add a,e			;3831
	nop			;3832
	ret nz			;3833
l3834h:
	rst 38h			;3834
	inc bc			;3835
	rst 0			;3836
	ld (bc),a			;3837
	rst 10h			;3838
	add a,e			;3839
	djnz $+23		;383a
	sbc a,a			;383c
	inc bc			;383d
	sbc a,(hl)			;383e
	ld (bc),a			;383f
	ld e,084h		;3840
	rra			;3842
	.DB 0edh;next byte illegal after ed		;3843
	sbc a,0feh		;3844
	ld (bc),a			;3846
l3847h:
	sbc a,002h		;3847
l3849h:
	cp (hl)			;3849
	add a,h			;384a
	ld a,(hl)			;384b
	call m,sub_070eh		;384c
	dec b			;384f
	inc bc			;3850
	adc a,d			;3851
	ld bc,l00cch		;3852
	add a,a			;3855
	xor (hl)			;3856
	xor 0f3h		;3857
	ret m			;3859
	rst 38h			;385a
	ccf			;385b
	ld (bc),a			;385c
	rst 0			;385d
	ld (bc),a			;385e
	rst 28h			;385f
	sub e			;3860
	sbc a,a			;3861
	ld a,a			;3862
	rst 38h			;3863
	ret m			;3864
	add a,087h		;3865
	adc a,l			;3867
	adc a,l			;3868
	sub e			;3869
	sbc a,h			;386a
	sbc a,a			;386b
	ld (hl),001h		;386c
	jp 0e7e3h		;386e
	add a,a			;3871
	daa			;3872
	rst 20h			;3873
	inc bc			;3874
	call c,0bc03h		;3875
	add a,h			;3878
	cp b			;3879
	ret m			;387a
	ld bc,l0300h		;387b
	ld bc,l0003h		;387e
	ld b,0ffh		;3881
	ld (bc),a			;3883
	ld a,a			;3884
	inc bc			;3885
l3886h:
	rst 38h			;3886
	add a,d			;3887
	jp m,l03fch		;3888
	rst 38h			;388b
sub_388ch:
	ld (bc),a			;388c
	sbc a,a			;388d
	ld (bc),a			;388e
	ccf			;388f
	inc b			;3890
	rst 38h			;3891
l3892h:
	inc bc			;3892
	rst 0			;3893
	adc a,d			;3894
	add a,0cfh		;3895
	adc a,(hl)			;3897
	adc a,a			;3898
	sbc a,a			;3899
	jr c,$-72		;389a
sub_389ch:
	cp b			;389c
	ld a,b			;389d
	ld (hl),b			;389e
	inc bc			;389f
	ret p			;38a0
	add a,h			;38a1
	ld a,a			;38a2
	scf			;38a3
	scf			;38a4
	dec sp			;38a5
	inc bc			;38a6
	add hl,sp			;38a7
	add a,(hl)			;38a8
	dec de			;38a9
	rst 38h			;38aa
	call m,0fffch		;38ab
	cp 004h		;38ae
	rst 38h			;38b0
	ld (bc),a			;38b1
	ld a,a			;38b2
	ld (bc),a			;38b3
	cp 087h		;38b4
	.DB 0fdh,0fbh,0ffh	;illegal sequence		;38b6
	sbc a,a			;38b9
	ccf			;38ba
	ccf			;38bb
	ld a,a			;38bc
	inc b			;38bd
	rst 38h			;38be
	rlca			;38bf
	ret p			;38c0
	add a,c			;38c1
	ret po			;38c2
	ex af,af'			;38c3
l38c4h:
	nop			;38c4
	inc b			;38c5
	dec de			;38c6
	add a,c			;38c7
	dec bc			;38c8
	inc bc			;38c9
	nop			;38ca
	dec b			;38cb
	rst 38h			;38cc
	add a,e			;38cd
	ld a,a			;38ce
	ccf			;38cf
	rrca			;38d0
	dec b			;38d1
	rst 38h			;38d2
	add a,e			;38d3
	call m,0e0f8h		;38d4
	dec b			;38d7
	rst 38h			;38d8
	add a,c			;38d9
	inc bc			;38da
	ld (bc),a			;38db
	nop			;38dc
	ld b,0e0h		;38dd
	sub a			;38df
	ld h,b			;38e0
	jr nz,$-1		;38e1
	ret c			;38e3
	adc a,(hl)			;38e4
	adc a,a			;38e5
	adc a,a			;38e6
	sub e			;38e7
	sbc a,h			;38e8
	sbc a,a			;38e9
	or 039h		;38ea
	inc bc			;38ec
	add a,e			;38ed
	rst 20h			;38ee
	rst 0			;38ef
	daa			;38f0
	rst 20h			;38f1
	ret m			;38f2
	ret po			;38f3
	ret nz			;38f4
	sub b			;38f5
	sbc a,(hl)			;38f6
	inc bc			;38f7
	sbc a,a			;38f8
	add a,l			;38f9
	ld a,001h		;38fa
	inc bc			;38fc
	inc bc			;38fd
	ld h,a			;38fe
	inc bc			;38ff
	rst 20h			;3900
	nop			;3901
	ld h,a			;3902
	nop			;3903
l3904h:
	add a,c			;3904
	inc c			;3905
l3906h:
	rlca			;3906
	nop			;3907
	add a,d			;3908
	ccf			;3909
	nop			;390a
	inc bc			;390b
	djnz l3911h		;390c
	jr nc,l3892h		;390e
	ret m			;3910
l3911h:
	nop			;3911
	inc bc			;3912
	ld b,b			;3913
	ld (bc),a			;3914
	ret nz			;3915
	add a,c			;3916
	ld b,b			;3917
	djnz l391ah		;3918
l391ah:
	and c			;391a
	ld (bc),a			;391b
	inc de			;391c
	ccf			;391d
	ccf			;391e
	add hl,sp			;391f
	ld sp,l3834h		;3920
	ccf			;3923
	rst 8			;3924
	rst 38h			;3925
	rra			;3926
	rrca			;3927
	rrca			;3928
	ld e,a			;3929
	ld a,a			;392a
	rst 38h			;392b
	rst 20h			;392c
	rst 38h			;392d
	pop af			;392e
	jp po,0f4e2h		;392f
	call m,0c0ffh		;3932
	ret m			;3935
	ret m			;3936
	jr c,l3951h		;3937
	ld e,b			;3939
l393ah:
	jr c,$-8		;393a
	ld b,000h		;393c
	ld (bc),a			;393e
	ld b,b			;393f
	add a,c			;3940
	ld (bc),a			;3941
	inc b			;3942
	inc bc			;3943
	ld (bc),a			;3944
	ld bc,l007fh+2		;3945
	inc b			;3948
	ccf			;3949
l394ah:
	add a,h			;394a
	rra			;394b
	sbc a,a			;394c
	sbc a,a			;394d
	rrca			;394e
	inc bc			;394f
	rst 38h			;3950
l3951h:
	add a,d			;3951
	jp m,l05fch		;3952
	rst 38h			;3955
	ld (bc),a			;3956
	ld a,a			;3957
	inc b			;3958
	rst 38h			;3959
	inc bc			;395a
	ret m			;395b
	add a,l			;395c
	ld sp,hl			;395d
	pop af			;395e
	pop af			;395f
	ret p			;3960
	ret po			;3961
	inc bc			;3962
	ret nz			;3963
	ld (bc),a			;3964
	add a,b			;3965
	inc bc			;3966
	nop			;3967
	add a,l			;3968
	rrca			;3969
	rlca			;396a
	rlca			;396b
	inc bc			;396c
	ld bc,l0003h		;396d
	add a,e			;3970
	rst 38h			;3971
	ret m			;3972
	call m,0ff03h		;3973
	adc a,(hl)			;3976
	ld a,a			;3977
	rra			;3978
	rst 38h			;3979
	ccf			;397a
	ld a,a			;397b
	rst 38h			;397c
	rst 38h			;397d
	cp 0fch		;397e
	ret p			;3980
	ret po			;3981
	ret nz			;3982
	ret nz			;3983
	add a,b			;3984
	inc e			;3985
	nop			;3986
	add a,d			;3987
	ld h,a			;3988
	ld a,b			;3989
	inc b			;398a
	ld a,a			;398b
	add a,h			;398c
	ccf			;398d
	rrca			;398e
	call z,0043ch		;398f
	call m,0f882h		;3992
	ret po			;3995
	djnz l3998h		;3996
l3998h:
	sub c			;3998
	rst 20h			;3999
	rst 38h			;399a
	rst 38h			;399b
	pop af			;399c
	ret po			;399d
	ret p			;399e
	call m,0c9ffh		;399f
	cp 0fch		;39a2
	call m,sub_1858h		;39a4
	jr c,$-8		;39a7
	rst 20h			;39a9
	inc bc			;39aa
	rst 38h			;39ab
	adc a,h			;39ac
	rst 28h			;39ad
	pop af			;39ae
	cp 0ffh		;39af
	pop bc			;39b1
	cp 0fch		;39b2
	call m,0b8f8h		;39b4
	ld a,b			;39b7
	ret m			;39b8
	nop			;39b9
	ld h,a			;39ba
	nop			;39bb
	add a,c			;39bc
	inc c			;39bd
	rlca			;39be
	nop			;39bf
l39c0h:
	add a,d			;39c0
	ccf			;39c1
	nop			;39c2
	inc bc			;39c3
	djnz l39c9h		;39c4
	jr nz,l394ah		;39c6
	ret pe			;39c8
l39c9h:
	nop			;39c9
	inc bc			;39ca
	ld b,b			;39cb
	ld (bc),a			;39cc
	ret nz			;39cd
	add a,c			;39ce
	ld b,b			;39cf
	djnz l39d2h		;39d0
l39d2h:
	add a,d			;39d2
	ld (bc),a			;39d3
	inc de			;39d4
	ld (bc),a			;39d5
	ccf			;39d6
	ld (bc),a			;39d7
	jr l39ddh		;39d8
	nop			;39da
	add a,l			;39db
	ret nz			;39dc
l39ddh:
	ret m			;39dd
l39deh:
	jr l39e0h		;39de
l39e0h:
	jr nz,l39e5h		;39e0
l39e2h:
	nop			;39e2
	add a,l			;39e3
	rlca			;39e4
l39e5h:
	ccf			;39e5
	ld (hl),c			;39e6
	ld h,b			;39e7
	ld l,b			;39e8
	inc bc			;39e9
	ld h,b			;39ea
	add a,c			;39eb
	ret nz			;39ec
	ld (bc),a			;39ed
	ret m			;39ee
	ld (bc),a			;39ef
	jr c,l39f5h		;39f0
	jr l39fah		;39f2
	nop			;39f4
l39f5h:
	add a,h			;39f5
	ld b,b			;39f6
	nop			;39f7
l39f8h:
	ld (bc),a			;39f8
	inc bc			;39f9
l39fah:
	inc bc			;39fa
	ld (bc),a			;39fb
	ld (bc),a			;39fc
	ld bc,l0007h		;39fd
	add a,c			;3a00
	add a,b			;3a01
	add hl,bc			;3a02
	nop			;3a03
	ld (bc),a			;3a04
	ld h,b			;3a05
	ld (bc),a			;3a06
	ld b,b			;3a07
l3a08h:
	inc b			;3a08
	nop			;3a09
	inc bc			;3a0a
	jr c,$-122		;3a0b
	add hl,sp			;3a0d
	jr nc,$+113		;3a0e
	ld (hl),d			;3a10
	ld h,d			;3a11
	ret nz			;3a12
	ld (bc),a			;3a13
	ld b,b			;3a14
	ld (bc),a			;3a15
	add a,b			;3a16
	inc c			;3a17
	nop			;3a18
	ld (bc),a			;3a19
	inc bc			;3a1a
	add a,d			;3a1b
	nop			;3a1c
	ld bc,l0004h		;3a1d
	ld (bc),a			;3a20
	add a,b			;3a21
	ld (bc),a			;3a22
	ld bc,0028bh		;3a23
	inc b			;3a26
	nop			;3a27
	ld h,d			;3a28
	jp nc,092d2h		;3a29
l3a2ch:
	inc de			;3a2c
	add hl,bc			;3a2d
	add hl,bc			;3a2e
	dec c			;3a2f
	ld c,000h		;3a30
	add a,d			;3a32
	inc bc			;3a33
	rlca			;3a34
	dec b			;3a35
l3a36h:
	nop			;3a36
	sub e			;3a37
	ld a,a			;3a38
	rst 38h			;3a39
	rst 38h			;3a3a
	ld h,b			;3a3b
	jr c,l3a5dh		;3a3c
	rrca			;3a3e
	nop			;3a3f
	add a,b			;3a40
	ret nz			;3a41
	ret p			;3a42
	inc c			;3a43
	jr c,l3a36h		;3a44
	ret po			;3a46
	nop			;3a47
	inc bc			;3a48
	rlca			;3a49
l3a4ah:
	rra			;3a4a
	dec b			;3a4b
	dec b			;3a4c
	add a,c			;3a4d
	.DB 0fdh,002h,0ffh	;illegal sequence		;3a4e
	ld b,000h		;3a51
	and b			;3a53
	add a,b			;3a54
	ret nz			;3a55
	rlca			;3a56
	ccf			;3a57
	ld a,a			;3a58
	ld (hl),e			;3a59
l3a5ah:
	ld h,b			;3a5a
	ld h,d			;3a5b
	ld h,b			;3a5c
l3a5dh:
	ld h,b			;3a5d
	ret			;3a5e
	cp 0fch		;3a5f
	call m,sub_5878h		;3a61
	jr l3a7eh		;3a64
	rlca			;3a66
	rra			;3a67
	ccf			;3a68
	ld a,a			;3a69
	ld l,a			;3a6a
	ld h,c			;3a6b
	ld h,b			;3a6c
	ld h,b			;3a6d
	pop bc			;3a6e
	cp 0fch		;3a6f
	call m,098f8h		;3a71
	ld (bc),a			;3a74
	jr l3a77h		;3a75
l3a77h:
	ld c,000h		;3a77
	add a,d			;3a79
	ld e,001h		;3a7a
	rlca			;3a7c
	nop			;3a7d
l3a7eh:
	add a,c			;3a7e
	add a,b			;3a7f
	jr nz,l3a82h		;3a80
l3a82h:
	add a,l			;3a82
	jr nc,l3a8dh		;3a83
l3a85h:
	inc b			;3a85
	ld (bc),a			;3a86
	ld bc,l0008h		;3a87
	add a,c			;3a8a
	add a,b			;3a8b
	ld (bc),a			;3a8c
l3a8dh:
	ld b,b			;3a8d
l3a8eh:
	ex af,af'			;3a8e
	nop			;3a8f
	ld b,020h		;3a90
	add a,e			;3a92
	nop			;3a93
	jr nz,l3a96h		;3a94
l3a96h:
	inc bc			;3a96
	ld bc,l0502h		;3a97
	add a,e			;3a9a
	ld (bc),a			;3a9b
	nop			;3a9c
	inc b			;3a9d
	dec b			;3a9e
	ex af,af'			;3a9f
	add a,d			;3aa0
	rrca			;3aa1
l3aa2h:
	sub b			;3aa2
	ld b,000h		;3aa3
	add a,c			;3aa5
	rst 38h			;3aa6
	ld (bc),a			;3aa7
	nop			;3aa8
	inc bc			;3aa9
	jr z,l3aaeh		;3aaa
	ex af,af'			;3aac
	add a,e			;3aad
l3aaeh:
	rst 8			;3aae
	nop			;3aaf
	ld h,b			;3ab0
	dec b			;3ab1
	ld hl,0a084h		;3ab2
	ld (de),a			;3ab5
	jr nz,l3ab8h		;3ab6
l3ab8h:
	ld (bc),a			;3ab8
	jr nz,l3abdh		;3ab9
	ld b,b			;3abb
	add a,e			;3abc
l3abdh:
	add a,b			;3abd
l3abeh:
	nop			;3abe
	ld bc,l0007h		;3abf
	add a,a			;3ac2
	jr nz,l3a85h		;3ac3
	ld b,b			;3ac5
	ld b,b			;3ac6
	nop			;3ac7
	ex af,af'			;3ac8
	rlca			;3ac9
	inc bc			;3aca
	nop			;3acb
	add a,l			;3acc
	jr nz,l3adfh		;3acd
	djnz l3af1h		;3acf
	add a,b			;3ad1
	inc bc			;3ad2
	nop			;3ad3
	adc a,(hl)			;3ad4
	ex af,af'			;3ad5
	djnz l3ae8h		;3ad6
	ex af,af'			;3ad8
	inc bc			;3ad9
	nop			;3ada
	add hl,bc			;3adb
	ld b,004h		;3adc
	inc b			;3ade
l3adfh:
	nop			;3adf
	jr nz,l3aa2h		;3ae0
l3ae2h:
	nop			;3ae2
	inc bc			;3ae3
	jr nz,l3ae9h		;3ae4
	ld b,b			;3ae6
	dec d			;3ae7
l3ae8h:
	nop			;3ae8
l3ae9h:
	add a,d			;3ae9
	dec b			;3aea
	inc bc			;3aeb
	dec b			;3aec
	nop			;3aed
	ld (bc),a			;3aee
	add a,b			;3aef
	ld (hl),b			;3af0
l3af1h:
	nop			;3af1
	adc a,e			;3af2
	djnz l3b01h		;3af3
	inc bc			;3af5
	nop			;3af6
	add hl,bc			;3af7
	ld b,004h		;3af8
	inc b			;3afa
	nop			;3afb
	jr nz,l3abeh		;3afc
	add hl,bc			;3afe
	nop			;3aff
	add a,d			;3b00
l3b01h:
	ld bc,l0206h		;3b01
	inc b			;3b04
	inc b			;3b05
	nop			;3b06
	nop			;3b07
l3b08h:
	jr nc,l3b49h		;3b08
	scf			;3b0a
	nop			;3b0b
	daa			;3b0c
	dec hl			;3b0d
	rrca			;3b0e
	dec sp			;3b0f
l3b10h:
	jr nc,l3b12h		;3b10
l3b12h:
	nop			;3b12
	nop			;3b13
	nop			;3b14
	nop			;3b15
	nop			;3b16
	nop			;3b17
	nop			;3b18
	inc bc			;3b19
	nop			;3b1a
l3b1bh:
	inc b			;3b1b
	nop			;3b1c
	ret c			;3b1d
	inc bc			;3b1e
	rrca			;3b1f
	jr $+48		;3b20
	nop			;3b22
	ld e,03fh		;3b23
	rst 38h			;3b25
	rst 38h			;3b26
	cp 018h		;3b27
	ret po			;3b29
	ld a,a			;3b2a
	ld a,(hl)			;3b2b
	ret z			;3b2c
	adc a,b			;3b2d
	ret p			;3b2e
	ret m			;3b2f
	call nz,sub_3f63h		;3b30
	rrca			;3b33
	rlca			;3b34
	ld bc,l0000h		;3b35
	ld bc,0e006h		;3b38
	call m,0e106h		;3b3b
	ccf			;3b3e
	rst 28h			;3b3f
	sbc a,h			;3b40
	ld l,h			;3b41
	rlca			;3b42
	ccf			;3b43
	rst 38h			;3b44
	cp 0e7h		;3b45
	adc a,a			;3b47
l3b48h:
	sub c			;3b48
l3b49h:
	or c			;3b49
l3b4ah:
	ret p			;3b4a
	di			;3b4b
	ld (0cf66h),a		;3b4c
	adc a,a			;3b4f
	sbc a,b			;3b50
	ld sp,0e000h		;3b51
l3b54h:
	jr nz,l3bb7h		;3b54
	pop bc			;3b56
	add a,e			;3b57
	add a,l			;3b58
	dec bc			;3b59
	ld h,a			;3b5a
	rst 38h			;3b5b
	and b			;3b5c
	rrca			;3b5d
	ld sp,hl			;3b5e
	ret po			;3b5f
l3b60h:
	ld hl,08043h		;3b60
	pop bc			;3b63
	inc hl			;3b64
	ld (de),a			;3b65
	rst 30h			;3b66
	rst 30h			;3b67
	and l			;3b68
	dec l			;3b69
	call m,031feh		;3b6a
	ld e,c			;3b6d
	sbc a,a			;3b6e
	cp a			;3b6f
	ld h,a			;3b70
	call sub_7c38h		;3b71
	ld b,(hl)			;3b74
	jp nz,0fe02h		;3b75
	ld (bc),a			;3b78
	ld (00cdah),a		;3b79
	add hl,bc			;3b7c
	ld c,00eh		;3b7d
	add hl,bc			;3b7f
	inc c			;3b80
	ld b,003h		;3b81
	adc a,b			;3b83
	jr l3bc5h		;3b84
	ld a,(hl)			;3b86
	jp nz,l1804h		;3b87
l3b8ah:
	ret po			;3b8a
	and c			;3b8b
	and b			;3b8c
	jr nz,l3bbfh		;3b8d
	rra			;3b8f
	rrca			;3b90
	nop			;3b91
	nop			;3b92
	pop hl			;3b93
	ret nz			;3b94
	ex af,af'			;3b95
	inc e			;3b96
	rst 30h			;3b97
	jp l0000h		;3b98
	or (hl)			;3b9b
	jp pe,l2d14h		;3b9c
	rst 28h			;3b9f
	sbc a,a			;3ba0
	ld de,l3c35h		;3ba1
	add a,c			;3ba4
	jp po,l0eb9h		;3ba5
	ld bc,l0000h		;3ba8
	ld c,l			;3bab
	sbc a,b			;3bac
	ld h,b			;3bad
	add a,(hl)			;3bae
	dec sp			;3baf
	pop bc			;3bb0
	nop			;3bb1
	nop			;3bb2
	sbc a,d			;3bb3
	ld (l316ch),a		;3bb4
l3bb7h:
	rlca			;3bb7
	call m,l0000h		;3bb8
	ld (hl),d			;3bbb
	ld d,e			;3bbc
	exx			;3bbd
	adc a,b			;3bbe
l3bbfh:
	ld c,003h		;3bbf
	nop			;3bc1
	nop			;3bc2
	ld c,01ah		;3bc3
l3bc5h:
	jp p,l1c06h		;3bc5
	ret m			;3bc8
	nop			;3bc9
	nop			;3bca
	ccf			;3bcb
	ld a,(hl)			;3bcc
	ld c,d			;3bcd
	ld d,d			;3bce
	ld a,h			;3bcf
	ld a,h			;3bd0
	ld c,b			;3bd1
	jr nc,l3bd4h		;3bd2
l3bd4h:
	ld a,a			;3bd4
	inc b			;3bd5
	ld b,b			;3bd6
	add a,h			;3bd7
	ld a,a			;3bd8
	nop			;3bd9
	nop			;3bda
	rst 38h			;3bdb
	inc b			;3bdc
	nop			;3bdd
	add a,h			;3bde
	call m,l0004h		;3bdf
l3be2h:
	rst 38h			;3be2
	rlca			;3be3
	nop			;3be4
	add a,c			;3be5
	ld a,a			;3be6
	ld b,040h		;3be7
	add a,d			;3be9
	nop			;3bea
	rst 38h			;3beb
	inc b			;3bec
	nop			;3bed
	add a,h			;3bee
	rrca			;3bef
	ex af,af'			;3bf0
	nop			;3bf1
	rst 38h			;3bf2
	inc b			;3bf3
	nop			;3bf4
	sub h			;3bf5
	rst 38h			;3bf6
	nop			;3bf7
	nop			;3bf8
	call m,01008h		;3bf9
	jr nz,l3c3eh		;3bfc
	add a,b			;3bfe
	nop			;3bff
	nop			;3c00
	ret po			;3c01
	djnz l3c14h		;3c02
	ex af,af'			;3c04
	inc b			;3c05
	inc b			;3c06
	ld (bc),a			;3c07
	nop			;3c08
	rlca			;3c09
	ld b,004h		;3c0a
	ld (bc),a			;3c0c
	nop			;3c0d
	add a,d			;3c0e
	ld bc,l0206h		;3c0f
	ex af,af'			;3c12
	ld (bc),a			;3c13
l3c14h:
	djnz $-125		;3c14
	nop			;3c16
	ccf			;3c17
l3c18h:
	ret nz			;3c18
	ld b,000h		;3c19
	add a,e			;3c1b
	ret p			;3c1c
	ld c,001h		;3c1d
	inc bc			;3c1f
	nop			;3c20
	add a,c			;3c21
l3c22h:
	ld a,b			;3c22
	inc bc			;3c23
	nop			;3c24
	add a,e			;3c25
l3c26h:
	add a,b			;3c26
	ld h,b			;3c27
	jr $+10		;3c28
	inc b			;3c2a
	ex af,af'			;3c2b
	nop			;3c2c
	ex af,af'			;3c2d
	ld b,b			;3c2e
	ex af,af'			;3c2f
	ex af,af'			;3c30
	ld (bc),a			;3c31
	ld bc,l0006h		;3c32
l3c35h:
	ld (bc),a			;3c35
	inc b			;3c36
	add a,a			;3c37
	add a,h			;3c38
	ld b,h			;3c39
	ld b,h			;3c3a
	inc h			;3c3b
	inc e			;3c3c
	nop			;3c3d
l3c3eh:
	djnz l3c44h		;3c3e
	jr nz,l3c44h		;3c40
	djnz $-125		;3c42
l3c44h:
	ex af,af'			;3c44
	ld bc,l0302h		;3c45
	inc b			;3c48
	add a,h			;3c49
	ld (bc),a			;3c4a
	ld bc,08700h		;3c4b
	ld b,000h		;3c4e
	add a,h			;3c50
	add a,b			;3c51
	ex af,af'			;3c52
	ret nc			;3c53
	jr nz,l3c5bh		;3c54
	nop			;3c56
	add a,d			;3c57
	ex af,af'			;3c58
	rrca			;3c59
	inc b			;3c5a
l3c5bh:
	nop			;3c5b
	add a,l			;3c5c
	rrca			;3c5d
	ex af,af'			;3c5e
	ex af,af'			;3c5f
	ld b,001h		;3c60
	ex af,af'			;3c62
	nop			;3c63
	adc a,l			;3c64
	add a,b			;3c65
	ld b,b			;3c66
	jr nc,l3c71h		;3c67
	ld b,000h		;3c69
l3c6bh:
	jr c,l3c91h		;3c6b
	inc h			;3c6d
	ld (02121h),hl		;3c6e
l3c71h:
	jr nz,l3c7ah		;3c71
	nop			;3c73
	adc a,b			;3c74
	add a,b			;3c75
	ld b,b			;3c76
	ld b,b			;3c77
	jr nz,l3c8ah		;3c78
l3c7ah:
	djnz l3c84h		;3c7a
	rlca			;3c7c
	add a,c			;3c7d
	nop			;3c7e
	nop			;3c7f
	inc b			;3c80
	nop			;3c81
	ret c			;3c82
	inc bc			;3c83
l3c84h:
	ld c,01fh		;3c84
l3c86h:
	ccf			;3c86
	nop			;3c87
	ld e,033h		;3c88
l3c8ah:
	pop hl			;3c8a
	add a,c			;3c8b
	ld b,0f8h		;3c8c
	ret po			;3c8e
	ld h,c			;3c8f
	ld b,(hl)			;3c90
l3c91h:
	ret m			;3c91
	ret m			;3c92
	sub b			;3c93
	adc a,b			;3c94
	call nz,03063h		;3c95
	inc c			;3c98
	rlca			;3c99
	ld bc,l0000h		;3c9a
	ld bc,0e006h		;3c9d
	inc e			;3ca0
l3ca1h:
	cp 0ffh		;3ca1
	jr c,l3ca1h		;3ca3
	sbc a,h			;3ca5
l3ca6h:
	ld l,h			;3ca6
	rlca			;3ca7
	jr c,$-1		;3ca8
	rst 38h			;3caa
	call po,09188h		;3cab
	or c			;3cae
	ret p			;3caf
	inc de			;3cb0
	di			;3cb1
	rst 20h			;3cb2
	call z,09888h		;3cb3
	ld sp,0e000h		;3cb6
	ret po			;3cb9
	pop hl			;3cba
	ld b,c			;3cbb
	add a,d			;3cbc
	add a,l			;3cbd
	dec bc			;3cbe
	ld h,a			;3cbf
	cp b			;3cc0
	rst 38h			;3cc1
	rst 38h			;3cc2
	add hl,de			;3cc3
	jr nz,$+33		;3cc4
	ld b,e			;3cc6
	add a,b			;3cc7
	ld b,c			;3cc8
	ex (sp),hl			;3cc9
	di			;3cca
	sub (hl)			;3ccb
l3ccch:
	sub h			;3ccc
	and l			;3ccd
	dec l			;3cce
	call m,0ff82h		;3ccf
	rst 18h			;3cd2
	sbc a,c			;3cd3
	or e			;3cd4
	ld h,a			;3cd5
l3cd6h:
	call sub_6c38h		;3cd6
	ld a,(hl)			;3cd9
	cp 002h		;3cda
	sub d			;3cdc
	ld (bc),a			;3cdd
	ld (l0f02h),a		;3cde
	ld (bc),a			;3ce1
	ld c,002h		;3ce2
	rrca			;3ce4
	sub b			;3ce5
	ld b,003h		;3ce6
	adc a,a			;3ce8
	rra			;3ce9
	ccf			;3cea
	ld a,(hl)			;3ceb
	cp 0fch		;3cec
	jr $-32		;3cee
	cp a			;3cf0
	cp a			;3cf1
	jr nz,l3d24h		;3cf2
	jr l3d05h		;3cf4
	ld (bc),a			;3cf6
	nop			;3cf7
	ld (bc),a			;3cf8
	rst 38h			;3cf9
	cp (hl)			;3cfa
	ex af,af'			;3cfb
	inc e			;3cfc
	halt			;3cfd
	jp l0000h		;3cfe
	cp a			;3d01
	ei			;3d02
	inc d			;3d03
	dec l			;3d04
l3d05h:
	ld l,c			;3d05
	sbc a,e			;3d06
	dec e			;3d07
	dec a			;3d08
	rst 38h			;3d09
	rst 38h			;3d0a
	jp po,l0fb9h		;3d0b
	ld bc,l0000h		;3d0e
	rst 8			;3d11
	sbc a,a			;3d12
	ld h,b			;3d13
	add a,(hl)			;3d14
	ei			;3d15
l3d16h:
	pop bc			;3d16
	nop			;3d17
	nop			;3d18
	ei			;3d19
	di			;3d1a
	ld l,h			;3d1b
	ld sp,0fcffh		;3d1c
	nop			;3d1f
	nop			;3d20
	cp 0dfh		;3d21
	exx			;3d23
l3d24h:
	adc a,b			;3d24
	rrca			;3d25
	inc bc			;3d26
	nop			;3d27
	nop			;3d28
	ld c,01eh		;3d29
	jp p,0fc06h		;3d2b
	ret m			;3d2e
	nop			;3d2f
	nop			;3d30
	dec h			;3d31
	ld l,d			;3d32
	ld a,d			;3d33
	ld (hl),d			;3d34
	ld d,h			;3d35
	ld b,h			;3d36
	ld c,b			;3d37
	jr nc,l3d3ch		;3d38
	nop			;3d3a
	inc b			;3d3b
l3d3ch:
	ccf			;3d3c
	inc b			;3d3d
	nop			;3d3e
	inc b			;3d3f
	rst 38h			;3d40
	ld (bc),a			;3d41
	inc bc			;3d42
	ld (bc),a			;3d43
	nop			;3d44
	ld b,0ffh		;3d45
	ld (bc),a			;3d47
	nop			;3d48
	ld b,03fh		;3d49
	ld (bc),a			;3d4b
	nop			;3d4c
	inc b			;3d4d
	rst 38h			;3d4e
	ld (bc),a			;3d4f
	ret p			;3d50
	ld (bc),a			;3d51
	nop			;3d52
	inc b			;3d53
	rst 38h			;3d54
	inc b			;3d55
	nop			;3d56
	add a,h			;3d57
	ret p			;3d58
	ret po			;3d59
	ret nz			;3d5a
	add a,b			;3d5b
	inc b			;3d5c
	nop			;3d5d
	ld (bc),a			;3d5e
	ret po			;3d5f
	add a,h			;3d60
	ret p			;3d61
	ret m			;3d62
	ret m			;3d63
	call m,l0000h+2		;3d64
	ld b,003h		;3d67
	inc bc			;3d69
	nop			;3d6a
	add a,c			;3d6b
	ld bc,l0702h		;3d6c
	ld (bc),a			;3d6f
	rrca			;3d70
	ld (bc),a			;3d71
	nop			;3d72
	add a,c			;3d73
	ccf			;3d74
	dec b			;3d75
	rst 38h			;3d76
	ld (bc),a			;3d77
	nop			;3d78
	add a,d			;3d79
	ret p			;3d7a
	cp 003h		;3d7b
	rst 38h			;3d7d
	add a,c			;3d7e
	add a,a			;3d7f
	inc b			;3d80
	nop			;3d81
	add a,d			;3d82
	add a,b			;3d83
	ret po			;3d84
	ld (bc),a			;3d85
	ret m			;3d86
	ex af,af'			;3d87
	inc bc			;3d88
	ex af,af'			;3d89
	rst 38h			;3d8a
	ex af,af'			;3d8b
	ccf			;3d8c
	ex af,af'			;3d8d
	ret p			;3d8e
	ld (bc),a			;3d8f
	cp 006h		;3d90
	rst 38h			;3d92
	inc bc			;3d93
	inc bc			;3d94
	ld (bc),a			;3d95
l3d96h:
	add a,e			;3d96
	add a,h			;3d97
	jp 0ffe3h		;3d98
	rrca			;3d9b
	inc b			;3d9c
	rra			;3d9d
	ld (bc),a			;3d9e
	rrca			;3d9f
	add a,e			;3da0
	rlca			;3da1
	cp 0fch		;3da2
	inc bc			;3da4
	ret m			;3da5
	add a,e			;3da6
	call m,0fffeh		;3da7
	ex af,af'			;3daa
	nop			;3dab
	add a,d			;3dac
	ret p			;3dad
	jr nz,l3db6h		;3dae
	nop			;3db0
	ld (bc),a			;3db1
	ret p			;3db2
	inc b			;3db3
	rst 38h			;3db4
	ld (bc),a			;3db5
l3db6h:
	ret p			;3db6
	add a,d			;3db7
	rlca			;3db8
	ld bc,l0006h		;3db9
	inc bc			;3dbc
	rst 38h			;3dbd
	adc a,d			;3dbe
	ld a,a			;3dbf
	ccf			;3dc0
	rrca			;3dc1
	rlca			;3dc2
	ld bc,0c7ffh		;3dc3
	jp 0c1c3h		;3dc6
	inc bc			;3dc9
	ret nz			;3dca
	rlca			;3dcb
	rst 38h			;3dcc
	add a,a			;3dcd
	ld a,a			;3dce
	ccf			;3dcf
	ccf			;3dd0
	rra			;3dd1
	rrca			;3dd2
	rrca			;3dd3
	rlca			;3dd4
	ld (bc),a			;3dd5
	nop			;3dd6
	nop			;3dd7
	ld b,000h		;3dd8
	add a,d			;3dda
	rlca			;3ddb
	rrca			;3ddc
	ld b,000h		;3ddd
	add a,c			;3ddf
	ret po			;3de0
	inc bc			;3de1
	nop			;3de2
	adc a,b			;3de3
	jr nc,l3e56h		;3de4
	ld h,b			;3de6
	ld (hl),b			;3de7
	jr c,l3e06h		;3de8
	rrca			;3dea
	inc bc			;3deb
	dec b			;3dec
	nop			;3ded
	adc a,a			;3dee
	ld bc,0e000h		;3def
	ret m			;3df2
	ld e,007h		;3df3
	inc bc			;3df5
	ld h,e			;3df6
	add a,e			;3df7
	nop			;3df8
	nop			;3df9
	inc a			;3dfa
	pop hl			;3dfb
	inc bc			;3dfc
	rlca			;3dfd
	ld (bc),a			;3dfe
	ld c,002h		;3dff
	nop			;3e01
	xor d			;3e02
	pop bc			;3e03
	add a,c			;3e04
	inc bc			;3e05
l3e06h:
	rlca			;3e06
	rlca			;3e07
	ld c,000h		;3e08
	nop			;3e0a
	ret nz			;3e0b
	add a,b			;3e0c
	add a,b			;3e0d
	ld bc,l0401h+1		;3e0e
	nop			;3e11
	nop			;3e12
	ld e,a			;3e13
	ret p			;3e14
	ret po			;3e15
	ret nz			;3e16
	ret nz			;3e17
	add a,b			;3e18
	nop			;3e19
	nop			;3e1a
	ret nz			;3e1b
	pop hl			;3e1c
	ld h,c			;3e1d
	ld h,e			;3e1e
	ld b,d			;3e1f
	jp nz,l0000h		;3e20
	adc a,086h		;3e23
	ld b,00ch		;3e25
	jr l3e59h		;3e27
	nop			;3e29
	nop			;3e2a
	jr c,l3e69h		;3e2b
	ld (bc),a			;3e2d
	ld l,h			;3e2e
	ld (bc),a			;3e2f
	call z,l0000h+2		;3e30
	ld (bc),a			;3e33
	inc b			;3e34
	ld (bc),a			;3e35
	nop			;3e36
l3e37h:
	add a,c			;3e37
	ld bc,l0003h		;3e38
	add a,l			;3e3b
	ld c,01ch		;3e3c
	nop			;3e3e
	nop			;3e3f
	ret po			;3e40
	inc bc			;3e41
	nop			;3e42
	add a,e			;3e43
	rra			;3e44
	rrca			;3e45
	rlca			;3e46
	dec b			;3e47
	nop			;3e48
	add a,e			;3e49
	rst 30h			;3e4a
	ex (sp),hl			;3e4b
	add a,c			;3e4c
	dec b			;3e4d
	nop			;3e4e
	adc a,d			;3e4f
	ex (sp),hl			;3e50
	jp nz,l0486h		;3e51
	ld c,00ah		;3e54
l3e56h:
	nop			;3e56
	nop			;3e57
	inc e			;3e58
l3e59h:
	ld b,006h		;3e59
	nop			;3e5b
	add a,d			;3e5c
	rra			;3e5d
	ld a,c			;3e5e
	ld b,000h		;3e5f
	add a,d			;3e61
	add a,e			;3e62
	adc a,006h		;3e63
	nop			;3e65
	add a,d			;3e66
	ld b,007h		;3e67
l3e69h:
	ld b,000h		;3e69
	add a,d			;3e6b
	inc c			;3e6c
	ret m			;3e6d
	inc b			;3e6e
	nop			;3e6f
	adc a,b			;3e70
	ld (bc),a			;3e71
	inc b			;3e72
	inc (hl)			;3e73
	inc l			;3e74
	jr z,l3eafh		;3e75
	jr nc,l3e79h		;3e77
l3e79h:
	ld (086ffh),a		;3e79
	cp 0fch		;3e7c
	ret m			;3e7e
	ret p			;3e7f
	ret po			;3e80
	ret nz			;3e81
	ld (bc),a			;3e82
	ret p			;3e83
	ld (bc),a			;3e84
	ret m			;3e85
	add a,h			;3e86
	call m,0fefeh		;3e87
	rst 38h			;3e8a
	ex af,af'			;3e8b
	rrca			;3e8c
	add a,h			;3e8d
	nop			;3e8e
	ld bc,l0f07h		;3e8f
	ld (bc),a			;3e92
	rra			;3e93
	inc bc			;3e94
	ccf			;3e95
	rlca			;3e96
	rst 38h			;3e97
	add a,d			;3e98
	ret p			;3e99
	cp 006h		;3e9a
	rst 38h			;3e9c
	ld (bc),a			;3e9d
	nop			;3e9e
	add a,h			;3e9f
	add a,b			;3ea0
	ret po			;3ea1
	ret m			;3ea2
	call m,0fe02h		;3ea3
	ex af,af'			;3ea6
	rrca			;3ea7
	djnz $-1		;3ea8
	ex af,af'			;3eaa
	call m,0ff08h		;3eab
	ld (bc),a			;3eae
l3eafh:
	adc a,a			;3eaf
	add a,c			;3eb0
	rst 8			;3eb1
	ld (bc),a			;3eb2
	rst 28h			;3eb3
	inc bc			;3eb4
	rst 38h			;3eb5
	add a,c			;3eb6
	ccf			;3eb7
	inc b			;3eb8
	ld a,a			;3eb9
	ld (bc),a			;3eba
	ccf			;3ebb
	add a,c			;3ebc
	rra			;3ebd
	ld (bc),a			;3ebe
	rst 38h			;3ebf
	inc bc			;3ec0
	cp 004h		;3ec1
	rst 38h			;3ec3
	add a,c			;3ec4
	add a,a			;3ec5
	inc b			;3ec6
	nop			;3ec7
	add a,(hl)			;3ec8
	add a,b			;3ec9
	ret po			;3eca
	call m,0f0f8h		;3ecb
	jr nz,l3ed4h		;3ece
	nop			;3ed0
	ex af,af'			;3ed1
	rst 38h			;3ed2
	add a,h			;3ed3
l3ed4h:
	rra			;3ed4
	rrca			;3ed5
	rlca			;3ed6
	ld bc,l0004h		;3ed7
	dec b			;3eda
	rst 38h			;3edb
	add a,e			;3edc
	ld a,a			;3edd
	ccf			;3ede
	rrca			;3edf
	inc b			;3ee0
	rst 38h			;3ee1
	add a,h			;3ee2
	rst 30h			;3ee3
	di			;3ee4
	di			;3ee5
	pop af			;3ee6
	ld a,(bc)			;3ee7
	rst 38h			;3ee8
	add a,h			;3ee9
	ld a,a			;3eea
	ccf			;3eeb
	ccf			;3eec
	rra			;3eed
	ld (bc),a			;3eee
	rrca			;3eef
	nop			;3ef0
	ld a,a			;3ef1
	nop			;3ef2
	ld a,a			;3ef3
	nop			;3ef4
	ld a,a			;3ef5
	nop			;3ef6
	inc hl			;3ef7
	nop			;3ef8
	nop			;3ef9
l3efah:
	jr nc,$+1		;3efa
	ld sp,l0000h+1		;3efc
	ld bc,l00ffh+1		;3eff
	nop			;3f02
l3f03h:
	ld bc,l00ffh+1		;3f03
	nop			;3f06
	ld bc,l00ffh+1		;3f07
	nop			;3f0a
	ld bc,l00ffh+1		;3f0b
	ld (l0000h+1),a		;3f0e
	ld bc,l00ffh+1		;3f11
	nop			;3f14
	ld bc,l00ffh+1		;3f15
	nop			;3f18
	ld bc,l00ffh+1		;3f19
	nop			;3f1c
	ld bc,l00ffh+1		;3f1d
	nop			;3f20
	ld bc,l0133h		;3f21
	inc (hl)			;3f24
	ld bc,l0133h+2		;3f25
	ld (hl),001h		;3f28
	scf			;3f2a
	ld bc,l0136h+2		;3f2b
	add hl,sp			;3f2e
	ld bc,0013ah		;3f2f
	dec sp			;3f32
	ld bc,l00ffh+1		;3f33
	inc a			;3f36
	ld bc,l013ch+1		;3f37
	ld a,001h		;3f3a
l3f3ch:
	ccf			;3f3c
	ld bc,00140h		;3f3d
	ld b,c			;3f40
	ld bc,l0142h		;3f41
	ld b,e			;3f44
	ld bc,l0142h+2		;3f45
	ld b,l			;3f48
	ld bc,l00ffh+1		;3f49
	nop			;3f4c
	ld bc,l00ffh+1		;3f4d
	nop			;3f50
	ld bc,l0145h+1		;3f51
	nop			;3f54
	ld bc,l00ffh+1		;3f55
	nop			;3f58
	ld bc,l00ffh+1		;3f59
	nop			;3f5c
	ld bc,0008fh		;3f5d
	ld b,a			;3f60
	ld c,c			;3f61
	ld b,a			;3f62
sub_3f63h:
	ld c,d			;3f63
	ld c,h			;3f64
	nop			;3f65
	ld c,(hl)			;3f66
	ld c,d			;3f67
	ld c,d			;3f68
	ld c,a			;3f69
	nop			;3f6a
	ld c,d			;3f6b
	ld d,b			;3f6c
	ld d,d			;3f6d
	inc bc			;3f6e
	nop			;3f6f
	adc a,l			;3f70
	ld d,l			;3f71
	nop			;3f72
	ld d,(hl)			;3f73
	nop			;3f74
	nop			;3f75
	ld e,b			;3f76
	ld d,(hl)			;3f77
	ld d,(hl)			;3f78
	ld e,c			;3f79
	nop			;3f7a
	ld d,(hl)			;3f7b
	ld e,d			;3f7c
	ld e,h			;3f7d
	inc bc			;3f7e
l3f7fh:
	nop			;3f7f
l3f80h:
	adc a,l			;3f80
	ld d,l			;3f81
	nop			;3f82
	ld d,(hl)			;3f83
	ld c,h			;3f84
l3f85h:
	nop			;3f85
	ld d,l			;3f86
	ld d,(hl)			;3f87
	ld d,(hl)			;3f88
	ld d,l			;3f89
	nop			;3f8a
	ld d,(hl)			;3f8b
	ld e,a			;3f8c
	ld h,b			;3f8d
	inc bc			;3f8e
	nop			;3f8f
	adc a,l			;3f90
	ld d,l			;3f91
	nop			;3f92
	ld d,(hl)			;3f93
	nop			;3f94
	nop			;3f95
	ld h,c			;3f96
	ld d,(hl)			;3f97
	ld d,(hl)			;3f98
	ld h,d			;3f99
	nop			;3f9a
	ld d,(hl)			;3f9b
	ld e,l			;3f9c
	ld e,e			;3f9d
	inc bc			;3f9e
	nop			;3f9f
	adc a,l			;3fa0
	ld c,c			;3fa1
	nop			;3fa2
	ld c,d			;3fa3
	ld c,h			;3fa4
	nop			;3fa5
	ld c,a			;3fa6
	ld c,d			;3fa7
	ld c,d			;3fa8
	ld h,e			;3fa9
	nop			;3faa
	ld c,d			;3fab
	ld d,e			;3fac
	ld d,c			;3fad
	add a,c			;3fae
	nop			;3faf
	nop			;3fb0
	inc bc			;3fb1
	ld bc,l0381h		;3fb2
	inc b			;3fb5
	ld bc,l0381h		;3fb6
	inc bc			;3fb9
	ld bc,l0381h		;3fba
	dec bc			;3fbd
	ld bc,l0381h		;3fbe
	inc bc			;3fc1
	ld bc,l0381h		;3fc2
	dec bc			;3fc5
	ld bc,l0381h		;3fc6
	inc bc			;3fc9
	ld bc,00383h		;3fca
	ld bc,00907h		;3fcd
	ld bc,l0381h		;3fd0
	inc bc			;3fd3
	ld bc,l0381h		;3fd4
	ld (bc),a			;3fd7
	rlca			;3fd8
	inc bc			;3fd9
	ld bc,l0583h		;3fda
	ld bc,l0205h		;3fdd
	ld bc,l0702h		;3fe0
	add a,c			;3fe3
	dec b			;3fe4
	ld (bc),a			;3fe5
	ld bc,l0702h+1		;3fe6
	add a,c			;3fe9
	ld bc,08f00h		;3fea
	nop			;3fed
	ld c,b			;3fee
	ld c,b			;3fef
	nop			;3ff0
	ld c,e			;3ff1
	ld c,l			;3ff2
	ld c,d			;3ff3
	ld c,a			;3ff4
	nop			;3ff5
	ld c,(hl)			;3ff6
	ld c,d			;3ff7
	ld c,d			;3ff8
	nop			;3ff9
	ld d,c			;3ffa
	ld d,e			;3ffb
	ld (bc),a			;3ffc
	nop			;3ffd
	ld (bc),a			;3ffe
	ld d,h			;3fff
l4000h:
	adc a,h			;4000
	nop			;4001
l4002h:
	ld d,a			;4002
	nop			;4003
	ld d,(hl)			;4004
	ld e,c			;4005
	nop			;4006
	ld e,b			;4007
	ld d,(hl)			;4008
	ld d,(hl)			;4009
	nop			;400a
	ld e,e			;400b
	ld e,l			;400c
	ld (bc),a			;400d
	nop			;400e
	ld (bc),a			;400f
	ld d,h			;4010
	adc a,h			;4011
	nop			;4012
	ld e,(hl)			;4013
	ld c,l			;4014
	ld d,(hl)			;4015
	ld d,l			;4016
	nop			;4017
	ld d,l			;4018
	ld d,(hl)			;4019
	ld d,(hl)			;401a
	nop			;401b
	ld h,b			;401c
	ld e,a			;401d
	ld (bc),a			;401e
	nop			;401f
	ld (bc),a			;4020
	ld d,h			;4021
	adc a,h			;4022
	nop			;4023
	ld d,a			;4024
	nop			;4025
	ld d,(hl)			;4026
	ld h,d			;4027
	nop			;4028
	ld h,c			;4029
	ld d,(hl)			;402a
	ld d,(hl)			;402b
	nop			;402c
	ld e,h			;402d
	ld e,d			;402e
	ld (bc),a			;402f
	nop			;4030
	ld (bc),a			;4031
	ld c,a			;4032
	adc a,h			;4033
	nop			;4034
	ld c,e			;4035
	ld c,l			;4036
	ld c,d			;4037
	ld h,e			;4038
	nop			;4039
	ld c,a			;403a
	ld c,d			;403b
	ld c,d			;403c
	nop			;403d
	ld d,d			;403e
	ld d,b			;403f
	add a,c			;4040
	nop			;4041
	nop			;4042
	ld (bc),a			;4043
	ld bc,l0381h		;4044
	rlca			;4047
	ld bc,l0381h		;4048
	rlca			;404b
	ld bc,l0381h		;404c
	rlca			;404f
	ld bc,l0381h		;4050
	rlca			;4053
	ld bc,l0381h		;4054
	rlca			;4057
	ld bc,l0381h		;4058
	inc bc			;405b
	ld bc,l0781h		;405c
	inc bc			;405f
	ld bc,l0381h		;4060
	rlca			;4063
	ld bc,l0381h		;4064
	ld (bc),a			;4067
	ld bc,l0702h		;4068
	ld (bc),a			;406b
	ld bc,l0586h		;406c
	rlca			;406f
	ld bc,l0104h+1		;4070
	dec b			;4073
	ld (bc),a			;4074
	ld bc,l0702h		;4075
	add a,l			;4078
	dec b			;4079
	ld bc,00707h		;407a
	ld bc,l0300h		;407d
	ret z			;4080
	dec sp			;4081
	jr nc,l4084h		;4082
l4084h:
	dec de			;4084
	ld bc,l011eh+2		;4085
	ld e,001h		;4088
	inc de			;408a
	ld bc,l00ffh+1		;408b
	ld (bc),a			;408e
	ld bc,l00ffh+1		;408f
	dec de			;4092
	ld bc,00117h		;4093
	inc c			;4096
	ld bc,l0124h		;4097
	nop			;409a
	ld bc,l011eh		;409b
	rra			;409e
	ld bc,l010ah+2		;409f
	dec e			;40a2
	ld bc,l011eh+1		;40a3
	nop			;40a6
	ld bc,l010dh		;40a7
	jr nz,l40adh		;40aa
	rra			;40ac
l40adh:
	ld bc,l011eh+1		;40ad
	ld a,(de)			;40b0
	ld bc,l0118h+1		;40b1
	ld e,(hl)			;40b4
	inc a			;40b5
	inc b			;40b6
	nop			;40b7
	ld a,(de)			;40b8
	ld bc,0011dh		;40b9
	ret z			;40bc
	inc a			;40bd
	jr nc,l40c0h		;40be
l40c0h:
	dec de			;40c0
	ld bc,l011eh+2		;40c1
	ld e,001h		;40c4
	inc de			;40c6
	ld bc,l00ffh+1		;40c7
	inc bc			;40ca
	ld bc,l00ffh+1		;40cb
	dec de			;40ce
	ld bc,00117h		;40cf
	inc c			;40d2
	ld bc,l0124h		;40d3
	nop			;40d6
	ld bc,l011eh		;40d7
	rra			;40da
	ld bc,l010ah+2		;40db
	dec e			;40de
	ld bc,l011eh+1		;40df
	nop			;40e2
	ld bc,l010dh		;40e3
	jr nz,l40e9h		;40e6
	rra			;40e8
l40e9h:
	ld bc,l011eh+1		;40e9
	ld a,(de)			;40ec
	ld bc,l0118h+1		;40ed
l40f0h:
	ld h,001h		;40f0
	nop			;40f2
	ld bc,l0127h		;40f3
	jr z,l40f9h		;40f6
	add hl,hl			;40f8
l40f9h:
	ld bc,l012ah		;40f9
	nop			;40fc
	ld bc,l0102h		;40fd
l4100h:
	ld a,(bc)			;4100
	ld bc,00109h		;4101
	rlca			;4104
	ld bc,0f53eh		;4105
	out (03fh),a		;4108
	in a,(0ddh)		;410a
	and 0c0h		;410c
	cp 0c0h		;410e
	jr nz,l4122h		;4110
	ld a,055h		;4112
	out (03fh),a		;4114
	in a,(0ddh)		;4116
	and 0c0h		;4118
	or a			;411a
	jr nz,l4122h		;411b
	ld a,0ffh		;411d
	out (03fh),a		;411f
	ret			;4121
l4122h:
	xor a			;4122
	ret			;4123
l4124h:
	add a,041h		;4124
	rst 18h			;4126
	ld b,c			;4127
	push af			;4128
	ld b,c			;4129
	dec bc			;412a
	ld b,d			;412b
	dec de			;412c
	ld b,d			;412d
	inc (hl)			;412e
	ld b,d			;412f
	ld c,l			;4130
	ld b,d			;4131
	ld h,e			;4132
	ld b,d			;4133
	ld a,c			;4134
	ld b,d			;4135
	adc a,a			;4136
	ld b,d			;4137
	xor b			;4138
	ld b,d			;4139
	pop bc			;413a
	ld b,d			;413b
	jp c,0f342h		;413c
	ld b,d			;413f
	add hl,bc			;4140
	ld b,e			;4141
	rra			;4142
	ld b,e			;4143
	jr c,l4189h		;4144
	ld d,c			;4146
	ld b,e			;4147
	ld h,a			;4148
	ld b,e			;4149
	ld a,l			;414a
	ld b,e			;414b
	sub (hl)			;414c
	ld b,e			;414d
	or d			;414e
	ld b,e			;414f
	ret z			;4150
	ld b,e			;4151
	pop hl			;4152
	ld b,e			;4153
	call p,sub_0743h		;4154
	ld b,h			;4157
	inc hl			;4158
	ld b,h			;4159
	ccf			;415a
	ld b,h			;415b
	ld e,b			;415c
	ld b,h			;415d
	ld (hl),h			;415e
	ld b,h			;415f
	adc a,l			;4160
	ld b,h			;4161
	and e			;4162
	ld b,h			;4163
	cp c			;4164
	ld b,h			;4165
	ret			;4166
	ld b,h			;4167
	jp po,0fb44h		;4168
	ld b,h			;416b
	ld de,l2745h		;416c
	ld b,l			;416f
	dec a			;4170
	ld b,l			;4171
	ld d,(hl)			;4172
	ld b,l			;4173
	ld l,a			;4174
	ld b,l			;4175
	adc a,b			;4176
	ld b,l			;4177
	and c			;4178
	ld b,l			;4179
	or a			;417a
	ld b,l			;417b
	call 0e645h		;417c
	ld b,l			;417f
	rst 38h			;4180
	ld b,l			;4181
l4182h:
	dec d			;4182
	ld b,(hl)			;4183
	dec hl			;4184
	ld b,(hl)			;4185
	ld b,h			;4186
	ld b,(hl)			;4187
	ld h,b			;4188
l4189h:
	ld b,(hl)			;4189
	halt			;418a
	ld b,(hl)			;418b
	adc a,a			;418c
	ld b,(hl)			;418d
	and d			;418e
	ld b,(hl)			;418f
	or l			;4190
	ld b,(hl)			;4191
	pop de			;4192
	ld b,(hl)			;4193
	im 0		;4194
	ld b,047h		;4196
	ld (l3847h),hl		;4198
	ld b,a			;419b
	ld c,e			;419c
	ld b,a			;419d
	ld e,(hl)			;419e
	ld b,a			;419f
	ld l,(hl)			;41a0
	ld b,a			;41a1
	add a,c			;41a2
	ld b,a			;41a3
	sub h			;41a4
	ld b,a			;41a5
	and c			;41a6
	ld b,a			;41a7
	or c			;41a8
	ld b,a			;41a9
	cp (hl)			;41aa
	ld b,a			;41ab
	adc a,047h		;41ac
	sbc a,047h		;41ae
	pop af			;41b0
	ld b,a			;41b1
	ld bc,l1448h		;41b2
	ld c,b			;41b5
	inc h			;41b6
	ld c,b			;41b7
	inc (hl)			;41b8
	ld c,b			;41b9
	ld b,a			;41ba
	ld c,b			;41bb
	ld e,l			;41bc
	ld c,b			;41bd
	ld (hl),b			;41be
	ld c,b			;41bf
	add a,e			;41c0
	ld c,b			;41c1
	sub e			;41c2
	ld c,b			;41c3
	sub a			;41c4
	ld c,b			;41c5
	ex af,af'			;41c6
	ret po			;41c7
	jp p,0e100h		;41c8
	cp 017h		;41cb
	ret pe			;41cd
	di			;41ce
	ld hl,0fbe8h		;41cf
	add hl,hl			;41d2
	jp pe,l2a02h		;41d3
	ret p			;41d6
	call m,0f87ah		;41d7
	jp m,0f57ch		;41da
	ld (bc),a			;41dd
	ld a,e			;41de
	rlca			;41df
	ret po			;41e0
	jp p,0e100h		;41e1
	cp 017h		;41e4
	ret pe			;41e6
	di			;41e7
	ld hl,0fbe8h		;41e8
	add hl,hl			;41eb
	jp pe,l2a02h		;41ec
	ret p			;41ef
	call m,0f87dh		;41f0
	call m,sub_077eh		;41f3
	pop hl			;41f6
	jp m,0e81bh		;41f7
	ei			;41fa
	ld sp,003e8h		;41fb
	inc b			;41fe
	ret p			;41ff
	or 07fh		;4200
l4202h:
	ret p			;4202
	cp 05ah		;4203
	ret m			;4205
	or 080h		;4206
	ret m			;4208
	cp 081h		;4209
	dec b			;420b
	pop hl			;420c
	jp m,0e81bh		;420d
	ei			;4210
	ld sp,003e8h		;4211
	inc b			;4214
	ret p			;4215
	call m,0f882h		;4216
	ei			;4219
	add a,e			;421a
	ex af,af'			;421b
	pop hl			;421c
	cp 017h		;421d
	ret pe			;421f
	jp m,0e845h		;4220
	ld (bc),a			;4223
	ld b,(hl)			;4224
	ret p			;4225
	ret m			;4226
	add a,h			;4227
	ret p			;4228
	nop			;4229
	add a,(hl)			;422a
	push af			;422b
	jp p,0f814h		;422c
	jp m,0f885h		;422f
	ld (bc),a			;4232
	add a,a			;4233
	ex af,af'			;4234
	pop hl			;4235
	jp m,0e81bh		;4236
	or 047h		;4239
	ret pe			;423b
	cp 048h		;423c
	ret p			;423e
	or 088h		;423f
	ret p			;4241
	cp 089h		;4242
	jp p,l0104h		;4244
	ret m			;4247
	or 05bh		;4248
	ret m			;424a
	.DB 0fdh,05ch	;ld e,iyh		;424b
	rlca			;424d
	jp po,01cfbh		;424e
	ret pe			;4251
	jp m,0e849h		;4252
	ld (bc),a			;4255
	ld c,d			;4256
	ret p			;4257
	ret m			;4258
	adc a,d			;4259
	ret p			;425a
	nop			;425b
	ld h,c			;425c
	ret m			;425d
	ret m			;425e
	ld h,d			;425f
	ret m			;4260
	nop			;4261
	ld h,e			;4262
	rlca			;4263
	ex (sp),hl			;4264
	call m,0e81dh		;4265
	rst 30h			;4268
	dec d			;4269
	ret pe			;426a
	rst 38h			;426b
	ld c,e			;426c
	ret p			;426d
	rst 30h			;426e
	adc a,(hl)			;426f
	ret p			;4270
	rst 38h			;4271
	adc a,e			;4272
	ret m			;4273
	rst 30h			;4274
	adc a,h			;4275
	ret m			;4276
	rst 38h			;4277
	adc a,l			;4278
	rlca			;4279
	ex (sp),hl			;427a
	ei			;427b
	dec e			;427c
	ret pe			;427d
	or 016h		;427e
	ret pe			;4280
	cp 04bh		;4281
	ret p			;4283
	or 08eh		;4284
	ret p			;4286
	cp 08bh		;4287
	ret m			;4289
	rst 30h			;428a
	adc a,h			;428b
	ret m			;428c
	rst 38h			;428d
	adc a,a			;428e
	ex af,af'			;428f
	ret po			;4290
	jp p,0e100h		;4291
	cp 017h		;4294
	ret pe			;4296
	di			;4297
	ld hl,0fbe8h		;4298
	add hl,hl			;429b
	jp pe,l2a02h		;429c
	ret p			;429f
	jp m,0f04ch		;42a0
	ld (bc),a			;42a3
	ld c,l			;42a4
	ret m			;42a5
	ld c,(iy+008h)		;42a6
	jp po,01802h		;42a9
	ret pe			;42ac
	dec iy		;42ad
	ret pe			;42af
	dec b			;42b0
	inc l			;42b1
	ret p			;42b2
	.DB 0fdh,04fh,0f0h	;illegal sequence		;42b3
	dec b			;42b6
	ld d,b			;42b7
	di			;42b8
	dec c			;42b9
	ld bc,0fdf8h		;42ba
	ld d,c			;42bd
	ret m			;42be
	dec b			;42bf
	ld d,d			;42c0
	ex af,af'			;42c1
	pop hl			;42c2
	ld bc,0e219h		;42c3
	inc c			;42c6
	ld (bc),a			;42c7
	ret pe			;42c8
	.DB 0fdh,02dh	;dec iyl		;42c9
	ret pe			;42cb
	dec b			;42cc
	ld l,0f0h		;42cd
	call m,0f053h		;42cf
	inc b			;42d2
	ld d,h			;42d3
	ret m			;42d4
	.DB 0fdh,051h,0f8h	;illegal sequence		;42d5
l42d8h:
	inc b			;42d8
	ld d,l			;42d9
	ex af,af'			;42da
	ret po			;42db
	call m,0e103h		;42dc
	ld (bc),a			;42df
	ld a,(de)			;42e0
	ret pe			;42e1
	call m,0e82fh		;42e2
	inc b			;42e5
	jr nc,l42d8h		;42e6
	call m,0f056h		;42e8
	inc b			;42eb
	ld d,a			;42ec
	ret m			;42ed
	call m,0f858h		;42ee
	inc b			;42f1
	ld d,l			;42f2
	rlca			;42f3
	pop hl			;42f4
	jp m,0e81bh		;42f5
	ei			;42f8
	ld sp,003e8h		;42f9
	inc b			;42fc
	ret p			;42fd
	or 059h		;42fe
	ret p			;4300
l4301h:
	cp 05ah		;4301
	ret m			;4303
	or 05bh		;4304
	ret m			;4306
	cp 05ch		;4307
	rlca			;4309
	jp po,l1cf7h+2		;430a
	ret pe			;430d
	jp m,0f232h		;430e
	xor 005h		;4311
	rst 28h			;4313
	or 05eh		;4314
	ret p			;4316
	cp 05dh		;4317
	rst 30h			;4319
	or 05fh		;431a
	ret m			;431c
	cp 063h		;431d
	ex af,af'			;431f
	ret po			;4320
	rst 28h			;4321
	ld b,0e1h		;4322
	jp m,0e81dh		;4324
	rst 30h			;4327
	inc sp			;4328
	ret pe			;4329
	rst 38h			;432a
	inc (hl)			;432b
	ret p			;432c
	rst 30h			;432d
	ld h,b			;432e
	ret p			;432f
	rst 38h			;4330
	ld h,c			;4331
	ret m			;4332
	rst 30h			;4333
	ld h,d			;4334
	ret m			;4335
	rst 38h			;4336
	ld h,e			;4337
	ex af,af'			;4338
	pop hl			;4339
	ld sp,hl			;433a
	ld e,0e0h		;433b
	rst 38h			;433d
	rlca			;433e
	ret pe			;433f
	rst 30h			;4340
	dec (hl)			;4341
	ret pe			;4342
	rst 38h			;4343
	ld (hl),0f0h		;4344
	rst 30h			;4346
	ld h,h			;4347
	ret p			;4348
	rst 38h			;4349
	ld h,l			;434a
	ret m			;434b
	rst 30h			;434c
	ld h,d			;434d
	ret m			;434e
	rst 38h			;434f
	ld h,e			;4350
	rlca			;4351
	ex (sp),hl			;4352
	add iy,de		;4353
	ret pe			;4355
	ld sp,hl			;4356
	scf			;4357
	ret pe			;4358
	ld bc,0f008h		;4359
	ld sp,hl			;435c
	ld h,(hl)			;435d
	ret p			;435e
	ld bc,0f867h		;435f
	ld sp,hl			;4362
	ld l,b			;4363
	ret m			;4364
	ld bc,00769h		;4365
	ex (sp),hl			;4368
	call m,0e819h		;4369
	ret m			;436c
	scf			;436d
	ret pe			;436e
	nop			;436f
	add hl,bc			;4370
	ret p			;4371
	ret m			;4372
	ld h,(hl)			;4373
	ret p			;4374
	nop			;4375
	ld h,a			;4376
	ret m			;4377
	ld sp,hl			;4378
	ld l,d			;4379
	ret m			;437a
	ld bc,00869h		;437b
	jp po,018fch		;437e
	jp (hl)			;4381
	call p,0e938h		;4382
	call m,0e839h		;4385
	inc b			;4388
	ld a,(0f4f1h)		;4389
	ld a,(bc)			;438c
	pop af			;438d
	call m,0f96bh		;438e
	call p,0f90bh		;4391
	call m,sub_096ch		;4394
	jp po,l1ffch		;4397
	pop hl			;439a
	nop			;439b
	ld (0f0e9h),hl		;439c
	inc c			;439f
	jp (hl)			;43a0
	ret m			;43a1
	dec sp			;43a2
	jp (hl)			;43a3
	nop			;43a4
	inc a			;43a5
	pop af			;43a6
	ret p			;43a7
	dec c			;43a8
	pop af			;43a9
	ld sp,hl			;43aa
	ld l,l			;43ab
	call p,sub_6e01h		;43ac
	ld sp,hl			;43af
	ret m			;43b0
	ld l,a			;43b1
	rlca			;43b2
	ret po			;43b3
	pop af			;43b4
	ld bc,0f6e0h		;43b5
	inc hl			;43b8
	ret po			;43b9
	cp 020h		;43ba
	ret pe			;43bc
	rst 38h			;43bd
	dec a			;43be
	ret p			;43bf
	ld (iy-008h),b		;43c0
	ld sp,hl			;43c3
	ld (hl),c			;43c4
	ret m			;43c5
	ld bc,00872h		;43c6
	ret c			;43c9
	dec b			;43ca
	ld c,0e0h		;43cb
	inc bc			;43cd
	inc h			;43ce
	ret pe			;43cf
	ei			;43d0
	ccf			;43d1
	ret pe			;43d2
	inc bc			;43d3
	ld a,0e4h		;43d4
	nop			;43d6
	add hl,de			;43d7
	ret p			;43d8
	ld (iy-00bh),e		;43d9
	push af			;43dc
	ld (hl),h			;43dd
	ret m			;43de
	ld (iy+006h),l		;43df
	jp po,02503h		;43e2
	ret pe			;43e5
	ei			;43e6
	ld b,b			;43e7
	jp pe,l0f02h+1		;43e8
	push hl			;43eb
	nop			;43ec
	add hl,de			;43ed
	ret p			;43ee
	ei			;43ef
	halt			;43f0
	ret m			;43f1
	ei			;43f2
	ld (hl),a			;43f3
	ld b,0eah		;43f4
	ret m			;43f6
	djnz $-22		;43f7
	nop			;43f9
	ld b,c			;43fa
	rst 20h			;43fb
	cp 01eh		;43fc
	jp p,011f8h		;43fe
	jp p,l7800h		;4401
	jp m,l79fch		;4404
	add hl,bc			;4407
l4408h:
	ret c			;4408
	nop			;4409
	ld c,0e1h		;440a
	.DB 0fdh,01ah,0e0h	;illegal sequence		;440c
	nop			;440f
	ld h,0e8h		;4410
	ret m			;4412
	cpl			;4413
	ret pe			;4414
	nop			;4415
	jr nc,l4408h		;4416
	ret m			;4418
	ld d,(hl)			;4419
	ret p			;441a
	nop			;441b
	ld d,a			;441c
	ret m			;441d
	ret m			;441e
	ld e,b			;441f
	ret m			;4420
	nop			;4421
	ld d,l			;4422
	add hl,bc			;4423
	ret c			;4424
	or 00eh		;4425
	pop hl			;4427
	call m,0e01ah		;4428
	ret m			;442b
	daa			;442c
	ret pe			;442d
	ret m			;442e
	dec (hl)			;442f
	ret pe			;4430
	nop			;4431
	ld (hl),0f0h		;4432
	ret m			;4434
	ld h,h			;4435
	ret p			;4436
	nop			;4437
	ld h,l			;4438
	ret m			;4439
	ret m			;443a
	ld h,d			;443b
	ret m			;443c
	nop			;443d
	ld h,e			;443e
	ex af,af'			;443f
	jp po,01cfbh		;4440
	ret pe			;4443
	ret p			;4444
	ld (de),a			;4445
	ret pe			;4446
	ret m			;4447
	ld b,d			;4448
	ret pe			;4449
	nop			;444a
	ld b,e			;444b
	ret p			;444c
	ret m			;444d
	ld h,b			;444e
	ret p			;444f
	nop			;4450
	ld h,c			;4451
	ret m			;4452
	ret m			;4453
	ld h,d			;4454
	ret m			;4455
	nop			;4456
	ld h,e			;4457
	add hl,bc			;4458
	jp c,l13f0h		;4459
	ret po			;445c
	ret m			;445d
	jr z,$-31		;445e
	call m,0e81dh		;4460
	ret m			;4463
	ld b,h			;4464
	ret pe			;4465
	nop			;4466
	inc (hl)			;4467
	ret p			;4468
	ret m			;4469
	ld h,b			;446a
	ret p			;446b
	nop			;446c
	ld h,c			;446d
	ret m			;446e
	ret m			;446f
	ld h,d			;4470
	ret m			;4471
	nop			;4472
	ld h,e			;4473
	ex af,af'			;4474
	ret po			;4475
	jp p,0e100h		;4476
	cp 090h		;4479
	ret pe			;447b
	di			;447c
	ld hl,0fbe8h		;447d
	add hl,hl			;4480
	jp pe,l2a02h		;4481
	ret p			;4484
	call m,0f87ah		;4485
	jp m,0f57ch		;4488
	ld (bc),a			;448b
	ld a,e			;448c
	rlca			;448d
	ret po			;448e
	jp p,0e100h		;448f
	cp 090h		;4492
	ret pe			;4494
	di			;4495
	ld hl,0fbe8h		;4496
	add hl,hl			;4499
	jp pe,l2a02h		;449a
	ret p			;449d
	call m,0f87dh		;449e
	call m,sub_077eh		;44a1
	pop hl			;44a4
	jp m,0e894h		;44a5
	ei			;44a8
	ld sp,003e8h		;44a9
	inc b			;44ac
	ret p			;44ad
	or 07fh		;44ae
	ret p			;44b0
	cp 05ah		;44b1
	ret m			;44b3
	or 080h		;44b4
	ret m			;44b6
	cp 081h		;44b7
	dec b			;44b9
	pop hl			;44ba
	jp m,0e894h		;44bb
	ei			;44be
	ld sp,003e8h		;44bf
	inc b			;44c2
	ret p			;44c3
	call m,0f882h		;44c4
	ei			;44c7
	add a,e			;44c8
	ex af,af'			;44c9
	pop hl			;44ca
	cp 090h		;44cb
	ret pe			;44cd
	jp m,0e845h		;44ce
	ld (bc),a			;44d1
	ld b,(hl)			;44d2
	ret p			;44d3
	ret m			;44d4
	add a,h			;44d5
	ret p			;44d6
	nop			;44d7
	add a,(hl)			;44d8
	push af			;44d9
	jp p,0f814h		;44da
	jp m,0f885h		;44dd
	ld (bc),a			;44e0
	add a,a			;44e1
	ex af,af'			;44e2
	pop hl			;44e3
	jp m,0e894h		;44e4
	or 047h		;44e7
	ret pe			;44e9
	cp 048h		;44ea
	ret p			;44ec
	or 088h		;44ed
	ret p			;44ef
	cp 089h		;44f0
	jp p,l0104h		;44f2
	ret m			;44f5
	or 05bh		;44f6
	ret m			;44f8
	.DB 0fdh,05ch	;ld e,iyh		;44f9
	rlca			;44fb
	jp po,095fbh		;44fc
	ret pe			;44ff
	jp m,0e849h		;4500
	ld (bc),a			;4503
	ld c,d			;4504
	ret p			;4505
	ret m			;4506
	adc a,d			;4507
	ret p			;4508
	nop			;4509
	ld h,c			;450a
	ret m			;450b
	ret m			;450c
	ld h,d			;450d
	ret m			;450e
	nop			;450f
	ld h,e			;4510
	rlca			;4511
	ex (sp),hl			;4512
	call m,0e896h		;4513
	rst 30h			;4516
	dec d			;4517
	ret pe			;4518
	rst 38h			;4519
	ld c,e			;451a
	ret p			;451b
	rst 30h			;451c
	adc a,(hl)			;451d
	ret p			;451e
	rst 38h			;451f
	adc a,e			;4520
	ret m			;4521
	rst 30h			;4522
	adc a,h			;4523
	ret m			;4524
	rst 38h			;4525
	adc a,l			;4526
	rlca			;4527
	ex (sp),hl			;4528
	ei			;4529
	sub (hl)			;452a
	ret pe			;452b
	or 016h		;452c
	ret pe			;452e
	cp 04bh		;452f
	ret p			;4531
	or 08eh		;4532
	ret p			;4534
	cp 08bh		;4535
	ret m			;4537
	rst 30h			;4538
	adc a,h			;4539
	ret m			;453a
	rst 38h			;453b
	adc a,a			;453c
	ex af,af'			;453d
	ret po			;453e
	jp p,0e100h		;453f
	cp 090h		;4542
	ret pe			;4544
	di			;4545
	ld hl,0fbe8h		;4546
	add hl,hl			;4549
	jp pe,l2a02h		;454a
	ret p			;454d
	jp m,0f04ch		;454e
	ld (bc),a			;4551
	ld c,l			;4552
	ret m			;4553
	ld c,(iy+008h)		;4554
	jp po,09102h		;4557
	ret pe			;455a
	dec iy		;455b
	ret pe			;455d
	dec b			;455e
	inc l			;455f
	ret p			;4560
	.DB 0fdh,04fh,0f0h	;illegal sequence		;4561
	dec b			;4564
	ld d,b			;4565
	di			;4566
	dec c			;4567
	ld bc,0fdf8h		;4568
	ld d,c			;456b
	ret m			;456c
	dec b			;456d
	ld d,d			;456e
	ex af,af'			;456f
	pop hl			;4570
	ld bc,0e292h		;4571
	inc c			;4574
	ld (bc),a			;4575
	ret pe			;4576
	.DB 0fdh,02dh	;dec iyl		;4577
	ret pe			;4579
	dec b			;457a
	ld l,0f0h		;457b
	call m,0f053h		;457d
	inc b			;4580
	ld d,h			;4581
	ret m			;4582
	.DB 0fdh,051h,0f8h	;illegal sequence		;4583
l4586h:
	inc b			;4586
	ld d,l			;4587
	ex af,af'			;4588
	ret po			;4589
	call m,0e103h		;458a
	ld (bc),a			;458d
	sub e			;458e
	ret pe			;458f
	call m,0e82fh		;4590
	inc b			;4593
	jr nc,l4586h		;4594
	call m,0f056h		;4596
	inc b			;4599
	ld d,a			;459a
	ret m			;459b
	call m,0f858h		;459c
	inc b			;459f
	ld d,l			;45a0
	rlca			;45a1
	pop hl			;45a2
	jp m,0e894h		;45a3
	ei			;45a6
	ld sp,003e8h		;45a7
	inc b			;45aa
	ret p			;45ab
	or 059h		;45ac
	ret p			;45ae
	cp 05ah		;45af
	ret m			;45b1
	or 05bh		;45b2
	ret m			;45b4
	cp 05ch		;45b5
	rlca			;45b7
	jp po,095f9h		;45b8
	ret pe			;45bb
	jp m,0f232h		;45bc
	xor 005h		;45bf
	rst 28h			;45c1
	or 05eh		;45c2
	ret p			;45c4
	cp 05dh		;45c5
	rst 30h			;45c7
	or 05fh		;45c8
	ret m			;45ca
	cp 063h		;45cb
	ex af,af'			;45cd
	ret po			;45ce
	rst 28h			;45cf
	ld b,0e1h		;45d0
	jp m,0e896h		;45d2
	rst 30h			;45d5
	inc sp			;45d6
	ret pe			;45d7
	rst 38h			;45d8
	inc (hl)			;45d9
	ret p			;45da
	rst 30h			;45db
	ld h,b			;45dc
	ret p			;45dd
	rst 38h			;45de
	ld h,c			;45df
	ret m			;45e0
	rst 30h			;45e1
	ld h,d			;45e2
	ret m			;45e3
	rst 38h			;45e4
	ld h,e			;45e5
	ex af,af'			;45e6
	pop hl			;45e7
	ld sp,hl			;45e8
	sub a			;45e9
	ret po			;45ea
	rst 38h			;45eb
	rlca			;45ec
	ret pe			;45ed
	rst 30h			;45ee
	dec (hl)			;45ef
	ret pe			;45f0
	rst 38h			;45f1
	ld (hl),0f0h		;45f2
	rst 30h			;45f4
	ld h,h			;45f5
	ret p			;45f6
	rst 38h			;45f7
	ld h,l			;45f8
	ret m			;45f9
	rst 30h			;45fa
	ld h,d			;45fb
	ret m			;45fc
	rst 38h			;45fd
	ld h,e			;45fe
	rlca			;45ff
	ex (sp),hl			;4600
	.DB 0fdh,092h,0e8h	;illegal sequence		;4601
	ld sp,hl			;4604
	scf			;4605
	ret pe			;4606
	ld bc,0f008h		;4607
	ld sp,hl			;460a
	ld h,(hl)			;460b
	ret p			;460c
	ld bc,0f867h		;460d
	ld sp,hl			;4610
	ld l,b			;4611
	ret m			;4612
	ld bc,00769h		;4613
	ex (sp),hl			;4616
	call m,0e892h		;4617
	ret m			;461a
	scf			;461b
	ret pe			;461c
	nop			;461d
	add hl,bc			;461e
	ret p			;461f
	ret m			;4620
	ld h,(hl)			;4621
	ret p			;4622
	nop			;4623
	ld h,a			;4624
	ret m			;4625
	ld sp,hl			;4626
	ld l,d			;4627
	ret m			;4628
	ld bc,00869h		;4629
	jp po,091fch		;462c
	jp (hl)			;462f
	call p,0e938h		;4630
	call m,0e839h		;4633
	inc b			;4636
	ld a,(0f4f1h)		;4637
	ld a,(bc)			;463a
	pop af			;463b
	call m,0f96bh		;463c
	call p,0f90bh		;463f
	call m,sub_096ch		;4642
	jp po,098fch		;4645
	pop hl			;4648
	nop			;4649
	ld (0f0e9h),hl		;464a
	inc c			;464d
	jp (hl)			;464e
	ret m			;464f
	dec sp			;4650
	jp (hl)			;4651
	nop			;4652
	inc a			;4653
	pop af			;4654
	ret p			;4655
	dec c			;4656
	pop af			;4657
	ld sp,hl			;4658
	ld l,l			;4659
	call p,sub_6e01h		;465a
	ld sp,hl			;465d
	ret m			;465e
	ld l,a			;465f
	rlca			;4660
	ret po			;4661
	pop af			;4662
	ld bc,0f6e0h		;4663
	inc hl			;4666
	ret po			;4667
	cp 099h		;4668
	ret pe			;466a
	rst 38h			;466b
	dec a			;466c
	ret p			;466d
	ld (iy-008h),b		;466e
	ld sp,hl			;4671
	ld (hl),c			;4672
	ret m			;4673
	ld bc,00872h		;4674
	ret c			;4677
	dec b			;4678
	ld c,0e0h		;4679
	inc bc			;467b
	inc h			;467c
	ret pe			;467d
	ei			;467e
	ccf			;467f
	ret pe			;4680
	inc bc			;4681
	ld a,0e4h		;4682
	nop			;4684
	sub d			;4685
	ret p			;4686
	ld (iy-00bh),e		;4687
	push af			;468a
	ld (hl),h			;468b
	ret m			;468c
	push af			;468d
	ld (hl),l			;468e
	ld b,0e2h		;468f
l4691h:
	inc bc			;4691
	dec h			;4692
	ret pe			;4693
	ei			;4694
	ld b,b			;4695
	jp pe,l0f02h+1		;4696
	push hl			;4699
	nop			;469a
	sub d			;469b
	ret p			;469c
	ei			;469d
	halt			;469e
	ret m			;469f
	ei			;46a0
	ld (hl),a			;46a1
	ld b,0eah		;46a2
	ret m			;46a4
	djnz l4691h		;46a5
	nop			;46a7
	ld b,c			;46a8
	rst 20h			;46a9
	cp 097h		;46aa
	jp p,011f8h		;46ac
	jp p,l7800h		;46af
	jp m,l79fch		;46b2
	add hl,bc			;46b5
l46b6h:
	ret c			;46b6
	nop			;46b7
	ld c,0e1h		;46b8
	.DB 0fdh,093h,0e0h	;illegal sequence		;46ba
	nop			;46bd
	ld h,0e8h		;46be
	ret m			;46c0
	cpl			;46c1
	ret pe			;46c2
	nop			;46c3
	jr nc,l46b6h		;46c4
	ret m			;46c6
	ld d,(hl)			;46c7
	ret p			;46c8
	nop			;46c9
	ld d,a			;46ca
	ret m			;46cb
	ret m			;46cc
	ld e,b			;46cd
	ret m			;46ce
	nop			;46cf
	ld d,l			;46d0
	add hl,bc			;46d1
	ret c			;46d2
	or 00eh		;46d3
	pop hl			;46d5
	call m,0e093h		;46d6
	ret m			;46d9
	daa			;46da
	ret pe			;46db
	ret m			;46dc
	dec (hl)			;46dd
	ret pe			;46de
	nop			;46df
	ld (hl),0f0h		;46e0
	ret m			;46e2
	ld h,h			;46e3
	ret p			;46e4
	nop			;46e5
	ld h,l			;46e6
	ret m			;46e7
	ret m			;46e8
	ld h,d			;46e9
	ret m			;46ea
	nop			;46eb
	ld h,e			;46ec
	ex af,af'			;46ed
	jp po,095fbh		;46ee
	ret pe			;46f1
	ret p			;46f2
	ld (de),a			;46f3
	ret pe			;46f4
	ret m			;46f5
	ld b,d			;46f6
	ret pe			;46f7
	nop			;46f8
	ld b,e			;46f9
	ret p			;46fa
	ret m			;46fb
	ld h,b			;46fc
	ret p			;46fd
	nop			;46fe
	ld h,c			;46ff
	ret m			;4700
	ret m			;4701
	ld h,d			;4702
	ret m			;4703
	nop			;4704
	ld h,e			;4705
	add hl,bc			;4706
	jp c,l13f0h		;4707
	ret po			;470a
	ret m			;470b
	jr z,$-31		;470c
	call m,0e896h		;470e
	ret m			;4711
	ld b,h			;4712
	ret pe			;4713
	nop			;4714
	inc (hl)			;4715
	ret p			;4716
	ret m			;4717
	ld h,b			;4718
	ret p			;4719
	nop			;471a
	ld h,c			;471b
	ret m			;471c
	ret m			;471d
	ld h,d			;471e
	ret m			;471f
	nop			;4720
	ld h,e			;4721
	rlca			;4722
	pop hl			;4723
	ret m			;4724
	sbc a,d			;4725
	jp (hl)			;4726
	ret m			;4727
	xor a			;4728
	jp (hl)			;4729
	call m,0f1a5h		;472a
	ret m			;472d
	out (0f1h),a		;472e
	nop			;4730
	call nc,0f8f9h		;4731
	or b			;4734
	ld sp,hl			;4735
	nop			;4736
	or c			;4737
	ld b,0e8h		;4738
	call m,0eaa5h		;473a
	pop af			;473d
	sbc a,e			;473e
	ret p			;473f
	push af			;4740
	or d			;4741
	ret p			;4742
	.DB 0fdh,0d5h,0f8h	;illegal sequence		;4743
	ld sp,hl			;4746
	or e			;4747
	ret m			;4748
	ld bc,l06b4h		;4749
	ret pe			;474c
	call m,0f3a5h		;474d
	jp p,0f09bh		;4750
	ret m			;4753
	or l			;4754
	ret p			;4755
	nop			;4756
	sub 0f8h		;4757
	ret m			;4759
	or (hl)			;475a
	ret m			;475b
	nop			;475c
	or a			;475d
	dec b			;475e
	ret pe			;475f
	and (iy-018h)		;4760
	inc bc			;4763
	sbc a,h			;4764
	ret p			;4765
	ret m			;4766
	rst 10h			;4767
	ret p			;4768
	nop			;4769
	ret c			;476a
	ret m			;476b
	call m,sub_06b8h		;476c
	ret pe			;476f
	or 09dh		;4770
	ret pe			;4772
	cp 0a7h		;4773
	ret p			;4775
	ret m			;4776
	exx			;4777
	ret p			;4778
	nop			;4779
	jp c,0f8f8h		;477a
	cp c			;477d
	ret m			;477e
	nop			;477f
	cp d			;4780
	ld b,0e8h		;4781
	call m,0eaa7h		;4783
	ld bc,0f09ah		;4786
	rst 30h			;4789
	in a,(0f0h)		;478a
	rst 38h			;478c
	call c,0f7f8h		;478d
	cp e			;4790
	ret m			;4791
	rst 38h			;4792
	cp h			;4793
	inc b			;4794
	jp (hl)			;4795
	call m,0f0a7h		;4796
	ei			;4799
	.DB 0ddh,0f8h,0f8h	;illegal sequence		;479a
	cp l			;479d
	push af			;479e
	nop			;479f
	sbc a,(hl)			;47a0
	dec b			;47a1
	ret pe			;47a2
	call p,0e89fh		;47a3
	ei			;47a6
	xor b			;47a7
	ret p			;47a8
	ret m			;47a9
	sbc a,0f0h		;47aa
	nop			;47ac
	rst 18h			;47ad
	ret m			;47ae
	call m,sub_04beh		;47af
	ret pe			;47b2
	ei			;47b3
	xor c			;47b4
	ret p			;47b5
	ret m			;47b6
	ret po			;47b7
	ret p			;47b8
	nop			;47b9
	pop hl			;47ba
	ret m			;47bb
	call m,sub_05bfh		;47bc
	ret pe			;47bf
	jp m,0f0a9h		;47c0
	ret m			;47c3
	jp po,000f0h		;47c4
	ex (sp),hl			;47c7
	ret m			;47c8
	ret m			;47c9
	ret nz			;47ca
	ret m			;47cb
	nop			;47cc
	pop bc			;47cd
	dec b			;47ce
	ret pe			;47cf
	call m,0f0aah		;47d0
	ret m			;47d3
	and b			;47d4
	ret p			;47d5
	nop			;47d6
	call po,0f8f8h		;47d7
	jp nz,000f8h		;47da
	jp 0e806h		;47dd
	ret m			;47e0
	call nz,000e8h		;47e1
	xor e			;47e4
	ret p			;47e5
	ret m			;47e6
	push hl			;47e7
	ret p			;47e8
	nop			;47e9
	and 0f0h		;47ea
	rlca			;47ec
	sbc a,e			;47ed
	ret m			;47ee
	call m,005c5h		;47ef
	ret po			;47f2
	nop			;47f3
	rst 20h			;47f4
	ret po			;47f5
	rlca			;47f6
	sbc a,e			;47f7
	ret pe			;47f8
	.DB 0fdh,0ach	;xor iyh		;47f9
	ret p			;47fb
	.DB 0fdh,0e8h,0f8h	;illegal sequence		;47fc
	.DB 0fdh,0c6h,006h	;illegal sequence		;47ff
	ret po			;4802
	jp m,0e8a1h		;4803
	jp m,0e8c7h		;4806
	ld (bc),a			;4809
	xor l			;480a
	ret p			;480b
	jp m,0f0e9h		;480c
	ld (bc),a			;480f
	jp pe,0fcf8h		;4810
	ret z			;4813
	dec b			;4814
	ret pe			;4815
	rst 38h			;4816
	xor (hl)			;4817
	ret p			;4818
	jp m,0f0ebh		;4819
	ld (bc),a			;481c
	ret			;481d
	ret m			;481e
	jp m,0f8cah		;481f
	ld (bc),a			;4822
	and d			;4823
	dec b			;4824
	ret pe			;4825
	.DB 0fdh,0a7h,0e7h	;illegal sequence		;4826
	dec b			;4829
	sbc a,d			;482a
	ret p			;482b
	call m,0efech		;482c
	inc b			;482f
	set 7,b		;4830
	call m,sub_06cch		;4832
	ret po			;4835
	jp p,0e8a3h		;4836
	jp p,0e8a4h		;4839
	call m,0f0a6h		;483c
	rst 30h			;483f
	.DB 0edh;next byte illegal after ed		;4840
	ret p			;4841
	rst 38h			;4842
	xor 0f8h		;4843
	call m,007beh		;4845
	pop hl			;4848
	ret m			;4849
	sbc a,d			;484a
	jp (hl)			;484b
	ret m			;484c
	xor a			;484d
	ret pe			;484e
	call m,0f0a5h		;484f
	ret m			;4852
	rst 28h			;4853
	ret p			;4854
	nop			;4855
	ret p			;4856
	ret m			;4857
	ret m			;4858
	call 000f8h		;4859
	adc a,006h		;485c
	pop hl			;485e
	ret m			;485f
	sbc a,d			;4860
	jp (hl)			;4861
	ret m			;4862
	xor a			;4863
	ret pe			;4864
	call m,0f0a5h		;4865
	ret m			;4868
	rst 28h			;4869
	ret p			;486a
	nop			;486b
	pop af			;486c
	ret m			;486d
	.DB 0fdh,0cfh,006h	;illegal sequence		;486e
	jp (hl)			;4871
	or 09dh		;4872
	jp (hl)			;4874
	cp 0a7h		;4875
	pop af			;4877
	ret m			;4878
	jp p,l00f1h		;4879
	di			;487c
	ld sp,hl			;487d
	ret m			;487e
	ret nc			;487f
	ld sp,hl			;4880
	nop			;4881
	pop de			;4882
	dec b			;4883
	jp (hl)			;4884
	or 09dh		;4885
	jp (hl)			;4887
	cp 0a7h		;4888
	pop af			;488a
	ret m			;488b
	exx			;488c
	pop af			;488d
	nop			;488e
	call p,0fbf9h		;488f
	jp nc,0fc01h		;4892
	call m,l01feh+1		;4895
	call m,0fefch		;4898
l489bh:
	nop			;489b
	nop			;489c
	push af			;489d
	nop			;489e
	ex af,af'			;489f
	or 008h		;48a0
	nop			;48a2
	rst 30h			;48a3
	ex af,af'			;48a4
	ex af,af'			;48a5
	ret m			;48a6
	ld (bc),a			;48a7
	ld a,a			;48a8
	nop			;48a9
	nop			;48aa
	nop			;48ab
	rlca			;48ac
	ld (l3208h),a		;48ad
	ld (bc),a			;48b0
	ld a,a			;48b1
	nop			;48b2
	nop			;48b3
	nop			;48b4
	ld de,l1232h		;48b5
	ld (l7f01h),a		;48b8
	nop			;48bb
	nop			;48bc
	nop			;48bd
	nop			;48be
	ld bc,l7f02h		;48bf
	nop			;48c2
	nop			;48c3
	nop			;48c4
	nop			;48c5
	inc b			;48c6
	ld bc,l0104h		;48c7
	ld a,a			;48ca
	nop			;48cb
	nop			;48cc
	nop			;48cd
	ld (bc),a			;48ce
	ld bc,l7f02h		;48cf
	nop			;48d2
	nop			;48d3
	nop			;48d4
	ld (bc),a			;48d5
	inc b			;48d6
	inc bc			;48d7
	inc b			;48d8
	dec b			;48d9
	inc b			;48da
	dec bc			;48db
	inc bc			;48dc
	ld bc,l0308h+1		;48dd
	inc b			;48e0
	dec b			;48e1
	ld a,(bc)			;48e2
	dec b			;48e3
	dec bc			;48e4
	dec b			;48e5
	inc c			;48e6
	ld a,(bc)			;48e7
	dec b			;48e8
	inc b			;48e9
	dec bc			;48ea
	inc bc			;48eb
	ld (bc),a			;48ec
	dec c			;48ed
	inc bc			;48ee
	dec b			;48ef
	dec b			;48f0
	ld c,005h		;48f1
	rrca			;48f3
	dec b			;48f4
	djnz l4901h		;48f5
	dec b			;48f7
	inc b			;48f8
	dec bc			;48f9
	inc bc			;48fa
	inc bc			;48fb
	add hl,bc			;48fc
	inc bc			;48fd
	inc b			;48fe
	dec b			;48ff
	ld a,(bc)			;4900
l4901h:
	dec b			;4901
	dec bc			;4902
	dec b			;4903
	add hl,de			;4904
	ld a,(bc)			;4905
	dec b			;4906
	inc b			;4907
	dec bc			;4908
	inc bc			;4909
	inc b			;490a
	dec c			;490b
	inc bc			;490c
	dec b			;490d
	dec b			;490e
	ld c,005h		;490f
	rrca			;4911
	dec b			;4912
	ld a,(de)			;4913
	ld a,(bc)			;4914
	inc b			;4915
	inc b			;4916
	dec bc			;4917
	inc bc			;4918
	dec b			;4919
	add hl,bc			;491a
	dec b			;491b
	inc b			;491c
	dec b			;491d
	ld a,(bc)			;491e
	inc bc			;491f
	dec bc			;4920
	ld a,(bc)			;4921
	dec b			;4922
	inc b			;4923
	dec bc			;4924
	inc bc			;4925
	ld b,00dh		;4926
	dec b			;4928
	dec b			;4929
	dec b			;492a
	ld b,003h		;492b
	dec de			;492d
	inc bc			;492e
	inc e			;492f
	ld a,(bc)			;4930
	ld bc,l007fh		;4931
	nop			;4934
	nop			;4935
	inc de			;4936
	ld bc,l7f01h		;4937
	nop			;493a
	nop			;493b
	nop			;493c
	inc d			;493d
	ld bc,l0603h+1		;493e
	rrca			;4941
	inc b			;4942
	rlca			;4943
	dec d			;4944
	dec b			;4945
	ld d,004h		;4946
	rla			;4948
	inc b			;4949
	jr l4954h		;494a
	dec b			;494c
	dec b			;494d
	dec bc			;494e
	inc bc			;494f
	ex af,af'			;4950
	add hl,bc			;4951
	dec b			;4952
	dec d			;4953
l4954h:
	dec b			;4954
	ld d,004h		;4955
	rla			;4957
	inc b			;4958
	jr l4963h		;4959
	inc bc			;495b
	ld a,a			;495c
	nop			;495d
	nop			;495e
	nop			;495f
	ld a,(bc)			;4960
	ld (bc),a			;4961
	inc b			;4962
l4963h:
	ld (bc),a			;4963
	nop			;4964
	ld (bc),a			;4965
	inc bc			;4966
	ld a,a			;4967
	nop			;4968
	nop			;4969
	nop			;496a
	ld c,002h		;496b
	dec c			;496d
	ld (bc),a			;496e
	ld (bc),a			;496f
	ld (bc),a			;4970
	ld b,07fh		;4971
	nop			;4973
	nop			;4974
	nop			;4975
	add hl,bc			;4976
	ld bc,l010ah		;4977
	dec bc			;497a
	ld bc,l010fh		;497b
	ld c,001h		;497e
	dec c			;4980
	ld bc,l7f06h		;4981
	nop			;4984
	nop			;4985
	nop			;4986
	dec c			;4987
	ld bc,l010dh+1		;4988
	rrca			;498b
	ld bc,l010ah+1		;498c
	ld a,(bc)			;498f
	ld bc,00109h		;4990
	ld (bc),a			;4993
	ld a,a			;4994
	nop			;4995
	nop			;4996
	nop			;4997
	inc h			;4998
	ld (03225h),a		;4999
	ld (bc),a			;499c
	ld a,a			;499d
	nop			;499e
	nop			;499f
	nop			;49a0
	ld l,032h		;49a1
	cpl			;49a3
	ld (l7f01h),a		;49a4
	nop			;49a7
	nop			;49a8
	nop			;49a9
	dec e			;49aa
	ld bc,l7f02h		;49ab
	nop			;49ae
	nop			;49af
	nop			;49b0
	dec e			;49b1
	inc b			;49b2
	ld e,004h		;49b3
	ld bc,l007fh		;49b5
	nop			;49b8
	nop			;49b9
	rra			;49ba
	ld bc,l7f02h		;49bb
	nop			;49be
	nop			;49bf
	nop			;49c0
	rra			;49c1
	inc b			;49c2
	jr nz,l49c9h		;49c3
	dec b			;49c5
	inc b			;49c6
	dec bc			;49c7
	inc bc			;49c8
l49c9h:
	ld bc,l0326h		;49c9
	ld hl,l2704h+1		;49cc
	dec b			;49cf
	jr z,l49d7h		;49d0
	add hl,hl			;49d2
	ld a,(bc)			;49d3
	dec b			;49d4
	inc b			;49d5
	dec bc			;49d6
l49d7h:
	inc bc			;49d7
	ld (bc),a			;49d8
	ld hl,(l2203h)		;49d9
	dec b			;49dc
	dec hl			;49dd
	dec b			;49de
	inc l			;49df
	dec b			;49e0
	dec l			;49e1
	ld a,(bc)			;49e2
	dec b			;49e3
	inc b			;49e4
	dec bc			;49e5
	inc bc			;49e6
	inc bc			;49e7
	ld h,003h		;49e8
	ld hl,l2704h+1		;49ea
	dec b			;49ed
	jr z,l49f5h		;49ee
	ld (hl),00ah		;49f0
	dec b			;49f2
	inc b			;49f3
	dec bc			;49f4
l49f5h:
	inc bc			;49f5
	inc b			;49f6
	ld hl,(l2203h)		;49f7
	dec b			;49fa
	dec hl			;49fb
	dec b			;49fc
	inc l			;49fd
	dec b			;49fe
	scf			;49ff
	ld a,(bc)			;4a00
	inc b			;4a01
	inc b			;4a02
l4a03h:
	dec bc			;4a03
	inc bc			;4a04
	dec b			;4a05
	ld h,003h		;4a06
	ld hl,l2704h+1		;4a08
	dec b			;4a0b
	jr z,l4a18h		;4a0c
	dec b			;4a0e
	inc b			;4a0f
	dec bc			;4a10
	inc bc			;4a11
	ld b,02ah		;4a12
	inc bc			;4a14
	ld (02305h),hl		;4a15
l4a18h:
	dec b			;4a18
	jr c,l4a20h		;4a19
	add hl,sp			;4a1b
	ld a,(bc)			;4a1c
	ld bc,l007fh		;4a1d
l4a20h:
	nop			;4a20
	nop			;4a21
	jr nc,$+1		;4a22
	ld bc,l007fh		;4a24
	nop			;4a27
	nop			;4a28
	ld sp,l0401h		;4a29
	ld b,00fh		;4a2c
	inc b			;4a2e
	rlca			;4a2f
	ld (l3303h+2),a		;4a30
	inc b			;4a33
	inc (hl)			;4a34
	inc b			;4a35
	dec (hl)			;4a36
	ex af,af'			;4a37
	dec b			;4a38
	dec b			;4a39
	rrca			;4a3a
	inc b			;4a3b
	ex af,af'			;4a3c
	ld h,005h		;4a3d
	ld (l3303h+2),a		;4a3f
	inc b			;4a42
	inc (hl)			;4a43
	inc b			;4a44
	dec (hl)			;4a45
	ex af,af'			;4a46
	inc bc			;4a47
	ld a,a			;4a48
	nop			;4a49
	nop			;4a4a
	nop			;4a4b
	daa			;4a4c
	ld (bc),a			;4a4d
	ld hl,l1d00h+2		;4a4e
	ld (bc),a			;4a51
	inc bc			;4a52
	ld a,a			;4a53
	nop			;4a54
	nop			;4a55
	nop			;4a56
	dec hl			;4a57
	ld (bc),a			;4a58
	ld (l1f02h),hl		;4a59
	ld (bc),a			;4a5c
	ld b,07fh		;4a5d
	nop			;4a5f
	nop			;4a60
	nop			;4a61
	ld h,001h		;4a62
	daa			;4a64
	ld bc,l0127h+1		;4a65
	inc l			;4a68
	ld bc,l012ah+1		;4a69
	ld hl,(sub_0600h+1)		;4a6c
	ld a,a			;4a6f
	nop			;4a70
	nop			;4a71
	nop			;4a72
	ld hl,(l2b00h+1)		;4a73
	ld bc,l012ah+2		;4a76
	jr z,l4a7ch		;4a79
	daa			;4a7b
l4a7ch:
	ld bc,l0124h+2		;4a7c
	ld (bc),a			;4a7f
	ld a,a			;4a80
	nop			;4a81
	nop			;4a82
	nop			;4a83
	ld b,d			;4a84
	ld (03243h),a		;4a85
	ld bc,l007fh		;4a88
	nop			;4a8b
	nop			;4a8c
	ld c,l			;4a8d
	ld bc,l7f02h		;4a8e
	nop			;4a91
	nop			;4a92
	nop			;4a93
	ld c,l			;4a94
	inc b			;4a95
	ld c,(hl)			;4a96
	inc b			;4a97
	ld bc,l007fh		;4a98
	nop			;4a9b
	nop			;4a9c
	ld c,e			;4a9d
	ld bc,l7f02h		;4a9e
	nop			;4aa1
	nop			;4aa2
	nop			;4aa3
	ld c,e			;4aa4
	inc b			;4aa5
	ld c,h			;4aa6
	inc b			;4aa7
	inc b			;4aa8
	nop			;4aa9
	dec bc			;4aaa
	inc bc			;4aab
	add hl,bc			;4aac
	ld a,(l3b01h+2)		;4aad
	inc bc			;4ab0
	inc a			;4ab1
	inc bc			;4ab2
	dec a			;4ab3
	ex af,af'			;4ab4
	inc b			;4ab5
	nop			;4ab6
	dec bc			;4ab7
	inc bc			;4ab8
	ld a,(bc)			;4ab9
	ld a,(l3b01h+2)		;4aba
	inc bc			;4abd
	inc a			;4abe
	inc bc			;4abf
	dec a			;4ac0
	ex af,af'			;4ac1
	inc b			;4ac2
	nop			;4ac3
	dec bc			;4ac4
	inc bc			;4ac5
	dec bc			;4ac6
	ld a,003h		;4ac7
	ccf			;4ac9
	inc bc			;4aca
	ld b,b			;4acb
	inc bc			;4acc
	ld b,c			;4acd
	ex af,af'			;4ace
	inc b			;4acf
	nop			;4ad0
	dec bc			;4ad1
	inc bc			;4ad2
	inc c			;4ad3
	ld a,003h		;4ad4
	ccf			;4ad6
	inc bc			;4ad7
	ld b,b			;4ad8
	inc bc			;4ad9
	ld b,c			;4ada
	ex af,af'			;4adb
	ld (bc),a			;4adc
	nop			;4add
	dec bc			;4ade
	inc bc			;4adf
	dec c			;4ae0
	ld a,(l4a03h)		;4ae1
	dec b			;4ae4
	inc bc			;4ae5
	nop			;4ae6
	dec bc			;4ae7
	inc bc			;4ae8
	ld c,03eh		;4ae9
	inc bc			;4aeb
	ccf			;4aec
	inc bc			;4aed
	ld c,c			;4aee
	dec b			;4aef
	ld bc,l007fh		;4af0
	nop			;4af3
	nop			;4af4
	ld b,h			;4af5
	ld bc,l7f01h		;4af6
	nop			;4af9
	nop			;4afa
	nop			;4afb
	ld b,l			;4afc
	ld bc,l0603h		;4afd
	inc de			;4b00
	dec b			;4b01
	rrca			;4b02
	ld b,(hl)			;4b03
	ld a,(bc)			;4b04
	ld b,a			;4b05
	rlca			;4b06
	ld c,b			;4b07
	ld a,(bc)			;4b08
	inc b			;4b09
	inc bc			;4b0a
	rrca			;4b0b
	inc b			;4b0c
	djnz l4b49h		;4b0d
	inc bc			;4b0f
	ld b,(hl)			;4b10
	rlca			;4b11
	ld b,a			;4b12
	rlca			;4b13
	ld c,b			;4b14
	ld a,(bc)			;4b15
	inc bc			;4b16
	ld a,a			;4b17
	nop			;4b18
	nop			;4b19
	nop			;4b1a
	ld b,d			;4b1b
	inc bc			;4b1c
	dec sp			;4b1d
	inc bc			;4b1e
	ld a,(l0302h+1)		;4b1f
	ld a,a			;4b22
	nop			;4b23
	nop			;4b24
	nop			;4b25
	ld b,d			;4b26
	inc bc			;4b27
	ccf			;4b28
	inc bc			;4b29
	ld a,003h		;4b2a
	inc b			;4b2c
	ld a,a			;4b2d
	nop			;4b2e
	nop			;4b2f
	nop			;4b30
	ld a,(l3b01h+2)		;4b31
	inc bc			;4b34
	ccf			;4b35
	inc bc			;4b36
	ld a,003h		;4b37
	inc b			;4b39
	ld a,a			;4b3a
	nop			;4b3b
	nop			;4b3c
	nop			;4b3d
	ld a,003h		;4b3e
	ccf			;4b40
	inc bc			;4b41
	dec sp			;4b42
	inc bc			;4b43
	ld a,(l0302h+1)		;4b44
	ld h,b			;4b47
	sub b			;4b48
l4b49h:
	ld h,d			;4b49
	nop			;4b4a
	ld h,l			;4b4b
	ld h,e			;4b4c
	ld h,a			;4b4d
	ld l,c			;4b4e
	ld l,e			;4b4f
	ld l,l			;4b50
	ld l,a			;4b51
	ld (hl),c			;4b52
	ld (hl),e			;4b53
	ld (hl),h			;4b54
	ld (hl),d			;4b55
	halt			;4b56
	ld a,b			;4b57
	ld a,d			;4b58
	nop			;4b59
	inc de			;4b5a
	ld bc,l0300h		;4b5b
	ld h,c			;4b5e
	sub b			;4b5f
	ld h,e			;4b60
	ld h,h			;4b61
	ld h,d			;4b62
	ld h,(hl)			;4b63
l4b64h:
	ld l,b			;4b64
	ld l,d			;4b65
	ld l,h			;4b66
	ld l,(hl)			;4b67
	ld (hl),b			;4b68
	ld (hl),d			;4b69
	nop			;4b6a
	ld (hl),l			;4b6b
	ld (hl),e			;4b6c
	ld (hl),a			;4b6d
	ld a,c			;4b6e
	ld a,e			;4b6f
	nop			;4b70
	inc de			;4b71
	ld bc,l1500h		;4b72
	nop			;4b75
	and e			;4b76
	inc c			;4b77
	nop			;4b78
	call z,sub_0038h		;4b79
	nop			;4b7c
	ld c,038h		;4b7d
	ret p			;4b7f
	nop			;4b80
	nop			;4b81
	jr c,l4b64h		;4b82
	nop			;4b84
	inc e			;4b85
	inc bc			;4b86
	dec sp			;4b87
	ret p			;4b88
	call m,0f77ch		;4b89
	ld e,0deh		;4b8c
	ld (hl),b			;4b8e
	pop af			;4b8f
	rlca			;4b90
	ret nz			;4b91
	ld a,b			;4b92
	pop af			;4b93
	ld (hl),b			;4b94
	ret nz			;4b95
	add hl,de			;4b96
	inc sp			;4b97
	sbc a,b			;4b98
	jr nc,l4b9bh		;4b99
l4b9bh:
	dec d			;4b9b
	nop			;4b9c
	and e			;4b9d
	inc c			;4b9e
	nop			;4b9f
	call z,sub_0070h		;4ba0
	nop			;4ba3
	inc e			;4ba4
	ld (hl),b			;4ba5
	ret po			;4ba6
	nop			;4ba7
	nop			;4ba8
	ld (hl),b			;4ba9
	ret po			;4baa
	nop			;4bab
	jr c,l4bb5h		;4bac
	ld (hl),b			;4bae
	jr nc,$+28		;4baf
	ld a,h			;4bb1
	rst 20h			;4bb2
	ld a,0dch		;4bb3
l4bb5h:
	ld (hl),b			;4bb5
	ret po			;4bb6
	ld c,0e0h		;4bb7
	ld (hl),c			;4bb9
	ret po			;4bba
	ret nz			;4bbb
	ret po			;4bbc
	add hl,de			;4bbd
	inc sp			;4bbe
	sbc a,b			;4bbf
	jr nc,l4bc2h		;4bc0
l4bc2h:
	add a,h			;4bc2
	nop			;4bc3
	rra			;4bc4
	nop			;4bc5
	rst 38h			;4bc6
	inc bc			;4bc7
	nop			;4bc8
	sub c			;4bc9
	ret po			;4bca
	nop			;4bcb
	jr c,l4bceh		;4bcc
l4bceh:
	rlca			;4bce
	nop			;4bcf
	ccf			;4bd0
	nop			;4bd1
	cp 000h		;4bd2
	jr c,l4bd6h		;4bd4
l4bd6h:
	rlca			;4bd6
	ccf			;4bd7
	inc c			;4bd8
	rst 38h			;4bd9
	call z,l7f02h		;4bda
	ld (bc),a			;4bdd
	call m,sub_7f9ch		;4bde
	rst 38h			;4be1
	cp 0fch		;4be2
	ld (hl),b			;4be4
	rst 38h			;4be5
	ld a,(hl)			;4be6
	ret m			;4be7
	ld c,0e0h		;4be8
	jr c,l4bfah		;4bea
	ld a,h			;4bec
	ex (sp),hl			;4bed
	ld a,(hl)			;4bee
	sbc a,h			;4bef
	ld (hl),a			;4bf0
	ret po			;4bf1
	cp 070h		;4bf2
	ld (hl),a			;4bf4
	ret po			;4bf5
	nop			;4bf6
	ld a,b			;4bf7
	add hl,de			;4bf8
	inc sp			;4bf9
l4bfah:
	sbc a,b			;4bfa
	jr nc,l4bfdh		;4bfb
l4bfdh:
	cp b			;4bfd
	nop			;4bfe
	ccf			;4bff
l4c00h:
	nop			;4c00
l4c01h:
	cp 000h		;4c01
	ld bc,0e000h		;4c03
	nop			;4c06
	jr c,l4c09h		;4c07
l4c09h:
	rrca			;4c09
	nop			;4c0a
	ccf			;4c0b
	nop			;4c0c
	rst 38h			;4c0d
	nop			;4c0e
	jr c,l4c11h		;4c0f
l4c11h:
	inc e			;4c11
	inc c			;4c12
	dec e			;4c13
	call z,03fdch		;4c14
	rst 38h			;4c17
	cp 0f8h		;4c18
	ld a,a			;4c1a
	ld a,a			;4c1b
	call m,070f8h		;4c1c
	ld a,a			;4c1f
	call m,l1defh+1		;4c20
	ret nz			;4c23
	ret m			;4c24
	ld c,076h		;4c25
	ex (sp),hl			;4c27
	xor 01ch		;4c28
	ld (hl),e			;4c2a
	ret po			;4c2b
	call m,07338h		;4c2c
	ret po			;4c2f
	add a,b			;4c30
	inc e			;4c31
	dec sp			;4c32
	rst 38h			;4c33
	cp b			;4c34
	call m,0c000h		;4c35
	jr l4c53h		;4c38
	dec de			;4c3a
	inc e			;4c3b
	ld e,01fh		;4c3c
	ld hl,sub_2320h+2		;4c3e
	dec h			;4c41
	ld h,028h		;4c42
	ld hl,(02f2dh)		;4c44
	ld (l3734h),a		;4c47
	add hl,sp			;4c4a
	inc a			;4c4b
	ld a,041h		;4c4c
	ld b,h			;4c4e
	ld b,a			;4c4f
	ld c,c			;4c50
	ld c,h			;4c51
	ld c,a			;4c52
l4c53h:
	ld d,d			;4c53
	ld d,l			;4c54
	ld e,b			;4c55
	ld e,d			;4c56
	ld e,l			;4c57
	ld h,b			;4c58
	ld h,e			;4c59
	ld h,a			;4c5a
	ld l,d			;4c5b
	ld l,l			;4c5c
	ld (hl),b			;4c5d
	ld (hl),e			;4c5e
	halt			;4c5f
	ld a,d			;4c60
	ld a,l			;4c61
	add a,b			;4c62
	add a,e			;4c63
	adc a,b			;4c64
	adc a,(hl)			;4c65
	sub e			;4c66
	sbc a,c			;4c67
	sbc a,(hl)			;4c68
	and e			;4c69
	xor c			;4c6a
	xor (hl)			;4c6b
	or h			;4c6c
	cp c			;4c6d
	cp a			;4c6e
	call nz,0cfcah		;4c6f
	push de			;4c72
	jp c,0e5e0h		;4c73
	ex de,hl			;4c76
	ret p			;4c77
	inc c			;4c78
	nop			;4c79
	call p,0c3c0h		;4c7a
	push bc			;4c7d
	ret z			;4c7e
	set 1,l		;4c7f
	ret nc			;4c81
	out (0d5h),a		;4c82
	ret c			;4c84
	in a,(0ddh)		;4c85
	ret po			;4c87
	ex (sp),hl			;4c88
	push hl			;4c89
	ret pe			;4c8a
	ex de,hl			;4c8b
	.DB 0edh;next byte illegal after ed		;4c8c
	ret p			;4c8d
	di			;4c8e
	push af			;4c8f
	ret m			;4c90
	ei			;4c91
	.DB 0fdh,000h,003h	;illegal sequence		;4c92
	dec b			;4c95
	ex af,af'			;4c96
	dec bc			;4c97
	dec c			;4c98
	djnz l4caeh		;4c99
	dec d			;4c9b
	jr l4cb9h		;4c9c
	dec e			;4c9e
	jr nz,l4cc4h		;4c9f
	dec h			;4ca1
	jr z,l4ccfh		;4ca2
	dec l			;4ca4
	jr nc,l4cdah		;4ca5
	dec (hl)			;4ca7
	jr c,l4ce5h		;4ca8
	dec a			;4caa
	ld b,b			;4cab
	ld b,e			;4cac
	ld b,l			;4cad
l4caeh:
	ld c,b			;4cae
	ld c,e			;4caf
	ld c,l			;4cb0
	ld d,b			;4cb1
	ld d,e			;4cb2
	ld d,l			;4cb3
	ld e,b			;4cb4
	ld e,e			;4cb5
	ld e,l			;4cb6
	ld h,b			;4cb7
	ld h,e			;4cb8
l4cb9h:
	ld h,l			;4cb9
	ld l,b			;4cba
	ld l,e			;4cbb
	ld l,l			;4cbc
	ld (hl),b			;4cbd
	ld (hl),e			;4cbe
	ld (hl),l			;4cbf
	ld a,b			;4cc0
	ld a,e			;4cc1
	ld a,l			;4cc2
	add a,b			;4cc3
l4cc4h:
	add a,e			;4cc4
	add a,l			;4cc5
	adc a,b			;4cc6
	adc a,e			;4cc7
	adc a,l			;4cc8
	sub b			;4cc9
	sub e			;4cca
	sub l			;4ccb
	sbc a,b			;4ccc
	sbc a,e			;4ccd
	sbc a,l			;4cce
l4ccfh:
	and b			;4ccf
	and e			;4cd0
	and l			;4cd1
	xor b			;4cd2
	xor e			;4cd3
	xor l			;4cd4
	or b			;4cd5
	or e			;4cd6
	or l			;4cd7
	cp b			;4cd8
	cp e			;4cd9
l4cdah:
	cp l			;4cda
	ret nz			;4cdb
	jp 0c8c5h		;4cdc
	set 1,l		;4cdf
	ret nc			;4ce1
	out (0d5h),a		;4ce2
	ret c			;4ce4
l4ce5h:
	in a,(0ddh)		;4ce5
	ret po			;4ce7
	ex (sp),hl			;4ce8
	push hl			;4ce9
	ret pe			;4cea
	ex de,hl			;4ceb
	.DB 0edh;next byte illegal after ed		;4cec
	ret p			;4ced
	di			;4cee
	inc c			;4cef
	nop			;4cf0
	and l			;4cf1
	ret nz			;4cf2
	jp nz,0c5c4h		;4cf3
	rst 0			;4cf6
	ret			;4cf7
	set 1,h		;4cf8
	adc a,0d0h		;4cfa
	jp nc,0d5d4h		;4cfc
l4cffh:
	rst 10h			;4cff
	exx			;4d00
	in a,(0dch)		;4d01
	sbc a,0e0h		;4d03
	jp po,0e5e4h		;4d05
	rst 20h			;4d08
	jp (hl)			;4d09
	ex de,hl			;4d0a
	call pe,0f0eeh		;4d0b
	jp p,0f5f4h		;4d0e
	rst 30h			;4d11
	ld sp,hl			;4d12
	ei			;4d13
	call m,000feh		;4d14
	ld (bc),a			;4d17
	ld bc,l0201h+1		;4d18
	inc bc			;4d1b
	inc bc			;4d1c
	inc bc			;4d1d
	inc b			;4d1e
	inc bc			;4d1f
	dec b			;4d20
	ld (bc),a			;4d21
	ld b,003h		;4d22
	rlca			;4d24
	inc bc			;4d25
	ex af,af'			;4d26
	inc bc			;4d27
	add hl,bc			;4d28
	ld (bc),a			;4d29
	ld a,(bc)			;4d2a
	inc bc			;4d2b
	dec bc			;4d2c
	inc bc			;4d2d
	inc c			;4d2e
	inc bc			;4d2f
	dec c			;4d30
	ld (bc),a			;4d31
	ld c,003h		;4d32
	rrca			;4d34
	inc bc			;4d35
	djnz l4d3bh		;4d36
	ld de,01202h		;4d38
l4d3bh:
	inc bc			;4d3b
	inc de			;4d3c
	inc bc			;4d3d
	inc d			;4d3e
	inc bc			;4d3f
	dec d			;4d40
	ld (bc),a			;4d41
	ld d,003h		;4d42
	rla			;4d44
	inc bc			;4d45
	jr l4d4bh		;4d46
	add hl,de			;4d48
	ld (bc),a			;4d49
	ld a,(de)			;4d4a
l4d4bh:
	inc bc			;4d4b
	dec de			;4d4c
	inc bc			;4d4d
	inc e			;4d4e
	inc bc			;4d4f
	dec e			;4d50
	or b			;4d51
	nop			;4d52
	ld a,(bc)			;4d53
	ld d,021h		;4d54
	inc l			;4d56
	inc sp			;4d57
	add hl,sp			;4d58
	ccf			;4d59
	ld b,(hl)			;4d5a
	ld c,h			;4d5b
	ld d,e			;4d5c
	ld e,b			;4d5d
	ld e,(hl)			;4d5e
	ld h,e			;4d5f
	ld l,c			;4d60
	ld l,a			;4d61
	ld (hl),h			;4d62
	ld a,d			;4d63
	add a,b			;4d64
	add a,l			;4d65
	adc a,d			;4d66
	adc a,a			;4d67
	sub h			;4d68
	sbc a,c			;4d69
	sbc a,(hl)			;4d6a
	and e			;4d6b
	xor b			;4d6c
	xor l			;4d6d
	or c			;4d6e
	or l			;4d6f
	cp c			;4d70
	cp l			;4d71
	pop bc			;4d72
	push bc			;4d73
	ret			;4d74
	call 0d5d1h		;4d75
	exx			;4d78
	pop ix		;4d79
	push hl			;4d7b
	jp (hl)			;4d7c
	.DB 0edh;next byte illegal after ed		;4d7d
	pop af			;4d7e
	push af			;4d7f
	ld sp,hl			;4d80
	.DB 0fdh,000h,0c0h	;illegal sequence		;4d81
	jr l4da0h		;4d84
	dec de			;4d86
	dec e			;4d87
	ld e,01fh		;4d88
	ld hl,02422h		;4d8a
	dec h			;4d8d
	daa			;4d8e
	jr z,$+43		;4d8f
	dec l			;4d91
	jr nc,l4dc6h		;4d92
	dec (hl)			;4d94
	scf			;4d95
	ld a,(l3f3ch)		;4d96
	ld b,d			;4d99
	ld b,l			;4d9a
	ld b,a			;4d9b
	ld c,d			;4d9c
	ld c,l			;4d9d
	ld d,b			;4d9e
	ld d,e			;4d9f
l4da0h:
	ld d,l			;4da0
	ld e,b			;4da1
	ld e,e			;4da2
	ld e,(hl)			;4da3
	ld h,c			;4da4
	ld h,h			;4da5
	ld h,a			;4da6
	ld l,d			;4da7
	ld l,(hl)			;4da8
	ld (hl),c			;4da9
	ld (hl),h			;4daa
	ld (hl),a			;4dab
	ld a,d			;4dac
	ld a,l			;4dad
	add a,c			;4dae
	add a,h			;4daf
	adc a,c			;4db0
	adc a,a			;4db1
	sub h			;4db2
	sbc a,d			;4db3
	sbc a,a			;4db4
	and l			;4db5
	xor d			;4db6
	or b			;4db7
	or l			;4db8
	cp e			;4db9
	ret nz			;4dba
	add a,0cbh		;4dbb
	pop de			;4dbd
	sub 0dch		;4dbe
	pop hl			;4dc0
	rst 20h			;4dc1
	call pe,l24f0h+1		;4dc2
	nop			;4dc5
l4dc6h:
	ld e,h			;4dc6
	ld bc,l0030h		;4dc7
	ld d,b			;4dca
	ld bc,l02b0h		;4dcb
	dec c			;4dce
	jr $+36		;4dcf
	ld l,034h		;4dd1
	dec sp			;4dd3
	ld b,c			;4dd4
	ld b,a			;4dd5
	ld c,(hl)			;4dd6
	ld d,h			;4dd7
	ld e,c			;4dd8
	ld e,a			;4dd9
	ld h,l			;4dda
	ld l,d			;4ddb
	ld (hl),b			;4ddc
	halt			;4ddd
	ld a,h			;4dde
	add a,c			;4ddf
	add a,(hl)			;4de0
	adc a,e			;4de1
	sub b			;4de2
	sub l			;4de3
	sbc a,d			;4de4
	sbc a,a			;4de5
	and h			;4de6
	xor c			;4de7
	xor (hl)			;4de8
	or d			;4de9
	or (hl)			;4dea
	cp d			;4deb
	cp (hl)			;4dec
	jp nz,0cac6h		;4ded
	adc a,0d2h		;4df0
	sub 0dah		;4df2
	sbc a,0e2h		;4df4
	and 0eah		;4df6
	xor 0f2h		;4df8
	or 0fah		;4dfa
	cp 000h		;4dfc
	ret nz			;4dfe
	add hl,de			;4dff
	ld a,(de)			;4e00
l4e01h:
	inc e			;4e01
	dec e			;4e02
	ld e,020h		;4e03
l4e05h:
	ld hl,l2423h		;4e05
	ld h,027h		;4e08
	add hl,hl			;4e0a
	dec hl			;4e0b
	ld l,030h		;4e0c
	inc sp			;4e0e
	dec (hl)			;4e0f
	jr c,l4e4ch		;4e10
	dec a			;4e12
	ccf			;4e13
	ld b,d			;4e14
	ld b,l			;4e15
	ld c,b			;4e16
	ld c,e			;4e17
	ld c,(hl)			;4e18
	ld d,c			;4e19
	ld d,e			;4e1a
	ld d,(hl)			;4e1b
	ld e,c			;4e1c
	ld e,h			;4e1d
	ld e,a			;4e1e
	ld h,d			;4e1f
	ld h,l			;4e20
	ld l,b			;4e21
	ld l,e			;4e22
	ld l,(hl)			;4e23
	ld (hl),d			;4e24
	ld (hl),l			;4e25
	ld a,b			;4e26
	ld a,e			;4e27
	ld a,(hl)			;4e28
	add a,c			;4e29
	add a,l			;4e2a
	adc a,e			;4e2b
	sub b			;4e2c
	sub (hl)			;4e2d
	sbc a,e			;4e2e
	and c			;4e2f
	and (hl)			;4e30
	xor h			;4e31
	or c			;4e32
	or a			;4e33
	cp h			;4e34
	jp nz,0cdc7h		;4e35
	jp nc,0ddd7h		;4e38
	jp po,0ede8h		;4e3b
	di			;4e3e
	inc c			;4e3f
	nop			;4e40
	call p,0c4c1h		;4e41
	rst 0			;4e44
	ret			;4e45
	call z,0d1cfh		;4e46
	call nc,0d9d7h		;4e49
l4e4ch:
	call c,0e1dfh		;4e4c
	call po,0e9e7h		;4e4f
	call pe,0f1efh		;4e52
	call p,0f9f7h		;4e55
	call m,l01feh+1		;4e58
	inc b			;4e5b
	rlca			;4e5c
	add hl,bc			;4e5d
	inc c			;4e5e
	rrca			;4e5f
	ld de,l1714h		;4e60
	add hl,de			;4e63
	inc e			;4e64
	rra			;4e65
	ld hl,02724h		;4e66
	add hl,hl			;4e69
	inc l			;4e6a
	cpl			;4e6b
	ld sp,l3734h		;4e6c
	add hl,sp			;4e6f
	inc a			;4e70
	ccf			;4e71
	ld b,c			;4e72
	ld b,h			;4e73
	ld b,a			;4e74
	ld c,c			;4e75
	ld c,h			;4e76
	ld c,a			;4e77
	ld d,c			;4e78
	ld d,h			;4e79
	ld d,a			;4e7a
	ld e,c			;4e7b
	ld e,h			;4e7c
	ld e,a			;4e7d
	ld h,c			;4e7e
	ld h,h			;4e7f
	ld h,a			;4e80
	ld l,c			;4e81
	ld l,h			;4e82
	ld l,a			;4e83
	ld (hl),c			;4e84
	ld (hl),h			;4e85
	ld (hl),a			;4e86
	ld a,c			;4e87
	ld a,h			;4e88
	ld a,a			;4e89
	add a,c			;4e8a
	add a,h			;4e8b
	add a,a			;4e8c
	adc a,c			;4e8d
	adc a,h			;4e8e
	adc a,a			;4e8f
	sub c			;4e90
	sub h			;4e91
	sub a			;4e92
	sbc a,c			;4e93
	sbc a,h			;4e94
	sbc a,a			;4e95
	and c			;4e96
	and h			;4e97
	and a			;4e98
	xor c			;4e99
	xor h			;4e9a
	xor a			;4e9b
	or c			;4e9c
	or h			;4e9d
	or a			;4e9e
	cp c			;4e9f
	cp h			;4ea0
	cp a			;4ea1
	pop bc			;4ea2
	call nz,0c9c7h		;4ea3
	call z,0d1cfh		;4ea6
	call nc,0d9d7h		;4ea9
	call c,0e1dfh		;4eac
	call po,0e9e7h		;4eaf
	call pe,0f1efh		;4eb2
	call p,0000ch		;4eb5
	and h			;4eb8
	pop bc			;4eb9
	jp 0c6c4h		;4eba
	ret z			;4ebd
	jp z,0cdcch		;4ebe
	rst 8			;4ec1
	pop de			;4ec2
	out (0d4h),a		;4ec3
	sub 0d8h		;4ec5
	jp c,0dddch		;4ec7
	rst 18h			;4eca
	pop hl			;4ecb
	ex (sp),hl			;4ecc
	call po,0e8e6h		;4ecd
	jp pe,0edech		;4ed0
	rst 28h			;4ed3
	pop af			;4ed4
	di			;4ed5
	call p,0f8f6h		;4ed6
	jp m,0fdfch		;4ed9
	rst 38h			;4edc
	ld (bc),a			;4edd
	ld bc,l0203h		;4ede
	inc bc			;4ee1
	inc bc			;4ee2
	ld (bc),a			;4ee3
	inc b			;4ee4
	inc bc			;4ee5
	dec b			;4ee6
	inc bc			;4ee7
	ld b,003h		;4ee8
	rlca			;4eea
	ld (bc),a			;4eeb
	ex af,af'			;4eec
	inc bc			;4eed
	add hl,bc			;4eee
	inc bc			;4eef
	ld a,(bc)			;4ef0
	inc bc			;4ef1
	dec bc			;4ef2
	ld (bc),a			;4ef3
	inc c			;4ef4
	inc bc			;4ef5
	dec c			;4ef6
	inc bc			;4ef7
	ld c,003h		;4ef8
	rrca			;4efa
	ld (bc),a			;4efb
	djnz l4f01h		;4efc
	ld de,l1203h		;4efe
l4f01h:
	inc bc			;4f01
	inc de			;4f02
	ld (bc),a			;4f03
	inc d			;4f04
	inc bc			;4f05
	dec d			;4f06
	inc bc			;4f07
	ld d,003h		;4f08
	rla			;4f0a
	ld (bc),a			;4f0b
	jr l4f11h		;4f0c
	add hl,de			;4f0e
	inc bc			;4f0f
	ld a,(de)			;4f10
l4f11h:
	inc bc			;4f11
	dec de			;4f12
	ld (bc),a			;4f13
	inc e			;4f14
	inc bc			;4f15
	dec e			;4f16
	or c			;4f17
	ld e,005h		;4f18
	djnz l4f37h		;4f1a
	ld h,02fh		;4f1c
	ld (hl),03ch		;4f1e
	ld b,e			;4f20
	ld c,c			;4f21
	ld c,a			;4f22
	ld d,l			;4f23
	ld e,e			;4f24
	ld h,c			;4f25
	ld h,(hl)			;4f26
	ld l,h			;4f27
	ld (hl),d			;4f28
	ld (hl),a			;4f29
	ld a,l			;4f2a
	add a,d			;4f2b
	add a,a			;4f2c
	adc a,h			;4f2d
	sub c			;4f2e
	sub (hl)			;4f2f
	sbc a,e			;4f30
	and b			;4f31
	and (hl)			;4f32
	xor e			;4f33
	xor a			;4f34
	or e			;4f35
	or a			;4f36
l4f37h:
	cp e			;4f37
	cp a			;4f38
	jp 0cbc7h		;4f39
	rst 8			;4f3c
	out (0d7h),a		;4f3d
	in a,(0dfh)		;4f3f
	ex (sp),hl			;4f41
	rst 20h			;4f42
	ex de,hl			;4f43
	rst 28h			;4f44
	di			;4f45
	rst 30h			;4f46
	ei			;4f47
	rst 38h			;4f48
	nop			;4f49
	ret nz			;4f4a
	add hl,de			;4f4b
	ld a,(de)			;4f4c
	inc e			;4f4d
	dec e			;4f4e
	rra			;4f4f
	jr nz,l4f74h		;4f50
	inc hl			;4f52
	inc h			;4f53
	ld h,027h		;4f54
	ld hl,(02f2ch)		;4f56
	ld sp,03634h		;4f59
	add hl,sp			;4f5c
	dec sp			;4f5d
	ld a,040h		;4f5e
	ld b,e			;4f60
	ld b,(hl)			;4f61
	ld c,c			;4f62
	ld c,h			;4f63
	ld c,(hl)			;4f64
	ld d,c			;4f65
	ld d,h			;4f66
	ld d,a			;4f67
	ld e,d			;4f68
	ld e,h			;4f69
	ld e,a			;4f6a
	ld h,e			;4f6b
	ld h,(hl)			;4f6c
	ld l,c			;4f6d
	ld l,h			;4f6e
	ld l,a			;4f6f
	ld (hl),d			;4f70
	halt			;4f71
	ld a,c			;4f72
	ld a,h			;4f73
l4f74h:
	ld a,a			;4f74
	add a,d			;4f75
	add a,a			;4f76
	adc a,h			;4f77
	sub d			;4f78
	sub a			;4f79
	sbc a,l			;4f7a
	and d			;4f7b
	xor b			;4f7c
	xor l			;4f7d
	or e			;4f7e
	cp b			;4f7f
	cp l			;4f80
	jp 0cec8h		;4f81
	out (0d9h),a		;4f84
	sbc a,0e4h		;4f86
	jp (hl)			;4f88
	rst 28h			;4f89
	call p,00024h		;4f8a
	ld e,h			;4f8d
	ld bc,l0030h		;4f8e
	ld d,b			;4f91
	ld bc,008b0h		;4f92
	inc de			;4f95
	ld e,029h		;4f96
	ld sp,l3e37h		;4f98
	ld b,h			;4f9b
	ld c,e			;4f9c
	ld d,c			;4f9d
	ld d,a			;4f9e
	ld e,h			;4f9f
	ld h,d			;4fa0
	ld l,b			;4fa1
	ld l,l			;4fa2
	ld (hl),e			;4fa3
	ld a,c			;4fa4
	ld a,(hl)			;4fa5
	add a,e			;4fa6
	adc a,b			;4fa7
	adc a,(hl)			;4fa8
	sub e			;4fa9
	sbc a,b			;4faa
	sbc a,l			;4fab
	and d			;4fac
	and a			;4fad
	xor h			;4fae
	or b			;4faf
	or h			;4fb0
	cp b			;4fb1
	cp h			;4fb2
	ret nz			;4fb3
	call nz,0ccc8h		;4fb4
	ret nc			;4fb7
	call nc,0dcd8h		;4fb8
	ret po			;4fbb
	call po,0ece8h		;4fbc
	ret p			;4fbf
	call p,0fcf8h		;4fc0
	rst 38h			;4fc3
	nop			;4fc4
l4fc5h:
	ld (bc),a			;4fc5
	rst 38h			;4fc6
	add a,h			;4fc7
	.DB 0fdh,0d5h,084h	;illegal sequence		;4fc8
	adc a,004h		;4fcb
	rst 38h			;4fcd
	sub (hl)			;4fce
	ccf			;4fcf
	ld a,c			;4fd0
	add hl,sp			;4fd1
	ld a,c			;4fd2
	ex (sp),hl			;4fd3
	pop hl			;4fd4
	rst 38h			;4fd5
	rst 38h			;4fd6
	adc a,(hl)			;4fd7
	adc a,h			;4fd8
	call c,sub_058fh		;4fd9
	inc b			;4fdc
	rst 38h			;4fdd
	rst 38h			;4fde
	ld a,a			;4fdf
	ld sp,0fb31h		;4fe0
	cp e			;4fe3
	ccf			;4fe4
	inc bc			;4fe5
	rst 38h			;4fe6
	adc a,l			;4fe7
	xor c			;4fe8
	xor e			;4fe9
	and c			;4fea
	ex (sp),hl			;4feb
	pop bc			;4fec
	sbc a,a			;4fed
	add a,d			;4fee
	xor (hl)			;4fef
	jp z,0eafah		;4ff0
	jp pe,030aah		;4ff3
	rst 38h			;4ff6
	ex af,af'			;4ff7
	xor d			;4ff8
	jr nz,$-1		;4ff9
	inc bc			;4ffb
	xor e			;4ffc
	inc bc			;4ffd
	xor a			;4ffe
	ld (bc),a			;4fff
l5000h:
	cp a			;5000
	ex af,af'			;5001
	rst 38h			;5002
	inc b			;5003
	xor d			;5004
	inc bc			;5005
	xor e			;5006
	add a,d			;5007
	xor a			;5008
	cp a			;5009
	rlca			;500a
	rst 38h			;500b
	ld (bc),a			;500c
	xor a			;500d
	inc bc			;500e
	cp a			;500f
	ld b,0ffh		;5010
	inc bc			;5012
	cp 002h		;5013
	call m,l0000h+2		;5015
	add a,c			;5018
	ccf			;5019
	inc bc			;501a
	ld a,a			;501b
	ld (bc),a			;501c
	rst 38h			;501d
	ld (bc),a			;501e
	nop			;501f
	ld (bc),a			;5020
	rst 20h			;5021
	inc b			;5022
	rst 8			;5023
	ld (bc),a			;5024
	nop			;5025
	ld b,0ffh		;5026
	ld (bc),a			;5028
	nop			;5029
	ld (bc),a			;502a
	cp 004h		;502b
	rst 38h			;502d
	add a,c			;502e
	call m,0f903h		;502f
	inc bc			;5032
	di			;5033
	add a,c			;5034
	rst 20h			;5035
	ex af,af'			;5036
	rst 38h			;5037
	inc b			;5038
	sbc a,a			;5039
	inc b			;503a
	ccf			;503b
	ld (bc),a			;503c
	rst 20h			;503d
	inc bc			;503e
	rst 8			;503f
	inc bc			;5040
	sbc a,a			;5041
	inc b			;5042
	cp 004h		;5043
	call m,sub_7f04h		;5045
	inc bc			;5048
	rst 38h			;5049
	add a,c			;504a
	nop			;504b
	rlca			;504c
	rst 38h			;504d
	add a,c			;504e
	nop			;504f
	inc bc			;5050
	rst 38h			;5051
	add a,l			;5052
	jp (hl)			;5053
	ex de,hl			;5054
	ret p			;5055
	pop bc			;5056
	jp l3f03h		;5057
	inc bc			;505a
	ld a,a			;505b
	ld (bc),a			;505c
	rst 38h			;505d
	add a,c			;505e
	ret m			;505f
	inc bc			;5060
	ld sp,hl			;5061
	inc b			;5062
	di			;5063
	add a,c			;5064
	nop			;5065
	rlca			;5066
	cp 08ah		;5067
	ei			;5069
	cp 00fh		;506a
	ld c,a			;506c
	ld l,a			;506d
	ld hl,09fbfh		;506e
	rst 38h			;5071
	ld a,a			;5072
	dec b			;5073
	rst 38h			;5074
	add a,c			;5075
	rst 18h			;5076
	inc b			;5077
	rst 20h			;5078
	inc b			;5079
	rst 8			;507a
	ex af,af'			;507b
	cp 090h		;507c
	pop bc			;507e
	cp 0c1h		;507f
	ret			;5081
	ret			;5082
	xor 0dah		;5083
	add a,a			;5085
	rst 38h			;5086
	ccf			;5087
	rst 38h			;5088
	rst 18h			;5089
	rst 18h			;508a
	rst 28h			;508b
	cpl			;508c
	rst 10h			;508d
	ld (bc),a			;508e
	rst 38h			;508f
	ld b,06fh		;5090
	ld a,(bc)			;5092
	rst 38h			;5093
	add a,l			;5094
	rst 28h			;5095
	rst 38h			;5096
	rst 28h			;5097
	rst 38h			;5098
	cp a			;5099
	dec bc			;509a
	rst 38h			;509b
	add a,l			;509c
	cp a			;509d
	rst 38h			;509e
	cp a			;509f
	rst 38h			;50a0
	cp a			;50a1
	inc bc			;50a2
	rst 38h			;50a3
	adc a,b			;50a4
	cp 0ffh		;50a5
	cp 0ffh		;50a7
	cp 0ffh		;50a9
	adc a,c			;50ab
	in a,(004h)		;50ac
	cp e			;50ae
	add a,d			;50af
	dec sp			;50b0
	nop			;50b1
	inc b			;50b2
	ld a,e			;50b3
	add a,h			;50b4
	ld a,l			;50b5
	cp l			;50b6
	cp l			;50b7
	sbc a,c			;50b8
	rlca			;50b9
	ld l,a			;50ba
	add a,c			;50bb
	sbc a,a			;50bc
	inc b			;50bd
	rst 38h			;50be
	add a,a			;50bf
	cp 0ffh		;50c0
	cp 0ffh		;50c2
	cp a			;50c4
	rst 38h			;50c5
	cp a			;50c6
	dec b			;50c7
	rst 38h			;50c8
	add a,a			;50c9
	cp 0ffh		;50ca
	cp 0ffh		;50cc
	cp 0ffh		;50ce
	cp 009h		;50d0
	rst 38h			;50d2
	add a,d			;50d3
	ret p			;50d4
	ret nz			;50d5
	ld (bc),a			;50d6
	add a,b			;50d7
	inc b			;50d8
	nop			;50d9
	add a,d			;50da
	rrca			;50db
	inc bc			;50dc
	ld b,000h		;50dd
	add a,l			;50df
	rst 38h			;50e0
	ld a,a			;50e1
	ld a,a			;50e2
	ld e,e			;50e3
	ld e,c			;50e4
	ld (bc),a			;50e5
	ld d,a			;50e6
	inc b			;50e7
	ld d,l			;50e8
	inc bc			;50e9
	push de			;50ea
	ld (bc),a			;50eb
	push af			;50ec
	inc b			;50ed
	nop			;50ee
	ld (bc),a			;50ef
	add a,b			;50f0
	add a,e			;50f1
	ret nz			;50f2
	ret p			;50f3
	push af			;50f4
	inc bc			;50f5
	.DB 0fdh,004h,0ffh	;illegal sequence		;50f6
	inc b			;50f9
	sbc a,a			;50fa
	inc b			;50fb
	rst 8			;50fc
	inc b			;50fd
	cp 004h		;50fe
	rst 38h			;5100
l5101h:
	ld (bc),a			;5101
	ld a,a			;5102
	ld (bc),a			;5103
	nop			;5104
	ld b,0ffh		;5105
	ld (bc),a			;5107
	nop			;5108
	inc b			;5109
	rst 38h			;510a
	ld (bc),a			;510b
	sbc a,a			;510c
	ld (bc),a			;510d
	rra			;510e
	inc b			;510f
	rst 8			;5110
	ld (bc),a			;5111
	rst 38h			;5112
	inc b			;5113
	ld a,a			;5114
	ld (bc),a			;5115
	nop			;5116
	inc b			;5117
	ld sp,hl			;5118
	ld (bc),a			;5119
	call m,l0000h+2		;511a
	ld (bc),a			;511d
	rst 20h			;511e
	inc bc			;511f
	di			;5120
	add a,c			;5121
	ld sp,hl			;5122
	ld (bc),a			;5123
	ld bc,l0004h		;5124
	add a,c			;5127
	add a,b			;5128
	inc bc			;5129
	rst 38h			;512a
	add a,l			;512b
	ld bc,00331h		;512c
	rlca			;512f
	rra			;5130
	ex af,af'			;5131
	rst 38h			;5132
	inc bc			;5133
	ret m			;5134
	dec b			;5135
	rst 38h			;5136
	inc bc			;5137
	nop			;5138
	dec b			;5139
	rst 38h			;513a
	inc bc			;513b
	jr l5140h		;513c
	cp 003h		;513e
l5140h:
	rst 38h			;5140
	inc bc			;5141
	nop			;5142
	ld (bc),a			;5143
	ld a,a			;5144
	inc bc			;5145
	rst 38h			;5146
	inc bc			;5147
	jr l5152h		;5148
	ret m			;514a
	ex af,af'			;514b
	jr l5166h		;514c
	nop			;514e
	inc bc			;514f
	ret m			;5150
	ld (bc),a			;5151
l5152h:
	rst 38h			;5152
	inc bc			;5153
	ret m			;5154
	inc bc			;5155
	nop			;5156
	ld (bc),a			;5157
	rst 38h			;5158
	inc bc			;5159
	nop			;515a
	inc bc			;515b
	jr l5160h		;515c
	rst 38h			;515e
	inc bc			;515f
l5160h:
	jr l5164h		;5160
	ret m			;5162
	ld (bc),a			;5163
l5164h:
	jr c,l516ah		;5164
l5166h:
	ret m			;5166
	add a,c			;5167
	and b			;5168
	inc bc			;5169
l516ah:
	add a,b			;516a
	dec b			;516b
	nop			;516c
	adc a,c			;516d
	add a,c			;516e
	pop bc			;516f
	ex (sp),hl			;5170
	rst 20h			;5171
	rst 28h			;5172
	rst 38h			;5173
	rst 38h			;5174
	or b			;5175
	ret nz			;5176
	ld (bc),a			;5177
	add a,b			;5178
	inc b			;5179
	nop			;517a
	inc bc			;517b
	rst 38h			;517c
	ld (bc),a			;517d
	push af			;517e
	add a,e			;517f
	ld sp,hl			;5180
	pop bc			;5181
	jp 0ff03h		;5182
	add a,l			;5185
	and c			;5186
	xor e			;5187
	pop bc			;5188
	pop bc			;5189
	jp 0b000h		;518a
	add a,h			;518d
	nop			;518e
	ld (bc),a			;518f
	ld hl,(0b57bh)		;5190
	ld a,e			;5193
	ld a,e			;5194
	inc hl			;5195
	ld bc,086c0h		;5196
	add a,086h		;5199
	pop bc			;519b
	ret nz			;519c
	inc b			;519d
	nop			;519e
	ld (hl),c			;519f
	ld (hl),e			;51a0
	xor e			;51a1
	ld (hl),l			;51a2
	inc hl			;51a3
	inc bc			;51a4
	ld sp,08000h		;51a5
	adc a,0ceh		;51a8
	or l			;51aa
	adc a,0ceh		;51ab
	add a,c			;51ad
	nop			;51ae
	nop			;51af
	ld d,(hl)			;51b0
	ld d,h			;51b1
	ld e,(hl)			;51b2
	cp (ix+072h)		;51b3
	ld a,l			;51b6
	ld d,c			;51b7
	or l			;51b8
	ld h,l			;51b9
	ld d,l			;51ba
	dec d			;51bb
	ld d,l			;51bc
	jr nc,l51bfh		;51bd
l51bfh:
	ex af,af'			;51bf
	ld d,l			;51c0
	jr nz,l51c3h		;51c1
l51c3h:
	add a,c			;51c3
	ld d,l			;51c4
	inc bc			;51c5
	ld d,a			;51c6
	inc bc			;51c7
	ld e,a			;51c8
	add a,c			;51c9
	ld a,a			;51ca
	ex af,af'			;51cb
	rst 38h			;51cc
	dec b			;51cd
	ld d,l			;51ce
	inc bc			;51cf
	ld d,a			;51d0
	ld (bc),a			;51d1
	ld a,a			;51d2
	ld b,0ffh		;51d3
	inc bc			;51d5
	ld e,a			;51d6
	inc bc			;51d7
	ld a,a			;51d8
	ld h,d			;51d9
	rst 38h			;51da
	adc a,b			;51db
	add a,c			;51dc
	nop			;51dd
	nop			;51de
	rla			;51df
	dec d			;51e0
	adc a,a			;51e1
	rst 38h			;51e2
	ccf			;51e3
	jr $-1		;51e4
	add a,(hl)			;51e6
	dec b			;51e7
	ld de,0b9f0h		;51e8
	sbc a,h			;51eb
	sbc a,a			;51ec
	ld (bc),a			;51ed
	pop bc			;51ee
	ld (bc),a			;51ef
	rst 38h			;51f0
	add a,(hl)			;51f1
	ccf			;51f2
	rra			;51f3
	ld c,a			;51f4
	rrca			;51f5
	rrca			;51f6
	cpl			;51f7
	djnz $-1		;51f8
	add a,d			;51fa
	rst 18h			;51fb
	add a,c			;51fc
	inc bc			;51fd
sub_51feh:
	ex de,hl			;51fe
	sbc a,d			;51ff
l5200h:
	xor 0dah		;5200
l5202h:
	rst 38h			;5202
	rrca			;5203
	rst 38h			;5204
	rra			;5205
	rst 18h			;5206
	rst 18h			;5207
	rst 28h			;5208
	cpl			;5209
	rst 10h			;520a
	sub b			;520b
	nop			;520c
	dec b			;520d
	ld h,b			;520e
	ld h,l			;520f
	ld h,b			;5210
	ld h,l			;5211
	ld h,b			;5212
	nop			;5213
	nop			;5214
	ld d,l			;5215
	nop			;5216
	ld d,l			;5217
	nop			;5218
	ld d,l			;5219
	inc bc			;521a
	nop			;521b
	add a,l			;521c
	ld d,l			;521d
	nop			;521e
	ld d,l			;521f
	nop			;5220
	ld d,l			;5221
	inc bc			;5222
	nop			;5223
	add a,l			;5224
	ld d,l			;5225
	nop			;5226
	ld d,l			;5227
	nop			;5228
	ld d,l			;5229
	inc bc			;522a
	nop			;522b
	add a,l			;522c
	ld d,l			;522d
	nop			;522e
	ld d,l			;522f
	nop			;5230
	ld d,l			;5231
	inc bc			;5232
	nop			;5233
	adc a,b			;5234
	ld d,l			;5235
	nop			;5236
	ld d,l			;5237
	nop			;5238
	ld d,l			;5239
	nop			;523a
	ret			;523b
	in a,(004h)		;523c
	cp e			;523e
	add a,d			;523f
	ld a,e			;5240
	ld c,b			;5241
	inc b			;5242
	ld a,e			;5243
	xor e			;5244
	ld a,l			;5245
	cp l			;5246
	cp l			;5247
	sbc a,l			;5248
	ld h,l			;5249
	ld h,b			;524a
	ld h,l			;524b
	ld h,b			;524c
	ld h,l			;524d
	ld h,b			;524e
	ld h,l			;524f
	sub b			;5250
	ld d,l			;5251
	nop			;5252
	ld d,l			;5253
	nop			;5254
	ld d,l			;5255
	nop			;5256
	ld d,l			;5257
	nop			;5258
	ld d,l			;5259
	nop			;525a
	ld d,l			;525b
	nop			;525c
	ld d,l			;525d
	nop			;525e
	ld d,l			;525f
	nop			;5260
	ld d,l			;5261
	nop			;5262
	ld d,l			;5263
	nop			;5264
	ld d,l			;5265
	nop			;5266
	ld d,l			;5267
	nop			;5268
	ld d,l			;5269
	nop			;526a
	ld d,l			;526b
	nop			;526c
	ld d,l			;526d
	nop			;526e
	ld d,l			;526f
	add hl,bc			;5270
	nop			;5271
	add a,d			;5272
	inc b			;5273
	nop			;5274
	ld (bc),a			;5275
	ld bc,l0004h		;5276
	add a,a			;5279
	ld hl,08080h		;527a
	and h			;527d
	and (hl)			;527e
	xor c			;527f
	xor b			;5280
	ld b,0aah		;5281
	inc bc			;5283
	jp pe,l0004h		;5284
	ld (bc),a			;5287
	add a,b			;5288
	add a,d			;5289
	ret nz			;528a
	ret p			;528b
	inc bc			;528c
	jp m,0fe03h		;528d
	ld b,d			;5290
	rst 38h			;5291
	add a,l			;5292
	ld d,b			;5293
	ld h,b			;5294
	nop			;5295
	nop			;5296
	add a,b			;5297
	inc bc			;5298
	rst 38h			;5299
	add a,l			;529a
	adc a,c			;529b
	or c			;529c
	jp 01f07h		;529d
	dec b			;52a0
	rst 38h			;52a1
	add a,c			;52a2
	ret nz			;52a3
	ld (bc),a			;52a4
	rst 18h			;52a5
	inc bc			;52a6
	ret c			;52a7
	ld (bc),a			;52a8
	rst 38h			;52a9
	add a,c			;52aa
	nop			;52ab
	ld (bc),a			;52ac
	rst 38h			;52ad
	inc bc			;52ae
	nop			;52af
	ld (bc),a			;52b0
	rst 38h			;52b1
	add a,c			;52b2
	nop			;52b3
	ld (bc),a			;52b4
	rst 38h			;52b5
	inc bc			;52b6
	jr l52bbh		;52b7
	rst 38h			;52b9
	add a,c			;52ba
l52bbh:
	nop			;52bb
	ld (bc),a			;52bc
	rst 38h			;52bd
	inc bc			;52be
	nop			;52bf
	ld (bc),a			;52c0
	rst 38h			;52c1
	add a,c			;52c2
	nop			;52c3
	ld (bc),a			;52c4
	rst 38h			;52c5
	inc bc			;52c6
	jr l52d1h		;52c7
	ret c			;52c9
	ex af,af'			;52ca
	jr l52e5h		;52cb
	nop			;52cd
	inc bc			;52ce
	ret c			;52cf
	ld (bc),a			;52d0
l52d1h:
	rst 18h			;52d1
	inc bc			;52d2
	ret c			;52d3
	inc bc			;52d4
	nop			;52d5
	ld (bc),a			;52d6
	rst 38h			;52d7
	inc bc			;52d8
	nop			;52d9
	inc bc			;52da
	jr l52dfh		;52db
	rst 38h			;52dd
	inc bc			;52de
l52dfh:
	jr l52e9h		;52df
	ret c			;52e1
	add a,d			;52e2
	ld d,b			;52e3
	ld b,b			;52e4
l52e5h:
	rlca			;52e5
	nop			;52e6
	adc a,c			;52e7
	add a,c			;52e8
l52e9h:
	pop bc			;52e9
	ex (sp),hl			;52ea
	rst 20h			;52eb
	rst 28h			;52ec
	rst 38h			;52ed
	rst 38h			;52ee
	ld (hl),b			;52ef
	ld b,b			;52f0
	ld (bc),a			;52f1
	add a,b			;52f2
	inc b			;52f3
	nop			;52f4
	add a,c			;52f5
	add a,e			;52f6
	ld (bc),a			;52f7
	ld bc,l0b02h		;52f8
	adc a,e			;52fb
	add a,a			;52fc
	rst 38h			;52fd
	ccf			;52fe
	add a,c			;52ff
	nop			;5300
	nop			;5301
	ld e,(hl)			;5302
	ld d,l			;5303
	cp a			;5304
	rst 38h			;5305
	ccf			;5306
	nop			;5307
	ld (bc),a			;5308
	rst 38h			;5309
	adc a,h			;530a
	.DB 0fdh,0d5h,084h	;illegal sequence		;530b
	adc a,0fch		;530e
	call m,0e3ffh		;5310
	ld bc,00341h		;5313
	ld h,c			;5316
	ld (bc),a			;5317
	ccf			;5318
	ld (bc),a			;5319
	rst 38h			;531a
	add a,l			;531b
	adc a,(hl)			;531c
	adc a,h			;531d
	call c,0df8fh		;531e
	inc bc			;5321
	rst 38h			;5322
	sub (hl)			;5323
	ld a,a			;5324
	ld sp,0fb31h		;5325
	rst 38h			;5328
	rst 38h			;5329
	rst 18h			;532a
	cp a			;532b
	ccf			;532c
	add hl,hl			;532d
	dec hl			;532e
	and c			;532f
	inc hl			;5330
	ld a,a			;5331
	cp 0fch		;5332
	xor d			;5334
	jp nz,0caeah		;5335
	xor d			;5338
	ld hl,(0ff0ah)		;5339
	and e			;533c
	add a,c			;533d
	ccf			;533e
	ld b,c			;533f
	ld c,a			;5340
	daa			;5341
	sub e			;5342
	rst 38h			;5343
	rst 38h			;5344
	add a,c			;5345
	ld a,a			;5346
	ld b,c			;5347
	ld e,a			;5348
	ld b,c			;5349
	ld a,a			;534a
	rst 38h			;534b
	rst 38h			;534c
	add a,c			;534d
	ld a,a			;534e
	ld b,c			;534f
	ld e,a			;5350
	ld d,c			;5351
	ld e,l			;5352
	rst 38h			;5353
	rst 38h			;5354
	rst 20h			;5355
	in a,(0bdh)		;5356
	and l			;5358
	and l			;5359
	ld h,(hl)			;535a
	adc a,a			;535b
	rla			;535c
	daa			;535d
	daa			;535e
	adc a,a			;535f
	inc bc			;5360
	rst 38h			;5361
	ex af,af'			;5362
	xor d			;5363
	add a,l			;5364
	ret			;5365
	push hl			;5366
	dec b			;5367
	ld sp,hl			;5368
	inc bc			;5369
	inc bc			;536a
	rst 38h			;536b
	add a,l			;536c
	ld b,c			;536d
	ld e,a			;536e
	ld b,c			;536f
	ld a,a			;5370
	add a,c			;5371
	inc bc			;5372
	rst 38h			;5373
	ld (bc),a			;5374
	ld d,l			;5375
	add a,e			;5376
	ld b,l			;5377
	ld a,l			;5378
	add a,c			;5379
	inc bc			;537a
	rst 38h			;537b
	ld (bc),a			;537c
	ld e,d			;537d
	add a,e			;537e
	ld d,d			;537f
	ld e,(hl)			;5380
	ld d,b			;5381
	inc bc			;5382
	rst 38h			;5383
	add a,c			;5384
	xor d			;5385
	inc bc			;5386
	xor b			;5387
	inc bc			;5388
	and b			;5389
	add a,c			;538a
	add a,b			;538b
	ex af,af'			;538c
	nop			;538d
	dec b			;538e
	xor d			;538f
	inc bc			;5390
	xor b			;5391
	ld (bc),a			;5392
	add a,b			;5393
	ld b,000h		;5394
	inc bc			;5396
	and b			;5397
	inc bc			;5398
	add a,b			;5399
	dec b			;539a
	nop			;539b
	inc bc			;539c
	ld bc,l0302h		;539d
	ld (bc),a			;53a0
	rst 38h			;53a1
	add a,c			;53a2
	ret nz			;53a3
	inc bc			;53a4
	add a,b			;53a5
	ld (bc),a			;53a6
	nop			;53a7
	ld (bc),a			;53a8
	rst 38h			;53a9
	ld (bc),a			;53aa
	jr $+4		;53ab
	jr nc,$+2		;53ad
	rst 38h			;53af
	ld b,000h		;53b0
	ld (bc),a			;53b2
	rst 38h			;53b3
	ld (bc),a			;53b4
	ld bc,l0004h		;53b5
	add a,c			;53b8
	inc bc			;53b9
	inc bc			;53ba
	ld b,003h		;53bb
	inc c			;53bd
	add a,c			;53be
	jr l53c9h		;53bf
	nop			;53c1
	inc b			;53c2
	ld h,b			;53c3
	inc b			;53c4
	ret nz			;53c5
	ld (bc),a			;53c6
	jr l53cch		;53c7
l53c9h:
	jr nc,$+3		;53c9
	ld h,b			;53cb
l53cch:
	inc b			;53cc
	ld bc,l0304h		;53cd
l53d0h:
	inc b			;53d0
	add a,b			;53d1
	inc bc			;53d2
	nop			;53d3
	add a,c			;53d4
	rst 38h			;53d5
	rlca			;53d6
	nop			;53d7
	adc a,c			;53d8
	rst 38h			;53d9
	ld a,(hl)			;53da
	rst 38h			;53db
	rst 38h			;53dc
	ret pe			;53dd
	jp pe,sub_0070h		;53de
	cp b			;53e1
	inc bc			;53e2
	ret nz			;53e3
	inc bc			;53e4
	add a,b			;53e5
	ld (bc),a			;53e6
	nop			;53e7
	add a,c			;53e8
	rlca			;53e9
l53eah:
	inc bc			;53ea
	ld b,004h		;53eb
	inc c			;53ed
	add a,c			;53ee
	rst 38h			;53ef
	rlca			;53f0
	ld bc,08690h		;53f1
	sub d			;53f4
	ret p			;53f5
	ret			;53f6
	cpi		;53f7
	ld a,a			;53f9
	ld e,a			;53fa
	nop			;53fb
	nop			;53fc
	ret nz			;53fd
	jr nz,l53d0h		;53fe
	ld d,b			;5400
	ld d,b			;5401
	ld (hl),b			;5402
	inc b			;5403
	jr $+4		;5404
	jr nc,$+8		;5406
	ld bc,l4182h		;5408
	ld a,a			;540b
	inc bc			;540c
	dec hl			;540d
	cp e			;540e
	ld l,05ah		;540f
	ld a,a			;5411
	ld b,b			;5412
	ret nz			;5413
	nop			;5414
	ret nz			;5415
	ret nz			;5416
	ret po			;5417
	jr nz,l53eah		;5418
	nop			;541a
	rrca			;541b
	ld a,(bc)			;541c
	ld l,a			;541d
	ld l,d			;541e
	ld l,a			;541f
	ld l,d			;5420
	ld l,a			;5421
	nop			;5422
	rst 38h			;5423
	xor d			;5424
	rst 38h			;5425
	xor d			;5426
	rst 38h			;5427
	xor d			;5428
	rst 38h			;5429
	nop			;542a
	rst 38h			;542b
	cp d			;542c
	rst 38h			;542d
	cp d			;542e
	rst 38h			;542f
	jp pe,l00ffh		;5430
	rst 38h			;5433
	xor d			;5434
	rst 38h			;5435
	xor d			;5436
	rst 38h			;5437
	xor d			;5438
	rst 38h			;5439
	nop			;543a
	rst 38h			;543b
	jp pe,0eaffh		;543c
	rst 38h			;543f
	jp pe,l00ffh		;5440
	rst 38h			;5443
	xor e			;5444
	rst 38h			;5445
	xor e			;5446
	rst 38h			;5447
	xor e			;5448
	rst 38h			;5449
	ld (bc),a			;544a
	ld c,c			;544b
	inc bc			;544c
	adc a,c			;544d
	add a,e			;544e
	adc a,b			;544f
	ld c,b			;5450
	ld a,e			;5451
	inc b			;5452
	ex af,af'			;5453
	xor (hl)			;5454
	inc b			;5455
	add a,h			;5456
	add a,h			;5457
	and h			;5458
	ld l,d			;5459
	ld l,a			;545a
	ld l,d			;545b
	ld l,a			;545c
	ld l,d			;545d
	ld l,a			;545e
	ld l,d			;545f
	rrca			;5460
	xor d			;5461
	rst 38h			;5462
	xor d			;5463
	rst 38h			;5464
	xor e			;5465
	rst 38h			;5466
	xor e			;5467
	rst 38h			;5468
	jp pe,0eaffh		;5469
	rst 38h			;546c
	xor d			;546d
	rst 38h			;546e
	xor d			;546f
	rst 38h			;5470
	xor e			;5471
	rst 38h			;5472
	xor e			;5473
	rst 38h			;5474
	xor e			;5475
	rst 38h			;5476
	xor e			;5477
	rst 38h			;5478
	xor d			;5479
	rst 38h			;547a
	xor d			;547b
	rst 38h			;547c
l547dh:
	xor d			;547d
	rst 38h			;547e
	xor d			;547f
	rst 38h			;5480
	ret p			;5481
	ret nz			;5482
	ld (bc),a			;5483
l5484h:
	add a,b			;5484
	inc b			;5485
	nop			;5486
	add a,d			;5487
	rrca			;5488
	inc bc			;5489
	ld b,000h		;548a
	adc a,b			;548c
	ld a,a			;548d
	ccf			;548e
	ld e,a			;548f
	ld c,e			;5490
	ld d,c			;5491
	ld d,e			;5492
	ld d,l			;5493
	ld d,h			;5494
	dec b			;5495
	ld d,l			;5496
	inc bc			;5497
	dec d			;5498
	ex af,af'			;5499
	nop			;549a
	inc bc			;549b
	dec b			;549c
	inc bc			;549d
	ld bc,l0000h+2		;549e
	inc b			;54a1
	ld h,b			;54a2
	inc b			;54a3
	jr nc,l54aah		;54a4
	ld bc,l0004h		;54a6
	ld (bc),a			;54a9
l54aah:
	add a,b			;54aa
	ld (bc),a			;54ab
sub_54ach:
	rst 38h			;54ac
	ld b,000h		;54ad
	ld (bc),a			;54af
	rst 38h			;54b0
	inc b			;54b1
	nop			;54b2
	ld (bc),a			;54b3
	ld h,b			;54b4
	ld (bc),a			;54b5
	ret po			;54b6
	inc b			;54b7
	jr nc,l54bch		;54b8
	nop			;54ba
	inc b			;54bb
l54bch:
	add a,b			;54bc
	ld (bc),a			;54bd
	rst 38h			;54be
	inc b			;54bf
	ld b,002h		;54c0
	inc bc			;54c2
	ld (bc),a			;54c3
	rst 38h			;54c4
	ld (bc),a			;54c5
	jr $+3		;54c6
	inc c			;54c8
	adc a,b			;54c9
	ld b,0feh		;54ca
	cp 077h		;54cc
	ld l,a			;54ce
	sbc a,a			;54cf
	rst 38h			;54d0
	ld a,a			;54d1
	inc bc			;54d2
	nop			;54d3
	add a,l			;54d4
	cp d			;54d5
	or (hl)			;54d6
	call z,0e038h		;54d7
	dec b			;54da
	nop			;54db
	inc bc			;54dc
	ccf			;54dd
	inc bc			;54de
	jr c,l54e3h		;54df
	nop			;54e1
	inc bc			;54e2
l54e3h:
	rst 38h			;54e3
	dec b			;54e4
	nop			;54e5
	inc bc			;54e6
	rst 38h			;54e7
	inc bc			;54e8
	jr $+2		;54e9
	ld bc,0ff03h		;54eb
	inc bc			;54ee
	nop			;54ef
	ld (bc),a			;54f0
	add a,b			;54f1
	inc bc			;54f2
	rst 38h			;54f3
	inc bc			;54f4
	jr $+8		;54f5
	jr c,l5501h		;54f7
	jr l547dh		;54f9
	nop			;54fb
	inc a			;54fc
	inc b			;54fd
	jr l5484h		;54fe
	inc a			;5500
l5501h:
	nop			;5501
	nop			;5502
	rst 38h			;5503
	inc b			;5504
	ld h,(hl)			;5505
	add a,h			;5506
	rst 38h			;5507
	nop			;5508
	nop			;5509
	rst 38h			;550a
	inc b			;550b
	ld e,d			;550c
	add a,d			;550d
	rst 38h			;550e
	nop			;550f
	inc bc			;5510
	jr c,l5515h		;5511
	ccf			;5513
	inc bc			;5514
l5515h:
	jr c,l551ah		;5515
	nop			;5517
	ld (bc),a			;5518
	rst 38h			;5519
l551ah:
	inc bc			;551a
	nop			;551b
	inc bc			;551c
	jr l5521h		;551d
	rst 38h			;551f
	inc bc			;5520
l5521h:
	jr l5525h		;5521
	jr c,l5527h		;5523
l5525h:
	ret m			;5525
	inc b			;5526
l5527h:
	jr c,l54aah		;5527
	and b			;5529
	inc bc			;552a
	add a,b			;552b
	inc c			;552c
	nop			;552d
	ld (bc),a			;552e
	add a,b			;552f
	ld b,000h		;5530
	add a,c			;5532
	ld a,h			;5533
	ld (bc),a			;5534
	cp 002h		;5535
	call p,sub_788bh		;5537
	nop			;553a
	cp h			;553b
	ld a,(hl)			;553c
	rst 38h			;553d
	rst 38h			;553e
	and c			;553f
	xor d			;5540
	ld b,b			;5541
	nop			;5542
	or h			;5543
	nop			;5544
	xor h			;5545
	inc bc			;5546
	ld a,e			;5547
	ld a,e			;5548
	ld l,e			;5549
	ld a,e			;554a
	ld sp,l7878h		;554b
	add a,b			;554e
	call c,0befeh		;554f
	cp 09eh		;5552
	nop			;5554
	nop			;5555
	ld (hl),c			;5556
	ld (hl),e			;5557
	ld (hl),e			;5558
	ld (hl),a			;5559
	inc hl			;555a
	ld bc,l0302h+1		;555b
	add a,b			;555e
	adc a,0ceh		;555f
	xor 0ceh		;5561
	add a,h			;5563
	adc a,0ceh		;5564
	jr nz,l55c6h		;5566
	cp 0feh		;5568
	call m,01c5eh		;556a
	ld a,071h		;556d
	ld a,a			;556f
	ld (hl),a			;5570
	ccf			;5571
	inc bc			;5572
	ld a,a			;5573
	ld a,a			;5574
	rst 38h			;5575
	dec b			;5576
	rst 38h			;5577
	inc bc			;5578
	cp 002h		;5579
	call m,l0020h		;557b
	add a,c			;557e
	call m,0f803h		;557f
	inc bc			;5582
	ret p			;5583
	add a,c			;5584
	ret po			;5585
	djnz l5588h		;5586
l5588h:
	ld (bc),a			;5588
	ret po			;5589
	inc bc			;558a
	ret nz			;558b
	inc bc			;558c
	add a,b			;558d
	jr l5590h		;558e
l5590h:
	adc a,b			;5590
	add a,c			;5591
	nop			;5592
	nop			;5593
	rla			;5594
	dec d			;5595
	adc a,a			;5596
	rst 38h			;5597
	ccf			;5598
	jr l559bh		;5599
l559bh:
	add a,d			;559b
	dec b			;559c
	ld bc,l7003h		;559d
	add a,a			;55a0
	ld a,(hl)			;55a1
	sbc a,(hl)			;55a2
	and b			;55a3
	rst 38h			;55a4
	rst 38h			;55a5
	ccf			;55a6
	rra			;55a7
	inc bc			;55a8
	rrca			;55a9
	add a,c			;55aa
	cpl			;55ab
	djnz l55aeh		;55ac
l55aeh:
	add a,d			;55ae
	cp (hl)			;55af
	rst 38h			;55b0
	inc bc			;55b1
	call nc,0d19ah		;55b2
	and l			;55b5
	add a,b			;55b6
	rrca			;55b7
	rst 38h			;55b8
	rra			;55b9
	ccf			;55ba
	ccf			;55bb
	rra			;55bc
	rst 18h			;55bd
	cpl			;55be
	sub b			;55bf
	nop			;55c0
	sub l			;55c1
	sub b			;55c2
	sub l			;55c3
	sub b			;55c4
	sub l			;55c5
l55c6h:
	sub b			;55c6
	nop			;55c7
	nop			;55c8
	ld d,l			;55c9
	nop			;55ca
	ld d,l			;55cb
	nop			;55cc
	ld d,l			;55cd
	inc bc			;55ce
	nop			;55cf
	add a,e			;55d0
	ld b,b			;55d1
	nop			;55d2
	ld b,b			;55d3
	dec de			;55d4
	nop			;55d5
	ld (bc),a			;55d6
	or (hl)			;55d7
	inc bc			;55d8
	halt			;55d9
	add a,c			;55da
	ld (hl),a			;55db
	ld (bc),a			;55dc
	or a			;55dd
	inc b			;55de
	rst 30h			;55df
	add a,c			;55e0
	ei			;55e1
	inc bc			;55e2
	ld a,e			;55e3
	adc a,a			;55e4
	sub l			;55e5
	sub b			;55e6
	sub l			;55e7
	sub b			;55e8
	sub l			;55e9
	sub b			;55ea
	sub l			;55eb
	ret p			;55ec
	ld d,l			;55ed
	nop			;55ee
	ld d,l			;55ef
	nop			;55f0
	ld d,h			;55f1
	nop			;55f2
	ld d,h			;55f3
	add hl,de			;55f4
	nop			;55f5
	add a,d			;55f6
	ret p			;55f7
	ret nz			;55f8
	ld (bc),a			;55f9
	add a,b			;55fa
	inc b			;55fb
	nop			;55fc
	add a,d			;55fd
	ld bc,l0203h		;55fe
	ld bc,l0004h		;5601
	add a,a			;5604
	ret nz			;5605
	sbc a,0feh		;5606
	or 0feh		;5608
	call m,009feh		;560a
	rst 38h			;560d
	inc b			;560e
	nop			;560f
	ld (bc),a			;5610
	add a,b			;5611
	add a,d			;5612
	ret nz			;5613
	ret p			;5614
	ex af,af'			;5615
	rst 38h			;5616
	jr c,l5619h		;5617
l5619h:
	ld (bc),a			;5619
	rlca			;561a
	inc bc			;561b
	inc bc			;561c
	inc bc			;561d
	ld bc,0af82h		;561e
	sbc a,a			;5621
	ld b,0ffh		;5622
	add a,e			;5624
	ld (hl),a			;5625
	ld c,a			;5626
	ccf			;5627
	dec b			;5628
	rst 38h			;5629
	ld (hl),b			;562a
	nop			;562b
	add a,d			;562c
	ret p			;562d
	ret nz			;562e
	ld (bc),a			;562f
	add a,b			;5630
	dec b			;5631
	nop			;5632
	adc a,c			;5633
	add a,c			;5634
	pop bc			;5635
	ex (sp),hl			;5636
	rst 20h			;5637
	rst 28h			;5638
	rst 38h			;5639
	rst 38h			;563a
	ret p			;563b
	ret nz			;563c
	ld (bc),a			;563d
	add a,b			;563e
	inc b			;563f
	nop			;5640
	add a,c			;5641
	add a,e			;5642
	ld (bc),a			;5643
	ld bc,l0b02h		;5644
	adc a,e			;5647
	add a,a			;5648
	rst 38h			;5649
	ccf			;564a
	add a,c			;564b
	nop			;564c
	nop			;564d
	ld e,(hl)			;564e
	ld d,l			;564f
	cp a			;5650
	rst 38h			;5651
	ccf			;5652
	nop			;5653
l5654h:
	ld (bc),a			;5654
	jr nc,$+6		;5655
	ld (l3303h+2),a		;5657
	inc bc			;565a
	ld sp,l3086h		;565b
	inc (hl)			;565e
	ld (hl),037h		;565f
	add hl,sp			;5661
	dec sp			;5662
	ex af,af'			;5663
	ld (hl),087h		;5664
	dec (hl)			;5666
	ld sp,l3530h		;5667
	ld (hl),03dh		;566a
	ccf			;566c
	ex af,af'			;566d
	ld (hl),085h		;566e
	ld l,c			;5670
	nop			;5671
	ld l,d			;5672
	inc (hl)			;5673
	inc a			;5674
	dec bc			;5675
	ld b,d			;5676
	add a,l			;5677
	nop			;5678
	dec de			;5679
	nop			;567a
	dec (hl)			;567b
	ld b,e			;567c
	dec bc			;567d
	ld b,d			;567e
	inc bc			;567f
	nop			;5680
	add a,d			;5681
	inc a			;5682
	ld b,l			;5683
	inc bc			;5684
	ld b,d			;5685
	adc a,b			;5686
	ld b,a			;5687
	ld c,c			;5688
	ld c,c			;5689
	ld c,d			;568a
	ld c,c			;568b
	ld c,b			;568c
	ld b,(hl)			;568d
	ld b,d			;568e
	inc bc			;568f
	nop			;5690
	add a,c			;5691
	inc a			;5692
	inc b			;5693
	ld b,d			;5694
	dec b			;5695
	ld c,h			;5696
	add a,a			;5697
	ld c,l			;5698
	ld c,e			;5699
	ld b,d			;569a
	nop			;569b
	ld a,(de)			;569c
	nop			;569d
	ld b,e			;569e
	inc b			;569f
	ld b,d			;56a0
	add a,c			;56a1
	ld c,a			;56a2
	inc b			;56a3
	ld d,c			;56a4
	add a,e			;56a5
	ld d,b			;56a6
	ld c,(hl)			;56a7
	ld b,d			;56a8
	inc bc			;56a9
	nop			;56aa
	sbc a,c			;56ab
	ld b,l			;56ac
	ld b,d			;56ad
	ld d,d			;56ae
	ld b,d			;56af
	ld b,(hl)			;56b0
	ld d,h			;56b1
	ld d,c			;56b2
	ld d,c			;56b3
	ld d,l			;56b4
	ld d,c			;56b5
	ld d,c			;56b6
	ld d,e			;56b7
	ld b,d			;56b8
	ld l,l			;56b9
	nop			;56ba
	ld l,l			;56bb
	ld b,d			;56bc
	ld b,d			;56bd
	ld d,(hl)			;56be
	ld b,d			;56bf
	ld c,e			;56c0
	ld e,b			;56c1
	ld c,h			;56c2
	ld c,h			;56c3
	ld e,c			;56c4
	inc bc			;56c5
	ld c,h			;56c6
	ld b,042h		;56c7
	add a,a			;56c9
	ld e,d			;56ca
	ld e,h			;56cb
	ld e,(hl)			;56cc
	ld h,b			;56cd
	ld e,a			;56ce
	ld e,a			;56cf
	ld h,c			;56d0
	inc bc			;56d1
	ld e,a			;56d2
	add a,c			;56d3
	ld e,l			;56d4
	dec b			;56d5
	ld b,d			;56d6
	add a,e			;56d7
	ld h,d			;56d8
	ld h,h			;56d9
	ld h,(hl)			;56da
	inc bc			;56db
	ld l,b			;56dc
	add a,l			;56dd
	ld h,a			;56de
	ld l,b			;56df
	ld l,b			;56e0
	ld h,a			;56e1
	ld h,l			;56e2
	dec b			;56e3
	ld b,d			;56e4
	add a,d			;56e5
	ld (hl),a			;56e6
	ld b,d			;56e7
	inc b			;56e8
	ld c,h			;56e9
	add a,l			;56ea
	ld e,c			;56eb
	ld c,h			;56ec
	ld c,h			;56ed
	ld l,a			;56ee
	ld c,e			;56ef
	rlca			;56f0
	ld b,d			;56f1
	inc b			;56f2
	ld c,h			;56f3
	add a,l			;56f4
	ld e,c			;56f5
	ld c,h			;56f6
	ld c,h			;56f7
	ld e,b			;56f8
	ld c,(hl)			;56f9
	ld b,042h		;56fa
	add a,c			;56fc
	ld b,(hl)			;56fd
	inc b			;56fe
	ld c,h			;56ff
	add a,l			;5700
	ld e,c			;5701
	ld c,h			;5702
	ld c,h			;5703
	ld c,l			;5704
l5705h:
	ld d,e			;5705
	ld b,042h		;5706
	add a,d			;5708
	ld c,e			;5709
	ld c,a			;570a
	inc bc			;570b
	ld c,h			;570c
	add a,l			;570d
	ld e,c			;570e
	ld c,h			;570f
	ld c,h			;5710
	ld (hl),b			;5711
	ld c,h			;5712
	ld b,042h		;5713
	add a,d			;5715
	ld c,(hl)			;5716
	ld (hl),e			;5717
	inc bc			;5718
	ld (hl),d			;5719
	add a,c			;571a
	ld (hl),c			;571b
	inc bc			;571c
	ld (hl),d			;571d
	add a,c			;571e
	ld c,h			;571f
	ld b,042h		;5720
	add a,d			;5722
	ld d,e			;5723
	ld e,b			;5724
	ex af,af'			;5725
	ld c,h			;5726
	add a,c			;5727
	ld b,(hl)			;5728
	dec b			;5729
	ld b,d			;572a
	add a,d			;572b
	ld c,h			;572c
	ld c,l			;572d
	ex af,af'			;572e
	ld c,h			;572f
	add a,c			;5730
	ld c,e			;5731
	dec b			;5732
	ld b,d			;5733
	add a,d			;5734
	ld c,h			;5735
	ld (hl),b			;5736
	rlca			;5737
	ld c,h			;5738
	add a,d			;5739
	ld c,a			;573a
	ld c,(hl)			;573b
	inc b			;573c
	ld b,d			;573d
	add a,c			;573e
	ld b,(hl)			;573f
	add hl,bc			;5740
	ld c,h			;5741
	add a,d			;5742
	ld l,a			;5743
	ld d,e			;5744
	inc b			;5745
	ld b,d			;5746
	add a,c			;5747
	ld c,e			;5748
	add hl,bc			;5749
	ld c,h			;574a
	add a,d			;574b
	ld e,b			;574c
	ld c,h			;574d
	inc b			;574e
	ld b,d			;574f
	add a,c			;5750
	halt			;5751
	dec b			;5752
	ld c,c			;5753
	add a,c			;5754
	ld (hl),h			;5755
	inc bc			;5756
	ld c,c			;5757
	add a,d			;5758
	ld (hl),l			;5759
	ld c,c			;575a
	ld (de),a			;575b
	ld b,d			;575c
	nop			;575d
	ex af,af'			;575e
	ld bc,l0308h		;575f
	ld c,001h		;5762
	ld (bc),a			;5764
	inc bc			;5765
	jr c,l5769h		;5766
	add a,d			;5768
l5769h:
	inc bc			;5769
	ld bc,l0302h		;576a
	ld c,001h		;576d
	ld (bc),a			;576f
	inc bc			;5770
	ld c,001h		;5771
	ld (bc),a			;5773
	inc bc			;5774
	ld a,(bc)			;5775
	ld bc,l0502h		;5776
	add a,h			;5779
	inc bc			;577a
	dec b			;577b
	dec b			;577c
	inc bc			;577d
	inc bc			;577e
	ld bc,l0381h		;577f
	ex af,af'			;5782
	ld bc,l0381h		;5783
	rrca			;5786
	ld bc,l0304h+1		;5787
	dec bc			;578a
	ld bc,l0304h+1		;578b
	dec bc			;578e
	ld bc,l0381h		;578f
	inc bc			;5792
	ld bc,l0381h		;5793
	dec bc			;5796
	ld bc,l0381h		;5797
	ld (bc),a			;579a
	ld bc,l0302h		;579b
	dec bc			;579e
	ld bc,l0381h		;579f
	ld (bc),a			;57a2
	ld bc,l0302h		;57a3
	dec bc			;57a6
	ld bc,l0381h		;57a7
	dec bc			;57aa
	ld bc,l0381h		;57ab
	jr l57b1h		;57ae
	add a,c			;57b0
l57b1h:
	inc bc			;57b1
	rrca			;57b2
	ld bc,l0381h		;57b3
	ld b,001h		;57b6
	add a,c			;57b8
	inc bc			;57b9
	rlca			;57ba
	ld bc,l0302h		;57bb
	rrca			;57be
	ld bc,l0381h		;57bf
	ld c,001h		;57c2
	add a,c			;57c4
	inc bc			;57c5
	dec b			;57c6
	ld bc,l0381h		;57c7
	dec b			;57ca
	dec b			;57cb
	add a,c			;57cc
	ld bc,l0503h		;57cd
	add a,d			;57d0
	ld bc,l1203h+2		;57d1
	ld bc,l01feh+2		;57d4
	ld sp,l3306h		;57d7
	dec b			;57da
	ld (l3003h),a		;57db
	add a,l			;57de
	ld sp,l3635h		;57df
	jr c,l581eh		;57e2
	add hl,bc			;57e4
	ld (hl),087h		;57e5
	inc (hl)			;57e7
	jr nc,l581bh		;57e8
	inc a			;57ea
	ld (hl),03eh		;57eb
	ld b,b			;57ed
	ex af,af'			;57ee
	ld (hl),002h		;57ef
	nop			;57f1
	add a,e			;57f2
	jr nc,l582ah		;57f3
	ld b,c			;57f5
	dec bc			;57f6
	ld b,d			;57f7
	add a,l			;57f8
	ld c,020h		;57f9
	inc (hl)			;57fb
	inc a			;57fc
	ld b,h			;57fd
	dec bc			;57fe
	ld b,d			;57ff
l5800h:
	add a,h			;5800
	nop			;5801
	ld bc,l3c6bh		;5802
	inc bc			;5805
	ld b,d			;5806
	add a,a			;5807
	ld b,(hl)			;5808
	ld c,b			;5809
	ld c,c			;580a
	ld c,d			;580b
	ld c,c			;580c
	ld c,c			;580d
	ld b,a			;580e
	ld (bc),a			;580f
	ld b,d			;5810
	ld (bc),a			;5811
	nop			;5812
	add a,d			;5813
	inc a			;5814
	ld b,c			;5815
	inc bc			;5816
	ld b,d			;5817
	add a,d			;5818
	ld c,e			;5819
	ld c,l			;581a
l581bh:
	dec b			;581b
	ld c,h			;581c
	ld (bc),a			;581d
l581eh:
	ld b,d			;581e
	add a,h			;581f
	inc h			;5820
	jr nz,l585fh		;5821
	ld b,h			;5823
	inc bc			;5824
	ld b,d			;5825
	add a,d			;5826
	ld c,(hl)			;5827
	ld d,b			;5828
	inc b			;5829
l582ah:
	ld d,c			;582a
	add a,(hl)			;582b
	ld c,a			;582c
	ld b,d			;582d
	ld b,d			;582e
	nop			;582f
	ld bc,0046ch		;5830
	ld b,d			;5833
	sub b			;5834
	ld d,e			;5835
	ld d,c			;5836
	ld d,c			;5837
	ld d,l			;5838
	ld d,c			;5839
	ld d,c			;583a
	ld d,h			;583b
	ld b,(hl)			;583c
	ld b,d			;583d
	nop			;583e
	nop			;583f
	ld l,(hl)			;5840
	ld b,d			;5841
	ld b,d			;5842
	ld d,a			;5843
	ld b,d			;5844
	inc bc			;5845
	ld c,h			;5846
	add a,l			;5847
	ld e,c			;5848
	ld c,h			;5849
	ld c,h			;584a
	ld e,b			;584b
	ld c,e			;584c
	ld b,042h		;584d
	add a,d			;584f
	ld e,e			;5850
	ld e,l			;5851
	inc bc			;5852
	ld e,a			;5853
	add a,(hl)			;5854
	ld h,c			;5855
	ld e,a			;5856
	ld e,a			;5857
	ld h,b			;5858
	ld e,(hl)			;5859
	ld e,h			;585a
	dec b			;585b
	ld b,d			;585c
	add a,(hl)			;585d
	ld h,e			;585e
l585fh:
	ld h,l			;585f
	ld h,a			;5860
	ld l,b			;5861
	ld l,b			;5862
	ld h,a			;5863
	inc bc			;5864
	ld l,b			;5865
	add a,d			;5866
	ld h,(hl)			;5867
	ld h,h			;5868
	dec b			;5869
	ld b,d			;586a
	add a,(hl)			;586b
	ld a,b			;586c
	ld c,e			;586d
	ld l,a			;586e
	ld c,h			;586f
	ld c,h			;5870
	ld e,c			;5871
	inc b			;5872
	ld c,h			;5873
	rlca			;5874
	ld b,d			;5875
	add a,l			;5876
	ld c,(hl)			;5877
sub_5878h:
	ld e,b			;5878
	ld c,h			;5879
	ld c,h			;587a
	ld e,c			;587b
	inc b			;587c
	ld c,h			;587d
	rlca			;587e
	ld b,d			;587f
	add a,l			;5880
	ld d,e			;5881
	ld c,l			;5882
	ld c,h			;5883
	ld c,h			;5884
	ld e,c			;5885
	inc b			;5886
	ld c,h			;5887
	add a,c			;5888
	ld b,(hl)			;5889
	ld b,042h		;588a
	add a,l			;588c
	ld c,h			;588d
	ld (hl),b			;588e
	ld c,h			;588f
	ld c,h			;5890
	ld e,c			;5891
	inc bc			;5892
	ld c,h			;5893
	add a,d			;5894
	ld c,a			;5895
	ld c,e			;5896
	ld b,042h		;5897
	add a,c			;5899
	ld c,h			;589a
	inc bc			;589b
	ld (hl),d			;589c
	add a,c			;589d
	ld (hl),c			;589e
	inc bc			;589f
	ld (hl),d			;58a0
	add a,d			;58a1
	ld (hl),e			;58a2
	ld c,(hl)			;58a3
	dec b			;58a4
	ld b,d			;58a5
	add a,c			;58a6
	ld b,(hl)			;58a7
	ex af,af'			;58a8
	ld c,h			;58a9
	add a,d			;58aa
	ld e,b			;58ab
	ld d,e			;58ac
	dec b			;58ad
	ld b,d			;58ae
	add a,c			;58af
	ld c,e			;58b0
	ex af,af'			;58b1
	ld c,h			;58b2
	add a,d			;58b3
	ld c,l			;58b4
	ld c,h			;58b5
	dec b			;58b6
	ld b,d			;58b7
	add a,d			;58b8
	ld c,(hl)			;58b9
	ld c,a			;58ba
	rlca			;58bb
	ld c,h			;58bc
	add a,d			;58bd
	ld (hl),b			;58be
	ld c,h			;58bf
	dec b			;58c0
	ld b,d			;58c1
	add a,d			;58c2
	ld d,e			;58c3
	ld l,a			;58c4
	add hl,bc			;58c5
	ld c,h			;58c6
	add a,c			;58c7
	ld b,(hl)			;58c8
	inc b			;58c9
	ld b,d			;58ca
	add a,d			;58cb
	ld c,h			;58cc
	ld e,b			;58cd
	add hl,bc			;58ce
	ld c,h			;58cf
	add a,c			;58d0
	ld c,e			;58d1
	inc b			;58d2
	ld b,d			;58d3
	add a,d			;58d4
	ld c,c			;58d5
	ld (hl),l			;58d6
	inc bc			;58d7
	ld c,c			;58d8
	add a,c			;58d9
	ld (hl),h			;58da
	dec b			;58db
	ld c,c			;58dc
	add a,c			;58dd
	halt			;58de
	ld (de),a			;58df
	ld b,d			;58e0
	nop			;58e1
	ex af,af'			;58e2
	ld bc,l0308h		;58e3
	ld c,001h		;58e6
	ld (bc),a			;58e8
	inc bc			;58e9
	rrca			;58ea
	ld bc,l0381h		;58eb
	rrca			;58ee
	ld bc,l0381h		;58ef
	ld a,(de)			;58f2
	ld bc,l0381h		;58f3
	inc b			;58f6
	ld bc,l0381h		;58f7
	rrca			;58fa
	ld bc,l0381h		;58fb
	ld a,(bc)			;58fe
	ld bc,l0381h		;58ff
	ld a,(bc)			;5902
	ld bc,l0502h		;5903
	add a,c			;5906
	ld bc,l0502h		;5907
	ld (bc),a			;590a
	inc bc			;590b
	ld c,001h		;590c
	ld (bc),a			;590e
	inc bc			;590f
	inc c			;5910
	ld bc,l0304h+1		;5911
	dec bc			;5914
	ld bc,l0304h+1		;5915
	rlca			;5918
	ld bc,l0381h		;5919
	daa			;591c
	ld bc,l0381h		;591d
	rlca			;5920
	ld bc,l0381h		;5921
	ld b,001h		;5924
	ld (bc),a			;5926
	inc bc			;5927
	ld a,(bc)			;5928
	ld bc,l0381h		;5929
	inc b			;592c
	ld bc,l0381h		;592d
	ld c,001h		;5930
	ld (bc),a			;5932
	inc bc			;5933
	ld c,001h		;5934
	add a,c			;5936
	inc bc			;5937
	rla			;5938
	ld bc,l0381h		;5939
	add hl,bc			;593c
	ld bc,l0381h		;593d
	rrca			;5940
	ld bc,l0381h		;5941
	inc b			;5944
	ld bc,l0582h		;5945
	inc bc			;5948
	inc bc			;5949
	dec b			;594a
	add a,c			;594b
	inc bc			;594c
	dec b			;594d
	dec b			;594e
	inc de			;594f
	ld bc,l5200h		;5950
	ld bc,0018ah		;5953
	adc a,e			;5956
	ld bc,sub_798ch+1		;5957
	ld a,d			;595a
	ld a,e			;595b
	ld a,l			;595c
	ld a,e			;595d
	ld a,c			;595e
	nop			;595f
	nop			;5960
	add a,b			;5961
	add a,c			;5962
	add a,d			;5963
	add a,e			;5964
	add a,h			;5965
	inc bc			;5966
	add a,l			;5967
	add a,e			;5968
	add a,e			;5969
	ld c,020h		;596a
	inc bc			;596c
	nop			;596d
	add a,d			;596e
	add a,e			;596f
	add a,h			;5970
	inc bc			;5971
	add a,l			;5972
	add a,e			;5973
	add a,e			;5974
	inc h			;5975
	jr nz,l597bh		;5976
	nop			;5978
	add a,d			;5979
	ld a,c			;597a
l597bh:
	ld a,d			;597b
	inc bc			;597c
	ld a,e			;597d
	add a,h			;597e
	ld a,c			;597f
	ld c,h			;5980
	ld c,h			;5981
	ld e,c			;5982
	dec b			;5983
	ld c,h			;5984
	add a,c			;5985
	ld e,c			;5986
	inc b			;5987
	ld c,h			;5988
	add a,c			;5989
	ld e,c			;598a
	ld (bc),a			;598b
	ld c,h			;598c
	inc bc			;598d
	ld (hl),d			;598e
	add a,c			;598f
	ld (hl),c			;5990
	ld (bc),a			;5991
	ld (hl),d			;5992
	djnz l59e1h		;5993
	adc a,e			;5995
	add a,a			;5996
	nop			;5997
	nop			;5998
	ld l,l			;5999
	ld a,(de)			;599a
	dec c			;599b
	djnz l599eh		;599c
l599eh:
	ld de,01f20h		;599e
	inc bc			;59a1
	nop			;59a2
	inc b			;59a3
	ld b,d			;59a4
	inc b			;59a5
	nop			;59a6
	add a,d			;59a7
	djnz l59b8h		;59a8
	inc b			;59aa
	nop			;59ab
	inc b			;59ac
	ld b,d			;59ad
	inc b			;59ae
	nop			;59af
	add a,d			;59b0
	inc c			;59b1
	rla			;59b2
	inc b			;59b3
	nop			;59b4
	inc b			;59b5
	ld b,d			;59b6
	inc bc			;59b7
l59b8h:
	nop			;59b8
	add a,c			;59b9
	djnz l59bfh		;59ba
	nop			;59bc
	add a,e			;59bd
	ld b,d			;59be
l59bfh:
	adc a,b			;59bf
	ld b,d			;59c0
	inc bc			;59c1
	nop			;59c2
	add a,c			;59c3
	jr nz,l59c9h		;59c4
	nop			;59c6
	adc a,a			;59c7
	ld b,d			;59c8
l59c9h:
	adc a,b			;59c9
	ld b,d			;59ca
	nop			;59cb
	ld l,l			;59cc
	inc d			;59cd
	nop			;59ce
	nop			;59cf
	ld l,l			;59d0
	ld b,d			;59d1
	ld b,d			;59d2
	ld b,c			;59d3
	ld b,d			;59d4
	ld b,d			;59d5
	ld b,e			;59d6
	dec c			;59d7
	ld b,d			;59d8
	sub a			;59d9
	nop			;59da
	ld (bc),a			;59db
	inc b			;59dc
	dec b			;59dd
	nop			;59de
	nop			;59df
	dec de			;59e0
l59e1h:
	inc c			;59e1
	djnz l59e4h		;59e2
l59e4h:
	djnz l59f6h		;59e4
	nop			;59e6
	djnz l59f9h		;59e7
	rra			;59e9
	dec hl			;59ea
	ld e,010h		;59eb
	rrca			;59ed
	rla			;59ee
	ld hl,l0317h		;59ef
	nop			;59f2
	sbc a,l			;59f3
	dec c			;59f4
	nop			;59f5
l59f6h:
	nop			;59f6
	inc bc			;59f7
	nop			;59f8
l59f9h:
	ld a,(de)			;59f9
	rra			;59fa
	ld a,(de)			;59fb
	nop			;59fc
	djnz $+16		;59fd
	inc b			;59ff
	nop			;5a00
	rla			;5a01
	inc h			;5a02
	dec e			;5a03
l5a04h:
	rra			;5a04
	dec de			;5a05
	ld c,018h		;5a06
	jr nz,$+16		;5a08
	nop			;5a0a
	djnz l5a1dh		;5a0b
	nop			;5a0d
	djnz l5a20h		;5a0e
	rra			;5a10
	ex af,af'			;5a11
	nop			;5a12
	nop			;5a13
	dec b			;5a14
	ld bc,l0381h		;5a15
	ld a,(bc)			;5a18
	ld bc,l0381h		;5a19
	ld a,(bc)			;5a1c
l5a1dh:
	ld bc,l0381h		;5a1d
l5a20h:
	dec b			;5a20
	ld bc,l0505h		;5a21
	add a,c			;5a24
	rlca			;5a25
	ex af,af'			;5a26
	ld bc,l0381h		;5a27
	jr nz,l5a2dh		;5a2a
	add a,c			;5a2c
l5a2dh:
	rlca			;5a2d
	ccf			;5a2e
	ld bc,l0781h		;5a2f
	inc bc			;5a32
	ld bc,l0381h		;5a33
	ld d,d			;5a36
	ld bc,l01feh+2		;5a37
	ld a,d			;5a3a
	add a,l			;5a3b
	ld a,h			;5a3c
	ld a,d			;5a3d
	ld a,d			;5a3e
	ld a,(hl)			;5a3f
	nop			;5a40
	inc bc			;5a41
	ld a,a			;5a42
	add a,c			;5a43
	ld a,(hl)			;5a44
	dec b			;5a45
	add a,h			;5a46
	add a,d			;5a47
	add a,(hl)			;5a48
	dec de			;5a49
	inc bc			;5a4a
	ld a,a			;5a4b
	add a,c			;5a4c
	add a,(hl)			;5a4d
	dec b			;5a4e
	add a,h			;5a4f
	add a,d			;5a50
	ld a,(hl)			;5a51
	ld a,(de)			;5a52
	inc bc			;5a53
	ld a,a			;5a54
	add a,c			;5a55
	ld a,(hl)			;5a56
	dec b			;5a57
	ld a,d			;5a58
	inc bc			;5a59
	ld c,h			;5a5a
	add a,c			;5a5b
	ld e,c			;5a5c
	inc b			;5a5d
	ld c,h			;5a5e
	add a,c			;5a5f
	ld e,c			;5a60
	dec b			;5a61
	ld c,h			;5a62
	add a,c			;5a63
	ld e,c			;5a64
	ld (bc),a			;5a65
	ld c,h			;5a66
	ld (bc),a			;5a67
	ld (hl),d			;5a68
	add a,c			;5a69
	ld (hl),c			;5a6a
	ld (bc),a			;5a6b
	ld (hl),d			;5a6c
	ld de,l034ch		;5a6d
	nop			;5a70
	rst 0			;5a71
	rrca			;5a72
	jr nz,l5a8ch		;5a73
	nop			;5a75
	nop			;5a76
	inc c			;5a77
	rla			;5a78
	ld l,l			;5a79
	nop			;5a7a
	nop			;5a7b
	ld l,l			;5a7c
	ld b,d			;5a7d
	adc a,b			;5a7e
	ld b,d			;5a7f
	add a,a			;5a80
	nop			;5a81
	nop			;5a82
	ld l,l			;5a83
	rrca			;5a84
	jr nz,l5a97h		;5a85
	ld l,l			;5a87
	nop			;5a88
	nop			;5a89
	ld l,l			;5a8a
	ld b,d			;5a8b
l5a8ch:
	adc a,b			;5a8c
	ld b,d			;5a8d
	add a,a			;5a8e
	nop			;5a8f
	nop			;5a90
	ld l,l			;5a91
	ld de,01f20h		;5a92
	ld l,l			;5a95
	nop			;5a96
l5a97h:
	nop			;5a97
	ld l,l			;5a98
	ld b,d			;5a99
	adc a,b			;5a9a
	ld b,d			;5a9b
	adc a,c			;5a9c
	nop			;5a9d
	ld l,l			;5a9e
	add hl,de			;5a9f
	rra			;5aa0
	ld l,l			;5aa1
	nop			;5aa2
	ld l,l			;5aa3
	ld b,d			;5aa4
	ld b,d			;5aa5
	adc a,c			;5aa6
	nop			;5aa7
	ld l,l			;5aa8
	ld a,(de)			;5aa9
	rra			;5aaa
	ld l,l			;5aab
	nop			;5aac
	ld l,l			;5aad
	ld b,d			;5aae
	ld b,d			;5aaf
	adc a,c			;5ab0
	nop			;5ab1
	nop			;5ab2
	add hl,de			;5ab3
	ld l,l			;5ab4
	nop			;5ab5
	ld b,d			;5ab6
	adc a,b			;5ab7
	inc a			;5ab8
	inc bc			;5ab9
	ld b,d			;5aba
	add a,h			;5abb
	ld b,h			;5abc
	ld b,d			;5abd
	ld b,d			;5abe
	ld b,l			;5abf
	ld a,(bc)			;5ac0
	ld b,d			;5ac1
	sbc a,b			;5ac2
	ld bc,l0104h+2		;5ac3
	ld bc,0000ch		;5ac6
	rla			;5ac9
	inc h			;5aca
	dec e			;5acb
	rla			;5acc
	ld hl,l1e17h		;5acd
	rla			;5ad0
	ld c,002h		;5ad1
	nop			;5ad3
	dec de			;5ad4
	djnz l5ad7h		;5ad5
l5ad7h:
	djnz l5ae9h		;5ad7
	nop			;5ad9
	inc c			;5ada
	inc b			;5adb
	nop			;5adc
	and e			;5add
	ld c,02bh		;5ade
	ld c,019h		;5ae0
	dec e			;5ae2
	rla			;5ae3
	rla			;5ae4
	ld hl,02b17h		;5ae5
	dec de			;5ae8
l5ae9h:
	inc c			;5ae9
	djnz l5aech		;5aea
l5aech:
	inc h			;5aec
	djnz $+26		;5aed
	dec de			;5aef
	rra			;5af0
	dec e			;5af1
	rla			;5af2
	ld hl,l1e17h		;5af3
	rla			;5af6
	ld c,002h		;5af7
	nop			;5af9
	inc bc			;5afa
	nop			;5afb
	inc b			;5afc
	nop			;5afd
	dec b			;5afe
	nop			;5aff
l5b00h:
	ld b,000h		;5b00
	ld a,(bc)			;5b02
	ld bc,l0381h		;5b03
	ld a,(bc)			;5b06
	ld bc,l0381h		;5b07
	ld a,(bc)			;5b0a
	ld bc,l0381h		;5b0b
	dec b			;5b0e
	dec b			;5b0f
	inc bc			;5b10
	ld bc,l0381h		;5b11
	ld a,(bc)			;5b14
	ld bc,l0381h		;5b15
	inc b			;5b18
	ld bc,l0381h		;5b19
	jr nz,l5b1fh		;5b1c
	add a,c			;5b1e
l5b1fh:
	inc bc			;5b1f
	ld b,001h		;5b20
	add a,c			;5b22
	rlca			;5b23
	ld b,001h		;5b24
	add a,c			;5b26
	inc bc			;5b27
	ld b,001h		;5b28
	add a,c			;5b2a
	rlca			;5b2b
	ld b,001h		;5b2c
	add a,c			;5b2e
	inc bc			;5b2f
	dec b			;5b30
	ld bc,l0781h		;5b31
	inc b			;5b34
	ld bc,l0381h		;5b35
	inc b			;5b38
	ld bc,l0781h		;5b39
	inc b			;5b3c
	ld bc,l0381h		;5b3d
	ld e,e			;5b40
	ld bc,00900h		;5b41
	nop			;5b44
	add a,c			;5b45
	inc a			;5b46
	inc b			;5b47
	ld h,(hl)			;5b48
	add a,l			;5b49
	inc a			;5b4a
	nop			;5b4b
	nop			;5b4c
	jr l5b87h		;5b4d
	inc bc			;5b4f
	jr l5b00h		;5b50
	inc a			;5b52
	nop			;5b53
	nop			;5b54
	inc a			;5b55
	ld h,(hl)			;5b56
	ld h,(hl)			;5b57
	inc c			;5b58
	jr nc,l5bd9h		;5b59
	nop			;5b5b
	nop			;5b5c
	inc a			;5b5d
	ld h,(hl)			;5b5e
	inc c			;5b5f
	ld b,066h		;5b60
	inc a			;5b62
	nop			;5b63
	nop			;5b64
	inc c			;5b65
l5b66h:
	inc e			;5b66
	inc l			;5b67
	ld c,h			;5b68
	ld a,(hl)			;5b69
	inc c			;5b6a
	nop			;5b6b
	nop			;5b6c
	ld a,h			;5b6d
	ld h,b			;5b6e
	ld a,h			;5b6f
	ld b,066h		;5b70
	inc a			;5b72
	nop			;5b73
	nop			;5b74
	inc a			;5b75
	ld h,b			;5b76
	ld a,h			;5b77
	ld h,(hl)			;5b78
	ld h,(hl)			;5b79
	inc a			;5b7a
	nop			;5b7b
	nop			;5b7c
	ld a,(hl)			;5b7d
	ld h,(hl)			;5b7e
	ex af,af'			;5b7f
	inc bc			;5b80
	jr l5b85h		;5b81
	nop			;5b83
	adc a,(hl)			;5b84
l5b85h:
	inc a			;5b85
	ld h,(hl)			;5b86
l5b87h:
	inc a			;5b87
	ld h,(hl)			;5b88
	ld h,(hl)			;5b89
	inc a			;5b8a
	nop			;5b8b
	nop			;5b8c
	inc a			;5b8d
	ld h,(hl)			;5b8e
	ld h,(hl)			;5b8f
	ld a,006h		;5b90
	inc a			;5b92
	ld (bc),a			;5b93
	nop			;5b94
	ld (bc),a			;5b95
	jr l5b9ah		;5b96
	nop			;5b98
	ld (bc),a			;5b99
l5b9ah:
	jr l5b9eh		;5b9a
	nop			;5b9c
	add a,c			;5b9d
l5b9eh:
	inc a			;5b9e
	inc bc			;5b9f
	ld h,d			;5ba0
	sub l			;5ba1
	ld a,(hl)			;5ba2
	ld h,d			;5ba3
	nop			;5ba4
	nop			;5ba5
	ld a,h			;5ba6
	ld h,d			;5ba7
	ld a,h			;5ba8
	ld h,d			;5ba9
	ld h,d			;5baa
	ld a,h			;5bab
	nop			;5bac
	nop			;5bad
	inc a			;5bae
	ld h,(hl)			;5baf
	ld h,b			;5bb0
	ld h,b			;5bb1
	ld h,(hl)			;5bb2
	inc a			;5bb3
	nop			;5bb4
	nop			;5bb5
	ld a,h			;5bb6
	inc b			;5bb7
	ld h,d			;5bb8
	sbc a,c			;5bb9
	ld a,h			;5bba
	nop			;5bbb
	nop			;5bbc
	ld a,(hl)			;5bbd
	ld h,b			;5bbe
	ld a,h			;5bbf
	ld h,b			;5bc0
	ld h,b			;5bc1
	ld a,(hl)			;5bc2
	nop			;5bc3
	nop			;5bc4
	ld a,(hl)			;5bc5
	ld h,b			;5bc6
	ld h,h			;5bc7
	ld a,h			;5bc8
	ld h,h			;5bc9
	ld h,b			;5bca
	nop			;5bcb
	nop			;5bcc
	inc a			;5bcd
	ld h,d			;5bce
	ld h,b			;5bcf
	ld l,(hl)			;5bd0
	ld h,d			;5bd1
	inc a			;5bd2
	ld (bc),a			;5bd3
	nop			;5bd4
	ld (bc),a			;5bd5
	ld h,d			;5bd6
	add a,c			;5bd7
	ld a,(hl)			;5bd8
l5bd9h:
	inc bc			;5bd9
	ld h,d			;5bda
	ld (bc),a			;5bdb
	nop			;5bdc
	add a,c			;5bdd
	inc a			;5bde
	inc b			;5bdf
	jr l5b66h		;5be0
	inc a			;5be2
	nop			;5be3
	nop			;5be4
	ld e,003h		;5be5
	inc c			;5be7
	adc a,d			;5be8
	ld c,h			;5be9
	jr c,l5bech		;5bea
l5bech:
	nop			;5bec
	ld h,d			;5bed
	ld h,h			;5bee
	ld a,b			;5bef
	ld l,b			;5bf0
	ld h,h			;5bf1
	ld h,d			;5bf2
	ld (bc),a			;5bf3
	nop			;5bf4
	inc b			;5bf5
	ld h,b			;5bf6
	add a,a			;5bf7
	ld h,d			;5bf8
	ld a,(hl)			;5bf9
	nop			;5bfa
	nop			;5bfb
	ld h,d			;5bfc
	halt			;5bfd
	ld l,d			;5bfe
	inc bc			;5bff
	ld h,d			;5c00
	ld (bc),a			;5c01
	nop			;5c02
	add a,h			;5c03
	ld h,d			;5c04
	ld (hl),d			;5c05
	ld l,d			;5c06
	ld h,(hl)			;5c07
	ld (bc),a			;5c08
	ld h,d			;5c09
	ld (bc),a			;5c0a
	nop			;5c0b
	add a,c			;5c0c
	inc a			;5c0d
	inc b			;5c0e
	ld h,d			;5c0f
	add a,a			;5c10
	inc a			;5c11
	nop			;5c12
	nop			;5c13
	ld a,h			;5c14
	ld h,d			;5c15
	ld h,d			;5c16
	ld a,h			;5c17
	ld (bc),a			;5c18
	ld h,b			;5c19
	ld (bc),a			;5c1a
	nop			;5c1b
	sbc a,c			;5c1c
l5c1dh:
	inc a			;5c1d
	ld h,d			;5c1e
	ld h,d			;5c1f
	ld l,d			;5c20
	ld h,(hl)			;5c21
	ld a,000h		;5c22
	nop			;5c24
	ld a,h			;5c25
	ld h,d			;5c26
	ld h,d			;5c27
	ld a,h			;5c28
	ld h,h			;5c29
	ld h,d			;5c2a
	nop			;5c2b
	nop			;5c2c
	inc a			;5c2d
	ld h,d			;5c2e
	jr c,l5c35h		;5c2f
	ld h,d			;5c31
	inc a			;5c32
	nop			;5c33
	nop			;5c34
l5c35h:
	ld a,(hl)			;5c35
	dec b			;5c36
	jr l5c3bh		;5c37
	nop			;5c39
	dec b			;5c3a
l5c3bh:
	ld h,d			;5c3b
	add a,c			;5c3c
	inc a			;5c3d
	ld (bc),a			;5c3e
	nop			;5c3f
	inc b			;5c40
	ld h,d			;5c41
	add a,l			;5c42
	inc (hl)			;5c43
	jr l5c46h		;5c44
l5c46h:
	nop			;5c46
	ld h,d			;5c47
	inc b			;5c48
	ld l,d			;5c49
	adc a,c			;5c4a
	inc (hl)			;5c4b
	nop			;5c4c
	nop			;5c4d
	ld (hl),d			;5c4e
	inc (hl)			;5c4f
	jr c,l5c6eh		;5c50
	inc l			;5c52
	ld c,(hl)			;5c53
	ld (bc),a			;5c54
	nop			;5c55
	ld (bc),a			;5c56
	ld h,d			;5c57
	add a,c			;5c58
	inc (hl)			;5c59
	inc bc			;5c5a
	jr l5c5fh		;5c5b
	nop			;5c5d
	xor a			;5c5e
l5c5fh:
	ld a,(hl)			;5c5f
	inc b			;5c60
	jr c,l5c7fh		;5c61
	jr nz,l5ce3h		;5c63
	nop			;5c65
	inc a			;5c66
	ld b,d			;5c67
	sbc a,c			;5c68
	and c			;5c69
	and c			;5c6a
	sbc a,c			;5c6b
	ld b,d			;5c6c
	inc a			;5c6d
l5c6eh:
	ld a,(hl)			;5c6e
	cp 0c0h		;5c6f
	call m,0067eh		;5c71
	cp 0fch		;5c74
	ld a,(hl)			;5c76
	cp 0c0h		;5c77
	call m,0c0fch		;5c79
	cp 07eh		;5c7c
	ld a,(hl)			;5c7e
l5c7fh:
	cp 0c0h		;5c7f
	sbc a,0deh		;5c81
	add a,0feh		;5c83
	ld a,(hl)			;5c85
	jr c,l5cc0h		;5c86
	ld a,h			;5c88
	ld l,h			;5c89
	ld l,h			;5c8a
	add a,0deh		;5c8b
	rst 18h			;5c8d
	dec b			;5c8e
	nop			;5c8f
	ld (bc),a			;5c90
	jr l5c95h		;5c91
	nop			;5c93
	add a,(hl)			;5c94
l5c95h:
	inc a			;5c95
	ld h,(hl)			;5c96
	inc c			;5c97
	jr l5c9ah		;5c98
l5c9ah:
	jr l5c1dh		;5c9a
	nop			;5c9c
	nop			;5c9d
	ex af,af'			;5c9e
	nop			;5c9f
	add a,d			;5ca0
	inc a			;5ca1
	ld b,d			;5ca2
	inc b			;5ca3
	sbc a,c			;5ca4
	or (hl)			;5ca5
	ld b,d			;5ca6
	inc a			;5ca7
	inc a			;5ca8
	ld h,h			;5ca9
	ld b,h			;5caa
	ld h,h			;5cab
	inc h			;5cac
	ld h,(hl)			;5cad
	ld b,d			;5cae
	ld a,(hl)			;5caf
	inc a			;5cb0
	ld b,d			;5cb1
	sbc a,c			;5cb2
	sbc a,c			;5cb3
	ld (hl),d			;5cb4
	rst 8			;5cb5
	add a,c			;5cb6
	rst 38h			;5cb7
	inc a			;5cb8
	ld b,d			;5cb9
	sbc a,c			;5cba
	ld (hl),d			;5cbb
	ld a,c			;5cbc
	sbc a,c			;5cbd
	ld b,d			;5cbe
	inc a			;5cbf
l5cc0h:
	ld c,012h		;5cc0
	ld (0b352h),hl		;5cc2
	add a,c			;5cc5
	di			;5cc6
	ld e,0feh		;5cc7
	add a,d			;5cc9
	sbc a,(hl)			;5cca
	add a,e			;5ccb
	ld sp,hl			;5ccc
	sbc a,c			;5ccd
	ld b,d			;5cce
	inc a			;5ccf
	ld a,042h		;5cd0
	sbc a,(hl)			;5cd2
	add a,e			;5cd3
	sbc a,c			;5cd4
	sbc a,c			;5cd5
	ld b,d			;5cd6
	inc a			;5cd7
	rst 38h			;5cd8
	add a,c			;5cd9
	sbc a,c			;5cda
	or 003h		;5cdb
	inc h			;5cdd
	ld (bc),a			;5cde
	inc a			;5cdf
	sub b			;5ce0
	ld b,d			;5ce1
	sbc a,c			;5ce2
l5ce3h:
	ld b,d			;5ce3
	sbc a,c			;5ce4
	sbc a,c			;5ce5
	ld b,d			;5ce6
	inc a			;5ce7
	inc a			;5ce8
	ld b,d			;5ce9
	sbc a,c			;5cea
	sbc a,c			;5ceb
	pop bc			;5cec
	ld a,c			;5ced
	ld b,d			;5cee
	ld a,h			;5cef
	inc a			;5cf0
	ld (bc),a			;5cf1
	inc h			;5cf2
	ld (bc),a			;5cf3
	inc a			;5cf4
	ld (bc),a			;5cf5
	inc h			;5cf6
	add a,e			;5cf7
	inc a			;5cf8
	ld a,(hl)			;5cf9
	jp 09d03h		;5cfa
	sub l			;5cfd
	add a,c			;5cfe
	sbc a,l			;5cff
	rst 30h			;5d00
	cp 083h		;5d01
	sbc a,l			;5d03
	add a,e			;5d04
	sbc a,l			;5d05
	sbc a,l			;5d06
	add a,e			;5d07
	cp 07eh		;5d08
	jp 09f99h		;5d0a
	sbc a,a			;5d0d
	sbc a,c			;5d0e
	jp 0fe7eh		;5d0f
	add a,e			;5d12
	inc b			;5d13
	sbc a,l			;5d14
	cp e			;5d15
	add a,e			;5d16
	cp 0ffh		;5d17
	add a,c			;5d19
	sbc a,a			;5d1a
	add a,d			;5d1b
	sbc a,(hl)			;5d1c
	sbc a,a			;5d1d
	add a,c			;5d1e
	rst 38h			;5d1f
	rst 38h			;5d20
	add a,c			;5d21
	sbc a,a			;5d22
	sbc a,d			;5d23
	add a,d			;5d24
	sbc a,d			;5d25
	sbc a,(hl)			;5d26
	ret p			;5d27
	ld a,(hl)			;5d28
	jp 09f9dh		;5d29
	sub c			;5d2c
	sbc a,l			;5d2d
	jp 0f77eh		;5d2e
	sub l			;5d31
	sbc a,l			;5d32
	add a,c			;5d33
	sbc a,l			;5d34
	sub l			;5d35
	sub l			;5d36
	rst 30h			;5d37
	ld a,(hl)			;5d38
	ld b,d			;5d39
	ld h,(hl)			;5d3a
	inc h			;5d3b
	inc h			;5d3c
	ld h,(hl)			;5d3d
	ld b,d			;5d3e
	ld a,(hl)			;5d3f
	ccf			;5d40
	ld hl,l1233h		;5d41
	jp p,0c6b2h		;5d44
	ld a,h			;5d47
	rst 30h			;5d48
	sbc a,l			;5d49
	sbc a,e			;5d4a
	add a,(hl)			;5d4b
	sub (hl)			;5d4c
	sbc a,e			;5d4d
	sbc a,l			;5d4e
	rst 30h			;5d4f
	ret p			;5d50
	inc bc			;5d51
	sub b			;5d52
	adc a,c			;5d53
	sub a			;5d54
	sbc a,l			;5d55
	add a,c			;5d56
	rst 38h			;5d57
	rst 30h			;5d58
	sbc a,l			;5d59
	adc a,c			;5d5a
	sub l			;5d5b
	sbc a,l			;5d5c
	ld (bc),a			;5d5d
	sub l			;5d5e
	ld (bc),a			;5d5f
	rst 30h			;5d60
	adc a,c			;5d61
	sbc a,l			;5d62
	adc a,l			;5d63
	sub l			;5d64
	sbc a,c			;5d65
	sbc a,l			;5d66
	sub l			;5d67
	rst 30h			;5d68
	ld a,(hl)			;5d69
	jp 09d04h		;5d6a
	and l			;5d6d
	jp 0fe7eh		;5d6e
	add a,e			;5d71
	sbc a,l			;5d72
	sbc a,l			;5d73
	add a,e			;5d74
	sbc a,(hl)			;5d75
	sub b			;5d76
	ret p			;5d77
	ld a,(hl)			;5d78
	jp 09d9dh		;5d79
	sub l			;5d7c
	sbc a,c			;5d7d
	pop bc			;5d7e
	ld a,a			;5d7f
	cp 083h		;5d80
	sbc a,l			;5d82
	sbc a,l			;5d83
	add a,e			;5d84
	sbc a,e			;5d85
	sbc a,l			;5d86
	rst 30h			;5d87
	ld a,(hl)			;5d88
	jp 0c69dh		;5d89
	ld a,e			;5d8c
	sbc a,l			;5d8d
	jp 0ff7eh		;5d8e
	add a,c			;5d91
	rst 20h			;5d92
	inc b			;5d93
	inc h			;5d94
	add a,d			;5d95
	inc a			;5d96
	rst 30h			;5d97
	inc b			;5d98
	sub l			;5d99
	add a,h			;5d9a
	sbc a,l			;5d9b
	jp 0f77eh		;5d9c
	inc bc			;5d9f
	sub l			;5da0
	add a,(hl)			;5da1
	sbc a,l			;5da2
	bit 4,(hl)		;5da3
	inc a			;5da5
	rst 30h			;5da6
	sbc a,l			;5da7
	inc b			;5da8
	sub l			;5da9
	sbc a,d			;5daa
	bit 7,(hl)		;5dab
	rst 30h			;5dad
	adc a,l			;5dae
	bit 0,(hl)		;5daf
	ld h,d			;5db1
	out (0b1h),a		;5db2
	rst 28h			;5db4
	rst 30h			;5db5
	sub l			;5db6
	sbc a,l			;5db7
	bit 4,(hl)		;5db8
	inc h			;5dba
	inc h			;5dbb
	inc a			;5dbc
	rst 38h			;5dbd
	add a,c			;5dbe
	ei			;5dbf
	ld b,(hl)			;5dc0
	ld h,d			;5dc1
	rst 18h			;5dc2
	add a,c			;5dc3
	rst 38h			;5dc4
	inc l			;5dc5
	nop			;5dc6
	adc a,h			;5dc7
	jr l5deeh		;5dc8
	inc h			;5dca
	jr $+126		;5dcb
	jp 0f399h		;5dcd
	ld h,(hl)			;5dd0
	jr l5df7h		;5dd1
	inc a			;5dd3
	nop			;5dd4
	ld a,a			;5dd5
	nop			;5dd6
	ld a,a			;5dd7
	nop			;5dd8
	ld l,d			;5dd9
	nop			;5dda
	nop			;5ddb
	ld a,a			;5ddc
	nop			;5ddd
	ld a,a			;5dde
	nop			;5ddf
	ld l,d			;5de0
	nop			;5de1
	nop			;5de2
l5de3h:
	ld (ix-010h),b		;5de3
	ret c			;5de6
	xor b			;5de7
	ret c			;5de8
	xor b			;5de9
	ld a,b			;5dea
	jr $+120		;5deb
	xor h			;5ded
l5deeh:
	sub 0aah		;5dee
	ld d,h			;5df0
	jr c,l5df3h		;5df1
l5df3h:
	nop			;5df3
	jr c,l5e62h		;5df4
	ld d,(hl)			;5df6
l5df7h:
	ld l,d			;5df7
	ld d,(hl)			;5df8
	ld l,d			;5df9
	ld (hl),h			;5dfa
	ld e,b			;5dfb
	ld (hl),b			;5dfc
	ret c			;5dfd
	xor h			;5dfe
	call nc,sub_54ach		;5dff
	jr c,l5e04h		;5e02
l5e04h:
	inc c			;5e04
	sbc a,d			;5e05
	dec d			;5e06
	dec hl			;5e07
	dec (hl)			;5e08
	dec hl			;5e09
	ld (hl),09ch		;5e0a
	nop			;5e0c
	ld e,035h		;5e0d
	ld l,e			;5e0f
	ld d,l			;5e10
	ld l,d			;5e11
	inc (hl)			;5e12
	jr l5e31h		;5e13
	inc (hl)			;5e15
	ld l,d			;5e16
	ld d,(hl)			;5e17
	ld l,d			;5e18
	ld d,(hl)			;5e19
	ld hl,(00e1fh)		;5e1a
	dec de			;5e1d
	dec (hl)			;5e1e
	dec hl			;5e1f
	dec (hl)			;5e20
	ld a,(l203ch)		;5e21
	ld (bc),a			;5e24
	rlca			;5e25
	dec b			;5e26
	rst 0			;5e27
	pop hl			;5e28
	rst 30h			;5e29
	or 0e4h		;5e2a
	inc b			;5e2c
	ld c,00ah		;5e2d
	add a,0eah		;5e2f
l5e31h:
	cp 0fch		;5e31
	ret pe			;5e33
	ld bc,l2000h		;5e34
	jr nz,l5e5bh		;5e37
	ld hl,0d870h		;5e39
	xor b			;5e3c
	ret c			;5e3d
	xor b			;5e3e
	ret c			;5e3f
	ld (hl),e			;5e40
	inc bc			;5e41
	nop			;5e42
	add a,c			;5e43
	ld (bc),a			;5e44
	ld (bc),a			;5e45
	nop			;5e46
	inc bc			;5e47
	ex af,af'			;5e48
	sub d			;5e49
	jr c,l5ea4h		;5e4a
	xor b			;5e4c
	ret c			;5e4d
	xor b			;5e4e
	ret c			;5e4f
	or b			;5e50
	ld h,b			;5e51
	nop			;5e52
	nop			;5e53
	inc c			;5e54
	ld d,02bh		;5e55
	dec (hl)			;5e57
	dec hl			;5e58
	dec (hl)			;5e59
	ld a,(de)			;5e5a
l5e5bh:
	inc c			;5e5b
	ld (bc),a			;5e5c
	ret po			;5e5d
	ld (bc),a			;5e5e
	jp nz,09e87h		;5e5f
l5e62h:
	xor e			;5e62
	dec (hl)			;5e63
	ld e,000h		;5e64
	inc bc			;5e66
	rlca			;5e67
	inc bc			;5e68
	inc bc			;5e69
	add a,(hl)			;5e6a
	inc a			;5e6b
	ld l,h			;5e6c
	ret nc			;5e6d
	xor c			;5e6e
	ret c			;5e6f
	ld (hl),a			;5e70
	inc b			;5e71
	nop			;5e72
	jp nz,02d18h		;5e73
	ld d,d			;5e76
	ld l,h			;5e77
	ld d,h			;5e78
	ld l,h			;5e79
	ld e,b			;5e7a
	jr nc,l5e89h		;5e7b
	ld a,(de)			;5e7d
	dec (hl)			;5e7e
	dec hl			;5e7f
	dec (hl)			;5e80
	dec hl			;5e81
	dec d			;5e82
	rrca			;5e83
	inc b			;5e84
	inc e			;5e85
	inc l			;5e86
	ld d,h			;5e87
	ld l,h			;5e88
l5e89h:
	ld d,h			;5e89
	ld l,b			;5e8a
	jr nc,l5e9dh		;5e8b
	jr c,l5eb7h		;5e8d
	add hl,sp			;5e8f
	dec hl			;5e90
	ccf			;5e91
	rra			;5e92
	dec bc			;5e93
	ld b,b			;5e94
	ret po			;5e95
	and b			;5e96
	ex (sp),hl			;5e97
	and a			;5e98
	rst 28h			;5e99
	ld l,a			;5e9a
	daa			;5e9b
	ld a,h			;5e9c
l5e9dh:
	cp 0ffh		;5e9d
	ret p			;5e9f
	call nc,l40c0h		;5ea0
	ld h,b			;5ea3
l5ea4h:
	ld a,h			;5ea4
	cp 0feh		;5ea5
	rst 38h			;5ea7
	call p,0f0f4h		;5ea8
	ld h,b			;5eab
	ld a,h			;5eac
	cp 0ffh		;5ead
	cp 0fch		;5eaf
	call m,078f8h		;5eb1
	jr c,l5f32h		;5eb4
	dec b			;5eb6
l5eb7h:
	cp 098h		;5eb7
	ld a,h			;5eb9
	ld a,07fh		;5eba
	rst 38h			;5ebc
	adc a,a			;5ebd
	dec hl			;5ebe
	inc bc			;5ebf
	inc bc			;5ec0
	rlca			;5ec1
	ld a,07fh		;5ec2
	ld a,a			;5ec4
	rst 38h			;5ec5
	cpl			;5ec6
	cpl			;5ec7
	rrca			;5ec8
	ld b,03eh		;5ec9
	ld a,a			;5ecb
	rst 38h			;5ecc
	ld a,a			;5ecd
	ccf			;5ece
	ccf			;5ecf
	rra			;5ed0
	ld (bc),a			;5ed1
	ld e,006h		;5ed2
	ccf			;5ed4
	sub l			;5ed5
	rra			;5ed6
	ld e,07eh		;5ed7
	ld a,(hl)			;5ed9
	ret m			;5eda
	ret p			;5edb
	ret m			;5edc
	pop af			;5edd
	ld a,e			;5ede
	inc a			;5edf
	ld a,(hl)			;5ee0
	ld a,b			;5ee1
	ret p			;5ee2
	ld a,b			;5ee3
	jr nc,l5ef6h		;5ee4
	inc a			;5ee6
	jr nc,$+24		;5ee7
	djnz l5eebh		;5ee9
l5eebh:
	ld (bc),a			;5eeb
	inc c			;5eec
	inc c			;5eed
	nop			;5eee
	add a,c			;5eef
	jr nc,l5ef7h		;5ef0
	nop			;5ef2
	ld (bc),a			;5ef3
	ld (bc),a			;5ef4
	inc b			;5ef5
l5ef6h:
	nop			;5ef6
l5ef7h:
	add a,d			;5ef7
	jr nz,$-16		;5ef8
	ld b,000h		;5efa
	add a,l			;5efc
	ld (hl),b			;5efd
	ret po			;5efe
	inc b			;5eff
	ld b,002h		;5f00
	dec b			;5f02
	nop			;5f03
	add a,e			;5f04
	jr nz,l5f67h		;5f05
	ld b,b			;5f07
	ld b,000h		;5f08
	add a,e			;5f0a
	add a,b			;5f0b
	ret nz			;5f0c
	ld b,b			;5f0d
	dec b			;5f0e
	nop			;5f0f
	add a,e			;5f10
	add hl,sp			;5f11
	ld a,a			;5f12
	ccf			;5f13
	ld (bc),a			;5f14
	rra			;5f15
	ld (bc),a			;5f16
	ld a,a			;5f17
	add a,c			;5f18
	ld b,b			;5f19
	inc bc			;5f1a
	ld h,b			;5f1b
	add a,c			;5f1c
	ld b,b			;5f1d
	inc b			;5f1e
	nop			;5f1f
	add a,c			;5f20
	inc b			;5f21
	ld (bc),a			;5f22
	rrca			;5f23
	inc b			;5f24
	rra			;5f25
	ld (bc),a			;5f26
	nop			;5f27
	add a,c			;5f28
	add a,b			;5f29
	inc b			;5f2a
	ret nz			;5f2b
	ld (bc),a			;5f2c
	nop			;5f2d
	add a,d			;5f2e
	rlca			;5f2f
	rra			;5f30
	ld (bc),a			;5f31
l5f32h:
	ccf			;5f32
	inc bc			;5f33
	rra			;5f34
	sub d			;5f35
	nop			;5f36
	ld bc,0e0e1h		;5f37
	ret po			;5f3a
	ret nz			;5f3b
	add a,b			;5f3c
	add a,b			;5f3d
	nop			;5f3e
	ld bc,l0f07h		;5f3f
	rra			;5f42
	rrca			;5f43
	rlca			;5f44
	rlca			;5f45
	nop			;5f46
	ret p			;5f47
	ld (bc),a			;5f48
	ret m			;5f49
	ld (bc),a			;5f4a
	ret p			;5f4b
	ld (bc),a			;5f4c
	ret po			;5f4d
	add a,a			;5f4e
	inc bc			;5f4f
	daa			;5f50
	ld a,a			;5f51
	rst 38h			;5f52
	rst 38h			;5f53
	sbc a,(hl)			;5f54
	ld c,003h		;5f55
	nop			;5f57
	adc a,d			;5f58
	inc l			;5f59
	ld a,(hl)			;5f5a
	ld a,(hl)			;5f5b
	cp 067h		;5f5c
	ld b,a			;5f5e
	add a,b			;5f5f
	ld bc,l0f02h+1		;5f60
	ld (bc),a			;5f63
	rlca			;5f64
	ld (bc),a			;5f65
	inc bc			;5f66
l5f67h:
	add a,d			;5f67
	nop			;5f68
	ret po			;5f69
	ld b,0f0h		;5f6a
	add a,d			;5f6c
	nop			;5f6d
	rrca			;5f6e
	ld (bc),a			;5f6f
	rra			;5f70
	ld (bc),a			;5f71
	rrca			;5f72
	ld (bc),a			;5f73
	rlca			;5f74
	add a,e			;5f75
	nop			;5f76
	ret nz			;5f77
	ret po			;5f78
	inc bc			;5f79
	ret p			;5f7a
	ld (bc),a			;5f7b
	ret po			;5f7c
	inc bc			;5f7d
	nop			;5f7e
	add a,c			;5f7f
	rlca			;5f80
	inc bc			;5f81
	rrca			;5f82
	add a,(hl)			;5f83
	rra			;5f84
	nop			;5f85
	ld bc,00707h		;5f86
	inc bc			;5f89
	inc bc			;5f8a
	ld bc,l0082h		;5f8b
	rst 20h			;5f8e
	ld (bc),a			;5f8f
	rst 38h			;5f90
	ld (bc),a			;5f91
	call m,0f802h		;5f92
	add hl,bc			;5f95
	nop			;5f96
	add a,e			;5f97
	ld (bc),a			;5f98
	rrca			;5f99
	ccf			;5f9a
l5f9bh:
	ld (bc),a			;5f9b
	rrca			;5f9c
	ld (bc),a			;5f9d
	rra			;5f9e
	add a,h			;5f9f
	nop			;5fa0
	jr c,l5f9bh		;5fa1
	ret p			;5fa3
	ld (bc),a			;5fa4
	ret po			;5fa5
	ld (bc),a			;5fa6
	ret nz			;5fa7
	ld (bc),a			;5fa8
	call m,sub_7c04h		;5fa9
	add a,h			;5fac
	call m,0f83ch		;5fad
	ret p			;5fb0
	ld (bc),a			;5fb1
	ret po			;5fb2
	ld (bc),a			;5fb3
	ret nz			;5fb4
	ld (bc),a			;5fb5
	add a,b			;5fb6
	add a,e			;5fb7
	inc bc			;5fb8
	rrca			;5fb9
	rra			;5fba
	inc bc			;5fbb
	ccf			;5fbc
	ld (bc),a			;5fbd
	rra			;5fbe
	add a,d			;5fbf
	inc bc			;5fc0
	rra			;5fc1
	ld (bc),a			;5fc2
	ccf			;5fc3
	inc bc			;5fc4
	rra			;5fc5
	add a,e			;5fc6
	inc bc			;5fc7
	ret p			;5fc8
	call m,0fe02h		;5fc9
	ld (bc),a			;5fcc
	ret m			;5fcd
	inc b			;5fce
	nop			;5fcf
	add a,d			;5fd0
	ld c,00fh		;5fd1
	inc bc			;5fd3
	rlca			;5fd4
	add a,(hl)			;5fd5
	inc bc			;5fd6
	nop			;5fd7
	jr c,$-16		;5fd8
	ret p			;5fda
	ret m			;5fdb
	inc bc			;5fdc
	ret p			;5fdd
	add a,d			;5fde
	nop			;5fdf
	inc bc			;5fe0
	ld (bc),a			;5fe1
	rrca			;5fe2
	ld (bc),a			;5fe3
	rlca			;5fe4
	ld (bc),a			;5fe5
	inc bc			;5fe6
	add a,e			;5fe7
	nop			;5fe8
	inc b			;5fe9
	rra			;5fea
	inc bc			;5feb
	rlca			;5fec
l5fedh:
	add a,h			;5fed
	rrca			;5fee
	rra			;5fef
	nop			;5ff0
	ret nz			;5ff1
	ld (bc),a			;5ff2
	ret po			;5ff3
	ld (bc),a			;5ff4
	ret nz			;5ff5
	ld (bc),a			;5ff6
	add a,b			;5ff7
	add a,(hl)			;5ff8
	nop			;5ff9
	ld bc,l0702h+1		;5ffa
	rlca			;5ffd
	ld bc,l0003h		;5ffe
	add a,d			;6001
	jr c,$-8		;6002
	inc bc			;6004
	ret p			;6005
	add a,a			;6006
	ret m			;6007
	ld a,b			;6008
	nop			;6009
	nop			;600a
	dec sp			;600b
	ld a,a			;600c
	rra			;600d
	inc bc			;600e
	rrca			;600f
	add a,e			;6010
	add a,b			;6011
	ret po			;6012
	ret nz			;6013
	inc bc			;6014
	ret po			;6015
	ld (bc),a			;6016
	ret nz			;6017
	inc bc			;6018
	nop			;6019
	add a,c			;601a
	ret p			;601b
	inc bc			;601c
	ret m			;601d
	add a,d			;601e
	call m,0021fh		;601f
	nop			;6022
	ld (bc),a			;6023
	ld bc,l2182h		;6024
	rra			;6027
	dec b			;6028
	nop			;6029
	add a,d			;602a
	jr nz,l5fedh		;602b
	inc bc			;602d
	nop			;602e
	adc a,c			;602f
	ld b,000h		;6030
	nop			;6032
	ret po			;6033
	ld h,b			;6034
	nop			;6035
	nop			;6036
	rra			;6037
	ld c,003h		;6038
	nop			;603a
	add a,e			;603b
	ld bc,l0e10h		;603c
	inc bc			;603f
	nop			;6040
	add a,e			;6041
	and h			;6042
	or e			;6043
	ret z			;6044
	dec b			;6045
	nop			;6046
	add a,e			;6047
	ld b,b			;6048
	ld h,b			;6049
	jr nc,l604fh		;604a
	nop			;604c
	add a,e			;604d
	ex af,af'			;604e
l604fh:
	jr l6061h		;604f
	inc b			;6051
	nop			;6052
	add a,c			;6053
	rrca			;6054
	inc b			;6055
	nop			;6056
	adc a,l			;6057
	djnz l6069h		;6058
	nop			;605a
	ret nz			;605b
	nop			;605c
	jr nz,l609fh		;605d
	ld b,b			;605f
	add a,b			;6060
l6061h:
	nop			;6061
	nop			;6062
	ex af,af'			;6063
	djnz l6070h		;6064
	nop			;6066
	add a,c			;6067
	rrca			;6068
l6069h:
	inc bc			;6069
	nop			;606a
	add a,c			;606b
	ld b,b			;606c
	inc b			;606d
	nop			;606e
	add a,c			;606f
l6070h:
	add a,b			;6070
	dec b			;6071
	nop			;6072
	add a,d			;6073
	djnz l608eh		;6074
	inc bc			;6076
	nop			;6077
	add a,c			;6078
	ld (bc),a			;6079
	ld (bc),a			;607a
	nop			;607b
	inc bc			;607c
	ld bc,l0000h+2		;607d
	add a,d			;6080
	inc b			;6081
	ret nc			;6082
	inc bc			;6083
	nop			;6084
	add a,l			;6085
	add a,h			;6086
	ld a,b			;6087
	nop			;6088
	ex af,af'			;6089
	jr l6095h		;608a
	nop			;608c
	add a,a			;608d
l608eh:
	inc b			;608e
	inc c			;608f
	ex af,af'			;6090
	nop			;6091
	nop			;6092
	ld (hl),b			;6093
	ret po			;6094
l6095h:
	inc b			;6095
	nop			;6096
	adc a,(hl)			;6097
	adc a,b			;6098
	ld (hl),b			;6099
	nop			;609a
	inc b			;609b
	nop			;609c
l609dh:
	nop			;609d
	ld h,b			;609e
l609fh:
	push bc			;609f
	inc bc			;60a0
	nop			;60a1
	nop			;60a2
	djnz l60bdh		;60a3
	ex af,af'			;60a5
	inc b			;60a6
	nop			;60a7
	adc a,c			;60a8
	inc bc			;60a9
	nop			;60aa
	inc b			;60ab
	ld (bc),a			;60ac
	ld (bc),a			;60ad
	ld bc,l0000h		;60ae
	ret p			;60b1
	inc b			;60b2
	nop			;60b3
	add a,l			;60b4
	ex af,af'			;60b5
	ret p			;60b6
	nop			;60b7
	djnz l60c2h		;60b8
	add hl,bc			;60ba
	nop			;60bb
	add a,(hl)			;60bc
l60bdh:
	inc b			;60bd
	inc c			;60be
	jr l60c1h		;60bf
l60c1h:
	nop			;60c1
l60c2h:
	ld (bc),a			;60c2
	inc b			;60c3
	nop			;60c4
	add a,c			;60c5
	ld bc,l0006h		;60c6
	add a,c			;60c9
	ret p			;60ca
	inc bc			;60cb
	nop			;60cc
	ld (bc),a			;60cd
	rra			;60ce
	add a,c			;60cf
	ld bc,l0003h		;60d0
	add a,d			;60d3
	ccf			;60d4
l60d5h:
	ld e,003h		;60d5
	add a,b			;60d7
	inc bc			;60d8
	nop			;60d9
	add a,e			;60da
	jr nz,l609dh		;60db
	ld bc,l0004h		;60dd
	add a,c			;60e0
	jr c,l60eah		;60e1
	nop			;60e3
	add a,h			;60e4
	ld (hl),b			;60e5
	nop			;60e6
	nop			;60e7
	ld (bc),a			;60e8
	inc b			;60e9
l60eah:
	nop			;60ea
	adc a,c			;60eb
	ld (hl),b			;60ec
	nop			;60ed
	nop			;60ee
	ret po			;60ef
	nop			;60f0
	nop			;60f1
	inc d			;60f2
	jr l60d5h		;60f3
	inc bc			;60f5
	nop			;60f6
	add a,h			;60f7
	ld b,000h		;60f8
	nop			;60fa
	add a,b			;60fb
	inc bc			;60fc
	nop			;60fd
	ld (bc),a			;60fe
	ccf			;60ff
	adc a,c			;6100
	ld c,000h		;6101
	ld bc,l4301h		;6103
	inc a			;6106
	nop			;6107
	ld b,b			;6108
	add a,b			;6109
	inc bc			;610a
	nop			;610b
	add a,c			;610c
	ret nz			;610d
	dec b			;610e
	nop			;610f
	add a,c			;6110
	jr c,l6116h		;6111
	nop			;6113
	add a,(hl)			;6114
	ld (bc),a			;6115
l6116h:
	nop			;6116
	nop			;6117
	ret po			;6118
	djnz l6123h		;6119
	ld b,000h		;611b
	add a,c			;611d
	jr $+4		;611e
	nop			;6120
	add a,c			;6121
	ld h,b			;6122
l6123h:
	ld b,000h		;6123
	add a,c			;6125
	inc b			;6126
	inc bc			;6127
	nop			;6128
	add a,d			;6129
	jr c,l6170h		;612a
	dec b			;612c
	nop			;612d
	ld (bc),a			;612e
	ld (bc),a			;612f
	rlca			;6130
	nop			;6131
	add a,c			;6132
	jr nc,l613bh		;6133
	nop			;6135
	add a,e			;6136
	jr l6168h		;6137
	djnz l613dh		;6139
l613bh:
	nop			;613b
	ld (bc),a			;613c
l613dh:
	djnz l6141h		;613d
	nop			;613f
	add a,d			;6140
l6141h:
	jr l614bh		;6141
l6143h:
	inc bc			;6143
	nop			;6144
	adc a,d			;6145
	ret nz			;6146
	ret m			;6147
	add a,b			;6148
	nop			;6149
	ld b,b			;614a
l614bh:
	ld h,b			;614b
	jr nz,l614eh		;614c
l614eh:
	jr nc,$+16		;614e
	dec b			;6150
	nop			;6151
	add a,c			;6152
	ld a,h			;6153
	ld (bc),a			;6154
	nop			;6155
	ld (bc),a			;6156
	inc b			;6157
	add a,d			;6158
	add a,a			;6159
	ld a,h			;615a
	ld b,000h		;615b
	add a,c			;615d
	ld h,b			;615e
	ld b,000h		;615f
	add a,l			;6161
	ld b,b			;6162
	ld (hl),b			;6163
	nop			;6164
	nop			;6165
	ld a,h			;6166
	ld (bc),a			;6167
l6168h:
	nop			;6168
	ld (bc),a			;6169
	inc b			;616a
	add a,d			;616b
	ld b,07ch		;616c
	inc bc			;616e
	nop			;616f
l6170h:
	add a,a			;6170
	ld (bc),a			;6171
	nop			;6172
	jr nz,l618dh		;6173
	nop			;6175
	nop			;6176
	ld (bc),a			;6177
	ld (bc),a			;6178
	nop			;6179
	inc bc			;617a
	ld bc,l0004h		;617b
	add a,c			;617e
	inc e			;617f
	ex af,af'			;6180
	nop			;6181
	adc a,h			;6182
	ld (bc),a			;6183
	ld b,004h		;6184
	nop			;6186
	nop			;6187
	add a,c			;6188
	inc (hl)			;6189
	nop			;618a
	ld b,b			;618b
	ld b,b			;618c
l618dh:
	ret nz			;618d
	ld a,(hl)			;618e
	inc bc			;618f
	nop			;6190
	adc a,l			;6191
	jr nz,l6194h		;6192
l6194h:
	ld (bc),a			;6194
	inc c			;6195
	nop			;6196
	nop			;6197
	rlca			;6198
	nop			;6199
	nop			;619a
	ld b,b			;619b
	ret nz			;619c
	adc a,b			;619d
	rlca			;619e
	dec b			;619f
	nop			;61a0
	add a,l			;61a1
	inc e			;61a2
	inc c			;61a3
	nop			;61a4
	nop			;61a5
	ret nz			;61a6
	ld (bc),a			;61a7
	nop			;61a8
	ld (bc),a			;61a9
	ld c,b			;61aa
	add a,h			;61ab
	ld (hl),b			;61ac
	ret nz			;61ad
	nop			;61ae
	jr nc,l61bbh		;61af
	nop			;61b1
	inc bc			;61b2
	ld bc,l0000h+2		;61b3
	ld (bc),a			;61b6
	djnz l6143h		;61b7
	ld (de),a			;61b9
	nop			;61ba
l61bbh:
	nop			;61bb
	ex af,af'			;61bc
	ret p			;61bd
	nop			;61be
	inc bc			;61bf
	nop			;61c0
	nop			;61c1
	inc b			;61c2
	ld (bc),a			;61c3
	ld (bc),a			;61c4
	ld (bc),a			;61c5
	nop			;61c6
	ld (bc),a			;61c7
	call m,0c081h		;61c8
	inc bc			;61cb
	nop			;61cc
	add a,d			;61cd
	ld a,(hl)			;61ce
	cp h			;61cf
	dec b			;61d0
	nop			;61d1
	add a,h			;61d2
	ld c,000h		;61d3
	nop			;61d5
	ld b,b			;61d6
	inc b			;61d7
	nop			;61d8
	add a,c			;61d9
	ld c,002h		;61da
	nop			;61dc
	inc bc			;61dd
	ld bc,l0003h		;61de
	add a,e			;61e1
	inc b			;61e2
	inc bc			;61e3
	add a,b			;61e4
	inc b			;61e5
	nop			;61e6
	sbc a,l			;61e7
	inc e			;61e8
	nop			;61e9
	nop			;61ea
	ld a,h			;61eb
	cp 0ffh		;61ec
	ret p			;61ee
	call nc,l40c0h		;61ef
	ld h,b			;61f2
	ld a,h			;61f3
	cp 0feh		;61f4
	rst 38h			;61f6
	call p,0f0f4h		;61f7
	ld h,b			;61fa
	ld a,h			;61fb
	cp 0ffh		;61fc
	cp 0fch		;61fe
l6200h:
	call m,078f8h		;6200
	jr c,l6281h		;6203
	dec b			;6205
	cp 098h		;6206
	ld a,h			;6208
	ld a,07fh		;6209
	rst 38h			;620b
	adc a,a			;620c
	dec hl			;620d
	inc bc			;620e
	inc bc			;620f
	rlca			;6210
	ld a,07fh		;6211
	ld a,a			;6213
	rst 38h			;6214
	cpl			;6215
	cpl			;6216
	rrca			;6217
	ld b,03eh		;6218
	ld a,a			;621a
	rst 38h			;621b
	ld a,a			;621c
	ccf			;621d
	ccf			;621e
	rra			;621f
	ld (bc),a			;6220
	ld e,006h		;6221
	ccf			;6223
	sub h			;6224
	rra			;6225
	ld e,07eh		;6226
	ld a,(hl)			;6228
	ret m			;6229
	ret p			;622a
	ret m			;622b
	pop af			;622c
	ld a,e			;622d
	inc a			;622e
	ld a,(hl)			;622f
	ld a,b			;6230
	ret p			;6231
	ld a,b			;6232
	jr nc,l6245h		;6233
	inc a			;6235
	nop			;6236
	nop			;6237
	jr l623eh		;6238
	inc h			;623a
	add a,c			;623b
	jr c,l6241h		;623c
l623eh:
	nop			;623e
	add a,c			;623f
	ld (hl),b			;6240
l6241h:
	inc bc			;6241
	adc a,b			;6242
	adc a,b			;6243
	ld (hl),b			;6244
l6245h:
	jr l626bh		;6245
l6247h:
	ld b,h			;6247
	ld b,h			;6248
	ld c,b			;6249
	ld (hl),b			;624a
	add a,b			;624b
	inc bc			;624c
	nop			;624d
	adc a,c			;624e
	ld c,011h		;624f
	djnz $+16		;6251
	rrca			;6253
	nop			;6254
	nop			;6255
	jr nz,l6276h		;6256
	inc bc			;6258
	ld de,l6e89h		;6259
	nop			;625c
	ld h,b			;625d
l625eh:
	sub b			;625e
	adc a,b			;625f
	adc a,b			;6260
	ld c,b			;6261
	jr c,l6268h		;6262
	dec b			;6264
	nop			;6265
	add a,l			;6266
	inc (hl)			;6267
l6268h:
	ld c,e			;6268
	ld c,c			;6269
	ld c,b			;626a
l626bh:
	jr l6271h		;626b
	inc h			;626d
	add a,l			;626e
	jr l6281h		;626f
l6271h:
	djnz l628bh		;6271
	ld c,003h		;6273
	add hl,bc			;6275
l6276h:
	add a,c			;6276
	ld b,005h		;6277
	nop			;6279
	add a,c			;627a
	djnz l6282h		;627b
	jr z,l6200h		;627d
	jr l6284h		;627f
l6281h:
	ex af,af'			;6281
l6282h:
	inc b			;6282
	nop			;6283
l6284h:
	add a,l			;6284
	ld a,h			;6285
	cp 086h		;6286
	ld d,(hl)			;6288
	ld (bc),a			;6289
	inc bc			;628a
l628bh:
	nop			;628b
	add a,h			;628c
	ld a,h			;628d
	cp 082h		;628e
	xor b			;6290
	inc b			;6291
	nop			;6292
	add a,l			;6293
	ld a,h			;6294
	cp 0c2h		;6295
	call nc,l037eh+2		;6297
	nop			;629a
	add a,h			;629b
	ld a,h			;629c
	cp 082h		;629d
	ld hl,(l0004h)		;629f
	adc a,h			;62a2
	ld a,h			;62a3
	cp 082h		;62a4
	ld hl,(l0300h+1)		;62a6
	ld (bc),a			;62a9
	ld a,h			;62aa
	cp 086h		;62ab
	ld d,(hl)			;62ad
	ld (bc),a			;62ae
	inc b			;62af
	nop			;62b0
	add a,c			;62b1
	ret po			;62b2
	ld (bc),a			;62b3
	ld (hl),b			;62b4
	ld (bc),a			;62b5
	jr nc,l6247h		;62b6
	ld h,b			;62b8
	nop			;62b9
	inc e			;62ba
	ld c,013h		;62bb
	dec b			;62bd
	ld bc,l0201h		;62be
	nop			;62c1
	ret po			;62c2
	ret p			;62c3
	jr c,l625eh		;62c4
	jr nz,$+4		;62c6
	nop			;62c8
	add a,l			;62c9
	ld a,h			;62ca
	cp 0c6h		;62cb
	ret nc			;62cd
	add a,h			;62ce
	ld (bc),a			;62cf
	nop			;62d0
	inc bc			;62d1
	jr nz,l62dch		;62d2
	nop			;62d4
	add a,c			;62d5
	inc c			;62d6
	rlca			;62d7
	nop			;62d8
	ld (bc),a			;62d9
l62dah:
	djnz l62e0h		;62da
l62dch:
	nop			;62dc
	add a,d			;62dd
	ret nz			;62de
	ld h,b			;62df
l62e0h:
	ex af,af'			;62e0
	nop			;62e1
	add a,c			;62e2
	inc c			;62e3
	ld a,(bc)			;62e4
	nop			;62e5
	add a,c			;62e6
	ld h,b			;62e7
	rlca			;62e8
	nop			;62e9
	add a,d			;62ea
	ld h,b			;62eb
	add a,b			;62ec
	inc bc			;62ed
	nop			;62ee
	add a,c			;62ef
	ld b,004h		;62f0
	nop			;62f2
	add a,c			;62f3
	add a,b			;62f4
	dec b			;62f5
	nop			;62f6
	add a,c			;62f7
	jr nc,l6301h		;62f8
	nop			;62fa
	add a,c			;62fb
	inc c			;62fc
	inc b			;62fd
	nop			;62fe
	ld (bc),a			;62ff
	ex af,af'			;6300
l6301h:
	ld b,000h		;6301
	add a,c			;6303
	jr nc,l6310h		;6304
	nop			;6306
	add a,c			;6307
	ld b,004h		;6308
	nop			;630a
	add a,c			;630b
	jr nc,l6312h		;630c
	nop			;630e
	add a,c			;630f
l6310h:
	ld e,005h		;6310
l6312h:
	nop			;6312
	add a,c			;6313
	inc c			;6314
	rlca			;6315
	nop			;6316
	add a,c			;6317
	ld h,b			;6318
	rlca			;6319
	nop			;631a
	add a,c			;631b
	ld h,(hl)			;631c
	rlca			;631d
	nop			;631e
	add a,c			;631f
	ld b,007h		;6320
	nop			;6322
	add a,(hl)			;6323
	ld h,b			;6324
	nop			;6325
	jr nc,l6328h		;6326
l6328h:
	nop			;6328
	ld b,009h		;6329
	nop			;632b
	add a,c			;632c
	jr nc,l6331h		;632d
	nop			;632f
	ld (bc),a			;6330
l6331h:
	ld bc,l0082h		;6331
	ld bc,l0007h		;6334
	add a,h			;6337
	ld h,b			;6338
	nop			;6339
	ld (bc),a			;633a
	ld b,004h		;633b
	nop			;633d
	add a,h			;633e
	ld b,b			;633f
	add a,b			;6340
	ex af,af'			;6341
	djnz l6346h		;6342
	nop			;6344
	ld (bc),a			;6345
l6346h:
	ld bc,l0008h		;6346
	add a,e			;6349
	ld b,b			;634a
	nop			;634b
	ld b,008h		;634c
	nop			;634e
	ld (bc),a			;634f
	add a,b			;6350
	inc bc			;6351
	nop			;6352
	ld (bc),a			;6353
	jr nz,l62dah		;6354
	nop			;6356
	inc bc			;6357
	nop			;6358
	jr nz,$+10		;6359
	nop			;635b
	add a,e			;635c
	ld b,000h		;635d
	ld h,b			;635f
	rlca			;6360
	nop			;6361
	add a,c			;6362
	inc bc			;6363
	ld b,000h		;6364
	add a,c			;6366
	ex af,af'			;6367
	rlca			;6368
	nop			;6369
	add a,d			;636a
	jr nc,l6379h		;636b
	dec b			;636d
	nop			;636e
	add a,c			;636f
	djnz $+8		;6370
	nop			;6372
	add a,c			;6373
	ret nz			;6374
	ld b,000h		;6375
	add a,d			;6377
	inc c			;6378
l6379h:
	jr nc,l6382h		;6379
	nop			;637b
	inc bc			;637c
	ld bc,l0005h		;637d
	ld (bc),a			;6380
	ret m			;6381
l6382h:
	add a,d			;6382
	jr $-128		;6383
	inc b			;6385
	nop			;6386
	add a,d			;6387
	ld (bc),a			;6388
	rlca			;6389
	ld (bc),a			;638a
	ccf			;638b
	ld b,000h		;638c
	ld (bc),a			;638e
	call m,l0005h		;638f
	add a,c			;6392
	inc b			;6393
	ld (bc),a			;6394
	rlca			;6395
	ld b,000h		;6396
	add a,d			;6398
	ret po			;6399
	add a,b			;639a
	inc b			;639b
	nop			;639c
	add a,e			;639d
	ld b,00fh		;639e
	ex af,af'			;63a0
	ld b,000h		;63a1
	add a,e			;63a3
	ret po			;63a4
	ret nz			;63a5
	ld b,b			;63a6
	dec b			;63a7
	nop			;63a8
	adc a,e			;63a9
	inc c			;63aa
	rrca			;63ab
	rlca			;63ac
	nop			;63ad
	nop			;63ae
	ex af,af'			;63af
	nop			;63b0
	djnz l63b3h		;63b1
l63b3h:
	ret nz			;63b3
	add a,b			;63b4
	ld b,000h		;63b5
	add a,d			;63b7
	add a,b			;63b8
	cp 006h		;63b9
	nop			;63bb
	add a,d			;63bc
	rrca			;63bd
	inc bc			;63be
	dec b			;63bf
	nop			;63c0
	add a,c			;63c1
	ld b,b			;63c2
	ld (bc),a			;63c3
	ret nz			;63c4
	ld (bc),a			;63c5
	nop			;63c6
	inc bc			;63c7
	ld bc,00084h		;63c8
	rrca			;63cb
	add hl,bc			;63cc
	ret nz			;63cd
	ld (bc),a			;63ce
	add a,b			;63cf
	ld (bc),a			;63d0
	nop			;63d1
	add a,c			;63d2
	jr nz,l63d7h		;63d3
	ret p			;63d5
	ld (bc),a			;63d6
l63d7h:
	ld bc,l0386h+1		;63d7
	ld (bc),a			;63da
	ld (bc),a			;63db
	nop			;63dc
	rra			;63dd
	rra			;63de
	add a,b			;63df
	inc b			;63e0
	nop			;63e1
	add a,e			;63e2
	ld b,b			;63e3
	ret po			;63e4
	add a,b			;63e5
	dec b			;63e6
	nop			;63e7
	ld (bc),a			;63e8
	ret p			;63e9
	add a,c			;63ea
	ret po			;63eb
	ld b,000h		;63ec
	add a,c			;63ee
	inc bc			;63ef
	inc bc			;63f0
	nop			;63f1
	ld (bc),a			;63f2
	ld (bc),a			;63f3
	add a,d			;63f4
	nop			;63f5
	djnz $+2		;63f6
	ret p			;63f8
	ld b,000h		;63f9
	add a,d			;63fb
	ld (bc),a			;63fc
	ld b,005h		;63fd
	nop			;63ff
	add a,e			;6400
	adc a,h			;6401
	call m,sub_0338h		;6402
	nop			;6405
	add a,h			;6406
	djnz l6421h		;6407
	rra			;6409
	ld bc,l0006h		;640a
	ld (bc),a			;640d
	add a,b			;640e
	ld b,000h		;640f
	add a,e			;6411
	jr l6433h		;6412
	rlca			;6414
	dec b			;6415
	nop			;6416
	add a,e			;6417
	add a,b			;6418
	call m,sub_060ch		;6419
	nop			;641c
	add a,c			;641d
	rlca			;641e
	rlca			;641f
	nop			;6420
l6421h:
	ld (bc),a			;6421
	ret po			;6422
	ld b,000h		;6423
	add a,c			;6425
	ld bc,l0005h		;6426
	add a,e			;6429
l642ah:
	jr c,$-8		;642a
	jr nc,l6433h		;642c
	nop			;642e
	add a,h			;642f
	jr c,l642ah		;6430
	ret p			;6432
l6433h:
	jr nc,l6439h		;6433
	nop			;6435
	add a,h			;6436
	ld b,00fh		;6437
l6439h:
	inc c			;6439
	ex af,af'			;643a
	dec b			;643b
	nop			;643c
	add a,d			;643d
	ret po			;643e
	ld b,b			;643f
	ld b,000h		;6440
	ld (bc),a			;6442
	ret nz			;6443
	add a,c			;6444
	nop			;6445
	ld (bc),a			;6446
	cp 005h		;6447
	ret nz			;6449
	add a,c			;644a
	nop			;644b
	ld (bc),a			;644c
	ld a,(hl)			;644d
	dec b			;644e
	ld b,002h		;644f
	nop			;6451
	inc b			;6452
	ret nz			;6453
	ld (bc),a			;6454
	cp 002h		;6455
	nop			;6457
	inc b			;6458
	ld b,002h		;6459
	ld a,(hl)			;645b
	add a,l			;645c
	nop			;645d
	jr c,l64bch		;645e
	ld l,h			;6460
	inc c			;6461
	inc b			;6462
	nop			;6463
	ld (bc),a			;6464
	jr c,l6469h		;6465
	jr nc,l646dh		;6467
l6469h:
	nop			;6469
	add a,h			;646a
	jr c,l64e1h		;646b
l646dh:
	ld l,h			;646d
	inc c			;646e
	inc b			;646f
	nop			;6470
	nop			;6471
	add a,(hl)			;6472
	nop			;6473
	jr nz,l64c6h		;6474
	jr nz,$+80		;6476
	jr nz,$+3		;6478
	nop			;647a
	add a,h			;647b
	jr z,l64d2h		;647c
	jr z,l6490h		;647e
	inc b			;6480
	nop			;6481
	adc a,l			;6482
	jr z,l6499h		;6483
	jr z,l649bh		;6485
	jr z,l6499h		;6487
	nop			;6489
	nop			;648a
	ld d,b			;648b
	jr z,l64deh		;648c
	jr z,l64a0h		;648e
l6490h:
	inc bc			;6490
	nop			;6491
	sbc a,l			;6492
	adc a,b			;6493
	call po,0d4cah		;6494
	ld c,d			;6497
	inc b			;6498
l6499h:
	ld h,b			;6499
	nop			;649a
l649bh:
	nop			;649b
	inc d			;649c
	ld hl,(l2814h)		;649d
l64a0h:
	djnz l64a2h		;64a0
l64a2h:
	nop			;64a2
	djnz l64cdh		;64a3
	inc d			;64a5
	jr z,l64bch		;64a6
	ex af,af'			;64a8
	nop			;64a9
	nop			;64aa
	ld a,(bc)			;64ab
	inc d			;64ac
	ld a,(bc)			;64ad
	inc d			;64ae
	ex af,af'			;64af
	inc bc			;64b0
	nop			;64b1
	sbc a,h			;64b2
	ld (bc),a			;64b3
	nop			;64b4
	jp nz,0f2fch		;64b5
	ret p			;64b8
	ret m			;64b9
	nop			;64ba
	inc b			;64bb
l64bch:
	nop			;64bc
	call m,0f4e0h		;64bd
	ret p			;64c0
	ret p			;64c1
	ld (hl),c			;64c2
	ld (hl),b			;64c3
	ld d,b			;64c4
	nop			;64c5
l64c6h:
	ld (bc),a			;64c6
	ld bc,l5101h		;64c7
	ld hl,02353h		;64ca
l64cdh:
	ld d,e			;64cd
	inc bc			;64ce
	inc bc			;64cf
	nop			;64d0
	adc a,l			;64d1
l64d2h:
	inc b			;64d2
	rrca			;64d3
	rrca			;64d4
	rlca			;64d5
	ld bc,l0000h+1		;64d6
	djnz l64fbh		;64d9
	ld d,b			;64db
	jr nz,$+80		;64dc
l64deh:
	jr nz,l64e4h		;64de
	nop			;64e0
l64e1h:
	add a,a			;64e1
	inc b			;64e2
	ld a,(bc)			;64e3
l64e4h:
	inc d			;64e4
	ld a,(bc)			;64e5
	inc d			;64e6
	ex af,af'			;64e7
	nop			;64e8
	ld (bc),a			;64e9
sub_64eah:
	rst 20h			;64ea
	ld (bc),a			;64eb
	ret nz			;64ec
	and e			;64ed
	add a,b			;64ee
	adc a,d			;64ef
	inc d			;64f0
	nop			;64f1
	nop			;64f2
	inc bc			;64f3
	rlca			;64f4
	rrca			;64f5
	rrca			;64f6
	inc bc			;64f7
	nop			;64f8
	jr z,l654bh		;64f9
l64fbh:
	jr z,l654dh		;64fb
	rlca			;64fd
	inc bc			;64fe
	inc bc			;64ff
	ld bc,l0102h+1		;6500
	ex af,af'			;6503
	ld de,01028h		;6504
	jr z,l6519h		;6507
	nop			;6509
	nop			;650a
	ex af,af'			;650b
	inc d			;650c
	ld a,(bc)			;650d
	inc d			;650e
	ld a,(bc)			;650f
	inc b			;6510
	inc bc			;6511
	nop			;6512
	sub (hl)			;6513
	ex af,af'			;6514
	djnz $+40		;6515
	djnz l6539h		;6517
l6519h:
	nop			;6519
	nop			;651a
	djnz l651dh		;651b
l651dh:
	ld de,01703h		;651d
	rlca			;6520
	rlca			;6521
	nop			;6522
	ld b,b			;6523
	nop			;6524
	ld b,e			;6525
	rlca			;6526
	ld c,a			;6527
	rrca			;6528
	rra			;6529
	inc bc			;652a
	nop			;652b
	add a,l			;652c
	ld c,02ah		;652d
	ccf			;652f
	ld a,01eh		;6530
	inc b			;6532
	nop			;6533
	ld (bc),a			;6534
	ld a,(bc)			;6535
	add a,d			;6536
	ld c,01eh		;6537
l6539h:
	inc b			;6539
	nop			;653a
	ld (bc),a			;653b
	ld (bc),a			;653c
	add a,d			;653d
	ld b,004h		;653e
	dec bc			;6540
	nop			;6541
	add a,l			;6542
	ld (hl),b			;6543
	ld d,h			;6544
	call m,l79fch		;6545
	inc b			;6548
	nop			;6549
	ld (bc),a			;654a
l654bh:
	ld d,b			;654b
	add a,d			;654c
l654dh:
	ld (hl),b			;654d
	ld a,b			;654e
	inc b			;654f
	nop			;6550
	ld (bc),a			;6551
	ld b,b			;6552
	add a,d			;6553
	ld h,b			;6554
	jr nz,$+8		;6555
	nop			;6557
	ld (bc),a			;6558
	ld bc,00092h		;6559
	ld b,00eh		;655c
	ld b,00fh		;655e
	rlca			;6560
	nop			;6561
	nop			;6562
	ld b,00fh		;6563
	add a,a			;6565
	rst 8			;6566
	rst 38h			;6567
	cp 000h		;6568
	nop			;656a
	ex af,af'			;656b
	dec e			;656c
	ld (bc),a			;656d
	inc de			;656e
	ld (bc),a			;656f
	nop			;6570
	add a,d			;6571
	ld (bc),a			;6572
	ld b,003h		;6573
	inc c			;6575
	inc bc			;6576
	ld c,087h		;6577
	nop			;6579
	inc e			;657a
	inc c			;657b
	ld e,007h		;657c
	inc bc			;657e
	ld bc,l0003h		;657f
	ld (bc),a			;6582
	rlca			;6583
	add a,h			;6584
	ld b,00eh		;6585
	inc a			;6587
	call m,l0006h		;6588
	add a,d			;658b
	ld a,b			;658c
	call m,l0003h		;658d
	ld (bc),a			;6590
	rlca			;6591
	add a,c			;6592
	ld b,002h		;6593
	ld c,003h		;6595
	nop			;6597
	ld (bc),a			;6598
	ret po			;6599
	add a,c			;659a
	ld h,b			;659b
	ld (bc),a			;659c
	ld (hl),b			;659d
	ld (bc),a			;659e
	nop			;659f
	add a,h			;65a0
	jr nz,$+48		;65a1
	ld (hl),h			;65a3
	djnz l65a9h		;65a4
	nop			;65a6
	add a,d			;65a7
	ccf			;65a8
l65a9h:
	ld a,a			;65a9
	inc bc			;65aa
	rst 38h			;65ab
	ld (bc),a			;65ac
	ld a,a			;65ad
	adc a,d			;65ae
	ld b,b			;65af
	ld h,b			;65b0
	ld h,b			;65b1
	ld (hl),b			;65b2
	ld a,b			;65b3
	ld a,01eh		;65b4
	ex af,af'			;65b6
	nop			;65b7
	inc b			;65b8
	ld (bc),a			;65b9
	rrca			;65ba
	inc bc			;65bb
	rra			;65bc
	add a,c			;65bd
	dec e			;65be
	ld (bc),a			;65bf
	nop			;65c0
	ld (bc),a			;65c1
	ret nz			;65c2
	and b			;65c3
	ret p			;65c4
	ret po			;65c5
	ret nz			;65c6
	ret po			;65c7
	nop			;65c8
	rlca			;65c9
	rra			;65ca
	ccf			;65cb
	ld a,a			;65cc
	ld a,a			;65cd
	ccf			;65ce
	rra			;65cf
	nop			;65d0
	add a,(hl)			;65d1
	cp 0feh		;65d2
	ret m			;65d4
	ret po			;65d5
	add a,b			;65d6
	add a,b			;65d7
	nop			;65d8
	ld bc,l0f07h		;65d9
	rra			;65dc
	ccf			;65dd
	ccf			;65de
	rra			;65df
	inc e			;65e0
	call m,0f8fch		;65e1
	ld (bc),a			;65e4
	ret p			;65e5
	ld (bc),a			;65e6
	ret po			;65e7
	add a,e			;65e8
	inc bc			;65e9
	ccf			;65ea
	ld a,a			;65eb
	ld (bc),a			;65ec
	rst 38h			;65ed
	ld (bc),a			;65ee
	cp 093h		;65ef
	ld a,(hl)			;65f1
	nop			;65f2
	nop			;65f3
	inc a			;65f4
	ld a,(hl)			;65f5
	ld a,(hl)			;65f6
	cp 0ffh		;65f7
	rst 38h			;65f9
	nop			;65fa
	jp l6fffh		;65fb
	ld a,a			;65fe
	ccf			;65ff
l6600h:
	rrca			;6600
	inc bc			;6601
	nop			;6602
	ret po			;6603
	ld b,0f0h		;6604
	add a,h			;6606
	jr c,l6648h		;6607
	ccf			;6609
	rra			;660a
	ld (bc),a			;660b
	rrca			;660c
	ld (bc),a			;660d
	rlca			;660e
	add a,c			;660f
	jr nz,l6617h		;6610
	ret p			;6612
	ld (bc),a			;6613
	ret po			;6614
	inc bc			;6615
	nop			;6616
l6617h:
	add a,c			;6617
	rlca			;6618
	inc bc			;6619
	rrca			;661a
	adc a,d			;661b
	rra			;661c
	nop			;661d
	ld bc,l0f07h		;661e
	rrca			;6621
	dec e			;6622
	dec a			;6623
	add hl,sp			;6624
	nop			;6625
	inc bc			;6626
	rst 38h			;6627
	ld (bc),a			;6628
	call m,0f802h		;6629
	add a,l			;662c
	ld d,01eh		;662d
	call m,0c0f0h		;662f
	inc b			;6632
	nop			;6633
	add a,e			;6634
	inc bc			;6635
	rrca			;6636
	cp a			;6637
	inc bc			;6638
	rst 38h			;6639
	add a,l			;663a
	rra			;663b
	ld c,0fch		;663c
	call m,sub_02f0h		;663e
	ret po			;6641
	ld (bc),a			;6642
	ret nz			;6643
	add a,d			;6644
	call m,l02feh		;6645
l6648h:
	ld a,a			;6648
l6649h:
	ld (bc),a			;6649
	ld a,h			;664a
	add a,h			;664b
	call m,0f83ch		;664c
	ret p			;664f
	ld (bc),a			;6650
	ret po			;6651
	ld (bc),a			;6652
	ret nz			;6653
	ld (bc),a			;6654
	add a,b			;6655
	add a,l			;6656
	inc bc			;6657
	rrca			;6658
	rra			;6659
	ccf			;665a
	ld a,a			;665b
	inc bc			;665c
	rst 38h			;665d
	add a,d			;665e
	inc bc			;665f
	rra			;6660
	ld (bc),a			;6661
	ccf			;6662
	ld (bc),a			;6663
	ld a,a			;6664
	add a,h			;6665
	rra			;6666
	inc bc			;6667
	ret p			;6668
	call m,0fe04h		;6669
	add a,(hl)			;666c
	inc c			;666d
	nop			;666e
	ret nz			;666f
	ret p			;6670
	cp 03fh		;6671
	inc bc			;6673
	rlca			;6674
	sub e			;6675
	inc bc			;6676
	nop			;6677
	ld a,0ffh		;6678
	rst 38h			;667a
	ei			;667b
	di			;667c
	rst 30h			;667d
	di			;667e
	nop			;667f
	inc bc			;6680
	rrca			;6681
	rrca			;6682
	ld e,a			;6683
	rst 38h			;6684
	ei			;6685
	inc bc			;6686
	nop			;6687
	rlca			;6688
	ld (bc),a			;6689
	rra			;668a
	ld (bc),a			;668b
l668ch:
	ccf			;668c
	adc a,l			;668d
	ld a,a			;668e
	rst 38h			;668f
	nop			;6690
	ret nz			;6691
	ret po			;6692
	ret po			;6693
	ret p			;6694
	call m,08ebeh		;6695
	nop			;6698
	ld bc,l0503h		;6699
	rlca			;669c
	add a,e			;669d
	nop			;669e
	ret m			;669f
	call m,0fe05h		;66a0
	ld (bc),a			;66a3
	nop			;66a4
	adc a,(hl)			;66a5
	ld a,07dh		;66a6
	ld a,l			;66a8
	ld a,e			;66a9
	dec sp			;66aa
	jr nc,l66adh		;66ab
l66adh:
	ret po			;66ad
	jr c,l668ch		;66ae
	call c,087cfh		;66b0
	ld b,(hl)			;66b3
	inc bc			;66b4
	nop			;66b5
	add a,c			;66b6
	ret p			;66b7
	inc bc			;66b8
	ret m			;66b9
	add a,d			;66ba
	call m,sub_041fh		;66bb
	nop			;66be
	add a,c			;66bf
	jr nz,l66c4h		;66c0
	ld e,004h		;66c2
l66c4h:
	nop			;66c4
	add a,(hl)			;66c5
	jr nz,$+96		;66c6
	ret po			;66c8
	ret po			;66c9
	rst 30h			;66ca
	and 003h		;66cb
	ret po			;66cd
	add a,l			;66ce
	ld h,b			;66cf
	nop			;66d0
	nop			;66d1
	ld e,00eh		;66d2
	inc b			;66d4
	nop			;66d5
	sub (hl)			;66d6
	djnz l66f7h		;66d7
	ret p			;66d9
	ret p			;66da
	ld a,h			;66db
	jr $+44		;66dc
	ret p			;66de
	ret m			;66df
	jr c,$+30		;66e0
	inc e			;66e2
	inc a			;66e3
	ld a,b			;66e4
	ld (hl),b			;66e5
	jr nc,l66e8h		;66e6
l66e8h:
	nop			;66e8
	jr c,l6703h		;66e9
	jr l66fdh		;66eb
	inc b			;66ed
	nop			;66ee
	add a,c			;66ef
	rrca			;66f0
	inc b			;66f1
	nop			;66f2
	adc a,l			;66f3
	djnz l6705h		;66f4
	rrca			;66f6
l66f7h:
	ret nz			;66f7
	nop			;66f8
	jr nz,l671bh		;66f9
	jr nc,l6775h		;66fb
l66fdh:
	jr c,l6717h		;66fd
	jr l6711h		;66ff
	ld a,(bc)			;6701
	nop			;6702
l6703h:
	add a,c			;6703
	rrca			;6704
l6705h:
	inc bc			;6705
	rlca			;6706
	adc a,l			;6707
	ld b,b			;6708
	jr nz,l672bh		;6709
	jr nc,l6745h		;670b
	cp b			;670d
	jr $+24		;670e
	rrca			;6710
l6711h:
	ld c,01ch		;6711
	inc e			;6713
	jr l6719h		;6714
	nop			;6716
l6717h:
	add a,c			;6717
	inc bc			;6718
l6719h:
	inc bc			;6719
	nop			;671a
l671bh:
	add a,(hl)			;671b
	inc b			;671c
	rrca			;671d
	ld e,01ch		;671e
	jp m,003e8h		;6720
	nop			;6723
	add a,e			;6724
	inc b			;6725
	ld a,b			;6726
	jr c,l672bh		;6727
	jr l6731h		;6729
l672bh:
	nop			;672b
	adc a,d			;672c
	jr c,l676bh		;672d
	inc e			;672f
	inc e			;6730
l6731h:
	inc c			;6731
	ex af,af'			;6732
	nop			;6733
	nop			;6734
	ret p			;6735
	ret po			;6736
	inc b			;6737
	nop			;6738
	adc a,(hl)			;6739
	adc a,b			;673a
	ret p			;673b
	djnz l6755h		;673c
	rra			;673e
	ld a,018h		;673f
	inc (hl)			;6741
	ld c,01fh		;6742
l6744h:
	inc e			;6744
l6745h:
	jr l675fh		;6745
	ex af,af'			;6747
	inc b			;6748
	nop			;6749
	adc a,c			;674a
	inc bc			;674b
	nop			;674c
	inc b			;674d
	inc b			;674e
	inc c			;674f
	ld e,01ch		;6750
	jr l6744h		;6752
	inc b			;6754
l6755h:
	nop			;6755
	add a,l			;6756
	ex af,af'			;6757
	ret p			;6758
	ret p			;6759
	jr l6764h		;675a
	ld b,000h		;675c
	adc a,(hl)			;675e
l675fh:
	ret p			;675f
	ld (hl),b			;6760
	ld a,b			;6761
	inc a			;6762
	inc e			;6763
l6764h:
	jr l6766h		;6764
l6766h:
	nop			;6766
	ld (bc),a			;6767
	inc b			;6768
	inc b			;6769
	inc c			;676a
l676bh:
	inc e			;676b
	dec e			;676c
	ld (bc),a			;676d
	jr l6774h		;676e
	nop			;6770
	add a,c			;6771
	ret p			;6772
	inc bc			;6773
l6774h:
	ret po			;6774
l6775h:
	ld (bc),a			;6775
	rra			;6776
	add a,c			;6777
	ld bc,l0003h		;6778
	add a,l			;677b
	jr nz,l679ah		;677c
	ret m			;677e
	or b			;677f
	add a,b			;6780
	inc bc			;6781
	nop			;6782
	add a,e			;6783
	jr nz,l6766h		;6784
	dec e			;6786
	ld (bc),a			;6787
	inc e			;6788
	inc bc			;6789
	jr c,l678eh		;678a
	nop			;678c
	add a,d			;678d
l678eh:
	ret po			;678e
	ret p			;678f
	inc b			;6790
	ld (hl),b			;6791
	ld (bc),a			;6792
	nop			;6793
	add a,e			;6794
	ccf			;6795
	jr c,l6810h		;6796
	inc bc			;6798
	ld (hl),b			;6799
l679ah:
	ld (bc),a			;679a
	nop			;679b
	adc a,b			;679c
	ret po			;679d
	nop			;679e
	nop			;679f
	ld b,00fh		;67a0
	rst 28h			;67a2
	rst 20h			;67a3
	and 002h		;67a4
	add a,003h		;67a6
	add a,b			;67a8
	inc bc			;67a9
	nop			;67aa
	ld (bc),a			;67ab
	ccf			;67ac
	add a,c			;67ad
	ld c,003h		;67ae
	nop			;67b0
	adc a,a			;67b1
	ld b,d			;67b2
	inc a			;67b3
	nop			;67b4
	ld b,b			;67b5
	ret po			;67b6
	ret p			;67b7
	ld (hl),b			;67b8
	ld h,b			;67b9
	ret nz			;67ba
	nop			;67bb
	ld e,00eh		;67bc
	ld c,01ch		;67be
	jr c,l67c5h		;67c0
	nop			;67c2
	adc a,c			;67c3
	ld (bc),a			;67c4
l67c5h:
	nop			;67c5
	nop			;67c6
	pop hl			;67c7
	ld (hl),e			;67c8
	ld a,a			;67c9
	rst 30h			;67ca
	and 00eh		;67cb
	ld (bc),a			;67cd
	inc e			;67ce
	ld (bc),a			;67cf
	jr l67d5h		;67d0
	nop			;67d2
	ld (bc),a			;67d3
	ld h,b			;67d4
l67d5h:
	ld b,000h		;67d5
	add a,c			;67d7
	inc b			;67d8
	inc bc			;67d9
	nop			;67da
	add a,d			;67db
	jr c,l685ah		;67dc
	ld (bc),a			;67de
	ld a,b			;67df
	inc bc			;67e0
	nop			;67e1
	ld (bc),a			;67e2
	inc bc			;67e3
	inc bc			;67e4
	nop			;67e5
	add a,l			;67e6
	ret m			;67e7
	ret p			;67e8
	ld h,b			;67e9
	djnz l681ch		;67ea
	rlca			;67ec
	nop			;67ed
	add a,a			;67ee
	cpl			;67ef
	rra			;67f0
	rrca			;67f1
	rlca			;67f2
	rra			;67f3
	ld e,000h		;67f4
	ld (bc),a			;67f6
	jr l67feh		;67f7
	nop			;67f9
	adc a,c			;67fa
	ld a,b			;67fb
	ret m			;67fc
	cp b			;67fd
l67feh:
	ld a,b			;67fe
	ld (hl),b			;67ff
l6800h:
	jr nz,l6832h		;6800
	jr nc,l6814h		;6802
	dec b			;6804
	nop			;6805
	add a,c			;6806
	ld a,h			;6807
	inc b			;6808
	nop			;6809
	add a,h			;680a
	add a,e			;680b
	ld a,a			;680c
	ld (hl),e			;680d
	nop			;680e
	ld (bc),a			;680f
l6810h:
	jr nz,l6815h		;6810
	ld h,b			;6812
	ld (bc),a			;6813
l6814h:
	nop			;6814
l6815h:
	add a,h			;6815
	inc e			;6816
	jr c,l6851h		;6817
	jr nc,l681dh		;6819
	ld (hl),b			;681b
l681ch:
	ld (bc),a			;681c
l681dh:
	nop			;681d
	add a,c			;681e
	ld a,h			;681f
	inc b			;6820
	nop			;6821
	add a,e			;6822
	ld (bc),a			;6823
	ld a,(hl)			;6824
	ld a,003h		;6825
	ld e,002h		;6827
	jr c,$-124		;6829
	jr l682dh		;682b
l682dh:
	nop			;682d
	inc bc			;682e
	inc bc			;682f
	nop			;6830
	add a,e			;6831
l6832h:
	inc b			;6832
	rrca			;6833
	ld c,003h		;6834
	inc c			;6836
	add a,c			;6837
	inc e			;6838
	dec b			;6839
	nop			;683a
	adc a,d			;683b
	jr c,l685ah		;683c
	inc e			;683e
	ld c,006h		;683f
	inc b			;6841
	nop			;6842
	nop			;6843
	cp 03ah		;6844
	inc bc			;6846
	nop			;6847
	add a,d			;6848
	add a,b			;6849
	ld a,(hl)			;684a
	inc b			;684b
	inc a			;684c
	ld (bc),a			;684d
	ld c,08ch		;684e
	inc c			;6850
l6851h:
	nop			;6851
	nop			;6852
	ld a,a			;6853
	ld (hl),b			;6854
	ret po			;6855
	and b			;6856
	nop			;6857
	ex af,af'			;6858
	rlca			;6859
l685ah:
	rlca			;685a
	ld e,004h		;685b
	inc e			;685d
	adc a,h			;685e
	inc c			;685f
	nop			;6860
	nop			;6861
	ret nz			;6862
	nop			;6863
	nop			;6864
	ex af,af'			;6865
	inc c			;6866
	ld e,09eh		;6867
	adc a,h			;6869
	jr nc,l6873h		;686a
	nop			;686c
	sbc a,e			;686d
	inc bc			;686e
	ld bc,l0000h		;686f
	inc e			;6872
l6873h:
	ld e,01ch		;6873
	jr l6873h		;6875
	call m,sub_006ch		;6877
	nop			;687a
	ex af,af'			;687b
	ret m			;687c
	jr c,l6882h		;687d
	nop			;687f
	nop			;6880
	inc b			;6881
l6882h:
	inc c			;6882
l6883h:
	inc e			;6883
	inc e			;6884
	jr l6883h		;6885
	call m,sub_03c0h		;6887
	nop			;688a
	add a,h			;688b
	ld (bc),a			;688c
	sbc a,h			;688d
	rlca			;688e
	rrca			;688f
	inc b			;6890
	ld c,002h		;6891
	nop			;6893
	add a,e			;6894
	call m,sub_1e1ch		;6895
	inc bc			;6898
	ld c,002h		;6899
	nop			;689b
	add a,e			;689c
	rra			;689d
	dec c			;689e
	ld bc,l0003h		;689f
	add a,e			;68a2
	inc b			;68a3
	rlca			;68a4
	cp b			;68a5
	ld (bc),a			;68a6
	jr c,l68ach		;68a7
	inc e			;68a9
	ld (bc),a			;68aa
	nop			;68ab
l68ach:
	adc a,h			;68ac
	ld a,h			;68ad
	cp 0ffh		;68ae
	cp 0fah		;68b0
	rst 38h			;68b2
	ld a,(hl)			;68b3
	ld a,(hl)			;68b4
	ld a,h			;68b5
	cp 0feh		;68b6
	rst 38h			;68b8
	inc bc			;68b9
	cp 084h		;68ba
	ld a,(hl)			;68bc
	ld a,h			;68bd
	cp 0ffh		;68be
	inc b			;68c0
	cp 083h		;68c1
	ld a,h			;68c3
	jr c,l6942h		;68c4
	dec b			;68c6
	cp 08dh		;68c7
	ld a,h			;68c9
	ld a,07fh		;68ca
	rst 38h			;68cc
	rst 38h			;68cd
	ld e,a			;68ce
	rst 38h			;68cf
	rst 38h			;68d0
	ld a,a			;68d1
	ld a,07fh		;68d2
	ld a,a			;68d4
	rst 38h			;68d5
	inc bc			;68d6
	ld a,a			;68d7
	add a,h			;68d8
	ld a,(hl)			;68d9
	ld a,07fh		;68da
	rst 38h			;68dc
	inc b			;68dd
	ld a,a			;68de
	add a,d			;68df
	ld a,01eh		;68e0
	ld b,03fh		;68e2
	ld (bc),a			;68e4
	rra			;68e5
	add a,d			;68e6
	ld a,a			;68e7
	ld a,(hl)			;68e8
	inc bc			;68e9
	cp 083h		;68ea
	rst 38h			;68ec
	ld a,a			;68ed
	inc a			;68ee
	ld (bc),a			;68ef
	ld a,(hl)			;68f0
	inc b			;68f1
	rst 38h			;68f2
	add a,c			;68f3
	cp 003h		;68f4
	nop			;68f6
	add a,h			;68f7
	ex af,af'			;68f8
	djnz l6903h		;68f9
	djnz $+5		;68fb
	nop			;68fd
	adc a,c			;68fe
	jr nz,l6951h		;68ff
	jr nz,l6903h		;6901
l6903h:
	nop			;6903
	ex af,af'			;6904
	djnz l692fh		;6905
	djnz l690fh		;6907
	nop			;6909
	add a,e			;690a
	inc b			;690b
	ld a,(bc)			;690c
	dec b			;690d
	dec b			;690e
l690fh:
	nop			;690f
	sbc a,d			;6910
	call nz,sub_64eah		;6911
	djnz l6986h		;6914
	nop			;6916
	ld b,b			;6917
	jr nz,l696ah		;6918
	jr nz,l691ch		;691a
l691ch:
	ld (bc),a			;691c
	ld b,073h		;691d
	ccf			;691f
	rrca			;6920
	rlca			;6921
	inc bc			;6922
l6923h:
	jr nz,l6937h		;6923
	inc hl			;6925
	nop			;6926
	ex af,af'			;6927
	djnz l6932h		;6928
	djnz l692fh		;692a
	nop			;692c
	ld (bc),a			;692d
	add a,b			;692e
l692fh:
	add a,(hl)			;692f
	add a,h			;6930
	ld (bc),a			;6931
l6932h:
	inc b			;6932
	nop			;6933
	nop			;6934
	add a,b			;6935
	inc b			;6936
l6937h:
	nop			;6937
	add a,l			;6938
	djnz l693bh		;6939
l693bh:
	djnz l693dh		;693b
l693dh:
	djnz l6942h		;693d
	nop			;693f
	add a,h			;6940
	inc b			;6941
l6942h:
	inc c			;6942
	ld c,007h		;6943
	inc bc			;6945
	nop			;6946
	add a,l			;6947
	ld a,b			;6948
	jr z,l69c7h		;6949
	ld a,h			;694b
	ld a,003h		;694c
	nop			;694e
	add a,l			;694f
	ld a,h			;6950
l6951h:
	ld d,h			;6951
	call m,07b7ch		;6952
	inc bc			;6955
	nop			;6956
	add a,l			;6957
	inc a			;6958
	jr z,l69d7h		;6959
	ld a,h			;695b
	ret m			;695c
	inc bc			;695d
	nop			;695e
	add a,l			;695f
	ld a,h			;6960
	ld d,h			;6961
	ld a,(hl)			;6962
	ld a,h			;6963
	cp h			;6964
	inc bc			;6965
	nop			;6966
	add a,e			;6967
	ld a,h			;6968
	ld d,h			;6969
l696ah:
	ld a,(hl)			;696a
	ld (bc),a			;696b
	ld a,h			;696c
	ld (bc),a			;696d
	nop			;696e
	add a,(hl)			;696f
	ld a,b			;6970
	jr z,$+124		;6971
	ld a,h			;6973
	inc a			;6974
	ld a,002h		;6975
	nop			;6977
	ld (bc),a			;6978
	add a,b			;6979
	ld (bc),a			;697a
	ret nz			;697b
	sub d			;697c
	add a,b			;697d
	ret c			;697e
	inc bc			;697f
	ld de,l3a2ch		;6980
	ld a,03eh		;6983
	ld e,h			;6985
l6986h:
	cp 000h		;6986
	nop			;6988
	ret nz			;6989
	ld h,b			;698a
	ret nc			;698b
	ret p			;698c
	ret po			;698d
	ret nz			;698e
	inc bc			;698f
	nop			;6990
	add a,l			;6991
	jr c,l69c0h		;6992
	ld a,b			;6994
	ld a,h			;6995
	ret m			;6996
	inc bc			;6997
	nop			;6998
	inc bc			;6999
	jr nc,l6923h		;699a
	jr l69bah		;699c
	rrca			;699e
	inc c			;699f
	inc c			;69a0
	nop			;69a1
	inc e			;69a2
	inc bc			;69a3
	nop			;69a4
	adc a,l			;69a5
	ret p			;69a6
	ret po			;69a7
	ret p			;69a8
	ld l,b			;69a9
	jr z,$+24		;69aa
	jr nc,l69aeh		;69ac
l69aeh:
	ld bc,01703h		;69ae
	ccf			;69b1
	inc a			;69b2
	inc bc			;69b3
	nop			;69b4
l69b5h:
	add a,l			;69b5
	rlca			;69b6
	ld c,00ch		;69b7
	nop			;69b9
l69bah:
	inc e			;69ba
	inc bc			;69bb
	nop			;69bc
	inc bc			;69bd
	ret po			;69be
	add a,l			;69bf
l69c0h:
	ret nz			;69c0
	ld h,b			;69c1
	ld h,b			;69c2
	djnz l69b5h		;69c3
	ld (bc),a			;69c5
	inc bc			;69c6
l69c7h:
	ld (bc),a			;69c7
	rlca			;69c8
	adc a,c			;69c9
	ld c,03ch		;69ca
	jr l69cfh		;69cc
	inc bc			;69ce
l69cfh:
	rlca			;69cf
	ld b,008h		;69d0
	ld c,003h		;69d2
l69d4h:
	nop			;69d4
	add a,d			;69d5
	ld a,b			;69d6
l69d7h:
	jr c,l69ddh		;69d7
	jr nc,$-105		;69d9
	nop			;69db
	ld a,b			;69dc
l69ddh:
	ld a,(hl)			;69dd
	ld l,(hl)			;69de
	ld h,(hl)			;69df
	xor 0ech		;69e0
	call z,l0e10h		;69e2
	rrca			;69e5
	rlca			;69e6
	rrca			;69e7
	ld d,014h		;69e8
	jr l69f8h		;69ea
	nop			;69ec
	ret p			;69ed
	jr nc,$+48		;69ee
	nop			;69f0
	jr c,l69f6h		;69f1
l69f3h:
	nop			;69f3
	inc bc			;69f4
	rlca			;69f5
l69f6h:
	adc a,d			;69f6
	inc bc			;69f7
l69f8h:
	ld b,006h		;69f8
	ex af,af'			;69fa
	rrca			;69fb
	ret po			;69fc
	ld (hl),b			;69fd
	jr nc,l6a00h		;69fe
l6a00h:
	jr c,$+3		;6a00
	nop			;6a02
	add a,d			;6a03
	ld bc,l041eh		;6a04
	inc c			;6a07
	and a			;6a08
	nop			;6a09
	ld e,0fch		;6a0a
	call pe,0eecch		;6a0c
	ld l,(hl)			;6a0f
	ld h,(hl)			;6a10
	djnz l69f3h		;6a11
	rst 38h			;6a13
	ld h,a			;6a14
	rst 20h			;6a15
	ex (sp),hl			;6a16
	ex (sp),hl			;6a17
	ld h,a			;6a18
	nop			;6a19
	rst 20h			;6a1a
	ld e,00eh		;6a1b
	inc c			;6a1d
	inc c			;6a1e
	ld c,006h		;6a1f
	nop			;6a21
	ld c,0e0h		;6a22
	ret po			;6a24
	ret p			;6a25
	ld (hl),b			;6a26
	ld h,b			;6a27
	ld h,b			;6a28
	nop			;6a29
	ld (hl),b			;6a2a
	rlca			;6a2b
	ld b,006h		;6a2c
	nop			;6a2e
	ld c,003h		;6a2f
	nop			;6a31
	add a,c			;6a32
	ret p			;6a33
	ld (bc),a			;6a34
	ld (hl),b			;6a35
	ld (bc),a			;6a36
	jr nc,l69d4h		;6a37
	nop			;6a39
	jr nc,l6aach		;6a3a
	nop			;6a3c
	ld h,b			;6a3d
	add hl,sp			;6a3e
	ld (de),a			;6a3f
	dec de			;6a40
	dec de			;6a41
	dec e			;6a42
	rrca			;6a43
	ld a,a			;6a44
	ld (hl),a			;6a45
	ld l,(hl)			;6a46
	ld c,0e6h		;6a47
	inc b			;6a49
	ld bc,0dc0fh		;6a4a
	ret c			;6a4d
	ret c			;6a4e
	sbc a,b			;6a4f
	ld e,b			;6a50
	call nc,sub_388ch		;6a51
	inc bc			;6a54
	jr l6a59h		;6a55
	dec c			;6a57
	inc bc			;6a58
l6a59h:
	rrca			;6a59
	adc a,b			;6a5a
	ld l,(hl)			;6a5b
	xor 0e6h		;6a5c
	add a,(hl)			;6a5e
	add a,008h		;6a5f
	ld b,003h		;6a61
	ld (bc),a			;6a63
	ret nz			;6a64
	ld (bc),a			;6a65
	ret po			;6a66
	sub b			;6a67
	ret p			;6a68
	or b			;6a69
	jr c,l6a84h		;6a6a
	rra			;6a6c
	dec e			;6a6d
	dec de			;6a6e
	ld e,e			;6a6f
	ld e,e			;6a70
	ld h,e			;6a71
	ld h,b			;6a72
	inc bc			;6a73
	nop			;6a74
	ret nz			;6a75
	ret nz			;6a76
	add a,b			;6a77
	inc b			;6a78
	nop			;6a79
	adc a,b			;6a7a
	xor 0e6h		;6a7b
	ld h,(hl)			;6a7d
	ld h,b			;6a7e
	ld h,(hl)			;6a7f
	nop			;6a80
	ld h,b			;6a81
	ret po			;6a82
	ld (bc),a			;6a83
l6a84h:
	ld bc,l0302h+1		;6a84
	sbc a,h			;6a87
	inc c			;6a88
	rrca			;6a89
	inc bc			;6a8a
	ret po			;6a8b
	ret nc			;6a8c
	or b			;6a8d
	inc a			;6a8e
	inc (hl)			;6a8f
	inc c			;6a90
	jr l6a93h		;6a91
l6a93h:
	ld e,03ch		;6a93
	jr c,l6ad3h		;6a95
	inc c			;6a97
	ld (hl),d			;6a98
l6a99h:
	ld c,01ch		;6a99
	dec bc			;6a9b
	dec c			;6a9c
	inc a			;6a9d
	inc l			;6a9e
	jr nc,l6ab9h		;6a9f
	nop			;6aa1
l6aa2h:
	nop			;6aa2
	add a,b			;6aa3
	inc bc			;6aa4
	ret nz			;6aa5
	sub l			;6aa6
	jr nc,l6a99h		;6aa7
	ret nz			;6aa9
	nop			;6aaa
	inc a			;6aab
l6aach:
	inc e			;6aac
	inc a			;6aad
	jr nc,l6afeh		;6aae
	ld (hl),b			;6ab0
	jr c,l6ab3h		;6ab1
l6ab3h:
	rrca			;6ab3
	inc bc			;6ab4
	inc bc			;6ab5
	rrca			;6ab6
	inc c			;6ab7
	nop			;6ab8
l6ab9h:
	ld (bc),a			;6ab9
	rlca			;6aba
	ret po			;6abb
	inc bc			;6abc
	ret p			;6abd
	ld (bc),a			;6abe
	nop			;6abf
	add a,d			;6ac0
	ret po			;6ac1
	ld a,b			;6ac2
	inc bc			;6ac3
	cp 086h		;6ac4
	ld a,(hl)			;6ac6
	ld a,h			;6ac7
	ld a,b			;6ac8
	nop			;6ac9
	ld b,b			;6aca
	ret m			;6acb
	ld (bc),a			;6acc
	cp 003h		;6acd
	rst 38h			;6acf
	add a,d			;6ad0
	inc bc			;6ad1
	nop			;6ad2
l6ad3h:
	dec b			;6ad3
	rlca			;6ad4
	adc a,e			;6ad5
	inc bc			;6ad6
	nop			;6ad7
	ex af,af'			;6ad8
	ret m			;6ad9
	ret p			;6ada
	ret p			;6adb
	ret m			;6adc
	call m,000e8h		;6add
	ld (hl),b			;6ae0
	ld (bc),a			;6ae1
	inc bc			;6ae2
	ld (bc),a			;6ae3
	rlca			;6ae4
	adc a,h			;6ae5
	ld bc,l0700h		;6ae6
	rrca			;6ae9
	ret m			;6aea
	call m,0fefeh		;6aeb
	ret po			;6aee
	nop			;6aef
	jr nz,l6aa2h		;6af0
	ld (bc),a			;6af2
	rlca			;6af3
	inc bc			;6af4
	rrca			;6af5
	adc a,h			;6af6
	inc bc			;6af7
	nop			;6af8
	ex af,af'			;6af9
	ret nz			;6afa
	ret po			;6afb
	ret po			;6afc
	ret c			;6afd
l6afeh:
	ret pe			;6afe
	ret p			;6aff
	jr nc,l6b62h		;6b00
	ld a,h			;6b02
	inc bc			;6b03
	cp 08ch		;6b04
	ld a,(hl)			;6b06
	cp 07eh		;6b07
	nop			;6b09
	ld a,a			;6b0a
	cpl			;6b0b
	ccf			;6b0c
	rra			;6b0d
	rrca			;6b0e
	rrca			;6b0f
	nop			;6b10
	inc e			;6b11
	dec b			;6b12
	ret nz			;6b13
	add a,e			;6b14
	add a,b			;6b15
	nop			;6b16
	jr nz,l6b1bh		;6b17
	rra			;6b19
	ld (bc),a			;6b1a
l6b1bh:
	ld e,085h		;6b1b
	ld c,007h		;6b1d
	nop			;6b1f
	ld b,020h		;6b20
	ld (bc),a			;6b22
	ld h,b			;6b23
	ld (bc),a			;6b24
	ret po			;6b25
	add a,c			;6b26
	ret nz			;6b27
	ld (bc),a			;6b28
	nop			;6b29
	ld (bc),a			;6b2a
	ld a,087h		;6b2b
	inc a			;6b2d
	dec a			;6b2e
	dec e			;6b2f
	rra			;6b30
	nop			;6b31
	nop			;6b32
	ld b,b			;6b33
	inc b			;6b34
	ret nz			;6b35
	add a,e			;6b36
	add a,b			;6b37
	nop			;6b38
	ld h,b			;6b39
	inc b			;6b3a
	ret po			;6b3b
	add a,a			;6b3c
	ret p			;6b3d
	nop			;6b3e
	nop			;6b3f
	djnz l6b51h		;6b40
	rlca			;6b42
	inc bc			;6b43
	inc bc			;6b44
l6b45h:
	ld bc,00088h		;6b45
	inc bc			;6b48
	call m,0fcfeh		;6b49
	ret m			;6b4c
	ret p			;6b4d
	ret po			;6b4e
	add hl,bc			;6b4f
	nop			;6b50
l6b51h:
	adc a,c			;6b51
l6b52h:
	jr l6b52h		;6b52
	ld a,(hl)			;6b54
	ld a,h			;6b55
	ld a,h			;6b56
	call m,sub_0070h		;6b57
	call nz,sub_0f04h		;6b5a
	adc a,h			;6b5d
	rlca			;6b5e
	nop			;6b5f
	ld e,01fh		;6b60
l6b62h:
	ret po			;6b62
	ret po			;6b63
	ret p			;6b64
	cp b			;6b65
	sbc a,h			;6b66
	nop			;6b67
	nop			;6b68
	add a,b			;6b69
	ld (bc),a			;6b6a
	rlca			;6b6b
	inc bc			;6b6c
	rrca			;6b6d
	and h			;6b6e
	rlca			;6b6f
	nop			;6b70
	jr l6befh		;6b71
	ld a,a			;6b73
	rst 38h			;6b74
	cp 0f8h		;6b75
	ld a,b			;6b77
	nop			;6b78
	jp p,l3f7fh		;6b79
	rra			;6b7c
	rrca			;6b7d
	rlca			;6b7e
	rlca			;6b7f
	nop			;6b80
	rrca			;6b81
	ret po			;6b82
	ret m			;6b83
	call m,0fcech		;6b84
	ret m			;6b87
	nop			;6b88
	djnz l6baah		;6b89
	rrca			;6b8b
	rlca			;6b8c
	rrca			;6b8d
	rrca			;6b8e
	inc bc			;6b8f
	nop			;6b90
	ld bc,l03e0h		;6b91
	ret p			;6b94
	add a,l			;6b95
	ret nz			;6b96
	nop			;6b97
	ret z			;6b98
	ret p			;6b99
	ret po			;6b9a
	inc bc			;6b9b
	ret p			;6b9c
	add a,h			;6b9d
	ret nz			;6b9e
	nop			;6b9f
	ex af,af'			;6ba0
	ret nz			;6ba1
	ld (bc),a			;6ba2
	inc bc			;6ba3
	ld (bc),a			;6ba4
	rlca			;6ba5
	sub a			;6ba6
	ld bc,l0300h		;6ba7
l6baah:
	rlca			;6baa
	ret m			;6bab
	call m,0fefeh		;6bac
	ret po			;6baf
	nop			;6bb0
	add a,b			;6bb1
	ret nz			;6bb2
	ret m			;6bb3
	call m,0fefeh		;6bb4
	ret po			;6bb7
	nop			;6bb8
	nop			;6bb9
	add a,b			;6bba
	nop			;6bbb
	ld bc,l043fh		;6bbc
	jr nz,l6b45h		;6bbf
	ld h,b			;6bc1
	nop			;6bc2
	ld bc,l0439h		;6bc3
	ld bc,l0381h		;6bc6
	ld (bc),a			;6bc9
	nop			;6bca
	inc bc			;6bcb
	jr nz,l6b51h		;6bcc
	nop			;6bce
	ld bc,0027fh		;6bcf
	nop			;6bd2
	dec b			;6bd3
	ld bc,l3f85h		;6bd4
	jr c,l6c35h		;6bd7
	ld l,h			;6bd9
	inc c			;6bda
	inc b			;6bdb
	nop			;6bdc
	ld (bc),a			;6bdd
	jr c,l6be2h		;6bde
	jr nc,l6be6h		;6be0
l6be2h:
	nop			;6be2
	add a,h			;6be3
	jr c,l6c5ah		;6be4
l6be6h:
	ld l,h			;6be6
	inc c			;6be7
	inc b			;6be8
	nop			;6be9
	nop			;6bea
	ld d,c			;6beb
	nop			;6bec
	inc bc			;6bed
l6beeh:
	inc bc			;6bee
l6befh:
	add a,c			;6bef
	ld bc,l0008h		;6bf0
	ld (bc),a			;6bf3
	inc bc			;6bf4
	rra			;6bf5
	nop			;6bf6
	ld (bc),a			;6bf7
	add a,b			;6bf8
	ld b,000h		;6bf9
	ld (bc),a			;6bfb
	inc bc			;6bfc
	add a,e			;6bfd
	rlca			;6bfe
	ld b,007h		;6bff
	ld a,a			;6c01
	nop			;6c02
	ld a,a			;6c03
	nop			;6c04
	ld h,(hl)			;6c05
	nop			;6c06
	add a,c			;6c07
	ret nz			;6c08
	rla			;6c09
	nop			;6c0a
	add a,c			;6c0b
	inc e			;6c0c
	ld b,000h		;6c0d
	add a,d			;6c0f
	ret p			;6c10
	ret m			;6c11
	ld d,c			;6c12
	nop			;6c13
	add a,l			;6c14
	rra			;6c15
	ccf			;6c16
	ld a,03eh		;6c17
	ld e,003h		;6c19
	nop			;6c1b
	ld (bc),a			;6c1c
	add a,b			;6c1d
	ld (bc),a			;6c1e
	ret nz			;6c1f
	dec b			;6c20
	nop			;6c21
	adc a,b			;6c22
	ld c,00fh		;6c23
	rlca			;6c25
	sub b			;6c26
	ret m			;6c27
	ld a,b			;6c28
	nop			;6c29
	ld de,l1f03h		;6c2a
	add a,d			;6c2d
	ld e,00eh		;6c2e
	inc bc			;6c30
	nop			;6c31
	add a,c			;6c32
	add a,b			;6c33
	ld (bc),a			;6c34
l6c35h:
	ld b,b			;6c35
	rlca			;6c36
	nop			;6c37
sub_6c38h:
	adc a,c			;6c38
	add a,b			;6c39
	ret nz			;6c3a
	ld a,b			;6c3b
	ld a,b			;6c3c
	nop			;6c3d
	inc b			;6c3e
	inc b			;6c3f
	inc c			;6c40
	jr l6c47h		;6c41
	nop			;6c43
	inc b			;6c44
	rra			;6c45
	add a,c			;6c46
l6c47h:
	rrca			;6c47
	inc bc			;6c48
	nop			;6c49
	ld (bc),a			;6c4a
	ret nz			;6c4b
	ld (bc),a			;6c4c
	add a,b			;6c4d
	inc bc			;6c4e
	nop			;6c4f
	add a,d			;6c50
	inc b			;6c51
	inc c			;6c52
	ld (bc),a			;6c53
	jr l6c5ah		;6c54
	nop			;6c56
	add a,c			;6c57
	rlca			;6c58
	inc bc			;6c59
l6c5ah:
	rrca			;6c5a
	inc b			;6c5b
	nop			;6c5c
	add a,c			;6c5d
	add a,b			;6c5e
	inc b			;6c5f
	ret nz			;6c60
	ld b,000h		;6c61
	ld (bc),a			;6c63
	jr nz,l6beeh		;6c64
	jr c,l6c84h		;6c66
	inc e			;6c68
	nop			;6c69
	inc bc			;6c6a
	rlca			;6c6b
	ld b,002h		;6c6c
	dec b			;6c6e
	nop			;6c6f
	inc bc			;6c70
	call m,sub_7881h		;6c71
	inc bc			;6c74
	nop			;6c75
	add a,e			;6c76
	inc b			;6c77
	ld a,h			;6c78
	ld a,b			;6c79
	add hl,bc			;6c7a
	nop			;6c7b
	add a,l			;6c7c
	ld b,01eh		;6c7d
	inc e			;6c7f
	nop			;6c80
	jr l6c87h		;6c81
	ret m			;6c83
l6c84h:
	add a,c			;6c84
	ld (hl),b			;6c85
	inc b			;6c86
l6c87h:
	nop			;6c87
	add a,e			;6c88
	ld bc,l0203h		;6c89
	inc bc			;6c8c
	nop			;6c8d
	ld (bc),a			;6c8e
	ld h,b			;6c8f
	add a,d			;6c90
	jr nc,l6cabh		;6c91
	inc b			;6c93
	nop			;6c94
	ld (bc),a			;6c95
	inc bc			;6c96
	ld (bc),a			;6c97
	ld bc,l0004h		;6c98
	inc b			;6c9b
	ret m			;6c9c
	add a,l			;6c9d
	ret p			;6c9e
	nop			;6c9f
	inc c			;6ca0
	jr nz,l6cd3h		;6ca1
	ld (bc),a			;6ca3
	jr $+8		;6ca4
	nop			;6ca6
	add a,l			;6ca7
	ld (bc),a			;6ca8
	ld b,03ch		;6ca9
l6cabh:
	inc a			;6cab
	ld bc,l0304h		;6cac
	inc bc			;6caf
	nop			;6cb0
	add a,c			;6cb1
	ret po			;6cb2
	inc bc			;6cb3
	ret p			;6cb4
	ld b,000h		;6cb5
	add a,c			;6cb7
	ld e,003h		;6cb8
	ccf			;6cba
	add a,d			;6cbb
	nop			;6cbc
	ld bc,l0003h		;6cbd
	add a,c			;6cc0
	add a,b			;6cc1
	inc bc			;6cc2
	ret nz			;6cc3
	rlca			;6cc4
	nop			;6cc5
	add a,d			;6cc6
	jr c,l6d05h		;6cc7
	ld b,000h		;6cc9
	add a,d			;6ccb
	ld (hl),b			;6ccc
	ld a,b			;6ccd
	ld b,000h		;6cce
	add a,a			;6cd0
l6cd1h:
	ld (hl),b			;6cd1
	ld a,b			;6cd2
l6cd3h:
	jr l6cd1h		;6cd3
	call m,0e0e8h		;6cd5
	inc b			;6cd8
	nop			;6cd9
	add a,d			;6cda
	ld bc,l0207h		;6cdb
	nop			;6cde
	ld (bc),a			;6cdf
	ret nz			;6ce0
l6ce1h:
	inc bc			;6ce1
	nop			;6ce2
	add a,(hl)			;6ce3
	ld (hl),c			;6ce4
	ld a,a			;6ce5
	ld a,(hl)			;6ce6
	ld a,(hl)			;6ce7
	inc a			;6ce8
	nop			;6ce9
	ld (bc),a			;6cea
	add a,b			;6ceb
	inc b			;6cec
	nop			;6ced
	add a,d			;6cee
	jr nc,l6ce1h		;6cef
	dec b			;6cf1
	nop			;6cf2
	adc a,b			;6cf3
	inc a			;6cf4
	ld a,000h		;6cf5
	ld a,h			;6cf7
	ld a,(hl)			;6cf8
	cp 01eh		;6cf9
	inc c			;6cfb
	rlca			;6cfc
	nop			;6cfd
	adc a,b			;6cfe
	jr nz,$+56		;6cff
	jr l6d1fh		;6d01
	nop			;6d03
	add a,b			;6d04
l6d05h:
	ret p			;6d05
	ld (hl),b			;6d06
	inc b			;6d07
	nop			;6d08
	add a,c			;6d09
	ld a,b			;6d0a
	inc bc			;6d0b
	call m,0c481h		;6d0c
	inc b			;6d0f
	nop			;6d10
	add a,(hl)			;6d11
	ld b,00eh		;6d12
	inc e			;6d14
	inc e			;6d15
	jr l6d28h		;6d16
	ld b,000h		;6d18
	add a,e			;6d1a
	jr nc,l6d55h		;6d1b
	inc e			;6d1d
	inc bc			;6d1e
l6d1fh:
	ccf			;6d1f
	add a,l			;6d20
	daa			;6d21
	djnz l6d24h		;6d22
l6d24h:
	nop			;6d24
	jr nz,l6d2ah		;6d25
	ld h,b			;6d27
l6d28h:
	add a,a			;6d28
	ld b,b			;6d29
l6d2ah:
	nop			;6d2a
	djnz l6d49h		;6d2b
	inc c			;6d2d
	ret m			;6d2e
	jr c,l6d34h		;6d2f
	nop			;6d31
	ld (bc),a			;6d32
	add a,b			;6d33
l6d34h:
	add a,h			;6d34
	ret nz			;6d35
	inc b			;6d36
	nop			;6d37
	jr nz,l6d3ch		;6d38
	jr c,$+4		;6d3a
l6d3ch:
	nop			;6d3c
	add a,l			;6d3d
	ld a,(hl)			;6d3e
	cp 0fbh		;6d3f
	ei			;6d41
	ld a,b			;6d42
	ex af,af'			;6d43
	nop			;6d44
	add a,d			;6d45
	ld (hl),b			;6d46
	ld a,b			;6d47
	dec b			;6d48
l6d49h:
	nop			;6d49
	add a,h			;6d4a
	add a,b			;6d4b
	ret p			;6d4c
	ld a,b			;6d4d
	nop			;6d4e
	ld (bc),a			;6d4f
	ld a,(hl)			;6d50
	ld (bc),a			;6d51
	ld a,d			;6d52
	add a,c			;6d53
	ld a,b			;6d54
l6d55h:
	dec b			;6d55
	nop			;6d56
	adc a,d			;6d57
	ld b,047h		;6d58
	ld h,b			;6d5a
	ld a,h			;6d5b
	inc a			;6d5c
	nop			;6d5d
	inc bc			;6d5e
	rlca			;6d5f
	ld b,002h		;6d60
	ld b,000h		;6d62
	add a,d			;6d64
	inc a			;6d65
	jr c,$+8		;6d66
	nop			;6d68
	adc a,c			;6d69
	inc bc			;6d6a
	rrca			;6d6b
	inc c			;6d6c
	nop			;6d6d
	ret nz			;6d6e
	cp 0beh		;6d6f
	cp (hl)			;6d71
	ld a,005h		;6d72
	nop			;6d74
	add a,a			;6d75
	jr nc,l6de9h		;6d76
	inc bc			;6d78
	rra			;6d79
	ld e,000h		;6d7a
	rlca			;6d7c
	inc bc			;6d7d
	rrca			;6d7e
	add a,c			;6d7f
	rlca			;6d80
	rlca			;6d81
	nop			;6d82
	adc a,(hl)			;6d83
	ld (de),a			;6d84
	rra			;6d85
	rrca			;6d86
	nop			;6d87
	ret po			;6d88
	ret p			;6d89
	or b			;6d8a
	or b			;6d8b
	add a,b			;6d8c
	nop			;6d8d
	nop			;6d8e
	inc c			;6d8f
	inc a			;6d90
	jr nc,l6d99h		;6d91
	nop			;6d93
	add a,h			;6d94
	ld (bc),a			;6d95
	rlca			;6d96
	ld b,002h		;6d97
l6d99h:
	dec b			;6d99
	nop			;6d9a
	add a,h			;6d9b
	add a,b			;6d9c
	ret m			;6d9d
	ret m			;6d9e
	ret p			;6d9f
	inc bc			;6da0
	nop			;6da1
	inc bc			;6da2
	inc bc			;6da3
	ld (bc),a			;6da4
	ld bc,l0004h		;6da5
	add a,c			;6da8
	inc a			;6da9
	inc bc			;6daa
	cp 082h		;6dab
	add a,b			;6dad
	ld b,b			;6dae
	ld b,000h		;6daf
	add a,d			;6db1
	ld c,01eh		;6db2
	ld b,000h		;6db4
	add a,d			;6db6
	ld c,01eh		;6db7
	inc bc			;6db9
	nop			;6dba
	add a,c			;6dbb
	ld bc,l0302h+1		;6dbc
	rlca			;6dbf
	nop			;6dc0
	sbc a,h			;6dc1
	inc e			;6dc2
	inc a			;6dc3
	ld a,h			;6dc4
	cp 0ffh		;6dc5
	ret p			;6dc7
	ret nc			;6dc8
	ret nz			;6dc9
	ld b,b			;6dca
	ld h,b			;6dcb
	ld a,h			;6dcc
	cp 0feh		;6dcd
	rst 38h			;6dcf
	call p,0f0f4h		;6dd0
	ld h,b			;6dd3
	ld a,h			;6dd4
	cp 0ffh		;6dd5
	cp 0fch		;6dd7
	call m,078f8h		;6dd9
	jr c,l6e5ah		;6ddc
	dec b			;6dde
	cp 098h		;6ddf
	ld a,h			;6de1
	ld a,07fh		;6de2
	rst 38h			;6de4
	adc a,a			;6de5
	dec bc			;6de6
	inc bc			;6de7
	inc bc			;6de8
l6de9h:
	ld b,03eh		;6de9
	ld a,a			;6deb
	ld a,a			;6dec
	rst 38h			;6ded
	cpl			;6dee
	cpl			;6def
	rrca			;6df0
	ld b,03eh		;6df1
	ld a,a			;6df3
	rst 38h			;6df4
	ld a,a			;6df5
	ccf			;6df6
	ccf			;6df7
	rra			;6df8
	ld (bc),a			;6df9
	ld e,006h		;6dfa
	ccf			;6dfc
	adc a,a			;6dfd
	rra			;6dfe
	ld e,07eh		;6dff
sub_6e01h:
	ld a,(hl)			;6e01
	ret m			;6e02
	ret p			;6e03
	ret m			;6e04
	ret p			;6e05
	ld a,b			;6e06
	inc a			;6e07
	ld a,(hl)			;6e08
	ld a,b			;6e09
	ret p			;6e0a
	ld a,b			;6e0b
	jr nc,l6e13h		;6e0c
	nop			;6e0e
	add a,h			;6e0f
	ex af,af'			;6e10
	djnz l6e1bh		;6e11
l6e13h:
	djnz $+5		;6e13
	nop			;6e15
	adc a,c			;6e16
	jr nz,$+80		;6e17
	jr nz,l6e1bh		;6e19
l6e1bh:
	nop			;6e1b
	ex af,af'			;6e1c
	djnz l6e47h		;6e1d
	djnz l6e27h		;6e1f
	nop			;6e21
	add a,e			;6e22
	inc b			;6e23
	ld a,(bc)			;6e24
	dec b			;6e25
	dec b			;6e26
l6e27h:
	nop			;6e27
	adc a,d			;6e28
	call nz,sub_040ah		;6e29
	ld (hl),b			;6e2c
	ld (hl),b			;6e2d
	nop			;6e2e
	ld b,b			;6e2f
	jr nz,l6e82h		;6e30
	jr nz,l6e39h		;6e32
	nop			;6e34
	adc a,e			;6e35
	ld bc,l0306h+1		;6e36
l6e39h:
	inc hl			;6e39
	ld de,l0021h		;6e3a
	ex af,af'			;6e3d
	djnz l6e48h		;6e3e
	djnz l6e45h		;6e40
	nop			;6e42
	adc a,b			;6e43
	add a,b			;6e44
l6e45h:
	nop			;6e45
	inc b			;6e46
l6e47h:
	ld (bc),a			;6e47
l6e48h:
	inc b			;6e48
	nop			;6e49
	nop			;6e4a
	add a,b			;6e4b
	inc b			;6e4c
	nop			;6e4d
	add a,l			;6e4e
	djnz l6e51h		;6e4f
l6e51h:
	djnz l6e53h		;6e51
l6e53h:
	djnz l6e63h		;6e53
	nop			;6e55
	add a,c			;6e56
	ld b,007h		;6e57
	nop			;6e59
l6e5ah:
	add a,c			;6e5a
	ld b,b			;6e5b
	rlca			;6e5c
	nop			;6e5d
	add a,c			;6e5e
	ret nz			;6e5f
	rlca			;6e60
	nop			;6e61
	add a,c			;6e62
l6e63h:
	inc b			;6e63
	rlca			;6e64
	nop			;6e65
	add a,c			;6e66
	ld b,h			;6e67
	ld b,000h		;6e68
	add a,d			;6e6a
	inc c			;6e6b
	ld a,007h		;6e6c
	nop			;6e6e
	add a,c			;6e6f
	jr l6e79h		;6e70
	nop			;6e72
	add a,c			;6e73
	ld e,007h		;6e74
	nop			;6e76
	add a,c			;6e77
	ret nz			;6e78
l6e79h:
	rlca			;6e79
	nop			;6e7a
	add a,c			;6e7b
	ret po			;6e7c
	rlca			;6e7d
	nop			;6e7e
	add a,c			;6e7f
	inc b			;6e80
	inc bc			;6e81
l6e82h:
	nop			;6e82
	add a,d			;6e83
	inc c			;6e84
	inc e			;6e85
	ld b,000h		;6e86
l6e88h:
	inc bc			;6e88
l6e89h:
	jr $-126		;6e89
	jr nc,l6e8dh		;6e8b
l6e8dh:
	ld (bc),a			;6e8d
	ld bc,l0009h		;6e8e
	add a,d			;6e91
	inc c			;6e92
	inc e			;6e93
	inc bc			;6e94
	nop			;6e95
	add a,c			;6e96
	ret po			;6e97
	dec b			;6e98
	nop			;6e99
	add a,(hl)			;6e9a
	ld (hl),b			;6e9b
	ret p			;6e9c
	inc bc			;6e9d
	inc bc			;6e9e
	rlca			;6e9f
	ld bc,l0003h		;6ea0
	ld (bc),a			;6ea3
	ld bc,l0000h+2		;6ea4
	ld (bc),a			;6ea7
	ld c,003h		;6ea8
	nop			;6eaa
	add a,c			;6eab
	ret m			;6eac
	dec b			;6ead
	nop			;6eae
	add a,c			;6eaf
	jr nc,l6eb4h		;6eb0
	ld a,b			;6eb2
	ld (bc),a			;6eb3
l6eb4h:
	nop			;6eb4
	ld (bc),a			;6eb5
	add a,b			;6eb6
	add a,e			;6eb7
	ret nz			;6eb8
	inc e			;6eb9
	ld c,003h		;6eba
	nop			;6ebc
	inc bc			;6ebd
	jr $-127		;6ebe
	inc c			;6ec0
	inc b			;6ec1
	nop			;6ec2
	add a,d			;6ec3
	jr nc,l6efeh		;6ec4
	inc bc			;6ec6
	nop			;6ec7
	add a,c			;6ec8
	rlca			;6ec9
	dec b			;6eca
	nop			;6ecb
	add a,d			;6ecc
	ld c,00fh		;6ecd
	inc bc			;6ecf
	nop			;6ed0
	add a,d			;6ed1
	jr nc,l6f0ch		;6ed2
	inc bc			;6ed4
	nop			;6ed5
	add a,d			;6ed6
	rra			;6ed7
	ld e,004h		;6ed8
	nop			;6eda
	add a,e			;6edb
	inc c			;6edc
	ld e,03ch		;6edd
	ld (bc),a			;6edf
	nop			;6ee0
	ld (bc),a			;6ee1
	ld (bc),a			;6ee2
	add a,h			;6ee3
	ld b,070h		;6ee4
	ret po			;6ee6
	sbc a,a			;6ee7
	dec b			;6ee8
	nop			;6ee9
	add a,e			;6eea
	ld h,(hl)			;6eeb
	rst 20h			;6eec
	ld e,005h		;6eed
	nop			;6eef
	add a,e			;6ef0
	ld b,00eh		;6ef1
	add a,b			;6ef3
	dec b			;6ef4
	nop			;6ef5
	add a,d			;6ef6
	ld h,b			;6ef7
	ld (hl),b			;6ef8
	inc bc			;6ef9
	nop			;6efa
	add a,d			;6efb
	ld b,00eh		;6efc
l6efeh:
	inc bc			;6efe
	nop			;6eff
	add a,c			;6f00
	ret po			;6f01
	inc b			;6f02
	nop			;6f03
	ld (bc),a			;6f04
	jr nc,l6e88h		;6f05
	ld (hl),b			;6f07
	rlca			;6f08
	nop			;6f09
	sub c			;6f0a
	inc bc			;6f0b
l6f0ch:
	rra			;6f0c
	nop			;6f0d
	nop			;6f0e
	ld h,b			;6f0f
	ret po			;6f10
	ld (bc),a			;6f11
	rlca			;6f12
	rrca			;6f13
	jr l6f16h		;6f14
l6f16h:
	nop			;6f16
	ld b,b			;6f17
	ret nz			;6f18
	call z,sub_389ch		;6f19
	dec b			;6f1c
	nop			;6f1d
	add a,h			;6f1e
	ld (bc),a			;6f1f
	rrca			;6f20
	rrca			;6f21
	nop			;6f22
	ld (bc),a			;6f23
	add a,b			;6f24
	ld (bc),a			;6f25
	ret nz			;6f26
	add a,h			;6f27
	ld c,006h		;6f28
	inc bc			;6f2a
	ret nz			;6f2b
	inc bc			;6f2c
	nop			;6f2d
	inc b			;6f2e
	add a,b			;6f2f
	add a,c			;6f30
	inc bc			;6f31
	ld (bc),a			;6f32
	nop			;6f33
	inc bc			;6f34
	ld h,b			;6f35
	add a,d			;6f36
	ld h,e			;6f37
	inc bc			;6f38
	ex af,af'			;6f39
	nop			;6f3a
	add a,c			;6f3b
	inc c			;6f3c
	ld (bc),a			;6f3d
	nop			;6f3e
	ld (bc),a			;6f3f
	ld b,002h		;6f40
	ld h,b			;6f42
	add a,c			;6f43
	ret po			;6f44
	dec b			;6f45
	nop			;6f46
	ld (bc),a			;6f47
	rrca			;6f48
	add a,c			;6f49
	inc bc			;6f4a
	inc bc			;6f4b
	nop			;6f4c
	add a,(hl)			;6f4d
	inc b			;6f4e
	inc c			;6f4f
	inc c			;6f50
	jr l6f53h		;6f51
l6f53h:
	ld b,003h		;6f53
	nop			;6f55
	adc a,d			;6f56
	jr nc,$+126		;6f57
	ld c,01ch		;6f59
	nop			;6f5b
	nop			;6f5c
	jr nz,$+48		;6f5d
	jr nc,$+24		;6f5f
	ld b,000h		;6f61
	ld (bc),a			;6f63
	ret p			;6f64
	add a,c			;6f65
	ret nz			;6f66
	inc b			;6f67
	nop			;6f68
	add a,a			;6f69
	inc c			;6f6a
	ld a,(hl)			;6f6b
	ld (hl),b			;6f6c
	jr c,l6f6fh		;6f6d
l6f6fh:
	rlca			;6f6f
	ld (bc),a			;6f70
	ld (bc),a			;6f71
	nop			;6f72
	ld (bc),a			;6f73
	ld bc,l0386h		;6f74
	ld bc,l70e0h		;6f77
	ld (hl),b			;6f7a
	ret p			;6f7b
	inc bc			;6f7c
	ret m			;6f7d
	adc a,e			;6f7e
	sbc a,b			;6f7f
	sbc a,(hl)			;6f80
	jp p,072f2h		;6f81
	ld (bc),a			;6f84
	rlca			;6f85
	ccf			;6f86
	ld a,a			;6f87
	ld a,b			;6f88
	cp 002h		;6f89
	ret m			;6f8b
	inc b			;6f8c
	call m,l0781h		;6f8d
	ld (bc),a			;6f90
	ld b,004h		;6f91
	rlca			;6f93
	add a,l			;6f94
	rrca			;6f95
	add a,b			;6f96
	nop			;6f97
	jr nc,$-16		;6f98
	inc bc			;6f9a
	ret po			;6f9b
	add a,c			;6f9c
	ret p			;6f9d
	ld (bc),a			;6f9e
	inc bc			;6f9f
	inc bc			;6fa0
	rlca			;6fa1
	ld (bc),a			;6fa2
	rrca			;6fa3
	add a,l			;6fa4
	ex af,af'			;6fa5
	ret p			;6fa6
	ret m			;6fa7
	ret m			;6fa8
	ret p			;6fa9
	inc b			;6faa
	ret po			;6fab
	ld (bc),a			;6fac
	rlca			;6fad
	inc bc			;6fae
	ld c,003h		;6faf
	rrca			;6fb1
	ld (bc),a			;6fb2
	ret nz			;6fb3
	add a,c			;6fb4
	ld b,b			;6fb5
	inc bc			;6fb6
	nop			;6fb7
	adc a,l			;6fb8
	ret nz			;6fb9
	ret po			;6fba
	ld h,b			;6fbb
l6fbch:
	sbc a,08ch		;6fbc
	add a,h			;6fbe
	ld b,b			;6fbf
	ret p			;6fc0
	ret m			;6fc1
	cp 003h		;6fc2
	nop			;6fc4
	ex af,af'			;6fc5
	inc b			;6fc6
	rrca			;6fc7
	add a,c			;6fc8
	rra			;6fc9
	rlca			;6fca
	ret nz			;6fcb
	add a,h			;6fcc
	ret po			;6fcd
	rra			;6fce
	rlca			;6fcf
	ld b,003h		;6fd0
	nop			;6fd2
	ld (bc),a			;6fd3
	rrca			;6fd4
	sub (hl)			;6fd5
	jr nz,$+96		;6fd6
	nop			;6fd8
	nop			;6fd9
	jr nz,l6fbch		;6fda
	ret p			;6fdc
	ret p			;6fdd
	ld a,00eh		;6fde
	inc c			;6fe0
	nop			;6fe1
	nop			;6fe2
	ld de,01f1fh		;6fe3
	ld b,b			;6fe6
	ret nz			;6fe7
	nop			;6fe8
	nop			;6fe9
	ld b,b			;6fea
	ret nz			;6feb
	inc bc			;6fec
	ret po			;6fed
	add a,c			;6fee
	ld h,b			;6fef
	ld (bc),a			;6ff0
	ret po			;6ff1
	inc b			;6ff2
	ret p			;6ff3
	inc bc			;6ff4
	inc bc			;6ff5
	inc bc			;6ff6
	ld bc,l0302h		;6ff7
	ex af,af'			;6ffa
	ret p			;6ffb
	ex af,af'			;6ffc
	nop			;6ffd
	add a,h			;6ffe
l6fffh:
	ld e,00eh		;6fff
	ld b,b			;7001
	ld h,b			;7002
l7003h:
	inc b			;7003
	call m,l0f02h+1		;7004
	inc b			;7007
	rra			;7008
	add a,h			;7009
	ld bc,0e0e0h		;700a
	ret nz			;700d
	dec b			;700e
	add a,b			;700f
	ld (bc),a			;7010
	rlca			;7011
	inc bc			;7012
	rrca			;7013
	inc bc			;7014
	rra			;7015
	add a,d			;7016
	ld a,h			;7017
	ld (hl),b			;7018
	ld (bc),a			;7019
	ret p			;701a
	ld (bc),a			;701b
	ret m			;701c
	ld (bc),a			;701d
	call m,l1e83h+1		;701e
l7021h:
	rra			;7021
	rra			;7022
	rrca			;7023
	inc bc			;7024
	rlca			;7025
	add a,d			;7026
	rrca			;7027
	ld h,b			;7028
	ld (bc),a			;7029
	ret p			;702a
	inc b			;702b
	ret po			;702c
	add a,l			;702d
	ret p			;702e
	rlca			;702f
	rlca			;7030
	ld b,002h		;7031
	ld (bc),a			;7033
	nop			;7034
	ld (bc),a			;7035
	ld bc,0e090h		;7036
	ret p			;7039
	ld (hl),b			;703a
	ld (hl),b			;703b
	ld a,b			;703c
	ret m			;703d
	ret m			;703e
	jr nc,l7021h		;703f
	ret p			;7041
	ld (hl),b			;7042
	ld (hl),b			;7043
	ld a,b			;7044
	ret m			;7045
	ret m			;7046
	ret p			;7047
	ld (bc),a			;7048
	inc bc			;7049
	inc bc			;704a
	rlca			;704b
	ld (bc),a			;704c
	rrca			;704d
	sub c			;704e
	inc c			;704f
	ret p			;7050
	ret m			;7051
	ret m			;7052
	ret p			;7053
	ret po			;7054
	ret po			;7055
	ret nz			;7056
	ld b,b			;7057
	ret p			;7058
	ret m			;7059
	ret m			;705a
	ret p			;705b
	ret po			;705c
	ret nz			;705d
	ret nz			;705e
	add a,b			;705f
	ld hl,l0300h		;7060
	add a,b			;7063
	add a,c			;7064
	ld c,006h		;7065
	nop			;7067
	add a,d			;7068
	ld b,b			;7069
	jr c,l7070h		;706a
	nop			;706c
	inc bc			;706d
	add a,b			;706e
	add a,c			;706f
l7070h:
	ld c,003h		;7070
	nop			;7072
	nop			;7073
	ld a,a			;7074
	nop			;7075
	ld a,a			;7076
	nop			;7077
	ld a,a			;7078
	nop			;7079
	ld a,a			;707a
	nop			;707b
	ld a,a			;707c
	nop			;707d
	ld a,a			;707e
	nop			;707f
	ld a,a			;7080
	nop			;7081
	ld a,a			;7082
	nop			;7083
	ld a,a			;7084
	nop			;7085
	ld a,a			;7086
	nop			;7087
	ld a,a			;7088
	nop			;7089
	ld a,a			;708a
	nop			;708b
	ld a,a			;708c
	nop			;708d
	ld a,a			;708e
	nop			;708f
	ld a,a			;7090
l7091h:
	nop			;7091
	scf			;7092
	nop			;7093
	add a,c			;7094
	cp 002h		;7095
	rst 38h			;7097
	inc b			;7098
	ret po			;7099
	add a,h			;709a
	ld h,b			;709b
	ld a,(hl)			;709c
	ld a,a			;709d
	ccf			;709e
	inc b			;709f
	rlca			;70a0
	add a,e			;70a1
	inc bc			;70a2
	nop			;70a3
	ret nz			;70a4
	inc bc			;70a5
	ret po			;70a6
	add a,l			;70a7
	cp 0ffh		;70a8
	ld a,a			;70aa
	nop			;70ab
	ld b,003h		;70ac
	rlca			;70ae
	ld (bc),a			;70af
	ld a,a			;70b0
	add a,(hl)			;70b1
	ccf			;70b2
	jr c,l7091h		;70b3
	call pe,sub_0e8ch		;70b5
	inc bc			;70b8
l70b9h:
	nop			;70b9
	ld (bc),a			;70ba
	jr c,$-125		;70bb
	jr nc,l712fh		;70bd
	jr c,$+3		;70bf
	nop			;70c1
	add a,l			;70c2
	jr c,l70b9h		;70c3
	call pe,sub_0e8ch		;70c5
	inc bc			;70c8
	nop			;70c9
	nop			;70ca
l70cbh:
	inc b			;70cb
	nop			;70cc
	add a,c			;70cd
	djnz l70d6h		;70ce
	nop			;70d0
	ld (bc),a			;70d1
	jr l70d9h		;70d2
	nop			;70d4
	add a,h			;70d5
l70d6h:
	jr l7114h		;70d6
	inc a			;70d8
l70d9h:
	jr $+3		;70d9
	nop			;70db
	add a,c			;70dc
	jr c,l70e3h		;70dd
	ld a,h			;70df
l70e0h:
	add a,h			;70e0
	jr c,l70e3h		;70e1
l70e3h:
	jr c,l7161h		;70e3
	inc b			;70e5
	cp 082h		;70e6
	ld a,h			;70e8
	jr c,l70efh		;70e9
	nop			;70eb
	add a,c			;70ec
	jr $+7		;70ed
l70efh:
	nop			;70ef
	ld (bc),a			;70f0
	jr $+5		;70f1
	nop			;70f3
	add a,e			;70f4
	jr $+60		;70f5
	jr l70fdh		;70f7
	nop			;70f9
	add a,h			;70fa
	jr c,l7179h		;70fb
l70fdh:
	ld a,h			;70fd
	jr c,l7102h		;70fe
	nop			;7100
	nop			;7101
l7102h:
	inc b			;7102
	nop			;7103
	add a,c			;7104
	djnz l710dh		;7105
	nop			;7107
	ld (bc),a			;7108
	jr l7110h		;7109
	nop			;710b
	add a,h			;710c
l710dh:
	jr l714bh		;710d
	inc a			;710f
l7110h:
	jr $+3		;7110
	nop			;7112
	add a,c			;7113
l7114h:
	jr c,l711ah		;7114
	ld a,h			;7116
	add a,h			;7117
	jr c,l711ah		;7118
l711ah:
	jr c,l7198h		;711a
	inc b			;711c
	cp 082h		;711d
	ld a,h			;711f
	jr c,l7142h		;7120
	nop			;7122
	nop			;7123
	inc b			;7124
	nop			;7125
	add a,c			;7126
	djnz l712fh		;7127
	nop			;7129
	ld (bc),a			;712a
	jr l7132h		;712b
	nop			;712d
	add a,h			;712e
l712fh:
	jr $+60		;712f
	inc a			;7131
l7132h:
	jr $+3		;7132
	nop			;7134
	add a,c			;7135
	jr c,l713ch		;7136
	ld a,h			;7138
	add a,h			;7139
	jr c,l713ch		;713a
l713ch:
	jr c,$+124		;713c
	inc b			;713e
	cp 082h		;713f
	ld a,h			;7141
l7142h:
	jr c,$+32		;7142
	nop			;7144
	nop			;7145
	ld c,b			;7146
	nop			;7147
	nop			;7148
	inc b			;7149
	add a,b			;714a
l714bh:
	jr nz,$+5		;714b
	ld l,(hl)			;714d
	ld (hl),c			;714e
	push af			;714f
	ld bc,l0d07h+1		;7150
	add a,b			;7153
	ld hl,0be05h		;7154
	ld (hl),c			;7157
	push af			;7158
	ld (bc),a			;7159
	ld bc,0800bh		;715a
	ld (0ff05h),hl		;715d
	ld (hl),c			;7160
l7161h:
	push af			;7161
	ld (bc),a			;7162
	ld bc,0800bh		;7163
	inc hl			;7166
	dec b			;7167
	ld b,h			;7168
	ld (hl),d			;7169
	inc bc			;716a
	ld bc,00d01h		;716b
	and b			;716e
	ld bc,0a09fh		;716f
	ld (bc),a			;7172
	and b			;7173
	ld bc,0a09fh		;7174
	ld (bc),a			;7177
	and b			;7178
l7179h:
	ld bc,0a09fh		;7179
	ld (bc),a			;717c
	xor c			;717d
	and l			;717e
	and d			;717f
	and b			;7180
	sbc a,a			;7181
	sbc a,(hl)			;7182
	sbc a,e			;7183
	sbc a,l			;7184
	inc b			;7185
	sbc a,c			;7186
	ld (bc),a			;7187
	and b			;7188
	ld bc,0a09fh		;7189
	ld (bc),a			;718c
	and b			;718d
	ld bc,0a09fh		;718e
	ld (bc),a			;7191
	and b			;7192
	ld bc,0a09fh		;7193
	ld (bc),a			;7196
	xor c			;7197
l7198h:
	and l			;7198
	and d			;7199
	and b			;719a
	and c			;719b
	and d			;719c
	and h			;719d
	and l			;719e
	inc b			;719f
	and l			;71a0
	xor c			;71a1
	ld (bc),a			;71a2
	xor c			;71a3
	ld bc,0a9a9h		;71a4
	ld b,0aah		;71a7
	ld (bc),a			;71a9
	xor c			;71aa
	xor d			;71ab
	xor c			;71ac
	xor c			;71ad
	ld bc,0a9a9h		;71ae
	ld b,0a7h		;71b1
	ld (bc),a			;71b3
	and l			;71b4
	and a			;71b5
	xor c			;71b6
	ld (bc),a			;71b7
	xor c			;71b8
	ld bc,0a9a9h		;71b9
	inc c			;71bc
	jp po,l0280h		;71bd
	sbc a,c			;71c0
	ld (bc),a			;71c1
	and b			;71c2
	sbc a,c			;71c3
	and b			;71c4
	sbc a,c			;71c5
	and b			;71c6
	sbc a,c			;71c7
	and b			;71c8
	sub h			;71c9
	and b			;71ca
	sub h			;71cb
	and b			;71cc
	sbc a,c			;71cd
	and b			;71ce
	sbc a,c			;71cf
	and b			;71d0
	sbc a,c			;71d1
	and b			;71d2
	sbc a,c			;71d3
	and b			;71d4
	sbc a,c			;71d5
	and b			;71d6
	sbc a,c			;71d7
	and b			;71d8
	sub h			;71d9
	and b			;71da
	sub h			;71db
	sbc a,(hl)			;71dc
	sbc a,c			;71dd
	and b			;71de
	sbc a,c			;71df
	inc b			;71e0
	and b			;71e1
	ld (bc),a			;71e2
	and b			;71e3
	ld bc,0a0a0h		;71e4
	ld b,0a2h		;71e7
	ld (bc),a			;71e9
	and b			;71ea
	and d			;71eb
	and b			;71ec
	and b			;71ed
	ld bc,0a0a0h		;71ee
	ld b,09eh		;71f1
	ld (bc),a			;71f3
	sbc a,l			;71f4
	sbc a,(hl)			;71f5
	and b			;71f6
	and b			;71f7
	ld bc,0e4a0h		;71f8
	ld bc,00ca0h		;71fb
	jp po,l0280h		;71fe
	call po,0990ah		;7201
	ld (bc),a			;7204
	sbc a,l			;7205
	sbc a,c			;7206
	sbc a,l			;7207
	sbc a,c			;7208
	sbc a,l			;7209
	sbc a,c			;720a
	sbc a,l			;720b
	sub h			;720c
	sbc a,e			;720d
	sub h			;720e
	sbc a,e			;720f
	sbc a,c			;7210
	sbc a,l			;7211
	sbc a,c			;7212
	sbc a,l			;7213
	sbc a,c			;7214
	sbc a,l			;7215
	sbc a,c			;7216
	sbc a,l			;7217
	sbc a,c			;7218
	sbc a,l			;7219
	sbc a,c			;721a
	sbc a,l			;721b
	sub h			;721c
	sbc a,e			;721d
	sub h			;721e
	sbc a,e			;721f
	sbc a,c			;7220
	sbc a,l			;7221
	sbc a,c			;7222
	inc b			;7223
	sbc a,c			;7224
	ld (bc),a			;7225
	sbc a,c			;7226
	ld bc,09999h		;7227
	ld b,099h		;722a
	ld (bc),a			;722c
	sbc a,c			;722d
	sbc a,c			;722e
	sbc a,c			;722f
	sbc a,c			;7230
	ld bc,09999h		;7231
	ld b,099h		;7234
	ld (bc),a			;7236
	sbc a,c			;7237
	sbc a,c			;7238
	sbc a,c			;7239
	sbc a,c			;723a
	ld bc,0e499h		;723b
	ld bc,l0c99h		;723e
	add a,b			;7241
	ex af,af'			;7242
	and 0e3h		;7243
	inc b			;7245
	add a,b			;7246
	ld (bc),a			;7247
	pop hl			;7248
	add hl,bc			;7249
	call po,08d02h		;724a
	inc b			;724d
	pop hl			;724e
	inc c			;724f
	call po,00405h		;7250
	pop hl			;7253
	add hl,bc			;7254
	call po,l0201h+1		;7255
	ld (bc),a			;7258
	pop hl			;7259
	inc c			;725a
	call po,00405h		;725b
	call pe,l0400h		;725e
	ld c,b			;7261
	ld (hl),d			;7262
	pop hl			;7263
	add hl,bc			;7264
	call po,l0102h		;7265
	ld bc,l00ffh+2		;7268
	pop hl			;726b
	inc c			;726c
	call po,l0205h		;726d
	pop hl			;7270
	add hl,bc			;7271
	call po,l0102h		;7272
	ld bc,0e102h		;7275
	inc c			;7278
	call po,l0205h		;7279
	ld (bc),a			;727c
	ld (bc),a			;727d
	call pe,l01feh+2		;727e
	ld h,e			;7281
	ld (hl),d			;7282
	pop hl			;7283
	add hl,bc			;7284
	call po,l0102h		;7285
	ld bc,l00ffh+2		;7288
	pop hl			;728b
	inc c			;728c
	call po,l0205h		;728d
	jp po,08003h		;7290
	jr nz,l7299h		;7293
	xor l			;7295
	ld (hl),d			;7296
	rst 30h			;7297
	inc bc			;7298
l7299h:
	dec b			;7299
	dec c			;729a
	add a,b			;729b
	ld hl,0bb04h		;729c
	ld (hl),d			;729f
	rst 30h			;72a0
	inc b			;72a1
	dec b			;72a2
	dec bc			;72a3
	add a,b			;72a4
	ld (0cb04h),hl		;72a5
	ld (hl),d			;72a8
	rst 30h			;72a9
	inc b			;72aa
	dec b			;72ab
	dec bc			;72ac
	xor h			;72ad
	inc b			;72ae
	xor h			;72af
	or b			;72b0
	or b			;72b1
	or c			;72b2
	ld (bc),a			;72b3
	xor (hl)			;72b4
	xor (hl)			;72b5
	call po,0b101h		;72b6
	ld a,(bc)			;72b9
	jp po,l04a9h		;72ba
	xor c			;72bd
	and a			;72be
	and a			;72bf
	xor c			;72c0
	ld (bc),a			;72c1
	xor c			;72c2
	xor c			;72c3
	call po,0a901h		;72c4
	ld a,(bc)			;72c7
	add a,b			;72c8
	ex af,af'			;72c9
	and 099h		;72ca
	ld (bc),a			;72cc
	and b			;72cd
	sbc a,l			;72ce
	and b			;72cf
	sub h			;72d0
	sbc a,(hl)			;72d1
	sbc a,e			;72d2
	sbc a,(hl)			;72d3
	sbc a,c			;72d4
	and b			;72d5
	sbc a,l			;72d6
	and b			;72d7
	call po,09901h		;72d8
	ex af,af'			;72db
	jp po,08003h		;72dc
	jr nz,$+4		;72df
	ld sp,hl			;72e1
	ld (hl),d			;72e2
	ld sp,hl			;72e3
	ld bc,l0d07h+1		;72e4
	add a,b			;72e7
	ld hl,l0704h		;72e8
	ld (hl),e			;72eb
	ld sp,hl			;72ec
	ld (bc),a			;72ed
	ld b,00ah		;72ee
	add a,b			;72f0
	ld (l1804h),hl		;72f1
	ld (hl),e			;72f4
	ld sp,hl			;72f5
	ld (bc),a			;72f6
	ld b,009h		;72f7
	and l			;72f9
	inc b			;72fa
	and b			;72fb
	sbc a,l			;72fc
	sbc a,c			;72fd
	and b			;72fe
	ld (bc),a			;72ff
	sbc a,(hl)			;7300
	sbc a,l			;7301
	sbc a,e			;7302
	sbc a,c			;7303
	inc b			;7304
	add a,b			;7305
	jp po,l0299h		;7306
	and b			;7309
	sbc a,c			;730a
	and b			;730b
	sbc a,c			;730c
	and b			;730d
	sbc a,c			;730e
	and b			;730f
	sub h			;7310
	and b			;7311
	sub h			;7312
	sbc a,(hl)			;7313
	sbc a,l			;7314
	inc b			;7315
	sbc a,c			;7316
	jp po,l0299h		;7317
	sbc a,l			;731a
	sbc a,c			;731b
	sbc a,l			;731c
	sbc a,c			;731d
	sbc a,l			;731e
	sbc a,c			;731f
	sbc a,l			;7320
	sub h			;7321
	sbc a,e			;7322
	sub h			;7323
	sbc a,b			;7324
	sbc a,c			;7325
	inc b			;7326
	sbc a,c			;7327
	add a,b			;7328
	ex af,af'			;7329
	and 003h		;732a
	add a,b			;732c
	jr nz,l7334h		;732d
	ld b,a			;732f
	ld (hl),e			;7330
	rst 30h			;7331
	inc b			;7332
	ex af,af'			;7333
l7334h:
	dec c			;7334
	add a,b			;7335
	ld hl,l5705h		;7336
	ld (hl),e			;7339
	rst 30h			;733a
	inc b			;733b
l733ch:
	ex af,af'			;733c
	dec bc			;733d
	add a,b			;733e
	ld (l6705h),hl		;733f
	ld (hl),e			;7342
	rst 30h			;7343
	inc b			;7344
	ex af,af'			;7345
	dec bc			;7346
	xor h			;7347
	inc b			;7348
	xor h			;7349
	inc bc			;734a
	xor h			;734b
	ld bc,l02b0h		;734c
	or b			;734f
	inc b			;7350
	or b			;7351
	ld (bc),a			;7352
	or c			;7353
	or c			;7354
	ld c,0e2h		;7355
	xor c			;7357
	inc b			;7358
	xor c			;7359
	inc bc			;735a
	xor c			;735b
	ld bc,l02a7h		;735c
	and a			;735f
	inc b			;7360
	and a			;7361
	ld (bc),a			;7362
	xor c			;7363
	xor c			;7364
	ld c,0e2h		;7365
	and l			;7367
	inc b			;7368
	and l			;7369
	inc bc			;736a
	and l			;736b
	ld bc,002a0h		;736c
	and b			;736f
	inc b			;7370
	and b			;7371
	ld (bc),a			;7372
	and l			;7373
	and h			;7374
	ld bc,0a0a2h		;7375
	sbc a,(hl)			;7378
	sbc a,l			;7379
	sbc a,e			;737a
	sbc a,c			;737b
	ex af,af'			;737c
	add a,b			;737d
	ex af,af'			;737e
	and 003h		;737f
	add a,b			;7381
	jr nz,l738ah		;7382
	sbc a,h			;7384
	ld (hl),e			;7385
	push af			;7386
	inc b			;7387
	add hl,bc			;7388
	dec c			;7389
l738ah:
	add a,b			;738a
	ld hl,0b706h		;738b
	ld (hl),e			;738e
	push af			;738f
	inc bc			;7390
	ld bc,0800bh		;7391
	ld (0c306h),hl		;7394
	ld (hl),e			;7397
	push af			;7398
	inc bc			;7399
	ld bc,0b00bh		;739a
	ld (bc),a			;739d
	or c			;739e
	ld bc,l02abh		;739f
	and b			;73a2
	ld bc,l02a7h+1		;73a3
	xor c			;73a6
	ld bc,sub_02a3h+1		;73a7
	and l			;73aa
	ld bc,002a0h		;73ab
	and b			;73ae
	ld bc,0a2a0h		;73af
	and h			;73b2
	and l			;73b3
	inc bc			;73b4
	and l			;73b5
	jp po,l069dh		;73b6
	call po,09d0ah		;73b9
	inc bc			;73bc
	sbc a,l			;73bd
	sbc a,(hl)			;73be
	sbc a,(hl)			;73bf
	sbc a,l			;73c0
	sbc a,l			;73c1
	jp po,l0699h		;73c2
	call po,0990ah		;73c5
	inc bc			;73c8
	sbc a,c			;73c9
	sub h			;73ca
	sub h			;73cb
	sbc a,c			;73cc
	sbc a,c			;73cd
	add a,b			;73ce
	ex af,af'			;73cf
	and 004h		;73d0
	add a,b			;73d2
	jr nz,$+5		;73d3
	or 073h		;73d5
	rst 30h			;73d7
	ld bc,l0d07h+1		;73d8
	add a,b			;73db
	ld hl,l2203h+2		;73dc
	ld (hl),h			;73df
	rst 30h			;73e0
	ld bc,00b08h		;73e1
	add a,b			;73e4
	ld (l4e05h),hl		;73e5
	ld (hl),h			;73e8
	rst 30h			;73e9
	ld (bc),a			;73ea
	add hl,bc			;73eb
	dec bc			;73ec
	add a,b			;73ed
	inc hl			;73ee
	dec b			;73ef
	add a,b			;73f0
	ld (hl),h			;73f1
	inc bc			;73f2
	ld bc,00d01h		;73f3
	xor h			;73f6
	inc b			;73f7
	xor h			;73f8
	inc bc			;73f9
	xor h			;73fa
	ld bc,l02aeh		;73fb
	xor (hl)			;73fe
	inc b			;73ff
l7400h:
	xor (hl)			;7400
	ld (bc),a			;7401
	xor h			;7402
	inc b			;7403
	xor h			;7404
	inc bc			;7405
	xor h			;7406
	ld bc,002aah		;7407
	xor d			;740a
	inc b			;740b
	xor d			;740c
	ld (bc),a			;740d
	xor h			;740e
	inc b			;740f
	xor h			;7410
	inc bc			;7411
	xor h			;7412
	ld bc,l02b0h		;7413
	or b			;7416
	inc b			;7417
	or b			;7418
	ld (bc),a			;7419
	or c			;741a
	ld (bc),a			;741b
	or c			;741c
	ld bc,0b1b1h		;741d
	inc c			;7420
	jp po,l04a9h		;7421
	xor c			;7424
	inc bc			;7425
	xor c			;7426
	ld bc,002aah		;7427
	xor d			;742a
	inc b			;742b
	xor d			;742c
	ld (bc),a			;742d
	xor c			;742e
	inc b			;742f
	xor c			;7430
	inc bc			;7431
	xor c			;7432
	ld bc,l02a7h		;7433
	and a			;7436
	inc b			;7437
	and a			;7438
	ld (bc),a			;7439
	xor c			;743a
	inc b			;743b
	xor c			;743c
	inc bc			;743d
	xor c			;743e
	ld bc,l02a7h		;743f
	and a			;7442
	inc b			;7443
	and a			;7444
	ld (bc),a			;7445
	xor c			;7446
	ld (bc),a			;7447
	xor c			;7448
	ld bc,0a9a9h		;7449
	inc c			;744c
	jp po,l04a5h		;744d
	and l			;7450
	inc bc			;7451
	and l			;7452
	ld bc,0029eh		;7453
	sbc a,(hl)			;7456
	inc b			;7457
	sbc a,(hl)			;7458
	ld (bc),a			;7459
	and l			;745a
	inc b			;745b
	and l			;745c
	inc bc			;745d
	and l			;745e
	ld bc,002a0h		;745f
	and b			;7462
	inc b			;7463
	and b			;7464
	ld (bc),a			;7465
	and l			;7466
	inc b			;7467
	and l			;7468
	inc bc			;7469
	and l			;746a
	ld bc,002a0h		;746b
	and b			;746e
	inc b			;746f
	and b			;7470
	ld (bc),a			;7471
	and l			;7472
	ld (bc),a			;7473
	and h			;7474
	ld bc,0a0a2h		;7475
	and c			;7478
	and d			;7479
	and h			;747a
	and l			;747b
	ex af,af'			;747c
	add a,b			;747d
	ex af,af'			;747e
	and 0e3h		;747f
	inc b			;7481
	pop hl			;7482
	add hl,bc			;7483
	call po,08d02h		;7484
	inc b			;7487
	pop hl			;7488
	inc c			;7489
	call po,00405h		;748a
	pop hl			;748d
	add hl,bc			;748e
	call po,l0201h+1		;748f
	ld (bc),a			;7492
	pop hl			;7493
	inc c			;7494
	call po,00405h		;7495
	call pe,l0400h		;7498
	add a,d			;749b
	ld (hl),h			;749c
	jp po,08004h		;749d
	jr nz,l74a6h		;74a0
	jp 0f774h		;74a2
	inc b			;74a5
l74a6h:
	add hl,bc			;74a6
	dec c			;74a7
	add a,b			;74a8
	ld hl,0e904h		;74a9
	ld (hl),h			;74ac
	rst 30h			;74ad
	inc b			;74ae
	ld bc,0800bh		;74af
	ld (0f804h),hl		;74b2
	ld (hl),h			;74b5
	rst 30h			;74b6
	inc b			;74b7
	ld bc,0800bh		;74b8
	inc hl			;74bb
	inc b			;74bc
	add hl,bc			;74bd
	ld (hl),l			;74be
	inc bc			;74bf
	inc b			;74c0
	ex af,af'			;74c1
	dec bc			;74c2
	or c			;74c3
	ld (bc),a			;74c4
	or b			;74c5
	or c			;74c6
	xor h			;74c7
	xor e			;74c8
	xor h			;74c9
	xor c			;74ca
	xor b			;74cb
	xor c			;74cc
	and l			;74cd
	and h			;74ce
	and l			;74cf
	xor h			;74d0
	inc b			;74d1
	xor h			;74d2
	ld (bc),a			;74d3
	xor h			;74d4
	xor d			;74d5
	xor c			;74d6
	and a			;74d7
	inc b			;74d8
	and a			;74d9
	ld (bc),a			;74da
	and b			;74db
	and d			;74dc
	and h			;74dd
	and l			;74de
	ld b,0a5h		;74df
	ld bc,0aca9h		;74e1
	or c			;74e4
	inc bc			;74e5
	and l			;74e6
	ld b,0e2h		;74e7
	sbc a,l			;74e9
	inc c			;74ea
	call po,09d0ah		;74eb
	ld b,09dh		;74ee
	sbc a,e			;74f0
	sbc a,e			;74f1
	sbc a,(hl)			;74f2
	sbc a,(hl)			;74f3
	sbc a,c			;74f4
	sbc a,l			;74f5
	sbc a,c			;74f6
	jp po,l0c99h		;74f7
	call po,0990ah		;74fa
	ld b,099h		;74fd
	sub h			;74ff
	sub h			;7500
	sub h			;7501
	sub h			;7502
	sbc a,c			;7503
l7504h:
	sbc a,c			;7504
	sbc a,c			;7505
	add a,b			;7506
	ex af,af'			;7507
	and 0e3h		;7508
	inc b			;750a
	pop hl			;750b
	add hl,bc			;750c
	call po,08d02h		;750d
	inc b			;7510
	ld (bc),a			;7511
	pop hl			;7512
	inc c			;7513
	call po,00405h		;7514
	pop hl			;7517
	add hl,bc			;7518
	call po,l0201h+1		;7519
	call pe,sub_0600h		;751c
	dec bc			;751f
	ld (hl),l			;7520
	jp po,08003h		;7521
	jr nz,$+4		;7524
	ld a,075h		;7526
	nop			;7528
	ld bc,sub_0e04h		;7529
	add a,b			;752c
	ld hl,l5a04h		;752d
	ld (hl),l			;7530
	nop			;7531
	ld bc,l0d03h+2		;7532
	add a,b			;7535
	ld (l7504h),hl		;7536
	ld (hl),l			;7539
	nop			;753a
	nop			;753b
	inc bc			;753c
	dec c			;753d
	and b			;753e
	ld (bc),a			;753f
	ld (bc),a			;7540
	sbc a,(hl)			;7541
	inc b			;7542
	sbc a,l			;7543
	ld (bc),a			;7544
	ld (bc),a			;7545
	sbc a,(hl)			;7546
	inc b			;7547
	and b			;7548
	ld (bc),a			;7549
	ld (bc),a			;754a
	ld (bc),a			;754b
	ld b,080h		;754c
	inc b			;754e
	sbc a,e			;754f
	inc b			;7550
	inc b			;7551
	inc b			;7552
	sbc a,l			;7553
	sbc a,c			;7554
	ld (bc),a			;7555
	ld (bc),a			;7556
	ld (bc),a			;7557
	inc b			;7558
	jp po,0029dh		;7559
	ld (bc),a			;755c
	sbc a,e			;755d
	inc b			;755e
	sbc a,c			;755f
	ld (bc),a			;7560
	ld (bc),a			;7561
	inc b			;7562
	sbc a,l			;7563
	ld (bc),a			;7564
	ld (bc),a			;7565
	ld (bc),a			;7566
	ld b,080h		;7567
	inc b			;7569
	sbc a,b			;756a
	inc b			;756b
	inc b			;756c
	inc b			;756d
	sbc a,c			;756e
	sub (hl)			;756f
	ld (bc),a			;7570
	ld (bc),a			;7571
	ld (bc),a			;7572
	inc b			;7573
	jp po,l0281h		;7574
	adc a,l			;7577
	call pe,00800h		;7578
	ld (hl),l			;757b
	ld (hl),l			;757c
	adc a,b			;757d
	sub h			;757e
	adc a,b			;757f
	sub h			;7580
	adc a,b			;7581
	sub h			;7582
	adc a,b			;7583
	sub h			;7584
	add a,c			;7585
	adc a,l			;7586
	add a,c			;7587
	adc a,l			;7588
	add a,b			;7589
	ex af,af'			;758a
	and 002h		;758b
	xor b			;758d
	ld hl,09f06h		;758e
	ld (hl),l			;7591
	nop			;7592
	nop			;7593
	dec b			;7594
	ld c,0a8h		;7595
	ld (0a506h),hl		;7597
	ld (hl),l			;759a
	nop			;759b
	nop			;759c
	ld b,00dh		;759d
	ld bc,l0102h+1		;759f
	ld (bc),a			;75a2
	ld (bc),a			;75a3
	jp po,0f001h		;75a4
	ld bc,002efh		;75a7
	jp po,0a802h		;75aa
	ld hl,0be06h		;75ad
	ld (hl),l			;75b0
	nop			;75b1
	nop			;75b2
	dec b			;75b3
	ld c,0a8h		;75b4
	ld (0d406h),hl		;75b6
	ld (hl),l			;75b9
	nop			;75ba
	nop			;75bb
	ld b,00dh		;75bc
	ld bc,00150h		;75be
	ld d,d			;75c1
	ld (bc),a			;75c2
	call po,0e100h		;75c3
	dec bc			;75c6
	ret po			;75c7
	ld bc,08002h		;75c8
	ld bc,l4c01h		;75cb
	ld (bc),a			;75ce
	ld (bc),a			;75cf
	ld (bc),a			;75d0
	ld (bc),a			;75d1
	ld a,(bc)			;75d2
	jp po,l0000h+2		;75d3
	ld (bc),a			;75d6
	ld (bc),a			;75d7
	ld (bc),a			;75d8
	call po,0ed00h		;75d9
	ld bc,l0ee1h		;75dc
	ret po			;75df
	ld bc,l0000h+2		;75e0
	nop			;75e3
	rrca			;75e4
	ld c,h			;75e5
	ld bc,l010fh+1		;75e6
	jr nc,$+10		;75e9
	jp po,0a003h		;75eb
	jr nz,l75f3h		;75ee
	ex af,af'			;75f0
	halt			;75f1
	nop			;75f2
l75f3h:
	nop			;75f3
	ld bc,0a00ah		;75f4
	ld hl,00c03h		;75f7
	halt			;75fa
	inc bc			;75fb
	ld bc,00a00h		;75fc
	and b			;75ff
l7600h:
	inc hl			;7600
	inc bc			;7601
	djnz l767ah		;7602
	inc bc			;7604
	ld bc,l0a08h		;7605
	add a,c			;7608
	cp l			;7609
	ld b,0e2h		;760a
	and l			;760c
	or c			;760d
	inc b			;760e
	jp po,007e3h		;760f
	xor e			;7612
	or e			;7613
	inc b			;7614
	rst 28h			;7615
	ld (bc),a			;7616
	and b			;7617
	ld hl,02901h		;7618
	halt			;761b
	inc bc			;761c
	ld bc,l0e01h		;761d
	and b			;7620
	ld (02901h),hl		;7621
	halt			;7624
	ld (bc),a			;7625
	ld bc,l0e01h		;7626
	and l			;7629
	and h			;762a
	inc bc			;762b
	and d			;762c
	and c			;762d
	inc bc			;762e
	sbc a,(hl)			;762f
	sbc a,l			;7630
	ld b,0e2h		;7631
	inc bc			;7633
	xor b			;7634
	jr nz,l7638h		;7635
	ld c,a			;7637
l7638h:
	halt			;7638
	nop			;7639
	nop			;763a
	ld (bc),a			;763b
	dec c			;763c
	xor b			;763d
	ld hl,l5501h		;763e
	halt			;7641
	nop			;7642
	nop			;7643
	ld (bc),a			;7644
	dec c			;7645
	xor b			;7646
	inc hl			;7647
	ld bc,l765bh		;7648
	nop			;764b
	nop			;764c
	ld (bc),a			;764d
	rrca			;764e
	ld (bc),a			;764f
	jr nz,l7654h		;7650
	jr nc,$+6		;7652
l7654h:
	jp po,l4002h		;7654
	ld (bc),a			;7657
	ld d,b			;7658
	ld b,0e2h		;7659
l765bh:
	ex (sp),hl			;765b
	rlca			;765c
	nop			;765d
	ld b,b			;765e
	nop			;765f
	ld d,b			;7660
	ld (bc),a			;7661
	nop			;7662
	nop			;7663
	nop			;7664
	nop			;7665
	inc b			;7666
	jp po,08802h		;7667
	ld hl,07b02h		;766a
	halt			;766d
	inc bc			;766e
	ld bc,l0e03h		;766f
	add a,b			;7672
	inc hl			;7673
	ld (bc),a			;7674
	add a,d			;7675
	halt			;7676
	inc bc			;7677
	nop			;7678
	inc bc			;7679
l767ah:
	dec c			;767a
	ld bc,00220h		;767b
	nop			;767e
	ret po			;767f
	ld b,0e2h		;7680
	ex (sp),hl			;7682
	rlca			;7683
	adc a,l			;7684
	ld (bc),a			;7685
	or c			;7686
	ld b,0e2h		;7687
	ld (bc),a			;7689
	xor b			;768a
	ld hl,09c02h		;768b
	halt			;768e
	inc bc			;768f
	ld bc,l0e01h		;7690
	xor b			;7693
	ld (0ac02h),hl		;7694
	halt			;7697
	inc bc			;7698
	nop			;7699
	ld bc,l010dh		;769a
	nop			;769d
	nop			;769e
	jr nc,l76a5h		;769f
	call pe,l0400h		;76a1
	sbc a,h			;76a4
l76a5h:
	halt			;76a5
	nop			;76a6
	ld b,b			;76a7
	nop			;76a8
	jr nc,l76b4h		;76a9
	jp po,l3000h+1		;76ab
	ld bc,l0400h		;76ae
	call pe,l0400h		;76b1
l76b4h:
	xor h			;76b4
	halt			;76b5
	nop			;76b6
	ld h,b			;76b7
	nop			;76b8
	ld b,e			;76b9
	add hl,bc			;76ba
	jp po,08001h		;76bb
	jr nz,l76c2h		;76be
	add a,076h		;76c0
l76c2h:
	inc bc			;76c2
	nop			;76c3
	ld bc,08d0bh		;76c4
	ld bc,001e2h		;76c7
	and b			;76ca
	jr nz,$+1		;76cb
	out (076h),a		;76cd
	inc bc			;76cf
	nop			;76d0
	ld bc,0910bh		;76d1
	sub d			;76d4
	inc bc			;76d5
	jp po,0a802h		;76d6
	ld hl,0ea01h		;76d9
	halt			;76dc
	inc bc			;76dd
	nop			;76de
	nop			;76df
	dec bc			;76e0
	xor b			;76e1
	ld (0f501h),hl		;76e2
	halt			;76e5
	inc bc			;76e6
	ld bc,l0e00h		;76e7
	ld (bc),a			;76ea
	ld (bc),a			;76eb
	ld (bc),a			;76ec
	ld (bc),a			;76ed
	ld a,(bc)			;76ee
	ld (bc),a			;76ef
	ld bc,08002h		;76f0
	ld h,0e2h		;76f3
	ld bc,l010fh+1		;76f5
	jr nc,l7704h		;76f8
	ld bc,l022fh+1		;76fa
	nop			;76fd
	ld h,0e2h		;76fe
	inc bc			;7700
	adc a,b			;7701
	jr nz,l7705h		;7702
l7704h:
	inc e			;7704
l7705h:
	ld (hl),a			;7705
	nop			;7706
	ld (bc),a			;7707
	inc bc			;7708
	ld a,(bc)			;7709
	adc a,b			;770a
	ld hl,l3500h+1		;770b
	ld (hl),a			;770e
	nop			;770f
	ld bc,l0d03h		;7710
	adc a,b			;7713
	ld (l4e01h),hl		;7714
	ld (hl),a			;7717
	nop			;7718
	ld (bc),a			;7719
	inc bc			;771a
	ld a,(bc)			;771b
	nop			;771c
	ld d,b			;771d
	ld bc,l4000h		;771e
	ld bc,l3000h		;7721
	ld bc,l0000h		;7724
	inc b			;7727
	nop			;7728
	sub b			;7729
	ld bc,0a000h		;772a
	ld bc,0b000h		;772d
	ld bc,0d000h		;7730
	ld bc,l00e1h+1		;7733
	ld c,b			;7736
	ld bc,03800h		;7737
	ld bc,l4000h		;773a
	ld bc,l0000h		;773d
	inc b			;7740
	nop			;7741
	and b			;7742
	ld bc,09000h		;7743
	ld bc,0b000h		;7746
	ld bc,0c000h		;7749
	ld bc,l00e1h+1		;774c
	ld (hl),b			;774f
	ld bc,06000h		;7750
	ld bc,l5000h		;7753
	ld bc,l0000h		;7756
	inc b			;7759
	nop			;775a
	or b			;775b
	ld bc,0c000h		;775c
	ld bc,0d000h		;775f
	ld bc,0f000h		;7762
	ld bc,l03e0h+2		;7765
	adc a,b			;7768
	jr nz,l776ch		;7769
	add a,e			;776b
l776ch:
	ld (hl),a			;776c
	inc bc			;776d
	nop			;776e
	inc b			;776f
	rrca			;7770
	adc a,b			;7771
	ld hl,0b401h		;7772
	ld (hl),a			;7775
	inc bc			;7776
	ld bc,l0d03h		;7777
	adc a,b			;777a
	ld (0e501h),hl		;777b
	ld (hl),a			;777e
	nop			;777f
	ld (bc),a			;7780
	ld (bc),a			;7781
	dec bc			;7782
	pop hl			;7783
	ld c,000h		;7784
	ld h,b			;7786
	ld bc,l5800h		;7787
	ld bc,l5000h		;778a
	ld bc,l0000h		;778d
	ld (bc),a			;7790
	pop hl			;7791
	dec c			;7792
	nop			;7793
	add a,b			;7794
	ld bc,09000h		;7795
	ld bc,0c000h		;7798
	ld bc,0d000h		;779b
	ld bc,0f000h		;779e
	ld bc,l0000h		;77a1
	ld (bc),a			;77a4
	pop hl			;77a5
	dec bc			;77a6
	ld bc,l010fh+1		;77a7
	ld bc,l011eh+2		;77aa
	ld bc,00140h		;77ad
	ld bc,00170h		;77b0
	jp po,l0de1h		;77b3
	nop			;77b6
	ld (hl),b			;77b7
	ld bc,l6800h		;77b8
	ld bc,06000h		;77bb
	ld bc,l0000h		;77be
	ld (bc),a			;77c1
	pop hl			;77c2
	dec bc			;77c3
	nop			;77c4
	sub b			;77c5
	ld bc,0a000h		;77c6
	ld bc,0d000h		;77c9
	ld bc,0e000h		;77cc
	ld bc,l0000h+1		;77cf
	ld bc,l0000h		;77d2
	ld (bc),a			;77d5
	pop hl			;77d6
	ld a,(bc)			;77d7
	ld bc,l011eh+2		;77d8
	ld bc,l0130h		;77db
	ld bc,00150h		;77de
	ld bc,l017fh+1		;77e1
	jp po,l0de1h		;77e4
	nop			;77e7
	add a,b			;77e8
	ld bc,l7800h		;77e9
	ld bc,l6fffh+1		;77ec
	ld bc,l0000h		;77ef
	ld (bc),a			;77f2
	pop hl			;77f3
	dec bc			;77f4
	nop			;77f5
	and b			;77f6
	ld bc,0b000h		;77f7
	ld bc,0e000h		;77fa
	ld bc,l0000h+1		;77fd
l7800h:
	ld bc,l2000h+1		;7800
	ld bc,l0000h		;7803
	ld (bc),a			;7806
	pop hl			;7807
	ld a,(bc)			;7808
	ld bc,00140h		;7809
	ld bc,00150h		;780c
	ld bc,00170h		;780f
	ld bc,l01a0h		;7812
	jp po,0a803h		;7815
	jr nz,$+2		;7818
	ld (l0078h),a		;781a
	nop			;781d
	inc b			;781e
	dec c			;781f
	xor b			;7820
	ld hl,l4202h		;7821
	ld a,b			;7824
	nop			;7825
	ld bc,sub_0e04h		;7826
	xor b			;7829
	ld (l5202h),hl		;782a
	ld a,b			;782d
	nop			;782e
	nop			;782f
	inc bc			;7830
	dec c			;7831
	nop			;7832
	ld h,a			;7833
	nop			;7834
	ld e,(hl)			;7835
	ld b,000h		;7836
	ret nz			;7838
	ld bc,l03f0h		;7839
	nop			;783c
	ret nc			;783d
	ld bc,l04f0h		;783e
	jp po,l6600h		;7841
	nop			;7844
	ld d,h			;7845
	ld b,000h		;7846
	sub b			;7848
	nop			;7849
	or 003h		;784a
	nop			;784c
	ret nz			;784d
	nop			;784e
	ret p			;784f
	ld (bc),a			;7850
	jp po,06000h		;7851
	nop			;7854
	ld b,e			;7855
	ld b,000h		;7856
	sub b			;7858
	nop			;7859
	ret nz			;785a
	rlca			;785b
	jp po,0a803h		;785c
	jr nz,l7863h		;785f
	ld a,c			;7861
	ld a,b			;7862
l7863h:
	inc bc			;7863
	nop			;7864
	dec b			;7865
	dec bc			;7866
	xor b			;7867
	ld hl,08902h		;7868
	ld a,b			;786b
	inc bc			;786c
	ld bc,l0e03h		;786d
	xor b			;7870
	ld (09902h),hl		;7871
	ld a,b			;7874
	inc bc			;7875
	nop			;7876
	inc bc			;7877
l7878h:
	dec c			;7878
	nop			;7879
	dec (hl)			;787a
	nop			;787b
	ld h,004h		;787c
	nop			;787e
	nop			;787f
	nop			;7880
sub_7881h:
	nop			;7881
	inc b			;7882
	nop			;7883
	ld d,b			;7884
	nop			;7885
	ld h,b			;7886
	inc bc			;7887
	jp po,l5000h		;7888
sub_788bh:
	nop			;788b
	scf			;788c
	ld b,000h		;788d
	nop			;788f
	nop			;7890
	nop			;7891
	ld (bc),a			;7892
	nop			;7893
	add a,b			;7894
	nop			;7895
	ret po			;7896
	inc bc			;7897
	jp po,08000h		;7898
	nop			;789b
	djnz l78a4h		;789c
	nop			;789e
	nop			;789f
	nop			;78a0
	nop			;78a1
	ld (bc),a			;78a2
	nop			;78a3
l78a4h:
	ld (hl),b			;78a4
	nop			;78a5
	ld b,b			;78a6
	inc bc			;78a7
	jp po,0a803h		;78a8
	jr nz,l78afh		;78ab
	push bc			;78ad
	ld a,b			;78ae
l78afh:
	inc bc			;78af
	nop			;78b0
	dec b			;78b1
	rrca			;78b2
	xor b			;78b3
	ld hl,0d002h		;78b4
	ld a,b			;78b7
	inc bc			;78b8
	ld bc,l0804h		;78b9
	xor b			;78bc
	ld (0db02h),hl		;78bd
	ld a,b			;78c0
	inc bc			;78c1
	nop			;78c2
	ld b,009h		;78c3
	nop			;78c5
	ld b,b			;78c6
	nop			;78c7
	ld (l0006h),a		;78c8
	ld b,b			;78cb
	nop			;78cc
	ld h,b			;78cd
	inc bc			;78ce
	jp po,06000h		;78cf
	nop			;78d2
	ld b,b			;78d3
	ld b,000h		;78d4
	ld h,b			;78d6
	nop			;78d7
	sbc a,b			;78d8
	inc bc			;78d9
	jp po,l5000h		;78da
	ld (bc),a			;78dd
	add a,b			;78de
	ld b,000h		;78df
	and b			;78e1
	nop			;78e2
	ret p			;78e3
	inc bc			;78e4
	jp po,0a802h		;78e5
	ld hl,0f904h		;78e8
	ld a,b			;78eb
	inc bc			;78ec
	ld bc,l0e01h		;78ed
	xor b			;78f0
	ld (0ff01h),hl		;78f1
	ld a,b			;78f4
	nop			;78f5
	nop			;78f6
	ld b,00dh		;78f7
	ld bc,l00ffh+1		;78f9
	ld (bc),a			;78fc
	inc b			;78fd
	jp po,0f800h		;78fe
	nop			;7901
	ei			;7902
	inc b			;7903
	jp po,l7919h		;7904
	ld hl,l2379h		;7907
	ld a,c			;790a
	ld h,079h		;790b
	dec l			;790d
	ld a,c			;790e
	inc (hl)			;790f
	ld a,c			;7910
	ld a,079h		;7911
	ld b,d			;7913
	ld a,c			;7914
	ld c,c			;7915
	ld a,c			;7916
	ld d,b			;7917
	ld a,c			;7918
l7919h:
	sbc a,0ffh		;7919
	xor 0ddh		;791b
	call z,0aabbh		;791d
	ld bc,l02feh+1		;7920
	rst 38h			;7923
	.DB 0fdh,002h,0ffh	;illegal sequence		;7924
	xor 0ddh		;7927
	call z,0aabbh		;7929
	ld bc,0edffh		;792c
	call c,0a9bah		;792f
	add a,a			;7932
	ld (bc),a			;7933
	rst 28h			;7934
	xor 0dch		;7935
	cp d			;7937
	xor c			;7938
	add a,a			;7939
	halt			;793a
	ld h,l			;793b
	ld d,h			;793c
	ld bc,0edffh		;793d
	jp z,0ef02h		;7940
	.DB 0edh;next byte illegal after ed		;7943
	call z,0aabbh		;7944
	sbc a,c			;7947
	ld bc,0ffdfh		;7948
	.DB 0edh;next byte illegal after ed		;794b
	inc e			;794c
	cp d			;794d
	sbc a,b			;794e
	ld (bc),a			;794f
	rst 28h			;7950
	cp 0edh		;7951
	bit 3,(ix+002h)		;7953
	ld a,c			;7957
	ld h,c			;7958
	ld a,c			;7959
	ld h,h			;795a
	ld a,c			;795b
	ld l,e			;795c
	ld a,c			;795d
	xor 0ffh		;795e
	ld bc,0eeffh		;7960
	nop			;7963
	rst 38h			;7964
	xor 0ffh		;7965
	xor 0ddh		;7967
	xor 000h		;7969
	xor 0ddh		;796b
	xor 000h		;796d
sub_796fh:
	call sub_79a8h		;796f
	call sub_798ch		;7972
	ld ix,0de05h		;7975
	ld b,007h		;7979
l797bh:
	push bc			;797b
	bit 7,(ix+000h)		;797c
	call nz,sub_7addh		;7980
	ld de,l0020h		;7983
	add ix,de		;7986
	pop bc			;7988
	djnz l797bh		;7989
	ret			;798b
sub_798ch:
	ld a,(0de01h)		;798c
	or a			;798f
	ret z			;7990
	ld hl,0de02h		;7991
	dec (hl)			;7994
	ret nz			;7995
	ld a,a			;7996
	dec a			;7997
	ld (0de0dh),a		;7998
	ld (0de2dh),a		;799b
	ld (0de4dh),a		;799e
	ld (0de01h),a		;79a1
	ld a,018h		;79a4
	ld (hl),a			;79a6
	ret			;79a7
sub_79a8h:
	ld a,(0de00h)		;79a8
	bit 7,a		;79ab
	jp z,l7dc8h		;79ad
	cp 0a2h		;79b0
	jp nc,l7dc8h		;79b2
	sub 081h		;79b5
	ret m			;79b7
	ld c,a			;79b8
	ld b,000h		;79b9
	ld hl,l79cfh		;79bb
	add hl,bc			;79be
	add hl,bc			;79bf
	ld c,(hl)			;79c0
	inc hl			;79c1
	ld b,(hl)			;79c2
	ld de,l0037h		;79c3
	add hl,de			;79c6
	ld a,(hl)			;79c7
	inc hl			;79c8
	ld h,(hl)			;79c9
	ld l,a			;79ca
	ld a,(0de03h)		;79cb
	jp (hl)			;79ce
l79cfh:
	ld c,c			;79cf
	ld (hl),c			;79d0
	sub c			;79d1
	ld (hl),d			;79d2
	ld (ix+02bh),d		;79d3
	ld (hl),e			;79d6
	add a,b			;79d7
	ld (hl),e			;79d8
	pop de			;79d9
	ld (hl),e			;79da
	sbc a,(hl)			;79db
	ld (hl),h			;79dc
	ld (0e675h),hl		;79dd
	ld a,b			;79e0
	adc a,h			;79e1
	ld (hl),l			;79e2
	xor e			;79e3
	ld (hl),l			;79e4
	adc a,h			;79e5
	ld (hl),l			;79e6
	call pe,01675h		;79e7
	halt			;79ea
	inc sp			;79eb
	halt			;79ec
	ld l,b			;79ed
	halt			;79ee
	adc a,c			;79ef
	halt			;79f0
	cp h			;79f1
	halt			;79f2
	ret			;79f3
	halt			;79f4
	rst 10h			;79f5
	halt			;79f6
	rst 10h			;79f7
	halt			;79f8
	nop			;79f9
	ld (hl),a			;79fa
	ld h,a			;79fb
l79fch:
	ld (hl),a			;79fc
	ld d,078h		;79fd
	ld e,l			;79ff
	ld a,b			;7a00
	xor c			;7a01
	ld a,b			;7a02
	rst 10h			;7a03
	ld a,d			;7a04
	dec bc			;7a05
	jr nz,l7a69h		;7a06
	ld a,d			;7a08
	ld h,c			;7a09
	ld a,d			;7a0a
	ld h,c			;7a0b
	ld a,d			;7a0c
	ld h,c			;7a0d
	ld a,d			;7a0e
	ld h,c			;7a0f
	ld a,d			;7a10
	ld h,c			;7a11
	ld a,d			;7a12
	ld h,c			;7a13
	ld a,d			;7a14
	ld h,c			;7a15
	ld a,d			;7a16
	and (hl)			;7a17
	ld a,d			;7a18
	and (hl)			;7a19
	ld a,d			;7a1a
	and (hl)			;7a1b
	ld a,d			;7a1c
	and (hl)			;7a1d
	ld a,d			;7a1e
	ld (hl),d			;7a1f
	ld a,d			;7a20
	and (hl)			;7a21
	ld a,d			;7a22
	adc a,l			;7a23
	ld a,d			;7a24
	and (hl)			;7a25
	ld a,d			;7a26
	and (hl)			;7a27
	ld a,d			;7a28
	sbc a,(hl)			;7a29
	ld a,d			;7a2a
	sbc a,(hl)			;7a2b
	ld a,d			;7a2c
	and (hl)			;7a2d
	ld a,d			;7a2e
	and (hl)			;7a2f
	ld a,d			;7a30
	ld l,(hl)			;7a31
	ld a,d			;7a32
	ld l,(hl)			;7a33
	ld a,d			;7a34
	ld l,(hl)			;7a35
	ld a,d			;7a36
	ld l,(hl)			;7a37
	ld a,d			;7a38
	ld l,(hl)			;7a39
	ld a,d			;7a3a
	ld c,a			;7a3b
	ld a,d			;7a3c
	ccf			;7a3d
	ld a,d			;7a3e
	ld hl,0de01h		;7a3f
	ld (hl),c			;7a42
	inc hl			;7a43
	ld (hl),b			;7a44
	xor a			;7a45
	ld (0de65h),a		;7a46
	dec a			;7a49
	out (07fh),a		;7a4a
	jp l7ad7h		;7a4c
	xor a			;7a4f
	ld (0de25h),a		;7a50
	ld (0de45h),a		;7a53
	ld a,0bfh		;7a56
	out (07fh),a		;7a58
	ld a,0dfh		;7a5a
	out (07fh),a		;7a5c
	jp l7ad7h		;7a5e
	call l7dc8h		;7a61
	ld a,080h		;7a64
	ld (0de03h),a		;7a66
l7a69h:
	ld de,0de05h		;7a69
	jr l7aafh		;7a6c
	ld e,010h		;7a6e
	jr l7a92h		;7a70
	or a			;7a72
	jr nz,l7ad7h		;7a73
	ld (0de03h),a		;7a75
	ld de,0de85h		;7a78
	ld hl,0de05h		;7a7b
	set 2,(hl)		;7a7e
	ld hl,0de25h		;7a80
	set 2,(hl)		;7a83
	ld hl,0de45h		;7a85
	set 2,(hl)		;7a88
	jp l7aafh		;7a8a
	or a			;7a8d
	jr nz,l7ad7h		;7a8e
	jr l7a99h		;7a90
l7a92h:
	cp e			;7a92
	jr nc,l7ad7h		;7a93
	ld a,e			;7a95
	ld (0de03h),a		;7a96
l7a99h:
	call sub_7de3h		;7a99
	jr l7aa1h		;7a9c
	or a			;7a9e
	jr nz,l7ad7h		;7a9f
l7aa1h:
	ld de,0de05h		;7aa1
	jr l7aafh		;7aa4
	or a			;7aa6
	jr nz,l7ad7h		;7aa7
	ld de,0de25h		;7aa9
	call sub_7de3h		;7aac
l7aafh:
	push bc			;7aaf
	call sub_7dd7h		;7ab0
	pop bc			;7ab3
	ld h,b			;7ab4
	ld l,c			;7ab5
	ld b,(hl)			;7ab6
	inc hl			;7ab7
l7ab8h:
	push bc			;7ab8
	ld bc,l0009h		;7ab9
	ldir		;7abc
	ld a,020h		;7abe
	ld (de),a			;7ac0
	inc de			;7ac1
	ld a,001h		;7ac2
	ld (de),a			;7ac4
	inc de			;7ac5
	xor a			;7ac6
	ld (de),a			;7ac7
	inc de			;7ac8
	ld (de),a			;7ac9
	inc de			;7aca
	ld (de),a			;7acb
	push hl			;7acc
	ld hl,l0012h		;7acd
	add hl,de			;7ad0
	ex de,hl			;7ad1
	pop hl			;7ad2
	inc de			;7ad3
	pop bc			;7ad4
	djnz l7ab8h		;7ad5
l7ad7h:
	ld a,080h		;7ad7
	ld (0de00h),a		;7ad9
	ret			;7adc
sub_7addh:
	ld e,(ix+00ch)		;7add
	ld d,(ix+00dh)		;7ae0
	inc de			;7ae3
	ld (ix+00ch),e		;7ae4
	ld (ix+00dh),d		;7ae7
	ld l,(ix+00ah)		;7aea
	ld h,(ix+00bh)		;7aed
	or a			;7af0
	sbc hl,de		;7af1
	call z,sub_7c43h		;7af3
	ld e,(ix+010h)		;7af6
	ld d,(ix+011h)		;7af9
	ld a,e			;7afc
	or d			;7afd
	jr nz,l7b07h		;7afe
	ld (ix+016h),00fh		;7b00
	jp l7bb5h		;7b04
l7b07h:
	bit 5,(ix+000h)		;7b07
	jr nz,l7b32h		;7b0b
	ld a,(ix+006h)		;7b0d
	or a			;7b10
	jr nz,l7b27h		;7b11
	ld (ix+012h),e		;7b13
	ld (ix+013h),d		;7b16
	jp l7b6eh		;7b19
sub_7b1ch:
	dec a			;7b1c
	ld c,a			;7b1d
	ld b,000h		;7b1e
	add hl,bc			;7b20
	add hl,bc			;7b21
	ld a,(hl)			;7b22
	inc hl			;7b23
	ld h,(hl)			;7b24
	ld l,a			;7b25
	ret			;7b26
l7b27h:
	ld hl,07956h		;7b27
	call sub_7b1ch		;7b2a
	call sub_7c0dh		;7b2d
	jr l7b6eh		;7b30
l7b32h:
	push de			;7b32
	ld l,(ix+014h)		;7b33
	ld h,(ix+015h)		;7b36
	or a			;7b39
	sbc hl,de		;7b3a
	push af			;7b3c
	ld a,l			;7b3d
	jp p,l7b43h		;7b3e
	neg		;7b41
l7b43h:
	ld h,a			;7b43
	ld e,(ix+00ch)		;7b44
	call 07e84h		;7b47
	ld e,(ix+00ah)		;7b4a
	call sub_7e90h		;7b4d
	ld e,a			;7b50
	ld d,000h		;7b51
	pop af			;7b53
	ld a,e			;7b54
	jp p,l7b5eh		;7b55
	neg		;7b58
	jr z,l7b5eh		;7b5a
	dec d			;7b5c
	ld e,a			;7b5d
l7b5eh:
	pop hl			;7b5e
	add hl,de			;7b5f
	ex de,hl			;7b60
	ld (ix+012h),e		;7b61
	ld (ix+013h),d		;7b64
	ld a,(ix+006h)		;7b67
	or a			;7b6a
	jp nz,l7b27h		;7b6b
l7b6eh:
	ld a,(ix+007h)		;7b6e
	or a			;7b71
	jr nz,l7b7fh		;7b72
	ld a,(ix+008h)		;7b74
	cpl			;7b77
	and 00fh		;7b78
	ld (ix+016h),a		;7b7a
	jr l7b8ah		;7b7d
l7b7fh:
	res 7,a		;7b7f
	ld hl,07905h		;7b81
	call sub_7b1ch		;7b84
	call sub_7bd3h		;7b87
l7b8ah:
	bit 6,(ix+000h)		;7b8a
	jr nz,l7bb5h		;7b8e
	ld a,(ix+001h)		;7b90
	and 00fh		;7b93
	ld c,a			;7b95
	ld b,000h		;7b96
	ld hl,l7bc8h		;7b98
	add hl,bc			;7b9b
	ld c,(hl)			;7b9c
	ld a,(ix+012h)		;7b9d
	and 00fh		;7ba0
	or c			;7ba2
	call sub_7dc0h		;7ba3
	ld a,(ix+012h)		;7ba6
	and 0f0h		;7ba9
	or (ix+013h)		;7bab
	rrca			;7bae
	rrca			;7baf
	rrca			;7bb0
	rrca			;7bb1
	call sub_7dc0h		;7bb2
l7bb5h:
	ld a,(ix+001h)		;7bb5
	and 00fh		;7bb8
	ld c,a			;7bba
	ld b,000h		;7bbb
	ld hl,l7bcch		;7bbd
	add hl,bc			;7bc0
	ld a,(hl)			;7bc1
	or (ix+016h)		;7bc2
	jp sub_7dc0h		;7bc5
l7bc8h:
	add a,b			;7bc8
	and b			;7bc9
	ret nz			;7bca
	ret nz			;7bcb
l7bcch:
	sub b			;7bcc
	or b			;7bcd
	ret nc			;7bce
	ret p			;7bcf
l7bd0h:
	ld (ix+00eh),a		;7bd0
sub_7bd3h:
	push hl			;7bd3
	ld a,(ix+00eh)		;7bd4
	srl a		;7bd7
	push af			;7bd9
	ld c,a			;7bda
	ld b,000h		;7bdb
	add hl,bc			;7bdd
	pop af			;7bde
	ld a,(hl)			;7bdf
	pop hl			;7be0
	jr c,l7bf7h		;7be1
	rrca			;7be3
	rrca			;7be4
	rrca			;7be5
	rrca			;7be6
	or a			;7be7
	jr z,l7bd0h		;7be8
	cp 010h		;7bea
	jr nz,l7bf3h		;7bec
	dec (ix+00eh)		;7bee
	jr sub_7bd3h		;7bf1
l7bf3h:
	cp 020h		;7bf3
	jr z,l7c02h		;7bf5
l7bf7h:
	inc (ix+00eh)		;7bf7
	or 0f0h		;7bfa
	add a,(ix+008h)		;7bfc
	inc a			;7bff
	jr c,l7c03h		;7c00
l7c02h:
	xor a			;7c02
l7c03h:
	cpl			;7c03
sub_7c04h:
	and 00fh		;7c04
	ld (ix+016h),a		;7c06
	ret			;7c09
l7c0ah:
	ld (ix+00fh),a		;7c0a
sub_7c0dh:
	push hl			;7c0d
	ld a,(ix+00fh)		;7c0e
	srl a		;7c11
	push af			;7c13
	ld c,a			;7c14
	ld b,000h		;7c15
	add hl,bc			;7c17
	pop af			;7c18
	ld a,(hl)			;7c19
	pop hl			;7c1a
	jr c,l7c31h		;7c1b
	rrca			;7c1d
	rrca			;7c1e
	rrca			;7c1f
	rrca			;7c20
	or a			;7c21
	jp z,l7c0ah		;7c22
	cp 010h		;7c25
	jr nz,l7c31h		;7c27
	dec (ix+00fh)		;7c29
	jr sub_7c0dh		;7c2c
	cp 020h		;7c2e
	ret z			;7c30
l7c31h:
	inc (ix+00fh)		;7c31
	cpl			;7c34
	and 00fh		;7c35
	ld l,a			;7c37
sub_7c38h:
	ld h,000h		;7c38
	ex de,hl			;7c3a
	add hl,de			;7c3b
	ld (ix+012h),l		;7c3c
	ld (ix+013h),h		;7c3f
	ret			;7c42
sub_7c43h:
	ld e,(ix+003h)		;7c43
	ld d,(ix+004h)		;7c46
l7c49h:
	ld a,(de)			;7c49
	inc de			;7c4a
	cp 0e0h		;7c4b
	jp nc,l7cd7h		;7c4d
	bit 3,(ix+000h)		;7c50
	jr nz,l7cb6h		;7c54
	or a			;7c56
	jp p,l7c92h		;7c57
	sub 080h		;7c5a
	jr z,l7c61h		;7c5c
	add a,(ix+005h)		;7c5e
l7c61h:
	ld hl,l7df2h		;7c61
	ld c,a			;7c64
	ld b,000h		;7c65
	add hl,bc			;7c67
	add hl,bc			;7c68
	ld a,(hl)			;7c69
	ld (ix+010h),a		;7c6a
	inc hl			;7c6d
	ld a,(hl)			;7c6e
	ld (ix+011h),a		;7c6f
	bit 5,(ix+000h)		;7c72
	jr z,l7cd0h		;7c76
	ld a,(de)			;7c78
	inc de			;7c79
	sub 080h		;7c7a
	add a,(ix+005h)		;7c7c
	ld hl,l7df2h		;7c7f
	ld c,a			;7c82
	ld b,000h		;7c83
	add hl,bc			;7c85
	add hl,bc			;7c86
	ld a,(hl)			;7c87
	ld (ix+014h),a		;7c88
	inc hl			;7c8b
	ld a,(hl)			;7c8c
	ld (ix+015h),a		;7c8d
l7c90h:
	ld a,(de)			;7c90
l7c91h:
	inc de			;7c91
l7c92h:
	push de			;7c92
	ld h,a			;7c93
	ld e,(ix+002h)		;7c94
	call 07e84h		;7c97
	pop de			;7c9a
	ld (ix+00ah),l		;7c9b
	ld (ix+00bh),h		;7c9e
l7ca1h:
	xor a			;7ca1
	ld (ix+00eh),a		;7ca2
	ld (ix+00fh),a		;7ca5
	ld (ix+003h),e		;7ca8
	ld (ix+004h),d		;7cab
	xor a			;7cae
	ld (ix+00ch),a		;7caf
	ld (ix+00dh),a		;7cb2
	ret			;7cb5
l7cb6h:
	ld (ix+011h),a		;7cb6
	ld a,(de)			;7cb9
	inc de			;7cba
	ld (ix+010h),a		;7cbb
	bit 5,(ix+000h)		;7cbe
	jr z,l7c90h		;7cc2
	ld a,(de)			;7cc4
	inc de			;7cc5
	ld (ix+015h),a		;7cc6
	ld a,(de)			;7cc9
	inc de			;7cca
	ld (ix+014h),a		;7ccb
	jr l7c90h		;7cce
l7cd0h:
	ld a,(de)			;7cd0
	or a			;7cd1
	jp p,l7c91h		;7cd2
	jr l7ca1h		;7cd5
l7cd7h:
	ld hl,l7ceah		;7cd7
	push hl			;7cda
	and 01fh		;7cdb
	ld hl,l7ceeh		;7cdd
	ld c,a			;7ce0
	ld b,000h		;7ce1
	add hl,bc			;7ce3
	add hl,bc			;7ce4
	ld a,(hl)			;7ce5
	inc hl			;7ce6
	ld h,(hl)			;7ce7
	ld l,a			;7ce8
	jp (hl)			;7ce9
l7ceah:
	inc de			;7cea
	jp l7c49h		;7ceb
l7ceeh:
	ld e,07dh		;7cee
	inc hl			;7cf0
	ld a,l			;7cf1
	ld e,(hl)			;7cf2
	ld a,l			;7cf3
	jr z,l7d73h		;7cf4
	ccf			;7cf6
	ld a,l			;7cf7
	ld c,c			;7cf8
	ld a,l			;7cf9
	ld c,07dh		;7cfa
	ld c,a			;7cfc
	ld a,l			;7cfd
	ld c,a			;7cfe
	ld a,l			;7cff
	ld c,a			;7d00
	ld a,l			;7d01
	ld l,e			;7d02
	ld a,l			;7d03
	add a,(hl)			;7d04
	ld a,l			;7d05
	sbc a,c			;7d06
	ld a,l			;7d07
	ld b,h			;7d08
	ld a,l			;7d09
	ld d,07dh		;7d0a
	ld c,a			;7d0c
	ld a,l			;7d0d
	ld a,080h		;7d0e
	ld (0de04h),a		;7d10
	jp l7d5eh		;7d13
	ld a,(de)			;7d16
	add a,(ix+005h)		;7d17
	ld (ix+005h),a		;7d1a
	ret			;7d1d
	ld a,(de)			;7d1e
	ld (ix+002h),a		;7d1f
	ret			;7d22
	ld a,(de)			;7d23
	ld (ix+008h),a		;7d24
	ret			;7d27
	ld a,(de)			;7d28
	or 0e0h		;7d29
	push af			;7d2b
	call sub_7dc0h		;7d2c
	pop af			;7d2f
	or 0fch		;7d30
	inc a			;7d32
	jr nz,l7d3ah		;7d33
	res 6,(ix+000h)		;7d35
	ret			;7d39
l7d3ah:
	set 6,(ix+000h)		;7d3a
	ret			;7d3e
	ld a,(de)			;7d3f
	ld (ix+007h),a		;7d40
	ret			;7d43
	ld a,(de)			;7d44
	ld (ix+006h),a		;7d45
	ret			;7d48
l7d49h:
	ex de,hl			;7d49
	ld e,(hl)			;7d4a
	inc hl			;7d4b
	ld d,(hl)			;7d4c
	dec de			;7d4d
	ret			;7d4e
	ld hl,0de05h		;7d4f
	res 2,(hl)		;7d52
	ld hl,0de25h		;7d54
	res 2,(hl)		;7d57
	ld hl,0de45h		;7d59
	res 2,(hl)		;7d5c
l7d5eh:
	xor a			;7d5e
	ld (0de03h),a		;7d5f
	ld (ix+000h),a		;7d62
	call sub_7db1h		;7d65
	pop hl			;7d68
	pop hl			;7d69
	ret			;7d6a
	ld a,(de)			;7d6b
	ld c,a			;7d6c
	inc de			;7d6d
	ld a,(de)			;7d6e
	ld b,a			;7d6f
	push bc			;7d70
	push ix		;7d71
l7d73h:
	pop hl			;7d73
	dec (ix+009h)		;7d74
	ld c,(ix+009h)		;7d77
	dec (ix+009h)		;7d7a
	ld b,000h		;7d7d
	add hl,bc			;7d7f
	ld (hl),d			;7d80
	dec hl			;7d81
	ld (hl),e			;7d82
	pop de			;7d83
	dec de			;7d84
	ret			;7d85
	push ix		;7d86
	pop hl			;7d88
	ld c,(ix+009h)		;7d89
	ld b,000h		;7d8c
	add hl,bc			;7d8e
	ld e,(hl)			;7d8f
	inc hl			;7d90
	ld d,(hl)			;7d91
	inc (ix+009h)		;7d92
	inc (ix+009h)		;7d95
	ret			;7d98
	ld a,(de)			;7d99
	inc de			;7d9a
	add a,017h		;7d9b
	ld c,a			;7d9d
	ld b,000h		;7d9e
	push ix		;7da0
	pop hl			;7da2
	add hl,bc			;7da3
	ld a,(hl)			;7da4
	or a			;7da5
	jr nz,l7daah		;7da6
	ld a,(de)			;7da8
	ld (hl),a			;7da9
l7daah:
	inc de			;7daa
	dec (hl)			;7dab
	jp nz,l7d49h		;7dac
	inc de			;7daf
	ret			;7db0
sub_7db1h:
	ld a,(ix+001h)		;7db1
	and 00fh		;7db4
	ld c,a			;7db6
	ld b,000h		;7db7
	ld hl,l7bcch		;7db9
	add hl,bc			;7dbc
	ld a,(hl)			;7dbd
	or 00fh		;7dbe
sub_7dc0h:
	bit 2,(ix+000h)		;7dc0
	ret nz			;7dc4
	out (07fh),a		;7dc5
	ret			;7dc7
l7dc8h:
	exx			;7dc8
	ld hl,0de01h		;7dc9
	ld de,0de02h		;7dcc
	ld bc,000dfh		;7dcf
	ld (hl),000h		;7dd2
	ldir		;7dd4
	exx			;7dd6
sub_7dd7h:
	exx			;7dd7
	ld hl,l7deeh		;7dd8
	ld c,07fh		;7ddb
	ld b,004h		;7ddd
	otir		;7ddf
	exx			;7de1
	ret			;7de2
sub_7de3h:
	xor a			;7de3
	ld (0de85h),a		;7de4
	ld (0dea5h),a		;7de7
	ld (0dec5h),a		;7dea
	ret			;7ded
l7deeh:
	sbc a,a			;7dee
	cp a			;7def
	rst 18h			;7df0
	rst 38h			;7df1
l7df2h:
	nop			;7df2
	nop			;7df3
	rst 38h			;7df4
	inc bc			;7df5
	rst 0			;7df6
	inc bc			;7df7
	sub b			;7df8
	inc bc			;7df9
	ld e,l			;7dfa
	inc bc			;7dfb
	dec l			;7dfc
	inc bc			;7dfd
	rst 38h			;7dfe
	ld (bc),a			;7dff
	call nc,0ab02h		;7e00
	ld (bc),a			;7e03
	add a,l			;7e04
	ld (bc),a			;7e05
	ld h,c			;7e06
	ld (bc),a			;7e07
	ccf			;7e08
	ld (bc),a			;7e09
	ld e,002h		;7e0a
	nop			;7e0c
	ld (bc),a			;7e0d
	ex (sp),hl			;7e0e
	ld bc,001c8h		;7e0f
	xor a			;7e12
	ld bc,00196h		;7e13
	add a,b			;7e16
	ld bc,l016ah		;7e17
	ld d,(hl)			;7e1a
	ld bc,l0142h+1		;7e1b
	jr nc,l7e21h		;7e1e
	rra			;7e20
l7e21h:
	ld bc,l010fh		;7e21
	nop			;7e24
	ld bc,l00f1h+1		;7e25
	call po,0d700h		;7e28
	nop			;7e2b
	rlc b		;7e2c
	ret nz			;7e2e
	nop			;7e2f
	or l			;7e30
	nop			;7e31
	xor e			;7e32
	nop			;7e33
	and c			;7e34
	nop			;7e35
	sbc a,b			;7e36
	nop			;7e37
	sub b			;7e38
	nop			;7e39
	adc a,b			;7e3a
	nop			;7e3b
	add a,b			;7e3c
	nop			;7e3d
	ld a,c			;7e3e
	nop			;7e3f
	ld (hl),d			;7e40
	nop			;7e41
	ld l,h			;7e42
	nop			;7e43
	ld h,(hl)			;7e44
	nop			;7e45
	ld h,b			;7e46
	nop			;7e47
	ld e,e			;7e48
	nop			;7e49
	ld d,l			;7e4a
	nop			;7e4b
	ld d,c			;7e4c
	nop			;7e4d
	ld c,h			;7e4e
	nop			;7e4f
	ld c,b			;7e50
	nop			;7e51
	ld b,h			;7e52
	nop			;7e53
	ld b,b			;7e54
	nop			;7e55
	inc a			;7e56
	nop			;7e57
	add hl,sp			;7e58
	nop			;7e59
	ld (hl),000h		;7e5a
	inc sp			;7e5c
	nop			;7e5d
	jr nc,l7e60h		;7e5e
l7e60h:
	dec l			;7e60
	nop			;7e61
	dec hl			;7e62
	nop			;7e63
	jr z,l7e66h		;7e64
l7e66h:
	ld h,000h		;7e66
	inc h			;7e68
	nop			;7e69
	ld (l2000h),hl		;7e6a
	nop			;7e6d
	ld e,000h		;7e6e
	inc e			;7e70
	nop			;7e71
	dec de			;7e72
	nop			;7e73
	add hl,de			;7e74
	nop			;7e75
	jr l7e78h		;7e76
l7e78h:
	ld d,000h		;7e78
	dec d			;7e7a
	nop			;7e7b
	inc d			;7e7c
	nop			;7e7d
	inc de			;7e7e
	nop			;7e7f
	ld (de),a			;7e80
	nop			;7e81
	ld de,01600h		;7e82
	nop			;7e85
	ld l,d			;7e86
	ld b,008h		;7e87
l7e89h:
	add hl,hl			;7e89
	jr nc,l7e8dh		;7e8a
	add hl,de			;7e8c
l7e8dh:
	djnz l7e89h		;7e8d
	ret			;7e8f
sub_7e90h:
	ld b,008h		;7e90
l7e92h:
	adc hl,hl		;7e92
	ld a,h			;7e94
	jr c,l7e9ah		;7e95
	cp e			;7e97
	jr c,l7e9dh		;7e98
l7e9ah:
	sub e			;7e9a
	ld h,a			;7e9b
	or a			;7e9c
l7e9dh:
	djnz l7e92h		;7e9d
	ld a,l			;7e9f
	rla			;7ea0
	cpl			;7ea1
	ret			;7ea2
	rst 38h			;7ea3
	rst 38h			;7ea4
	rst 38h			;7ea5
	rst 38h			;7ea6
	rst 38h			;7ea7
	rst 38h			;7ea8
	rst 38h			;7ea9
	rst 38h			;7eaa
	rst 38h			;7eab
	rst 38h			;7eac
	rst 38h			;7ead
	rst 38h			;7eae
	rst 38h			;7eaf
	rst 38h			;7eb0
	rst 38h			;7eb1
	rst 38h			;7eb2
	rst 38h			;7eb3
	rst 38h			;7eb4
	rst 38h			;7eb5
	rst 38h			;7eb6
	rst 38h			;7eb7
	rst 38h			;7eb8
	rst 38h			;7eb9
	rst 38h			;7eba
	rst 38h			;7ebb
	rst 38h			;7ebc
	rst 38h			;7ebd
	rst 38h			;7ebe
	rst 38h			;7ebf
	rst 38h			;7ec0
	rst 38h			;7ec1
	rst 38h			;7ec2
	rst 38h			;7ec3
	rst 38h			;7ec4
	rst 38h			;7ec5
	rst 38h			;7ec6
	rst 38h			;7ec7
	rst 38h			;7ec8
	rst 38h			;7ec9
	rst 38h			;7eca
	rst 38h			;7ecb
	rst 38h			;7ecc
	rst 38h			;7ecd
	rst 38h			;7ece
	rst 38h			;7ecf
	rst 38h			;7ed0
	rst 38h			;7ed1
	rst 38h			;7ed2
	rst 38h			;7ed3
	rst 38h			;7ed4
	rst 38h			;7ed5
	rst 38h			;7ed6
	rst 38h			;7ed7
	rst 38h			;7ed8
	rst 38h			;7ed9
	rst 38h			;7eda
	rst 38h			;7edb
	rst 38h			;7edc
	rst 38h			;7edd
	rst 38h			;7ede
	rst 38h			;7edf
	rst 38h			;7ee0
	rst 38h			;7ee1
	rst 38h			;7ee2
	rst 38h			;7ee3
	rst 38h			;7ee4
	rst 38h			;7ee5
	rst 38h			;7ee6
	rst 38h			;7ee7
	rst 38h			;7ee8
	rst 38h			;7ee9
	rst 38h			;7eea
	rst 38h			;7eeb
	rst 38h			;7eec
	rst 38h			;7eed
	rst 38h			;7eee
	rst 38h			;7eef
	rst 38h			;7ef0
	rst 38h			;7ef1
	rst 38h			;7ef2
	rst 38h			;7ef3
	rst 38h			;7ef4
	rst 38h			;7ef5
	rst 38h			;7ef6
	rst 38h			;7ef7
	rst 38h			;7ef8
	rst 38h			;7ef9
	rst 38h			;7efa
	rst 38h			;7efb
	rst 38h			;7efc
	rst 38h			;7efd
	rst 38h			;7efe
	rst 38h			;7eff
	rst 38h			;7f00
l7f01h:
	rst 38h			;7f01
l7f02h:
	rst 38h			;7f02
	rst 38h			;7f03
sub_7f04h:
	rst 38h			;7f04
	rst 38h			;7f05
l7f06h:
	rst 38h			;7f06
	rst 38h			;7f07
	rst 38h			;7f08
	rst 38h			;7f09
	rst 38h			;7f0a
	rst 38h			;7f0b
	rst 38h			;7f0c
	rst 38h			;7f0d
	rst 38h			;7f0e
	rst 38h			;7f0f
	rst 38h			;7f10
	rst 38h			;7f11
	rst 38h			;7f12
	rst 38h			;7f13
	rst 38h			;7f14
	rst 38h			;7f15
	rst 38h			;7f16
	rst 38h			;7f17
	rst 38h			;7f18
	rst 38h			;7f19
	rst 38h			;7f1a
	rst 38h			;7f1b
	rst 38h			;7f1c
	rst 38h			;7f1d
	rst 38h			;7f1e
	rst 38h			;7f1f
	rst 38h			;7f20
	rst 38h			;7f21
	rst 38h			;7f22
	rst 38h			;7f23
	rst 38h			;7f24
	rst 38h			;7f25
	rst 38h			;7f26
	rst 38h			;7f27
	rst 38h			;7f28
	rst 38h			;7f29
	rst 38h			;7f2a
	rst 38h			;7f2b
	rst 38h			;7f2c
	rst 38h			;7f2d
	rst 38h			;7f2e
	rst 38h			;7f2f
	rst 38h			;7f30
	rst 38h			;7f31
	rst 38h			;7f32
	rst 38h			;7f33
	rst 38h			;7f34
	rst 38h			;7f35
	rst 38h			;7f36
	rst 38h			;7f37
	rst 38h			;7f38
	rst 38h			;7f39
	rst 38h			;7f3a
	rst 38h			;7f3b
	rst 38h			;7f3c
	rst 38h			;7f3d
	rst 38h			;7f3e
	rst 38h			;7f3f
	rst 38h			;7f40
	rst 38h			;7f41
	rst 38h			;7f42
	rst 38h			;7f43
	rst 38h			;7f44
	rst 38h			;7f45
	rst 38h			;7f46
	rst 38h			;7f47
	rst 38h			;7f48
	rst 38h			;7f49
	rst 38h			;7f4a
	rst 38h			;7f4b
	rst 38h			;7f4c
	rst 38h			;7f4d
	rst 38h			;7f4e
	rst 38h			;7f4f
	rst 38h			;7f50
	rst 38h			;7f51
	rst 38h			;7f52
	rst 38h			;7f53
	rst 38h			;7f54
	rst 38h			;7f55
	rst 38h			;7f56
	rst 38h			;7f57
	rst 38h			;7f58
	rst 38h			;7f59
	rst 38h			;7f5a
	rst 38h			;7f5b
	rst 38h			;7f5c
	rst 38h			;7f5d
	rst 38h			;7f5e
	rst 38h			;7f5f
	rst 38h			;7f60
	rst 38h			;7f61
	rst 38h			;7f62
	rst 38h			;7f63
	rst 38h			;7f64
	rst 38h			;7f65
	rst 38h			;7f66
	rst 38h			;7f67
	rst 38h			;7f68
	rst 38h			;7f69
	rst 38h			;7f6a
	rst 38h			;7f6b
	rst 38h			;7f6c
	rst 38h			;7f6d
	rst 38h			;7f6e
	rst 38h			;7f6f
	rst 38h			;7f70
	rst 38h			;7f71
	rst 38h			;7f72
	rst 38h			;7f73
	rst 38h			;7f74
	rst 38h			;7f75
	rst 38h			;7f76
	rst 38h			;7f77
	rst 38h			;7f78
	rst 38h			;7f79
	rst 38h			;7f7a
	rst 38h			;7f7b
	rst 38h			;7f7c
	rst 38h			;7f7d
	rst 38h			;7f7e
	rst 38h			;7f7f
	rst 38h			;7f80
	rst 38h			;7f81
	rst 38h			;7f82
	rst 38h			;7f83
	rst 38h			;7f84
	rst 38h			;7f85
	rst 38h			;7f86
	rst 38h			;7f87
	rst 38h			;7f88
	rst 38h			;7f89
	rst 38h			;7f8a
	rst 38h			;7f8b
	rst 38h			;7f8c
	rst 38h			;7f8d
	rst 38h			;7f8e
	rst 38h			;7f8f
	rst 38h			;7f90
	rst 38h			;7f91
	rst 38h			;7f92
	rst 38h			;7f93
	rst 38h			;7f94
	rst 38h			;7f95
	rst 38h			;7f96
	rst 38h			;7f97
	rst 38h			;7f98
	rst 38h			;7f99
	rst 38h			;7f9a
	rst 38h			;7f9b
sub_7f9ch:
	rst 38h			;7f9c
	rst 38h			;7f9d
	rst 38h			;7f9e
	rst 38h			;7f9f
	rst 38h			;7fa0
	rst 38h			;7fa1
	rst 38h			;7fa2
	rst 38h			;7fa3
	rst 38h			;7fa4
	rst 38h			;7fa5
	rst 38h			;7fa6
	rst 38h			;7fa7
	rst 38h			;7fa8
	rst 38h			;7fa9
	rst 38h			;7faa
	rst 38h			;7fab
	rst 38h			;7fac
	rst 38h			;7fad
	rst 38h			;7fae
	rst 38h			;7faf
	rst 38h			;7fb0
	rst 38h			;7fb1
	rst 38h			;7fb2
	rst 38h			;7fb3
	rst 38h			;7fb4
	rst 38h			;7fb5
	rst 38h			;7fb6
	rst 38h			;7fb7
	rst 38h			;7fb8
	rst 38h			;7fb9
	rst 38h			;7fba
	rst 38h			;7fbb
	rst 38h			;7fbc
	rst 38h			;7fbd
	rst 38h			;7fbe
	rst 38h			;7fbf
	rst 38h			;7fc0
	rst 38h			;7fc1
	rst 38h			;7fc2
	rst 38h			;7fc3
	rst 38h			;7fc4
	rst 38h			;7fc5
	rst 38h			;7fc6
	rst 38h			;7fc7
	rst 38h			;7fc8
	rst 38h			;7fc9
	rst 38h			;7fca
	rst 38h			;7fcb
	rst 38h			;7fcc
	rst 38h			;7fcd
	rst 38h			;7fce
	rst 38h			;7fcf
	rst 38h			;7fd0
	rst 38h			;7fd1
	rst 38h			;7fd2
	rst 38h			;7fd3
	rst 38h			;7fd4
	rst 38h			;7fd5
	rst 38h			;7fd6
	rst 38h			;7fd7
	rst 38h			;7fd8
	rst 38h			;7fd9
	rst 38h			;7fda
	rst 38h			;7fdb
	rst 38h			;7fdc
	rst 38h			;7fdd
	rst 38h			;7fde
	rst 38h			;7fdf
	rst 38h			;7fe0
	rst 38h			;7fe1
	rst 38h			;7fe2
	rst 38h			;7fe3
	rst 38h			;7fe4
	rst 38h			;7fe5
	rst 38h			;7fe6
	rst 38h			;7fe7
	rst 38h			;7fe8
	rst 38h			;7fe9
	rst 38h			;7fea
	rst 38h			;7feb
	rst 38h			;7fec
	rst 38h			;7fed
	rst 38h			;7fee
	rst 38h			;7fef
	ld d,h			;7ff0
	ld c,l			;7ff1
	ld d,d			;7ff2
	jr nz,$+83		;7ff3
	ld b,l			;7ff5
	ld b,a			;7ff6
	ld b,c			;7ff7
	rst 38h			;7ff8
	rst 38h			;7ff9
	call nc,sub_0788h		;7ffa
	ld b,b			;7ffd
	.DB 001h,04ch		;7ffe
