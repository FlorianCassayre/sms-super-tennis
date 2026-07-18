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
; command line: z80dasm -g 0x0000 -a -l hang-on-japan.sms

	.ORGA	00000h

start:
	di			;0000
l0001h:
	im 1		;0001
l0003h:
	ld sp,0dffeh		;0003
	jr init		;0006
l0008h:
	ei			;0008
l0009h:
	ld hl,0c002h		;0009
loop_splash:
	ld a,(hl)			;000c
	or a			;000d
	jr z,loop_splash		;000e
l0010h:
	xor a			;0010
	ld (hl),a			;0011
	ld (0c02dh),a		;0012
	ret			;0015
	ld c,b			;0016
	ld c,a			;0017
sub_0018h:
	ld a,l			;0018
	out (0bfh),a		;0019
	ld a,h			;001b
	out (0bfh),a		;001c
	ret			;001e
l001fh:
	rst 38h			;001f
l0020h:
	ex de,hl			;0020
	rst 18h			;0021
	ex (sp),hl			;0022
	ex (sp),hl			;0023
	ex de,hl			;0024
	ld c,0beh		;0025
l0027h:
	outi		;0027
	jr nz,l0027h		;0029
	ret			;002b
	ld hl,l2540h+2		;002c
	ld e,(hl)			;002f
	ei			;0030
	ld hl,0c002h		;0031
l0034h:
	ld a,(hl)			;0034
	or a			;0035
	jr l005fh		;0036
l0038h:
	push af			;0038
	in a,(0bfh)		;0039
	or a			;003b
l003ch:
	jp p,0c4d0h		;003c
	jp l01a0h		;003f
sub_0042h:
	ld a,09fh		;0042
	out (07fh),a		;0044
	ld a,0bfh		;0046
	out (07fh),a		;0048
	ld a,0dfh		;004a
	out (07fh),a		;004c
	ld a,0ffh		;004e
	out (07fh),a		;0050
	ret			;0052
l0053h:
	call sub_0042h		;0053
	ld a,(0c02dh)		;0056
	or a			;0059
	jr nz,l0053h		;005a
	jp l0161h		;005c
l005fh:
	jp z,l0034h		;005f
	ld (hl),000h		;0062
l0064h:
	ret			;0064
	rst 38h			;0065
	push af			;0066
	ld a,(0c02dh)		;0067
	cpl			;006a
	ld (0c02dh),a		;006b
	pop af			;006e
	retn		;006f
init:
	call sub_0042h		;0071
	ld a,0aah		;0074
	ld (0d000h),a		;0076
	ld a,055h		;0079
	ld (0c000h),a		;007b
	ld a,(0d000h)		;007e
	cp 055h		;0081
	jp z,07f1dh		;0083
	ld hl,0c000h		;0086
	ld de,0c001h		;0089
	ld bc,l1fffh		;008c
	ld (hl),l			;008f
	ldir		;0090
	ld hl,l037eh		;0092
	ld de,0c4d0h		;0095
	ld bc,0002ah		;0098
	ldir		;009b
	ld a,092h		;009d
	out (0dfh),a		;009f
	xor a			;00a1
	out (0deh),a		;00a2
	in a,(0deh)		;00a4
	ld (0c4c4h),a		;00a6
	call sub_07feh		;00a9
	call sub_06f3h		;00ac
	ld a,004h		;00af
	ld (0c000h),a		;00b1
l00b4h:
	ld a,0ffh		;00b4
	ld (0c015h),a		;00b6
	ld a,000h		;00b9
	ld (0c4c0h),a		;00bb
l00beh:
	call sub_06cch		;00be
	call sub_0042h		;00c1
	ld a,(0c015h)		;00c4
	push af			;00c7
	ld hl,(0c004h)		;00c8
	push hl			;00cb
	ld a,(0c006h)		;00cc
	ld hl,0c001h		;00cf
	ld de,0c002h		;00d2
	ld bc,l04beh		;00d5
	ld (hl),000h		;00d8
	ldir		;00da
	ld hl,0c500h		;00dc
	ld de,0c501h		;00df
	ld bc,l01ffh		;00e2
	ld (hl),l			;00e5
	ldir		;00e6
l00e8h:
	pop hl			;00e8
	ld (0c004h),hl		;00e9
	ld (0c006h),a		;00ec
	pop af			;00ef
l00f0h:
	ld (0c015h),a		;00f0
	call sub_4131h		;00f3
	call sub_03a8h		;00f6
	call sub_029ah		;00f9
l00fch:
	di			;00fc
	call sub_06cch		;00fd
l0100h:
	call sub_067fh		;0100
	call sub_09d5h		;0103
	call 03532h		;0106
	xor a			;0109
	call sub_3d77h		;010a
l010dh:
	ld a,(0c010h)		;010d
	add a,031h		;0110
	ld de,l7838h		;0112
	call sub_24fch		;0115
l0118h:
	ld hl,l0003h+1		;0118
	ld (0c060h),hl		;011b
l011eh:
	ld hl,start		;011e
	ld (0c31ah),hl		;0121
	xor a			;0124
	ld (0c301h),a		;0125
	ld (0c011h),a		;0128
	ld (0c2f2h),a		;012b
	ld bc,l7680h		;012e
	call sub_063fh		;0131
	ld a,(0c000h)		;0134
l0137h:
	and 004h		;0137
	jr nz,l0153h		;0139
	call 03659h		;013b
	call sub_06d7h		;013e
	rst 8			;0141
	call sub_2509h		;0142
l0145h:
	rst 8			;0145
	ld a,(0c015h)		;0146
	or a			;0149
l014ah:
	jp nz,l00beh		;014a
	ld a,(0c049h)		;014d
l0150h:
	or a			;0150
	jr nz,l0145h		;0151
l0153h:
	call sub_06d7h		;0153
	ld hl,l4111h		;0156
	ld (0c101h),hl		;0159
	ld a,081h		;015c
	ld (0c100h),a		;015e
l0161h:
	rst 30h			;0161
l0162h:
	ld a,(0c000h)		;0162
	and 004h		;0165
	jr z,l0177h		;0167
l0169h:
	ld a,(0c00dh)		;0169
	cp 013h		;016c
l016eh:
	jr nc,l017eh		;016e
	ld a,0ffh		;0170
l0172h:
	ld (0c015h),a		;0172
	jr l017eh		;0175
l0177h:
	ld a,(0c02dh)		;0177
	or a			;017a
l017bh:
	jp nz,l0053h		;017b
l017eh:
	ld a,(0c015h)		;017e
	or a			;0181
l0182h:
	jp nz,l00beh		;0182
	call 013a4h		;0185
	call sub_2509h		;0188
	call sub_2f66h		;018b
	call 03479h		;018e
	ld a,(0c000h)		;0191
l0194h:
	bit 6,a		;0194
l0196h:
	jp nz,l3e16h		;0196
l0199h:
	bit 5,a		;0199
	jp nz,l3f87h		;019b
	jr l0161h		;019e
l01a0h:
	push bc			;01a0
	push de			;01a1
	push hl			;01a2
	push ix		;01a3
	push iy		;01a5
l01a7h:
	exx			;01a7
	ex af,af'			;01a8
	push af			;01a9
	push bc			;01aa
	push de			;01ab
	push hl			;01ac
	call sub_37f6h		;01ad
	call sub_3870h		;01b0
	call sub_3843h		;01b3
	call sub_026dh		;01b6
	ld a,(0c05bh)		;01b9
	neg		;01bc
	ld b,a			;01be
	ld c,088h		;01bf
	call sub_063fh		;01c1
	ld bc,02f8ah		;01c4
	call sub_063fh		;01c7
	ld a,(0c000h)		;01ca
	or a			;01cd
	jp p,l0237h		;01ce
	and 004h		;01d1
	jr nz,l01dch		;01d3
	ld a,(0c02dh)		;01d5
	or a			;01d8
	jp nz,l024eh		;01d9
l01dch:
	call sub_38a2h		;01dc
	call sub_2446h		;01df
	call sub_2475h		;01e2
	call sub_3686h		;01e5
	call sub_373ch		;01e8
l01ebh:
	ld hl,0c078h		;01eb
	ld a,(hl)			;01ee
l01efh:
	or a			;01ef
	jp z,l021fh		;01f0
	cp 014h		;01f3
	jr nz,l0206h		;01f5
	ld a,(0c007h)		;01f7
	add a,005h		;01fa
	ld (0c064h),a		;01fc
l01ffh:
	ld de,l40e4h		;01ff
l0202h:
	ld (0c101h),de		;0202
l0206h:
	dec (hl)			;0206
l0207h:
	jr nz,l021fh		;0207
	ld a,00ah		;0209
	ld (0c064h),a		;020b
	ld hl,l40e4h		;020e
l0211h:
	ld (0c101h),hl		;0211
	ld hl,0c079h		;0214
	dec (hl)			;0217
	jr z,l021fh		;0218
	ld a,028h		;021a
	ld (0c078h),a		;021c
l021fh:
	call sub_3e4bh		;021f
l0222h:
	call sub_3604h		;0222
	call sub_3777h		;0225
	call sub_1322h		;0228
	call sub_3d6bh		;022b
	call 012e1h		;022e
	call sub_30fbh		;0231
	jp l0245h		;0234
l0237h:
	or a			;0237
	jr nz,l0245h		;0238
	ld hl,l7c24h		;023a
	rst 18h			;023d
	ld a,(0c4c0h)		;023e
	add a,031h		;0241
	out (0beh),a		;0243
l0245h:
	call sub_0790h		;0245
	ld (0c001h),a		;0248
	call sub_404fh		;024b
l024eh:
	ld a,001h		;024e
	ld (0c002h),a		;0250
	ld bc,02f8ah		;0253
	call sub_063fh		;0256
	ld hl,0c073h		;0259
	inc (hl)			;025c
	pop hl			;025d
	pop de			;025e
	pop bc			;025f
	pop af			;0260
	ex af,af'			;0261
	exx			;0262
	pop iy		;0263
	pop ix		;0265
	pop hl			;0267
	pop de			;0268
	pop bc			;0269
	pop af			;026a
	ei			;026b
	ret			;026c
sub_026dh:
	ld hl,0c045h		;026d
	ld a,(hl)			;0270
	or a			;0271
	ret z			;0272
	ld (hl),000h		;0273
	ld hl,07f15h		;0275
	rst 18h			;0278
	ld hl,0c43fh		;0279
	ld bc,02bbeh		;027c
l027fh:
	outi		;027f
	inc hl			;0281
	inc hl			;0282
	jp nz,l027fh		;0283
	ld hl,l7faah		;0286
	rst 18h			;0289
	ld hl,0c440h		;028a
	ld b,056h		;028d
l028fh:
	outi		;028f
	nop			;0291
	nop			;0292
	outi		;0293
	inc hl			;0295
	jp nz,l028fh		;0296
	ret			;0299
sub_029ah:
	ld ix,0c000h		;029a
	ld (ix+01fh),010h		;029e
	ld (ix+018h),001h		;02a2
	ld (ix+020h),001h		;02a6
	ld (ix+00ch),03ch		;02aa
	ld (ix+00dh),03ch		;02ae
	ld (ix+074h),03ch		;02b2
	ld (ix+02ah),080h		;02b6
	ld (ix+013h),054h		;02ba
	ld (ix+047h),004h		;02be
l02c2h:
	ld (ix+026h),001h		;02c2
	ld a,001h		;02c6
	ld (0c300h),a		;02c8
	ld hl,l39a9h		;02cb
	ld (0c04dh),hl		;02ce
	ld hl,l0020h		;02d1
	ld (0c05ch),hl		;02d4
	ld a,014h		;02d7
	ld (0c044h),a		;02d9
	ld a,0ffh		;02dc
	ld (0c071h),a		;02de
l02e1h:
	ld (0c067h),a		;02e1
	ld d,002h		;02e4
	ld c,0f8h		;02e6
l02e8h:
	ld hl,0c400h		;02e8
l02ebh:
	ld a,00fh		;02eb
	ld b,00bh		;02ed
l02efh:
	ld (hl),a			;02ef
	inc hl			;02f0
	ld (hl),c			;02f1
	inc hl			;02f2
	ld (hl),000h		;02f3
	inc hl			;02f5
	add a,010h		;02f6
	djnz l02efh		;02f8
	ld c,0f0h		;02fa
	dec d			;02fc
	jr nz,l02ebh		;02fd
	call sub_073fh		;02ff
l0302h:
	ld hl,l3d9ah		;0302
	ld de,0c000h		;0305
	ld bc,l0020h		;0308
	call sub_0654h		;030b
	ld hl,l7f00h		;030e
	call sub_0018h		;0311
	ld hl,0c400h		;0314
	ld bc,l16beh		;0317
l031ah:
	outi		;031a
	inc hl			;031c
	inc hl			;031d
	jp nz,l031ah		;031e
	ld hl,l7f80h		;0321
	call sub_0018h		;0324
	ld hl,0c401h		;0327
	ld b,02ch		;032a
l032ch:
	outi		;032c
	push af			;032e
	pop af			;032f
	outi		;0330
	inc hl			;0332
	jp nz,l032ch		;0333
	ld a,(0c000h)		;0336
	and 004h		;0339
	jp nz,l034ah		;033b
	xor a			;033e
	ld hl,0c004h		;033f
	ld (hl),a			;0342
	inc hl			;0343
	ld (hl),a			;0344
	inc hl			;0345
	ld (hl),a			;0346
	jp sub_06d7h		;0347
l034ah:
	ld a,r		;034a
	and 007h		;034c
	ld (0c010h),a		;034e
	ld a,(0c4c6h)		;0351
	ld (0c007h),a		;0354
	ld (0c04bh),a		;0357
	ld e,a			;035a
	ld d,000h		;035b
	ld hl,l399dh		;035d
	add hl,de			;0360
	add hl,de			;0361
	ld e,(hl)			;0362
	inc hl			;0363
	ld d,(hl)			;0364
	ex de,hl			;0365
	ld (0c04dh),hl		;0366
	inc a			;0369
	cp 004h		;036a
	jr c,l036fh		;036c
	xor a			;036e
l036fh:
	ld (0c4c6h),a		;036f
	call sub_06d7h		;0372
	ld a,00bh		;0375
	ld (0c068h),a		;0377
	ld (0c072h),a		;037a
	ret			;037d
l037eh:
	in a,(07eh)		;037e
	cp 05fh		;0380
	jr c,l0393h		;0382
	ld (0c4dah),a		;0384
	ld a,(0c500h)		;0387
	out (0bfh),a		;038a
	ld a,088h		;038c
	out (0bfh),a		;038e
	pop af			;0390
	ei			;0391
	ret			;0392
l0393h:
	ld a,(0c051h)		;0393
	neg		;0396
	out (0bfh),a		;0398
	ld a,088h		;039a
	out (0bfh),a		;039c
	xor a			;039e
	out (0bfh),a		;039f
	ld a,08ah		;03a1
	out (0bfh),a		;03a3
	pop af			;03a5
	ei			;03a6
	ret			;03a7
sub_03a8h:
	di			;03a8
	ld de,0c000h		;03a9
	ld hl,l3dbah		;03ac
	ld b,020h		;03af
	call l0020h		;03b1
	call sub_06b5h		;03b4
	ld hl,l6c00h		;03b7
	ld de,l7589h		;03ba
	ld a,000h		;03bd
	ex af,af'			;03bf
	call sub_080bh		;03c0
	ld hl,0c000h		;03c3
	ld a,(hl)			;03c6
	bit 2,a		;03c7
	jr z,l03ffh		;03c9
	ld a,(0c015h)		;03cb
	or a			;03ce
	jp p,l03ffh		;03cf
	ld a,(0c4c5h)		;03d2
	or a			;03d5
	jr nz,l03ffh		;03d6
	ld (hl),001h		;03d8
	call sub_069ah		;03da
	ld hl,07acch		;03dd
	ld de,005fdh		;03e0
	ld bc,l1300h+2		;03e3
	call 03708h		;03e6
	call sub_06d7h		;03e9
	ei			;03ec
	ld b,0b4h		;03ed
l03efh:
	rst 8			;03ef
	ld a,(0c001h)		;03f0
	cpl			;03f3
	ld c,a			;03f4
	ld a,(0c01ah)		;03f5
	and c			;03f8
	and 030h		;03f9
	jr nz,l03ffh		;03fb
	djnz l03efh		;03fd
l03ffh:
	ld hl,0c000h		;03ff
	xor a			;0402
	ld (hl),a			;0403
	ld (0c015h),a		;0404
	call sub_06cch		;0407
	di			;040a
	call sub_069ah		;040b
	ld hl,l04d8h		;040e
	ld b,009h		;0411
l0413h:
	ld e,(hl)			;0413
	inc hl			;0414
	ld d,(hl)			;0415
	inc hl			;0416
	ld a,(hl)			;0417
	inc hl			;0418
	ld c,(hl)			;0419
	inc hl			;041a
	push hl			;041b
	ld l,a			;041c
	ld h,c			;041d
	call sub_062fh		;041e
	pop hl			;0421
	djnz l0413h		;0422
	ld hl,078cah		;0424
	ld de,l055dh		;0427
	ld bc,01408h		;042a
	call 03708h		;042d
	ld hl,l7ca2h		;0430
	call sub_0018h		;0433
	ld hl,0c4c1h		;0436
	call sub_3615h		;0439
	xor a			;043c
	ld (0c051h),a		;043d
	ld (0c05ah),a		;0440
	call sub_06d7h		;0443
	ei			;0446
l0447h:
	rst 8			;0447
	ld a,(0c001h)		;0448
	cpl			;044b
	and 030h		;044c
	jr nz,l0447h		;044e
	ld de,l00b4h		;0450
	ld hl,0c4c5h		;0453
	dec (hl)			;0456
	jp p,l0464h		;0457
	ld (hl),000h		;045a
	ld de,001b8h		;045c
	ld a,08fh		;045f
	ld (0c100h),a		;0461
l0464h:
	ld (0c023h),de		;0464
l0468h:
	ld a,01eh		;0468
	ld (0c022h),a		;046a
	ld hl,(0c023h)		;046d
	ld de,l00f0h		;0470
	or a			;0473
	sbc hl,de		;0474
	jr nc,l047ch		;0476
	ld (0c023h),de		;0478
l047ch:
	rst 8			;047c
	ld hl,0c4c0h		;047d
	ld a,(0c001h)		;0480
	cpl			;0483
	and 033h		;0484
	jr nz,l0497h		;0486
	ld hl,(0c023h)		;0488
	dec hl			;048b
	ld (0c023h),hl		;048c
	ld a,h			;048f
	or l			;0490
	jr nz,l047ch		;0491
l0493h:
	ld a,084h		;0493
	jr l04cah		;0495
l0497h:
	ld c,a			;0497
	and 030h		;0498
	jr nz,l04c8h		;049a
l049ch:
	ld a,(0c01ah)		;049c
	cpl			;049f
	and 003h		;04a0
	cp c			;04a2
	jr nz,l04aeh		;04a3
	ld a,(0c022h)		;04a5
	dec a			;04a8
	ld (0c022h),a		;04a9
	jr nz,l047ch		;04ac
l04aeh:
	bit 0,c		;04ae
	jr nz,l04c0h		;04b0
	bit 1,c		;04b2
	jr z,l0468h		;04b4
	inc (hl)			;04b6
	ld a,(hl)			;04b7
	cp 003h		;04b8
	jr nz,l0468h		;04ba
	ld (hl),000h		;04bc
l04beh:
	jr l0468h		;04be
l04c0h:
	dec (hl)			;04c0
	jp p,l0468h		;04c1
	ld (hl),002h		;04c4
	jr l0468h		;04c6
l04c8h:
	ld a,080h		;04c8
l04cah:
	ld b,a			;04ca
	xor a			;04cb
	ld (0c100h),a		;04cc
	ld (0c015h),a		;04cf
	rst 8			;04d2
	ld a,b			;04d3
	ld (0c000h),a		;04d4
	ret			;04d7
l04d8h:
	call m,08e04h		;04d8
	ld a,e			;04db
	rrca			;04dc
	dec b			;04dd
l04deh:
	jr $+124		;04de
	ld d,005h		;04e0
	sub b			;04e2
	ld a,h			;04e3
	jr nz,$+5		;04e4
	ld b,07dh		;04e6
	ld d,b			;04e8
	dec b			;04e9
	jr nc,l0569h		;04ea
	ld (hl),005h		;04ec
	add a,d			;04ee
	ld a,l			;04ef
	ld d,b			;04f0
	dec b			;04f1
	or h			;04f2
	ld a,l			;04f3
	ld d,(hl)			;04f4
	dec b			;04f5
	jp p,l5a78h		;04f6
	dec b			;04f9
	xor (hl)			;04fa
l04fbh:
	ld a,h			;04fb
	add hl,bc			;04fc
	.DB "PUSH START BUTTON"			;04fd
	.DB $00			;050e
	add hl,bc			;050f
	.DB "LEVEL"			;0510
	.DB $00			;0515
	add hl,bc			;0516
	.DB "HI;SCORE"			;0517
	.DB $00			;051f
	add hl,bc			;0520
	.DB "ORIGINAL GAME"
	jr nz,l04deh		;052e
	jr nz,$-81		;0530
	or b			;0532
	or c			;0533
	or d			;0534
	nop			;0535
	add hl,bc			;0536
	.DB "REPROGRAMMED GAME"
	jr nz,$-82		;0548
	jr nz,l04fbh		;054a
	or b			;054c
	or c			;054d
	or d			;054e
	nop			;054f
	.DB $01		;0550
	.DB "1985"		;0551
	.DB $00			;0555
	ld bc,0b4b3h		;0556
	nop			;0559
	add hl,bc			;055a
	jr nc,l055dh		;055b
l055dh:
	jr nz,l05bfh		;055d
	ld h,c			;055f
	jr nz,l05c4h		;0560
	ld h,c			;0562
	jr nz,l05c5h		;0563
	ld h,c			;0565
	jr nz,l05cah		;0566
	ld h,c			;0568
l0569h:
	jr nz,l058bh		;0569
	jr nz,l05cfh		;056b
	ld h,c			;056d
	jr nz,l05d0h		;056e
	ld h,c			;0570
	ld h,e			;0571
l0572h:
	ld h,h			;0572
	ld h,l			;0573
	ld h,d			;0574
	ld h,(hl)			;0575
	ld h,a			;0576
	ld l,b			;0577
	ld l,c			;0578
	ld h,l			;0579
	ld h,d			;057a
	ld h,(hl)			;057b
	ld l,d			;057c
l057dh:
	jr nz,l059fh		;057d
	ld h,d			;057f
l0580h:
	ld h,(hl)			;0580
	ld h,a			;0581
	ld l,b			;0582
l0583h:
	ld l,c			;0583
	ld h,l			;0584
	ld l,e			;0585
	ld l,h			;0586
	ld l,l			;0587
l0588h:
	ld l,e			;0588
	ld l,(hl)			;0589
l058ah:
	ld l,a			;058a
l058bh:
	ld l,e			;058b
l058ch:
	ld (hl),b			;058c
	ld l,l			;058d
	ld l,e			;058e
	ld (hl),c			;058f
l0590h:
	ld (hl),d			;0590
	jr nz,l05b3h		;0591
	ld l,e			;0593
	ld (hl),e			;0594
	ld l,a			;0595
	ld l,e			;0596
	ld (hl),b			;0597
	ld l,l			;0598
	ld (hl),h			;0599
	ld (hl),l			;059a
	halt			;059b
	ld (hl),h			;059c
l059dh:
	ld (hl),a			;059d
	ld a,b			;059e
l059fh:
	ld (hl),h			;059f
	ld a,c			;05a0
	ld l,l			;05a1
	ld (hl),h			;05a2
	ld a,d			;05a3
	ld a,e			;05a4
	ld h,d			;05a5
	ld h,c			;05a6
	ld (hl),h			;05a7
	ld a,h			;05a8
	ld l,l			;05a9
	ld (hl),h			;05aa
	ld a,c			;05ab
	ld l,l			;05ac
	ld (hl),h			;05ad
	ld a,l			;05ae
	ld a,(hl)			;05af
	ld (hl),h			;05b0
	ld a,a			;05b1
	ld l,a			;05b2
l05b3h:
	ld (hl),h			;05b3
	add a,b			;05b4
	add a,c			;05b5
	ld (hl),h			;05b6
	add a,d			;05b7
	add a,e			;05b8
	ld l,e			;05b9
	ld l,d			;05ba
	ld (hl),h			;05bb
	add a,h			;05bc
	ld l,l			;05bd
	ld (hl),h			;05be
l05bfh:
	add a,b			;05bf
l05c0h:
	add a,c			;05c0
	ld (hl),h			;05c1
	add a,h			;05c2
	ld l,l			;05c3
l05c4h:
	ld (hl),h			;05c4
l05c5h:
	ld a,h			;05c5
	ld l,l			;05c6
	ld (hl),h			;05c7
	add a,l			;05c8
	add a,c			;05c9
l05cah:
	ld (hl),h			;05ca
	add a,(hl)			;05cb
	add a,a			;05cc
	adc a,b			;05cd
	adc a,c			;05ce
l05cfh:
	ld (hl),h			;05cf
l05d0h:
	adc a,d			;05d0
	add a,a			;05d1
	ld (hl),h			;05d2
	add a,l			;05d3
	add a,c			;05d4
	ld (hl),h			;05d5
	adc a,e			;05d6
	adc a,h			;05d7
	ld (hl),h			;05d8
	adc a,e			;05d9
	adc a,h			;05da
	ld (hl),h			;05db
	adc a,l			;05dc
	adc a,(hl)			;05dd
	ld (hl),h			;05de
	adc a,a			;05df
	adc a,(hl)			;05e0
	jr nz,l0603h		;05e1
	ld (hl),h			;05e3
	adc a,a			;05e4
	adc a,(hl)			;05e5
	ld (hl),h			;05e6
	adc a,l			;05e7
	adc a,(hl)			;05e8
	sub b			;05e9
	sub c			;05ea
	jr nz,l057dh		;05eb
	sub c			;05ed
	jr nz,l0580h		;05ee
	sub c			;05f0
	jr nz,l0583h		;05f1
	adc a,(hl)			;05f3
	jr nz,l0616h		;05f4
	jr nz,l0588h		;05f6
	adc a,(hl)			;05f8
	jr nz,l058bh		;05f9
	sub c			;05fb
	jr nz,l0590h		;05fc
	sub e			;05fe
	sub d			;05ff
sub_0600h:
	sub e			;0600
	sub d			;0601
	sub e			;0602
l0603h:
	sub h			;0603
	sub l			;0604
	jr nz,l059dh		;0605
	sub a			;0607
	sub h			;0608
	sub l			;0609
	sbc a,b			;060a
	sbc a,c			;060b
	sbc a,d			;060c
	sbc a,e			;060d
	sbc a,h			;060e
	sbc a,l			;060f
	sbc a,(hl)			;0610
	sbc a,a			;0611
	and b			;0612
	and c			;0613
	and d			;0614
	and e			;0615
l0616h:
	and h			;0616
	and l			;0617
	jr nz,l05c0h		;0618
	and a			;061a
	and h			;061b
	and l			;061c
	xor b			;061d
	xor c			;061e
	xor d			;061f
	xor e			;0620
	xor h			;0621
	xor l			;0622
sub_0623h:
	ld d,000h		;0623
	ld l,d			;0625
	ld b,008h		;0626
l0628h:
	add hl,hl			;0628
	jr nc,l062ch		;0629
	add hl,de			;062b
l062ch:
	djnz l0628h		;062c
	ret			;062e
sub_062fh:
	rst 18h			;062f
	ld a,(de)			;0630
	ld c,a			;0631
l0632h:
	inc de			;0632
	ld a,(de)			;0633
	or a			;0634
	ret z			;0635
	out (0beh),a		;0636
	ld a,c			;0638
	ex (sp),hl			;0639
	ex (sp),hl			;063a
	out (0beh),a		;063b
	jr l0632h		;063d
sub_063fh:
	ld a,b			;063f
	out (0bfh),a		;0640
	ld a,c			;0642
	out (0bfh),a		;0643
	ret			;0645
sub_0646h:
	push af			;0646
	rst 18h			;0647
	ex (sp),hl			;0648
	ex (sp),hl			;0649
	pop af			;064a
	out (0beh),a		;064b
	ret			;064d
sub_064eh:
	rst 18h			;064e
	ex (sp),hl			;064f
	ex (sp),hl			;0650
	in a,(0beh)		;0651
	ret			;0653
sub_0654h:
	ex de,hl			;0654
	rst 18h			;0655
	ex (sp),hl			;0656
	ex (sp),hl			;0657
l0658h:
	ld a,(de)			;0658
	out (0beh),a		;0659
	inc de			;065b
	dec bc			;065c
	ld a,b			;065d
	or c			;065e
	jr nz,l0658h		;065f
	ret			;0661
sub_0662h:
	rst 18h			;0662
	ex (sp),hl			;0663
	ex (sp),hl			;0664
l0665h:
	in a,(0beh)		;0665
	ld (de),a			;0667
	inc de			;0668
	dec bc			;0669
	ld a,b			;066a
	or c			;066b
	jr nz,l0665h		;066c
	ret			;066e
l066fh:
	call sub_064eh		;066f
	ex de,hl			;0672
	call sub_0646h		;0673
	ex de,hl			;0676
	inc hl			;0677
	inc de			;0678
	dec bc			;0679
	ld a,b			;067a
	or c			;067b
	jr nz,l066fh		;067c
	ret			;067e
sub_067fh:
	ld hl,l7800h		;067f
	ld bc,00300h		;0682
	push de			;0685
	rst 18h			;0686
l0687h:
	ex (sp),hl			;0687
	ex (sp),hl			;0688
	ld a,020h		;0689
	out (0beh),a		;068b
	ex (sp),hl			;068d
	ex (sp),hl			;068e
	ld a,001h		;068f
	out (0beh),a		;0691
	dec bc			;0693
	ld a,b			;0694
	or c			;0695
	jr nz,l0687h		;0696
	pop de			;0698
	ret			;0699
sub_069ah:
	ld hl,l7800h		;069a
	ld bc,00300h		;069d
	push de			;06a0
	rst 18h			;06a1
l06a2h:
	ex (sp),hl			;06a2
	ex (sp),hl			;06a3
	ld a,020h		;06a4
	out (0beh),a		;06a6
	ex (sp),hl			;06a8
	ex (sp),hl			;06a9
	ld a,009h		;06aa
	out (0beh),a		;06ac
	dec bc			;06ae
	ld a,b			;06af
	or c			;06b0
	jr nz,l06a2h		;06b1
	pop de			;06b3
	ret			;06b4
sub_06b5h:
	ld hl,l7f00h		;06b5
	ld bc,00040h		;06b8
	ld a,0efh		;06bb
sub_06bdh:
	push de			;06bd
	ld d,a			;06be
	rst 18h			;06bf
	ex (sp),hl			;06c0
	ex (sp),hl			;06c1
l06c2h:
	ld a,d			;06c2
	out (0beh),a		;06c3
	dec bc			;06c5
	ld a,b			;06c6
	or c			;06c7
	jr nz,l06c2h		;06c8
	pop de			;06ca
	ret			;06cb
sub_06cch:
	push af			;06cc
	ld a,082h		;06cd
	out (0bfh),a		;06cf
	ld a,081h		;06d1
	out (0bfh),a		;06d3
	pop af			;06d5
	ret			;06d6
sub_06d7h:
	push af			;06d7
	ld a,0e2h		;06d8
	out (0bfh),a		;06da
	ld a,081h		;06dc
	out (0bfh),a		;06de
	pop af			;06e0
	ret			;06e1
sub_06e2h:
	ld hl,l0785h		;06e2
	ld c,080h		;06e5
	ld e,00bh		;06e7
l06e9h:
	ld b,(hl)			;06e9
	call sub_063fh		;06ea
	inc hl			;06ed
	inc c			;06ee
	dec e			;06ef
	jr nz,l06e9h		;06f0
	ret			;06f2
sub_06f3h:
	di			;06f3
	in a,(0bfh)		;06f4
	call sub_06e2h		;06f6
	ld hl,l3dbah		;06f9
	ld de,0c000h		;06fc
sub_06ffh:
	ld b,020h		;06ff
	rst 20h			;0701
	ld hl,04000h		;0702
sub_0705h:
	ld bc,04000h		;0705
	xor a			;0708
	call sub_06bdh		;0709
	ld de,l5f03h		;070c
	ld hl,04000h		;070f
	ld a,000h		;0712
	ex af,af'			;0714
	call sub_080bh		;0715
	ld de,l6a48h		;0718
	ld hl,0c700h		;071b
	ld a,0ffh		;071e
	ex af,af'			;0720
	call sub_080bh		;0721
	call sub_0842h		;0724
	ld hl,l03ffh+1		;0727
	ld de,0d7e0h		;072a
	ld bc,l00beh+2		;072d
	call sub_0662h		;0730
	ld hl,00cc0h		;0733
	ld de,0d8a0h		;0736
	ld bc,sub_06ffh+1		;0739
	call sub_0662h		;073c
sub_073fh:
	di			;073f
	call sub_06cch		;0740
	ld hl,l6000h		;0743
	ld de,l4fe3h		;0746
	ld a,000h		;0749
	ex af,af'			;074b
	call sub_080bh		;074c
	ld hl,l3800h		;074f
	ld de,07e00h		;0752
	ld bc,l01ffh+1		;0755
	call l066fh		;0758
	ld hl,l3f00h		;075b
	ld de,l7f3fh+1		;075e
	ld bc,00040h		;0761
	call l066fh		;0764
	ld hl,0c700h		;0767
	ld de,l5d40h		;076a
	ld bc,002c0h		;076d
	call sub_0654h		;0770
	ld hl,0d8a0h		;0773
	ld de,l4cc0h		;0776
	ld bc,sub_06ffh+1		;0779
	call sub_0654h		;077c
	call sub_067fh		;077f
	jp sub_06b5h		;0782
l0785h:
	ld h,(hl)			;0785
	add a,d			;0786
	rst 38h			;0787
	rst 38h			;0788
	rst 38h			;0789
l078ah:
	rst 38h			;078a
	ei			;078b
	inc c			;078c
	nop			;078d
	nop			;078e
	rst 38h			;078f
sub_0790h:
	ld a,(0c001h)		;0790
	ld (0c01ah),a		;0793
	ld a,(0c4c4h)		;0796
	or a			;0799
	jr nz,l07e8h		;079a
	ld a,007h		;079c
	out (0deh),a		;079e
	in a,(0dch)		;07a0
	ld c,a			;07a2
	ld a,002h		;07a3
	out (0deh),a		;07a5
	in a,(0dch)		;07a7
	bit 4,a		;07a9
	jr nz,l07afh		;07ab
	res 4,c		;07ad
l07afh:
	ld a,003h		;07af
	out (0deh),a		;07b1
	in a,(0dch)		;07b3
	bit 4,a		;07b5
	jr nz,l07bbh		;07b7
	res 5,c		;07b9
l07bbh:
	ld a,004h		;07bb
	out (0deh),a		;07bd
	in a,(0dch)		;07bf
	bit 5,a		;07c1
	jr nz,l07c7h		;07c3
	res 1,c		;07c5
l07c7h:
	ld a,005h		;07c7
	out (0deh),a		;07c9
	in a,(0dch)		;07cb
	bit 5,a		;07cd
	jr nz,l07d3h		;07cf
	res 2,c		;07d1
l07d3h:
	ld a,006h		;07d3
	out (0deh),a		;07d5
	in a,(0dch)		;07d7
	bit 5,a		;07d9
	jr nz,l07dfh		;07db
	res 3,c		;07dd
l07dfh:
	bit 6,a		;07df
	jr nz,l07e5h		;07e1
	res 0,c		;07e3
l07e5h:
	ld a,c			;07e5
	jr l07eah		;07e6
l07e8h:
	in a,(0dch)		;07e8
l07eah:
	ld hl,0c000h		;07ea
	bit 2,(hl)		;07ed
	ret z			;07ef
	cpl			;07f0
	and 030h		;07f1
	jp z,l4f15h		;07f3
	ld hl,0c015h		;07f6
	ld (hl),001h		;07f9
	ld a,0ffh		;07fb
	ret			;07fd
sub_07feh:
	ld b,003h		;07fe
l0800h:
	ld de,start		;0800
l0803h:
	dec de			;0803
	ld a,d			;0804
	or e			;0805
	jr nz,l0803h		;0806
	djnz l0800h		;0808
	ret			;080a
sub_080bh:
	ld b,004h		;080b
l080dh:
	push bc			;080d
	push hl			;080e
	call sub_0818h		;080f
	pop hl			;0812
	inc hl			;0813
	pop bc			;0814
	djnz l080dh		;0815
	ret			;0817
sub_0818h:
	ld a,(de)			;0818
	inc de			;0819
	or a			;081a
	ret z			;081b
	ld c,a			;081c
	and 07fh		;081d
	ld b,a			;081f
l0820h:
	ld a,(de)			;0820
	ex af,af'			;0821
	or a			;0822
	jr nz,l082bh		;0823
	ex af,af'			;0825
	call sub_0646h		;0826
	jr l082dh		;0829
l082bh:
	ex af,af'			;082b
	ld (hl),a			;082c
l082dh:
	bit 7,c		;082d
	jr z,l0832h		;082f
	inc de			;0831
l0832h:
	inc hl			;0832
	inc hl			;0833
	inc hl			;0834
	inc hl			;0835
	djnz l0820h		;0836
	bit 7,c		;0838
	jr nz,sub_0818h		;083a
	inc de			;083c
	jr sub_0818h		;083d
	ld d,d			;083f
	ld b,l			;0840
	ld d,(hl)			;0841
sub_0842h:
	ld hl,l04c0h		;0842
	ld de,l5d00h		;0845
	ld b,031h		;0848
l084ah:
	push bc			;084a
	push hl			;084b
	push de			;084c
	ld de,0c680h		;084d
	ld bc,00040h		;0850
	call sub_0662h		;0853
	call sub_0873h		;0856
	pop de			;0859
	push de			;085a
	ld hl,0c680h		;085b
	ld bc,00040h		;085e
	call sub_0654h		;0861
	pop de			;0864
	ld hl,0ffc0h		;0865
	add hl,de			;0868
	ex de,hl			;0869
	pop hl			;086a
	ld bc,00040h		;086b
	add hl,bc			;086e
	pop bc			;086f
	djnz l084ah		;0870
	ret			;0872
sub_0873h:
	push bc			;0873
	push hl			;0874
	ld b,040h		;0875
	ld hl,0c680h		;0877
l087ah:
	push bc			;087a
	ld a,(hl)			;087b
	ld b,008h		;087c
l087eh:
	rrca			;087e
	rl c		;087f
	djnz l087eh		;0881
	ld (hl),c			;0883
	pop bc			;0884
	inc hl			;0885
	djnz l087ah		;0886
	pop hl			;0888
	pop bc			;0889
	ret			;088a
	ld bc,l0100h+1		;088b
	ld bc,l0100h+1		;088e
l0891h:
	ld bc,l0100h+1		;0891
	ld bc,l0100h+1		;0894
	ld bc,l01ffh+2		;0897
	inc bc			;089a
	inc b			;089b
	dec b			;089c
	dec b			;089d
	dec b			;089e
	dec b			;089f
	dec b			;08a0
	dec b			;08a1
	dec b			;08a2
	dec b			;08a3
	dec b			;08a4
	dec b			;08a5
	dec b			;08a6
	dec b			;08a7
	dec b			;08a8
	ld b,007h		;08a9
	jr nz,l08b5h		;08ab
	nop			;08ad
	nop			;08ae
	nop			;08af
	nop			;08b0
	nop			;08b1
	nop			;08b2
	nop			;08b3
	nop			;08b4
l08b5h:
	nop			;08b5
	nop			;08b6
	nop			;08b7
	nop			;08b8
l08b9h:
	add hl,bc			;08b9
	ld a,(bc)			;08ba
	jr nz,$+32		;08bb
	dec bc			;08bd
	nop			;08be
	nop			;08bf
	nop			;08c0
	nop			;08c1
	nop			;08c2
	nop			;08c3
	nop			;08c4
	nop			;08c5
	nop			;08c6
	nop			;08c7
l08c8h:
	nop			;08c8
	inc c			;08c9
	dec c			;08ca
	jr nz,l08edh		;08cb
	jr nz,$+14		;08cd
	nop			;08cf
	nop			;08d0
	nop			;08d1
	nop			;08d2
	nop			;08d3
	nop			;08d4
	nop			;08d5
	nop			;08d6
	nop			;08d7
	nop			;08d8
	rrca			;08d9
	djnz $+32		;08da
	jr nz,$+32		;08dc
	jr nz,l08f1h		;08de
	nop			;08e0
	nop			;08e1
	nop			;08e2
	nop			;08e3
	nop			;08e4
	nop			;08e5
	nop			;08e6
	nop			;08e7
sub_08e8h:
	nop			;08e8
	ld (de),a			;08e9
	inc de			;08ea
	jr nz,l090dh		;08eb
l08edh:
	jr nz,l090fh		;08ed
	jr nz,l0905h		;08ef
l08f1h:
	nop			;08f1
	nop			;08f2
	nop			;08f3
	nop			;08f4
	nop			;08f5
	nop			;08f6
	nop			;08f7
	dec d			;08f8
	ld d,017h		;08f9
	jr nz,l091dh		;08fb
	jr nz,l091fh		;08fd
	jr nz,l0921h		;08ff
l0901h:
	jr l0903h		;0901
l0903h:
	nop			;0903
	nop			;0904
l0905h:
	nop			;0905
	nop			;0906
	nop			;0907
	add hl,de			;0908
	ld a,(de)			;0909
	dec de			;090a
	jr nz,l092dh		;090b
l090dh:
	jr nz,l092fh		;090d
l090fh:
	jr nz,l0931h		;090f
	jr nz,l092fh		;0911
	nop			;0913
	nop			;0914
	nop			;0915
	nop			;0916
	nop			;0917
	dec e			;0918
	ld e,01fh		;0919
	jr nz,$+32		;091b
l091dh:
	jr nz,$+32		;091d
l091fh:
	jr nz,$+32		;091f
l0921h:
	jr nz,$+32		;0921
	ld hl,start		;0923
	nop			;0926
	nop			;0927
	ld (l2423h),hl		;0928
	jr nz,l094dh		;092b
l092dh:
	jr nz,l094fh		;092d
l092fh:
	jr nz,l0951h		;092f
l0931h:
	jr nz,l0953h		;0931
	jr nz,l095ah		;0933
	nop			;0935
	nop			;0936
	nop			;0937
	ld h,027h		;0938
	jr z,l095ch		;093a
	jr nz,l095eh		;093c
	jr nz,l0960h		;093e
	jr nz,$+32		;0940
	jr nz,$+32		;0942
	jr nz,l096fh		;0944
	nop			;0946
	nop			;0947
	ld hl,(l2c2bh)		;0948
	jr nz,l096dh		;094b
l094dh:
	jr nz,l096fh		;094d
l094fh:
	jr nz,l0971h		;094f
l0951h:
	jr nz,l0973h		;0951
l0953h:
	jr nz,l0975h		;0953
	jr nz,l0984h		;0955
l0957h:
	ld d,e			;0957
	add hl,bc			;0958
	ld b,e			;0959
l095ah:
	add hl,bc			;095a
	ld c,a			;095b
l095ch:
	add hl,bc			;095c
	ld d,d			;095d
l095eh:
	add hl,bc			;095e
	ld b,l			;095f
l0960h:
	add hl,bc			;0960
	jr nz,$+9		;0961
	jr nz,$+9		;0963
	jr nz,l0970h		;0965
	jr nz,l0972h		;0967
	jr nz,$+9		;0969
	jr nc,l0976h		;096b
l096dh:
	jr nc,l0978h		;096d
l096fh:
	dec a			;096f
l0970h:
	add hl,bc			;0970
l0971h:
	ld h,(hl)			;0971
l0972h:
	add hl,bc			;0972
l0973h:
	ld a,009h		;0973
l0975h:
	dec a			;0975
l0976h:
	dec bc			;0976
	ld (hl),d			;0977
l0978h:
	add hl,bc			;0978
	ld l,h			;0979
	add hl,bc			;097a
	ld l,l			;097b
	add hl,bc			;097c
	jr nz,l0988h		;097d
	ld b,e			;097f
	add hl,bc			;0980
	ld c,a			;0981
	add hl,bc			;0982
	ld d,l			;0983
l0984h:
	add hl,bc			;0984
	ld d,d			;0985
	add hl,bc			;0986
	ld d,e			;0987
l0988h:
	add hl,bc			;0988
	ld b,l			;0989
	add hl,bc			;098a
	jr nz,l0996h		;098b
	jr nc,l0998h		;098d
	jr nz,l099ah		;098f
	ld (hl),e			;0991
	add hl,bc			;0992
	ld (hl),e			;0993
	add hl,bc			;0994
	ld (hl),e			;0995
l0996h:
	add hl,bc			;0996
	ld d,e			;0997
l0998h:
	add hl,bc			;0998
	ld d,b			;0999
l099ah:
	add hl,bc			;099a
	ld b,l			;099b
	add hl,bc			;099c
	ld b,l			;099d
	add hl,bc			;099e
	ld b,h			;099f
	add hl,bc			;09a0
	jr nz,l09ach		;09a1
	jr nc,l09aeh		;09a3
	jr nc,l09b0h		;09a5
	jr nc,l09b2h		;09a7
	ld l,c			;09a9
	add hl,bc			;09aa
	ld l,d			;09ab
l09ach:
	add hl,bc			;09ac
	ld l,e			;09ad
l09aeh:
	add hl,bc			;09ae
	dec a			;09af
l09b0h:
	dec c			;09b0
	ccf			;09b1
l09b2h:
	add hl,bc			;09b2
	ccf			;09b3
	add hl,bc			;09b4
	dec a			;09b5
	rrca			;09b6
	ld (hl),d			;09b7
	dec c			;09b8
	ld l,(hl)			;09b9
	add hl,bc			;09ba
	ld l,a			;09bb
	add hl,bc			;09bc
	jr nz,$+9		;09bd
	ld c,h			;09bf
	add hl,bc			;09c0
	ld b,l			;09c1
	add hl,bc			;09c2
	ld b,(hl)			;09c3
	add hl,bc			;09c4
	ld d,h			;09c5
	add hl,bc			;09c6
	jr nz,l09d2h		;09c7
	jr nc,l09d4h		;09c9
	jr nc,$+9		;09cb
	jr nc,l09d8h		;09cd
	jr nz,$+9		;09cf
	ld (hl),e			;09d1
l09d2h:
	add hl,bc			;09d2
	ld (hl),e			;09d3
l09d4h:
	add hl,bc			;09d4
sub_09d5h:
	ld hl,l7b00h		;09d5
l09d8h:
	ld de,0088ch		;09d8
	ld c,00ch		;09db
l09ddh:
	rst 18h			;09dd
	ld b,010h		;09de
l09e0h:
	ld a,(de)			;09e0
	out (0beh),a		;09e1
	ex (sp),hl			;09e3
	ex (sp),hl			;09e4
	ld a,001h		;09e5
	out (0beh),a		;09e7
	ex (sp),hl			;09e9
	ex (sp),hl			;09ea
	inc de			;09eb
	djnz l09e0h		;09ec
	inc de			;09ee
	push de			;09ef
	ld de,00040h		;09f0
	add hl,de			;09f3
	pop de			;09f4
	dec c			;09f5
	jr nz,l09ddh		;09f6
	ld hl,07ddeh		;09f8
	ld de,00956h		;09fb
	ld c,00ch		;09fe
l0a00h:
	rst 18h			;0a00
	ld b,011h		;0a01
l0a03h:
	ld a,(de)			;0a03
	out (0beh),a		;0a04
	ex (sp),hl			;0a06
	ex (sp),hl			;0a07
	ld a,003h		;0a08
	out (0beh),a		;0a0a
	ex (sp),hl			;0a0c
	ex (sp),hl			;0a0d
l0a0eh:
	dec de			;0a0e
	djnz l0a03h		;0a0f
	push de			;0a11
	ld de,0ffc0h		;0a12
	add hl,de			;0a15
	pop de			;0a16
	dec c			;0a17
	jr nz,l0a00h		;0a18
	ld hl,l0957h		;0a1a
	ld de,l7802h		;0a1d
	ld b,07eh		;0a20
	call l0020h		;0a22
	ret			;0a25
	ld a,(0c301h)		;0a26
	bit 7,a		;0a29
	jr nz,l0a3eh		;0a2b
	bit 6,a		;0a2d
	jp nz,l0f18h		;0a2f
	ld de,0c301h		;0a32
	ld hl,l1014h		;0a35
	ld bc,l001fh		;0a38
	ldir		;0a3b
	ret			;0a3d
l0a3eh:
	ld a,(0c001h)		;0a3e
	ld (0c316h),a		;0a41
	ld a,(0c000h)		;0a44
	bit 5,a		;0a47
	jp nz,l0f55h		;0a49
	bit 6,a		;0a4c
	jr z,l0a59h		;0a4e
	ld (ix+001h),080h		;0a50
	ld (ix+00ah),003h		;0a54
	ret			;0a58
l0a59h:
	ld a,(0c00dh)		;0a59
	or a			;0a5c
	jr nz,l0a67h		;0a5d
	set 5,(ix+016h)		;0a5f
	res 4,(ix+016h)		;0a63
l0a67h:
	ld (ix+001h),080h		;0a67
	ld a,(0c309h)		;0a6b
	or a			;0a6e
	jr z,l0a79h		;0a6f
	ld (ix+01fh),0ffh		;0a71
	ld (ix+009h),000h		;0a75
l0a79h:
	ld a,(0c318h)		;0a79
	sub 001h		;0a7c
	jr c,l0a92h		;0a7e
	jr z,l0a8ah		;0a80
	ld de,l1033h		;0a82
	ld bc,0fed3h		;0a85
	jr l0a98h		;0a88
l0a8ah:
	ld de,l108dh		;0a8a
	ld bc,0ff32h		;0a8d
	jr l0a98h		;0a90
l0a92h:
	ld de,l10e7h		;0a92
	ld bc,0ff8ch		;0a95
l0a98h:
	ld hl,(0c31ah)		;0a98
l0a9bh:
	add hl,bc			;0a9b
l0a9ch:
	ld bc,0ff00h		;0a9c
	jr c,l0ac3h		;0a9f
	ld a,(0c316h)		;0aa1
	bit 5,a		;0aa4
	ld bc,0ffb4h		;0aa6
	jr nz,l0ac3h		;0aa9
	ld hl,(0c31ah)		;0aab
	add hl,de			;0aae
	ld e,(hl)			;0aaf
	ld d,000h		;0ab0
	ld hl,(0c319h)		;0ab2
	add hl,de			;0ab5
	ld (0c319h),hl		;0ab6
	ld a,(0c31bh)		;0ab9
	adc a,000h		;0abc
	ld (0c31bh),a		;0abe
	jr l0ae2h		;0ac1
l0ac3h:
	ld hl,(0c319h)		;0ac3
	add hl,bc			;0ac6
l0ac7h:
	ld (0c319h),hl		;0ac7
	ld a,(0c31bh)		;0aca
	adc a,0ffh		;0acd
	ld (0c31bh),a		;0acf
	jr c,l0ae2h		;0ad2
	ld hl,start		;0ad4
	ld (0c31ah),hl		;0ad7
	ld (0c319h),hl		;0ada
	ld (0c31ch),hl		;0add
	jr l0b39h		;0ae0
l0ae2h:
	ld a,(0c316h)		;0ae2
	bit 4,a		;0ae5
	jr nz,l0b0bh		;0ae7
	ld de,0ff34h		;0ae9
	ld hl,(0c319h)		;0aec
	add hl,de			;0aef
	ld (0c319h),hl		;0af0
	ld a,(0c31bh)		;0af3
	adc a,0ffh		;0af6
	ld (0c31bh),a		;0af8
	jr c,l0b0bh		;0afb
	ld hl,start		;0afd
	ld (0c31ah),hl		;0b00
	ld (0c319h),hl		;0b03
	ld (0c31ch),hl		;0b06
	jr l0b39h		;0b09
l0b0bh:
	ld hl,(0c31ah)		;0b0b
	srl h		;0b0e
	rr l		;0b10
	ld a,(0c318h)		;0b12
	sub 001h		;0b15
	jr c,l0b20h		;0b17
	jr z,l0b27h		;0b19
	ld de,l124ah		;0b1b
	jr l0b34h		;0b1e
l0b20h:
	ld b,060h		;0b20
	ld de,0115fh		;0b22
	jr l0b2ch		;0b25
l0b27h:
	ld b,08eh		;0b27
	ld de,l11beh		;0b29
l0b2ch:
	ld a,l			;0b2c
	cp b			;0b2d
	jr c,l0b34h		;0b2e
	ld a,03fh		;0b30
	jr l0b36h		;0b32
l0b34h:
	add hl,de			;0b34
	ld a,(hl)			;0b35
l0b36h:
	ld (0c31dh),a		;0b36
l0b39h:
	ld a,(0c316h)		;0b39
	cpl			;0b3c
	and 003h		;0b3d
	jr z,l0b66h		;0b3f
	ld b,a			;0b41
	ld a,(0c317h)		;0b42
	cpl			;0b45
	and 003h		;0b46
	cp b			;0b48
	jr z,l0b66h		;0b49
	dec b			;0b4b
	jr nz,l0b57h		;0b4c
	ld a,(0c318h)		;0b4e
	or a			;0b51
	jr z,l0b66h		;0b52
	dec a			;0b54
	jr l0b5fh		;0b55
l0b57h:
	ld a,(0c318h)		;0b57
	cp 002h		;0b5a
	jr z,l0b66h		;0b5c
	inc a			;0b5e
l0b5fh:
	ld (0c318h),a		;0b5f
	ld (ix+009h),0ffh		;0b62
l0b66h:
	ld hl,(0c2f5h)		;0b66
	ld d,h			;0b69
	ld e,l			;0b6a
	bit 7,h		;0b6b
	jr nz,l0b91h		;0b6d
	ld bc,0fe40h		;0b6f
	add hl,bc			;0b72
	ld b,006h		;0b73
	jp c,l0baeh		;0b75
	ld h,d			;0b78
	ld l,e			;0b79
	ld bc,0ff00h		;0b7a
	add hl,bc			;0b7d
	ld b,005h		;0b7e
	jp c,l0baeh		;0b80
	ex de,hl			;0b83
	ld bc,0ffc0h		;0b84
	add hl,bc			;0b87
	ld b,004h		;0b88
	jp c,l0baeh		;0b8a
	ld b,000h		;0b8d
	jr l0baeh		;0b8f
l0b91h:
	ld bc,001c0h		;0b91
	add hl,bc			;0b94
	ld b,001h		;0b95
	jr nc,l0baeh		;0b97
	ld h,d			;0b99
	ld l,e			;0b9a
	ld bc,l0100h		;0b9b
	add hl,bc			;0b9e
	ld b,002h		;0b9f
	jr nc,l0baeh		;0ba1
	ex de,hl			;0ba3
	ld bc,00040h		;0ba4
	add hl,bc			;0ba7
	ld b,003h		;0ba8
	jr nc,l0baeh		;0baa
	ld b,000h		;0bac
l0baeh:
	ld (ix+00ch),b		;0bae
	ld a,(0c315h)		;0bb1
	or a			;0bb4
	jp nz,l0f82h		;0bb5
	ld a,(0c316h)		;0bb8
	bit 2,a		;0bbb
	jp z,l0de7h		;0bbd
	bit 3,a		;0bc0
l0bc2h:
	jp z,l0e7bh		;0bc2
	ld hl,start		;0bc5
	ld (0c30eh),hl		;0bc8
	ld b,000h		;0bcb
	ld a,(0c30ch)		;0bcd
	or a			;0bd0
	jr z,l0befh		;0bd1
	cp 003h		;0bd3
	jr z,l0befh		;0bd5
	cp 004h		;0bd7
	jr z,l0befh		;0bd9
	jr c,l0be7h		;0bdb
	ld a,(0c30ah)		;0bdd
	bit 2,a		;0be0
	jr z,l0befh		;0be2
	dec b			;0be4
	jr l0befh		;0be5
l0be7h:
	ld a,(0c30ah)		;0be7
	cp 003h		;0bea
	jr nc,l0befh		;0bec
	dec b			;0bee
l0befh:
	ld a,b			;0bef
	ld (0c308h),a		;0bf0
	ld hl,(0c31ah)		;0bf3
	ld de,0fff6h		;0bf6
	add hl,de			;0bf9
	jr nc,l0c25h		;0bfa
	ld a,(0c30ch)		;0bfc
	or a			;0bff
	jr z,l0c25h		;0c00
	cp 003h		;0c02
	jr z,l0c25h		;0c04
	cp 004h		;0c06
	jr z,l0c25h		;0c08
	ld a,(0c30dh)		;0c0a
	jr nc,l0c15h		;0c0d
l0c0fh:
	cp 002h		;0c0f
	jr z,l0c25h		;0c11
	jr l0c18h		;0c13
l0c15h:
	dec a			;0c15
	jr z,l0c25h		;0c16
l0c18h:
	ld a,(0c30ah)		;0c18
	bit 0,a		;0c1b
	jr nz,l0c57h		;0c1d
	ld (ix+00bh),000h		;0c1f
	jr l0c57h		;0c23
l0c25h:
	ld a,(0c316h)		;0c25
	cpl			;0c28
	and 00ch		;0c29
	jr nz,l0c3ch		;0c2b
	ld a,(0c304h)		;0c2d
	inc a			;0c30
	ld (0c304h),a		;0c31
	cp 007h		;0c34
	jr c,l0c57h		;0c36
	xor a			;0c38
	ld (0c304h),a		;0c39
l0c3ch:
	ld a,(0c30ah)		;0c3c
	cp 003h		;0c3f
	inc a			;0c41
	jr c,l0c54h		;0c42
	cp 005h		;0c44
	dec a			;0c46
	dec a			;0c47
	jr nc,l0c54h		;0c48
	ld (ix+00dh),000h		;0c4a
	ld (ix+00bh),000h		;0c4e
	ld a,003h		;0c52
l0c54h:
	ld (0c30ah),a		;0c54
l0c57h:
	ld a,(0c30ch)		;0c57
	cp 004h		;0c5a
	jr c,l0c84h		;0c5c
	jr z,l0cb2h		;0c5e
	ld hl,(0c31ah)		;0c60
	ex de,hl			;0c63
	cp 006h		;0c64
	jr nz,l0c71h		;0c66
	ld l,e			;0c68
	ld h,d			;0c69
	add hl,hl			;0c6a
	add hl,de			;0c6b
	srl h		;0c6c
	rr l		;0c6e
	ex de,hl			;0c70
l0c71h:
	ld a,(0c308h)		;0c71
	or a			;0c74
	jr z,l0c7bh		;0c75
	srl d		;0c77
	rr e		;0c79
l0c7bh:
	ld hl,(0c30eh)		;0c7b
	add hl,de			;0c7e
	ld (0c30eh),hl		;0c7f
	jr l0cb2h		;0c82
l0c84h:
	or a			;0c84
	jr z,l0cb2h		;0c85
	cp 003h		;0c87
	jr z,l0cb2h		;0c89
	ld hl,(0c31ah)		;0c8b
	dec a			;0c8e
	jr nz,l0c99h		;0c8f
	ld e,l			;0c91
	ld d,h			;0c92
	add hl,hl			;0c93
	add hl,de			;0c94
	srl h		;0c95
	rr l		;0c97
l0c99h:
	ld a,(0c308h)		;0c99
	or a			;0c9c
	jr z,l0ca3h		;0c9d
	srl h		;0c9f
	rr l		;0ca1
l0ca3h:
	ld a,l			;0ca3
	cpl			;0ca4
	ld l,a			;0ca5
	ld a,h			;0ca6
	cpl			;0ca7
	ld h,a			;0ca8
	inc hl			;0ca9
	ex de,hl			;0caa
	ld hl,(0c30eh)		;0cab
	add hl,de			;0cae
	ld (0c30eh),hl		;0caf
l0cb2h:
	ld hl,(0c30eh)		;0cb2
	ex de,hl			;0cb5
	ld l,(ix+01eh)		;0cb6
l0cb9h:
	ld a,(0c013h)		;0cb9
	ld h,a			;0cbc
	add hl,de			;0cbd
	ld a,h			;0cbe
	cp 0c0h		;0cbf
	jr nc,l0ccch		;0cc1
	cp 0a9h		;0cc3
	jr c,l0ccfh		;0cc5
	ld hl,0a800h		;0cc7
	jr l0ccfh		;0cca
l0ccch:
	ld hl,start		;0ccc
l0ccfh:
	ld (ix+01eh),l		;0ccf
	ld a,h			;0cd2
	ld (0c013h),a		;0cd3
	ld a,001h		;0cd6
	ld (0c033h),a		;0cd8
l0cdbh:
	ld (ix+002h),0b6h		;0cdb
	ld a,(0c013h)		;0cdf
	cp 012h		;0ce2
	jr c,l0ceah		;0ce4
	cp 097h		;0ce6
	jr c,l0d5dh		;0ce8
l0ceah:
	ld de,0ffb4h		;0cea
	ld a,(0c318h)		;0ced
	or a			;0cf0
	jr z,l0cfeh		;0cf1
	sla e		;0cf3
	rl d		;0cf5
	dec a			;0cf7
	jr z,l0cfeh		;0cf8
	sla e		;0cfa
	rl d		;0cfc
l0cfeh:
	ld hl,(0c319h)		;0cfe
	add hl,de			;0d01
	ld (0c319h),hl		;0d02
	ld a,(0c31bh)		;0d05
	adc a,0ffh		;0d08
	ld (0c31bh),a		;0d0a
	jr c,l0d1dh		;0d0d
l0d0fh:
	ld hl,start		;0d0f
	ld (0c319h),hl		;0d12
	ld (0c31ah),hl		;0d15
	ld (0c31ch),hl		;0d18
	jr l0d5dh		;0d1b
l0d1dh:
	ld a,(0c313h)		;0d1d
	or a			;0d20
	jr nz,l0d37h		;0d21
	ld a,(0c302h)		;0d23
	sub 002h		;0d26
	ld (0c302h),a		;0d28
	ld a,081h		;0d2b
	ld (0c100h),a		;0d2d
	ld hl,l40b0h		;0d30
	ld (0c101h),hl		;0d33
	xor a			;0d36
l0d37h:
	ld b,a			;0d37
	ld d,007h		;0d38
	ld hl,(0c31ah)		;0d3a
	ld a,h			;0d3d
	or a			;0d3e
	jr nz,l0d54h		;0d3f
	ld a,l			;0d41
	cp 03ch		;0d42
	jr nc,l0d54h		;0d44
	ld d,00ah		;0d46
	cp 01eh		;0d48
	jr nc,l0d54h		;0d4a
	ld d,00fh		;0d4c
	cp 00dh		;0d4e
	jr nc,l0d54h		;0d50
	ld d,017h		;0d52
l0d54h:
	ld a,b			;0d54
	inc a			;0d55
	cp d			;0d56
	jr c,l0d5ah		;0d57
	xor a			;0d59
l0d5ah:
	ld (0c313h),a		;0d5a
l0d5dh:
	ld a,(ix+015h)		;0d5d
	or a			;0d60
	jr nz,l0db0h		;0d61
	ld a,(0c30ch)		;0d63
	or a			;0d66
	jp z,l0db0h		;0d67
	cp 003h		;0d6a
	jp z,l0db0h		;0d6c
	cp 004h		;0d6f
	jp z,l0db0h		;0d71
	ld de,0fee3h		;0d74
	cp 002h		;0d77
	jr z,l0d82h		;0d79
	cp 005h		;0d7b
	jr z,l0d82h		;0d7d
	ld de,0ff08h		;0d7f
l0d82h:
	ld hl,(0c31ah)		;0d82
	add hl,de			;0d85
	jp nc,l0db0h		;0d86
	cp 004h		;0d89
	ld a,(0c316h)		;0d8b
	ld b,(ix+00dh)		;0d8e
	jr c,l0da3h		;0d91
	bit 3,a		;0d93
	jp nz,l0db0h		;0d95
	ld a,b			;0d98
	cp 002h		;0d99
	jr nz,l0db0h		;0d9b
	ld (ix+015h),002h		;0d9d
	jr l0db0h		;0da1
l0da3h:
	bit 2,a		;0da3
	jp nz,l0db0h		;0da5
	ld a,b			;0da8
	dec a			;0da9
	jr nz,l0db0h		;0daa
	ld (ix+015h),001h		;0dac
l0db0h:
	ld a,(0c30ah)		;0db0
	add a,a			;0db3
	ld c,a			;0db4
	ld b,000h		;0db5
	ld hl,l1006h		;0db7
	add hl,bc			;0dba
	ld a,(0c306h)		;0dbb
	add a,(hl)			;0dbe
	ld (0c310h),a		;0dbf
	inc hl			;0dc2
	add a,(hl)			;0dc3
	ld (0c311h),a		;0dc4
	ld a,(0c316h)		;0dc7
	ld (0c317h),a		;0dca
	ld a,(0c312h)		;0dcd
	or a			;0dd0
	ret z			;0dd1
	ld a,00eh		;0dd2
	ld (0c069h),a		;0dd4
	ld a,001h		;0dd7
	ld (0c06eh),a		;0dd9
	ld a,00bh		;0ddc
	ld (0c300h),a		;0dde
	ld a,000h		;0de1
	ld (0c301h),a		;0de3
	ret			;0de6
l0de7h:
	xor a			;0de7
	ld (0c304h),a		;0de8
	ld a,(0c30dh)		;0deb
	or a			;0dee
	jr z,l0dfeh		;0def
	dec a			;0df1
	jr z,l0dfeh		;0df2
	ld a,(0c30ch)		;0df4
	cp 005h		;0df7
	jr nc,l0e15h		;0df9
	jp l0c25h		;0dfb
l0dfeh:
	ld (ix+00dh),001h		;0dfe
	ld b,002h		;0e02
	ld a,(0c30bh)		;0e04
	inc a			;0e07
	cp 019h		;0e08
	jr c,l0e0eh		;0e0a
	dec a			;0e0c
	dec b			;0e0d
l0e0eh:
	ld (0c30bh),a		;0e0e
	ld a,b			;0e11
	ld (0c30ah),a		;0e12
l0e15h:
	ld (ix+01ch),000h		;0e15
	ld a,(0c30ch)		;0e19
	ld de,l01ffh+1		;0e1c
	or a			;0e1f
	jr z,l0e45h		;0e20
	cp 004h		;0e22
	jr nc,l0e2eh		;0e24
	dec d			;0e26
	dec a			;0e27
	jr z,l0e45h		;0e28
	ld e,080h		;0e2a
	jr l0e45h		;0e2c
l0e2eh:
	ld (ix+01ch),0ffh		;0e2e
	ld a,(0c30ah)		;0e32
	inc d			;0e35
	cp 003h		;0e36
	jr c,l0e45h		;0e38
	ld a,(0c30ch)		;0e3a
	dec d			;0e3d
	cp 006h		;0e3e
	jr z,l0e45h		;0e40
	ld de,l017eh+2		;0e42
l0e45h:
	ld hl,(0c31ah)		;0e45
	ld a,h			;0e48
	or a			;0e49
	jr nz,l0e6dh		;0e4a
	ld a,l			;0e4c
	or a			;0e4d
	jp z,l0cdbh		;0e4e
	cp 046h		;0e51
	jr nc,l0e6dh		;0e53
	srl d		;0e55
	rr e		;0e57
	cp 028h		;0e59
	jr nc,l0e6dh		;0e5b
	srl d		;0e5d
	rr e		;0e5f
	cp 014h		;0e61
	jr nc,l0e6dh		;0e63
	srl e		;0e65
	cp 00ah		;0e67
	jr nc,l0e6dh		;0e69
	srl e		;0e6b
l0e6dh:
	ex de,hl			;0e6d
	ld (0c30eh),hl		;0e6e
	ld a,(0c31ch)		;0e71
	or a			;0e74
	jp z,l0cb2h		;0e75
	jp l0c57h		;0e78
l0e7bh:
	xor a			;0e7b
	ld (0c304h),a		;0e7c
	ld a,(0c30dh)		;0e7f
	or a			;0e82
	jr z,l0e94h		;0e83
	dec a			;0e85
	jr nz,l0e94h		;0e86
	ld a,(0c30ch)		;0e88
	dec a			;0e8b
	jr z,l0eabh		;0e8c
	dec a			;0e8e
	jr z,l0eabh		;0e8f
	jp l0c25h		;0e91
l0e94h:
	ld (ix+00dh),002h		;0e94
	ld b,004h		;0e98
	ld a,(0c30bh)		;0e9a
	inc a			;0e9d
l0e9eh:
	cp 019h		;0e9e
	jr c,l0ea4h		;0ea0
l0ea2h:
	dec a			;0ea2
	inc b			;0ea3
l0ea4h:
	ld (0c30bh),a		;0ea4
	ld a,b			;0ea7
	ld (0c30ah),a		;0ea8
l0eabh:
	ld (ix+01ch),000h		;0eab
	ld a,(0c30ch)		;0eaf
	ld de,l01ffh+1		;0eb2
	or a			;0eb5
	jr z,l0edbh		;0eb6
	cp 003h		;0eb8
	jr c,l0ec5h		;0eba
	dec d			;0ebc
	cp 006h		;0ebd
	jr z,l0edbh		;0ebf
	ld e,080h		;0ec1
	jr l0edbh		;0ec3
l0ec5h:
	ld (ix+01ch),0ffh		;0ec5
	ld a,(0c30ah)		;0ec9
	inc d			;0ecc
	cp 003h		;0ecd
	jr nc,l0edbh		;0ecf
	ld a,(0c30ch)		;0ed1
	dec d			;0ed4
	dec a			;0ed5
	jr z,l0edbh		;0ed6
	ld de,l017eh+2		;0ed8
l0edbh:
	ld hl,(0c31ah)		;0edb
	ld a,h			;0ede
	or a			;0edf
	jr nz,l0f03h		;0ee0
	ld a,l			;0ee2
	or a			;0ee3
	jp z,l0cdbh		;0ee4
	cp 046h		;0ee7
	jr nc,l0f03h		;0ee9
	srl d		;0eeb
	rr e		;0eed
	cp 028h		;0eef
	jr nc,l0f03h		;0ef1
	srl d		;0ef3
	rr e		;0ef5
	cp 014h		;0ef7
	jr nc,l0f03h		;0ef9
	srl e		;0efb
	cp 00ah		;0efd
	jr nc,l0f03h		;0eff
	srl e		;0f01
l0f03h:
	ex de,hl			;0f03
	ld a,l			;0f04
	cpl			;0f05
	ld l,a			;0f06
	ld a,h			;0f07
	cpl			;0f08
	ld h,a			;0f09
	inc hl			;0f0a
	ld (0c30eh),hl		;0f0b
	ld a,(0c31ch)		;0f0e
	or a			;0f11
	jp z,l0cb2h		;0f12
	jp l0c57h		;0f15
l0f18h:
	ld a,(0c000h)		;0f18
	bit 2,a		;0f1b
	jr z,l0f25h		;0f1d
	ld a,0ffh		;0f1f
	ld (0c015h),a		;0f21
	ret			;0f24
l0f25h:
	ld a,(0c013h)		;0f25
	cp 054h		;0f28
	jr z,l0f3fh		;0f2a
	jr c,l0f30h		;0f2c
	sub 002h		;0f2e
l0f30h:
	inc a			;0f30
	ld (0c013h),a		;0f31
	ld a,001h		;0f34
	ld (0c048h),a		;0f36
	ld a,0ffh		;0f39
	ld (0c067h),a		;0f3b
	ret			;0f3e
l0f3fh:
	ld (ix+001h),000h		;0f3f
	ld a,(0c000h)		;0f43
	bit 5,a		;0f46
	ret nz			;0f48
	ld a,081h		;0f49
	ld (0c100h),a		;0f4b
	ld hl,l4111h		;0f4e
	ld (0c101h),hl		;0f51
	ret			;0f54
l0f55h:
	ld (ix+001h),080h		;0f55
	ld (ix+00ah),003h		;0f59
	ld a,(0c013h)		;0f5d
	cp 054h		;0f60
	jr z,l0f72h		;0f62
	jr c,l0f68h		;0f64
	sub 002h		;0f66
l0f68h:
	inc a			;0f68
	ld (0c013h),a		;0f69
	ld a,001h		;0f6c
	ld (0c048h),a		;0f6e
	ret			;0f71
l0f72h:
	ld hl,(0c31ah)		;0f72
	ld de,0fffeh		;0f75
	add hl,de			;0f78
	jr c,l0f7eh		;0f79
	ld hl,start		;0f7b
l0f7eh:
	ld (0c31ah),hl		;0f7e
	ret			;0f81
l0f82h:
	ld hl,start		;0f82
	ld (0c30eh),hl		;0f85
	ld hl,(0c319h)		;0f88
	ld a,(0c31bh)		;0f8b
	ld de,0ffcdh		;0f8e
	add hl,de			;0f91
	ld (0c319h),hl		;0f92
	adc a,0ffh		;0f95
	ld (0c31bh),a		;0f97
	ld bc,l01ffh		;0f9a
	ld a,(0c30dh)		;0f9d
	dec a			;0fa0
	jr z,l0fa6h		;0fa1
	.DB $01 $01 $05		;0fa3
l0fa6h:
	ld (ix+00ah),b		;0fa6
	ld a,(0c314h)		;0fa9
	ld d,a			;0fac
	bit 1,a		;0fad
	jr nz,l0fc9h		;0faf
	ld a,b			;0fb1
	add a,c			;0fb2
	ld (0c30ah),a		;0fb3
	ld a,d			;0fb6
	or a			;0fb7
	jr nz,l0fc9h		;0fb8
	ld a,081h		;0fba
	ld (0c100h),a		;0fbc
	ld hl,l40cah		;0fbf
	ld (0c101h),hl		;0fc2
	xor a			;0fc5
	ld (0c308h),a		;0fc6
l0fc9h:
	inc a			;0fc9
	cp 00fh		;0fca
	jr c,l1000h		;0fcc
	ld a,(0c30ch)		;0fce
	or a			;0fd1
	jr z,l0ff2h		;0fd2
	cp 003h		;0fd4
	jr z,l0ff2h		;0fd6
	cp 004h		;0fd8
	jr z,l0ff2h		;0fda
	ld de,0ff08h		;0fdc
	cp 006h		;0fdf
	jr z,l0fe9h		;0fe1
	dec a			;0fe3
	jr z,l0fe9h		;0fe4
	ld de,0fee3h		;0fe6
l0fe9h:
	ld hl,(0c31ah)		;0fe9
	add hl,de			;0fec
	jr nc,l0ff2h		;0fed
	xor a			;0fef
	jr l1000h		;0ff0
l0ff2h:
	ld (ix+00bh),018h		;0ff2
	xor a			;0ff6
	ld (0c304h),a		;0ff7
	ld (0c31ch),a		;0ffa
	ld (0c315h),a		;0ffd
l1000h:
	ld (0c314h),a		;1000
	jp l0c57h		;1003
l1006h:
	call pe,0ec0fh		;1006
	rrca			;1009
	pop af			;100a
	dec c			;100b
	jp m,0030ch		;100c
	dec c			;100f
l1010h:
	ld b,00fh		;1010
	ld b,00fh		;1012
l1014h:
	add a,b			;1014
	or (hl)			;1015
	ld d,a			;1016
	nop			;1017
	nop			;1018
	ld a,h			;1019
	nop			;101a
	nop			;101b
	nop			;101c
	inc bc			;101d
	nop			;101e
	nop			;101f
	nop			;1020
	nop			;1021
	nop			;1022
	add a,b			;1023
	add a,b			;1024
	nop			;1025
	nop			;1026
	nop			;1027
	nop			;1028
	nop			;1029
	nop			;102a
	nop			;102b
	nop			;102c
	nop			;102d
	nop			;102e
	nop			;102f
	nop			;1030
	nop			;1031
	nop			;1032
l1033h:
	inc d			;1033
	inc d			;1034
	inc d			;1035
	inc d			;1036
	inc d			;1037
	inc d			;1038
	inc d			;1039
	inc d			;103a
	inc d			;103b
	inc d			;103c
	inc d			;103d
	inc d			;103e
	inc d			;103f
	inc d			;1040
	inc d			;1041
	inc d			;1042
	inc d			;1043
	inc d			;1044
	inc d			;1045
	inc d			;1046
	inc d			;1047
	inc d			;1048
	inc d			;1049
	inc d			;104a
	inc d			;104b
	inc d			;104c
	inc d			;104d
	inc d			;104e
	inc d			;104f
	inc d			;1050
	inc d			;1051
	inc d			;1052
	inc d			;1053
	inc d			;1054
	inc d			;1055
	inc d			;1056
	inc d			;1057
	inc d			;1058
	inc d			;1059
	inc d			;105a
	inc d			;105b
	inc d			;105c
	inc d			;105d
	inc d			;105e
	inc d			;105f
	inc d			;1060
	inc d			;1061
	inc d			;1062
	inc d			;1063
	inc d			;1064
	inc d			;1065
	inc d			;1066
	inc d			;1067
	inc d			;1068
	inc d			;1069
	inc d			;106a
	inc d			;106b
	inc d			;106c
	inc d			;106d
	inc d			;106e
	inc hl			;106f
	inc hl			;1070
	inc hl			;1071
	inc hl			;1072
	inc hl			;1073
	inc hl			;1074
	inc hl			;1075
	inc hl			;1076
	inc hl			;1077
	inc hl			;1078
	inc hl			;1079
	inc hl			;107a
	inc hl			;107b
	inc hl			;107c
	inc hl			;107d
	inc hl			;107e
	inc hl			;107f
	inc hl			;1080
	inc hl			;1081
	inc hl			;1082
	inc hl			;1083
	inc hl			;1084
	inc hl			;1085
	inc hl			;1086
	inc hl			;1087
	inc hl			;1088
	inc hl			;1089
	inc hl			;108a
	inc hl			;108b
	inc hl			;108c
l108dh:
	inc hl			;108d
	inc hl			;108e
	inc hl			;108f
	inc hl			;1090
	inc hl			;1091
	inc hl			;1092
	inc hl			;1093
	inc hl			;1094
	inc hl			;1095
	inc hl			;1096
	inc hl			;1097
	inc hl			;1098
	inc hl			;1099
	inc hl			;109a
	inc hl			;109b
	inc hl			;109c
	inc hl			;109d
	inc hl			;109e
	inc hl			;109f
	inc hl			;10a0
	ld b,d			;10a1
	ld b,d			;10a2
	ld b,d			;10a3
	ld b,d			;10a4
	ld b,d			;10a5
	ld b,d			;10a6
	ld b,d			;10a7
	ld b,d			;10a8
	ld b,d			;10a9
	ld b,d			;10aa
	ld b,d			;10ab
	ld b,d			;10ac
	ld b,d			;10ad
	ld b,d			;10ae
	ld b,d			;10af
	ld b,d			;10b0
	ld b,d			;10b1
	ld b,d			;10b2
	ld b,d			;10b3
	ld b,d			;10b4
	ld b,d			;10b5
	ld b,d			;10b6
	ld b,d			;10b7
	ld b,d			;10b8
	ld b,d			;10b9
	ld b,d			;10ba
	ld b,d			;10bb
	ld b,d			;10bc
	ld b,d			;10bd
	ld b,d			;10be
	ld b,d			;10bf
	ld b,d			;10c0
	ld b,d			;10c1
	ld b,d			;10c2
	ld b,d			;10c3
	ld b,d			;10c4
	ld b,d			;10c5
	ld b,d			;10c6
	ld b,d			;10c7
	ld b,d			;10c8
	ld h,c			;10c9
	ld h,c			;10ca
	ld h,c			;10cb
	ld h,c			;10cc
	ld h,c			;10cd
	ld h,c			;10ce
	ld h,c			;10cf
	ld h,c			;10d0
	ld h,c			;10d1
	ld h,c			;10d2
	ld h,c			;10d3
	ld h,c			;10d4
	ld h,c			;10d5
	ld h,c			;10d6
	ld h,c			;10d7
	ld h,c			;10d8
	ld h,c			;10d9
	ld h,c			;10da
	ld h,c			;10db
	ld h,c			;10dc
	ld h,c			;10dd
	ld h,c			;10de
	ld h,c			;10df
	ld h,c			;10e0
	ld h,c			;10e1
	ld h,c			;10e2
	ld h,c			;10e3
	ld h,c			;10e4
	ld h,c			;10e5
	ld h,c			;10e6
l10e7h:
	add a,b			;10e7
sub_10e8h:
	add a,b			;10e8
	add a,b			;10e9
	add a,b			;10ea
	add a,b			;10eb
	add a,b			;10ec
	add a,b			;10ed
	add a,b			;10ee
	add a,b			;10ef
	add a,b			;10f0
	add a,b			;10f1
	add a,b			;10f2
	add a,b			;10f3
	add a,b			;10f4
	add a,b			;10f5
	add a,b			;10f6
	add a,b			;10f7
sub_10f8h:
	add a,b			;10f8
	add a,b			;10f9
	add a,b			;10fa
	or e			;10fb
	or e			;10fc
	or e			;10fd
	or e			;10fe
	or e			;10ff
	or e			;1100
	or e			;1101
	or e			;1102
	or e			;1103
	or e			;1104
	or e			;1105
	or e			;1106
	or e			;1107
	or e			;1108
	or e			;1109
	or e			;110a
	or e			;110b
	or e			;110c
	or e			;110d
	or e			;110e
	or e			;110f
	or e			;1110
	or e			;1111
	or e			;1112
	or e			;1113
	or e			;1114
	or e			;1115
	or e			;1116
	or e			;1117
	or e			;1118
	or e			;1119
	or e			;111a
	or e			;111b
	or e			;111c
	or e			;111d
	or e			;111e
	or e			;111f
	or e			;1120
	or e			;1121
	or e			;1122
	or e			;1123
	or e			;1124
	or e			;1125
	or e			;1126
	or e			;1127
	or e			;1128
	or e			;1129
	or e			;112a
	or e			;112b
	or e			;112c
	or e			;112d
	or e			;112e
	or e			;112f
	or e			;1130
	or e			;1131
	or e			;1132
	or e			;1133
	or e			;1134
	or e			;1135
	or e			;1136
	or e			;1137
	or e			;1138
	or e			;1139
	or e			;113a
	or e			;113b
	or e			;113c
	or e			;113d
	or e			;113e
	or e			;113f
	or e			;1140
	add a,b			;1141
	add a,b			;1142
	add a,b			;1143
	add a,b			;1144
	add a,b			;1145
	ld h,(hl)			;1146
	ld h,(hl)			;1147
	ld h,(hl)			;1148
	ld h,(hl)			;1149
	ld h,(hl)			;114a
	ld c,h			;114b
	ld c,h			;114c
	ld c,h			;114d
	ld c,h			;114e
	inc sp			;114f
	inc sp			;1150
	inc sp			;1151
	inc sp			;1152
	add hl,de			;1153
	add hl,de			;1154
	add hl,de			;1155
	add hl,de			;1156
	inc c			;1157
	inc c			;1158
	ld b,004h		;1159
	ld (bc),a			;115b
	ld (bc),a			;115c
	ld bc,l0100h+1		;115d
	ld (bc),a			;1160
	inc bc			;1161
	inc b			;1162
	inc b			;1163
	dec b			;1164
	ld b,007h		;1165
	ex af,af'			;1167
	ex af,af'			;1168
	add hl,bc			;1169
	ld a,(bc)			;116a
	dec bc			;116b
	inc c			;116c
	inc c			;116d
	dec c			;116e
	ld c,00fh		;116f
	rrca			;1171
	djnz l1185h		;1172
	ld (de),a			;1174
	inc de			;1175
	inc d			;1176
	inc d			;1177
	dec d			;1178
	ld d,017h		;1179
	jr l1196h		;117b
	add hl,de			;117d
	ld a,(de)			;117e
	dec de			;117f
	inc e			;1180
	dec e			;1181
	dec e			;1182
	ld e,01fh		;1183
l1185h:
	jr nz,l11a8h		;1185
	ld (l2322h),hl		;1187
	inc h			;118a
	dec h			;118b
	ld h,026h		;118c
	daa			;118e
	jr z,l11bah		;118f
	ld hl,(l2b2ah+1)		;1191
	inc l			;1194
	dec l			;1195
l1196h:
	ld l,02fh		;1196
	cpl			;1198
	jr nc,l11cbh		;1199
	ld sp,l3131h		;119b
	ld (03332h),a		;119e
	inc sp			;11a1
	inc sp			;11a2
	inc (hl)			;11a3
	inc (hl)			;11a4
	dec (hl)			;11a5
	dec (hl)			;11a6
	dec (hl)			;11a7
l11a8h:
	ld (hl),036h		;11a8
	scf			;11aa
	scf			;11ab
	scf			;11ac
	jr c,l11e7h		;11ad
	add hl,sp			;11af
	add hl,sp			;11b0
	add hl,sp			;11b1
	ld a,(l3b3ah)		;11b2
	dec sp			;11b5
	dec sp			;11b6
	inc a			;11b7
	inc a			;11b8
	dec a			;11b9
l11bah:
	dec a			;11ba
	dec a			;11bb
	ld a,03eh		;11bc
l11beh:
	ld bc,l01ffh+2		;11be
	ld (bc),a			;11c1
	inc bc			;11c2
	inc bc			;11c3
	inc b			;11c4
	inc b			;11c5
	inc b			;11c6
	dec b			;11c7
	dec b			;11c8
	ld b,006h		;11c9
l11cbh:
	rlca			;11cb
	rlca			;11cc
	ex af,af'			;11cd
	ex af,af'			;11ce
	ex af,af'			;11cf
	add hl,bc			;11d0
	add hl,bc			;11d1
	ld a,(bc)			;11d2
	ld a,(bc)			;11d3
	dec bc			;11d4
	dec bc			;11d5
	inc c			;11d6
	inc c			;11d7
	inc c			;11d8
	dec c			;11d9
	dec c			;11da
	ld c,00eh		;11db
	rrca			;11dd
	rrca			;11de
	rrca			;11df
	djnz $+16		;11e0
	ld de,l1211h		;11e2
	ld (de),a			;11e5
	inc de			;11e6
l11e7h:
	inc de			;11e7
	inc d			;11e8
	inc d			;11e9
	dec d			;11ea
	dec d			;11eb
	ld d,016h		;11ec
	ld d,017h		;11ee
	rla			;11f0
	jr l120bh		;11f1
	add hl,de			;11f3
	add hl,de			;11f4
	ld a,(de)			;11f5
	ld a,(de)			;11f6
	dec de			;11f7
	dec de			;11f8
	inc e			;11f9
	inc e			;11fa
	inc e			;11fb
	dec e			;11fc
	dec e			;11fd
	ld e,01eh		;11fe
sub_1200h:
	rra			;1200
	rra			;1201
	jr nz,l1224h		;1202
	ld hl,l2221h		;1204
	ld (l2322h+1),hl		;1207
	inc hl			;120a
l120bh:
	inc h			;120b
	inc h			;120c
	dec h			;120d
	dec h			;120e
	ld h,026h		;120f
l1211h:
	daa			;1211
	daa			;1212
	jr z,l123dh		;1213
	add hl,hl			;1215
	add hl,hl			;1216
	add hl,hl			;1217
	ld hl,(l2b2ah)		;1218
	dec hl			;121b
	inc l			;121c
	inc l			;121d
	dec l			;121e
	dec l			;121f
	ld l,02eh		;1220
	cpl			;1222
	cpl			;1223
l1224h:
	cpl			;1224
	jr nc,l1257h		;1225
	ld sp,l3131h		;1227
	ld (03332h),a		;122a
	inc sp			;122d
	inc sp			;122e
	inc (hl)			;122f
	inc (hl)			;1230
	dec (hl)			;1231
	dec (hl)			;1232
	dec (hl)			;1233
	ld (hl),036h		;1234
	scf			;1236
	scf			;1237
	scf			;1238
	jr c,l1273h		;1239
	add hl,sp			;123b
	add hl,sp			;123c
l123dh:
	add hl,sp			;123d
	ld a,(l3b3ah)		;123e
	dec sp			;1241
	dec sp			;1242
	inc a			;1243
	inc a			;1244
	dec a			;1245
	dec a			;1246
	dec a			;1247
	ld a,03eh		;1248
l124ah:
	ld bc,l0100h+1		;124a
	ld (bc),a			;124d
	ld (bc),a			;124e
	ld (bc),a			;124f
	inc bc			;1250
	inc bc			;1251
	inc bc			;1252
	inc bc			;1253
	inc b			;1254
	inc b			;1255
	inc b			;1256
l1257h:
	dec b			;1257
	dec b			;1258
	dec b			;1259
	ld b,006h		;125a
	ld b,006h		;125c
	rlca			;125e
	rlca			;125f
	rlca			;1260
	ex af,af'			;1261
	ex af,af'			;1262
	ex af,af'			;1263
	add hl,bc			;1264
	add hl,bc			;1265
	add hl,bc			;1266
	add hl,bc			;1267
	ld a,(bc)			;1268
	ld a,(bc)			;1269
	ld a,(bc)			;126a
	dec bc			;126b
	dec bc			;126c
	dec bc			;126d
	inc c			;126e
	inc c			;126f
	inc c			;1270
	inc c			;1271
	dec c			;1272
l1273h:
	dec c			;1273
	dec c			;1274
	ld c,00eh		;1275
	ld c,00fh		;1277
	rrca			;1279
	rrca			;127a
	rrca			;127b
	djnz l128eh		;127c
	djnz $+17		;127e
	ld de,l1211h		;1280
	ld (de),a			;1283
	ld (de),a			;1284
	inc de			;1285
	inc de			;1286
	inc de			;1287
	inc d			;1288
	inc d			;1289
	inc d			;128a
	dec d			;128b
	dec d			;128c
	dec d			;128d
l128eh:
	ld d,016h		;128e
	ld d,017h		;1290
	rla			;1292
	rla			;1293
	rla			;1294
	jr $+24		;1295
	jr l12b2h		;1297
	add hl,de			;1299
	add hl,de			;129a
	ld a,(de)			;129b
	ld a,(de)			;129c
	ld a,(de)			;129d
	dec de			;129e
	dec de			;129f
	dec de			;12a0
	inc e			;12a1
	inc e			;12a2
	inc e			;12a3
	dec e			;12a4
	dec e			;12a5
	dec e			;12a6
	ld e,01eh		;12a7
	ld e,01fh		;12a9
	rra			;12ab
	rra			;12ac
	rra			;12ad
	jr nz,l12d0h		;12ae
	jr nz,l12d3h		;12b0
l12b2h:
	ld hl,l2221h		;12b2
	ld (l2322h),hl		;12b5
	inc hl			;12b8
	inc hl			;12b9
	inc h			;12ba
	inc h			;12bb
	inc h			;12bc
	dec h			;12bd
	dec h			;12be
	dec h			;12bf
	ld h,026h		;12c0
	ld h,027h		;12c2
	daa			;12c4
	daa			;12c5
	daa			;12c6
	jr z,l12f1h		;12c7
	jr z,$+41		;12c9
	add hl,hl			;12cb
	add hl,hl			;12cc
	ld hl,(l2a29h+1)		;12cd
l12d0h:
	dec hl			;12d0
	dec hl			;12d1
	dec hl			;12d2
l12d3h:
	inc l			;12d3
	inc l			;12d4
	inc l			;12d5
	dec l			;12d6
	dec l			;12d7
	dec l			;12d8
	ld l,02eh		;12d9
	ld l,02fh		;12db
	cpl			;12dd
	cpl			;12de
	cpl			;12df
	jr nc,l1303h		;12e0
	ld c,b			;12e2
	ret nz			;12e3
	ld a,(hl)			;12e4
	or a			;12e5
	ret z			;12e6
	ld (hl),000h		;12e7
	ld d,000h		;12e9
	ld a,(0c013h)		;12eb
	sub 054h		;12ee
	ld c,a			;12f0
l12f1h:
	or a			;12f1
	jp p,l12f9h		;12f2
	ld d,0ffh		;12f5
	neg		;12f7
l12f9h:
	add a,a			;12f9
	ld l,a			;12fa
	ld h,000h		;12fb
	add hl,hl			;12fd
	ld a,c			;12fe
	or a			;12ff
l1300h:
	jp p,l130ah		;1300
l1303h:
	ld a,l			;1303
	cpl			;1304
	ld l,a			;1305
	ld a,h			;1306
	cpl			;1307
	ld h,a			;1308
	inc hl			;1309
l130ah:
	ex de,hl			;130a
	ld hl,start		;130b
	ld bc,0c600h		;130e
	exx			;1311
l1312h:
	ld de,0c55fh		;1312
	ld b,088h		;1315
l1317h:
	exx			;1317
	add hl,de			;1318
	ld a,(bc)			;1319
	inc bc			;131a
	add a,h			;131b
	exx			;131c
	ld (de),a			;131d
	inc de			;131e
	djnz l1317h		;131f
	ret			;1321
sub_1322h:
	ld hl,(0c31ah)		;1322
	ld (0c02ah),hl		;1325
	call sub_379eh		;1328
	ld hl,(0c31ah)		;132b
	ld e,l			;132e
	ld d,h			;132f
	srl d		;1330
	rr e		;1332
	add hl,de			;1334
	ex de,hl			;1335
	ld a,e			;1336
	or d			;1337
	ret z			;1338
	ld hl,(0c030h)		;1339
	add hl,de			;133c
	ld a,h			;133d
	cp 008h		;133e
	jr c,l1345h		;1340
	sub 008h		;1342
	ld h,a			;1344
l1345h:
	ld (0c030h),hl		;1345
	ld de,start		;1348
	or a			;134b
	jr z,l1353h		;134c
	neg		;134e
	ld e,a			;1350
	ld d,0ffh		;1351
l1353h:
	push de			;1353
	ld hl,l137eh		;1354
	add hl,de			;1357
	ld de,0c004h		;1358
	ld b,004h		;135b
	rst 20h			;135d
	pop de			;135e
	push de			;135f
	ld hl,l138dh		;1360
	add hl,de			;1363
	ld de,0c008h		;1364
	ld b,008h		;1367
	rst 20h			;1369
	pop de			;136a
	ld hl,0139ch		;136b
	add hl,de			;136e
	ld de,0c011h		;136f
	ld b,002h		;1372
	jp l0020h		;1374
	rst 38h			;1377
	rst 38h			;1378
	inc bc			;1379
	inc bc			;137a
	rst 38h			;137b
	rst 38h			;137c
	inc bc			;137d
l137eh:
	inc bc			;137e
	rst 38h			;137f
	rst 38h			;1380
	inc bc			;1381
	inc bc			;1382
	rst 38h			;1383
	rst 38h			;1384
	inc bc			;1385
	ccf			;1386
	ccf			;1387
	ccf			;1388
	ccf			;1389
	inc d			;138a
	inc d			;138b
	inc d			;138c
l138dh:
	inc d			;138d
	ccf			;138e
	ccf			;138f
	ccf			;1390
	ccf			;1391
	inc d			;1392
	inc d			;1393
	inc d			;1394
	nop			;1395
	ld hl,(l2a00h)		;1396
	nop			;1399
	ld hl,(l2a00h)		;139a
	nop			;139d
	ld hl,(l2a00h)		;139e
	nop			;13a1
	ld hl,(l3a00h)		;13a2
	ld c,b			;13a5
	ret nz			;13a6
	or a			;13a7
	ret nz			;13a8
	ld ix,0c2f0h		;13a9
	ld a,(0c2f0h)		;13ad
	or a			;13b0
	call nz,sub_13bah		;13b1
	ld a,001h		;13b4
	ld (0c048h),a		;13b6
	ret			;13b9
sub_13bah:
	add a,a			;13ba
	and 03eh		;13bb
	ld l,a			;13bd
	ld h,000h		;13be
	ld de,l13c7h		;13c0
	add hl,de			;13c3
	ld e,(hl)			;13c4
	inc hl			;13c5
	ld d,(hl)			;13c6
l13c7h:
	ex de,hl			;13c7
	jp (hl)			;13c8
	rlca			;13c9
	inc d			;13ca
	ld e,014h		;13cb
	ld e,014h		;13cd
	ld b,d			;13cf
	inc d			;13d0
	ld b,d			;13d1
	inc d			;13d2
	ret			;13d3
	inc d			;13d4
	ret			;13d5
	inc d			;13d6
	rlca			;13d7
	dec d			;13d8
	rlca			;13d9
	dec d			;13da
	ld (hl),h			;13db
	dec d			;13dc
	ld e,014h		;13dd
	ld e,014h		;13df
	ld e,014h		;13e1
	ld e,014h		;13e3
	ld e,014h		;13e5
	ld e,014h		;13e7
	ld e,014h		;13e9
	ld e,014h		;13eb
	ld e,014h		;13ed
	ld b,d			;13ef
	inc d			;13f0
	ld b,d			;13f1
	inc d			;13f2
	call m,0fc15h		;13f3
	dec d			;13f6
	rlca			;13f7
	dec d			;13f8
	rlca			;13f9
	dec d			;13fa
	ld (hl),h			;13fb
	dec d			;13fc
	ld e,014h		;13fd
	ld e,014h		;13ff
	ld e,014h		;1401
	ld e,014h		;1403
	ld e,014h		;1405
	bit 0,(ix+008h)		;1407
	jr nz,l141eh		;140b
	ld (ix+008h),001h		;140d
	ld hl,0c600h		;1411
	ld de,0c601h		;1414
	ld bc,l005fh		;1417
	ld (hl),000h		;141a
	ldir		;141c
l141eh:
	call sub_1434h		;141e
	sub 010h		;1421
	ret c			;1423
	ld (0c2f4h),a		;1424
	dec (ix+001h)		;1427
	ret nz			;142a
	ld (ix+002h),000h		;142b
	ld (ix+008h),000h		;142f
	ret			;1433
sub_1434h:
	ld hl,(0c02ah)		;1434
	ld de,(0c2f3h)		;1437
	add hl,de			;143b
	ld (0c2f3h),hl		;143c
	ld a,h			;143f
	cp d			;1440
	ret			;1441
	call sub_1434h		;1442
	ret z			;1445
	ld b,07eh		;1446
	cp b			;1448
	call nc,sub_149eh		;1449
	cp 060h		;144c
	call nc,sub_14a8h		;144e
	ld l,a			;1451
	ld h,000h		;1452
	ld de,l23c6h		;1454
	add hl,de			;1457
	ld a,(hl)			;1458
	ex af,af'			;1459
	ld hl,l163eh		;145a
	ld a,(ix+000h)		;145d
	ld b,a			;1460
	and 00fh		;1461
	cp 004h		;1463
	jr z,l146ah		;1465
	ld hl,l16feh		;1467
l146ah:
	ld a,b			;146a
	and 010h		;146b
	jp nz,l1486h		;146d
	ex af,af'			;1470
	neg		;1471
	add a,0bfh		;1473
	ld e,a			;1475
	ld d,000h		;1476
	add hl,de			;1478
	ld de,0c65fh		;1479
	ex de,hl			;147c
	ld b,060h		;147d
l147fh:
	ld a,(de)			;147f
	ld (hl),a			;1480
	dec de			;1481
	dec hl			;1482
	djnz l147fh		;1483
	ret			;1485
l1486h:
	ex af,af'			;1486
	neg		;1487
	add a,0bfh		;1489
	ld e,a			;148b
	ld d,000h		;148c
	add hl,de			;148e
	ld de,0c65fh		;148f
	ex de,hl			;1492
	ld b,060h		;1493
l1495h:
	ld a,(de)			;1495
	neg		;1496
	ld (hl),a			;1498
	dec de			;1499
	dec hl			;149a
	djnz l1495h		;149b
	ret			;149d
sub_149eh:
	sub b			;149e
	ld (0c2f7h),a		;149f
	ld (ix+002h),000h		;14a2
	ld a,b			;14a6
	ret			;14a7
sub_14a8h:
	ld c,a			;14a8
	ld hl,(0c2f5h)		;14a9
	ld a,(0c2f0h)		;14ac
	cp 004h		;14af
	ld a,010h		;14b1
	jr z,l14b7h		;14b3
	ld a,00ah		;14b5
l14b7h:
	ld d,000h		;14b7
	bit 4,(ix+000h)		;14b9
	jr z,l14c2h		;14bd
	neg		;14bf
	dec d			;14c1
l14c2h:
	ld e,a			;14c2
	add hl,de			;14c3
	ld (0c2f5h),hl		;14c4
	ld a,c			;14c7
	ret			;14c8
	call sub_1434h		;14c9
	ret z			;14cc
	ld b,03fh		;14cd
	cp b			;14cf
	call nc,sub_149eh		;14d0
	rrca			;14d3
	and 01eh		;14d4
	ld l,a			;14d6
	ld h,000h		;14d7
	ld de,l1e66h		;14d9
	ld a,(ix+000h)		;14dc
	cp 006h		;14df
	jr z,l14e6h		;14e1
	ld de,l1e46h		;14e3
l14e6h:
	add hl,de			;14e6
	ld e,(hl)			;14e7
	inc hl			;14e8
	ld d,(hl)			;14e9
	ld hl,0c600h		;14ea
	ld bc,l005fh+1		;14ed
	ex de,hl			;14f0
	ldir		;14f1
	ld hl,(0c2f5h)		;14f3
	ld de,l0001h+1		;14f6
	bit 0,(ix+000h)		;14f9
	jr nz,l1502h		;14fd
	ld de,0fffeh		;14ff
l1502h:
	add hl,de			;1502
	ld (0c2f5h),hl		;1503
	ret			;1506
	call sub_1434h		;1507
	ret z			;150a
	ld b,05fh		;150b
	cp b			;150d
	call nc,sub_149eh		;150e
	cp 040h		;1511
	call nc,sub_1554h		;1513
	ld e,a			;1516
	ld d,000h		;1517
	ld hl,0c600h		;1519
	add hl,de			;151c
	push hl			;151d
	ld b,(hl)			;151e
	ld hl,l17beh		;151f
	ld a,(ix+000h)		;1522
	and 00fh		;1525
	cp 008h		;1527
	jr z,l152eh		;1529
	ld hl,l187eh		;152b
l152eh:
	add hl,de			;152e
	add hl,de			;152f
	ld a,e			;1530
	ld e,(hl)			;1531
	inc hl			;1532
	ld d,(hl)			;1533
	bit 4,(ix+000h)		;1534
	jr z,l1543h		;1538
	ex af,af'			;153a
	ld a,e			;153b
	cpl			;153c
	ld e,a			;153d
	ld a,d			;153e
	cpl			;153f
	ld d,a			;1540
	inc de			;1541
	ex af,af'			;1542
l1543h:
	ld h,b			;1543
	ld l,000h		;1544
	pop bc			;1546
	exx			;1547
	ld b,a			;1548
	inc b			;1549
l154ah:
	exx			;154a
	ld a,h			;154b
	ld (bc),a			;154c
	add hl,de			;154d
	dec bc			;154e
	exx			;154f
	djnz l154ah		;1550
	exx			;1552
	ret			;1553
sub_1554h:
	ld c,a			;1554
	ld de,l0010h		;1555
	bit 0,(ix+000h)		;1558
	jr z,l1560h		;155c
	ld e,00ah		;155e
l1560h:
	bit 4,(ix+000h)		;1560
	jr nz,l156bh		;1564
	ld a,e			;1566
	neg		;1567
	ld e,a			;1569
	dec d			;156a
l156bh:
	ld hl,(0c2f5h)		;156b
	add hl,de			;156e
	ld (0c2f5h),hl		;156f
	ld a,c			;1572
	ret			;1573
	call sub_1434h		;1574
	ret z			;1577
	ld b,05fh		;1578
	cp b			;157a
	call nc,sub_149eh		;157b
	cp 040h		;157e
	call nc,sub_15e4h		;1580
	push af			;1583
	ld e,a			;1584
	ld d,000h		;1585
	ld hl,0c600h		;1587
	add hl,de			;158a
	push hl			;158b
	ld b,(hl)			;158c
	ld hl,l17beh		;158d
	add hl,de			;1590
	add hl,de			;1591
	ld a,e			;1592
	ld e,(hl)			;1593
	inc hl			;1594
	ld d,(hl)			;1595
	bit 4,(ix+000h)		;1596
	jr z,l15a5h		;159a
	ex af,af'			;159c
	ld a,e			;159d
	cpl			;159e
	ld e,a			;159f
	ld a,d			;15a0
	cpl			;15a1
	ld d,a			;15a2
	inc de			;15a3
	ex af,af'			;15a4
l15a5h:
	ld h,b			;15a5
	ld l,000h		;15a6
	pop bc			;15a8
	exx			;15a9
	ld b,a			;15aa
	inc b			;15ab
l15ach:
	exx			;15ac
	ld a,h			;15ad
	ld (bc),a			;15ae
	add hl,de			;15af
	dec bc			;15b0
	exx			;15b1
	djnz l15ach		;15b2
	exx			;15b4
	pop af			;15b5
	cp 004h		;15b6
	ret c			;15b8
	and 0fch		;15b9
	ld b,a			;15bb
	rrca			;15bc
	and 03eh		;15bd
	ld l,a			;15bf
	ld h,000h		;15c0
	ld de,l193ch		;15c2
	add hl,de			;15c5
	ld a,(hl)			;15c6
	inc hl			;15c7
	ld h,(hl)			;15c8
	ld l,a			;15c9
	ld de,0c600h		;15ca
	bit 4,(ix+000h)		;15cd
	jp nz,l15dch		;15d1
l15d4h:
	ld a,(de)			;15d4
	sub (hl)			;15d5
	ld (de),a			;15d6
	inc hl			;15d7
	inc de			;15d8
	djnz l15d4h		;15d9
	ret			;15db
l15dch:
	ld a,(de)			;15dc
	add a,(hl)			;15dd
	ld (de),a			;15de
	inc hl			;15df
	inc de			;15e0
	djnz l15dch		;15e1
	ret			;15e3
sub_15e4h:
	ld c,a			;15e4
	ld de,l0020h		;15e5
	bit 4,(ix+000h)		;15e8
	jr nz,l15f3h		;15ec
	dec d			;15ee
	ld a,e			;15ef
	neg		;15f0
	ld e,a			;15f2
l15f3h:
	ld hl,(0c2f5h)		;15f3
	add hl,de			;15f6
	ld (0c2f5h),hl		;15f7
	ld a,c			;15fa
	ret			;15fb
	call sub_1434h		;15fc
	ret z			;15ff
	ld b,03fh		;1600
	cp b			;1602
	call nc,sub_149eh		;1603
	rrca			;1606
	and 01eh		;1607
	ld l,a			;1609
	ld h,000h		;160a
	ld de,l1e66h		;160c
	ld a,(ix+000h)		;160f
	cp 016h		;1612
	jr z,l1619h		;1614
	ld de,l1e46h		;1616
l1619h:
	add hl,de			;1619
	ld e,(hl)			;161a
	inc hl			;161b
	ld d,(hl)			;161c
	ld hl,0c600h		;161d
	ld b,060h		;1620
l1622h:
	ld a,(de)			;1622
	neg		;1623
	ld (hl),a			;1625
	inc hl			;1626
	inc de			;1627
	djnz l1622h		;1628
	ld hl,(0c2f5h)		;162a
	ld de,l0001h+1		;162d
	bit 0,(ix+000h)		;1630
	jr z,l1639h		;1634
	ld de,0fffeh		;1636
l1639h:
	add hl,de			;1639
	ld (0c2f5h),hl		;163a
	ret			;163d
l163eh:
	ld a,(hl)			;163e
	ld (hl),a			;163f
	ld (hl),c			;1640
	ld l,h			;1641
	ld h,a			;1642
	ld h,e			;1643
	ld e,a			;1644
	ld e,e			;1645
	ld e,b			;1646
	ld d,l			;1647
	ld d,d			;1648
	ld c,a			;1649
	ld c,h			;164a
	ld c,c			;164b
	ld b,a			;164c
	ld b,l			;164d
	ld b,d			;164e
	ld b,b			;164f
	ld a,03ch		;1650
	ld a,(l3638h)		;1652
	inc (hl)			;1655
	ld (l2f31h),a		;1656
	dec l			;1659
	inc l			;165a
	ld hl,(l2728h+1)		;165b
	ld h,024h		;165e
	inc hl			;1660
	ld (l1f21h),hl		;1661
	ld e,01dh		;1664
	inc e			;1666
	dec de			;1667
	ld a,(de)			;1668
	add hl,de			;1669
	jr $+23		;166a
	ld d,015h		;166c
	inc d			;166e
	inc de			;166f
	ld (de),a			;1670
	ld de,l1010h		;1671
	rrca			;1674
	ld c,00dh		;1675
	dec c			;1677
	inc c			;1678
	dec bc			;1679
	dec bc			;167a
	ld a,(bc)			;167b
	add hl,bc			;167c
	add hl,bc			;167d
	ex af,af'			;167e
	ex af,af'			;167f
	rlca			;1680
	rlca			;1681
	ld b,006h		;1682
	dec b			;1684
	dec b			;1685
	inc b			;1686
	inc b			;1687
	inc b			;1688
	inc bc			;1689
	inc bc			;168a
	ld (bc),a			;168b
	ld (bc),a			;168c
	ld (bc),a			;168d
	ld (bc),a			;168e
	ld bc,l0100h+1		;168f
	ld bc,start		;1692
	nop			;1695
	nop			;1696
	nop			;1697
	nop			;1698
	nop			;1699
	nop			;169a
	nop			;169b
	nop			;169c
	nop			;169d
	nop			;169e
	nop			;169f
	nop			;16a0
	nop			;16a1
	nop			;16a2
	nop			;16a3
	nop			;16a4
	nop			;16a5
	nop			;16a6
	nop			;16a7
	nop			;16a8
	nop			;16a9
	nop			;16aa
	nop			;16ab
	nop			;16ac
	nop			;16ad
	nop			;16ae
	nop			;16af
	nop			;16b0
	nop			;16b1
	nop			;16b2
	nop			;16b3
	nop			;16b4
	nop			;16b5
	nop			;16b6
	nop			;16b7
	nop			;16b8
	nop			;16b9
	nop			;16ba
	nop			;16bb
	nop			;16bc
	nop			;16bd
l16beh:
	nop			;16be
	nop			;16bf
	nop			;16c0
	nop			;16c1
	nop			;16c2
	nop			;16c3
	nop			;16c4
	nop			;16c5
	nop			;16c6
	nop			;16c7
	nop			;16c8
	nop			;16c9
	nop			;16ca
	nop			;16cb
	nop			;16cc
	nop			;16cd
	nop			;16ce
	nop			;16cf
	nop			;16d0
	nop			;16d1
	nop			;16d2
	nop			;16d3
	nop			;16d4
	nop			;16d5
	nop			;16d6
	nop			;16d7
	nop			;16d8
	nop			;16d9
	nop			;16da
	nop			;16db
	nop			;16dc
	nop			;16dd
	nop			;16de
	nop			;16df
	nop			;16e0
	nop			;16e1
	nop			;16e2
	nop			;16e3
	nop			;16e4
	nop			;16e5
	nop			;16e6
	nop			;16e7
	nop			;16e8
	nop			;16e9
	nop			;16ea
	nop			;16eb
	nop			;16ec
	nop			;16ed
	nop			;16ee
	nop			;16ef
	nop			;16f0
	nop			;16f1
	nop			;16f2
	nop			;16f3
	nop			;16f4
	nop			;16f5
	nop			;16f6
	nop			;16f7
	nop			;16f8
	nop			;16f9
	nop			;16fa
	nop			;16fb
	nop			;16fc
	nop			;16fd
l16feh:
	ld b,e			;16fe
	ccf			;16ff
	dec sp			;1700
	jr c,$+53		;1701
	inc sp			;1703
	ld sp,02d2fh		;1704
	inc l			;1707
	ld hl,(l2728h)		;1708
	ld h,024h		;170b
	inc hl			;170d
	ld (l2021h),hl		;170e
	ld e,01dh		;1711
	inc e			;1713
	dec de			;1714
	ld a,(de)			;1715
	ld a,(de)			;1716
	add hl,de			;1717
	jr l1731h		;1718
	ld d,015h		;171a
	dec d			;171c
	inc d			;171d
	inc de			;171e
	ld (de),a			;171f
	ld (de),a			;1720
	ld de,l1010h		;1721
	rrca			;1724
	rrca			;1725
	ld c,00dh		;1726
	dec c			;1728
	inc c			;1729
	inc c			;172a
	dec bc			;172b
	dec bc			;172c
	ld a,(bc)			;172d
	ld a,(bc)			;172e
	add hl,bc			;172f
	add hl,bc			;1730
l1731h:
	add hl,bc			;1731
	ex af,af'			;1732
	ex af,af'			;1733
	rlca			;1734
	rlca			;1735
	rlca			;1736
	ld b,006h		;1737
	dec b			;1739
	dec b			;173a
	dec b			;173b
	dec b			;173c
	inc b			;173d
	inc b			;173e
	inc b			;173f
	inc bc			;1740
	inc bc			;1741
	inc bc			;1742
	inc bc			;1743
	ld (bc),a			;1744
	ld (bc),a			;1745
	ld (bc),a			;1746
	ld (bc),a			;1747
	ld (bc),a			;1748
	ld bc,l0100h+1		;1749
	ld bc,l0100h+1		;174c
	nop			;174f
	nop			;1750
	nop			;1751
	nop			;1752
	nop			;1753
	nop			;1754
	nop			;1755
	nop			;1756
	nop			;1757
	nop			;1758
	nop			;1759
	nop			;175a
	nop			;175b
	nop			;175c
	nop			;175d
	nop			;175e
	nop			;175f
	nop			;1760
	nop			;1761
	nop			;1762
	nop			;1763
	nop			;1764
	nop			;1765
	nop			;1766
	nop			;1767
	nop			;1768
	nop			;1769
	nop			;176a
	nop			;176b
	nop			;176c
	nop			;176d
	nop			;176e
	nop			;176f
	nop			;1770
	nop			;1771
	nop			;1772
	nop			;1773
	nop			;1774
	nop			;1775
	nop			;1776
	nop			;1777
	nop			;1778
	nop			;1779
	nop			;177a
	nop			;177b
	nop			;177c
	nop			;177d
	nop			;177e
	nop			;177f
	nop			;1780
	nop			;1781
	nop			;1782
	nop			;1783
	nop			;1784
	nop			;1785
	nop			;1786
	nop			;1787
	nop			;1788
	nop			;1789
	nop			;178a
	nop			;178b
	nop			;178c
	nop			;178d
	nop			;178e
	nop			;178f
	nop			;1790
	nop			;1791
	nop			;1792
	nop			;1793
	nop			;1794
	nop			;1795
	nop			;1796
	nop			;1797
	nop			;1798
	nop			;1799
	nop			;179a
	nop			;179b
	nop			;179c
	nop			;179d
	nop			;179e
	nop			;179f
	nop			;17a0
	nop			;17a1
	nop			;17a2
	nop			;17a3
	nop			;17a4
	nop			;17a5
	nop			;17a6
	nop			;17a7
	nop			;17a8
	nop			;17a9
	nop			;17aa
	nop			;17ab
	nop			;17ac
	nop			;17ad
	nop			;17ae
	nop			;17af
	nop			;17b0
	nop			;17b1
	nop			;17b2
	nop			;17b3
	nop			;17b4
	nop			;17b5
	nop			;17b6
	nop			;17b7
	nop			;17b8
	nop			;17b9
	nop			;17ba
	nop			;17bb
	nop			;17bc
	nop			;17bd
l17beh:
	call c,sub_5e07h		;17be
	ld b,078h		;17c1
	dec b			;17c3
	jp c,l6504h		;17c4
	inc b			;17c7
	add hl,bc			;17c8
	inc b			;17c9
	cp (hl)			;17ca
	inc bc			;17cb
	ld a,a			;17cc
	inc bc			;17cd
	ld c,d			;17ce
	inc bc			;17cf
	inc e			;17d0
	inc bc			;17d1
	di			;17d2
	ld (bc),a			;17d3
	rst 8			;17d4
	ld (bc),a			;17d5
	xor a			;17d6
	ld (bc),a			;17d7
	sub c			;17d8
	ld (bc),a			;17d9
	ld (hl),a			;17da
	ld (bc),a			;17db
	ld e,(hl)			;17dc
	ld (bc),a			;17dd
	ld b,a			;17de
	ld (bc),a			;17df
	ld (l1f02h),a		;17e0
	ld (bc),a			;17e3
	inc c			;17e4
	ld (bc),a			;17e5
	ei			;17e6
	ld bc,l01ebh		;17e7
	in a,(001h)		;17ea
	call 0bf01h		;17ec
	ld bc,001b2h		;17ef
	and l			;17f2
	ld bc,l0199h		;17f3
	adc a,(hl)			;17f6
	ld bc,l0182h+1		;17f7
	ld a,b			;17fa
	ld bc,l016eh		;17fb
	ld h,h			;17fe
	ld bc,0015ah		;17ff
	ld d,c			;1802
	ld bc,00148h		;1803
	ld b,b			;1806
	ld bc,l0137h		;1807
	cpl			;180a
	ld bc,00127h		;180b
	rra			;180e
	ld bc,l0118h		;180f
	ld de,l0901h		;1812
	ld bc,l0100h+2		;1815
	call m,0f500h		;1818
	nop			;181b
l181ch:
	xor 000h		;181c
	ret pe			;181e
	nop			;181f
	jp po,0db00h		;1820
	nop			;1823
	push de			;1824
	nop			;1825
	rst 8			;1826
	nop			;1827
	jp z,0c400h		;1828
	nop			;182b
	cp (hl)			;182c
	nop			;182d
	cp c			;182e
	nop			;182f
	or e			;1830
	nop			;1831
	xor (hl)			;1832
	nop			;1833
	xor b			;1834
	nop			;1835
	and e			;1836
	nop			;1837
	sbc a,(hl)			;1838
	nop			;1839
	sbc a,c			;183a
	nop			;183b
	sub h			;183c
	nop			;183d
	adc a,a			;183e
	nop			;183f
	adc a,d			;1840
	nop			;1841
	add a,l			;1842
	nop			;1843
	add a,b			;1844
	nop			;1845
	ld a,e			;1846
	nop			;1847
	halt			;1848
	nop			;1849
	ld (hl),d			;184a
	nop			;184b
	ld l,l			;184c
	nop			;184d
	ld l,b			;184e
	nop			;184f
	ld h,h			;1850
	nop			;1851
	ld e,a			;1852
	nop			;1853
	ld e,e			;1854
	nop			;1855
	ld d,(hl)			;1856
	nop			;1857
	ld d,d			;1858
	nop			;1859
	ld c,l			;185a
	nop			;185b
	ld c,c			;185c
	nop			;185d
	ld b,h			;185e
	nop			;185f
	ld b,b			;1860
	nop			;1861
	inc a			;1862
	nop			;1863
	scf			;1864
	nop			;1865
	inc sp			;1866
	nop			;1867
	cpl			;1868
	nop			;1869
	ld hl,(l2600h)		;186a
	nop			;186d
	ld (l1e00h),hl		;186e
	nop			;1871
	add hl,de			;1872
	nop			;1873
	dec d			;1874
	nop			;1875
	ld de,l0cfeh+2		;1876
	nop			;1879
	ex af,af'			;187a
	nop			;187b
	inc b			;187c
	nop			;187d
l187eh:
	and c			;187e
	dec b			;187f
	di			;1880
	inc bc			;1881
	inc sp			;1882
	inc bc			;1883
	cp a			;1884
	ld (bc),a			;1885
	ld (hl),b			;1886
	ld (bc),a			;1887
	dec (hl)			;1888
	ld (bc),a			;1889
	rlca			;188a
	ld (bc),a			;188b
	pop hl			;188c
	ld bc,001c2h		;188d
	and a			;1890
	ld bc,00190h		;1891
	ld a,e			;1894
	ld bc,l0169h		;1895
	ld e,c			;1898
	ld bc,l014ah		;1899
	inc a			;189c
	ld bc,00130h		;189d
	dec h			;18a0
	ld bc,l0118h+2		;18a1
	djnz l18a7h		;18a4
	rlca			;18a6
l18a7h:
	ld bc,000feh		;18a7
	or 000h		;18aa
	xor 000h		;18ac
	rst 20h			;18ae
	nop			;18af
	ret po			;18b0
	nop			;18b1
	exx			;18b2
	nop			;18b3
	out (000h),a		;18b4
	call 0c700h		;18b6
	nop			;18b9
	jp nz,0bc00h		;18ba
	nop			;18bd
	or a			;18be
	nop			;18bf
	or d			;18c0
	nop			;18c1
	xor l			;18c2
	nop			;18c3
	xor c			;18c4
	nop			;18c5
	and h			;18c6
	nop			;18c7
	and b			;18c8
	nop			;18c9
	sbc a,h			;18ca
	nop			;18cb
	sub a			;18cc
	nop			;18cd
	sub e			;18ce
	nop			;18cf
	sub b			;18d0
	nop			;18d1
	adc a,h			;18d2
	nop			;18d3
	adc a,b			;18d4
	nop			;18d5
	add a,h			;18d6
	nop			;18d7
	add a,c			;18d8
	nop			;18d9
	ld a,l			;18da
	nop			;18db
	ld a,d			;18dc
	nop			;18dd
	ld (hl),a			;18de
	nop			;18df
	ld (hl),e			;18e0
	nop			;18e1
	ld (hl),b			;18e2
	nop			;18e3
	ld l,l			;18e4
	nop			;18e5
	ld l,d			;18e6
	nop			;18e7
	ld h,a			;18e8
	nop			;18e9
	ld h,h			;18ea
	nop			;18eb
	ld h,c			;18ec
	nop			;18ed
	ld e,(hl)			;18ee
	nop			;18ef
	ld e,h			;18f0
	nop			;18f1
	ld e,c			;18f2
	nop			;18f3
	ld d,(hl)			;18f4
	nop			;18f5
	ld d,e			;18f6
	nop			;18f7
	ld d,c			;18f8
	nop			;18f9
	ld c,(hl)			;18fa
	nop			;18fb
	ld c,e			;18fc
	nop			;18fd
	ld c,c			;18fe
	nop			;18ff
	ld b,(hl)			;1900
	nop			;1901
	ld b,h			;1902
	nop			;1903
	ld b,c			;1904
	nop			;1905
	ccf			;1906
	nop			;1907
	inc a			;1908
	nop			;1909
	ld a,(l3800h)		;190a
	nop			;190d
	dec (hl)			;190e
	nop			;190f
	inc sp			;1910
	nop			;1911
	ld sp,l2e00h		;1912
	nop			;1915
	inc l			;1916
	nop			;1917
	ld hl,(l2700h)		;1918
	nop			;191b
	dec h			;191c
	nop			;191d
	inc hl			;191e
	nop			;191f
	ld hl,l1e00h		;1920
	nop			;1923
	inc e			;1924
	nop			;1925
	ld a,(de)			;1926
	nop			;1927
	jr l192ah		;1928
l192ah:
	ld d,000h		;192a
	inc de			;192c
	nop			;192d
	ld de,00f00h		;192e
	nop			;1931
	dec c			;1932
	nop			;1933
	dec bc			;1934
	nop			;1935
	add hl,bc			;1936
	nop			;1937
	ld b,000h		;1938
	inc b			;193a
	nop			;193b
l193ch:
	ld (bc),a			;193c
	nop			;193d
	ld l,(hl)			;193e
	add hl,de			;193f
	halt			;1940
	add hl,de			;1941
	add a,(hl)			;1942
	add hl,de			;1943
	sub (hl)			;1944
	add hl,de			;1945
	xor (hl)			;1946
	add hl,de			;1947
	add a,019h		;1948
	and 019h		;194a
	ld b,01ah		;194c
	ld l,01ah		;194e
	ld d,(hl)			;1950
	ld a,(de)			;1951
	add a,(hl)			;1952
	ld a,(de)			;1953
	or (hl)			;1954
	ld a,(de)			;1955
	xor 01ah		;1956
	ld h,01bh		;1958
	ld h,(hl)			;195a
	dec de			;195b
	and (hl)			;195c
	dec de			;195d
	xor 01bh		;195e
	ld (hl),01ch		;1960
	add a,(hl)			;1962
	inc e			;1963
	sub 01ch		;1964
	ld l,01dh		;1966
	add a,(hl)			;1968
	dec e			;1969
	and 01dh		;196a
	ld a,016h		;196c
	ld (bc),a			;196e
	ld bc,start		;196f
	nop			;1972
	nop			;1973
	nop			;1974
	ld bc,00406h		;1975
	inc bc			;1978
	ld (bc),a			;1979
	ld bc,start		;197a
	nop			;197d
	nop			;197e
	nop			;197f
	nop			;1980
	nop			;1981
	ld bc,l0302h		;1982
	inc b			;1985
	ld a,(bc)			;1986
	ex af,af'			;1987
	ld b,005h		;1988
	inc b			;198a
	inc bc			;198b
	ld (bc),a			;198c
	ld bc,start		;198d
	nop			;1990
	nop			;1991
	nop			;1992
	nop			;1993
	nop			;1994
	nop			;1995
	rrca			;1996
	inc c			;1997
	ld a,(bc)			;1998
	ex af,af'			;1999
	rlca			;199a
	ld b,004h		;199b
	inc bc			;199d
	inc bc			;199e
	ld (bc),a			;199f
	ld bc,l0001h		;19a0
	nop			;19a3
	nop			;19a4
	nop			;19a5
	nop			;19a6
	nop			;19a7
	nop			;19a8
	nop			;19a9
	nop			;19aa
	ld bc,l01ffh+2		;19ab
	inc d			;19ae
	ld de,l0c0fh		;19af
	dec bc			;19b2
	add hl,bc			;19b3
	ex af,af'			;19b4
	ld b,005h		;19b5
	inc b			;19b7
	inc bc			;19b8
	inc bc			;19b9
	ld (bc),a			;19ba
	ld bc,l0001h		;19bb
	nop			;19be
	nop			;19bf
	nop			;19c0
	nop			;19c1
	nop			;19c2
	nop			;19c3
	nop			;19c4
	nop			;19c5
	add hl,de			;19c6
	ld d,013h		;19c7
	ld de,l0d0fh		;19c9
	dec bc			;19cc
	ld a,(bc)			;19cd
	ex af,af'			;19ce
	rlca			;19cf
	ld b,005h		;19d0
	inc b			;19d2
	inc bc			;19d3
	inc bc			;19d4
	ld (bc),a			;19d5
	ld (bc),a			;19d6
	ld bc,l0001h		;19d7
	nop			;19da
	nop			;19db
	nop			;19dc
	nop			;19dd
	nop			;19de
	nop			;19df
	nop			;19e0
	nop			;19e1
	nop			;19e2
	nop			;19e3
	ld bc,l1f01h		;19e4
	dec de			;19e7
	jr l19ffh		;19e8
	inc de			;19ea
	ld de,l0d0fh		;19eb
	inc c			;19ee
	ld a,(bc)			;19ef
	add hl,bc			;19f0
	ex af,af'			;19f1
	rlca			;19f2
	ld b,005h		;19f3
	inc b			;19f5
	inc b			;19f6
	inc bc			;19f7
	ld (bc),a			;19f8
	ld (bc),a			;19f9
	ld bc,l0001h		;19fa
	nop			;19fd
	nop			;19fe
l19ffh:
	nop			;19ff
	nop			;1a00
	nop			;1a01
	nop			;1a02
	nop			;1a03
	nop			;1a04
	nop			;1a05
	inc h			;1a06
	jr nz,l1a26h		;1a07
	ld a,(de)			;1a09
	rla			;1a0a
	dec d			;1a0b
	inc de			;1a0c
	ld de,l0e0eh+1		;1a0d
	dec c			;1a10
	dec bc			;1a11
	ld a,(bc)			;1a12
	add hl,bc			;1a13
	ex af,af'			;1a14
	rlca			;1a15
	ld b,005h		;1a16
	inc b			;1a18
	inc b			;1a19
	inc bc			;1a1a
	ld (bc),a			;1a1b
	ld (bc),a			;1a1c
	ld bc,l0100h+1		;1a1d
	nop			;1a20
	nop			;1a21
	nop			;1a22
	nop			;1a23
	nop			;1a24
	nop			;1a25
l1a26h:
	nop			;1a26
	nop			;1a27
	nop			;1a28
	nop			;1a29
	nop			;1a2a
	nop			;1a2b
	nop			;1a2c
	ld bc,l2529h		;1a2d
	ld hl,l1c1eh		;1a30
	add hl,de			;1a33
	rla			;1a34
	dec d			;1a35
	inc de			;1a36
	ld (de),a			;1a37
	djnz l1a49h		;1a38
	dec c			;1a3a
	inc c			;1a3b
	dec bc			;1a3c
	ld a,(bc)			;1a3d
	add hl,bc			;1a3e
	ex af,af'			;1a3f
	rlca			;1a40
	ld b,005h		;1a41
	inc b			;1a43
	inc b			;1a44
	inc bc			;1a45
	inc bc			;1a46
	ld (bc),a			;1a47
	ld (bc),a			;1a48
l1a49h:
	ld bc,l0100h+1		;1a49
	nop			;1a4c
	nop			;1a4d
	nop			;1a4e
	nop			;1a4f
	nop			;1a50
	nop			;1a51
	nop			;1a52
	nop			;1a53
	nop			;1a54
	nop			;1a55
	cpl			;1a56
	ld hl,(l2326h)		;1a57
	jr nz,l1a7ah		;1a5a
	dec de			;1a5c
	add hl,de			;1a5d
	rla			;1a5e
	ld d,014h		;1a5f
	ld (de),a			;1a61
	ld de,l0e0eh+1		;1a62
	dec c			;1a65
	inc c			;1a66
	dec bc			;1a67
	ld a,(bc)			;1a68
	add hl,bc			;1a69
	ex af,af'			;1a6a
	rlca			;1a6b
	ld b,005h		;1a6c
	dec b			;1a6e
	inc b			;1a6f
	inc bc			;1a70
	inc bc			;1a71
	ld (bc),a			;1a72
	ld (bc),a			;1a73
	ld bc,l0100h+1		;1a74
	nop			;1a77
	nop			;1a78
	nop			;1a79
l1a7ah:
	nop			;1a7a
	nop			;1a7b
sub_1a7ch:
	nop			;1a7c
	nop			;1a7d
	nop			;1a7e
	nop			;1a7f
	nop			;1a80
	nop			;1a81
	nop			;1a82
	nop			;1a83
	nop			;1a84
	nop			;1a85
	inc (hl)			;1a86
	cpl			;1a87
	dec hl			;1a88
	jr z,l1ab0h		;1a89
	ld (l1e20h),hl		;1a8b
	dec de			;1a8e
	ld a,(de)			;1a8f
	jr l1aa8h		;1a90
	inc d			;1a92
	inc de			;1a93
	ld de,00f10h		;1a94
	ld c,00ch		;1a97
	dec bc			;1a99
	ld a,(bc)			;1a9a
	add hl,bc			;1a9b
	add hl,bc			;1a9c
	ex af,af'			;1a9d
	rlca			;1a9e
	ld b,005h		;1a9f
	dec b			;1aa1
	inc b			;1aa2
	inc b			;1aa3
	inc bc			;1aa4
	inc bc			;1aa5
	ld (bc),a			;1aa6
	ld (bc),a			;1aa7
l1aa8h:
	ld bc,l0100h+1		;1aa8
	nop			;1aab
	nop			;1aac
	nop			;1aad
	nop			;1aae
	nop			;1aaf
l1ab0h:
	nop			;1ab0
	nop			;1ab1
	nop			;1ab2
	nop			;1ab3
	nop			;1ab4
	nop			;1ab5
	ld a,(03135h)		;1ab6
	dec l			;1ab9
	ld hl,(l2427h)		;1aba
	ld (l1e20h),hl		;1abd
	inc e			;1ac0
	ld a,(de)			;1ac1
	jr l1adbh		;1ac2
	dec d			;1ac4
	inc d			;1ac5
	ld (de),a			;1ac6
	ld de,l0e0eh+2		;1ac7
	dec c			;1aca
	inc c			;1acb
	dec bc			;1acc
	ld a,(bc)			;1acd
	add hl,bc			;1ace
	add hl,bc			;1acf
	ex af,af'			;1ad0
	rlca			;1ad1
	ld b,006h		;1ad2
	dec b			;1ad4
	inc b			;1ad5
	inc b			;1ad6
	inc bc			;1ad7
	inc bc			;1ad8
	ld (bc),a			;1ad9
	ld (bc),a			;1ada
l1adbh:
	ld bc,l0100h+1		;1adb
	ld bc,start		;1ade
	nop			;1ae1
	nop			;1ae2
	nop			;1ae3
	nop			;1ae4
	nop			;1ae5
	nop			;1ae6
	nop			;1ae7
	nop			;1ae8
	nop			;1ae9
	nop			;1aea
	nop			;1aeb
	nop			;1aec
	nop			;1aed
	ccf			;1aee
	ld a,(03236h)		;1aef
	cpl			;1af2
	inc l			;1af3
	add hl,hl			;1af4
	ld h,024h		;1af5
	ld (l1e20h),hl		;1af7
	inc e			;1afa
	ld a,(de)			;1afb
	add hl,de			;1afc
	rla			;1afd
	ld d,014h		;1afe
	inc de			;1b00
	ld (de),a			;1b01
	djnz l1b13h		;1b02
	ld c,00dh		;1b04
	inc c			;1b06
	dec bc			;1b07
	ld a,(bc)			;1b08
	add hl,bc			;1b09
	add hl,bc			;1b0a
	ex af,af'			;1b0b
	rlca			;1b0c
	ld b,006h		;1b0d
	dec b			;1b0f
	inc b			;1b10
	inc b			;1b11
	inc bc			;1b12
l1b13h:
	inc bc			;1b13
	ld (bc),a			;1b14
	ld (bc),a			;1b15
	ld (bc),a			;1b16
	ld bc,l0100h+1		;1b17
	nop			;1b1a
	nop			;1b1b
	nop			;1b1c
	nop			;1b1d
	nop			;1b1e
	nop			;1b1f
	nop			;1b20
	nop			;1b21
	nop			;1b22
	nop			;1b23
	nop			;1b24
	nop			;1b25
	ld b,l			;1b26
	ccf			;1b27
	dec sp			;1b28
	scf			;1b29
	inc (hl)			;1b2a
	jr nc,l1b5bh		;1b2b
	dec hl			;1b2d
	add hl,hl			;1b2e
	ld h,024h		;1b2f
	ld (l1e20h),hl		;1b31
	dec e			;1b34
	dec de			;1b35
	add hl,de			;1b36
	jr l1b4fh		;1b37
	dec d			;1b39
	inc d			;1b3a
	ld (de),a			;1b3b
	ld de,00f10h		;1b3c
	ld c,00dh		;1b3f
	inc c			;1b41
	dec bc			;1b42
	ld a,(bc)			;1b43
	add hl,bc			;1b44
	add hl,bc			;1b45
	ex af,af'			;1b46
	rlca			;1b47
	ld b,006h		;1b48
	dec b			;1b4a
	dec b			;1b4b
	inc b			;1b4c
	inc b			;1b4d
	inc bc			;1b4e
l1b4fh:
	inc bc			;1b4f
	ld (bc),a			;1b50
	ld (bc),a			;1b51
	ld (bc),a			;1b52
	ld bc,l0100h+1		;1b53
	nop			;1b56
	nop			;1b57
	nop			;1b58
	nop			;1b59
	nop			;1b5a
l1b5bh:
	nop			;1b5b
	nop			;1b5c
	nop			;1b5d
	nop			;1b5e
	nop			;1b5f
	nop			;1b60
	nop			;1b61
	nop			;1b62
	nop			;1b63
	nop			;1b64
	nop			;1b65
	ld c,d			;1b66
	ld b,l			;1b67
	ld b,b			;1b68
	inc a			;1b69
	add hl,sp			;1b6a
	dec (hl)			;1b6b
	ld (l2d30h),a		;1b6c
	dec hl			;1b6f
	jr z,$+38		;1b70
	inc h			;1b72
	ld (l1f20h),hl		;1b73
	dec e			;1b76
	dec de			;1b77
	ld a,(de)			;1b78
	jr l1b92h		;1b79
	ld d,014h		;1b7b
	inc de			;1b7d
	ld (de),a			;1b7e
	ld de,00f10h		;1b7f
	ld c,00dh		;1b82
	inc c			;1b84
	dec bc			;1b85
	ld a,(bc)			;1b86
	add hl,bc			;1b87
	add hl,bc			;1b88
	ex af,af'			;1b89
	rlca			;1b8a
	rlca			;1b8b
	ld b,005h		;1b8c
	dec b			;1b8e
	inc b			;1b8f
	inc b			;1b90
	inc bc			;1b91
l1b92h:
	inc bc			;1b92
	ld (bc),a			;1b93
	ld (bc),a			;1b94
	ld (bc),a			;1b95
	ld bc,l0100h+1		;1b96
	ld bc,start		;1b99
	nop			;1b9c
	nop			;1b9d
	nop			;1b9e
	nop			;1b9f
	nop			;1ba0
	nop			;1ba1
	nop			;1ba2
	nop			;1ba3
	nop			;1ba4
	nop			;1ba5
	ld d,b			;1ba6
	ld c,d			;1ba7
	ld b,l			;1ba8
	ld b,c			;1ba9
	ld a,03ah		;1baa
	scf			;1bac
	inc (hl)			;1bad
	ld (02d2fh),a		;1bae
	ld hl,(l2628h)		;1bb1
	inc h			;1bb4
	inc hl			;1bb5
	ld hl,l1e1fh		;1bb6
	inc e			;1bb9
	dec de			;1bba
	add hl,de			;1bbb
	jr l1bd5h		;1bbc
	dec d			;1bbe
	inc d			;1bbf
	inc de			;1bc0
	ld (de),a			;1bc1
	ld de,00f10h		;1bc2
	ld c,00dh		;1bc5
	inc c			;1bc7
	dec bc			;1bc8
	ld a,(bc)			;1bc9
	ld a,(bc)			;1bca
	add hl,bc			;1bcb
	ex af,af'			;1bcc
	rlca			;1bcd
	rlca			;1bce
	ld b,006h		;1bcf
	dec b			;1bd1
	dec b			;1bd2
	inc b			;1bd3
	inc b			;1bd4
l1bd5h:
	inc bc			;1bd5
	inc bc			;1bd6
	ld (bc),a			;1bd7
	ld (bc),a			;1bd8
	ld (bc),a			;1bd9
	ld bc,l0100h+1		;1bda
	nop			;1bdd
	nop			;1bde
	nop			;1bdf
	nop			;1be0
	nop			;1be1
	nop			;1be2
	nop			;1be3
	nop			;1be4
	nop			;1be5
	nop			;1be6
	nop			;1be7
	nop			;1be8
	nop			;1be9
	nop			;1bea
	nop			;1beb
	nop			;1bec
	nop			;1bed
	ld d,(hl)			;1bee
	ld d,b			;1bef
	ld c,e			;1bf0
	ld b,(hl)			;1bf1
	ld b,e			;1bf2
	ccf			;1bf3
	inc a			;1bf4
	add hl,sp			;1bf5
	ld (hl),034h		;1bf6
	ld sp,02d2fh		;1bf8
	dec hl			;1bfb
	add hl,hl			;1bfc
	daa			;1bfd
	dec h			;1bfe
	inc hl			;1bff
	ld hl,l1e20h		;1c00
	dec e			;1c03
	dec de			;1c04
	ld a,(de)			;1c05
	add hl,de			;1c06
	rla			;1c07
	ld d,015h		;1c08
	inc d			;1c0a
	inc de			;1c0b
	ld (de),a			;1c0c
	ld de,00f10h		;1c0d
	ld c,00dh		;1c10
	inc c			;1c12
	dec bc			;1c13
	ld a,(bc)			;1c14
	ld a,(bc)			;1c15
	add hl,bc			;1c16
	ex af,af'			;1c17
	ex af,af'			;1c18
	rlca			;1c19
	ld b,006h		;1c1a
	dec b			;1c1c
	dec b			;1c1d
l1c1eh:
	inc b			;1c1e
	inc b			;1c1f
	inc bc			;1c20
	inc bc			;1c21
	ld (bc),a			;1c22
	ld (bc),a			;1c23
	ld (bc),a			;1c24
	ld bc,l0100h+1		;1c25
	ld bc,start		;1c28
	nop			;1c2b
	nop			;1c2c
	nop			;1c2d
	nop			;1c2e
	nop			;1c2f
	nop			;1c30
	nop			;1c31
	nop			;1c32
	nop			;1c33
	nop			;1c34
	nop			;1c35
	ld e,e			;1c36
	ld d,l			;1c37
	ld d,b			;1c38
	ld c,h			;1c39
	ld c,b			;1c3a
	ld b,h			;1c3b
	ld b,c			;1c3c
	ld a,03bh		;1c3d
	jr c,l1c77h		;1c3f
	inc sp			;1c41
	ld sp,02d2fh		;1c42
	dec hl			;1c45
	add hl,hl			;1c46
	daa			;1c47
	dec h			;1c48
	inc h			;1c49
	ld (l1f20h),hl		;1c4a
	dec e			;1c4d
	inc e			;1c4e
	dec de			;1c4f
	add hl,de			;1c50
	jr l1c6ah		;1c51
	ld d,015h		;1c53
	inc de			;1c55
	ld (de),a			;1c56
	ld de,00f10h		;1c57
	rrca			;1c5a
	ld c,00dh		;1c5b
	inc c			;1c5d
	dec bc			;1c5e
	ld a,(bc)			;1c5f
	ld a,(bc)			;1c60
	add hl,bc			;1c61
	ex af,af'			;1c62
	ex af,af'			;1c63
	rlca			;1c64
	rlca			;1c65
	ld b,005h		;1c66
	dec b			;1c68
	inc b			;1c69
l1c6ah:
	inc b			;1c6a
	inc bc			;1c6b
	inc bc			;1c6c
	inc bc			;1c6d
	ld (bc),a			;1c6e
	ld (bc),a			;1c6f
	ld (bc),a			;1c70
	ld bc,l0100h+1		;1c71
	ld bc,start		;1c74
l1c77h:
	nop			;1c77
	nop			;1c78
	nop			;1c79
	nop			;1c7a
	nop			;1c7b
	nop			;1c7c
	nop			;1c7d
	nop			;1c7e
	nop			;1c7f
	nop			;1c80
	nop			;1c81
	nop			;1c82
	nop			;1c83
	nop			;1c84
	nop			;1c85
	ld h,c			;1c86
	ld e,e			;1c87
	ld d,(hl)			;1c88
	ld d,c			;1c89
	ld c,l			;1c8a
	ld c,c			;1c8b
	ld b,(hl)			;1c8c
	ld b,e			;1c8d
	ld b,b			;1c8e
	dec a			;1c8f
	ld a,(l3538h)		;1c90
	inc sp			;1c93
	ld sp,02d2fh		;1c94
	dec hl			;1c97
	add hl,hl			;1c98
	daa			;1c99
	ld h,024h		;1c9a
	inc hl			;1c9c
	ld hl,l1e20h		;1c9d
	dec e			;1ca0
	dec de			;1ca1
	ld a,(de)			;1ca2
	add hl,de			;1ca3
	jr l1cbdh		;1ca4
	dec d			;1ca6
	inc d			;1ca7
	inc de			;1ca8
	ld (de),a			;1ca9
	ld de,00f10h		;1caa
	rrca			;1cad
	ld c,00dh		;1cae
	inc c			;1cb0
	dec bc			;1cb1
	dec bc			;1cb2
	ld a,(bc)			;1cb3
	add hl,bc			;1cb4
	add hl,bc			;1cb5
	ex af,af'			;1cb6
	rlca			;1cb7
	rlca			;1cb8
	ld b,006h		;1cb9
	dec b			;1cbb
	dec b			;1cbc
l1cbdh:
	inc b			;1cbd
	inc b			;1cbe
	inc bc			;1cbf
	inc bc			;1cc0
	inc bc			;1cc1
	ld (bc),a			;1cc2
	ld (bc),a			;1cc3
	ld (bc),a			;1cc4
	ld bc,l0100h+1		;1cc5
	ld bc,start		;1cc8
	nop			;1ccb
	nop			;1ccc
	nop			;1ccd
	nop			;1cce
	nop			;1ccf
	nop			;1cd0
	nop			;1cd1
	nop			;1cd2
	nop			;1cd3
	nop			;1cd4
	nop			;1cd5
	ld h,a			;1cd6
	ld h,b			;1cd7
	ld e,e			;1cd8
	ld d,(hl)			;1cd9
	ld d,d			;1cda
	ld c,(hl)			;1cdb
	ld c,e			;1cdc
	ld b,a			;1cdd
	ld b,h			;1cde
	ld b,d			;1cdf
	ccf			;1ce0
	inc a			;1ce1
	ld a,(03537h)		;1ce2
	inc sp			;1ce5
	ld sp,02d2fh		;1ce6
	dec hl			;1ce9
	ld hl,(l2628h)		;1cea
	dec h			;1ced
	inc hl			;1cee
	ld (l1f20h),hl		;1cef
	dec e			;1cf2
	inc e			;1cf3
	dec de			;1cf4
	ld a,(de)			;1cf5
	add hl,de			;1cf6
	rla			;1cf7
	ld d,015h		;1cf8
	inc d			;1cfa
	inc de			;1cfb
	ld (de),a			;1cfc
	ld de,00f10h		;1cfd
	rrca			;1d00
	ld c,00dh		;1d01
	inc c			;1d03
	dec bc			;1d04
	dec bc			;1d05
	ld a,(bc)			;1d06
	add hl,bc			;1d07
	add hl,bc			;1d08
	ex af,af'			;1d09
	rlca			;1d0a
	rlca			;1d0b
	ld b,006h		;1d0c
	dec b			;1d0e
	dec b			;1d0f
	inc b			;1d10
	inc b			;1d11
	inc bc			;1d12
	inc bc			;1d13
	inc bc			;1d14
	ld (bc),a			;1d15
	ld (bc),a			;1d16
	ld (bc),a			;1d17
	ld bc,l0100h+1		;1d18
	ld bc,start		;1d1b
	nop			;1d1e
	nop			;1d1f
	nop			;1d20
	nop			;1d21
	nop			;1d22
	nop			;1d23
	nop			;1d24
	nop			;1d25
	nop			;1d26
	nop			;1d27
	nop			;1d28
	nop			;1d29
	nop			;1d2a
	nop			;1d2b
	nop			;1d2c
	nop			;1d2d
	ld l,h			;1d2e
	ld h,(hl)			;1d2f
	ld h,b			;1d30
	ld e,h			;1d31
	ld d,a			;1d32
	ld d,e			;1d33
	ld d,b			;1d34
	ld c,h			;1d35
	ld c,c			;1d36
	ld b,(hl)			;1d37
	ld b,h			;1d38
	ld b,c			;1d39
	ld a,03ch		;1d3a
	ld a,(03537h)		;1d3c
	inc sp			;1d3f
	ld sp,l2e2fh		;1d40
	inc l			;1d43
	ld hl,(l2728h)		;1d44
	dec h			;1d47
	inc h			;1d48
	ld (l2021h),hl		;1d49
	ld e,01dh		;1d4c
	inc e			;1d4e
	dec de			;1d4f
	add hl,de			;1d50
	jr l1d6ah		;1d51
	ld d,015h		;1d53
	inc d			;1d55
	inc de			;1d56
	ld (de),a			;1d57
	ld de,00f10h		;1d58
	rrca			;1d5b
	ld c,00dh		;1d5c
	inc c			;1d5e
	inc c			;1d5f
	dec bc			;1d60
	ld a,(bc)			;1d61
	add hl,bc			;1d62
	add hl,bc			;1d63
	ex af,af'			;1d64
	ex af,af'			;1d65
	rlca			;1d66
	rlca			;1d67
	ld b,005h		;1d68
l1d6ah:
	dec b			;1d6a
	dec b			;1d6b
	inc b			;1d6c
	inc b			;1d6d
	inc bc			;1d6e
	inc bc			;1d6f
	inc bc			;1d70
	ld (bc),a			;1d71
	ld (bc),a			;1d72
	ld (bc),a			;1d73
	ld bc,l0100h+1		;1d74
	ld bc,start		;1d77
	nop			;1d7a
	nop			;1d7b
	nop			;1d7c
	nop			;1d7d
	nop			;1d7e
	nop			;1d7f
	nop			;1d80
	nop			;1d81
	nop			;1d82
	nop			;1d83
	nop			;1d84
	nop			;1d85
	ld (hl),d			;1d86
	ld l,e			;1d87
	ld h,(hl)			;1d88
	ld h,c			;1d89
	ld e,l			;1d8a
	ld e,b			;1d8b
	ld d,l			;1d8c
	ld d,c			;1d8d
	ld c,(hl)			;1d8e
	ld c,e			;1d8f
	ld c,b			;1d90
	ld b,l			;1d91
	ld b,e			;1d92
	ld b,b			;1d93
	ld a,03ch		;1d94
	ld a,(03537h)		;1d96
	inc sp			;1d99
	ld (l2e30h),a		;1d9a
	inc l			;1d9d
	dec hl			;1d9e
	add hl,hl			;1d9f
	daa			;1da0
	ld h,024h		;1da1
	inc hl			;1da3
	ld (l1f20h),hl		;1da4
	ld e,01dh		;1da7
	dec de			;1da9
	ld a,(de)			;1daa
	add hl,de			;1dab
	jr l1dc5h		;1dac
	ld d,015h		;1dae
	inc d			;1db0
	inc de			;1db1
	ld (de),a			;1db2
	ld de,00f10h		;1db3
	rrca			;1db6
	ld c,00dh		;1db7
	inc c			;1db9
	inc c			;1dba
	dec bc			;1dbb
	ld a,(bc)			;1dbc
	ld a,(bc)			;1dbd
	add hl,bc			;1dbe
	ex af,af'			;1dbf
	ex af,af'			;1dc0
	rlca			;1dc1
	rlca			;1dc2
	ld b,006h		;1dc3
l1dc5h:
	dec b			;1dc5
	dec b			;1dc6
	inc b			;1dc7
	inc b			;1dc8
	inc b			;1dc9
	inc bc			;1dca
	inc bc			;1dcb
	ld (bc),a			;1dcc
	ld (bc),a			;1dcd
	ld (bc),a			;1dce
	ld (bc),a			;1dcf
	ld bc,l0100h+1		;1dd0
	ld bc,start		;1dd3
	nop			;1dd6
	nop			;1dd7
	nop			;1dd8
	nop			;1dd9
	nop			;1dda
	nop			;1ddb
	nop			;1ddc
	nop			;1ddd
	nop			;1dde
	nop			;1ddf
	nop			;1de0
	nop			;1de1
	nop			;1de2
	nop			;1de3
	nop			;1de4
	nop			;1de5
	ld a,b			;1de6
	ld (hl),c			;1de7
	ld l,e			;1de8
	ld h,(hl)			;1de9
	ld h,d			;1dea
	ld e,(hl)			;1deb
	ld e,d			;1dec
	ld d,(hl)			;1ded
	ld d,e			;1dee
	ld d,b			;1def
	ld c,l			;1df0
	ld c,d			;1df1
	ld b,a			;1df2
	ld b,l			;1df3
	ld b,d			;1df4
	ld b,b			;1df5
	ld a,03ch		;1df6
	ld a,(l3638h)		;1df8
	inc (hl)			;1dfb
	ld (l2e30h),a		;1dfc
	dec l			;1dff
l1e00h:
	dec hl			;1e00
	ld hl,(l2728h)		;1e01
	dec h			;1e04
	inc h			;1e05
	ld (l2021h),hl		;1e06
	rra			;1e09
	dec e			;1e0a
	inc e			;1e0b
	dec de			;1e0c
	ld a,(de)			;1e0d
	add hl,de			;1e0e
	jr l1e28h		;1e0f
	ld d,015h		;1e11
	inc d			;1e13
	inc de			;1e14
	ld (de),a			;1e15
	ld de,00f10h		;1e16
l1e19h:
	rrca			;1e19
	ld c,00dh		;1e1a
	inc c			;1e1c
	inc c			;1e1d
	dec bc			;1e1e
l1e1fh:
	ld a,(bc)			;1e1f
l1e20h:
	ld a,(bc)			;1e20
l1e21h:
	add hl,bc			;1e21
	add hl,bc			;1e22
	ex af,af'			;1e23
	rlca			;1e24
	rlca			;1e25
	ld b,006h		;1e26
l1e28h:
	dec b			;1e28
	dec b			;1e29
	dec b			;1e2a
	inc b			;1e2b
	inc b			;1e2c
	inc bc			;1e2d
	inc bc			;1e2e
	inc bc			;1e2f
	ld (bc),a			;1e30
	ld (bc),a			;1e31
	ld (bc),a			;1e32
	ld bc,l0100h+1		;1e33
	ld bc,l0001h		;1e36
	nop			;1e39
	nop			;1e3a
	nop			;1e3b
	nop			;1e3c
	nop			;1e3d
	nop			;1e3e
	nop			;1e3f
	nop			;1e40
	nop			;1e41
	nop			;1e42
	nop			;1e43
	nop			;1e44
	nop			;1e45
l1e46h:
	add a,(hl)			;1e46
	ld e,0e6h		;1e47
	ld e,046h		;1e49
	rra			;1e4b
	and (hl)			;1e4c
	rra			;1e4d
	ld b,020h		;1e4e
	ld h,(hl)			;1e50
	jr nz,l1e19h		;1e51
	jr nz,l1e7bh		;1e53
	ld hl,l2186h		;1e55
	and 021h		;1e58
	ld b,(hl)			;1e5a
	ld (l22a6h),hl		;1e5b
	ld b,023h		;1e5e
	ld h,(hl)			;1e60
	inc hl			;1e61
	ld a,016h		;1e62
	ld a,016h		;1e64
l1e66h:
	ld h,(hl)			;1e66
	inc hl			;1e67
	ld b,023h		;1e68
	and (hl)			;1e6a
	ld (l2246h),hl		;1e6b
	and 021h		;1e6e
	add a,(hl)			;1e70
	ld hl,l2126h		;1e71
	add a,020h		;1e74
	ld h,(hl)			;1e76
	jr nz,$+6		;1e77
	jr nz,l1e21h		;1e79
l1e7bh:
	rra			;1e7b
	ld b,(hl)			;1e7c
l1e7dh:
	rra			;1e7d
	and 01eh		;1e7e
	add a,(hl)			;1e80
	ld e,0feh		;1e81
	ld d,0feh		;1e83
	ld d,047h		;1e85
	ld b,e			;1e87
	ccf			;1e88
	inc a			;1e89
	add hl,sp			;1e8a
	ld (hl),034h		;1e8b
	ld (l2e30h),a		;1e8d
	dec l			;1e90
	dec hl			;1e91
	add hl,hl			;1e92
	jr z,l1ebch		;1e93
	dec h			;1e95
	inc h			;1e96
	inc hl			;1e97
	ld (l1f20h),hl		;1e98
	ld e,01dh		;1e9b
	inc e			;1e9d
	dec de			;1e9e
	ld a,(de)			;1e9f
	add hl,de			;1ea0
	jr l1ebbh		;1ea1
	rla			;1ea3
	ld d,015h		;1ea4
	inc d			;1ea6
	inc d			;1ea7
	inc de			;1ea8
	ld (de),a			;1ea9
	ld de,l1010h+1		;1eaa
	djnz l1ebeh		;1ead
	ld c,00eh		;1eaf
	dec c			;1eb1
	dec c			;1eb2
	inc c			;1eb3
	inc c			;1eb4
	dec bc			;1eb5
	dec bc			;1eb6
	ld a,(bc)			;1eb7
	ld a,(bc)			;1eb8
	add hl,bc			;1eb9
	add hl,bc			;1eba
l1ebbh:
	ex af,af'			;1ebb
l1ebch:
	ex af,af'			;1ebc
	rlca			;1ebd
l1ebeh:
	rlca			;1ebe
	rlca			;1ebf
	ld b,006h		;1ec0
	dec b			;1ec2
	dec b			;1ec3
	dec b			;1ec4
	dec b			;1ec5
	inc b			;1ec6
	inc b			;1ec7
	inc b			;1ec8
	inc bc			;1ec9
	inc bc			;1eca
	inc bc			;1ecb
	inc bc			;1ecc
	ld (bc),a			;1ecd
	ld (bc),a			;1ece
	ld (bc),a			;1ecf
	ld (bc),a			;1ed0
	ld bc,l0100h+1		;1ed1
	ld bc,l0100h+1		;1ed4
	ld bc,start		;1ed7
	nop			;1eda
	nop			;1edb
	nop			;1edc
	nop			;1edd
	nop			;1ede
	nop			;1edf
	nop			;1ee0
	nop			;1ee1
	nop			;1ee2
	nop			;1ee3
	nop			;1ee4
	nop			;1ee5
	ld c,e			;1ee6
	ld b,(hl)			;1ee7
	ld b,d			;1ee8
	ld a,03ch		;1ee9
	add hl,sp			;1eeb
	scf			;1eec
	dec (hl)			;1eed
	ld (l2f31h),a		;1eee
	dec l			;1ef1
	dec hl			;1ef2
	ld hl,(l2728h)		;1ef3
	ld h,024h		;1ef6
	inc hl			;1ef8
	ld (l2021h),hl		;1ef9
	rra			;1efc
	ld e,01dh		;1efd
	inc e			;1eff
	dec de			;1f00
l1f01h:
	ld a,(de)			;1f01
l1f02h:
	add hl,de			;1f02
	jr l1f1ch		;1f03
	ld d,015h		;1f05
	dec d			;1f07
	inc d			;1f08
	inc de			;1f09
	ld (de),a			;1f0a
	ld (de),a			;1f0b
	ld de,l1010h		;1f0c
	rrca			;1f0f
	ld c,00eh		;1f10
	dec c			;1f12
	dec c			;1f13
	inc c			;1f14
	inc c			;1f15
	dec bc			;1f16
	dec bc			;1f17
	ld a,(bc)			;1f18
	ld a,(bc)			;1f19
	add hl,bc			;1f1a
	add hl,bc			;1f1b
l1f1ch:
	ex af,af'			;1f1c
	ex af,af'			;1f1d
	rlca			;1f1e
	rlca			;1f1f
l1f20h:
	rlca			;1f20
l1f21h:
	ld b,006h		;1f21
	dec b			;1f23
	dec b			;1f24
	dec b			;1f25
	inc b			;1f26
	inc b			;1f27
	inc b			;1f28
	inc b			;1f29
	inc bc			;1f2a
	inc bc			;1f2b
	inc bc			;1f2c
	ld (bc),a			;1f2d
	ld (bc),a			;1f2e
	ld (bc),a			;1f2f
	ld (bc),a			;1f30
	ld (bc),a			;1f31
	ld bc,l0100h+1		;1f32
	ld bc,l0100h+1		;1f35
	nop			;1f38
	nop			;1f39
	nop			;1f3a
	nop			;1f3b
	nop			;1f3c
	nop			;1f3d
	nop			;1f3e
	nop			;1f3f
	nop			;1f40
	nop			;1f41
	nop			;1f42
	nop			;1f43
	nop			;1f44
	nop			;1f45
	ld c,a			;1f46
	ld c,d			;1f47
	ld b,(hl)			;1f48
	ld b,d			;1f49
	ccf			;1f4a
	inc a			;1f4b
	ld a,(l3538h)		;1f4c
	inc sp			;1f4f
	ld sp,l2e30h		;1f50
	inc l			;1f53
	dec hl			;1f54
	add hl,hl			;1f55
	jr z,l1f7fh		;1f56
	dec h			;1f58
	inc h			;1f59
	inc hl			;1f5a
	ld (l1f20h),hl		;1f5b
	ld e,01dh		;1f5e
	inc e			;1f60
	dec de			;1f61
	ld a,(de)			;1f62
	add hl,de			;1f63
	jr l1f7dh		;1f64
	rla			;1f66
	ld d,015h		;1f67
	inc d			;1f69
	inc de			;1f6a
	inc de			;1f6b
	ld (de),a			;1f6c
	ld de,l1010h+1		;1f6d
	rrca			;1f70
	rrca			;1f71
	ld c,00dh		;1f72
	dec c			;1f74
	inc c			;1f75
	inc c			;1f76
	dec bc			;1f77
	dec bc			;1f78
	ld a,(bc)			;1f79
	ld a,(bc)			;1f7a
	add hl,bc			;1f7b
	add hl,bc			;1f7c
l1f7dh:
	ex af,af'			;1f7d
	ex af,af'			;1f7e
l1f7fh:
	rlca			;1f7f
	rlca			;1f80
	rlca			;1f81
	ld b,006h		;1f82
	dec b			;1f84
	dec b			;1f85
	dec b			;1f86
	inc b			;1f87
	inc b			;1f88
	inc b			;1f89
	inc bc			;1f8a
	inc bc			;1f8b
	inc bc			;1f8c
	inc bc			;1f8d
	ld (bc),a			;1f8e
	ld (bc),a			;1f8f
	ld (bc),a			;1f90
	ld (bc),a			;1f91
	ld bc,l0100h+1		;1f92
	ld bc,l0100h+1		;1f95
	nop			;1f98
	nop			;1f99
	nop			;1f9a
	nop			;1f9b
	nop			;1f9c
	nop			;1f9d
	nop			;1f9e
	nop			;1f9f
	nop			;1fa0
	nop			;1fa1
	nop			;1fa2
	nop			;1fa3
	nop			;1fa4
	nop			;1fa5
	ld d,e			;1fa6
	ld c,l			;1fa7
	ld c,c			;1fa8
	ld b,l			;1fa9
	ld b,d			;1faa
	ccf			;1fab
	inc a			;1fac
	ld a,(l3638h)		;1fad
	inc (hl)			;1fb0
	ld (l2e30h),a		;1fb1
	dec l			;1fb4
	dec hl			;1fb5
	ld hl,(l2728h)		;1fb6
	ld h,024h		;1fb9
	inc hl			;1fbb
	ld (l2021h),hl		;1fbc
	ld e,01dh		;1fbf
	inc e			;1fc1
	dec de			;1fc2
	ld a,(de)			;1fc3
	add hl,de			;1fc4
	add hl,de			;1fc5
	jr l1fdfh		;1fc6
	ld d,015h		;1fc8
	inc d			;1fca
	inc d			;1fcb
	inc de			;1fcc
	ld (de),a			;1fcd
	ld de,l1010h+1		;1fce
	rrca			;1fd1
	rrca			;1fd2
	ld c,00dh		;1fd3
	dec c			;1fd5
	inc c			;1fd6
	inc c			;1fd7
	dec bc			;1fd8
	dec bc			;1fd9
	ld a,(bc)			;1fda
	ld a,(bc)			;1fdb
	add hl,bc			;1fdc
	add hl,bc			;1fdd
	ex af,af'			;1fde
l1fdfh:
	ex af,af'			;1fdf
	rlca			;1fe0
	rlca			;1fe1
	ld b,006h		;1fe2
	ld b,005h		;1fe4
	dec b			;1fe6
	dec b			;1fe7
	inc b			;1fe8
	inc b			;1fe9
	inc b			;1fea
	inc bc			;1feb
	inc bc			;1fec
	inc bc			;1fed
	inc bc			;1fee
	ld (bc),a			;1fef
	ld (bc),a			;1ff0
	ld (bc),a			;1ff1
	ld (bc),a			;1ff2
	ld bc,l0100h+1		;1ff3
	ld bc,l0100h+1		;1ff6
	nop			;1ff9
	nop			;1ffa
	nop			;1ffb
	nop			;1ffc
	nop			;1ffd
	nop			;1ffe
l1fffh:
	nop			;1fff
l2000h:
	nop			;2000
	nop			;2001
	nop			;2002
	nop			;2003
	nop			;2004
	nop			;2005
	ld d,a			;2006
	ld d,c			;2007
	ld c,h			;2008
	ld c,c			;2009
	ld b,l			;200a
	ld b,d			;200b
	ccf			;200c
	dec a			;200d
	dec sp			;200e
	jr c,l2047h		;200f
	inc (hl)			;2011
	ld (l2f31h),a		;2012
	dec l			;2015
	inc l			;2016
	ld hl,(l2728h+1)		;2017
	ld h,025h		;201a
	inc h			;201c
	ld (l2021h),hl		;201d
sub_2020h:
	rra			;2020
l2021h:
	ld e,01dh		;2021
	inc e			;2023
	dec de			;2024
	ld a,(de)			;2025
	add hl,de			;2026
	jr l2040h		;2027
	ld d,015h		;2029
	dec d			;202b
	inc d			;202c
	inc de			;202d
	ld (de),a			;202e
	ld de,l1010h+1		;202f
	rrca			;2032
	rrca			;2033
	ld c,00dh		;2034
	dec c			;2036
	inc c			;2037
	inc c			;2038
	dec bc			;2039
	dec bc			;203a
	ld a,(bc)			;203b
	ld a,(bc)			;203c
	add hl,bc			;203d
	add hl,bc			;203e
	ex af,af'			;203f
l2040h:
	ex af,af'			;2040
	rlca			;2041
	rlca			;2042
	ld b,006h		;2043
	ld b,005h		;2045
l2047h:
	dec b			;2047
	dec b			;2048
	inc b			;2049
	inc b			;204a
	inc b			;204b
	inc bc			;204c
	inc bc			;204d
	inc bc			;204e
	ld (bc),a			;204f
	ld (bc),a			;2050
	ld (bc),a			;2051
	ld (bc),a			;2052
	ld bc,l0100h+1		;2053
	ld bc,l0100h+1		;2056
	nop			;2059
	nop			;205a
	nop			;205b
	nop			;205c
	nop			;205d
	nop			;205e
	nop			;205f
	nop			;2060
	nop			;2061
	nop			;2062
	nop			;2063
	nop			;2064
	nop			;2065
	ld e,e			;2066
	ld d,l			;2067
	ld d,b			;2068
	ld c,h			;2069
	ld c,c			;206a
	ld b,l			;206b
	ld b,e			;206c
	ld b,b			;206d
	dec a			;206e
	dec sp			;206f
	add hl,sp			;2070
	scf			;2071
	dec (hl)			;2072
	inc sp			;2073
	ld sp,l2e30h		;2074
	inc l			;2077
	dec hl			;2078
	add hl,hl			;2079
	jr z,l20a3h		;207a
sub_207ch:
	dec h			;207c
sub_207dh:
	inc h			;207d
	inc hl			;207e
	ld (l1f20h),hl		;207f
	ld e,01dh		;2082
	inc e			;2084
	dec de			;2085
	ld a,(de)			;2086
	add hl,de			;2087
	jr l20a1h		;2088
	ld d,016h		;208a
	dec d			;208c
	inc d			;208d
	inc de			;208e
	ld (de),a			;208f
	ld (de),a			;2090
	ld de,00f10h		;2091
	rrca			;2094
	ld c,00eh		;2095
	dec c			;2097
	inc c			;2098
	inc c			;2099
	dec bc			;209a
	dec bc			;209b
	ld a,(bc)			;209c
	ld a,(bc)			;209d
	add hl,bc			;209e
	add hl,bc			;209f
	ex af,af'			;20a0
l20a1h:
	ex af,af'			;20a1
	rlca			;20a2
l20a3h:
	rlca			;20a3
	ld b,006h		;20a4
	dec b			;20a6
	dec b			;20a7
	dec b			;20a8
	inc b			;20a9
	inc b			;20aa
	inc b			;20ab
	inc bc			;20ac
	inc bc			;20ad
	inc bc			;20ae
	inc bc			;20af
	ld (bc),a			;20b0
	ld (bc),a			;20b1
	ld (bc),a			;20b2
	ld (bc),a			;20b3
	ld bc,l0100h+1		;20b4
	ld bc,l0001h		;20b7
	nop			;20ba
	nop			;20bb
	nop			;20bc
	nop			;20bd
	nop			;20be
sub_20bfh:
	nop			;20bf
	nop			;20c0
	nop			;20c1
	nop			;20c2
	nop			;20c3
	nop			;20c4
	nop			;20c5
	ld e,a			;20c6
	ld e,b			;20c7
	ld d,e			;20c8
	ld c,a			;20c9
	ld c,e			;20ca
	ld c,b			;20cb
	ld b,l			;20cc
	ld b,d			;20cd
	ld b,b			;20ce
	dec a			;20cf
	dec sp			;20d0
	add hl,sp			;20d1
	scf			;20d2
	dec (hl)			;20d3
	inc sp			;20d4
	ld sp,l2e30h		;20d5
	dec l			;20d8
	dec hl			;20d9
	ld hl,(l2728h)		;20da
	dec h			;20dd
	inc h			;20de
	inc hl			;20df
	ld (l1f20h),hl		;20e0
	ld e,01dh		;20e3
	inc e			;20e5
	dec de			;20e6
	ld a,(de)			;20e7
	add hl,de			;20e8
	jr l2102h		;20e9
	ld d,016h		;20eb
	dec d			;20ed
	inc d			;20ee
	inc de			;20ef
	ld (de),a			;20f0
	ld (de),a			;20f1
	ld de,00f10h		;20f2
	rrca			;20f5
	ld c,00dh		;20f6
	dec c			;20f8
	inc c			;20f9
	inc c			;20fa
	dec bc			;20fb
	ld a,(bc)			;20fc
	ld a,(bc)			;20fd
	add hl,bc			;20fe
	add hl,bc			;20ff
l2100h:
	ex af,af'			;2100
	ex af,af'			;2101
l2102h:
	rlca			;2102
	rlca			;2103
	rlca			;2104
	ld b,006h		;2105
	dec b			;2107
	dec b			;2108
	dec b			;2109
	inc b			;210a
	inc b			;210b
	inc b			;210c
	inc bc			;210d
	inc bc			;210e
	inc bc			;210f
	ld (bc),a			;2110
	ld (bc),a			;2111
	ld (bc),a			;2112
	ld (bc),a			;2113
	ld bc,l0100h+1		;2114
	ld bc,l0100h+1		;2117
	nop			;211a
	nop			;211b
	nop			;211c
	nop			;211d
	nop			;211e
	nop			;211f
	nop			;2120
	nop			;2121
	nop			;2122
	nop			;2123
	nop			;2124
	nop			;2125
l2126h:
	ld h,e			;2126
	ld e,h			;2127
	ld d,a			;2128
	ld d,e			;2129
	ld c,a			;212a
	ld c,e			;212b
	ld c,b			;212c
	ld b,l			;212d
	ld b,e			;212e
	ld b,b			;212f
	ld a,03ch		;2130
	add hl,sp			;2132
	scf			;2133
	ld (hl),034h		;2134
	ld (l2f30h),a		;2136
	dec l			;2139
	dec hl			;213a
	ld hl,(l2728h+1)		;213b
	ld h,024h		;213e
	inc hl			;2140
	ld (l2021h),hl		;2141
l2144h:
	ld e,01dh		;2144
	inc e			;2146
	dec de			;2147
	ld a,(de)			;2148
	add hl,de			;2149
	jr l2163h		;214a
	rla			;214c
	ld d,015h		;214d
	inc d			;214f
	inc de			;2150
	ld (de),a			;2151
	ld (de),a			;2152
	ld de,00f10h		;2153
	rrca			;2156
	ld c,00dh		;2157
	dec c			;2159
	inc c			;215a
	inc c			;215b
	dec bc			;215c
	ld a,(bc)			;215d
	ld a,(bc)			;215e
	add hl,bc			;215f
	add hl,bc			;2160
	ex af,af'			;2161
	ex af,af'			;2162
l2163h:
	rlca			;2163
	rlca			;2164
	ld b,006h		;2165
	ld b,005h		;2167
	dec b			;2169
	inc b			;216a
	inc b			;216b
	inc b			;216c
	inc bc			;216d
	inc bc			;216e
	inc bc			;216f
	inc bc			;2170
	ld (bc),a			;2171
	ld (bc),a			;2172
	ld (bc),a			;2173
	ld (bc),a			;2174
	ld bc,l0100h+1		;2175
	ld bc,l0001h		;2178
	nop			;217b
	nop			;217c
	nop			;217d
	nop			;217e
	nop			;217f
	nop			;2180
	nop			;2181
	nop			;2182
	nop			;2183
	nop			;2184
	nop			;2185
l2186h:
	ld h,a			;2186
	ld h,b			;2187
	ld e,e			;2188
	ld d,(hl)			;2189
	ld d,d			;218a
	ld c,a			;218b
	ld c,e			;218c
	ld c,b			;218d
	ld b,(hl)			;218e
	ld b,e			;218f
	ld b,c			;2190
	ld a,03ch		;2191
	ld a,(l3638h)		;2193
	inc (hl)			;2196
	ld (l2f31h),a		;2197
	dec l			;219a
	inc l			;219b
	ld hl,(l2728h+1)		;219c
	ld h,025h		;219f
	inc hl			;21a1
	ld (l2021h),hl		;21a2
	rra			;21a5
	ld e,01ch		;21a6
	dec de			;21a8
	ld a,(de)			;21a9
	add hl,de			;21aa
	jr l21c5h		;21ab
	rla			;21ad
	ld d,015h		;21ae
	inc d			;21b0
	inc de			;21b1
	ld (de),a			;21b2
	ld (de),a			;21b3
	ld de,00f10h		;21b4
	rrca			;21b7
	ld c,00dh		;21b8
	dec c			;21ba
	inc c			;21bb
	dec bc			;21bc
	dec bc			;21bd
	ld a,(bc)			;21be
	ld a,(bc)			;21bf
	add hl,bc			;21c0
	add hl,bc			;21c1
	ex af,af'			;21c2
	ex af,af'			;21c3
	rlca			;21c4
l21c5h:
	rlca			;21c5
	ld b,006h		;21c6
	dec b			;21c8
	dec b			;21c9
	dec b			;21ca
	inc b			;21cb
	inc b			;21cc
	inc b			;21cd
	inc bc			;21ce
	inc bc			;21cf
	inc bc			;21d0
	ld (bc),a			;21d1
	ld (bc),a			;21d2
	ld (bc),a			;21d3
	ld (bc),a			;21d4
	ld bc,l0100h+1		;21d5
	ld bc,l0001h		;21d8
	nop			;21db
	nop			;21dc
	nop			;21dd
	nop			;21de
	nop			;21df
	nop			;21e0
	nop			;21e1
	nop			;21e2
	nop			;21e3
	nop			;21e4
	nop			;21e5
	ld l,e			;21e6
	ld h,h			;21e7
	ld e,(hl)			;21e8
	ld e,d			;21e9
	ld d,(hl)			;21ea
	ld d,d			;21eb
	ld c,a			;21ec
	ld c,e			;21ed
	ld c,b			;21ee
	ld b,(hl)			;21ef
	ld b,e			;21f0
	ld b,c			;21f1
	ld a,03ch		;21f2
	ld a,(l3638h)		;21f4
	inc (hl)			;21f7
	inc sp			;21f8
	ld sp,l2e2fh		;21f9
	inc l			;21fc
	dec hl			;21fd
	add hl,hl			;21fe
	jr z,l2227h		;21ff
	dec h			;2201
	inc h			;2202
sub_2203h:
	ld (l2021h),hl		;2203
	rra			;2206
	ld e,01dh		;2207
	inc e			;2209
	ld a,(de)			;220a
	add hl,de			;220b
	add hl,de			;220c
	jr l2226h		;220d
	ld d,015h		;220f
	inc d			;2211
	inc de			;2212
	ld (de),a			;2213
	ld (de),a			;2214
	ld de,00f10h		;2215
	rrca			;2218
	ld c,00dh		;2219
	dec c			;221b
	inc c			;221c
	dec bc			;221d
	dec bc			;221e
	ld a,(bc)			;221f
	ld a,(bc)			;2220
l2221h:
	add hl,bc			;2221
l2222h:
	ex af,af'			;2222
	ex af,af'			;2223
	rlca			;2224
	rlca			;2225
l2226h:
	rlca			;2226
l2227h:
	ld b,006h		;2227
	dec b			;2229
	dec b			;222a
	inc b			;222b
	inc b			;222c
	inc b			;222d
	inc bc			;222e
	inc bc			;222f
	inc bc			;2230
	ld (bc),a			;2231
	ld (bc),a			;2232
	ld (bc),a			;2233
	ld (bc),a			;2234
	ld bc,l0100h+1		;2235
	ld bc,l0001h		;2238
	nop			;223b
	nop			;223c
	nop			;223d
	nop			;223e
	nop			;223f
	nop			;2240
	nop			;2241
	nop			;2242
	nop			;2243
	nop			;2244
	nop			;2245
l2246h:
	ld l,a			;2246
	ld h,a			;2247
	ld h,c			;2248
	ld e,l			;2249
	ld e,b			;224a
	ld d,h			;224b
	ld d,c			;224c
	ld c,(hl)			;224d
	ld c,e			;224e
	ld c,b			;224f
	ld b,l			;2250
	ld b,e			;2251
	ld b,b			;2252
	ld a,03ch		;2253
	ld a,(l3638h)		;2255
	inc (hl)			;2258
	ld (l2f31h),a		;2259
	dec l			;225c
	inc l			;225d
	ld hl,(02829h)		;225e
	ld h,025h		;2261
	inc hl			;2263
	ld (l2021h),hl		;2264
	rra			;2267
	ld e,01ch		;2268
	dec de			;226a
	ld a,(de)			;226b
	add hl,de			;226c
	jr l2286h		;226d
	ld d,016h		;226f
	dec d			;2271
	inc d			;2272
	inc de			;2273
	ld (de),a			;2274
	ld de,l1010h+1		;2275
	rrca			;2278
	ld c,00eh		;2279
	dec c			;227b
	inc c			;227c
	inc c			;227d
	dec bc			;227e
	ld a,(bc)			;227f
	ld a,(bc)			;2280
	add hl,bc			;2281
	add hl,bc			;2282
	ex af,af'			;2283
	ex af,af'			;2284
	rlca			;2285
l2286h:
	rlca			;2286
	ld b,006h		;2287
	dec b			;2289
	dec b			;228a
	dec b			;228b
	inc b			;228c
	inc b			;228d
	inc b			;228e
	inc bc			;228f
	inc bc			;2290
	inc bc			;2291
	ld (bc),a			;2292
	ld (bc),a			;2293
	ld (bc),a			;2294
	ld (bc),a			;2295
	ld bc,l0100h+1		;2296
	ld bc,start		;2299
	nop			;229c
	nop			;229d
	nop			;229e
	nop			;229f
	nop			;22a0
	nop			;22a1
	nop			;22a2
	nop			;22a3
	nop			;22a4
	nop			;22a5
l22a6h:
	ld (hl),e			;22a6
	ld l,e			;22a7
	ld h,l			;22a8
	ld h,b			;22a9
	ld e,h			;22aa
	ld e,b			;22ab
	ld d,h			;22ac
	ld d,c			;22ad
	ld c,(hl)			;22ae
	ld c,e			;22af
	ld c,b			;22b0
	ld b,l			;22b1
	ld b,e			;22b2
	ld b,c			;22b3
	ld a,03ch		;22b4
	ld a,(l3638h)		;22b6
	inc (hl)			;22b9
	inc sp			;22ba
	ld sp,l2e2fh		;22bb
	inc l			;22be
	dec hl			;22bf
	add hl,hl			;22c0
	jr z,$+38		;22c1
	dec h			;22c3
	inc h			;22c4
	ld (l2021h),hl		;22c5
	rra			;22c8
	ld e,01ch		;22c9
	dec de			;22cb
	ld a,(de)			;22cc
	add hl,de			;22cd
	jr l22e7h		;22ce
	ld d,015h		;22d0
	dec d			;22d2
	inc d			;22d3
	inc de			;22d4
	ld (de),a			;22d5
	ld de,l1010h		;22d6
	rrca			;22d9
	ld c,00dh		;22da
	dec c			;22dc
	inc c			;22dd
	inc c			;22de
	dec bc			;22df
	ld a,(bc)			;22e0
	ld a,(bc)			;22e1
	add hl,bc			;22e2
	add hl,bc			;22e3
	ex af,af'			;22e4
	ex af,af'			;22e5
	rlca			;22e6
l22e7h:
	rlca			;22e7
	ld b,006h		;22e8
	dec b			;22ea
	dec b			;22eb
	inc b			;22ec
	inc b			;22ed
	inc b			;22ee
	inc bc			;22ef
	inc bc			;22f0
	inc bc			;22f1
	ld (bc),a			;22f2
	ld (bc),a			;22f3
	ld (bc),a			;22f4
sub_22f5h:
	ld (bc),a			;22f5
	ld bc,l0100h+1		;22f6
	ld bc,l0001h		;22f9
	nop			;22fc
	nop			;22fd
	nop			;22fe
	nop			;22ff
	nop			;2300
	nop			;2301
	nop			;2302
	nop			;2303
	nop			;2304
	nop			;2305
	ld (hl),a			;2306
	ld l,a			;2307
	ld l,c			;2308
	ld h,h			;2309
	ld e,a			;230a
	ld e,e			;230b
	ld d,a			;230c
	ld d,h			;230d
	ld d,c			;230e
	ld c,(hl)			;230f
	ld c,e			;2310
	ld c,b			;2311
	ld b,l			;2312
	ld b,e			;2313
	ld b,c			;2314
	ld a,03ch		;2315
	ld a,(l3638h)		;2317
	dec (hl)			;231a
	inc sp			;231b
	ld sp,l2e2fh		;231c
	inc l			;231f
	dec hl			;2320
	add hl,hl			;2321
l2322h:
	jr z,l234ah		;2322
	dec h			;2324
	inc h			;2325
l2326h:
	ld (l2021h),hl		;2326
	rra			;2329
	dec e			;232a
	inc e			;232b
	dec de			;232c
	ld a,(de)			;232d
	add hl,de			;232e
	jr l2348h		;232f
	ld d,015h		;2331
	inc d			;2333
	inc d			;2334
	inc de			;2335
	ld (de),a			;2336
	ld de,00f10h		;2337
	rrca			;233a
	ld c,00dh		;233b
	dec c			;233d
	inc c			;233e
	dec bc			;233f
	dec bc			;2340
	ld a,(bc)			;2341
	add hl,bc			;2342
	add hl,bc			;2343
	ex af,af'			;2344
	ex af,af'			;2345
	rlca			;2346
	rlca			;2347
l2348h:
	ld b,006h		;2348
l234ah:
	dec b			;234a
	dec b			;234b
	dec b			;234c
	inc b			;234d
	inc b			;234e
	inc bc			;234f
	inc bc			;2350
	inc bc			;2351
	inc bc			;2352
	ld (bc),a			;2353
	ld (bc),a			;2354
	ld (bc),a			;2355
	ld bc,l0100h+1		;2356
	ld bc,l0001h		;2359
	nop			;235c
	nop			;235d
	nop			;235e
	nop			;235f
	nop			;2360
	nop			;2361
	nop			;2362
	nop			;2363
	nop			;2364
	nop			;2365
	ld a,e			;2366
	ld (hl),d			;2367
	ld l,h			;2368
	ld h,a			;2369
	ld h,d			;236a
	ld e,(hl)			;236b
	ld e,d			;236c
	ld d,(hl)			;236d
	ld d,e			;236e
	ld d,b			;236f
	ld c,l			;2370
	ld c,d			;2371
	ld b,a			;2372
	ld b,l			;2373
	ld b,e			;2374
	ld b,b			;2375
	ld a,03ch		;2376
	ld a,(l3638h)		;2378
	inc (hl)			;237b
	ld (l2f31h),a		;237c
	dec l			;237f
	inc l			;2380
	ld hl,(l2728h+1)		;2381
	ld h,025h		;2384
	inc hl			;2386
	ld (l2021h),hl		;2387
	ld e,01dh		;238a
	inc e			;238c
	dec de			;238d
	ld a,(de)			;238e
	add hl,de			;238f
	jr l23a9h		;2390
	ld d,015h		;2392
	inc d			;2394
	inc de			;2395
	ld (de),a			;2396
	ld (de),a			;2397
	ld de,00f10h		;2398
	ld c,00eh		;239b
	dec c			;239d
	inc c			;239e
	inc c			;239f
	dec bc			;23a0
	ld a,(bc)			;23a1
	ld a,(bc)			;23a2
	add hl,bc			;23a3
	add hl,bc			;23a4
	ex af,af'			;23a5
	ex af,af'			;23a6
	rlca			;23a7
	rlca			;23a8
l23a9h:
	ld b,006h		;23a9
	dec b			;23ab
	dec b			;23ac
	inc b			;23ad
	inc b			;23ae
	inc b			;23af
	inc bc			;23b0
	inc bc			;23b1
	inc bc			;23b2
	ld (bc),a			;23b3
	ld (bc),a			;23b4
	ld (bc),a			;23b5
	ld bc,l0100h+1		;23b6
	ld bc,l0001h		;23b9
	nop			;23bc
	nop			;23bd
	nop			;23be
	nop			;23bf
	nop			;23c0
	nop			;23c1
	nop			;23c2
	nop			;23c3
	nop			;23c4
	nop			;23c5
l23c6h:
	nop			;23c6
	dec bc			;23c7
	rrca			;23c8
	inc de			;23c9
	ld d,018h		;23ca
	ld a,(de)			;23cc
	inc e			;23cd
	ld e,020h		;23ce
	ld (02523h),hl		;23d0
	ld h,028h		;23d3
	add hl,hl			;23d5
	dec hl			;23d6
	inc l			;23d7
	dec l			;23d8
	ld l,02fh		;23d9
	jr nc,l240eh		;23db
	ld (l3433h),a		;23dd
	dec (hl)			;23e0
	ld (hl),037h		;23e1
	jr c,l241eh		;23e3
	ld a,(l3b3ah)		;23e5
	inc a			;23e8
	dec a			;23e9
	ld a,03eh		;23ea
	ccf			;23ec
	ld b,b			;23ed
	ld b,b			;23ee
	ld b,c			;23ef
	ld b,d			;23f0
	ld b,d			;23f1
	ld b,e			;23f2
	ld b,h			;23f3
	ld b,h			;23f4
	ld b,l			;23f5
	ld b,l			;23f6
	ld b,(hl)			;23f7
	ld b,a			;23f8
	ld b,a			;23f9
	ld c,b			;23fa
	ld c,b			;23fb
	ld c,c			;23fc
	ld c,c			;23fd
	ld c,d			;23fe
	ld c,d			;23ff
	ld c,e			;2400
l2401h:
	ld c,e			;2401
	ld c,h			;2402
	ld c,h			;2403
	ld c,l			;2404
	ld c,l			;2405
	ld c,(hl)			;2406
	ld c,(hl)			;2407
	ld c,a			;2408
	ld c,a			;2409
	ld c,a			;240a
	ld d,b			;240b
	ld d,b			;240c
	ld d,c			;240d
l240eh:
	ld d,c			;240e
	ld d,d			;240f
	ld d,d			;2410
	ld d,d			;2411
	ld d,e			;2412
	ld d,e			;2413
	ld d,e			;2414
	ld d,h			;2415
	ld d,h			;2416
	ld d,h			;2417
	ld d,l			;2418
	ld d,l			;2419
	ld d,l			;241a
	ld d,(hl)			;241b
	ld d,(hl)			;241c
	ld d,(hl)			;241d
l241eh:
	ld d,a			;241e
	ld d,a			;241f
	ld d,a			;2420
	ld e,b			;2421
	ld e,b			;2422
l2423h:
	ld e,b			;2423
	ld e,b			;2424
	ld e,c			;2425
	ld e,c			;2426
l2427h:
	ld e,c			;2427
	ld e,c			;2428
	ld e,d			;2429
	ld e,d			;242a
	ld e,d			;242b
	ld e,d			;242c
	ld e,e			;242d
	ld e,e			;242e
	ld e,e			;242f
	ld e,e			;2430
	ld e,e			;2431
	ld e,h			;2432
	ld e,h			;2433
	ld e,h			;2434
	ld e,h			;2435
	ld e,h			;2436
	ld e,l			;2437
	ld e,l			;2438
	ld e,l			;2439
	ld e,l			;243a
	ld e,l			;243b
	ld e,l			;243c
	ld e,(hl)			;243d
	ld e,(hl)			;243e
	ld e,(hl)			;243f
	ld e,(hl)			;2440
	ld e,(hl)			;2441
	ld e,(hl)			;2442
	ld e,(hl)			;2443
	ld e,a			;2444
	ld e,a			;2445
sub_2446h:
	ld hl,l784eh		;2446
	call sub_0018h		;2449
	ld hl,(0c31ah)		;244c
	ld de,l0064h		;244f
	ld b,0ffh		;2452
	and a			;2454
l2455h:
	sbc hl,de		;2455
	inc b			;2457
	jr nc,l2455h		;2458
	call sub_24f0h		;245a
	ld de,l0064h		;245d
	add hl,de			;2460
	ld e,00ah		;2461
	ld b,0ffh		;2463
	ld a,l			;2465
l2466h:
	sub e			;2466
	inc b			;2467
	jr nc,l2466h		;2468
	push af			;246a
	call sub_24f0h		;246b
	pop af			;246e
	add a,00ah		;246f
	ld b,a			;2471
	jp sub_24f0h		;2472
sub_2475h:
	ld hl,0c00dh		;2475
	ld a,(0c000h)		;2478
	bit 5,a		;247b
	jr nz,l24a6h		;247d
	dec hl			;247f
	ld a,(0c049h)		;2480
	or a			;2483
	ret nz			;2484
	dec (hl)			;2485
	ret nz			;2486
	ld (hl),03ch		;2487
	inc hl			;2489
	dec (hl)			;248a
	jp p,l24a6h		;248b
	inc (hl)			;248e
	ld hl,(0c31ah)		;248f
	ld a,l			;2492
	or h			;2493
	ret nz			;2494
	ld a,(0c300h)		;2495
	cp 001h		;2498
	ret nz			;249a
	ld a,(0c301h)		;249b
	or a			;249e
	ret p			;249f
	ld hl,0c000h		;24a0
	set 6,(hl)		;24a3
	ret			;24a5
l24a6h:
	ld a,(hl)			;24a6
	ld b,0ffh		;24a7
	ld e,00ah		;24a9
l24abh:
	sub e			;24ab
	inc b			;24ac
	jr nc,l24abh		;24ad
	ld de,l381ch		;24af
	call sub_24bfh		;24b2
	add a,00ah		;24b5
	ld b,a			;24b7
	ld de,l381eh		;24b8
	call sub_24bfh		;24bb
	ret			;24be
sub_24bfh:
	push hl			;24bf
	push af			;24c0
	sla b		;24c1
	ld h,000h		;24c3
	ld l,b			;24c5
	ld bc,l24dch		;24c6
	add hl,bc			;24c9
	ld a,(hl)			;24ca
	inc hl			;24cb
	ld b,(hl)			;24cc
	call sub_24fch		;24cd
	ld hl,00040h		;24d0
	add hl,de			;24d3
	ex de,hl			;24d4
	ld a,b			;24d5
	call sub_24fch		;24d6
	pop af			;24d9
	pop hl			;24da
	ret			;24db
l24dch:
	ld a,03fh		;24dc
	ld h,b			;24de
	ld h,c			;24df
	ld h,d			;24e0
	ld h,e			;24e1
	ld h,d			;24e2
	ld h,h			;24e3
	ld h,l			;24e4
	ld h,c			;24e5
	ld h,(hl)			;24e6
	ld h,h			;24e7
	ld h,(hl)			;24e8
	ccf			;24e9
	ld h,a			;24ea
	ld h,c			;24eb
	ld l,b			;24ec
	ccf			;24ed
	ld l,b			;24ee
	ld h,h			;24ef
sub_24f0h:
	ld a,b			;24f0
	add a,030h		;24f1
	out (0beh),a		;24f3
	push af			;24f5
	pop af			;24f6
	ld a,009h		;24f7
	out (0beh),a		;24f9
	ret			;24fb
sub_24fch:
	push af			;24fc
	ld a,e			;24fd
	out (0bfh),a		;24fe
	ld a,d			;2500
	or 040h		;2501
	out (0bfh),a		;2503
	pop af			;2505
	out (0beh),a		;2506
	ret			;2508
sub_2509h:
	ld a,(0c045h)		;2509
	or a			;250c
	ret nz			;250d
	ld ix,0c300h		;250e
	ld b,008h		;2512
l2514h:
	push bc			;2514
	ld a,(ix+000h)		;2515
	or a			;2518
	jr z,l252eh		;2519
	ld hl,l252eh		;251b
	push hl			;251e
	add a,a			;251f
	and 01eh		;2520
	ld d,000h		;2522
	ld e,a			;2524
	ld hl,l25aeh		;2525
	add hl,de			;2528
l2529h:
	ld e,(hl)			;2529
	inc hl			;252a
	ld d,(hl)			;252b
	ex de,hl			;252c
	jp (hl)			;252d
l252eh:
	ld de,l0020h		;252e
	add ix,de		;2531
	pop bc			;2533
	djnz l2514h		;2534
	ld iy,0c442h		;2536
	ld ix,0c300h		;253a
	ld b,008h		;253e
l2540h:
	bit 7,(ix+001h)		;2540
	call nz,sub_2564h		;2544
	ld de,l0020h		;2547
	add ix,de		;254a
	djnz l2540h		;254c
	ld (iy+000h),0d0h		;254e
	ld a,0ffh		;2552
	ld (0c045h),a		;2554
	ret			;2557
l2558h:
	pop af			;2558
	ld (ix+000h),000h		;2559
	ld (ix+001h),000h		;255d
	jp l252eh		;2561
sub_2564h:
	push bc			;2564
	ld a,(ix+00ah)		;2565
	add a,a			;2568
	ld hl,l25c7h		;2569
	ld e,a			;256c
	ld d,000h		;256d
	add hl,de			;256f
	ld e,(hl)			;2570
	inc hl			;2571
	ld h,(hl)			;2572
	ld l,e			;2573
	ld e,(ix+002h)		;2574
	ld b,(ix+007h)		;2577
	ld c,(ix+006h)		;257a
l257dh:
	ld a,(hl)			;257d
	cp 080h		;257e
	jr z,l25aeh		;2580
	add a,e			;2582
	cp 0c8h		;2583
	jr nc,l25aeh		;2585
	ld (iy+000h),a		;2587
	inc hl			;258a
	ld a,(hl)			;258b
	add a,c			;258c
	ld d,a			;258d
	ld a,000h		;258e
	bit 7,(hl)		;2590
	jr z,l2595h		;2592
	dec a			;2594
l2595h:
	adc a,b			;2595
	or a			;2596
	jr nz,l25aah		;2597
	inc iy		;2599
	ld (iy+000h),d		;259b
	inc iy		;259e
	inc hl			;25a0
	ld a,(hl)			;25a1
	ld (iy+000h),a		;25a2
	inc iy		;25a5
	inc hl			;25a7
	jr l257dh		;25a8
l25aah:
	inc hl			;25aa
	inc hl			;25ab
	jr l257dh		;25ac
l25aeh:
	pop bc			;25ae
	ret			;25af
	ld h,00ah		;25b0
	ret nc			;25b2
	ld hl,(l4d51h)		;25b3
	ld d,c			;25b6
l25b7h:
	ld c,l			;25b7
	ld d,c			;25b8
	ld c,l			;25b9
	ld d,c			;25ba
	ld c,l			;25bb
	ld d,c			;25bc
	ld c,l			;25bd
	ld d,c			;25be
	ld c,l			;25bf
l25c0h:
	ld d,c			;25c0
	ld c,l			;25c1
	ld d,c			;25c2
	ld c,l			;25c3
	cp a			;25c4
	ld c,(hl)			;25c5
	ret			;25c6
l25c7h:
	ld c,a			;25c7
	daa			;25c8
	ld (hl),c			;25c9
	daa			;25ca
	adc a,l			;25cb
l25cch:
	daa			;25cc
	and (hl)			;25cd
	daa			;25ce
	cp c			;25cf
	daa			;25d0
	jp nc,0ee27h		;25d1
	daa			;25d4
	sbc a,l			;25d5
	ld h,0a1h		;25d6
	ld h,0adh		;25d8
	ld h,0bfh		;25da
	ld h,0d7h		;25dc
	ld h,004h		;25de
	daa			;25e0
	sbc a,l			;25e1
	ld h,0a5h		;25e2
	ld h,0b4h		;25e4
	ld h,0c6h		;25e6
	ld h,0e7h		;25e8
	ld h,020h		;25ea
	daa			;25ec
	sbc a,l			;25ed
	ld h,0a9h		;25ee
	ld h,0b8h		;25f0
l25f2h:
	ld h,0d0h		;25f2
	ld h,0f4h		;25f4
	ld h,033h		;25f6
	daa			;25f8
	djnz $+40		;25f9
	ld de,01528h		;25fb
l25feh:
	jr z,$+25		;25fe
l2600h:
	jr z,$+29		;2600
	jr z,l2628h		;2602
	jr z,l2616h		;2604
	jr z,$+43		;2606
	jr z,$+47		;2608
	jr z,$+51		;260a
	jr z,$+55		;260c
	jr z,$+62		;260e
	jr z,l2622h		;2610
	jr z,l2659h		;2612
	jr z,l265fh		;2614
l2616h:
	jr z,l2665h		;2616
	jr z,$+84		;2618
	jr z,l2677h		;261a
l261ch:
	jr z,l262eh		;261c
	jr z,l2682h		;261e
	jr z,l2688h		;2620
l2622h:
	jr z,$+106		;2622
	jr z,l2697h		;2624
	jr z,$+120		;2626
l2628h:
	jr z,l263ah		;2628
	jr z,l26abh		;262a
	jr z,$-125		;262c
l262eh:
	jr z,l25b7h		;262e
	jr z,l25c0h		;2630
	jr z,l25cch		;2632
	jr z,l2646h		;2634
	jr z,$-91		;2636
	jr z,$-87		;2638
l263ah:
	jr z,$-83		;263a
	jr z,l25f2h		;263c
	jr z,l25feh		;263e
	jr z,$-53		;2640
	jr z,$-49		;2642
	jr z,l261ch		;2644
l2646h:
	jr z,l2628h		;2646
	jr z,$-19		;2648
	jr z,l264ch		;264a
l264ch:
	add hl,hl			;264c
	ld d,029h		;264d
	ld a,(de)			;264f
	add hl,hl			;2650
	ld hl,02b29h		;2651
	add hl,hl			;2654
	jr c,l2680h		;2655
	ld c,e			;2657
	add hl,hl			;2658
l2659h:
	djnz l2683h		;2659
	sra c		;265b
	rst 8			;265d
	add hl,hl			;265e
l265fh:
	out (029h),a		;265f
	rst 10h			;2661
	add hl,hl			;2662
	rst 20h			;2663
	add hl,hl			;2664
l2665h:
	djnz l268fh		;2665
	jp m,0fe29h		;2667
	add hl,hl			;266a
	ld (bc),a			;266b
	ld hl,(l2a06h)		;266c
	ld d,02ah		;266f
	djnz l269bh		;2671
	ld h,c			;2673
	add hl,hl			;2674
	ld h,l			;2675
	add hl,hl			;2676
l2677h:
	ld l,c			;2677
	add hl,hl			;2678
	ld (hl),e			;2679
	add hl,hl			;267a
	add a,e			;267b
	add hl,hl			;267c
	djnz $+40		;267d
	sub (hl)			;267f
l2680h:
	add hl,hl			;2680
	sbc a,d			;2681
l2682h:
	add hl,hl			;2682
l2683h:
	sbc a,(hl)			;2683
	add hl,hl			;2684
	xor b			;2685
	add hl,hl			;2686
	cp b			;2687
l2688h:
	add hl,hl			;2688
	add hl,hl			;2689
	ld hl,(l2a29h)		;268a
	jr nc,l26b9h		;268d
l268fh:
	ld c,c			;268f
	ld hl,(l2a30h)		;2690
	ld c,c			;2693
	ld hl,(l2a62h)		;2694
l2697h:
	sbc a,c			;2697
	ld hl,(l2a99h)		;2698
l269bh:
	ld h,d			;269b
	ld hl,(0fcf0h)		;269c
	ld c,080h		;269f
	ret p			;26a1
	jp m,08060h		;26a2
	ret p			;26a5
	.DB 0fdh,00ch,080h	;illegal sequence		;26a6
	ret p			;26a9
	rst 38h			;26aa
l26abh:
	xor (hl)			;26ab
	add a,b			;26ac
	ret p			;26ad
	pop af			;26ae
	ld e,h			;26af
	ret p			;26b0
	ld sp,hl			;26b1
	ld e,(hl)			;26b2
	add a,b			;26b3
	ret p			;26b4
	call m,0800ah		;26b5
	ret p			;26b8
l26b9h:
	rst 38h			;26b9
	or b			;26ba
	ret p			;26bb
	rlca			;26bc
	or d			;26bd
	add a,b			;26be
	xor 0f1h		;26bf
	ld d,(hl)			;26c1
	ret p			;26c2
	ld sp,hl			;26c3
	ld e,b			;26c4
	add a,b			;26c5
	ret pe			;26c6
	ret m			;26c7
	ld e,d			;26c8
	ret pe			;26c9
	nop			;26ca
	or h			;26cb
	ret m			;26cc
	call m,08008h		;26cd
	ret p			;26d0
	rst 38h			;26d1
	or (hl)			;26d2
	xor 007h		;26d3
	cp b			;26d5
	add a,b			;26d6
	ret po			;26d7
	in c,(c)		;26d8
	ret po			;26da
	push af			;26db
	ld c,d			;26dc
	ret p			;26dd
	jp pe,0f04ch		;26de
	jp p,0f04eh		;26e1
	jp m,08050h		;26e4
	ret po			;26e7
	ret m			;26e8
	ld d,d			;26e9
	ret po			;26ea
	nop			;26eb
	cp h			;26ec
	ret p			;26ed
	ret m			;26ee
	ld d,h			;26ef
	ret p			;26f0
	nop			;26f1
	cp d			;26f2
	add a,b			;26f3
	ret po			;26f4
	inc b			;26f5
	call nz,00ce0h		;26f6
	add a,0f0h		;26f9
	rst 38h			;26fb
	cp (hl)			;26fc
	ret p			;26fd
	rlca			;26fe
	ret nz			;26ff
l2700h:
	ret p			;2700
	rrca			;2701
	jp nz,0d880h		;2702
	di			;2705
	jr c,$-40		;2706
	ex de,hl			;2708
	ld (hl),0d9h		;2709
	ex (sp),hl			;270b
	inc (hl)			;270c
	ret pe			;270d
	rst 28h			;270e
	inc a			;270f
	ret pe			;2710
	rst 30h			;2711
	ld a,0e8h		;2712
	rst 20h			;2714
	ld a,(0fbf7h)		;2715
	ld h,d			;2718
	ret m			;2719
	di			;271a
	ld b,d			;271b
	ret m			;271c
	ex de,hl			;271d
	ld b,b			;271e
	add a,b			;271f
	ret c			;2720
	call p,0d844h		;2721
	call m,0d806h		;2724
	inc b			;2727
l2728h:
	jp z,0f8e8h		;2728
	ld b,(hl)			;272b
	ret pe			;272c
	nop			;272d
	ret z			;272e
	ret m			;272f
	call m,08004h		;2730
	ret c			;2733
	ld b,0d6h		;2734
	ret c			;2736
	ld c,0d8h		;2737
	exx			;2739
	ld d,0dah		;273a
	ret pe			;273c
	ld a,(bc)			;273d
	jp nc,l02e8h		;273e
	ret nc			;2741
	ret pe			;2742
	ld (de),a			;2743
	call nc,0fef7h		;2744
	xor h			;2747
	ret m			;2748
	ld b,0cch		;2749
	ret m			;274b
	ld c,0ceh		;274c
	add a,b			;274e
	rst 10h			;274f
	di			;2750
	ld l,d			;2751
	rst 10h			;2752
	ex de,hl			;2753
	ld l,b			;2754
	ret c			;2755
	ex (sp),hl			;2756
	ld h,(hl)			;2757
	rst 20h			;2758
	rst 28h			;2759
	ld l,(hl)			;275a
	rst 20h			;275b
	rst 30h			;275c
	ld (hl),b			;275d
	rst 20h			;275e
	rst 20h			;275f
	ld l,h			;2760
	ret p			;2761
	xor 0dch		;2762
	ret p			;2764
	or 0deh		;2765
	or 0fbh		;2767
	ld h,d			;2769
	rst 30h			;276a
	di			;276b
	ld (hl),h			;276c
	rst 30h			;276d
	ex de,hl			;276e
	ld (hl),d			;276f
	add a,b			;2770
	ret c			;2771
	di			;2772
	ld l,d			;2773
	ret c			;2774
	ex de,hl			;2775
	ld l,b			;2776
	exx			;2777
	ex (sp),hl			;2778
	ld h,(hl)			;2779
	ret pe			;277a
	rst 28h			;277b
	ld l,(hl)			;277c
	ret pe			;277d
	rst 30h			;277e
	ld (hl),b			;277f
	ret pe			;2780
	rst 20h			;2781
	ld l,h			;2782
	rst 30h			;2783
	ei			;2784
	ld h,d			;2785
	ret m			;2786
	di			;2787
	ld (hl),h			;2788
	ret m			;2789
	ex de,hl			;278a
	ld (hl),d			;278b
	add a,b			;278c
	ret c			;278d
	call pe,0d876h		;278e
	call p,0d878h		;2791
	call m,0e87ah		;2794
	call m,0e880h		;2797
	call p,0e87eh		;279a
	call pe,0f87ch		;279d
	call m,0f864h		;27a0
	call p,08082h		;27a3
	ret c			;27a6
	call p,0d884h		;27a7
	call m,0d802h		;27aa
	inc b			;27ad
	adc a,d			;27ae
	ret pe			;27af
	ret m			;27b0
	add a,(hl)			;27b1
	ret pe			;27b2
	nop			;27b3
	adc a,b			;27b4
	ret m			;27b5
	call m,08004h		;27b6
	ret c			;27b9
	dec c			;27ba
	sbc a,b			;27bb
	ret c			;27bc
	dec b			;27bd
	sub (hl)			;27be
	ret c			;27bf
	.DB 0fdh,094h	;sub iyh		;27c0
	ret pe			;27c2
	adc a,(iy-018h)		;27c3
	dec b			;27c6
	sub b			;27c7
	ret pe			;27c8
	dec c			;27c9
	sub d			;27ca
	ret m			;27cb
	.DB 0fdh,0aah,0f8h	;illegal sequence		;27cc
	dec b			;27cf
	adc a,h			;27d0
	add a,b			;27d1
	ret c			;27d2
	ld b,0a4h		;27d3
	ret c			;27d5
	ld c,0a6h		;27d6
	exx			;27d8
	ld d,0a8h		;27d9
	ret pe			;27db
	ld a,(bc)			;27dc
	and b			;27dd
	ret pe			;27de
	ld (bc),a			;27df
	sbc a,(hl)			;27e0
	ret pe			;27e1
	ld (de),a			;27e2
	and d			;27e3
	rst 30h			;27e4
	cp 0ach		;27e5
	ret m			;27e7
	ld b,09ah		;27e8
	ret m			;27ea
	ld c,09ch		;27eb
	add a,b			;27ed
	rst 10h			;27ee
	ld b,0a4h		;27ef
	rst 10h			;27f1
	ld c,0a6h		;27f2
l27f4h:
	ret c			;27f4
	ld d,0a8h		;27f5
	rst 20h			;27f7
	ld a,(bc)			;27f8
	and b			;27f9
	rst 20h			;27fa
	ld (bc),a			;27fb
	sbc a,(hl)			;27fc
	rst 20h			;27fd
	ld (de),a			;27fe
	and d			;27ff
l2800h:
	ret p			;2800
	inc bc			;2801
	jr nc,l27f4h		;2802
	dec bc			;2804
	ld (0fef6h),a		;2805
	xor h			;2808
	rst 30h			;2809
	ld b,09ah		;280a
	rst 30h			;280c
	ld c,09ch		;280d
	add a,b			;280f
	add a,b			;2810
	ret p			;2811
	cp 00eh		;2812
	add a,b			;2814
	ret p			;2815
	cp 0eah		;2816
	add a,b			;2818
	ret p			;2819
	rst 38h			;281a
	call pe,0e080h		;281b
	nop			;281e
	ret p			;281f
	ret p			;2820
	nop			;2821
	xor 080h		;2822
	ret po			;2824
	ld bc,0f0f4h		;2825
	ld bc,080f2h		;2828
	ret p			;282b
	jp m,0800eh		;282c
	ret p			;282f
	jp m,080eah		;2830
	ret p			;2833
	ld sp,hl			;2834
	call pe,0e080h		;2835
	ret m			;2838
	ret p			;2839
	ret p			;283a
	ret m			;283b
	xor 080h		;283c
	ret po			;283e
	rst 30h			;283f
	call p,0f7f0h		;2840
	jp p,0f080h		;2843
	rst 38h			;2846
	jp pe,0f080h		;2847
	nop			;284a
	call pe,0f080h		;284b
	rst 38h			;284e
	ret p			;284f
	ret p			;2850
	rlca			;2851
	xor 080h		;2852
	ret p			;2854
	nop			;2855
	call p,008f0h		;2856
	jp p,0f080h		;2859
	ld bc,0f0f8h		;285c
	add hl,bc			;285f
	or 080h		;2860
	ret p			;2862
	ld sp,hl			;2863
	jp pe,0f080h		;2864
	ret m			;2867
	call pe,0f080h		;2868
	jp m,0f0eeh		;286b
	jp p,080f0h		;286e
	ret p			;2871
	ret m			;2872
	jp p,0f0f0h		;2873
	call p,0f080h		;2876
	rst 30h			;2879
	or 0f0h		;287a
	rst 28h			;287c
	ret m			;287d
	add a,b			;287e
	ret p			;287f
	rst 38h			;2880
	jp pe,0f080h		;2881
	nop			;2884
	call pe,0f080h		;2885
	rst 38h			;2888
	ret p			;2889
	ret p			;288a
	rlca			;288b
	xor 080h		;288c
	ret pe			;288e
	nop			;288f
	call p,sub_08e8h		;2890
	jp p,004f8h		;2893
	or 080h		;2896
	ret po			;2898
	ex af,af'			;2899
	ret m			;289a
	ret pe			;289b
	nop			;289c
	call m,sub_10e8h		;289d
	cp 0f0h		;28a0
	ex af,af'			;28a2
	jp m,0f080h		;28a3
	jp m,080eah		;28a6
	ret p			;28a9
	ret m			;28aa
	call pe,0f080h		;28ab
	ld sp,hl			;28ae
	xor 0f0h		;28af
	pop af			;28b1
	ret p			;28b2
	add a,b			;28b3
	ret pe			;28b4
	rst 30h			;28b5
	jp p,0efe8h		;28b6
	call p,0f3f8h		;28b9
	or 080h		;28bc
	ret po			;28be
	rst 28h			;28bf
	ret m			;28c0
	ret pe			;28c1
	rst 30h			;28c2
	cp 0e8h		;28c3
	rst 20h			;28c5
	call m,0eff0h		;28c6
	jp m,0f080h		;28c9
	ei			;28cc
	call pe,0e880h		;28cd
	ei			;28d0
	call pe,0fef8h		;28d1
	xor 080h		;28d4
	ret c			;28d6
	call m,0e8f2h		;28d7
	rst 38h			;28da
	call p,0fff0h		;28db
	call p,0c880h		;28de
	call m,0d8f2h		;28e1
	rst 38h			;28e4
	call p,0ffe0h		;28e5
	call p,0fff0h		;28e8
	call p,0bc80h		;28eb
	push af			;28ee
	jp m,0fdbch		;28ef
	call m,0ffcch		;28f2
	cp 0dch		;28f5
	rst 38h			;28f7
	cp 0e8h		;28f8
	rst 38h			;28fa
	cp 0f0h		;28fb
	rst 38h			;28fd
	cp 080h		;28fe
	xor h			;2900
	push af			;2901
	jp m,0fdach		;2902
	call m,0ffbch		;2905
	cp 0cch		;2908
	rst 38h			;290a
	cp 0dch		;290b
	rst 38h			;290d
	cp 0e8h		;290e
	rst 38h			;2910
	cp 0f0h		;2911
	rst 38h			;2913
	cp 080h		;2914
	ret p			;2916
	.DB 0fdh,0eah,080h	;illegal sequence		;2917
	ret pe			;291a
	.DB 0fdh,0eah,0f8h	;illegal sequence		;291b
	jp m,080eeh		;291e
	ret c			;2921
	call m,0e8f0h		;2922
	jp m,0f0f4h		;2925
	jp m,080f4h		;2928
	ret z			;292b
	call m,0d8f0h		;292c
	jp m,0e0f4h		;292f
	jp m,0f0f4h		;2932
	jp m,080f4h		;2935
	cp h			;2938
	inc bc			;2939
	ret m			;293a
	cp h			;293b
	ei			;293c
	or 0cch		;293d
	ld sp,hl			;293f
	cp 0dch		;2940
	ld sp,hl			;2942
	cp 0e8h		;2943
	ld sp,hl			;2945
	cp 0f0h		;2946
	ld sp,hl			;2948
	cp 080h		;2949
	xor h			;294b
	inc bc			;294c
	ret m			;294d
	xor h			;294e
	ei			;294f
	or 0bch		;2950
	ld sp,hl			;2952
	cp 0cch		;2953
	ld sp,hl			;2955
	cp 0dch		;2956
	ld sp,hl			;2958
	cp 0e8h		;2959
	ld sp,hl			;295b
	cp 0f0h		;295c
	ld sp,hl			;295e
	cp 080h		;295f
	ret p			;2961
	cp 01ah		;2962
	add a,b			;2964
	ret p			;2965
	nop			;2966
	ld l,080h		;2967
l2969h:
	call p,sub_2c02h		;2969
	ret p			;296c
l296dh:
	nop			;296d
	ld d,0f0h		;296e
	dec b			;2970
	ld d,080h		;2971
	pop af			;2973
	dec b			;2974
	ld hl,(l01efh)		;2975
l2978h:
	jr l2969h		;2978
	add hl,bc			;297a
	jr l296dh		;297b
	cp 00eh		;297d
	ret p			;297f
	inc c			;2980
	ld c,080h		;2981
	xor 005h		;2983
	ld h,0eeh		;2985
	dec c			;2987
	jr z,l2978h		;2988
	ld bc,0ee14h		;298a
	ld de,0f014h		;298d
	cp 00eh		;2990
	ret p			;2992
	inc d			;2993
	ld c,080h		;2994
	ret p			;2996
	jp m,0801ah		;2997
	ret p			;299a
	ret m			;299b
	ret po			;299c
	add a,b			;299d
l299eh:
	call p,0e2f6h		;299e
	ret p			;29a1
l29a2h:
	ld sp,hl			;29a2
	ld d,0f0h		;29a3
	call p,08016h		;29a5
	pop af			;29a8
	di			;29a9
	call po,0f7efh		;29aa
	jr l299eh		;29ad
	rst 28h			;29af
	jr l29a2h		;29b0
	jp m,0f00eh		;29b2
	call pe,0800eh		;29b5
	xor 0f3h		;29b8
	ret pe			;29ba
	xor 0ebh		;29bb
	and 0eeh		;29bd
	rst 30h			;29bf
	inc d			;29c0
	xor 0e7h		;29c1
	inc d			;29c3
	ret p			;29c4
	jp m,0f00eh		;29c5
	call po,0800eh		;29c8
	ret p			;29cb
	cp 01ah		;29cc
l29ceh:
	add a,b			;29ce
	ret p			;29cf
	rst 38h			;29d0
	ld e,080h		;29d1
	ret p			;29d3
	ld bc,08024h		;29d4
	call pe,sub_2203h		;29d7
	ret pe			;29da
	ld bc,0f014h		;29db
	ld bc,0e814h		;29de
	dec b			;29e1
	inc d			;29e2
	ret p			;29e3
	dec b			;29e4
	inc d			;29e5
	add a,b			;29e6
	pop hl			;29e7
	dec b			;29e8
	inc e			;29e9
	pop af			;29ea
	dec b			;29eb
	jr nz,l29ceh		;29ec
	ld bc,0f014h		;29ee
	ld bc,0e014h		;29f1
	add hl,bc			;29f4
	inc d			;29f5
	ret p			;29f6
	add hl,bc			;29f7
	inc d			;29f8
	add a,b			;29f9
	ret p			;29fa
	jp m,0801ah		;29fb
	ret p			;29fe
	ret m			;29ff
l2a00h:
	ld e,080h		;2a00
	ret p			;2a02
	rst 30h			;2a03
	inc h			;2a04
	add a,b			;2a05
l2a06h:
	call pe,sub_22f5h		;2a06
	ret pe			;2a09
	rst 30h			;2a0a
	inc d			;2a0b
	ret p			;2a0c
	rst 30h			;2a0d
	inc d			;2a0e
	ret pe			;2a0f
	di			;2a10
	inc d			;2a11
	ret p			;2a12
	di			;2a13
	inc d			;2a14
	add a,b			;2a15
	pop hl			;2a16
	di			;2a17
	inc e			;2a18
	pop af			;2a19
	di			;2a1a
	jr nz,$-32		;2a1b
	rst 30h			;2a1d
	inc d			;2a1e
	ret p			;2a1f
	rst 30h			;2a20
	inc d			;2a21
	ret po			;2a22
	rst 28h			;2a23
	inc d			;2a24
	ret p			;2a25
	rst 28h			;2a26
	inc d			;2a27
	add a,b			;2a28
l2a29h:
	call pe,sub_10f8h		;2a29
	call pe,sub_1200h		;2a2c
	add a,b			;2a2f
l2a30h:
	ret p			;2a30
	dec b			;2a31
	sbc a,h			;2a32
	ret p			;2a33
	di			;2a34
	sub (hl)			;2a35
	ret p			;2a36
	nop			;2a37
	sbc a,d			;2a38
	ret p			;2a39
	ret m			;2a3a
	sbc a,b			;2a3b
	ret pe			;2a3c
	dec b			;2a3d
	sub h			;2a3e
	ret pe			;2a3f
	di			;2a40
	adc a,(hl)			;2a41
	ret pe			;2a42
	nop			;2a43
	sub d			;2a44
	ret pe			;2a45
	ret m			;2a46
	sub b			;2a47
	add a,b			;2a48
	ret p			;2a49
	ex af,af'			;2a4a
	sbc a,h			;2a4b
	ret p			;2a4c
	ret p			;2a4d
	sub (hl)			;2a4e
	ret p			;2a4f
	nop			;2a50
	sbc a,d			;2a51
	ret p			;2a52
	ret m			;2a53
	sbc a,b			;2a54
	ret po			;2a55
	ex af,af'			;2a56
	sub h			;2a57
	ret po			;2a58
	ret p			;2a59
	adc a,(hl)			;2a5a
	ret po			;2a5b
	nop			;2a5c
	sub d			;2a5d
	ret po			;2a5e
	ret m			;2a5f
	sub b			;2a60
	add a,b			;2a61
l2a62h:
	ret m			;2a62
	inc c			;2a63
	ld h,(hl)			;2a64
	ret m			;2a65
	inc b			;2a66
	ld l,b			;2a67
	ret m			;2a68
	nop			;2a69
	ld l,d			;2a6a
	ret m			;2a6b
	call m,0f86ch		;2a6c
	call p,0f86eh		;2a6f
	call pe,0e870h		;2a72
	inc c			;2a75
	ld (hl),d			;2a76
	ret pe			;2a77
	inc b			;2a78
	ld (hl),h			;2a79
	ret pe			;2a7a
	nop			;2a7b
	halt			;2a7c
	ret pe			;2a7d
	call m,0e878h		;2a7e
	call p,0e87ah		;2a81
	call pe,0e07ch		;2a84
	inc c			;2a87
	ld a,(hl)			;2a88
	ret po			;2a89
	inc b			;2a8a
	add a,b			;2a8b
	ret po			;2a8c
	nop			;2a8d
	add a,d			;2a8e
	ret po			;2a8f
	call m,0e084h		;2a90
	call p,0e086h		;2a93
	call pe,08088h		;2a96
l2a99h:
	ret m			;2a99
	djnz l2b02h		;2a9a
	ret m			;2a9c
	ex af,af'			;2a9d
	ld l,b			;2a9e
	ret m			;2a9f
	nop			;2aa0
	ld l,d			;2aa1
	ret m			;2aa2
	ret m			;2aa3
	ld l,h			;2aa4
	ret m			;2aa5
	ret p			;2aa6
	ld l,(hl)			;2aa7
	ret m			;2aa8
	ret pe			;2aa9
	ld (hl),b			;2aaa
	ret pe			;2aab
	djnz l2b20h		;2aac
	ret pe			;2aae
	ex af,af'			;2aaf
	ld (hl),h			;2ab0
	ret pe			;2ab1
	nop			;2ab2
	halt			;2ab3
	ret pe			;2ab4
	ret m			;2ab5
	ld a,b			;2ab6
	ret pe			;2ab7
	ret p			;2ab8
	ld a,d			;2ab9
	ret pe			;2aba
	ret pe			;2abb
	ld a,h			;2abc
	ret c			;2abd
	djnz l2b3eh		;2abe
	ret c			;2ac0
	ex af,af'			;2ac1
	add a,b			;2ac2
	ret c			;2ac3
	nop			;2ac4
	add a,d			;2ac5
	ret c			;2ac6
	ret m			;2ac7
	add a,h			;2ac8
	ret c			;2ac9
	ret p			;2aca
	add a,(hl)			;2acb
	ret c			;2acc
	ret pe			;2acd
	adc a,b			;2ace
	add a,b			;2acf
	bit 7,(ix+001h)		;2ad0
	jr nz,l2b4dh		;2ad4
	ld a,(0c073h)		;2ad6
	rlca			;2ad9
	rlca			;2ada
	rlca			;2adb
	rlca			;2adc
	and 07fh		;2add
	sub 040h		;2adf
	ld e,a			;2ae1
	ld a,r		;2ae2
	and 03fh		;2ae4
	sub 020h		;2ae6
	add a,e			;2ae8
	ld (ix+008h),a		;2ae9
	ld e,a			;2aec
	ld a,(0c4c0h)		;2aed
	cp 002h		;2af0
	ld a,e			;2af2
	jr c,l2af7h		;2af3
	neg		;2af5
l2af7h:
	ld (ix+013h),a		;2af7
	ld (ix+009h),01ch		;2afa
	ld (ix+00bh),006h		;2afe
l2b02h:
	ld (ix+00ch),001h		;2b02
	ld (ix+014h),008h		;2b06
	xor a			;2b0a
	ld (ix+018h),a		;2b0b
	ld (ix+019h),a		;2b0e
	ld b,a			;2b11
	ld c,a			;2b12
	ld a,(0c31bh)		;2b13
	or a			;2b16
	jr nz,l2b47h		;2b17
	ld a,(0c31ah)		;2b19
	cp 0c8h		;2b1c
	jr nc,l2b47h		;2b1e
l2b20h:
	ld (ix+019h),001h		;2b20
	ld hl,02d3eh		;2b24
	ld a,(0c013h)		;2b27
l2b2ah:
	cp 07eh		;2b2a
	jr nc,l2b3ch		;2b2c
	inc hl			;2b2e
	inc hl			;2b2f
	cp 054h		;2b30
	jr nc,l2b3ch		;2b32
	inc hl			;2b34
	inc hl			;2b35
	cp 02ah		;2b36
	jr nc,l2b3ch		;2b38
	inc hl			;2b3a
	inc hl			;2b3b
l2b3ch:
	ld a,r		;2b3c
l2b3eh:
	and (hl)			;2b3e
	inc hl			;2b3f
	add a,(hl)			;2b40
	ld (ix+008h),a		;2b41
	ld bc,08600h		;2b44
l2b47h:
	ld (ix+003h),b		;2b47
	ld (ix+004h),c		;2b4a
l2b4dh:
	ld c,000h		;2b4d
	ld a,(ix+003h)		;2b4f
	ld b,a			;2b52
	cp 041h		;2b53
	jr c,l2b5dh		;2b55
	cp 05fh		;2b57
	jr nc,l2b5dh		;2b59
	ld c,001h		;2b5b
l2b5dh:
	ld a,(ix+018h)		;2b5d
	xor c			;2b60
	jr z,l2b86h		;2b61
	ld a,c			;2b63
	or a			;2b64
	ld hl,l4088h		;2b65
	jr nz,l2b6dh		;2b68
	ld hl,l40a2h		;2b6a
l2b6dh:
	ld (0c101h),hl		;2b6d
	ld (ix+018h),c		;2b70
	ld a,b			;2b73
	cp 05fh		;2b74
	jr c,l2b86h		;2b76
	ld a,(ix+019h)		;2b78
	or a			;2b7b
	jr nz,l2b86h		;2b7c
	ld a,006h		;2b7e
	ld (ix+019h),a		;2b80
	call sub_35c6h		;2b83
l2b86h:
	ld a,(ix+003h)		;2b86
	call 04cf4h		;2b89
	cp 0ffh		;2b8c
	jr nz,l2b95h		;2b8e
	ld b,(ix+00ch)		;2b90
	jr l2ba0h		;2b93
l2b95h:
	ld b,a			;2b95
	ld (ix+00ch),a		;2b96
	add a,a			;2b99
	ld c,a			;2b9a
	add a,a			;2b9b
	add a,c			;2b9c
	ld (ix+00bh),a		;2b9d
l2ba0h:
	ld a,(0c4c0h)		;2ba0
	or a			;2ba3
	jr nz,l2bd1h		;2ba4
	dec (ix+014h)		;2ba6
	jr nz,l2bd1h		;2ba9
	ld (ix+014h),008h		;2bab
	ld c,01dh		;2baf
	ld a,b			;2bb1
	cp 001h		;2bb2
	jr z,l2bc3h		;2bb4
	ld c,01bh		;2bb6
	ld a,(0c2f0h)		;2bb8
	and 00fh		;2bbb
	cp 002h		;2bbd
	jr nz,l2bc3h		;2bbf
	ld c,019h		;2bc1
l2bc3h:
	ld a,(ix+009h)		;2bc3
	cp c			;2bc6
	jr z,l2bd1h		;2bc7
	inc a			;2bc9
	jr c,l2bceh		;2bca
	dec a			;2bcc
	dec a			;2bcd
l2bceh:
	ld (ix+009h),a		;2bce
l2bd1h:
	ld a,(ix+003h)		;2bd1
	cp 010h		;2bd4
	jr c,l2c12h		;2bd6
	cp 050h		;2bd8
	jr nc,l2c12h		;2bda
	ld a,b			;2bdc
	dec a			;2bdd
	jr z,l2bf7h		;2bde
	ld b,a			;2be0
	ld a,(0c010h)		;2be1
	cp 002h		;2be4
	jr c,l2bf7h		;2be6
	ld a,(ix+008h)		;2be8
	sub b			;2beb
	cp 060h		;2bec
	jr c,l2bf4h		;2bee
	cp 0a0h		;2bf0
	jr c,l2bf7h		;2bf2
l2bf4h:
	ld (ix+008h),a		;2bf4
l2bf7h:
	ld b,(ix+008h)		;2bf7
	ld a,(ix+013h)		;2bfa
	cp b			;2bfd
	jr z,l2c12h		;2bfe
	ld e,0ffh		;2c00
sub_2c02h:
	jr c,l2c06h		;2c02
	ld e,001h		;2c04
l2c06h:
	xor b			;2c06
	ld a,e			;2c07
	jp p,l2c0eh		;2c08
	ld a,e			;2c0b
	neg		;2c0c
l2c0eh:
	add a,b			;2c0e
	ld (ix+008h),a		;2c0f
l2c12h:
	ld (ix+001h),080h		;2c12
	ld a,(0c31bh)		;2c16
	rrca			;2c19
	ld a,(0c31ah)		;2c1a
	rra			;2c1d
	or a			;2c1e
	rra			;2c1f
	or a			;2c20
	rra			;2c21
	ld c,(ix+003h)		;2c22
	ld b,000h		;2c25
	ld hl,l2dceh		;2c27
	add hl,bc			;2c2a
l2c2bh:
	ld h,(hl)			;2c2b
	ld c,000h		;2c2c
	sub (ix+009h)		;2c2e
	jr nc,l2c36h		;2c31
	neg		;2c33
	inc c			;2c35
l2c36h:
	ld e,a			;2c36
	call sub_0623h		;2c37
	dec c			;2c3a
	jr nz,l2c44h		;2c3b
	ld a,l			;2c3d
	cpl			;2c3e
	ld l,a			;2c3f
	ld a,h			;2c40
	cpl			;2c41
	ld h,a			;2c42
	inc hl			;2c43
l2c44h:
	ld a,l			;2c44
	add a,(ix+004h)		;2c45
	ld (ix+004h),a		;2c48
	ld a,h			;2c4b
	adc a,(ix+003h)		;2c4c
	ld (ix+003h),a		;2c4f
	ld c,a			;2c52
	add a,05fh		;2c53
	ld (ix+002h),a		;2c55
	ld a,c			;2c58
	cp 087h		;2c59
	jp nc,l2558h		;2c5b
	cp 060h		;2c5e
	jp nc,l2cebh		;2c60
	ld b,000h		;2c63
	ld hl,l2d46h		;2c65
	add hl,bc			;2c68
	ld h,(hl)			;2c69
	ld c,000h		;2c6a
	ld a,(ix+008h)		;2c6c
	or a			;2c6f
	jp p,l2c76h		;2c70
	inc c			;2c73
	neg		;2c74
l2c76h:
	ld e,a			;2c76
	call sub_0623h		;2c77
	ld a,h			;2c7a
	ld b,000h		;2c7b
	dec c			;2c7d
	jr nz,l2c88h		;2c7e
	cpl			;2c80
	ld h,a			;2c81
	ld a,l			;2c82
	cpl			;2c83
	ld l,a			;2c84
	inc hl			;2c85
	ld a,h			;2c86
	dec b			;2c87
l2c88h:
	add a,07ch		;2c88
	ld (ix+006h),a		;2c8a
	ld a,000h		;2c8d
	adc a,b			;2c8f
	ld (ix+007h),a		;2c90
	ld c,(ix+003h)		;2c93
	ld b,000h		;2c96
	ld hl,0c55fh		;2c98
	add hl,bc			;2c9b
	ld a,(hl)			;2c9c
	ld e,000h		;2c9d
	or a			;2c9f
	jp p,l2ca4h		;2ca0
	dec e			;2ca3
l2ca4h:
	add a,(ix+006h)		;2ca4
	ld (ix+006h),a		;2ca7
	ld a,e			;2caa
	adc a,(ix+007h)		;2cab
	ld (ix+007h),a		;2cae
	ld hl,l2e56h		;2cb1
	add hl,bc			;2cb4
	ld a,(hl)			;2cb5
	add a,007h		;2cb6
	add a,(ix+00bh)		;2cb8
	ld (ix+00ah),a		;2cbb
	ld a,(ix+007h)		;2cbe
	or a			;2cc1
	ret nz			;2cc2
	ld a,(ix+003h)		;2cc3
	cp 04ch		;2cc6
	ret c			;2cc8
	cp 064h		;2cc9
	ret nc			;2ccb
	ld a,(ix+00ch)		;2ccc
	add a,a			;2ccf
	ld c,a			;2cd0
	ld b,000h		;2cd1
	ld hl,l2d38h		;2cd3
	add hl,bc			;2cd6
	ld a,(ix+006h)		;2cd7
	add a,(hl)			;2cda
	ld b,a			;2cdb
	inc hl			;2cdc
	add a,(hl)			;2cdd
	ld hl,0c310h		;2cde
	cp (hl)			;2ce1
	ret c			;2ce2
	inc hl			;2ce3
	ld a,b			;2ce4
	cp (hl)			;2ce5
	ret nc			;2ce6
	inc hl			;2ce7
	ld (hl),001h		;2ce8
	ret			;2cea
l2cebh:
	ld b,000h		;2ceb
	ld hl,l2d46h		;2ced
	add hl,bc			;2cf0
	ld h,(hl)			;2cf1
	ld c,000h		;2cf2
	ld a,(ix+008h)		;2cf4
	or a			;2cf7
	jp p,l2cfeh		;2cf8
	inc c			;2cfb
	neg		;2cfc
l2cfeh:
	ld e,a			;2cfe
	push de			;2cff
	call sub_0623h		;2d00
	pop de			;2d03
	ld a,h			;2d04
	add a,e			;2d05
	ld b,000h		;2d06
	dec c			;2d08
	jr nz,l2d13h		;2d09
	cpl			;2d0b
	ld h,a			;2d0c
	ld a,l			;2d0d
	cpl			;2d0e
	ld l,a			;2d0f
	inc hl			;2d10
	ld a,h			;2d11
	dec b			;2d12
l2d13h:
	add a,07ch		;2d13
	ld (ix+006h),a		;2d15
	ld a,000h		;2d18
	adc a,b			;2d1a
	ld (ix+007h),a		;2d1b
	ld c,(ix+003h)		;2d1e
	ld b,000h		;2d21
	ld hl,0c55fh		;2d23
	add hl,bc			;2d26
	ld a,(hl)			;2d27
	ld d,a			;2d28
	ld e,000h		;2d29
l2d2bh:
	ld a,(0c013h)		;2d2b
	cp 054h		;2d2e
l2d30h:
	ld a,d			;2d30
	jp nc,l2ca4h		;2d31
	dec e			;2d34
	jp l2ca4h		;2d35
l2d38h:
	call pe,0f810h		;2d38
	djnz l2d41h		;2d3b
	djnz l2d7eh		;2d3d
	nop			;2d3f
	rra			;2d40
l2d41h:
	jr nz,l2d62h		;2d41
	pop bc			;2d43
	ccf			;2d44
	pop bc			;2d45
l2d46h:
	inc c			;2d46
	ld c,011h		;2d47
	inc de			;2d49
	dec d			;2d4a
	jr l2d67h		;2d4b
	inc e			;2d4d
	rra			;2d4e
	inc h			;2d4f
	ld h,028h		;2d50
	dec hl			;2d52
	dec l			;2d53
	cpl			;2d54
	ld (l3734h),a		;2d55
	add hl,sp			;2d58
	dec sp			;2d59
	ld b,b			;2d5a
	ld b,d			;2d5b
	ld b,l			;2d5c
	ld b,a			;2d5d
	ld c,c			;2d5e
	ld c,h			;2d5f
	ld c,(hl)			;2d60
	ld d,c			;2d61
l2d62h:
	ld d,e			;2d62
	ld d,l			;2d63
	ld e,b			;2d64
	ld e,h			;2d65
	ld e,a			;2d66
l2d67h:
	ld h,c			;2d67
	ld h,h			;2d68
	ld h,(hl)			;2d69
	ld l,b			;2d6a
	ld l,e			;2d6b
	ld l,l			;2d6c
	ld l,a			;2d6d
	ld (hl),d			;2d6e
	ld (hl),h			;2d6f
	ld a,c			;2d70
	ld a,e			;2d71
	ld a,(hl)			;2d72
	add a,b			;2d73
	add a,d			;2d74
	add a,l			;2d75
	add a,a			;2d76
	adc a,c			;2d77
	adc a,h			;2d78
	adc a,(hl)			;2d79
	sub c			;2d7a
	sub l			;2d7b
	sbc a,b			;2d7c
	sbc a,d			;2d7d
l2d7eh:
	sbc a,h			;2d7e
	sbc a,a			;2d7f
	and c			;2d80
	and h			;2d81
	and (hl)			;2d82
	xor b			;2d83
	xor e			;2d84
	xor l			;2d85
	or d			;2d86
	or h			;2d87
	or a			;2d88
	cp c			;2d89
	cp e			;2d8a
	cp (hl)			;2d8b
	ret nz			;2d8c
	jp nz,0c7c5h		;2d8d
	ret			;2d90
	adc a,0d1h		;2d91
	out (0d5h),a		;2d93
	ret c			;2d95
	jp c,0dfdch		;2d96
	pop hl			;2d99
	call po,0ebe6h		;2d9a
	.DB 0edh;next byte illegal after ed		;2d9d
	rst 28h			;2d9e
	jp p,0f7f4h		;2d9f
	ld sp,hl			;2da2
	ei			;2da3
	cp 0ffh		;2da4
	ld (bc),a			;2da6
	rlca			;2da7
	add hl,bc			;2da8
	inc c			;2da9
	ld c,011h		;2daa
	inc de			;2dac
	dec d			;2dad
	jr l2dcah		;2dae
	inc e			;2db0
	rra			;2db1
	inc h			;2db2
	ld h,028h		;2db3
	dec hl			;2db5
	dec l			;2db6
	cpl			;2db7
	ld (l3734h),a		;2db8
	add hl,sp			;2dbb
	dec sp			;2dbc
	ld b,b			;2dbd
	ld b,d			;2dbe
	ld b,l			;2dbf
	ld b,a			;2dc0
	ld c,c			;2dc1
	ld c,h			;2dc2
	ld c,(hl)			;2dc3
	ld d,c			;2dc4
	ld d,e			;2dc5
	ld d,l			;2dc6
	ld e,b			;2dc7
	ld e,h			;2dc8
	ld e,a			;2dc9
l2dcah:
	ld h,c			;2dca
	ld h,h			;2dcb
	ld h,(hl)			;2dcc
	ld l,b			;2dcd
l2dceh:
	ld bc,l0302h		;2dce
	inc b			;2dd1
	dec b			;2dd2
	ld b,007h		;2dd3
	ex af,af'			;2dd5
	add hl,bc			;2dd6
	ld a,(bc)			;2dd7
	dec bc			;2dd8
	dec bc			;2dd9
	inc c			;2dda
	dec c			;2ddb
	ld c,00fh		;2ddc
	djnz l2df1h		;2dde
	ld (de),a			;2de0
	ld (de),a			;2de1
	inc de			;2de2
	inc d			;2de3
	dec d			;2de4
	ld d,017h		;2de5
	rla			;2de7
	jr $+25		;2de8
	ld a,(de)			;2dea
	dec de			;2deb
	dec de			;2dec
	inc e			;2ded
	dec e			;2dee
	ld e,01eh		;2def
l2df1h:
	rra			;2df1
	jr nz,$+32		;2df2
	ld hl,l2222h		;2df4
	inc hl			;2df7
	inc h			;2df8
	inc h			;2df9
	dec h			;2dfa
	ld h,026h		;2dfb
	daa			;2dfd
	jr z,$+40		;2dfe
l2e00h:
	add hl,hl			;2e00
	add hl,hl			;2e01
	ld hl,(l2b2ah+1)		;2e02
	inc l			;2e05
	inc l			;2e06
	dec l			;2e07
	dec l			;2e08
	ld l,02eh		;2e09
	cpl			;2e0b
	cpl			;2e0c
	jr nc,l2e3fh		;2e0d
	ld sp,l3231h		;2e0f
	ld (l3333h),a		;2e12
	inc (hl)			;2e15
	inc (hl)			;2e16
	inc (hl)			;2e17
	dec (hl)			;2e18
	dec (hl)			;2e19
	ld (hl),036h		;2e1a
	ld (hl),037h		;2e1c
	scf			;2e1e
	scf			;2e1f
	jr c,l2e5ah		;2e20
	jr c,l2e5dh		;2e22
	add hl,sp			;2e24
	add hl,sp			;2e25
	ld a,(03a3ah)		;2e26
	dec sp			;2e29
	dec sp			;2e2a
	dec sp			;2e2b
	dec sp			;2e2c
	inc a			;2e2d
	inc a			;2e2e
l2e2fh:
	inc a			;2e2f
l2e30h:
	inc a			;2e30
	inc a			;2e31
	inc a			;2e32
	inc a			;2e33
	inc a			;2e34
	inc a			;2e35
	inc a			;2e36
	inc a			;2e37
	inc a			;2e38
	inc a			;2e39
	inc a			;2e3a
	inc a			;2e3b
	inc a			;2e3c
	inc a			;2e3d
	inc a			;2e3e
l2e3fh:
	inc a			;2e3f
	inc a			;2e40
	inc a			;2e41
	inc a			;2e42
	inc a			;2e43
	inc a			;2e44
	inc a			;2e45
	inc a			;2e46
	inc a			;2e47
	inc a			;2e48
	inc a			;2e49
	inc a			;2e4a
	inc a			;2e4b
	inc a			;2e4c
	inc a			;2e4d
	inc a			;2e4e
	inc a			;2e4f
	inc a			;2e50
	inc a			;2e51
	inc a			;2e52
	inc a			;2e53
	inc a			;2e54
	inc a			;2e55
l2e56h:
	nop			;2e56
	nop			;2e57
	nop			;2e58
	nop			;2e59
l2e5ah:
	ld bc,l0100h+1		;2e5a
l2e5dh:
	ld bc,l0100h+1		;2e5d
	ld (bc),a			;2e60
	ld (bc),a			;2e61
	ld (bc),a			;2e62
	ld (bc),a			;2e63
	ld (bc),a			;2e64
	ld (bc),a			;2e65
	ld (bc),a			;2e66
	ld (bc),a			;2e67
	ld (bc),a			;2e68
	ld (bc),a			;2e69
	ld (bc),a			;2e6a
	inc bc			;2e6b
	inc bc			;2e6c
	inc bc			;2e6d
	inc bc			;2e6e
	inc bc			;2e6f
	inc bc			;2e70
	inc bc			;2e71
	inc bc			;2e72
	inc bc			;2e73
	inc bc			;2e74
	inc bc			;2e75
	inc bc			;2e76
	inc bc			;2e77
	inc bc			;2e78
	inc bc			;2e79
	inc b			;2e7a
	inc b			;2e7b
	inc b			;2e7c
	inc b			;2e7d
	inc b			;2e7e
	inc b			;2e7f
	inc b			;2e80
	inc b			;2e81
	inc b			;2e82
	inc b			;2e83
	inc b			;2e84
	inc b			;2e85
	inc b			;2e86
	inc b			;2e87
	inc b			;2e88
	inc b			;2e89
	inc b			;2e8a
	inc b			;2e8b
	inc b			;2e8c
	inc b			;2e8d
	inc b			;2e8e
	inc b			;2e8f
	inc b			;2e90
	inc b			;2e91
	inc b			;2e92
	inc b			;2e93
	dec b			;2e94
	dec b			;2e95
	dec b			;2e96
	dec b			;2e97
	dec b			;2e98
	dec b			;2e99
	dec b			;2e9a
	dec b			;2e9b
	dec b			;2e9c
	dec b			;2e9d
	dec b			;2e9e
	dec b			;2e9f
	dec b			;2ea0
	dec b			;2ea1
	dec b			;2ea2
	dec b			;2ea3
	dec b			;2ea4
	dec b			;2ea5
	dec b			;2ea6
	dec b			;2ea7
	dec b			;2ea8
	dec b			;2ea9
	dec b			;2eaa
	dec b			;2eab
	dec b			;2eac
	dec b			;2ead
	dec b			;2eae
	dec b			;2eaf
	dec b			;2eb0
	dec b			;2eb1
	dec b			;2eb2
	dec b			;2eb3
	dec b			;2eb4
	dec b			;2eb5
	dec b			;2eb6
	dec b			;2eb7
	dec b			;2eb8
	dec b			;2eb9
	dec b			;2eba
	dec b			;2ebb
	dec b			;2ebc
	dec b			;2ebd
	dec b			;2ebe
	dec b			;2ebf
	dec b			;2ec0
	dec b			;2ec1
	dec b			;2ec2
	dec b			;2ec3
	dec b			;2ec4
	dec b			;2ec5
	dec b			;2ec6
	dec b			;2ec7
	dec b			;2ec8
	dec b			;2ec9
	dec b			;2eca
	dec b			;2ecb
	dec b			;2ecc
	dec b			;2ecd
	dec b			;2ece
	dec b			;2ecf
	dec b			;2ed0
	dec b			;2ed1
	dec b			;2ed2
	dec b			;2ed3
	dec b			;2ed4
	dec b			;2ed5
	dec b			;2ed6
	dec b			;2ed7
	dec b			;2ed8
	dec b			;2ed9
	dec b			;2eda
	dec b			;2edb
	dec b			;2edc
	dec b			;2edd
l2edeh:
	inc b			;2ede
	dec b			;2edf
	ld b,007h		;2ee0
	ex af,af'			;2ee2
	ld a,(bc)			;2ee3
	dec bc			;2ee4
	inc c			;2ee5
	dec c			;2ee6
	ld c,010h		;2ee7
	ld de,l1312h		;2ee9
	inc d			;2eec
	ld d,017h		;2eed
	jr l2f0ah		;2eef
	dec de			;2ef1
	inc e			;2ef2
	dec e			;2ef3
	ld e,01fh		;2ef4
	ld hl,l2322h		;2ef6
	inc h			;2ef9
	dec h			;2efa
	daa			;2efb
	jr z,l2f27h		;2efc
	ld hl,(l2d2bh)		;2efe
	ld l,02fh		;2f01
	jr nc,l2f37h		;2f03
	inc sp			;2f05
	inc (hl)			;2f06
	dec (hl)			;2f07
	ld (hl),038h		;2f08
l2f0ah:
	add hl,sp			;2f0a
	ld a,(03c3bh)		;2f0b
	ld a,03fh		;2f0e
	ld b,b			;2f10
	ld b,c			;2f11
	ld b,d			;2f12
	ld b,h			;2f13
	ld b,l			;2f14
	ld b,(hl)			;2f15
	ld b,a			;2f16
	ld c,c			;2f17
	ld c,d			;2f18
	ld c,e			;2f19
	ld c,h			;2f1a
	ld c,l			;2f1b
	ld c,a			;2f1c
	ld d,b			;2f1d
	ld d,c			;2f1e
	ld d,d			;2f1f
	ld d,e			;2f20
	ld d,l			;2f21
	ld d,(hl)			;2f22
	ld d,a			;2f23
	ld e,b			;2f24
	ld e,c			;2f25
	ld e,e			;2f26
l2f27h:
	ld e,h			;2f27
	ld e,l			;2f28
	ld e,(hl)			;2f29
	ld h,b			;2f2a
	ld h,c			;2f2b
	ld h,d			;2f2c
	ld h,e			;2f2d
	ld h,h			;2f2e
	ld h,(hl)			;2f2f
l2f30h:
	ld h,a			;2f30
l2f31h:
	ld l,b			;2f31
	ld l,c			;2f32
	ld l,d			;2f33
	ld l,h			;2f34
	ld l,l			;2f35
	ld l,(hl)			;2f36
l2f37h:
	ld l,a			;2f37
	ld (hl),b			;2f38
	ld (hl),d			;2f39
	ld (hl),e			;2f3a
	ld (hl),h			;2f3b
	ld (hl),l			;2f3c
	ld (hl),a			;2f3d
	ld a,b			;2f3e
	ld a,c			;2f3f
	ld a,d			;2f40
	ld a,e			;2f41
	ld a,l			;2f42
	ld a,(hl)			;2f43
	ld a,a			;2f44
	add a,b			;2f45
	add a,c			;2f46
	add a,e			;2f47
	add a,h			;2f48
	add a,l			;2f49
	add a,(hl)			;2f4a
	add a,a			;2f4b
	adc a,c			;2f4c
	adc a,d			;2f4d
	adc a,e			;2f4e
	adc a,h			;2f4f
	adc a,(hl)			;2f50
	adc a,a			;2f51
	sub b			;2f52
	sub c			;2f53
	sub d			;2f54
	sub h			;2f55
	sub l			;2f56
	sub (hl)			;2f57
	sub a			;2f58
	sbc a,b			;2f59
	sbc a,d			;2f5a
	sbc a,e			;2f5b
	sbc a,h			;2f5c
	sbc a,l			;2f5d
	sbc a,(hl)			;2f5e
	and b			;2f5f
	and c			;2f60
	and d			;2f61
	and e			;2f62
	and l			;2f63
	and (hl)			;2f64
	and a			;2f65
sub_2f66h:
	ld hl,0c066h		;2f66
	bit 0,(hl)		;2f69
	jp nz,l2ff5h		;2f6b
	ld hl,0c067h		;2f6e
	ld a,(hl)			;2f71
	or a			;2f72
	jr z,l2f77h		;2f73
	dec (hl)			;2f75
	ret			;2f76
l2f77h:
	ld hl,0c044h		;2f77
	dec (hl)			;2f7a
	jr nz,l2faeh		;2f7b
	ld b,003h		;2f7d
	ld a,(0c4c0h)		;2f7f
	or a			;2f82
	jr nz,l2f86h		;2f83
	dec b			;2f85
l2f86h:
	ld a,(0c000h)		;2f86
	and 004h		;2f89
	jr z,l2f8fh		;2f8b
	ld b,003h		;2f8d
l2f8fh:
	ld de,l30d3h		;2f8f
	ld hl,(0c31ah)		;2f92
	srl h		;2f95
	rr l		;2f97
	srl l		;2f99
	srl l		;2f9b
	add hl,de			;2f9d
	ld a,(hl)			;2f9e
	ld (0c044h),a		;2f9f
	ld a,b			;2fa2
	or a			;2fa3
	jr z,l2faeh		;2fa4
	ld hl,0c320h		;2fa6
	ld c,002h		;2fa9
	call sub_3040h		;2fab
l2faeh:
	ld hl,0c06ch		;2fae
	ld a,(hl)			;2fb1
	or a			;2fb2
	jp nz,l3011h		;2fb3
	inc hl			;2fb6
	ld a,(hl)			;2fb7
	or a			;2fb8
	jp nz,l3015h		;2fb9
	ld hl,(0c06fh)		;2fbc
	ld de,(0c31ah)		;2fbf
	add hl,de			;2fc3
	ld a,h			;2fc4
	sub 01bh		;2fc5
	jr nc,l2fcdh		;2fc7
	ld (0c06fh),hl		;2fc9
	ret			;2fcc
l2fcdh:
	ld h,a			;2fcd
	ld (0c06fh),hl		;2fce
	ld b,002h		;2fd1
	ld hl,(0c060h)		;2fd3
	ld a,l			;2fd6
	or a			;2fd7
	jr nz,l2fdeh		;2fd8
	ld a,h			;2fda
	cp 008h		;2fdb
	ret c			;2fdd
l2fdeh:
	ld hl,0c380h		;2fde
	ld a,(0c065h)		;2fe1
	inc a			;2fe4
	and 001h		;2fe5
	add a,003h		;2fe7
l2fe9h:
	ld c,a			;2fe9
	call sub_3040h		;2fea
	ret nc			;2fed
	ld a,c			;2fee
	sub 003h		;2fef
	ld (0c065h),a		;2ff1
	ret			;2ff4
l2ff5h:
	res 0,(hl)		;2ff5
	ld hl,0c380h		;2ff7
	ld c,005h		;2ffa
	ld b,004h		;2ffc
	call sub_3040h		;2ffe
	ld hl,0c3c0h		;3001
	ld c,006h		;3004
	ld b,003h		;3006
	call sub_3040h		;3008
	ld a,078h		;300b
	ld (0c067h),a		;300d
	ret			;3010
l3011h:
	ld c,009h		;3011
	jr l3017h		;3013
l3015h:
	ld c,00ah		;3015
l3017h:
	push hl			;3017
	ld hl,(0c06fh)		;3018
	ld de,(0c31ah)		;301b
	add hl,de			;301f
	ld a,h			;3020
	sub 01bh		;3021
	jr nc,l302ah		;3023
	ld (0c06fh),hl		;3025
	pop hl			;3028
	ret			;3029
l302ah:
	ld h,a			;302a
	ld (0c06fh),hl		;302b
	pop hl			;302e
	ld de,0c3c0h		;302f
	ld a,(de)			;3032
	or a			;3033
	jr z,l303ch		;3034
	ld de,0c3e0h		;3036
	ld a,(de)			;3039
	or a			;303a
	ret nz			;303b
l303ch:
	ld a,c			;303c
	ld (de),a			;303d
	dec (hl)			;303e
	ret			;303f
sub_3040h:
	ld de,l0020h		;3040
l3043h:
	ld a,(hl)			;3043
	or a			;3044
	jp z,l304dh		;3045
	add hl,de			;3048
	djnz l3043h		;3049
	and a			;304b
	ret			;304c
l304dh:
	ld (hl),c			;304d
	scf			;304e
	ret			;304f
	ld e,b			;3050
	jr nc,$-127		;3051
	jr nc,$-86		;3053
	jr nc,l302ah		;3055
	jr nc,l305ah		;3057
	rst 38h			;3059
l305ah:
	rst 38h			;305a
	rst 38h			;305b
	rst 38h			;305c
	rst 38h			;305d
	rst 38h			;305e
	rst 38h			;305f
	rst 38h			;3060
	rst 38h			;3061
	rst 38h			;3062
	rst 38h			;3063
	rst 38h			;3064
	rst 38h			;3065
	rst 38h			;3066
	rst 38h			;3067
	rst 38h			;3068
	rst 38h			;3069
	rst 38h			;306a
	rst 38h			;306b
	rst 38h			;306c
	rst 38h			;306d
	rst 38h			;306e
	rst 38h			;306f
	rst 38h			;3070
	rst 38h			;3071
	rst 38h			;3072
	rst 38h			;3073
	rst 38h			;3074
	rst 38h			;3075
	rst 38h			;3076
	rst 38h			;3077
	rst 38h			;3078
	rst 38h			;3079
	rst 38h			;307a
	rst 38h			;307b
	rst 38h			;307c
	rst 38h			;307d
	rst 38h			;307e
	rst 38h			;307f
	rst 38h			;3080
	ld (bc),a			;3081
	ld a,b			;3082
	ld a,b			;3083
	ld a,b			;3084
	ld a,b			;3085
	ld a,b			;3086
	ld a,b			;3087
	ld a,b			;3088
	ld a,b			;3089
	ld a,b			;308a
	ld a,b			;308b
	ld a,b			;308c
	ld a,b			;308d
	ld a,b			;308e
	ld a,l			;308f
	add a,d			;3090
	add a,a			;3091
	adc a,h			;3092
	sub c			;3093
	sub (hl)			;3094
	sbc a,e			;3095
	and b			;3096
	and l			;3097
	xor d			;3098
	or h			;3099
	ret z			;309a
	rst 38h			;309b
	ret z			;309c
	or h			;309d
	and b			;309e
	adc a,h			;309f
	ld a,b			;30a0
	ld a,b			;30a1
	ld a,b			;30a2
	ld a,b			;30a3
	ld a,b			;30a4
	ld a,b			;30a5
	ld a,b			;30a6
	ld a,b			;30a7
	ld a,b			;30a8
	ld a,b			;30a9
	ld (bc),a			;30aa
	ld h,h			;30ab
	ld h,h			;30ac
	ld h,h			;30ad
	ld h,h			;30ae
	ld h,h			;30af
	ld h,h			;30b0
	ld h,h			;30b1
	ld h,h			;30b2
	ld h,h			;30b3
	ld h,h			;30b4
	ld h,h			;30b5
	ld h,h			;30b6
	ld h,h			;30b7
	ld l,c			;30b8
	ld l,(hl)			;30b9
	ld (hl),e			;30ba
	ld a,b			;30bb
	ld a,l			;30bc
	add a,d			;30bd
	add a,a			;30be
	adc a,h			;30bf
	sub c			;30c0
	sub (hl)			;30c1
	sbc a,e			;30c2
	and b			;30c3
	rst 38h			;30c4
	or h			;30c5
	ld a,b			;30c6
	adc a,h			;30c7
	ld a,b			;30c8
	ld l,(hl)			;30c9
	ld h,h			;30ca
	ld d,b			;30cb
	ld b,(hl)			;30cc
	inc a			;30cd
	ld (02b2dh),a		;30ce
	jr z,l30f1h		;30d1
l30d3h:
	ld h,h			;30d3
	ld h,h			;30d4
	ld h,h			;30d5
	ld h,h			;30d6
	ld h,h			;30d7
	ld h,h			;30d8
	ld h,h			;30d9
	ld h,h			;30da
	ld h,h			;30db
	ld h,h			;30dc
	ld h,h			;30dd
	ld h,h			;30de
	ld h,h			;30df
	ld l,c			;30e0
	ld l,(hl)			;30e1
	ld (hl),e			;30e2
	ld a,b			;30e3
	ld a,l			;30e4
	add a,d			;30e5
	add a,a			;30e6
	adc a,h			;30e7
	sub c			;30e8
	sub (hl)			;30e9
	sbc a,e			;30ea
	and b			;30eb
	rst 38h			;30ec
	or h			;30ed
	ld a,b			;30ee
	adc a,h			;30ef
	ld a,b			;30f0
l30f1h:
	ld l,(hl)			;30f1
	ld h,h			;30f2
	ld d,b			;30f3
	ld b,(hl)			;30f4
	inc a			;30f5
	ld (02b2dh),a		;30f6
	jr z,$+30		;30f9
sub_30fbh:
	ld iy,0c57eh		;30fb
	ld de,0c034h		;30ff
	ld ix,l31a9h		;3102
	ld hl,l31bbh		;3106
	exx			;3109
	ld b,009h		;310a
l310ch:
	exx			;310c
	push hl			;310d
	ld a,(iy+000h)		;310e
	or a			;3111
	jp m,l317fh		;3112
	rrca			;3115
	rrca			;3116
	rrca			;3117
	and 01fh		;3118
	sub (ix+000h)		;311a
	ld b,a			;311d
	jp c,l319ch		;311e
	ld a,(de)			;3121
	sub b			;3122
	jp z,l316dh		;3123
	jp p,l314fh		;3126
l3129h:
	neg		;3129
	ld c,b			;312b
	ld b,a			;312c
	ld a,c			;312d
	dec c			;312e
	ld (de),a			;312f
	push de			;3130
l3131h:
	ld a,c			;3131
	add a,a			;3132
	add a,c			;3133
	ld c,000h		;3134
	ld d,c			;3136
	ld e,a			;3137
	add hl,de			;3138
	ld a,(hl)			;3139
	out (0bfh),a		;313a
	inc hl			;313c
	ld a,(hl)			;313d
	out (0bfh),a		;313e
	dec hl			;3140
	xor a			;3141
	push af			;3142
	pop af			;3143
	out (0beh),a		;3144
	dec hl			;3146
	dec hl			;3147
	dec hl			;3148
	djnz l3131h		;3149
	pop de			;314b
	jp l316dh		;314c
l314fh:
	ld c,b			;314f
	ld b,a			;3150
	ld a,c			;3151
	ld (de),a			;3152
	push de			;3153
l3154h:
	ld a,c			;3154
	add a,a			;3155
	add a,c			;3156
	ld c,000h		;3157
	ld d,c			;3159
	ld e,a			;315a
	add hl,de			;315b
	ld a,(hl)			;315c
	out (0bfh),a		;315d
	inc hl			;315f
	ld a,(hl)			;3160
	out (0bfh),a		;3161
	inc hl			;3163
	ld a,(hl)			;3164
	push af			;3165
	pop af			;3166
	out (0beh),a		;3167
	inc hl			;3169
	djnz l3154h		;316a
	pop de			;316c
l316dh:
	pop hl			;316d
	ld bc,l0008h		;316e
	add iy,bc		;3171
	ld c,04eh		;3173
	add hl,bc			;3175
	inc ix		;3176
	inc ix		;3178
	inc de			;317a
	exx			;317b
	djnz l310ch		;317c
	ret			;317e
l317fh:
	neg		;317f
	ld bc,l0027h		;3181
	add hl,bc			;3184
	rrca			;3185
	rrca			;3186
	rrca			;3187
	and 01fh		;3188
	sub (ix+001h)		;318a
	ld b,a			;318d
	jp c,l319ch		;318e
	ld a,(de)			;3191
	sub b			;3192
	jp z,l316dh		;3193
	jp p,l314fh		;3196
	jp l3129h		;3199
l319ch:
	ld a,(de)			;319c
	or a			;319d
	jp z,l316dh		;319e
	ld b,a			;31a1
	xor a			;31a2
	ld c,a			;31a3
	ld (de),a			;31a4
	push de			;31a5
	jp l3154h		;31a6
l31a9h:
	ld a,(bc)			;31a9
l31aah:
	ld a,(bc)			;31aa
l31abh:
	add hl,bc			;31ab
l31ach:
	add hl,bc			;31ac
l31adh:
	ex af,af'			;31ad
	ex af,af'			;31ae
	rlca			;31af
	rlca			;31b0
	ld b,006h		;31b1
	dec b			;31b3
	dec b			;31b4
	inc b			;31b5
	inc b			;31b6
	inc bc			;31b7
	inc bc			;31b8
	ld (bc),a			;31b9
	ld (bc),a			;31ba
l31bbh:
	ret pe			;31bb
	ld a,e			;31bc
	inc c			;31bd
	and 07bh		;31be
	dec c			;31c0
	call po,0207bh		;31c1
	jp po,0207bh		;31c4
	ret po			;31c7
	ld a,e			;31c8
	jr nz,l31a9h		;31c9
l31cbh:
	ld a,e			;31cb
	jr nz,l31aah		;31cc
	ld a,e			;31ce
	jr nz,l31abh		;31cf
	ld a,e			;31d1
	jr nz,l31ach		;31d2
	ld a,e			;31d4
l31d5h:
	jr nz,l31adh		;31d5
	ld a,e			;31d7
	dec c			;31d8
	call nc,l0c7bh		;31d9
	jp nc,l017bh		;31dc
l31dfh:
	ret nc			;31df
	ld a,e			;31e0
	ld bc,l7bd4h		;31e1
l31e4h:
	inc c			;31e4
	sub 07bh		;31e5
	dec c			;31e7
	ret c			;31e8
	ld a,e			;31e9
	jr nz,$-38		;31ea
	ld a,e			;31ec
	jr nz,l31cbh		;31ed
	ld a,e			;31ef
	jr nz,$-34		;31f0
	ld a,e			;31f2
	jr nz,l31d5h		;31f3
	ld a,e			;31f5
	jr nz,$-30		;31f6
	ld a,e			;31f8
	jr nz,l31dfh		;31f9
	ld a,e			;31fb
	jr nz,l31e4h		;31fc
	ld a,e			;31fe
	dec c			;31ff
	ret pe			;3200
	ld a,e			;3201
	inc c			;3202
	jp pe,l017bh		;3203
	call pe,l017bh		;3206
	ld hl,(00f7ch)		;3209
	jr z,$+124		;320c
	djnz $+38		;320e
	ld a,h			;3210
	jr nz,l3237h		;3211
	ld a,h			;3213
	jr nz,l3238h		;3214
	ld a,h			;3216
	jr nz,$+32		;3217
	ld a,h			;3219
	jr nz,l323ah		;321a
	ld a,h			;321c
	jr nz,l323bh		;321d
	ld a,h			;321f
	jr nz,$+26		;3220
	ld a,h			;3222
	jr nz,l323dh		;3223
	ld a,h			;3225
	jr nz,l323eh		;3226
	ld a,h			;3228
	jr nz,$+20		;3229
	ld a,h			;322b
	djnz l3240h		;322c
	ld a,h			;322e
	rrca			;322f
	ld (de),a			;3230
l3231h:
	ld a,h			;3231
	rrca			;3232
	inc d			;3233
	ld a,h			;3234
	djnz l324dh		;3235
l3237h:
	ld a,h			;3237
l3238h:
	jr nz,l3252h		;3238
l323ah:
	ld a,h			;323a
l323bh:
	jr nz,l3257h		;323b
l323dh:
	ld a,h			;323d
l323eh:
	jr nz,l325ch		;323e
l3240h:
	ld a,h			;3240
	jr nz,l3261h		;3241
	ld a,h			;3243
	jr nz,$+32		;3244
	ld a,h			;3246
	jr nz,l326bh		;3247
	ld a,h			;3249
	jr nz,l3270h		;324a
	ld a,h			;324c
l324dh:
	jr nz,$+38		;324d
	ld a,h			;324f
	jr nz,l327ah		;3250
l3252h:
	ld a,h			;3252
	djnz l327fh		;3253
	ld a,h			;3255
l3256h:
	rrca			;3256
l3257h:
	ld l,h			;3257
	ld a,h			;3258
l3259h:
	ld (de),a			;3259
l325ah:
	ld l,d			;325a
l325bh:
	ld a,h			;325b
l325ch:
	inc de			;325c
l325dh:
	ld l,b			;325d
l325eh:
	ld a,h			;325e
l325fh:
	jr nz,l32c7h		;325f
l3261h:
	ld a,h			;3261
l3262h:
	jr nz,l32c8h		;3262
	ld a,h			;3264
	jr nz,$+98		;3265
	ld a,h			;3267
	jr nz,l32cah		;3268
	ld a,h			;326a
l326bh:
	jr nz,l32cbh		;326b
l326dh:
	ld a,h			;326d
	jr nz,$+92		;326e
l3270h:
	ld a,h			;3270
	jr nz,l32cdh		;3271
	ld a,h			;3273
	jr nz,l32ceh		;3274
	ld a,h			;3276
l3277h:
	jr nz,l32cfh		;3277
	ld a,h			;3279
l327ah:
	jr nz,l32d0h		;327a
l327ch:
	ld a,h			;327c
	jr nz,l32cfh		;327d
l327fh:
	ld a,h			;327f
	ld (de),a			;3280
l3281h:
	ld d,d			;3281
	ld a,h			;3282
	inc de			;3283
	ld d,h			;3284
	ld a,h			;3285
l3286h:
	jr nz,$+86		;3286
	ld a,h			;3288
	jr nz,l32e3h		;3289
l328bh:
	ld a,h			;328b
	jr nz,l32e8h		;328c
	ld a,h			;328e
	jr nz,$+92		;328f
	ld a,h			;3291
	jr nz,l32f2h		;3292
	ld a,h			;3294
l3295h:
	jr nz,l32f7h		;3295
	ld a,h			;3297
	jr nz,l32fch		;3298
	ld a,h			;329a
	jr nz,$+100		;329b
	ld a,h			;329d
	jr nz,l3306h		;329e
	ld a,h			;32a0
	jr nz,$+104		;32a1
	ld a,h			;32a3
	jr nz,l3256h		;32a4
	ld a,h			;32a6
	dec d			;32a7
	xor (hl)			;32a8
	ld a,h			;32a9
	ld d,0ach		;32aa
	ld a,h			;32ac
	rla			;32ad
	xor d			;32ae
	ld a,h			;32af
	jr nz,l325ah		;32b0
	ld a,h			;32b2
	jr nz,l325bh		;32b3
	ld a,h			;32b5
	jr nz,l325ch		;32b6
	ld a,h			;32b8
	jr nz,l325dh		;32b9
	ld a,h			;32bb
	jr nz,l325eh		;32bc
	ld a,h			;32be
	jr nz,l325fh		;32bf
	ld a,h			;32c1
	jr nz,$-100		;32c2
	ld a,h			;32c4
	jr nz,l3261h		;32c5
l32c7h:
	ld a,h			;32c7
l32c8h:
	jr nz,l3262h		;32c8
l32cah:
	ld a,h			;32ca
l32cbh:
	jr nz,l3259h		;32cb
l32cdh:
	ld a,h			;32cd
l32ceh:
	dec d			;32ce
l32cfh:
	adc a,(hl)			;32cf
l32d0h:
	ld a,h			;32d0
	ld d,090h		;32d1
	ld a,h			;32d3
	rla			;32d4
	sub d			;32d5
	ld a,h			;32d6
	jr nz,l326dh		;32d7
	ld a,h			;32d9
	jr nz,$-106		;32da
	ld a,h			;32dc
	jr nz,l3277h		;32dd
	ld a,h			;32df
	jr nz,l327ch		;32e0
	ld a,h			;32e2
l32e3h:
	jr nz,l3281h		;32e3
l32e5h:
	ld a,h			;32e5
l32e6h:
	jr nz,l3286h		;32e6
l32e8h:
	ld a,h			;32e8
	jr nz,l328bh		;32e9
	ld a,h			;32eb
l32ech:
	jr nz,$-94		;32ec
l32eeh:
	ld a,h			;32ee
l32efh:
	jr nz,l3295h		;32ef
l32f1h:
	ld a,h			;32f1
l32f2h:
	jr nz,l32e6h		;32f2
	ld a,h			;32f4
	add hl,de			;32f5
	ret p			;32f6
l32f7h:
	ld a,h			;32f7
	ld a,(de)			;32f8
l32f9h:
	xor 07ch		;32f9
	dec de			;32fb
l32fch:
	call pe,sub_207ch		;32fc
	jp pe,sub_207ch		;32ff
	ret pe			;3302
l3303h:
	ld a,h			;3303
	jr nz,l32ech		;3304
l3306h:
	ld a,h			;3306
	jr nz,$-28		;3307
	ld a,h			;3309
	jr nz,l32eeh		;330a
	ld a,h			;330c
l330dh:
	jr nz,l32efh		;330d
	ld a,h			;330f
	jr nz,$-34		;3310
l3312h:
	ld a,h			;3312
	jr nz,l32f1h		;3313
	ld a,h			;3315
	jr nz,l32f2h		;3316
	ld a,h			;3318
	jr nz,l32e5h		;3319
	ld a,h			;331b
l331ch:
	add hl,de			;331c
	call z,sub_1a7ch		;331d
	adc a,07ch		;3320
	dec de			;3322
	ret nc			;3323
	ld a,h			;3324
	jr nz,l32f9h		;3325
	ld a,h			;3327
	jr nz,$-44		;3328
	ld a,h			;332a
	jr nz,l3303h		;332b
	ld a,h			;332d
	jr nz,$-40		;332e
	ld a,h			;3330
	jr nz,l330dh		;3331
l3333h:
	ld a,h			;3333
	jr nz,l3312h		;3334
	ld a,h			;3336
	jr nz,$-34		;3337
	ld a,h			;3339
	jr nz,l331ch		;333a
	ld a,h			;333c
	jr nz,$-30		;333d
	ld a,h			;333f
	jr nz,l3376h		;3340
	ld a,l			;3342
	dec e			;3343
	ld (l1e7dh),a		;3344
	jr nc,l33c6h		;3347
	rra			;3349
	ld l,07dh		;334a
	jr nz,$+44		;334c
	ld a,l			;334e
	jr nz,l337bh		;334f
	ld a,l			;3351
	jr nz,l337ch		;3352
	ld a,l			;3354
	jr nz,$+38		;3355
	ld a,l			;3357
	jr nz,l337eh		;3358
	ld a,l			;335a
	jr nz,l337fh		;335b
	ld a,l			;335d
	jr nz,$+32		;335e
	ld a,l			;3360
	jr nz,l3381h		;3361
	ld a,l			;3363
	jr nz,l3382h		;3364
	ld a,l			;3366
	jr nz,l3371h		;3367
	ld a,l			;3369
	dec e			;336a
	ld a,(bc)			;336b
	ld a,l			;336c
	ld e,00ch		;336d
	ld a,l			;336f
	rra			;3370
l3371h:
	ld c,07dh		;3371
	jr nz,l3385h		;3373
	ld a,l			;3375
l3376h:
	jr nz,l338ah		;3376
	ld a,l			;3378
	jr nz,$+20		;3379
l337bh:
	ld a,l			;337b
l337ch:
	jr nz,l3394h		;337c
l337eh:
	ld a,l			;337e
l337fh:
	jr nz,l3399h		;337f
l3381h:
	ld a,l			;3381
l3382h:
	jr nz,$+26		;3382
	ld a,l			;3384
l3385h:
	jr nz,l33a3h		;3385
	ld a,l			;3387
	jr nz,l33a8h		;3388
l338ah:
	ld a,l			;338a
	jr nz,$+32		;338b
	ld a,l			;338d
	jr nz,l3406h		;338e
	ld a,l			;3390
	ld (l7d74h),hl		;3391
l3394h:
	inc hl			;3394
	ld (hl),d			;3395
l3396h:
	ld a,l			;3396
	inc h			;3397
l3398h:
	ld (hl),b			;3398
l3399h:
	ld a,l			;3399
l339ah:
	jr nz,l340ah		;339a
l339ch:
	ld a,l			;339c
l339dh:
	jr nz,l340bh		;339d
l339fh:
	ld a,l			;339f
l33a0h:
	jr nz,l340ch		;33a0
l33a2h:
	ld a,l			;33a2
l33a3h:
	jr nz,$+104		;33a3
	ld a,l			;33a5
	jr nz,l340eh		;33a6
l33a8h:
	ld a,l			;33a8
	jr nz,l340fh		;33a9
	ld a,l			;33ab
l33ach:
	jr nz,$+98		;33ac
	ld a,l			;33ae
	jr nz,l3411h		;33af
l33b1h:
	ld a,l			;33b1
	jr nz,l3412h		;33b2
	ld a,l			;33b4
	jr nz,l33fdh		;33b5
	ld a,l			;33b7
	ld (l7d48h),hl		;33b8
l33bbh:
	inc hl			;33bb
	ld c,d			;33bc
	ld a,l			;33bd
	inc h			;33be
	ld c,h			;33bf
l33c0h:
	ld a,l			;33c0
	jr nz,l3411h		;33c1
	ld a,l			;33c3
	jr nz,$+80		;33c4
l33c6h:
	ld a,l			;33c6
	jr nz,l341bh		;33c7
	ld a,l			;33c9
	jr nz,l3420h		;33ca
	ld a,l			;33cc
	jr nz,$+86		;33cd
	ld a,l			;33cf
	jr nz,l342ah		;33d0
	ld a,l			;33d2
	jr nz,$+90		;33d3
	ld a,l			;33d5
	jr nz,l3434h		;33d6
	ld a,l			;33d8
	jr nz,$+94		;33d9
	ld a,l			;33db
	jr nz,l3396h		;33dc
	ld a,l			;33de
	ld h,0b6h		;33df
	ld a,l			;33e1
	daa			;33e2
	or h			;33e3
	ld a,l			;33e4
	jr z,l3399h		;33e5
	ld a,l			;33e7
	jr nz,l339ah		;33e8
	ld a,l			;33ea
	jr nz,$-82		;33eb
	ld a,l			;33ed
	jr nz,l339ch		;33ee
	ld a,l			;33f0
	jr nz,l339dh		;33f1
	ld a,l			;33f3
	jr nz,$-88		;33f4
	ld a,l			;33f6
	jr nz,l339fh		;33f7
	ld a,l			;33f9
	jr nz,l33a0h		;33fa
	ld a,l			;33fc
l33fdh:
	jr nz,$-94		;33fd
	ld a,l			;33ff
	jr nz,l33a2h		;3400
	ld a,l			;3402
	jr nz,$-124		;3403
	ld a,l			;3405
l3406h:
	ld h,086h		;3406
	ld a,l			;3408
	daa			;3409
l340ah:
	adc a,b			;340a
l340bh:
	ld a,l			;340b
l340ch:
	jr z,l3398h		;340c
l340eh:
	ld a,l			;340e
l340fh:
	jr nz,l339dh		;340f
l3411h:
	ld a,l			;3411
l3412h:
	jr nz,l33a2h		;3412
	ld a,l			;3414
l3415h:
	jr nz,$-112		;3415
	ld a,l			;3417
	jr nz,l33ach		;3418
	ld a,l			;341a
l341bh:
	jr nz,l33b1h		;341b
	ld a,l			;341d
	jr nz,$-106		;341e
l3420h:
	ld a,l			;3420
	jr nz,l33bbh		;3421
	ld a,l			;3423
	jr nz,l33c0h		;3424
l3426h:
	ld a,l			;3426
	jr nz,$-100		;3427
l3429h:
	ld a,l			;3429
l342ah:
	jr nz,l3426h		;342a
l342ch:
	ld a,l			;342c
l342dh:
	ld hl,(l7df8h)		;342d
l3430h:
	dec hl			;3430
l3431h:
	or 07dh		;3431
l3433h:
	inc l			;3433
l3434h:
	call p,sub_207dh		;3434
	jp p,sub_207dh		;3437
	ret p			;343a
	ld a,l			;343b
	jr nz,l342ch		;343c
	ld a,l			;343e
	jr nz,l342dh		;343f
	ld a,l			;3441
l3442h:
	jr nz,$-22		;3442
	ld a,l			;3444
	jr nz,$-24		;3445
l3447h:
	ld a,l			;3447
	jr nz,l3430h		;3448
	ld a,l			;344a
	jr nz,l3431h		;344b
	ld a,l			;344d
	jr nz,$-30		;344e
	ld a,l			;3450
l3451h:
	jr nz,l3415h		;3451
	ld a,l			;3453
	ld hl,(l7dc4h)		;3454
	dec hl			;3457
	add a,07dh		;3458
	inc l			;345a
	ret z			;345b
	ld a,l			;345c
	jr nz,l3429h		;345d
	ld a,l			;345f
	jr nz,$-52		;3460
	ld a,l			;3462
	jr nz,l3433h		;3463
	ld a,l			;3465
	jr nz,$-48		;3466
	ld a,l			;3468
	jr nz,$-46		;3469
	ld a,l			;346b
	jr nz,l3442h		;346c
	ld a,l			;346e
	jr nz,l3447h		;346f
	ld a,l			;3471
	jr nz,$-40		;3472
	ld a,l			;3474
	jr nz,l3451h		;3475
	ld a,l			;3477
	jr nz,$+33		;3478
	jp p,l7ec2h		;347a
	or a			;347d
	ret nz			;347e
	ld hl,start		;347f
	ld a,(0c010h)		;3482
	add a,a			;3485
	add a,l			;3486
	ld l,a			;3487
	ld de,l78d5h		;3488
	add hl,de			;348b
	ld e,(hl)			;348c
	inc hl			;348d
	ld d,(hl)			;348e
	ld a,(0c011h)		;348f
l3492h:
	ld h,000h		;3492
	ld l,a			;3494
	ld c,a			;3495
	add hl,de			;3496
	ld a,(hl)			;3497
	cp 0ffh		;3498
	jp nz,l34a4h		;349a
	xor a			;349d
	ld (0c011h),a		;349e
	jp l3492h		;34a1
l34a4h:
	ld e,c			;34a4
	inc e			;34a5
	ld d,a			;34a6
	and 00fh		;34a7
	cp 004h		;34a9
	jr nc,l34b4h		;34ab
	inc hl			;34ad
	inc e			;34ae
	ld c,(hl)			;34af
	ld hl,0c2f1h		;34b0
	ld (hl),c			;34b3
l34b4h:
	ld hl,0c2f0h		;34b4
	ld (hl),d			;34b7
	ld hl,start		;34b8
	ld a,(0c2f7h)		;34bb
	ld (0c2f4h),a		;34be
	nop			;34c1
	nop			;34c2
	nop			;34c3
	ld a,e			;34c4
	ld (0c011h),a		;34c5
	ld a,0ffh		;34c8
	ld (0c2f2h),a		;34ca
	ld a,d			;34cd
	and 01fh		;34ce
	ld l,a			;34d0
l34d1h:
	ld h,000h		;34d1
	add hl,hl			;34d3
	ld bc,l34fch		;34d4
	add hl,bc			;34d7
	ld c,(hl)			;34d8
	inc hl			;34d9
	ld b,(hl)			;34da
	ld (0c2f5h),bc		;34db
	bit 5,d		;34df
	jr nz,l34f0h		;34e1
	bit 7,d		;34e3
	jr nz,l34f6h		;34e5
	bit 6,d		;34e7
	ret z			;34e9
	ld a,005h		;34ea
	ld (0c04bh),a		;34ec
	ret			;34ef
l34f0h:
	ld a,003h		;34f0
	ld (0c06ch),a		;34f2
	ret			;34f5
l34f6h:
	ld a,003h		;34f6
	ld (0c06dh),a		;34f8
	ret			;34fb
l34fch:
	nop			;34fc
	nop			;34fd
	nop			;34fe
	nop			;34ff
	nop			;3500
	ld (bc),a			;3501
	ld b,b			;3502
	ld bc,start		;3503
	nop			;3506
	nop			;3507
	nop			;3508
	ld (bc),a			;3509
	ld b,b			;350a
	ld bc,l01ffh+1		;350b
	ld b,b			;350e
	ld bc,l01ffh+1		;350f
	nop			;3512
	nop			;3513
	nop			;3514
	nop			;3515
	nop			;3516
	nop			;3517
	nop			;3518
	nop			;3519
	nop			;351a
	nop			;351b
	nop			;351c
	nop			;351d
	nop			;351e
	nop			;351f
	nop			;3520
	cp 0c0h		;3521
	cp 000h		;3523
	nop			;3525
	nop			;3526
	nop			;3527
	nop			;3528
l3529h:
	cp 0c0h		;3529
	cp 000h		;352b
	cp 0c0h		;352d
	cp 000h		;352f
	cp 011h		;3531
	ld b,h			;3533
	dec (hl)			;3534
	ld hl,l7880h		;3535
l3538h:
	call sub_062fh		;3538
	ld de,l3ca9h		;353b
	ld hl,07980h		;353e
	jp sub_062fh		;3541
	add hl,bc			;3544
	jr nz,l3567h		;3545
	jr nz,l34d1h		;3547
	adc a,c			;3549
	adc a,d			;354a
	adc a,e			;354b
	adc a,h			;354c
	jr nz,$+32		;354d
	sub c			;354f
	sub d			;3550
	sub e			;3551
	sub h			;3552
	jr nz,$+32		;3553
	jr nz,l3577h		;3555
	jr nz,l3579h		;3557
	jr nz,$+32		;3559
	jr nz,$+32		;355b
	jr nz,$+32		;355d
	jr nz,$+32		;355f
	jr nz,$+32		;3561
	jr nz,$+32		;3563
	jr nz,$+32		;3565
l3567h:
	jr nz,l34f6h		;3567
	adc a,(hl)			;3569
	adc a,a			;356a
	sub b			;356b
	jr nz,l358eh		;356c
	jr nz,$-107		;356e
	sub (hl)			;3570
	sub a			;3571
	sbc a,b			;3572
	sbc a,c			;3573
	jr nz,l3596h		;3574
	sub c			;3576
l3577h:
	sub d			;3577
	sub e			;3578
l3579h:
	sub h			;3579
	jr nz,$+32		;357a
	jr nz,$+32		;357c
	jr nz,$+32		;357e
	jr nz,l35a2h		;3580
	jr nz,l35a4h		;3582
	jr nz,$+32		;3584
	jr nz,$+32		;3586
	jr nz,$+32		;3588
	jr nz,$+32		;358a
	jr nz,$+32		;358c
l358eh:
	jr nz,$+32		;358e
	jr nz,$+32		;3590
	jr nz,$+32		;3592
	jr nz,$+32		;3594
l3596h:
	sub l			;3596
	sub (hl)			;3597
	sub a			;3598
	sbc a,b			;3599
	sbc a,c			;359a
	jr nz,l35bdh		;359b
	jr nz,l35bfh		;359d
	jr nz,l3529h		;359f
	adc a,c			;35a1
l35a2h:
	adc a,d			;35a2
	adc a,e			;35a3
l35a4h:
	adc a,h			;35a4
	jr nz,l35c7h		;35a5
	jr nz,$+32		;35a7
	jr nz,$+32		;35a9
	jr nz,l35cdh		;35ab
	jr nz,l35cfh		;35ad
	jr nz,l35d1h		;35af
	jr nz,l35d3h		;35b1
	jr nz,$+32		;35b3
	jr nz,l35d7h		;35b5
	jr nz,$+32		;35b7
	jr nz,$+32		;35b9
	jr nz,l35ddh		;35bb
l35bdh:
	jr nz,l35dfh		;35bd
l35bfh:
	jr nz,$-115		;35bf
	adc a,(hl)			;35c1
	adc a,a			;35c2
	sub b			;35c3
	jr nz,sub_35c6h		;35c4
sub_35c6h:
	ld c,a			;35c6
l35c7h:
	ld a,(0c000h)		;35c7
	and 004h		;35ca
	ret nz			;35cc
l35cdh:
	ld a,c			;35cd
	add a,a			;35ce
l35cfh:
	add a,c			;35cf
	ld c,a			;35d0
l35d1h:
	ld b,000h		;35d1
l35d3h:
	ld hl,l3646h		;35d3
	add hl,bc			;35d6
l35d7h:
	ld de,0c006h		;35d7
	ld b,003h		;35da
	or a			;35dc
l35ddh:
	ld a,(de)			;35dd
	adc a,(hl)			;35de
l35dfh:
	daa			;35df
	ld (de),a			;35e0
	dec de			;35e1
	dec hl			;35e2
	djnz l35ddh		;35e3
	ld a,0ffh		;35e5
	ld (0c072h),a		;35e7
	ret			;35ea
sub_35ebh:
	ld de,0c006h		;35eb
	ld hl,0c4c3h		;35ee
	ld b,003h		;35f1
	xor a			;35f3
l35f4h:
	ld a,(de)			;35f4
	sbc a,(hl)			;35f5
	dec hl			;35f6
	dec de			;35f7
	djnz l35f4h		;35f8
	ret c			;35fa
	inc de			;35fb
	inc hl			;35fc
	ex de,hl			;35fd
	ld bc,l0003h		;35fe
	ldir		;3601
	ret			;3603
sub_3604h:
	ld hl,0c072h		;3604
	ld a,(hl)			;3607
	or a			;3608
	ret z			;3609
	ld (hl),000h		;360a
	ld hl,l780ch		;360c
	call sub_0018h		;360f
	ld hl,0c004h		;3612
sub_3615h:
	ld bc,00300h		;3615
l3618h:
	ld a,(hl)			;3618
	rrca			;3619
	rrca			;361a
	rrca			;361b
	rrca			;361c
	call sub_362dh		;361d
	ld a,b			;3620
	dec a			;3621
	jr nz,l3625h		;3622
	ld c,b			;3624
l3625h:
	ld a,(hl)			;3625
	call sub_362dh		;3626
	inc hl			;3629
	djnz l3618h		;362a
	ret			;362c
sub_362dh:
	and 00fh		;362d
	jr nz,l3638h		;362f
	cp c			;3631
	jr nz,l3638h		;3632
	ld a,020h		;3634
	jr l363bh		;3636
l3638h:
	add a,030h		;3638
	ld c,a			;363a
l363bh:
	out (0beh),a		;363b
	ld a,009h		;363d
	push af			;363f
	pop af			;3640
	out (0beh),a		;3641
	ret			;3643
	nop			;3644
	nop			;3645
l3646h:
	ld bc,start		;3646
	ld (bc),a			;3649
	nop			;364a
	nop			;364b
	inc bc			;364c
	nop			;364d
	nop			;364e
	inc b			;364f
	nop			;3650
	ld bc,start		;3651
	ld bc,start		;3654
	nop			;3657
	jr nc,l367bh		;3658
	add a,h			;365a
	ld a,e			;365b
	ld de,l36ddh		;365c
	ld bc,l0207h		;365f
	call 03708h		;3662
	ld hl,l7bb6h		;3665
	ld de,l36ddh		;3668
	ld bc,l0207h		;366b
	call 03708h		;366e
	ld a,004h		;3671
	ld (0c049h),a		;3673
	ld a,0aeh		;3676
	ld (0c04ah),a		;3678
l367bh:
	ld a,005h		;367b
	ld (0c064h),a		;367d
	ld a,086h		;3680
	ld (0c100h),a		;3682
	ret			;3685
sub_3686h:
	ld a,(0c049h)		;3686
	or a			;3689
	ret z			;368a
	ld hl,0c04ah		;368b
	dec (hl)			;368e
	ret nz			;368f
	ld (hl),030h		;3690
	dec a			;3692
	ld (0c049h),a		;3693
	jp z,l36c2h		;3696
	dec a			;3699
	ld c,a			;369a
	add a,a			;369b
	add a,a			;369c
	add a,c			;369d
	ld l,a			;369e
	ld h,000h		;369f
	ld de,l36f9h		;36a1
	add hl,de			;36a4
	ld c,(hl)			;36a5
	inc hl			;36a6
	ld e,(hl)			;36a7
	inc hl			;36a8
	ld d,(hl)			;36a9
	inc hl			;36aa
	ld a,(hl)			;36ab
	inc hl			;36ac
	ld h,(hl)			;36ad
	ld l,a			;36ae
	ld b,002h		;36af
	push hl			;36b1
	push de			;36b2
	push bc			;36b3
	call 03708h		;36b4
	pop bc			;36b7
	pop de			;36b8
	pop hl			;36b9
	ld a,l			;36ba
	add a,032h		;36bb
	ld l,a			;36bd
	call 03708h		;36be
	ret			;36c1
l36c2h:
	ld hl,l7b84h		;36c2
	ld de,l0100h		;36c5
	ld bc,l0207h		;36c8
	call sub_3723h		;36cb
	ld hl,l7bb6h		;36ce
	ld bc,l0207h		;36d1
	call sub_3723h		;36d4
	ld a,00ah		;36d7
	ld (0c064h),a		;36d9
	ret			;36dc
l36ddh:
	ld (hl),h			;36dd
	ld (hl),l			;36de
	ld a,b			;36df
	ld a,c			;36e0
	ld a,(hl)			;36e1
	ld a,a			;36e2
	add a,b			;36e3
	add a,c			;36e4
	ld a,b			;36e5
	ld a,c			;36e6
	add a,h			;36e7
	add a,l			;36e8
	add a,(hl)			;36e9
	add a,a			;36ea
l36ebh:
	halt			;36eb
	ld (hl),a			;36ec
	ld a,b			;36ed
	ld a,c			;36ee
	ld a,d			;36ef
	ld a,e			;36f0
	ld a,h			;36f1
	ld a,l			;36f2
	ld a,(hl)			;36f3
	ld a,a			;36f4
	add a,b			;36f5
	add a,c			;36f6
	add a,d			;36f7
	add a,e			;36f8
l36f9h:
	inc bc			;36f9
	di			;36fa
	ld (hl),004h		;36fb
	ld a,h			;36fd
	inc bc			;36fe
	.DB 0edh;next byte illegal after ed		;36ff
	ld (hl),0c4h		;3700
	ld a,e			;3702
	ld bc,l36ebh		;3703
	call nz,0c57bh		;3706
	rst 18h			;3709
l370ah:
	ld a,(de)			;370a
	out (0beh),a		;370b
	ld a,009h		;370d
	push af			;370f
	pop af			;3710
	out (0beh),a		;3711
	inc de			;3713
	djnz l370ah		;3714
	pop bc			;3716
	ld a,l			;3717
	add a,040h		;3718
	ld l,a			;371a
	ld a,h			;371b
	adc a,000h		;371c
	ld h,a			;371e
	dec c			;371f
	jr nz,$-26		;3720
	ret			;3722
sub_3723h:
	push bc			;3723
	rst 18h			;3724
l3725h:
	ld a,e			;3725
	out (0beh),a		;3726
	ld a,d			;3728
	push af			;3729
	pop af			;372a
	out (0beh),a		;372b
	djnz l3725h		;372d
	pop bc			;372f
	ld a,l			;3730
	add a,040h		;3731
	ld l,a			;3733
l3734h:
	ld a,h			;3734
	adc a,000h		;3735
	ld h,a			;3737
	dec c			;3738
	jr nz,sub_3723h		;3739
	ret			;373b
sub_373ch:
	ld hl,0c071h		;373c
	ld a,(0c318h)		;373f
	cp (hl)			;3742
	ret z			;3743
	ld (hl),a			;3744
	add a,a			;3745
	add a,a			;3746
	ld l,a			;3747
	ld h,000h		;3748
	ld de,l376bh		;374a
	add hl,de			;374d
	ex de,hl			;374e
	ld hl,07822h		;374f
	rst 18h			;3752
	ld a,(de)			;3753
	out (0beh),a		;3754
	inc de			;3756
	push af			;3757
	pop af			;3758
	ld a,(de)			;3759
	out (0beh),a		;375a
	inc de			;375c
	ld hl,l7862h		;375d
	rst 18h			;3760
	ld a,(de)			;3761
	out (0beh),a		;3762
	inc de			;3764
	push af			;3765
	pop af			;3766
	ld a,(de)			;3767
	out (0beh),a		;3768
	ret			;376a
l376bh:
	ld (hl),b			;376b
	add hl,bc			;376c
	ld (hl),d			;376d
	dec c			;376e
	ld (hl),c			;376f
	add hl,bc			;3770
	ld (hl),c			;3771
	dec c			;3772
	ld (hl),d			;3773
	add hl,bc			;3774
	ld (hl),b			;3775
	dec c			;3776
sub_3777h:
	ld hl,07874h		;3777
	rst 18h			;377a
	ld hl,0c060h		;377b
	ld a,(hl)			;377e
	or 030h		;377f
	out (0beh),a		;3781
	ld a,009h		;3783
	push af			;3785
	pop af			;3786
	out (0beh),a		;3787
	ld a,051h		;3789
	push af			;378b
	pop af			;378c
	out (0beh),a		;378d
	ld a,009h		;378f
	push af			;3791
	pop af			;3792
	out (0beh),a		;3793
	ld hl,0c061h		;3795
	ld bc,l0100h+1		;3798
	jp l3618h		;379b
sub_379eh:
	ld hl,(0c060h)		;379e
	ld a,l			;37a1
	or h			;37a2
	ret z			;37a3
	ld hl,(0c02ah)		;37a4
	ld de,(0c062h)		;37a7
	add hl,de			;37ab
	ld (0c062h),hl		;37ac
	ld a,h			;37af
	cp 008h		;37b0
	ret c			;37b2
	xor a			;37b3
	ld (0c063h),a		;37b4
	ld hl,0c061h		;37b7
	ld a,(hl)			;37ba
	sbc a,001h		;37bb
	daa			;37bd
	ld (hl),a			;37be
	dec hl			;37bf
	ld a,(hl)			;37c0
	sbc a,000h		;37c1
	daa			;37c3
	ld (hl),a			;37c4
	or a			;37c5
	jr nz,l37d3h		;37c6
	inc hl			;37c8
	ld a,(hl)			;37c9
	cp 004h		;37ca
	jr nz,l37d3h		;37cc
	ld a,001h		;37ce
	ld (0c066h),a		;37d0
l37d3h:
	ld hl,(0c02ah)		;37d3
	ld c,004h		;37d6
	ld a,h			;37d8
	or a			;37d9
	ld a,l			;37da
	jr z,l37e9h		;37db
	cp 02ch		;37dd
	jr nc,l37f2h		;37df
	dec c			;37e1
	cp 015h		;37e2
	jr nc,l37f2h		;37e4
	dec c			;37e6
	jr l37f2h		;37e7
l37e9h:
	ld c,001h		;37e9
	cp 096h		;37eb
	jr nc,l37f2h		;37ed
	dec c			;37ef
	or a			;37f0
	ret z			;37f1
l37f2h:
	ld a,c			;37f2
	jp sub_35c6h		;37f3
sub_37f6h:
	ld a,(0c069h)		;37f6
	or a			;37f9
	ret nz			;37fa
	ld a,(0c068h)		;37fb
	or a			;37fe
	ret z			;37ff
l3800h:
	dec a			;3800
	jr nz,l3812h		;3801
	ld a,(0c007h)		;3803
	cp 004h		;3806
	ld a,000h		;3808
	jr nz,l3812h		;380a
	ld a,003h		;380c
	ld (0c06ah),a		;380e
	xor a			;3811
l3812h:
	ld (0c068h),a		;3812
	add a,a			;3815
	add a,a			;3816
	add a,a			;3817
	add a,a			;3818
	ld l,a			;3819
	ld h,000h		;381a
l381ch:
	add hl,hl			;381c
	add hl,hl			;381d
l381eh:
	ex de,hl			;381e
	ld a,(0c007h)		;381f
	add a,a			;3822
	ld l,a			;3823
	ld h,000h		;3824
	ld bc,l3839h		;3826
	add hl,bc			;3829
	ld c,(hl)			;382a
	inc hl			;382b
	ld b,(hl)			;382c
	ld hl,l5d40h		;382d
	add hl,de			;3830
	ex de,hl			;3831
	add hl,bc			;3832
	ld bc,040beh		;3833
	jp l0020h		;3836
l3839h:
	nop			;3839
	rst 0			;383a
	add a,b			;383b
	ret z			;383c
	add a,b			;383d
	jp z,0cd40h		;383e
	nop			;3841
	rst 0			;3842
sub_3843h:
	ld a,(0c069h)		;3843
	or a			;3846
	ret z			;3847
	dec a			;3848
	ld (0c069h),a		;3849
	add a,a			;384c
	add a,a			;384d
	add a,a			;384e
	add a,a			;384f
	ld l,a			;3850
	ld h,000h		;3851
	add hl,hl			;3853
	add hl,hl			;3854
	add hl,hl			;3855
	ex de,hl			;3856
	ld hl,0d000h		;3857
	ld a,(0c06eh)		;385a
	or a			;385d
	jr nz,l3863h		;385e
	ld hl,0d8a0h		;3860
l3863h:
	add hl,de			;3863
	ex de,hl			;3864
	ld bc,l4cc0h		;3865
	add hl,bc			;3868
	ld bc,080beh		;3869
	ex de,hl			;386c
	jp l0020h		;386d
sub_3870h:
	ld a,(0c069h)		;3870
	or a			;3873
	ret nz			;3874
	ld a,(0c06ah)		;3875
	or a			;3878
	ret z			;3879
	dec a			;387a
	ld (0c06ah),a		;387b
	add a,a			;387e
	add a,a			;387f
	add a,a			;3880
	add a,a			;3881
	ld l,a			;3882
	ld h,000h		;3883
	add hl,hl			;3885
	add hl,hl			;3886
	ex de,hl			;3887
	ld hl,0d700h		;3888
	ld a,(0c007h)		;388b
	cp 004h		;388e
	jr z,l3895h		;3890
	ld hl,0d7e0h		;3892
l3895h:
	add hl,de			;3895
	ex de,hl			;3896
	ld bc,l4400h		;3897
	add hl,bc			;389a
	ld bc,040beh		;389b
	ex de,hl			;389e
	jp l0020h		;389f
sub_38a2h:
	ld hl,(0c02ah)		;38a2
	ld de,(0c057h)		;38a5
	add hl,de			;38a9
	ld (0c057h),hl		;38aa
	ld a,h			;38ad
	cp d			;38ae
	jr nz,l38bdh		;38af
	ld hl,(0c05ah)		;38b1
	ld de,(0c05ch)		;38b4
	add hl,de			;38b8
	ld (0c05ah),hl		;38b9
	ret			;38bc
l38bdh:
	ld hl,(0c2f5h)		;38bd
	bit 7,h		;38c0
	jr z,l38dch		;38c2
	ld a,l			;38c4
	cpl			;38c5
	ld l,a			;38c6
	ld a,h			;38c7
	cpl			;38c8
	ld h,a			;38c9
	inc hl			;38ca
	ld a,l			;38cb
	srl h		;38cc
	rra			;38ce
	srl h		;38cf
	rra			;38d1
	neg		;38d2
	ld e,a			;38d4
	ld d,0ffh		;38d5
	jr nz,l38e6h		;38d7
	inc d			;38d9
	jr l38e6h		;38da
l38dch:
	ld a,l			;38dc
	srl h		;38dd
	rra			;38df
	srl h		;38e0
	rra			;38e2
	ld d,000h		;38e3
	ld e,a			;38e5
l38e6h:
	ld hl,(0c05ch)		;38e6
	add hl,de			;38e9
	ld de,(0c05ah)		;38ea
	add hl,de			;38ee
	ld (0c05ah),hl		;38ef
	ld hl,(0c2f5h)		;38f2
	ld d,l			;38f5
	ld c,h			;38f6
	ld a,(0c053h)		;38f7
	add a,d			;38fa
	ld (0c053h),a		;38fb
	ld hl,(0c051h)		;38fe
	ld d,h			;3901
	ld e,l			;3902
	ld b,000h		;3903
	bit 7,c		;3905
	jr z,l390bh		;3907
	ld b,0ffh		;3909
l390bh:
	adc hl,bc		;390b
	or a			;390d
	sbc hl,de		;390e
	ld a,l			;3910
	ld (0c026h),a		;3911
	ld a,(0c026h)		;3914
	or a			;3917
	ret z			;3918
	ld e,a			;3919
	ld d,000h		;391a
	jp p,l3920h		;391c
	dec d			;391f
l3920h:
	ld c,e			;3920
	ld hl,(0c051h)		;3921
	ex de,hl			;3924
	add hl,de			;3925
	res 1,h		;3926
	ld a,h			;3928
	cp d			;3929
	jr z,l3942h		;392a
	push hl			;392c
	push de			;392d
	ld a,(0c04bh)		;392e
l3931h:
	add a,a			;3931
	ld e,a			;3932
	ld d,000h		;3933
	ld hl,l399dh		;3935
	add hl,de			;3938
	ld e,(hl)			;3939
	inc hl			;393a
	ld d,(hl)			;393b
	ex de,hl			;393c
	ld (0c04dh),hl		;393d
	pop de			;3940
	pop hl			;3941
l3942h:
	ld (0c051h),hl		;3942
	ld a,e			;3945
	and 0f8h		;3946
	ld b,a			;3948
l3949h:
	ld a,l			;3949
	and 0f8h		;394a
	cp b			;394c
	ret z			;394d
	ld a,(0c026h)		;394e
	or a			;3951
	ld a,l			;3952
	jp p,l3957h		;3953
	ld a,e			;3956
l3957h:
	rrca			;3957
l3958h:
	rrca			;3958
l3959h:
	and 03eh		;3959
	ld c,a			;395b
l395ch:
	ld b,000h		;395c
	ex de,hl			;395e
	ld hl,l7a40h		;395f
l3962h:
	add hl,bc			;3962
l3963h:
	ex de,hl			;3963
	srl h		;3964
	rr l		;3966
	ld a,l			;3968
	rra			;3969
	rra			;396a
	and 03fh		;396b
	ld c,a			;396d
	ld a,(0c026h)		;396e
	or a			;3971
	jp p,l397bh		;3972
	ld a,c			;3975
	add a,021h		;3976
	and 03fh		;3978
	ld c,a			;397a
l397bh:
	ld a,c			;397b
	add a,a			;397c
	add a,c			;397d
	ld c,a			;397e
l397fh:
	ld b,000h		;397f
	ld hl,(0c04dh)		;3981
	add hl,bc			;3984
	ex de,hl			;3985
	rst 18h			;3986
l3987h:
	ld a,(de)			;3987
	out (0beh),a		;3988
	inc de			;398a
l398bh:
	ld a,l			;398b
	add a,040h		;398c
	ld l,a			;398e
	rst 18h			;398f
	ld a,(de)			;3990
	out (0beh),a		;3991
	inc de			;3993
	ld a,l			;3994
	add a,040h		;3995
	ld l,a			;3997
	rst 18h			;3998
	ld a,(de)			;3999
	out (0beh),a		;399a
	ret			;399c
l399dh:
	xor c			;399d
	add hl,sp			;399e
	ld l,c			;399f
	ld a,(l3b29h)		;39a0
	jp (hl)			;39a3
	dec sp			;39a4
	xor c			;39a5
	add hl,sp			;39a6
	xor d			;39a7
	inc a			;39a8
l39a9h:
	jr nz,$+32		;39a9
	jr nz,l39cdh		;39ab
	jr nz,l3949h		;39ad
	jr nz,l39d1h		;39af
	sbc a,e			;39b1
	jr nz,l39d4h		;39b2
	sbc a,h			;39b4
	jr nz,l3958h		;39b5
	sbc a,l			;39b7
	jr nz,l395ch		;39b8
	sbc a,(hl)			;39ba
	jr nz,l3959h		;39bb
	sbc a,a			;39bd
	jr nz,l3963h		;39be
l39c0h:
	and b			;39c0
	jr nz,$-92		;39c1
	sbc a,(hl)			;39c3
	jr nz,l3962h		;39c4
	sbc a,(hl)			;39c6
	jr nz,$-100		;39c7
	sbc a,a			;39c9
l39cah:
	jr nz,$-93		;39ca
	and b			;39cc
l39cdh:
	sbc a,d			;39cd
	sbc a,l			;39ce
	sbc a,l			;39cf
	and l			;39d0
l39d1h:
	sbc a,l			;39d1
	sbc a,(hl)			;39d2
	and (hl)			;39d3
l39d4h:
	sbc a,(hl)			;39d4
	sbc a,a			;39d5
	and a			;39d6
	sbc a,a			;39d7
	and b			;39d8
	jr nz,l397fh		;39d9
	sbc a,(hl)			;39db
	jr nz,$-91		;39dc
	sbc a,a			;39de
	jr nz,l3987h		;39df
	and b			;39e1
	jr nz,l398bh		;39e2
	sbc a,l			;39e4
	jr nz,$+32		;39e5
	and b			;39e7
	jr nz,l3a0ah		;39e8
	and h			;39ea
	jr nz,$+32		;39eb
	sbc a,h			;39ed
	jr nz,$+32		;39ee
	and e			;39f0
l39f1h:
	jr nz,$+32		;39f1
	sbc a,l			;39f3
	jr nz,$+32		;39f4
	and h			;39f6
	jr nz,$+32		;39f7
	and l			;39f9
	jr nz,$+32		;39fa
l39fch:
	and (hl)			;39fc
	jr nz,$+32		;39fd
	and a			;39ff
l3a00h:
	jr nz,$+32		;3a00
	jr nz,l3a24h		;3a02
	jr nz,l3a26h		;3a04
	jr nz,$+32		;3a06
	jr nz,l3a2ah		;3a08
l3a0ah:
	jr nz,l3a2ch		;3a0a
	jr nz,l3a2eh		;3a0c
	xor b			;3a0e
	jr nz,$+32		;3a0f
	xor b			;3a11
	jr nz,$+32		;3a12
	xor d			;3a14
	jr nz,l39c0h		;3a15
	xor e			;3a17
	jr nz,$+32		;3a18
	xor e			;3a1a
	jr nz,$+32		;3a1b
	xor e			;3a1d
l3a1eh:
	jr nz,$+32		;3a1e
	xor e			;3a20
	jr nz,$+32		;3a21
	xor b			;3a23
l3a24h:
	jr nz,$+32		;3a24
l3a26h:
	xor b			;3a26
	jr nz,$+32		;3a27
	xor b			;3a29
l3a2ah:
	jr nz,$+32		;3a2a
l3a2ch:
	jr nz,l3a4eh		;3a2c
l3a2eh:
	jr nz,l39cah		;3a2e
	jr nz,$+32		;3a30
	sbc a,e			;3a32
	jr nz,$+32		;3a33
	sbc a,h			;3a35
	jr nz,$+32		;3a36
	sbc a,l			;3a38
	jr nz,$+32		;3a39
	and h			;3a3b
	jr nz,$+32		;3a3c
	and l			;3a3e
	jr nz,$+32		;3a3f
	and (hl)			;3a41
	jr nz,$+32		;3a42
	and a			;3a44
	jr nz,$+32		;3a45
	sbc a,d			;3a47
	jr nz,l3a6ah		;3a48
	sbc a,e			;3a4a
	jr nz,$+32		;3a4b
	sbc a,h			;3a4d
l3a4eh:
	jr nz,l39f1h		;3a4e
	sbc a,l			;3a50
	jr nz,$-94		;3a51
	sbc a,(hl)			;3a53
	jr nz,$-100		;3a54
l3a56h:
	sbc a,a			;3a56
	jr nz,l39fch		;3a57
	sbc a,l			;3a59
	jr nz,l3a00h		;3a5a
	sbc a,(hl)			;3a5c
	jr nz,$-90		;3a5d
	sbc a,a			;3a5f
	jr nz,$+32		;3a60
	and h			;3a62
	jr nz,$+32		;3a63
	and (hl)			;3a65
l3a66h:
	jr nz,$+32		;3a66
	jr nz,l3a8ah		;3a68
l3a6ah:
	jr nz,l3a1eh		;3a6a
	jr nz,$+32		;3a6c
	sbc a,e			;3a6e
	jr nz,$+32		;3a6f
	sbc a,h			;3a71
	jr nz,$+32		;3a72
	sbc a,l			;3a74
	jr nz,$+32		;3a75
	and h			;3a77
	jr nz,$+32		;3a78
	and l			;3a7a
	jr nz,$+32		;3a7b
	and (hl)			;3a7d
	jr nz,$+32		;3a7e
	xor h			;3a80
	jr nz,$+32		;3a81
	xor h			;3a83
	jr nz,$+32		;3a84
	xor h			;3a86
	jr nz,$+32		;3a87
	xor h			;3a89
l3a8ah:
	jr nz,$+32		;3a8a
	xor l			;3a8c
	jr nz,$+32		;3a8d
	xor (hl)			;3a8f
	jr nz,$+32		;3a90
	xor h			;3a92
	jr nz,$+32		;3a93
	xor h			;3a95
	jr nz,$+32		;3a96
	xor h			;3a98
	jr nz,$+32		;3a99
	xor h			;3a9b
	jr nz,$+32		;3a9c
	or b			;3a9e
	jr nz,$+32		;3a9f
	xor (hl)			;3aa1
	jr nz,$+32		;3aa2
	xor h			;3aa4
	jr nz,$+32		;3aa5
	xor h			;3aa7
	jr nz,$+32		;3aa8
	xor h			;3aaa
	jr nz,$+32		;3aab
	xor h			;3aad
	jr nz,$+32		;3aae
	xor h			;3ab0
	jr nz,$+32		;3ab1
	sbc a,d			;3ab3
	jr nz,$+32		;3ab4
	sbc a,e			;3ab6
	jr nz,$+32		;3ab7
	sbc a,h			;3ab9
	jr nz,l3a56h		;3aba
	sbc a,l			;3abc
	jr nz,l3a66h		;3abd
	sbc a,(hl)			;3abf
	jr nz,$+32		;3ac0
	and h			;3ac2
	jr nz,$+32		;3ac3
	and l			;3ac5
	jr nz,$+32		;3ac6
	and (hl)			;3ac8
	jr nz,$+32		;3ac9
	sbc a,d			;3acb
	jr nz,$+32		;3acc
	sbc a,e			;3ace
	jr nz,$+32		;3acf
	and l			;3ad1
	jr nz,$+32		;3ad2
	and (hl)			;3ad4
	jr nz,$+32		;3ad5
	xor h			;3ad7
	jr nz,$+32		;3ad8
	xor h			;3ada
	jr nz,$+32		;3adb
	xor h			;3add
	jr nz,$+32		;3ade
	xor h			;3ae0
	jr nz,$+32		;3ae1
	xor a			;3ae3
	jr nz,$+32		;3ae4
	xor h			;3ae6
	jr nz,$+32		;3ae7
	xor h			;3ae9
	jr nz,$+32		;3aea
	xor h			;3aec
	jr nz,$+32		;3aed
	xor h			;3aef
	jr nz,$+32		;3af0
	xor h			;3af2
	jr nz,$+32		;3af3
	xor h			;3af5
	jr nz,$+32		;3af6
	xor h			;3af8
	jr nz,$+32		;3af9
	xor h			;3afb
	jr nz,$+32		;3afc
	xor h			;3afe
l3affh:
	jr nz,$+32		;3aff
	xor h			;3b01
	jr nz,$+32		;3b02
	xor a			;3b04
	jr nz,$+32		;3b05
l3b07h:
	xor h			;3b07
	jr nz,$+32		;3b08
	xor h			;3b0a
	jr nz,l3b2dh		;3b0b
	or c			;3b0d
	jr nz,$+32		;3b0e
	xor (hl)			;3b10
	jr nz,$+32		;3b11
	xor h			;3b13
	jr nz,$+32		;3b14
	xor h			;3b16
	jr nz,$+32		;3b17
l3b19h:
	xor h			;3b19
	jr nz,$+32		;3b1a
	sbc a,d			;3b1c
l3b1dh:
	jr nz,l3b3fh		;3b1d
	and d			;3b1f
	jr nz,$+32		;3b20
	and l			;3b22
	jr nz,l3b45h		;3b23
l3b25h:
	and (hl)			;3b25
l3b26h:
	jr nz,$+32		;3b26
	and a			;3b28
l3b29h:
	jr nz,l3b4bh		;3b29
	jr nz,l3b4dh		;3b2b
l3b2dh:
	jr nz,l3b4fh		;3b2d
	jr nz,l3b51h		;3b2f
	or d			;3b31
	jr nz,l3b54h		;3b32
	or e			;3b34
	jr nz,$+32		;3b35
	or h			;3b37
	jr nz,$+32		;3b38
l3b3ah:
	or l			;3b3a
	jr nz,$+32		;3b3b
	jr nz,l3b5fh		;3b3d
l3b3fh:
	jr nz,l3b61h		;3b3f
	jr nz,$+32		;3b41
	jr nz,l3b65h		;3b43
l3b45h:
	jr nz,l3b67h		;3b45
	jr nz,$+32		;3b47
	jr nz,l3b6bh		;3b49
l3b4bh:
	jr nz,l3affh		;3b4b
l3b4dh:
	jr nz,l3b07h		;3b4d
l3b4fh:
	or e			;3b4f
l3b50h:
	or (hl)			;3b50
l3b51h:
	cp c			;3b51
	cp e			;3b52
	or a			;3b53
l3b54h:
	cp d			;3b54
	cp h			;3b55
	jr nz,$+32		;3b56
l3b58h:
	or h			;3b58
	jr nz,$+32		;3b59
	or l			;3b5b
	jr nz,$+32		;3b5c
l3b5eh:
	or d			;3b5e
l3b5fh:
	jr nz,l3b19h		;3b5f
l3b61h:
	or e			;3b61
l3b62h:
	jr nz,l3b1dh		;3b62
	cp e			;3b64
l3b65h:
	jr nz,$-70		;3b65
l3b67h:
	cp h			;3b67
	jr nz,l3b25h		;3b68
	cp e			;3b6a
l3b6bh:
	jr nz,$-70		;3b6b
	cp e			;3b6d
	jr nz,l3b26h		;3b6e
	cp c			;3b70
	jr nz,$-73		;3b71
	cp d			;3b73
	jr nz,$-72		;3b74
	or e			;3b76
	jr nz,l3b2dh		;3b77
	cp e			;3b79
l3b7ah:
	jr nz,$-70		;3b7a
	cp e			;3b7c
	jr nz,$+32		;3b7d
	or h			;3b7f
	jr nz,$+32		;3b80
l3b82h:
	or l			;3b82
	jr nz,$+32		;3b83
	jr nz,l3ba7h		;3b85
	jr nz,l3ba9h		;3b87
	jr nz,$+32		;3b89
	jr nz,l3badh		;3b8b
	jr nz,l3bafh		;3b8d
l3b8fh:
	jr nz,$+32		;3b8f
	or d			;3b91
	jr nz,$-72		;3b92
	or e			;3b94
l3b95h:
	jr nz,l3b50h		;3b95
	cp e			;3b97
	jr nz,l3b54h		;3b98
	cp h			;3b9a
	jr nz,$+32		;3b9b
	or h			;3b9d
	jr nz,l3b58h		;3b9e
	or e			;3ba0
	jr nz,$-70		;3ba1
	cp e			;3ba3
	jr nz,$-76		;3ba4
	cp h			;3ba6
l3ba7h:
	jr nz,$+32		;3ba7
l3ba9h:
	or h			;3ba9
	jr nz,l3b5eh		;3baa
	cp e			;3bac
l3badh:
	jr nz,l3b62h		;3bad
l3bafh:
	cp h			;3baf
	jr nz,$-70		;3bb0
	cp h			;3bb2
	jr nz,$-73		;3bb3
	cp d			;3bb5
	jr nz,$+32		;3bb6
	or h			;3bb8
	jr nz,l3bdbh		;3bb9
	or l			;3bbb
	jr nz,$+32		;3bbc
	jr nz,l3be0h		;3bbe
	jr nz,l3be2h		;3bc0
	jr nz,$+32		;3bc2
	jr nz,l3be6h		;3bc4
	jr nz,l3b7ah		;3bc6
	jr nz,l3b82h		;3bc8
	or e			;3bca
	or (hl)			;3bcb
	cp c			;3bcc
	cp e			;3bcd
	or a			;3bce
	cp d			;3bcf
	cp h			;3bd0
	jr nz,l3bf3h		;3bd1
	or h			;3bd3
	jr nz,$+32		;3bd4
	or l			;3bd6
	jr nz,l3bf9h		;3bd7
	jr nz,$+32		;3bd9
l3bdbh:
	jr nz,l3b8fh		;3bdb
	jr nz,l3b95h		;3bdd
	cp c			;3bdf
l3be0h:
	jr nz,$-73		;3be0
l3be2h:
	cp d			;3be2
	jr nz,$+32		;3be3
	or h			;3be5
l3be6h:
	jr nz,$+32		;3be6
	or l			;3be8
	jr nz,$+32		;3be9
	cp l			;3beb
	jr nz,$+32		;3bec
	cp l			;3bee
	cp (hl)			;3bef
	cp a			;3bf0
	ret p			;3bf1
	push af			;3bf2
l3bf3h:
	ret p			;3bf3
	call p,0bfbeh		;3bf4
	ret p			;3bf7
	pop af			;3bf8
l3bf9h:
	call p,sub_20bfh		;3bf9
l3bfch:
	di			;3bfc
	ret p			;3bfd
	or 0f7h		;3bfe
	jp p,0f0beh		;3c00
	cp a			;3c03
	jr nz,l3c26h		;3c04
	cp l			;3c06
	jr nz,l3bfch		;3c07
	ret p			;3c09
	jr nz,$+32		;3c0a
	cp l			;3c0c
	jr nz,$+32		;3c0d
	cp l			;3c0f
	or 0f4h		;3c10
	cp a			;3c12
	ret p			;3c13
	cp a			;3c14
	ret p			;3c15
l3c16h:
	push af			;3c16
	ret p			;3c17
	call p,0bff0h		;3c18
	call p,0f0beh		;3c1b
	ret p			;3c1e
	jr nz,l3c16h		;3c1f
	cp a			;3c21
	pop af			;3c22
	ret p			;3c23
	ret p			;3c24
	pop af			;3c25
l3c26h:
	cp a			;3c26
	cp a			;3c27
	jr nz,$+32		;3c28
	push af			;3c2a
	or 0f7h		;3c2b
	call p,0f0beh		;3c2d
	cp a			;3c30
	push af			;3c31
l3c32h:
	call p,0f3f4h		;3c32
	cp a			;3c35
	cp a			;3c36
	cp (hl)			;3c37
	ret p			;3c38
	call p,sub_2020h		;3c39
	cp l			;3c3c
	jr nz,l3c32h		;3c3d
	ret p			;3c3f
	jr nz,l3c62h		;3c40
	cp l			;3c42
	jr nz,$+32		;3c43
	cp l			;3c45
	jr nz,$+32		;3c46
	cp l			;3c48
	jr nz,$+32		;3c49
	cp l			;3c4b
	pop af			;3c4c
	cp a			;3c4d
	cp a			;3c4e
	cp (hl)			;3c4f
	call p,0f1f0h		;3c50
	ret p			;3c53
	cp a			;3c54
	cp a			;3c55
	ret p			;3c56
	call p,0bff5h		;3c57
	ret p			;3c5a
	cp (hl)			;3c5b
	call p,0f6bfh		;3c5c
	ret p			;3c5f
	cp a			;3c60
	di			;3c61
l3c62h:
	cp a			;3c62
l3c63h:
	ret p			;3c63
	jr nz,$-13		;3c64
	call p,0f520h		;3c66
	call p,sub_2020h		;3c69
	cp l			;3c6c
	jr nz,l3c8fh		;3c6d
	cp l			;3c6f
	jr nz,l3c63h		;3c70
	ret p			;3c72
	jr nz,$-11		;3c73
	cp a			;3c75
	cp (hl)			;3c76
	ret p			;3c77
	cp a			;3c78
	pop af			;3c79
	call p,0f5f4h		;3c7a
	cp a			;3c7d
	cp a			;3c7e
	ret p			;3c7f
	call p,020f4h		;3c80
	di			;3c83
	ret p			;3c84
	or 0bfh		;3c85
	call p,0bff5h		;3c87
	ret p			;3c8a
	jr nz,$-11		;3c8b
	cp a			;3c8d
	pop af			;3c8e
l3c8fh:
	cp a			;3c8f
	ret p			;3c90
	cp (hl)			;3c91
	call p,0f0f4h		;3c92
	ret p			;3c95
	ret p			;3c96
l3c97h:
	jr nz,$-13		;3c97
	cp a			;3c99
	cp (hl)			;3c9a
	cp a			;3c9b
	ret p			;3c9c
	jr nz,$-11		;3c9d
	cp a			;3c9f
	jr nz,l3c97h		;3ca0
	call p,0f0f1h		;3ca2
	cp a			;3ca5
	jr nz,l3cc8h		;3ca6
	cp l			;3ca8
l3ca9h:
	add hl,bc			;3ca9
	jr nz,l3ccch		;3caa
	jr nz,l3cceh		;3cac
	jr nz,l3cd0h		;3cae
	jr nz,l3cd2h		;3cb0
	jr nz,l3cd4h		;3cb2
	jr nz,l3cd6h		;3cb4
	jr nz,l3cd8h		;3cb6
	jr nz,l3cdah		;3cb8
	jr nz,l3cdch		;3cba
	jr nz,l3cdeh		;3cbc
	jr nz,l3ce0h		;3cbe
	jr nz,l3ce2h		;3cc0
	jr nz,l3ce4h		;3cc2
	jr nz,l3ce6h		;3cc4
	jr nz,l3ce8h		;3cc6
l3cc8h:
	jr nz,l3ceah		;3cc8
	jr nz,l3cech		;3cca
l3ccch:
	jr nz,l3ceeh		;3ccc
l3cceh:
	jr nz,l3cf0h		;3cce
l3cd0h:
	jr nz,l3cf2h		;3cd0
l3cd2h:
	jr nz,l3cf4h		;3cd2
l3cd4h:
	jr nz,l3cf6h		;3cd4
l3cd6h:
	jr nz,l3cf8h		;3cd6
l3cd8h:
	jr nz,l3cfah		;3cd8
l3cdah:
	jr nz,l3cfch		;3cda
l3cdch:
	jr nz,l3cfeh		;3cdc
l3cdeh:
	jr nz,l3d00h		;3cde
l3ce0h:
	jr nz,l3d02h		;3ce0
l3ce2h:
	jr nz,l3d04h		;3ce2
l3ce4h:
	jr nz,l3d06h		;3ce4
l3ce6h:
	jr nz,l3d08h		;3ce6
l3ce8h:
	jr nz,l3d0ah		;3ce8
l3ceah:
	jr nz,l3d0ch		;3cea
l3cech:
	jr nz,l3d0eh		;3cec
l3ceeh:
	jr nz,l3d10h		;3cee
l3cf0h:
	jr nz,l3d12h		;3cf0
l3cf2h:
	jr nz,l3d14h		;3cf2
l3cf4h:
	jr nz,l3d16h		;3cf4
l3cf6h:
	jr nz,l3d18h		;3cf6
l3cf8h:
	jr nz,l3d1ah		;3cf8
l3cfah:
	jr nz,l3d1ch		;3cfa
l3cfch:
	jr nz,l3d1eh		;3cfc
l3cfeh:
	jr nz,l3d20h		;3cfe
l3d00h:
	jr nz,l3d22h		;3d00
l3d02h:
	jr nz,l3d24h		;3d02
l3d04h:
	jr nz,l3d26h		;3d04
l3d06h:
	jr nz,l3d28h		;3d06
l3d08h:
	jr nz,l3d2ah		;3d08
l3d0ah:
	jr nz,l3d2ch		;3d0a
l3d0ch:
	jr nz,l3d2eh		;3d0c
l3d0eh:
	jr nz,l3d30h		;3d0e
l3d10h:
	jr nz,l3d32h		;3d10
l3d12h:
	jr nz,l3d34h		;3d12
l3d14h:
	jr nz,l3d36h		;3d14
l3d16h:
	jr nz,l3d38h		;3d16
l3d18h:
	jr nz,l3d3ah		;3d18
l3d1ah:
	jr nz,l3d3ch		;3d1a
l3d1ch:
	jr nz,l3d3eh		;3d1c
l3d1eh:
	jr nz,l3d40h		;3d1e
l3d20h:
	jr nz,l3d42h		;3d20
l3d22h:
	jr nz,l3d44h		;3d22
l3d24h:
	jr nz,l3d46h		;3d24
l3d26h:
	jr nz,l3d48h		;3d26
l3d28h:
	jr nz,l3d4ah		;3d28
l3d2ah:
	jr nz,l3d4ch		;3d2a
l3d2ch:
	jr nz,l3d4eh		;3d2c
l3d2eh:
	jr nz,l3d50h		;3d2e
l3d30h:
	jr nz,l3d52h		;3d30
l3d32h:
	jr nz,l3d54h		;3d32
l3d34h:
	jr nz,l3d56h		;3d34
l3d36h:
	jr nz,l3d58h		;3d36
l3d38h:
	jr nz,l3d5ah		;3d38
l3d3ah:
	jr nz,l3d5ch		;3d3a
l3d3ch:
	jr nz,l3d5eh		;3d3c
l3d3eh:
	jr nz,l3d60h		;3d3e
l3d40h:
	jr nz,l3d62h		;3d40
l3d42h:
	jr nz,l3d64h		;3d42
l3d44h:
	jr nz,l3d66h		;3d44
l3d46h:
	jr nz,l3d68h		;3d46
l3d48h:
	jr nz,l3d6ah		;3d48
l3d4ah:
	jr nz,$+32		;3d4a
l3d4ch:
	jr nz,l3d6eh		;3d4c
l3d4eh:
	jr nz,$+32		;3d4e
l3d50h:
	jr nz,l3d72h		;3d50
l3d52h:
	jr nz,l3d74h		;3d52
l3d54h:
	jr nz,$+32		;3d54
l3d56h:
	jr nz,l3d78h		;3d56
l3d58h:
	jr nz,l3d7ah		;3d58
l3d5ah:
	jr nz,l3d7ch		;3d5a
l3d5ch:
	jr nz,l3d7eh		;3d5c
l3d5eh:
	jr nz,$+32		;3d5e
l3d60h:
	jr nz,l3d82h		;3d60
l3d62h:
	jr nz,$+32		;3d62
l3d64h:
	jr nz,$+32		;3d64
l3d66h:
	jr nz,$+32		;3d66
l3d68h:
	jr nz,l3d8ah		;3d68
l3d6ah:
	nop			;3d6a
sub_3d6bh:
	ld a,(0c05eh)		;3d6b
l3d6eh:
	ld b,a			;3d6e
	ld a,(0c007h)		;3d6f
l3d72h:
	cp b			;3d72
	ret z			;3d73
l3d74h:
	ld (0c05eh),a		;3d74
sub_3d77h:
	add a,a			;3d77
l3d78h:
	add a,a			;3d78
	push af			;3d79
l3d7ah:
	add a,a			;3d7a
	ld l,a			;3d7b
l3d7ch:
	ld h,000h		;3d7c
l3d7eh:
	ld de,l3ddah		;3d7e
	add hl,de			;3d81
l3d82h:
	ld de,0c010h		;3d82
	ld b,008h		;3d85
	call l0020h		;3d87
l3d8ah:
	pop af			;3d8a
	ld l,a			;3d8b
	ld h,000h		;3d8c
	ld de,l3e02h		;3d8e
	add hl,de			;3d91
	ld de,0c000h		;3d92
	ld b,004h		;3d95
	jp l0020h		;3d97
l3d9ah:
	inc d			;3d9a
	inc b			;3d9b
	ex af,af'			;3d9c
	inc c			;3d9d
	ccf			;3d9e
	ccf			;3d9f
	inc bc			;3da0
	inc bc			;3da1
	ccf			;3da2
	ccf			;3da3
	ccf			;3da4
	ccf			;3da5
	inc d			;3da6
	inc d			;3da7
	inc d			;3da8
	inc d			;3da9
	jr c,l3dach		;3daa
l3dach:
	nop			;3dac
	inc l			;3dad
	jr z,l3dd4h		;3dae
	nop			;3db0
	inc c			;3db1
	ccf			;3db2
	daa			;3db3
	jr nc,l3dbeh		;3db4
	nop			;3db6
	inc bc			;3db7
	rrca			;3db8
	dec d			;3db9
l3dbah:
	nop			;3dba
	inc b			;3dbb
	ex af,af'			;3dbc
	inc c			;3dbd
l3dbeh:
	dec d			;3dbe
	dec d			;3dbf
	dec d			;3dc0
	add hl,de			;3dc1
	ccf			;3dc2
	add hl,de			;3dc3
	ccf			;3dc4
	ccf			;3dc5
	nop			;3dc6
	inc bc			;3dc7
	rrca			;3dc8
	inc bc			;3dc9
	nop			;3dca
	ccf			;3dcb
	add hl,hl			;3dcc
	dec h			;3dcd
	dec d			;3dce
	inc d			;3dcf
	djnz l3dd2h		;3dd0
l3dd2h:
	rrca			;3dd2
	daa			;3dd3
l3dd4h:
	jr nc,$+8		;3dd4
	nop			;3dd6
	inc bc			;3dd7
	ccf			;3dd8
	nop			;3dd9
l3ddah:
	jr c,l3ddch		;3dda
l3ddch:
	ld hl,(sub_080bh+1)		;3ddc
	inc b			;3ddf
	ccf			;3de0
	ld hl,(l0038h)		;3de1
	ld hl,(l181ch)		;3de4
	inc d			;3de7
	ccf			;3de8
	ld hl,(l0038h)		;3de9
	ld hl,(00a0bh)		;3dec
	ld b,03fh		;3def
	ld hl,(l0010h)		;3df1
	ld hl,(02615h)		;3df4
	nop			;3df7
	djnz l3e0ah		;3df8
	rlca			;3dfa
	nop			;3dfb
	ld hl,(l0a0eh)		;3dfc
	ld b,01fh		;3dff
	dec de			;3e01
l3e02h:
	inc d			;3e02
	inc b			;3e03
	ex af,af'			;3e04
	inc c			;3e05
	inc d			;3e06
	dec b			;3e07
	add hl,bc			;3e08
	dec c			;3e09
l3e0ah:
	inc d			;3e0a
	ld b,00ah		;3e0b
	ld c,014h		;3e0d
	djnz $+32		;3e0f
	jr nc,$+20		;3e11
	ld d,01ah		;3e13
	dec de			;3e15
l3e16h:
	ld bc,l003ch		;3e16
	ld a,(0c000h)		;3e19
	and 004h		;3e1c
	jr nz,l3e2dh		;3e1e
	ld a,001h		;3e20
	ld (0c064h),a		;3e22
	ld bc,00438h		;3e25
	ld a,089h		;3e28
	ld (0c100h),a		;3e2a
l3e2dh:
	rst 8			;3e2d
	push bc			;3e2e
	call sub_2509h		;3e2f
	pop bc			;3e32
	ld a,(0c001h)		;3e33
	cpl			;3e36
	ld e,a			;3e37
	ld a,(0c01ah)		;3e38
	and e			;3e3b
	and 030h		;3e3c
	jr nz,l3e45h		;3e3e
	dec bc			;3e40
	ld a,b			;3e41
	or c			;3e42
	jr nz,l3e2dh		;3e43
l3e45h:
	call sub_35ebh		;3e45
	jp l00beh		;3e48
sub_3e4bh:
	ld hl,0c064h		;3e4b
	ld a,(hl)			;3e4e
	or a			;3e4f
	ret z			;3e50
	ld (hl),000h		;3e51
	add a,a			;3e53
	add a,a			;3e54
	ld l,a			;3e55
	ld h,000h		;3e56
	ld de,03e95h		;3e58
	add hl,de			;3e5b
	ld e,(hl)			;3e5c
	inc hl			;3e5d
	ld d,(hl)			;3e5e
	inc hl			;3e5f
	ld a,(hl)			;3e60
	inc hl			;3e61
	ld h,(hl)			;3e62
	ld l,a			;3e63
	ld a,(0c051h)		;3e64
	rrca			;3e67
	rrca			;3e68
	and 03eh		;3e69
	ld c,a			;3e6b
	ld b,000h		;3e6c
	add hl,bc			;3e6e
	ld a,h			;3e6f
	cp 07ah		;3e70
	jr c,l3e7ah		;3e72
	ld h,079h		;3e74
	ld a,l			;3e76
	sub 040h		;3e77
	ld l,a			;3e79
l3e7ah:
	call sub_0018h		;3e7a
l3e7dh:
	ld a,(de)			;3e7d
	or a			;3e7e
	ret z			;3e7f
	out (0beh),a		;3e80
	inc de			;3e82
	inc hl			;3e83
	inc hl			;3e84
	push af			;3e85
	pop af			;3e86
	ld a,009h		;3e87
	out (0beh),a		;3e89
	ld a,h			;3e8b
	cp 07ah		;3e8c
	jr c,l3e7dh		;3e8e
	ld hl,079c0h		;3e90
	call sub_0018h		;3e93
	jr l3e7dh		;3e96
	ret			;3e98
	pop bc			;3e99
	ld a,0d6h		;3e9a
	ld a,c			;3e9c
	srl (hl)		;3e9d
	ret nc			;3e9f
	ld a,c			;3ea0
	call c,0c63eh		;3ea1
	ld a,c			;3ea4
	or 03eh		;3ea5
	ret nz			;3ea7
	ld a,c			;3ea8
	rla			;3ea9
	ccf			;3eaa
	call z,02b79h		;3eab
	ccf			;3eae
	call z,sub_3f79h		;3eaf
	ccf			;3eb2
	add a,079h		;3eb3
	ld e,e			;3eb5
	ccf			;3eb6
	jp z,l7279h		;3eb7
	ccf			;3eba
	call z,0fb79h		;3ebb
	ld a,0c6h		;3ebe
	ld a,c			;3ec0
	.DB "GAME OVER"			;3ec1
	.DB $00			;3eca
	.DB "CONGRATULATIONS:"			;3ecb
    .DB $00			;3edb
    .DB "CHALLENGE THE NEXT COURSE"			;3ece
    .DB $00			;3ecf
	jr nz,$+32		;3ef6
	jr nz,l3f1ah		;3ef8
	jr nz,l3f1ch		;3efa
	jr nz,l3f1eh		;3efc
	jr nz,l3f20h		;3efe
l3f00h:
	jr nz,l3f22h		;3f00
	jr nz,l3f24h		;3f02
	jr nz,l3f26h		;3f04
	jr nz,l3f28h		;3f06
	jr nz,l3f2ah		;3f08
	jr nz,l3f2ch		;3f0a
	jr nz,l3f2eh		;3f0c
	jr nz,l3f30h		;3f0e
	jr nz,l3f32h		;3f10
	jr nz,l3f34h		;3f12
	jr nz,l3f36h		;3f14
l3f16h:
	nop			;3f16
	ld l,05ah		;3f17
	ld e,e			;3f19
l3f1ah:
	jr nz,l3f6fh		;3f1a
l3f1ch:
	ld d,h			;3f1c
	ld b,c			;3f1d
l3f1eh:
	ld b,a			;3f1e
	ld b,l			;3f1f
l3f20h:
	jr nz,l3f5dh		;3f20
l3f22h:
	ld b,e			;3f22
	ld c,c			;3f23
l3f24h:
	ld d,d			;3f24
	ld b,e			;3f25
l3f26h:
	ld d,l			;3f26
	ld c,c			;3f27
l3f28h:
	ld d,h			;3f28
	dec sp			;3f29
l3f2ah:
	nop			;3f2a
	cpl			;3f2b
l3f2ch:
	ld e,h			;3f2c
	ld e,l			;3f2d
l3f2eh:
	jr nz,l3f83h		;3f2e
l3f30h:
	ld d,h			;3f30
	ld b,c			;3f31
l3f32h:
	ld b,a			;3f32
l3f33h:
	ld b,l			;3f33
l3f34h:
	jr nz,l3f71h		;3f34
l3f36h:
	ld d,e			;3f36
	ld b,l			;3f37
	ld b,c			;3f38
l3f39h:
	ld d,e			;3f39
	ld c,c			;3f3a
l3f3bh:
	ld b,h			;3f3b
	ld b,l			;3f3c
	dec sp			;3f3d
	nop			;3f3e
	inc a			;3f3f
	ld e,(hl)			;3f40
	ld e,l			;3f41
	jr nz,l3f97h		;3f42
	ld d,h			;3f44
	ld b,c			;3f45
	ld b,a			;3f46
	ld b,l			;3f47
	jr nz,l3f85h		;3f48
	ld c,l			;3f4a
	ld c,a			;3f4b
	ld c,(hl)			;3f4c
	ld d,l			;3f4d
	ld c,l			;3f4e
	ld b,l			;3f4f
	ld c,(hl)			;3f50
	ld d,h			;3f51
	jr nz,l3faah		;3f52
	ld b,c			;3f54
	ld c,h			;3f55
	ld c,h			;3f56
	ld b,l			;3f57
	ld e,c			;3f58
	dec sp			;3f59
	nop			;3f5a
	ld b,b			;3f5b
	ld e,e			;3f5c
l3f5dh:
	ld e,a			;3f5d
	jr nz,$+83		;3f5e
	ld d,h			;3f60
	ld b,c			;3f61
	ld b,a			;3f62
	ld b,l			;3f63
	jr nz,$+59		;3f64
	ld b,e			;3f66
	ld c,c			;3f67
	ld d,h			;3f68
	ld e,c			;3f69
	jr nz,$+78		;3f6a
	ld c,c			;3f6c
	ld b,a			;3f6d
	ld c,b			;3f6e
l3f6fh:
	ld d,h			;3f6f
	dec sp			;3f70
l3f71h:
	nop			;3f71
	ld c,h			;3f72
	ld b,c			;3f73
	ld d,e			;3f74
	ld d,h			;3f75
	jr nz,l3fcbh		;3f76
	ld d,h			;3f78
sub_3f79h:
	ld b,c			;3f79
	ld b,a			;3f7a
	ld b,l			;3f7b
	jr nz,$+59		;3f7c
	ld b,e			;3f7e
	ld c,c			;3f7f
	ld d,d			;3f80
	ld b,e			;3f81
	ld d,l			;3f82
l3f83h:
	ld c,c			;3f83
	ld d,h			;3f84
l3f85h:
	dec sp			;3f85
	nop			;3f86
l3f87h:
	ld a,002h		;3f87
	ld (0c064h),a		;3f89
	ld hl,0c380h		;3f8c
	ld de,l001fh		;3f8f
	ld b,004h		;3f92
	xor a			;3f94
l3f95h:
	ld (hl),a			;3f95
	inc hl			;3f96
l3f97h:
	ld (hl),a			;3f97
	add hl,de			;3f98
	djnz l3f95h		;3f99
	ld bc,0012ch		;3f9b
	ld a,088h		;3f9e
	ld (0c100h),a		;3fa0
l3fa3h:
	rst 8			;3fa3
	push bc			;3fa4
	call sub_2509h		;3fa5
	pop bc			;3fa8
	dec bc			;3fa9
l3faah:
	ld a,c			;3faa
	or b			;3fab
	jr nz,l3fa3h		;3fac
	ld a,(0c00dh)		;3fae
	or a			;3fb1
	jr nz,l3fc1h		;3fb2
l3fb4h:
	rst 8			;3fb4
	call sub_2509h		;3fb5
	ld hl,(0c31ah)		;3fb8
	ld a,l			;3fbb
	or h			;3fbc
	jr nz,l3fb4h		;3fbd
	jr l3fe7h		;3fbf
l3fc1h:
	ld b,01eh		;3fc1
l3fc3h:
	rst 8			;3fc3
	push bc			;3fc4
	call sub_2509h		;3fc5
	pop bc			;3fc8
	djnz l3fc3h		;3fc9
l3fcbh:
	ld hl,0c00dh		;3fcb
l3fceh:
	push hl			;3fce
	ld b,008h		;3fcf
l3fd1h:
	rst 8			;3fd1
	push bc			;3fd2
	call sub_2509h		;3fd3
	pop bc			;3fd6
	djnz l3fd1h		;3fd7
	ld a,005h		;3fd9
	call sub_35c6h		;3fdb
	ld a,087h		;3fde
	ld (0c100h),a		;3fe0
	pop hl			;3fe3
	dec (hl)			;3fe4
	jr nz,l3fceh		;3fe5
l3fe7h:
	ld b,078h		;3fe7
l3fe9h:
	rst 8			;3fe9
	push bc			;3fea
	call sub_2509h		;3feb
	pop bc			;3fee
	djnz l3fe9h		;3fef
	ld a,003h		;3ff1
	ld (0c064h),a		;3ff3
l3ff6h:
	rst 8			;3ff6
	call sub_2509h		;3ff7
	ld hl,(0c31ah)		;3ffa
	ld a,l			;3ffd
	or h			;3ffe
	jr nz,l3ff6h		;3fff
l4001h:
	ld b,0b4h		;4001
l4003h:
	rst 8			;4003
	push bc			;4004
	call sub_2509h		;4005
	pop bc			;4008
	djnz l4003h		;4009
	ld a,004h		;400b
	ld (0c064h),a		;400d
	ld hl,0c010h		;4010
	ld a,(hl)			;4013
	inc a			;4014
	cp 008h		;4015
	jr c,l4033h		;4017
	ld a,(0c4c0h)		;4019
	inc a			;401c
	cp 003h		;401d
	jr c,l402fh		;401f
	ld a,(0c074h)		;4021
	sub 002h		;4024
	cp 032h		;4026
	jr c,l4032h		;4028
	ld (0c074h),a		;402a
	jr l4032h		;402d
l402fh:
	ld (0c4c0h),a		;402f
l4032h:
	xor a			;4032
l4033h:
	ld (hl),a			;4033
	ld a,03ch		;4034
	ld (0c00dh),a		;4036
	rst 8			;4039
	ld a,080h		;403a
	ld (0c000h),a		;403c
	ld a,064h		;403f
	ld (0c067h),a		;4041
	ld a,003h		;4044
	ld (0c06ah),a		;4046
	jp l010dh		;4049
	jp sub_4131h		;404c
sub_404fh:
	ld a,(0c100h)		;404f
	cp 081h		;4052
	jr z,l4065h		;4054
	call sub_43c0h		;4056
	call sub_4239h		;4059
	ld ix,0c150h		;405c
	ld b,00ch		;4060
	jp l4469h		;4062
l4065h:
	call sub_4081h		;4065
	call sub_4239h		;4068
	ld ix,(0c108h)		;406b
	call sub_413ch		;406f
	ld ix,(0c10ah)		;4072
	call sub_413ch		;4076
	ld ix,0c150h		;4079
	call sub_41d1h		;407d
	ret			;4080
sub_4081h:
	ld hl,(0c101h)		;4081
	ld a,l			;4084
	or h			;4085
	ret z			;4086
	jp (hl)			;4087
l4088h:
	ld bc,l0003h		;4088
	call sub_40f5h		;408b
	ld hl,l4727h+1		;408e
	ld (0c173h),hl		;4091
	ld hl,l4770h		;4094
	ld (0c193h),hl		;4097
	ld hl,0c170h		;409a
	ld de,0c190h		;409d
	jr l4103h		;40a0
l40a2h:
	ld hl,l474fh		;40a2
	ld (0c173h),hl		;40a5
	ld hl,l4794h		;40a8
	ld (0c193h),hl		;40ab
	jr l410ah		;40ae
l40b0h:
	ld bc,l0100h+2		;40b0
	call sub_40f5h		;40b3
	ld hl,l47b5h		;40b6
	ld (0c1b3h),hl		;40b9
	ld hl,l47cah		;40bc
	ld (0c1d3h),hl		;40bf
	ld hl,0c1b0h		;40c2
	ld de,0c1d0h		;40c5
	jr l4103h		;40c8
l40cah:
	ld bc,l0100h+2		;40ca
	call sub_40f5h		;40cd
	ld hl,l47e2h		;40d0
	ld (0c1f3h),hl		;40d3
	ld hl,l47f5h		;40d6
	ld (0c213h),hl		;40d9
	ld hl,0c1f0h		;40dc
	ld de,0c210h		;40df
	jr l4103h		;40e2
l40e4h:
	ld bc,l01ffh+1		;40e4
	call sub_40f5h		;40e7
	ld hl,l480ch		;40ea
	ld (0c233h),hl		;40ed
	ld hl,0c230h		;40f0
	jr l4107h		;40f3
sub_40f5h:
	ld a,(0c107h)		;40f5
	and c			;40f8
	jr z,l40feh		;40f9
	pop af			;40fb
	jr l410ah		;40fc
l40feh:
	or b			;40fe
	ld (0c107h),a		;40ff
	ret			;4102
l4103h:
	ld (0c10ah),de		;4103
l4107h:
	ld (0c108h),hl		;4107
l410ah:
	ld hl,start		;410a
	ld (0c101h),hl		;410d
	ret			;4110
l4111h:
	call sub_461ch		;4111
	ld a,0e7h		;4114
	out (07fh),a		;4116
	ld a,088h		;4118
	ld (0c150h),a		;411a
	ld hl,00080h		;411d
	ld (0c15fh),hl		;4120
	ld hl,0033dh		;4123
	ld (0c11fh),hl		;4126
	ld de,0c130h		;4129
	ld hl,0c110h		;412c
	jr l4103h		;412f
sub_4131h:
	ld hl,l46cbh		;4131
	ld de,0c110h		;4134
	ld b,00ah		;4137
	jp l444bh		;4139
sub_413ch:
	ld a,(ix+00bh)		;413c
	inc a			;413f
	ld (ix+00bh),a		;4140
	sub (ix+00ah)		;4143
	jp nz,sub_41d1h		;4146
	ld e,(ix+003h)		;4149
	ld d,(ix+004h)		;414c
l414fh:
	ld a,(de)			;414f
	inc de			;4150
	cp 0e0h		;4151
	jp nc,l417bh		;4153
	ld (ix+010h),a		;4156
	ld a,(de)			;4159
	inc de			;415a
	ld (ix+00fh),a		;415b
	bit 5,(ix+000h)		;415e
	jr z,l4169h		;4162
	ld a,(de)			;4164
	inc de			;4165
	ld (ix+011h),a		;4166
l4169h:
	ld a,(de)			;4169
	inc de			;416a
	ld (ix+00ah),a		;416b
	ld (ix+003h),e		;416e
	ld (ix+004h),d		;4171
	xor a			;4174
	ld (ix+00bh),a		;4175
	jp sub_41d1h		;4178
l417bh:
	cp 0e0h		;417b
	jr z,l4192h		;417d
	cp 0e1h		;417f
	jr z,l41afh		;4181
	cp 0e8h		;4183
	jr z,l419ah		;4185
	cp 0e9h		;4187
	jr z,l41a1h		;4189
	cp 0e5h		;418b
	jr z,l41a8h		;418d
	jp sub_41d1h		;418f
l4192h:
	ld a,(de)			;4192
	ld (ix+008h),a		;4193
	inc de			;4196
	jp l414fh		;4197
l419ah:
	set 5,(ix+000h)		;419a
	jp l414fh		;419e
l41a1h:
	res 5,(ix+000h)		;41a1
	jp l414fh		;41a5
l41a8h:
	ex de,hl			;41a8
	ld e,(hl)			;41a9
	inc hl			;41aa
	ld d,(hl)			;41ab
	jp l414fh		;41ac
l41afh:
	call sub_4612h		;41af
	ld a,(de)			;41b2
	ld hl,l460eh		;41b3
	ld c,a			;41b6
	ld b,000h		;41b7
	add hl,bc			;41b9
	ld a,(0c107h)		;41ba
	and (hl)			;41bd
	ld (0c107h),a		;41be
	xor a			;41c1
	ld (ix+00bh),a		;41c2
	ld hl,0c110h		;41c5
	ld (0c108h),hl		;41c8
	ld hl,0c130h		;41cb
	ld (0c10ah),hl		;41ce
sub_41d1h:
	ld e,(ix+00fh)		;41d1
	ld d,(ix+010h)		;41d4
	ld a,e			;41d7
	or d			;41d8
	jr nz,l41e0h		;41d9
	ld l,00fh		;41db
	jp l4230h		;41dd
l41e0h:
	bit 5,(ix+000h)		;41e0
	jr z,l41feh		;41e4
	ld a,e			;41e6
	ld c,(ix+011h)		;41e7
	sub c			;41ea
	bit 7,c		;41eb
	jr z,l41f4h		;41ed
	jr c,l41f7h		;41ef
	inc d			;41f1
	jr l41f7h		;41f2
l41f4h:
	jr nc,l41f7h		;41f4
	dec d			;41f6
l41f7h:
	ld e,a			;41f7
	ld (ix+00fh),e		;41f8
	ld (ix+010h),d		;41fb
l41feh:
	ld a,(ix+007h)		;41fe
	or a			;4201
	jr z,l420fh		;4202
	ld hl,l481dh		;4204
	call sub_4493h		;4207
	call sub_44a1h		;420a
	jr l4216h		;420d
l420fh:
	ld a,(ix+008h)		;420f
	cpl			;4212
	and 00fh		;4213
	ld l,a			;4215
l4216h:
	ld a,(ix+001h)		;4216
	cp 0e0h		;4219
	jr nz,l421fh		;421b
	ld a,0c0h		;421d
l421fh:
	ld c,a			;421f
	ld a,e			;4220
	and 00fh		;4221
	or c			;4223
	out (07fh),a		;4224
	ld a,e			;4226
	and 0f0h		;4227
	or d			;4229
	rrca			;422a
	rrca			;422b
	rrca			;422c
	rrca			;422d
	out (07fh),a		;422e
l4230h:
	ld a,(ix+001h)		;4230
	add a,010h		;4233
	or l			;4235
	out (07fh),a		;4236
	ret			;4238
sub_4239h:
	ld a,(0c104h)		;4239
	inc a			;423c
	ld (0c104h),a		;423d
	ld a,(0c290h)		;4240
	or a			;4243
	ret nz			;4244
	ld a,(0c31dh)		;4245
	ld c,a			;4248
	ld b,000h		;4249
	ld hl,0433ch		;424b
	call sub_42b1h		;424e
	ld a,(0c31fh)		;4251
	or a			;4254
	jr nz,l4276h		;4255
	ld de,(0c15fh)		;4257
	sbc hl,de		;425b
	jr c,l4264h		;425d
	jr z,l4265h		;425f
	inc de			;4261
	jr l4265h		;4262
l4264h:
	dec de			;4264
l4265h:
	ex de,hl			;4265
	ld a,(0c104h)		;4266
	and 001h		;4269
	jr z,l4272h		;426b
	ld de,l0020h		;426d
	jr l4275h		;4270
l4272h:
	ld de,0ffe0h		;4272
l4275h:
	add hl,de			;4275
l4276h:
	ld (0c15fh),hl		;4276
	ld a,(0c250h)		;4279
	or a			;427c
	ret nz			;427d
	ld hl,l42b8h		;427e
	call sub_42b1h		;4281
	ld a,(0c31fh)		;4284
	or a			;4287
	jr z,l4290h		;4288
	xor a			;428a
	ld (0c31fh),a		;428b
	jr l42a1h		;428e
l4290h:
	ld de,(0c11fh)		;4290
	sbc hl,de		;4294
	jr c,l429eh		;4296
	jr z,l42a0h		;4298
	inc de			;429a
	inc de			;429b
	jr l42a0h		;429c
l429eh:
	dec de			;429e
	dec de			;429f
l42a0h:
	ex de,hl			;42a0
l42a1h:
	ld (0c11fh),hl		;42a1
	ld a,l			;42a4
	add a,064h		;42a5
	ld (0c13fh),a		;42a7
	ld a,000h		;42aa
	adc a,h			;42ac
	ld (0c140h),a		;42ad
	ret			;42b0
sub_42b1h:
	add hl,bc			;42b1
	add hl,bc			;42b2
	ld a,(hl)			;42b3
	inc hl			;42b4
	ld h,(hl)			;42b5
	ld l,a			;42b6
	ret			;42b7
l42b8h:
	ld c,l			;42b8
	inc bc			;42b9
	dec a			;42ba
	inc bc			;42bb
	dec l			;42bc
	inc bc			;42bd
	ld e,003h		;42be
	ld c,003h		;42c0
	rst 38h			;42c2
	ld (bc),a			;42c3
	ret p			;42c4
	ld (bc),a			;42c5
	jp po,0d402h		;42c6
	ld (bc),a			;42c9
	rst 0			;42ca
	ld (bc),a			;42cb
	cp d			;42cc
	ld (bc),a			;42cd
	xor e			;42ce
	ld (bc),a			;42cf
	sbc a,a			;42d0
	ld (bc),a			;42d1
	sub d			;42d2
	ld (bc),a			;42d3
	add a,l			;42d4
	ld (bc),a			;42d5
	ld a,c			;42d6
	ld (bc),a			;42d7
	ld l,l			;42d8
	ld (bc),a			;42d9
	ld h,c			;42da
	ld (bc),a			;42db
	ld d,(hl)			;42dc
	ld (bc),a			;42dd
	ld c,d			;42de
	ld (bc),a			;42df
	ccf			;42e0
	ld (bc),a			;42e1
	inc (hl)			;42e2
	ld (bc),a			;42e3
	add hl,hl			;42e4
	ld (bc),a			;42e5
	ld e,002h		;42e6
	inc d			;42e8
	ld (bc),a			;42e9
	ld a,(bc)			;42ea
	ld (bc),a			;42eb
	nop			;42ec
	ld (bc),a			;42ed
	rst 30h			;42ee
	ld bc,l01ebh+1		;42ef
	ex (sp),hl			;42f2
	ld bc,001dah		;42f3
	pop de			;42f6
	ld bc,001c8h		;42f7
	ret nz			;42fa
	ld bc,001b7h		;42fb
	xor a			;42fe
	ld bc,l01a7h		;42ff
	sbc a,a			;4302
	ld bc,l0196h		;4303
	adc a,a			;4306
	ld bc,00187h		;4307
	add a,b			;430a
	ld bc,l0177h+2		;430b
	ld (hl),d			;430e
	ld bc,l0169h+1		;430f
	ld h,h			;4312
	ld bc,0015dh		;4313
	ld d,(hl)			;4316
	ld bc,l0150h		;4317
	ld c,c			;431a
	ld bc,00143h		;431b
	dec a			;431e
	ld bc,l0137h		;431f
	jr nc,l4325h		;4322
	dec l			;4324
l4325h:
	ld bc,00126h		;4325
	rra			;4328
	ld bc,l0118h+2		;4329
	dec d			;432c
	ld bc,l010dh+2		;432d
	ld a,(bc)			;4330
	ld bc,00105h		;4331
	nop			;4334
	ld bc,l00fch		;4335
	ret m			;4338
	nop			;4339
	jp p,08a00h		;433a
	ld bc,l0182h		;433d
	ld a,d			;4340
	ld bc,l0172h		;4341
	ld l,d			;4344
	ld bc,l0162h		;4345
	ld e,d			;4348
	ld bc,l0153h		;4349
	ld c,h			;434c
	ld bc,l0145h		;434d
	ld a,001h		;4350
	scf			;4352
	ld bc,00130h		;4353
	ld hl,(l2401h)		;4356
	ld bc,l011eh		;4359
	jr l435fh		;435c
	ld (de),a			;435e
l435fh:
	ld bc,l010dh		;435f
	add hl,bc			;4362
	ld bc,00104h		;4363
	sbc a,a			;4366
	nop			;4367
	sbc a,d			;4368
	nop			;4369
	sub l			;436a
	nop			;436b
	sub b			;436c
	nop			;436d
	adc a,h			;436e
	nop			;436f
	adc a,b			;4370
	nop			;4371
	add a,h			;4372
	nop			;4373
	add a,b			;4374
	nop			;4375
	ld a,h			;4376
	nop			;4377
	ld a,b			;4378
	nop			;4379
	ld (hl),h			;437a
	nop			;437b
	ld (hl),b			;437c
	nop			;437d
	ld l,h			;437e
	nop			;437f
	ld l,b			;4380
	nop			;4381
	ld h,h			;4382
	nop			;4383
	ld h,c			;4384
	nop			;4385
	ld e,(hl)			;4386
	nop			;4387
	ld e,e			;4388
	nop			;4389
	ld e,b			;438a
	nop			;438b
	ld d,l			;438c
	nop			;438d
	ld d,d			;438e
	nop			;438f
	ld c,a			;4390
	nop			;4391
	ld c,h			;4392
	nop			;4393
	ld c,c			;4394
	nop			;4395
	ld b,(hl)			;4396
	nop			;4397
	ld b,e			;4398
	nop			;4399
	ld b,b			;439a
	nop			;439b
	dec a			;439c
	nop			;439d
	ld a,(l3800h)		;439e
	nop			;43a1
	ld (hl),000h		;43a2
	inc (hl)			;43a4
	nop			;43a5
	ld (03000h),a		;43a6
	nop			;43a9
	ld l,000h		;43aa
	inc l			;43ac
	nop			;43ad
	ld hl,(l2800h)		;43ae
	nop			;43b1
	daa			;43b2
	nop			;43b3
	ld h,000h		;43b4
	dec h			;43b6
	nop			;43b7
	inc h			;43b8
	nop			;43b9
	inc hl			;43ba
	nop			;43bb
	ld (l2100h),hl		;43bc
	nop			;43bf
sub_43c0h:
	bit 7,a		;43c0
	jp z,sub_461ch		;43c2
	cp 094h		;43c5
	jp nc,sub_461ch		;43c7
	sub 080h		;43ca
	ret z			;43cc
	ld c,a			;43cd
	ld b,000h		;43ce
	ld hl,l43e1h		;43d0
	add hl,bc			;43d3
	add hl,bc			;43d4
	ld c,(hl)			;43d5
	inc hl			;43d6
	ld b,(hl)			;43d7
	ld de,l001fh		;43d8
	add hl,de			;43db
	ld a,(hl)			;43dc
	inc hl			;43dd
	ld h,(hl)			;43de
	ld l,a			;43df
	jp (hl)			;43e0
l43e1h:
	ld h,e			;43e1
	ld b,h			;43e2
	ld h,e			;43e3
	ld b,h			;43e4
	ld h,e			;43e5
	ld b,h			;43e6
	ld h,e			;43e7
	ld b,h			;43e8
	ld h,e			;43e9
	ld b,h			;43ea
	ld h,e			;43eb
	ld b,h			;43ec
	sub c			;43ed
	ld c,b			;43ee
	in a,(048h)		;43ef
	pop af			;43f1
	ld c,b			;43f2
	ld (hl),a			;43f3
	ld c,c			;43f4
	xor b			;43f5
	ld c,d			;43f6
	ld l,l			;43f7
	ld c,h			;43f8
	sbc a,c			;43f9
	ld c,h			;43fa
	xor c			;43fb
	ld c,h			;43fc
	ld h,e			;43fd
	ld b,h			;43fe
	cp b			;43ff
l4400h:
	ld c,h			;4400
	ld h,e			;4401
	ld b,h			;4402
	ld h,e			;4403
	ld b,h			;4404
	ld h,e			;4405
	ld b,h			;4406
	ld h,e			;4407
	ld b,h			;4408
	ld h,e			;4409
	ld b,h			;440a
	jr c,l4451h		;440b
	ld hl,l2144h		;440d
	ld b,h			;4410
	ld h,044h		;4411
	ld h,044h		;4413
	ld h,044h		;4415
	dec hl			;4417
	ld b,h			;4418
	ld b,c			;4419
	ld b,h			;441a
	ld b,c			;441b
	ld b,h			;441c
	ld h,e			;441d
	ld b,h			;441e
	ld h,044h		;441f
	ld de,0c250h		;4421
	jr l4447h		;4424
	ld de,0c250h		;4426
	jr l442eh		;4429
	ld de,0c270h		;442b
l442eh:
	push bc			;442e
	xor a			;442f
	ld (0c150h),a		;4430
	call sub_4629h		;4433
	jr l4448h		;4436
	xor a			;4438
	ld (0c150h),a		;4439
	call sub_4629h		;443c
	jr l4463h		;443f
	call sub_4637h		;4441
	ld de,0c2b0h		;4444
l4447h:
	push bc			;4447
l4448h:
	pop hl			;4448
	ld b,(hl)			;4449
	inc hl			;444a
l444bh:
	push bc			;444b
	ld bc,l0009h		;444c
	ldir		;444f
l4451h:
	ld a,020h		;4451
	ld (de),a			;4453
	inc de			;4454
	ld a,001h		;4455
	ld (de),a			;4457
	inc de			;4458
	xor a			;4459
	ld b,015h		;445a
l445ch:
	ld (de),a			;445c
	inc de			;445d
	djnz l445ch		;445e
	pop bc			;4460
	djnz l444bh		;4461
l4463h:
	ld a,080h		;4463
	ld (0c100h),a		;4465
	ret			;4468
l4469h:
	push bc			;4469
	bit 7,(ix+000h)		;446a
	call nz,sub_447ah		;446e
	ld de,l0020h		;4471
	add ix,de		;4474
	pop bc			;4476
	djnz l4469h		;4477
	ret			;4479
sub_447ah:
	ld a,(ix+00bh)		;447a
	inc a			;447d
	ld (ix+00bh),a		;447e
	sub (ix+00ah)		;4481
	call z,sub_44d6h		;4484
	bit 2,(ix+000h)		;4487
	jp z,sub_41d1h		;448b
	ld l,00fh		;448e
	jp l4230h		;4490
sub_4493h:
	dec a			;4493
	ld c,a			;4494
	ld b,000h		;4495
	add hl,bc			;4497
	add hl,bc			;4498
	ld a,(hl)			;4499
	inc hl			;449a
	ld h,(hl)			;449b
	ld l,a			;449c
	ret			;449d
l449eh:
	ld (ix+00dh),a		;449e
sub_44a1h:
	push hl			;44a1
	ld a,(ix+00dh)		;44a2
	srl a		;44a5
	push af			;44a7
	ld c,a			;44a8
	ld b,000h		;44a9
	add hl,bc			;44ab
	pop af			;44ac
	ld a,(hl)			;44ad
	pop hl			;44ae
	jr c,l44c5h		;44af
	rrca			;44b1
	rrca			;44b2
	rrca			;44b3
	rrca			;44b4
	or a			;44b5
	jr z,l449eh		;44b6
	cp 010h		;44b8
	jr nz,l44c1h		;44ba
	dec (ix+00dh)		;44bc
	jr sub_44a1h		;44bf
l44c1h:
	cp 020h		;44c1
	jr z,l44d0h		;44c3
l44c5h:
	inc (ix+00dh)		;44c5
	or 0f0h		;44c8
	add a,(ix+008h)		;44ca
	inc a			;44cd
	jr c,l44d1h		;44ce
l44d0h:
	xor a			;44d0
l44d1h:
	cpl			;44d1
	and 00fh		;44d2
	ld l,a			;44d4
	ret			;44d5
sub_44d6h:
	ld e,(ix+003h)		;44d6
	ld d,(ix+004h)		;44d9
l44dch:
	ld a,(de)			;44dc
	inc de			;44dd
	cp 0e0h		;44de
	jp nc,l4532h		;44e0
	bit 4,(ix+000h)		;44e3
	jp nz,l452ch		;44e7
	or a			;44ea
	jp p,l4513h		;44eb
	sub 080h		;44ee
	jr z,l44f5h		;44f0
	add a,(ix+005h)		;44f2
l44f5h:
	ld hl,l4640h		;44f5
	ld c,a			;44f8
	ld b,000h		;44f9
	add hl,bc			;44fb
	add hl,bc			;44fc
	ld a,(hl)			;44fd
	ld (ix+00fh),a		;44fe
	inc hl			;4501
	ld a,(hl)			;4502
	ld (ix+010h),a		;4503
	bit 5,(ix+000h)		;4506
	jr z,l4525h		;450a
	ld a,(de)			;450c
	inc de			;450d
	ld (ix+011h),a		;450e
l4511h:
	ld a,(de)			;4511
l4512h:
	inc de			;4512
l4513h:
	ld (ix+00ah),a		;4513
l4516h:
	xor a			;4516
	ld (ix+00dh),a		;4517
	ld (ix+003h),e		;451a
	ld (ix+004h),d		;451d
	xor a			;4520
	ld (ix+00bh),a		;4521
	ret			;4524
l4525h:
	ld a,(de)			;4525
	or a			;4526
	jp p,l4512h		;4527
	jr l4516h		;452a
l452ch:
	ld (0c100h),a		;452c
	jp l4511h		;452f
l4532h:
	cp 0eeh		;4532
	ret z			;4534
	ld hl,l4548h		;4535
	push hl			;4538
	and 01fh		;4539
	ld hl,l454ch		;453b
	ld c,a			;453e
	ld b,000h		;453f
	add hl,bc			;4541
	add hl,bc			;4542
	ld a,(hl)			;4543
	inc hl			;4544
	ld h,(hl)			;4545
	ld l,a			;4546
	jp (hl)			;4547
l4548h:
	inc de			;4548
	jp l44dch		;4549
l454ch:
	ld (hl),b			;454c
	ld b,l			;454d
	call p,sub_7545h		;454e
	ld b,l			;4551
	ld a,a			;4552
	ld b,l			;4553
	ld a,c			;4554
	ld b,l			;4555
	sbc a,h			;4556
	ld b,l			;4557
	and d			;4558
	ld b,l			;4559
	cp l			;455a
	ld b,l			;455b
	ret pe			;455c
	ld b,l			;455d
	xor 045h		;455e
	ret nc			;4560
	ld b,l			;4561
	ld l,b			;4562
	ld b,l			;4563
	add a,h			;4564
	ld b,l			;4565
	adc a,(hl)			;4566
	ld b,l			;4567
	ld a,(de)			;4568
	add a,(ix+005h)		;4569
	ld (ix+005h),a		;456c
	ret			;456f
	ld a,(de)			;4570
	ld (ix+008h),a		;4571
	ret			;4574
	ld a,0e3h		;4575
	jr l457bh		;4577
	ld a,0e7h		;4579
l457bh:
	out (07fh),a		;457b
	dec de			;457d
	ret			;457e
	ld a,(de)			;457f
	ld (ix+007h),a		;4580
	ret			;4583
	set 4,(ix+000h)		;4584
	set 2,(ix+000h)		;4588
	jr l459ah		;458c
	res 4,(ix+000h)		;458e
	res 2,(ix+000h)		;4592
	xor a			;4596
	ld (0c2b0h),a		;4597
l459ah:
	dec de			;459a
	ret			;459b
l459ch:
	ex de,hl			;459c
	ld e,(hl)			;459d
	inc hl			;459e
	ld d,(hl)			;459f
	dec de			;45a0
	ret			;45a1
	ld a,(de)			;45a2
	ld c,a			;45a3
	inc de			;45a4
	ld a,(de)			;45a5
	ld b,a			;45a6
	push bc			;45a7
	push ix		;45a8
	pop hl			;45aa
	dec (ix+009h)		;45ab
	ld c,(ix+009h)		;45ae
	dec (ix+009h)		;45b1
	ld b,000h		;45b4
	add hl,bc			;45b6
	ld (hl),d			;45b7
	dec hl			;45b8
	ld (hl),e			;45b9
	pop de			;45ba
	dec de			;45bb
	ret			;45bc
	push ix		;45bd
	pop hl			;45bf
	ld c,(ix+009h)		;45c0
	ld b,000h		;45c3
	add hl,bc			;45c5
	ld e,(hl)			;45c6
	inc hl			;45c7
	ld d,(hl)			;45c8
	inc (ix+009h)		;45c9
	inc (ix+009h)		;45cc
	ret			;45cf
	ld a,(de)			;45d0
	inc de			;45d1
	add a,012h		;45d2
	ld c,a			;45d4
	ld b,000h		;45d5
	push ix		;45d7
	pop hl			;45d9
	add hl,bc			;45da
	ld a,(hl)			;45db
	or a			;45dc
	jr nz,l45e1h		;45dd
	ld a,(de)			;45df
	ld (hl),a			;45e0
l45e1h:
	inc de			;45e1
	dec (hl)			;45e2
	jp nz,l459ch		;45e3
	inc de			;45e6
	ret			;45e7
	set 5,(ix+000h)		;45e8
	dec de			;45ec
	ret			;45ed
	res 5,(ix+000h)		;45ee
	dec de			;45f2
	ret			;45f3
	call sub_4612h		;45f4
	ld a,(de)			;45f7
	ld hl,l460eh		;45f8
	ld c,a			;45fb
	ld b,000h		;45fc
	add hl,bc			;45fe
	ld a,(0c107h)		;45ff
	and (hl)			;4602
	ld (0c107h),a		;4603
	ld a,000h		;4606
	ld (ix+000h),a		;4608
	pop hl			;460b
	pop hl			;460c
	ret			;460d
l460eh:
	rst 38h			;460e
	nop			;460f
	cp 0fdh		;4610
sub_4612h:
	ld a,(ix+001h)		;4612
	add a,010h		;4615
	or 00fh		;4617
	out (07fh),a		;4619
	ret			;461b
sub_461ch:
	ld hl,0c250h		;461c
	ld de,0c251h		;461f
	ld bc,0007fh		;4622
	ld (hl),000h		;4625
	ldir		;4627
sub_4629h:
	ld hl,l4633h		;4629
	ld c,07fh		;462c
	ld b,004h		;462e
	otir		;4630
	ret			;4632
l4633h:
	sbc a,a			;4633
	cp a			;4634
	rst 18h			;4635
	rst 38h			;4636
sub_4637h:
	ld a,0dfh		;4637
	out (07fh),a		;4639
	ld a,0ffh		;463b
	out (07fh),a		;463d
	ret			;463f
l4640h:
	nop			;4640
	nop			;4641
	rst 38h			;4642
	inc bc			;4643
	rst 0			;4644
	inc bc			;4645
	sub b			;4646
	inc bc			;4647
	ld e,l			;4648
	inc bc			;4649
	dec l			;464a
	inc bc			;464b
	rst 38h			;464c
	ld (bc),a			;464d
	call nc,0ab02h		;464e
	ld (bc),a			;4651
	add a,l			;4652
	ld (bc),a			;4653
	ld h,c			;4654
	ld (bc),a			;4655
	ccf			;4656
	ld (bc),a			;4657
	ld e,002h		;4658
	nop			;465a
	ld (bc),a			;465b
	ex (sp),hl			;465c
	ld bc,001c8h		;465d
	xor a			;4660
	ld bc,l0196h		;4661
	add a,b			;4664
	ld bc,l0169h+1		;4665
	ld d,(hl)			;4668
	ld bc,00143h		;4669
	jr nc,l466fh		;466c
	rra			;466e
l466fh:
	ld bc,l010dh+2		;466f
	nop			;4672
	ld bc,l00f0h+2		;4673
	call po,0d700h		;4676
	nop			;4679
	rlc b		;467a
	ret nz			;467c
	nop			;467d
	or l			;467e
	nop			;467f
	xor e			;4680
	nop			;4681
	and c			;4682
	nop			;4683
	sbc a,b			;4684
	nop			;4685
	sub b			;4686
	nop			;4687
	adc a,b			;4688
	nop			;4689
	add a,b			;468a
	nop			;468b
	ld a,c			;468c
	nop			;468d
	ld (hl),d			;468e
	nop			;468f
	ld l,h			;4690
	nop			;4691
	ld h,(hl)			;4692
	nop			;4693
	ld h,b			;4694
	nop			;4695
	ld e,e			;4696
	nop			;4697
	ld d,l			;4698
	nop			;4699
	ld d,c			;469a
	nop			;469b
	ld c,h			;469c
	nop			;469d
	ld c,b			;469e
	nop			;469f
	ld b,h			;46a0
	nop			;46a1
	ld b,b			;46a2
	nop			;46a3
	inc a			;46a4
	nop			;46a5
	add hl,sp			;46a6
	nop			;46a7
	ld (hl),000h		;46a8
	inc sp			;46aa
	nop			;46ab
	jr nc,l46aeh		;46ac
l46aeh:
	dec l			;46ae
	nop			;46af
	dec hl			;46b0
	nop			;46b1
	jr z,l46b4h		;46b2
l46b4h:
	ld h,000h		;46b4
	inc h			;46b6
	nop			;46b7
	ld (l2000h),hl		;46b8
	nop			;46bb
	ld e,000h		;46bc
	inc e			;46be
	nop			;46bf
	dec de			;46c0
	nop			;46c1
	add hl,de			;46c2
	nop			;46c3
	djnz l46c6h		;46c4
l46c6h:
	ld c,000h		;46c6
	dec b			;46c8
	nop			;46c9
	rst 38h			;46ca
l46cbh:
	ex af,af'			;46cb
	add a,b			;46cc
	ld bc,l4725h		;46cd
	nop			;46d0
	nop			;46d1
	nop			;46d2
	ld a,(bc)			;46d3
	ex af,af'			;46d4
	and b			;46d5
	ld bc,l4725h+1		;46d6
	nop			;46d9
	nop			;46da
	nop			;46db
	ex af,af'			;46dc
	ex af,af'			;46dd
	ret po			;46de
	ld bc,l4727h		;46df
	nop			;46e2
	nop			;46e3
	nop			;46e4
	add hl,bc			;46e5
	ex af,af'			;46e6
	add a,b			;46e7
	ld bc,l4727h+1		;46e8
	nop			;46eb
	nop			;46ec
	nop			;46ed
	rrca			;46ee
	ex af,af'			;46ef
	and b			;46f0
	ld bc,l4770h		;46f1
	nop			;46f4
	nop			;46f5
	nop			;46f6
	ld c,008h		;46f7
	add a,b			;46f9
	ld bc,l47b5h		;46fa
	nop			;46fd
	nop			;46fe
	nop			;46ff
	dec c			;4700
	ex af,af'			;4701
	and b			;4702
	ld bc,l47cah		;4703
	nop			;4706
	nop			;4707
	nop			;4708
	inc c			;4709
	ex af,af'			;470a
	add a,b			;470b
	ld bc,l47e2h		;470c
	nop			;470f
	nop			;4710
	nop			;4711
	inc c			;4712
	ex af,af'			;4713
	and b			;4714
	ld bc,l47f5h		;4715
	nop			;4718
	nop			;4719
	nop			;471a
	ld a,(bc)			;471b
	ex af,af'			;471c
	add a,b			;471d
	ld bc,l480ch		;471e
	nop			;4721
	nop			;4722
	nop			;4723
	rrca			;4724
l4725h:
	xor 0eeh		;4725
l4727h:
	xor 0e9h		;4727
	ret po			;4729
	inc b			;472a
	nop			;472b
	nop			;472c
	inc bc			;472d
	ld bc,sub_029ah+3		;472e
	ret po			;4731
	ld b,001h		;4732
	sbc a,h			;4734
	inc b			;4735
	ret po			;4736
	add hl,bc			;4737
	ld bc,l049ch		;4738
	ret po			;473b
	dec bc			;473c
	ld bc,l049ch		;473d
	ret pe			;4740
	ld bc,0019fh		;4741
	inc b			;4744
	jp (hl)			;4745
	ld bc,l0a9bh		;4746
	ld bc,l0a9ch		;4749
	push hl			;474c
	ld b,(hl)			;474d
	ld b,a			;474e
l474fh:
	ret pe			;474f
	ret po			;4750
	ld a,(bc)			;4751
	ld bc,0fb91h		;4752
	ex af,af'			;4755
	jp (hl)			;4756
	ld bc,l08b9h		;4757
	ret po			;475a
	ex af,af'			;475b
	ld bc,l08b9h		;475c
	ret po			;475f
	ld b,001h		;4760
	cp c			;4762
	ld a,(bc)			;4763
	ret po			;4764
	inc b			;4765
	ld bc,l0cb9h		;4766
	ret po			;4769
	ld (bc),a			;476a
	ld bc,l0cb9h		;476b
	pop hl			;476e
	ld (bc),a			;476f
l4770h:
	jp (hl)			;4770
	ret po			;4771
	inc b			;4772
	ld bc,l0493h+1		;4773
	ret po			;4776
	ld b,001h		;4777
	sub e			;4779
	inc b			;477a
	ret po			;477b
	ex af,af'			;477c
	ld bc,l0493h		;477d
	ret po			;4780
	add hl,bc			;4781
	ld bc,l0493h+1		;4782
	ret pe			;4785
	ld bc,l0194h		;4786
	ld (bc),a			;4789
	jp (hl)			;478a
	ld bc,l0891h+1		;478b
	ld bc,l0891h		;478e
	push hl			;4791
	adc a,e			;4792
	ld b,a			;4793
l4794h:
	ret pe			;4794
	ret po			;4795
	ld a,(bc)			;4796
	ld bc,0fca4h		;4797
	ex af,af'			;479a
	jp (hl)			;479b
	ld bc,l08c8h		;479c
	ret po			;479f
	rlca			;47a0
	ld bc,l08c8h		;47a1
	ret po			;47a4
	dec b			;47a5
	ld bc,l0ac7h		;47a6
	ret po			;47a9
	inc bc			;47aa
	ld bc,00cc9h		;47ab
	ret po			;47ae
	ld (bc),a			;47af
	ld bc,00cc8h		;47b0
	pop hl			;47b3
	ld (bc),a			;47b4
l47b5h:
	jp (hl)			;47b5
	inc bc			;47b6
	ld h,b			;47b7
	ld bc,l5001h		;47b8
	ld bc,l4001h		;47bb
	ld bc,0a000h		;47be
	ld bc,0f003h		;47c1
	ld bc,start		;47c4
	ld bc,l02e1h		;47c7
l47cah:
	jp (hl)			;47ca
	nop			;47cb
	nop			;47cc
	ld bc,l6203h		;47cd
	ld bc,l5201h		;47d0
	ld bc,04301h		;47d3
	ld bc,0a000h		;47d6
	ld bc,0f303h		;47d9
	ld bc,start		;47dc
	ld bc,l02e1h		;47df
l47e2h:
	ret pe			;47e2
	nop			;47e3
	jp nz,0040ch		;47e4
	nop			;47e7
	pop bc			;47e8
	rrca			;47e9
	inc bc			;47ea
	nop			;47eb
	ret nz			;47ec
	inc c			;47ed
	inc b			;47ee
	nop			;47ef
	cp c			;47f0
	rrca			;47f1
	inc bc			;47f2
	pop hl			;47f3
	ld (bc),a			;47f4
l47f5h:
	jp (hl)			;47f5
	nop			;47f6
	nop			;47f7
	ld bc,l00e8h		;47f8
	push bc			;47fb
	inc c			;47fc
	inc b			;47fd
	nop			;47fe
	jp 0030fh		;47ff
	nop			;4802
	pop bc			;4803
	inc c			;4804
	inc b			;4805
	nop			;4806
	cp a			;4807
	rrca			;4808
	inc bc			;4809
	pop hl			;480a
	ld (bc),a			;480b
l480ch:
	jp (hl)			;480c
	nop			;480d
	jr nc,l4812h		;480e
	ret po			;4810
	dec c			;4811
l4812h:
	nop			;4812
	jr nc,l4817h		;4813
	ret po			;4815
	dec bc			;4816
l4817h:
	nop			;4817
	jr nc,l481dh		;4818
	pop hl			;481a
	inc bc			;481b
	rst 38h			;481c
l481dh:
	dec l			;481d
	ld c,b			;481e
	ld c,l			;481f
	ld c,b			;4820
	ld d,b			;4821
	ld c,b			;4822
	ld l,b			;4823
	ld c,b			;4824
	ld (hl),c			;4825
	ld c,b			;4826
	ld a,b			;4827
	ld c,b			;4828
	add a,a			;4829
	ld c,b			;482a
	adc a,l			;482b
	ld c,b			;482c
	rst 38h			;482d
	rst 38h			;482e
	rst 38h			;482f
	xor 0eeh		;4830
	.DB 0ddh,0ddh,0cch	;illegal sequence		;4832
	call z,0bbbbh		;4835
	xor d			;4838
	xor d			;4839
	sbc a,c			;483a
	sbc a,c			;483b
	adc a,b			;483c
	adc a,b			;483d
	ld (hl),a			;483e
	ld (hl),a			;483f
	ld (hl),a			;4840
	ld h,(hl)			;4841
	ld h,(hl)			;4842
	ld h,(hl)			;4843
	ld d,l			;4844
	ld d,l			;4845
	ld d,l			;4846
	ld b,h			;4847
	ld b,e			;4848
	inc sp			;4849
	ld (l0222h),a		;484a
	sub (iy+002h)		;484d
	rst 38h			;4850
	.DB 0edh;next byte illegal after ed		;4851
	call c,0a9bbh		;4852
	sbc a,b			;4855
	ld (hl),a			;4856
	cp e			;4857
	xor d			;4858
	sbc a,c			;4859
	adc a,b			;485a
	ld (hl),a			;485b
	ld h,(hl)			;485c
	ld d,l			;485d
	ld (hl),a			;485e
	halt			;485f
	ld h,(hl)			;4860
	ld d,l			;4861
	ld d,h			;4862
	ld b,h			;4863
	inc sp			;4864
	ld (l0211h),hl		;4865
	.DB 0edh;next byte illegal after ed		;4868
	res 5,c		;4869
	add a,a			;486b
	halt			;486c
	ld d,h			;486d
	ld (l021fh+2),a		;486e
	rst 38h			;4871
	xor 0dch		;4872
	cp e			;4874
	xor c			;4875
	add a,a			;4876
	ld bc,0ffdeh		;4877
	rst 38h			;487a
	xor 0ddh		;487b
	call z,0aabbh		;487d
	sbc a,c			;4880
	adc a,b			;4881
	ld (hl),a			;4882
	ld h,(hl)			;4883
	ld d,l			;4884
	ld b,h			;4885
	ld bc,0a8fdh		;4886
	ld h,h			;4889
	inc sp			;488a
	ld hl,0ff02h		;488b
	xor 0dch		;488e
	ld bc,08002h		;4890
	add a,b			;4893
	ld bc,048a4h		;4894
	nop			;4897
	nop			;4898
	ld (bc),a			;4899
	rrca			;489a
	add a,b			;489b
	and b			;489c
	ld bc,l48c6h		;489d
	nop			;48a0
	nop			;48a1
	ld (bc),a			;48a2
	ld c,0c3h		;48a3
	inc c			;48a5
l48a6h:
	jp pe,l0dfeh+2		;48a6
	and h			;48a9
	ld c,b			;48aa
	jp 0e306h		;48ab
	ld bc,006a5h		;48ae
	ex (sp),hl			;48b1
	ld (bc),a			;48b2
	jp 0ea0ch		;48b3
	nop			;48b6
	inc bc			;48b7
	or e			;48b8
	ld c,b			;48b9
	jp 0e306h		;48ba
	ld bc,006a5h		;48bd
	add a,b			;48c0
	inc h			;48c1
	or c			;48c2
	jr nc,l48a6h		;48c3
	nop			;48c5
l48c6h:
	add a,b			;48c6
	ld bc,l0bc2h		;48c7
	jp pe,l1300h		;48ca
	add a,048h		;48cd
	add a,b			;48cf
	dec h			;48d0
	ex (sp),hl			;48d1
	ld bc,0b1e8h		;48d2
	rst 38h			;48d5
	ld bc,l2fe9h		;48d6
	pop hl			;48d9
	nop			;48da
	ld bc,08088h		;48db
	ld bc,l48e5h		;48de
	nop			;48e1
	nop			;48e2
	nop			;48e3
	rrca			;48e4
l48e5h:
	or (hl)			;48e5
	ld (bc),a			;48e6
	ret po			;48e7
	dec c			;48e8
	or (hl)			;48e9
	ld (bc),a			;48ea
	ret po			;48eb
	dec bc			;48ec
	or (hl)			;48ed
	inc bc			;48ee
	pop hl			;48ef
	inc bc			;48f0
	inc bc			;48f1
	add a,b			;48f2
	add a,b			;48f3
	ld bc,l490dh		;48f4
	call p,00300h		;48f7
	inc c			;48fa
	add a,b			;48fb
	and b			;48fc
	ld bc,04930h		;48fd
	call p,00300h		;4900
	dec bc			;4903
	add a,b			;4904
	ret nz			;4905
	ld bc,04953h		;4906
	call p,00300h		;4909
	inc c			;490c
l490dh:
	and d			;490d
	ld c,007h		;490e
	rlca			;4910
	rlca			;4911
	rlca			;4912
	and b			;4913
	ld c,007h		;4914
	sbc a,c			;4916
	sbc a,l			;4917
	and b			;4918
	jp pe,l01ffh+1		;4919
	dec c			;491c
	ld c,c			;491d
	and e			;491e
	ld c,007h		;491f
	sbc a,e			;4921
	sbc a,(hl)			;4922
	and e			;4923
	and l			;4924
	ld c,007h		;4925
	rlca			;4927
	rlca			;4928
	rlca			;4929
	ex (sp),hl			;492a
	ex af,af'			;492b
	xor d			;492c
	ld b,(hl)			;492d
	pop hl			;492e
	ld bc,l0e9eh		;492f
	rlca			;4932
	rlca			;4933
	rlca			;4934
	rlca			;4935
	sbc a,l			;4936
	ld c,007h		;4937
	rlca			;4939
	rlca			;493a
	rlca			;493b
	jp pe,l01ffh+1		;493c
	jr nc,l498ah		;493f
	sbc a,(hl)			;4941
	ld c,007h		;4942
	adc a,a			;4944
	sub d			;4945
	sub a			;4946
	and b			;4947
	ld c,007h		;4948
	rlca			;494a
	rlca			;494b
	rlca			;494c
	ex (sp),hl			;494d
	ex af,af'			;494e
	and l			;494f
	ld b,(hl)			;4950
	pop hl			;4951
	ld bc,00e8dh		;4952
	rlca			;4955
	rlca			;4956
	rlca			;4957
	rlca			;4958
	ld c,007h		;4959
	rlca			;495b
	rlca			;495c
	rlca			;495d
	jp pe,l01ffh+1		;495e
	ld d,e			;4961
	ld c,c			;4962
	adc a,a			;4963
	ld c,007h		;4964
	rlca			;4966
	rlca			;4967
	sub c			;4968
	ld c,007h		;4969
	rlca			;496b
	rlca			;496c
	rlca			;496d
	sub d			;496e
	dec d			;496f
	adc a,l			;4970
	ex (sp),hl			;4971
	ex af,af'			;4972
	sub d			;4973
	inc e			;4974
	pop hl			;4975
	ld bc,08003h		;4976
	add a,b			;4979
	ld bc,l4993h		;497a
	call p,sub_0600h		;497d
	inc c			;4980
	add a,b			;4981
	and b			;4982
	ld bc,l49f0h		;4983
	call p,sub_0600h		;4986
	inc c			;4989
l498ah:
	add a,b			;498a
	ret nz			;498b
	ld bc,04a40h		;498c
	nop			;498f
	nop			;4990
	inc bc			;4991
	dec c			;4992
l4993h:
	and a			;4993
	dec d			;4994
	rlca			;4995
	and (hl)			;4996
	and a			;4997
	and (hl)			;4998
	dec d			;4999
	rlca			;499a
	and h			;499b
	and (hl)			;499c
	and a			;499d
	dec d			;499e
	and (hl)			;499f
	and h			;49a0
	ld c,007h		;49a1
	and (hl)			;49a3
	dec d			;49a4
	inc hl			;49a5
	rlca			;49a6
	and h			;49a7
	inc e			;49a8
	and d			;49a9
	rlca			;49aa
	and h			;49ab
	and (hl)			;49ac
	dec d			;49ad
	and h			;49ae
	and d			;49af
	and (hl)			;49b0
	and d			;49b1
	rlca			;49b2
	and 0e7h		;49b3
	ld c,c			;49b5
	and h			;49b6
	rlca			;49b7
	and 0e7h		;49b8
	ld c,c			;49ba
	and d			;49bb
	rlca			;49bc
	and 0e7h		;49bd
	ld c,c			;49bf
	and a			;49c0
	dec d			;49c1
	and (hl)			;49c2
	and d			;49c3
	and h			;49c4
	and d			;49c5
	inc e			;49c6
	rlca			;49c7
	rlca			;49c8
	and h			;49c9
	ld c,0a6h		;49ca
	sbc a,e			;49cc
	and h			;49cd
	inc e			;49ce
	rlca			;49cf
	rlca			;49d0
	ld hl,(l0ea4h+2)		;49d1
	rlca			;49d4
	sbc a,a			;49d5
	and d			;49d6
	and (hl)			;49d7
	and h			;49d8
	ld c,0a6h		;49d9
	and a			;49db
	ex (sp),hl			;49dc
	ex af,af'			;49dd
	xor c			;49de
	inc e			;49df
	ret po			;49e0
	dec bc			;49e1
	ex (sp),hl			;49e2
	ld bc,0e123h		;49e3
	ld bc,sub_0705h+2		;49e6
	rlca			;49e9
	rlca			;49ea
	rlca			;49eb
	dec d			;49ec
	ld c,007h		;49ed
	rst 20h			;49ef
l49f0h:
	sbc a,l			;49f0
	dec d			;49f1
	rlca			;49f2
	rlca			;49f3
	rlca			;49f4
	dec d			;49f5
	rlca			;49f6
	rlca			;49f7
	rlca			;49f8
	sbc a,l			;49f9
	dec d			;49fa
	dec d			;49fb
	ld c,007h		;49fc
	dec d			;49fe
	sbc a,h			;49ff
	inc hl			;4a00
	rlca			;4a01
	inc e			;4a02
	sbc a,b			;4a03
	rlca			;4a04
	and d			;4a05
	sbc a,h			;4a06
	dec d			;4a07
	sbc a,h			;4a08
	sbc a,h			;4a09
	sbc a,h			;4a0a
	sbc a,a			;4a0b
	rlca			;4a0c
	and 0e7h		;4a0d
	ld c,c			;4a0f
	and c			;4a10
	rlca			;4a11
	and 0e7h		;4a12
	ld c,c			;4a14
	sbc a,a			;4a15
	rlca			;4a16
	and 0e7h		;4a17
	ld c,c			;4a19
	and c			;4a1a
	dec d			;4a1b
	and c			;4a1c
	sbc a,a			;4a1d
	and c			;4a1e
	sbc a,a			;4a1f
	inc e			;4a20
	rlca			;4a21
	rlca			;4a22
	ld c,00eh		;4a23
	ld c,0a1h		;4a25
	inc e			;4a27
	rlca			;4a28
	rlca			;4a29
	ld hl,(l0ea2h)		;4a2a
	rlca			;4a2d
	sub (hl)			;4a2e
	sbc a,d			;4a2f
	sbc a,l			;4a30
	and c			;4a31
	ld c,0a2h		;4a32
	and h			;4a34
	ex (sp),hl			;4a35
	ex af,af'			;4a36
	and (hl)			;4a37
	inc e			;4a38
	ret po			;4a39
	dec bc			;4a3a
	ex (sp),hl			;4a3b
	ld bc,0e123h		;4a3c
	ld bc,l078ah		;4a3f
	and 09ch		;4a42
	ld c,d			;4a44
	add a,l			;4a45
	rlca			;4a46
	adc a,d			;4a47
	adc a,(hl)			;4a48
	adc a,d			;4a49
	adc a,(hl)			;4a4a
	sub c			;4a4b
	sub c			;4a4c
	sub (hl)			;4a4d
	sbc a,d			;4a4e
	sbc a,d			;4a4f
	sbc a,l			;4a50
	and d			;4a51
	add a,a			;4a52
	inc hl			;4a53
	rlca			;4a54
	rlca			;4a55
	rlca			;4a56
	rlca			;4a57
	rlca			;4a58
	rlca			;4a59
	rlca			;4a5a
	add a,a			;4a5b
	rlca			;4a5c
	rlca			;4a5d
	rlca			;4a5e
	rlca			;4a5f
	rlca			;4a60
	rlca			;4a61
	rlca			;4a62
	rlca			;4a63
	rlca			;4a64
	dec d			;4a65
	add a,e			;4a66
	rlca			;4a67
	and 09ch		;4a68
	ld c,d			;4a6a
	sbc a,l			;4a6b
	rlca			;4a6c
	and 0e7h		;4a6d
	ld c,c			;4a6f
	add a,e			;4a70
	rlca			;4a71
	and 09ch		;4a72
	ld c,d			;4a74
	add a,l			;4a75
	rlca			;4a76
	and 09ch		;4a77
	ld c,d			;4a79
	add a,e			;4a7a
	inc e			;4a7b
	rlca			;4a7c
	rlca			;4a7d
	add a,e			;4a7e
	ld c,085h		;4a7f
	add a,a			;4a81
l4a82h:
	add a,l			;4a82
	inc e			;4a83
	rlca			;4a84
	rlca			;4a85
	ld hl,(00e87h)		;4a86
l4a89h:
	rlca			;4a89
	rlca			;4a8a
	adc a,d			;4a8b
	add a,d			;4a8c
l4a8dh:
	add a,l			;4a8d
	ld c,087h		;4a8e
	adc a,c			;4a90
	ex (sp),hl			;4a91
	ex af,af'			;4a92
l4a93h:
	adc a,d			;4a93
	inc e			;4a94
	ret po			;4a95
	dec bc			;4a96
	ex (sp),hl			;4a97
	ld bc,0e123h		;4a98
	ld bc,sub_0705h+2		;4a9b
	rlca			;4a9e
	rlca			;4a9f
	rlca			;4aa0
	rlca			;4aa1
	rlca			;4aa2
l4aa3h:
	rlca			;4aa3
l4aa4h:
	rlca			;4aa4
	rlca			;4aa5
	rlca			;4aa6
	rst 20h			;4aa7
	inc bc			;4aa8
l4aa9h:
	add a,b			;4aa9
l4aaah:
	add a,b			;4aaa
	ld bc,l4ac4h		;4aab
	rst 30h			;4aae
	nop			;4aaf
l4ab0h:
	inc bc			;4ab0
	rrca			;4ab1
	add a,b			;4ab2
	and b			;4ab3
	ld bc,l4b40h		;4ab4
	rst 30h			;4ab7
	nop			;4ab8
	inc bc			;4ab9
	ld c,080h		;4aba
	ret nz			;4abc
	ld bc,l4be0h		;4abd
	inc bc			;4ac0
	nop			;4ac1
	dec b			;4ac2
	rrca			;4ac3
l4ac4h:
	and 031h		;4ac4
	ld c,e			;4ac6
	jp pe,00300h		;4ac7
	call nz,0e64ah		;4aca
	jr l4b1ah		;4acd
	sbc a,c			;4acf
	ld c,b			;4ad0
	ret po			;4ad1
	ld a,(bc)			;4ad2
	ex (sp),hl			;4ad3
	nop			;4ad4
	ld h,b			;4ad5
	ex (sp),hl			;4ad6
	inc bc			;4ad7
	ret po			;4ad8
	rrca			;4ad9
	sbc a,c			;4ada
	ex af,af'			;4adb
	djnz l4b06h		;4adc
	ex af,af'			;4ade
	djnz l4a82h		;4adf
	jr z,l4af3h		;4ae1
	djnz $-93		;4ae3
	jr nz,l4aefh		;4ae5
	djnz l4a89h		;4ae7
	ld c,b			;4ae9
	and c			;4aea
	jr nz,$+16		;4aeb
	djnz l4a8dh		;4aed
l4aefh:
	jr nz,$+16		;4aef
	djnz l4a93h		;4af1
l4af3h:
	ld c,b			;4af3
	ex af,af'			;4af4
l4af5h:
	ex af,af'			;4af5
	jr l4b08h		;4af6
	sbc a,c			;4af8
	jr z,$+16		;4af9
	and c			;4afb
l4afch:
	jr z,l4b0eh		;4afc
l4afeh:
	djnz l4aa3h		;4afe
l4b00h:
	jr nz,l4b0ah		;4b00
	djnz l4aa4h		;4b02
	jr z,l4b16h		;4b04
l4b06h:
	djnz l4aa9h		;4b06
l4b08h:
	jr nz,l4b1ah		;4b08
l4b0ah:
	djnz l4aaah		;4b0a
l4b0ch:
	jr nz,$+16		;4b0c
l4b0eh:
	djnz l4ab0h		;4b0e
	ld c,b			;4b10
	djnz l4b2bh		;4b11
	ex af,af'			;4b13
	ex af,af'			;4b14
l4b15h:
	push hl			;4b15
l4b16h:
	call nz,0a84ah		;4b16
	ex af,af'			;4b19
l4b1ah:
	xor b			;4b1a
l4b1bh:
	and a			;4b1b
	xor b			;4b1c
	djnz $-86		;4b1d
l4b1fh:
	ex (sp),hl			;4b1f
	dec b			;4b20
	xor h			;4b21
l4b22h:
	ld c,b			;4b22
	ret po			;4b23
l4b24h:
	ld a,(bc)			;4b24
	ex (sp),hl			;4b25
	nop			;4b26
l4b27h:
	jr z,l4b0ch		;4b27
	dec b			;4b29
	ret po			;4b2a
l4b2bh:
	rrca			;4b2b
l4b2ch:
	sbc a,h			;4b2c
	ex af,af'			;4b2d
	add a,b			;4b2e
l4b2fh:
	ex af,af'			;4b2f
	rst 20h			;4b30
	xor b			;4b31
l4b32h:
	ex af,af'			;4b32
l4b33h:
	xor b			;4b33
	and a			;4b34
	xor b			;4b35
	djnz $-86		;4b36
	xor b			;4b38
	and a			;4b39
l4b3ah:
	xor b			;4b3a
	and a			;4b3b
	ex af,af'			;4b3c
l4b3dh:
	and l			;4b3d
	djnz l4b27h		;4b3e
l4b40h:
	and 0d7h		;4b40
	ld c,e			;4b42
	and 0cbh		;4b43
	ld c,e			;4b45
	and 0a9h		;4b46
	ld c,e			;4b48
	sbc a,c			;4b49
	ld c,b			;4b4a
	ret po			;4b4b
	rlca			;4b4c
	ex (sp),hl			;4b4d
	nop			;4b4e
	ld h,b			;4b4f
	ex (sp),hl			;4b50
	dec b			;4b51
	ret po			;4b52
	dec c			;4b53
	sbc a,c			;4b54
	ex af,af'			;4b55
	sbc a,e			;4b56
	djnz l4af5h		;4b57
	jr z,l4b63h		;4b59
	sbc a,e			;4b5b
	djnz $-103		;4b5c
	jr z,l4afch		;4b5e
	djnz l4b00h		;4b60
	sbc a,e			;4b62
l4b63h:
	jr nz,l4afeh		;4b63
	ex af,af'			;4b65
	sbc a,e			;4b66
	djnz l4b00h		;4b67
	ld c,b			;4b69
	sbc a,c			;4b6a
	jr nz,l4b08h		;4b6b
	djnz $-100		;4b6d
	sbc a,e			;4b6f
	jr nz,$-103		;4b70
	djnz l4b0ch		;4b72
	sbc a,e			;4b74
	ld c,b			;4b75
	sbc a,c			;4b76
	ex af,af'			;4b77
	sbc a,c			;4b78
	sbc a,b			;4b79
	jr l4b15h		;4b7a
l4b7ch:
	djnz l4b1ah		;4b7c
	jr z,l4b1bh		;4b7e
	djnz l4b1bh		;4b80
	jr z,l4b1fh		;4b82
	djnz l4b22h		;4b84
	sbc a,e			;4b86
	jr nz,l4b22h		;4b87
	ex af,af'			;4b89
	sbc a,e			;4b8a
	djnz l4b24h		;4b8b
	jr z,$-103		;4b8d
	djnz l4b2ch		;4b8f
	sbc a,c			;4b91
	jr nz,l4b2fh		;4b92
	djnz l4b32h		;4b94
l4b96h:
	sbc a,e			;4b96
	jr nz,l4b32h		;4b97
	djnz l4b33h		;4b99
	sbc a,e			;4b9b
l4b9ch:
	ld b,b			;4b9c
	add a,b			;4b9d
	ex af,af'			;4b9e
	sbc a,c			;4b9f
	djnz l4b3ah		;4ba0
	jr l4b3dh		;4ba2
	ex af,af'			;4ba4
	sbc a,e			;4ba5
l4ba6h:
	push hl			;4ba6
	ld b,b			;4ba7
	ld c,e			;4ba8
	and l			;4ba9
	ex af,af'			;4baa
	ex af,af'			;4bab
	ex af,af'			;4bac
	djnz l4bbfh		;4bad
	ex (sp),hl			;4baf
	dec b			;4bb0
	and l			;4bb1
l4bb2h:
	ld c,b			;4bb2
	ret po			;4bb3
	rlca			;4bb4
	ex (sp),hl			;4bb5
	nop			;4bb6
	jr z,l4b9ch		;4bb7
	dec b			;4bb9
	ret po			;4bba
	rrca			;4bbb
	sbc a,c			;4bbc
	djnz l4ba6h		;4bbd
l4bbfh:
	and b			;4bbf
	ex af,af'			;4bc0
l4bc1h:
	ex af,af'			;4bc1
	ex af,af'			;4bc2
	djnz l4bd5h		;4bc3
	djnz l4bd7h		;4bc5
	djnz l4bd1h		;4bc7
	djnz l4bb2h		;4bc9
	and l			;4bcb
	ex af,af'			;4bcc
	ex af,af'			;4bcd
	ex af,af'			;4bce
	djnz $+16		;4bcf
l4bd1h:
	djnz l4be3h		;4bd1
	djnz l4bddh		;4bd3
l4bd5h:
	djnz $-25		;4bd5
l4bd7h:
	and 0bfh		;4bd7
	ld c,e			;4bd9
	jp pe,l01ffh+1		;4bda
l4bddh:
	rst 10h			;4bdd
	ld c,e			;4bde
	rst 20h			;4bdf
l4be0h:
	and 03dh		;4be0
	ld c,h			;4be2
l4be3h:
	adc a,l			;4be3
	ex af,af'			;4be4
	jp pe,01400h		;4be5
	ex (sp),hl			;4be8
	ld c,e			;4be9
	adc a,b			;4bea
	ex af,af'			;4beb
	adc a,e			;4bec
	djnz l4b7ch		;4bed
l4befh:
	ex af,af'			;4bef
	adc a,l			;4bf0
	ex af,af'			;4bf1
	adc a,l			;4bf2
	ex af,af'			;4bf3
	jp pe,sub_0600h		;4bf4
	jp p,0894bh		;4bf7
	djnz $-119		;4bfa
	ex af,af'			;4bfc
	jp pe,sub_0600h		;4bfd
	ei			;4c00
	ld c,e			;4c01
	adc a,e			;4c02
	djnz $-117		;4c03
	ex af,af'			;4c05
	jp pe,sub_0600h		;4c06
	inc b			;4c09
	ld c,h			;4c0a
	adc a,b			;4c0b
	djnz l4b96h		;4c0c
	ex af,af'			;4c0e
	jp pe,sub_06ffh+1		;4c0f
	dec c			;4c12
	ld c,h			;4c13
	adc a,c			;4c14
	ex af,af'			;4c15
	jp pe,l0800h		;4c16
	inc d			;4c19
	ld c,h			;4c1a
	add a,(hl)			;4c1b
	ex af,af'			;4c1c
	jp pe,sub_0600h		;4c1d
	dec de			;4c20
	ld c,h			;4c21
	add a,a			;4c22
	ex af,af'			;4c23
	add a,b			;4c24
	adc a,b			;4c25
	ex af,af'			;4c26
	jp pe,sub_06ffh+1		;4c27
	dec h			;4c2a
	ld c,h			;4c2b
	adc a,b			;4c2c
	djnz l4c3fh		;4c2d
	ex af,af'			;4c2f
	ex af,af'			;4c30
	adc a,e			;4c31
	djnz l4bc1h		;4c32
	ex af,af'			;4c34
	jp pe,l01ffh+2		;4c35
	ret p			;4c38
	ld c,e			;4c39
	push hl			;4c3a
	ret po			;4c3b
	ld c,e			;4c3c
	adc a,e			;4c3d
	ex af,af'			;4c3e
l4c3fh:
	adc a,l			;4c3f
	ex af,af'			;4c40
	jp pe,00f00h		;4c41
	ccf			;4c44
	ld c,h			;4c45
	jp pe,l0202h+1		;4c46
	dec a			;4c49
	ld c,h			;4c4a
	adc a,b			;4c4b
	ex af,af'			;4c4c
	adc a,c			;4c4d
	ex af,af'			;4c4e
	jp pe,00f00h		;4c4f
	ld c,l			;4c52
	ld c,h			;4c53
l4c54h:
	jp pe,l0202h+1		;4c54
	ld c,e			;4c57
	ld c,h			;4c58
	adc a,c			;4c59
	ex af,af'			;4c5a
	ex af,af'			;4c5b
	ex af,af'			;4c5c
	djnz l4befh		;4c5d
	djnz $-115		;4c5f
	ex af,af'			;4c61
	rst 20h			;4c62
	ex af,af'			;4c63
	ex af,af'			;4c64
	djnz l4c77h		;4c65
	djnz l4c79h		;4c67
	djnz l4c73h		;4c69
	djnz l4c54h		;4c6b
	ld (bc),a			;4c6d
	and b			;4c6e
	and b			;4c6f
	ld bc,l4c80h		;4c70
l4c73h:
	nop			;4c73
	nop			;4c74
	inc bc			;4c75
	inc c			;4c76
l4c77h:
	and b			;4c77
	ret po			;4c78
l4c79h:
	ld bc,l4c8bh		;4c79
	nop			;4c7c
	nop			;4c7d
	nop			;4c7e
	rrca			;4c7f
l4c80h:
	add a,d			;4c80
	call m,08104h		;4c81
	djnz $+31		;4c84
	jp (hl)			;4c86
	adc a,l			;4c87
	ld (001e1h),a		;4c88
l4c8bh:
	call po,0fbbdh		;4c8b
	inc b			;4c8e
	and d			;4c8f
	inc bc			;4c90
	rra			;4c91
	ex (sp),hl			;4c92
	ld bc,0b2e9h		;4c93
	ld (001e1h),a		;4c96
	ld bc,0e0a0h		;4c99
	ld bc,l4ca3h		;4c9c
	nop			;4c9f
	nop			;4ca0
	rlca			;4ca1
	rrca			;4ca2
l4ca3h:
	call po,0fdb1h		;4ca3
	inc c			;4ca6
	pop hl			;4ca7
	nop			;4ca8
	ld bc,0e080h		;4ca9
	ld bc,l4cb3h		;4cac
	nop			;4caf
	nop			;4cb0
	inc b			;4cb1
	rrca			;4cb2
l4cb3h:
	call po,00cc0h		;4cb3
	pop hl			;4cb6
	nop			;4cb7
	inc bc			;4cb8
	add a,b			;4cb9
	add a,b			;4cba
	ld bc,l4cd4h		;4cbb
	rst 30h			;4cbe
	nop			;4cbf
l4cc0h:
	inc bc			;4cc0
	inc c			;4cc1
	add a,b			;4cc2
	and b			;4cc3
	ld bc,04ce0h		;4cc4
	rst 30h			;4cc7
	nop			;4cc8
	inc bc			;4cc9
	dec bc			;4cca
	add a,b			;4ccb
l4ccch:
	ret nz			;4ccc
	ld bc,04cech		;4ccd
	inc bc			;4cd0
	nop			;4cd1
	dec b			;4cd2
l4cd3h:
	inc c			;4cd3
l4cd4h:
	and 031h		;4cd4
	ld c,e			;4cd6
	and 018h		;4cd7
	ld c,e			;4cd9
	ex (sp),hl			;4cda
	inc bc			;4cdb
	sbc a,c			;4cdc
	jr nz,l4cc0h		;4cdd
	ld bc,0cbe6h		;4cdf
	ld c,e			;4ce2
	and 0a9h		;4ce3
	ld c,e			;4ce5
	ex (sp),hl			;4ce6
	inc bc			;4ce7
	sbc a,c			;4ce8
	jr nz,l4ccch		;4ce9
	ld bc,04be6h		;4ceb
	ld c,h			;4cee
	add a,b			;4cef
	jr l4cd3h		;4cf0
	ld bc,l4fffh		;4cf2
	ld a,(0c2f0h)		;4cf5
	and 01fh		;4cf8
	ld e,a			;4cfa
	ld d,000h		;4cfb
	ld hl,l4d31h		;4cfd
	add hl,de			;4d00
	ld a,(hl)			;4d01
	or a			;4d02
	ret p			;4d03
	cp 0ffh		;4d04
	ret z			;4d06
	ld d,a			;4d07
	and 00fh		;4d08
	ld b,a			;4d0a
	bit 6,d		;4d0b
	jr nz,l4d1fh		;4d0d
	bit 5,d		;4d0f
	jr nz,l4d28h		;4d11
	ld a,(0c2f4h)		;4d13
	cp c			;4d16
	jr c,l4d1bh		;4d17
l4d19h:
	ld a,b			;4d19
	ret			;4d1a
l4d1bh:
	ld a,002h		;4d1b
	sub b			;4d1d
	ret			;4d1e
l4d1fh:
	ld a,(0c2f4h)		;4d1f
	cp c			;4d22
	jr nc,l4d19h		;4d23
	ld a,001h		;4d25
	ret			;4d27
l4d28h:
	ld a,(0c2f4h)		;4d28
	cp c			;4d2b
	jr c,l4d19h		;4d2c
	ld a,001h		;4d2e
	ret			;4d30
l4d31h:
	rst 38h			;4d31
	ld bc,l0202h		;4d32
	jp nz,l02c2h		;4d35
	ld (bc),a			;4d38
	and d			;4d39
	and d			;4d3a
	add a,b			;4d3b
	rst 38h			;4d3c
	rst 38h			;4d3d
	rst 38h			;4d3e
	rst 38h			;4d3f
	rst 38h			;4d40
	rst 38h			;4d41
	rst 38h			;4d42
	nop			;4d43
	nop			;4d44
	ret nz			;4d45
	ret nz			;4d46
	nop			;4d47
	nop			;4d48
	and b			;4d49
	and b			;4d4a
	add a,d			;4d4b
	rst 38h			;4d4c
	rst 38h			;4d4d
	rst 38h			;4d4e
	rst 38h			;4d4f
	rst 38h			;4d50
l4d51h:
	bit 7,(ix+001h)		;4d51
	jr nz,l4d81h		;4d55
	xor a			;4d57
	ld (ix+003h),a		;4d58
	ld (ix+004h),a		;4d5b
	ld (ix+010h),a		;4d5e
	ld de,l4eaah		;4d61
	ld a,(ix+000h)		;4d64
	cp 005h		;4d67
	jr nc,l4d79h		;4d69
	ld a,(0c007h)		;4d6b
	add a,a			;4d6e
	bit 0,(ix+000h)		;4d6f
	jr z,l4d76h		;4d73
	inc a			;4d75
l4d76h:
	ld de,l4eb5h		;4d76
l4d79h:
	ld l,a			;4d79
	ld h,000h		;4d7a
	add hl,de			;4d7c
	ld a,(hl)			;4d7d
	ld (ix+011h),a		;4d7e
l4d81h:
	ld a,(ix+000h)		;4d81
	cp 005h		;4d84
	jr nz,l4d8dh		;4d86
	ld a,03ch		;4d88
	ld (0c067h),a		;4d8a
l4d8dh:
	ld (ix+001h),080h		;4d8d
	ld a,(0c31bh)		;4d91
	rrca			;4d94
	ld a,(0c31ah)		;4d95
	rra			;4d98
	or a			;4d99
	rra			;4d9a
	ld c,(ix+003h)		;4d9b
	ld b,000h		;4d9e
	ld hl,l2dceh		;4da0
	add hl,bc			;4da3
	ld h,(hl)			;4da4
	ld e,a			;4da5
	call sub_0623h		;4da6
	ld a,h			;4da9
	or a			;4daa
	rra			;4dab
	ld b,a			;4dac
	ld a,l			;4dad
	rra			;4dae
	add a,(ix+004h)		;4daf
	ld (ix+004h),a		;4db2
	ld a,b			;4db5
	adc a,(ix+003h)		;4db6
	ld (ix+003h),a		;4db9
	ld c,a			;4dbc
	ld a,(ix+000h)		;4dbd
	cp 005h		;4dc0
	jr nz,l4e20h		;4dc2
	ld a,c			;4dc4
	cp 058h		;4dc5
	jr c,l4e2dh		;4dc7
	ld a,(ix+010h)		;4dc9
	or a			;4dcc
	ld a,c			;4dcd
	jr nz,l4e20h		;4dce
	ld (ix+010h),a		;4dd0
	ld a,(0c007h)		;4dd3
	inc a			;4dd6
	cp 005h		;4dd7
	jr c,l4de6h		;4dd9
	ld hl,0c000h		;4ddb
	set 5,(hl)		;4dde
	xor a			;4de0
	ld (0c011h),a		;4de1
	jr l4e15h		;4de4
l4de6h:
	ld b,a			;4de6
	ld a,(0c00dh)		;4de7
	ld hl,0c074h		;4dea
	add a,(hl)			;4ded
	cp 064h		;4dee
	jr c,l4df4h		;4df0
	ld a,063h		;4df2
l4df4h:
	ld (0c00dh),a		;4df4
	ld a,001h		;4df7
	ld (0c00ch),a		;4df9
	ld hl,l0003h+1		;4dfc
	ld (0c060h),hl		;4dff
	ld a,(0c011h)		;4e02
	add a,002h		;4e05
	ld (0c011h),a		;4e07
	ld a,014h		;4e0a
	ld (0c078h),a		;4e0c
	ld a,003h		;4e0f
	ld (0c079h),a		;4e11
	ld a,b			;4e14
l4e15h:
	ld (0c007h),a		;4e15
	ld (0c04bh),a		;4e18
	xor a			;4e1b
	ld (0c2f2h),a		;4e1c
	ld a,c			;4e1f
l4e20h:
	ld a,c			;4e20
	cp 087h		;4e21
	jr c,l4e2dh		;4e23
	ld hl,0c068h		;4e25
	ld (hl),00bh		;4e28
	jp l2558h		;4e2a
l4e2dh:
	add a,05fh		;4e2d
	ld (ix+002h),a		;4e2f
	ld hl,l2edeh		;4e32
	ld b,000h		;4e35
	add hl,bc			;4e37
	ld a,(hl)			;4e38
	bit 0,(ix+000h)		;4e39
	jr nz,l4e42h		;4e3d
	neg		;4e3f
	dec b			;4e41
l4e42h:
	add a,07ch		;4e42
	ld (ix+005h),a		;4e44
	ld a,000h		;4e47
	adc a,b			;4e49
	ld (ix+008h),a		;4e4a
	ld a,c			;4e4d
	cp 060h		;4e4e
	jr c,l4e63h		;4e50
	ld b,000h		;4e52
	ld hl,0c55fh		;4e54
	add hl,bc			;4e57
	ld a,(0c5bfh)		;4e58
	or a			;4e5b
	jp p,l4e60h		;4e5c
	dec b			;4e5f
l4e60h:
	ld a,(hl)			;4e60
	jr l4e6fh		;4e61
l4e63h:
	ld b,000h		;4e63
	ld hl,0c55fh		;4e65
	add hl,bc			;4e68
	ld a,(hl)			;4e69
	or a			;4e6a
	jp p,l4e6fh		;4e6b
	dec b			;4e6e
l4e6fh:
	add a,(ix+005h)		;4e6f
	ld (ix+006h),a		;4e72
	ld a,b			;4e75
	adc a,(ix+008h)		;4e76
	ld (ix+007h),a		;4e79
	ld b,000h		;4e7c
	ld hl,l2e56h		;4e7e
	add hl,bc			;4e81
	ld a,(hl)			;4e82
	add a,(ix+011h)		;4e83
	ld (ix+00ah),a		;4e86
	ld a,(ix+007h)		;4e89
	or a			;4e8c
	ret nz			;4e8d
	ld a,(ix+003h)		;4e8e
	cp 04ch		;4e91
	ret c			;4e93
	cp 064h		;4e94
	ret nc			;4e96
	ld hl,0c310h		;4e97
	ld a,(ix+006h)		;4e9a
	bit 0,(ix+000h)		;4e9d
	jr nz,l4ea8h		;4ea1
	cp (hl)			;4ea3
	ret c			;4ea4
	inc hl			;4ea5
	jr l4eabh		;4ea6
l4ea8h:
	inc hl			;4ea8
	cp (hl)			;4ea9
l4eaah:
	ret nc			;4eaa
l4eabh:
	inc hl			;4eab
	ld (hl),001h		;4eac
	ret			;4eae
	ld c,c			;4eaf
	ld c,a			;4eb0
	ld c,c			;4eb1
	ld c,a			;4eb2
	ld d,l			;4eb3
	ld e,e			;4eb4
l4eb5h:
	rra			;4eb5
	add hl,de			;4eb6
	dec hl			;4eb7
	dec h			;4eb8
	scf			;4eb9
	ld sp,l3d42h+1		;4eba
	rra			;4ebd
	add hl,de			;4ebe
	bit 7,(ix+001h)		;4ebf
	jr nz,l4ed2h		;4ec3
	ld (ix+00ah),061h		;4ec5
	ld (ix+010h),000h		;4ec9
	ld a,08bh		;4ecd
	ld (0c100h),a		;4ecf
l4ed2h:
	ld (ix+001h),080h		;4ed2
	ld a,0ffh		;4ed6
	ld (0c067h),a		;4ed8
	ld hl,(0c31ah)		;4edb
	ld de,0fff8h		;4ede
	add hl,de			;4ee1
	jr c,l4ee7h		;4ee2
	ld hl,start		;4ee4
l4ee7h:
	ld (0c31ah),hl		;4ee7
	inc (ix+010h)		;4eea
	ld a,(0c310h)		;4eed
	cp 009h		;4ef0
	ret c			;4ef2
	ld a,000h		;4ef3
	ld (0c310h),a		;4ef5
	inc (ix+00ah)		;4ef8
	ld a,(0c30ah)		;4efb
	cp 06bh		;4efe
	ret c			;4f00
	ld a,001h		;4f01
	ld (0c300h),a		;4f03
	ld a,041h		;4f06
	ld (0c301h),a		;4f08
	ld a,00eh		;4f0b
	ld (0c069h),a		;4f0d
	xor a			;4f10
	ld (0c06eh),a		;4f11
	ret			;4f14
l4f15h:
	ld c,0ffh		;4f15
	ld b,000h		;4f17
	ld a,(0c075h)		;4f19
	or a			;4f1c
	ld a,(0c013h)		;4f1d
	jr nz,l4f8ah		;4f20
	cp 035h		;4f22
	jr nc,l4f27h		;4f24
	dec b			;4f26
l4f27h:
	cp 073h		;4f27
	jr c,l4f2ch		;4f29
	dec b			;4f2b
l4f2ch:
	ld a,b			;4f2c
	ld (0c075h),a		;4f2d
	ld hl,(0c31ah)		;4f30
	ld de,0ff24h		;4f33
	add hl,de			;4f36
	jr nc,l4f9eh		;4f37
	push bc			;4f39
	ld ix,0c320h		;4f3a
	ld de,l0020h		;4f3e
	ld b,003h		;4f41
	ld hl,start		;4f43
	ld c,l			;4f46
l4f47h:
	ld a,(ix+000h)		;4f47
	or a			;4f4a
	jr z,l4f59h		;4f4b
	ld a,(ix+003h)		;4f4d
	cp c			;4f50
	jr c,l4f59h		;4f51
	ld c,a			;4f53
	ld h,(ix+008h)		;4f54
	ld l,0ffh		;4f57
l4f59h:
	add ix,de		;4f59
	djnz l4f47h		;4f5b
	ld a,c			;4f5d
	pop bc			;4f5e
	cp 030h		;4f5f
	jr c,l4f9eh		;4f61
	ld a,l			;4f63
	or a			;4f64
	jr z,l4f9eh		;4f65
	ld a,h			;4f67
	or a			;4f68
	jp p,l4f7bh		;4f69
	cp 0a0h		;4f6c
	jr c,l4f9eh		;4f6e
	ld a,(0c013h)		;4f70
	cp 044h		;4f73
	jr c,l4f9eh		;4f75
	res 3,c		;4f77
	jr l4f9eh		;4f79
l4f7bh:
	cp 060h		;4f7b
	jr nc,l4f9eh		;4f7d
	ld a,(0c013h)		;4f7f
	cp 064h		;4f82
	jr nc,l4f9eh		;4f84
	res 2,c		;4f86
	jr l4f9eh		;4f88
l4f8ah:
	cp 050h		;4f8a
	jr nc,l4f92h		;4f8c
	res 2,c		;4f8e
	jr l4f9eh		;4f90
l4f92h:
	cp 058h		;4f92
	jr c,l4f9ah		;4f94
	res 3,c		;4f96
	jr l4f9eh		;4f98
l4f9ah:
	xor a			;4f9a
	ld (0c075h),a		;4f9b
l4f9eh:
	xor a			;4f9e
	ld de,(0c31ah)		;4f9f
	ld hl,0ffa6h		;4fa3
	add hl,de			;4fa6
	jr nc,l4faah		;4fa7
	inc a			;4fa9
l4faah:
	ld hl,0ff4ch		;4faa
	add hl,de			;4fad
	jr nc,l4fb1h		;4fae
	inc a			;4fb0
l4fb1h:
	ld (0c318h),a		;4fb1
	ld hl,(0c2f5h)		;4fb4
	bit 7,h		;4fb7
	jr z,l4fc2h		;4fb9
	ld a,l			;4fbb
	cpl			;4fbc
	ld l,a			;4fbd
	ld a,h			;4fbe
	cpl			;4fbf
	ld h,a			;4fc0
	inc hl			;4fc1
l4fc2h:
	ld a,l			;4fc2
	or h			;4fc3
	jr z,l4fdfh		;4fc4
	ld de,0fe80h		;4fc6
	add hl,de			;4fc9
	jr nc,l4fd1h		;4fca
	ld hl,0ff01h		;4fcc
	jr l4fd4h		;4fcf
l4fd1h:
	ld hl,0feedh		;4fd1
l4fd4h:
	ld de,(0c31ah)		;4fd4
	add hl,de			;4fd8
	jr nc,l4fdfh		;4fd9
	res 4,c		;4fdb
	jr l4fe1h		;4fdd
l4fdfh:
	res 5,c		;4fdf
l4fe1h:
	ld a,c			;4fe1
	ret			;4fe2
l4fe3h:
	dec bc			;4fe3
	rst 38h			;4fe4
	add a,d			;4fe5
	nop			;4fe6
	rst 38h			;4fe7
	inc bc			;4fe8
	nop			;4fe9
	inc bc			;4fea
	rst 38h			;4feb
	add a,d			;4fec
	nop			;4fed
	rst 38h			;4fee
	inc bc			;4fef
	nop			;4ff0
	add a,l			;4ff1
	cp 0fch		;4ff2
	ret m			;4ff4
	nop			;4ff5
	ret nz			;4ff6
	dec c			;4ff7
	nop			;4ff8
	add a,d			;4ff9
	rst 38h			;4ffa
	nop			;4ffb
	ld (bc),a			;4ffc
	rst 38h			;4ffd
	add a,d			;4ffe
l4fffh:
	nop			;4fff
	.DB $ff		;5000
l5001h:
	.DB $02		;5001
	.DB $00		;5002
	.DB $82		;5003
	.DB $ff		;5004
	.DB $00		;5005
	.DB $02		;5006
	.DB $ff		;5007
	.DB $82		;5008
	.DB $00		;5009
	.DB $f8		;500a
	.DB $02		;500b
	.DB $00		;500c
	.DB $83		;500d
	.DB $e0		;500e
	.DB $00		;500f
	.DB $80		;5010
	.DB $06		;5011
	.DB $00		;5012
	.DB $85		;5013
	.DB $08		;5014
	.DB $00		;5015
	.DB $08		;5016
	.DB $00		;5017
	.DB $08		;5018
	.DB $04		;5019
	.DB $ff		;501a
	.DB $88		;501b
	.DB $fe		;501c
	.DB $fc		;501d
	.DB $f8		;501e
	.DB $ff		;501f
	.DB $f0		;5020
	.DB $e0		;5021
	.DB $c0		;5022
	.DB $80		;5023
	.DB $03		;5024
	.DB $00		;5025
	.DB $89		;5026
	.DB $80		;5027
	.DB $00		;5028
	.DB $08		;5029
	.DB $00		;502a
	.DB $08		;502b
	.DB $00		;502c
	.DB $08		;502d
	.DB $00		;502e
	.DB $08		;502f
	.DB $04		;5030
	.DB $ff		;5031
	.DB $94		;5032
	.DB $fc		;5033
	.DB $ff		;5034
	.DB $f0		;5035
	.DB $ff		;5036
	.DB $e0		;5037
	.DB $fe		;5038
	.DB $00		;5039
	.DB $f8		;503a
	.DB $00		;503b
	.DB $e0		;503c
	.DB $00		;503d
	.DB $80		;503e
	.DB $00		;503f
	.DB $18		;5040
	.DB $00		;5041
	.DB $18		;5042
	.DB $00		;5043
	.DB $18		;5044
	.DB $00		;5045
	.DB $18		;5046
	.DB $02		;5047
	.DB $ff		;5048
	.DB $81		;5049
	.DB $fe		;504a
	.DB $02		;504b
	.DB $ff		;504c
	.DB $82		;504d
	.DB $f0		;504e
	.DB $c0		;504f
	.DB $02		;5050
	.DB $ff		;5051
	.DB $02		;5052
	.DB $00		;5053
	.DB $82		;5054
	.DB $f8		;5055
	.DB $f0		;5056
	.DB $02		;5057
	.DB $00		;5058
	.DB $82		;5059
	.DB $80		;505a
	.DB $1c		;505b
	.DB $02		;505c
	.DB $00		;505d
	.DB $02		;505e
	.DB $1c		;505f
	.DB $02		;5060
	.DB $00		;5061
	.DB $84		;5062
	.DB $1c		;5063
	.DB $ff		;5064
	.DB $fe		;5065
	.DB $fc		;5066
	.DB $02		;5067
	.DB $ff		;5068
	.DB $84		;5069
	.DB $c0		;506a
	.DB $80		;506b
	.DB $00		;506c
	.DB $ff		;506d
	.DB $02		;506e
	.DB $00		;506f
	.DB $82		;5070
	.DB $f8		;5071
	.DB $f0		;5072
	.DB $03		;5073
	.DB $00		;5074
	.DB $81		;5075
	.DB $1c		;5076
	.DB $02		;5077
	.DB $00		;5078
	.DB $02		;5079
	.DB $1c		;507a
	.DB $03		;507b
	.DB $00		;507c
	.DB $0b		;507d
	.DB $ff		;507e
	.DB $83		;507f
	.DB $e0		;5080
	.DB $c0		;5081
	.DB $80		;5082
	.DB $03		;5083
	.DB $ff		;5084
	.DB $82		;5085
	.DB $fe		;5086
	.DB $fc		;5087
	.DB $03		;5088
	.DB $00		;5089
	.DB $82		;508a
	.DB $c0		;508b
	.DB $80		;508c
	.DB $03		;508d
	.DB $3c		;508e
	.DB $03		;508f
	.DB $00		;5090
	.DB $02		;5091
	.DB $3c		;5092
	.DB $09		;5093
	.DB $ff		;5094
	.DB $84		;5095
	.DB $f0		;5096
	.DB $e0		;5097
	.DB $c0		;5098
	.DB $80		;5099
	.DB $04		;509a
	.DB $ff		;509b
	.DB $04		;509c
	.DB $00		;509d
	.DB $84		;509e
	.DB $e0		;509f
	.DB $c0		;50a0
	.DB $80		;50a1
	.DB $3c		;50a2
	.DB $04		;50a3
	.DB $00		;50a4
	.DB $03		;50a5
	.DB $3c		;50a6
	.DB $04		;50a7
	.DB $ff		;50a8
	.DB $81		;50a9
	.DB $fe		;50aa
	.DB $04		;50ab
	.DB $ff		;50ac
	.DB $84		;50ad
	.DB $e0		;50ae
	.DB $c0		;50af
	.DB $80		;50b0
	.DB $00		;50b1
	.DB $04		;50b2
	.DB $ff		;50b3
	.DB $04		;50b4
	.DB $00		;50b5
	.DB $83		;50b6
	.DB $e0		;50b7
	.DB $c0		;50b8
	.DB $80		;50b9
	.DB $08		;50ba
	.DB $00		;50bb
	.DB $81		;50bc
	.DB $3e		;50bd
	.DB $04		;50be
	.DB $00		;50bf
	.DB $03		;50c0
	.DB $3e		;50c1
	.DB $03		;50c2
	.DB $ff		;50c3
	.DB $83		;50c4
	.DB $fe		;50c5
	.DB $fc		;50c6
	.DB $f8		;50c7
	.DB $03		;50c8
	.DB $ff		;50c9
	.DB $81		;50ca
	.DB $c0		;50cb
	.DB $04		;50cc
	.DB $00		;50cd
	.DB $03		;50ce
	.DB $ff		;50cf
	.DB $05		;50d0
	.DB $00		;50d1
	.DB $83		;50d2
	.DB $c0		;50d3
	.DB $80		;50d4
	.DB $7e		;50d5
	.DB $05		;50d6
	.DB $00		;50d7
	.DB $02		;50d8
	.DB $7e		;50d9
	.DB $04		;50da
	.DB $ff		;50db
	.DB $84		;50dc
	.DB $f8		;50dd
	.DB $f0		;50de
	.DB $c0		;50df
	.DB $80		;50e0
	.DB $04		;50e1
	.DB $ff		;50e2
	.DB $04		;50e3
	.DB $00		;50e4
	.DB $84		;50e5
	.DB $ff		;50e6
	.DB $fe		;50e7
	.DB $fc		;50e8
	.DB $f8		;50e9
	.DB $04		;50ea
	.DB $00		;50eb
	.DB $04		;50ec
	.DB $7e		;50ed
	.DB $04		;50ee
	.DB $00		;50ef
	.DB $82		;50f0
	.DB $ff		;50f1
	.DB $fe		;50f2
	.DB $06		;50f3
	.DB $ff		;50f4
	.DB $02		;50f5
	.DB $00		;50f6
	.DB $06		;50f7
	.DB $ff		;50f8
	.DB $02		;50f9
	.DB $00		;50fa
	.DB $86		;50fb
	.DB $fc		;50fc
	.DB $f8		;50fd
	.DB $f0		;50fe
	.DB $e0		;50ff
	.DB $c0		;5100
	.DB $80		;5101
	.DB $02		;5102
	.DB $00		;5103
	.DB $06		;5104
	.DB $7e		;5105
	.DB $7f		;5106
	.DB $00		;5107
	.DB $7f		;5108
	.DB $00		;5109
	.DB $7f		;510a
	.DB $00		;510b
	.DB $7f		;510c
	.DB $00		;510d
	.DB $15		;510e
	.DB $00		;510f
	.DB $81		;5110
	.DB $3c		;5111
	.DB $02		;5112
	.DB $7a		;5113
	.DB $86		;5114
	.DB $3c		;5115
	.DB $00		;5116
	.DB $3c		;5117
	.DB $7a		;5118
	.DB $00		;5119
	.DB $3c		;511a
	.DB $02		;511b
	.DB $7a		;511c
	.DB $86		;511d
	.DB $3c		;511e
	.DB $00		;511f
	.DB $3c		;5120
	.DB $7a		;5121
	.DB $00		;5122
	.DB $3c		;5123
	.DB $02		;5124
	.DB $7a		;5125
	.DB $84		;5126
	.DB $3c		;5127
	.DB $00		;5128
	.DB $3c		;5129
	.DB $7a		;512a
	.DB $08		;512b
	.DB $00		;512c
	.DB $03		;512d
	.DB $e0		;512e
	.DB $03		;512f
	.DB $ff		;5130
	.DB $85		;5131
	.DB $fc		;5132
	.DB $f8		;5133
	.DB $07		;5134
	.DB $03		;5135
	.DB $01		;5136
	.DB $03		;5137
	.DB $f8		;5138
	.DB $82		;5139
	.DB $38		;513a
	.DB $18		;513b
	.DB $06		;513c
	.DB $f0		;513d
	.DB $82		;513e
	.DB $f8		;513f
	.DB $fc		;5140
	.DB $06		;5141
	.DB $08		;5142
	.DB $92		;5143
	.DB $18		;5144
	.DB $38		;5145
	.DB $f3		;5146
	.DB $f0		;5147
	.DB $f7		;5148
	.DB $f0		;5149
	.DB $f7		;514a
	.DB $f0		;514b
	.DB $fb		;514c
	.DB $fc		;514d
	.DB $c8		;514e
	.DB $08		;514f
	.DB $e8		;5150
	.DB $08		;5151
	.DB $e8		;5152
	.DB $08		;5153
	.DB $d8		;5154
	.DB $38		;5155
	.DB $02		;5156
	.DB $ff		;5157
	.DB $82		;5158
	.DB $fc		;5159
	.DB $f8		;515a
	.DB $04		;515b
	.DB $f0		;515c
	.DB $02		;515d
	.DB $f8		;515e
	.DB $82		;515f
	.DB $38		;5160
	.DB $18		;5161
	.DB $04		;5162
	.DB $08		;5163
	.DB $02		;5164
	.DB $f0		;5165
	.DB $82		;5166
	.DB $f8		;5167
	.DB $fc		;5168
	.DB $02		;5169
	.DB $ff		;516a
	.DB $82		;516b
	.DB $fc		;516c
	.DB $f8		;516d
	.DB $02		;516e
	.DB $08		;516f
	.DB $82		;5170
	.DB $18		;5171
	.DB $38		;5172
	.DB $02		;5173
	.DB $f8		;5174
	.DB $82		;5175
	.DB $38		;5176
	.DB $18		;5177
	.DB $02		;5178
	.DB $ff		;5179
	.DB $86		;517a
	.DB $fc		;517b
	.DB $f8		;517c
	.DB $f3		;517d
	.DB $f0		;517e
	.DB $f7		;517f
	.DB $f0		;5180
	.DB $02		;5181
	.DB $f8		;5182
	.DB $8a		;5183
	.DB $38		;5184
	.DB $18		;5185
	.DB $c8		;5186
	.DB $08		;5187
	.DB $e8		;5188
	.DB $08		;5189
	.DB $f7		;518a
	.DB $f0		;518b
	.DB $fb		;518c
	.DB $fc		;518d
	.DB $02		;518e
	.DB $ff		;518f
	.DB $86		;5190
	.DB $fc		;5191
	.DB $f8		;5192
	.DB $e8		;5193
	.DB $08		;5194
	.DB $d8		;5195
	.DB $38		;5196
	.DB $02		;5197
	.DB $f8		;5198
	.DB $85		;5199
	.DB $38		;519a
	.DB $18		;519b
	.DB $f0		;519c
	.DB $f1		;519d
	.DB $f3		;519e
	.DB $03		;519f
	.DB $f0		;51a0
	.DB $8a		;51a1
	.DB $f8		;51a2
	.DB $fc		;51a3
	.DB $08		;51a4
	.DB $c8		;51a5
	.DB $e8		;51a6
	.DB $68		;51a7
	.DB $28		;51a8
	.DB $08		;51a9
	.DB $18		;51aa
	.DB $38		;51ab
	.DB $05		;51ac
	.DB $ff		;51ad
	.DB $83		;51ae
	.DB $1f		;51af
	.DB $9f		;51b0
	.DB $df		;51b1
	.DB $05		;51b2
	.DB $f8		;51b3
	.DB $06		;51b4
	.DB $ff		;51b5
	.DB $85		;51b6
	.DB $ef		;51b7
	.DB $8f		;51b8
	.DB $0f		;51b9
	.DB $07		;51ba
	.DB $c0		;51bb
	.DB $04		;51bc
	.DB $cf		;51bd
	.DB $02		;51be
	.DB $c7		;51bf
	.DB $82		;51c0
	.DB $cf		;51c1
	.DB $1f		;51c2
	.DB $05		;51c3
	.DB $00		;51c4
	.DB $88		;51c5
	.DB $02		;51c6
	.DB $07		;51c7
	.DB $0f		;51c8
	.DB $00		;51c9
	.DB $03		;51ca
	.DB $06		;51cb
	.DB $08		;51cc
	.DB $10		;51cd
	.DB $02		;51ce
	.DB $00		;51cf
	.DB $83		;51d0
	.DB $c0		;51d1
	.DB $00		;51d2
	.DB $80		;51d3
	.DB $09		;51d4
	.DB $00		;51d5
	.DB $81		;51d6
	.DB $0c		;51d7
	.DB $04		;51d8
	.DB $03		;51d9
	.DB $05		;51da
	.DB $00		;51db
	.DB $85		;51dc
	.DB $06		;51dd
	.DB $fe		;51de
	.DB $fc		;51df
	.DB $3f		;51e0
	.DB $1f		;51e1
	.DB $02		;51e2
	.DB $07		;51e3
	.DB $04		;51e4
	.DB $00		;51e5
	.DB $83		;51e6
	.DB $c0		;51e7
	.DB $fc		;51e8
	.DB $fe		;51e9
	.DB $02		;51ea
	.DB $ff		;51eb
	.DB $82		;51ec
	.DB $3f		;51ed
	.DB $0f		;51ee
	.DB $02		;51ef
	.DB $00		;51f0
	.DB $83		;51f1
	.DB $0f		;51f2
	.DB $3f		;51f3
	.DB $fd		;51f4
	.DB $02		;51f5
	.DB $e0		;51f6
	.DB $02		;51f7
	.DB $00		;51f8
	.DB $84		;51f9
	.DB $0f		;51fa
	.DB $fe		;51fb
	.DB $fc		;51fc
	.DB $f0		;51fd
	.DB $0b		;51fe
	.DB $00		;51ff
	.DB $81		;5200
l5201h:
	.DB $01		;5201
	.DB $06		;5202
	.DB $00		;5203
	.DB $02		;5204
	.DB $80		;5205
	.DB $02		;5206
	.DB $00		;5207
	.DB $81		;5208
	.DB $03		;5209
	.DB $08		;520a
	.DB $00		;520b
	.DB $85		;520c
	.DB $80		;520d
	.DB $c0		;520e
	.DB $40		;520f
	.DB $80		;5210
	.DB $0c		;5211
	.DB $04		;5212
	.DB $00		;5213
	.DB $83		;5214
	.DB $01		;5215
	.DB $ff		;5216
	.DB $03		;5217
	.DB $05		;5218
	.DB $00		;5219
	.DB $84		;521a
	.DB $c0		;521b
	.DB $f0		;521c
	.DB $ff		;521d
	.DB $0c		;521e
	.DB $02		;521f
	.DB $00		;5220
	.DB $81		;5221
	.DB $40		;5222
	.DB $02		;5223
	.DB $80		;5224
	.DB $83		;5225
	.DB $40		;5226
	.DB $f0		;5227
	.DB $1f		;5228
	.DB $04		;5229
	.DB $00		;522a
	.DB $8b		;522b
	.DB $10		;522c
	.DB $38		;522d
	.DB $ff		;522e
	.DB $e7		;522f
	.DB $00		;5230
	.DB $03		;5231
	.DB $1e		;5232
	.DB $38		;5233
	.DB $68		;5234
	.DB $e0		;5235
	.DB $c0		;5236
	.DB $08		;5237
	.DB $00		;5238
	.DB $81		;5239
	.DB $f9		;523a
	.DB $03		;523b
	.DB $00		;523c
	.DB $a3		;523d
	.DB $03		;523e
	.DB $1f		;523f
	.DB $79		;5240
	.DB $a0		;5241
	.DB $e7		;5242
	.DB $00		;5243
	.DB $07		;5244
	.DB $0f		;5245
	.DB $f8		;5246
	.DB $0f		;5247
	.DB $fe		;5248
	.DB $f8		;5249
	.DB $f0		;524a
	.DB $8a		;524b
	.DB $10		;524c
	.DB $07		;524d
	.DB $77		;524e
	.DB $f3		;524f
	.DB $8f		;5250
	.DB $18		;5251
	.DB $60		;5252
	.DB $0c		;5253
	.DB $78		;5254
	.DB $59		;5255
	.DB $fb		;5256
	.DB $e6		;5257
	.DB $8b		;5258
	.DB $fd		;5259
	.DB $00		;525a
	.DB $0d		;525b
	.DB $7f		;525c
	.DB $dd		;525d
	.DB $7f		;525e
	.DB $fd		;525f
	.DB $e2		;5260
	.DB $02		;5261
	.DB $02		;5262
	.DB $87		;5263
	.DB $c3		;5264
	.DB $0f		;5265
	.DB $cd		;5266
	.DB $d8		;5267
	.DB $9f		;5268
	.DB $7f		;5269
	.DB $46		;526a
	.DB $07		;526b
	.DB $00		;526c
	.DB $82		;526d
	.DB $03		;526e
	.DB $06		;526f
	.DB $04		;5270
	.DB $00		;5271
	.DB $8d		;5272
	.DB $0f		;5273
	.DB $ff		;5274
	.DB $fe		;5275
	.DB $00		;5276
	.DB $0f		;5277
	.DB $fb		;5278
	.DB $7e		;5279
	.DB $dc		;527a
	.DB $14		;527b
	.DB $fc		;527c
	.DB $eb		;527d
	.DB $c3		;527e
	.DB $80		;527f
	.DB $02		;5280
	.DB $c0		;5281
	.DB $85		;5282
	.DB $68		;5283
	.DB $37		;5284
	.DB $dc		;5285
	.DB $f7		;5286
	.DB $7c		;5287
	.DB $04		;5288
	.DB $00		;5289
	.DB $84		;528a
	.DB $c0		;528b
	.DB $ef		;528c
	.DB $d1		;528d
	.DB $7e		;528e
	.DB $05		;528f
	.DB $00		;5290
	.DB $83		;5291
	.DB $80		;5292
	.DB $ce		;5293
	.DB $7d		;5294
	.DB $06		;5295
	.DB $00		;5296
	.DB $82		;5297
	.DB $04		;5298
	.DB $86		;5299
	.DB $07		;529a
	.DB $00		;529b
	.DB $81		;529c
	.DB $ef		;529d
	.DB $03		;529e
	.DB $00		;529f
	.DB $81		;52a0
	.DB $02		;52a1
	.DB $02		;52a2
	.DB $01		;52a3
	.DB $02		;52a4
	.DB $02		;52a5
	.DB $82		;52a6
	.DB $00		;52a7
	.DB $ff		;52a8
	.DB $03		;52a9
	.DB $80		;52aa
	.DB $81		;52ab
	.DB $8e		;52ac
	.DB $02		;52ad
	.DB $88		;52ae
	.DB $82		;52af
	.DB $00		;52b0
	.DB $ff		;52b1
	.DB $06		;52b2
	.DB $10		;52b3
	.DB $0b		;52b4
	.DB $00		;52b5
	.DB $84		;52b6
	.DB $01		;52b7
	.DB $06		;52b8
	.DB $36		;52b9
	.DB $41		;52ba
	.DB $04		;52bb
	.DB $00		;52bc
	.DB $84		;52bd
	.DB $80		;52be
	.DB $20		;52bf
	.DB $fc		;52c0
	.DB $10		;52c1
	.DB $04		;52c2
	.DB $00		;52c3
	.DB $84		;52c4
	.DB $38		;52c5
	.DB $64		;52c6
	.DB $fa		;52c7
	.DB $24		;52c8
	.DB $02		;52c9
	.DB $00		;52ca
	.DB $86		;52cb
	.DB $0b		;52cc
	.DB $1d		;52cd
	.DB $1b		;52ce
	.DB $39		;52cf
	.DB $7f		;52d0
	.DB $28		;52d1
	.DB $02		;52d2
	.DB $00		;52d3
	.DB $81		;52d4
	.DB $08		;52d5
	.DB $02		;52d6
	.DB $0a		;52d7
	.DB $82		;52d8
	.DB $1b		;52d9
	.DB $7d		;52da
	.DB $07		;52db
	.DB $00		;52dc
	.DB $91		;52dd
	.DB $0a		;52de
	.DB $26		;52df
	.DB $48		;52e0
	.DB $0a		;52e1
	.DB $13		;52e2
	.DB $11		;52e3
	.DB $35		;52e4
	.DB $25		;52e5
	.DB $12		;52e6
	.DB $23		;52e7
	.DB $45		;52e8
	.DB $00		;52e9
	.DB $20		;52ea
	.DB $d0		;52eb
	.DB $ee		;52ec
	.DB $ef		;52ed
	.DB $6c		;52ee
	.DB $02		;52ef
	.DB $68		;52f0
	.DB $05		;52f1
	.DB $00		;52f2
	.DB $85		;52f3
	.DB $40		;52f4
	.DB $18		;52f5
	.DB $07		;52f6
	.DB $6f		;52f7
	.DB $ef		;52f8
	.DB $04		;52f9
	.DB $ed		;52fa
	.DB $83		;52fb
	.DB $ee		;52fc
	.DB $d6		;52fd
	.DB $e8		;52fe
	.DB $07		;52ff
	.DB $ec		;5300
	.DB $04		;5301
	.DB $01		;5302
	.DB $02		;5303
	.DB $02		;5304
	.DB $83		;5305
	.DB $06		;5306
	.DB $05		;5307
	.DB $d6		;5308
	.DB $03		;5309
	.DB $54		;530a
	.DB $02		;530b
	.DB $ab		;530c
	.DB $82		;530d
	.DB $d3		;530e
	.DB $d7		;530f
	.DB $02		;5310
	.DB $b2		;5311
	.DB $02		;5312
	.DB $92		;5313
	.DB $85		;5314
	.DB $58		;5315
	.DB $48		;5316
	.DB $79		;5317
	.DB $73		;5318
	.DB $c2		;5319
	.DB $02		;531a
	.DB $c4		;531b
	.DB $02		;531c
	.DB $55		;531d
	.DB $02		;531e
	.DB $0c		;531f
	.DB $86		;5320
	.DB $1a		;5321
	.DB $5d		;5322
	.DB $49		;5323
	.DB $04		;5324
	.DB $54		;5325
	.DB $56		;5326
	.DB $02		;5327
	.DB $ab		;5328
	.DB $81		;5329
	.DB $1b		;532a
	.DB $06		;532b
	.DB $00		;532c
	.DB $81		;532d
	.DB $20		;532e
	.DB $08		;532f
	.DB $00		;5330
	.DB $87		;5331
	.DB $82		;5332
	.DB $00		;5333
	.DB $18		;5334
	.DB $00		;5335
	.DB $04		;5336
	.DB $00		;5337
	.DB $20		;5338
	.DB $03		;5339
	.DB $00		;533a
	.DB $81		;533b
	.DB $08		;533c
	.DB $03		;533d
	.DB $00		;533e
	.DB $83		;533f
	.DB $28		;5340
	.DB $00		;5341
	.DB $30		;5342
	.DB $02		;5343
	.DB $18		;5344
	.DB $81		;5345
	.DB $00		;5346
	.DB $02		;5347
	.DB $18		;5348
	.DB $03		;5349
	.DB $00		;534a
	.DB $88		;534b
	.DB $74		;534c
	.DB $44		;534d
	.DB $3c		;534e
	.DB $ca		;534f
	.DB $f6		;5350
	.DB $88		;5351
	.DB $42		;5352
	.DB $82		;5353
	.DB $03		;5354
	.DB $00		;5355
	.DB $83		;5356
	.DB $82		;5357
	.DB $00		;5358
	.DB $10		;5359
	.DB $03		;535a
	.DB $00		;535b
	.DB $87		;535c
	.DB $20		;535d
	.DB $00		;535e
	.DB $20		;535f
	.DB $00		;5360
	.DB $04		;5361
	.DB $00		;5362
	.DB $10		;5363
	.DB $03		;5364
	.DB $00		;5365
	.DB $86		;5366
	.DB $82		;5367
	.DB $00		;5368
	.DB $08		;5369
	.DB $00		;536a
	.DB $04		;536b
	.DB $00		;536c
	.DB $03		;536d
	.DB $10		;536e
	.DB $83		;536f
	.DB $00		;5370
	.DB $18		;5371
	.DB $28		;5372
	.DB $02		;5373
	.DB $08		;5374
	.DB $84		;5375
	.DB $28		;5376
	.DB $20		;5377
	.DB $28		;5378
	.DB $08		;5379
	.DB $02		;537a
	.DB $28		;537b
	.DB $81		;537c
	.DB $4c		;537d
	.DB $00		;537e
	.DB $08		;537f
	.DB $ff		;5380
	.DB $03		;5381
	.DB $00		;5382
	.DB $82		;5383
	.DB $ff		;5384
	.DB $00		;5385
	.DB $03		;5386
	.DB $ff		;5387
	.DB $03		;5388
	.DB $00		;5389
	.DB $82		;538a
	.DB $ff		;538b
	.DB $00		;538c
	.DB $03		;538d
	.DB $ff		;538e
	.DB $88		;538f
	.DB $00		;5390
	.DB $02		;5391
	.DB $00		;5392
	.DB $f8		;5393
	.DB $00		;5394
	.DB $e0		;5395
	.DB $00		;5396
	.DB $80		;5397
	.DB $08		;5398
	.DB $00		;5399
	.DB $0e		;539a
	.DB $ff		;539b
	.DB $8a		;539c
	.DB $fc		;539d
	.DB $ff		;539e
	.DB $f8		;539f
	.DB $fe		;53a0
	.DB $e0		;53a1
	.DB $f8		;53a2
	.DB $80		;53a3
	.DB $e0		;53a4
	.DB $00		;53a5
	.DB $80		;53a6
	.DB $08		;53a7
	.DB $00		;53a8
	.DB $04		;53a9
	.DB $ff		;53aa
	.DB $83		;53ab
	.DB $fe		;53ac
	.DB $ff		;53ad
	.DB $f8		;53ae
	.DB $02		;53af
	.DB $f0		;53b0
	.DB $85		;53b1
	.DB $fe		;53b2
	.DB $c0		;53b3
	.DB $f8		;53b4
	.DB $00		;53b5
	.DB $e0		;53b6
	.DB $0a		;53b7
	.DB $00		;53b8
	.DB $03		;53b9
	.DB $ff		;53ba
	.DB $81		;53bb
	.DB $fe		;53bc
	.DB $02		;53bd
	.DB $ff		;53be
	.DB $84		;53bf
	.DB $f0		;53c0
	.DB $e0		;53c1
	.DB $ff		;53c2
	.DB $fe		;53c3
	.DB $02		;53c4
	.DB $00		;53c5
	.DB $82		;53c6
	.DB $f0		;53c7
	.DB $e0		;53c8
	.DB $02		;53c9
	.DB $00		;53ca
	.DB $02		;53cb
	.DB $18		;53cc
	.DB $02		;53cd
	.DB $00		;53ce
	.DB $02		;53cf
	.DB $18		;53d0
	.DB $02		;53d1
	.DB $00		;53d2
	.DB $05		;53d3
	.DB $ff		;53d4
	.DB $82		;53d5
	.DB $f0		;53d6
	.DB $c0		;53d7
	.DB $02		;53d8
	.DB $80		;53d9
	.DB $84		;53da
	.DB $fe		;53db
	.DB $fc		;53dc
	.DB $f8		;53dd
	.DB $f0		;53de
	.DB $04		;53df
	.DB $00		;53e0
	.DB $04		;53e1
	.DB $1c		;53e2
	.DB $03		;53e3
	.DB $00		;53e4
	.DB $05		;53e5
	.DB $ff		;53e6
	.DB $82		;53e7
	.DB $c0		;53e8
	.DB $80		;53e9
	.DB $02		;53ea
	.DB $00		;53eb
	.DB $84		;53ec
	.DB $fe		;53ed
	.DB $fc		;53ee
	.DB $f8		;53ef
	.DB $f0		;53f0
	.DB $04		;53f1
	.DB $00		;53f2
	.DB $04		;53f3
	.DB $1c		;53f4
	.DB $03		;53f5
	.DB $00		;53f6
	.DB $08		;53f7
	.DB $ff		;53f8
	.DB $83		;53f9
	.DB $fe		;53fa
	.DB $fc		;53fb
	.DB $f0		;53fc
	.DB $05		;53fd
	.DB $ff		;53fe
	.DB $03		;53ff
	.DB $00		;5400
	.DB $85		;5401
	.DB $f8		;5402
	.DB $f0		;5403
	.DB $e0		;5404
	.DB $c0		;5405
	.DB $80		;5406
	.DB $03		;5407
	.DB $00		;5408
	.DB $05		;5409
	.DB $3c		;540a
	.DB $06		;540b
	.DB $ff		;540c
	.DB $87		;540d
	.DB $fc		;540e
	.DB $f8		;540f
	.DB $ff		;5410
	.DB $f0		;5411
	.DB $e0		;5412
	.DB $c0		;5413
	.DB $80		;5414
	.DB $03		;5415
	.DB $00		;5416
	.DB $81		;5417
	.DB $ff		;5418
	.DB $07		;5419
	.DB $00		;541a
	.DB $81		;541b
	.DB $3c		;541c
	.DB $07		;541d
	.DB $00		;541e
	.DB $08		;541f
	.DB $ff		;5420
	.DB $81		;5421
	.DB $f0		;5422
	.DB $07		;5423
	.DB $ff		;5424
	.DB $88		;5425
	.DB $00		;5426
	.DB $fe		;5427
	.DB $fc		;5428
	.DB $f8		;5429
	.DB $f0		;542a
	.DB $e0		;542b
	.DB $c0		;542c
	.DB $80		;542d
	.DB $09		;542e
	.DB $00		;542f
	.DB $07		;5430
	.DB $3e		;5431
	.DB $03		;5432
	.DB $ff		;5433
	.DB $87		;5434
	.DB $fe		;5435
	.DB $fc		;5436
	.DB $f8		;5437
	.DB $f0		;5438
	.DB $e0		;5439
	.DB $ff		;543a
	.DB $c0		;543b
	.DB $06		;543c
	.DB $00		;543d
	.DB $81		;543e
	.DB $ff		;543f
	.DB $07		;5440
	.DB $00		;5441
	.DB $81		;5442
	.DB $7e		;5443
	.DB $07		;5444
	.DB $00		;5445
	.DB $02		;5446
	.DB $ff		;5447
	.DB $82		;5448
	.DB $fe		;5449
	.DB $fc		;544a
	.DB $04		;544b
	.DB $ff		;544c
	.DB $81		;544d
	.DB $80		;544e
	.DB $03		;544f
	.DB $00		;5450
	.DB $04		;5451
	.DB $ff		;5452
	.DB $04		;5453
	.DB $00		;5454
	.DB $84		;5455
	.DB $f0		;5456
	.DB $e0		;5457
	.DB $c0		;5458
	.DB $80		;5459
	.DB $04		;545a
	.DB $00		;545b
	.DB $04		;545c
	.DB $7e		;545d
	.DB $11		;545e
	.DB $ff		;545f
	.DB $87		;5460
	.DB $fe		;5461
	.DB $fc		;5462
	.DB $f8		;5463
	.DB $f0		;5464
	.DB $e0		;5465
	.DB $c0		;5466
	.DB $80		;5467
	.DB $08		;5468
	.DB $7e		;5469
	.DB $10		;546a
	.DB $00		;546b
	.DB $82		;546c
	.DB $38		;546d
	.DB $4c		;546e
	.DB $03		;546f
	.DB $c6		;5470
	.DB $85		;5471
	.DB $64		;5472
	.DB $38		;5473
	.DB $00		;5474
	.DB $18		;5475
	.DB $38		;5476
	.DB $04		;5477
	.DB $18		;5478
	.DB $97		;5479
	.DB $7e		;547a
	.DB $00		;547b
	.DB $7c		;547c
	.DB $c6		;547d
	.DB $0e		;547e
	.DB $3c		;547f
	.DB $78		;5480
	.DB $e0		;5481
	.DB $fe		;5482
	.DB $00		;5483
	.DB $7e		;5484
	.DB $0c		;5485
	.DB $18		;5486
	.DB $3c		;5487
	.DB $06		;5488
	.DB $c6		;5489
	.DB $7c		;548a
	.DB $00		;548b
	.DB $1c		;548c
	.DB $3c		;548d
	.DB $6c		;548e
	.DB $cc		;548f
	.DB $fe		;5490
	.DB $02		;5491
	.DB $0c		;5492
	.DB $84		;5493
	.DB $00		;5494
	.DB $fc		;5495
	.DB $c0		;5496
	.DB $fc		;5497
	.DB $02		;5498
	.DB $06		;5499
	.DB $87		;549a
	.DB $c6		;549b
	.DB $7c		;549c
	.DB $00		;549d
	.DB $3c		;549e
	.DB $60		;549f
	.DB $c0		;54a0
	.DB $fc		;54a1
	.DB $02		;54a2
	.DB $c6		;54a3
	.DB $86		;54a4
	.DB $7c		;54a5
	.DB $00		;54a6
	.DB $fe		;54a7
	.DB $c6		;54a8
	.DB $0c		;54a9
	.DB $18		;54aa
	.DB $03		;54ab
	.DB $30		;54ac
	.DB $82		;54ad
	.DB $00		;54ae
	.DB $7c		;54af
	.DB $02		;54b0
	.DB $c6		;54b1
	.DB $81		;54b2
	.DB $7c		;54b3
	.DB $02		;54b4
	.DB $c6		;54b5
	.DB $83		;54b6
	.DB $7c		;54b7
	.DB $00		;54b8
	.DB $7c		;54b9
	.DB $02		;54ba
	.DB $c6		;54bb
	.DB $84		;54bc
	.DB $7e		;54bd
	.DB $06		;54be
	.DB $0c		;54bf
	.DB $78		;54c0
	.DB $22		;54c1
	.DB $00		;54c2
	.DB $81		;54c3
	.DB $3c		;54c4
	.DB $05		;54c5
	.DB $42		;54c6
	.DB $81		;54c7
	.DB $00		;54c8
	.DB $06		;54c9
	.DB $42		;54ca
	.DB $81		;54cb
	.DB $3c		;54cc
	.DB $7f		;54cd
	.DB $00		;54ce
	.DB $0f		;54cf
	.DB $00		;54d0
	.DB $02		;54d1
	.DB $18		;54d2
	.DB $72		;54d3
	.DB $00		;54d4
	.DB $06		;54d5
	.DB $02		;54d6
	.DB $81		;54d7
	.DB $00		;54d8
	.DB $07		;54d9
	.DB $02		;54da
	.DB $02		;54db
	.DB $00		;54dc
	.DB $81		;54dd
	.DB $3c		;54de
	.DB $05		;54df
	.DB $02		;54e0
	.DB $81		;54e1
	.DB $3c		;54e2
	.DB $06		;54e3
	.DB $40		;54e4
	.DB $82		;54e5
	.DB $3e		;54e6
	.DB $00		;54e7
	.DB $06		;54e8
	.DB $02		;54e9
	.DB $81		;54ea
	.DB $3c		;54eb
	.DB $02		;54ec
	.DB $00		;54ed
	.DB $81		;54ee
	.DB $02		;54ef
	.DB $05		;54f0
	.DB $42		;54f1
	.DB $83		;54f2
	.DB $3c		;54f3
	.DB $00		;54f4
	.DB $3c		;54f5
	.DB $05		;54f6
	.DB $40		;54f7
	.DB $83		;54f8
	.DB $3c		;54f9
	.DB $00		;54fa
	.DB $3c		;54fb
	.DB $05		;54fc
	.DB $02		;54fd
	.DB $02		;54fe
	.DB $00		;54ff
	.DB $81		;5500
	.DB $3c		;5501
	.DB $05		;5502
	.DB $42		;5503
	.DB $81		;5504
	.DB $3c		;5505
	.DB $3a		;5506
	.DB $00		;5507
	.DB $02		;5508
	.DB $04		;5509
	.DB $02		;550a
	.DB $00		;550b
	.DB $84		;550c
	.DB $3c		;550d
	.DB $7a		;550e
	.DB $00		;550f
	.DB $3c		;5510
	.DB $02		;5511
	.DB $7a		;5512
	.DB $81		;5513
	.DB $3c		;5514
	.DB $02		;5515
	.DB $00		;5516
	.DB $83		;5517
	.DB $04		;5518
	.DB $00		;5519
	.DB $3c		;551a
	.DB $02		;551b
	.DB $7a		;551c
	.DB $84		;551d
	.DB $3c		;551e
	.DB $00		;551f
	.DB $3c		;5520
	.DB $7a		;5521
	.DB $08		;5522
	.DB $00		;5523
	.DB $07		;5524
	.DB $ff		;5525
	.DB $81		;5526
	.DB $fc		;5527
	.DB $07		;5528
	.DB $ff		;5529
	.DB $83		;552a
	.DB $3f		;552b
	.DB $fb		;552c
	.DB $f7		;552d
	.DB $06		;552e
	.DB $ff		;552f
	.DB $82		;5530
	.DB $df		;5531
	.DB $ef		;5532
	.DB $06		;5533
	.DB $ff		;5534
	.DB $90		;5535
	.DB $fb		;5536
	.DB $f0		;5537
	.DB $f7		;5538
	.DB $f0		;5539
	.DB $f7		;553a
	.DB $f0		;553b
	.DB $fb		;553c
	.DB $fc		;553d
	.DB $df		;553e
	.DB $0f		;553f
	.DB $ef		;5540
	.DB $0f		;5541
	.DB $ef		;5542
	.DB $0f		;5543
	.DB $df		;5544
	.DB $3f		;5545
	.DB $03		;5546
	.DB $ff		;5547
	.DB $83		;5548
	.DB $fc		;5549
	.DB $fb		;554a
	.DB $f7		;554b
	.DB $05		;554c
	.DB $ff		;554d
	.DB $83		;554e
	.DB $3f		;554f
	.DB $df		;5550
	.DB $ef		;5551
	.DB $09		;5552
	.DB $ff		;5553
	.DB $81		;5554
	.DB $fc		;5555
	.DB $07		;5556
	.DB $ff		;5557
	.DB $81		;5558
	.DB $3f		;5559
	.DB $03		;555a
	.DB $ff		;555b
	.DB $85		;555c
	.DB $fc		;555d
	.DB $fb		;555e
	.DB $f0		;555f
	.DB $f7		;5560
	.DB $f0		;5561
	.DB $03		;5562
	.DB $ff		;5563
	.DB $89		;5564
	.DB $3f		;5565
	.DB $df		;5566
	.DB $0f		;5567
	.DB $ef		;5568
	.DB $0f		;5569
	.DB $f7		;556a
	.DB $f0		;556b
	.DB $fb		;556c
	.DB $fc		;556d
	.DB $03		;556e
	.DB $ff		;556f
	.DB $85		;5570
	.DB $fc		;5571
	.DB $ef		;5572
	.DB $0f		;5573
	.DB $df		;5574
	.DB $3f		;5575
	.DB $03		;5576
	.DB $ff		;5577
	.DB $83		;5578
	.DB $3f		;5579
	.DB $fb		;557a
	.DB $f7		;557b
	.DB $06		;557c
	.DB $ff		;557d
	.DB $82		;557e
	.DB $df		;557f
	.DB $ef		;5580
	.DB $0b		;5581
	.DB $ff		;5582
	.DB $83		;5583
	.DB $1f		;5584
	.DB $9f		;5585
	.DB $df		;5586
	.DB $0b		;5587
	.DB $ff		;5588
	.DB $85		;5589
	.DB $ef		;558a
	.DB $8f		;558b
	.DB $0f		;558c
	.DB $07		;558d
	.DB $c0		;558e
	.DB $04		;558f
	.DB $ff		;5590
	.DB $02		;5591
	.DB $f7		;5592
	.DB $82		;5593
	.DB $ef		;5594
	.DB $1f		;5595
	.DB $03		;5596
	.DB $00		;5597
	.DB $86		;5598
	.DB $01		;5599
	.DB $03		;559a
	.DB $07		;559b
	.DB $0f		;559c
	.DB $7f		;559d
	.DB $1f		;559e
	.DB $02		;559f
	.DB $7f		;55a0
	.DB $05		;55a1
	.DB $ff		;55a2
	.DB $82		;55a3
	.DB $80		;55a4
	.DB $f7		;55a5
	.DB $06		;55a6
	.DB $ff		;55a7
	.DB $82		;55a8
	.DB $0f		;55a9
	.DB $3f		;55aa
	.DB $06		;55ab
	.DB $ff		;55ac
	.DB $84		;55ad
	.DB $c0		;55ae
	.DB $f0		;55af
	.DB $f8		;55b0
	.DB $fc		;55b1
	.DB $03		;55b2
	.DB $fe		;55b3
	.DB $83		;55b4
	.DB $fc		;55b5
	.DB $7f		;55b6
	.DB $1f		;55b7
	.DB $02		;55b8
	.DB $07		;55b9
	.DB $04		;55ba
	.DB $00		;55bb
	.DB $05		;55bc
	.DB $ff		;55bd
	.DB $83		;55be
	.DB $3f		;55bf
	.DB $0f		;55c0
	.DB $00		;55c1
	.DB $03		;55c2
	.DB $ff		;55c3
	.DB $81		;55c4
	.DB $fd		;55c5
	.DB $02		;55c6
	.DB $e0		;55c7
	.DB $02		;55c8
	.DB $00		;55c9
	.DB $84		;55ca
	.DB $ff		;55cb
	.DB $fe		;55cc
	.DB $fc		;55cd
	.DB $f0		;55ce
	.DB $0b		;55cf
	.DB $00		;55d0
	.DB $81		;55d1
	.DB $0f		;55d2
	.DB $03		;55d3
	.DB $00		;55d4
	.DB $83		;55d5
	.DB $01		;55d6
	.DB $3f		;55d7
	.DB $7f		;55d8
	.DB $02		;55d9
	.DB $ff		;55da
	.DB $02		;55db
	.DB $00		;55dc
	.DB $81		;55dd
	.DB $3f		;55de
	.DB $05		;55df
	.DB $ff		;55e0
	.DB $03		;55e1
	.DB $00		;55e2
	.DB $85		;55e3
	.DB $80		;55e4
	.DB $c0		;55e5
	.DB $f0		;55e6
	.DB $f8		;55e7
	.DB $ff		;55e8
	.DB $02		;55e9
	.DB $3f		;55ea
	.DB $03		;55eb
	.DB $7f		;55ec
	.DB $83		;55ed
	.DB $ff		;55ee
	.DB $03		;55ef
	.DB $00		;55f0
	.DB $07		;55f1
	.DB $ff		;55f2
	.DB $81		;55f3
	.DB $0c		;55f4
	.DB $07		;55f5
	.DB $ff		;55f6
	.DB $81		;55f7
	.DB $1f		;55f8
	.DB $07		;55f9
	.DB $ff		;55fa
	.DB $84		;55fb
	.DB $e7		;55fc
	.DB $e0		;55fd
	.DB $ff		;55fe
	.DB $fe		;55ff
	.DB $02		;5600
	.DB $f8		;5601
	.DB $82		;5602
	.DB $e0		;5603
	.DB $c0		;5604
	.DB $08		;5605
	.DB $00		;5606
	.DB $81		;5607
	.DB $f9		;5608
	.DB $03		;5609
	.DB $00		;560a
	.DB $8f		;560b
	.DB $02		;560c
	.DB $1e		;560d
	.DB $78		;560e
	.DB $80		;560f
	.DB $07		;5610
	.DB $00		;5611
	.DB $06		;5612
	.DB $08		;5613
	.DB $18		;5614
	.DB $0f		;5615
	.DB $70		;5616
	.DB $c0		;5617
	.DB $80		;5618
	.DB $08		;5619
	.DB $10		;561a
	.DB $02		;561b
	.DB $00		;561c
	.DB $91		;561d
	.DB $03		;561e
	.DB $0f		;561f
	.DB $18		;5620
	.DB $60		;5621
	.DB $0c		;5622
	.DB $78		;5623
	.DB $41		;5624
	.DB $c3		;5625
	.DB $86		;5626
	.DB $88		;5627
	.DB $fc		;5628
	.DB $00		;5629
	.DB $0d		;562a
	.DB $7f		;562b
	.DB $c0		;562c
	.DB $00		;562d
	.DB $01		;562e
	.DB $03		;562f
	.DB $02		;5630
	.DB $85		;5631
	.DB $c0		;5632
	.DB $00		;5633
	.DB $41		;5634
	.DB $c0		;5635
	.DB $80		;5636
	.DB $09		;5637
	.DB $00		;5638
	.DB $82		;5639
	.DB $03		;563a
	.DB $06		;563b
	.DB $04		;563c
	.DB $00		;563d
	.DB $83		;563e
	.DB $0f		;563f
	.DB $fc		;5640
	.DB $c0		;5641
	.DB $02		;5642
	.DB $00		;5643
	.DB $87		;5644
	.DB $fb		;5645
	.DB $7e		;5646
	.DB $1c		;5647
	.DB $10		;5648
	.DB $f0		;5649
	.DB $e3		;564a
	.DB $c3		;564b
	.DB $02		;564c
	.DB $80		;564d
	.DB $86		;564e
	.DB $c0		;564f
	.DB $68		;5650
	.DB $37		;5651
	.DB $d0		;5652
	.DB $70		;5653
	.DB $3c		;5654
	.DB $04		;5655
	.DB $00		;5656
	.DB $84		;5657
	.DB $c0		;5658
	.DB $e0		;5659
	.DB $10		;565a
	.DB $5e		;565b
	.DB $06		;565c
	.DB $00		;565d
	.DB $82		;565e
	.DB $0e		;565f
	.DB $01		;5660
	.DB $06		;5661
	.DB $00		;5662
	.DB $82		;5663
	.DB $04		;5664
	.DB $86		;5665
	.DB $07		;5666
	.DB $00		;5667
	.DB $81		;5668
	.DB $ef		;5669
	.DB $03		;566a
	.DB $00		;566b
	.DB $81		;566c
	.DB $02		;566d
	.DB $02		;566e
	.DB $01		;566f
	.DB $02		;5670
	.DB $02		;5671
	.DB $82		;5672
	.DB $00		;5673
	.DB $ff		;5674
	.DB $03		;5675
	.DB $80		;5676
	.DB $81		;5677
	.DB $8e		;5678
	.DB $02		;5679
	.DB $88		;567a
	.DB $82		;567b
	.DB $00		;567c
	.DB $ff		;567d
	.DB $06		;567e
	.DB $10		;567f
	.DB $07		;5680
	.DB $00		;5681
	.DB $81		;5682
	.DB $ff		;5683
	.DB $03		;5684
	.DB $00		;5685
	.DB $85		;5686
	.DB $01		;5687
	.DB $06		;5688
	.DB $36		;5689
	.DB $fb		;568a
	.DB $ff		;568b
	.DB $03		;568c
	.DB $00		;568d
	.DB $85		;568e
	.DB $80		;568f
	.DB $00		;5690
	.DB $04		;5691
	.DB $fe		;5692
	.DB $ff		;5693
	.DB $03		;5694
	.DB $00		;5695
	.DB $88		;5696
	.DB $20		;5697
	.DB $60		;5698
	.DB $d8		;5699
	.DB $7f		;569a
	.DB $ff		;569b
	.DB $00		;569c
	.DB $02		;569d
	.DB $0c		;569e
	.DB $02		;569f
	.DB $19		;56a0
	.DB $84		;56a1
	.DB $7f		;56a2
	.DB $bf		;56a3
	.DB $ff		;56a4
	.DB $00		;56a5
	.DB $03		;56a6
	.DB $08		;56a7
	.DB $84		;56a8
	.DB $10		;56a9
	.DB $70		;56aa
	.DB $ee		;56ab
	.DB $ff		;56ac
	.DB $05		;56ad
	.DB $00		;56ae
	.DB $82		;56af
	.DB $0a		;56b0
	.DB $26		;56b1
	.DB $02		;56b2
	.DB $08		;56b3
	.DB $02		;56b4
	.DB $10		;56b5
	.DB $82		;56b6
	.DB $34		;56b7
	.DB $24		;56b8
	.DB $13		;56b9
	.DB $00		;56ba
	.DB $81		;56bb
	.DB $6d		;56bc
	.DB $05		;56bd
	.DB $ed		;56be
	.DB $82		;56bf
	.DB $ee		;56c0
	.DB $d6		;56c1
	.DB $08		;56c2
	.DB $e8		;56c3
	.DB $04		;56c4
	.DB $01		;56c5
	.DB $02		;56c6
	.DB $02		;56c7
	.DB $83		;56c8
	.DB $06		;56c9
	.DB $05		;56ca
	.DB $d6		;56cb
	.DB $03		;56cc
	.DB $54		;56cd
	.DB $84		;56ce
	.DB $a9		;56cf
	.DB $29		;56d0
	.DB $91		;56d1
	.DB $95		;56d2
	.DB $04		;56d3
	.DB $80		;56d4
	.DB $02		;56d5
	.DB $40		;56d6
	.DB $02		;56d7
	.DB $60		;56d8
	.DB $81		;56d9
	.DB $80		;56da
	.DB $02		;56db
	.DB $40		;56dc
	.DB $02		;56dd
	.DB $51		;56de
	.DB $06		;56df
	.DB $00		;56e0
	.DB $02		;56e1
	.DB $50		;56e2
	.DB $09		;56e3
	.DB $00		;56e4
	.DB $81		;56e5
	.DB $04		;56e6
	.DB $08		;56e7
	.DB $00		;56e8
	.DB $91		;56e9
	.DB $28		;56ea
	.DB $00		;56eb
	.DB $54		;56ec
	.DB $00		;56ed
	.DB $14		;56ee
	.DB $00		;56ef
	.DB $40		;56f0
	.DB $00		;56f1
	.DB $04		;56f2
	.DB $00		;56f3
	.DB $48		;56f4
	.DB $00		;56f5
	.DB $20		;56f6
	.DB $00		;56f7
	.DB $20		;56f8
	.DB $00		;56f9
	.DB $14		;56fa
	.DB $07		;56fb
	.DB $00		;56fc
	.DB $81		;56fd
	.DB $22		;56fe
	.DB $02		;56ff
	.DB $00		;5700
	.DB $82		;5701
	.DB $40		;5702
	.DB $08		;5703
	.DB $02		;5704
	.DB $00		;5705
	.DB $81		;5706
	.DB $40		;5707
	.DB $04		;5708
	.DB $00		;5709
	.DB $8d		;570a
	.DB $28		;570b
	.DB $00		;570c
	.DB $50		;570d
	.DB $00		;570e
	.DB $44		;570f
	.DB $00		;5710
	.DB $10		;5711
	.DB $00		;5712
	.DB $68		;5713
	.DB $00		;5714
	.DB $08		;5715
	.DB $00		;5716
	.DB $54		;5717
	.DB $03		;5718
	.DB $00		;5719
	.DB $81		;571a
	.DB $28		;571b
	.DB $03		;571c
	.DB $00		;571d
	.DB $82		;571e
	.DB $20		;571f
	.DB $10		;5720
	.DB $08		;5721
	.DB $00		;5722
	.DB $84		;5723
	.DB $10		;5724
	.DB $28		;5725
	.DB $10		;5726
	.DB $20		;5727
	.DB $03		;5728
	.DB $00		;5729
	.DB $00		;572a
	.DB $17		;572b
	.DB $00		;572c
	.DB $02		;572d
	.DB $01		;572e
	.DB $8f		;572f
	.DB $02		;5730
	.DB $04		;5731
	.DB $18		;5732
	.DB $30		;5733
	.DB $60		;5734
	.DB $c0		;5735
	.DB $80		;5736
	.DB $00		;5737
	.DB $08		;5738
	.DB $00		;5739
	.DB $08		;573a
	.DB $00		;573b
	.DB $08		;573c
	.DB $00		;573d
	.DB $08		;573e
	.DB $0e		;573f
	.DB $00		;5740
	.DB $81		;5741
	.DB $03		;5742
	.DB $02		;5743
	.DB $07		;5744
	.DB $89		;5745
	.DB $0e		;5746
	.DB $1c		;5747
	.DB $38		;5748
	.DB $70		;5749
	.DB $e0		;574a
	.DB $c0		;574b
	.DB $80		;574c
	.DB $00		;574d
	.DB $08		;574e
	.DB $02		;574f
	.DB $00		;5750
	.DB $02		;5751
	.DB $08		;5752
	.DB $06		;5753
	.DB $00		;5754
	.DB $83		;5755
	.DB $01		;5756
	.DB $03		;5757
	.DB $07		;5758
	.DB $02		;5759
	.DB $0f		;575a
	.DB $87		;575b
	.DB $1e		;575c
	.DB $3c		;575d
	.DB $78		;575e
	.DB $f0		;575f
	.DB $e0		;5760
	.DB $c0		;5761
	.DB $80		;5762
	.DB $02		;5763
	.DB $08		;5764
	.DB $02		;5765
	.DB $00		;5766
	.DB $02		;5767
	.DB $08		;5768
	.DB $05		;5769
	.DB $00		;576a
	.DB $84		;576b
	.DB $01		;576c
	.DB $03		;576d
	.DB $07		;576e
	.DB $0f		;576f
	.DB $02		;5770
	.DB $1f		;5771
	.DB $87		;5772
	.DB $3e		;5773
	.DB $fc		;5774
	.DB $f8		;5775
	.DB $f0		;5776
	.DB $e0		;5777
	.DB $c0		;5778
	.DB $80		;5779
	.DB $02		;577a
	.DB $00		;577b
	.DB $04		;577c
	.DB $18		;577d
	.DB $04		;577e
	.DB $00		;577f
	.DB $85		;5780
	.DB $01		;5781
	.DB $03		;5782
	.DB $07		;5783
	.DB $0f		;5784
	.DB $3f		;5785
	.DB $02		;5786
	.DB $7f		;5787
	.DB $87		;5788
	.DB $fe		;5789
	.DB $fc		;578a
	.DB $f8		;578b
	.DB $f0		;578c
	.DB $e0		;578d
	.DB $c0		;578e
	.DB $80		;578f
	.DB $05		;5790
	.DB $00		;5791
	.DB $03		;5792
	.DB $1c		;5793
	.DB $87		;5794
	.DB $00		;5795
	.DB $01		;5796
	.DB $03		;5797
	.DB $07		;5798
	.DB $1f		;5799
	.DB $3f		;579a
	.DB $7f		;579b
	.DB $02		;579c
	.DB $ff		;579d
	.DB $87		;579e
	.DB $fe		;579f
	.DB $fc		;57a0
	.DB $f8		;57a1
	.DB $f0		;57a2
	.DB $e0		;57a3
	.DB $c0		;57a4
	.DB $80		;57a5
	.DB $05		;57a6
	.DB $1c		;57a7
	.DB $0a		;57a8
	.DB $00		;57a9
	.DB $02		;57aa
	.DB $01		;57ab
	.DB $85		;57ac
	.DB $03		;57ad
	.DB $0f		;57ae
	.DB $1f		;57af
	.DB $3f		;57b0
	.DB $7f		;57b1
	.DB $03		;57b2
	.DB $ff		;57b3
	.DB $87		;57b4
	.DB $fe		;57b5
	.DB $fc		;57b6
	.DB $f8		;57b7
	.DB $f0		;57b8
	.DB $e0		;57b9
	.DB $c0		;57ba
	.DB $80		;57bb
	.DB $0e		;57bc
	.DB $00		;57bd
	.DB $81		;57be
	.DB $03		;57bf
	.DB $02		;57c0
	.DB $07		;57c1
	.DB $84		;57c2
	.DB $0f		;57c3
	.DB $1f		;57c4
	.DB $3f		;57c5
	.DB $7f		;57c6
	.DB $04		;57c7
	.DB $ff		;57c8
	.DB $88		;57c9
	.DB $fe		;57ca
	.DB $fc		;57cb
	.DB $f8		;57cc
	.DB $f0		;57cd
	.DB $e0		;57ce
	.DB $c0		;57cf
	.DB $80		;57d0
	.DB $00		;57d1
	.DB $07		;57d2
	.DB $3c		;57d3
	.DB $04		;57d4
	.DB $00		;57d5
	.DB $83		;57d6
	.DB $01		;57d7
	.DB $03		;57d8
	.DB $07		;57d9
	.DB $02		;57da
	.DB $0f		;57db
	.DB $83		;57dc
	.DB $1f		;57dd
	.DB $3f		;57de
	.DB $7f		;57df
	.DB $05		;57e0
	.DB $ff		;57e1
	.DB $87		;57e2
	.DB $fe		;57e3
	.DB $fc		;57e4
	.DB $f8		;57e5
	.DB $f0		;57e6
	.DB $e0		;57e7
	.DB $c0		;57e8
	.DB $80		;57e9
	.DB $08		;57ea
	.DB $00		;57eb
	.DB $08		;57ec
	.DB $3e		;57ed
	.DB $03		;57ee
	.DB $00		;57ef
	.DB $84		;57f0
	.DB $01		;57f1
	.DB $03		;57f2
	.DB $07		;57f3
	.DB $0f		;57f4
	.DB $02		;57f5
	.DB $1f		;57f6
	.DB $81		;57f7
	.DB $3f		;57f8
	.DB $07		;57f9
	.DB $ff		;57fa
	.DB $88		;57fb
	.DB $fe		;57fc
	.DB $fc		;57fd
	.DB $f8		;57fe
	.DB $f0		;57ff
	.DB $e0		;5800
	.DB $c0		;5801
	.DB $80		;5802
	.DB $7e		;5803
	.DB $09		;5804
	.DB $00		;5805
	.DB $85		;5806
	.DB $01		;5807
	.DB $03		;5808
	.DB $07		;5809
	.DB $0f		;580a
	.DB $3f		;580b
	.DB $02		;580c
	.DB $7f		;580d
	.DB $08		;580e
	.DB $ff		;580f
	.DB $87		;5810
	.DB $fe		;5811
	.DB $fc		;5812
	.DB $f8		;5813
	.DB $f0		;5814
	.DB $e0		;5815
	.DB $c0		;5816
	.DB $80		;5817
	.DB $09		;5818
	.DB $00		;5819
	.DB $86		;581a
	.DB $01		;581b
	.DB $03		;581c
	.DB $07		;581d
	.DB $1f		;581e
	.DB $3f		;581f
	.DB $7f		;5820
	.DB $0a		;5821
	.DB $ff		;5822
	.DB $87		;5823
	.DB $fe		;5824
	.DB $fc		;5825
	.DB $f8		;5826
	.DB $f0		;5827
	.DB $e0		;5828
	.DB $c0		;5829
	.DB $80		;582a
	.DB $08		;582b
	.DB $00		;582c
	.DB $02		;582d
	.DB $04		;582e
	.DB $81		;582f
	.DB $24		;5830
	.DB $03		;5831
	.DB $04		;5832
	.DB $8d		;5833
	.DB $01		;5834
	.DB $7f		;5835
	.DB $02		;5836
	.DB $39		;5837
	.DB $e1		;5838
	.DB $03		;5839
	.DB $06		;583a
	.DB $1c		;583b
	.DB $01		;583c
	.DB $ff		;583d
	.DB $3c		;583e
	.DB $7e		;583f
	.DB $ef		;5840
	.DB $02		;5841
	.DB $e7		;5842
	.DB $84		;5843
	.DB $f7		;5844
	.DB $7e		;5845
	.DB $3c		;5846
	.DB $1c		;5847
	.DB $02		;5848
	.DB $3c		;5849
	.DB $03		;584a
	.DB $1c		;584b
	.DB $02		;584c
	.DB $7f		;584d
	.DB $86		;584e
	.DB $7e		;584f
	.DB $ff		;5850
	.DB $ef		;5851
	.DB $3f		;5852
	.DB $7e		;5853
	.DB $fc		;5854
	.DB $02		;5855
	.DB $ff		;5856
	.DB $02		;5857
	.DB $7f		;5858
	.DB $8a		;5859
	.DB $1e		;585a
	.DB $3e		;585b
	.DB $3f		;585c
	.DB $e7		;585d
	.DB $ff		;585e
	.DB $7e		;585f
	.DB $1e		;5860
	.DB $3e		;5861
	.DB $7e		;5862
	.DB $fe		;5863
	.DB $02		;5864
	.DB $ff		;5865
	.DB $02		;5866
	.DB $0e		;5867
	.DB $03		;5868
	.DB $fe		;5869
	.DB $8d		;586a
	.DB $ff		;586b
	.DB $07		;586c
	.DB $e7		;586d
	.DB $ff		;586e
	.DB $7e		;586f
	.DB $3e		;5870
	.DB $7e		;5871
	.DB $f0		;5872
	.DB $fe		;5873
	.DB $ff		;5874
	.DB $e7		;5875
	.DB $ff		;5876
	.DB $7e		;5877
	.DB $02		;5878
	.DB $ff		;5879
	.DB $83		;587a
	.DB $ef		;587b
	.DB $1e		;587c
	.DB $3c		;587d
	.DB $03		;587e
	.DB $38		;587f
	.DB $83		;5880
	.DB $7e		;5881
	.DB $ff		;5882
	.DB $e7		;5883
	.DB $02		;5884
	.DB $ff		;5885
	.DB $82		;5886
	.DB $e7		;5887
	.DB $ff		;5888
	.DB $02		;5889
	.DB $7e		;588a
	.DB $88		;588b
	.DB $ff		;588c
	.DB $e7		;588d
	.DB $ff		;588e
	.DB $7f		;588f
	.DB $0f		;5890
	.DB $7e		;5891
	.DB $7c		;5892
	.DB $04		;5893
	.DB $03		;5894
	.DB $02		;5895
	.DB $84		;5896
	.DB $26		;5897
	.DB $1c		;5898
	.DB $04		;5899
	.DB $1c		;589a
	.DB $03		;589b
	.DB $00		;589c
	.DB $82		;589d
	.DB $02		;589e
	.DB $7e		;589f
	.DB $03		;58a0
	.DB $00		;58a1
	.DB $8a		;58a2
	.DB $01		;58a3
	.DB $73		;58a4
	.DB $06		;58a5
	.DB $02		;58a6
	.DB $39		;58a7
	.DB $21		;58a8
	.DB $83		;58a9
	.DB $7e		;58aa
	.DB $01		;58ab
	.DB $03		;58ac
	.DB $06		;58ad
	.DB $07		;58ae
	.DB $10		;58af
	.DB $ff		;58b0
	.DB $02		;58b1
	.DB $02		;58b2
	.DB $99		;58b3
	.DB $12		;58b4
	.DB $32		;58b5
	.DB $01		;58b6
	.DB $f3		;58b7
	.DB $02		;58b8
	.DB $0e		;58b9
	.DB $04		;58ba
	.DB $12		;58bb
	.DB $39		;58bc
	.DB $21		;58bd
	.DB $01		;58be
	.DB $39		;58bf
	.DB $21		;58c0
	.DB $e7		;58c1
	.DB $02		;58c2
	.DB $39		;58c3
	.DB $21		;58c4
	.DB $03		;58c5
	.DB $39		;58c6
	.DB $21		;58c7
	.DB $03		;58c8
	.DB $fe		;58c9
	.DB $02		;58ca
	.DB $19		;58cb
	.DB $37		;58cc
	.DB $02		;58cd
	.DB $20		;58ce
	.DB $86		;58cf
	.DB $91		;58d0
	.DB $43		;58d1
	.DB $3e		;58d2
	.DB $04		;58d3
	.DB $32		;58d4
	.DB $29		;58d5
	.DB $02		;58d6
	.DB $21		;58d7
	.DB $90		;58d8
	.DB $23		;58d9
	.DB $06		;58da
	.DB $fc		;58db
	.DB $01		;58dc
	.DB $3f		;58dd
	.DB $20		;58de
	.DB $04		;58df
	.DB $3c		;58e0
	.DB $20		;58e1
	.DB $01		;58e2
	.DB $ff		;58e3
	.DB $01		;58e4
	.DB $3f		;58e5
	.DB $20		;58e6
	.DB $04		;58e7
	.DB $3c		;58e8
	.DB $02		;58e9
	.DB $20		;58ea
	.DB $89		;58eb
	.DB $e0		;58ec
	.DB $01		;58ed
	.DB $1f		;58ee
	.DB $30		;58ef
	.DB $21		;58f0
	.DB $29		;58f1
	.DB $91		;58f2
	.DB $41		;58f3
	.DB $3f		;58f4
	.DB $03		;58f5
	.DB $21		;58f6
	.DB $82		;58f7
	.DB $01		;58f8
	.DB $39		;58f9
	.DB $02		;58fa
	.DB $21		;58fb
	.DB $83		;58fc
	.DB $e7		;58fd
	.DB $01		;58fe
	.DB $67		;58ff
	.DB $04		;5900
	.DB $04		;5901
	.DB $82		;5902
	.DB $01		;5903
	.DB $7f		;5904
	.DB $05		;5905
	.DB $01		;5906
	.DB $8b		;5907
	.DB $21		;5908
	.DB $83		;5909
	.DB $7e		;590a
	.DB $21		;590b
	.DB $23		;590c
	.DB $26		;590d
	.DB $0c		;590e
	.DB $04		;590f
	.DB $22		;5910
	.DB $31		;5911
	.DB $ef		;5912
	.DB $06		;5913
	.DB $20		;5914
	.DB $84		;5915
	.DB $01		;5916
	.DB $ff		;5917
	.DB $21		;5918
	.DB $11		;5919
	.DB $02		;591a
	.DB $01		;591b
	.DB $8e		;591c
	.DB $29		;591d
	.DB $39		;591e
	.DB $21		;591f
	.DB $e7		;5920
	.DB $21		;5921
	.DB $11		;5922
	.DB $09		;5923
	.DB $01		;5924
	.DB $21		;5925
	.DB $31		;5926
	.DB $29		;5927
	.DB $e7		;5928
	.DB $02		;5929
	.DB $39		;592a
	.DB $04		;592b
	.DB $21		;592c
	.DB $84		;592d
	.DB $83		;592e
	.DB $7e		;592f
	.DB $02		;5930
	.DB $39		;5931
	.DB $02		;5932
	.DB $21		;5933
	.DB $84		;5934
	.DB $03		;5935
	.DB $3e		;5936
	.DB $20		;5937
	.DB $e0		;5938
	.DB $05		;5939
	.DB $00		;593a
	.DB $03		;593b
	.DB $1c		;593c
	.DB $82		;593d
	.DB $02		;593e
	.DB $39		;593f
	.DB $02		;5940
	.DB $21		;5941
	.DB $8e		;5942
	.DB $07		;5943
	.DB $22		;5944
	.DB $31		;5945
	.DB $ef		;5946
	.DB $04		;5947
	.DB $32		;5948
	.DB $2e		;5949
	.DB $82		;594a
	.DB $79		;594b
	.DB $21		;594c
	.DB $83		;594d
	.DB $7e		;594e
	.DB $01		;594f
	.DB $67		;5950
	.DB $05		;5951
	.DB $04		;5952
	.DB $81		;5953
	.DB $1c		;5954
	.DB $06		;5955
	.DB $21		;5956
	.DB $82		;5957
	.DB $83		;5958
	.DB $7e		;5959
	.DB $03		;595a
	.DB $21		;595b
	.DB $85		;595c
	.DB $11		;595d
	.DB $83		;595e
	.DB $46		;595f
	.DB $2c		;5960
	.DB $18		;5961
	.DB $02		;5962
	.DB $21		;5963
	.DB $81		;5964
	.DB $29		;5965
	.DB $02		;5966
	.DB $01		;5967
	.DB $8b		;5968
	.DB $93		;5969
	.DB $3a		;596a
	.DB $66		;596b
	.DB $21		;596c
	.DB $11		;596d
	.DB $83		;596e
	.DB $46		;596f
	.DB $02		;5970
	.DB $11		;5971
	.DB $39		;5972
	.DB $e7		;5973
	.DB $03		;5974
	.DB $11		;5975
	.DB $82		;5976
	.DB $43		;5977
	.DB $26		;5978
	.DB $02		;5979
	.DB $04		;597a
	.DB $81		;597b
	.DB $1c		;597c
	.DB $02		;597d
	.DB $00		;597e
	.DB $86		;597f
	.DB $01		;5980
	.DB $1f		;5981
	.DB $82		;5982
	.DB $71		;5983
	.DB $03		;5984
	.DB $fe		;5985
	.DB $02		;5986
	.DB $08		;5987
	.DB $82		;5988
	.DB $02		;5989
	.DB $ce		;598a
	.DB $02		;598b
	.DB $08		;598c
	.DB $82		;598d
	.DB $24		;598e
	.DB $1c		;598f
	.DB $02		;5990
	.DB $00		;5991
	.DB $82		;5992
	.DB $02		;5993
	.DB $39		;5994
	.DB $03		;5995
	.DB $21		;5996
	.DB $81		;5997
	.DB $e7		;5998
	.DB $03		;5999
	.DB $01		;599a
	.DB $81		;599b
	.DB $39		;599c
	.DB $02		;599d
	.DB $21		;599e
	.DB $82		;599f
	.DB $81		;59a0
	.DB $7f		;59a1
	.DB $02		;59a2
	.DB $00		;59a3
	.DB $83		;59a4
	.DB $02		;59a5
	.DB $39		;59a6
	.DB $27		;59a7
	.DB $02		;59a8
	.DB $20		;59a9
	.DB $81		;59aa
	.DB $e0		;59ab
	.DB $02		;59ac
	.DB $20		;59ad
	.DB $82		;59ae
	.DB $02		;59af
	.DB $39		;59b0
	.DB $03		;59b1
	.DB $21		;59b2
	.DB $81		;59b3
	.DB $e7		;59b4
	.DB $48		;59b5
	.DB $ff		;59b6
	.DB $88		;59b7
	.DB $00		;59b8
	.DB $20		;59b9
	.DB $24		;59ba
	.DB $2c		;59bb
	.DB $19		;59bc
	.DB $29		;59bd
	.DB $35		;59be
	.DB $6f		;59bf
	.DB $03		;59c0
	.DB $00		;59c1
	.DB $8a		;59c2
	.DB $20		;59c3
	.DB $51		;59c4
	.DB $53		;59c5
	.DB $56		;59c6
	.DB $fc		;59c7
	.DB $00		;59c8
	.DB $10		;59c9
	.DB $50		;59ca
	.DB $c4		;59cb
	.DB $9a		;59cc
	.DB $02		;59cd
	.DB $12		;59ce
	.DB $84		;59cf
	.DB $36		;59d0
	.DB $00		;59d1
	.DB $20		;59d2
	.DB $23		;59d3
	.DB $02		;59d4
	.DB $22		;59d5
	.DB $82		;59d6
	.DB $0c		;59d7
	.DB $7b		;59d8
	.DB $02		;59d9
	.DB $00		;59da
	.DB $86		;59db
	.DB $91		;59dc
	.DB $11		;59dd
	.DB $55		;59de
	.DB $49		;59df
	.DB $dd		;59e0
	.DB $b3		;59e1
	.DB $03		;59e2
	.DB $00		;59e3
	.DB $82		;59e4
	.DB $04		;59e5
	.DB $dd		;59e6
	.DB $02		;59e7
	.DB $11		;59e8
	.DB $82		;59e9
	.DB $12		;59ea
	.DB $31		;59eb
	.DB $02		;59ec
	.DB $00		;59ed
	.DB $87		;59ee
	.DB $42		;59ef
	.DB $ad		;59f0
	.DB $29		;59f1
	.DB $23		;59f2
	.DB $6e		;59f3
	.DB $d8		;59f4
	.DB $7e		;59f5
	.DB $06		;59f6
	.DB $ff		;59f7
	.DB $83		;59f8
	.DB $fb		;59f9
	.DB $7e		;59fa
	.DB $ff		;59fb
	.DB $02		;59fc
	.DB $fb		;59fd
	.DB $04		;59fe
	.DB $ff		;59ff
	.DB $82		;5a00
	.DB $7e		;5a01
	.DB $ff		;5a02
	.DB $02		;5a03
	.DB $fb		;5a04
	.DB $03		;5a05
	.DB $ff		;5a06
	.DB $81		;5a07
	.DB $fb		;5a08
	.DB $08		;5a09
	.DB $ff		;5a0a
	.DB $82		;5a0b
	.DB $3f		;5a0c
	.DB $7f		;5a0d
	.DB $06		;5a0e
	.DB $ff		;5a0f
	.DB $83		;5a10
	.DB $f8		;5a11
	.DB $fc		;5a12
	.DB $fe		;5a13
	.DB $65		;5a14
	.DB $ff		;5a15
	.DB $82		;5a16
	.DB $fc		;5a17
	.DB $f8		;5a18
	.DB $04		;5a19
	.DB $f0		;5a1a
	.DB $84		;5a1b
	.DB $f8		;5a1c
	.DB $fc		;5a1d
	.DB $3f		;5a1e
	.DB $1f		;5a1f
	.DB $04		;5a20
	.DB $0f		;5a21
	.DB $82		;5a22
	.DB $1f		;5a23
	.DB $3f		;5a24
	.DB $06		;5a25
	.DB $ff		;5a26
	.DB $82		;5a27
	.DB $7f		;5a28
	.DB $3f		;5a29
	.DB $06		;5a2a
	.DB $ff		;5a2b
	.DB $82		;5a2c
	.DB $fe		;5a2d
	.DB $fc		;5a2e
	.DB $03		;5a2f
	.DB $0f		;5a30
	.DB $82		;5a31
	.DB $1f		;5a32
	.DB $7f		;5a33
	.DB $02		;5a34
	.DB $ff		;5a35
	.DB $81		;5a36
	.DB $3f		;5a37
	.DB $04		;5a38
	.DB $f0		;5a39
	.DB $02		;5a3a
	.DB $f8		;5a3b
	.DB $82		;5a3c
	.DB $f0		;5a3d
	.DB $e0		;5a3e
	.DB $03		;5a3f
	.DB $00		;5a40
	.DB $86		;5a41
	.DB $01		;5a42
	.DB $03		;5a43
	.DB $07		;5a44
	.DB $0f		;5a45
	.DB $7f		;5a46
	.DB $1f		;5a47
	.DB $02		;5a48
	.DB $7f		;5a49
	.DB $05		;5a4a
	.DB $ff		;5a4b
	.DB $82		;5a4c
	.DB $80		;5a4d
	.DB $f7		;5a4e
	.DB $06		;5a4f
	.DB $ff		;5a50
	.DB $82		;5a51
	.DB $0f		;5a52
	.DB $3f		;5a53
	.DB $06		;5a54
	.DB $ff		;5a55
	.DB $84		;5a56
	.DB $c0		;5a57
	.DB $f0		;5a58
	.DB $f8		;5a59
	.DB $fc		;5a5a
	.DB $03		;5a5b
	.DB $fe		;5a5c
	.DB $83		;5a5d
	.DB $fc		;5a5e
	.DB $7f		;5a5f
	.DB $1f		;5a60
	.DB $02		;5a61
	.DB $07		;5a62
	.DB $04		;5a63
	.DB $00		;5a64
	.DB $05		;5a65
	.DB $ff		;5a66
	.DB $83		;5a67
	.DB $3f		;5a68
	.DB $0f		;5a69
	.DB $00		;5a6a
	.DB $03		;5a6b
	.DB $ff		;5a6c
	.DB $81		;5a6d
	.DB $fd		;5a6e
	.DB $02		;5a6f
	.DB $e0		;5a70
	.DB $02		;5a71
	.DB $00		;5a72
	.DB $84		;5a73
	.DB $ff		;5a74
	.DB $fe		;5a75
	.DB $fc		;5a76
	.DB $f0		;5a77
l5a78h:
	.DB $0b		;5a78
	.DB $00		;5a79
	.DB $81		;5a7a
	.DB $0f		;5a7b
	.DB $03		;5a7c
	.DB $00		;5a7d
	.DB $83		;5a7e
	.DB $01		;5a7f
	.DB $3f		;5a80
	.DB $7f		;5a81
	.DB $02		;5a82
	.DB $ff		;5a83
	.DB $02		;5a84
	.DB $00		;5a85
	.DB $81		;5a86
	.DB $3f		;5a87
	.DB $05		;5a88
	.DB $ff		;5a89
	.DB $03		;5a8a
	.DB $00		;5a8b
	.DB $85		;5a8c
	.DB $80		;5a8d
	.DB $c0		;5a8e
	.DB $f0		;5a8f
	.DB $f8		;5a90
	.DB $ff		;5a91
	.DB $02		;5a92
	.DB $3f		;5a93
	.DB $03		;5a94
	.DB $7f		;5a95
	.DB $83		;5a96
	.DB $ff		;5a97
	.DB $03		;5a98
	.DB $00		;5a99
	.DB $07		;5a9a
	.DB $ff		;5a9b
	.DB $81		;5a9c
	.DB $0c		;5a9d
	.DB $07		;5a9e
	.DB $ff		;5a9f
	.DB $81		;5aa0
	.DB $1f		;5aa1
	.DB $07		;5aa2
	.DB $ff		;5aa3
	.DB $84		;5aa4
	.DB $e7		;5aa5
	.DB $e0		;5aa6
	.DB $ff		;5aa7
	.DB $fe		;5aa8
	.DB $02		;5aa9
	.DB $f8		;5aaa
	.DB $82		;5aab
	.DB $e0		;5aac
	.DB $c0		;5aad
	.DB $07		;5aae
	.DB $00		;5aaf
	.DB $82		;5ab0
	.DB $0f		;5ab1
	.DB $06		;5ab2
	.DB $03		;5ab3
	.DB $00		;5ab4
	.DB $8f		;5ab5
	.DB $01		;5ab6
	.DB $21		;5ab7
	.DB $87		;5ab8
	.DB $7f		;5ab9
	.DB $f8		;5aba
	.DB $00		;5abb
	.DB $09		;5abc
	.DB $77		;5abd
	.DB $e7		;5abe
	.DB $f0		;5abf
	.DB $8f		;5ac0
	.DB $3f		;5ac1
	.DB $7f		;5ac2
	.DB $f7		;5ac3
	.DB $ef		;5ac4
	.DB $02		;5ac5
	.DB $ff		;5ac6
	.DB $91		;5ac7
	.DB $fc		;5ac8
	.DB $f0		;5ac9
	.DB $e7		;5aca
	.DB $9f		;5acb
	.DB $f3		;5acc
	.DB $87		;5acd
	.DB $be		;5ace
	.DB $3c		;5acf
	.DB $79		;5ad0
	.DB $77		;5ad1
	.DB $03		;5ad2
	.DB $ff		;5ad3
	.DB $f2		;5ad4
	.DB $80		;5ad5
	.DB $3f		;5ad6
	.DB $ff		;5ad7
	.DB $fe		;5ad8
	.DB $03		;5ad9
	.DB $fd		;5ada
	.DB $85		;5adb
	.DB $3f		;5adc
	.DB $ff		;5add
	.DB $be		;5ade
	.DB $3f		;5adf
	.DB $7f		;5ae0
	.DB $03		;5ae1
	.DB $ff		;5ae2
	.DB $05		;5ae3
	.DB $00		;5ae4
	.DB $83		;5ae5
	.DB $01		;5ae6
	.DB $0c		;5ae7
	.DB $39		;5ae8
	.DB $04		;5ae9
	.DB $00		;5aea
	.DB $94		;5aeb
	.DB $10		;5aec
	.DB $03		;5aed
	.DB $3f		;5aee
	.DB $ff		;5aef
	.DB $1f		;5af0
	.DB $04		;5af1
	.DB $81		;5af2
	.DB $e3		;5af3
	.DB $ef		;5af4
	.DB $0f		;5af5
	.DB $1c		;5af6
	.DB $3c		;5af7
	.DB $00		;5af8
	.DB $40		;5af9
	.DB $30		;5afa
	.DB $94		;5afb
	.DB $c8		;5afc
	.DB $2f		;5afd
	.DB $8f		;5afe
	.DB $c3		;5aff
	.DB $04		;5b00
	.DB $00		;5b01
	.DB $84		;5b02
	.DB $38		;5b03
	.DB $1f		;5b04
	.DB $ef		;5b05
	.DB $a1		;5b06
	.DB $05		;5b07
	.DB $00		;5b08
	.DB $83		;5b09
	.DB $c0		;5b0a
	.DB $f1		;5b0b
	.DB $fe		;5b0c
	.DB $06		;5b0d
	.DB $00		;5b0e
	.DB $82		;5b0f
	.DB $ca		;5b10
	.DB $79		;5b11
	.DB $07		;5b12
	.DB $00		;5b13
	.DB $81		;5b14
	.DB $ef		;5b15
	.DB $03		;5b16
	.DB $00		;5b17
	.DB $83		;5b18
	.DB $02		;5b19
	.DB $0f		;5b1a
	.DB $01		;5b1b
	.DB $02		;5b1c
	.DB $02		;5b1d
	.DB $82		;5b1e
	.DB $00		;5b1f
	.DB $ff		;5b20
	.DB $03		;5b21
	.DB $80		;5b22
	.DB $81		;5b23
	.DB $8e		;5b24
	.DB $02		;5b25
	.DB $88		;5b26
	.DB $82		;5b27
	.DB $00		;5b28
	.DB $ff		;5b29
	.DB $06		;5b2a
	.DB $10		;5b2b
	.DB $0c		;5b2c
	.DB $00		;5b2d
	.DB $83		;5b2e
	.DB $01		;5b2f
	.DB $4f		;5b30
	.DB $fb		;5b31
	.DB $05		;5b32
	.DB $00		;5b33
	.DB $83		;5b34
	.DB $e0		;5b35
	.DB $fc		;5b36
	.DB $fe		;5b37
	.DB $04		;5b38
	.DB $00		;5b39
	.DB $84		;5b3a
	.DB $18		;5b3b
	.DB $1c		;5b3c
	.DB $3e		;5b3d
	.DB $7f		;5b3e
	.DB $02		;5b3f
	.DB $00		;5b40
	.DB $86		;5b41
	.DB $0d		;5b42
	.DB $13		;5b43
	.DB $06		;5b44
	.DB $26		;5b45
	.DB $7f		;5b46
	.DB $bf		;5b47
	.DB $02		;5b48
	.DB $00		;5b49
	.DB $86		;5b4a
	.DB $04		;5b4b
	.DB $06		;5b4c
	.DB $16		;5b4d
	.DB $2f		;5b4e
	.DB $0f		;5b4f
	.DB $ee		;5b50
	.DB $06		;5b51
	.DB $00		;5b52
	.DB $84		;5b53
	.DB $04		;5b54
	.DB $19		;5b55
	.DB $f7		;5b56
	.DB $07		;5b57
	.DB $02		;5b58
	.DB $0f		;5b59
	.DB $83		;5b5a
	.DB $0b		;5b5b
	.DB $1b		;5b5c
	.DB $7f		;5b5d
	.DB $02		;5b5e
	.DB $ff		;5b5f
	.DB $84		;5b60
	.DB $80		;5b61
	.DB $e0		;5b62
	.DB $f0		;5b63
	.DB $fe		;5b64
	.DB $04		;5b65
	.DB $ff		;5b66
	.DB $05		;5b67
	.DB $00		;5b68
	.DB $83		;5b69
	.DB $e0		;5b6a
	.DB $fc		;5b6b
	.DB $ff		;5b6c
	.DB $06		;5b6d
	.DB $12		;5b6e
	.DB $83		;5b6f
	.DB $11		;5b70
	.DB $29		;5b71
	.DB $70		;5b72
	.DB $07		;5b73
	.DB $74		;5b74
	.DB $04		;5b75
	.DB $00		;5b76
	.DB $03		;5b77
	.DB $01		;5b78
	.DB $82		;5b79
	.DB $02		;5b7a
	.DB $29		;5b7b
	.DB $03		;5b7c
	.DB $ab		;5b7d
	.DB $84		;5b7e
	.DB $56		;5b7f
	.DB $d6		;5b80
	.DB $6e		;5b81
	.DB $6a		;5b82
	.DB $03		;5b83
	.DB $7e		;5b84
	.DB $81		;5b85
	.DB $7f		;5b86
	.DB $02		;5b87
	.DB $bf		;5b88
	.DB $02		;5b89
	.DB $9f		;5b8a
	.DB $81		;5b8b
	.DB $7f		;5b8c
	.DB $02		;5b8d
	.DB $bf		;5b8e
	.DB $02		;5b8f
	.DB $ae		;5b90
	.DB $06		;5b91
	.DB $ff		;5b92
	.DB $02		;5b93
	.DB $af		;5b94
	.DB $03		;5b95
	.DB $ff		;5b96
	.DB $06		;5b97
	.DB $00		;5b98
	.DB $81		;5b99
	.DB $24		;5b9a
	.DB $08		;5b9b
	.DB $00		;5b9c
	.DB $91		;5b9d
	.DB $aa		;5b9e
	.DB $fe		;5b9f
	.DB $ce		;5ba0
	.DB $fe		;5ba1
	.DB $fa		;5ba2
	.DB $fe		;5ba3
	.DB $ea		;5ba4
	.DB $fe		;5ba5
	.DB $d6		;5ba6
	.DB $fe		;5ba7
	.DB $e2		;5ba8
	.DB $fe		;5ba9
	.DB $ea		;5baa
	.DB $fe		;5bab
	.DB $8e		;5bac
	.DB $fe		;5bad
	.DB $a6		;5bae
	.DB $07		;5baf
	.DB $18		;5bb0
	.DB $89		;5bb1
	.DB $3a		;5bb2
	.DB $7c		;5bb3
	.DB $74		;5bb4
	.DB $7c		;5bb5
	.DB $e2		;5bb6
	.DB $fe		;5bb7
	.DB $ee		;5bb8
	.DB $06		;5bb9
	.DB $82		;5bba
	.DB $03		;5bbb
	.DB $00		;5bbc
	.DB $8d		;5bbd
	.DB $aa		;5bbe
	.DB $fe		;5bbf
	.DB $e6		;5bc0
	.DB $fe		;5bc1
	.DB $ee		;5bc2
	.DB $fe		;5bc3
	.DB $fa		;5bc4
	.DB $fe		;5bc5
	.DB $ce		;5bc6
	.DB $fe		;5bc7
	.DB $de		;5bc8
	.DB $fe		;5bc9
	.DB $ce		;5bca
	.DB $03		;5bcb
	.DB $00		;5bcc
	.DB $85		;5bcd
	.DB $aa		;5bce
	.DB $fe		;5bcf
	.DB $aa		;5bd0
	.DB $fe		;5bd1
	.DB $b6		;5bd2
	.DB $05		;5bd3
	.DB $10		;5bd4
	.DB $86		;5bd5
	.DB $38		;5bd6
	.DB $28		;5bd7
	.DB $38		;5bd8
	.DB $18		;5bd9
	.DB $38		;5bda
	.DB $18		;5bdb
	.DB $03		;5bdc
	.DB $38		;5bdd
	.DB $82		;5bde
	.DB $28		;5bdf
	.DB $5c		;5be0
	.DB $00		;5be1
	.DB $20		;5be2
	.DB $00		;5be3
	.DB $08		;5be4
	.DB $08		;5be5
	.DB $18		;5be6
	.DB $00		;5be7
	.DB $08		;5be8
	.DB $08		;5be9
	.DB $10		;5bea
	.DB $00		;5beb
	.DB $08		;5bec
	.DB $08		;5bed
	.DB $10		;5bee
	.DB $00		;5bef
	.DB $08		;5bf0
	.DB $18		;5bf1
	.DB $10		;5bf2
	.DB $00		;5bf3
	.DB $08		;5bf4
	.DB $1c		;5bf5
	.DB $10		;5bf6
	.DB $00		;5bf7
	.DB $08		;5bf8
	.DB $1c		;5bf9
	.DB $18		;5bfa
	.DB $00		;5bfb
	.DB $08		;5bfc
	.DB $3c		;5bfd
	.DB $18		;5bfe
	.DB $00		;5bff
	.DB $08		;5c00
	.DB $3c		;5c01
	.DB $20		;5c02
	.DB $00		;5c03
	.DB $08		;5c04
	.DB $3e		;5c05
	.DB $18		;5c06
	.DB $00		;5c07
	.DB $08		;5c08
	.DB $7e		;5c09
	.DB $18		;5c0a
	.DB $00		;5c0b
	.DB $08		;5c0c
	.DB $7e		;5c0d
	.DB $18		;5c0e
	.DB $00		;5c0f
	.DB $08		;5c10
	.DB $7e		;5c11
	.DB $81		;5c12
	.DB $1c		;5c13
	.DB $02		;5c14
	.DB $3c		;5c15
	.DB $03		;5c16
	.DB $1c		;5c17
	.DB $02		;5c18
	.DB $7f		;5c19
	.DB $86		;5c1a
	.DB $7e		;5c1b
	.DB $ff		;5c1c
	.DB $ef		;5c1d
	.DB $3f		;5c1e
	.DB $7e		;5c1f
	.DB $fc		;5c20
	.DB $02		;5c21
	.DB $ff		;5c22
	.DB $83		;5c23
	.DB $3c		;5c24
	.DB $7e		;5c25
	.DB $ef		;5c26
	.DB $02		;5c27
	.DB $e7		;5c28
	.DB $84		;5c29
	.DB $f7		;5c2a
	.DB $7e		;5c2b
	.DB $3c		;5c2c
	.DB $1c		;5c2d
	.DB $02		;5c2e
	.DB $3c		;5c2f
	.DB $03		;5c30
	.DB $1c		;5c31
	.DB $02		;5c32
	.DB $7f		;5c33
	.DB $86		;5c34
	.DB $7e		;5c35
	.DB $ff		;5c36
	.DB $ef		;5c37
	.DB $3f		;5c38
	.DB $7e		;5c39
	.DB $fc		;5c3a
	.DB $02		;5c3b
	.DB $ff		;5c3c
	.DB $02		;5c3d
	.DB $7f		;5c3e
	.DB $8a		;5c3f
	.DB $1e		;5c40
	.DB $3e		;5c41
	.DB $3f		;5c42
	.DB $e7		;5c43
	.DB $ff		;5c44
	.DB $7e		;5c45
	.DB $1e		;5c46
	.DB $3e		;5c47
	.DB $7e		;5c48
	.DB $fe		;5c49
	.DB $02		;5c4a
	.DB $ff		;5c4b
	.DB $02		;5c4c
	.DB $0e		;5c4d
	.DB $03		;5c4e
	.DB $fe		;5c4f
	.DB $8d		;5c50
	.DB $ff		;5c51
	.DB $07		;5c52
	.DB $e7		;5c53
	.DB $ff		;5c54
	.DB $7e		;5c55
	.DB $3e		;5c56
	.DB $7e		;5c57
	.DB $f0		;5c58
	.DB $fe		;5c59
	.DB $ff		;5c5a
	.DB $e7		;5c5b
	.DB $ff		;5c5c
	.DB $7e		;5c5d
	.DB $02		;5c5e
	.DB $ff		;5c5f
	.DB $83		;5c60
	.DB $ef		;5c61
	.DB $1e		;5c62
	.DB $3c		;5c63
	.DB $03		;5c64
	.DB $38		;5c65
	.DB $83		;5c66
	.DB $7e		;5c67
	.DB $ff		;5c68
	.DB $e7		;5c69
	.DB $02		;5c6a
	.DB $ff		;5c6b
	.DB $82		;5c6c
	.DB $e7		;5c6d
	.DB $ff		;5c6e
	.DB $02		;5c6f
	.DB $7e		;5c70
	.DB $88		;5c71
	.DB $ff		;5c72
	.DB $e7		;5c73
	.DB $ff		;5c74
	.DB $7f		;5c75
	.DB $0f		;5c76
	.DB $7e		;5c77
	.DB $7c		;5c78
	.DB $1c		;5c79
	.DB $04		;5c7a
	.DB $3e		;5c7b
	.DB $03		;5c7c
	.DB $1c		;5c7d
	.DB $03		;5c7e
	.DB $00		;5c7f
	.DB $02		;5c80
	.DB $7e		;5c81
	.DB $03		;5c82
	.DB $00		;5c83
	.DB $02		;5c84
	.DB $7f		;5c85
	.DB $88		;5c86
	.DB $1e		;5c87
	.DB $3e		;5c88
	.DB $3f		;5c89
	.DB $e7		;5c8a
	.DB $ff		;5c8b
	.DB $7e		;5c8c
	.DB $01		;5c8d
	.DB $03		;5c8e
	.DB $06		;5c8f
	.DB $07		;5c90
	.DB $10		;5c91
	.DB $ff		;5c92
	.DB $84		;5c93
	.DB $1e		;5c94
	.DB $3e		;5c95
	.DB $7e		;5c96
	.DB $fe		;5c97
	.DB $02		;5c98
	.DB $ff		;5c99
	.DB $02		;5c9a
	.DB $0e		;5c9b
	.DB $84		;5c9c
	.DB $3c		;5c9d
	.DB $7e		;5c9e
	.DB $ff		;5c9f
	.DB $e7		;5ca0
	.DB $02		;5ca1
	.DB $ff		;5ca2
	.DB $02		;5ca3
	.DB $e7		;5ca4
	.DB $83		;5ca5
	.DB $fe		;5ca6
	.DB $ff		;5ca7
	.DB $e7		;5ca8
	.DB $02		;5ca9
	.DB $ff		;5caa
	.DB $86		;5cab
	.DB $e7		;5cac
	.DB $ff		;5cad
	.DB $fe		;5cae
	.DB $3e		;5caf
	.DB $7f		;5cb0
	.DB $f7		;5cb1
	.DB $02		;5cb2
	.DB $e0		;5cb3
	.DB $86		;5cb4
	.DB $f7		;5cb5
	.DB $7f		;5cb6
	.DB $3e		;5cb7
	.DB $fc		;5cb8
	.DB $fe		;5cb9
	.DB $ef		;5cba
	.DB $02		;5cbb
	.DB $e7		;5cbc
	.DB $83		;5cbd
	.DB $ef		;5cbe
	.DB $fe		;5cbf
	.DB $fc		;5cc0
	.DB $02		;5cc1
	.DB $ff		;5cc2
	.DB $81		;5cc3
	.DB $e0		;5cc4
	.DB $02		;5cc5
	.DB $fc		;5cc6
	.DB $81		;5cc7
	.DB $e0		;5cc8
	.DB $04		;5cc9
	.DB $ff		;5cca
	.DB $81		;5ccb
	.DB $e0		;5ccc
	.DB $02		;5ccd
	.DB $fc		;5cce
	.DB $03		;5ccf
	.DB $e0		;5cd0
	.DB $83		;5cd1
	.DB $3f		;5cd2
	.DB $7f		;5cd3
	.DB $f0		;5cd4
	.DB $02		;5cd5
	.DB $ef		;5cd6
	.DB $83		;5cd7
	.DB $f7		;5cd8
	.DB $7f		;5cd9
	.DB $3f		;5cda
	.DB $03		;5cdb
	.DB $e7		;5cdc
	.DB $02		;5cdd
	.DB $ff		;5cde
	.DB $03		;5cdf
	.DB $e7		;5ce0
	.DB $02		;5ce1
	.DB $7f		;5ce2
	.DB $04		;5ce3
	.DB $1c		;5ce4
	.DB $02		;5ce5
	.DB $7f		;5ce6
	.DB $05		;5ce7
	.DB $07		;5ce8
	.DB $86		;5ce9
	.DB $e7		;5cea
	.DB $ff		;5ceb
	.DB $7e		;5cec
	.DB $e7		;5ced
	.DB $ef		;5cee
	.DB $fe		;5cef
	.DB $02		;5cf0
	.DB $fc		;5cf1
	.DB $83		;5cf2
	.DB $fe		;5cf3
	.DB $ff		;5cf4
	.DB $ef		;5cf5
	.DB $06		;5cf6
	.DB $e0		;5cf7
	.DB $02		;5cf8
	.DB $ff		;5cf9
	.DB $81		;5cfa
	.DB $e7		;5cfb
	.DB $05		;5cfc
	.DB $ff		;5cfd
	.DB $03		;5cfe
	.DB $e7		;5cff
l5d00h:
	.DB $81		;5d00
	.DB $f7		;5d01
	.DB $04		;5d02
	.DB $ff		;5d03
	.DB $84		;5d04
	.DB $ef		;5d05
	.DB $e7		;5d06
	.DB $7e		;5d07
	.DB $ff		;5d08
	.DB $04		;5d09
	.DB $e7		;5d0a
	.DB $84		;5d0b
	.DB $ff		;5d0c
	.DB $7e		;5d0d
	.DB $fe		;5d0e
	.DB $ff		;5d0f
	.DB $02		;5d10
	.DB $e7		;5d11
	.DB $82		;5d12
	.DB $ff		;5d13
	.DB $fe		;5d14
	.DB $02		;5d15
	.DB $e0		;5d16
	.DB $05		;5d17
	.DB $00		;5d18
	.DB $03		;5d19
	.DB $1c		;5d1a
	.DB $90		;5d1b
	.DB $fe		;5d1c
	.DB $ff		;5d1d
	.DB $e7		;5d1e
	.DB $ef		;5d1f
	.DB $ff		;5d20
	.DB $fe		;5d21
	.DB $ff		;5d22
	.DB $ef		;5d23
	.DB $7c		;5d24
	.DB $fe		;5d25
	.DB $ee		;5d26
	.DB $fe		;5d27
	.DB $7f		;5d28
	.DB $e7		;5d29
	.DB $ff		;5d2a
	.DB $7e		;5d2b
	.DB $02		;5d2c
	.DB $7f		;5d2d
	.DB $06		;5d2e
	.DB $1c		;5d2f
	.DB $06		;5d30
	.DB $e7		;5d31
	.DB $82		;5d32
	.DB $ff		;5d33
	.DB $7e		;5d34
	.DB $03		;5d35
	.DB $e7		;5d36
	.DB $02		;5d37
	.DB $ff		;5d38
	.DB $83		;5d39
	.DB $7e		;5d3a
	.DB $3c		;5d3b
	.DB $18		;5d3c
	.DB $02		;5d3d
	.DB $e7		;5d3e
	.DB $04		;5d3f
l5d40h:
	.DB $ff		;5d40
	.DB $83		;5d41
	.DB $7e		;5d42
	.DB $66		;5d43
	.DB $e7		;5d44
	.DB $02		;5d45
	.DB $ff		;5d46
	.DB $02		;5d47
	.DB $7e		;5d48
	.DB $02		;5d49
	.DB $ff		;5d4a
	.DB $81		;5d4b
	.DB $e7		;5d4c
	.DB $03		;5d4d
	.DB $77		;5d4e
	.DB $82		;5d4f
	.DB $7f		;5d50
	.DB $3e		;5d51
	.DB $03		;5d52
	.DB $1c		;5d53
	.DB $02		;5d54
	.DB $00		;5d55
	.DB $86		;5d56
	.DB $7f		;5d57
	.DB $ff		;5d58
	.DB $fe		;5d59
	.DB $7f		;5d5a
	.DB $ff		;5d5b
	.DB $fe		;5d5c
	.DB $02		;5d5d
	.DB $38		;5d5e
	.DB $02		;5d5f
	.DB $fe		;5d60
	.DB $02		;5d61
	.DB $38		;5d62
	.DB $82		;5d63
	.DB $3c		;5d64
	.DB $1c		;5d65
	.DB $02		;5d66
	.DB $00		;5d67
	.DB $82		;5d68
	.DB $fe		;5d69
	.DB $ff		;5d6a
	.DB $04		;5d6b
	.DB $e7		;5d6c
	.DB $02		;5d6d
	.DB $07		;5d6e
	.DB $82		;5d6f
	.DB $7f		;5d70
	.DB $ff		;5d71
	.DB $02		;5d72
	.DB $e7		;5d73
	.DB $82		;5d74
	.DB $ff		;5d75
	.DB $7f		;5d76
	.DB $02		;5d77
	.DB $00		;5d78
	.DB $83		;5d79
	.DB $fe		;5d7a
	.DB $ff		;5d7b
	.DB $e7		;5d7c
	.DB $05		;5d7d
	.DB $e0		;5d7e
	.DB $82		;5d7f
	.DB $fe		;5d80
	.DB $ff		;5d81
	.DB $04		;5d82
	.DB $e7		;5d83
	.DB $48		;5d84
	.DB $ff		;5d85
	.DB $84		;5d86
	.DB $00		;5d87
	.DB $60		;5d88
	.DB $6c		;5d89
	.DB $7f		;5d8a
	.DB $02		;5d8b
	.DB $7b		;5d8c
	.DB $82		;5d8d
	.DB $7f		;5d8e
	.DB $6f		;5d8f
	.DB $03		;5d90
	.DB $00		;5d91
	.DB $8a		;5d92
	.DB $e1		;5d93
	.DB $f3		;5d94
	.DB $f7		;5d95
	.DB $fe		;5d96
	.DB $fc		;5d97
	.DB $00		;5d98
	.DB $30		;5d99
	.DB $f0		;5d9a
	.DB $fc		;5d9b
	.DB $be		;5d9c
	.DB $03		;5d9d
	.DB $36		;5d9e
	.DB $83		;5d9f
	.DB $00		;5da0
	.DB $63		;5da1
	.DB $67		;5da2
	.DB $02		;5da3
	.DB $66		;5da4
	.DB $82		;5da5
	.DB $7f		;5da6
	.DB $7b		;5da7
	.DB $02		;5da8
	.DB $00		;5da9
	.DB $02		;5daa
	.DB $b3		;5dab
	.DB $03		;5dac
	.DB $ff		;5dad
	.DB $81		;5dae
	.DB $b3		;5daf
	.DB $03		;5db0
	.DB $00		;5db1
	.DB $82		;5db2
	.DB $fd		;5db3
	.DB $ff		;5db4
	.DB $03		;5db5
	.DB $33		;5db6
	.DB $81		;5db7
	.DB $31		;5db8
	.DB $02		;5db9
	.DB $00		;5dba
	.DB $87		;5dbb
	.DB $de		;5dbc
	.DB $ff		;5dbd
	.DB $7b		;5dbe
	.DB $7f		;5dbf
	.DB $fe		;5dc0
	.DB $d8		;5dc1
	.DB $7e		;5dc2
	.DB $07		;5dc3
	.DB $ff		;5dc4
	.DB $81		;5dc5
	.DB $7e		;5dc6
	.DB $07		;5dc7
	.DB $ff		;5dc8
	.DB $81		;5dc9
	.DB $7e		;5dca
	.DB $0f		;5dcb
	.DB $ff		;5dcc
	.DB $03		;5dcd
	.DB $00		;5dce
	.DB $04		;5dcf
	.DB $e0		;5dd0
	.DB $81		;5dd1
	.DB $e3		;5dd2
	.DB $07		;5dd3
	.DB $00		;5dd4
	.DB $84		;5dd5
	.DB $c0		;5dd6
	.DB $e7		;5dd7
	.DB $ee		;5dd8
	.DB $ec		;5dd9
	.DB $03		;5dda
	.DB $ef		;5ddb
	.DB $8b		;5ddc
	.DB $e7		;5ddd
	.DB $e3		;5dde
	.DB $e0		;5ddf
	.DB $30		;5de0
	.DB $10		;5de1
	.DB $90		;5de2
	.DB $d0		;5de3
	.DB $f0		;5de4
	.DB $e0		;5de5
	.DB $c0		;5de6
	.DB $e7		;5de7
	.DB $05		;5de8
	.DB $ef		;5de9
	.DB $83		;5dea
	.DB $e7		;5deb
	.DB $e3		;5dec
	.DB $e0		;5ded
	.DB $05		;5dee
	.DB $f0		;5def
	.DB $82		;5df0
	.DB $e0		;5df1
	.DB $c0		;5df2
	.DB $03		;5df3
	.DB $e0		;5df4
	.DB $85		;5df5
	.DB $e3		;5df6
	.DB $e7		;5df7
	.DB $ee		;5df8
	.DB $ec		;5df9
	.DB $ef		;5dfa
	.DB $03		;5dfb
	.DB $00		;5dfc
	.DB $85		;5dfd
	.DB $c0		;5dfe
	.DB $e0		;5dff
	.DB $30		;5e00
	.DB $10		;5e01
	.DB $90		;5e02
	.DB $02		;5e03
	.DB $ef		;5e04
	.DB $82		;5e05
	.DB $e7		;5e06
sub_5e07h:
	.DB $e3		;5e07
	.DB $03		;5e08
	.DB $e0		;5e09
	.DB $85		;5e0a
	.DB $e3		;5e0b
	.DB $d0		;5e0c
	.DB $f0		;5e0d
	.DB $e0		;5e0e
	.DB $c0		;5e0f
	.DB $03		;5e10
	.DB $00		;5e11
	.DB $81		;5e12
	.DB $c0		;5e13
	.DB $03		;5e14
	.DB $e0		;5e15
	.DB $82		;5e16
	.DB $e3		;5e17
	.DB $e7		;5e18
	.DB $03		;5e19
	.DB $ef		;5e1a
	.DB $03		;5e1b
	.DB $00		;5e1c
	.DB $82		;5e1d
	.DB $c0		;5e1e
	.DB $e0		;5e1f
	.DB $03		;5e20
	.DB $f0		;5e21
	.DB $02		;5e22
	.DB $ef		;5e23
	.DB $82		;5e24
	.DB $e7		;5e25
	.DB $e3		;5e26
	.DB $03		;5e27
	.DB $e0		;5e28
	.DB $81		;5e29
	.DB $e3		;5e2a
	.DB $02		;5e2b
	.DB $f0		;5e2c
	.DB $82		;5e2d
	.DB $e0		;5e2e
	.DB $c0		;5e2f
	.DB $03		;5e30
	.DB $00		;5e31
	.DB $82		;5e32
	.DB $c0		;5e33
	.DB $e7		;5e34
	.DB $05		;5e35
	.DB $ef		;5e36
	.DB $83		;5e37
	.DB $e7		;5e38
	.DB $e3		;5e39
	.DB $e0		;5e3a
	.DB $05		;5e3b
	.DB $f0		;5e3c
	.DB $82		;5e3d
	.DB $e0		;5e3e
	.DB $c0		;5e3f
	.DB $05		;5e40
	.DB $e0		;5e41
	.DB $83		;5e42
	.DB $ff		;5e43
	.DB $7f		;5e44
	.DB $3f		;5e45
	.DB $05		;5e46
	.DB $00		;5e47
	.DB $03		;5e48
	.DB $f8		;5e49
	.DB $03		;5e4a
	.DB $0c		;5e4b
	.DB $82		;5e4c
	.DB $1c		;5e4d
	.DB $7c		;5e4e
	.DB $02		;5e4f
	.DB $fc		;5e50
	.DB $81		;5e51
	.DB $3f		;5e52
	.DB $04		;5e53
	.DB $00		;5e54
	.DB $02		;5e55
	.DB $08		;5e56
	.DB $82		;5e57
	.DB $10		;5e58
	.DB $e0		;5e59
	.DB $7f		;5e5a
	.DB $00		;5e5b
	.DB $7f		;5e5c
	.DB $00		;5e5d
	.DB $02		;5e5e
	.DB $00		;5e5f
	.DB $02		;5e60
	.DB $18		;5e61
	.DB $04		;5e62
	.DB $10		;5e63
	.DB $02		;5e64
	.DB $ff		;5e65
	.DB $03		;5e66
	.DB $00		;5e67
	.DB $81		;5e68
	.DB $0e		;5e69
	.DB $02		;5e6a
	.DB $1f		;5e6b
	.DB $02		;5e6c
	.DB $0e		;5e6d
	.DB $02		;5e6e
	.DB $ff		;5e6f
	.DB $81		;5e70
	.DB $c0		;5e71
	.DB $07		;5e72
	.DB $ff		;5e73
	.DB $81		;5e74
	.DB $18		;5e75
	.DB $04		;5e76
	.DB $ff		;5e77
	.DB $81		;5e78
	.DB $37		;5e79
	.DB $07		;5e7a
	.DB $00		;5e7b
	.DB $81		;5e7c
	.DB $ff		;5e7d
	.DB $06		;5e7e
	.DB $00		;5e7f
	.DB $82		;5e80
	.DB $be		;5e81
	.DB $ff		;5e82
	.DB $06		;5e83
	.DB $00		;5e84
	.DB $82		;5e85
	.DB $ef		;5e86
	.DB $ff		;5e87
	.DB $06		;5e88
	.DB $00		;5e89
	.DB $82		;5e8a
	.DB $db		;5e8b
	.DB $ff		;5e8c
	.DB $06		;5e8d
	.DB $00		;5e8e
	.DB $82		;5e8f
	.DB $d7		;5e90
	.DB $ff		;5e91
	.DB $06		;5e92
	.DB $00		;5e93
	.DB $02		;5e94
	.DB $ff		;5e95
	.DB $10		;5e96
	.DB $00		;5e97
	.DB $83		;5e98
	.DB $80		;5e99
	.DB $c0		;5e9a
	.DB $20		;5e9b
	.DB $02		;5e9c
	.DB $10		;5e9d
	.DB $03		;5e9e
	.DB $90		;5e9f
	.DB $10		;5ea0
	.DB $00		;5ea1
	.DB $08		;5ea2
	.DB $10		;5ea3
	.DB $10		;5ea4
	.DB $00		;5ea5
	.DB $03		;5ea6
	.DB $08		;5ea7
	.DB $81		;5ea8
	.DB $09		;5ea9
	.DB $02		;5eaa
	.DB $05		;5eab
	.DB $02		;5eac
	.DB $04		;5ead
	.DB $07		;5eae
	.DB $00		;5eaf
	.DB $83		;5eb0
	.DB $04		;5eb1
	.DB $02		;5eb2
	.DB $06		;5eb3
	.DB $02		;5eb4
	.DB $03		;5eb5
	.DB $81		;5eb6
	.DB $01		;5eb7
	.DB $09		;5eb8
	.DB $00		;5eb9
	.DB $81		;5eba
	.DB $a4		;5ebb
	.DB $08		;5ebc
	.DB $00		;5ebd
	.DB $85		;5ebe
	.DB $aa		;5ebf
	.DB $fe		;5ec0
	.DB $ee		;5ec1
	.DB $fe		;5ec2
	.DB $da		;5ec3
	.DB $03		;5ec4
	.DB $fe		;5ec5
	.DB $83		;5ec6
	.DB $be		;5ec7
	.DB $fe		;5ec8
	.DB $f6		;5ec9
	.DB $03		;5eca
	.DB $fe		;5ecb
	.DB $83		;5ecc
	.DB $de		;5ecd
	.DB $fe		;5ece
	.DB $ee		;5ecf
	.DB $07		;5ed0
	.DB $18		;5ed1
	.DB $88		;5ed2
	.DB $ba		;5ed3
	.DB $20		;5ed4
	.DB $08		;5ed5
	.DB $50		;5ed6
	.DB $14		;5ed7
	.DB $44		;5ed8
	.DB $00		;5ed9
	.DB $80		;5eda
	.DB $04		;5edb
	.DB $00		;5edc
	.DB $89		;5edd
	.DB $aa		;5ede
	.DB $fe		;5edf
	.DB $ea		;5ee0
	.DB $fe		;5ee1
	.DB $de		;5ee2
	.DB $fe		;5ee3
	.DB $f6		;5ee4
	.DB $fe		;5ee5
	.DB $de		;5ee6
	.DB $03		;5ee7
	.DB $fe		;5ee8
	.DB $81		;5ee9
	.DB $ee		;5eea
	.DB $03		;5eeb
	.DB $00		;5eec
	.DB $81		;5eed
	.DB $aa		;5eee
	.DB $04		;5eef
	.DB $fe		;5ef0
	.DB $90		;5ef1
	.DB $10		;5ef2
	.DB $00		;5ef3
	.DB $10		;5ef4
	.DB $00		;5ef5
	.DB $28		;5ef6
	.DB $08		;5ef7
	.DB $10		;5ef8
	.DB $00		;5ef9
	.DB $20		;5efa
	.DB $10		;5efb
	.DB $08		;5efc
	.DB $10		;5efd
	.DB $28		;5efe
	.DB $20		;5eff
	.DB $10		;5f00
	.DB $28		;5f01
	.DB $00		;5f02
l5f03h:
	.DB $12		;5f03
	.DB $00		;5f04
	.DB $90		;5f05
	.DB $3c		;5f06
	.DB $66		;5f07
	.DB $42		;5f08
	.DB $00		;5f09
	.DB $81		;5f0a
	.DB $c3		;5f0b
	.DB $66		;5f0c
	.DB $3c		;5f0d
	.DB $18		;5f0e
	.DB $00		;5f0f
	.DB $81		;5f10
	.DB $00		;5f11
	.DB $3c		;5f12
	.DB $ff		;5f13
	.DB $00		;5f14
	.DB $42		;5f15
	.DB $0e		;5f16
	.DB $00		;5f17
	.DB $85		;5f18
	.DB $3c		;5f19
	.DB $7e		;5f1a
	.DB $ff		;5f1b
	.DB $e7		;5f1c
	.DB $c3		;5f1d
	.DB $04		;5f1e
	.DB $00		;5f1f
	.DB $83		;5f20
	.DB $3c		;5f21
	.DB $c3		;5f22
	.DB $81		;5f23
	.DB $04		;5f24
	.DB $00		;5f25
	.DB $02		;5f26
	.DB $18		;5f27
	.DB $82		;5f28
	.DB $00		;5f29
	.DB $3c		;5f2a
	.DB $0d		;5f2b
	.DB $00		;5f2c
	.DB $02		;5f2d
	.DB $18		;5f2e
	.DB $85		;5f2f
	.DB $00		;5f30
	.DB $24		;5f31
	.DB $66		;5f32
	.DB $00		;5f33
	.DB $3c		;5f34
	.DB $02		;5f35
	.DB $24		;5f36
	.DB $02		;5f37
	.DB $18		;5f38
	.DB $81		;5f39
	.DB $24		;5f3a
	.DB $0c		;5f3b
	.DB $00		;5f3c
	.DB $87		;5f3d
	.DB $10		;5f3e
	.DB $00		;5f3f
	.DB $28		;5f40
	.DB $10		;5f41
	.DB $38		;5f42
	.DB $28		;5f43
	.DB $10		;5f44
	.DB $0d		;5f45
	.DB $00		;5f46
	.DB $03		;5f47
	.DB $10		;5f48
	.DB $62		;5f49
	.DB $00		;5f4a
	.DB $88		;5f4b
	.DB $7e		;5f4c
	.DB $e7		;5f4d
	.DB $e0		;5f4e
	.DB $ef		;5f4f
	.DB $e7		;5f50
	.DB $7f		;5f51
	.DB $00		;5f52
	.DB $7e		;5f53
	.DB $04		;5f54
	.DB $e7		;5f55
	.DB $81		;5f56
	.DB $7e		;5f57
	.DB $0b		;5f58
	.DB $00		;5f59
	.DB $8c		;5f5a
	.DB $08		;5f5b
	.DB $00		;5f5c
	.DB $08		;5f5d
	.DB $00		;5f5e
	.DB $08		;5f5f
	.DB $00		;5f60
	.DB $06		;5f61
	.DB $0e		;5f62
	.DB $0c		;5f63
	.DB $18		;5f64
	.DB $10		;5f65
	.DB $00		;5f66
	.DB $02		;5f67
	.DB $60		;5f68
	.DB $09		;5f69
	.DB $00		;5f6a
	.DB $89		;5f6b
	.DB $3e		;5f6c
	.DB $60		;5f6d
	.DB $66		;5f6e
	.DB $3e		;5f6f
	.DB $00		;5f70
	.DB $3c		;5f71
	.DB $66		;5f72
	.DB $3c		;5f73
	.DB $00		;5f74
	.DB $02		;5f75
	.DB $04		;5f76
	.DB $02		;5f77
	.DB $08		;5f78
	.DB $82		;5f79
	.DB $00		;5f7a
	.DB $10		;5f7b
	.DB $02		;5f7c
	.DB $00		;5f7d
	.DB $84		;5f7e
	.DB $18		;5f7f
	.DB $10		;5f80
	.DB $18		;5f81
	.DB $00		;5f82
	.DB $02		;5f83
	.DB $18		;5f84
	.DB $81		;5f85
	.DB $00		;5f86
	.DB $02		;5f87
	.DB $08		;5f88
	.DB $82		;5f89
	.DB $00		;5f8a
	.DB $10		;5f8b
	.DB $05		;5f8c
	.DB $00		;5f8d
	.DB $89		;5f8e
	.DB $04		;5f8f
	.DB $0c		;5f90
	.DB $1c		;5f91
	.DB $3f		;5f92
	.DB $7f		;5f93
	.DB $3f		;5f94
	.DB $1c		;5f95
	.DB $0c		;5f96
	.DB $04		;5f97
	.DB $0a		;5f98
	.DB $00		;5f99
	.DB $81		;5f9a
	.DB $e0		;5f9b
	.DB $02		;5f9c
	.DB $f8		;5f9d
	.DB $81		;5f9e
	.DB $3c		;5f9f
	.DB $05		;5fa0
	.DB $1c		;5fa1
	.DB $06		;5fa2
	.DB $00		;5fa3
	.DB $86		;5fa4
	.DB $20		;5fa5
	.DB $60		;5fa6
	.DB $fc		;5fa7
	.DB $fe		;5fa8
	.DB $67		;5fa9
	.DB $23		;5faa
	.DB $02		;5fab
	.DB $03		;5fac
	.DB $0a		;5fad
	.DB $00		;5fae
	.DB $83		;5faf
	.DB $20		;5fb0
	.DB $78		;5fb1
	.DB $24		;5fb2
	.DB $02		;5fb3
	.DB $04		;5fb4
	.DB $12		;5fb5
	.DB $00		;5fb6
	.DB $82		;5fb7
	.DB $10		;5fb8
	.DB $08		;5fb9
	.DB $0b		;5fba
	.DB $00		;5fbb
	.DB $81		;5fbc
	.DB $01		;5fbd
	.DB $03		;5fbe
	.DB $00		;5fbf
	.DB $82		;5fc0
	.DB $20		;5fc1
	.DB $05		;5fc2
	.DB $09		;5fc3
	.DB $00		;5fc4
	.DB $81		;5fc5
	.DB $20		;5fc6
	.DB $02		;5fc7
	.DB $00		;5fc8
	.DB $84		;5fc9
	.DB $7a		;5fca
	.DB $08		;5fcb
	.DB $32		;5fcc
	.DB $20		;5fcd
	.DB $0d		;5fce
	.DB $00		;5fcf
	.DB $02		;5fd0
	.DB $02		;5fd1
	.DB $88		;5fd2
	.DB $05		;5fd3
	.DB $00		;5fd4
	.DB $1c		;5fd5
	.DB $7e		;5fd6
	.DB $7f		;5fd7
	.DB $f3		;5fd8
	.DB $c0		;5fd9
	.DB $80		;5fda
	.DB $02		;5fdb
	.DB $00		;5fdc
	.DB $87		;5fdd
	.DB $01		;5fde
	.DB $03		;5fdf
	.DB $02		;5fe0
	.DB $3a		;5fe1
	.DB $4c		;5fe2
	.DB $c7		;5fe3
	.DB $80		;5fe4
	.DB $09		;5fe5
	.DB $00		;5fe6
	.DB $85		;5fe7
	.DB $80		;5fe8
	.DB $00		;5fe9
	.DB $e0		;5fea
	.DB $00		;5feb
	.DB $fc		;5fec
	.DB $02		;5fed
	.DB $02		;5fee
	.DB $81		;5fef
	.DB $08		;5ff0
	.DB $04		;5ff1
	.DB $10		;5ff2
	.DB $82		;5ff3
	.DB $30		;5ff4
	.DB $21		;5ff5
	.DB $02		;5ff6
	.DB $23		;5ff7
	.DB $97		;5ff8
	.DB $63		;5ff9
	.DB $43		;5ffa
	.DB $41		;5ffb
	.DB $40		;5ffc
	.DB $20		;5ffd
	.DB $30		;5ffe
	.DB $0c		;5fff
l6000h:
	.DB $00		;6000
	.DB $0e		;6001
	.DB $1f		;6002
	.DB $7d		;6003
	.DB $fc		;6004
	.DB $f7		;6005
	.DB $e3		;6006
	.DB $c7		;6007
	.DB $ef		;6008
	.DB $3c		;6009
	.DB $bc		;600a
	.DB $f8		;600b
	.DB $f9		;600c
	.DB $7d		;600d
	.DB $04		;600e
	.DB $00		;600f
	.DB $02		;6010
	.DB $10		;6011
	.DB $81		;6012
	.DB $80		;6013
	.DB $02		;6014
	.DB $c0		;6015
	.DB $03		;6016
	.DB $e0		;6017
	.DB $81		;6018
	.DB $30		;6019
	.DB $02		;601a
	.DB $00		;601b
	.DB $86		;601c
	.DB $a0		;601d
	.DB $b0		;601e
	.DB $39		;601f
	.DB $fa		;6020
	.DB $78		;6021
	.DB $20		;6022
	.DB $0f		;6023
	.DB $00		;6024
	.DB $81		;6025
	.DB $03		;6026
	.DB $02		;6027
	.DB $00		;6028
	.DB $82		;6029
	.DB $0c		;602a
	.DB $08		;602b
	.DB $14		;602c
	.DB $00		;602d
	.DB $02		;602e
	.DB $01		;602f
	.DB $8f		;6030
	.DB $02		;6031
	.DB $01		;6032
	.DB $07		;6033
	.DB $08		;6034
	.DB $00		;6035
	.DB $0f		;6036
	.DB $1f		;6037
	.DB $3e		;6038
	.DB $34		;6039
	.DB $36		;603a
	.DB $3f		;603b
	.DB $1e		;603c
	.DB $1c		;603d
	.DB $0b		;603e
	.DB $1b		;603f
	.DB $02		;6040
	.DB $13		;6041
	.DB $84		;6042
	.DB $01		;6043
	.DB $18		;6044
	.DB $12		;6045
	.DB $01		;6046
	.DB $03		;6047
	.DB $00		;6048
	.DB $85		;6049
	.DB $18		;604a
	.DB $3c		;604b
	.DB $7e		;604c
	.DB $78		;604d
	.DB $40		;604e
	.DB $03		;604f
	.DB $00		;6050
	.DB $85		;6051
	.DB $01		;6052
	.DB $02		;6053
	.DB $04		;6054
	.DB $14		;6055
	.DB $08		;6056
	.DB $09		;6057
	.DB $00		;6058
	.DB $87		;6059
	.DB $60		;605a
	.DB $98		;605b
	.DB $00		;605c
	.DB $c0		;605d
	.DB $7c		;605e
	.DB $01		;605f
	.DB $38		;6060
	.DB $03		;6061
	.DB $01		;6062
	.DB $05		;6063
	.DB $02		;6064
	.DB $81		;6065
	.DB $01		;6066
	.DB $07		;6067
	.DB $00		;6068
	.DB $8b		;6069
	.DB $0f		;606a
	.DB $1e		;606b
	.DB $3b		;606c
	.DB $73		;606d
	.DB $7e		;606e
	.DB $2c		;606f
	.DB $3c		;6070
	.DB $1e		;6071
	.DB $06		;6072
	.DB $80		;6073
	.DB $00		;6074
	.DB $02		;6075
	.DB $01		;6076
	.DB $03		;6077
	.DB $00		;6078
	.DB $82		;6079
	.DB $90		;607a
	.DB $d0		;607b
	.DB $02		;607c
	.DB $c0		;607d
	.DB $88		;607e
	.DB $60		;607f
	.DB $00		;6080
	.DB $c0		;6081
	.DB $e0		;6082
	.DB $6c		;6083
	.DB $50		;6084
	.DB $38		;6085
	.DB $d0		;6086
	.DB $05		;6087
	.DB $00		;6088
	.DB $02		;6089
	.DB $03		;608a
	.DB $82		;608b
	.DB $06		;608c
	.DB $04		;608d
	.DB $03		;608e
	.DB $00		;608f
	.DB $85		;6090
	.DB $01		;6091
	.DB $12		;6092
	.DB $0c		;6093
	.DB $10		;6094
	.DB $20		;6095
	.DB $02		;6096
	.DB $0f		;6097
	.DB $86		;6098
	.DB $1e		;6099
	.DB $1a		;609a
	.DB $0f		;609b
	.DB $0e		;609c
	.DB $06		;609d
	.DB $05		;609e
	.DB $02		;609f
	.DB $01		;60a0
	.DB $82		;60a1
	.DB $04		;60a2
	.DB $01		;60a3
	.DB $07		;60a4
	.DB $00		;60a5
	.DB $8e		;60a6
	.DB $60		;60a7
	.DB $f0		;60a8
	.DB $e0		;60a9
	.DB $80		;60aa
	.DB $00		;60ab
	.DB $0f		;60ac
	.DB $08		;60ad
	.DB $11		;60ae
	.DB $13		;60af
	.DB $17		;60b0
	.DB $15		;60b1
	.DB $13		;60b2
	.DB $01		;60b3
	.DB $0c		;60b4
	.DB $05		;60b5
	.DB $00		;60b6
	.DB $89		;60b7
	.DB $80		;60b8
	.DB $60		;60b9
	.DB $e0		;60ba
	.DB $60		;60bb
	.DB $e0		;60bc
	.DB $60		;60bd
	.DB $90		;60be
	.DB $bc		;60bf
	.DB $7c		;60c0
	.DB $02		;60c1
	.DB $10		;60c2
	.DB $04		;60c3
	.DB $00		;60c4
	.DB $83		;60c5
	.DB $01		;60c6
	.DB $03		;60c7
	.DB $02		;60c8
	.DB $03		;60c9
	.DB $00		;60ca
	.DB $88		;60cb
	.DB $04		;60cc
	.DB $09		;60cd
	.DB $06		;60ce
	.DB $1b		;60cf
	.DB $17		;60d0
	.DB $0c		;60d1
	.DB $07		;60d2
	.DB $02		;60d3
	.DB $02		;60d4
	.DB $00		;60d5
	.DB $82		;60d6
	.DB $0e		;60d7
	.DB $08		;60d8
	.DB $03		;60d9
	.DB $00		;60da
	.DB $82		;60db
	.DB $03		;60dc
	.DB $00		;60dd
	.DB $02		;60de
	.DB $09		;60df
	.DB $02		;60e0
	.DB $08		;60e1
	.DB $81		;60e2
	.DB $04		;60e3
	.DB $07		;60e4
	.DB $00		;60e5
	.DB $8a		;60e6
	.DB $40		;60e7
	.DB $70		;60e8
	.DB $68		;60e9
	.DB $f8		;60ea
	.DB $b0		;60eb
	.DB $c0		;60ec
	.DB $dc		;60ed
	.DB $1c		;60ee
	.DB $1a		;60ef
	.DB $04		;60f0
	.DB $0b		;60f1
	.DB $00		;60f2
	.DB $86		;60f3
	.DB $40		;60f4
	.DB $10		;60f5
	.DB $38		;60f6
	.DB $1c		;60f7
	.DB $08		;60f8
	.DB $02		;60f9
	.DB $29		;60fa
	.DB $00		;60fb
	.DB $82		;60fc
	.DB $02		;60fd
	.DB $03		;60fe
	.DB $02		;60ff
	.DB $05		;6100
	.DB $81		;6101
	.DB $08		;6102
	.DB $02		;6103
	.DB $10		;6104
	.DB $03		;6105
	.DB $00		;6106
	.DB $82		;6107
	.DB $1c		;6108
	.DB $32		;6109
	.DB $02		;610a
	.DB $40		;610b
	.DB $88		;610c
	.DB $01		;610d
	.DB $07		;610e
	.DB $0c		;610f
	.DB $08		;6110
	.DB $18		;6111
	.DB $21		;6112
	.DB $c6		;6113
	.DB $87		;6114
	.DB $08		;6115
	.DB $00		;6116
	.DB $a3		;6117
	.DB $c0		;6118
	.DB $38		;6119
	.DB $0c		;611a
	.DB $04		;611b
	.DB $c8		;611c
	.DB $3e		;611d
	.DB $c3		;611e
	.DB $1d		;611f
	.DB $75		;6120
	.DB $00		;6121
	.DB $c0		;6122
	.DB $20		;6123
	.DB $23		;6124
	.DB $27		;6125
	.DB $07		;6126
	.DB $4e		;6127
	.DB $4c		;6128
	.DB $5c		;6129
	.DB $1c		;612a
	.DB $38		;612b
	.DB $30		;612c
	.DB $2e		;612d
	.DB $5f		;612e
	.DB $4f		;612f
	.DB $32		;6130
	.DB $0e		;6131
	.DB $30		;6132
	.DB $60		;6133
	.DB $80		;6134
	.DB $10		;6135
	.DB $00		;6136
	.DB $40		;6137
	.DB $02		;6138
	.DB $00		;6139
	.DB $08		;613a
	.DB $02		;613b
	.DB $00		;613c
	.DB $02		;613d
	.DB $01		;613e
	.DB $82		;613f
	.DB $60		;6140
	.DB $f8		;6141
	.DB $02		;6142
	.DB $e0		;6143
	.DB $82		;6144
	.DB $40		;6145
	.DB $30		;6146
	.DB $02		;6147
	.DB $10		;6148
	.DB $02		;6149
	.DB $18		;614a
	.DB $8b		;614b
	.DB $08		;614c
	.DB $04		;614d
	.DB $01		;614e
	.DB $a0		;614f
	.DB $b0		;6150
	.DB $39		;6151
	.DB $fa		;6152
	.DB $78		;6153
	.DB $c0		;6154
	.DB $0e		;6155
	.DB $01		;6156
	.DB $0d		;6157
	.DB $00		;6158
	.DB $85		;6159
	.DB $83		;615a
	.DB $00		;615b
	.DB $40		;615c
	.DB $2c		;615d
	.DB $18		;615e
	.DB $0e		;615f
	.DB $00		;6160
	.DB $82		;6161
	.DB $01		;6162
	.DB $02		;6163
	.DB $03		;6164
	.DB $00		;6165
	.DB $88		;6166
	.DB $08		;6167
	.DB $18		;6168
	.DB $2c		;6169
	.DB $67		;616a
	.DB $83		;616b
	.DB $80		;616c
	.DB $10		;616d
	.DB $08		;616e
	.DB $02		;616f
	.DB $00		;6170
	.DB $82		;6171
	.DB $e0		;6172
	.DB $10		;6173
	.DB $02		;6174
	.DB $00		;6175
	.DB $8a		;6176
	.DB $0c		;6177
	.DB $1b		;6178
	.DB $31		;6179
	.DB $60		;617a
	.DB $c4		;617b
	.DB $84		;617c
	.DB $0b		;617d
	.DB $00		;617e
	.DB $03		;617f
	.DB $78		;6180
	.DB $08		;6181
	.DB $00		;6182
	.DB $02		;6183
	.DB $80		;6184
	.DB $02		;6185
	.DB $40		;6186
	.DB $91		;6187
	.DB $f0		;6188
	.DB $08		;6189
	.DB $e4		;618a
	.DB $14		;618b
	.DB $11		;618c
	.DB $13		;618d
	.DB $27		;618e
	.DB $26		;618f
	.DB $4e		;6190
	.DB $58		;6191
	.DB $4e		;6192
	.DB $64		;6193
	.DB $33		;6194
	.DB $0b		;6195
	.DB $01		;6196
	.DB $02		;6197
	.DB $01		;6198
	.DB $03		;6199
	.DB $00		;619a
	.DB $83		;619b
	.DB $c0		;619c
	.DB $82		;619d
	.DB $10		;619e
	.DB $02		;619f
	.DB $00		;61a0
	.DB $81		;61a1
	.DB $09		;61a2
	.DB $03		;61a3
	.DB $00		;61a4
	.DB $87		;61a5
	.DB $83		;61a6
	.DB $c3		;61a7
	.DB $63		;61a8
	.DB $43		;61a9
	.DB $01		;61aa
	.DB $00		;61ab
	.DB $40		;61ac
	.DB $02		;61ad
	.DB $14		;61ae
	.DB $81		;61af
	.DB $00		;61b0
	.DB $02		;61b1
	.DB $18		;61b2
	.DB $02		;61b3
	.DB $10		;61b4
	.DB $83		;61b5
	.DB $08		;61b6
	.DB $c8		;61b7
	.DB $e4		;61b8
	.DB $02		;61b9
	.DB $e0		;61ba
	.DB $86		;61bb
	.DB $d4		;61bc
	.DB $14		;61bd
	.DB $f0		;61be
	.DB $e0		;61bf
	.DB $28		;61c0
	.DB $1c		;61c1
	.DB $15		;61c2
	.DB $00		;61c3
	.DB $99		;61c4
	.DB $03		;61c5
	.DB $06		;61c6
	.DB $0c		;61c7
	.DB $09		;61c8
	.DB $10		;61c9
	.DB $01		;61ca
	.DB $06		;61cb
	.DB $0c		;61cc
	.DB $01		;61cd
	.DB $70		;61ce
	.DB $82		;61cf
	.DB $c0		;61d0
	.DB $00		;61d1
	.DB $c0		;61d2
	.DB $42		;61d3
	.DB $40		;61d4
	.DB $20		;61d5
	.DB $33		;61d6
	.DB $23		;61d7
	.DB $03		;61d8
	.DB $43		;61d9
	.DB $41		;61da
	.DB $58		;61db
	.DB $32		;61dc
	.DB $11		;61dd
	.DB $00		;61de
	.DB $10		;61df
	.DB $00		;61e0
	.DB $89		;61e1
	.DB $3c		;61e2
	.DB $42		;61e3
	.DB $81		;61e4
	.DB $00		;61e5
	.DB $18		;61e6
	.DB $ff		;61e7
	.DB $7e		;61e8
	.DB $3c		;61e9
	.DB $18		;61ea
	.DB $07		;61eb
	.DB $00		;61ec
	.DB $82		;61ed
	.DB $81		;61ee
	.DB $c3		;61ef
	.DB $12		;61f0
	.DB $00		;61f1
	.DB $81		;61f2
	.DB $18		;61f3
	.DB $0b		;61f4
	.DB $ff		;61f5
	.DB $81		;61f6
	.DB $24		;61f7
	.DB $02		;61f8
	.DB $5a		;61f9
	.DB $81		;61fa
	.DB $7e		;61fb
	.DB $0f		;61fc
	.DB $00		;61fd
	.DB $82		;61fe
	.DB $7e		;61ff
	.DB $ff		;6200
	.DB $02		;6201
	.DB $7e		;6202
l6203h:
	.DB $84		;6203
	.DB $42		;6204
	.DB $18		;6205
	.DB $00		;6206
	.DB $24		;6207
	.DB $02		;6208
	.DB $3c		;6209
	.DB $0d		;620a
	.DB $00		;620b
	.DB $85		;620c
	.DB $38		;620d
	.DB $7c		;620e
	.DB $28		;620f
	.DB $00		;6210
	.DB $38		;6211
	.DB $0e		;6212
	.DB $00		;6213
	.DB $03		;6214
	.DB $10		;6215
	.DB $04		;6216
	.DB $00		;6217
	.DB $87		;6218
	.DB $14		;6219
	.DB $20		;621a
	.DB $10		;621b
	.DB $18		;621c
	.DB $80		;621d
	.DB $30		;621e
	.DB $00		;621f
	.DB $02		;6220
	.DB $04		;6221
	.DB $02		;6222
	.DB $02		;6223
	.DB $05		;6224
	.DB $00		;6225
	.DB $8a		;6226
	.DB $22		;6227
	.DB $04		;6228
	.DB $08		;6229
	.DB $1f		;622a
	.DB $02		;622b
	.DB $38		;622c
	.DB $18		;622d
	.DB $0c		;622e
	.DB $04		;622f
	.DB $02		;6230
	.DB $7f		;6231
	.DB $00		;6232
	.DB $6d		;6233
	.DB $00		;6234
	.DB $81		;6235
	.DB $01		;6236
	.DB $03		;6237
	.DB $00		;6238
	.DB $82		;6239
	.DB $20		;623a
	.DB $05		;623b
	.DB $09		;623c
	.DB $00		;623d
	.DB $81		;623e
	.DB $20		;623f
	.DB $02		;6240
	.DB $00		;6241
	.DB $84		;6242
	.DB $7a		;6243
	.DB $08		;6244
	.DB $32		;6245
	.DB $20		;6246
	.DB $07		;6247
	.DB $00		;6248
	.DB $82		;6249
	.DB $01		;624a
	.DB $03		;624b
	.DB $02		;624c
	.DB $07		;624d
	.DB $02		;624e
	.DB $0f		;624f
	.DB $02		;6250
	.DB $1f		;6251
	.DB $81		;6252
	.DB $1d		;6253
	.DB $05		;6254
	.DB $00		;6255
	.DB $82		;6256
	.DB $07		;6257
	.DB $3f		;6258
	.DB $06		;6259
	.DB $ff		;625a
	.DB $81		;625b
	.DB $fe		;625c
	.DB $02		;625d
	.DB $ff		;625e
	.DB $06		;625f
	.DB $00		;6260
	.DB $83		;6261
	.DB $c0		;6262
	.DB $f8		;6263
	.DB $fc		;6264
	.DB $02		;6265
	.DB $fe		;6266
	.DB $82		;6267
	.DB $fc		;6268
	.DB $3e		;6269
	.DB $02		;626a
	.DB $ff		;626b
	.DB $83		;626c
	.DB $f7		;626d
	.DB $0f		;626e
	.DB $df		;626f
	.DB $03		;6270
	.DB $3f		;6271
	.DB $82		;6272
	.DB $7f		;6273
	.DB $7e		;6274
	.DB $03		;6275
	.DB $7c		;6276
	.DB $83		;6277
	.DB $78		;6278
	.DB $70		;6279
	.DB $6e		;627a
	.DB $02		;627b
	.DB $7f		;627c
	.DB $85		;627d
	.DB $3e		;627e
	.DB $fe		;627f
	.DB $f0		;6280
	.DB $e0		;6281
	.DB $80		;6282
	.DB $02		;6283
	.DB $00		;6284
	.DB $82		;6285
	.DB $08		;6286
	.DB $10		;6287
	.DB $04		;6288
	.DB $00		;6289
	.DB $02		;628a
	.DB $01		;628b
	.DB $82		;628c
	.DB $60		;628d
	.DB $f8		;628e
	.DB $02		;628f
	.DB $f0		;6290
	.DB $81		;6291
	.DB $40		;6292
	.DB $02		;6293
	.DB $30		;6294
	.DB $81		;6295
	.DB $10		;6296
	.DB $02		;6297
	.DB $18		;6298
	.DB $8b		;6299
	.DB $08		;629a
	.DB $04		;629b
	.DB $01		;629c
	.DB $e0		;629d
	.DB $f0		;629e
	.DB $e9		;629f
	.DB $eb		;62a0
	.DB $48		;62a1
	.DB $e0		;62a2
	.DB $0e		;62a3
	.DB $01		;62a4
	.DB $0d		;62a5
	.DB $00		;62a6
	.DB $86		;62a7
	.DB $83		;62a8
	.DB $00		;62a9
	.DB $40		;62aa
	.DB $2e		;62ab
	.DB $1f		;62ac
	.DB $01		;62ad
	.DB $0f		;62ae
	.DB $00		;62af
	.DB $84		;62b0
	.DB $01		;62b1
	.DB $03		;62b2
	.DB $07		;62b3
	.DB $0f		;62b4
	.DB $02		;62b5
	.DB $1f		;62b6
	.DB $83		;62b7
	.DB $3e		;62b8
	.DB $1d		;62b9
	.DB $1f		;62ba
	.DB $02		;62bb
	.DB $0f		;62bc
	.DB $84		;62bd
	.DB $70		;62be
	.DB $80		;62bf
	.DB $c0		;62c0
	.DB $01		;62c1
	.DB $02		;62c2
	.DB $40		;62c3
	.DB $8a		;62c4
	.DB $60		;62c5
	.DB $20		;62c6
	.DB $33		;62c7
	.DB $21		;62c8
	.DB $00		;62c9
	.DB $42		;62ca
	.DB $43		;62cb
	.DB $5b		;62cc
	.DB $3b		;62cd
	.DB $19		;62ce
	.DB $06		;62cf
	.DB $00		;62d0
	.DB $83		;62d1
	.DB $01		;62d2
	.DB $0f		;62d3
	.DB $3f		;62d4
	.DB $03		;62d5
	.DB $7f		;62d6
	.DB $03		;62d7
	.DB $ff		;62d8
	.DB $81		;62d9
	.DB $5f		;62da
	.DB $06		;62db
	.DB $00		;62dc
	.DB $8a		;62dd
	.DB $c0		;62de
	.DB $f0		;62df
	.DB $f8		;62e0
	.DB $fc		;62e1
	.DB $bc		;62e2
	.DB $d8		;62e3
	.DB $e0		;62e4
	.DB $fc		;62e5
	.DB $ff		;62e6
	.DB $c1		;62e7
	.DB $03		;62e8
	.DB $03		;62e9
	.DB $03		;62ea
	.DB $07		;62eb
	.DB $81		;62ec
	.DB $06		;62ed
	.DB $02		;62ee
	.DB $07		;62ef
	.DB $81		;62f0
	.DB $03		;62f1
	.DB $06		;62f2
	.DB $00		;62f3
	.DB $85		;62f4
	.DB $f0		;62f5
	.DB $e0		;62f6
	.DB $c0		;62f7
	.DB $84		;62f8
	.DB $80		;62f9
	.DB $02		;62fa
	.DB $00		;62fb
	.DB $84		;62fc
	.DB $c0		;62fd
	.DB $d0		;62fe
	.DB $8e		;62ff
	.DB $b4		;6300
	.DB $02		;6301
	.DB $01		;6302
	.DB $81		;6303
	.DB $02		;6304
	.DB $02		;6305
	.DB $00		;6306
	.DB $81		;6307
	.DB $70		;6308
	.DB $03		;6309
	.DB $10		;630a
	.DB $8a		;630b
	.DB $00		;630c
	.DB $30		;630d
	.DB $c4		;630e
	.DB $c0		;630f
	.DB $3c		;6310
	.DB $74		;6311
	.DB $3c		;6312
	.DB $d2		;6313
	.DB $a0		;6314
	.DB $10		;6315
	.DB $06		;6316
	.DB $00		;6317
	.DB $97		;6318
	.DB $01		;6319
	.DB $07		;631a
	.DB $1f		;631b
	.DB $3f		;631c
	.DB $7f		;631d
	.DB $77		;631e
	.DB $7f		;631f
	.DB $1f		;6320
	.DB $3f		;6321
	.DB $30		;6322
	.DB $10		;6323
	.DB $20		;6324
	.DB $01		;6325
	.DB $10		;6326
	.DB $20		;6327
	.DB $08		;6328
	.DB $11		;6329
	.DB $02		;632a
	.DB $0b		;632b
	.DB $0d		;632c
	.DB $09		;632d
	.DB $06		;632e
	.DB $02		;632f
	.DB $07		;6330
	.DB $00		;6331
	.DB $87		;6332
	.DB $0e		;6333
	.DB $3f		;6334
	.DB $7d		;6335
	.DB $ff		;6336
	.DB $df		;6337
	.DB $de		;6338
	.DB $1c		;6339
	.DB $03		;633a
	.DB $18		;633b
	.DB $84		;633c
	.DB $10		;633d
	.DB $1e		;633e
	.DB $0c		;633f
	.DB $01		;6340
	.DB $03		;6341
	.DB $00		;6342
	.DB $8c		;6343
	.DB $c0		;6344
	.DB $e0		;6345
	.DB $30		;6346
	.DB $20		;6347
	.DB $10		;6348
	.DB $90		;6349
	.DB $08		;634a
	.DB $30		;634b
	.DB $2c		;634c
	.DB $98		;634d
	.DB $10		;634e
	.DB $20		;634f
	.DB $06		;6350
	.DB $00		;6351
	.DB $82		;6352
	.DB $03		;6353
	.DB $0f		;6354
	.DB $02		;6355
	.DB $1f		;6356
	.DB $87		;6357
	.DB $1b		;6358
	.DB $0f		;6359
	.DB $1c		;635a
	.DB $10		;635b
	.DB $09		;635c
	.DB $08		;635d
	.DB $04		;635e
	.DB $03		;635f
	.DB $00		;6360
	.DB $81		;6361
	.DB $03		;6362
	.DB $02		;6363
	.DB $0f		;6364
	.DB $88		;6365
	.DB $17		;6366
	.DB $0f		;6367
	.DB $07		;6368
	.DB $0e		;6369
	.DB $0c		;636a
	.DB $08		;636b
	.DB $0d		;636c
	.DB $04		;636d
	.DB $05		;636e
	.DB $00		;636f
	.DB $8c		;6370
	.DB $80		;6371
	.DB $e0		;6372
	.DB $70		;6373
	.DB $f0		;6374
	.DB $88		;6375
	.DB $0c		;6376
	.DB $40		;6377
	.DB $04		;6378
	.DB $1f		;6379
	.DB $94		;637a
	.DB $1a		;637b
	.DB $04		;637c
	.DB $0b		;637d
	.DB $00		;637e
	.DB $86		;637f
	.DB $30		;6380
	.DB $78		;6381
	.DB $64		;6382
	.DB $24		;6383
	.DB $1c		;6384
	.DB $00		;6385
	.DB $02		;6386
	.DB $08		;6387
	.DB $02		;6388
	.DB $04		;6389
	.DB $02		;638a
	.DB $00		;638b
	.DB $81		;638c
	.DB $80		;638d
	.DB $0c		;638e
	.DB $00		;638f
	.DB $02		;6390
	.DB $80		;6391
	.DB $12		;6392
	.DB $00		;6393
	.DB $84		;6394
	.DB $01		;6395
	.DB $03		;6396
	.DB $05		;6397
	.DB $04		;6398
	.DB $02		;6399
	.DB $08		;639a
	.DB $81		;639b
	.DB $10		;639c
	.DB $03		;639d
	.DB $00		;639e
	.DB $88		;639f
	.DB $1c		;63a0
	.DB $62		;63a1
	.DB $81		;63a2
	.DB $80		;63a3
	.DB $07		;63a4
	.DB $3f		;63a5
	.DB $fe		;63a6
	.DB $f8		;63a7
	.DB $02		;63a8
	.DB $f0		;63a9
	.DB $82		;63aa
	.DB $e0		;63ab
	.DB $c0		;63ac
	.DB $09		;63ad
	.DB $00		;63ae
	.DB $83		;63af
	.DB $c0		;63b0
	.DB $38		;63b1
	.DB $04		;63b2
	.DB $02		;63b3
	.DB $02		;63b4
	.DB $81		;63b5
	.DB $04		;63b6
	.DB $0a		;63b7
	.DB $00		;63b8
	.DB $82		;63b9
	.DB $01		;63ba
	.DB $03		;63bb
	.DB $02		;63bc
	.DB $02		;63bd
	.DB $07		;63be
	.DB $00		;63bf
	.DB $8e		;63c0
	.DB $0e		;63c1
	.DB $18		;63c2
	.DB $78		;63c3
	.DB $f0		;63c4
	.DB $c0		;63c5
	.DB $c9		;63c6
	.DB $93		;63c7
	.DB $03		;63c8
	.DB $0c		;63c9
	.DB $1c		;63ca
	.DB $18		;63cb
	.DB $39		;63cc
	.DB $7d		;63cd
	.DB $04		;63ce
	.DB $04		;63cf
	.DB $00		;63d0
	.DB $83		;63d1
	.DB $08		;63d2
	.DB $28		;63d3
	.DB $68		;63d4
	.DB $02		;63d5
	.DB $e4		;63d6
	.DB $8a		;63d7
	.DB $34		;63d8
	.DB $02		;63d9
	.DB $00		;63da
	.DB $e0		;63db
	.DB $f0		;63dc
	.DB $e9		;63dd
	.DB $eb		;63de
	.DB $48		;63df
	.DB $0f		;63e0
	.DB $11		;63e1
	.DB $0e		;63e2
	.DB $00		;63e3
	.DB $81		;63e4
	.DB $03		;63e5
	.DB $02		;63e6
	.DB $80		;63e7
	.DB $83		;63e8
	.DB $4e		;63e9
	.DB $2f		;63ea
	.DB $01		;63eb
	.DB $0a		;63ec
	.DB $00		;63ed
	.DB $82		;63ee
	.DB $01		;63ef
	.DB $02		;63f0
	.DB $02		;63f1
	.DB $04		;63f2
	.DB $88		;63f3
	.DB $00		;63f4
	.DB $03		;63f5
	.DB $0f		;63f6
	.DB $1f		;63f7
	.DB $37		;63f8
	.DB $67		;63f9
	.DB $c3		;63fa
	.DB $80		;63fb
	.DB $04		;63fc
	.DB $00		;63fd
	.DB $8a		;63fe
	.DB $e0		;63ff
	.DB $10		;6400
	.DB $08		;6401
	.DB $00		;6402
	.DB $f0		;6403
	.DB $fe		;6404
	.DB $f3		;6405
	.DB $e0		;6406
	.DB $c0		;6407
	.DB $80		;6408
	.DB $05		;6409
	.DB $00		;640a
	.DB $81		;640b
	.DB $07		;640c
	.DB $07		;640d
	.DB $00		;640e
	.DB $81		;640f
	.DB $80		;6410
	.DB $02		;6411
	.DB $40		;6412
	.DB $02		;6413
	.DB $20		;6414
	.DB $03		;6415
	.DB $00		;6416
	.DB $81		;6417
	.DB $80		;6418
	.DB $03		;6419
	.DB $00		;641a
	.DB $02		;641b
	.DB $01		;641c
	.DB $04		;641d
	.DB $00		;641e
	.DB $83		;641f
	.DB $04		;6420
	.DB $06		;6421
	.DB $01		;6422
	.DB $04		;6423
	.DB $00		;6424
	.DB $90		;6425
	.DB $3f		;6426
	.DB $72		;6427
	.DB $f0		;6428
	.DB $8c		;6429
	.DB $00		;642a
	.DB $09		;642b
	.DB $04		;642c
	.DB $08		;642d
	.DB $18		;642e
	.DB $7b		;642f
	.DB $3b		;6430
	.DB $9a		;6431
	.DB $8b		;6432
	.DB $c1		;6433
	.DB $40		;6434
	.DB $20		;6435
	.DB $03		;6436
	.DB $00		;6437
	.DB $02		;6438
	.DB $04		;6439
	.DB $87		;643a
	.DB $e8		;643b
	.DB $68		;643c
	.DB $34		;643d
	.DB $d4		;643e
	.DB $e0		;643f
	.DB $b0		;6440
	.DB $28		;6441
	.DB $02		;6442
	.DB $f4		;6443
	.DB $82		;6444
	.DB $f0		;6445
	.DB $e4		;6446
	.DB $02		;6447
	.DB $0d		;6448
	.DB $82		;6449
	.DB $03		;644a
	.DB $01		;644b
	.DB $12		;644c
	.DB $00		;644d
	.DB $85		;644e
	.DB $03		;644f
	.DB $04		;6450
	.DB $08		;6451
	.DB $00		;6452
	.DB $10		;6453
	.DB $05		;6454
	.DB $00		;6455
	.DB $8d		;6456
	.DB $0f		;6457
	.DB $1e		;6458
	.DB $20		;6459
	.DB $01		;645a
	.DB $00		;645b
	.DB $86		;645c
	.DB $be		;645d
	.DB $dc		;645e
	.DB $4b		;645f
	.DB $59		;6460
	.DB $50		;6461
	.DB $12		;6462
	.DB $03		;6463
	.DB $02		;6464
	.DB $1b		;6465
	.DB $81		;6466
	.DB $09		;6467
	.DB $00		;6468
	.DB $10		;6469
	.DB $ff		;646a
	.DB $02		;646b
	.DB $00		;646c
	.DB $90		;646d
	.DB $3c		;646e
	.DB $7e		;646f
	.DB $66		;6470
	.DB $00		;6471
	.DB $81		;6472
	.DB $c3		;6473
	.DB $66		;6474
	.DB $3c		;6475
	.DB $18		;6476
	.DB $00		;6477
	.DB $81		;6478
	.DB $00		;6479
	.DB $3c		;647a
	.DB $ff		;647b
	.DB $bd		;647c
	.DB $ff		;647d
	.DB $02		;647e
	.DB $3c		;647f
	.DB $81		;6480
	.DB $7e		;6481
	.DB $02		;6482
	.DB $3c		;6483
	.DB $81		;6484
	.DB $18		;6485
	.DB $09		;6486
	.DB $00		;6487
	.DB $85		;6488
	.DB $42		;6489
	.DB $e7		;648a
	.DB $ff		;648b
	.DB $e7		;648c
	.DB $18		;648d
	.DB $02		;648e
	.DB $ff		;648f
	.DB $81		;6490
	.DB $c3		;6491
	.DB $08		;6492
	.DB $00		;6493
	.DB $82		;6494
	.DB $3c		;6495
	.DB $24		;6496
	.DB $05		;6497
	.DB $18		;6498
	.DB $0a		;6499
	.DB $00		;649a
	.DB $83		;649b
	.DB $18		;649c
	.DB $3c		;649d
	.DB $66		;649e
	.DB $02		;649f
	.DB $00		;64a0
	.DB $83		;64a1
	.DB $3c		;64a2
	.DB $5a		;64a3
	.DB $3c		;64a4
	.DB $02		;64a5
	.DB $18		;64a6
	.DB $81		;64a7
	.DB $00		;64a8
	.DB $03		;64a9
	.DB $18		;64aa
	.DB $09		;64ab
	.DB $00		;64ac
	.DB $85		;64ad
	.DB $10		;64ae
	.DB $28		;64af
	.DB $6c		;64b0
	.DB $10		;64b1
	.DB $28		;64b2
	.DB $0f		;64b3
	.DB $00		;64b4
	.DB $03		;64b5
	.DB $18		;64b6
	.DB $04		;64b7
	.DB $00		;64b8
	.DB $87		;64b9
	.DB $14		;64ba
	.DB $20		;64bb
	.DB $10		;64bc
	.DB $18		;64bd
	.DB $80		;64be
	.DB $30		;64bf
	.DB $00		;64c0
	.DB $02		;64c1
	.DB $04		;64c2
	.DB $02		;64c3
	.DB $02		;64c4
	.DB $05		;64c5
	.DB $00		;64c6
	.DB $8a		;64c7
	.DB $22		;64c8
	.DB $04		;64c9
	.DB $08		;64ca
	.DB $1f		;64cb
	.DB $02		;64cc
	.DB $38		;64cd
	.DB $18		;64ce
	.DB $0c		;64cf
	.DB $04		;64d0
	.DB $02		;64d1
	.DB $44		;64d2
	.DB $00		;64d3
	.DB $88		;64d4
	.DB $7e		;64d5
	.DB $e7		;64d6
	.DB $e0		;64d7
	.DB $ef		;64d8
	.DB $e7		;64d9
	.DB $7f		;64da
	.DB $00		;64db
	.DB $7e		;64dc
	.DB $04		;64dd
	.DB $e7		;64de
	.DB $81		;64df
	.DB $7e		;64e0
	.DB $0b		;64e1
	.DB $00		;64e2
	.DB $8c		;64e3
	.DB $08		;64e4
	.DB $00		;64e5
	.DB $08		;64e6
	.DB $00		;64e7
	.DB $08		;64e8
	.DB $00		;64e9
	.DB $06		;64ea
	.DB $0e		;64eb
	.DB $0c		;64ec
	.DB $18		;64ed
	.DB $10		;64ee
	.DB $00		;64ef
	.DB $02		;64f0
	.DB $60		;64f1
	.DB $09		;64f2
	.DB $00		;64f3
	.DB $89		;64f4
	.DB $3e		;64f5
	.DB $60		;64f6
	.DB $66		;64f7
	.DB $3e		;64f8
	.DB $00		;64f9
	.DB $3c		;64fa
	.DB $66		;64fb
	.DB $3c		;64fc
	.DB $00		;64fd
	.DB $02		;64fe
	.DB $04		;64ff
	.DB $02		;6500
	.DB $08		;6501
	.DB $82		;6502
	.DB $00		;6503
l6504h:
	.DB $10		;6504
	.DB $02		;6505
	.DB $00		;6506
	.DB $84		;6507
	.DB $18		;6508
	.DB $10		;6509
	.DB $18		;650a
	.DB $00		;650b
	.DB $02		;650c
	.DB $18		;650d
	.DB $81		;650e
	.DB $00		;650f
	.DB $02		;6510
	.DB $08		;6511
	.DB $82		;6512
	.DB $00		;6513
	.DB $10		;6514
	.DB $05		;6515
	.DB $00		;6516
	.DB $89		;6517
	.DB $04		;6518
	.DB $0c		;6519
	.DB $1c		;651a
	.DB $3f		;651b
	.DB $7f		;651c
	.DB $3f		;651d
	.DB $1c		;651e
	.DB $0c		;651f
	.DB $04		;6520
	.DB $0a		;6521
	.DB $00		;6522
	.DB $81		;6523
	.DB $e0		;6524
	.DB $02		;6525
	.DB $f8		;6526
	.DB $81		;6527
	.DB $3c		;6528
	.DB $05		;6529
	.DB $1c		;652a
	.DB $06		;652b
	.DB $00		;652c
	.DB $86		;652d
	.DB $20		;652e
	.DB $60		;652f
	.DB $fc		;6530
	.DB $fe		;6531
	.DB $67		;6532
	.DB $23		;6533
	.DB $02		;6534
	.DB $03		;6535
	.DB $0a		;6536
	.DB $00		;6537
	.DB $83		;6538
	.DB $20		;6539
	.DB $78		;653a
	.DB $24		;653b
	.DB $02		;653c
	.DB $04		;653d
	.DB $12		;653e
	.DB $00		;653f
	.DB $82		;6540
	.DB $10		;6541
	.DB $08		;6542
	.DB $0b		;6543
	.DB $00		;6544
	.DB $81		;6545
	.DB $01		;6546
	.DB $03		;6547
	.DB $00		;6548
	.DB $82		;6549
	.DB $20		;654a
	.DB $05		;654b
	.DB $09		;654c
	.DB $00		;654d
	.DB $81		;654e
	.DB $20		;654f
	.DB $02		;6550
	.DB $00		;6551
	.DB $84		;6552
	.DB $7a		;6553
	.DB $08		;6554
	.DB $32		;6555
	.DB $20		;6556
	.DB $08		;6557
	.DB $00		;6558
	.DB $81		;6559
	.DB $01		;655a
	.DB $02		;655b
	.DB $03		;655c
	.DB $85		;655d
	.DB $07		;655e
	.DB $05		;655f
	.DB $0a		;6560
	.DB $1a		;6561
	.DB $16		;6562
	.DB $02		;6563
	.DB $00		;6564
	.DB $86		;6565
	.DB $02		;6566
	.DB $63		;6567
	.DB $ff		;6568
	.DB $f8		;6569
	.DB $c6		;656a
	.DB $3f		;656b
	.DB $03		;656c
	.DB $ff		;656d
	.DB $83		;656e
	.DB $86		;656f
	.DB $02		;6570
	.DB $01		;6571
	.DB $09		;6572
	.DB $00		;6573
	.DB $86		;6574
	.DB $80		;6575
	.DB $f8		;6576
	.DB $fc		;6577
	.DB $1c		;6578
	.DB $e8		;6579
	.DB $c0		;657a
	.DB $02		;657b
	.DB $00		;657c
	.DB $83		;657d
	.DB $08		;657e
	.DB $00		;657f
	.DB $e0		;6580
	.DB $04		;6581
	.DB $00		;6582
	.DB $82		;6583
	.DB $01		;6584
	.DB $03		;6585
	.DB $03		;6586
	.DB $02		;6587
	.DB $82		;6588
	.DB $08		;6589
	.DB $10		;658a
	.DB $02		;658b
	.DB $00		;658c
	.DB $02		;658d
	.DB $01		;658e
	.DB $8f		;658f
	.DB $0f		;6590
	.DB $18		;6591
	.DB $7a		;6592
	.DB $e3		;6593
	.DB $c8		;6594
	.DB $9d		;6595
	.DB $b9		;6596
	.DB $13		;6597
	.DB $c7		;6598
	.DB $5f		;6599
	.DB $1f		;659a
	.DB $3f		;659b
	.DB $7f		;659c
	.DB $87		;659d
	.DB $06		;659e
	.DB $02		;659f
	.DB $00		;65a0
	.DB $81		;65a1
	.DB $30		;65a2
	.DB $02		;65a3
	.DB $00		;65a4
	.DB $81		;65a5
	.DB $60		;65a6
	.DB $02		;65a7
	.DB $e0		;65a8
	.DB $8c		;65a9
	.DB $f0		;65aa
	.DB $f8		;65ab
	.DB $fe		;65ac
	.DB $b7		;65ad
	.DB $bb		;65ae
	.DB $2e		;65af
	.DB $ec		;65b0
	.DB $cf		;65b1
	.DB $10		;65b2
	.DB $00		;65b3
	.DB $1e		;65b4
	.DB $7f		;65b5
	.DB $02		;65b6
	.DB $ff		;65b7
	.DB $83		;65b8
	.DB $7f		;65b9
	.DB $3f		;65ba
	.DB $03		;65bb
	.DB $07		;65bc
	.DB $00		;65bd
	.DB $86		;65be
	.DB $77		;65bf
	.DB $73		;65c0
	.DB $39		;65c1
	.DB $91		;65c2
	.DB $c3		;65c3
	.DB $fd		;65c4
	.DB $02		;65c5
	.DB $ff		;65c6
	.DB $81		;65c7
	.DB $fe		;65c8
	.DB $0e		;65c9
	.DB $00		;65ca
	.DB $87		;65cb
	.DB $03		;65cc
	.DB $04		;65cd
	.DB $1b		;65ce
	.DB $17		;65cf
	.DB $2f		;65d0
	.DB $0e		;65d1
	.DB $18		;65d2
	.DB $02		;65d3
	.DB $00		;65d4
	.DB $86		;65d5
	.DB $8f		;65d6
	.DB $7c		;65d7
	.DB $21		;65d8
	.DB $cb		;65d9
	.DB $09		;65da
	.DB $04		;65db
	.DB $02		;65dc
	.DB $1f		;65dd
	.DB $88		;65de
	.DB $0f		;65df
	.DB $19		;65e0
	.DB $38		;65e1
	.DB $3a		;65e2
	.DB $39		;65e3
	.DB $20		;65e4
	.DB $02		;65e5
	.DB $0b		;65e6
	.DB $04		;65e7
	.DB $00		;65e8
	.DB $89		;65e9
	.DB $04		;65ea
	.DB $46		;65eb
	.DB $6e		;65ec
	.DB $71		;65ed
	.DB $07		;65ee
	.DB $1f		;65ef
	.DB $3c		;65f0
	.DB $38		;65f1
	.DB $60		;65f2
	.DB $02		;65f3
	.DB $50		;65f4
	.DB $08		;65f5
	.DB $00		;65f6
	.DB $84		;65f7
	.DB $c0		;65f8
	.DB $f0		;65f9
	.DB $f8		;65fa
	.DB $d8		;65fb
	.DB $04		;65fc
	.DB $00		;65fd
	.DB $81		;65fe
	.DB $3e		;65ff
	.DB $06		;6600
	.DB $00		;6601
	.DB $81		;6602
	.DB $01		;6603
	.DB $05		;6604
	.DB $00		;6605
	.DB $96		;6606
	.DB $01		;6607
	.DB $07		;6608
	.DB $01		;6609
	.DB $00		;660a
	.DB $0c		;660b
	.DB $19		;660c
	.DB $34		;660d
	.DB $6d		;660e
	.DB $43		;660f
	.DB $17		;6610
	.DB $0f		;6611
	.DB $1e		;6612
	.DB $26		;6613
	.DB $41		;6614
	.DB $43		;6615
	.DB $3a		;6616
	.DB $fa		;6617
	.DB $fd		;6618
	.DB $ff		;6619
	.DB $1f		;661a
	.DB $00		;661b
	.DB $60		;661c
	.DB $02		;661d
	.DB $c0		;661e
	.DB $8c		;661f
	.DB $e0		;6620
	.DB $80		;6621
	.DB $d8		;6622
	.DB $cc		;6623
	.DB $a0		;6624
	.DB $5c		;6625
	.DB $7c		;6626
	.DB $3e		;6627
	.DB $7e		;6628
	.DB $fe		;6629
	.DB $ef		;662a
	.DB $86		;662b
	.DB $02		;662c
	.DB $00		;662d
	.DB $89		;662e
	.DB $02		;662f
	.DB $07		;6630
	.DB $06		;6631
	.DB $01		;6632
	.DB $07		;6633
	.DB $2e		;6634
	.DB $54		;6635
	.DB $38		;6636
	.DB $60		;6637
	.DB $02		;6638
	.DB $00		;6639
	.DB $8c		;663a
	.DB $0f		;663b
	.DB $26		;663c
	.DB $01		;663d
	.DB $25		;663e
	.DB $02		;663f
	.DB $0f		;6640
	.DB $05		;6641
	.DB $07		;6642
	.DB $04		;6643
	.DB $07		;6644
	.DB $00		;6645
	.DB $05		;6646
	.DB $02		;6647
	.DB $03		;6648
	.DB $02		;6649
	.DB $01		;664a
	.DB $02		;664b
	.DB $03		;664c
	.DB $86		;664d
	.DB $01		;664e
	.DB $20		;664f
	.DB $10		;6650
	.DB $90		;6651
	.DB $de		;6652
	.DB $33		;6653
	.DB $02		;6654
	.DB $60		;6655
	.DB $82		;6656
	.DB $a1		;6657
	.DB $03		;6658
	.DB $02		;6659
	.DB $06		;665a
	.DB $84		;665b
	.DB $00		;665c
	.DB $09		;665d
	.DB $00		;665e
	.DB $02		;665f
	.DB $06		;6660
	.DB $00		;6661
	.DB $84		;6662
	.DB $80		;6663
	.DB $90		;6664
	.DB $20		;6665
	.DB $e0		;6666
	.DB $02		;6667
	.DB $f0		;6668
	.DB $85		;6669
	.DB $68		;666a
	.DB $74		;666b
	.DB $2e		;666c
	.DB $47		;666d
	.DB $fb		;666e
	.DB $03		;666f
	.DB $00		;6670
	.DB $8d		;6671
	.DB $02		;6672
	.DB $03		;6673
	.DB $00		;6674
	.DB $03		;6675
	.DB $0e		;6676
	.DB $1c		;6677
	.DB $0c		;6678
	.DB $00		;6679
	.DB $03		;667a
	.DB $0e		;667b
	.DB $03		;667c
	.DB $06		;667d
	.DB $03		;667e
	.DB $02		;667f
	.DB $00		;6680
	.DB $8a		;6681
	.DB $06		;6682
	.DB $0c		;6683
	.DB $07		;6684
	.DB $0e		;6685
	.DB $18		;6686
	.DB $08		;6687
	.DB $00		;6688
	.DB $01		;6689
	.DB $00		;668a
	.DB $04		;668b
	.DB $02		;668c
	.DB $02		;668d
	.DB $82		;668e
	.DB $00		;668f
	.DB $03		;6690
	.DB $04		;6691
	.DB $00		;6692
	.DB $8c		;6693
	.DB $c0		;6694
	.DB $e0		;6695
	.DB $00		;6696
	.DB $50		;6697
	.DB $c0		;6698
	.DB $dc		;6699
	.DB $30		;669a
	.DB $f8		;669b
	.DB $57		;669c
	.DB $6a		;669d
	.DB $37		;669e
	.DB $fb		;669f
	.DB $0a		;66a0
	.DB $00		;66a1
	.DB $84		;66a2
	.DB $70		;66a3
	.DB $50		;66a4
	.DB $78		;66a5
	.DB $10		;66a6
	.DB $02		;66a7
	.DB $00		;66a8
	.DB $82		;66a9
	.DB $08		;66aa
	.DB $f8		;66ab
	.DB $04		;66ac
	.DB $fc		;66ad
	.DB $83		;66ae
	.DB $fe		;66af
	.DB $7e		;66b0
	.DB $9c		;66b1
	.DB $07		;66b2
	.DB $00		;66b3
	.DB $02		;66b4
	.DB $f8		;66b5
	.DB $04		;66b6
	.DB $fc		;66b7
	.DB $82		;66b8
	.DB $7c		;66b9
	.DB $38		;66ba
	.DB $11		;66bb
	.DB $00		;66bc
	.DB $82		;66bd
	.DB $02		;66be
	.DB $03		;66bf
	.DB $02		;66c0
	.DB $05		;66c1
	.DB $83		;66c2
	.DB $08		;66c3
	.DB $10		;66c4
	.DB $12		;66c5
	.DB $03		;66c6
	.DB $00		;66c7
	.DB $8c		;66c8
	.DB $1c		;66c9
	.DB $3e		;66ca
	.DB $78		;66cb
	.DB $40		;66cc
	.DB $01		;66cd
	.DB $07		;66ce
	.DB $0c		;66cf
	.DB $08		;66d0
	.DB $18		;66d1
	.DB $21		;66d2
	.DB $c7		;66d3
	.DB $87		;66d4
	.DB $08		;66d5
	.DB $00		;66d6
	.DB $93		;66d7
	.DB $c0		;66d8
	.DB $38		;66d9
	.DB $0c		;66da
	.DB $04		;66db
	.DB $c8		;66dc
	.DB $fe		;66dd
	.DB $c3		;66de
	.DB $1d		;66df
	.DB $7d		;66e0
	.DB $00		;66e1
	.DB $e0		;66e2
	.DB $20		;66e3
	.DB $23		;66e4
	.DB $27		;66e5
	.DB $07		;66e6
	.DB $4e		;66e7
	.DB $4c		;66e8
	.DB $5c		;66e9
	.DB $1c		;66ea
	.DB $02		;66eb
	.DB $38		;66ec
	.DB $8f		;66ed
	.DB $3e		;66ee
	.DB $5f		;66ef
	.DB $4f		;66f0
	.DB $33		;66f1
	.DB $0f		;66f2
	.DB $31		;66f3
	.DB $60		;66f4
	.DB $82		;66f5
	.DB $03		;66f6
	.DB $08		;66f7
	.DB $1c		;66f8
	.DB $38		;66f9
	.DB $10		;66fa
	.DB $c3		;66fb
	.DB $43		;66fc
	.DB $02		;66fd
	.DB $07		;66fe
	.DB $83		;66ff
	.DB $03		;6700
	.DB $e3		;6701
	.DB $fe		;6702
	.DB $02		;6703
	.DB $e0		;6704
	.DB $82		;6705
	.DB $70		;6706
	.DB $38		;6707
	.DB $02		;6708
	.DB $18		;6709
	.DB $02		;670a
	.DB $1c		;670b
	.DB $89		;670c
	.DB $cc		;670d
	.DB $fe		;670e
	.DB $ff		;670f
	.DB $b7		;6710
	.DB $bb		;6711
	.DB $2e		;6712
	.DB $ec		;6713
	.DB $cf		;6714
	.DB $df		;6715
	.DB $02		;6716
	.DB $1f		;6717
	.DB $81		;6718
	.DB $7f		;6719
	.DB $02		;671a
	.DB $ff		;671b
	.DB $83		;671c
	.DB $7f		;671d
	.DB $3f		;671e
	.DB $03		;671f
	.DB $07		;6720
	.DB $00		;6721
	.DB $86		;6722
	.DB $f7		;6723
	.DB $f3		;6724
	.DB $f9		;6725
	.DB $f1		;6726
	.DB $f3		;6727
	.DB $fd		;6728
	.DB $02		;6729
	.DB $ff		;672a
	.DB $81		;672b
	.DB $fe		;672c
	.DB $0a		;672d
	.DB $00		;672e
	.DB $82		;672f
	.DB $01		;6730
	.DB $03		;6731
	.DB $03		;6732
	.DB $00		;6733
	.DB $88		;6734
	.DB $08		;6735
	.DB $18		;6736
	.DB $2c		;6737
	.DB $67		;6738
	.DB $83		;6739
	.DB $90		;673a
	.DB $10		;673b
	.DB $08		;673c
	.DB $02		;673d
	.DB $00		;673e
	.DB $82		;673f
	.DB $e0		;6740
	.DB $f0		;6741
	.DB $02		;6742
	.DB $00		;6743
	.DB $8a		;6744
	.DB $0c		;6745
	.DB $1b		;6746
	.DB $31		;6747
	.DB $60		;6748
	.DB $c4		;6749
	.DB $86		;674a
	.DB $0f		;674b
	.DB $00		;674c
	.DB $03		;674d
	.DB $78		;674e
	.DB $08		;674f
	.DB $00		;6750
	.DB $02		;6751
	.DB $80		;6752
	.DB $02		;6753
	.DB $40		;6754
	.DB $91		;6755
	.DB $f0		;6756
	.DB $08		;6757
	.DB $e4		;6758
	.DB $74		;6759
	.DB $11		;675a
	.DB $13		;675b
	.DB $27		;675c
	.DB $26		;675d
	.DB $4e		;675e
	.DB $5e		;675f
	.DB $4e		;6760
	.DB $66		;6761
	.DB $37		;6762
	.DB $0f		;6763
	.DB $07		;6764
	.DB $03		;6765
	.DB $01		;6766
	.DB $03		;6767
	.DB $00		;6768
	.DB $83		;6769
	.DB $c0		;676a
	.DB $80		;676b
	.DB $04		;676c
	.DB $02		;676d
	.DB $0e		;676e
	.DB $82		;676f
	.DB $40		;6770
	.DB $63		;6771
	.DB $02		;6772
	.DB $07		;6773
	.DB $99		;6774
	.DB $87		;6775
	.DB $c7		;6776
	.DB $e2		;6777
	.DB $f3		;6778
	.DB $f9		;6779
	.DB $79		;677a
	.DB $7f		;677b
	.DB $34		;677c
	.DB $14		;677d
	.DB $d8		;677e
	.DB $5c		;677f
	.DB $1c		;6780
	.DB $18		;6781
	.DB $98		;6782
	.DB $cc		;6783
	.DB $ec		;6784
	.DB $fc		;6785
	.DB $bc		;6786
	.DB $2c		;6787
	.DB $d0		;6788
	.DB $10		;6789
	.DB $f4		;678a
	.DB $fc		;678b
	.DB $33		;678c
	.DB $73		;678d
	.DB $04		;678e
	.DB $ff		;678f
	.DB $82		;6790
	.DB $7f		;6791
	.DB $1e		;6792
	.DB $0f		;6793
	.DB $00		;6794
	.DB $99		;6795
	.DB $03		;6796
	.DB $06		;6797
	.DB $0c		;6798
	.DB $09		;6799
	.DB $11		;679a
	.DB $03		;679b
	.DB $06		;679c
	.DB $0c		;679d
	.DB $01		;679e
	.DB $f0		;679f
	.DB $e0		;67a0
	.DB $c1		;67a1
	.DB $cb		;67a2
	.DB $c9		;67a3
	.DB $c0		;67a4
	.DB $c1		;67a5
	.DB $e3		;67a6
	.DB $77		;67a7
	.DB $61		;67a8
	.DB $68		;67a9
	.DB $6a		;67aa
	.DB $79		;67ab
	.DB $60		;67ac
	.DB $22		;67ad
	.DB $1b		;67ae
	.DB $00		;67af
	.DB $10		;67b0
	.DB $ff		;67b1
	.DB $82		;67b2
	.DB $3c		;67b3
	.DB $7e		;67b4
	.DB $10		;67b5
	.DB $ff		;67b6
	.DB $03		;67b7
	.DB $7e		;67b8
	.DB $02		;67b9
	.DB $3c		;67ba
	.DB $81		;67bb
	.DB $18		;67bc
	.DB $08		;67bd
	.DB $00		;67be
	.DB $82		;67bf
	.DB $3c		;67c0
	.DB $7e		;67c1
	.DB $0e		;67c2
	.DB $ff		;67c3
	.DB $84		;67c4
	.DB $66		;67c5
	.DB $7e		;67c6
	.DB $66		;67c7
	.DB $7e		;67c8
	.DB $04		;67c9
	.DB $18		;67ca
	.DB $09		;67cb
	.DB $00		;67cc
	.DB $02		;67cd
	.DB $18		;67ce
	.DB $82		;67cf
	.DB $7e		;67d0
	.DB $ff		;67d1
	.DB $06		;67d2
	.DB $7e		;67d3
	.DB $82		;67d4
	.DB $3c		;67d5
	.DB $24		;67d6
	.DB $03		;67d7
	.DB $18		;67d8
	.DB $09		;67d9
	.DB $00		;67da
	.DB $83		;67db
	.DB $10		;67dc
	.DB $38		;67dd
	.DB $7c		;67de
	.DB $02		;67df
	.DB $38		;67e0
	.DB $81		;67e1
	.DB $28		;67e2
	.DB $0d		;67e3
	.DB $00		;67e4
	.DB $81		;67e5
	.DB $08		;67e6
	.DB $03		;67e7
	.DB $18		;67e8
	.DB $02		;67e9
	.DB $01		;67ea
	.DB $84		;67eb
	.DB $03		;67ec
	.DB $43		;67ed
	.DB $37		;67ee
	.DB $3f		;67ef
	.DB $02		;67f0
	.DB $1f		;67f1
	.DB $91		;67f2
	.DB $ff		;67f3
	.DB $3f		;67f4
	.DB $1f		;67f5
	.DB $3f		;67f6
	.DB $67		;67f7
	.DB $83		;67f8
	.DB $03		;67f9
	.DB $01		;67fa
	.DB $00		;67fb
	.DB $80		;67fc
	.DB $81		;67fd
	.DB $c6		;67fe
	.DB $fe		;67ff
	.DB $fc		;6800
	.DB $f8		;6801
	.DB $ff		;6802
	.DB $fe		;6803
	.DB $02		;6804
	.DB $f8		;6805
	.DB $85		;6806
	.DB $fc		;6807
	.DB $bc		;6808
	.DB $8e		;6809
	.DB $02		;680a
	.DB $00		;680b
	.DB $10		;680c
	.DB $ff		;680d
	.DB $09		;680e
	.DB $00		;680f
	.DB $07		;6810
	.DB $7c		;6811
	.DB $04		;6812
	.DB $00		;6813
	.DB $0c		;6814
	.DB $ff		;6815
	.DB $0e		;6816
	.DB $00		;6817
	.DB $02		;6818
	.DB $18		;6819
	.DB $10		;681a
	.DB $ff		;681b
	.DB $09		;681c
	.DB $00		;681d
	.DB $07		;681e
	.DB $3e		;681f
	.DB $0e		;6820
	.DB $ff		;6821
	.DB $02		;6822
	.DB $00		;6823
	.DB $40		;6824
	.DB $ff		;6825
	.DB $02		;6826
	.DB $00		;6827
	.DB $0c		;6828
	.DB $ff		;6829
	.DB $07		;682a
	.DB $00		;682b
	.DB $07		;682c
	.DB $ff		;682d
	.DB $10		;682e
	.DB $00		;682f
	.DB $04		;6830
	.DB $7e		;6831
	.DB $0a		;6832
	.DB $00		;6833
	.DB $86		;6834
	.DB $01		;6835
	.DB $00		;6836
	.DB $05		;6837
	.DB $07		;6838
	.DB $3e		;6839
	.DB $d7		;683a
	.DB $08		;683b
	.DB $00		;683c
	.DB $88		;683d
	.DB $48		;683e
	.DB $20		;683f
	.DB $18		;6840
	.DB $66		;6841
	.DB $fb		;6842
	.DB $dc		;6843
	.DB $f6		;6844
	.DB $ac		;6845
	.DB $07		;6846
	.DB $00		;6847
	.DB $82		;6848
	.DB $01		;6849
	.DB $03		;684a
	.DB $02		;684b
	.DB $07		;684c
	.DB $02		;684d
	.DB $0f		;684e
	.DB $03		;684f
	.DB $1f		;6850
	.DB $84		;6851
	.DB $00		;6852
	.DB $1c		;6853
	.DB $7e		;6854
	.DB $7f		;6855
	.DB $0c		;6856
	.DB $ff		;6857
	.DB $06		;6858
	.DB $00		;6859
	.DB $83		;685a
	.DB $c0		;685b
	.DB $f8		;685c
	.DB $fc		;685d
	.DB $02		;685e
	.DB $fe		;685f
	.DB $82		;6860
	.DB $fc		;6861
	.DB $fe		;6862
	.DB $03		;6863
	.DB $ff		;6864
	.DB $82		;6865
	.DB $0f		;6866
	.DB $ff		;6867
	.DB $03		;6868
	.DB $3f		;6869
	.DB $05		;686a
	.DB $7f		;686b
	.DB $83		;686c
	.DB $7b		;686d
	.DB $79		;686e
	.DB $7e		;686f
	.DB $02		;6870
	.DB $7f		;6871
	.DB $81		;6872
	.DB $3f		;6873
	.DB $0d		;6874
	.DB $ff		;6875
	.DB $83		;6876
	.DB $7f		;6877
	.DB $e7		;6878
	.DB $ff		;6879
	.DB $03		;687a
	.DB $f0		;687b
	.DB $03		;687c
	.DB $f8		;687d
	.DB $03		;687e
	.DB $fc		;687f
	.DB $82		;6880
	.DB $fe		;6881
	.DB $ff		;6882
	.DB $02		;6883
	.DB $bf		;6884
	.DB $84		;6885
	.DB $2f		;6886
	.DB $ef		;6887
	.DB $cf		;6888
	.DB $ff		;6889
	.DB $02		;688a
	.DB $1f		;688b
	.DB $81		;688c
	.DB $7f		;688d
	.DB $02		;688e
	.DB $ff		;688f
	.DB $83		;6890
	.DB $7f		;6891
	.DB $3f		;6892
	.DB $03		;6893
	.DB $07		;6894
	.DB $00		;6895
	.DB $05		;6896
	.DB $ff		;6897
	.DB $81		;6898
	.DB $fd		;6899
	.DB $02		;689a
	.DB $ff		;689b
	.DB $81		;689c
	.DB $fe		;689d
	.DB $0c		;689e
	.DB $00		;689f
	.DB $84		;68a0
	.DB $01		;68a1
	.DB $03		;68a2
	.DB $07		;68a3
	.DB $0f		;68a4
	.DB $02		;68a5
	.DB $1f		;68a6
	.DB $81		;68a7
	.DB $3f		;68a8
	.DB $02		;68a9
	.DB $1f		;68aa
	.DB $02		;68ab
	.DB $0f		;68ac
	.DB $08		;68ad
	.DB $ff		;68ae
	.DB $88		;68af
	.DB $7f		;68b0
	.DB $7d		;68b1
	.DB $7c		;68b2
	.DB $7e		;68b3
	.DB $7d		;68b4
	.DB $7c		;68b5
	.DB $3e		;68b6
	.DB $1f		;68b7
	.DB $03		;68b8
	.DB $00		;68b9
	.DB $83		;68ba
	.DB $18		;68bb
	.DB $3c		;68bc
	.DB $7e		;68bd
	.DB $02		;68be
	.DB $7f		;68bf
	.DB $81		;68c0
	.DB $3f		;68c1
	.DB $03		;68c2
	.DB $7f		;68c3
	.DB $03		;68c4
	.DB $ff		;68c5
	.DB $81		;68c6
	.DB $5f		;68c7
	.DB $06		;68c8
	.DB $00		;68c9
	.DB $83		;68ca
	.DB $c0		;68cb
	.DB $f0		;68cc
	.DB $f8		;68cd
	.DB $02		;68ce
	.DB $fc		;68cf
	.DB $83		;68d0
	.DB $d8		;68d1
	.DB $e0		;68d2
	.DB $fc		;68d3
	.DB $02		;68d4
	.DB $ff		;68d5
	.DB $03		;68d6
	.DB $03		;68d7
	.DB $06		;68d8
	.DB $07		;68d9
	.DB $81		;68da
	.DB $03		;68db
	.DB $02		;68dc
	.DB $00		;68dd
	.DB $84		;68de
	.DB $01		;68df
	.DB $07		;68e0
	.DB $01		;68e1
	.DB $00		;68e2
	.DB $05		;68e3
	.DB $ff		;68e4
	.DB $02		;68e5
	.DB $3f		;68e6
	.DB $82		;68e7
	.DB $df		;68e8
	.DB $f7		;68e9
	.DB $02		;68ea
	.DB $ff		;68eb
	.DB $81		;68ec
	.DB $3f		;68ed
	.DB $03		;68ee
	.DB $ff		;68ef
	.DB $81		;68f0
	.DB $1f		;68f1
	.DB $05		;68f2
	.DB $f0		;68f3
	.DB $86		;68f4
	.DB $f8		;68f5
	.DB $fc		;68f6
	.DB $dc		;68f7
	.DB $ac		;68f8
	.DB $dc		;68f9
	.DB $fc		;68fa
	.DB $03		;68fb
	.DB $fe		;68fc
	.DB $83		;68fd
	.DB $ef		;68fe
	.DB $86		;68ff
	.DB $00		;6900
	.DB $02		;6901
	.DB $03		;6902
	.DB $03		;6903
	.DB $07		;6904
	.DB $82		;6905
	.DB $1f		;6906
	.DB $3f		;6907
	.DB $03		;6908
	.DB $7f		;6909
	.DB $81		;690a
	.DB $1f		;690b
	.DB $07		;690c
	.DB $3f		;690d
	.DB $87		;690e
	.DB $1d		;690f
	.DB $1f		;6910
	.DB $0c		;6911
	.DB $0f		;6912
	.DB $0e		;6913
	.DB $0f		;6914
	.DB $07		;6915
	.DB $05		;6916
	.DB $03		;6917
	.DB $86		;6918
	.DB $01		;6919
	.DB $60		;691a
	.DB $f0		;691b
	.DB $fe		;691c
	.DB $ff		;691d
	.DB $7f		;691e
	.DB $03		;691f
	.DB $ff		;6920
	.DB $03		;6921
	.DB $1f		;6922
	.DB $85		;6923
	.DB $1b		;6924
	.DB $19		;6925
	.DB $1e		;6926
	.DB $0f		;6927
	.DB $01		;6928
	.DB $03		;6929
	.DB $00		;692a
	.DB $82		;692b
	.DB $c0		;692c
	.DB $e0		;692d
	.DB $04		;692e
	.DB $f0		;692f
	.DB $87		;6930
	.DB $f8		;6931
	.DB $f0		;6932
	.DB $6c		;6933
	.DB $f4		;6934
	.DB $fe		;6935
	.DB $67		;6936
	.DB $fb		;6937
	.DB $02		;6938
	.DB $00		;6939
	.DB $81		;693a
	.DB $01		;693b
	.DB $03		;693c
	.DB $03		;693d
	.DB $81		;693e
	.DB $0f		;693f
	.DB $03		;6940
	.DB $1f		;6941
	.DB $81		;6942
	.DB $0f		;6943
	.DB $02		;6944
	.DB $1f		;6945
	.DB $03		;6946
	.DB $0f		;6947
	.DB $02		;6948
	.DB $00		;6949
	.DB $81		;694a
	.DB $0e		;694b
	.DB $03		;694c
	.DB $0f		;694d
	.DB $8a		;694e
	.DB $1f		;694f
	.DB $0f		;6950
	.DB $07		;6951
	.DB $0f		;6952
	.DB $0d		;6953
	.DB $0c		;6954
	.DB $0f		;6955
	.DB $07		;6956
	.DB $00		;6957
	.DB $03		;6958
	.DB $03		;6959
	.DB $00		;695a
	.DB $82		;695b
	.DB $80		;695c
	.DB $e0		;695d
	.DB $02		;695e
	.DB $f0		;695f
	.DB $81		;6960
	.DB $f8		;6961
	.DB $03		;6962
	.DB $fc		;6963
	.DB $85		;6964
	.DB $ff		;6965
	.DB $d7		;6966
	.DB $fe		;6967
	.DB $77		;6968
	.DB $fb		;6969
	.DB $0a		;696a
	.DB $00		;696b
	.DB $88		;696c
	.DB $70		;696d
	.DB $78		;696e
	.DB $7c		;696f
	.DB $3c		;6970
	.DB $18		;6971
	.DB $00		;6972
	.DB $08		;6973
	.DB $f8		;6974
	.DB $04		;6975
	.DB $fc		;6976
	.DB $83		;6977
	.DB $fe		;6978
	.DB $7e		;6979
	.DB $9c		;697a
	.DB $07		;697b
	.DB $00		;697c
	.DB $06		;697d
	.DB $fc		;697e
	.DB $82		;697f
	.DB $7c		;6980
	.DB $38		;6981
	.DB $0f		;6982
	.DB $00		;6983
	.DB $82		;6984
	.DB $01		;6985
	.DB $03		;6986
	.DB $02		;6987
	.DB $07		;6988
	.DB $02		;6989
	.DB $0f		;698a
	.DB $03		;698b
	.DB $1f		;698c
	.DB $83		;698d
	.DB $00		;698e
	.DB $1c		;698f
	.DB $7e		;6990
	.DB $0d		;6991
	.DB $ff		;6992
	.DB $06		;6993
	.DB $00		;6994
	.DB $83		;6995
	.DB $c0		;6996
	.DB $f8		;6997
	.DB $fc		;6998
	.DB $02		;6999
	.DB $fe		;699a
	.DB $82		;699b
	.DB $fc		;699c
	.DB $fe		;699d
	.DB $03		;699e
	.DB $ff		;699f
	.DB $82		;69a0
	.DB $0f		;69a1
	.DB $ff		;69a2
	.DB $04		;69a3
	.DB $3f		;69a4
	.DB $04		;69a5
	.DB $7f		;69a6
	.DB $02		;69a7
	.DB $79		;69a8
	.DB $81		;69a9
	.DB $7e		;69aa
	.DB $02		;69ab
	.DB $7f		;69ac
	.DB $81		;69ad
	.DB $3f		;69ae
	.DB $0d		;69af
	.DB $ff		;69b0
	.DB $83		;69b1
	.DB $7f		;69b2
	.DB $e7		;69b3
	.DB $ff		;69b4
	.DB $03		;69b5
	.DB $f0		;69b6
	.DB $03		;69b7
	.DB $f8		;69b8
	.DB $03		;69b9
	.DB $fc		;69ba
	.DB $82		;69bb
	.DB $fe		;69bc
	.DB $ff		;69bd
	.DB $02		;69be
	.DB $bf		;69bf
	.DB $84		;69c0
	.DB $2f		;69c1
	.DB $ef		;69c2
	.DB $cf		;69c3
	.DB $ff		;69c4
	.DB $02		;69c5
	.DB $1f		;69c6
	.DB $81		;69c7
	.DB $7f		;69c8
	.DB $02		;69c9
	.DB $ff		;69ca
	.DB $83		;69cb
	.DB $7f		;69cc
	.DB $3f		;69cd
	.DB $03		;69ce
	.DB $07		;69cf
	.DB $00		;69d0
	.DB $05		;69d1
	.DB $ff		;69d2
	.DB $81		;69d3
	.DB $fd		;69d4
	.DB $02		;69d5
	.DB $ff		;69d6
	.DB $81		;69d7
	.DB $fe		;69d8
	.DB $07		;69d9
	.DB $00		;69da
	.DB $82		;69db
	.DB $01		;69dc
	.DB $03		;69dd
	.DB $04		;69de
	.DB $07		;69df
	.DB $84		;69e0
	.DB $0f		;69e1
	.DB $1f		;69e2
	.DB $3f		;69e3
	.DB $7f		;69e4
	.DB $04		;69e5
	.DB $ff		;69e6
	.DB $84		;69e7
	.DB $7f		;69e8
	.DB $0f		;69e9
	.DB $e0		;69ea
	.DB $f0		;69eb
	.DB $03		;69ec
	.DB $f8		;69ed
	.DB $81		;69ee
	.DB $fe		;69ef
	.DB $0a		;69f0
	.DB $ff		;69f1
	.DB $07		;69f2
	.DB $00		;69f3
	.DB $81		;69f4
	.DB $80		;69f5
	.DB $02		;69f6
	.DB $c0		;69f7
	.DB $02		;69f8
	.DB $e0		;69f9
	.DB $82		;69fa
	.DB $f0		;69fb
	.DB $f8		;69fc
	.DB $02		;69fd
	.DB $fc		;69fe
	.DB $02		;69ff
	.DB $1f		;6a00
	.DB $02		;6a01
	.DB $3f		;6a02
	.DB $04		;6a03
	.DB $7f		;6a04
	.DB $85		;6a05
	.DB $3f		;6a06
	.DB $0f		;6a07
	.DB $07		;6a08
	.DB $03		;6a09
	.DB $01		;6a0a
	.DB $03		;6a0b
	.DB $00		;6a0c
	.DB $0b		;6a0d
	.DB $ff		;6a0e
	.DB $81		;6a0f
	.DB $fe		;6a10
	.DB $02		;6a11
	.DB $ff		;6a12
	.DB $02		;6a13
	.DB $7f		;6a14
	.DB $02		;6a15
	.DB $fc		;6a16
	.DB $81		;6a17
	.DB $f8		;6a18
	.DB $02		;6a19
	.DB $fc		;6a1a
	.DB $02		;6a1b
	.DB $f8		;6a1c
	.DB $03		;6a1d
	.DB $fc		;6a1e
	.DB $84		;6a1f
	.DB $bc		;6a20
	.DB $3c		;6a21
	.DB $dc		;6a22
	.DB $1c		;6a23
	.DB $02		;6a24
	.DB $fc		;6a25
	.DB $82		;6a26
	.DB $3f		;6a27
	.DB $7f		;6a28
	.DB $04		;6a29
	.DB $ff		;6a2a
	.DB $82		;6a2b
	.DB $7f		;6a2c
	.DB $1e		;6a2d
	.DB $0e		;6a2e
	.DB $00		;6a2f
	.DB $82		;6a30
	.DB $03		;6a31
	.DB $07		;6a32
	.DB $02		;6a33
	.DB $0f		;6a34
	.DB $02		;6a35
	.DB $1f		;6a36
	.DB $82		;6a37
	.DB $0f		;6a38
	.DB $07		;6a39
	.DB $02		;6a3a
	.DB $0f		;6a3b
	.DB $08		;6a3c
	.DB $ff		;6a3d
	.DB $88		;6a3e
	.DB $7f		;6a3f
	.DB $7d		;6a40
	.DB $7c		;6a41
	.DB $7e		;6a42
	.DB $7d		;6a43
	.DB $7c		;6a44
	.DB $3e		;6a45
	.DB $1f		;6a46
	.DB $00		;6a47
l6a48h:
	.DB $0a		;6a48
	.DB $00		;6a49
	.DB $06		;6a4a
	.DB $08		;6a4b
	.DB $04		;6a4c
	.DB $00		;6a4d
	.DB $81		;6a4e
	.DB $04		;6a4f
	.DB $0a		;6a50
	.DB $14		;6a51
	.DB $81		;6a52
	.DB $10		;6a53
	.DB $0e		;6a54
	.DB $32		;6a55
	.DB $82		;6a56
	.DB $30		;6a57
	.DB $10		;6a58
	.DB $0d		;6a59
	.DB $00		;6a5a
	.DB $81		;6a5b
	.DB $22		;6a5c
	.DB $02		;6a5d
	.DB $32		;6a5e
	.DB $0e		;6a5f
	.DB $63		;6a60
	.DB $83		;6a61
	.DB $62		;6a62
	.DB $20		;6a63
	.DB $02		;6a64
	.DB $02		;6a65
	.DB $01		;6a66
	.DB $81		;6a67
	.DB $43		;6a68
	.DB $0c		;6a69
	.DB $63		;6a6a
	.DB $0c		;6a6b
	.DB $00		;6a6c
	.DB $83		;6a6d
	.DB $18		;6a6e
	.DB $14		;6a6f
	.DB $28		;6a70
	.DB $0c		;6a71
	.DB $00		;6a72
	.DB $84		;6a73
	.DB $38		;6a74
	.DB $5a		;6a75
	.DB $5c		;6a76
	.DB $2c		;6a77
	.DB $07		;6a78
	.DB $00		;6a79
	.DB $85		;6a7a
	.DB $80		;6a7b
	.DB $00		;6a7c
	.DB $e0		;6a7d
	.DB $d0		;6a7e
	.DB $d8		;6a7f
	.DB $02		;6a80
	.DB $70		;6a81
	.DB $83		;6a82
	.DB $90		;6a83
	.DB $e0		;6a84
	.DB $40		;6a85
	.DB $06		;6a86
	.DB $00		;6a87
	.DB $89		;6a88
	.DB $03		;6a89
	.DB $0e		;6a8a
	.DB $1d		;6a8b
	.DB $0f		;6a8c
	.DB $23		;6a8d
	.DB $07		;6a8e
	.DB $1b		;6a8f
	.DB $0b		;6a90
	.DB $05		;6a91
	.DB $04		;6a92
	.DB $00		;6a93
	.DB $8d		;6a94
	.DB $80		;6a95
	.DB $f0		;6a96
	.DB $20		;6a97
	.DB $a0		;6a98
	.DB $04		;6a99
	.DB $e8		;6a9a
	.DB $de		;6a9b
	.DB $ce		;6a9c
	.DB $76		;6a9d
	.DB $28		;6a9e
	.DB $9c		;6a9f
	.DB $c0		;6aa0
	.DB $40		;6aa1
	.DB $02		;6aa2
	.DB $00		;6aa3
	.DB $81		;6aa4
	.DB $01		;6aa5
	.DB $02		;6aa6
	.DB $07		;6aa7
	.DB $ab		;6aa8
	.DB $10		;6aa9
	.DB $7f		;6aaa
	.DB $3e		;6aab
	.DB $1d		;6aac
	.DB $6f		;6aad
	.DB $23		;6aae
	.DB $67		;6aaf
	.DB $3b		;6ab0
	.DB $0b		;6ab1
	.DB $0d		;6ab2
	.DB $08		;6ab3
	.DB $00		;6ab4
	.DB $60		;6ab5
	.DB $2c		;6ab6
	.DB $88		;6ab7
	.DB $fc		;6ab8
	.DB $26		;6ab9
	.DB $a0		;6aba
	.DB $07		;6abb
	.DB $e8		;6abc
	.DB $df		;6abd
	.DB $ce		;6abe
	.DB $77		;6abf
	.DB $29		;6ac0
	.DB $9e		;6ac1
	.DB $c0		;6ac2
	.DB $40		;6ac3
	.DB $03		;6ac4
	.DB $19		;6ac5
	.DB $3d		;6ac6
	.DB $57		;6ac7
	.DB $67		;6ac8
	.DB $d0		;6ac9
	.DB $7f		;6aca
	.DB $3e		;6acb
	.DB $9d		;6acc
	.DB $6f		;6acd
	.DB $23		;6ace
	.DB $e7		;6acf
	.DB $3b		;6ad0
	.DB $0b		;6ad1
	.DB $0d		;6ad2
	.DB $08		;6ad3
	.DB $0c		;6ad4
	.DB $00		;6ad5
	.DB $81		;6ad6
	.DB $30		;6ad7
	.DB $02		;6ad8
	.DB $18		;6ad9
	.DB $09		;6ada
	.DB $00		;6adb
	.DB $85		;6adc
	.DB $08		;6add
	.DB $10		;6ade
	.DB $98		;6adf
	.DB $1c		;6ae0
	.DB $78		;6ae1
	.DB $03		;6ae2
	.DB $18		;6ae3
	.DB $82		;6ae4
	.DB $80		;6ae5
	.DB $40		;6ae6
	.DB $02		;6ae7
	.DB $80		;6ae8
	.DB $88		;6ae9
	.DB $c0		;6aea
	.DB $88		;6aeb
	.DB $c8		;6aec
	.DB $cc		;6aed
	.DB $fc		;6aee
	.DB $b8		;6aef
	.DB $c0		;6af0
	.DB $40		;6af1
	.DB $03		;6af2
	.DB $c0		;6af3
	.DB $04		;6af4
	.DB $00		;6af5
	.DB $02		;6af6
	.DB $01		;6af7
	.DB $02		;6af8
	.DB $11		;6af9
	.DB $02		;6afa
	.DB $19		;6afb
	.DB $02		;6afc
	.DB $1f		;6afd
	.DB $04		;6afe
	.DB $01		;6aff
	.DB $8e		;6b00
	.DB $00		;6b01
	.DB $c0		;6b02
	.DB $e0		;6b03
	.DB $20		;6b04
	.DB $80		;6b05
	.DB $c0		;6b06
	.DB $c1		;6b07
	.DB $e2		;6b08
	.DB $c3		;6b09
	.DB $e3		;6b0a
	.DB $c3		;6b0b
	.DB $ff		;6b0c
	.DB $bf		;6b0d
	.DB $de		;6b0e
	.DB $02		;6b0f
	.DB $e0		;6b10
	.DB $82		;6b11
	.DB $a0		;6b12
	.DB $00		;6b13
	.DB $02		;6b14
	.DB $01		;6b15
	.DB $82		;6b16
	.DB $03		;6b17
	.DB $23		;6b18
	.DB $02		;6b19
	.DB $43		;6b1a
	.DB $05		;6b1b
	.DB $63		;6b1c
	.DB $03		;6b1d
	.DB $7f		;6b1e
	.DB $82		;6b1f
	.DB $03		;6b20
	.DB $3c		;6b21
	.DB $06		;6b22
	.DB $3e		;6b23
	.DB $09		;6b24
	.DB $00		;6b25
	.DB $84		;6b26
	.DB $1c		;6b27
	.DB $3e		;6b28
	.DB $32		;6b29
	.DB $79		;6b2a
	.DB $02		;6b2b
	.DB $7d		;6b2c
	.DB $87		;6b2d
	.DB $7f		;6b2e
	.DB $7d		;6b2f
	.DB $7f		;6b30
	.DB $7d		;6b31
	.DB $7f		;6b32
	.DB $7b		;6b33
	.DB $7d		;6b34
	.DB $02		;6b35
	.DB $7f		;6b36
	.DB $84		;6b37
	.DB $7b		;6b38
	.DB $7d		;6b39
	.DB $7f		;6b3a
	.DB $fe		;6b3b
	.DB $02		;6b3c
	.DB $ff		;6b3d
	.DB $88		;6b3e
	.DB $fd		;6b3f
	.DB $ff		;6b40
	.DB $7e		;6b41
	.DB $7f		;6b42
	.DB $7d		;6b43
	.DB $7f		;6b44
	.DB $7b		;6b45
	.DB $7d		;6b46
	.DB $02		;6b47
	.DB $7f		;6b48
	.DB $83		;6b49
	.DB $00		;6b4a
	.DB $30		;6b4b
	.DB $68		;6b4c
	.DB $02		;6b4d
	.DB $70		;6b4e
	.DB $82		;6b4f
	.DB $78		;6b50
	.DB $68		;6b51
	.DB $02		;6b52
	.DB $78		;6b53
	.DB $83		;6b54
	.DB $68		;6b55
	.DB $7c		;6b56
	.DB $77		;6b57
	.DB $03		;6b58
	.DB $7f		;6b59
	.DB $81		;6b5a
	.DB $1f		;6b5b
	.DB $02		;6b5c
	.DB $00		;6b5d
	.DB $82		;6b5e
	.DB $0c		;6b5f
	.DB $1a		;6b60
	.DB $02		;6b61
	.DB $1c		;6b62
	.DB $87		;6b63
	.DB $1e		;6b64
	.DB $1a		;6b65
	.DB $1e		;6b66
	.DB $fa		;6b67
	.DB $fe		;6b68
	.DB $fc		;6b69
	.DB $f0		;6b6a
	.DB $3d		;6b6b
	.DB $00		;6b6c
	.DB $87		;6b6d
	.DB $04		;6b6e
	.DB $08		;6b6f
	.DB $10		;6b70
	.DB $20		;6b71
	.DB $40		;6b72
	.DB $00		;6b73
	.DB $40		;6b74
	.DB $09		;6b75
	.DB $00		;6b76
	.DB $87		;6b77
	.DB $20		;6b78
	.DB $10		;6b79
	.DB $08		;6b7a
	.DB $04		;6b7b
	.DB $02		;6b7c
	.DB $00		;6b7d
	.DB $02		;6b7e
	.DB $10		;6b7f
	.DB $10		;6b80
	.DB $07		;6b81
	.DB $00		;6b82
	.DB $87		;6b83
	.DB $01		;6b84
	.DB $02		;6b85
	.DB $04		;6b86
	.DB $08		;6b87
	.DB $10		;6b88
	.DB $20		;6b89
	.DB $00		;6b8a
	.DB $02		;6b8b
	.DB $40		;6b8c
	.DB $06		;6b8d
	.DB $00		;6b8e
	.DB $81		;6b8f
	.DB $40		;6b90
	.DB $0f		;6b91
	.DB $00		;6b92
	.DB $81		;6b93
	.DB $02		;6b94
	.DB $10		;6b95
	.DB $00		;6b96
	.DB $87		;6b97
	.DB $80		;6b98
	.DB $40		;6b99
	.DB $20		;6b9a
	.DB $10		;6b9b
	.DB $08		;6b9c
	.DB $04		;6b9d
	.DB $00		;6b9e
	.DB $02		;6b9f
	.DB $02		;6ba0
	.DB $10		;6ba1
	.DB $14		;6ba2
	.DB $85		;6ba3
	.DB $00		;6ba4
	.DB $c3		;6ba5
	.DB $7c		;6ba6
	.DB $c0		;6ba7
	.DB $80		;6ba8
	.DB $0b		;6ba9
	.DB $00		;6baa
	.DB $86		;6bab
	.DB $71		;6bac
	.DB $69		;6bad
	.DB $ff		;6bae
	.DB $df		;6baf
	.DB $6e		;6bb0
	.DB $c6		;6bb1
	.DB $0a		;6bb2
	.DB $00		;6bb3
	.DB $86		;6bb4
	.DB $24		;6bb5
	.DB $08		;6bb6
	.DB $30		;6bb7
	.DB $c3		;6bb8
	.DB $7f		;6bb9
	.DB $94		;6bba
	.DB $0a		;6bbb
	.DB $00		;6bbc
	.DB $86		;6bbd
	.DB $80		;6bbe
	.DB $c0		;6bbf
	.DB $70		;6bc0
	.DB $01		;6bc1
	.DB $f3		;6bc2
	.DB $df		;6bc3
	.DB $0a		;6bc4
	.DB $00		;6bc5
	.DB $86		;6bc6
	.DB $b0		;6bc7
	.DB $20		;6bc8
	.DB $30		;6bc9
	.DB $0c		;6bca
	.DB $3f		;6bcb
	.DB $7b		;6bcc
	.DB $0a		;6bcd
	.DB $00		;6bce
	.DB $85		;6bcf
	.DB $1f		;6bd0
	.DB $3f		;6bd1
	.DB $07		;6bd2
	.DB $1e		;6bd3
	.DB $0e		;6bd4
	.DB $10		;6bd5
	.DB $00		;6bd6
	.DB $85		;6bd7
	.DB $c9		;6bd8
	.DB $64		;6bd9
	.DB $30		;6bda
	.DB $a0		;6bdb
	.DB $80		;6bdc
	.DB $02		;6bdd
	.DB $00		;6bde
	.DB $86		;6bdf
	.DB $60		;6be0
	.DB $2c		;6be1
	.DB $a4		;6be2
	.DB $00		;6be3
	.DB $02		;6be4
	.DB $8a		;6be5
	.DB $02		;6be6
	.DB $c8		;6be7
	.DB $85		;6be8
	.DB $e8		;6be9
	.DB $f0		;6bea
	.DB $f6		;6beb
	.DB $ff		;6bec
	.DB $8f		;6bed
	.DB $02		;6bee
	.DB $c7		;6bef
	.DB $8f		;6bf0
	.DB $c6		;6bf1
	.DB $4e		;6bf2
	.DB $5f		;6bf3
	.DB $73		;6bf4
	.DB $3a		;6bf5
	.DB $cf		;6bf6
	.DB $67		;6bf7
	.DB $2f		;6bf8
	.DB $ff		;6bf9
	.DB $d9		;6bfa
	.DB $fc		;6bfb
	.DB $7c		;6bfc
	.DB $16		;6bfd
	.DB $0b		;6bfe
	.DB $09		;6bff
l6c00h:
	.DB $02		;6c00
	.DB $04		;6c01
	.DB $02		;6c02
	.DB $01		;6c03
	.DB $8c		;6c04
	.DB $12		;6c05
	.DB $16		;6c06
	.DB $01		;6c07
	.DB $8e		;6c08
	.DB $e0		;6c09
	.DB $c0		;6c0a
	.DB $07		;6c0b
	.DB $1f		;6c0c
	.DB $0c		;6c0d
	.DB $60		;6c0e
	.DB $c0		;6c0f
	.DB $80		;6c10
	.DB $06		;6c11
	.DB $00		;6c12
	.DB $82		;6c13
	.DB $d8		;6c14
	.DB $b8		;6c15
	.DB $02		;6c16
	.DB $7f		;6c17
	.DB $88		;6c18
	.DB $87		;6c19
	.DB $1e		;6c1a
	.DB $3e		;6c1b
	.DB $7e		;6c1c
	.DB $fc		;6c1d
	.DB $f0		;6c1e
	.DB $c4		;6c1f
	.DB $cc		;6c20
	.DB $02		;6c21
	.DB $c8		;6c22
	.DB $83		;6c23
	.DB $08		;6c24
	.DB $24		;6c25
	.DB $0c		;6c26
	.DB $02		;6c27
	.DB $06		;6c28
	.DB $8b		;6c29
	.DB $18		;6c2a
	.DB $53		;6c2b
	.DB $f7		;6c2c
	.DB $f6		;6c2d
	.DB $7e		;6c2e
	.DB $9e		;6c2f
	.DB $5f		;6c30
	.DB $49		;6c31
	.DB $9f		;6c32
	.DB $bf		;6c33
	.DB $8a		;6c34
	.DB $02		;6c35
	.DB $0f		;6c36
	.DB $02		;6c37
	.DB $00		;6c38
	.DB $86		;6c39
	.DB $02		;6c3a
	.DB $0c		;6c3b
	.DB $64		;6c3c
	.DB $38		;6c3d
	.DB $d0		;6c3e
	.DB $e0		;6c3f
	.DB $02		;6c40
	.DB $40		;6c41
	.DB $02		;6c42
	.DB $80		;6c43
	.DB $06		;6c44
	.DB $00		;6c45
	.DB $8e		;6c46
	.DB $40		;6c47
	.DB $c0		;6c48
	.DB $a0		;6c49
	.DB $58		;6c4a
	.DB $99		;6c4b
	.DB $1e		;6c4c
	.DB $18		;6c4d
	.DB $1f		;6c4e
	.DB $07		;6c4f
	.DB $31		;6c50
	.DB $fd		;6c51
	.DB $3e		;6c52
	.DB $de		;6c53
	.DB $0e		;6c54
	.DB $04		;6c55
	.DB $00		;6c56
	.DB $8c		;6c57
	.DB $01		;6c58
	.DB $00		;6c59
	.DB $06		;6c5a
	.DB $07		;6c5b
	.DB $03		;6c5c
	.DB $09		;6c5d
	.DB $1d		;6c5e
	.DB $ce		;6c5f
	.DB $c6		;6c60
	.DB $56		;6c61
	.DB $27		;6c62
	.DB $1d		;6c63
	.DB $06		;6c64
	.DB $00		;6c65
	.DB $82		;6c66
	.DB $10		;6c67
	.DB $20		;6c68
	.DB $02		;6c69
	.DB $c0		;6c6a
	.DB $85		;6c6b
	.DB $80		;6c6c
	.DB $00		;6c6d
	.DB $20		;6c6e
	.DB $c0		;6c6f
	.DB $40		;6c70
	.DB $04		;6c71
	.DB $00		;6c72
	.DB $8d		;6c73
	.DB $80		;6c74
	.DB $00		;6c75
	.DB $38		;6c76
	.DB $7c		;6c77
	.DB $c4		;6c78
	.DB $87		;6c79
	.DB $9f		;6c7a
	.DB $71		;6c7b
	.DB $62		;6c7c
	.DB $63		;6c7d
	.DB $26		;6c7e
	.DB $3c		;6c7f
	.DB $d8		;6c80
	.DB $03		;6c81
	.DB $00		;6c82
	.DB $87		;6c83
	.DB $0b		;6c84
	.DB $11		;6c85
	.DB $00		;6c86
	.DB $19		;6c87
	.DB $11		;6c88
	.DB $30		;6c89
	.DB $38		;6c8a
	.DB $03		;6c8b
	.DB $30		;6c8c
	.DB $83		;6c8d
	.DB $10		;6c8e
	.DB $8c		;6c8f
	.DB $0c		;6c90
	.DB $24		;6c91
	.DB $00		;6c92
	.DB $82		;6c93
	.DB $03		;6c94
	.DB $07		;6c95
	.DB $02		;6c96
	.DB $03		;6c97
	.DB $92		;6c98
	.DB $07		;6c99
	.DB $0f		;6c9a
	.DB $26		;6c9b
	.DB $2c		;6c9c
	.DB $3c		;6c9d
	.DB $18		;6c9e
	.DB $3e		;6c9f
	.DB $1e		;6ca0
	.DB $1f		;6ca1
	.DB $0f		;6ca2
	.DB $0e		;6ca3
	.DB $f8		;6ca4
	.DB $f2		;6ca5
	.DB $f0		;6ca6
	.DB $e2		;6ca7
	.DB $ee		;6ca8
	.DB $b0		;6ca9
	.DB $20		;6caa
	.DB $05		;6cab
	.DB $00		;6cac
	.DB $82		;6cad
	.DB $80		;6cae
	.DB $40		;6caf
	.DB $02		;6cb0
	.DB $60		;6cb1
	.DB $87		;6cb2
	.DB $40		;6cb3
	.DB $3f		;6cb4
	.DB $1f		;6cb5
	.DB $04		;6cb6
	.DB $5e		;6cb7
	.DB $47		;6cb8
	.DB $01		;6cb9
	.DB $07		;6cba
	.DB $00		;6cbb
	.DB $9c		;6cbc
	.DB $40		;6cbd
	.DB $78		;6cbe
	.DB $f0		;6cbf
	.DB $c0		;6cc0
	.DB $b0		;6cc1
	.DB $00		;6cc2
	.DB $48		;6cc3
	.DB $c4		;6cc4
	.DB $f8		;6cc5
	.DB $7f		;6cc6
	.DB $07		;6cc7
	.DB $85		;6cc8
	.DB $41		;6cc9
	.DB $0f		;6cca
	.DB $03		;6ccb
	.DB $0e		;6ccc
	.DB $8f		;6ccd
	.DB $ee		;6cce
	.DB $d0		;6ccf
	.DB $11		;6cd0
	.DB $7e		;6cd1
	.DB $3f		;6cd2
	.DB $3e		;6cd3
	.DB $7e		;6cd4
	.DB $7d		;6cd5
	.DB $79		;6cd6
	.DB $18		;6cd7
	.DB $10		;6cd8
	.DB $02		;6cd9
	.DB $03		;6cda
	.DB $81		;6cdb
	.DB $01		;6cdc
	.DB $04		;6cdd
	.DB $00		;6cde
	.DB $81		;6cdf
	.DB $c0		;6ce0
	.DB $04		;6ce1
	.DB $00		;6ce2
	.DB $87		;6ce3
	.DB $80		;6ce4
	.DB $e0		;6ce5
	.DB $c0		;6ce6
	.DB $1e		;6ce7
	.DB $e7		;6ce8
	.DB $e0		;6ce9
	.DB $7f		;6cea
	.DB $0b		;6ceb
	.DB $00		;6cec
	.DB $8c		;6ced
	.DB $06		;6cee
	.DB $04		;6cef
	.DB $00		;6cf0
	.DB $79		;6cf1
	.DB $e8		;6cf2
	.DB $47		;6cf3
	.DB $1f		;6cf4
	.DB $5f		;6cf5
	.DB $1d		;6cf6
	.DB $23		;6cf7
	.DB $6b		;6cf8
	.DB $62		;6cf9
	.DB $02		;6cfa
	.DB $64		;6cfb
	.DB $82		;6cfc
	.DB $88		;6cfd
	.DB $5c		;6cfe
	.DB $02		;6cff
	.DB $78		;6d00
	.DB $81		;6d01
	.DB $b0		;6d02
	.DB $02		;6d03
	.DB $00		;6d04
	.DB $81		;6d05
	.DB $7e		;6d06
	.DB $02		;6d07
	.DB $e7		;6d08
	.DB $81		;6d09
	.DB $ff		;6d0a
	.DB $02		;6d0b
	.DB $e7		;6d0c
	.DB $81		;6d0d
	.DB $00		;6d0e
	.DB $05		;6d0f
	.DB $e0		;6d10
	.DB $81		;6d11
	.DB $ff		;6d12
	.DB $03		;6d13
	.DB $00		;6d14
	.DB $8d		;6d15
	.DB $3e		;6d16
	.DB $60		;6d17
	.DB $66		;6d18
	.DB $3e		;6d19
	.DB $00		;6d1a
	.DB $3c		;6d1b
	.DB $66		;6d1c
	.DB $3c		;6d1d
	.DB $00		;6d1e
	.DB $3c		;6d1f
	.DB $7e		;6d20
	.DB $66		;6d21
	.DB $00		;6d22
	.DB $02		;6d23
	.DB $60		;6d24
	.DB $81		;6d25
	.DB $7e		;6d26
	.DB $02		;6d27
	.DB $00		;6d28
	.DB $02		;6d29
	.DB $18		;6d2a
	.DB $81		;6d2b
	.DB $00		;6d2c
	.DB $02		;6d2d
	.DB $18		;6d2e
	.DB $81		;6d2f
	.DB $00		;6d30
	.DB $02		;6d31
	.DB $18		;6d32
	.DB $83		;6d33
	.DB $00		;6d34
	.DB $10		;6d35
	.DB $18		;6d36
	.DB $03		;6d37
	.DB $00		;6d38
	.DB $00		;6d39
	.DB $08		;6d3a
	.DB $00		;6d3b
	.DB $02		;6d3c
	.DB $18		;6d3d
	.DB $06		;6d3e
	.DB $08		;6d3f
	.DB $02		;6d40
	.DB $00		;6d41
	.DB $82		;6d42
	.DB $18		;6d43
	.DB $3c		;6d44
	.DB $0b		;6d45
	.DB $1c		;6d46
	.DB $81		;6d47
	.DB $18		;6d48
	.DB $0e		;6d49
	.DB $36		;6d4a
	.DB $82		;6d4b
	.DB $34		;6d4c
	.DB $10		;6d4d
	.DB $0a		;6d4e
	.DB $00		;6d4f
	.DB $81		;6d50
	.DB $1c		;6d51
	.DB $03		;6d52
	.DB $3e		;6d53
	.DB $02		;6d54
	.DB $36		;6d55
	.DB $0e		;6d56
	.DB $67		;6d57
	.DB $83		;6d58
	.DB $66		;6d59
	.DB $24		;6d5a
	.DB $3e		;6d5b
	.DB $03		;6d5c
	.DB $7f		;6d5d
	.DB $0c		;6d5e
	.DB $67		;6d5f
	.DB $0c		;6d60
	.DB $00		;6d61
	.DB $83		;6d62
	.DB $18		;6d63
	.DB $14		;6d64
	.DB $28		;6d65
	.DB $0b		;6d66
	.DB $00		;6d67
	.DB $85		;6d68
	.DB $08		;6d69
	.DB $38		;6d6a
	.DB $5a		;6d6b
	.DB $5c		;6d6c
	.DB $2c		;6d6d
	.DB $07		;6d6e
	.DB $00		;6d6f
	.DB $82		;6d70
	.DB $80		;6d71
	.DB $a0		;6d72
	.DB $02		;6d73
	.DB $f0		;6d74
	.DB $81		;6d75
	.DB $d8		;6d76
	.DB $02		;6d77
	.DB $70		;6d78
	.DB $83		;6d79
	.DB $90		;6d7a
	.DB $e0		;6d7b
	.DB $40		;6d7c
	.DB $06		;6d7d
	.DB $00		;6d7e
	.DB $89		;6d7f
	.DB $03		;6d80
	.DB $0f		;6d81
	.DB $1d		;6d82
	.DB $0f		;6d83
	.DB $23		;6d84
	.DB $07		;6d85
	.DB $1b		;6d86
	.DB $0b		;6d87
	.DB $05		;6d88
	.DB $04		;6d89
	.DB $00		;6d8a
	.DB $8d		;6d8b
	.DB $a0		;6d8c
	.DB $f0		;6d8d
	.DB $60		;6d8e
	.DB $f4		;6d8f
	.DB $bc		;6d90
	.DB $fc		;6d91
	.DB $fe		;6d92
	.DB $ce		;6d93
	.DB $76		;6d94
	.DB $28		;6d95
	.DB $9c		;6d96
	.DB $c0		;6d97
	.DB $40		;6d98
	.DB $02		;6d99
	.DB $00		;6d9a
	.DB $81		;6d9b
	.DB $01		;6d9c
	.DB $02		;6d9d
	.DB $07		;6d9e
	.DB $ab		;6d9f
	.DB $11		;6da0
	.DB $7f		;6da1
	.DB $3f		;6da2
	.DB $1d		;6da3
	.DB $6f		;6da4
	.DB $23		;6da5
	.DB $67		;6da6
	.DB $3b		;6da7
	.DB $0b		;6da8
	.DB $0d		;6da9
	.DB $08		;6daa
	.DB $00		;6dab
	.DB $60		;6dac
	.DB $3c		;6dad
	.DB $b8		;6dae
	.DB $fc		;6daf
	.DB $66		;6db0
	.DB $f4		;6db1
	.DB $bf		;6db2
	.DB $fc		;6db3
	.DB $ff		;6db4
	.DB $ce		;6db5
	.DB $77		;6db6
	.DB $29		;6db7
	.DB $9e		;6db8
	.DB $c0		;6db9
	.DB $40		;6dba
	.DB $03		;6dbb
	.DB $19		;6dbc
	.DB $3d		;6dbd
	.DB $57		;6dbe
	.DB $67		;6dbf
	.DB $d1		;6dc0
	.DB $7f		;6dc1
	.DB $3f		;6dc2
	.DB $9d		;6dc3
	.DB $6f		;6dc4
	.DB $23		;6dc5
	.DB $e7		;6dc6
	.DB $3b		;6dc7
	.DB $0b		;6dc8
	.DB $0d		;6dc9
	.DB $08		;6dca
	.DB $0b		;6dcb
	.DB $00		;6dcc
	.DB $82		;6dcd
	.DB $10		;6dce
	.DB $30		;6dcf
	.DB $02		;6dd0
	.DB $18		;6dd1
	.DB $09		;6dd2
	.DB $00		;6dd3
	.DB $85		;6dd4
	.DB $08		;6dd5
	.DB $18		;6dd6
	.DB $da		;6dd7
	.DB $1c		;6dd8
	.DB $78		;6dd9
	.DB $03		;6dda
	.DB $18		;6ddb
	.DB $81		;6ddc
	.DB $80		;6ddd
	.DB $03		;6dde
	.DB $c0		;6ddf
	.DB $81		;6de0
	.DB $c8		;6de1
	.DB $03		;6de2
	.DB $cc		;6de3
	.DB $82		;6de4
	.DB $fc		;6de5
	.DB $f8		;6de6
	.DB $05		;6de7
	.DB $c0		;6de8
	.DB $04		;6de9
	.DB $00		;6dea
	.DB $82		;6deb
	.DB $01		;6dec
	.DB $11		;6ded
	.DB $04		;6dee
	.DB $19		;6def
	.DB $02		;6df0
	.DB $1f		;6df1
	.DB $04		;6df2
	.DB $01		;6df3
	.DB $82		;6df4
	.DB $00		;6df5
	.DB $c0		;6df6
	.DB $04		;6df7
	.DB $e0		;6df8
	.DB $05		;6df9
	.DB $e3		;6dfa
	.DB $02		;6dfb
	.DB $ff		;6dfc
	.DB $81		;6dfd
	.DB $fe		;6dfe
	.DB $03		;6dff
	.DB $e0		;6e00
	.DB $81		;6e01
	.DB $00		;6e02
	.DB $02		;6e03
	.DB $01		;6e04
	.DB $81		;6e05
	.DB $03		;6e06
	.DB $08		;6e07
	.DB $63		;6e08
	.DB $03		;6e09
	.DB $7f		;6e0a
	.DB $81		;6e0b
	.DB $03		;6e0c
	.DB $07		;6e0d
	.DB $3e		;6e0e
	.DB $09		;6e0f
	.DB $00		;6e10
	.DB $81		;6e11
	.DB $1c		;6e12
	.DB $02		;6e13
	.DB $3e		;6e14
	.DB $0f		;6e15
	.DB $7f		;6e16
	.DB $05		;6e17
	.DB $ff		;6e18
	.DB $08		;6e19
	.DB $7f		;6e1a
	.DB $82		;6e1b
	.DB $00		;6e1c
	.DB $30		;6e1d
	.DB $08		;6e1e
	.DB $78		;6e1f
	.DB $81		;6e20
	.DB $7c		;6e21
	.DB $04		;6e22
	.DB $7f		;6e23
	.DB $81		;6e24
	.DB $1f		;6e25
	.DB $02		;6e26
	.DB $00		;6e27
	.DB $81		;6e28
	.DB $0c		;6e29
	.DB $06		;6e2a
	.DB $1e		;6e2b
	.DB $02		;6e2c
	.DB $fe		;6e2d
	.DB $82		;6e2e
	.DB $fc		;6e2f
	.DB $f0		;6e30
	.DB $0e		;6e31
	.DB $00		;6e32
	.DB $82		;6e33
	.DB $18		;6e34
	.DB $30		;6e35
	.DB $0e		;6e36
	.DB $00		;6e37
	.DB $82		;6e38
	.DB $18		;6e39
	.DB $0c		;6e3a
	.DB $1d		;6e3b
	.DB $00		;6e3c
	.DB $87		;6e3d
	.DB $04		;6e3e
	.DB $08		;6e3f
	.DB $13		;6e40
	.DB $26		;6e41
	.DB $4c		;6e42
	.DB $18		;6e43
	.DB $50		;6e44
	.DB $09		;6e45
	.DB $00		;6e46
	.DB $87		;6e47
	.DB $20		;6e48
	.DB $10		;6e49
	.DB $c8		;6e4a
	.DB $64		;6e4b
	.DB $32		;6e4c
	.DB $18		;6e4d
	.DB $0a		;6e4e
	.DB $10		;6e4f
	.DB $10		;6e50
	.DB $07		;6e51
	.DB $00		;6e52
	.DB $89		;6e53
	.DB $01		;6e54
	.DB $02		;6e55
	.DB $04		;6e56
	.DB $09		;6e57
	.DB $13		;6e58
	.DB $27		;6e59
	.DB $0e		;6e5a
	.DB $48		;6e5b
	.DB $40		;6e5c
	.DB $06		;6e5d
	.DB $00		;6e5e
	.DB $86		;6e5f
	.DB $40		;6e60
	.DB $00		;6e61
	.DB $70		;6e62
	.DB $e0		;6e63
	.DB $c0		;6e64
	.DB $80		;6e65
	.DB $0a		;6e66
	.DB $00		;6e67
	.DB $86		;6e68
	.DB $02		;6e69
	.DB $00		;6e6a
	.DB $0e		;6e6b
	.DB $07		;6e6c
	.DB $03		;6e6d
	.DB $01		;6e6e
	.DB $0b		;6e6f
	.DB $00		;6e70
	.DB $89		;6e71
	.DB $80		;6e72
	.DB $40		;6e73
	.DB $20		;6e74
	.DB $90		;6e75
	.DB $c8		;6e76
	.DB $e4		;6e77
	.DB $70		;6e78
	.DB $12		;6e79
	.DB $02		;6e7a
	.DB $10		;6e7b
	.DB $14		;6e7c
	.DB $85		;6e7d
	.DB $f8		;6e7e
	.DB $3c		;6e7f
	.DB $40		;6e80
	.DB $c0		;6e81
	.DB $80		;6e82
	.DB $0b		;6e83
	.DB $00		;6e84
	.DB $02		;6e85
	.DB $be		;6e86
	.DB $84		;6e87
	.DB $6e		;6e88
	.DB $d1		;6e89
	.DB $6e		;6e8a
	.DB $c6		;6e8b
	.DB $0a		;6e8c
	.DB $00		;6e8d
	.DB $84		;6e8e
	.DB $03		;6e8f
	.DB $57		;6e90
	.DB $0f		;6e91
	.DB $3c		;6e92
	.DB $0c		;6e93
	.DB $00		;6e94
	.DB $85		;6e95
	.DB $0c		;6e96
	.DB $18		;6e97
	.DB $8d		;6e98
	.DB $fe		;6e99
	.DB $0c		;6e9a
	.DB $0b		;6e9b
	.DB $00		;6e9c
	.DB $86		;6e9d
	.DB $c7		;6e9e
	.DB $d4		;6e9f
	.DB $cd		;6ea0
	.DB $f1		;6ea1
	.DB $e0		;6ea2
	.DB $70		;6ea3
	.DB $0a		;6ea4
	.DB $00		;6ea5
	.DB $85		;6ea6
	.DB $04		;6ea7
	.DB $4e		;6ea8
	.DB $7f		;6ea9
	.DB $01		;6eaa
	.DB $0f		;6eab
	.DB $0e		;6eac
	.DB $00		;6ead
	.DB $86		;6eae
	.DB $80		;6eaf
	.DB $fc		;6eb0
	.DB $36		;6eb1
	.DB $9a		;6eb2
	.DB $c8		;6eb3
	.DB $40		;6eb4
	.DB $03		;6eb5
	.DB $00		;6eb6
	.DB $8d		;6eb7
	.DB $60		;6eb8
	.DB $2c		;6eb9
	.DB $24		;6eba
	.DB $e0		;6ebb
	.DB $f2		;6ebc
	.DB $fa		;6ebd
	.DB $f8		;6ebe
	.DB $fc		;6ebf
	.DB $ff		;6ec0
	.DB $7f		;6ec1
	.DB $39		;6ec2
	.DB $24		;6ec3
	.DB $72		;6ec4
	.DB $02		;6ec5
	.DB $3e		;6ec6
	.DB $91		;6ec7
	.DB $3c		;6ec8
	.DB $ba		;6ec9
	.DB $23		;6eca
	.DB $8c		;6ecb
	.DB $f5		;6ecc
	.DB $c7		;6ecd
	.DB $e1		;6ece
	.DB $f0		;6ecf
	.DB $f9		;6ed0
	.DB $3f		;6ed1
	.DB $07		;6ed2
	.DB $83		;6ed3
	.DB $69		;6ed4
	.DB $74		;6ed5
	.DB $36		;6ed6
	.DB $f3		;6ed7
	.DB $33		;6ed8
	.DB $02		;6ed9
	.DB $66		;6eda
	.DB $9e		;6edb
	.DB $05		;6edc
	.DB $61		;6edd
	.DB $3f		;6ede
	.DB $f3		;6edf
	.DB $df		;6ee0
	.DB $3f		;6ee1
	.DB $f8		;6ee2
	.DB $e0		;6ee3
	.DB $f3		;6ee4
	.DB $86		;6ee5
	.DB $00		;6ee6
	.DB $1c		;6ee7
	.DB $3f		;6ee8
	.DB $3c		;6ee9
	.DB $38		;6eea
	.DB $10		;6eeb
	.DB $3e		;6eec
	.DB $24		;6eed
	.DB $d7		;6eee
	.DB $8e		;6eef
	.DB $3d		;6ef0
	.DB $73		;6ef1
	.DB $7a		;6ef2
	.DB $fb		;6ef3
	.DB $fd		;6ef4
	.DB $e1		;6ef5
	.DB $c3		;6ef6
	.DB $c7		;6ef7
	.DB $63		;6ef8
	.DB $03		;6ef9
	.DB $02		;6efa
	.DB $07		;6efb
	.DB $88		;6efc
	.DB $c6		;6efd
	.DB $c3		;6efe
	.DB $0c		;6eff
	.DB $06		;6f00
	.DB $1e		;6f01
	.DB $3f		;6f02
	.DB $3e		;6f03
	.DB $4e		;6f04
	.DB $02		;6f05
	.DB $6d		;6f06
	.DB $88		;6f07
	.DB $0d		;6f08
	.DB $84		;6f09
	.DB $8f		;6f0a
	.DB $19		;6f0b
	.DB $b3		;6f0c
	.DB $87		;6f0d
	.DB $0b		;6f0e
	.DB $09		;6f0f
	.DB $03		;6f10
	.DB $00		;6f11
	.DB $85		;6f12
	.DB $0c		;6f13
	.DB $64		;6f14
	.DB $38		;6f15
	.DB $d0		;6f16
	.DB $e0		;6f17
	.DB $02		;6f18
	.DB $40		;6f19
	.DB $02		;6f1a
	.DB $80		;6f1b
	.DB $06		;6f1c
	.DB $00		;6f1d
	.DB $81		;6f1e
	.DB $60		;6f1f
	.DB $02		;6f20
	.DB $70		;6f21
	.DB $8b		;6f22
	.DB $c8		;6f23
	.DB $89		;6f24
	.DB $1e		;6f25
	.DB $10		;6f26
	.DB $1f		;6f27
	.DB $07		;6f28
	.DB $31		;6f29
	.DB $fd		;6f2a
	.DB $3e		;6f2b
	.DB $de		;6f2c
	.DB $ee		;6f2d
	.DB $04		;6f2e
	.DB $00		;6f2f
	.DB $8c		;6f30
	.DB $01		;6f31
	.DB $03		;6f32
	.DB $09		;6f33
	.DB $08		;6f34
	.DB $1c		;6f35
	.DB $1f		;6f36
	.DB $f3		;6f37
	.DB $f0		;6f38
	.DB $7a		;6f39
	.DB $1a		;6f3a
	.DB $03		;6f3b
	.DB $1c		;6f3c
	.DB $03		;6f3d
	.DB $00		;6f3e
	.DB $02		;6f3f
	.DB $04		;6f40
	.DB $83		;6f41
	.DB $0e		;6f42
	.DB $1a		;6f43
	.DB $2a		;6f44
	.DB $02		;6f45
	.DB $d3		;6f46
	.DB $81		;6f47
	.DB $91		;6f48
	.DB $03		;6f49
	.DB $00		;6f4a
	.DB $82		;6f4b
	.DB $80		;6f4c
	.DB $de		;6f4d
	.DB $03		;6f4e
	.DB $00		;6f4f
	.DB $88		;6f50
	.DB $80		;6f51
	.DB $e0		;6f52
	.DB $c8		;6f53
	.DB $c4		;6f54
	.DB $f8		;6f55
	.DB $fb		;6f56
	.DB $e0		;6f57
	.DB $5e		;6f58
	.DB $02		;6f59
	.DB $7c		;6f5a
	.DB $83		;6f5b
	.DB $39		;6f5c
	.DB $33		;6f5d
	.DB $d7		;6f5e
	.DB $03		;6f5f
	.DB $00		;6f60
	.DB $81		;6f61
	.DB $08		;6f62
	.DB $02		;6f63
	.DB $19		;6f64
	.DB $83		;6f65
	.DB $01		;6f66
	.DB $11		;6f67
	.DB $28		;6f68
	.DB $04		;6f69
	.DB $20		;6f6a
	.DB $83		;6f6b
	.DB $00		;6f6c
	.DB $8c		;6f6d
	.DB $0c		;6f6e
	.DB $27		;6f6f
	.DB $00		;6f70
	.DB $81		;6f71
	.DB $04		;6f72
	.DB $02		;6f73
	.DB $00		;6f74
	.DB $81		;6f75
	.DB $01		;6f76
	.DB $02		;6f77
	.DB $03		;6f78
	.DB $83		;6f79
	.DB $07		;6f7a
	.DB $01		;6f7b
	.DB $21		;6f7c
	.DB $03		;6f7d
	.DB $00		;6f7e
	.DB $81		;6f7f
	.DB $04		;6f80
	.DB $02		;6f81
	.DB $0c		;6f82
	.DB $8a		;6f83
	.DB $1c		;6f84
	.DB $10		;6f85
	.DB $0e		;6f86
	.DB $ce		;6f87
	.DB $b8		;6f88
	.DB $5a		;6f89
	.DB $00		;6f8a
	.DB $30		;6f8b
	.DB $06		;6f8c
	.DB $7c		;6f8d
	.DB $04		;6f8e
	.DB $00		;6f8f
	.DB $02		;6f90
	.DB $40		;6f91
	.DB $8a		;6f92
	.DB $63		;6f93
	.DB $21		;6f94
	.DB $30		;6f95
	.DB $34		;6f96
	.DB $3b		;6f97
	.DB $39		;6f98
	.DB $0f		;6f99
	.DB $77		;6f9a
	.DB $26		;6f9b
	.DB $f7		;6f9c
	.DB $06		;6f9d
	.DB $00		;6f9e
	.DB $8a		;6f9f
	.DB $80		;6fa0
	.DB $90		;6fa1
	.DB $18		;6fa2
	.DB $00		;6fa3
	.DB $80		;6fa4
	.DB $f8		;6fa5
	.DB $7a		;6fa6
	.DB $be		;6fa7
	.DB $40		;6fa8
	.DB $6c		;6fa9
	.DB $02		;6faa
	.DB $70		;6fab
	.DB $85		;6fac
	.DB $11		;6fad
	.DB $03		;6fae
	.DB $02		;6faf
	.DB $01		;6fb0
	.DB $00		;6fb1
	.DB $02		;6fb2
	.DB $01		;6fb3
	.DB $02		;6fb4
	.DB $02		;6fb5
	.DB $05		;6fb6
	.DB $00		;6fb7
	.DB $92		;6fb8
	.DB $18		;6fb9
	.DB $3c		;6fba
	.DB $6c		;6fbb
	.DB $78		;6fbc
	.DB $2c		;6fbd
	.DB $0c		;6fbe
	.DB $6f		;6fbf
	.DB $c2		;6fc0
	.DB $c0		;6fc1
	.DB $51		;6fc2
	.DB $1c		;6fc3
	.DB $3c		;6fc4
	.DB $01		;6fc5
	.DB $00		;6fc6
	.DB $07		;6fc7
	.DB $00		;6fc8
	.DB $bf		;6fc9
	.DB $3b		;6fca
	.DB $02		;6fcb
	.DB $01		;6fcc
	.DB $02		;6fcd
	.DB $08		;6fce
	.DB $8a		;6fcf
	.DB $1b		;6fd0
	.DB $07		;6fd1
	.DB $33		;6fd2
	.DB $e3		;6fd3
	.DB $da		;6fd4
	.DB $f9		;6fd5
	.DB $83		;6fd6
	.DB $07		;6fd7
	.DB $86		;6fd8
	.DB $00		;6fd9
	.DB $03		;6fda
	.DB $80		;6fdb
	.DB $88		;6fdc
	.DB $e2		;6fdd
	.DB $c0		;6fde
	.DB $90		;6fdf
	.DB $9c		;6fe0
	.DB $98		;6fe1
	.DB $18		;6fe2
	.DB $70		;6fe3
	.DB $a0		;6fe4
	.DB $02		;6fe5
	.DB $80		;6fe6
	.DB $33		;6fe7
	.DB $00		;6fe8
	.DB $00		;6fe9
	.DB $08		;6fea
	.DB $00		;6feb
	.DB $08		;6fec
	.DB $18		;6fed
	.DB $02		;6fee
	.DB $00		;6fef
	.DB $81		;6ff0
	.DB $18		;6ff1
	.DB $0c		;6ff2
	.DB $3c		;6ff3
	.DB $81		;6ff4
	.DB $18		;6ff5
	.DB $0e		;6ff6
	.DB $76		;6ff7
	.DB $82		;6ff8
	.DB $34		;6ff9
	.DB $10		;6ffa
	.DB $0a		;6ffb
	.DB $00		;6ffc
	.DB $81		;6ffd
	.DB $3c		;6ffe
	.DB $03		;6fff
	.DB $7e		;7000
	.DB $02		;7001
	.DB $76		;7002
	.DB $0e		;7003
	.DB $e7		;7004
	.DB $83		;7005
	.DB $66		;7006
	.DB $24		;7007
	.DB $7e		;7008
	.DB $03		;7009
	.DB $ff		;700a
	.DB $0c		;700b
	.DB $e7		;700c
	.DB $0c		;700d
	.DB $00		;700e
	.DB $84		;700f
	.DB $10		;7010
	.DB $2c		;7011
	.DB $3c		;7012
	.DB $38		;7013
	.DB $0a		;7014
	.DB $00		;7015
	.DB $86		;7016
	.DB $18		;7017
	.DB $04		;7018
	.DB $36		;7019
	.DB $66		;701a
	.DB $74		;701b
	.DB $38		;701c
	.DB $06		;701d
	.DB $00		;701e
	.DB $8a		;701f
	.DB $80		;7020
	.DB $a0		;7021
	.DB $10		;7022
	.DB $a0		;7023
	.DB $d0		;7024
	.DB $80		;7025
	.DB $d0		;7026
	.DB $90		;7027
	.DB $a0		;7028
	.DB $80		;7029
	.DB $06		;702a
	.DB $00		;702b
	.DB $02		;702c
	.DB $01		;702d
	.DB $88		;702e
	.DB $11		;702f
	.DB $18		;7030
	.DB $3c		;7031
	.DB $08		;7032
	.DB $16		;7033
	.DB $1c		;7034
	.DB $1e		;7035
	.DB $0f		;7036
	.DB $03		;7037
	.DB $00		;7038
	.DB $8d		;7039
	.DB $20		;703a
	.DB $c0		;703b
	.DB $e0		;703c
	.DB $d4		;703d
	.DB $b8		;703e
	.DB $14		;703f
	.DB $a4		;7040
	.DB $d4		;7041
	.DB $82		;7042
	.DB $dc		;7043
	.DB $98		;7044
	.DB $90		;7045
	.DB $a0		;7046
	.DB $02		;7047
	.DB $00		;7048
	.DB $ae		;7049
	.DB $02		;704a
	.DB $03		;704b
	.DB $19		;704c
	.DB $29		;704d
	.DB $75		;704e
	.DB $41		;704f
	.DB $71		;7050
	.DB $78		;7051
	.DB $7c		;7052
	.DB $48		;7053
	.DB $76		;7054
	.DB $7c		;7055
	.DB $76		;7056
	.DB $17		;7057
	.DB $80		;7058
	.DB $e0		;7059
	.DB $30		;705a
	.DB $38		;705b
	.DB $c4		;705c
	.DB $e0		;705d
	.DB $d4		;705e
	.DB $b9		;705f
	.DB $14		;7060
	.DB $a5		;7061
	.DB $d4		;7062
	.DB $83		;7063
	.DB $df		;7064
	.DB $9a		;7065
	.DB $98		;7066
	.DB $a0		;7067
	.DB $05		;7068
	.DB $07		;7069
	.DB $32		;706a
	.DB $2b		;706b
	.DB $59		;706c
	.DB $e9		;706d
	.DB $f5		;706e
	.DB $41		;706f
	.DB $71		;7070
	.DB $f8		;7071
	.DB $fc		;7072
	.DB $c8		;7073
	.DB $f6		;7074
	.DB $7c		;7075
	.DB $76		;7076
	.DB $17		;7077
	.DB $0b		;7078
	.DB $00		;7079
	.DB $82		;707a
	.DB $10		;707b
	.DB $20		;707c
	.DB $02		;707d
	.DB $28		;707e
	.DB $81		;707f
	.DB $10		;7080
	.DB $08		;7081
	.DB $00		;7082
	.DB $86		;7083
	.DB $10		;7084
	.DB $28		;7085
	.DB $62		;7086
	.DB $a2		;7087
	.DB $86		;7088
	.DB $e0		;7089
	.DB $02		;708a
	.DB $20		;708b
	.DB $82		;708c
	.DB $00		;708d
	.DB $80		;708e
	.DB $02		;708f
	.DB $40		;7090
	.DB $88		;7091
	.DB $08		;7092
	.DB $54		;7093
	.DB $14		;7094
	.DB $10		;7095
	.DB $00		;7096
	.DB $44		;7097
	.DB $38		;7098
	.DB $80		;7099
	.DB $03		;709a
	.DB $00		;709b
	.DB $82		;709c
	.DB $80		;709d
	.DB $00		;709e
	.DB $02		;709f
	.DB $01		;70a0
	.DB $82		;70a1
	.DB $02		;70a2
	.DB $12		;70a3
	.DB $02		;70a4
	.DB $2a		;70a5
	.DB $02		;70a6
	.DB $22		;70a7
	.DB $02		;70a8
	.DB $20		;70a9
	.DB $81		;70aa
	.DB $1e		;70ab
	.DB $03		;70ac
	.DB $02		;70ad
	.DB $81		;70ae
	.DB $01		;70af
	.DB $02		;70b0
	.DB $00		;70b1
	.DB $8f		;70b2
	.DB $c0		;70b3
	.DB $60		;70b4
	.DB $20		;70b5
	.DB $22		;70b6
	.DB $07		;70b7
	.DB $24		;70b8
	.DB $04		;70b9
	.DB $24		;70ba
	.DB $00		;70bb
	.DB $40		;70bc
	.DB $3f		;70bd
	.DB $1e		;70be
	.DB $00		;70bf
	.DB $40		;70c0
	.DB $01		;70c1
	.DB $02		;70c2
	.DB $03		;70c3
	.DB $82		;70c4
	.DB $06		;70c5
	.DB $46		;70c6
	.DB $02		;70c7
	.DB $e6		;70c8
	.DB $05		;70c9
	.DB $c6		;70ca
	.DB $85		;70cb
	.DB $c2		;70cc
	.DB $c0		;70cd
	.DB $fc		;70ce
	.DB $7e		;70cf
	.DB $62		;70d0
	.DB $06		;70d1
	.DB $60		;70d2
	.DB $81		;70d3
	.DB $3c		;70d4
	.DB $08		;70d5
	.DB $00		;70d6
	.DB $81		;70d7
	.DB $20		;70d8
	.DB $02		;70d9
	.DB $6c		;70da
	.DB $81		;70db
	.DB $c6		;70dc
	.DB $02		;70dd
	.DB $c2		;70de
	.DB $87		;70df
	.DB $c0		;70e0
	.DB $c2		;70e1
	.DB $c0		;70e2
	.DB $c2		;70e3
	.DB $c0		;70e4
	.DB $c4		;70e5
	.DB $c2		;70e6
	.DB $02		;70e7
	.DB $c0		;70e8
	.DB $84		;70e9
	.DB $c4		;70ea
	.DB $c2		;70eb
	.DB $c0		;70ec
	.DB $01		;70ed
	.DB $02		;70ee
	.DB $00		;70ef
	.DB $88		;70f0
	.DB $42		;70f1
	.DB $c0		;70f2
	.DB $c1		;70f3
	.DB $c0		;70f4
	.DB $c2		;70f5
	.DB $c0		;70f6
	.DB $c4		;70f7
	.DB $c2		;70f8
	.DB $02		;70f9
	.DB $c0		;70fa
	.DB $83		;70fb
	.DB $7e		;70fc
	.DB $40		;70fd
	.DB $d0		;70fe
	.DB $02		;70ff
	.DB $c8		;7100
	.DB $82		;7101
	.DB $c0		;7102
	.DB $d0		;7103
	.DB $02		;7104
	.DB $c0		;7105
	.DB $83		;7106
	.DB $d0		;7107
	.DB $c0		;7108
	.DB $c8		;7109
	.DB $02		;710a
	.DB $c0		;710b
	.DB $86		;710c
	.DB $e0		;710d
	.DB $7f		;710e
	.DB $1f		;710f
	.DB $00		;7110
	.DB $10		;7111
	.DB $34		;7112
	.DB $02		;7113
	.DB $32		;7114
	.DB $88		;7115
	.DB $30		;7116
	.DB $34		;7117
	.DB $20		;7118
	.DB $04		;7119
	.DB $02		;711a
	.DB $0e		;711b
	.DB $fc		;711c
	.DB $f0		;711d
	.DB $0b		;711e
	.DB $00		;711f
	.DB $84		;7120
	.DB $18		;7121
	.DB $20		;7122
	.DB $58		;7123
	.DB $b0		;7124
	.DB $04		;7125
	.DB $80		;7126
	.DB $08		;7127
	.DB $00		;7128
	.DB $84		;7129
	.DB $18		;712a
	.DB $04		;712b
	.DB $1a		;712c
	.DB $0d		;712d
	.DB $04		;712e
	.DB $02		;712f
	.DB $08		;7130
	.DB $10		;7131
	.DB $10		;7132
	.DB $00		;7133
	.DB $88		;7134
	.DB $07		;7135
	.DB $0c		;7136
	.DB $1b		;7137
	.DB $37		;7138
	.DB $6e		;7139
	.DB $dc		;713a
	.DB $b8		;713b
	.DB $f0		;713c
	.DB $08		;713d
	.DB $00		;713e
	.DB $88		;713f
	.DB $e0		;7140
	.DB $30		;7141
	.DB $d8		;7142
	.DB $ec		;7143
	.DB $76		;7144
	.DB $3b		;7145
	.DB $1d		;7146
	.DB $0f		;7147
	.DB $10		;7148
	.DB $30		;7149
	.DB $06		;714a
	.DB $00		;714b
	.DB $8a		;714c
	.DB $01		;714d
	.DB $03		;714e
	.DB $06		;714f
	.DB $0d		;7150
	.DB $1b		;7151
	.DB $37		;7152
	.DB $6f		;7153
	.DB $5e		;7154
	.DB $d8		;7155
	.DB $d0		;7156
	.DB $05		;7157
	.DB $00		;7158
	.DB $87		;7159
	.DB $70		;715a
	.DB $c0		;715b
	.DB $70		;715c
	.DB $f0		;715d
	.DB $e0		;715e
	.DB $c0		;715f
	.DB $80		;7160
	.DB $09		;7161
	.DB $00		;7162
	.DB $87		;7163
	.DB $0e		;7164
	.DB $03		;7165
	.DB $0e		;7166
	.DB $0f		;7167
	.DB $07		;7168
	.DB $03		;7169
	.DB $01		;716a
	.DB $0a		;716b
	.DB $00		;716c
	.DB $8a		;716d
	.DB $80		;716e
	.DB $c0		;716f
	.DB $60		;7170
	.DB $b0		;7171
	.DB $d8		;7172
	.DB $ec		;7173
	.DB $f6		;7174
	.DB $7a		;7175
	.DB $1b		;7176
	.DB $0b		;7177
	.DB $10		;7178
	.DB $34		;7179
	.DB $87		;717a
	.DB $f8		;717b
	.DB $ff		;717c
	.DB $fc		;717d
	.DB $e0		;717e
	.DB $c0		;717f
	.DB $f8		;7180
	.DB $f0		;7181
	.DB $09		;7182
	.DB $00		;7183
	.DB $02		;7184
	.DB $bf		;7185
	.DB $05		;7186
	.DB $ff		;7187
	.DB $09		;7188
	.DB $00		;7189
	.DB $88		;718a
	.DB $23		;718b
	.DB $57		;718c
	.DB $3f		;718d
	.DB $ff		;718e
	.DB $78		;718f
	.DB $6b		;7190
	.DB $ff		;7191
	.DB $fc		;7192
	.DB $08		;7193
	.DB $00		;7194
	.DB $83		;7195
	.DB $8c		;7196
	.DB $d8		;7197
	.DB $fd		;7198
	.DB $02		;7199
	.DB $ff		;719a
	.DB $81		;719b
	.DB $fe		;719c
	.DB $02		;719d
	.DB $ff		;719e
	.DB $08		;719f
	.DB $00		;71a0
	.DB $88		;71a1
	.DB $f7		;71a2
	.DB $f4		;71a3
	.DB $cd		;71a4
	.DB $f5		;71a5
	.DB $e7		;71a6
	.DB $ff		;71a7
	.DB $7f		;71a8
	.DB $01		;71a9
	.DB $08		;71aa
	.DB $00		;71ab
	.DB $86		;71ac
	.DB $1f		;71ad
	.DB $7f		;71ae
	.DB $ff		;71af
	.DB $7f		;71b0
	.DB $3f		;71b1
	.DB $0f		;71b2
	.DB $0d		;71b3
	.DB $00		;71b4
	.DB $91		;71b5
	.DB $80		;71b6
	.DB $fc		;71b7
	.DB $ff		;71b8
	.DB $fe		;71b9
	.DB $f8		;71ba
	.DB $f0		;71bb
	.DB $e0		;71bc
	.DB $80		;71bd
	.DB $c0		;71be
	.DB $f0		;71bf
	.DB $fe		;71c0
	.DB $ff		;71c1
	.DB $fc		;71c2
	.DB $fe		;71c3
	.DB $fa		;71c4
	.DB $f8		;71c5
	.DB $fc		;71c6
	.DB $09		;71c7
	.DB $ff		;71c8
	.DB $81		;71c9
	.DB $7f		;71ca
	.DB $02		;71cb
	.DB $ff		;71cc
	.DB $82		;71cd
	.DB $cf		;71ce
	.DB $e7		;71cf
	.DB $03		;71d0
	.DB $ff		;71d1
	.DB $82		;71d2
	.DB $cf		;71d3
	.DB $eb		;71d4
	.DB $02		;71d5
	.DB $7f		;71d6
	.DB $83		;71d7
	.DB $3f		;71d8
	.DB $f7		;71d9
	.DB $37		;71da
	.DB $02		;71db
	.DB $66		;71dc
	.DB $83		;71dd
	.DB $15		;71de
	.DB $71		;71df
	.DB $3f		;71e0
	.DB $06		;71e1
	.DB $ff		;71e2
	.DB $8c		;71e3
	.DB $e6		;71e4
	.DB $c0		;71e5
	.DB $9c		;71e6
	.DB $3f		;71e7
	.DB $3c		;71e8
	.DB $38		;71e9
	.DB $10		;71ea
	.DB $3e		;71eb
	.DB $24		;71ec
	.DB $ff		;71ed
	.DB $fe		;71ee
	.DB $bf		;71ef
	.DB $06		;71f0
	.DB $ff		;71f1
	.DB $82		;71f2
	.DB $f7		;71f3
	.DB $e7		;71f4
	.DB $03		;71f5
	.DB $cf		;71f6
	.DB $83		;71f7
	.DB $ce		;71f8
	.DB $e7		;71f9
	.DB $3f		;71fa
	.DB $02		;71fb
	.DB $1f		;71fc
	.DB $82		;71fd
	.DB $3f		;71fe
	.DB $7f		;71ff
	.DB $05		;7200
	.DB $ff		;7201
	.DB $83		;7202
	.DB $df		;7203
	.DB $99		;7204
	.DB $bf		;7205
	.DB $02		;7206
	.DB $8f		;7207
	.DB $81		;7208
	.DB $0f		;7209
	.DB $02		;720a
	.DB $00		;720b
	.DB $84		;720c
	.DB $02		;720d
	.DB $0c		;720e
	.DB $7c		;720f
	.DB $f8		;7210
	.DB $02		;7211
	.DB $f0		;7212
	.DB $81		;7213
	.DB $e0		;7214
	.DB $02		;7215
	.DB $c0		;7216
	.DB $02		;7217
	.DB $80		;7218
	.DB $05		;7219
	.DB $00		;721a
	.DB $81		;721b
	.DB $60		;721c
	.DB $02		;721d
	.DB $f0		;721e
	.DB $82		;721f
	.DB $f8		;7220
	.DB $f9		;7221
	.DB $03		;7222
	.DB $9f		;7223
	.DB $82		;7224
	.DB $bf		;7225
	.DB $7f		;7226
	.DB $04		;7227
	.DB $ff		;7228
	.DB $04		;7229
	.DB $00		;722a
	.DB $82		;722b
	.DB $01		;722c
	.DB $03		;722d
	.DB $02		;722e
	.DB $0f		;722f
	.DB $02		;7230
	.DB $1f		;7231
	.DB $03		;7232
	.DB $ff		;7233
	.DB $83		;7234
	.DB $5f		;7235
	.DB $27		;7236
	.DB $1f		;7237
	.DB $03		;7238
	.DB $00		;7239
	.DB $02		;723a
	.DB $04		;723b
	.DB $83		;723c
	.DB $0e		;723d
	.DB $1a		;723e
	.DB $3a		;723f
	.DB $02		;7240
	.DB $f3		;7241
	.DB $83		;7242
	.DB $f1		;7243
	.DB $60		;7244
	.DB $20		;7245
	.DB $02		;7246
	.DB $c0		;7247
	.DB $81		;7248
	.DB $de		;7249
	.DB $02		;724a
	.DB $00		;724b
	.DB $84		;724c
	.DB $80		;724d
	.DB $e0		;724e
	.DB $f0		;724f
	.DB $f8		;7250
	.DB $02		;7251
	.DB $fc		;7252
	.DB $03		;7253
	.DB $ff		;7254
	.DB $83		;7255
	.DB $fe		;7256
	.DB $ff		;7257
	.DB $7f		;7258
	.DB $02		;7259
	.DB $ff		;725a
	.DB $85		;725b
	.DB $00		;725c
	.DB $06		;725d
	.DB $0f		;725e
	.DB $1b		;725f
	.DB $1d		;7260
	.DB $02		;7261
	.DB $1f		;7262
	.DB $82		;7263
	.DB $1b		;7264
	.DB $3b		;7265
	.DB $02		;7266
	.DB $39		;7267
	.DB $02		;7268
	.DB $38		;7269
	.DB $83		;726a
	.DB $f8		;726b
	.DB $df		;726c
	.DB $6f		;726d
	.DB $24		;726e
	.DB $00		;726f
	.DB $83		;7270
	.DB $03		;7271
	.DB $07		;7272
	.DB $03		;7273
	.DB $02		;7274
	.DB $07		;7275
	.DB $98		;7276
	.DB $0f		;7277
	.DB $27		;7278
l7279h:
	.DB $2f		;7279
	.DB $3f		;727a
	.DB $1f		;727b
	.DB $0f		;727c
	.DB $27		;727d
	.DB $1f		;727e
	.DB $0b		;727f
	.DB $0a		;7280
	.DB $fc		;7281
	.DB $cc		;7282
	.DB $ec		;7283
	.DB $be		;7284
	.DB $fe		;7285
	.DB $be		;7286
	.DB $ee		;7287
	.DB $b8		;7288
	.DB $5a		;7289
	.DB $00		;728a
	.DB $30		;728b
	.DB $06		;728c
	.DB $fc		;728d
	.DB $40		;728e
	.DB $02		;728f
	.DB $60		;7290
	.DB $84		;7291
	.DB $40		;7292
	.DB $47		;7293
	.DB $5f		;7294
	.DB $67		;7295
	.DB $02		;7296
	.DB $77		;7297
	.DB $8e		;7298
	.DB $35		;7299
	.DB $3b		;729a
	.DB $39		;729b
	.DB $0f		;729c
	.DB $77		;729d
	.DB $26		;729e
	.DB $f7		;729f
	.DB $00		;72a0
	.DB $40		;72a1
	.DB $78		;72a2
	.DB $f0		;72a3
	.DB $c0		;72a4
	.DB $b0		;72a5
	.DB $80		;72a6
	.DB $02		;72a7
	.DB $d8		;72a8
	.DB $81		;72a9
	.DB $f8		;72aa
	.DB $04		;72ab
	.DB $ff		;72ac
	.DB $83		;72ad
	.DB $49		;72ae
	.DB $6f		;72af
	.DB $76		;72b0
	.DB $02		;72b1
	.DB $ff		;72b2
	.DB $85		;72b3
	.DB $d3		;72b4
	.DB $03		;72b5
	.DB $7f		;72b6
	.DB $3e		;72b7
	.DB $3d		;72b8
	.DB $02		;72b9
	.DB $7f		;72ba
	.DB $83		;72bb
	.DB $7b		;72bc
	.DB $18		;72bd
	.DB $10		;72be
	.DB $02		;72bf
	.DB $03		;72c0
	.DB $8b		;72c1
	.DB $01		;72c2
	.DB $18		;72c3
	.DB $3c		;72c4
	.DB $6c		;72c5
	.DB $78		;72c6
	.DB $ec		;72c7
	.DB $0c		;72c8
	.DB $6f		;72c9
	.DB $c2		;72ca
	.DB $c0		;72cb
	.DB $d1		;72cc
	.DB $02		;72cd
	.DB $bc		;72ce
	.DB $86		;72cf
	.DB $19		;72d0
	.DB $c1		;72d1
	.DB $e7		;72d2
	.DB $7c		;72d3
	.DB $bf		;72d4
	.DB $3b		;72d5
	.DB $02		;72d6
	.DB $01		;72d7
	.DB $02		;72d8
	.DB $08		;72d9
	.DB $98		;72da
	.DB $1b		;72db
	.DB $07		;72dc
	.DB $33		;72dd
	.DB $e3		;72de
	.DB $da		;72df
	.DB $fb		;72e0
	.DB $83		;72e1
	.DB $07		;72e2
	.DB $f7		;72e3
	.DB $68		;72e4
	.DB $c3		;72e5
	.DB $98		;72e6
	.DB $c0		;72e7
	.DB $e7		;72e8
	.DB $e3		;72e9
	.DB $f3		;72ea
	.DB $fe		;72eb
	.DB $fc		;72ec
	.DB $5c		;72ed
	.DB $f8		;72ee
	.DB $b4		;72ef
	.DB $80		;72f0
	.DB $c0		;72f1
	.DB $b0		;72f2
	.DB $02		;72f3
	.DB $00		;72f4
	.DB $81		;72f5
	.DB $7e		;72f6
	.DB $02		;72f7
	.DB $e7		;72f8
	.DB $81		;72f9
	.DB $ff		;72fa
	.DB $02		;72fb
	.DB $e7		;72fc
	.DB $81		;72fd
	.DB $00		;72fe
	.DB $05		;72ff
	.DB $e0		;7300
	.DB $81		;7301
	.DB $ff		;7302
	.DB $03		;7303
	.DB $00		;7304
	.DB $8d		;7305
	.DB $3e		;7306
	.DB $60		;7307
	.DB $66		;7308
	.DB $3e		;7309
	.DB $00		;730a
	.DB $3c		;730b
	.DB $66		;730c
	.DB $3c		;730d
	.DB $00		;730e
	.DB $3c		;730f
	.DB $7e		;7310
	.DB $66		;7311
	.DB $00		;7312
	.DB $02		;7313
	.DB $60		;7314
	.DB $81		;7315
	.DB $7e		;7316
	.DB $02		;7317
	.DB $00		;7318
	.DB $02		;7319
	.DB $18		;731a
	.DB $81		;731b
	.DB $00		;731c
	.DB $02		;731d
	.DB $18		;731e
	.DB $81		;731f
	.DB $00		;7320
	.DB $02		;7321
	.DB $18		;7322
	.DB $83		;7323
	.DB $00		;7324
	.DB $10		;7325
	.DB $18		;7326
	.DB $03		;7327
	.DB $00		;7328
	.DB $00		;7329
	.DB $08		;732a
	.DB $00		;732b
	.DB $08		;732c
	.DB $18		;732d
	.DB $02		;732e
	.DB $00		;732f
	.DB $81		;7330
	.DB $18		;7331
	.DB $0c		;7332
	.DB $3c		;7333
	.DB $81		;7334
	.DB $18		;7335
	.DB $0e		;7336
	.DB $7e		;7337
	.DB $82		;7338
	.DB $3c		;7339
	.DB $18		;733a
	.DB $0a		;733b
	.DB $00		;733c
	.DB $81		;733d
	.DB $3c		;733e
	.DB $05		;733f
	.DB $7e		;7340
	.DB $0e		;7341
	.DB $ff		;7342
	.DB $83		;7343
	.DB $7e		;7344
	.DB $3c		;7345
	.DB $7e		;7346
	.DB $0f		;7347
	.DB $ff		;7348
	.DB $0c		;7349
	.DB $00		;734a
	.DB $81		;734b
	.DB $18		;734c
	.DB $02		;734d
	.DB $3c		;734e
	.DB $81		;734f
	.DB $38		;7350
	.DB $0a		;7351
	.DB $00		;7352
	.DB $82		;7353
	.DB $18		;7354
	.DB $3c		;7355
	.DB $02		;7356
	.DB $7e		;7357
	.DB $82		;7358
	.DB $7c		;7359
	.DB $38		;735a
	.DB $06		;735b
	.DB $00		;735c
	.DB $82		;735d
	.DB $80		;735e
	.DB $a0		;735f
	.DB $02		;7360
	.DB $f0		;7361
	.DB $81		;7362
	.DB $d8		;7363
	.DB $02		;7364
	.DB $f0		;7365
	.DB $83		;7366
	.DB $90		;7367
	.DB $e0		;7368
	.DB $c0		;7369
	.DB $06		;736a
	.DB $00		;736b
	.DB $86		;736c
	.DB $03		;736d
	.DB $0f		;736e
	.DB $1d		;736f
	.DB $1f		;7370
	.DB $3f		;7371
	.DB $0f		;7372
	.DB $03		;7373
	.DB $1f		;7374
	.DB $81		;7375
	.DB $0f		;7376
	.DB $03		;7377
	.DB $00		;7378
	.DB $8d		;7379
	.DB $a0		;737a
	.DB $f0		;737b
	.DB $e0		;737c
	.DB $f4		;737d
	.DB $bc		;737e
	.DB $fc		;737f
	.DB $fe		;7380
	.DB $de		;7381
	.DB $f6		;7382
	.DB $fc		;7383
	.DB $9c		;7384
	.DB $d0		;7385
	.DB $e0		;7386
	.DB $02		;7387
	.DB $00		;7388
	.DB $84		;7389
	.DB $03		;738a
	.DB $07		;738b
	.DB $1f		;738c
	.DB $39		;738d
	.DB $02		;738e
	.DB $7f		;738f
	.DB $81		;7390
	.DB $7d		;7391
	.DB $02		;7392
	.DB $7f		;7393
	.DB $81		;7394
	.DB $6f		;7395
	.DB $03		;7396
	.DB $7f		;7397
	.DB $94		;7398
	.DB $1f		;7399
	.DB $80		;739a
	.DB $e0		;739b
	.DB $3c		;739c
	.DB $b8		;739d
	.DB $fc		;739e
	.DB $e6		;739f
	.DB $f4		;73a0
	.DB $bf		;73a1
	.DB $fc		;73a2
	.DB $ff		;73a3
	.DB $de		;73a4
	.DB $f7		;73a5
	.DB $ff		;73a6
	.DB $9e		;73a7
	.DB $d8		;73a8
	.DB $e0		;73a9
	.DB $07		;73aa
	.DB $1f		;73ab
	.DB $3f		;73ac
	.DB $02		;73ad
	.DB $7f		;73ae
	.DB $84		;73af
	.DB $f9		;73b0
	.DB $ff		;73b1
	.DB $7f		;73b2
	.DB $fd		;73b3
	.DB $02		;73b4
	.DB $ff		;73b5
	.DB $82		;73b6
	.DB $ef		;73b7
	.DB $ff		;73b8
	.DB $02		;73b9
	.DB $7f		;73ba
	.DB $81		;73bb
	.DB $1f		;73bc
	.DB $0b		;73bd
	.DB $00		;73be
	.DB $82		;73bf
	.DB $10		;73c0
	.DB $30		;73c1
	.DB $02		;73c2
	.DB $38		;73c3
	.DB $81		;73c4
	.DB $10		;73c5
	.DB $08		;73c6
	.DB $00		;73c7
	.DB $86		;73c8
	.DB $18		;73c9
	.DB $38		;73ca
	.DB $fa		;73cb
	.DB $be		;73cc
	.DB $fe		;73cd
	.DB $f8		;73ce
	.DB $02		;73cf
	.DB $38		;73d0
	.DB $81		;73d1
	.DB $80		;73d2
	.DB $03		;73d3
	.DB $c0		;73d4
	.DB $81		;73d5
	.DB $c8		;73d6
	.DB $03		;73d7
	.DB $dc		;73d8
	.DB $02		;73d9
	.DB $fc		;73da
	.DB $81		;73db
	.DB $f8		;73dc
	.DB $04		;73dd
	.DB $c0		;73de
	.DB $82		;73df
	.DB $80		;73e0
	.DB $00		;73e1
	.DB $02		;73e2
	.DB $01		;73e3
	.DB $82		;73e4
	.DB $03		;73e5
	.DB $13		;73e6
	.DB $04		;73e7
	.DB $3b		;73e8
	.DB $02		;73e9
	.DB $3f		;73ea
	.DB $81		;73eb
	.DB $1f		;73ec
	.DB $03		;73ed
	.DB $03		;73ee
	.DB $82		;73ef
	.DB $01		;73f0
	.DB $c0		;73f1
	.DB $04		;73f2
	.DB $e0		;73f3
	.DB $81		;73f4
	.DB $e3		;73f5
	.DB $04		;73f6
	.DB $e7		;73f7
	.DB $03		;73f8
	.DB $ff		;73f9
	.DB $81		;73fa
	.DB $fe		;73fb
	.DB $02		;73fc
	.DB $e0		;73fd
	.DB $81		;73fe
	.DB $01		;73ff
	.DB $02		;7400
	.DB $03		;7401
	.DB $82		;7402
	.DB $07		;7403
	.DB $67		;7404
	.DB $07		;7405
	.DB $e7		;7406
	.DB $03		;7407
	.DB $ff		;7408
	.DB $81		;7409
	.DB $7f		;740a
	.DB $07		;740b
	.DB $7e		;740c
	.DB $81		;740d
	.DB $3c		;740e
	.DB $08		;740f
	.DB $00		;7410
	.DB $81		;7411
	.DB $3c		;7412
	.DB $02		;7413
	.DB $7e		;7414
	.DB $1c		;7415
	.DB $ff		;7416
	.DB $82		;7417
	.DB $7e		;7418
	.DB $70		;7419
	.DB $08		;741a
	.DB $f8		;741b
	.DB $81		;741c
	.DB $fc		;741d
	.DB $04		;741e
	.DB $ff		;741f
	.DB $84		;7420
	.DB $7f		;7421
	.DB $1f		;7422
	.DB $00		;7423
	.DB $1c		;7424
	.DB $06		;7425
	.DB $3e		;7426
	.DB $03		;7427
	.DB $fe		;7428
	.DB $82		;7429
	.DB $fc		;742a
	.DB $f0		;742b
	.DB $0b		;742c
	.DB $00		;742d
	.DB $84		;742e
	.DB $18		;742f
	.DB $38		;7430
	.DB $78		;7431
	.DB $f0		;7432
	.DB $04		;7433
	.DB $c0		;7434
	.DB $08		;7435
	.DB $00		;7436
	.DB $84		;7437
	.DB $18		;7438
	.DB $1c		;7439
	.DB $1e		;743a
	.DB $0f		;743b
	.DB $04		;743c
	.DB $03		;743d
	.DB $08		;743e
	.DB $18		;743f
	.DB $10		;7440
	.DB $00		;7441
	.DB $88		;7442
	.DB $07		;7443
	.DB $0f		;7444
	.DB $1f		;7445
	.DB $3f		;7446
	.DB $7e		;7447
	.DB $fc		;7448
	.DB $f8		;7449
	.DB $f0		;744a
	.DB $08		;744b
	.DB $00		;744c
	.DB $88		;744d
	.DB $e0		;744e
	.DB $f0		;744f
	.DB $f8		;7450
	.DB $fc		;7451
	.DB $7e		;7452
	.DB $3f		;7453
	.DB $1f		;7454
	.DB $0f		;7455
	.DB $10		;7456
	.DB $38		;7457
	.DB $06		;7458
	.DB $00		;7459
	.DB $8a		;745a
	.DB $01		;745b
	.DB $03		;745c
	.DB $07		;745d
	.DB $0f		;745e
	.DB $1f		;745f
	.DB $3f		;7460
	.DB $7f		;7461
	.DB $7e		;7462
	.DB $f8		;7463
	.DB $f0		;7464
	.DB $05		;7465
	.DB $00		;7466
	.DB $81		;7467
	.DB $70		;7468
	.DB $03		;7469
	.DB $f0		;746a
	.DB $83		;746b
	.DB $e0		;746c
	.DB $c0		;746d
	.DB $80		;746e
	.DB $09		;746f
	.DB $00		;7470
	.DB $81		;7471
	.DB $0e		;7472
	.DB $03		;7473
	.DB $0f		;7474
	.DB $83		;7475
	.DB $07		;7476
	.DB $03		;7477
	.DB $01		;7478
	.DB $0a		;7479
	.DB $00		;747a
	.DB $8a		;747b
	.DB $80		;747c
	.DB $c0		;747d
	.DB $e0		;747e
	.DB $f0		;747f
	.DB $f8		;7480
	.DB $fc		;7481
	.DB $fe		;7482
	.DB $7e		;7483
	.DB $1f		;7484
	.DB $0f		;7485
	.DB $10		;7486
	.DB $3c		;7487
	.DB $87		;7488
	.DB $f8		;7489
	.DB $ff		;748a
	.DB $fc		;748b
	.DB $e0		;748c
	.DB $c0		;748d
	.DB $f8		;748e
	.DB $f0		;748f
	.DB $09		;7490
	.DB $00		;7491
	.DB $07		;7492
	.DB $ff		;7493
	.DB $09		;7494
	.DB $00		;7495
	.DB $04		;7496
	.DB $ff		;7497
	.DB $81		;7498
	.DB $7f		;7499
	.DB $02		;749a
	.DB $ff		;749b
	.DB $81		;749c
	.DB $fc		;749d
	.DB $08		;749e
	.DB $00		;749f
	.DB $08		;74a0
	.DB $ff		;74a1
	.DB $08		;74a2
	.DB $00		;74a3
	.DB $06		;74a4
	.DB $ff		;74a5
	.DB $82		;74a6
	.DB $7f		;74a7
	.DB $01		;74a8
	.DB $08		;74a9
	.DB $00		;74aa
	.DB $86		;74ab
	.DB $1f		;74ac
	.DB $7f		;74ad
	.DB $ff		;74ae
	.DB $7f		;74af
	.DB $3f		;74b0
	.DB $0f		;74b1
	.DB $0d		;74b2
	.DB $00		;74b3
	.DB $8d		;74b4
	.DB $80		;74b5
	.DB $fc		;74b6
	.DB $ff		;74b7
	.DB $fe		;74b8
	.DB $f8		;74b9
	.DB $f0		;74ba
	.DB $e0		;74bb
	.DB $80		;74bc
	.DB $c0		;74bd
	.DB $f0		;74be
	.DB $fe		;74bf
	.DB $ff		;74c0
	.DB $fc		;74c1
	.DB $02		;74c2
	.DB $fe		;74c3
	.DB $3e		;74c4
	.DB $ff		;74c5
	.DB $81		;74c6
	.DB $3f		;74c7
	.DB $02		;74c8
	.DB $1f		;74c9
	.DB $82		;74ca
	.DB $3f		;74cb
	.DB $7f		;74cc
	.DB $05		;74cd
	.DB $ff		;74ce
	.DB $83		;74cf
	.DB $df		;74d0
	.DB $9f		;74d1
	.DB $bf		;74d2
	.DB $02		;74d3
	.DB $8f		;74d4
	.DB $81		;74d5
	.DB $0f		;74d6
	.DB $02		;74d7
	.DB $00		;74d8
	.DB $84		;74d9
	.DB $02		;74da
	.DB $0c		;74db
	.DB $7c		;74dc
	.DB $f8		;74dd
	.DB $02		;74de
	.DB $f0		;74df
	.DB $81		;74e0
	.DB $e0		;74e1
	.DB $02		;74e2
	.DB $c0		;74e3
	.DB $02		;74e4
	.DB $80		;74e5
	.DB $05		;74e6
	.DB $00		;74e7
	.DB $81		;74e8
	.DB $60		;74e9
	.DB $02		;74ea
	.DB $f0		;74eb
	.DB $82		;74ec
	.DB $f8		;74ed
	.DB $f9		;74ee
	.DB $03		;74ef
	.DB $9f		;74f0
	.DB $82		;74f1
	.DB $bf		;74f2
	.DB $7f		;74f3
	.DB $04		;74f4
	.DB $ff		;74f5
	.DB $04		;74f6
	.DB $00		;74f7
	.DB $82		;74f8
	.DB $01		;74f9
	.DB $03		;74fa
	.DB $02		;74fb
	.DB $0f		;74fc
	.DB $02		;74fd
	.DB $1f		;74fe
	.DB $06		;74ff
	.DB $ff		;7500
	.DB $03		;7501
	.DB $00		;7502
	.DB $02		;7503
	.DB $04		;7504
	.DB $83		;7505
	.DB $0e		;7506
	.DB $1e		;7507
	.DB $3e		;7508
	.DB $08		;7509
	.DB $ff		;750a
	.DB $02		;750b
	.DB $00		;750c
	.DB $84		;750d
	.DB $80		;750e
	.DB $e0		;750f
	.DB $f0		;7510
	.DB $f8		;7511
	.DB $02		;7512
	.DB $fc		;7513
	.DB $05		;7514
	.DB $ff		;7515
	.DB $81		;7516
	.DB $7f		;7517
	.DB $02		;7518
	.DB $ff		;7519
	.DB $85		;751a
	.DB $00		;751b
	.DB $06		;751c
	.DB $0f		;751d
	.DB $1b		;751e
	.DB $1d		;751f
	.DB $02		;7520
	.DB $1f		;7521
	.DB $82		;7522
	.DB $1b		;7523
	.DB $3b		;7524
	.DB $02		;7525
	.DB $39		;7526
	.DB $02		;7527
	.DB $38		;7528
	.DB $83		;7529
	.DB $f8		;752a
	.DB $ff		;752b
	.DB $7f		;752c
	.DB $24		;752d
	.DB $00		;752e
	.DB $83		;752f
	.DB $03		;7530
	.DB $07		;7531
	.DB $03		;7532
	.DB $02		;7533
	.DB $07		;7534
	.DB $85		;7535
	.DB $0f		;7536
	.DB $27		;7537
	.DB $2f		;7538
	.DB $3f		;7539
	.DB $1f		;753a
	.DB $02		;753b
	.DB $3f		;753c
	.DB $81		;753d
	.DB $1f		;753e
	.DB $02		;753f
	.DB $0f		;7540
	.DB $0d		;7541
	.DB $ff		;7542
	.DB $81		;7543
	.DB $40		;7544
sub_7545h:
	.DB $02		;7545
	.DB $e0		;7546
	.DB $81		;7547
	.DB $c0		;7548
	.DB $0c		;7549
	.DB $ff		;754a
	.DB $8a		;754b
	.DB $00		;754c
	.DB $40		;754d
	.DB $78		;754e
	.DB $f0		;754f
	.DB $c0		;7550
	.DB $b0		;7551
	.DB $80		;7552
	.DB $d8		;7553
	.DB $dc		;7554
	.DB $f8		;7555
	.DB $06		;7556
	.DB $ff		;7557
	.DB $81		;7558
	.DB $7f		;7559
	.DB $02		;755a
	.DB $ff		;755b
	.DB $83		;755c
	.DB $df		;755d
	.DB $1f		;755e
	.DB $7f		;755f
	.DB $02		;7560
	.DB $3f		;7561
	.DB $03		;7562
	.DB $7f		;7563
	.DB $82		;7564
	.DB $1f		;7565
	.DB $13		;7566
	.DB $02		;7567
	.DB $03		;7568
	.DB $81		;7569
	.DB $01		;756a
	.DB $0f		;756b
	.DB $ff		;756c
	.DB $81		;756d
	.DB $7f		;756e
	.DB $0f		;756f
	.DB $ff		;7570
	.DB $81		;7571
	.DB $e8		;7572
	.DB $06		;7573
	.DB $ff		;7574
	.DB $81		;7575
	.DB $fe		;7576
	.DB $02		;7577
	.DB $fc		;7578
	.DB $82		;7579
	.DB $f8		;757a
	.DB $fc		;757b
	.DB $02		;757c
	.DB $f8		;757d
	.DB $81		;757e
	.DB $b0		;757f
	.DB $02		;7580
	.DB $00		;7581
	.DB $0f		;7582
	.DB $ff		;7583
	.DB $81		;7584
	.DB $00		;7585
	.DB $20		;7586
	.DB $ff		;7587
	.DB $00		;7588
l7589h:
	.DB $07		;7589
	.DB $00		;758a
	.DB $81		;758b
	.DB $08		;758c
	.DB $07		;758d
	.DB $00		;758e
	.DB $81		;758f
	.DB $04		;7590
	.DB $10		;7591
	.DB $00		;7592
	.DB $82		;7593
	.DB $0c		;7594
	.DB $0e		;7595
	.DB $06		;7596
	.DB $0f		;7597
	.DB $83		;7598
	.DB $0c		;7599
	.DB $1c		;759a
	.DB $3c		;759b
	.DB $05		;759c
	.DB $fc		;759d
	.DB $05		;759e
	.DB $00		;759f
	.DB $87		;75a0
	.DB $01		;75a1
	.DB $03		;75a2
	.DB $07		;75a3
	.DB $0c		;75a4
	.DB $1c		;75a5
	.DB $3c		;75a6
	.DB $7c		;75a7
	.DB $04		;75a8
	.DB $fc		;75a9
	.DB $08		;75aa
	.DB $00		;75ab
	.DB $82		;75ac
	.DB $0c		;75ad
	.DB $0e		;75ae
	.DB $06		;75af
	.DB $0f		;75b0
	.DB $84		;75b1
	.DB $0c		;75b2
	.DB $1c		;75b3
	.DB $3c		;75b4
	.DB $7c		;75b5
	.DB $03		;75b6
	.DB $fc		;75b7
	.DB $81		;75b8
	.DB $f8		;75b9
	.DB $03		;75ba
	.DB $00		;75bb
	.DB $85		;75bc
	.DB $80		;75bd
	.DB $c1		;75be
	.DB $e3		;75bf
	.DB $f7		;75c0
	.DB $ff		;75c1
	.DB $03		;75c2
	.DB $0f		;75c3
	.DB $85		;75c4
	.DB $4f		;75c5
	.DB $cf		;75c6
	.DB $c7		;75c7
	.DB $c3		;75c8
	.DB $c1		;75c9
	.DB $08		;75ca
	.DB $fc		;75cb
	.DB $84		;75cc
	.DB $0f		;75cd
	.DB $1f		;75ce
	.DB $3f		;75cf
	.DB $7f		;75d0
	.DB $03		;75d1
	.DB $ff		;75d2
	.DB $81		;75d3
	.DB $fb		;75d4
	.DB $08		;75d5
	.DB $fc		;75d6
	.DB $84		;75d7
	.DB $0f		;75d8
	.DB $1f		;75d9
	.DB $3f		;75da
	.DB $7f		;75db
	.DB $04		;75dc
	.DB $ff		;75dd
	.DB $8c		;75de
	.DB $0f		;75df
	.DB $1f		;75e0
	.DB $3f		;75e1
	.DB $7f		;75e2
	.DB $ff		;75e3
	.DB $fe		;75e4
	.DB $fc		;75e5
	.DB $f8		;75e6
	.DB $f0		;75e7
	.DB $e0		;75e8
	.DB $c0		;75e9
	.DB $80		;75ea
	.DB $04		;75eb
	.DB $00		;75ec
	.DB $84		;75ed
	.DB $0f		;75ee
	.DB $1f		;75ef
	.DB $3f		;75f0
	.DB $7f		;75f1
	.DB $0c		;75f2
	.DB $ff		;75f3
	.DB $03		;75f4
	.DB $c0		;75f5
	.DB $87		;75f6
	.DB $c1		;75f7
	.DB $c3		;75f8
	.DB $c7		;75f9
	.DB $cf		;75fa
	.DB $df		;75fb
	.DB $fc		;75fc
	.DB $7c		;75fd
	.DB $06		;75fe
	.DB $fc		;75ff
	.DB $82		;7600
	.DB $f3		;7601
	.DB $e1		;7602
	.DB $03		;7603
	.DB $c0		;7604
	.DB $83		;7605
	.DB $c1		;7606
	.DB $c3		;7607
	.DB $c7		;7608
	.DB $03		;7609
	.DB $fc		;760a
	.DB $81		;760b
	.DB $7c		;760c
	.DB $04		;760d
	.DB $fc		;760e
	.DB $08		;760f
	.DB $ff		;7610
	.DB $82		;7611
	.DB $f0		;7612
	.DB $e0		;7613
	.DB $04		;7614
	.DB $c0		;7615
	.DB $87		;7616
	.DB $c1		;7617
	.DB $e3		;7618
	.DB $04		;7619
	.DB $0c		;761a
	.DB $1c		;761b
	.DB $3c		;761c
	.DB $7c		;761d
	.DB $03		;761e
	.DB $fc		;761f
	.DB $82		;7620
	.DB $ff		;7621
	.DB $ef		;7622
	.DB $06		;7623
	.DB $cf		;7624
	.DB $07		;7625
	.DB $ff		;7626
	.DB $81		;7627
	.DB $ef		;7628
	.DB $08		;7629
	.DB $fc		;762a
	.DB $82		;762b
	.DB $cf		;762c
	.DB $df		;762d
	.DB $0e		;762e
	.DB $ff		;762f
	.DB $08		;7630
	.DB $fc		;7631
	.DB $81		;7632
	.DB $f7		;7633
	.DB $07		;7634
	.DB $ff		;7635
	.DB $08		;7636
	.DB $fc		;7637
	.DB $08		;7638
	.DB $cf		;7639
	.DB $02		;763a
	.DB $ff		;763b
	.DB $89		;763c
	.DB $df		;763d
	.DB $cf		;763e
	.DB $ef		;763f
	.DB $f7		;7640
	.DB $df		;7641
	.DB $cf		;7642
	.DB $df		;7643
	.DB $c3		;7644
	.DB $c1		;7645
	.DB $03		;7646
	.DB $c0		;7647
	.DB $82		;7648
	.DB $c1		;7649
	.DB $c3		;764a
	.DB $04		;764b
	.DB $fc		;764c
	.DB $81		;764d
	.DB $7c		;764e
	.DB $03		;764f
	.DB $fc		;7650
	.DB $03		;7651
	.DB $ff		;7652
	.DB $89		;7653
	.DB $7f		;7654
	.DB $3f		;7655
	.DB $1e		;7656
	.DB $0c		;7657
	.DB $00		;7658
	.DB $f0		;7659
	.DB $e0		;765a
	.DB $c0		;765b
	.DB $80		;765c
	.DB $04		;765d
	.DB $00		;765e
	.DB $83		;765f
	.DB $c7		;7660
	.DB $c3		;7661
	.DB $c1		;7662
	.DB $03		;7663
	.DB $c0		;7664
	.DB $85		;7665
	.DB $c1		;7666
	.DB $c3		;7667
	.DB $c7		;7668
	.DB $c3		;7669
	.DB $c1		;766a
	.DB $05		;766b
	.DB $c0		;766c
	.DB $84		;766d
	.DB $f8		;766e
	.DB $f0		;766f
	.DB $e0		;7670
	.DB $c0		;7671
	.DB $04		;7672
	.DB $00		;7673
	.DB $81		;7674
	.DB $c7		;7675
	.DB $02		;7676
	.DB $c3		;7677
	.DB $03		;7678
	.DB $c1		;7679
	.DB $02		;767a
	.DB $c0		;767b
	.DB $85		;767c
	.DB $f8		;767d
	.DB $f0		;767e
	.DB $e0		;767f
l7680h:
	.DB $c0		;7680
	.DB $80		;7681
	.DB $03		;7682
	.DB $00		;7683
	.DB $83		;7684
	.DB $c7		;7685
	.DB $cf		;7686
	.DB $df		;7687
	.DB $03		;7688
	.DB $ff		;7689
	.DB $82		;768a
	.DB $fe		;768b
	.DB $fc		;768c
	.DB $04		;768d
	.DB $ff		;768e
	.DB $84		;768f
	.DB $7f		;7690
	.DB $3f		;7691
	.DB $1e		;7692
	.DB $0c		;7693
	.DB $04		;7694
	.DB $c0		;7695
	.DB $81		;7696
	.DB $80		;7697
	.DB $7f		;7698
	.DB $00		;7699
	.DB $7f		;769a
	.DB $00		;769b
	.DB $1d		;769c
	.DB $00		;769d
	.DB $00		;769e
	.DB $03		;769f
	.DB $00		;76a0
	.DB $85		;76a1
	.DB $01		;76a2
	.DB $03		;76a3
	.DB $07		;76a4
	.DB $0f		;76a5
	.DB $07		;76a6
	.DB $02		;76a7
	.DB $00		;76a8
	.DB $84		;76a9
	.DB $c0		;76aa
	.DB $e0		;76ab
	.DB $f0		;76ac
	.DB $f8		;76ad
	.DB $02		;76ae
	.DB $fc		;76af
	.DB $03		;76b0
	.DB $00		;76b1
	.DB $85		;76b2
	.DB $01		;76b3
	.DB $03		;76b4
	.DB $07		;76b5
	.DB $0f		;76b6
	.DB $1f		;76b7
	.DB $06		;76b8
	.DB $00		;76b9
	.DB $84		;76ba
	.DB $0c		;76bb
	.DB $1e		;76bc
	.DB $03		;76bd
	.DB $01		;76be
	.DB $06		;76bf
	.DB $00		;76c0
	.DB $03		;76c1
	.DB $fc		;76c2
	.DB $05		;76c3
	.DB $7c		;76c4
	.DB $82		;76c5
	.DB $3f		;76c6
	.DB $7f		;76c7
	.DB $06		;76c8
	.DB $ff		;76c9
	.DB $08		;76ca
	.DB $fc		;76cb
	.DB $04		;76cc
	.DB $00		;76cd
	.DB $86		;76ce
	.DB $02		;76cf
	.DB $07		;76d0
	.DB $0f		;76d1
	.DB $1f		;76d2
	.DB $03		;76d3
	.DB $01		;76d4
	.DB $04		;76d5
	.DB $00		;76d6
	.DB $82		;76d7
	.DB $80		;76d8
	.DB $c0		;76d9
	.DB $07		;76da
	.DB $fc		;76db
	.DB $8b		;76dc
	.DB $f8		;76dd
	.DB $3f		;76de
	.DB $7f		;76df
	.DB $ff		;76e0
	.DB $7f		;76e1
	.DB $3e		;76e2
	.DB $1d		;76e3
	.DB $0b		;76e4
	.DB $07		;76e5
	.DB $00		;76e6
	.DB $80		;76e7
	.DB $03		;76e8
	.DB $c0		;76e9
	.DB $83		;76ea
	.DB $c8		;76eb
	.DB $dc		;76ec
	.DB $fe		;76ed
	.DB $08		;76ee
	.DB $7c		;76ef
	.DB $05		;76f0
	.DB $ff		;76f1
	.DB $83		;76f2
	.DB $fe		;76f3
	.DB $fc		;76f4
	.DB $f8		;76f5
	.DB $04		;76f6
	.DB $fc		;76f7
	.DB $04		;76f8
	.DB $7c		;76f9
	.DB $81		;76fa
	.DB $e0		;76fb
	.DB $03		;76fc
	.DB $f0		;76fd
	.DB $03		;76fe
	.DB $f8		;76ff
	.DB $81		;7700
	.DB $fc		;7701
	.DB $05		;7702
	.DB $ff		;7703
	.DB $8b		;7704
	.DB $fe		;7705
	.DB $fc		;7706
	.DB $f9		;7707
	.DB $f0		;7708
	.DB $e0		;7709
	.DB $c0		;770a
	.DB $80		;770b
	.DB $20		;770c
	.DB $70		;770d
	.DB $f8		;770e
	.DB $fc		;770f
	.DB $05		;7710
	.DB $ff		;7711
	.DB $83		;7712
	.DB $fe		;7713
	.DB $fc		;7714
	.DB $f8		;7715
	.DB $08		;7716
	.DB $07		;7717
	.DB $08		;7718
	.DB $ff		;7719
	.DB $81		;771a
	.DB $7c		;771b
	.DB $07		;771c
	.DB $fc		;771d
	.DB $84		;771e
	.DB $f0		;771f
	.DB $e6		;7720
	.DB $cf		;7721
	.DB $df		;7722
	.DB $04		;7723
	.DB $ff		;7724
	.DB $03		;7725
	.DB $7c		;7726
	.DB $07		;7727
	.DB $fc		;7728
	.DB $03		;7729
	.DB $fe		;772a
	.DB $03		;772b
	.DB $ff		;772c
	.DB $84		;772d
	.DB $f3		;772e
	.DB $e7		;772f
	.DB $cf		;7730
	.DB $df		;7731
	.DB $03		;7732
	.DB $ff		;7733
	.DB $81		;7734
	.DB $df		;7735
	.DB $08		;7736
	.DB $fc		;7737
	.DB $82		;7738
	.DB $f0		;7739
	.DB $e0		;773a
	.DB $06		;773b
	.DB $c0		;773c
	.DB $03		;773d
	.DB $ff		;773e
	.DB $85		;773f
	.DB $fe		;7740
	.DB $fc		;7741
	.DB $f8		;7742
	.DB $f0		;7743
	.DB $e0		;7744
	.DB $02		;7745
	.DB $fc		;7746
	.DB $06		;7747
	.DB $7c		;7748
	.DB $05		;7749
	.DB $ff		;774a
	.DB $83		;774b
	.DB $fe		;774c
	.DB $fc		;774d
	.DB $f8		;774e
	.DB $08		;774f
	.DB $ff		;7750
	.DB $08		;7751
	.DB $fc		;7752
	.DB $06		;7753
	.DB $cf		;7754
	.DB $82		;7755
	.DB $ce		;7756
	.DB $cc		;7757
	.DB $05		;7758
	.DB $fc		;7759
	.DB $03		;775a
	.DB $7c		;775b
	.DB $08		;775c
	.DB $c0		;775d
	.DB $04		;775e
	.DB $ff		;775f
	.DB $82		;7760
	.DB $df		;7761
	.DB $cf		;7762
	.DB $02		;7763
	.DB $c7		;7764
	.DB $83		;7765
	.DB $c8		;7766
	.DB $dc		;7767
	.DB $fe		;7768
	.DB $05		;7769
	.DB $ff		;776a
	.DB $04		;776b
	.DB $7c		;776c
	.DB $04		;776d
	.DB $fc		;776e
	.DB $05		;776f
	.DB $07		;7770
	.DB $87		;7771
	.DB $06		;7772
	.DB $04		;7773
	.DB $00		;7774
	.DB $f0		;7775
	.DB $e0		;7776
	.DB $c0		;7777
	.DB $80		;7778
	.DB $04		;7779
	.DB $00		;777a
	.DB $83		;777b
	.DB $c8		;777c
	.DB $dc		;777d
	.DB $fe		;777e
	.DB $05		;777f
	.DB $ff		;7780
	.DB $08		;7781
	.DB $c0		;7782
	.DB $84		;7783
	.DB $78		;7784
	.DB $70		;7785
	.DB $60		;7786
	.DB $40		;7787
	.DB $04		;7788
	.DB $00		;7789
	.DB $03		;778a
	.DB $c3		;778b
	.DB $03		;778c
	.DB $c1		;778d
	.DB $02		;778e
	.DB $c0		;778f
	.DB $85		;7790
	.DB $f8		;7791
	.DB $f0		;7792
	.DB $e0		;7793
	.DB $c0		;7794
	.DB $80		;7795
	.DB $03		;7796
	.DB $00		;7797
	.DB $06		;7798
	.DB $ff		;7799
	.DB $82		;779a
	.DB $fe		;779b
	.DB $fc		;779c
	.DB $06		;779d
	.DB $07		;779e
	.DB $82		;779f
	.DB $06		;77a0
	.DB $04		;77a1
	.DB $04		;77a2
	.DB $c0		;77a3
	.DB $81		;77a4
	.DB $80		;77a5
	.DB $7f		;77a6
	.DB $00		;77a7
	.DB $7f		;77a8
	.DB $00		;77a9
	.DB $1d		;77aa
	.DB $00		;77ab
	.DB $00		;77ac
	.DB $7f		;77ad
	.DB $00		;77ae
	.DB $7f		;77af
	.DB $00		;77b0
	.DB $09		;77b1
	.DB $00		;77b2
	.DB $81		;77b3
	.DB $20		;77b4
	.DB $20		;77b5
	.DB $00		;77b6
	.DB $02		;77b7
	.DB $20		;77b8
	.DB $03		;77b9
	.DB $30		;77ba
	.DB $03		;77bb
	.DB $38		;77bc
	.DB $38		;77bd
	.DB $00		;77be
	.DB $02		;77bf
	.DB $3c		;77c0
	.DB $84		;77c1
	.DB $1c		;77c2
	.DB $0e		;77c3
	.DB $06		;77c4
	.DB $02		;77c5
	.DB $7f		;77c6
	.DB $00		;77c7
	.DB $7f		;77c8
	.DB $00		;77c9
	.DB $3c		;77ca
	.DB $00		;77cb
	.DB $00		;77cc
	.DB $7f		;77cd
	.DB $00		;77ce
	.DB $7f		;77cf
	.DB $00		;77d0
	.DB $7f		;77d1
	.DB $00		;77d2
	.DB $19		;77d3
	.DB $00		;77d4
	.DB $82		;77d5
	.DB $1f		;77d6
	.DB $3f		;77d7
	.DB $06		;77d8
	.DB $00		;77d9
	.DB $82		;77da
	.DB $ff		;77db
	.DB $fe		;77dc
	.DB $07		;77dd
	.DB $00		;77de
	.DB $81		;77df
	.DB $01		;77e0
	.DB $06		;77e1
	.DB $00		;77e2
	.DB $02		;77e3
	.DB $e0		;77e4
	.DB $06		;77e5
	.DB $00		;77e6
	.DB $02		;77e7
	.DB $38		;77e8
	.DB $06		;77e9
	.DB $00		;77ea
	.DB $82		;77eb
	.DB $07		;77ec
	.DB $0f		;77ed
	.DB $06		;77ee
	.DB $00		;77ef
	.DB $02		;77f0
	.DB $3f		;77f1
	.DB $06		;77f2
	.DB $00		;77f3
	.DB $82		;77f4
	.DB $fe		;77f5
	.DB $ff		;77f6
	.DB $06		;77f7
	.DB $00		;77f8
	.DB $02		;77f9
	.DB $38		;77fa
	.DB $06		;77fb
	.DB $00		;77fc
	.DB $82		;77fd
	.DB $07		;77fe
	.DB $1c		;77ff
l7800h:
	.DB $02		;7800
	.DB $00		;7801
l7802h:
	.DB $81		;7802
	.DB $3f		;7803
	.DB $04		;7804
	.DB $0c		;7805
	.DB $81		;7806
	.DB $1d		;7807
	.DB $02		;7808
	.DB $00		;7809
	.DB $81		;780a
	.DB $ff		;780b
l780ch:
	.DB $04		;780c
	.DB $cc		;780d
	.DB $85		;780e
	.DB $dc		;780f
	.DB $38		;7810
	.DB $70		;7811
	.DB $7f		;7812
	.DB $3f		;7813
	.DB $02		;7814
	.DB $00		;7815
	.DB $82		;7816
	.DB $7f		;7817
	.DB $ff		;7818
	.DB $02		;7819
	.DB $00		;781a
	.DB $88		;781b
	.DB $fc		;781c
	.DB $fe		;781d
	.DB $0e		;781e
	.DB $1c		;781f
	.DB $fc		;7820
	.DB $f8		;7821
	.DB $38		;7822
	.DB $70		;7823
	.DB $02		;7824
	.DB $7f		;7825
	.DB $84		;7826
	.DB $f0		;7827
	.DB $e0		;7828
	.DB $ff		;7829
	.DB $7f		;782a
	.DB $02		;782b
	.DB $00		;782c
	.DB $82		;782d
	.DB $fe		;782e
	.DB $fc		;782f
	.DB $02		;7830
	.DB $00		;7831
	.DB $83		;7832
	.DB $fc		;7833
	.DB $f8		;7834
	.DB $38		;7835
	.DB $03		;7836
	.DB $70		;7837
l7838h:
	.DB $02		;7838
	.DB $e0		;7839
	.DB $82		;783a
	.DB $ff		;783b
	.DB $7f		;783c
	.DB $02		;783d
	.DB $00		;783e
	.DB $94		;783f
	.DB $7e		;7840
	.DB $fc		;7841
	.DB $1c		;7842
	.DB $38		;7843
	.DB $f8		;7844
	.DB $f0		;7845
	.DB $03		;7846
	.DB $07		;7847
	.DB $0e		;7848
	.DB $1d		;7849
	.DB $3b		;784a
	.DB $70		;784b
	.DB $e0		;784c
	.DB $c0		;784d
l784eh:
	.DB $f0		;784e
	.DB $30		;784f
	.DB $38		;7850
	.DB $f8		;7851
	.DB $fc		;7852
	.DB $1c		;7853
	.DB $02		;7854
	.DB $0e		;7855
	.DB $03		;7856
	.DB $7c		;7857
	.DB $83		;7858
	.DB $76		;7859
	.DB $f7		;785a
	.DB $e7		;785b
	.DB $02		;785c
	.DB $e3		;785d
	.DB $88		;785e
	.DB $1e		;785f
	.DB $3e		;7860
	.DB $7e		;7861
l7862h:
	.DB $ee		;7862
	.DB $de		;7863
	.DB $dc		;7864
	.DB $9c		;7865
	.DB $1c		;7866
	.DB $02		;7867
	.DB $70		;7868
	.DB $83		;7869
	.DB $77		;786a
	.DB $73		;786b
	.DB $f1		;786c
	.DB $03		;786d
	.DB $e0		;786e
	.DB $8d		;786f
	.DB $07		;7870
	.DB $0e		;7871
	.DB $fe		;7872
	.DB $fc		;7873
	.DB $c0		;7874
	.DB $e0		;7875
	.DB $70		;7876
	.DB $38		;7877
	.DB $78		;7878
	.DB $71		;7879
	.DB $77		;787a
	.DB $73		;787b
	.DB $f1		;787c
	.DB $03		;787d
	.DB $e0		;787e
	.DB $88		;787f
l7880h:
	.DB $70		;7880
	.DB $c0		;7881
	.DB $00		;7882
	.DB $80		;7883
	.DB $c0		;7884
	.DB $e0		;7885
	.DB $78		;7886
	.DB $1c		;7887
	.DB $03		;7888
	.DB $19		;7889
	.DB $81		;788a
	.DB $3b		;788b
	.DB $03		;788c
	.DB $33		;788d
	.DB $81		;788e
	.DB $ff		;788f
	.DB $03		;7890
	.DB $98		;7891
	.DB $81		;7892
	.DB $b8		;7893
	.DB $03		;7894
	.DB $30		;7895
	.DB $84		;7896
	.DB $fc		;7897
	.DB $3c		;7898
	.DB $42		;7899
	.DB $99		;789a
	.DB $02		;789b
	.DB $a1		;789c
	.DB $8e		;789d
	.DB $99		;789e
	.DB $42		;789f
	.DB $3c		;78a0
	.DB $3f		;78a1
	.DB $7f		;78a2
	.DB $60		;78a3
	.DB $7e		;78a4
	.DB $3f		;78a5
	.DB $03		;78a6
	.DB $7f		;78a7
	.DB $7e		;78a8
	.DB $3f		;78a9
	.DB $7f		;78aa
	.DB $60		;78ab
	.DB $02		;78ac
	.DB $7e		;78ad
	.DB $82		;78ae
	.DB $60		;78af
	.DB $7f		;78b0
	.DB $02		;78b1
	.DB $3f		;78b2
	.DB $82		;78b3
	.DB $7f		;78b4
	.DB $60		;78b5
	.DB $02		;78b6
	.DB $6f		;78b7
	.DB $83		;78b8
	.DB $63		;78b9
	.DB $7f		;78ba
	.DB $3f		;78bb
	.DB $02		;78bc
	.DB $1c		;78bd
	.DB $81		;78be
	.DB $3e		;78bf
	.DB $02		;78c0
	.DB $36		;78c1
	.DB $85		;78c2
	.DB $63		;78c3
	.DB $6f		;78c4
	.DB $ef		;78c5
	.DB $00		;78c6
	.DB $7d		;78c7
	.DB $04		;78c8
	.DB $11		;78c9
	.DB $03		;78ca
	.DB $00		;78cb
	.DB $83		;78cc
	.DB $10		;78cd
	.DB $b0		;78ce
	.DB $50		;78cf
	.DB $02		;78d0
	.DB $10		;78d1
	.DB $02		;78d2
	.DB $00		;78d3
	.DB $00		;78d4
l78d5h:
	.DB $05		;78d5
	.DB $79		;78d6
	.DB $b6		;78d7
	.DB $79		;78d8
	.DB $7c		;78d9
	.DB $7a		;78da
	.DB $43		;78db
	.DB $7b		;78dc
	.DB $f6		;78dd
	.DB $7b		;78de
	.DB $af		;78df
	.DB $7c		;78e0
	.DB $6e		;78e1
	.DB $7d		;78e2
	.DB $34		;78e3
	.DB $7e		;78e4
	.DB $05		;78e5
	.DB $79		;78e6
	.DB $b6		;78e7
	.DB $79		;78e8
	.DB $7c		;78e9
	.DB $7a		;78ea
	.DB $43		;78eb
	.DB $7b		;78ec
	.DB $f6		;78ed
	.DB $7b		;78ee
	.DB $af		;78ef
	.DB $7c		;78f0
	.DB $6e		;78f1
	.DB $7d		;78f2
	.DB $34		;78f3
	.DB $7e		;78f4
	.DB $05		;78f5
	.DB $79		;78f6
	.DB $b6		;78f7
	.DB $79		;78f8
	.DB $7c		;78f9
	.DB $7a		;78fa
	.DB $43		;78fb
	.DB $7b		;78fc
	.DB $f6		;78fd
	.DB $7b		;78fe
	.DB $af		;78ff
	.DB $7c		;7900
	.DB $6e		;7901
	.DB $7d		;7902
	.DB $34		;7903
	.DB $7e		;7904
	.DB $01		;7905
	.DB $15		;7906
	.DB $81		;7907
	.DB $04		;7908
	.DB $05		;7909
	.DB $03		;790a
	.DB $14		;790b
	.DB $09		;790c
	.DB $01		;790d
	.DB $13		;790e
	.DB $81		;790f
	.DB $04		;7910
	.DB $05		;7911
	.DB $03		;7912
	.DB $16		;7913
	.DB $09		;7914
	.DB $01		;7915
	.DB $10		;7916
	.DB $21		;7917
	.DB $04		;7918
	.DB $15		;7919
	.DB $53		;791a
	.DB $1e		;791b
	.DB $19		;791c
	.DB $01		;791d
	.DB $c8		;791e
	.DB $01		;791f
	.DB $0e		;7920
	.DB $21		;7921
	.DB $08		;7922
	.DB $15		;7923
	.DB $13		;7924
	.DB $0f		;7925
	.DB $17		;7926
	.DB $12		;7927
	.DB $0f		;7928
	.DB $16		;7929
	.DB $13		;792a
	.DB $0a		;792b
	.DB $19		;792c
	.DB $21		;792d
	.DB $06		;792e
	.DB $15		;792f
	.DB $13		;7930
	.DB $04		;7931
	.DB $17		;7932
	.DB $12		;7933
	.DB $0a		;7934
	.DB $18		;7935
	.DB $01		;7936
	.DB $11		;7937
	.DB $81		;7938
	.DB $08		;7939
	.DB $05		;793a
	.DB $03		;793b
	.DB $12		;793c
	.DB $07		;793d
	.DB $42		;793e
	.DB $16		;793f
	.DB $08		;7940
	.DB $01		;7941
	.DB $c8		;7942
	.DB $01		;7943
	.DB $0b		;7944
	.DB $81		;7945
	.DB $06		;7946
	.DB $05		;7947
	.DB $03		;7948
	.DB $11		;7949
	.DB $09		;794a
	.DB $01		;794b
	.DB $09		;794c
	.DB $81		;794d
	.DB $06		;794e
	.DB $04		;794f
	.DB $02		;7950
	.DB $0a		;7951
	.DB $06		;7952
	.DB $03		;7953
	.DB $0a		;7954
	.DB $09		;7955
	.DB $81		;7956
	.DB $05		;7957
	.DB $04		;7958
	.DB $02		;7959
	.DB $0b		;795a
	.DB $08		;795b
	.DB $01		;795c
	.DB $0a		;795d
	.DB $81		;795e
	.DB $08		;795f
	.DB $05		;7960
	.DB $03		;7961
	.DB $0a		;7962
	.DB $07		;7963
	.DB $42		;7964
	.DB $14		;7965
	.DB $08		;7966
	.DB $01		;7967
	.DB $c8		;7968
	.DB $01		;7969
	.DB $0f		;796a
	.DB $21		;796b
	.DB $09		;796c
	.DB $14		;796d
	.DB $12		;796e
	.DB $0a		;796f
	.DB $18		;7970
	.DB $21		;7971
	.DB $05		;7972
	.DB $14		;7973
	.DB $12		;7974
	.DB $0a		;7975
	.DB $1a		;7976
	.DB $02		;7977
	.DB $0a		;7978
	.DB $08		;7979
	.DB $05		;797a
	.DB $07		;797b
	.DB $02		;797c
	.DB $0f		;797d
	.DB $08		;797e
	.DB $01		;797f
	.DB $12		;7980
	.DB $21		;7981
	.DB $09		;7982
	.DB $14		;7983
	.DB $52		;7984
	.DB $1e		;7985
	.DB $18		;7986
	.DB $01		;7987
	.DB $c8		;7988
	.DB $01		;7989
	.DB $0a		;798a
	.DB $81		;798b
	.DB $04		;798c
	.DB $04		;798d
	.DB $02		;798e
	.DB $0a		;798f
	.DB $08		;7990
	.DB $21		;7991
	.DB $04		;7992
	.DB $14		;7993
	.DB $12		;7994
	.DB $0a		;7995
	.DB $92		;7996
	.DB $06		;7997
	.DB $1a		;7998
	.DB $02		;7999
	.DB $05		;799a
	.DB $22		;799b
	.DB $06		;799c
	.DB $0a		;799d
	.DB $12		;799e
	.DB $05		;799f
	.DB $16		;79a0
	.DB $13		;79a1
	.DB $0a		;79a2
	.DB $19		;79a3
	.DB $01		;79a4
	.DB $05		;79a5
	.DB $81		;79a6
	.DB $06		;79a7
	.DB $05		;79a8
	.DB $03		;79a9
	.DB $05		;79aa
	.DB $07		;79ab
	.DB $02		;79ac
	.DB $04		;79ad
	.DB $22		;79ae
	.DB $06		;79af
	.DB $0a		;79b0
	.DB $52		;79b1
	.DB $12		;79b2
	.DB $18		;79b3
	.DB $01		;79b4
	.DB $c8		;79b5
	.DB $01		;79b6
	.DB $15		;79b7
	.DB $21		;79b8
	.DB $04		;79b9
	.DB $15		;79ba
	.DB $13		;79bb
	.DB $14		;79bc
	.DB $19		;79bd
	.DB $01		;79be
	.DB $0f		;79bf
	.DB $21		;79c0
	.DB $04		;79c1
	.DB $15		;79c2
	.DB $13		;79c3
	.DB $16		;79c4
	.DB $19		;79c5
	.DB $01		;79c6
	.DB $10		;79c7
	.DB $81		;79c8
	.DB $04		;79c9
	.DB $05		;79ca
	.DB $43		;79cb
	.DB $1e		;79cc
	.DB $09		;79cd
	.DB $01		;79ce
	.DB $c8		;79cf
	.DB $01		;79d0
	.DB $0b		;79d1
	.DB $21		;79d2
	.DB $06		;79d3
	.DB $15		;79d4
	.DB $13		;79d5
	.DB $11		;79d6
	.DB $19		;79d7
	.DB $01		;79d8
	.DB $09		;79d9
	.DB $21		;79da
	.DB $06		;79db
	.DB $14		;79dc
	.DB $12		;79dd
	.DB $0a		;79de
	.DB $16		;79df
	.DB $13		;79e0
	.DB $0a		;79e1
	.DB $19		;79e2
	.DB $21		;79e3
	.DB $05		;79e4
	.DB $14		;79e5
	.DB $12		;79e6
	.DB $0b		;79e7
	.DB $18		;79e8
	.DB $01		;79e9
	.DB $0a		;79ea
	.DB $21		;79eb
	.DB $08		;79ec
	.DB $15		;79ed
	.DB $13		;79ee
	.DB $0a		;79ef
	.DB $17		;79f0
	.DB $52		;79f1
	.DB $14		;79f2
	.DB $18		;79f3
	.DB $01		;79f4
	.DB $c8		;79f5
	.DB $01		;79f6
	.DB $0a		;79f7
	.DB $21		;79f8
	.DB $04		;79f9
	.DB $15		;79fa
	.DB $13		;79fb
	.DB $09		;79fc
	.DB $17		;79fd
	.DB $12		;79fe
	.DB $09		;79ff
	.DB $16		;7a00
	.DB $13		;7a01
	.DB $09		;7a02
	.DB $17		;7a03
	.DB $12		;7a04
	.DB $05		;7a05
	.DB $92		;7a06
	.DB $06		;7a07
	.DB $1a		;7a08
	.DB $02		;7a09
	.DB $08		;7a0a
	.DB $06		;7a0b
	.DB $03		;7a0c
	.DB $08		;7a0d
	.DB $09		;7a0e
	.DB $01		;7a0f
	.DB $05		;7a10
	.DB $81		;7a11
	.DB $05		;7a12
	.DB $04		;7a13
	.DB $02		;7a14
	.DB $08		;7a15
	.DB $22		;7a16
	.DB $06		;7a17
	.DB $0a		;7a18
	.DB $12		;7a19
	.DB $0e		;7a1a
	.DB $18		;7a1b
	.DB $21		;7a1c
	.DB $06		;7a1d
	.DB $14		;7a1e
	.DB $52		;7a1f
	.DB $12		;7a20
	.DB $16		;7a21
	.DB $19		;7a22
	.DB $01		;7a23
	.DB $c8		;7a24
	.DB $01		;7a25
	.DB $0a		;7a26
	.DB $21		;7a27
	.DB $06		;7a28
	.DB $14		;7a29
	.DB $12		;7a2a
	.DB $0f		;7a2b
	.DB $18		;7a2c
	.DB $21		;7a2d
	.DB $06		;7a2e
	.DB $15		;7a2f
	.DB $13		;7a30
	.DB $06		;7a31
	.DB $17		;7a32
	.DB $12		;7a33
	.DB $0a		;7a34
	.DB $18		;7a35
	.DB $81		;7a36
	.DB $04		;7a37
	.DB $04		;7a38
	.DB $02		;7a39
	.DB $0b		;7a3a
	.DB $22		;7a3b
	.DB $06		;7a3c
	.DB $0a		;7a3d
	.DB $12		;7a3e
	.DB $0a		;7a3f
l7a40h:
	.DB $92		;7a40
	.DB $05		;7a41
	.DB $1a		;7a42
	.DB $06		;7a43
	.DB $03		;7a44
	.DB $0a		;7a45
	.DB $09		;7a46
	.DB $81		;7a47
	.DB $08		;7a48
	.DB $04		;7a49
	.DB $42		;7a4a
	.DB $14		;7a4b
	.DB $08		;7a4c
	.DB $01		;7a4d
	.DB $c8		;7a4e
	.DB $01		;7a4f
	.DB $0a		;7a50
	.DB $21		;7a51
	.DB $04		;7a52
	.DB $14		;7a53
	.DB $12		;7a54
	.DB $0f		;7a55
	.DB $18		;7a56
	.DB $81		;7a57
	.DB $04		;7a58
	.DB $04		;7a59
	.DB $02		;7a5a
	.DB $0a		;7a5b
	.DB $22		;7a5c
	.DB $06		;7a5d
	.DB $0a		;7a5e
	.DB $12		;7a5f
	.DB $05		;7a60
	.DB $92		;7a61
	.DB $06		;7a62
	.DB $1a		;7a63
	.DB $02		;7a64
	.DB $08		;7a65
	.DB $06		;7a66
	.DB $03		;7a67
	.DB $0a		;7a68
	.DB $09		;7a69
	.DB $01		;7a6a
	.DB $05		;7a6b
	.DB $21		;7a6c
	.DB $06		;7a6d
	.DB $15		;7a6e
	.DB $13		;7a6f
	.DB $05		;7a70
	.DB $17		;7a71
	.DB $12		;7a72
	.DB $04		;7a73
	.DB $92		;7a74
	.DB $06		;7a75
	.DB $1a		;7a76
	.DB $42		;7a77
	.DB $12		;7a78
	.DB $08		;7a79
	.DB $01		;7a7a
	.DB $c8		;7a7b
	.DB $01		;7a7c
	.DB $0c		;7a7d
	.DB $81		;7a7e
	.DB $06		;7a7f
	.DB $05		;7a80
	.DB $03		;7a81
	.DB $0a		;7a82
	.DB $07		;7a83
	.DB $02		;7a84
	.DB $0d		;7a85
	.DB $06		;7a86
	.DB $03		;7a87
	.DB $0a		;7a88
	.DB $09		;7a89
	.DB $81		;7a8a
	.DB $06		;7a8b
	.DB $05		;7a8c
	.DB $03		;7a8d
	.DB $06		;7a8e
	.DB $07		;7a8f
	.DB $02		;7a90
	.DB $0a		;7a91
	.DB $08		;7a92
	.DB $01		;7a93
	.DB $0c		;7a94
	.DB $21		;7a95
	.DB $08		;7a96
	.DB $15		;7a97
	.DB $13		;7a98
	.DB $12		;7a99
	.DB $17		;7a9a
	.DB $52		;7a9b
	.DB $16		;7a9c
	.DB $18		;7a9d
	.DB $01		;7a9e
	.DB $c8		;7a9f
	.DB $01		;7aa0
	.DB $0a		;7aa1
	.DB $81		;7aa2
	.DB $06		;7aa3
	.DB $04		;7aa4
	.DB $02		;7aa5
	.DB $0f		;7aa6
	.DB $08		;7aa7
	.DB $81		;7aa8
	.DB $05		;7aa9
	.DB $04		;7aaa
	.DB $02		;7aab
	.DB $05		;7aac
	.DB $22		;7aad
	.DB $06		;7aae
	.DB $0a		;7aaf
	.DB $12		;7ab0
	.DB $0a		;7ab1
	.DB $18		;7ab2
	.DB $15		;7ab3
	.DB $17		;7ab4
	.DB $12		;7ab5
	.DB $0f		;7ab6
	.DB $18		;7ab7
	.DB $01		;7ab8
	.DB $0f		;7ab9
	.DB $81		;7aba
	.DB $07		;7abb
	.DB $04		;7abc
	.DB $42		;7abd
	.DB $1f		;7abe
	.DB $08		;7abf
	.DB $01		;7ac0
	.DB $c8		;7ac1
	.DB $01		;7ac2
	.DB $0a		;7ac3
	.DB $81		;7ac4
	.DB $04		;7ac5
	.DB $04		;7ac6
	.DB $02		;7ac7
	.DB $0a		;7ac8
	.DB $08		;7ac9
	.DB $81		;7aca
	.DB $06		;7acb
	.DB $05		;7acc
	.DB $03		;7acd
	.DB $04		;7ace
	.DB $07		;7acf
	.DB $02		;7ad0
	.DB $0a		;7ad1
	.DB $08		;7ad2
	.DB $21		;7ad3
	.DB $06		;7ad4
	.DB $14		;7ad5
	.DB $12		;7ad6
	.DB $0a		;7ad7
	.DB $92		;7ad8
	.DB $06		;7ad9
	.DB $1a		;7ada
	.DB $02		;7adb
	.DB $05		;7adc
	.DB $22		;7add
	.DB $05		;7ade
	.DB $0a		;7adf
	.DB $16		;7ae0
	.DB $13		;7ae1
	.DB $0a		;7ae2
	.DB $19		;7ae3
	.DB $21		;7ae4
	.DB $06		;7ae5
	.DB $14		;7ae6
	.DB $52		;7ae7
	.DB $14		;7ae8
	.DB $18		;7ae9
	.DB $01		;7aea
	.DB $c8		;7aeb
	.DB $01		;7aec
	.DB $0f		;7aed
	.DB $81		;7aee
	.DB $04		;7aef
	.DB $04		;7af0
	.DB $02		;7af1
	.DB $0f		;7af2
	.DB $22		;7af3
	.DB $05		;7af4
	.DB $0a		;7af5
	.DB $12		;7af6
	.DB $0a		;7af7
	.DB $16		;7af8
	.DB $13		;7af9
	.DB $0a		;7afa
	.DB $19		;7afb
	.DB $81		;7afc
	.DB $05		;7afd
	.DB $04		;7afe
	.DB $02		;7aff
l7b00h:
	.DB $05		;7b00
	.DB $0a		;7b01
	.DB $12		;7b02
	.DB $0a		;7b03
	.DB $18		;7b04
	.DB $01		;7b05
	.DB $0a		;7b06
	.DB $21		;7b07
	.DB $08		;7b08
	.DB $14		;7b09
	.DB $12		;7b0a
	.DB $0a		;7b0b
	.DB $92		;7b0c
	.DB $05		;7b0d
	.DB $1a		;7b0e
	.DB $42		;7b0f
	.DB $14		;7b10
	.DB $08		;7b11
	.DB $01		;7b12
	.DB $c8		;7b13
	.DB $01		;7b14
	.DB $0a		;7b15
	.DB $81		;7b16
	.DB $04		;7b17
	.DB $05		;7b18
	.DB $03		;7b19
	.DB $09		;7b1a
	.DB $07		;7b1b
	.DB $02		;7b1c
	.DB $08		;7b1d
	.DB $06		;7b1e
	.DB $03		;7b1f
	.DB $09		;7b20
	.DB $07		;7b21
	.DB $02		;7b22
	.DB $08		;7b23
	.DB $22		;7b24
	.DB $06		;7b25
	.DB $0a		;7b26
	.DB $12		;7b27
	.DB $08		;7b28
	.DB $16		;7b29
	.DB $13		;7b2a
	.DB $05		;7b2b
	.DB $19		;7b2c
	.DB $01		;7b2d
	.DB $05		;7b2e
	.DB $21		;7b2f
	.DB $05		;7b30
	.DB $14		;7b31
	.DB $12		;7b32
	.DB $05		;7b33
	.DB $92		;7b34
	.DB $06		;7b35
	.DB $1a		;7b36
	.DB $02		;7b37
	.DB $0a		;7b38
	.DB $08		;7b39
	.DB $81		;7b3a
	.DB $06		;7b3b
	.DB $04		;7b3c
	.DB $42		;7b3d
	.DB $12		;7b3e
	.DB $06		;7b3f
	.DB $09		;7b40
	.DB $01		;7b41
	.DB $c8		;7b42
	.DB $01		;7b43
	.DB $11		;7b44
	.DB $81		;7b45
	.DB $08		;7b46
	.DB $04		;7b47
	.DB $02		;7b48
	.DB $0c		;7b49
	.DB $22		;7b4a
	.DB $06		;7b4b
	.DB $0a		;7b4c
	.DB $12		;7b4d
	.DB $14		;7b4e
	.DB $16		;7b4f
	.DB $17		;7b50
	.DB $18		;7b51
	.DB $01		;7b52
	.DB $14		;7b53
	.DB $81		;7b54
	.DB $08		;7b55
	.DB $05		;7b56
	.DB $03		;7b57
	.DB $0f		;7b58
	.DB $07		;7b59
	.DB $42		;7b5a
	.DB $1e		;7b5b
	.DB $08		;7b5c
	.DB $01		;7b5d
	.DB $c8		;7b5e
	.DB $01		;7b5f
	.DB $0f		;7b60
	.DB $21		;7b61
	.DB $04		;7b62
	.DB $14		;7b63
	.DB $12		;7b64
	.DB $0f		;7b65
	.DB $92		;7b66
	.DB $05		;7b67
	.DB $1a		;7b68
	.DB $02		;7b69
	.DB $0f		;7b6a
	.DB $06		;7b6b
	.DB $03		;7b6c
	.DB $0a		;7b6d
	.DB $09		;7b6e
	.DB $21		;7b6f
	.DB $05		;7b70
	.DB $14		;7b71
	.DB $12		;7b72
	.DB $05		;7b73
	.DB $1a		;7b74
	.DB $02		;7b75
	.DB $0a		;7b76
	.DB $08		;7b77
	.DB $01		;7b78
	.DB $0a		;7b79
	.DB $81		;7b7a
	.DB $08		;7b7b
	.DB $04		;7b7c
	.DB $02		;7b7d
	.DB $0a		;7b7e
	.DB $22		;7b7f
	.DB $05		;7b80
	.DB $0a		;7b81
	.DB $52		;7b82
	.DB $14		;7b83
l7b84h:
	.DB $18		;7b84
	.DB $01		;7b85
	.DB $c8		;7b86
	.DB $01		;7b87
	.DB $0a		;7b88
	.DB $21		;7b89
	.DB $06		;7b8a
	.DB $14		;7b8b
	.DB $12		;7b8c
	.DB $0f		;7b8d
	.DB $18		;7b8e
	.DB $21		;7b8f
	.DB $06		;7b90
	.DB $15		;7b91
	.DB $13		;7b92
	.DB $06		;7b93
	.DB $17		;7b94
	.DB $12		;7b95
	.DB $0a		;7b96
	.DB $18		;7b97
	.DB $01		;7b98
	.DB $10		;7b99
	.DB $81		;7b9a
	.DB $04		;7b9b
	.DB $04		;7b9c
	.DB $02		;7b9d
	.DB $14		;7b9e
	.DB $08		;7b9f
	.DB $01		;7ba0
	.DB $0c		;7ba1
	.DB $21		;7ba2
	.DB $08		;7ba3
	.DB $15		;7ba4
	.DB $53		;7ba5
	.DB $1e		;7ba6
	.DB $19		;7ba7
	.DB $01		;7ba8
	.DB $c8		;7ba9
	.DB $01		;7baa
	.DB $1a		;7bab
	.DB $81		;7bac
	.DB $04		;7bad
	.DB $04		;7bae
	.DB $02		;7baf
	.DB $13		;7bb0
	.DB $22		;7bb1
	.DB $06		;7bb2
	.DB $0a		;7bb3
	.DB $12		;7bb4
	.DB $19		;7bb5
l7bb6h:
	.DB $16		;7bb6
	.DB $13		;7bb7
	.DB $12		;7bb8
	.DB $17		;7bb9
	.DB $12		;7bba
	.DB $12		;7bbb
	.DB $92		;7bbc
	.DB $06		;7bbd
	.DB $1a		;7bbe
	.DB $02		;7bbf
	.DB $10		;7bc0
	.DB $06		;7bc1
	.DB $43		;7bc2
	.DB $1e		;7bc3
	.DB $09		;7bc4
	.DB $01		;7bc5
	.DB $c8		;7bc6
	.DB $01		;7bc7
	.DB $0a		;7bc8
	.DB $21		;7bc9
	.DB $04		;7bca
	.DB $15		;7bcb
	.DB $13		;7bcc
	.DB $09		;7bcd
	.DB $17		;7bce
	.DB $12		;7bcf
	.DB $09		;7bd0
	.DB $16		;7bd1
	.DB $13		;7bd2
	.DB $09		;7bd3
l7bd4h:
	.DB $17		;7bd4
	.DB $12		;7bd5
	.DB $05		;7bd6
	.DB $92		;7bd7
	.DB $06		;7bd8
	.DB $1a		;7bd9
	.DB $02		;7bda
	.DB $08		;7bdb
	.DB $06		;7bdc
	.DB $03		;7bdd
	.DB $08		;7bde
	.DB $09		;7bdf
	.DB $01		;7be0
	.DB $05		;7be1
	.DB $81		;7be2
	.DB $05		;7be3
	.DB $04		;7be4
	.DB $02		;7be5
	.DB $08		;7be6
	.DB $22		;7be7
	.DB $06		;7be8
	.DB $0a		;7be9
	.DB $12		;7bea
	.DB $0e		;7beb
	.DB $18		;7bec
	.DB $21		;7bed
	.DB $06		;7bee
	.DB $14		;7bef
	.DB $52		;7bf0
	.DB $12		;7bf1
	.DB $16		;7bf2
	.DB $19		;7bf3
	.DB $01		;7bf4
	.DB $c8		;7bf5
	.DB $01		;7bf6
	.DB $0b		;7bf7
	.DB $21		;7bf8
	.DB $06		;7bf9
	.DB $15		;7bfa
	.DB $13		;7bfb
	.DB $0a		;7bfc
	.DB $19		;7bfd
	.DB $01		;7bfe
	.DB $05		;7bff
	.DB $21		;7c00
	.DB $06		;7c01
	.DB $14		;7c02
	.DB $12		;7c03
	.DB $0a		;7c04
	.DB $16		;7c05
	.DB $13		;7c06
	.DB $0a		;7c07
	.DB $19		;7c08
	.DB $21		;7c09
	.DB $05		;7c0a
	.DB $14		;7c0b
	.DB $12		;7c0c
	.DB $0b		;7c0d
	.DB $18		;7c0e
	.DB $01		;7c0f
	.DB $0a		;7c10
	.DB $21		;7c11
	.DB $08		;7c12
	.DB $15		;7c13
	.DB $13		;7c14
	.DB $0a		;7c15
	.DB $17		;7c16
	.DB $52		;7c17
	.DB $14		;7c18
	.DB $18		;7c19
	.DB $01		;7c1a
	.DB $c8		;7c1b
	.DB $01		;7c1c
	.DB $11		;7c1d
	.DB $81		;7c1e
	.DB $07		;7c1f
	.DB $04		;7c20
	.DB $02		;7c21
	.DB $18		;7c22
	.DB $22		;7c23
l7c24h:
	.DB $06		;7c24
	.DB $0a		;7c25
	.DB $16		;7c26
	.DB $13		;7c27
	.DB $14		;7c28
	.DB $19		;7c29
	.DB $01		;7c2a
	.DB $10		;7c2b
	.DB $21		;7c2c
	.DB $08		;7c2d
	.DB $15		;7c2e
	.DB $13		;7c2f
	.DB $09		;7c30
	.DB $17		;7c31
	.DB $12		;7c32
	.DB $0e		;7c33
	.DB $92		;7c34
	.DB $06		;7c35
	.DB $1a		;7c36
	.DB $42		;7c37
	.DB $14		;7c38
	.DB $08		;7c39
	.DB $01		;7c3a
	.DB $c8		;7c3b
	.DB $01		;7c3c
	.DB $0f		;7c3d
	.DB $81		;7c3e
	.DB $06		;7c3f
	.DB $05		;7c40
	.DB $03		;7c41
	.DB $0f		;7c42
	.DB $07		;7c43
	.DB $02		;7c44
	.DB $0f		;7c45
	.DB $06		;7c46
	.DB $03		;7c47
	.DB $09		;7c48
	.DB $09		;7c49
	.DB $21		;7c4a
	.DB $05		;7c4b
	.DB $14		;7c4c
	.DB $12		;7c4d
	.DB $05		;7c4e
	.DB $1a		;7c4f
	.DB $02		;7c50
	.DB $05		;7c51
	.DB $08		;7c52
	.DB $01		;7c53
	.DB $0b		;7c54
	.DB $21		;7c55
	.DB $04		;7c56
	.DB $14		;7c57
	.DB $12		;7c58
	.DB $09		;7c59
	.DB $16		;7c5a
	.DB $53		;7c5b
	.DB $1e		;7c5c
	.DB $19		;7c5d
	.DB $01		;7c5e
	.DB $c8		;7c5f
	.DB $01		;7c60
	.DB $12		;7c61
	.DB $81		;7c62
	.DB $04		;7c63
	.DB $04		;7c64
	.DB $02		;7c65
	.DB $12		;7c66
	.DB $22		;7c67
	.DB $06		;7c68
	.DB $0a		;7c69
	.DB $12		;7c6a
	.DB $14		;7c6b
	.DB $16		;7c6c
	.DB $13		;7c6d
	.DB $0a		;7c6e
	.DB $17		;7c6f
	.DB $12		;7c70
	.DB $14		;7c71
	.DB $18		;7c72
	.DB $81		;7c73
	.DB $06		;7c74
	.DB $04		;7c75
	.DB $02		;7c76
	.DB $0c		;7c77
	.DB $06		;7c78
	.DB $03		;7c79
	.DB $0a		;7c7a
	.DB $07		;7c7b
	.DB $42		;7c7c
	.DB $14		;7c7d
	.DB $08		;7c7e
	.DB $01		;7c7f
	.DB $c8		;7c80
	.DB $01		;7c81
	.DB $0a		;7c82
	.DB $81		;7c83
	.DB $05		;7c84
	.DB $05		;7c85
	.DB $03		;7c86
	.DB $0a		;7c87
	.DB $07		;7c88
	.DB $02		;7c89
	.DB $0a		;7c8a
	.DB $22		;7c8b
	.DB $06		;7c8c
	.DB $0a		;7c8d
	.DB $12		;7c8e
	.DB $05		;7c8f
	.DB $16		;7c90
	.DB $13		;7c91
	.DB $05		;7c92
	.DB $19		;7c93
	.DB $01		;7c94
	.DB $08		;7c95
	.DB $21		;7c96
	.DB $04		;7c97
	.DB $14		;7c98
	.DB $12		;7c99
	.DB $0a		;7c9a
	.DB $16		;7c9b
	.DB $13		;7c9c
	.DB $05		;7c9d
	.DB $17		;7c9e
	.DB $12		;7c9f
	.DB $07		;7ca0
	.DB $92		;7ca1
l7ca2h:
	.DB $06		;7ca2
	.DB $1a		;7ca3
	.DB $02		;7ca4
	.DB $0a		;7ca5
	.DB $08		;7ca6
	.DB $21		;7ca7
	.DB $06		;7ca8
	.DB $14		;7ca9
	.DB $52		;7caa
	.DB $12		;7cab
	.DB $18		;7cac
	.DB $01		;7cad
	.DB $c8		;7cae
	.DB $01		;7caf
	.DB $0f		;7cb0
	.DB $81		;7cb1
	.DB $08		;7cb2
	.DB $04		;7cb3
	.DB $02		;7cb4
	.DB $0f		;7cb5
	.DB $22		;7cb6
	.DB $06		;7cb7
	.DB $0a		;7cb8
	.DB $12		;7cb9
	.DB $14		;7cba
	.DB $16		;7cbb
	.DB $17		;7cbc
	.DB $18		;7cbd
	.DB $01		;7cbe
	.DB $14		;7cbf
	.DB $81		;7cc0
	.DB $08		;7cc1
	.DB $05		;7cc2
	.DB $03		;7cc3
	.DB $0f		;7cc4
	.DB $07		;7cc5
	.DB $42		;7cc6
	.DB $1e		;7cc7
	.DB $08		;7cc8
	.DB $01		;7cc9
	.DB $c8		;7cca
	.DB $01		;7ccb
	.DB $11		;7ccc
	.DB $21		;7ccd
	.DB $07		;7cce
	.DB $14		;7ccf
	.DB $12		;7cd0
	.DB $18		;7cd1
	.DB $92		;7cd2
	.DB $06		;7cd3
	.DB $1a		;7cd4
	.DB $06		;7cd5
	.DB $03		;7cd6
	.DB $14		;7cd7
	.DB $09		;7cd8
	.DB $01		;7cd9
	.DB $10		;7cda
	.DB $81		;7cdb
	.DB $08		;7cdc
	.DB $05		;7cdd
	.DB $03		;7cde
	.DB $09		;7cdf
	.DB $07		;7ce0
	.DB $02		;7ce1
	.DB $0e		;7ce2
	.DB $22		;7ce3
	.DB $06		;7ce4
	.DB $0a		;7ce5
	.DB $52		;7ce6
	.DB $14		;7ce7
	.DB $18		;7ce8
	.DB $01		;7ce9
	.DB $c8		;7cea
	.DB $01		;7ceb
	.DB $0d		;7cec
	.DB $21		;7ced
	.DB $04		;7cee
	.DB $14		;7cef
	.DB $12		;7cf0
	.DB $12		;7cf1
	.DB $92		;7cf2
	.DB $06		;7cf3
	.DB $1a		;7cf4
	.DB $02		;7cf5
	.DB $14		;7cf6
	.DB $06		;7cf7
	.DB $03		;7cf8
	.DB $0a		;7cf9
	.DB $07		;7cfa
	.DB $02		;7cfb
	.DB $14		;7cfc
	.DB $08		;7cfd
	.DB $21		;7cfe
	.DB $06		;7cff
	.DB $14		;7d00
	.DB $12		;7d01
	.DB $10		;7d02
	.DB $16		;7d03
	.DB $13		;7d04
	.DB $0a		;7d05
	.DB $17		;7d06
	.DB $52		;7d07
	.DB $14		;7d08
	.DB $18		;7d09
	.DB $01		;7d0a
	.DB $c8		;7d0b
	.DB $01		;7d0c
	.DB $05		;7d0d
	.DB $21		;7d0e
	.DB $05		;7d0f
	.DB $14		;7d10
	.DB $12		;7d11
	.DB $07		;7d12
	.DB $92		;7d13
	.DB $06		;7d14
	.DB $1a		;7d15
	.DB $02		;7d16
	.DB $04		;7d17
	.DB $22		;7d18
	.DB $06		;7d19
	.DB $0a		;7d1a
	.DB $18		;7d1b
	.DB $81		;7d1c
	.DB $06		;7d1d
	.DB $04		;7d1e
	.DB $02		;7d1f
	.DB $05		;7d20
	.DB $06		;7d21
	.DB $03		;7d22
	.DB $05		;7d23
	.DB $07		;7d24
	.DB $02		;7d25
	.DB $04		;7d26
	.DB $22		;7d27
	.DB $06		;7d28
	.DB $0a		;7d29
	.DB $12		;7d2a
	.DB $07		;7d2b
	.DB $18		;7d2c
	.DB $01		;7d2d
	.DB $04		;7d2e
	.DB $21		;7d2f
	.DB $04		;7d30
	.DB $15		;7d31
	.DB $13		;7d32
	.DB $04		;7d33
	.DB $17		;7d34
	.DB $12		;7d35
	.DB $04		;7d36
	.DB $92		;7d37
	.DB $06		;7d38
	.DB $1a		;7d39
	.DB $42		;7d3a
	.DB $14		;7d3b
	.DB $06		;7d3c
	.DB $09		;7d3d
	.DB $01		;7d3e
	.DB $c8		;7d3f
	.DB $01		;7d40
	.DB $0a		;7d41
	.DB $21		;7d42
	.DB $05		;7d43
	.DB $15		;7d44
	.DB $13		;7d45
	.DB $05		;7d46
	.DB $17		;7d47
l7d48h:
	.DB $12		;7d48
	.DB $0a		;7d49
	.DB $92		;7d4a
	.DB $06		;7d4b
	.DB $1a		;7d4c
	.DB $02		;7d4d
	.DB $05		;7d4e
	.DB $06		;7d4f
	.DB $03		;7d50
	.DB $05		;7d51
	.DB $09		;7d52
	.DB $01		;7d53
	.DB $05		;7d54
	.DB $81		;7d55
	.DB $04		;7d56
	.DB $04		;7d57
	.DB $02		;7d58
	.DB $0a		;7d59
	.DB $06		;7d5a
	.DB $03		;7d5b
	.DB $05		;7d5c
	.DB $07		;7d5d
	.DB $02		;7d5e
	.DB $07		;7d5f
	.DB $22		;7d60
	.DB $06		;7d61
	.DB $0a		;7d62
	.DB $12		;7d63
	.DB $0a		;7d64
	.DB $18		;7d65
	.DB $21		;7d66
	.DB $06		;7d67
	.DB $14		;7d68
	.DB $52		;7d69
	.DB $12		;7d6a
	.DB $18		;7d6b
	.DB $01		;7d6c
	.DB $c8		;7d6d
	.DB $01		;7d6e
	.DB $0a		;7d6f
	.DB $81		;7d70
	.DB $04		;7d71
	.DB $04		;7d72
	.DB $02		;7d73
l7d74h:
	.DB $0a		;7d74
	.DB $06		;7d75
	.DB $03		;7d76
	.DB $0a		;7d77
	.DB $09		;7d78
	.DB $01		;7d79
	.DB $0a		;7d7a
	.DB $21		;7d7b
	.DB $04		;7d7c
	.DB $14		;7d7d
	.DB $12		;7d7e
	.DB $11		;7d7f
	.DB $18		;7d80
	.DB $81		;7d81
	.DB $06		;7d82
	.DB $04		;7d83
	.DB $02		;7d84
	.DB $0c		;7d85
	.DB $06		;7d86
	.DB $03		;7d87
	.DB $0b		;7d88
	.DB $07		;7d89
	.DB $42		;7d8a
	.DB $14		;7d8b
	.DB $06		;7d8c
	.DB $03		;7d8d
	.DB $0a		;7d8e
	.DB $09		;7d8f
	.DB $01		;7d90
	.DB $c8		;7d91
	.DB $01		;7d92
	.DB $11		;7d93
	.DB $81		;7d94
	.DB $06		;7d95
	.DB $04		;7d96
	.DB $02		;7d97
	.DB $0f		;7d98
	.DB $06		;7d99
	.DB $03		;7d9a
	.DB $0a		;7d9b
	.DB $07		;7d9c
	.DB $02		;7d9d
	.DB $04		;7d9e
	.DB $22		;7d9f
	.DB $06		;7da0
	.DB $0a		;7da1
	.DB $12		;7da2
	.DB $07		;7da3
	.DB $92		;7da4
	.DB $06		;7da5
	.DB $1a		;7da6
	.DB $02		;7da7
	.DB $0f		;7da8
	.DB $08		;7da9
	.DB $01		;7daa
	.DB $0c		;7dab
	.DB $21		;7dac
	.DB $05		;7dad
	.DB $15		;7dae
	.DB $13		;7daf
	.DB $09		;7db0
	.DB $17		;7db1
	.DB $52		;7db2
	.DB $14		;7db3
	.DB $16		;7db4
	.DB $13		;7db5
	.DB $0a		;7db6
	.DB $19		;7db7
	.DB $01		;7db8
	.DB $c8		;7db9
	.DB $01		;7dba
	.DB $0a		;7dbb
	.DB $81		;7dbc
	.DB $06		;7dbd
	.DB $05		;7dbe
	.DB $03		;7dbf
	.DB $0f		;7dc0
	.DB $07		;7dc1
	.DB $02		;7dc2
	.DB $0f		;7dc3
l7dc4h:
	.DB $06		;7dc4
	.DB $03		;7dc5
	.DB $05		;7dc6
	.DB $09		;7dc7
	.DB $21		;7dc8
	.DB $05		;7dc9
	.DB $14		;7dca
	.DB $12		;7dcb
	.DB $08		;7dcc
	.DB $1a		;7dcd
	.DB $02		;7dce
	.DB $0a		;7dcf
	.DB $08		;7dd0
	.DB $01		;7dd1
	.DB $0b		;7dd2
	.DB $21		;7dd3
	.DB $04		;7dd4
	.DB $14		;7dd5
	.DB $12		;7dd6
	.DB $09		;7dd7
	.DB $16		;7dd8
	.DB $53		;7dd9
	.DB $1e		;7dda
	.DB $19		;7ddb
	.DB $01		;7ddc
	.DB $c8		;7ddd
	.DB $01		;7dde
	.DB $0a		;7ddf
	.DB $81		;7de0
	.DB $05		;7de1
	.DB $05		;7de2
	.DB $03		;7de3
	.DB $0a		;7de4
	.DB $07		;7de5
	.DB $02		;7de6
	.DB $0a		;7de7
	.DB $22		;7de8
	.DB $06		;7de9
	.DB $0a		;7dea
	.DB $12		;7deb
	.DB $05		;7dec
	.DB $16		;7ded
	.DB $13		;7dee
	.DB $05		;7def
	.DB $19		;7df0
	.DB $01		;7df1
	.DB $08		;7df2
	.DB $21		;7df3
	.DB $04		;7df4
	.DB $14		;7df5
	.DB $12		;7df6
	.DB $0a		;7df7
l7df8h:
	.DB $16		;7df8
	.DB $13		;7df9
	.DB $05		;7dfa
	.DB $17		;7dfb
	.DB $12		;7dfc
	.DB $07		;7dfd
	.DB $92		;7dfe
	.DB $06		;7dff
	.DB $1a		;7e00
	.DB $02		;7e01
	.DB $0a		;7e02
	.DB $08		;7e03
	.DB $21		;7e04
	.DB $06		;7e05
	.DB $14		;7e06
	.DB $52		;7e07
	.DB $12		;7e08
	.DB $18		;7e09
	.DB $01		;7e0a
	.DB $c8		;7e0b
	.DB $01		;7e0c
	.DB $12		;7e0d
	.DB $21		;7e0e
	.DB $06		;7e0f
	.DB $14		;7e10
	.DB $12		;7e11
	.DB $0e		;7e12
	.DB $16		;7e13
	.DB $13		;7e14
	.DB $0a		;7e15
	.DB $17		;7e16
	.DB $12		;7e17
	.DB $04		;7e18
	.DB $92		;7e19
	.DB $06		;7e1a
	.DB $1a		;7e1b
	.DB $02		;7e1c
	.DB $04		;7e1d
	.DB $22		;7e1e
	.DB $06		;7e1f
	.DB $0a		;7e20
	.DB $12		;7e21
	.DB $0f		;7e22
	.DB $18		;7e23
	.DB $01		;7e24
	.DB $0e		;7e25
	.DB $81		;7e26
	.DB $05		;7e27
	.DB $05		;7e28
	.DB $03		;7e29
	.DB $09		;7e2a
	.DB $07		;7e2b
	.DB $42		;7e2c
	.DB $14		;7e2d
	.DB $06		;7e2e
	.DB $03		;7e2f
	.DB $0a		;7e30
	.DB $09		;7e31
	.DB $01		;7e32
	.DB $c8		;7e33
	.DB $01		;7e34
	.DB $05		;7e35
	.DB $21		;7e36
	.DB $05		;7e37
	.DB $14		;7e38
	.DB $12		;7e39
	.DB $07		;7e3a
	.DB $92		;7e3b
	.DB $06		;7e3c
	.DB $1a		;7e3d
	.DB $02		;7e3e
	.DB $04		;7e3f
	.DB $22		;7e40
	.DB $06		;7e41
	.DB $0a		;7e42
	.DB $18		;7e43
	.DB $81		;7e44
	.DB $06		;7e45
	.DB $04		;7e46
	.DB $02		;7e47
	.DB $05		;7e48
	.DB $06		;7e49
	.DB $03		;7e4a
	.DB $05		;7e4b
	.DB $07		;7e4c
	.DB $02		;7e4d
	.DB $04		;7e4e
	.DB $22		;7e4f
	.DB $06		;7e50
	.DB $0a		;7e51
	.DB $12		;7e52
	.DB $07		;7e53
	.DB $18		;7e54
	.DB $01		;7e55
	.DB $04		;7e56
	.DB $21		;7e57
	.DB $04		;7e58
	.DB $15		;7e59
	.DB $13		;7e5a
	.DB $04		;7e5b
	.DB $17		;7e5c
	.DB $12		;7e5d
	.DB $04		;7e5e
	.DB $92		;7e5f
	.DB $06		;7e60
	.DB $1a		;7e61
	.DB $42		;7e62
	.DB $14		;7e63
	.DB $06		;7e64
	.DB $09		;7e65
	.DB $01		;7e66
	.DB $c8		;7e67
	.DB $01		;7e68
	.DB $0a		;7e69
	.DB $21		;7e6a
	.DB $05		;7e6b
	.DB $15		;7e6c
	.DB $13		;7e6d
	.DB $05		;7e6e
	.DB $17		;7e6f
	.DB $12		;7e70
	.DB $0a		;7e71
	.DB $92		;7e72
	.DB $06		;7e73
	.DB $1a		;7e74
	.DB $02		;7e75
	.DB $05		;7e76
	.DB $06		;7e77
	.DB $03		;7e78
	.DB $05		;7e79
	.DB $09		;7e7a
	.DB $01		;7e7b
	.DB $05		;7e7c
	.DB $81		;7e7d
	.DB $04		;7e7e
	.DB $04		;7e7f
	.DB $02		;7e80
	.DB $0a		;7e81
	.DB $06		;7e82
	.DB $03		;7e83
	.DB $05		;7e84
	.DB $07		;7e85
	.DB $02		;7e86
	.DB $07		;7e87
	.DB $22		;7e88
	.DB $06		;7e89
	.DB $0a		;7e8a
	.DB $12		;7e8b
	.DB $0a		;7e8c
	.DB $18		;7e8d
	.DB $21		;7e8e
	.DB $06		;7e8f
	.DB $14		;7e90
	.DB $52		;7e91
	.DB $12		;7e92
	.DB $18		;7e93
	.DB $01		;7e94
	.DB $c8		;7e95
	.DB $01		;7e96
	.DB $0a		;7e97
	.DB $21		;7e98
	.DB $06		;7e99
	.DB $15		;7e9a
	.DB $13		;7e9b
	.DB $06		;7e9c
	.DB $17		;7e9d
	.DB $12		;7e9e
	.DB $0a		;7e9f
	.DB $16		;7ea0
	.DB $13		;7ea1
	.DB $05		;7ea2
	.DB $19		;7ea3
	.DB $81		;7ea4
	.DB $05		;7ea5
	.DB $04		;7ea6
	.DB $02		;7ea7
	.DB $05		;7ea8
	.DB $0a		;7ea9
	.DB $12		;7eaa
	.DB $05		;7eab
	.DB $18		;7eac
	.DB $01		;7ead
	.DB $0a		;7eae
	.DB $81		;7eaf
	.DB $04		;7eb0
	.DB $04		;7eb1
	.DB $02		;7eb2
	.DB $05		;7eb3
	.DB $06		;7eb4
	.DB $43		;7eb5
	.DB $1e		;7eb6
	.DB $09		;7eb7
	.DB $01		;7eb8
	.DB $c8		;7eb9
	.DB $01		;7eba
	.DB $0a		;7ebb
	.DB $81		;7ebc
	.DB $04		;7ebd
	.DB $05		;7ebe
	.DB $03		;7ebf
	.DB $09		;7ec0
	.DB $07		;7ec1
l7ec2h:
	.DB $02		;7ec2
	.DB $08		;7ec3
	.DB $06		;7ec4
	.DB $03		;7ec5
	.DB $09		;7ec6
	.DB $07		;7ec7
	.DB $02		;7ec8
	.DB $08		;7ec9
	.DB $22		;7eca
	.DB $06		;7ecb
	.DB $0a		;7ecc
	.DB $12		;7ecd
	.DB $08		;7ece
	.DB $16		;7ecf
	.DB $13		;7ed0
	.DB $05		;7ed1
	.DB $19		;7ed2
	.DB $01		;7ed3
	.DB $05		;7ed4
	.DB $21		;7ed5
	.DB $05		;7ed6
	.DB $14		;7ed7
	.DB $12		;7ed8
	.DB $05		;7ed9
	.DB $92		;7eda
	.DB $06		;7edb
	.DB $1a		;7edc
	.DB $02		;7edd
	.DB $0a		;7ede
	.DB $08		;7edf
	.DB $81		;7ee0
	.DB $06		;7ee1
	.DB $04		;7ee2
	.DB $42		;7ee3
	.DB $12		;7ee4
	.DB $06		;7ee5
	.DB $09		;7ee6
	.DB $01		;7ee7
	.DB $c8		;7ee8
	.DB $01		;7ee9
	.DB $05		;7eea
	.DB $81		;7eeb
	.DB $05		;7eec
	.DB $04		;7eed
	.DB $02		;7eee
	.DB $07		;7eef
	.DB $22		;7ef0
	.DB $06		;7ef1
	.DB $0a		;7ef2
	.DB $12		;7ef3
	.DB $05		;7ef4
	.DB $92		;7ef5
	.DB $06		;7ef6
	.DB $1a		;7ef7
	.DB $08		;7ef8
	.DB $21		;7ef9
	.DB $06		;7efa
	.DB $14		;7efb
	.DB $12		;7efc
	.DB $05		;7efd
	.DB $16		;7efe
	.DB $13		;7eff
l7f00h:
	.DB $05		;7f00
	.DB $17		;7f01
	.DB $12		;7f02
	.DB $04		;7f03
	.DB $92		;7f04
	.DB $06		;7f05
	.DB $1a		;7f06
	.DB $02		;7f07
	.DB $07		;7f08
	.DB $08		;7f09
	.DB $01		;7f0a
	.DB $04		;7f0b
	.DB $81		;7f0c
	.DB $04		;7f0d
	.DB $05		;7f0e
	.DB $03		;7f0f
	.DB $04		;7f10
	.DB $07		;7f11
	.DB $02		;7f12
	.DB $04		;7f13
	.DB $22		;7f14
	.DB $06		;7f15
	.DB $0a		;7f16
	.DB $52		;7f17
	.DB $14		;7f18
	.DB $16		;7f19
	.DB $19		;7f1a
	.DB $01		;7f1b
	.DB $c8		;7f1c
	.DB $31		;7f1d
	.DB $00		;7f1e
	.DB $c4		;7f1f
	.DB $21		;7f20
	.DB $00		;7f21
	.DB $c0		;7f22
	.DB $11		;7f23
	.DB $01		;7f24
	.DB $c0		;7f25
	.DB $01		;7f26
	.DB $00		;7f27
	.DB $04		;7f28
	.DB $36		;7f29
	.DB $00		;7f2a
	.DB $ed		;7f2b
	.DB $b0		;7f2c
	.DB $cd		;7f2d
	.DB $31		;7f2e
	.DB $41		;7f2f
	.DB $cd		;7f30
	.DB $fe		;7f31
	.DB $07		;7f32
	.DB $3e		;7f33
	.DB $02		;7f34
	.DB $d3		;7f35
	.DB $bf		;7f36
	.DB $3e		;7f37
	.DB $80		;7f38
	.DB $d3		;7f39
	.DB $bf		;7f3a
	.DB $3e		;7f3b
	.DB $e2		;7f3c
	.DB $d3		;7f3d
	.DB $bf		;7f3e
l7f3fh:
	.DB $3e		;7f3f
	.DB $81		;7f40
	.DB $d3		;7f41
	.DB $bf		;7f42
	.DB $3e		;7f43
	.DB $8a		;7f44
	.DB $32		;7f45
	.DB $00		;7f46
	.DB $c1		;7f47
	.DB $fb		;7f48
	.DB $cf		;7f49
	.DB $c3		;7f4a
	.DB $48		;7f4b
	.DB $7f		;7f4c
	.DB $ff		;7f4d
	.DB $ff		;7f4e
	.DB $ff		;7f4f
	.DB $ff		;7f50
	.DB $ff		;7f51
	.DB $ff		;7f52
	.DB $ff		;7f53
	.DB $ff		;7f54
	.DB $ff		;7f55
	.DB $ff		;7f56
	.DB $ff		;7f57
	.DB $ff		;7f58
	.DB $ff		;7f59
	.DB $ff		;7f5a
	.DB $ff		;7f5b
	.DB $ff		;7f5c
	.DB $ff		;7f5d
	.DB $ff		;7f5e
	.DB $ff		;7f5f
	.DB $ff		;7f60
	.DB $ff		;7f61
	.DB $ff		;7f62
	.DB $ff		;7f63
	.DB $ff		;7f64
	.DB $ff		;7f65
	.DB $ff		;7f66
	.DB $ff		;7f67
	.DB $ff		;7f68
	.DB $ff		;7f69
	.DB $ff		;7f6a
	.DB $ff		;7f6b
	.DB $ff		;7f6c
	.DB $ff		;7f6d
	.DB $ff		;7f6e
	.DB $ff		;7f6f
	.DB $ff		;7f70
	.DB $ff		;7f71
	.DB $ff		;7f72
	.DB $ff		;7f73
	.DB $ff		;7f74
	.DB $ff		;7f75
	.DB $ff		;7f76
	.DB $ff		;7f77
	.DB $ff		;7f78
	.DB $ff		;7f79
	.DB $ff		;7f7a
	.DB $ff		;7f7b
	.DB $ff		;7f7c
	.DB $ff		;7f7d
	.DB $ff		;7f7e
	.DB $ff		;7f7f
l7f80h:
	.DB $ff		;7f80
	.DB $ff		;7f81
	.DB $ff		;7f82
	.DB $ff		;7f83
	.DB $ff		;7f84
	.DB $ff		;7f85
	.DB $ff		;7f86
	.DB $ff		;7f87
	.DB $ff		;7f88
	.DB $ff		;7f89
	.DB $ff		;7f8a
	.DB $ff		;7f8b
	.DB $ff		;7f8c
	.DB $ff		;7f8d
	.DB $ff		;7f8e
	.DB $ff		;7f8f
	.DB $ff		;7f90
	.DB $ff		;7f91
	.DB $ff		;7f92
	.DB $ff		;7f93
	.DB $ff		;7f94
	.DB $ff		;7f95
	.DB $ff		;7f96
	.DB $ff		;7f97
	.DB $ff		;7f98
	.DB $ff		;7f99
	.DB $ff		;7f9a
	.DB $ff		;7f9b
	.DB $ff		;7f9c
	.DB $ff		;7f9d
	.DB $ff		;7f9e
	.DB $ff		;7f9f
	.DB $ff		;7fa0
	.DB $ff		;7fa1
	.DB $ff		;7fa2
	.DB $ff		;7fa3
	.DB $ff		;7fa4
	.DB $ff		;7fa5
	.DB $ff		;7fa6
	.DB $ff		;7fa7
	.DB $ff		;7fa8
	.DB $ff		;7fa9
l7faah:
	.DB $ff		;7faa
	.DB $ff		;7fab
	.DB $ff		;7fac
	.DB $ff		;7fad
	.DB $ff		;7fae
	.DB $ff		;7faf
	.DB $ff		;7fb0
	.DB $ff		;7fb1
	.DB $ff		;7fb2
	.DB $ff		;7fb3
	.DB $ff		;7fb4
	.DB $ff		;7fb5
	.DB $ff		;7fb6
	.DB $ff		;7fb7
	.DB $ff		;7fb8
	.DB $ff		;7fb9
	.DB $ff		;7fba
	.DB $ff		;7fbb
	.DB $ff		;7fbc
	.DB $ff		;7fbd
	.DB $ff		;7fbe
	.DB $ff		;7fbf
	.DB $ff		;7fc0
	.DB $ff		;7fc1
	.DB $ff		;7fc2
	.DB $ff		;7fc3
	.DB $ff		;7fc4
	.DB $ff		;7fc5
	.DB $ff		;7fc6
	.DB $ff		;7fc7
	.DB $ff		;7fc8
	.DB $ff		;7fc9
	.DB $ff		;7fca
	.DB $ff		;7fcb
	.DB $ff		;7fcc
	.DB $ff		;7fcd
	.DB $ff		;7fce
	.DB $ff		;7fcf
	.DB $ff		;7fd0
	.DB $ff		;7fd1
	.DB $ff		;7fd2
	.DB $ff		;7fd3
	.DB $ff		;7fd4
	.DB $ff		;7fd5
	.DB $ff		;7fd6
	.DB $ff		;7fd7
	.DB $ff		;7fd8
	.DB $ff		;7fd9
	.DB $ff		;7fda
	.DB $ff		;7fdb
	.DB $ff		;7fdc
	.DB $ff		;7fdd
	.DB $ff		;7fde
	.DB $ff		;7fdf
	.DB $ff		;7fe0
	.DB $ff		;7fe1
	.DB $ff		;7fe2
	.DB $ff		;7fe3
	.DB $ff		;7fe4
	.DB $ff		;7fe5
	.DB $ff		;7fe6
	.DB $ff		;7fe7
	.DB $ff		;7fe8
	.DB $ff		;7fe9
	.DB $ff		;7fea
	.DB $48		;7feb
	.DB $2e		;7fec
	.DB $4f		;7fed
	.DB $20		;7fee
	.DB $53		;7fef
	.DB $45		;7ff0
	.DB $50		;7ff1
	.DB $2e		;7ff2
	.DB $20		;7ff3
	.DB $31		;7ff4
	.DB $31		;7ff5
	.DB $20		;7ff6
	.DB "1985"		;7ff7
	.DB $20		;7ffb
	.DB $02		;7ffc
	.DB $05		;7ffd
	.DB $00		;7ffe
	.DB $3c		;7fff
