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
; command line: z80dasm -a -l hang-on-japan.sms

	.ORGA	00100h

l0100h:
	di			;0100
l0101h:
	im 1		;0101
	ld sp,0dffeh		;0103
	jr l0171h		;0106
	ei			;0108
l0109h:
	ld hl,0c002h		;0109
l010ch:
	ld a,(hl)			;010c
l010dh:
	or a			;010d
	jr z,l010ch		;010e
	xor a			;0110
	ld (hl),a			;0111
	ld (0c02dh),a		;0112
	ret			;0115
	ld c,b			;0116
	ld c,a			;0117
l0118h:
	ld a,l			;0118
l0119h:
	out (0bfh),a		;0119
	ld a,h			;011b
	out (0bfh),a		;011c
l011eh:
	ret			;011e
	rst 38h			;011f
	ex de,hl			;0120
	rst 18h			;0121
	ex (sp),hl			;0122
	ex (sp),hl			;0123
	ex de,hl			;0124
	ld c,0beh		;0125
l0127h:
	outi		;0127
	jr nz,l0127h		;0129
	ret			;012b
l012ch:
	ld hl,l2542h		;012c
	ld e,(hl)			;012f
l0130h:
	ei			;0130
	ld hl,0c002h		;0131
	ld a,(hl)			;0134
	or a			;0135
	jr l015fh		;0136
	push af			;0138
	in a,(0bfh)		;0139
	or a			;013b
	jp p,0c4d0h		;013c
	jp l019fh+1		;013f
	ld a,09fh		;0142
	out (07fh),a		;0144
	ld a,0bfh		;0146
l0148h:
	out (07fh),a		;0148
l014ah:
	ld a,0dfh		;014a
	out (07fh),a		;014c
	ld a,0ffh		;014e
l0150h:
	out (07fh),a		;0150
	ret			;0152
l0153h:
	call 00042h		;0153
	ld a,(0c02dh)		;0156
	or a			;0159
l015ah:
	jr nz,l0153h		;015a
	jp l015fh+2		;015c
l015fh:
	jp z,00034h		;015f
l0162h:
	ld (hl),000h		;0162
	ret			;0164
	rst 38h			;0165
	push af			;0166
	ld a,(0c02dh)		;0167
l016ah:
	cpl			;016a
	ld (0c02dh),a		;016b
l016eh:
	pop af			;016e
	retn		;016f
l0171h:
	call 00042h		;0171
	ld a,0aah		;0174
	ld (0d000h),a		;0176
l0179h:
	ld a,055h		;0179
l017bh:
	ld (0c000h),a		;017b
	ld a,(0d000h)		;017e
	cp 055h		;0181
l0183h:
	jp z,l7f1dh		;0183
	ld hl,0c000h		;0186
	ld de,0c001h		;0189
	ld bc,l1fffh		;018c
	ld (hl),l			;018f
l0190h:
	ldir		;0190
	ld hl,0037eh		;0192
	ld de,0c4d0h		;0195
	ld bc,0002ah		;0198
	ldir		;019b
	ld a,092h		;019d
l019fh:
	out (0dfh),a		;019f
	xor a			;01a1
	out (0deh),a		;01a2
	in a,(0deh)		;01a4
	ld (0c4c4h),a		;01a6
	call 007feh		;01a9
	call sub_06f3h		;01ac
	ld a,004h		;01af
	ld (0c000h),a		;01b1
	ld a,0ffh		;01b4
	ld (0c015h),a		;01b6
	ld a,000h		;01b9
	ld (0c4c0h),a		;01bb
	call sub_06cch		;01be
	call 00042h		;01c1
	ld a,(0c015h)		;01c4
	push af			;01c7
l01c8h:
	ld hl,(0c004h)		;01c8
	push hl			;01cb
	ld a,(0c006h)		;01cc
	ld hl,0c001h		;01cf
	ld de,0c002h		;01d2
	ld bc,004beh		;01d5
	ld (hl),000h		;01d8
l01dah:
	ldir		;01da
	ld hl,0c500h		;01dc
	ld de,0c501h		;01df
	ld bc,001ffh		;01e2
	ld (hl),l			;01e5
	ldir		;01e6
	pop hl			;01e8
	ld (0c004h),hl		;01e9
l01ech:
	ld (0c006h),a		;01ec
l01efh:
	pop af			;01ef
	ld (0c015h),a		;01f0
	call l412fh+2		;01f3
	call 003a8h		;01f6
	call 0029ah		;01f9
	di			;01fc
	call sub_06cch		;01fd
l0200h:
	call sub_067fh		;0200
l0203h:
	call sub_09d5h		;0203
	call l3531h+1		;0206
	xor a			;0209
	call sub_3d77h		;020a
	ld a,(0c010h)		;020d
	add a,031h		;0210
	ld de,07838h		;0212
	call sub_24fch		;0215
	ld hl,00004h		;0218
	ld (0c060h),hl		;021b
	ld hl,00000h		;021e
l0221h:
	ld (0c31ah),hl		;0221
l0224h:
	xor a			;0224
	ld (0c301h),a		;0225
	ld (0c011h),a		;0228
	ld (0c2f2h),a		;022b
	ld bc,l7680h		;022e
	call sub_063fh		;0231
	ld a,(0c000h)		;0234
l0237h:
	and 004h		;0237
	jr nz,l0253h		;0239
	call sub_3659h		;023b
sub_023eh:
	call sub_06d7h		;023e
	rst 8			;0241
	call sub_2509h		;0242
l0245h:
	rst 8			;0245
	ld a,(0c015h)		;0246
	or a			;0249
	jp nz,000beh		;024a
	ld a,(0c049h)		;024d
	or a			;0250
	jr nz,l0245h		;0251
l0253h:
	call sub_06d7h		;0253
	ld hl,04111h		;0256
	ld (0c101h),hl		;0259
	ld a,081h		;025c
	ld (0c100h),a		;025e
l0261h:
	rst 30h			;0261
	ld a,(0c000h)		;0262
	and 004h		;0265
	jr z,l0277h		;0267
	ld a,(0c00dh)		;0269
	cp 013h		;026c
	jr nc,l027eh		;026e
	ld a,0ffh		;0270
	ld (0c015h),a		;0272
	jr l027eh		;0275
l0277h:
	ld a,(0c02dh)		;0277
	or a			;027a
	jp nz,00053h		;027b
l027eh:
	ld a,(0c015h)		;027e
l0281h:
	or a			;0281
l0282h:
	jp nz,000beh		;0282
	call sub_13a4h		;0285
	call sub_2509h		;0288
	call sub_2f66h		;028b
	call sub_3479h		;028e
	ld a,(0c000h)		;0291
	bit 6,a		;0294
	jp nz,l3e16h		;0296
	bit 5,a		;0299
	jp nz,l3f87h		;029b
	jr l0261h		;029e
	push bc			;02a0
	push de			;02a1
	push hl			;02a2
	push ix		;02a3
	push iy		;02a5
	exx			;02a7
	ex af,af'			;02a8
	push af			;02a9
	push bc			;02aa
	push de			;02ab
	push hl			;02ac
	call sub_37f6h		;02ad
	call sub_3870h		;02b0
	call sub_3843h		;02b3
	call 0026dh		;02b6
	ld a,(0c05bh)		;02b9
	neg		;02bc
	ld b,a			;02be
	ld c,088h		;02bf
	call sub_063fh		;02c1
	ld bc,l2f8ah		;02c4
	call sub_063fh		;02c7
	ld a,(0c000h)		;02ca
	or a			;02cd
	jp p,l0237h		;02ce
	and 004h		;02d1
	jr nz,l02dch		;02d3
	ld a,(0c02dh)		;02d5
	or a			;02d8
	jp nz,0024eh		;02d9
l02dch:
	call sub_38a2h		;02dc
	call sub_2446h		;02df
	call sub_2475h		;02e2
	call sub_3686h		;02e5
l02e8h:
	call l373bh+1		;02e8
	ld hl,0c078h		;02eb
	ld a,(hl)			;02ee
	or a			;02ef
	jp z,0021fh		;02f0
	cp 014h		;02f3
	jr nz,l0306h		;02f5
	ld a,(0c007h)		;02f7
	add a,005h		;02fa
	ld (0c064h),a		;02fc
	ld de,l40e4h		;02ff
l0302h:
	ld (0c101h),de		;0302
l0306h:
	dec (hl)			;0306
	jr nz,l031fh		;0307
	ld a,00ah		;0309
	ld (0c064h),a		;030b
	ld hl,l40e4h		;030e
	ld (0c101h),hl		;0311
	ld hl,0c079h		;0314
	dec (hl)			;0317
	jr z,l031fh		;0318
l031ah:
	ld a,028h		;031a
	ld (0c078h),a		;031c
l031fh:
	call l3e4ah+1		;031f
	call 03604h		;0322
	call 03777h		;0325
	call sub_1322h		;0328
	call 03d6bh		;032b
	call 012e1h		;032e
	call 030fbh		;0331
	jp l0245h		;0334
	or a			;0337
l0338h:
	jr nz,l0345h		;0338
	ld hl,l7c24h		;033a
l033dh:
	rst 18h			;033d
	ld a,(0c4c0h)		;033e
	add a,031h		;0341
	out (0beh),a		;0343
l0345h:
	call 00790h		;0345
	ld (0c001h),a		;0348
	call sub_404fh		;034b
	ld a,001h		;034e
	ld (0c002h),a		;0350
	ld bc,l2f8ah		;0353
	call sub_063fh		;0356
	ld hl,0c073h		;0359
	inc (hl)			;035c
	pop hl			;035d
	pop de			;035e
	pop bc			;035f
	pop af			;0360
	ex af,af'			;0361
	exx			;0362
	pop iy		;0363
	pop ix		;0365
	pop hl			;0367
	pop de			;0368
	pop bc			;0369
	pop af			;036a
	ei			;036b
	ret			;036c
	ld hl,0c045h		;036d
	ld a,(hl)			;0370
	or a			;0371
	ret z			;0372
	ld (hl),000h		;0373
	ld hl,l7f15h		;0375
	rst 18h			;0378
	ld hl,0c43fh		;0379
	ld bc,l2bbeh		;037c
	outi		;037f
l0381h:
	inc hl			;0381
l0382h:
	inc hl			;0382
	jp nz,l027eh+1		;0383
	ld hl,l7faah		;0386
	rst 18h			;0389
	ld hl,0c440h		;038a
	ld b,056h		;038d
	outi		;038f
	nop			;0391
	nop			;0392
	outi		;0393
	inc hl			;0395
	jp nz,0028fh		;0396
	ret			;0399
	ld ix,0c000h		;039a
	ld (ix+01fh),010h		;039e
	ld (ix+018h),001h		;03a2
	ld (ix+020h),001h		;03a6
	ld (ix+00ch),03ch		;03aa
	ld (ix+00dh),03ch		;03ae
	ld (ix+074h),03ch		;03b2
	ld (ix+02ah),080h		;03b6
	ld (ix+013h),054h		;03ba
sub_03beh:
	ld (ix+047h),004h		;03be
	ld (ix+026h),001h		;03c2
	ld a,001h		;03c6
	ld (0c300h),a		;03c8
	ld hl,l39a9h		;03cb
	ld (0c04dh),hl		;03ce
	ld hl,00020h		;03d1
	ld (0c05ch),hl		;03d4
	ld a,014h		;03d7
	ld (0c044h),a		;03d9
	ld a,0ffh		;03dc
	ld (0c071h),a		;03de
	ld (0c067h),a		;03e1
	ld d,002h		;03e4
	ld c,0f8h		;03e6
	ld hl,0c400h		;03e8
l03ebh:
	ld a,00fh		;03eb
	ld b,00bh		;03ed
l03efh:
	ld (hl),a			;03ef
	inc hl			;03f0
	ld (hl),c			;03f1
	inc hl			;03f2
	ld (hl),000h		;03f3
	inc hl			;03f5
	add a,010h		;03f6
	djnz l03efh		;03f8
	ld c,0f0h		;03fa
sub_03fch:
	dec d			;03fc
	jr nz,l03ebh		;03fd
l03ffh:
	call sub_073fh		;03ff
l0402h:
	ld hl,l3d9ah		;0402
	ld de,0c000h		;0405
	ld bc,00020h		;0408
	call 00654h		;040b
	ld hl,07f00h		;040e
l0411h:
	call 00018h		;0411
	ld hl,0c400h		;0414
	ld bc,016beh		;0417
	outi		;041a
	inc hl			;041c
	inc hl			;041d
	jp nz,l031ah		;041e
	ld hl,l7f80h		;0421
	call 00018h		;0424
	ld hl,0c401h		;0427
	ld b,02ch		;042a
	outi		;042c
	push af			;042e
	pop af			;042f
	outi		;0430
	inc hl			;0432
	jp nz,0032ch		;0433
	ld a,(0c000h)		;0436
	and 004h		;0439
	jp nz,0034ah		;043b
	xor a			;043e
	ld hl,0c004h		;043f
	ld (hl),a			;0442
	inc hl			;0443
	ld (hl),a			;0444
	inc hl			;0445
	ld (hl),a			;0446
	jp sub_06d7h		;0447
	ld a,r		;044a
	and 007h		;044c
	ld (0c010h),a		;044e
	ld a,(0c4c6h)		;0451
	ld (0c007h),a		;0454
	ld (0c04bh),a		;0457
	ld e,a			;045a
	ld d,000h		;045b
	ld hl,0399dh		;045d
	add hl,de			;0460
	add hl,de			;0461
	ld e,(hl)			;0462
	inc hl			;0463
l0464h:
	ld d,(hl)			;0464
	ex de,hl			;0465
	ld (0c04dh),hl		;0466
	inc a			;0469
	cp 004h		;046a
	jr c,l046fh		;046c
	xor a			;046e
l046fh:
	ld (0c4c6h),a		;046f
	call sub_06d7h		;0472
	ld a,00bh		;0475
	ld (0c068h),a		;0477
	ld (0c072h),a		;047a
	ret			;047d
	in a,(07eh)		;047e
l0480h:
	cp 05fh		;0480
l0482h:
	jr c,l0493h		;0482
	ld (0c4dah),a		;0484
	ld a,(0c500h)		;0487
	out (0bfh),a		;048a
	ld a,088h		;048c
	out (0bfh),a		;048e
	pop af			;0490
	ei			;0491
	ret			;0492
l0493h:
	ld a,(0c051h)		;0493
	neg		;0496
	out (0bfh),a		;0498
	ld a,088h		;049a
l049ch:
	out (0bfh),a		;049c
	xor a			;049e
	out (0bfh),a		;049f
	ld a,08ah		;04a1
	out (0bfh),a		;04a3
	pop af			;04a5
	ei			;04a6
	ret			;04a7
	di			;04a8
	ld de,0c000h		;04a9
	ld hl,l3dbah		;04ac
	ld b,020h		;04af
	call 00020h		;04b1
	call sub_06b5h		;04b4
	ld hl,06c00h		;04b7
	ld de,l7589h		;04ba
	ld a,000h		;04bd
	ex af,af'			;04bf
l04c0h:
	call 0080bh		;04c0
	ld hl,0c000h		;04c3
	ld a,(hl)			;04c6
	bit 2,a		;04c7
	jr z,l04ffh		;04c9
	ld a,(0c015h)		;04cb
	or a			;04ce
	jp p,l03ffh		;04cf
	ld a,(0c4c5h)		;04d2
	or a			;04d5
	jr nz,l04ffh		;04d6
l04d8h:
	ld (hl),001h		;04d8
	call sub_069ah		;04da
	ld hl,l7acch		;04dd
	ld de,l05fdh		;04e0
	ld bc,l1302h		;04e3
	call sub_3708h		;04e6
	call sub_06d7h		;04e9
	ei			;04ec
	ld b,0b4h		;04ed
l04efh:
	rst 8			;04ef
	ld a,(0c001h)		;04f0
	cpl			;04f3
	ld c,a			;04f4
	ld a,(0c01ah)		;04f5
l04f8h:
	and c			;04f8
	and 030h		;04f9
	jr nz,l04ffh		;04fb
	djnz l04efh		;04fd
l04ffh:
	ld hl,0c000h		;04ff
	xor a			;0502
l0503h:
	ld (hl),a			;0503
	ld (0c015h),a		;0504
	call sub_06cch		;0507
	di			;050a
	call sub_069ah		;050b
	ld hl,l04d8h		;050e
	ld b,009h		;0511
l0513h:
	ld e,(hl)			;0513
	inc hl			;0514
	ld d,(hl)			;0515
	inc hl			;0516
	ld a,(hl)			;0517
	inc hl			;0518
	ld c,(hl)			;0519
	inc hl			;051a
	push hl			;051b
	ld l,a			;051c
	ld h,c			;051d
	call 0062fh		;051e
	pop hl			;0521
	djnz l0513h		;0522
	ld hl,l78cah		;0524
	ld de,0055dh		;0527
	ld bc,l1408h		;052a
	call sub_3708h		;052d
	ld hl,07ca2h		;0530
	call 00018h		;0533
	ld hl,0c4c1h		;0536
	call sub_3615h		;0539
	xor a			;053c
	ld (0c051h),a		;053d
	ld (0c05ah),a		;0540
	call sub_06d7h		;0543
	ei			;0546
l0547h:
	rst 8			;0547
	ld a,(0c001h)		;0548
	cpl			;054b
	and 030h		;054c
	jr nz,l0547h		;054e
	ld de,000b4h		;0550
	ld hl,0c4c5h		;0553
	dec (hl)			;0556
	jp p,l0464h		;0557
	ld (hl),000h		;055a
	ld de,001b8h		;055c
	ld a,08fh		;055f
	ld (0c100h),a		;0561
	ld (0c023h),de		;0564
l0568h:
	ld a,01eh		;0568
	ld (0c022h),a		;056a
	ld hl,(0c023h)		;056d
	ld de,000f0h		;0570
	or a			;0573
	sbc hl,de		;0574
	jr nc,l057ch		;0576
	ld (0c023h),de		;0578
l057ch:
	rst 8			;057c
	ld hl,0c4c0h		;057d
	ld a,(0c001h)		;0580
	cpl			;0583
	and 033h		;0584
	jr nz,l0597h		;0586
	ld hl,(0c023h)		;0588
	dec hl			;058b
	ld (0c023h),hl		;058c
	ld a,h			;058f
	or l			;0590
	jr nz,l057ch		;0591
	ld a,084h		;0593
	jr l05cah		;0595
l0597h:
	ld c,a			;0597
	and 030h		;0598
	jr nz,l05c8h		;059a
	ld a,(0c01ah)		;059c
	cpl			;059f
	and 003h		;05a0
	cp c			;05a2
	jr nz,l05aeh		;05a3
	ld a,(0c022h)		;05a5
	dec a			;05a8
	ld (0c022h),a		;05a9
	jr nz,l057ch		;05ac
l05aeh:
	bit 0,c		;05ae
	jr nz,l05c0h		;05b0
	bit 1,c		;05b2
	jr z,l0568h		;05b4
	inc (hl)			;05b6
	ld a,(hl)			;05b7
	cp 003h		;05b8
	jr nz,l0568h		;05ba
	ld (hl),000h		;05bc
	jr l0568h		;05be
l05c0h:
	dec (hl)			;05c0
	jp p,00468h		;05c1
	ld (hl),002h		;05c4
	jr l0568h		;05c6
l05c8h:
	ld a,080h		;05c8
l05cah:
	ld b,a			;05ca
	xor a			;05cb
	ld (0c100h),a		;05cc
	ld (0c015h),a		;05cf
	rst 8			;05d2
	ld a,b			;05d3
	ld (0c000h),a		;05d4
	ret			;05d7
	call m,08e04h		;05d8
	ld a,e			;05db
	rrca			;05dc
	dec b			;05dd
l05deh:
	jr $+124		;05de
	ld d,005h		;05e0
	sub b			;05e2
	ld a,h			;05e3
	jr nz,$+5		;05e4
	ld b,07dh		;05e6
	ld d,b			;05e8
	dec b			;05e9
	jr nc,l0669h		;05ea
	ld (hl),005h		;05ec
	add a,d			;05ee
	ld a,l			;05ef
	ld d,b			;05f0
	dec b			;05f1
	or h			;05f2
	ld a,l			;05f3
	ld d,(hl)			;05f4
	dec b			;05f5
	jp p,l5a78h		;05f6
	dec b			;05f9
	xor (hl)			;05fa
l05fbh:
	ld a,h			;05fb
	add hl,bc			;05fc
l05fdh:
	ld d,b			;05fd
sub_05feh:
	ld d,l			;05fe
	ld d,e			;05ff
sub_0600h:
	ld c,b			;0600
	jr nz,l0656h		;0601
l0603h:
	ld d,h			;0603
	ld b,c			;0604
	ld d,d			;0605
	ld d,h			;0606
	jr nz,$+66		;0607
	ld d,l			;0609
	ld d,h			;060a
	ld d,h			;060b
	ld c,a			;060c
	ld c,(hl)			;060d
	nop			;060e
	add hl,bc			;060f
	ld c,h			;0610
	ld b,l			;0611
	ld d,(hl)			;0612
	ld b,l			;0613
	ld c,h			;0614
	nop			;0615
	add hl,bc			;0616
	ld c,b			;0617
	ld c,c			;0618
	dec sp			;0619
	ld d,e			;061a
	ld b,e			;061b
	ld c,a			;061c
	ld d,d			;061d
	ld b,l			;061e
	nop			;061f
	add hl,bc			;0620
	ld c,a			;0621
	ld d,d			;0622
sub_0623h:
	ld c,c			;0623
	ld b,a			;0624
	ld c,c			;0625
	ld c,(hl)			;0626
	ld b,c			;0627
	ld c,h			;0628
	jr nz,l0672h		;0629
	ld b,c			;062b
	ld c,l			;062c
	ld b,l			;062d
	jr nz,l05deh		;062e
	jr nz,$-81		;0630
	or b			;0632
	or c			;0633
	or d			;0634
	nop			;0635
	add hl,bc			;0636
	ld d,d			;0637
	ld b,l			;0638
	ld d,b			;0639
	ld d,d			;063a
	ld c,a			;063b
	ld b,a			;063c
	ld d,d			;063d
	ld b,c			;063e
sub_063fh:
	ld c,l			;063f
	ld c,l			;0640
	ld b,l			;0641
	ld b,h			;0642
	jr nz,l068ch		;0643
	ld b,c			;0645
sub_0646h:
	ld c,l			;0646
	ld b,l			;0647
	jr nz,$-82		;0648
	jr nz,l05fbh		;064a
	or b			;064c
	or c			;064d
sub_064eh:
	or d			;064e
	nop			;064f
	ld bc,l3931h		;0650
	jr c,l068ah		;0653
	nop			;0655
l0656h:
	ld bc,0b4b3h		;0656
	nop			;0659
	add hl,bc			;065a
	jr nc,l065dh		;065b
l065dh:
	jr nz,l06bfh		;065d
	ld h,c			;065f
	jr nz,l06c4h		;0660
sub_0662h:
	ld h,c			;0662
	jr nz,l06c5h		;0663
	ld h,c			;0665
	jr nz,l06cah		;0666
	ld h,c			;0668
l0669h:
	jr nz,l068bh		;0669
	jr nz,l06cfh		;066b
	ld h,c			;066d
	jr nz,l06d0h		;066e
	ld h,c			;0670
	ld h,e			;0671
l0672h:
	ld h,h			;0672
l0673h:
	ld h,l			;0673
	ld h,d			;0674
	ld h,(hl)			;0675
	ld h,a			;0676
	ld l,b			;0677
	ld l,c			;0678
	ld h,l			;0679
	ld h,d			;067a
	ld h,(hl)			;067b
sub_067ch:
	ld l,d			;067c
l067dh:
	jr nz,l069fh		;067d
sub_067fh:
	ld h,d			;067f
l0680h:
	ld h,(hl)			;0680
l0681h:
	ld h,a			;0681
	ld l,b			;0682
l0683h:
	ld l,c			;0683
	ld h,l			;0684
	ld l,e			;0685
	ld l,h			;0686
	ld l,l			;0687
l0688h:
	ld l,e			;0688
	ld l,(hl)			;0689
l068ah:
	ld l,a			;068a
l068bh:
	ld l,e			;068b
l068ch:
	ld (hl),b			;068c
	ld l,l			;068d
	ld l,e			;068e
	ld (hl),c			;068f
l0690h:
	ld (hl),d			;0690
	jr nz,l06b3h		;0691
	ld l,e			;0693
	ld (hl),e			;0694
	ld l,a			;0695
	ld l,e			;0696
	ld (hl),b			;0697
	ld l,l			;0698
	ld (hl),h			;0699
sub_069ah:
	ld (hl),l			;069a
	halt			;069b
	ld (hl),h			;069c
l069dh:
	ld (hl),a			;069d
	ld a,b			;069e
l069fh:
	ld (hl),h			;069f
	ld a,c			;06a0
	ld l,l			;06a1
	ld (hl),h			;06a2
	ld a,d			;06a3
	ld a,e			;06a4
l06a5h:
	ld h,d			;06a5
	ld h,c			;06a6
	ld (hl),h			;06a7
	ld a,h			;06a8
	ld l,l			;06a9
	ld (hl),h			;06aa
	ld a,c			;06ab
	ld l,l			;06ac
	ld (hl),h			;06ad
	ld a,l			;06ae
	ld a,(hl)			;06af
	ld (hl),h			;06b0
	ld a,a			;06b1
	ld l,a			;06b2
l06b3h:
	ld (hl),h			;06b3
	add a,b			;06b4
sub_06b5h:
	add a,c			;06b5
	ld (hl),h			;06b6
	add a,d			;06b7
	add a,e			;06b8
	ld l,e			;06b9
	ld l,d			;06ba
	ld (hl),h			;06bb
	add a,h			;06bc
sub_06bdh:
	ld l,l			;06bd
	ld (hl),h			;06be
l06bfh:
	add a,b			;06bf
l06c0h:
	add a,c			;06c0
	ld (hl),h			;06c1
	add a,h			;06c2
	ld l,l			;06c3
l06c4h:
	ld (hl),h			;06c4
l06c5h:
	ld a,h			;06c5
	ld l,l			;06c6
	ld (hl),h			;06c7
	add a,l			;06c8
	add a,c			;06c9
l06cah:
	ld (hl),h			;06ca
	add a,(hl)			;06cb
sub_06cch:
	add a,a			;06cc
	adc a,b			;06cd
	adc a,c			;06ce
l06cfh:
	ld (hl),h			;06cf
l06d0h:
	adc a,d			;06d0
	add a,a			;06d1
	ld (hl),h			;06d2
	add a,l			;06d3
	add a,c			;06d4
	ld (hl),h			;06d5
	adc a,e			;06d6
sub_06d7h:
	adc a,h			;06d7
	ld (hl),h			;06d8
	adc a,e			;06d9
	adc a,h			;06da
	ld (hl),h			;06db
	adc a,l			;06dc
	adc a,(hl)			;06dd
	ld (hl),h			;06de
	adc a,a			;06df
	adc a,(hl)			;06e0
	jr nz,l0703h		;06e1
	ld (hl),h			;06e3
	adc a,a			;06e4
	adc a,(hl)			;06e5
	ld (hl),h			;06e6
	adc a,l			;06e7
	adc a,(hl)			;06e8
	sub b			;06e9
	sub c			;06ea
	jr nz,l067dh		;06eb
	sub c			;06ed
	jr nz,l0680h		;06ee
	sub c			;06f0
	jr nz,l0683h		;06f1
sub_06f3h:
	adc a,(hl)			;06f3
	jr nz,l0716h		;06f4
	jr nz,l0688h		;06f6
sub_06f8h:
	adc a,(hl)			;06f8
	jr nz,l068bh		;06f9
	sub c			;06fb
	jr nz,l0690h		;06fc
	sub e			;06fe
sub_06ffh:
	sub d			;06ff
l0700h:
	sub e			;0700
	sub d			;0701
l0702h:
	sub e			;0702
l0703h:
	sub h			;0703
	sub l			;0704
sub_0705h:
	jr nz,l069dh		;0705
l0707h:
	sub a			;0707
	sub h			;0708
	sub l			;0709
	sbc a,b			;070a
	sbc a,c			;070b
	sbc a,d			;070c
	sbc a,e			;070d
	sbc a,h			;070e
	sbc a,l			;070f
	sbc a,(hl)			;0710
	sbc a,a			;0711
	and b			;0712
	and c			;0713
	and d			;0714
	and e			;0715
l0716h:
	and h			;0716
	and l			;0717
	jr nz,l06c0h		;0718
	and a			;071a
	and h			;071b
	and l			;071c
	xor b			;071d
	xor c			;071e
	xor d			;071f
l0720h:
	xor e			;0720
l0721h:
	xor h			;0721
	xor l			;0722
	ld d,000h		;0723
	ld l,d			;0725
	ld b,008h		;0726
l0728h:
	add hl,hl			;0728
	jr nc,l072ch		;0729
	add hl,de			;072b
l072ch:
	djnz l0728h		;072c
	ret			;072e
	rst 18h			;072f
	ld a,(de)			;0730
	ld c,a			;0731
l0732h:
	inc de			;0732
	ld a,(de)			;0733
	or a			;0734
	ret z			;0735
	out (0beh),a		;0736
	ld a,c			;0738
	ex (sp),hl			;0739
	ex (sp),hl			;073a
	out (0beh),a		;073b
	jr l0732h		;073d
sub_073fh:
	ld a,b			;073f
	out (0bfh),a		;0740
	ld a,c			;0742
	out (0bfh),a		;0743
	ret			;0745
	push af			;0746
	rst 18h			;0747
	ex (sp),hl			;0748
	ex (sp),hl			;0749
	pop af			;074a
	out (0beh),a		;074b
	ret			;074d
	rst 18h			;074e
	ex (sp),hl			;074f
	ex (sp),hl			;0750
	in a,(0beh)		;0751
	ret			;0753
	ex de,hl			;0754
	rst 18h			;0755
	ex (sp),hl			;0756
	ex (sp),hl			;0757
l0758h:
	ld a,(de)			;0758
	out (0beh),a		;0759
	inc de			;075b
	dec bc			;075c
	ld a,b			;075d
	or c			;075e
	jr nz,l0758h		;075f
	ret			;0761
	rst 18h			;0762
	ex (sp),hl			;0763
	ex (sp),hl			;0764
l0765h:
	in a,(0beh)		;0765
	ld (de),a			;0767
	inc de			;0768
	dec bc			;0769
	ld a,b			;076a
	or c			;076b
	jr nz,l0765h		;076c
	ret			;076e
l076fh:
	call sub_064eh		;076f
	ex de,hl			;0772
	call sub_0646h		;0773
	ex de,hl			;0776
	inc hl			;0777
	inc de			;0778
l0779h:
	dec bc			;0779
	ld a,b			;077a
	or c			;077b
	jr nz,l076fh		;077c
	ret			;077e
	ld hl,l7800h		;077f
	ld bc,00300h		;0782
l0785h:
	push de			;0785
	rst 18h			;0786
l0787h:
	ex (sp),hl			;0787
	ex (sp),hl			;0788
	ld a,020h		;0789
	out (0beh),a		;078b
	ex (sp),hl			;078d
l078eh:
	ex (sp),hl			;078e
	ld a,001h		;078f
	out (0beh),a		;0791
	dec bc			;0793
	ld a,b			;0794
	or c			;0795
	jr nz,l0787h		;0796
	pop de			;0798
	ret			;0799
	ld hl,l7800h		;079a
	ld bc,00300h		;079d
	push de			;07a0
	rst 18h			;07a1
l07a2h:
	ex (sp),hl			;07a2
	ex (sp),hl			;07a3
	ld a,020h		;07a4
	out (0beh),a		;07a6
	ex (sp),hl			;07a8
	ex (sp),hl			;07a9
	ld a,009h		;07aa
	out (0beh),a		;07ac
	dec bc			;07ae
	ld a,b			;07af
	or c			;07b0
	jr nz,l07a2h		;07b1
	pop de			;07b3
	ret			;07b4
	ld hl,07f00h		;07b5
	ld bc,00040h		;07b8
	ld a,0efh		;07bb
	push de			;07bd
	ld d,a			;07be
	rst 18h			;07bf
	ex (sp),hl			;07c0
	ex (sp),hl			;07c1
l07c2h:
	ld a,d			;07c2
	out (0beh),a		;07c3
	dec bc			;07c5
	ld a,b			;07c6
	or c			;07c7
	jr nz,l07c2h		;07c8
	pop de			;07ca
	ret			;07cb
	push af			;07cc
	ld a,082h		;07cd
	out (0bfh),a		;07cf
	ld a,081h		;07d1
	out (0bfh),a		;07d3
	pop af			;07d5
	ret			;07d6
	push af			;07d7
	ld a,0e2h		;07d8
	out (0bfh),a		;07da
	ld a,081h		;07dc
	out (0bfh),a		;07de
	pop af			;07e0
	ret			;07e1
	ld hl,l0785h		;07e2
	ld c,080h		;07e5
	ld e,00bh		;07e7
l07e9h:
	ld b,(hl)			;07e9
	call sub_063fh		;07ea
	inc hl			;07ed
	inc c			;07ee
	dec e			;07ef
	jr nz,l07e9h		;07f0
	ret			;07f2
	di			;07f3
	in a,(0bfh)		;07f4
	call 006e2h		;07f6
	ld hl,l3dbah		;07f9
	ld de,0c000h		;07fc
	ld b,020h		;07ff
	rst 20h			;0801
l0802h:
	ld hl,l4000h		;0802
	ld bc,l4000h		;0805
	xor a			;0808
	call sub_06bdh		;0809
l080ch:
	ld de,l5f03h		;080c
	ld hl,l4000h		;080f
	ld a,000h		;0812
	ex af,af'			;0814
	call 0080bh		;0815
sub_0818h:
	ld de,l6a48h		;0818
	ld hl,0c700h		;081b
	ld a,0ffh		;081e
l0820h:
	ex af,af'			;0820
	call 0080bh		;0821
	call 00842h		;0824
	ld hl,l03ffh+1		;0827
	ld de,0d7e0h		;082a
	ld bc,000c0h		;082d
	call sub_0662h		;0830
	ld hl,l0cc0h		;0833
	ld de,0d8a0h		;0836
	ld bc,l0700h		;0839
	call sub_0662h		;083c
	di			;083f
	call sub_06cch		;0840
	ld hl,06000h		;0843
	ld de,04fe3h		;0846
	ld a,000h		;0849
	ex af,af'			;084b
	call 0080bh		;084c
	ld hl,l3800h		;084f
	ld de,07e00h		;0852
	ld bc,l0200h		;0855
	call 0066fh		;0858
	ld hl,03f00h		;085b
	ld de,l7f40h		;085e
	ld bc,00040h		;0861
	call 0066fh		;0864
	ld hl,0c700h		;0867
	ld de,l5d40h		;086a
	ld bc,002c0h		;086d
	call 00654h		;0870
sub_0873h:
	ld hl,0d8a0h		;0873
	ld de,l4cc0h		;0876
	ld bc,l0700h		;0879
	call 00654h		;087c
	call sub_067fh		;087f
	jp sub_06b5h		;0882
	ld h,(hl)			;0885
	add a,d			;0886
	rst 38h			;0887
	rst 38h			;0888
	rst 38h			;0889
	rst 38h			;088a
	ei			;088b
l088ch:
	inc c			;088c
	nop			;088d
	nop			;088e
	rst 38h			;088f
	ld a,(0c001h)		;0890
	ld (0c01ah),a		;0893
	ld a,(0c4c4h)		;0896
	or a			;0899
	jr nz,l08e8h		;089a
	ld a,007h		;089c
	out (0deh),a		;089e
	in a,(0dch)		;08a0
	ld c,a			;08a2
	ld a,002h		;08a3
	out (0deh),a		;08a5
	in a,(0dch)		;08a7
	bit 4,a		;08a9
	jr nz,l08afh		;08ab
	res 4,c		;08ad
l08afh:
	ld a,003h		;08af
	out (0deh),a		;08b1
	in a,(0dch)		;08b3
	bit 4,a		;08b5
	jr nz,l08bbh		;08b7
l08b9h:
	res 5,c		;08b9
l08bbh:
	ld a,004h		;08bb
	out (0deh),a		;08bd
	in a,(0dch)		;08bf
l08c1h:
	bit 5,a		;08c1
	jr nz,l08c7h		;08c3
	res 1,c		;08c5
l08c7h:
	ld a,005h		;08c7
	out (0deh),a		;08c9
	in a,(0dch)		;08cb
	bit 5,a		;08cd
	jr nz,l08d3h		;08cf
	res 2,c		;08d1
l08d3h:
	ld a,006h		;08d3
	out (0deh),a		;08d5
	in a,(0dch)		;08d7
	bit 5,a		;08d9
	jr nz,l08dfh		;08db
	res 3,c		;08dd
l08dfh:
	bit 6,a		;08df
	jr nz,l08e5h		;08e1
	res 0,c		;08e3
l08e5h:
	ld a,c			;08e5
	jr l08eah		;08e6
l08e8h:
	in a,(0dch)		;08e8
l08eah:
	ld hl,0c000h		;08ea
	bit 2,(hl)		;08ed
	ret z			;08ef
sub_08f0h:
	cpl			;08f0
	and 030h		;08f1
	jp z,l4f15h		;08f3
	ld hl,0c015h		;08f6
	ld (hl),001h		;08f9
	ld a,0ffh		;08fb
	ret			;08fd
sub_08feh:
	ld b,003h		;08fe
l0900h:
	ld de,00000h		;0900
l0903h:
	dec de			;0903
	ld a,d			;0904
	or e			;0905
	jr nz,l0903h		;0906
	djnz l0900h		;0908
	ret			;090a
	ld b,004h		;090b
l090dh:
	push bc			;090d
	push hl			;090e
	call sub_0818h		;090f
	pop hl			;0912
	inc hl			;0913
	pop bc			;0914
	djnz l090dh		;0915
	ret			;0917
l0918h:
	ld a,(de)			;0918
	inc de			;0919
	or a			;091a
	ret z			;091b
	ld c,a			;091c
	and 07fh		;091d
	ld b,a			;091f
l0920h:
	ld a,(de)			;0920
	ex af,af'			;0921
	or a			;0922
	jr nz,l092bh		;0923
	ex af,af'			;0925
	call sub_0646h		;0926
	jr l092dh		;0929
l092bh:
	ex af,af'			;092b
	ld (hl),a			;092c
l092dh:
	bit 7,c		;092d
	jr z,l0932h		;092f
	inc de			;0931
l0932h:
	inc hl			;0932
	inc hl			;0933
	inc hl			;0934
	inc hl			;0935
	djnz l0920h		;0936
	bit 7,c		;0938
	jr nz,l0918h		;093a
	inc de			;093c
	jr l0918h		;093d
	ld d,d			;093f
	ld b,l			;0940
	ld d,(hl)			;0941
	ld hl,l04c0h		;0942
	ld de,l5d00h		;0945
	ld b,031h		;0948
l094ah:
	push bc			;094a
	push hl			;094b
	push de			;094c
	ld de,0c680h		;094d
	ld bc,00040h		;0950
	call sub_0662h		;0953
l0956h:
	call sub_0873h		;0956
	pop de			;0959
	push de			;095a
	ld hl,0c680h		;095b
	ld bc,00040h		;095e
	call 00654h		;0961
	pop de			;0964
	ld hl,0ffc0h		;0965
	add hl,de			;0968
	ex de,hl			;0969
	pop hl			;096a
	ld bc,00040h		;096b
	add hl,bc			;096e
	pop bc			;096f
	djnz l094ah		;0970
	ret			;0972
	push bc			;0973
	push hl			;0974
	ld b,040h		;0975
	ld hl,0c680h		;0977
l097ah:
	push bc			;097a
	ld a,(hl)			;097b
	ld b,008h		;097c
l097eh:
	rrca			;097e
	rl c		;097f
	djnz l097eh		;0981
	ld (hl),c			;0983
	pop bc			;0984
	inc hl			;0985
	djnz l097ah		;0986
	pop hl			;0988
	pop bc			;0989
	ret			;098a
	ld bc,l0101h		;098b
	ld bc,l0101h		;098e
	ld bc,l0101h		;0991
	ld bc,l0101h		;0994
	ld bc,l0200h+1		;0997
	inc bc			;099a
	inc b			;099b
	dec b			;099c
	dec b			;099d
	dec b			;099e
	dec b			;099f
	dec b			;09a0
	dec b			;09a1
	dec b			;09a2
	dec b			;09a3
	dec b			;09a4
	dec b			;09a5
	dec b			;09a6
	dec b			;09a7
	dec b			;09a8
	ld b,007h		;09a9
	jr nz,l09b5h		;09ab
	nop			;09ad
	nop			;09ae
	nop			;09af
	nop			;09b0
	nop			;09b1
	nop			;09b2
	nop			;09b3
	nop			;09b4
l09b5h:
	nop			;09b5
	nop			;09b6
	nop			;09b7
	nop			;09b8
	add hl,bc			;09b9
	ld a,(bc)			;09ba
	jr nz,$+32		;09bb
	dec bc			;09bd
	nop			;09be
	nop			;09bf
	nop			;09c0
	nop			;09c1
	nop			;09c2
	nop			;09c3
	nop			;09c4
	nop			;09c5
	nop			;09c6
	nop			;09c7
	nop			;09c8
	inc c			;09c9
	dec c			;09ca
l09cbh:
	jr nz,l09edh		;09cb
	jr nz,$+14		;09cd
	nop			;09cf
	nop			;09d0
	nop			;09d1
	nop			;09d2
	nop			;09d3
	nop			;09d4
sub_09d5h:
	nop			;09d5
	nop			;09d6
	nop			;09d7
	nop			;09d8
	rrca			;09d9
	djnz $+32		;09da
	jr nz,$+32		;09dc
	jr nz,l09f1h		;09de
	nop			;09e0
	nop			;09e1
	nop			;09e2
	nop			;09e3
	nop			;09e4
	nop			;09e5
	nop			;09e6
	nop			;09e7
	nop			;09e8
	ld (de),a			;09e9
	inc de			;09ea
	jr nz,l0a0dh		;09eb
l09edh:
	jr nz,l0a0fh		;09ed
	jr nz,l0a05h		;09ef
l09f1h:
	nop			;09f1
	nop			;09f2
	nop			;09f3
	nop			;09f4
	nop			;09f5
	nop			;09f6
	nop			;09f7
	dec d			;09f8
	ld d,017h		;09f9
	jr nz,l0a1dh		;09fb
	jr nz,l0a1fh		;09fd
	jr nz,l0a21h		;09ff
	jr l0a03h		;0a01
l0a03h:
	nop			;0a03
	nop			;0a04
l0a05h:
	nop			;0a05
l0a06h:
	nop			;0a06
	nop			;0a07
	add hl,de			;0a08
	ld a,(de)			;0a09
	dec de			;0a0a
l0a0bh:
	jr nz,l0a2dh		;0a0b
l0a0dh:
	jr nz,l0a2fh		;0a0d
l0a0fh:
	jr nz,l0a31h		;0a0f
	jr nz,l0a2fh		;0a11
	nop			;0a13
	nop			;0a14
	nop			;0a15
	nop			;0a16
	nop			;0a17
l0a18h:
	dec e			;0a18
	ld e,01fh		;0a19
	jr nz,$+32		;0a1b
l0a1dh:
	jr nz,$+32		;0a1d
l0a1fh:
	jr nz,$+32		;0a1f
l0a21h:
	jr nz,$+32		;0a21
	ld hl,00000h		;0a23
	nop			;0a26
	nop			;0a27
	ld (02423h),hl		;0a28
	jr nz,l0a4dh		;0a2b
l0a2dh:
	jr nz,l0a4fh		;0a2d
l0a2fh:
	jr nz,l0a51h		;0a2f
l0a31h:
	jr nz,l0a53h		;0a31
	jr nz,l0a5ah		;0a33
	nop			;0a35
	nop			;0a36
	nop			;0a37
	ld h,027h		;0a38
	jr z,l0a5ch		;0a3a
	jr nz,l0a5eh		;0a3c
	jr nz,l0a60h		;0a3e
	jr nz,$+32		;0a40
	jr nz,$+32		;0a42
	jr nz,l0a6fh		;0a44
	nop			;0a46
	nop			;0a47
	ld hl,(02c2bh)		;0a48
	jr nz,l0a6dh		;0a4b
l0a4dh:
	jr nz,l0a6fh		;0a4d
l0a4fh:
	jr nz,l0a71h		;0a4f
l0a51h:
	jr nz,l0a73h		;0a51
l0a53h:
	jr nz,l0a75h		;0a53
	jr nz,l0a84h		;0a55
	ld d,e			;0a57
	add hl,bc			;0a58
	ld b,e			;0a59
l0a5ah:
	add hl,bc			;0a5a
	ld c,a			;0a5b
l0a5ch:
	add hl,bc			;0a5c
	ld d,d			;0a5d
l0a5eh:
	add hl,bc			;0a5e
	ld b,l			;0a5f
l0a60h:
	add hl,bc			;0a60
	jr nz,$+9		;0a61
	jr nz,$+9		;0a63
	jr nz,l0a70h		;0a65
	jr nz,l0a72h		;0a67
	jr nz,$+9		;0a69
	jr nc,l0a76h		;0a6b
l0a6dh:
	jr nc,l0a78h		;0a6d
l0a6fh:
	dec a			;0a6f
l0a70h:
	add hl,bc			;0a70
l0a71h:
	ld h,(hl)			;0a71
l0a72h:
	add hl,bc			;0a72
l0a73h:
	ld a,009h		;0a73
l0a75h:
	dec a			;0a75
l0a76h:
	dec bc			;0a76
	ld (hl),d			;0a77
l0a78h:
	add hl,bc			;0a78
	ld l,h			;0a79
	add hl,bc			;0a7a
	ld l,l			;0a7b
	add hl,bc			;0a7c
	jr nz,l0a88h		;0a7d
	ld b,e			;0a7f
	add hl,bc			;0a80
	ld c,a			;0a81
	add hl,bc			;0a82
	ld d,l			;0a83
l0a84h:
	add hl,bc			;0a84
	ld d,d			;0a85
	add hl,bc			;0a86
	ld d,e			;0a87
l0a88h:
	add hl,bc			;0a88
	ld b,l			;0a89
	add hl,bc			;0a8a
	jr nz,l0a96h		;0a8b
	jr nc,l0a98h		;0a8d
	jr nz,l0a9ah		;0a8f
	ld (hl),e			;0a91
	add hl,bc			;0a92
	ld (hl),e			;0a93
	add hl,bc			;0a94
	ld (hl),e			;0a95
l0a96h:
	add hl,bc			;0a96
	ld d,e			;0a97
l0a98h:
	add hl,bc			;0a98
	ld d,b			;0a99
l0a9ah:
	add hl,bc			;0a9a
l0a9bh:
	ld b,l			;0a9b
l0a9ch:
	add hl,bc			;0a9c
	ld b,l			;0a9d
	add hl,bc			;0a9e
	ld b,h			;0a9f
	add hl,bc			;0aa0
	jr nz,l0aach		;0aa1
	jr nc,l0aaeh		;0aa3
	jr nc,l0ab0h		;0aa5
	jr nc,l0ab2h		;0aa7
	ld l,c			;0aa9
	add hl,bc			;0aaa
	ld l,d			;0aab
l0aach:
	add hl,bc			;0aac
	ld l,e			;0aad
l0aaeh:
	add hl,bc			;0aae
	dec a			;0aaf
l0ab0h:
	dec c			;0ab0
	ccf			;0ab1
l0ab2h:
	add hl,bc			;0ab2
	ccf			;0ab3
	add hl,bc			;0ab4
	dec a			;0ab5
	rrca			;0ab6
	ld (hl),d			;0ab7
	dec c			;0ab8
	ld l,(hl)			;0ab9
	add hl,bc			;0aba
	ld l,a			;0abb
	add hl,bc			;0abc
	jr nz,$+9		;0abd
	ld c,h			;0abf
	add hl,bc			;0ac0
	ld b,l			;0ac1
	add hl,bc			;0ac2
	ld b,(hl)			;0ac3
	add hl,bc			;0ac4
	ld d,h			;0ac5
	add hl,bc			;0ac6
l0ac7h:
	jr nz,l0ad2h		;0ac7
	jr nc,l0ad4h		;0ac9
	jr nc,$+9		;0acb
	jr nc,l0ad8h		;0acd
	jr nz,$+9		;0acf
	ld (hl),e			;0ad1
l0ad2h:
	add hl,bc			;0ad2
	ld (hl),e			;0ad3
l0ad4h:
	add hl,bc			;0ad4
	ld hl,l7b00h		;0ad5
l0ad8h:
	ld de,l088ch		;0ad8
	ld c,00ch		;0adb
l0addh:
	rst 18h			;0add
	ld b,010h		;0ade
l0ae0h:
	ld a,(de)			;0ae0
	out (0beh),a		;0ae1
	ex (sp),hl			;0ae3
	ex (sp),hl			;0ae4
	ld a,001h		;0ae5
	out (0beh),a		;0ae7
	ex (sp),hl			;0ae9
	ex (sp),hl			;0aea
	inc de			;0aeb
	djnz l0ae0h		;0aec
	inc de			;0aee
	push de			;0aef
	ld de,00040h		;0af0
	add hl,de			;0af3
	pop de			;0af4
	dec c			;0af5
	jr nz,l0addh		;0af6
	ld hl,l7ddeh		;0af8
	ld de,l0956h		;0afb
	ld c,00ch		;0afe
l0b00h:
	rst 18h			;0b00
	ld b,011h		;0b01
l0b03h:
	ld a,(de)			;0b03
	out (0beh),a		;0b04
	ex (sp),hl			;0b06
	ex (sp),hl			;0b07
	ld a,003h		;0b08
	out (0beh),a		;0b0a
	ex (sp),hl			;0b0c
	ex (sp),hl			;0b0d
	dec de			;0b0e
	djnz l0b03h		;0b0f
	push de			;0b11
	ld de,0ffc0h		;0b12
	add hl,de			;0b15
	pop de			;0b16
	dec c			;0b17
	jr nz,l0b00h		;0b18
	ld hl,l0956h+1		;0b1a
	ld de,07802h		;0b1d
	ld b,07eh		;0b20
	call 00020h		;0b22
	ret			;0b25
	ld a,(0c301h)		;0b26
	bit 7,a		;0b29
	jr nz,l0b3eh		;0b2b
	bit 6,a		;0b2d
	jp nz,l0f15h+3		;0b2f
	ld de,0c301h		;0b32
	ld hl,01014h		;0b35
	ld bc,0001fh		;0b38
	ldir		;0b3b
	ret			;0b3d
l0b3eh:
	ld a,(0c001h)		;0b3e
	ld (0c316h),a		;0b41
	ld a,(0c000h)		;0b44
	bit 5,a		;0b47
	jp nz,l0f55h		;0b49
	bit 6,a		;0b4c
	jr z,l0b59h		;0b4e
	ld (ix+001h),080h		;0b50
	ld (ix+00ah),003h		;0b54
	ret			;0b58
l0b59h:
	ld a,(0c00dh)		;0b59
	or a			;0b5c
	jr nz,l0b67h		;0b5d
	set 5,(ix+016h)		;0b5f
	res 4,(ix+016h)		;0b63
l0b67h:
	ld (ix+001h),080h		;0b67
	ld a,(0c309h)		;0b6b
	or a			;0b6e
	jr z,l0b79h		;0b6f
	ld (ix+01fh),0ffh		;0b71
	ld (ix+009h),000h		;0b75
l0b79h:
	ld a,(0c318h)		;0b79
	sub 001h		;0b7c
	jr c,l0b92h		;0b7e
	jr z,l0b8ah		;0b80
	ld de,01033h		;0b82
	ld bc,0fed3h		;0b85
	jr l0b98h		;0b88
l0b8ah:
	ld de,0108dh		;0b8a
	ld bc,0ff32h		;0b8d
	jr l0b98h		;0b90
l0b92h:
	ld de,010e7h		;0b92
	ld bc,0ff8ch		;0b95
l0b98h:
	ld hl,(0c31ah)		;0b98
	add hl,bc			;0b9b
	ld bc,0ff00h		;0b9c
	jr c,l0bc3h		;0b9f
	ld a,(0c316h)		;0ba1
	bit 5,a		;0ba4
	ld bc,0ffb4h		;0ba6
	jr nz,l0bc3h		;0ba9
	ld hl,(0c31ah)		;0bab
l0baeh:
	add hl,de			;0bae
	ld e,(hl)			;0baf
	ld d,000h		;0bb0
	ld hl,(0c319h)		;0bb2
	add hl,de			;0bb5
	ld (0c319h),hl		;0bb6
	ld a,(0c31bh)		;0bb9
	adc a,000h		;0bbc
	ld (0c31bh),a		;0bbe
	jr l0be2h		;0bc1
l0bc3h:
	ld hl,(0c319h)		;0bc3
	add hl,bc			;0bc6
	ld (0c319h),hl		;0bc7
	ld a,(0c31bh)		;0bca
	adc a,0ffh		;0bcd
	ld (0c31bh),a		;0bcf
	jr c,l0be2h		;0bd2
	ld hl,00000h		;0bd4
	ld (0c31ah),hl		;0bd7
	ld (0c319h),hl		;0bda
	ld (0c31ch),hl		;0bdd
	jr l0c39h		;0be0
l0be2h:
	ld a,(0c316h)		;0be2
	bit 4,a		;0be5
	jr nz,l0c0bh		;0be7
	ld de,0ff34h		;0be9
	ld hl,(0c319h)		;0bec
	add hl,de			;0bef
sub_0bf0h:
	ld (0c319h),hl		;0bf0
	ld a,(0c31bh)		;0bf3
	adc a,0ffh		;0bf6
	ld (0c31bh),a		;0bf8
	jr c,l0c0bh		;0bfb
	ld hl,00000h		;0bfd
	ld (0c31ah),hl		;0c00
	ld (0c319h),hl		;0c03
	ld (0c31ch),hl		;0c06
	jr l0c39h		;0c09
l0c0bh:
	ld hl,(0c31ah)		;0c0b
	srl h		;0c0e
	rr l		;0c10
l0c12h:
	ld a,(0c318h)		;0c12
	sub 001h		;0c15
	jr c,l0c20h		;0c17
	jr z,l0c27h		;0c19
	ld de,l124ah		;0c1b
	jr l0c34h		;0c1e
l0c20h:
	ld b,060h		;0c20
	ld de,l115fh		;0c22
l0c25h:
	jr l0c2ch		;0c25
l0c27h:
	ld b,08eh		;0c27
	ld de,l11beh		;0c29
l0c2ch:
	ld a,l			;0c2c
	cp b			;0c2d
	jr c,l0c34h		;0c2e
	ld a,03fh		;0c30
	jr l0c36h		;0c32
l0c34h:
	add hl,de			;0c34
	ld a,(hl)			;0c35
l0c36h:
	ld (0c31dh),a		;0c36
l0c39h:
	ld a,(0c316h)		;0c39
	cpl			;0c3c
	and 003h		;0c3d
	jr z,l0c66h		;0c3f
	ld b,a			;0c41
	ld a,(0c317h)		;0c42
	cpl			;0c45
	and 003h		;0c46
	cp b			;0c48
	jr z,l0c66h		;0c49
	dec b			;0c4b
	jr nz,l0c57h		;0c4c
	ld a,(0c318h)		;0c4e
	or a			;0c51
	jr z,l0c66h		;0c52
	dec a			;0c54
	jr l0c5fh		;0c55
l0c57h:
	ld a,(0c318h)		;0c57
	cp 002h		;0c5a
	jr z,l0c66h		;0c5c
	inc a			;0c5e
l0c5fh:
	ld (0c318h),a		;0c5f
	ld (ix+009h),0ffh		;0c62
l0c66h:
	ld hl,(0c2f5h)		;0c66
	ld d,h			;0c69
	ld e,l			;0c6a
	bit 7,h		;0c6b
	jr nz,l0c91h		;0c6d
	ld bc,0fe40h		;0c6f
	add hl,bc			;0c72
	ld b,006h		;0c73
	jp c,l0baeh		;0c75
	ld h,d			;0c78
	ld l,e			;0c79
	ld bc,0ff00h		;0c7a
	add hl,bc			;0c7d
	ld b,005h		;0c7e
	jp c,l0baeh		;0c80
	ex de,hl			;0c83
	ld bc,0ffc0h		;0c84
	add hl,bc			;0c87
	ld b,004h		;0c88
	jp c,l0baeh		;0c8a
	ld b,000h		;0c8d
	jr l0caeh		;0c8f
l0c91h:
	ld bc,001c0h		;0c91
	add hl,bc			;0c94
	ld b,001h		;0c95
	jr nc,l0caeh		;0c97
	ld h,d			;0c99
	ld l,e			;0c9a
	ld bc,l0100h		;0c9b
	add hl,bc			;0c9e
	ld b,002h		;0c9f
	jr nc,l0caeh		;0ca1
	ex de,hl			;0ca3
	ld bc,00040h		;0ca4
	add hl,bc			;0ca7
	ld b,003h		;0ca8
	jr nc,l0caeh		;0caa
	ld b,000h		;0cac
l0caeh:
	ld (ix+00ch),b		;0cae
	ld a,(0c315h)		;0cb1
	or a			;0cb4
	jp nz,l0f82h		;0cb5
	ld a,(0c316h)		;0cb8
	bit 2,a		;0cbb
	jp z,00de7h		;0cbd
l0cc0h:
	bit 3,a		;0cc0
	jp z,l0e7bh		;0cc2
	ld hl,00000h		;0cc5
l0cc8h:
	ld (0c30eh),hl		;0cc8
	ld b,000h		;0ccb
	ld a,(0c30ch)		;0ccd
	or a			;0cd0
	jr z,l0cefh		;0cd1
	cp 003h		;0cd3
	jr z,l0cefh		;0cd5
	cp 004h		;0cd7
	jr z,l0cefh		;0cd9
l0cdbh:
	jr c,l0ce7h		;0cdb
	ld a,(0c30ah)		;0cdd
sub_0ce0h:
	bit 2,a		;0ce0
	jr z,l0cefh		;0ce2
	dec b			;0ce4
	jr l0cefh		;0ce5
l0ce7h:
	ld a,(0c30ah)		;0ce7
	cp 003h		;0cea
	jr nc,l0cefh		;0cec
	dec b			;0cee
l0cefh:
	ld a,b			;0cef
	ld (0c308h),a		;0cf0
	ld hl,(0c31ah)		;0cf3
	ld de,0fff6h		;0cf6
	add hl,de			;0cf9
	jr nc,l0d25h		;0cfa
	ld a,(0c30ch)		;0cfc
	or a			;0cff
l0d00h:
	jr z,l0d25h		;0d00
sub_0d02h:
	cp 003h		;0d02
	jr z,l0d25h		;0d04
	cp 004h		;0d06
	jr z,l0d25h		;0d08
	ld a,(0c30dh)		;0d0a
	jr nc,l0d15h		;0d0d
l0d0fh:
	cp 002h		;0d0f
	jr z,l0d25h		;0d11
	jr l0d18h		;0d13
l0d15h:
	dec a			;0d15
	jr z,l0d25h		;0d16
l0d18h:
	ld a,(0c30ah)		;0d18
	bit 0,a		;0d1b
	jr nz,l0d57h		;0d1d
	ld (ix+00bh),000h		;0d1f
	jr l0d57h		;0d23
l0d25h:
	ld a,(0c316h)		;0d25
	cpl			;0d28
	and 00ch		;0d29
	jr nz,l0d3ch		;0d2b
	ld a,(0c304h)		;0d2d
	inc a			;0d30
	ld (0c304h),a		;0d31
	cp 007h		;0d34
	jr c,l0d57h		;0d36
	xor a			;0d38
	ld (0c304h),a		;0d39
l0d3ch:
	ld a,(0c30ah)		;0d3c
	cp 003h		;0d3f
	inc a			;0d41
	jr c,l0d54h		;0d42
	cp 005h		;0d44
	dec a			;0d46
	dec a			;0d47
	jr nc,l0d54h		;0d48
	ld (ix+00dh),000h		;0d4a
	ld (ix+00bh),000h		;0d4e
	ld a,003h		;0d52
l0d54h:
	ld (0c30ah),a		;0d54
l0d57h:
	ld a,(0c30ch)		;0d57
	cp 004h		;0d5a
	jr c,l0d84h		;0d5c
	jr z,l0db2h		;0d5e
	ld hl,(0c31ah)		;0d60
	ex de,hl			;0d63
	cp 006h		;0d64
	jr nz,l0d71h		;0d66
	ld l,e			;0d68
	ld h,d			;0d69
	add hl,hl			;0d6a
	add hl,de			;0d6b
	srl h		;0d6c
	rr l		;0d6e
	ex de,hl			;0d70
l0d71h:
	ld a,(0c308h)		;0d71
	or a			;0d74
	jr z,l0d7bh		;0d75
	srl d		;0d77
	rr e		;0d79
l0d7bh:
	ld hl,(0c30eh)		;0d7b
	add hl,de			;0d7e
	ld (0c30eh),hl		;0d7f
	jr l0db2h		;0d82
l0d84h:
	or a			;0d84
	jr z,l0db2h		;0d85
	cp 003h		;0d87
	jr z,l0db2h		;0d89
	ld hl,(0c31ah)		;0d8b
	dec a			;0d8e
	jr nz,l0d99h		;0d8f
	ld e,l			;0d91
	ld d,h			;0d92
	add hl,hl			;0d93
	add hl,de			;0d94
	srl h		;0d95
	rr l		;0d97
l0d99h:
	ld a,(0c308h)		;0d99
	or a			;0d9c
	jr z,l0da3h		;0d9d
	srl h		;0d9f
	rr l		;0da1
l0da3h:
	ld a,l			;0da3
	cpl			;0da4
	ld l,a			;0da5
	ld a,h			;0da6
	cpl			;0da7
	ld h,a			;0da8
	inc hl			;0da9
	ex de,hl			;0daa
	ld hl,(0c30eh)		;0dab
	add hl,de			;0dae
	ld (0c30eh),hl		;0daf
l0db2h:
	ld hl,(0c30eh)		;0db2
	ex de,hl			;0db5
	ld l,(ix+01eh)		;0db6
	ld a,(0c013h)		;0db9
	ld h,a			;0dbc
	add hl,de			;0dbd
	ld a,h			;0dbe
	cp 0c0h		;0dbf
	jr nc,l0dcch		;0dc1
	cp 0a9h		;0dc3
	jr c,l0dcfh		;0dc5
	ld hl,0a800h		;0dc7
	jr l0dcfh		;0dca
l0dcch:
	ld hl,00000h		;0dcc
l0dcfh:
	ld (ix+01eh),l		;0dcf
	ld a,h			;0dd2
	ld (0c013h),a		;0dd3
	ld a,001h		;0dd6
	ld (0c033h),a		;0dd8
	ld (ix+002h),0b6h		;0ddb
	ld a,(0c013h)		;0ddf
	cp 012h		;0de2
	jr c,l0deah		;0de4
	cp 097h		;0de6
	jr c,l0e5dh		;0de8
l0deah:
	ld de,0ffb4h		;0dea
	ld a,(0c318h)		;0ded
	or a			;0df0
	jr z,l0dfeh		;0df1
	sla e		;0df3
	rl d		;0df5
	dec a			;0df7
	jr z,l0dfeh		;0df8
	sla e		;0dfa
	rl d		;0dfc
l0dfeh:
	ld hl,(0c319h)		;0dfe
	add hl,de			;0e01
	ld (0c319h),hl		;0e02
	ld a,(0c31bh)		;0e05
	adc a,0ffh		;0e08
	ld (0c31bh),a		;0e0a
	jr c,l0e1dh		;0e0d
l0e0fh:
	ld hl,00000h		;0e0f
	ld (0c319h),hl		;0e12
	ld (0c31ah),hl		;0e15
	ld (0c31ch),hl		;0e18
	jr l0e5dh		;0e1b
l0e1dh:
	ld a,(0c313h)		;0e1d
	or a			;0e20
	jr nz,l0e37h		;0e21
	ld a,(0c302h)		;0e23
	sub 002h		;0e26
	ld (0c302h),a		;0e28
	ld a,081h		;0e2b
	ld (0c100h),a		;0e2d
	ld hl,040b0h		;0e30
	ld (0c101h),hl		;0e33
	xor a			;0e36
l0e37h:
	ld b,a			;0e37
	ld d,007h		;0e38
	ld hl,(0c31ah)		;0e3a
	ld a,h			;0e3d
	or a			;0e3e
	jr nz,l0e54h		;0e3f
	ld a,l			;0e41
	cp 03ch		;0e42
	jr nc,l0e54h		;0e44
	ld d,00ah		;0e46
	cp 01eh		;0e48
	jr nc,l0e54h		;0e4a
	ld d,00fh		;0e4c
	cp 00dh		;0e4e
	jr nc,l0e54h		;0e50
	ld d,017h		;0e52
l0e54h:
	ld a,b			;0e54
	inc a			;0e55
	cp d			;0e56
	jr c,l0e5ah		;0e57
	xor a			;0e59
l0e5ah:
	ld (0c313h),a		;0e5a
l0e5dh:
	ld a,(ix+015h)		;0e5d
	or a			;0e60
	jr nz,l0eb0h		;0e61
	ld a,(0c30ch)		;0e63
	or a			;0e66
	jp z,00db0h		;0e67
	cp 003h		;0e6a
	jp z,00db0h		;0e6c
	cp 004h		;0e6f
	jp z,00db0h		;0e71
	ld de,0fee3h		;0e74
	cp 002h		;0e77
	jr z,l0e82h		;0e79
l0e7bh:
	cp 005h		;0e7b
	jr z,l0e82h		;0e7d
	ld de,0ff08h		;0e7f
l0e82h:
	ld hl,(0c31ah)		;0e82
	add hl,de			;0e85
	jp nc,00db0h		;0e86
	cp 004h		;0e89
	ld a,(0c316h)		;0e8b
	ld b,(ix+00dh)		;0e8e
	jr c,l0ea3h		;0e91
	bit 3,a		;0e93
	jp nz,00db0h		;0e95
	ld a,b			;0e98
	cp 002h		;0e99
	jr nz,l0eb0h		;0e9b
	ld (ix+015h),002h		;0e9d
	jr l0eb0h		;0ea1
l0ea3h:
	bit 2,a		;0ea3
	jp nz,00db0h		;0ea5
	ld a,b			;0ea8
	dec a			;0ea9
	jr nz,l0eb0h		;0eaa
	ld (ix+015h),001h		;0eac
l0eb0h:
	ld a,(0c30ah)		;0eb0
	add a,a			;0eb3
	ld c,a			;0eb4
	ld b,000h		;0eb5
	ld hl,l1006h		;0eb7
	add hl,bc			;0eba
	ld a,(0c306h)		;0ebb
	add a,(hl)			;0ebe
	ld (0c310h),a		;0ebf
	inc hl			;0ec2
	add a,(hl)			;0ec3
	ld (0c311h),a		;0ec4
	ld a,(0c316h)		;0ec7
	ld (0c317h),a		;0eca
	ld a,(0c312h)		;0ecd
	or a			;0ed0
	ret z			;0ed1
	ld a,00eh		;0ed2
	ld (0c069h),a		;0ed4
	ld a,001h		;0ed7
	ld (0c06eh),a		;0ed9
	ld a,00bh		;0edc
	ld (0c300h),a		;0ede
	ld a,000h		;0ee1
	ld (0c301h),a		;0ee3
	ret			;0ee6
	xor a			;0ee7
	ld (0c304h),a		;0ee8
	ld a,(0c30dh)		;0eeb
	or a			;0eee
	jr z,l0efeh		;0eef
	dec a			;0ef1
	jr z,l0efeh		;0ef2
	ld a,(0c30ch)		;0ef4
	cp 005h		;0ef7
	jr nc,l0f15h		;0ef9
	jp l0c25h		;0efb
l0efeh:
	ld (ix+00dh),001h		;0efe
	ld b,002h		;0f02
	ld a,(0c30bh)		;0f04
	inc a			;0f07
	cp 019h		;0f08
	jr c,l0f0eh		;0f0a
	dec a			;0f0c
	dec b			;0f0d
l0f0eh:
	ld (0c30bh),a		;0f0e
	ld a,b			;0f11
	ld (0c30ah),a		;0f12
l0f15h:
	ld (ix+01ch),000h		;0f15
	ld a,(0c30ch)		;0f19
	ld de,l0200h		;0f1c
	or a			;0f1f
	jr z,l0f45h		;0f20
	cp 004h		;0f22
	jr nc,l0f2eh		;0f24
	dec d			;0f26
	dec a			;0f27
	jr z,l0f45h		;0f28
	ld e,080h		;0f2a
	jr l0f45h		;0f2c
l0f2eh:
	ld (ix+01ch),0ffh		;0f2e
	ld a,(0c30ah)		;0f32
	inc d			;0f35
	cp 003h		;0f36
	jr c,l0f45h		;0f38
	ld a,(0c30ch)		;0f3a
	dec d			;0f3d
	cp 006h		;0f3e
	jr z,l0f45h		;0f40
	ld de,00180h		;0f42
l0f45h:
	ld hl,(0c31ah)		;0f45
	ld a,h			;0f48
	or a			;0f49
	jr nz,l0f6dh		;0f4a
	ld a,l			;0f4c
	or a			;0f4d
	jp z,l0cdbh		;0f4e
	cp 046h		;0f51
	jr nc,l0f6dh		;0f53
l0f55h:
	srl d		;0f55
	rr e		;0f57
	cp 028h		;0f59
	jr nc,l0f6dh		;0f5b
	srl d		;0f5d
	rr e		;0f5f
	cp 014h		;0f61
	jr nc,l0f6dh		;0f63
	srl e		;0f65
	cp 00ah		;0f67
	jr nc,l0f6dh		;0f69
	srl e		;0f6b
l0f6dh:
	ex de,hl			;0f6d
	ld (0c30eh),hl		;0f6e
	ld a,(0c31ch)		;0f71
	or a			;0f74
	jp z,00cb2h		;0f75
	jp l0c57h		;0f78
	xor a			;0f7b
l0f7ch:
	ld (0c304h),a		;0f7c
	ld a,(0c30dh)		;0f7f
l0f82h:
	or a			;0f82
	jr z,l0f94h		;0f83
	dec a			;0f85
	jr nz,l0f94h		;0f86
	ld a,(0c30ch)		;0f88
	dec a			;0f8b
	jr z,l0fabh		;0f8c
	dec a			;0f8e
l0f8fh:
	jr z,l0fabh		;0f8f
	jp l0c25h		;0f91
l0f94h:
	ld (ix+00dh),002h		;0f94
	ld b,004h		;0f98
	ld a,(0c30bh)		;0f9a
	inc a			;0f9d
	cp 019h		;0f9e
	jr c,l0fa4h		;0fa0
	dec a			;0fa2
	inc b			;0fa3
l0fa4h:
	ld (0c30bh),a		;0fa4
	ld a,b			;0fa7
	ld (0c30ah),a		;0fa8
l0fabh:
	ld (ix+01ch),000h		;0fab
	ld a,(0c30ch)		;0faf
	ld de,l0200h		;0fb2
	or a			;0fb5
	jr z,l0fdbh		;0fb6
	cp 003h		;0fb8
	jr c,l0fc5h		;0fba
	dec d			;0fbc
	cp 006h		;0fbd
	jr z,l0fdbh		;0fbf
	ld e,080h		;0fc1
	jr l0fdbh		;0fc3
l0fc5h:
	ld (ix+01ch),0ffh		;0fc5
	ld a,(0c30ah)		;0fc9
	inc d			;0fcc
	cp 003h		;0fcd
	jr nc,l0fdbh		;0fcf
	ld a,(0c30ch)		;0fd1
	dec d			;0fd4
	dec a			;0fd5
	jr z,l0fdbh		;0fd6
	ld de,00180h		;0fd8
l0fdbh:
	ld hl,(0c31ah)		;0fdb
	ld a,h			;0fde
sub_0fdfh:
	or a			;0fdf
	jr nz,l1003h		;0fe0
	ld a,l			;0fe2
	or a			;0fe3
	jp z,l0cdbh		;0fe4
	cp 046h		;0fe7
	jr nc,l1003h		;0fe9
	srl d		;0feb
	rr e		;0fed
sub_0fefh:
	cp 028h		;0fef
	jr nc,l1003h		;0ff1
	srl d		;0ff3
	rr e		;0ff5
	cp 014h		;0ff7
	jr nc,l1003h		;0ff9
	srl e		;0ffb
	cp 00ah		;0ffd
	jr nc,l1003h		;0fff
	srl e		;1001
l1003h:
	ex de,hl			;1003
	ld a,l			;1004
	cpl			;1005
l1006h:
	ld l,a			;1006
	ld a,h			;1007
	cpl			;1008
	ld h,a			;1009
	inc hl			;100a
	ld (0c30eh),hl		;100b
	ld a,(0c31ch)		;100e
l1011h:
	or a			;1011
	jp z,00cb2h		;1012
	jp l0c57h		;1015
	ld a,(0c000h)		;1018
	bit 2,a		;101b
	jr z,l1025h		;101d
	ld a,0ffh		;101f
	ld (0c015h),a		;1021
	ret			;1024
l1025h:
	ld a,(0c013h)		;1025
	cp 054h		;1028
	jr z,l103fh		;102a
	jr c,l1030h		;102c
	sub 002h		;102e
l1030h:
	inc a			;1030
	ld (0c013h),a		;1031
	ld a,001h		;1034
	ld (0c048h),a		;1036
	ld a,0ffh		;1039
	ld (0c067h),a		;103b
	ret			;103e
l103fh:
	ld (ix+001h),000h		;103f
	ld a,(0c000h)		;1043
	bit 5,a		;1046
	ret nz			;1048
	ld a,081h		;1049
	ld (0c100h),a		;104b
	ld hl,04111h		;104e
	ld (0c101h),hl		;1051
	ret			;1054
	ld (ix+001h),080h		;1055
	ld (ix+00ah),003h		;1059
	ld a,(0c013h)		;105d
	cp 054h		;1060
	jr z,l1072h		;1062
	jr c,l1068h		;1064
	sub 002h		;1066
l1068h:
	inc a			;1068
	ld (0c013h),a		;1069
	ld a,001h		;106c
	ld (0c048h),a		;106e
	ret			;1071
l1072h:
	ld hl,(0c31ah)		;1072
	ld de,0fffeh		;1075
	add hl,de			;1078
	jr c,l107eh		;1079
	ld hl,00000h		;107b
l107eh:
	ld (0c31ah),hl		;107e
	ret			;1081
	ld hl,00000h		;1082
	ld (0c30eh),hl		;1085
	ld hl,(0c319h)		;1088
	ld a,(0c31bh)		;108b
	ld de,0ffcdh		;108e
	add hl,de			;1091
	ld (0c319h),hl		;1092
	adc a,0ffh		;1095
	ld (0c31bh),a		;1097
	ld bc,001ffh		;109a
	ld a,(0c30dh)		;109d
l10a0h:
	dec a			;10a0
	jr z,l10a6h		;10a1
	ld bc,l04ffh+2		;10a3
l10a6h:
	ld (ix+00ah),b		;10a6
	ld a,(0c314h)		;10a9
	ld d,a			;10ac
	bit 1,a		;10ad
	jr nz,l10c9h		;10af
	ld a,b			;10b1
	add a,c			;10b2
	ld (0c30ah),a		;10b3
	ld a,d			;10b6
	or a			;10b7
	jr nz,l10c9h		;10b8
	ld a,081h		;10ba
	ld (0c100h),a		;10bc
	ld hl,040cah		;10bf
	ld (0c101h),hl		;10c2
	xor a			;10c5
	ld (0c308h),a		;10c6
l10c9h:
	inc a			;10c9
	cp 00fh		;10ca
	jr c,l1100h		;10cc
	ld a,(0c30ch)		;10ce
	or a			;10d1
	jr z,l10f2h		;10d2
	cp 003h		;10d4
	jr z,l10f2h		;10d6
	cp 004h		;10d8
	jr z,l10f2h		;10da
	ld de,0ff08h		;10dc
	cp 006h		;10df
	jr z,l10e9h		;10e1
	dec a			;10e3
	jr z,l10e9h		;10e4
	ld de,0fee3h		;10e6
l10e9h:
	ld hl,(0c31ah)		;10e9
	add hl,de			;10ec
	jr nc,l10f2h		;10ed
	xor a			;10ef
	jr l1100h		;10f0
l10f2h:
	ld (ix+00bh),018h		;10f2
	xor a			;10f6
	ld (0c304h),a		;10f7
	ld (0c31ch),a		;10fa
	ld (0c315h),a		;10fd
l1100h:
	ld (0c314h),a		;1100
	jp l0c57h		;1103
	call pe,0ec0fh		;1106
	rrca			;1109
	pop af			;110a
	dec c			;110b
	jp m,0030ch		;110c
	dec c			;110f
	ld b,00fh		;1110
	ld b,00fh		;1112
sub_1114h:
	add a,b			;1114
	or (hl)			;1115
	ld d,a			;1116
	nop			;1117
	nop			;1118
	ld a,h			;1119
	nop			;111a
	nop			;111b
	nop			;111c
	inc bc			;111d
	nop			;111e
	nop			;111f
	nop			;1120
	nop			;1121
	nop			;1122
	add a,b			;1123
	add a,b			;1124
	nop			;1125
	nop			;1126
	nop			;1127
	nop			;1128
	nop			;1129
	nop			;112a
	nop			;112b
	nop			;112c
	nop			;112d
	nop			;112e
	nop			;112f
	nop			;1130
	nop			;1131
	nop			;1132
	inc d			;1133
	inc d			;1134
	inc d			;1135
	inc d			;1136
	inc d			;1137
	inc d			;1138
	inc d			;1139
	inc d			;113a
	inc d			;113b
	inc d			;113c
	inc d			;113d
	inc d			;113e
	inc d			;113f
	inc d			;1140
	inc d			;1141
	inc d			;1142
	inc d			;1143
	inc d			;1144
	inc d			;1145
	inc d			;1146
	inc d			;1147
	inc d			;1148
	inc d			;1149
	inc d			;114a
	inc d			;114b
	inc d			;114c
	inc d			;114d
	inc d			;114e
	inc d			;114f
	inc d			;1150
	inc d			;1151
	inc d			;1152
	inc d			;1153
	inc d			;1154
	inc d			;1155
	inc d			;1156
	inc d			;1157
	inc d			;1158
	inc d			;1159
	inc d			;115a
	inc d			;115b
	inc d			;115c
	inc d			;115d
	inc d			;115e
l115fh:
	inc d			;115f
	inc d			;1160
	inc d			;1161
	inc d			;1162
	inc d			;1163
	inc d			;1164
	inc d			;1165
	inc d			;1166
	inc d			;1167
	inc d			;1168
	inc d			;1169
	inc d			;116a
	inc d			;116b
	inc d			;116c
	inc d			;116d
	inc d			;116e
	inc hl			;116f
	inc hl			;1170
	inc hl			;1171
	inc hl			;1172
	inc hl			;1173
sub_1174h:
	inc hl			;1174
	inc hl			;1175
	inc hl			;1176
	inc hl			;1177
	inc hl			;1178
	inc hl			;1179
	inc hl			;117a
	inc hl			;117b
	inc hl			;117c
	inc hl			;117d
	inc hl			;117e
	inc hl			;117f
	inc hl			;1180
	inc hl			;1181
	inc hl			;1182
	inc hl			;1183
	inc hl			;1184
l1185h:
	inc hl			;1185
	inc hl			;1186
	inc hl			;1187
l1188h:
	inc hl			;1188
	inc hl			;1189
	inc hl			;118a
	inc hl			;118b
	inc hl			;118c
	inc hl			;118d
	inc hl			;118e
	inc hl			;118f
	inc hl			;1190
	inc hl			;1191
	inc hl			;1192
	inc hl			;1193
	inc hl			;1194
	inc hl			;1195
	inc hl			;1196
	inc hl			;1197
	inc hl			;1198
	inc hl			;1199
	inc hl			;119a
	inc hl			;119b
	inc hl			;119c
	inc hl			;119d
	inc hl			;119e
	inc hl			;119f
	inc hl			;11a0
	ld b,d			;11a1
	ld b,d			;11a2
	ld b,d			;11a3
	ld b,d			;11a4
	ld b,d			;11a5
	ld b,d			;11a6
	ld b,d			;11a7
	ld b,d			;11a8
	ld b,d			;11a9
	ld b,d			;11aa
	ld b,d			;11ab
	ld b,d			;11ac
	ld b,d			;11ad
	ld b,d			;11ae
	ld b,d			;11af
	ld b,d			;11b0
	ld b,d			;11b1
	ld b,d			;11b2
	ld b,d			;11b3
	ld b,d			;11b4
	ld b,d			;11b5
	ld b,d			;11b6
	ld b,d			;11b7
	ld b,d			;11b8
	ld b,d			;11b9
	ld b,d			;11ba
	ld b,d			;11bb
	ld b,d			;11bc
	ld b,d			;11bd
l11beh:
	ld b,d			;11be
	ld b,d			;11bf
	ld b,d			;11c0
	ld b,d			;11c1
	ld b,d			;11c2
	ld b,d			;11c3
	ld b,d			;11c4
	ld b,d			;11c5
	ld b,d			;11c6
	ld b,d			;11c7
	ld b,d			;11c8
	ld h,c			;11c9
	ld h,c			;11ca
	ld h,c			;11cb
	ld h,c			;11cc
	ld h,c			;11cd
	ld h,c			;11ce
	ld h,c			;11cf
	ld h,c			;11d0
	ld h,c			;11d1
	ld h,c			;11d2
	ld h,c			;11d3
	ld h,c			;11d4
	ld h,c			;11d5
	ld h,c			;11d6
	ld h,c			;11d7
	ld h,c			;11d8
	ld h,c			;11d9
	ld h,c			;11da
	ld h,c			;11db
	ld h,c			;11dc
	ld h,c			;11dd
	ld h,c			;11de
	ld h,c			;11df
	ld h,c			;11e0
	ld h,c			;11e1
	ld h,c			;11e2
	ld h,c			;11e3
	ld h,c			;11e4
	ld h,c			;11e5
	ld h,c			;11e6
	add a,b			;11e7
	add a,b			;11e8
	add a,b			;11e9
	add a,b			;11ea
	add a,b			;11eb
	add a,b			;11ec
	add a,b			;11ed
	add a,b			;11ee
	add a,b			;11ef
	add a,b			;11f0
	add a,b			;11f1
	add a,b			;11f2
	add a,b			;11f3
	add a,b			;11f4
	add a,b			;11f5
	add a,b			;11f6
	add a,b			;11f7
	add a,b			;11f8
	add a,b			;11f9
	add a,b			;11fa
	or e			;11fb
	or e			;11fc
	or e			;11fd
	or e			;11fe
	or e			;11ff
sub_1200h:
	or e			;1200
	or e			;1201
	or e			;1202
	or e			;1203
	or e			;1204
	or e			;1205
	or e			;1206
	or e			;1207
	or e			;1208
	or e			;1209
	or e			;120a
	or e			;120b
	or e			;120c
	or e			;120d
	or e			;120e
	or e			;120f
	or e			;1210
l1211h:
	or e			;1211
	or e			;1212
	or e			;1213
	or e			;1214
	or e			;1215
	or e			;1216
	or e			;1217
l1218h:
	or e			;1218
	or e			;1219
	or e			;121a
	or e			;121b
	or e			;121c
	or e			;121d
	or e			;121e
	or e			;121f
	or e			;1220
	or e			;1221
	or e			;1222
	or e			;1223
	or e			;1224
	or e			;1225
	or e			;1226
	or e			;1227
	or e			;1228
	or e			;1229
	or e			;122a
	or e			;122b
	or e			;122c
	or e			;122d
	or e			;122e
	or e			;122f
	or e			;1230
	or e			;1231
	or e			;1232
	or e			;1233
	or e			;1234
	or e			;1235
	or e			;1236
	or e			;1237
	or e			;1238
	or e			;1239
	or e			;123a
	or e			;123b
	or e			;123c
	or e			;123d
	or e			;123e
	or e			;123f
	or e			;1240
	add a,b			;1241
	add a,b			;1242
	add a,b			;1243
	add a,b			;1244
	add a,b			;1245
	ld h,(hl)			;1246
	ld h,(hl)			;1247
	ld h,(hl)			;1248
	ld h,(hl)			;1249
l124ah:
	ld h,(hl)			;124a
	ld c,h			;124b
	ld c,h			;124c
	ld c,h			;124d
	ld c,h			;124e
	inc sp			;124f
	inc sp			;1250
	inc sp			;1251
	inc sp			;1252
	add hl,de			;1253
	add hl,de			;1254
	add hl,de			;1255
	add hl,de			;1256
	inc c			;1257
	inc c			;1258
	ld b,004h		;1259
	ld (bc),a			;125b
	ld (bc),a			;125c
	ld bc,l0101h		;125d
	ld (bc),a			;1260
	inc bc			;1261
	inc b			;1262
	inc b			;1263
	dec b			;1264
	ld b,007h		;1265
	ex af,af'			;1267
	ex af,af'			;1268
	add hl,bc			;1269
	ld a,(bc)			;126a
	dec bc			;126b
	inc c			;126c
	inc c			;126d
	dec c			;126e
	ld c,00fh		;126f
	rrca			;1271
	djnz l1285h		;1272
	ld (de),a			;1274
	inc de			;1275
	inc d			;1276
	inc d			;1277
	dec d			;1278
	ld d,017h		;1279
	jr l1296h		;127b
	add hl,de			;127d
	ld a,(de)			;127e
	dec de			;127f
	inc e			;1280
	dec e			;1281
	dec e			;1282
	ld e,01fh		;1283
l1285h:
	jr nz,l12a8h		;1285
	ld (l2322h),hl		;1287
	inc h			;128a
	dec h			;128b
l128ch:
	ld h,026h		;128c
	daa			;128e
	jr z,l12bah		;128f
	ld hl,(l2b29h+2)		;1291
	inc l			;1294
	dec l			;1295
l1296h:
	ld l,02fh		;1296
	cpl			;1298
	jr nc,l12cbh		;1299
	ld sp,03131h		;129b
	ld (l3332h),a		;129e
	inc sp			;12a1
	inc sp			;12a2
	inc (hl)			;12a3
	inc (hl)			;12a4
	dec (hl)			;12a5
	dec (hl)			;12a6
	dec (hl)			;12a7
l12a8h:
	ld (hl),036h		;12a8
	scf			;12aa
	scf			;12ab
	scf			;12ac
	jr c,l12e7h		;12ad
	add hl,sp			;12af
	add hl,sp			;12b0
	add hl,sp			;12b1
	ld a,(03b3ah)		;12b2
	dec sp			;12b5
	dec sp			;12b6
	inc a			;12b7
	inc a			;12b8
	dec a			;12b9
l12bah:
	dec a			;12ba
	dec a			;12bb
	ld a,03eh		;12bc
	ld bc,l0200h+1		;12be
	ld (bc),a			;12c1
	inc bc			;12c2
	inc bc			;12c3
	inc b			;12c4
	inc b			;12c5
	inc b			;12c6
	dec b			;12c7
	dec b			;12c8
	ld b,006h		;12c9
l12cbh:
	rlca			;12cb
	rlca			;12cc
	ex af,af'			;12cd
	ex af,af'			;12ce
	ex af,af'			;12cf
	add hl,bc			;12d0
	add hl,bc			;12d1
	ld a,(bc)			;12d2
	ld a,(bc)			;12d3
	dec bc			;12d4
	dec bc			;12d5
	inc c			;12d6
	inc c			;12d7
	inc c			;12d8
	dec c			;12d9
	dec c			;12da
	ld c,00eh		;12db
	rrca			;12dd
	rrca			;12de
	rrca			;12df
	djnz $+16		;12e0
	ld de,l1211h		;12e2
	ld (de),a			;12e5
	inc de			;12e6
l12e7h:
	inc de			;12e7
	inc d			;12e8
	inc d			;12e9
	dec d			;12ea
	dec d			;12eb
	ld d,016h		;12ec
	ld d,017h		;12ee
	rla			;12f0
	jr l130bh		;12f1
	add hl,de			;12f3
	add hl,de			;12f4
	ld a,(de)			;12f5
	ld a,(de)			;12f6
	dec de			;12f7
	dec de			;12f8
l12f9h:
	inc e			;12f9
	inc e			;12fa
	inc e			;12fb
	dec e			;12fc
	dec e			;12fd
	ld e,01eh		;12fe
l1300h:
	rra			;1300
	rra			;1301
l1302h:
	jr nz,l1324h		;1302
	ld hl,l2221h		;1304
	ld (l2323h),hl		;1307
l130ah:
	inc hl			;130a
l130bh:
	inc h			;130b
	inc h			;130c
	dec h			;130d
	dec h			;130e
	ld h,026h		;130f
	daa			;1311
l1312h:
	daa			;1312
	jr z,l133dh		;1313
	add hl,hl			;1315
	add hl,hl			;1316
	add hl,hl			;1317
	ld hl,(l2b29h+1)		;1318
	dec hl			;131b
	inc l			;131c
	inc l			;131d
	dec l			;131e
	dec l			;131f
	ld l,02eh		;1320
sub_1322h:
	cpl			;1322
	cpl			;1323
l1324h:
	cpl			;1324
	jr nc,l1357h		;1325
	ld sp,03131h		;1327
	ld (l3332h),a		;132a
	inc sp			;132d
	inc sp			;132e
	inc (hl)			;132f
	inc (hl)			;1330
	dec (hl)			;1331
	dec (hl)			;1332
	dec (hl)			;1333
	ld (hl),036h		;1334
	scf			;1336
	scf			;1337
	scf			;1338
	jr c,l1373h		;1339
	add hl,sp			;133b
	add hl,sp			;133c
l133dh:
	add hl,sp			;133d
	ld a,(03b3ah)		;133e
	dec sp			;1341
	dec sp			;1342
	inc a			;1343
	inc a			;1344
	dec a			;1345
	dec a			;1346
	dec a			;1347
	ld a,03eh		;1348
	ld bc,l0101h		;134a
	ld (bc),a			;134d
	ld (bc),a			;134e
	ld (bc),a			;134f
	inc bc			;1350
	inc bc			;1351
	inc bc			;1352
	inc bc			;1353
	inc b			;1354
	inc b			;1355
	inc b			;1356
l1357h:
	dec b			;1357
	dec b			;1358
	dec b			;1359
	ld b,006h		;135a
	ld b,006h		;135c
	rlca			;135e
	rlca			;135f
	rlca			;1360
	ex af,af'			;1361
	ex af,af'			;1362
	ex af,af'			;1363
	add hl,bc			;1364
	add hl,bc			;1365
	add hl,bc			;1366
	add hl,bc			;1367
	ld a,(bc)			;1368
	ld a,(bc)			;1369
	ld a,(bc)			;136a
	dec bc			;136b
	dec bc			;136c
	dec bc			;136d
	inc c			;136e
	inc c			;136f
	inc c			;1370
	inc c			;1371
	dec c			;1372
l1373h:
	dec c			;1373
	dec c			;1374
	ld c,00eh		;1375
	ld c,00fh		;1377
	rrca			;1379
	rrca			;137a
	rrca			;137b
	djnz l138eh		;137c
l137eh:
	djnz $+17		;137e
	ld de,l1211h		;1380
	ld (de),a			;1383
	ld (de),a			;1384
	inc de			;1385
	inc de			;1386
	inc de			;1387
	inc d			;1388
	inc d			;1389
	inc d			;138a
	dec d			;138b
	dec d			;138c
l138dh:
	dec d			;138d
l138eh:
	ld d,016h		;138e
	ld d,017h		;1390
	rla			;1392
	rla			;1393
	rla			;1394
	jr $+24		;1395
	jr l13b2h		;1397
	add hl,de			;1399
	add hl,de			;139a
	ld a,(de)			;139b
l139ch:
	ld a,(de)			;139c
	ld a,(de)			;139d
	dec de			;139e
	dec de			;139f
	dec de			;13a0
	inc e			;13a1
	inc e			;13a2
	inc e			;13a3
sub_13a4h:
	dec e			;13a4
	dec e			;13a5
	dec e			;13a6
	ld e,01eh		;13a7
	ld e,01fh		;13a9
	rra			;13ab
	rra			;13ac
	rra			;13ad
	jr nz,l13d0h		;13ae
	jr nz,l13d3h		;13b0
l13b2h:
	ld hl,l2221h		;13b2
	ld (l2322h),hl		;13b5
	inc hl			;13b8
	inc hl			;13b9
sub_13bah:
	inc h			;13ba
	inc h			;13bb
	inc h			;13bc
	dec h			;13bd
	dec h			;13be
	dec h			;13bf
	ld h,026h		;13c0
	ld h,027h		;13c2
	daa			;13c4
	daa			;13c5
	daa			;13c6
l13c7h:
	jr z,l13f1h		;13c7
	jr z,$+41		;13c9
	add hl,hl			;13cb
	add hl,hl			;13cc
	ld hl,(02a2ah)		;13cd
l13d0h:
	dec hl			;13d0
	dec hl			;13d1
	dec hl			;13d2
l13d3h:
	inc l			;13d3
	inc l			;13d4
	inc l			;13d5
	dec l			;13d6
	dec l			;13d7
	dec l			;13d8
	ld l,02eh		;13d9
	ld l,02fh		;13db
	cpl			;13dd
	cpl			;13de
	cpl			;13df
	jr nc,l1403h		;13e0
	ld c,b			;13e2
	ret nz			;13e3
	ld a,(hl)			;13e4
	or a			;13e5
	ret z			;13e6
	ld (hl),000h		;13e7
	ld d,000h		;13e9
	ld a,(0c013h)		;13eb
	sub 054h		;13ee
	ld c,a			;13f0
l13f1h:
	or a			;13f1
	jp p,l12f9h		;13f2
	ld d,0ffh		;13f5
	neg		;13f7
	add a,a			;13f9
	ld l,a			;13fa
	ld h,000h		;13fb
	add hl,hl			;13fd
	ld a,c			;13fe
	or a			;13ff
l1400h:
	jp p,l130ah		;1400
l1403h:
	ld a,l			;1403
l1404h:
	cpl			;1404
l1405h:
	ld l,a			;1405
l1406h:
	ld a,h			;1406
	cpl			;1407
l1408h:
	ld h,a			;1408
l1409h:
	inc hl			;1409
	ex de,hl			;140a
	ld hl,00000h		;140b
	ld bc,0c600h		;140e
	exx			;1411
	ld de,0c55fh		;1412
	ld b,088h		;1415
l1417h:
	exx			;1417
	add hl,de			;1418
	ld a,(bc)			;1419
	inc bc			;141a
	add a,h			;141b
	exx			;141c
	ld (de),a			;141d
	inc de			;141e
	djnz l1417h		;141f
	ret			;1421
	ld hl,(0c31ah)		;1422
	ld (0c02ah),hl		;1425
	call sub_379eh		;1428
	ld hl,(0c31ah)		;142b
	ld e,l			;142e
	ld d,h			;142f
	srl d		;1430
	rr e		;1432
sub_1434h:
	add hl,de			;1434
	ex de,hl			;1435
	ld a,e			;1436
	or d			;1437
	ret z			;1438
	ld hl,(0c030h)		;1439
	add hl,de			;143c
	ld a,h			;143d
	cp 008h		;143e
	jr c,l1445h		;1440
	sub 008h		;1442
	ld h,a			;1444
l1445h:
	ld (0c030h),hl		;1445
	ld de,00000h		;1448
	or a			;144b
	jr z,l1453h		;144c
	neg		;144e
	ld e,a			;1450
	ld d,0ffh		;1451
l1453h:
	push de			;1453
	ld hl,l137eh		;1454
	add hl,de			;1457
	ld de,0c004h		;1458
	ld b,004h		;145b
	rst 20h			;145d
	pop de			;145e
	push de			;145f
	ld hl,l138dh		;1460
	add hl,de			;1463
	ld de,0c008h		;1464
	ld b,008h		;1467
	rst 20h			;1469
	pop de			;146a
	ld hl,l139ch		;146b
	add hl,de			;146e
	ld de,0c011h		;146f
	ld b,002h		;1472
	jp 00020h		;1474
	rst 38h			;1477
	rst 38h			;1478
	inc bc			;1479
	inc bc			;147a
	rst 38h			;147b
	rst 38h			;147c
	inc bc			;147d
	inc bc			;147e
	rst 38h			;147f
	rst 38h			;1480
	inc bc			;1481
	inc bc			;1482
	rst 38h			;1483
	rst 38h			;1484
	inc bc			;1485
l1486h:
	ccf			;1486
	ccf			;1487
	ccf			;1488
	ccf			;1489
	inc d			;148a
	inc d			;148b
	inc d			;148c
	inc d			;148d
	ccf			;148e
	ccf			;148f
	ccf			;1490
	ccf			;1491
	inc d			;1492
	inc d			;1493
	inc d			;1494
	nop			;1495
	ld hl,(l2a00h)		;1496
	nop			;1499
	ld hl,(l2a00h)		;149a
	nop			;149d
sub_149eh:
	ld hl,(l2a00h)		;149e
	nop			;14a1
	ld hl,(03a00h)		;14a2
	ld c,b			;14a5
	ret nz			;14a6
	or a			;14a7
sub_14a8h:
	ret nz			;14a8
	ld ix,0c2f0h		;14a9
	ld a,(0c2f0h)		;14ad
	or a			;14b0
	call nz,sub_13bah		;14b1
	ld a,001h		;14b4
	ld (0c048h),a		;14b6
	ret			;14b9
	add a,a			;14ba
	and 03eh		;14bb
	ld l,a			;14bd
	ld h,000h		;14be
	ld de,l13c7h		;14c0
	add hl,de			;14c3
	ld e,(hl)			;14c4
	inc hl			;14c5
	ld d,(hl)			;14c6
	ex de,hl			;14c7
	jp (hl)			;14c8
	rlca			;14c9
	inc d			;14ca
	ld e,014h		;14cb
	ld e,014h		;14cd
	ld b,d			;14cf
	inc d			;14d0
	ld b,d			;14d1
	inc d			;14d2
	ret			;14d3
	inc d			;14d4
	ret			;14d5
	inc d			;14d6
	rlca			;14d7
	dec d			;14d8
	rlca			;14d9
	dec d			;14da
	ld (hl),h			;14db
	dec d			;14dc
	ld e,014h		;14dd
	ld e,014h		;14df
	ld e,014h		;14e1
	ld e,014h		;14e3
	ld e,014h		;14e5
	ld e,014h		;14e7
	ld e,014h		;14e9
	ld e,014h		;14eb
	ld e,014h		;14ed
	ld b,d			;14ef
	inc d			;14f0
	ld b,d			;14f1
	inc d			;14f2
	call m,0fc15h		;14f3
	dec d			;14f6
	rlca			;14f7
	dec d			;14f8
	rlca			;14f9
	dec d			;14fa
	ld (hl),h			;14fb
	dec d			;14fc
	ld e,014h		;14fd
	ld e,014h		;14ff
	ld e,014h		;1501
	ld e,014h		;1503
l1505h:
	ld e,014h		;1505
	bit 0,(ix+008h)		;1507
	jr nz,l151eh		;150b
	ld (ix+008h),001h		;150d
	ld hl,0c600h		;1511
	ld de,0c601h		;1514
	ld bc,0005fh		;1517
	ld (hl),000h		;151a
	ldir		;151c
l151eh:
	call sub_1434h		;151e
	sub 010h		;1521
	ret c			;1523
	ld (0c2f4h),a		;1524
	dec (ix+001h)		;1527
	ret nz			;152a
	ld (ix+002h),000h		;152b
	ld (ix+008h),000h		;152f
	ret			;1533
	ld hl,(0c02ah)		;1534
	ld de,(0c2f3h)		;1537
	add hl,de			;153b
	ld (0c2f3h),hl		;153c
	ld a,h			;153f
	cp d			;1540
	ret			;1541
	call sub_1434h		;1542
	ret z			;1545
	ld b,07eh		;1546
	cp b			;1548
	call nc,sub_149eh		;1549
	cp 060h		;154c
	call nc,sub_14a8h		;154e
	ld l,a			;1551
	ld h,000h		;1552
sub_1554h:
	ld de,023c6h		;1554
	add hl,de			;1557
	ld a,(hl)			;1558
	ex af,af'			;1559
	ld hl,l163eh		;155a
	ld a,(ix+000h)		;155d
	ld b,a			;1560
	and 00fh		;1561
	cp 004h		;1563
	jr z,l156ah		;1565
	ld hl,016feh		;1567
l156ah:
	ld a,b			;156a
	and 010h		;156b
	jp nz,l1486h		;156d
	ex af,af'			;1570
	neg		;1571
	add a,0bfh		;1573
	ld e,a			;1575
	ld d,000h		;1576
	add hl,de			;1578
	ld de,0c65fh		;1579
	ex de,hl			;157c
	ld b,060h		;157d
l157fh:
	ld a,(de)			;157f
	ld (hl),a			;1580
	dec de			;1581
	dec hl			;1582
	djnz l157fh		;1583
	ret			;1585
	ex af,af'			;1586
	neg		;1587
	add a,0bfh		;1589
	ld e,a			;158b
	ld d,000h		;158c
	add hl,de			;158e
	ld de,0c65fh		;158f
	ex de,hl			;1592
	ld b,060h		;1593
l1595h:
	ld a,(de)			;1595
	neg		;1596
	ld (hl),a			;1598
	dec de			;1599
	dec hl			;159a
	djnz l1595h		;159b
	ret			;159d
	sub b			;159e
	ld (0c2f7h),a		;159f
	ld (ix+002h),000h		;15a2
	ld a,b			;15a6
	ret			;15a7
	ld c,a			;15a8
	ld hl,(0c2f5h)		;15a9
	ld a,(0c2f0h)		;15ac
	cp 004h		;15af
	ld a,010h		;15b1
	jr z,l15b7h		;15b3
	ld a,00ah		;15b5
l15b7h:
	ld d,000h		;15b7
	bit 4,(ix+000h)		;15b9
	jr z,l15c2h		;15bd
	neg		;15bf
	dec d			;15c1
l15c2h:
	ld e,a			;15c2
	add hl,de			;15c3
	ld (0c2f5h),hl		;15c4
	ld a,c			;15c7
	ret			;15c8
	call sub_1434h		;15c9
	ret z			;15cc
	ld b,03fh		;15cd
	cp b			;15cf
	call nc,sub_149eh		;15d0
	rrca			;15d3
	and 01eh		;15d4
	ld l,a			;15d6
	ld h,000h		;15d7
	ld de,l1e66h		;15d9
l15dch:
	ld a,(ix+000h)		;15dc
	cp 006h		;15df
	jr z,l15e6h		;15e1
	ld de,01e46h		;15e3
l15e6h:
	add hl,de			;15e6
	ld e,(hl)			;15e7
	inc hl			;15e8
	ld d,(hl)			;15e9
	ld hl,0c600h		;15ea
	ld bc,00060h		;15ed
	ex de,hl			;15f0
	ldir		;15f1
	ld hl,(0c2f5h)		;15f3
	ld de,00002h		;15f6
	bit 0,(ix+000h)		;15f9
	jr nz,l1602h		;15fd
	ld de,0fffeh		;15ff
l1602h:
	add hl,de			;1602
	ld (0c2f5h),hl		;1603
	ret			;1606
	call sub_1434h		;1607
	ret z			;160a
	ld b,05fh		;160b
	cp b			;160d
	call nc,sub_149eh		;160e
	cp 040h		;1611
	call nc,sub_1554h		;1613
	ld e,a			;1616
	ld d,000h		;1617
	ld hl,0c600h		;1619
	add hl,de			;161c
	push hl			;161d
	ld b,(hl)			;161e
	ld hl,l17beh		;161f
	ld a,(ix+000h)		;1622
	and 00fh		;1625
	cp 008h		;1627
	jr z,l162eh		;1629
	ld hl,l187eh		;162b
l162eh:
	add hl,de			;162e
	add hl,de			;162f
	ld a,e			;1630
	ld e,(hl)			;1631
	inc hl			;1632
	ld d,(hl)			;1633
	bit 4,(ix+000h)		;1634
	jr z,l1643h		;1638
	ex af,af'			;163a
	ld a,e			;163b
	cpl			;163c
	ld e,a			;163d
l163eh:
	ld a,d			;163e
	cpl			;163f
	ld d,a			;1640
	inc de			;1641
	ex af,af'			;1642
l1643h:
	ld h,b			;1643
	ld l,000h		;1644
	pop bc			;1646
	exx			;1647
	ld b,a			;1648
	inc b			;1649
l164ah:
	exx			;164a
	ld a,h			;164b
	ld (bc),a			;164c
	add hl,de			;164d
	dec bc			;164e
	exx			;164f
	djnz l164ah		;1650
	exx			;1652
	ret			;1653
	ld c,a			;1654
	ld de,00010h		;1655
	bit 0,(ix+000h)		;1658
	jr z,l1660h		;165c
	ld e,00ah		;165e
l1660h:
	bit 4,(ix+000h)		;1660
	jr nz,l166bh		;1664
	ld a,e			;1666
	neg		;1667
	ld e,a			;1669
	dec d			;166a
l166bh:
	ld hl,(0c2f5h)		;166b
	add hl,de			;166e
	ld (0c2f5h),hl		;166f
	ld a,c			;1672
	ret			;1673
	call sub_1434h		;1674
	ret z			;1677
	ld b,05fh		;1678
	cp b			;167a
	call nc,sub_149eh		;167b
	cp 040h		;167e
	call nc,015e4h		;1680
	push af			;1683
	ld e,a			;1684
	ld d,000h		;1685
	ld hl,0c600h		;1687
	add hl,de			;168a
	push hl			;168b
	ld b,(hl)			;168c
	ld hl,l17beh		;168d
	add hl,de			;1690
	add hl,de			;1691
	ld a,e			;1692
	ld e,(hl)			;1693
	inc hl			;1694
	ld d,(hl)			;1695
	bit 4,(ix+000h)		;1696
	jr z,l16a5h		;169a
	ex af,af'			;169c
	ld a,e			;169d
	cpl			;169e
	ld e,a			;169f
	ld a,d			;16a0
	cpl			;16a1
	ld d,a			;16a2
	inc de			;16a3
	ex af,af'			;16a4
l16a5h:
	ld h,b			;16a5
	ld l,000h		;16a6
	pop bc			;16a8
	exx			;16a9
	ld b,a			;16aa
	inc b			;16ab
l16ach:
	exx			;16ac
	ld a,h			;16ad
	ld (bc),a			;16ae
	add hl,de			;16af
	dec bc			;16b0
	exx			;16b1
	djnz l16ach		;16b2
	exx			;16b4
	pop af			;16b5
	cp 004h		;16b6
	ret c			;16b8
	and 0fch		;16b9
	ld b,a			;16bb
	rrca			;16bc
	and 03eh		;16bd
	ld l,a			;16bf
	ld h,000h		;16c0
	ld de,l193ch		;16c2
	add hl,de			;16c5
	ld a,(hl)			;16c6
	inc hl			;16c7
	ld h,(hl)			;16c8
	ld l,a			;16c9
	ld de,0c600h		;16ca
	bit 4,(ix+000h)		;16cd
	jp nz,l15dch		;16d1
l16d4h:
	ld a,(de)			;16d4
	sub (hl)			;16d5
	ld (de),a			;16d6
	inc hl			;16d7
	inc de			;16d8
	djnz l16d4h		;16d9
	ret			;16db
l16dch:
	ld a,(de)			;16dc
	add a,(hl)			;16dd
	ld (de),a			;16de
	inc hl			;16df
	inc de			;16e0
	djnz l16dch		;16e1
	ret			;16e3
	ld c,a			;16e4
	ld de,00020h		;16e5
	bit 4,(ix+000h)		;16e8
	jr nz,l16f3h		;16ec
	dec d			;16ee
	ld a,e			;16ef
	neg		;16f0
	ld e,a			;16f2
l16f3h:
	ld hl,(0c2f5h)		;16f3
	add hl,de			;16f6
	ld (0c2f5h),hl		;16f7
	ld a,c			;16fa
	ret			;16fb
	call sub_1434h		;16fc
	ret z			;16ff
	ld b,03fh		;1700
	cp b			;1702
	call nc,sub_149eh		;1703
	rrca			;1706
	and 01eh		;1707
	ld l,a			;1709
	ld h,000h		;170a
	ld de,l1e66h		;170c
	ld a,(ix+000h)		;170f
	cp 016h		;1712
	jr z,l1719h		;1714
	ld de,01e46h		;1716
l1719h:
	add hl,de			;1719
	ld e,(hl)			;171a
	inc hl			;171b
	ld d,(hl)			;171c
	ld hl,0c600h		;171d
	ld b,060h		;1720
l1722h:
	ld a,(de)			;1722
	neg		;1723
	ld (hl),a			;1725
	inc hl			;1726
	inc de			;1727
	djnz l1722h		;1728
	ld hl,(0c2f5h)		;172a
	ld de,00002h		;172d
	bit 0,(ix+000h)		;1730
	jr z,l1739h		;1734
	ld de,0fffeh		;1736
l1739h:
	add hl,de			;1739
	ld (0c2f5h),hl		;173a
	ret			;173d
	ld a,(hl)			;173e
	ld (hl),a			;173f
	ld (hl),c			;1740
	ld l,h			;1741
	ld h,a			;1742
	ld h,e			;1743
	ld e,a			;1744
	ld e,e			;1745
	ld e,b			;1746
	ld d,l			;1747
	ld d,d			;1748
	ld c,a			;1749
	ld c,h			;174a
	ld c,c			;174b
	ld b,a			;174c
	ld b,l			;174d
	ld b,d			;174e
	ld b,b			;174f
	ld a,03ch		;1750
	ld a,(l3638h)		;1752
	inc (hl)			;1755
	ld (l2f31h),a		;1756
	dec l			;1759
	inc l			;175a
	ld hl,(l2728h+1)		;175b
	ld h,024h		;175e
	inc hl			;1760
	ld (l1f21h),hl		;1761
	ld e,01dh		;1764
	inc e			;1766
	dec de			;1767
	ld a,(de)			;1768
	add hl,de			;1769
	jr $+23		;176a
	ld d,015h		;176c
	inc d			;176e
	inc de			;176f
	ld (de),a			;1770
	ld de,01010h		;1771
	rrca			;1774
	ld c,00dh		;1775
	dec c			;1777
	inc c			;1778
	dec bc			;1779
	dec bc			;177a
	ld a,(bc)			;177b
	add hl,bc			;177c
	add hl,bc			;177d
	ex af,af'			;177e
	ex af,af'			;177f
	rlca			;1780
	rlca			;1781
	ld b,006h		;1782
	dec b			;1784
	dec b			;1785
	inc b			;1786
	inc b			;1787
	inc b			;1788
	inc bc			;1789
	inc bc			;178a
	ld (bc),a			;178b
	ld (bc),a			;178c
	ld (bc),a			;178d
	ld (bc),a			;178e
	ld bc,l0101h		;178f
	ld bc,00000h		;1792
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
	nop			;17be
	nop			;17bf
	nop			;17c0
	nop			;17c1
	nop			;17c2
	nop			;17c3
	nop			;17c4
	nop			;17c5
	nop			;17c6
	nop			;17c7
	nop			;17c8
	nop			;17c9
	nop			;17ca
	nop			;17cb
	nop			;17cc
	nop			;17cd
	nop			;17ce
	nop			;17cf
	nop			;17d0
	nop			;17d1
	nop			;17d2
	nop			;17d3
	nop			;17d4
	nop			;17d5
	nop			;17d6
	nop			;17d7
	nop			;17d8
	nop			;17d9
	nop			;17da
	nop			;17db
	nop			;17dc
	nop			;17dd
	nop			;17de
	nop			;17df
	nop			;17e0
	nop			;17e1
	nop			;17e2
	nop			;17e3
	nop			;17e4
	nop			;17e5
	nop			;17e6
	nop			;17e7
	nop			;17e8
	nop			;17e9
	nop			;17ea
	nop			;17eb
	nop			;17ec
	nop			;17ed
	nop			;17ee
	nop			;17ef
	nop			;17f0
	nop			;17f1
	nop			;17f2
	nop			;17f3
	nop			;17f4
	nop			;17f5
	nop			;17f6
	nop			;17f7
	nop			;17f8
	nop			;17f9
	nop			;17fa
	nop			;17fb
	nop			;17fc
	nop			;17fd
	ld b,e			;17fe
	ccf			;17ff
	dec sp			;1800
	jr c,$+53		;1801
	inc sp			;1803
	ld sp,02d2fh		;1804
	inc l			;1807
	ld hl,(l2728h)		;1808
	ld h,024h		;180b
	inc hl			;180d
	ld (l2021h),hl		;180e
	ld e,01dh		;1811
	inc e			;1813
	dec de			;1814
	ld a,(de)			;1815
	ld a,(de)			;1816
	add hl,de			;1817
	jr l1831h		;1818
	ld d,015h		;181a
l181ch:
	dec d			;181c
	inc d			;181d
	inc de			;181e
	ld (de),a			;181f
	ld (de),a			;1820
	ld de,01010h		;1821
	rrca			;1824
	rrca			;1825
	ld c,00dh		;1826
	dec c			;1828
	inc c			;1829
	inc c			;182a
	dec bc			;182b
	dec bc			;182c
	ld a,(bc)			;182d
	ld a,(bc)			;182e
	add hl,bc			;182f
	add hl,bc			;1830
l1831h:
	add hl,bc			;1831
	ex af,af'			;1832
	ex af,af'			;1833
	rlca			;1834
	rlca			;1835
	rlca			;1836
	ld b,006h		;1837
	dec b			;1839
	dec b			;183a
	dec b			;183b
	dec b			;183c
	inc b			;183d
	inc b			;183e
	inc b			;183f
	inc bc			;1840
	inc bc			;1841
	inc bc			;1842
	inc bc			;1843
	ld (bc),a			;1844
	ld (bc),a			;1845
	ld (bc),a			;1846
	ld (bc),a			;1847
	ld (bc),a			;1848
	ld bc,l0101h		;1849
	ld bc,l0101h		;184c
	nop			;184f
	nop			;1850
	nop			;1851
	nop			;1852
	nop			;1853
	nop			;1854
	nop			;1855
	nop			;1856
	nop			;1857
	nop			;1858
	nop			;1859
	nop			;185a
	nop			;185b
	nop			;185c
	nop			;185d
	nop			;185e
	nop			;185f
	nop			;1860
	nop			;1861
	nop			;1862
	nop			;1863
	nop			;1864
	nop			;1865
	nop			;1866
	nop			;1867
	nop			;1868
	nop			;1869
	nop			;186a
	nop			;186b
	nop			;186c
	nop			;186d
	nop			;186e
	nop			;186f
	nop			;1870
	nop			;1871
	nop			;1872
	nop			;1873
	nop			;1874
	nop			;1875
	nop			;1876
	nop			;1877
	nop			;1878
	nop			;1879
	nop			;187a
	nop			;187b
	nop			;187c
	nop			;187d
l187eh:
	nop			;187e
	nop			;187f
	nop			;1880
	nop			;1881
	nop			;1882
	nop			;1883
	nop			;1884
	nop			;1885
	nop			;1886
	nop			;1887
	nop			;1888
	nop			;1889
	nop			;188a
	nop			;188b
	nop			;188c
	nop			;188d
	nop			;188e
	nop			;188f
	nop			;1890
	nop			;1891
	nop			;1892
	nop			;1893
	nop			;1894
	nop			;1895
	nop			;1896
	nop			;1897
	nop			;1898
	nop			;1899
	nop			;189a
	nop			;189b
	nop			;189c
	nop			;189d
	nop			;189e
	nop			;189f
	nop			;18a0
	nop			;18a1
	nop			;18a2
	nop			;18a3
	nop			;18a4
	nop			;18a5
	nop			;18a6
	nop			;18a7
	nop			;18a8
	nop			;18a9
	nop			;18aa
	nop			;18ab
	nop			;18ac
	nop			;18ad
	nop			;18ae
	nop			;18af
	nop			;18b0
	nop			;18b1
	nop			;18b2
	nop			;18b3
	nop			;18b4
	nop			;18b5
	nop			;18b6
	nop			;18b7
	nop			;18b8
	nop			;18b9
	nop			;18ba
	nop			;18bb
	nop			;18bc
	nop			;18bd
	call c,sub_5e07h		;18be
	ld b,078h		;18c1
	dec b			;18c3
	jp c,l6504h		;18c4
	inc b			;18c7
	add hl,bc			;18c8
	inc b			;18c9
	cp (hl)			;18ca
	inc bc			;18cb
	ld a,a			;18cc
	inc bc			;18cd
	ld c,d			;18ce
	inc bc			;18cf
	inc e			;18d0
	inc bc			;18d1
	di			;18d2
	ld (bc),a			;18d3
	rst 8			;18d4
	ld (bc),a			;18d5
	xor a			;18d6
	ld (bc),a			;18d7
	sub c			;18d8
	ld (bc),a			;18d9
	ld (hl),a			;18da
	ld (bc),a			;18db
	ld e,(hl)			;18dc
	ld (bc),a			;18dd
	ld b,a			;18de
	ld (bc),a			;18df
	ld (l1f01h+1),a		;18e0
	ld (bc),a			;18e3
	inc c			;18e4
	ld (bc),a			;18e5
	ei			;18e6
	ld bc,001ebh		;18e7
	in a,(001h)		;18ea
	call 0bf01h		;18ec
	ld bc,001b2h		;18ef
	and l			;18f2
	ld bc,00199h		;18f3
	adc a,(hl)			;18f6
	ld bc,l0183h		;18f7
	ld a,b			;18fa
	ld bc,l016eh		;18fb
	ld h,h			;18fe
	ld bc,l015ah		;18ff
	ld d,c			;1902
	ld bc,l0148h		;1903
	ld b,b			;1906
	ld bc,00137h		;1907
	cpl			;190a
	ld bc,l0127h		;190b
	rra			;190e
	ld bc,l0118h		;190f
	ld de,l0900h+1		;1912
	ld bc,l0101h+1		;1915
	call m,0f500h		;1918
	nop			;191b
	xor 000h		;191c
	ret pe			;191e
	nop			;191f
	jp po,0db00h		;1920
	nop			;1923
	push de			;1924
	nop			;1925
	rst 8			;1926
	nop			;1927
	jp z,0c400h		;1928
	nop			;192b
	cp (hl)			;192c
	nop			;192d
	cp c			;192e
	nop			;192f
	or e			;1930
	nop			;1931
	xor (hl)			;1932
	nop			;1933
	xor b			;1934
	nop			;1935
	and e			;1936
	nop			;1937
	sbc a,(hl)			;1938
	nop			;1939
	sbc a,c			;193a
	nop			;193b
l193ch:
	sub h			;193c
	nop			;193d
	adc a,a			;193e
	nop			;193f
	adc a,d			;1940
	nop			;1941
	add a,l			;1942
	nop			;1943
	add a,b			;1944
	nop			;1945
	ld a,e			;1946
	nop			;1947
	halt			;1948
	nop			;1949
	ld (hl),d			;194a
	nop			;194b
	ld l,l			;194c
	nop			;194d
	ld l,b			;194e
	nop			;194f
	ld h,h			;1950
	nop			;1951
	ld e,a			;1952
	nop			;1953
	ld e,e			;1954
	nop			;1955
	ld d,(hl)			;1956
	nop			;1957
	ld d,d			;1958
	nop			;1959
	ld c,l			;195a
	nop			;195b
	ld c,c			;195c
	nop			;195d
	ld b,h			;195e
	nop			;195f
	ld b,b			;1960
	nop			;1961
	inc a			;1962
	nop			;1963
	scf			;1964
	nop			;1965
	inc sp			;1966
	nop			;1967
	cpl			;1968
	nop			;1969
	ld hl,(l2600h)		;196a
	nop			;196d
	ld (l1e00h),hl		;196e
	nop			;1971
	add hl,de			;1972
	nop			;1973
	dec d			;1974
	nop			;1975
	ld de,l0d00h		;1976
	nop			;1979
	ex af,af'			;197a
	nop			;197b
	inc b			;197c
	nop			;197d
	and c			;197e
	dec b			;197f
	di			;1980
	inc bc			;1981
	inc sp			;1982
	inc bc			;1983
	cp a			;1984
	ld (bc),a			;1985
	ld (hl),b			;1986
	ld (bc),a			;1987
	dec (hl)			;1988
	ld (bc),a			;1989
	rlca			;198a
	ld (bc),a			;198b
	pop hl			;198c
	ld bc,001c2h		;198d
	and a			;1990
	ld bc,l0190h		;1991
	ld a,e			;1994
	ld bc,00169h		;1995
	ld e,c			;1998
	ld bc,l014ah		;1999
	inc a			;199c
	ld bc,l0130h		;199d
	dec h			;19a0
	ld bc,l0119h+1		;19a1
	djnz l19a7h		;19a4
	rlca			;19a6
l19a7h:
	ld bc,000feh		;19a7
	or 000h		;19aa
	xor 000h		;19ac
	rst 20h			;19ae
	nop			;19af
	ret po			;19b0
	nop			;19b1
	exx			;19b2
	nop			;19b3
	out (000h),a		;19b4
	call 0c700h		;19b6
	nop			;19b9
	jp nz,0bc00h		;19ba
	nop			;19bd
	or a			;19be
	nop			;19bf
	or d			;19c0
	nop			;19c1
	xor l			;19c2
	nop			;19c3
	xor c			;19c4
	nop			;19c5
	and h			;19c6
	nop			;19c7
	and b			;19c8
	nop			;19c9
	sbc a,h			;19ca
	nop			;19cb
	sub a			;19cc
	nop			;19cd
	sub e			;19ce
	nop			;19cf
	sub b			;19d0
	nop			;19d1
	adc a,h			;19d2
	nop			;19d3
	adc a,b			;19d4
	nop			;19d5
	add a,h			;19d6
	nop			;19d7
	add a,c			;19d8
	nop			;19d9
	ld a,l			;19da
	nop			;19db
	ld a,d			;19dc
	nop			;19dd
	ld (hl),a			;19de
	nop			;19df
	ld (hl),e			;19e0
	nop			;19e1
	ld (hl),b			;19e2
	nop			;19e3
	ld l,l			;19e4
	nop			;19e5
	ld l,d			;19e6
	nop			;19e7
	ld h,a			;19e8
	nop			;19e9
	ld h,h			;19ea
	nop			;19eb
	ld h,c			;19ec
	nop			;19ed
	ld e,(hl)			;19ee
	nop			;19ef
	ld e,h			;19f0
	nop			;19f1
	ld e,c			;19f2
	nop			;19f3
	ld d,(hl)			;19f4
	nop			;19f5
	ld d,e			;19f6
	nop			;19f7
	ld d,c			;19f8
	nop			;19f9
	ld c,(hl)			;19fa
	nop			;19fb
	ld c,e			;19fc
	nop			;19fd
	ld c,c			;19fe
	nop			;19ff
	ld b,(hl)			;1a00
	nop			;1a01
	ld b,h			;1a02
	nop			;1a03
	ld b,c			;1a04
	nop			;1a05
	ccf			;1a06
	nop			;1a07
	inc a			;1a08
	nop			;1a09
	ld a,(l3800h)		;1a0a
	nop			;1a0d
	dec (hl)			;1a0e
	nop			;1a0f
	inc sp			;1a10
	nop			;1a11
	ld sp,l2e00h		;1a12
	nop			;1a15
	inc l			;1a16
	nop			;1a17
	ld hl,(l2700h)		;1a18
	nop			;1a1b
sub_1a1ch:
	dec h			;1a1c
	nop			;1a1d
	inc hl			;1a1e
	nop			;1a1f
	ld hl,l1e00h		;1a20
	nop			;1a23
	inc e			;1a24
	nop			;1a25
	ld a,(de)			;1a26
	nop			;1a27
	jr l1a2ah		;1a28
l1a2ah:
	ld d,000h		;1a2a
	inc de			;1a2c
	nop			;1a2d
	ld de,l0efeh+2		;1a2e
	nop			;1a31
	dec c			;1a32
	nop			;1a33
	dec bc			;1a34
	nop			;1a35
	add hl,bc			;1a36
	nop			;1a37
	ld b,000h		;1a38
	inc b			;1a3a
	nop			;1a3b
	ld (bc),a			;1a3c
	nop			;1a3d
	ld l,(hl)			;1a3e
	add hl,de			;1a3f
	halt			;1a40
	add hl,de			;1a41
	add a,(hl)			;1a42
	add hl,de			;1a43
	sub (hl)			;1a44
	add hl,de			;1a45
	xor (hl)			;1a46
	add hl,de			;1a47
	add a,019h		;1a48
	and 019h		;1a4a
	ld b,01ah		;1a4c
	ld l,01ah		;1a4e
	ld d,(hl)			;1a50
	ld a,(de)			;1a51
	add a,(hl)			;1a52
	ld a,(de)			;1a53
	or (hl)			;1a54
	ld a,(de)			;1a55
	xor 01ah		;1a56
	ld h,01bh		;1a58
	ld h,(hl)			;1a5a
	dec de			;1a5b
	and (hl)			;1a5c
	dec de			;1a5d
	xor 01bh		;1a5e
	ld (hl),01ch		;1a60
	add a,(hl)			;1a62
	inc e			;1a63
	sub 01ch		;1a64
	ld l,01dh		;1a66
	add a,(hl)			;1a68
	dec e			;1a69
	and 01dh		;1a6a
	ld a,016h		;1a6c
	ld (bc),a			;1a6e
	ld bc,00000h		;1a6f
	nop			;1a72
	nop			;1a73
	nop			;1a74
	ld bc,00406h		;1a75
	inc bc			;1a78
	ld (bc),a			;1a79
	ld bc,00000h		;1a7a
	nop			;1a7d
	nop			;1a7e
	nop			;1a7f
	nop			;1a80
	nop			;1a81
	ld bc,l0302h		;1a82
	inc b			;1a85
	ld a,(bc)			;1a86
	ex af,af'			;1a87
	ld b,005h		;1a88
	inc b			;1a8a
	inc bc			;1a8b
	ld (bc),a			;1a8c
	ld bc,00000h		;1a8d
	nop			;1a90
	nop			;1a91
	nop			;1a92
	nop			;1a93
	nop			;1a94
	nop			;1a95
	rrca			;1a96
	inc c			;1a97
	ld a,(bc)			;1a98
	ex af,af'			;1a99
	rlca			;1a9a
	ld b,004h		;1a9b
	inc bc			;1a9d
	inc bc			;1a9e
	ld (bc),a			;1a9f
	ld bc,00001h		;1aa0
	nop			;1aa3
	nop			;1aa4
	nop			;1aa5
	nop			;1aa6
	nop			;1aa7
	nop			;1aa8
	nop			;1aa9
	nop			;1aaa
	ld bc,l0200h+1		;1aab
	inc d			;1aae
	ld de,00c0fh		;1aaf
	dec bc			;1ab2
	add hl,bc			;1ab3
	ex af,af'			;1ab4
	ld b,005h		;1ab5
	inc b			;1ab7
	inc bc			;1ab8
	inc bc			;1ab9
	ld (bc),a			;1aba
	ld bc,00001h		;1abb
	nop			;1abe
	nop			;1abf
	nop			;1ac0
	nop			;1ac1
	nop			;1ac2
	nop			;1ac3
	nop			;1ac4
	nop			;1ac5
	add hl,de			;1ac6
	ld d,013h		;1ac7
	ld de,l0d0fh		;1ac9
	dec bc			;1acc
	ld a,(bc)			;1acd
	ex af,af'			;1ace
	rlca			;1acf
	ld b,005h		;1ad0
	inc b			;1ad2
	inc bc			;1ad3
	inc bc			;1ad4
	ld (bc),a			;1ad5
	ld (bc),a			;1ad6
	ld bc,00001h		;1ad7
	nop			;1ada
	nop			;1adb
	nop			;1adc
	nop			;1add
	nop			;1ade
	nop			;1adf
	nop			;1ae0
	nop			;1ae1
	nop			;1ae2
	nop			;1ae3
	ld bc,l1f01h		;1ae4
	dec de			;1ae7
	jr l1affh		;1ae8
	inc de			;1aea
	ld de,l0d0fh		;1aeb
	inc c			;1aee
	ld a,(bc)			;1aef
	add hl,bc			;1af0
	ex af,af'			;1af1
	rlca			;1af2
	ld b,005h		;1af3
	inc b			;1af5
	inc b			;1af6
	inc bc			;1af7
	ld (bc),a			;1af8
	ld (bc),a			;1af9
	ld bc,00001h		;1afa
	nop			;1afd
	nop			;1afe
l1affh:
	nop			;1aff
	nop			;1b00
	nop			;1b01
	nop			;1b02
	nop			;1b03
	nop			;1b04
	nop			;1b05
	inc h			;1b06
	jr nz,l1b26h		;1b07
	ld a,(de)			;1b09
	rla			;1b0a
	dec d			;1b0b
	inc de			;1b0c
	ld de,l0e0fh		;1b0d
	dec c			;1b10
	dec bc			;1b11
	ld a,(bc)			;1b12
	add hl,bc			;1b13
	ex af,af'			;1b14
	rlca			;1b15
	ld b,005h		;1b16
	inc b			;1b18
	inc b			;1b19
	inc bc			;1b1a
	ld (bc),a			;1b1b
	ld (bc),a			;1b1c
	ld bc,l0101h		;1b1d
	nop			;1b20
	nop			;1b21
	nop			;1b22
	nop			;1b23
	nop			;1b24
	nop			;1b25
l1b26h:
	nop			;1b26
	nop			;1b27
	nop			;1b28
	nop			;1b29
	nop			;1b2a
	nop			;1b2b
	nop			;1b2c
	ld bc,l2529h		;1b2d
	ld hl,l1c1eh		;1b30
	add hl,de			;1b33
	rla			;1b34
	dec d			;1b35
	inc de			;1b36
	ld (de),a			;1b37
	djnz l1b49h		;1b38
	dec c			;1b3a
	inc c			;1b3b
	dec bc			;1b3c
	ld a,(bc)			;1b3d
	add hl,bc			;1b3e
	ex af,af'			;1b3f
	rlca			;1b40
	ld b,005h		;1b41
	inc b			;1b43
	inc b			;1b44
	inc bc			;1b45
	inc bc			;1b46
	ld (bc),a			;1b47
	ld (bc),a			;1b48
l1b49h:
	ld bc,l0101h		;1b49
	nop			;1b4c
	nop			;1b4d
	nop			;1b4e
	nop			;1b4f
	nop			;1b50
	nop			;1b51
	nop			;1b52
	nop			;1b53
	nop			;1b54
	nop			;1b55
	cpl			;1b56
	ld hl,(l2326h)		;1b57
	jr nz,l1b7ah		;1b5a
	dec de			;1b5c
	add hl,de			;1b5d
	rla			;1b5e
	ld d,014h		;1b5f
	ld (de),a			;1b61
	ld de,l0e0fh		;1b62
	dec c			;1b65
	inc c			;1b66
	dec bc			;1b67
	ld a,(bc)			;1b68
	add hl,bc			;1b69
	ex af,af'			;1b6a
	rlca			;1b6b
	ld b,005h		;1b6c
	dec b			;1b6e
	inc b			;1b6f
	inc bc			;1b70
	inc bc			;1b71
	ld (bc),a			;1b72
	ld (bc),a			;1b73
	ld bc,l0101h		;1b74
	nop			;1b77
	nop			;1b78
	nop			;1b79
l1b7ah:
	nop			;1b7a
	nop			;1b7b
	nop			;1b7c
	nop			;1b7d
	nop			;1b7e
	nop			;1b7f
	nop			;1b80
	nop			;1b81
	nop			;1b82
	nop			;1b83
	nop			;1b84
	nop			;1b85
	inc (hl)			;1b86
	cpl			;1b87
	dec hl			;1b88
	jr z,l1bb0h		;1b89
	ld (l1e20h),hl		;1b8b
	dec de			;1b8e
	ld a,(de)			;1b8f
	jr l1ba8h		;1b90
	inc d			;1b92
	inc de			;1b93
	ld de,l0f0eh+2		;1b94
	ld c,00ch		;1b97
	dec bc			;1b99
	ld a,(bc)			;1b9a
	add hl,bc			;1b9b
	add hl,bc			;1b9c
	ex af,af'			;1b9d
	rlca			;1b9e
	ld b,005h		;1b9f
	dec b			;1ba1
	inc b			;1ba2
	inc b			;1ba3
	inc bc			;1ba4
	inc bc			;1ba5
	ld (bc),a			;1ba6
	ld (bc),a			;1ba7
l1ba8h:
	ld bc,l0101h		;1ba8
	nop			;1bab
	nop			;1bac
	nop			;1bad
	nop			;1bae
	nop			;1baf
l1bb0h:
	nop			;1bb0
	nop			;1bb1
	nop			;1bb2
	nop			;1bb3
	nop			;1bb4
	nop			;1bb5
	ld a,(03135h)		;1bb6
	dec l			;1bb9
	ld hl,(02427h)		;1bba
	ld (l1e20h),hl		;1bbd
	inc e			;1bc0
	ld a,(de)			;1bc1
	jr l1bdbh		;1bc2
	dec d			;1bc4
	inc d			;1bc5
	ld (de),a			;1bc6
	ld de,l0e0fh+1		;1bc7
	dec c			;1bca
	inc c			;1bcb
	dec bc			;1bcc
	ld a,(bc)			;1bcd
	add hl,bc			;1bce
	add hl,bc			;1bcf
	ex af,af'			;1bd0
	rlca			;1bd1
	ld b,006h		;1bd2
	dec b			;1bd4
	inc b			;1bd5
	inc b			;1bd6
	inc bc			;1bd7
	inc bc			;1bd8
	ld (bc),a			;1bd9
	ld (bc),a			;1bda
l1bdbh:
	ld bc,l0101h		;1bdb
	ld bc,00000h		;1bde
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
	ccf			;1bee
	ld a,(l3236h)		;1bef
	cpl			;1bf2
	inc l			;1bf3
	add hl,hl			;1bf4
	ld h,024h		;1bf5
	ld (l1e20h),hl		;1bf7
	inc e			;1bfa
	ld a,(de)			;1bfb
	add hl,de			;1bfc
	rla			;1bfd
	ld d,014h		;1bfe
	inc de			;1c00
	ld (de),a			;1c01
	djnz l1c13h		;1c02
	ld c,00dh		;1c04
	inc c			;1c06
	dec bc			;1c07
	ld a,(bc)			;1c08
	add hl,bc			;1c09
	add hl,bc			;1c0a
	ex af,af'			;1c0b
	rlca			;1c0c
	ld b,006h		;1c0d
	dec b			;1c0f
	inc b			;1c10
	inc b			;1c11
	inc bc			;1c12
l1c13h:
	inc bc			;1c13
	ld (bc),a			;1c14
	ld (bc),a			;1c15
	ld (bc),a			;1c16
	ld bc,l0101h		;1c17
	nop			;1c1a
	nop			;1c1b
	nop			;1c1c
	nop			;1c1d
l1c1eh:
	nop			;1c1e
	nop			;1c1f
	nop			;1c20
	nop			;1c21
	nop			;1c22
	nop			;1c23
	nop			;1c24
	nop			;1c25
	ld b,l			;1c26
	ccf			;1c27
	dec sp			;1c28
	scf			;1c29
	inc (hl)			;1c2a
	jr nc,l1c5bh		;1c2b
	dec hl			;1c2d
	add hl,hl			;1c2e
	ld h,024h		;1c2f
	ld (l1e20h),hl		;1c31
	dec e			;1c34
	dec de			;1c35
	add hl,de			;1c36
	jr l1c4fh		;1c37
	dec d			;1c39
	inc d			;1c3a
	ld (de),a			;1c3b
	ld de,l0f0eh+2		;1c3c
	ld c,00dh		;1c3f
	inc c			;1c41
	dec bc			;1c42
	ld a,(bc)			;1c43
	add hl,bc			;1c44
	add hl,bc			;1c45
	ex af,af'			;1c46
	rlca			;1c47
	ld b,006h		;1c48
	dec b			;1c4a
	dec b			;1c4b
	inc b			;1c4c
	inc b			;1c4d
	inc bc			;1c4e
l1c4fh:
	inc bc			;1c4f
	ld (bc),a			;1c50
	ld (bc),a			;1c51
	ld (bc),a			;1c52
	ld bc,l0101h		;1c53
	nop			;1c56
	nop			;1c57
	nop			;1c58
	nop			;1c59
	nop			;1c5a
l1c5bh:
	nop			;1c5b
	nop			;1c5c
	nop			;1c5d
	nop			;1c5e
	nop			;1c5f
	nop			;1c60
	nop			;1c61
	nop			;1c62
	nop			;1c63
	nop			;1c64
	nop			;1c65
	ld c,d			;1c66
	ld b,l			;1c67
	ld b,b			;1c68
	inc a			;1c69
	add hl,sp			;1c6a
	dec (hl)			;1c6b
	ld (02d30h),a		;1c6c
	dec hl			;1c6f
	jr z,$+38		;1c70
	inc h			;1c72
	ld (l1f20h),hl		;1c73
	dec e			;1c76
	dec de			;1c77
	ld a,(de)			;1c78
	jr l1c92h		;1c79
	ld d,014h		;1c7b
	inc de			;1c7d
	ld (de),a			;1c7e
	ld de,l0f0eh+2		;1c7f
	ld c,00dh		;1c82
	inc c			;1c84
	dec bc			;1c85
	ld a,(bc)			;1c86
	add hl,bc			;1c87
	add hl,bc			;1c88
	ex af,af'			;1c89
	rlca			;1c8a
	rlca			;1c8b
	ld b,005h		;1c8c
	dec b			;1c8e
	inc b			;1c8f
	inc b			;1c90
	inc bc			;1c91
l1c92h:
	inc bc			;1c92
	ld (bc),a			;1c93
	ld (bc),a			;1c94
	ld (bc),a			;1c95
	ld bc,l0101h		;1c96
	ld bc,00000h		;1c99
sub_1c9ch:
	nop			;1c9c
	nop			;1c9d
	nop			;1c9e
	nop			;1c9f
	nop			;1ca0
	nop			;1ca1
	nop			;1ca2
	nop			;1ca3
	nop			;1ca4
	nop			;1ca5
	ld d,b			;1ca6
	ld c,d			;1ca7
	ld b,l			;1ca8
	ld b,c			;1ca9
	ld a,03ah		;1caa
	scf			;1cac
	inc (hl)			;1cad
	ld (02d2fh),a		;1cae
	ld hl,(l2628h)		;1cb1
	inc h			;1cb4
	inc hl			;1cb5
	ld hl,l1e1fh		;1cb6
	inc e			;1cb9
	dec de			;1cba
	add hl,de			;1cbb
	jr l1cd5h		;1cbc
	dec d			;1cbe
	inc d			;1cbf
	inc de			;1cc0
	ld (de),a			;1cc1
	ld de,l0f0eh+2		;1cc2
	ld c,00dh		;1cc5
	inc c			;1cc7
	dec bc			;1cc8
	ld a,(bc)			;1cc9
	ld a,(bc)			;1cca
	add hl,bc			;1ccb
	ex af,af'			;1ccc
	rlca			;1ccd
	rlca			;1cce
	ld b,006h		;1ccf
	dec b			;1cd1
	dec b			;1cd2
	inc b			;1cd3
	inc b			;1cd4
l1cd5h:
	inc bc			;1cd5
	inc bc			;1cd6
	ld (bc),a			;1cd7
	ld (bc),a			;1cd8
	ld (bc),a			;1cd9
	ld bc,l0101h		;1cda
	nop			;1cdd
	nop			;1cde
	nop			;1cdf
	nop			;1ce0
	nop			;1ce1
	nop			;1ce2
	nop			;1ce3
	nop			;1ce4
	nop			;1ce5
	nop			;1ce6
	nop			;1ce7
	nop			;1ce8
	nop			;1ce9
	nop			;1cea
	nop			;1ceb
	nop			;1cec
	nop			;1ced
	ld d,(hl)			;1cee
	ld d,b			;1cef
	ld c,e			;1cf0
	ld b,(hl)			;1cf1
	ld b,e			;1cf2
	ccf			;1cf3
	inc a			;1cf4
	add hl,sp			;1cf5
	ld (hl),034h		;1cf6
	ld sp,02d2fh		;1cf8
	dec hl			;1cfb
	add hl,hl			;1cfc
	daa			;1cfd
	dec h			;1cfe
	inc hl			;1cff
	ld hl,l1e20h		;1d00
	dec e			;1d03
	dec de			;1d04
	ld a,(de)			;1d05
	add hl,de			;1d06
	rla			;1d07
	ld d,015h		;1d08
	inc d			;1d0a
	inc de			;1d0b
	ld (de),a			;1d0c
	ld de,l0f0eh+2		;1d0d
	ld c,00dh		;1d10
	inc c			;1d12
	dec bc			;1d13
	ld a,(bc)			;1d14
	ld a,(bc)			;1d15
	add hl,bc			;1d16
	ex af,af'			;1d17
	ex af,af'			;1d18
	rlca			;1d19
	ld b,006h		;1d1a
	dec b			;1d1c
	dec b			;1d1d
	inc b			;1d1e
	inc b			;1d1f
	inc bc			;1d20
	inc bc			;1d21
	ld (bc),a			;1d22
	ld (bc),a			;1d23
	ld (bc),a			;1d24
	ld bc,l0101h		;1d25
	ld bc,00000h		;1d28
	nop			;1d2b
	nop			;1d2c
	nop			;1d2d
	nop			;1d2e
	nop			;1d2f
	nop			;1d30
	nop			;1d31
	nop			;1d32
	nop			;1d33
	nop			;1d34
	nop			;1d35
	ld e,e			;1d36
	ld d,l			;1d37
	ld d,b			;1d38
	ld c,h			;1d39
	ld c,b			;1d3a
	ld b,h			;1d3b
	ld b,c			;1d3c
	ld a,03bh		;1d3d
	jr c,l1d77h		;1d3f
	inc sp			;1d41
	ld sp,02d2fh		;1d42
	dec hl			;1d45
	add hl,hl			;1d46
	daa			;1d47
	dec h			;1d48
	inc h			;1d49
	ld (l1f20h),hl		;1d4a
	dec e			;1d4d
	inc e			;1d4e
	dec de			;1d4f
	add hl,de			;1d50
	jr l1d6ah		;1d51
	ld d,015h		;1d53
	inc de			;1d55
	ld (de),a			;1d56
	ld de,l0f0eh+2		;1d57
	rrca			;1d5a
	ld c,00dh		;1d5b
	inc c			;1d5d
	dec bc			;1d5e
	ld a,(bc)			;1d5f
	ld a,(bc)			;1d60
	add hl,bc			;1d61
	ex af,af'			;1d62
	ex af,af'			;1d63
	rlca			;1d64
	rlca			;1d65
	ld b,005h		;1d66
	dec b			;1d68
	inc b			;1d69
l1d6ah:
	inc b			;1d6a
	inc bc			;1d6b
	inc bc			;1d6c
	inc bc			;1d6d
	ld (bc),a			;1d6e
	ld (bc),a			;1d6f
	ld (bc),a			;1d70
	ld bc,l0101h		;1d71
	ld bc,00000h		;1d74
l1d77h:
	nop			;1d77
	nop			;1d78
	nop			;1d79
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
	ld h,c			;1d86
	ld e,e			;1d87
	ld d,(hl)			;1d88
	ld d,c			;1d89
	ld c,l			;1d8a
	ld c,c			;1d8b
	ld b,(hl)			;1d8c
	ld b,e			;1d8d
	ld b,b			;1d8e
	dec a			;1d8f
	ld a,(l3537h+1)		;1d90
	inc sp			;1d93
	ld sp,02d2fh		;1d94
	dec hl			;1d97
	add hl,hl			;1d98
	daa			;1d99
	ld h,024h		;1d9a
	inc hl			;1d9c
	ld hl,l1e20h		;1d9d
	dec e			;1da0
	dec de			;1da1
	ld a,(de)			;1da2
	add hl,de			;1da3
	jr l1dbdh		;1da4
	dec d			;1da6
	inc d			;1da7
	inc de			;1da8
	ld (de),a			;1da9
	ld de,l0f0eh+2		;1daa
	rrca			;1dad
	ld c,00dh		;1dae
	inc c			;1db0
	dec bc			;1db1
	dec bc			;1db2
	ld a,(bc)			;1db3
	add hl,bc			;1db4
	add hl,bc			;1db5
	ex af,af'			;1db6
	rlca			;1db7
	rlca			;1db8
	ld b,006h		;1db9
	dec b			;1dbb
	dec b			;1dbc
l1dbdh:
	inc b			;1dbd
	inc b			;1dbe
	inc bc			;1dbf
	inc bc			;1dc0
	inc bc			;1dc1
	ld (bc),a			;1dc2
	ld (bc),a			;1dc3
	ld (bc),a			;1dc4
	ld bc,l0101h		;1dc5
	ld bc,00000h		;1dc8
	nop			;1dcb
	nop			;1dcc
	nop			;1dcd
	nop			;1dce
	nop			;1dcf
	nop			;1dd0
	nop			;1dd1
	nop			;1dd2
	nop			;1dd3
	nop			;1dd4
	nop			;1dd5
	ld h,a			;1dd6
	ld h,b			;1dd7
	ld e,e			;1dd8
	ld d,(hl)			;1dd9
	ld d,d			;1dda
	ld c,(hl)			;1ddb
	ld c,e			;1ddc
	ld b,a			;1ddd
	ld b,h			;1dde
	ld b,d			;1ddf
	ccf			;1de0
	inc a			;1de1
	ld a,(l3537h)		;1de2
	inc sp			;1de5
	ld sp,02d2fh		;1de6
	dec hl			;1de9
	ld hl,(l2628h)		;1dea
	dec h			;1ded
	inc hl			;1dee
	ld (l1f20h),hl		;1def
	dec e			;1df2
	inc e			;1df3
	dec de			;1df4
	ld a,(de)			;1df5
	add hl,de			;1df6
	rla			;1df7
	ld d,015h		;1df8
	inc d			;1dfa
	inc de			;1dfb
	ld (de),a			;1dfc
	ld de,l0f0eh+2		;1dfd
l1e00h:
	rrca			;1e00
	ld c,00dh		;1e01
	inc c			;1e03
	dec bc			;1e04
	dec bc			;1e05
	ld a,(bc)			;1e06
	add hl,bc			;1e07
	add hl,bc			;1e08
	ex af,af'			;1e09
	rlca			;1e0a
	rlca			;1e0b
	ld b,006h		;1e0c
	dec b			;1e0e
	dec b			;1e0f
	inc b			;1e10
	inc b			;1e11
	inc bc			;1e12
	inc bc			;1e13
	inc bc			;1e14
	ld (bc),a			;1e15
	ld (bc),a			;1e16
	ld (bc),a			;1e17
	ld bc,l0101h		;1e18
	ld bc,00000h		;1e1b
	nop			;1e1e
l1e1fh:
	nop			;1e1f
l1e20h:
	nop			;1e20
	nop			;1e21
	nop			;1e22
	nop			;1e23
	nop			;1e24
	nop			;1e25
	nop			;1e26
	nop			;1e27
	nop			;1e28
	nop			;1e29
	nop			;1e2a
	nop			;1e2b
	nop			;1e2c
	nop			;1e2d
	ld l,h			;1e2e
	ld h,(hl)			;1e2f
	ld h,b			;1e30
	ld e,h			;1e31
	ld d,a			;1e32
	ld d,e			;1e33
	ld d,b			;1e34
	ld c,h			;1e35
	ld c,c			;1e36
	ld b,(hl)			;1e37
	ld b,h			;1e38
	ld b,c			;1e39
	ld a,03ch		;1e3a
	ld a,(l3537h)		;1e3c
	inc sp			;1e3f
	ld sp,02e2fh		;1e40
	inc l			;1e43
	ld hl,(l2728h)		;1e44
	dec h			;1e47
	inc h			;1e48
	ld (l2021h),hl		;1e49
	ld e,01dh		;1e4c
	inc e			;1e4e
	dec de			;1e4f
	add hl,de			;1e50
	jr l1e6ah		;1e51
	ld d,015h		;1e53
	inc d			;1e55
	inc de			;1e56
	ld (de),a			;1e57
	ld de,l0f0eh+2		;1e58
	rrca			;1e5b
	ld c,00dh		;1e5c
	inc c			;1e5e
	inc c			;1e5f
	dec bc			;1e60
	ld a,(bc)			;1e61
	add hl,bc			;1e62
	add hl,bc			;1e63
	ex af,af'			;1e64
	ex af,af'			;1e65
l1e66h:
	rlca			;1e66
	rlca			;1e67
	ld b,005h		;1e68
l1e6ah:
	dec b			;1e6a
	dec b			;1e6b
	inc b			;1e6c
	inc b			;1e6d
	inc bc			;1e6e
	inc bc			;1e6f
	inc bc			;1e70
	ld (bc),a			;1e71
	ld (bc),a			;1e72
	ld (bc),a			;1e73
	ld bc,l0101h		;1e74
	ld bc,00000h		;1e77
	nop			;1e7a
	nop			;1e7b
	nop			;1e7c
l1e7dh:
	nop			;1e7d
	nop			;1e7e
	nop			;1e7f
	nop			;1e80
	nop			;1e81
	nop			;1e82
	nop			;1e83
	nop			;1e84
	nop			;1e85
	ld (hl),d			;1e86
	ld l,e			;1e87
	ld h,(hl)			;1e88
	ld h,c			;1e89
	ld e,l			;1e8a
	ld e,b			;1e8b
	ld d,l			;1e8c
	ld d,c			;1e8d
	ld c,(hl)			;1e8e
	ld c,e			;1e8f
	ld c,b			;1e90
	ld b,l			;1e91
	ld b,e			;1e92
	ld b,b			;1e93
	ld a,03ch		;1e94
	ld a,(l3537h)		;1e96
	inc sp			;1e99
	ld (l2e30h),a		;1e9a
	inc l			;1e9d
	dec hl			;1e9e
	add hl,hl			;1e9f
	daa			;1ea0
	ld h,024h		;1ea1
	inc hl			;1ea3
	ld (l1f20h),hl		;1ea4
	ld e,01dh		;1ea7
	dec de			;1ea9
	ld a,(de)			;1eaa
	add hl,de			;1eab
	jr l1ec5h		;1eac
	ld d,015h		;1eae
	inc d			;1eb0
	inc de			;1eb1
	ld (de),a			;1eb2
	ld de,l0f0eh+2		;1eb3
	rrca			;1eb6
	ld c,00dh		;1eb7
	inc c			;1eb9
	inc c			;1eba
	dec bc			;1ebb
	ld a,(bc)			;1ebc
	ld a,(bc)			;1ebd
	add hl,bc			;1ebe
	ex af,af'			;1ebf
	ex af,af'			;1ec0
	rlca			;1ec1
	rlca			;1ec2
	ld b,006h		;1ec3
l1ec5h:
	dec b			;1ec5
	dec b			;1ec6
	inc b			;1ec7
	inc b			;1ec8
	inc b			;1ec9
	inc bc			;1eca
	inc bc			;1ecb
	ld (bc),a			;1ecc
	ld (bc),a			;1ecd
	ld (bc),a			;1ece
	ld (bc),a			;1ecf
	ld bc,l0101h		;1ed0
	ld bc,00000h		;1ed3
	nop			;1ed6
	nop			;1ed7
	nop			;1ed8
	nop			;1ed9
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
	ld a,b			;1ee6
	ld (hl),c			;1ee7
	ld l,e			;1ee8
	ld h,(hl)			;1ee9
	ld h,d			;1eea
	ld e,(hl)			;1eeb
	ld e,d			;1eec
	ld d,(hl)			;1eed
	ld d,e			;1eee
	ld d,b			;1eef
	ld c,l			;1ef0
	ld c,d			;1ef1
	ld b,a			;1ef2
	ld b,l			;1ef3
	ld b,d			;1ef4
	ld b,b			;1ef5
	ld a,03ch		;1ef6
	ld a,(l3638h)		;1ef8
	inc (hl)			;1efb
	ld (l2e30h),a		;1efc
	dec l			;1eff
	dec hl			;1f00
l1f01h:
	ld hl,(l2728h)		;1f01
	dec h			;1f04
	inc h			;1f05
	ld (l2021h),hl		;1f06
	rra			;1f09
	dec e			;1f0a
	inc e			;1f0b
	dec de			;1f0c
	ld a,(de)			;1f0d
	add hl,de			;1f0e
	jr l1f28h		;1f0f
	ld d,015h		;1f11
	inc d			;1f13
	inc de			;1f14
	ld (de),a			;1f15
	ld de,l0f0eh+2		;1f16
l1f19h:
	rrca			;1f19
	ld c,00dh		;1f1a
	inc c			;1f1c
	inc c			;1f1d
	dec bc			;1f1e
	ld a,(bc)			;1f1f
l1f20h:
	ld a,(bc)			;1f20
l1f21h:
	add hl,bc			;1f21
	add hl,bc			;1f22
	ex af,af'			;1f23
	rlca			;1f24
	rlca			;1f25
	ld b,006h		;1f26
l1f28h:
	dec b			;1f28
	dec b			;1f29
	dec b			;1f2a
	inc b			;1f2b
	inc b			;1f2c
	inc bc			;1f2d
	inc bc			;1f2e
	inc bc			;1f2f
	ld (bc),a			;1f30
	ld (bc),a			;1f31
	ld (bc),a			;1f32
	ld bc,l0101h		;1f33
	ld bc,00001h		;1f36
	nop			;1f39
	nop			;1f3a
	nop			;1f3b
	nop			;1f3c
	nop			;1f3d
	nop			;1f3e
sub_1f3fh:
	nop			;1f3f
	nop			;1f40
	nop			;1f41
	nop			;1f42
	nop			;1f43
	nop			;1f44
	nop			;1f45
	add a,(hl)			;1f46
	ld e,0e6h		;1f47
	ld e,046h		;1f49
	rra			;1f4b
	and (hl)			;1f4c
	rra			;1f4d
	ld b,020h		;1f4e
	ld h,(hl)			;1f50
	jr nz,l1f19h		;1f51
	jr nz,l1f7bh		;1f53
	ld hl,l2186h		;1f55
	and 021h		;1f58
	ld b,(hl)			;1f5a
	ld (l22a6h),hl		;1f5b
	ld b,023h		;1f5e
	ld h,(hl)			;1f60
	inc hl			;1f61
	ld a,016h		;1f62
	ld a,016h		;1f64
	ld h,(hl)			;1f66
	inc hl			;1f67
	ld b,023h		;1f68
	and (hl)			;1f6a
	ld (l2246h),hl		;1f6b
	and 021h		;1f6e
	add a,(hl)			;1f70
	ld hl,l2126h		;1f71
	add a,020h		;1f74
	ld h,(hl)			;1f76
	jr nz,$+6		;1f77
	jr nz,l1f21h		;1f79
l1f7bh:
	rra			;1f7b
	ld b,(hl)			;1f7c
	rra			;1f7d
	and 01eh		;1f7e
	add a,(hl)			;1f80
	ld e,0feh		;1f81
	ld d,0feh		;1f83
	ld d,047h		;1f85
	ld b,e			;1f87
	ccf			;1f88
	inc a			;1f89
	add hl,sp			;1f8a
	ld (hl),034h		;1f8b
	ld (l2e30h),a		;1f8d
	dec l			;1f90
	dec hl			;1f91
	add hl,hl			;1f92
	jr z,l1fbch		;1f93
	dec h			;1f95
	inc h			;1f96
	inc hl			;1f97
	ld (l1f20h),hl		;1f98
	ld e,01dh		;1f9b
	inc e			;1f9d
	dec de			;1f9e
	ld a,(de)			;1f9f
	add hl,de			;1fa0
	jr l1fbbh		;1fa1
	rla			;1fa3
	ld d,015h		;1fa4
	inc d			;1fa6
	inc d			;1fa7
	inc de			;1fa8
	ld (de),a			;1fa9
	ld de,l1011h		;1faa
	djnz l1fbeh		;1fad
	ld c,00eh		;1faf
	dec c			;1fb1
	dec c			;1fb2
	inc c			;1fb3
	inc c			;1fb4
	dec bc			;1fb5
	dec bc			;1fb6
	ld a,(bc)			;1fb7
	ld a,(bc)			;1fb8
	add hl,bc			;1fb9
	add hl,bc			;1fba
l1fbbh:
	ex af,af'			;1fbb
l1fbch:
	ex af,af'			;1fbc
	rlca			;1fbd
l1fbeh:
	rlca			;1fbe
	rlca			;1fbf
	ld b,006h		;1fc0
	dec b			;1fc2
	dec b			;1fc3
	dec b			;1fc4
	dec b			;1fc5
	inc b			;1fc6
	inc b			;1fc7
	inc b			;1fc8
	inc bc			;1fc9
	inc bc			;1fca
	inc bc			;1fcb
	inc bc			;1fcc
	ld (bc),a			;1fcd
	ld (bc),a			;1fce
	ld (bc),a			;1fcf
	ld (bc),a			;1fd0
	ld bc,l0101h		;1fd1
	ld bc,l0101h		;1fd4
	ld bc,00000h		;1fd7
	nop			;1fda
	nop			;1fdb
	nop			;1fdc
	nop			;1fdd
	nop			;1fde
	nop			;1fdf
	nop			;1fe0
	nop			;1fe1
	nop			;1fe2
	nop			;1fe3
	nop			;1fe4
	nop			;1fe5
	ld c,e			;1fe6
	ld b,(hl)			;1fe7
	ld b,d			;1fe8
	ld a,03ch		;1fe9
	add hl,sp			;1feb
	scf			;1fec
	dec (hl)			;1fed
	ld (l2f31h),a		;1fee
	dec l			;1ff1
	dec hl			;1ff2
	ld hl,(l2728h)		;1ff3
	ld h,024h		;1ff6
	inc hl			;1ff8
	ld (l2021h),hl		;1ff9
	rra			;1ffc
	ld e,01dh		;1ffd
l1fffh:
	inc e			;1fff
l2000h:
	dec de			;2000
	ld a,(de)			;2001
	add hl,de			;2002
	jr l201ch		;2003
	ld d,015h		;2005
	dec d			;2007
	inc d			;2008
	inc de			;2009
	ld (de),a			;200a
	ld (de),a			;200b
	ld de,01010h		;200c
	rrca			;200f
	ld c,00eh		;2010
	dec c			;2012
	dec c			;2013
	inc c			;2014
	inc c			;2015
	dec bc			;2016
	dec bc			;2017
	ld a,(bc)			;2018
	ld a,(bc)			;2019
	add hl,bc			;201a
	add hl,bc			;201b
l201ch:
	ex af,af'			;201c
	ex af,af'			;201d
	rlca			;201e
	rlca			;201f
sub_2020h:
	rlca			;2020
l2021h:
	ld b,006h		;2021
	dec b			;2023
	dec b			;2024
	dec b			;2025
	inc b			;2026
	inc b			;2027
	inc b			;2028
	inc b			;2029
	inc bc			;202a
	inc bc			;202b
	inc bc			;202c
	ld (bc),a			;202d
	ld (bc),a			;202e
	ld (bc),a			;202f
	ld (bc),a			;2030
l2031h:
	ld (bc),a			;2031
	ld bc,l0101h		;2032
	ld bc,l0101h		;2035
	nop			;2038
	nop			;2039
	nop			;203a
	nop			;203b
	nop			;203c
	nop			;203d
	nop			;203e
l203fh:
	nop			;203f
	nop			;2040
	nop			;2041
	nop			;2042
	nop			;2043
	nop			;2044
	nop			;2045
	ld c,a			;2046
	ld c,d			;2047
	ld b,(hl)			;2048
	ld b,d			;2049
	ccf			;204a
	inc a			;204b
	ld a,(l3537h+1)		;204c
	inc sp			;204f
	ld sp,l2e30h		;2050
	inc l			;2053
	dec hl			;2054
	add hl,hl			;2055
	jr z,l207fh		;2056
	dec h			;2058
	inc h			;2059
	inc hl			;205a
	ld (l1f20h),hl		;205b
	ld e,01dh		;205e
	inc e			;2060
	dec de			;2061
	ld a,(de)			;2062
	add hl,de			;2063
	jr l207dh		;2064
	rla			;2066
	ld d,015h		;2067
	inc d			;2069
	inc de			;206a
	inc de			;206b
	ld (de),a			;206c
	ld de,l1011h		;206d
	rrca			;2070
	rrca			;2071
	ld c,00dh		;2072
	dec c			;2074
	inc c			;2075
	inc c			;2076
	dec bc			;2077
l2078h:
	dec bc			;2078
	ld a,(bc)			;2079
	ld a,(bc)			;207a
sub_207bh:
	add hl,bc			;207b
sub_207ch:
	add hl,bc			;207c
l207dh:
	ex af,af'			;207d
	ex af,af'			;207e
l207fh:
	rlca			;207f
	rlca			;2080
	rlca			;2081
	ld b,006h		;2082
	dec b			;2084
	dec b			;2085
	dec b			;2086
	inc b			;2087
	inc b			;2088
	inc b			;2089
	inc bc			;208a
	inc bc			;208b
	inc bc			;208c
	inc bc			;208d
	ld (bc),a			;208e
	ld (bc),a			;208f
	ld (bc),a			;2090
	ld (bc),a			;2091
	ld bc,l0101h		;2092
	ld bc,l0101h		;2095
	nop			;2098
	nop			;2099
	nop			;209a
	nop			;209b
	nop			;209c
	nop			;209d
	nop			;209e
	nop			;209f
	nop			;20a0
	nop			;20a1
	nop			;20a2
	nop			;20a3
	nop			;20a4
	nop			;20a5
	ld d,e			;20a6
	ld c,l			;20a7
	ld c,c			;20a8
	ld b,l			;20a9
	ld b,d			;20aa
	ccf			;20ab
	inc a			;20ac
	ld a,(l3638h)		;20ad
	inc (hl)			;20b0
	ld (l2e30h),a		;20b1
	dec l			;20b4
	dec hl			;20b5
	ld hl,(l2728h)		;20b6
	ld h,024h		;20b9
	inc hl			;20bb
	ld (l2021h),hl		;20bc
sub_20bfh:
	ld e,01dh		;20bf
	inc e			;20c1
	dec de			;20c2
	ld a,(de)			;20c3
	add hl,de			;20c4
	add hl,de			;20c5
	jr l20dfh		;20c6
	ld d,015h		;20c8
	inc d			;20ca
	inc d			;20cb
	inc de			;20cc
	ld (de),a			;20cd
	ld de,l1011h		;20ce
	rrca			;20d1
	rrca			;20d2
	ld c,00dh		;20d3
	dec c			;20d5
	inc c			;20d6
	inc c			;20d7
	dec bc			;20d8
	dec bc			;20d9
	ld a,(bc)			;20da
	ld a,(bc)			;20db
	add hl,bc			;20dc
	add hl,bc			;20dd
	ex af,af'			;20de
l20dfh:
	ex af,af'			;20df
	rlca			;20e0
	rlca			;20e1
	ld b,006h		;20e2
	ld b,005h		;20e4
	dec b			;20e6
	dec b			;20e7
	inc b			;20e8
	inc b			;20e9
	inc b			;20ea
	inc bc			;20eb
	inc bc			;20ec
	inc bc			;20ed
	inc bc			;20ee
	ld (bc),a			;20ef
	ld (bc),a			;20f0
	ld (bc),a			;20f1
	ld (bc),a			;20f2
	ld bc,l0101h		;20f3
	ld bc,l0101h		;20f6
	nop			;20f9
	nop			;20fa
	nop			;20fb
	nop			;20fc
	nop			;20fd
	nop			;20fe
	nop			;20ff
l2100h:
	nop			;2100
	nop			;2101
	nop			;2102
	nop			;2103
	nop			;2104
l2105h:
	nop			;2105
	ld d,a			;2106
	ld d,c			;2107
l2108h:
	ld c,h			;2108
	ld c,c			;2109
l210ah:
	ld b,l			;210a
l210bh:
	ld b,d			;210b
l210ch:
	ccf			;210c
l210dh:
	dec a			;210d
	dec sp			;210e
l210fh:
	jr c,l2147h		;210f
	inc (hl)			;2111
l2112h:
	ld (l2f31h),a		;2112
l2115h:
	dec l			;2115
	inc l			;2116
	ld hl,(l2728h+1)		;2117
	ld h,025h		;211a
	inc h			;211c
	ld (l2021h),hl		;211d
	rra			;2120
	ld e,01dh		;2121
	inc e			;2123
	dec de			;2124
	ld a,(de)			;2125
l2126h:
	add hl,de			;2126
	jr l2140h		;2127
	ld d,015h		;2129
	dec d			;212b
	inc d			;212c
	inc de			;212d
	ld (de),a			;212e
	ld de,l1011h		;212f
	rrca			;2132
	rrca			;2133
	ld c,00dh		;2134
	dec c			;2136
	inc c			;2137
	inc c			;2138
	dec bc			;2139
	dec bc			;213a
	ld a,(bc)			;213b
	ld a,(bc)			;213c
	add hl,bc			;213d
	add hl,bc			;213e
	ex af,af'			;213f
l2140h:
	ex af,af'			;2140
	rlca			;2141
	rlca			;2142
	ld b,006h		;2143
	ld b,005h		;2145
l2147h:
	dec b			;2147
	dec b			;2148
	inc b			;2149
	inc b			;214a
	inc b			;214b
	inc bc			;214c
	inc bc			;214d
	inc bc			;214e
	ld (bc),a			;214f
	ld (bc),a			;2150
	ld (bc),a			;2151
	ld (bc),a			;2152
	ld bc,l0101h		;2153
	ld bc,l0101h		;2156
	nop			;2159
	nop			;215a
	nop			;215b
	nop			;215c
	nop			;215d
	nop			;215e
	nop			;215f
	nop			;2160
	nop			;2161
	nop			;2162
	nop			;2163
	nop			;2164
	nop			;2165
l2166h:
	ld e,e			;2166
	ld d,l			;2167
	ld d,b			;2168
	ld c,h			;2169
	ld c,c			;216a
	ld b,l			;216b
	ld b,e			;216c
	ld b,b			;216d
	dec a			;216e
	dec sp			;216f
	add hl,sp			;2170
	scf			;2171
	dec (hl)			;2172
	inc sp			;2173
	ld sp,l2e30h		;2174
	inc l			;2177
	dec hl			;2178
	add hl,hl			;2179
	jr z,l21a3h		;217a
	dec h			;217c
	inc h			;217d
	inc hl			;217e
	ld (l1f20h),hl		;217f
	ld e,01dh		;2182
	inc e			;2184
	dec de			;2185
l2186h:
	ld a,(de)			;2186
	add hl,de			;2187
	jr l21a1h		;2188
	ld d,016h		;218a
	dec d			;218c
	inc d			;218d
	inc de			;218e
	ld (de),a			;218f
	ld (de),a			;2190
	ld de,l0f0eh+2		;2191
	rrca			;2194
	ld c,00eh		;2195
	dec c			;2197
	inc c			;2198
	inc c			;2199
	dec bc			;219a
	dec bc			;219b
	ld a,(bc)			;219c
	ld a,(bc)			;219d
	add hl,bc			;219e
	add hl,bc			;219f
	ex af,af'			;21a0
l21a1h:
	ex af,af'			;21a1
	rlca			;21a2
l21a3h:
	rlca			;21a3
	ld b,006h		;21a4
	dec b			;21a6
	dec b			;21a7
	dec b			;21a8
	inc b			;21a9
	inc b			;21aa
	inc b			;21ab
	inc bc			;21ac
	inc bc			;21ad
	inc bc			;21ae
	inc bc			;21af
	ld (bc),a			;21b0
	ld (bc),a			;21b1
	ld (bc),a			;21b2
	ld (bc),a			;21b3
	ld bc,l0101h		;21b4
	ld bc,00001h		;21b7
	nop			;21ba
	nop			;21bb
	nop			;21bc
	nop			;21bd
	nop			;21be
	nop			;21bf
	nop			;21c0
	nop			;21c1
	nop			;21c2
	nop			;21c3
	nop			;21c4
	nop			;21c5
	ld e,a			;21c6
	ld e,b			;21c7
	ld d,e			;21c8
	ld c,a			;21c9
	ld c,e			;21ca
	ld c,b			;21cb
	ld b,l			;21cc
	ld b,d			;21cd
	ld b,b			;21ce
	dec a			;21cf
	dec sp			;21d0
	add hl,sp			;21d1
	scf			;21d2
	dec (hl)			;21d3
	inc sp			;21d4
	ld sp,l2e30h		;21d5
	dec l			;21d8
	dec hl			;21d9
	ld hl,(l2728h)		;21da
	dec h			;21dd
	inc h			;21de
	inc hl			;21df
	ld (l1f20h),hl		;21e0
	ld e,01dh		;21e3
	inc e			;21e5
	dec de			;21e6
l21e7h:
	ld a,(de)			;21e7
	add hl,de			;21e8
	jr l2202h		;21e9
	ld d,016h		;21eb
	dec d			;21ed
	inc d			;21ee
	inc de			;21ef
	ld (de),a			;21f0
	ld (de),a			;21f1
	ld de,l0f0eh+2		;21f2
	rrca			;21f5
	ld c,00dh		;21f6
	dec c			;21f8
	inc c			;21f9
	inc c			;21fa
	dec bc			;21fb
	ld a,(bc)			;21fc
	ld a,(bc)			;21fd
	add hl,bc			;21fe
l21ffh:
	add hl,bc			;21ff
	ex af,af'			;2200
	ex af,af'			;2201
l2202h:
	rlca			;2202
sub_2203h:
	rlca			;2203
	rlca			;2204
	ld b,006h		;2205
	dec b			;2207
	dec b			;2208
	dec b			;2209
	inc b			;220a
	inc b			;220b
	inc b			;220c
	inc bc			;220d
	inc bc			;220e
	inc bc			;220f
	ld (bc),a			;2210
	ld (bc),a			;2211
	ld (bc),a			;2212
	ld (bc),a			;2213
	ld bc,l0101h		;2214
	ld bc,l0101h		;2217
	nop			;221a
	nop			;221b
	nop			;221c
	nop			;221d
	nop			;221e
	nop			;221f
	nop			;2220
l2221h:
	nop			;2221
l2222h:
	nop			;2222
	nop			;2223
	nop			;2224
	nop			;2225
	ld h,e			;2226
	ld e,h			;2227
	ld d,a			;2228
	ld d,e			;2229
	ld c,a			;222a
	ld c,e			;222b
	ld c,b			;222c
	ld b,l			;222d
	ld b,e			;222e
	ld b,b			;222f
	ld a,03ch		;2230
	add hl,sp			;2232
	scf			;2233
	ld (hl),034h		;2234
	ld (l2f30h),a		;2236
	dec l			;2239
	dec hl			;223a
	ld hl,(l2728h+1)		;223b
	ld h,024h		;223e
	inc hl			;2240
	ld (l2021h),hl		;2241
	ld e,01dh		;2244
l2246h:
	inc e			;2246
	dec de			;2247
	ld a,(de)			;2248
	add hl,de			;2249
	jr l2263h		;224a
	rla			;224c
	ld d,015h		;224d
	inc d			;224f
	inc de			;2250
	ld (de),a			;2251
	ld (de),a			;2252
	ld de,l0f0eh+2		;2253
	rrca			;2256
	ld c,00dh		;2257
	dec c			;2259
	inc c			;225a
	inc c			;225b
	dec bc			;225c
	ld a,(bc)			;225d
	ld a,(bc)			;225e
	add hl,bc			;225f
	add hl,bc			;2260
	ex af,af'			;2261
	ex af,af'			;2262
l2263h:
	rlca			;2263
	rlca			;2264
	ld b,006h		;2265
	ld b,005h		;2267
	dec b			;2269
	inc b			;226a
	inc b			;226b
	inc b			;226c
	inc bc			;226d
	inc bc			;226e
	inc bc			;226f
	inc bc			;2270
	ld (bc),a			;2271
	ld (bc),a			;2272
	ld (bc),a			;2273
	ld (bc),a			;2274
	ld bc,l0101h		;2275
	ld bc,00001h		;2278
	nop			;227b
	nop			;227c
	nop			;227d
	nop			;227e
	nop			;227f
	nop			;2280
	nop			;2281
	nop			;2282
	nop			;2283
	nop			;2284
	nop			;2285
	ld h,a			;2286
	ld h,b			;2287
	ld e,e			;2288
	ld d,(hl)			;2289
	ld d,d			;228a
	ld c,a			;228b
	ld c,e			;228c
	ld c,b			;228d
	ld b,(hl)			;228e
	ld b,e			;228f
	ld b,c			;2290
	ld a,03ch		;2291
	ld a,(l3638h)		;2293
	inc (hl)			;2296
	ld (l2f31h),a		;2297
	dec l			;229a
	inc l			;229b
	ld hl,(l2728h+1)		;229c
	ld h,025h		;229f
	inc hl			;22a1
	ld (l2021h),hl		;22a2
	rra			;22a5
l22a6h:
	ld e,01ch		;22a6
	dec de			;22a8
	ld a,(de)			;22a9
	add hl,de			;22aa
	jr l22c5h		;22ab
	rla			;22ad
	ld d,015h		;22ae
	inc d			;22b0
	inc de			;22b1
	ld (de),a			;22b2
	ld (de),a			;22b3
	ld de,l0f0eh+2		;22b4
	rrca			;22b7
	ld c,00dh		;22b8
	dec c			;22ba
	inc c			;22bb
	dec bc			;22bc
	dec bc			;22bd
	ld a,(bc)			;22be
	ld a,(bc)			;22bf
	add hl,bc			;22c0
	add hl,bc			;22c1
	ex af,af'			;22c2
	ex af,af'			;22c3
	rlca			;22c4
l22c5h:
	rlca			;22c5
	ld b,006h		;22c6
	dec b			;22c8
	dec b			;22c9
	dec b			;22ca
	inc b			;22cb
	inc b			;22cc
	inc b			;22cd
	inc bc			;22ce
	inc bc			;22cf
	inc bc			;22d0
	ld (bc),a			;22d1
	ld (bc),a			;22d2
	ld (bc),a			;22d3
	ld (bc),a			;22d4
	ld bc,l0101h		;22d5
	ld bc,00001h		;22d8
	nop			;22db
	nop			;22dc
	nop			;22dd
	nop			;22de
	nop			;22df
	nop			;22e0
	nop			;22e1
	nop			;22e2
	nop			;22e3
	nop			;22e4
	nop			;22e5
	ld l,e			;22e6
	ld h,h			;22e7
	ld e,(hl)			;22e8
	ld e,d			;22e9
	ld d,(hl)			;22ea
	ld d,d			;22eb
	ld c,a			;22ec
	ld c,e			;22ed
	ld c,b			;22ee
	ld b,(hl)			;22ef
	ld b,e			;22f0
	ld b,c			;22f1
	ld a,03ch		;22f2
	ld a,(l3638h)		;22f4
	inc (hl)			;22f7
	inc sp			;22f8
	ld sp,02e2fh		;22f9
	inc l			;22fc
	dec hl			;22fd
	add hl,hl			;22fe
	jr z,l2327h		;22ff
	dec h			;2301
	inc h			;2302
	ld (l2021h),hl		;2303
	rra			;2306
	ld e,01dh		;2307
	inc e			;2309
	ld a,(de)			;230a
	add hl,de			;230b
	add hl,de			;230c
	jr l2326h		;230d
	ld d,015h		;230f
	inc d			;2311
	inc de			;2312
	ld (de),a			;2313
	ld (de),a			;2314
	ld de,l0f0eh+2		;2315
	rrca			;2318
	ld c,00dh		;2319
	dec c			;231b
	inc c			;231c
	dec bc			;231d
	dec bc			;231e
	ld a,(bc)			;231f
	ld a,(bc)			;2320
	add hl,bc			;2321
l2322h:
	ex af,af'			;2322
l2323h:
	ex af,af'			;2323
	rlca			;2324
	rlca			;2325
l2326h:
	rlca			;2326
l2327h:
	ld b,006h		;2327
	dec b			;2329
	dec b			;232a
	inc b			;232b
	inc b			;232c
	inc b			;232d
	inc bc			;232e
	inc bc			;232f
	inc bc			;2330
	ld (bc),a			;2331
	ld (bc),a			;2332
	ld (bc),a			;2333
	ld (bc),a			;2334
	ld bc,l0101h		;2335
	ld bc,00001h		;2338
	nop			;233b
	nop			;233c
	nop			;233d
	nop			;233e
	nop			;233f
	nop			;2340
	nop			;2341
	nop			;2342
	nop			;2343
	nop			;2344
	nop			;2345
	ld l,a			;2346
	ld h,a			;2347
	ld h,c			;2348
	ld e,l			;2349
	ld e,b			;234a
	ld d,h			;234b
	ld d,c			;234c
	ld c,(hl)			;234d
	ld c,e			;234e
	ld c,b			;234f
	ld b,l			;2350
	ld b,e			;2351
	ld b,b			;2352
	ld a,03ch		;2353
	ld a,(l3638h)		;2355
	inc (hl)			;2358
	ld (l2f31h),a		;2359
	dec l			;235c
	inc l			;235d
	ld hl,(02829h)		;235e
	ld h,025h		;2361
	inc hl			;2363
	ld (l2021h),hl		;2364
	rra			;2367
	ld e,01ch		;2368
	dec de			;236a
	ld a,(de)			;236b
	add hl,de			;236c
	jr l2386h		;236d
	ld d,016h		;236f
	dec d			;2371
	inc d			;2372
	inc de			;2373
	ld (de),a			;2374
	ld de,l1011h		;2375
	rrca			;2378
	ld c,00eh		;2379
	dec c			;237b
	inc c			;237c
	inc c			;237d
	dec bc			;237e
	ld a,(bc)			;237f
	ld a,(bc)			;2380
	add hl,bc			;2381
	add hl,bc			;2382
	ex af,af'			;2383
	ex af,af'			;2384
	rlca			;2385
l2386h:
	rlca			;2386
	ld b,006h		;2387
	dec b			;2389
	dec b			;238a
	dec b			;238b
	inc b			;238c
	inc b			;238d
	inc b			;238e
	inc bc			;238f
l2390h:
	inc bc			;2390
	inc bc			;2391
	ld (bc),a			;2392
	ld (bc),a			;2393
	ld (bc),a			;2394
	ld (bc),a			;2395
	ld bc,l0101h		;2396
	ld bc,00000h		;2399
	nop			;239c
	nop			;239d
	nop			;239e
	nop			;239f
	nop			;23a0
	nop			;23a1
	nop			;23a2
	nop			;23a3
	nop			;23a4
	nop			;23a5
	ld (hl),e			;23a6
	ld l,e			;23a7
	ld h,l			;23a8
	ld h,b			;23a9
	ld e,h			;23aa
	ld e,b			;23ab
	ld d,h			;23ac
	ld d,c			;23ad
	ld c,(hl)			;23ae
	ld c,e			;23af
	ld c,b			;23b0
	ld b,l			;23b1
	ld b,e			;23b2
	ld b,c			;23b3
	ld a,03ch		;23b4
	ld a,(l3638h)		;23b6
	inc (hl)			;23b9
	inc sp			;23ba
	ld sp,02e2fh		;23bb
	inc l			;23be
	dec hl			;23bf
	add hl,hl			;23c0
	jr z,$+38		;23c1
	dec h			;23c3
	inc h			;23c4
	ld (l2021h),hl		;23c5
	rra			;23c8
	ld e,01ch		;23c9
	dec de			;23cb
	ld a,(de)			;23cc
	add hl,de			;23cd
	jr l23e7h		;23ce
	ld d,015h		;23d0
	dec d			;23d2
	inc d			;23d3
	inc de			;23d4
	ld (de),a			;23d5
	ld de,01010h		;23d6
	rrca			;23d9
	ld c,00dh		;23da
	dec c			;23dc
	inc c			;23dd
	inc c			;23de
	dec bc			;23df
	ld a,(bc)			;23e0
	ld a,(bc)			;23e1
	add hl,bc			;23e2
	add hl,bc			;23e3
	ex af,af'			;23e4
	ex af,af'			;23e5
	rlca			;23e6
l23e7h:
	rlca			;23e7
	ld b,006h		;23e8
	dec b			;23ea
	dec b			;23eb
	inc b			;23ec
	inc b			;23ed
	inc b			;23ee
	inc bc			;23ef
	inc bc			;23f0
	inc bc			;23f1
	ld (bc),a			;23f2
	ld (bc),a			;23f3
	ld (bc),a			;23f4
	ld (bc),a			;23f5
	ld bc,l0101h		;23f6
	ld bc,00001h		;23f9
	nop			;23fc
	nop			;23fd
	nop			;23fe
	nop			;23ff
	nop			;2400
l2401h:
	nop			;2401
	nop			;2402
	nop			;2403
	nop			;2404
	nop			;2405
	ld (hl),a			;2406
	ld l,a			;2407
	ld l,c			;2408
	ld h,h			;2409
	ld e,a			;240a
	ld e,e			;240b
	ld d,a			;240c
	ld d,h			;240d
	ld d,c			;240e
	ld c,(hl)			;240f
	ld c,e			;2410
	ld c,b			;2411
	ld b,l			;2412
	ld b,e			;2413
	ld b,c			;2414
	ld a,03ch		;2415
	ld a,(l3638h)		;2417
	dec (hl)			;241a
	inc sp			;241b
	ld sp,02e2fh		;241c
	inc l			;241f
	dec hl			;2420
	add hl,hl			;2421
	jr z,l244ah		;2422
	dec h			;2424
	inc h			;2425
	ld (l2021h),hl		;2426
	rra			;2429
	dec e			;242a
	inc e			;242b
	dec de			;242c
	ld a,(de)			;242d
	add hl,de			;242e
	jr l2448h		;242f
	ld d,015h		;2431
	inc d			;2433
	inc d			;2434
	inc de			;2435
	ld (de),a			;2436
	ld de,l0f0eh+2		;2437
	rrca			;243a
	ld c,00dh		;243b
	dec c			;243d
	inc c			;243e
	dec bc			;243f
	dec bc			;2440
	ld a,(bc)			;2441
	add hl,bc			;2442
	add hl,bc			;2443
	ex af,af'			;2444
	ex af,af'			;2445
sub_2446h:
	rlca			;2446
	rlca			;2447
l2448h:
	ld b,006h		;2448
l244ah:
	dec b			;244a
	dec b			;244b
	dec b			;244c
	inc b			;244d
	inc b			;244e
	inc bc			;244f
	inc bc			;2450
	inc bc			;2451
	inc bc			;2452
	ld (bc),a			;2453
	ld (bc),a			;2454
	ld (bc),a			;2455
	ld bc,l0101h		;2456
	ld bc,00001h		;2459
	nop			;245c
	nop			;245d
	nop			;245e
	nop			;245f
	nop			;2460
	nop			;2461
	nop			;2462
	nop			;2463
	nop			;2464
	nop			;2465
	ld a,e			;2466
	ld (hl),d			;2467
	ld l,h			;2468
	ld h,a			;2469
	ld h,d			;246a
	ld e,(hl)			;246b
	ld e,d			;246c
	ld d,(hl)			;246d
	ld d,e			;246e
	ld d,b			;246f
	ld c,l			;2470
	ld c,d			;2471
	ld b,a			;2472
	ld b,l			;2473
	ld b,e			;2474
sub_2475h:
	ld b,b			;2475
	ld a,03ch		;2476
	ld a,(l3638h)		;2478
	inc (hl)			;247b
	ld (l2f31h),a		;247c
	dec l			;247f
	inc l			;2480
	ld hl,(l2728h+1)		;2481
	ld h,025h		;2484
	inc hl			;2486
	ld (l2021h),hl		;2487
	ld e,01dh		;248a
	inc e			;248c
	dec de			;248d
	ld a,(de)			;248e
	add hl,de			;248f
	jr l24a9h		;2490
	ld d,015h		;2492
	inc d			;2494
	inc de			;2495
	ld (de),a			;2496
	ld (de),a			;2497
	ld de,l0f0eh+2		;2498
	ld c,00eh		;249b
	dec c			;249d
	inc c			;249e
	inc c			;249f
	dec bc			;24a0
	ld a,(bc)			;24a1
	ld a,(bc)			;24a2
	add hl,bc			;24a3
	add hl,bc			;24a4
	ex af,af'			;24a5
l24a6h:
	ex af,af'			;24a6
	rlca			;24a7
	rlca			;24a8
l24a9h:
	ld b,006h		;24a9
	dec b			;24ab
	dec b			;24ac
	inc b			;24ad
	inc b			;24ae
	inc b			;24af
	inc bc			;24b0
	inc bc			;24b1
	inc bc			;24b2
	ld (bc),a			;24b3
	ld (bc),a			;24b4
	ld (bc),a			;24b5
	ld bc,l0101h		;24b6
	ld bc,00001h		;24b9
	nop			;24bc
	nop			;24bd
	nop			;24be
sub_24bfh:
	nop			;24bf
	nop			;24c0
	nop			;24c1
	nop			;24c2
	nop			;24c3
	nop			;24c4
	nop			;24c5
	nop			;24c6
	dec bc			;24c7
	rrca			;24c8
	inc de			;24c9
	ld d,018h		;24ca
	ld a,(de)			;24cc
	inc e			;24cd
	ld e,020h		;24ce
	ld (l2523h),hl		;24d0
	ld h,028h		;24d3
	add hl,hl			;24d5
	dec hl			;24d6
	inc l			;24d7
	dec l			;24d8
	ld l,02fh		;24d9
	jr nc,l250eh		;24db
	ld (l3433h),a		;24dd
	dec (hl)			;24e0
	ld (hl),037h		;24e1
	jr c,l251eh		;24e3
	ld a,(03b3ah)		;24e5
	inc a			;24e8
	dec a			;24e9
	ld a,03eh		;24ea
	ccf			;24ec
	ld b,b			;24ed
	ld b,b			;24ee
	ld b,c			;24ef
sub_24f0h:
	ld b,d			;24f0
	ld b,d			;24f1
	ld b,e			;24f2
	ld b,h			;24f3
	ld b,h			;24f4
	ld b,l			;24f5
	ld b,l			;24f6
	ld b,(hl)			;24f7
	ld b,a			;24f8
	ld b,a			;24f9
	ld c,b			;24fa
	ld c,b			;24fb
sub_24fch:
	ld c,c			;24fc
	ld c,c			;24fd
	ld c,d			;24fe
	ld c,d			;24ff
	ld c,e			;2500
	ld c,e			;2501
	ld c,h			;2502
	ld c,h			;2503
	ld c,l			;2504
	ld c,l			;2505
	ld c,(hl)			;2506
	ld c,(hl)			;2507
	ld c,a			;2508
sub_2509h:
	ld c,a			;2509
	ld c,a			;250a
	ld d,b			;250b
	ld d,b			;250c
	ld d,c			;250d
l250eh:
	ld d,c			;250e
	ld d,d			;250f
	ld d,d			;2510
	ld d,d			;2511
	ld d,e			;2512
	ld d,e			;2513
	ld d,e			;2514
	ld d,h			;2515
	ld d,h			;2516
	ld d,h			;2517
	ld d,l			;2518
	ld d,l			;2519
	ld d,l			;251a
	ld d,(hl)			;251b
	ld d,(hl)			;251c
	ld d,(hl)			;251d
l251eh:
	ld d,a			;251e
	ld d,a			;251f
	ld d,a			;2520
	ld e,b			;2521
	ld e,b			;2522
l2523h:
	ld e,b			;2523
	ld e,b			;2524
	ld e,c			;2525
	ld e,c			;2526
	ld e,c			;2527
	ld e,c			;2528
l2529h:
	ld e,d			;2529
	ld e,d			;252a
	ld e,d			;252b
	ld e,d			;252c
	ld e,e			;252d
l252eh:
	ld e,e			;252e
	ld e,e			;252f
	ld e,e			;2530
	ld e,e			;2531
	ld e,h			;2532
	ld e,h			;2533
	ld e,h			;2534
l2535h:
	ld e,h			;2535
	ld e,h			;2536
	ld e,l			;2537
	ld e,l			;2538
	ld e,l			;2539
	ld e,l			;253a
	ld e,l			;253b
	ld e,l			;253c
	ld e,(hl)			;253d
	ld e,(hl)			;253e
	ld e,(hl)			;253f
	ld e,(hl)			;2540
	ld e,(hl)			;2541
l2542h:
	ld e,(hl)			;2542
	ld e,(hl)			;2543
	ld e,a			;2544
	ld e,a			;2545
	ld hl,l784eh		;2546
	call 00018h		;2549
	ld hl,(0c31ah)		;254c
	ld de,00064h		;254f
	ld b,0ffh		;2552
	and a			;2554
l2555h:
	sbc hl,de		;2555
	inc b			;2557
l2558h:
	jr nc,l2555h		;2558
	call sub_24f0h		;255a
	ld de,00064h		;255d
	add hl,de			;2560
	ld e,00ah		;2561
	ld b,0ffh		;2563
	ld a,l			;2565
l2566h:
	sub e			;2566
	inc b			;2567
	jr nc,l2566h		;2568
	push af			;256a
	call sub_24f0h		;256b
	pop af			;256e
	add a,00ah		;256f
	ld b,a			;2571
	jp sub_24f0h		;2572
	ld hl,0c00dh		;2575
	ld a,(0c000h)		;2578
	bit 5,a		;257b
	jr nz,l25a6h		;257d
	dec hl			;257f
	ld a,(0c049h)		;2580
	or a			;2583
	ret nz			;2584
	dec (hl)			;2585
	ret nz			;2586
	ld (hl),03ch		;2587
	inc hl			;2589
	dec (hl)			;258a
	jp p,l24a6h		;258b
	inc (hl)			;258e
	ld hl,(0c31ah)		;258f
	ld a,l			;2592
	or h			;2593
	ret nz			;2594
	ld a,(0c300h)		;2595
	cp 001h		;2598
	ret nz			;259a
	ld a,(0c301h)		;259b
	or a			;259e
	ret p			;259f
	ld hl,0c000h		;25a0
	set 6,(hl)		;25a3
	ret			;25a5
l25a6h:
	ld a,(hl)			;25a6
	ld b,0ffh		;25a7
	ld e,00ah		;25a9
l25abh:
	sub e			;25ab
	inc b			;25ac
	jr nc,l25abh		;25ad
	ld de,l381ch		;25af
	call sub_24bfh		;25b2
	add a,00ah		;25b5
	ld b,a			;25b7
	ld de,l381eh		;25b8
	call sub_24bfh		;25bb
	ret			;25be
	push hl			;25bf
	push af			;25c0
	sla b		;25c1
	ld h,000h		;25c3
	ld l,b			;25c5
	ld bc,024dch		;25c6
	add hl,bc			;25c9
	ld a,(hl)			;25ca
	inc hl			;25cb
	ld b,(hl)			;25cc
	call sub_24fch		;25cd
	ld hl,00040h		;25d0
	add hl,de			;25d3
	ex de,hl			;25d4
	ld a,b			;25d5
	call sub_24fch		;25d6
	pop af			;25d9
	pop hl			;25da
	ret			;25db
	ld a,03fh		;25dc
	ld h,b			;25de
	ld h,c			;25df
	ld h,d			;25e0
	ld h,e			;25e1
	ld h,d			;25e2
	ld h,h			;25e3
	ld h,l			;25e4
	ld h,c			;25e5
	ld h,(hl)			;25e6
	ld h,h			;25e7
	ld h,(hl)			;25e8
	ccf			;25e9
	ld h,a			;25ea
	ld h,c			;25eb
	ld l,b			;25ec
	ccf			;25ed
	ld l,b			;25ee
	ld h,h			;25ef
	ld a,b			;25f0
	add a,030h		;25f1
	out (0beh),a		;25f3
	push af			;25f5
	pop af			;25f6
	ld a,009h		;25f7
	out (0beh),a		;25f9
	ret			;25fb
	push af			;25fc
	ld a,e			;25fd
	out (0bfh),a		;25fe
l2600h:
	ld a,d			;2600
	or 040h		;2601
	out (0bfh),a		;2603
	pop af			;2605
	out (0beh),a		;2606
	ret			;2608
	ld a,(0c045h)		;2609
	or a			;260c
	ret nz			;260d
	ld ix,0c300h		;260e
	ld b,008h		;2612
l2614h:
	push bc			;2614
l2615h:
	ld a,(ix+000h)		;2615
	or a			;2618
	jr z,l262eh		;2619
	ld hl,l252eh		;261b
	push hl			;261e
	add a,a			;261f
	and 01eh		;2620
	ld d,000h		;2622
	ld e,a			;2624
	ld hl,025aeh		;2625
l2628h:
	add hl,de			;2628
	ld e,(hl)			;2629
	inc hl			;262a
	ld d,(hl)			;262b
	ex de,hl			;262c
	jp (hl)			;262d
l262eh:
	ld de,00020h		;262e
	add ix,de		;2631
	pop bc			;2633
	djnz l2614h		;2634
	ld iy,0c442h		;2636
	ld ix,0c300h		;263a
	ld b,008h		;263e
l2640h:
	bit 7,(ix+001h)		;2640
	call nz,02564h		;2644
	ld de,00020h		;2647
	add ix,de		;264a
	djnz l2640h		;264c
	ld (iy+000h),0d0h		;264e
	ld a,0ffh		;2652
	ld (0c045h),a		;2654
	ret			;2657
	pop af			;2658
	ld (ix+000h),000h		;2659
	ld (ix+001h),000h		;265d
	jp l252eh		;2661
	push bc			;2664
	ld a,(ix+00ah)		;2665
	add a,a			;2668
	ld hl,025c7h		;2669
	ld e,a			;266c
	ld d,000h		;266d
	add hl,de			;266f
	ld e,(hl)			;2670
	inc hl			;2671
	ld h,(hl)			;2672
	ld l,e			;2673
	ld e,(ix+002h)		;2674
	ld b,(ix+007h)		;2677
	ld c,(ix+006h)		;267a
l267dh:
	ld a,(hl)			;267d
	cp 080h		;267e
	jr z,l26aeh		;2680
	add a,e			;2682
	cp 0c8h		;2683
	jr nc,l26aeh		;2685
	ld (iy+000h),a		;2687
	inc hl			;268a
	ld a,(hl)			;268b
	add a,c			;268c
	ld d,a			;268d
	ld a,000h		;268e
	bit 7,(hl)		;2690
	jr z,l2695h		;2692
	dec a			;2694
l2695h:
	adc a,b			;2695
	or a			;2696
	jr nz,l26aah		;2697
	inc iy		;2699
	ld (iy+000h),d		;269b
	inc iy		;269e
	inc hl			;26a0
	ld a,(hl)			;26a1
	ld (iy+000h),a		;26a2
	inc iy		;26a5
	inc hl			;26a7
	jr l267dh		;26a8
l26aah:
	inc hl			;26aa
	inc hl			;26ab
	jr l267dh		;26ac
l26aeh:
	pop bc			;26ae
	ret			;26af
	ld h,00ah		;26b0
	ret nc			;26b2
	ld hl,(04d51h)		;26b3
	ld d,c			;26b6
l26b7h:
	ld c,l			;26b7
	ld d,c			;26b8
	ld c,l			;26b9
	ld d,c			;26ba
	ld c,l			;26bb
	ld d,c			;26bc
	ld c,l			;26bd
	ld d,c			;26be
	ld c,l			;26bf
l26c0h:
	ld d,c			;26c0
	ld c,l			;26c1
	ld d,c			;26c2
	ld c,l			;26c3
	cp a			;26c4
	ld c,(hl)			;26c5
	ret			;26c6
	ld c,a			;26c7
	daa			;26c8
	ld (hl),c			;26c9
	daa			;26ca
	adc a,l			;26cb
l26cch:
	daa			;26cc
	and (hl)			;26cd
	daa			;26ce
	cp c			;26cf
	daa			;26d0
	jp nc,0ee27h		;26d1
	daa			;26d4
	sbc a,l			;26d5
	ld h,0a1h		;26d6
	ld h,0adh		;26d8
	ld h,0bfh		;26da
	ld h,0d7h		;26dc
	ld h,004h		;26de
	daa			;26e0
	sbc a,l			;26e1
	ld h,0a5h		;26e2
	ld h,0b4h		;26e4
	ld h,0c6h		;26e6
	ld h,0e7h		;26e8
	ld h,020h		;26ea
	daa			;26ec
	sbc a,l			;26ed
	ld h,0a9h		;26ee
	ld h,0b8h		;26f0
l26f2h:
	ld h,0d0h		;26f2
	ld h,0f4h		;26f4
	ld h,033h		;26f6
	daa			;26f8
	djnz $+40		;26f9
	ld de,01528h		;26fb
l26feh:
	jr z,$+25		;26fe
l2700h:
	jr z,$+29		;2700
	jr z,l2728h		;2702
	jr z,l2716h		;2704
	jr z,$+43		;2706
	jr z,$+47		;2708
	jr z,$+51		;270a
	jr z,$+55		;270c
	jr z,$+62		;270e
	jr z,l2722h		;2710
	jr z,l2759h		;2712
	jr z,l275fh		;2714
l2716h:
	jr z,l2765h		;2716
	jr z,$+84		;2718
	jr z,l2777h		;271a
l271ch:
	jr z,l272eh		;271c
	jr z,l2782h		;271e
	jr z,l2788h		;2720
l2722h:
	jr z,$+106		;2722
	jr z,l2797h		;2724
	jr z,$+120		;2726
l2728h:
	jr z,l273ah		;2728
	jr z,l27abh		;272a
	jr z,$-125		;272c
l272eh:
	jr z,l26b7h		;272e
	jr z,l26c0h		;2730
	jr z,l26cch		;2732
	jr z,l2746h		;2734
	jr z,$-91		;2736
	jr z,$-87		;2738
l273ah:
	jr z,$-83		;273a
	jr z,l26f2h		;273c
	jr z,l26feh		;273e
	jr z,$-53		;2740
	jr z,$-49		;2742
	jr z,l271ch		;2744
l2746h:
	jr z,l2728h		;2746
	jr z,$-19		;2748
	jr z,l274ch		;274a
l274ch:
	add hl,hl			;274c
	ld d,029h		;274d
	ld a,(de)			;274f
	add hl,hl			;2750
	ld hl,l2b29h		;2751
	add hl,hl			;2754
	jr c,l2780h		;2755
	ld c,e			;2757
	add hl,hl			;2758
l2759h:
	djnz l2783h		;2759
	sra c		;275b
	rst 8			;275d
	add hl,hl			;275e
l275fh:
	out (029h),a		;275f
	rst 10h			;2761
	add hl,hl			;2762
	rst 20h			;2763
	add hl,hl			;2764
l2765h:
	djnz l278fh		;2765
	jp m,0fe29h		;2767
	add hl,hl			;276a
	ld (bc),a			;276b
	ld hl,(02a06h)		;276c
	ld d,02ah		;276f
	djnz l279bh		;2771
	ld h,c			;2773
	add hl,hl			;2774
	ld h,l			;2775
	add hl,hl			;2776
l2777h:
	ld l,c			;2777
	add hl,hl			;2778
	ld (hl),e			;2779
	add hl,hl			;277a
	add a,e			;277b
	add hl,hl			;277c
	djnz $+40		;277d
	sub (hl)			;277f
l2780h:
	add hl,hl			;2780
	sbc a,d			;2781
l2782h:
	add hl,hl			;2782
l2783h:
	sbc a,(hl)			;2783
	add hl,hl			;2784
	xor b			;2785
	add hl,hl			;2786
	cp b			;2787
l2788h:
	add hl,hl			;2788
	add hl,hl			;2789
	ld hl,(02a29h)		;278a
	jr nc,l27b9h		;278d
l278fh:
	ld c,c			;278f
	ld hl,(02a30h)		;2790
	ld c,c			;2793
	ld hl,(l2a62h)		;2794
l2797h:
	sbc a,c			;2797
	ld hl,(02a99h)		;2798
l279bh:
	ld h,d			;279b
	ld hl,(0fcf0h)		;279c
	ld c,080h		;279f
	ret p			;27a1
	jp m,l8060h		;27a2
	ret p			;27a5
	.DB 0fdh,00ch,080h	;illegal sequence		;27a6
	ret p			;27a9
	rst 38h			;27aa
l27abh:
	xor (hl)			;27ab
	add a,b			;27ac
	ret p			;27ad
	pop af			;27ae
	ld e,h			;27af
	ret p			;27b0
	ld sp,hl			;27b1
	ld e,(hl)			;27b2
	add a,b			;27b3
	ret p			;27b4
	call m,sub_800ah		;27b5
	ret p			;27b8
l27b9h:
	rst 38h			;27b9
	or b			;27ba
	ret p			;27bb
	rlca			;27bc
	or d			;27bd
	add a,b			;27be
	xor 0f1h		;27bf
	ld d,(hl)			;27c1
	ret p			;27c2
	ld sp,hl			;27c3
	ld e,b			;27c4
	add a,b			;27c5
	ret pe			;27c6
	ret m			;27c7
	ld e,d			;27c8
	ret pe			;27c9
	nop			;27ca
	or h			;27cb
	ret m			;27cc
	call m,sub_8008h		;27cd
	ret p			;27d0
	rst 38h			;27d1
	or (hl)			;27d2
	xor 007h		;27d3
	cp b			;27d5
	add a,b			;27d6
	ret po			;27d7
	in c,(c)		;27d8
	ret po			;27da
	push af			;27db
	ld c,d			;27dc
	ret p			;27dd
	jp pe,0f04ch		;27de
	jp p,0f04eh		;27e1
	jp m,l8050h		;27e4
	ret po			;27e7
	ret m			;27e8
	ld d,d			;27e9
	ret po			;27ea
	nop			;27eb
	cp h			;27ec
	ret p			;27ed
	ret m			;27ee
	ld d,h			;27ef
	ret p			;27f0
	nop			;27f1
	cp d			;27f2
	add a,b			;27f3
	ret po			;27f4
	inc b			;27f5
	call nz,sub_0ce0h		;27f6
	add a,0f0h		;27f9
	rst 38h			;27fb
	cp (hl)			;27fc
	ret p			;27fd
	rlca			;27fe
	ret nz			;27ff
l2800h:
	ret p			;2800
	rrca			;2801
	jp nz,0d880h		;2802
	di			;2805
	jr c,$-40		;2806
	ex de,hl			;2808
	ld (hl),0d9h		;2809
	ex (sp),hl			;280b
	inc (hl)			;280c
	ret pe			;280d
	rst 28h			;280e
	inc a			;280f
	ret pe			;2810
l2811h:
	rst 30h			;2811
	ld a,0e8h		;2812
	rst 20h			;2814
	ld a,(0fbf7h)		;2815
	ld h,d			;2818
	ret m			;2819
	di			;281a
	ld b,d			;281b
	ret m			;281c
	ex de,hl			;281d
	ld b,b			;281e
	add a,b			;281f
	ret c			;2820
	call p,0d844h		;2821
	call m,0d806h		;2824
	inc b			;2827
	jp z,0f8e8h		;2828
	ld b,(hl)			;282b
	ret pe			;282c
	nop			;282d
	ret z			;282e
	ret m			;282f
	call m,sub_8004h		;2830
	ret c			;2833
	ld b,0d6h		;2834
	ret c			;2836
	ld c,0d8h		;2837
	exx			;2839
	ld d,0dah		;283a
	ret pe			;283c
	ld a,(bc)			;283d
	jp nc,l02e8h		;283e
	ret nc			;2841
	ret pe			;2842
	ld (de),a			;2843
	call nc,0fef7h		;2844
	xor h			;2847
	ret m			;2848
	ld b,0cch		;2849
	ret m			;284b
	ld c,0ceh		;284c
	add a,b			;284e
	rst 10h			;284f
	di			;2850
	ld l,d			;2851
	rst 10h			;2852
	ex de,hl			;2853
	ld l,b			;2854
	ret c			;2855
	ex (sp),hl			;2856
	ld h,(hl)			;2857
	rst 20h			;2858
	rst 28h			;2859
	ld l,(hl)			;285a
	rst 20h			;285b
	rst 30h			;285c
	ld (hl),b			;285d
	rst 20h			;285e
	rst 20h			;285f
	ld l,h			;2860
	ret p			;2861
	xor 0dch		;2862
	ret p			;2864
	or 0deh		;2865
	or 0fbh		;2867
	ld h,d			;2869
	rst 30h			;286a
	di			;286b
	ld (hl),h			;286c
	rst 30h			;286d
	ex de,hl			;286e
	ld (hl),d			;286f
	add a,b			;2870
	ret c			;2871
	di			;2872
	ld l,d			;2873
	ret c			;2874
	ex de,hl			;2875
	ld l,b			;2876
	exx			;2877
	ex (sp),hl			;2878
	ld h,(hl)			;2879
	ret pe			;287a
	rst 28h			;287b
	ld l,(hl)			;287c
	ret pe			;287d
	rst 30h			;287e
	ld (hl),b			;287f
	ret pe			;2880
	rst 20h			;2881
	ld l,h			;2882
	rst 30h			;2883
	ei			;2884
	ld h,d			;2885
	ret m			;2886
	di			;2887
	ld (hl),h			;2888
	ret m			;2889
	ex de,hl			;288a
	ld (hl),d			;288b
	add a,b			;288c
	ret c			;288d
	call pe,0d876h		;288e
	call p,0d878h		;2891
	call m,0e87ah		;2894
	call m,0e880h		;2897
	call p,0e87eh		;289a
	call pe,0f87ch		;289d
	call m,0f864h		;28a0
	call p,sub_8082h		;28a3
	ret c			;28a6
	call p,0d884h		;28a7
	call m,0d802h		;28aa
	inc b			;28ad
	adc a,d			;28ae
	ret pe			;28af
	ret m			;28b0
	add a,(hl)			;28b1
	ret pe			;28b2
	nop			;28b3
	adc a,b			;28b4
	ret m			;28b5
	call m,sub_8004h		;28b6
	ret c			;28b9
	dec c			;28ba
	sbc a,b			;28bb
	ret c			;28bc
	dec b			;28bd
	sub (hl)			;28be
	ret c			;28bf
	.DB 0fdh,094h	;sub iyh		;28c0
	ret pe			;28c2
	adc a,(iy-018h)		;28c3
	dec b			;28c6
	sub b			;28c7
	ret pe			;28c8
	dec c			;28c9
	sub d			;28ca
	ret m			;28cb
	.DB 0fdh,0aah,0f8h	;illegal sequence		;28cc
	dec b			;28cf
	adc a,h			;28d0
	add a,b			;28d1
	ret c			;28d2
	ld b,0a4h		;28d3
	ret c			;28d5
	ld c,0a6h		;28d6
	exx			;28d8
	ld d,0a8h		;28d9
	ret pe			;28db
	ld a,(bc)			;28dc
	and b			;28dd
	ret pe			;28de
	ld (bc),a			;28df
	sbc a,(hl)			;28e0
	ret pe			;28e1
	ld (de),a			;28e2
	and d			;28e3
	rst 30h			;28e4
	cp 0ach		;28e5
	ret m			;28e7
	ld b,09ah		;28e8
	ret m			;28ea
	ld c,09ch		;28eb
	add a,b			;28ed
	rst 10h			;28ee
	ld b,0a4h		;28ef
	rst 10h			;28f1
	ld c,0a6h		;28f2
l28f4h:
	ret c			;28f4
	ld d,0a8h		;28f5
	rst 20h			;28f7
	ld a,(bc)			;28f8
	and b			;28f9
	rst 20h			;28fa
	ld (bc),a			;28fb
	sbc a,(hl)			;28fc
	rst 20h			;28fd
	ld (de),a			;28fe
	and d			;28ff
	ret p			;2900
	inc bc			;2901
	jr nc,l28f4h		;2902
	dec bc			;2904
	ld (0fef6h),a		;2905
	xor h			;2908
	rst 30h			;2909
	ld b,09ah		;290a
	rst 30h			;290c
	ld c,09ch		;290d
	add a,b			;290f
	add a,b			;2910
	ret p			;2911
	cp 00eh		;2912
	add a,b			;2914
	ret p			;2915
	cp 0eah		;2916
	add a,b			;2918
	ret p			;2919
	rst 38h			;291a
	call pe,0e080h		;291b
	nop			;291e
	ret p			;291f
	ret p			;2920
	nop			;2921
	xor 080h		;2922
	ret po			;2924
	ld bc,0f0f4h		;2925
	ld bc,l80f2h		;2928
	ret p			;292b
	jp m,l800eh		;292c
	ret p			;292f
	jp m,l80eah		;2930
	ret p			;2933
	ld sp,hl			;2934
	call pe,0e080h		;2935
	ret m			;2938
	ret p			;2939
	ret p			;293a
	ret m			;293b
	xor 080h		;293c
	ret po			;293e
	rst 30h			;293f
	call p,0f7f0h		;2940
	jp p,0f080h		;2943
	rst 38h			;2946
	jp pe,0f080h		;2947
	nop			;294a
	call pe,0f080h		;294b
	rst 38h			;294e
	ret p			;294f
	ret p			;2950
	rlca			;2951
	xor 080h		;2952
	ret p			;2954
	nop			;2955
	call p,sub_08f0h		;2956
	jp p,0f080h		;2959
	ld bc,0f0f8h		;295c
	add hl,bc			;295f
	or 080h		;2960
	ret p			;2962
	ld sp,hl			;2963
	jp pe,0f080h		;2964
	ret m			;2967
	call pe,0f080h		;2968
	jp m,0f0eeh		;296b
	jp p,l80f0h		;296e
	ret p			;2971
	ret m			;2972
	jp p,0f0f0h		;2973
	call p,0f080h		;2976
	rst 30h			;2979
	or 0f0h		;297a
	rst 28h			;297c
	ret m			;297d
	add a,b			;297e
	ret p			;297f
	rst 38h			;2980
l2981h:
	jp pe,0f080h		;2981
	nop			;2984
	call pe,0f080h		;2985
	rst 38h			;2988
	ret p			;2989
	ret p			;298a
	rlca			;298b
	xor 080h		;298c
	ret pe			;298e
	nop			;298f
	call p,l08e8h		;2990
	jp p,l04f8h		;2993
	or 080h		;2996
	ret po			;2998
	ex af,af'			;2999
	ret m			;299a
	ret pe			;299b
	nop			;299c
	call m,010e8h		;299d
	cp 0f0h		;29a0
	ex af,af'			;29a2
	jp m,0f080h		;29a3
	jp m,l80eah		;29a6
	ret p			;29a9
	ret m			;29aa
	call pe,0f080h		;29ab
	ld sp,hl			;29ae
	xor 0f0h		;29af
	pop af			;29b1
	ret p			;29b2
	add a,b			;29b3
	ret pe			;29b4
	rst 30h			;29b5
	jp p,0efe8h		;29b6
	call p,0f3f8h		;29b9
	or 080h		;29bc
	ret po			;29be
	rst 28h			;29bf
	ret m			;29c0
	ret pe			;29c1
	rst 30h			;29c2
	cp 0e8h		;29c3
	rst 20h			;29c5
	call m,0eff0h		;29c6
	jp m,0f080h		;29c9
	ei			;29cc
	call pe,0e880h		;29cd
	ei			;29d0
	call pe,0fef8h		;29d1
	xor 080h		;29d4
	ret c			;29d6
	call m,0e8f2h		;29d7
	rst 38h			;29da
	call p,0fff0h		;29db
	call p,0c880h		;29de
	call m,0d8f2h		;29e1
	rst 38h			;29e4
	call p,0ffe0h		;29e5
	call p,0fff0h		;29e8
	call p,0bc80h		;29eb
	push af			;29ee
	jp m,0fdbch		;29ef
	call m,0ffcch		;29f2
	cp 0dch		;29f5
	rst 38h			;29f7
	cp 0e8h		;29f8
	rst 38h			;29fa
	cp 0f0h		;29fb
	rst 38h			;29fd
	cp 080h		;29fe
l2a00h:
	xor h			;2a00
	push af			;2a01
	jp m,0fdach		;2a02
	call m,0ffbch		;2a05
	cp 0cch		;2a08
	rst 38h			;2a0a
	cp 0dch		;2a0b
	rst 38h			;2a0d
	cp 0e8h		;2a0e
	rst 38h			;2a10
	cp 0f0h		;2a11
	rst 38h			;2a13
	cp 080h		;2a14
	ret p			;2a16
	.DB 0fdh,0eah,080h	;illegal sequence		;2a17
	ret pe			;2a1a
	.DB 0fdh,0eah,0f8h	;illegal sequence		;2a1b
	jp m,l80eeh		;2a1e
	ret c			;2a21
	call m,0e8f0h		;2a22
	jp m,0f0f4h		;2a25
	jp m,l80f4h		;2a28
	ret z			;2a2b
	call m,0d8f0h		;2a2c
	jp m,0e0f4h		;2a2f
	jp m,0f0f4h		;2a32
	jp m,l80f4h		;2a35
	cp h			;2a38
	inc bc			;2a39
	ret m			;2a3a
	cp h			;2a3b
	ei			;2a3c
	or 0cch		;2a3d
	ld sp,hl			;2a3f
	cp 0dch		;2a40
	ld sp,hl			;2a42
	cp 0e8h		;2a43
	ld sp,hl			;2a45
	cp 0f0h		;2a46
	ld sp,hl			;2a48
	cp 080h		;2a49
	xor h			;2a4b
	inc bc			;2a4c
	ret m			;2a4d
	xor h			;2a4e
	ei			;2a4f
	or 0bch		;2a50
	ld sp,hl			;2a52
	cp 0cch		;2a53
	ld sp,hl			;2a55
	cp 0dch		;2a56
	ld sp,hl			;2a58
	cp 0e8h		;2a59
	ld sp,hl			;2a5b
	cp 0f0h		;2a5c
	ld sp,hl			;2a5e
	cp 080h		;2a5f
	ret p			;2a61
l2a62h:
	cp 01ah		;2a62
	add a,b			;2a64
	ret p			;2a65
	nop			;2a66
	ld l,080h		;2a67
l2a69h:
	call p,sub_2c02h		;2a69
	ret p			;2a6c
l2a6dh:
	nop			;2a6d
	ld d,0f0h		;2a6e
	dec b			;2a70
	ld d,080h		;2a71
	pop af			;2a73
	dec b			;2a74
	ld hl,(l01efh)		;2a75
l2a78h:
	jr l2a69h		;2a78
	add hl,bc			;2a7a
	jr l2a6dh		;2a7b
	cp 00eh		;2a7d
	ret p			;2a7f
	inc c			;2a80
	ld c,080h		;2a81
	xor 005h		;2a83
	ld h,0eeh		;2a85
	dec c			;2a87
	jr z,l2a78h		;2a88
	ld bc,0ee14h		;2a8a
	ld de,0f014h		;2a8d
	cp 00eh		;2a90
	ret p			;2a92
	inc d			;2a93
	ld c,080h		;2a94
	ret p			;2a96
	jp m,0801ah		;2a97
	ret p			;2a9a
	ret m			;2a9b
	ret po			;2a9c
	add a,b			;2a9d
l2a9eh:
	call p,0e2f6h		;2a9e
	ret p			;2aa1
l2aa2h:
	ld sp,hl			;2aa2
	ld d,0f0h		;2aa3
	call p,08016h		;2aa5
	pop af			;2aa8
	di			;2aa9
	call po,0f7efh		;2aaa
	jr l2a9eh		;2aad
	rst 28h			;2aaf
	jr l2aa2h		;2ab0
	jp m,0f00eh		;2ab2
	call pe,l800eh		;2ab5
	xor 0f3h		;2ab8
	ret pe			;2aba
	xor 0ebh		;2abb
	and 0eeh		;2abd
	rst 30h			;2abf
	inc d			;2ac0
	xor 0e7h		;2ac1
	inc d			;2ac3
	ret p			;2ac4
	jp m,0f00eh		;2ac5
	call po,l800eh		;2ac8
	ret p			;2acb
	cp 01ah		;2acc
l2aceh:
	add a,b			;2ace
	ret p			;2acf
	rst 38h			;2ad0
	ld e,080h		;2ad1
	ret p			;2ad3
	ld bc,08024h		;2ad4
	call pe,sub_2203h		;2ad7
	ret pe			;2ada
	ld bc,0f014h		;2adb
	ld bc,0e814h		;2ade
	dec b			;2ae1
	inc d			;2ae2
	ret p			;2ae3
	dec b			;2ae4
	inc d			;2ae5
	add a,b			;2ae6
	pop hl			;2ae7
	dec b			;2ae8
	inc e			;2ae9
	pop af			;2aea
	dec b			;2aeb
	jr nz,l2aceh		;2aec
	ld bc,0f014h		;2aee
	ld bc,0e014h		;2af1
	add hl,bc			;2af4
	inc d			;2af5
	ret p			;2af6
	add hl,bc			;2af7
	inc d			;2af8
	add a,b			;2af9
	ret p			;2afa
	jp m,0801ah		;2afb
	ret p			;2afe
	ret m			;2aff
	ld e,080h		;2b00
	ret p			;2b02
	rst 30h			;2b03
	inc h			;2b04
	add a,b			;2b05
	call pe,022f5h		;2b06
	ret pe			;2b09
	rst 30h			;2b0a
	inc d			;2b0b
	ret p			;2b0c
	rst 30h			;2b0d
	inc d			;2b0e
	ret pe			;2b0f
	di			;2b10
	inc d			;2b11
	ret p			;2b12
	di			;2b13
	inc d			;2b14
	add a,b			;2b15
	pop hl			;2b16
	di			;2b17
	inc e			;2b18
	pop af			;2b19
	di			;2b1a
	jr nz,$-32		;2b1b
	rst 30h			;2b1d
	inc d			;2b1e
	ret p			;2b1f
	rst 30h			;2b20
	inc d			;2b21
	ret po			;2b22
	rst 28h			;2b23
	inc d			;2b24
	ret p			;2b25
	rst 28h			;2b26
	inc d			;2b27
	add a,b			;2b28
l2b29h:
	call pe,010f8h		;2b29
	call pe,sub_1200h		;2b2c
	add a,b			;2b2f
	ret p			;2b30
	dec b			;2b31
	sbc a,h			;2b32
	ret p			;2b33
	di			;2b34
	sub (hl)			;2b35
	ret p			;2b36
	nop			;2b37
	sbc a,d			;2b38
	ret p			;2b39
	ret m			;2b3a
	sbc a,b			;2b3b
	ret pe			;2b3c
	dec b			;2b3d
	sub h			;2b3e
	ret pe			;2b3f
	di			;2b40
	adc a,(hl)			;2b41
	ret pe			;2b42
	nop			;2b43
	sub d			;2b44
	ret pe			;2b45
	ret m			;2b46
	sub b			;2b47
	add a,b			;2b48
	ret p			;2b49
	ex af,af'			;2b4a
	sbc a,h			;2b4b
	ret p			;2b4c
	ret p			;2b4d
	sub (hl)			;2b4e
	ret p			;2b4f
	nop			;2b50
	sbc a,d			;2b51
	ret p			;2b52
	ret m			;2b53
	sbc a,b			;2b54
	ret po			;2b55
	ex af,af'			;2b56
	sub h			;2b57
	ret po			;2b58
	ret p			;2b59
	adc a,(hl)			;2b5a
	ret po			;2b5b
	nop			;2b5c
	sub d			;2b5d
	ret po			;2b5e
	ret m			;2b5f
	sub b			;2b60
	add a,b			;2b61
	ret m			;2b62
	inc c			;2b63
	ld h,(hl)			;2b64
	ret m			;2b65
	inc b			;2b66
	ld l,b			;2b67
	ret m			;2b68
	nop			;2b69
	ld l,d			;2b6a
	ret m			;2b6b
	call m,0f86ch		;2b6c
	call p,0f86eh		;2b6f
	call pe,0e870h		;2b72
	inc c			;2b75
	ld (hl),d			;2b76
	ret pe			;2b77
	inc b			;2b78
sub_2b79h:
	ld (hl),h			;2b79
	ret pe			;2b7a
	nop			;2b7b
	halt			;2b7c
	ret pe			;2b7d
	call m,0e878h		;2b7e
	call p,0e87ah		;2b81
	call pe,0e07ch		;2b84
	inc c			;2b87
	ld a,(hl)			;2b88
	ret po			;2b89
	inc b			;2b8a
	add a,b			;2b8b
	ret po			;2b8c
	nop			;2b8d
	add a,d			;2b8e
	ret po			;2b8f
	call m,0e084h		;2b90
	call p,0e086h		;2b93
	call pe,sub_8088h		;2b96
	ret m			;2b99
	djnz sub_2c02h		;2b9a
	ret m			;2b9c
	ex af,af'			;2b9d
	ld l,b			;2b9e
	ret m			;2b9f
	nop			;2ba0
	ld l,d			;2ba1
	ret m			;2ba2
	ret m			;2ba3
	ld l,h			;2ba4
	ret m			;2ba5
	ret p			;2ba6
	ld l,(hl)			;2ba7
	ret m			;2ba8
	ret pe			;2ba9
	ld (hl),b			;2baa
	ret pe			;2bab
	djnz l2c20h		;2bac
	ret pe			;2bae
	ex af,af'			;2baf
	ld (hl),h			;2bb0
	ret pe			;2bb1
	nop			;2bb2
	halt			;2bb3
	ret pe			;2bb4
	ret m			;2bb5
	ld a,b			;2bb6
	ret pe			;2bb7
	ret p			;2bb8
	ld a,d			;2bb9
	ret pe			;2bba
	ret pe			;2bbb
	ld a,h			;2bbc
	ret c			;2bbd
l2bbeh:
	djnz l2c3eh		;2bbe
	ret c			;2bc0
	ex af,af'			;2bc1
	add a,b			;2bc2
	ret c			;2bc3
	nop			;2bc4
	add a,d			;2bc5
	ret c			;2bc6
	ret m			;2bc7
	add a,h			;2bc8
	ret c			;2bc9
	ret p			;2bca
	add a,(hl)			;2bcb
	ret c			;2bcc
	ret pe			;2bcd
	adc a,b			;2bce
	add a,b			;2bcf
	bit 7,(ix+001h)		;2bd0
	jr nz,l2c4dh		;2bd4
	ld a,(0c073h)		;2bd6
	rlca			;2bd9
	rlca			;2bda
	rlca			;2bdb
	rlca			;2bdc
	and 07fh		;2bdd
	sub 040h		;2bdf
	ld e,a			;2be1
	ld a,r		;2be2
	and 03fh		;2be4
	sub 020h		;2be6
	add a,e			;2be8
	ld (ix+008h),a		;2be9
	ld e,a			;2bec
	ld a,(0c4c0h)		;2bed
	cp 002h		;2bf0
	ld a,e			;2bf2
	jr c,l2bf7h		;2bf3
	neg		;2bf5
l2bf7h:
	ld (ix+013h),a		;2bf7
	ld (ix+009h),01ch		;2bfa
	ld (ix+00bh),006h		;2bfe
sub_2c02h:
	ld (ix+00ch),001h		;2c02
	ld (ix+014h),008h		;2c06
	xor a			;2c0a
	ld (ix+018h),a		;2c0b
l2c0eh:
	ld (ix+019h),a		;2c0e
	ld b,a			;2c11
	ld c,a			;2c12
	ld a,(0c31bh)		;2c13
	or a			;2c16
	jr nz,l2c47h		;2c17
	ld a,(0c31ah)		;2c19
	cp 0c8h		;2c1c
	jr nc,l2c47h		;2c1e
l2c20h:
	ld (ix+019h),001h		;2c20
	ld hl,l2d3eh		;2c24
	ld a,(0c013h)		;2c27
	cp 07eh		;2c2a
	jr nc,l2c3ch		;2c2c
	inc hl			;2c2e
	inc hl			;2c2f
	cp 054h		;2c30
	jr nc,l2c3ch		;2c32
	inc hl			;2c34
	inc hl			;2c35
	cp 02ah		;2c36
	jr nc,l2c3ch		;2c38
	inc hl			;2c3a
	inc hl			;2c3b
l2c3ch:
	ld a,r		;2c3c
l2c3eh:
	and (hl)			;2c3e
	inc hl			;2c3f
	add a,(hl)			;2c40
	ld (ix+008h),a		;2c41
	ld bc,08600h		;2c44
l2c47h:
	ld (ix+003h),b		;2c47
	ld (ix+004h),c		;2c4a
l2c4dh:
	ld c,000h		;2c4d
	ld a,(ix+003h)		;2c4f
	ld b,a			;2c52
	cp 041h		;2c53
	jr c,l2c5dh		;2c55
	cp 05fh		;2c57
	jr nc,l2c5dh		;2c59
	ld c,001h		;2c5b
l2c5dh:
	ld a,(ix+018h)		;2c5d
	xor c			;2c60
	jr z,l2c86h		;2c61
	ld a,c			;2c63
	or a			;2c64
	ld hl,04088h		;2c65
	jr nz,l2c6dh		;2c68
	ld hl,040a2h		;2c6a
l2c6dh:
	ld (0c101h),hl		;2c6d
	ld (ix+018h),c		;2c70
	ld a,b			;2c73
	cp 05fh		;2c74
l2c76h:
	jr c,l2c86h		;2c76
	ld a,(ix+019h)		;2c78
	or a			;2c7b
	jr nz,l2c86h		;2c7c
	ld a,006h		;2c7e
	ld (ix+019h),a		;2c80
	call 035c6h		;2c83
l2c86h:
	ld a,(ix+003h)		;2c86
	call sub_4cf4h		;2c89
	cp 0ffh		;2c8c
	jr nz,l2c95h		;2c8e
	ld b,(ix+00ch)		;2c90
	jr l2ca0h		;2c93
l2c95h:
	ld b,a			;2c95
	ld (ix+00ch),a		;2c96
	add a,a			;2c99
	ld c,a			;2c9a
	add a,a			;2c9b
	add a,c			;2c9c
	ld (ix+00bh),a		;2c9d
l2ca0h:
	ld a,(0c4c0h)		;2ca0
	or a			;2ca3
l2ca4h:
	jr nz,l2cd1h		;2ca4
	dec (ix+014h)		;2ca6
	jr nz,l2cd1h		;2ca9
	ld (ix+014h),008h		;2cab
	ld c,01dh		;2caf
	ld a,b			;2cb1
	cp 001h		;2cb2
	jr z,l2cc3h		;2cb4
	ld c,01bh		;2cb6
	ld a,(0c2f0h)		;2cb8
	and 00fh		;2cbb
	cp 002h		;2cbd
	jr nz,l2cc3h		;2cbf
	ld c,019h		;2cc1
l2cc3h:
	ld a,(ix+009h)		;2cc3
	cp c			;2cc6
	jr z,l2cd1h		;2cc7
	inc a			;2cc9
	jr c,l2cceh		;2cca
	dec a			;2ccc
	dec a			;2ccd
l2cceh:
	ld (ix+009h),a		;2cce
l2cd1h:
	ld a,(ix+003h)		;2cd1
	cp 010h		;2cd4
	jr c,l2d12h		;2cd6
	cp 050h		;2cd8
	jr nc,l2d12h		;2cda
	ld a,b			;2cdc
	dec a			;2cdd
	jr z,l2cf7h		;2cde
	ld b,a			;2ce0
	ld a,(0c010h)		;2ce1
	cp 002h		;2ce4
	jr c,l2cf7h		;2ce6
	ld a,(ix+008h)		;2ce8
l2cebh:
	sub b			;2ceb
	cp 060h		;2cec
	jr c,l2cf4h		;2cee
	cp 0a0h		;2cf0
	jr c,l2cf7h		;2cf2
l2cf4h:
	ld (ix+008h),a		;2cf4
l2cf7h:
	ld b,(ix+008h)		;2cf7
	ld a,(ix+013h)		;2cfa
	cp b			;2cfd
l2cfeh:
	jr z,l2d12h		;2cfe
	ld e,0ffh		;2d00
	jr c,l2d06h		;2d02
	ld e,001h		;2d04
l2d06h:
	xor b			;2d06
	ld a,e			;2d07
	jp p,l2c0eh		;2d08
	ld a,e			;2d0b
	neg		;2d0c
	add a,b			;2d0e
	ld (ix+008h),a		;2d0f
l2d12h:
	ld (ix+001h),080h		;2d12
	ld a,(0c31bh)		;2d16
	rrca			;2d19
	ld a,(0c31ah)		;2d1a
	rra			;2d1d
	or a			;2d1e
	rra			;2d1f
	or a			;2d20
	rra			;2d21
	ld c,(ix+003h)		;2d22
	ld b,000h		;2d25
	ld hl,02dceh		;2d27
	add hl,bc			;2d2a
l2d2bh:
	ld h,(hl)			;2d2b
	ld c,000h		;2d2c
	sub (ix+009h)		;2d2e
	jr nc,l2d36h		;2d31
	neg		;2d33
	inc c			;2d35
l2d36h:
	ld e,a			;2d36
	call sub_0623h		;2d37
	dec c			;2d3a
	jr nz,l2d44h		;2d3b
	ld a,l			;2d3d
l2d3eh:
	cpl			;2d3e
	ld l,a			;2d3f
	ld a,h			;2d40
	cpl			;2d41
	ld h,a			;2d42
	inc hl			;2d43
l2d44h:
	ld a,l			;2d44
	add a,(ix+004h)		;2d45
	ld (ix+004h),a		;2d48
	ld a,h			;2d4b
	adc a,(ix+003h)		;2d4c
	ld (ix+003h),a		;2d4f
	ld c,a			;2d52
	add a,05fh		;2d53
	ld (ix+002h),a		;2d55
	ld a,c			;2d58
	cp 087h		;2d59
	jp nc,l2558h		;2d5b
	cp 060h		;2d5e
	jp nc,l2cebh		;2d60
	ld b,000h		;2d63
	ld hl,02d46h		;2d65
	add hl,bc			;2d68
	ld h,(hl)			;2d69
	ld c,000h		;2d6a
	ld a,(ix+008h)		;2d6c
	or a			;2d6f
	jp p,l2c76h		;2d70
	inc c			;2d73
	neg		;2d74
	ld e,a			;2d76
	call sub_0623h		;2d77
	ld a,h			;2d7a
	ld b,000h		;2d7b
	dec c			;2d7d
	jr nz,l2d88h		;2d7e
	cpl			;2d80
	ld h,a			;2d81
	ld a,l			;2d82
	cpl			;2d83
	ld l,a			;2d84
	inc hl			;2d85
	ld a,h			;2d86
	dec b			;2d87
l2d88h:
	add a,07ch		;2d88
	ld (ix+006h),a		;2d8a
	ld a,000h		;2d8d
	adc a,b			;2d8f
	ld (ix+007h),a		;2d90
	ld c,(ix+003h)		;2d93
	ld b,000h		;2d96
	ld hl,0c55fh		;2d98
	add hl,bc			;2d9b
	ld a,(hl)			;2d9c
	ld e,000h		;2d9d
	or a			;2d9f
	jp p,l2ca4h		;2da0
	dec e			;2da3
	add a,(ix+006h)		;2da4
	ld (ix+006h),a		;2da7
	ld a,e			;2daa
	adc a,(ix+007h)		;2dab
	ld (ix+007h),a		;2dae
	ld hl,02e56h		;2db1
	add hl,bc			;2db4
	ld a,(hl)			;2db5
	add a,007h		;2db6
	add a,(ix+00bh)		;2db8
	ld (ix+00ah),a		;2dbb
	ld a,(ix+007h)		;2dbe
	or a			;2dc1
	ret nz			;2dc2
	ld a,(ix+003h)		;2dc3
	cp 04ch		;2dc6
	ret c			;2dc8
	cp 064h		;2dc9
	ret nc			;2dcb
	ld a,(ix+00ch)		;2dcc
	add a,a			;2dcf
	ld c,a			;2dd0
	ld b,000h		;2dd1
	ld hl,02d38h		;2dd3
	add hl,bc			;2dd6
	ld a,(ix+006h)		;2dd7
	add a,(hl)			;2dda
	ld b,a			;2ddb
	inc hl			;2ddc
	add a,(hl)			;2ddd
	ld hl,0c310h		;2dde
	cp (hl)			;2de1
	ret c			;2de2
	inc hl			;2de3
	ld a,b			;2de4
	cp (hl)			;2de5
	ret nc			;2de6
	inc hl			;2de7
	ld (hl),001h		;2de8
	ret			;2dea
	ld b,000h		;2deb
	ld hl,02d46h		;2ded
	add hl,bc			;2df0
	ld h,(hl)			;2df1
	ld c,000h		;2df2
	ld a,(ix+008h)		;2df4
	or a			;2df7
	jp p,l2cfeh		;2df8
	inc c			;2dfb
	neg		;2dfc
	ld e,a			;2dfe
	push de			;2dff
l2e00h:
	call sub_0623h		;2e00
	pop de			;2e03
	ld a,h			;2e04
	add a,e			;2e05
	ld b,000h		;2e06
	dec c			;2e08
	jr nz,l2e13h		;2e09
	cpl			;2e0b
	ld h,a			;2e0c
	ld a,l			;2e0d
	cpl			;2e0e
	ld l,a			;2e0f
	inc hl			;2e10
	ld a,h			;2e11
	dec b			;2e12
l2e13h:
	add a,07ch		;2e13
	ld (ix+006h),a		;2e15
	ld a,000h		;2e18
	adc a,b			;2e1a
	ld (ix+007h),a		;2e1b
	ld c,(ix+003h)		;2e1e
	ld b,000h		;2e21
	ld hl,0c55fh		;2e23
	add hl,bc			;2e26
	ld a,(hl)			;2e27
	ld d,a			;2e28
	ld e,000h		;2e29
	ld a,(0c013h)		;2e2b
	cp 054h		;2e2e
l2e30h:
	ld a,d			;2e30
	jp nc,l2ca4h		;2e31
	dec e			;2e34
	jp l2ca4h		;2e35
	call pe,0f810h		;2e38
	djnz l2e41h		;2e3b
	djnz l2e7eh		;2e3d
	nop			;2e3f
	rra			;2e40
l2e41h:
	jr nz,l2e62h		;2e41
	pop bc			;2e43
	ccf			;2e44
	pop bc			;2e45
	inc c			;2e46
	ld c,011h		;2e47
	inc de			;2e49
	dec d			;2e4a
	jr l2e67h		;2e4b
	inc e			;2e4d
	rra			;2e4e
	inc h			;2e4f
	ld h,028h		;2e50
	dec hl			;2e52
	dec l			;2e53
	cpl			;2e54
	ld (l3734h),a		;2e55
	add hl,sp			;2e58
	dec sp			;2e59
	ld b,b			;2e5a
	ld b,d			;2e5b
	ld b,l			;2e5c
	ld b,a			;2e5d
	ld c,c			;2e5e
	ld c,h			;2e5f
	ld c,(hl)			;2e60
	ld d,c			;2e61
l2e62h:
	ld d,e			;2e62
	ld d,l			;2e63
	ld e,b			;2e64
	ld e,h			;2e65
	ld e,a			;2e66
l2e67h:
	ld h,c			;2e67
	ld h,h			;2e68
	ld h,(hl)			;2e69
	ld l,b			;2e6a
	ld l,e			;2e6b
	ld l,l			;2e6c
	ld l,a			;2e6d
	ld (hl),d			;2e6e
	ld (hl),h			;2e6f
	ld a,c			;2e70
	ld a,e			;2e71
	ld a,(hl)			;2e72
	add a,b			;2e73
	add a,d			;2e74
	add a,l			;2e75
	add a,a			;2e76
	adc a,c			;2e77
	adc a,h			;2e78
	adc a,(hl)			;2e79
	sub c			;2e7a
	sub l			;2e7b
	sbc a,b			;2e7c
	sbc a,d			;2e7d
l2e7eh:
	sbc a,h			;2e7e
	sbc a,a			;2e7f
	and c			;2e80
	and h			;2e81
	and (hl)			;2e82
	xor b			;2e83
	xor e			;2e84
	xor l			;2e85
	or d			;2e86
	or h			;2e87
	or a			;2e88
	cp c			;2e89
	cp e			;2e8a
	cp (hl)			;2e8b
	ret nz			;2e8c
	jp nz,0c7c5h		;2e8d
	ret			;2e90
	adc a,0d1h		;2e91
	out (0d5h),a		;2e93
	ret c			;2e95
	jp c,0dfdch		;2e96
	pop hl			;2e99
	call po,0ebe6h		;2e9a
	.DB 0edh;next byte illegal after ed		;2e9d
	rst 28h			;2e9e
	jp p,0f7f4h		;2e9f
	ld sp,hl			;2ea2
	ei			;2ea3
	cp 0ffh		;2ea4
	ld (bc),a			;2ea6
	rlca			;2ea7
	add hl,bc			;2ea8
	inc c			;2ea9
	ld c,011h		;2eaa
	inc de			;2eac
	dec d			;2ead
	jr l2ecah		;2eae
	inc e			;2eb0
	rra			;2eb1
	inc h			;2eb2
	ld h,028h		;2eb3
	dec hl			;2eb5
	dec l			;2eb6
	cpl			;2eb7
	ld (l3734h),a		;2eb8
	add hl,sp			;2ebb
	dec sp			;2ebc
	ld b,b			;2ebd
	ld b,d			;2ebe
	ld b,l			;2ebf
	ld b,a			;2ec0
	ld c,c			;2ec1
	ld c,h			;2ec2
	ld c,(hl)			;2ec3
	ld d,c			;2ec4
	ld d,e			;2ec5
	ld d,l			;2ec6
	ld e,b			;2ec7
	ld e,h			;2ec8
	ld e,a			;2ec9
l2ecah:
	ld h,c			;2eca
	ld h,h			;2ecb
	ld h,(hl)			;2ecc
	ld l,b			;2ecd
	ld bc,l0302h		;2ece
	inc b			;2ed1
	dec b			;2ed2
	ld b,007h		;2ed3
	ex af,af'			;2ed5
	add hl,bc			;2ed6
	ld a,(bc)			;2ed7
	dec bc			;2ed8
	dec bc			;2ed9
	inc c			;2eda
	dec c			;2edb
	ld c,00fh		;2edc
l2edeh:
	djnz l2ef1h		;2ede
	ld (de),a			;2ee0
	ld (de),a			;2ee1
	inc de			;2ee2
	inc d			;2ee3
	dec d			;2ee4
	ld d,017h		;2ee5
	rla			;2ee7
	jr $+25		;2ee8
	ld a,(de)			;2eea
	dec de			;2eeb
	dec de			;2eec
	inc e			;2eed
	dec e			;2eee
	ld e,01eh		;2eef
l2ef1h:
	rra			;2ef1
	jr nz,$+32		;2ef2
	ld hl,l2222h		;2ef4
	inc hl			;2ef7
	inc h			;2ef8
	inc h			;2ef9
	dec h			;2efa
	ld h,026h		;2efb
	daa			;2efd
	jr z,$+40		;2efe
	add hl,hl			;2f00
	add hl,hl			;2f01
	ld hl,(l2b29h+2)		;2f02
	inc l			;2f05
	inc l			;2f06
	dec l			;2f07
	dec l			;2f08
	ld l,02eh		;2f09
	cpl			;2f0b
	cpl			;2f0c
	jr nc,l2f3fh		;2f0d
	ld sp,l3231h		;2f0f
	ld (l3333h),a		;2f12
	inc (hl)			;2f15
	inc (hl)			;2f16
	inc (hl)			;2f17
	dec (hl)			;2f18
	dec (hl)			;2f19
	ld (hl),036h		;2f1a
	ld (hl),037h		;2f1c
	scf			;2f1e
	scf			;2f1f
	jr c,l2f5ah		;2f20
	jr c,l2f5dh		;2f22
	add hl,sp			;2f24
	add hl,sp			;2f25
	ld a,(l3a3ah)		;2f26
	dec sp			;2f29
	dec sp			;2f2a
	dec sp			;2f2b
	dec sp			;2f2c
	inc a			;2f2d
	inc a			;2f2e
	inc a			;2f2f
l2f30h:
	inc a			;2f30
l2f31h:
	inc a			;2f31
	inc a			;2f32
	inc a			;2f33
	inc a			;2f34
	inc a			;2f35
	inc a			;2f36
	inc a			;2f37
	inc a			;2f38
	inc a			;2f39
	inc a			;2f3a
	inc a			;2f3b
	inc a			;2f3c
	inc a			;2f3d
	inc a			;2f3e
l2f3fh:
	inc a			;2f3f
	inc a			;2f40
	inc a			;2f41
	inc a			;2f42
	inc a			;2f43
	inc a			;2f44
	inc a			;2f45
	inc a			;2f46
	inc a			;2f47
	inc a			;2f48
	inc a			;2f49
	inc a			;2f4a
	inc a			;2f4b
	inc a			;2f4c
	inc a			;2f4d
	inc a			;2f4e
	inc a			;2f4f
	inc a			;2f50
	inc a			;2f51
	inc a			;2f52
	inc a			;2f53
	inc a			;2f54
	inc a			;2f55
	nop			;2f56
	nop			;2f57
	nop			;2f58
	nop			;2f59
l2f5ah:
	ld bc,l0101h		;2f5a
l2f5dh:
	ld bc,l0101h		;2f5d
	ld (bc),a			;2f60
	ld (bc),a			;2f61
	ld (bc),a			;2f62
	ld (bc),a			;2f63
	ld (bc),a			;2f64
	ld (bc),a			;2f65
sub_2f66h:
	ld (bc),a			;2f66
	ld (bc),a			;2f67
	ld (bc),a			;2f68
	ld (bc),a			;2f69
	ld (bc),a			;2f6a
	inc bc			;2f6b
	inc bc			;2f6c
	inc bc			;2f6d
	inc bc			;2f6e
	inc bc			;2f6f
	inc bc			;2f70
	inc bc			;2f71
	inc bc			;2f72
	inc bc			;2f73
	inc bc			;2f74
	inc bc			;2f75
	inc bc			;2f76
	inc bc			;2f77
	inc bc			;2f78
	inc bc			;2f79
	inc b			;2f7a
	inc b			;2f7b
	inc b			;2f7c
	inc b			;2f7d
	inc b			;2f7e
	inc b			;2f7f
	inc b			;2f80
	inc b			;2f81
	inc b			;2f82
	inc b			;2f83
	inc b			;2f84
	inc b			;2f85
	inc b			;2f86
	inc b			;2f87
	inc b			;2f88
	inc b			;2f89
l2f8ah:
	inc b			;2f8a
	inc b			;2f8b
	inc b			;2f8c
	inc b			;2f8d
	inc b			;2f8e
	inc b			;2f8f
	inc b			;2f90
	inc b			;2f91
	inc b			;2f92
	inc b			;2f93
	dec b			;2f94
	dec b			;2f95
	dec b			;2f96
	dec b			;2f97
	dec b			;2f98
	dec b			;2f99
	dec b			;2f9a
	dec b			;2f9b
	dec b			;2f9c
	dec b			;2f9d
	dec b			;2f9e
	dec b			;2f9f
	dec b			;2fa0
	dec b			;2fa1
	dec b			;2fa2
	dec b			;2fa3
	dec b			;2fa4
	dec b			;2fa5
	dec b			;2fa6
	dec b			;2fa7
	dec b			;2fa8
	dec b			;2fa9
	dec b			;2faa
	dec b			;2fab
	dec b			;2fac
	dec b			;2fad
	dec b			;2fae
	dec b			;2faf
	dec b			;2fb0
	dec b			;2fb1
	dec b			;2fb2
	dec b			;2fb3
	dec b			;2fb4
	dec b			;2fb5
	dec b			;2fb6
	dec b			;2fb7
	dec b			;2fb8
	dec b			;2fb9
	dec b			;2fba
	dec b			;2fbb
	dec b			;2fbc
	dec b			;2fbd
	dec b			;2fbe
	dec b			;2fbf
	dec b			;2fc0
	dec b			;2fc1
	dec b			;2fc2
	dec b			;2fc3
	dec b			;2fc4
	dec b			;2fc5
	dec b			;2fc6
	dec b			;2fc7
	dec b			;2fc8
	dec b			;2fc9
	dec b			;2fca
	dec b			;2fcb
	dec b			;2fcc
	dec b			;2fcd
	dec b			;2fce
	dec b			;2fcf
	dec b			;2fd0
	dec b			;2fd1
	dec b			;2fd2
	dec b			;2fd3
	dec b			;2fd4
	dec b			;2fd5
	dec b			;2fd6
	dec b			;2fd7
	dec b			;2fd8
	dec b			;2fd9
	dec b			;2fda
	dec b			;2fdb
	dec b			;2fdc
	dec b			;2fdd
	inc b			;2fde
	dec b			;2fdf
	ld b,007h		;2fe0
	ex af,af'			;2fe2
	ld a,(bc)			;2fe3
	dec bc			;2fe4
	inc c			;2fe5
	dec c			;2fe6
	ld c,010h		;2fe7
l2fe9h:
	ld de,l1312h		;2fe9
	inc d			;2fec
	ld d,017h		;2fed
	jr l300ah		;2fef
	dec de			;2ff1
	inc e			;2ff2
	dec e			;2ff3
	ld e,01fh		;2ff4
	ld hl,l2322h		;2ff6
	inc h			;2ff9
	dec h			;2ffa
	daa			;2ffb
	jr z,l3027h		;2ffc
	ld hl,(l2d2bh)		;2ffe
	ld l,02fh		;3001
	jr nc,l3037h		;3003
	inc sp			;3005
	inc (hl)			;3006
	dec (hl)			;3007
	ld (hl),038h		;3008
l300ah:
	add hl,sp			;300a
	ld a,(l3c3bh)		;300b
l300eh:
	ld a,03fh		;300e
	ld b,b			;3010
l3011h:
	ld b,c			;3011
	ld b,d			;3012
	ld b,h			;3013
	ld b,l			;3014
l3015h:
	ld b,(hl)			;3015
	ld b,a			;3016
	ld c,c			;3017
	ld c,d			;3018
	ld c,e			;3019
	ld c,h			;301a
	ld c,l			;301b
	ld c,a			;301c
	ld d,b			;301d
	ld d,c			;301e
l301fh:
	ld d,d			;301f
	ld d,e			;3020
	ld d,l			;3021
	ld d,(hl)			;3022
	ld d,a			;3023
	ld e,b			;3024
	ld e,c			;3025
	ld e,e			;3026
l3027h:
	ld e,h			;3027
	ld e,l			;3028
	ld e,(hl)			;3029
	ld h,b			;302a
	ld h,c			;302b
	ld h,d			;302c
	ld h,e			;302d
	ld h,h			;302e
	ld h,(hl)			;302f
	ld h,a			;3030
	ld l,b			;3031
	ld l,c			;3032
	ld l,d			;3033
	ld l,h			;3034
	ld l,l			;3035
	ld l,(hl)			;3036
l3037h:
	ld l,a			;3037
	ld (hl),b			;3038
	ld (hl),d			;3039
	ld (hl),e			;303a
	ld (hl),h			;303b
	ld (hl),l			;303c
	ld (hl),a			;303d
	ld a,b			;303e
	ld a,c			;303f
sub_3040h:
	ld a,d			;3040
	ld a,e			;3041
	ld a,l			;3042
	ld a,(hl)			;3043
	ld a,a			;3044
	add a,b			;3045
	add a,c			;3046
	add a,e			;3047
	add a,h			;3048
	add a,l			;3049
	add a,(hl)			;304a
	add a,a			;304b
	adc a,c			;304c
l304dh:
	adc a,d			;304d
	adc a,e			;304e
	adc a,h			;304f
	adc a,(hl)			;3050
	adc a,a			;3051
	sub b			;3052
	sub c			;3053
	sub d			;3054
	sub h			;3055
	sub l			;3056
	sub (hl)			;3057
	sub a			;3058
	sbc a,b			;3059
	sbc a,d			;305a
	sbc a,e			;305b
	sbc a,h			;305c
	sbc a,l			;305d
	sbc a,(hl)			;305e
	and b			;305f
	and c			;3060
	and d			;3061
	and e			;3062
	and l			;3063
	and (hl)			;3064
	and a			;3065
	ld hl,0c066h		;3066
	bit 0,(hl)		;3069
	jp nz,02ff5h		;306b
	ld hl,0c067h		;306e
	ld a,(hl)			;3071
	or a			;3072
	jr z,l3077h		;3073
	dec (hl)			;3075
	ret			;3076
l3077h:
	ld hl,0c044h		;3077
	dec (hl)			;307a
	jr nz,l30aeh		;307b
	ld b,003h		;307d
	ld a,(0c4c0h)		;307f
l3082h:
	or a			;3082
	jr nz,l3086h		;3083
	dec b			;3085
l3086h:
	ld a,(0c000h)		;3086
	and 004h		;3089
	jr z,l308fh		;308b
	ld b,003h		;308d
l308fh:
	ld de,l30d3h		;308f
	ld hl,(0c31ah)		;3092
	srl h		;3095
	rr l		;3097
	srl l		;3099
	srl l		;309b
	add hl,de			;309d
	ld a,(hl)			;309e
	ld (0c044h),a		;309f
	ld a,b			;30a2
	or a			;30a3
	jr z,l30aeh		;30a4
	ld hl,0c320h		;30a6
	ld c,002h		;30a9
	call sub_3040h		;30ab
l30aeh:
	ld hl,0c06ch		;30ae
	ld a,(hl)			;30b1
	or a			;30b2
	jp nz,l3011h		;30b3
	inc hl			;30b6
	ld a,(hl)			;30b7
	or a			;30b8
	jp nz,l3015h		;30b9
	ld hl,(0c06fh)		;30bc
	ld de,(0c31ah)		;30bf
	add hl,de			;30c3
	ld a,h			;30c4
	sub 01bh		;30c5
	jr nc,l30cdh		;30c7
	ld (0c06fh),hl		;30c9
	ret			;30cc
l30cdh:
	ld h,a			;30cd
	ld (0c06fh),hl		;30ce
	ld b,002h		;30d1
l30d3h:
	ld hl,(0c060h)		;30d3
	ld a,l			;30d6
	or a			;30d7
	jr nz,l30deh		;30d8
	ld a,h			;30da
	cp 008h		;30db
	ret c			;30dd
l30deh:
	ld hl,0c380h		;30de
	ld a,(0c065h)		;30e1
	inc a			;30e4
	and 001h		;30e5
	add a,003h		;30e7
	ld c,a			;30e9
	call sub_3040h		;30ea
	ret nc			;30ed
	ld a,c			;30ee
	sub 003h		;30ef
	ld (0c065h),a		;30f1
	ret			;30f4
	res 0,(hl)		;30f5
	ld hl,0c380h		;30f7
	ld c,005h		;30fa
	ld b,004h		;30fc
	call sub_3040h		;30fe
	ld hl,0c3c0h		;3101
	ld c,006h		;3104
	ld b,003h		;3106
	call sub_3040h		;3108
	ld a,078h		;310b
	ld (0c067h),a		;310d
	ret			;3110
	ld c,009h		;3111
	jr l3117h		;3113
	ld c,00ah		;3115
l3117h:
	push hl			;3117
	ld hl,(0c06fh)		;3118
	ld de,(0c31ah)		;311b
	add hl,de			;311f
	ld a,h			;3120
	sub 01bh		;3121
	jr nc,l312ah		;3123
	ld (0c06fh),hl		;3125
	pop hl			;3128
l3129h:
	ret			;3129
l312ah:
	ld h,a			;312a
	ld (0c06fh),hl		;312b
	pop hl			;312e
	ld de,0c3c0h		;312f
	ld a,(de)			;3132
	or a			;3133
	jr z,l313ch		;3134
	ld de,0c3e0h		;3136
	ld a,(de)			;3139
	or a			;313a
	ret nz			;313b
l313ch:
	ld a,c			;313c
	ld (de),a			;313d
	dec (hl)			;313e
	ret			;313f
	ld de,00020h		;3140
l3143h:
	ld a,(hl)			;3143
	or a			;3144
	jp z,l304dh		;3145
	add hl,de			;3148
	djnz l3143h		;3149
	and a			;314b
	ret			;314c
	ld (hl),c			;314d
	scf			;314e
l314fh:
	ret			;314f
	ld e,b			;3150
	jr nc,$-127		;3151
	jr nc,$-86		;3153
	jr nc,l312ah		;3155
	jr nc,l315ah		;3157
	rst 38h			;3159
l315ah:
	rst 38h			;315a
	rst 38h			;315b
	rst 38h			;315c
	rst 38h			;315d
	rst 38h			;315e
	rst 38h			;315f
	rst 38h			;3160
	rst 38h			;3161
	rst 38h			;3162
	rst 38h			;3163
	rst 38h			;3164
	rst 38h			;3165
	rst 38h			;3166
	rst 38h			;3167
	rst 38h			;3168
	rst 38h			;3169
	rst 38h			;316a
	rst 38h			;316b
	rst 38h			;316c
l316dh:
	rst 38h			;316d
	rst 38h			;316e
	rst 38h			;316f
	rst 38h			;3170
	rst 38h			;3171
	rst 38h			;3172
	rst 38h			;3173
	rst 38h			;3174
	rst 38h			;3175
	rst 38h			;3176
	rst 38h			;3177
	rst 38h			;3178
	rst 38h			;3179
	rst 38h			;317a
	rst 38h			;317b
	rst 38h			;317c
	rst 38h			;317d
	rst 38h			;317e
l317fh:
	rst 38h			;317f
	rst 38h			;3180
	ld (bc),a			;3181
	ld a,b			;3182
	ld a,b			;3183
	ld a,b			;3184
	ld a,b			;3185
	ld a,b			;3186
	ld a,b			;3187
	ld a,b			;3188
	ld a,b			;3189
	ld a,b			;318a
	ld a,b			;318b
	ld a,b			;318c
	ld a,b			;318d
	ld a,b			;318e
	ld a,l			;318f
	add a,d			;3190
	add a,a			;3191
	adc a,h			;3192
	sub c			;3193
	sub (hl)			;3194
	sbc a,e			;3195
	and b			;3196
	and l			;3197
	xor d			;3198
	or h			;3199
	ret z			;319a
	rst 38h			;319b
l319ch:
	ret z			;319c
	or h			;319d
	and b			;319e
	adc a,h			;319f
	ld a,b			;31a0
	ld a,b			;31a1
	ld a,b			;31a2
	ld a,b			;31a3
	ld a,b			;31a4
	ld a,b			;31a5
	ld a,b			;31a6
	ld a,b			;31a7
	ld a,b			;31a8
l31a9h:
	ld a,b			;31a9
	ld (bc),a			;31aa
	ld h,h			;31ab
	ld h,h			;31ac
	ld h,h			;31ad
	ld h,h			;31ae
	ld h,h			;31af
	ld h,h			;31b0
	ld h,h			;31b1
	ld h,h			;31b2
	ld h,h			;31b3
	ld h,h			;31b4
	ld h,h			;31b5
	ld h,h			;31b6
	ld h,h			;31b7
	ld l,c			;31b8
	ld l,(hl)			;31b9
	ld (hl),e			;31ba
l31bbh:
	ld a,b			;31bb
	ld a,l			;31bc
	add a,d			;31bd
	add a,a			;31be
	adc a,h			;31bf
	sub c			;31c0
	sub (hl)			;31c1
	sbc a,e			;31c2
	and b			;31c3
	rst 38h			;31c4
	or h			;31c5
	ld a,b			;31c6
	adc a,h			;31c7
l31c8h:
	ld a,b			;31c8
	ld l,(hl)			;31c9
	ld h,h			;31ca
	ld d,b			;31cb
	ld b,(hl)			;31cc
	inc a			;31cd
	ld (02b2dh),a		;31ce
	jr z,l31f1h		;31d1
	ld h,h			;31d3
	ld h,h			;31d4
	ld h,h			;31d5
	ld h,h			;31d6
	ld h,h			;31d7
	ld h,h			;31d8
	ld h,h			;31d9
	ld h,h			;31da
	ld h,h			;31db
	ld h,h			;31dc
	ld h,h			;31dd
	ld h,h			;31de
	ld h,h			;31df
	ld l,c			;31e0
	ld l,(hl)			;31e1
	ld (hl),e			;31e2
	ld a,b			;31e3
	ld a,l			;31e4
	add a,d			;31e5
	add a,a			;31e6
	adc a,h			;31e7
	sub c			;31e8
	sub (hl)			;31e9
	sbc a,e			;31ea
	and b			;31eb
	rst 38h			;31ec
	or h			;31ed
	ld a,b			;31ee
	adc a,h			;31ef
	ld a,b			;31f0
l31f1h:
	ld l,(hl)			;31f1
	ld h,h			;31f2
	ld d,b			;31f3
	ld b,(hl)			;31f4
	inc a			;31f5
	ld (02b2dh),a		;31f6
	jr z,$+30		;31f9
	ld iy,0c57eh		;31fb
	ld de,0c034h		;31ff
l3202h:
	ld ix,l31a9h		;3202
	ld hl,l31bbh		;3206
	exx			;3209
	ld b,009h		;320a
l320ch:
	exx			;320c
	push hl			;320d
	ld a,(iy+000h)		;320e
	or a			;3211
	jp m,l317fh		;3212
	rrca			;3215
	rrca			;3216
	rrca			;3217
	and 01fh		;3218
	sub (ix+000h)		;321a
	ld b,a			;321d
	jp c,l319ch		;321e
	ld a,(de)			;3221
	sub b			;3222
	jp z,l316dh		;3223
	jp p,l314fh		;3226
	neg		;3229
	ld c,b			;322b
	ld b,a			;322c
	ld a,c			;322d
	dec c			;322e
	ld (de),a			;322f
	push de			;3230
l3231h:
	ld a,c			;3231
	add a,a			;3232
	add a,c			;3233
	ld c,000h		;3234
l3236h:
	ld d,c			;3236
	ld e,a			;3237
	add hl,de			;3238
	ld a,(hl)			;3239
	out (0bfh),a		;323a
	inc hl			;323c
	ld a,(hl)			;323d
	out (0bfh),a		;323e
	dec hl			;3240
	xor a			;3241
	push af			;3242
	pop af			;3243
	out (0beh),a		;3244
	dec hl			;3246
	dec hl			;3247
	dec hl			;3248
	djnz l3231h		;3249
	pop de			;324b
	jp l316dh		;324c
	ld c,b			;324f
	ld b,a			;3250
	ld a,c			;3251
	ld (de),a			;3252
	push de			;3253
l3254h:
	ld a,c			;3254
	add a,a			;3255
	add a,c			;3256
	ld c,000h		;3257
	ld d,c			;3259
	ld e,a			;325a
	add hl,de			;325b
	ld a,(hl)			;325c
	out (0bfh),a		;325d
	inc hl			;325f
	ld a,(hl)			;3260
	out (0bfh),a		;3261
	inc hl			;3263
	ld a,(hl)			;3264
	push af			;3265
	pop af			;3266
	out (0beh),a		;3267
	inc hl			;3269
	djnz l3254h		;326a
	pop de			;326c
	pop hl			;326d
	ld bc,00008h		;326e
	add iy,bc		;3271
	ld c,04eh		;3273
	add hl,bc			;3275
	inc ix		;3276
	inc ix		;3278
	inc de			;327a
	exx			;327b
	djnz l320ch		;327c
	ret			;327e
	neg		;327f
	ld bc,00027h		;3281
	add hl,bc			;3284
	rrca			;3285
	rrca			;3286
	rrca			;3287
	and 01fh		;3288
	sub (ix+001h)		;328a
	ld b,a			;328d
	jp c,l319ch		;328e
	ld a,(de)			;3291
	sub b			;3292
	jp z,l316dh		;3293
	jp p,l314fh		;3296
	jp l3129h		;3299
	ld a,(de)			;329c
	or a			;329d
	jp z,l316dh		;329e
	ld b,a			;32a1
	xor a			;32a2
	ld c,a			;32a3
	ld (de),a			;32a4
	push de			;32a5
	jp 03154h		;32a6
l32a9h:
	ld a,(bc)			;32a9
l32aah:
	ld a,(bc)			;32aa
l32abh:
	add hl,bc			;32ab
l32ach:
	add hl,bc			;32ac
l32adh:
	ex af,af'			;32ad
	ex af,af'			;32ae
	rlca			;32af
	rlca			;32b0
	ld b,006h		;32b1
	dec b			;32b3
	dec b			;32b4
	inc b			;32b5
	inc b			;32b6
	inc bc			;32b7
	inc bc			;32b8
	ld (bc),a			;32b9
	ld (bc),a			;32ba
	ret pe			;32bb
	ld a,e			;32bc
	inc c			;32bd
	and 07bh		;32be
	dec c			;32c0
	call po,sub_207bh		;32c1
	jp po,sub_207bh		;32c4
	ret po			;32c7
	ld a,e			;32c8
	jr nz,l32a9h		;32c9
l32cbh:
	ld a,e			;32cb
	jr nz,l32aah		;32cc
	ld a,e			;32ce
	jr nz,l32abh		;32cf
	ld a,e			;32d1
	jr nz,l32ach		;32d2
	ld a,e			;32d4
l32d5h:
	jr nz,l32adh		;32d5
	ld a,e			;32d7
	dec c			;32d8
	call nc,00c7bh		;32d9
	jp nc,l017bh		;32dc
l32dfh:
	ret nc			;32df
	ld a,e			;32e0
	ld bc,07bd4h		;32e1
l32e4h:
	inc c			;32e4
	sub 07bh		;32e5
	dec c			;32e7
	ret c			;32e8
	ld a,e			;32e9
	jr nz,$-38		;32ea
	ld a,e			;32ec
	jr nz,l32cbh		;32ed
	ld a,e			;32ef
	jr nz,$-34		;32f0
	ld a,e			;32f2
	jr nz,l32d5h		;32f3
	ld a,e			;32f5
	jr nz,$-30		;32f6
	ld a,e			;32f8
	jr nz,l32dfh		;32f9
	ld a,e			;32fb
	jr nz,l32e4h		;32fc
	ld a,e			;32fe
	dec c			;32ff
	ret pe			;3300
	ld a,e			;3301
	inc c			;3302
	jp pe,l017bh		;3303
	call pe,l017bh		;3306
	ld hl,(l0f7ch)		;3309
	jr z,$+124		;330c
	djnz $+38		;330e
	ld a,h			;3310
	jr nz,l3337h		;3311
	ld a,h			;3313
	jr nz,l3338h		;3314
	ld a,h			;3316
	jr nz,$+32		;3317
	ld a,h			;3319
	jr nz,l333ah		;331a
	ld a,h			;331c
	jr nz,l333bh		;331d
	ld a,h			;331f
	jr nz,$+26		;3320
	ld a,h			;3322
	jr nz,l333dh		;3323
	ld a,h			;3325
	jr nz,l333eh		;3326
	ld a,h			;3328
	jr nz,$+20		;3329
	ld a,h			;332b
	djnz l3340h		;332c
	ld a,h			;332e
	rrca			;332f
	ld (de),a			;3330
	ld a,h			;3331
l3332h:
	rrca			;3332
l3333h:
	inc d			;3333
	ld a,h			;3334
	djnz l334dh		;3335
l3337h:
	ld a,h			;3337
l3338h:
	jr nz,l3352h		;3338
l333ah:
	ld a,h			;333a
l333bh:
	jr nz,l3357h		;333b
l333dh:
	ld a,h			;333d
l333eh:
	jr nz,l335ch		;333e
l3340h:
	ld a,h			;3340
	jr nz,l3361h		;3341
	ld a,h			;3343
	jr nz,$+32		;3344
	ld a,h			;3346
	jr nz,l336bh		;3347
	ld a,h			;3349
	jr nz,l3370h		;334a
	ld a,h			;334c
l334dh:
	jr nz,$+38		;334d
	ld a,h			;334f
	jr nz,l337ah		;3350
l3352h:
	ld a,h			;3352
	djnz l337fh		;3353
	ld a,h			;3355
l3356h:
	rrca			;3356
l3357h:
	ld l,h			;3357
	ld a,h			;3358
l3359h:
	ld (de),a			;3359
l335ah:
	ld l,d			;335a
l335bh:
	ld a,h			;335b
l335ch:
	inc de			;335c
l335dh:
	ld l,b			;335d
l335eh:
	ld a,h			;335e
l335fh:
	jr nz,l33c7h		;335f
l3361h:
	ld a,h			;3361
l3362h:
	jr nz,l33c8h		;3362
	ld a,h			;3364
	jr nz,$+98		;3365
	ld a,h			;3367
	jr nz,l33cah		;3368
	ld a,h			;336a
l336bh:
	jr nz,l33cbh		;336b
l336dh:
	ld a,h			;336d
	jr nz,$+92		;336e
l3370h:
	ld a,h			;3370
	jr nz,l33cdh		;3371
	ld a,h			;3373
	jr nz,l33ceh		;3374
	ld a,h			;3376
l3377h:
	jr nz,l33cfh		;3377
	ld a,h			;3379
l337ah:
	jr nz,l33d0h		;337a
l337ch:
	ld a,h			;337c
	jr nz,l33cfh		;337d
l337fh:
	ld a,h			;337f
	ld (de),a			;3380
l3381h:
	ld d,d			;3381
	ld a,h			;3382
	inc de			;3383
	ld d,h			;3384
	ld a,h			;3385
l3386h:
	jr nz,$+86		;3386
	ld a,h			;3388
	jr nz,l33e3h		;3389
l338bh:
	ld a,h			;338b
	jr nz,l33e8h		;338c
	ld a,h			;338e
	jr nz,$+92		;338f
	ld a,h			;3391
	jr nz,l33f2h		;3392
	ld a,h			;3394
l3395h:
	jr nz,l33f7h		;3395
	ld a,h			;3397
	jr nz,l33fch		;3398
	ld a,h			;339a
	jr nz,$+100		;339b
	ld a,h			;339d
	jr nz,l3406h		;339e
	ld a,h			;33a0
	jr nz,$+104		;33a1
	ld a,h			;33a3
	jr nz,l3356h		;33a4
	ld a,h			;33a6
	dec d			;33a7
	xor (hl)			;33a8
	ld a,h			;33a9
	ld d,0ach		;33aa
	ld a,h			;33ac
	rla			;33ad
	xor d			;33ae
	ld a,h			;33af
	jr nz,l335ah		;33b0
	ld a,h			;33b2
	jr nz,l335bh		;33b3
	ld a,h			;33b5
	jr nz,l335ch		;33b6
	ld a,h			;33b8
	jr nz,l335dh		;33b9
	ld a,h			;33bb
	jr nz,l335eh		;33bc
	ld a,h			;33be
	jr nz,l335fh		;33bf
	ld a,h			;33c1
	jr nz,$-100		;33c2
	ld a,h			;33c4
	jr nz,l3361h		;33c5
l33c7h:
	ld a,h			;33c7
l33c8h:
	jr nz,l3362h		;33c8
l33cah:
	ld a,h			;33ca
l33cbh:
	jr nz,l3359h		;33cb
l33cdh:
	ld a,h			;33cd
l33ceh:
	dec d			;33ce
l33cfh:
	adc a,(hl)			;33cf
l33d0h:
	ld a,h			;33d0
	ld d,090h		;33d1
	ld a,h			;33d3
	rla			;33d4
	sub d			;33d5
	ld a,h			;33d6
	jr nz,l336dh		;33d7
	ld a,h			;33d9
	jr nz,$-106		;33da
	ld a,h			;33dc
	jr nz,l3377h		;33dd
	ld a,h			;33df
	jr nz,l337ch		;33e0
	ld a,h			;33e2
l33e3h:
	jr nz,l3381h		;33e3
l33e5h:
	ld a,h			;33e5
l33e6h:
	jr nz,l3386h		;33e6
l33e8h:
	ld a,h			;33e8
	jr nz,l338bh		;33e9
	ld a,h			;33eb
l33ech:
	jr nz,$-94		;33ec
l33eeh:
	ld a,h			;33ee
l33efh:
	jr nz,l3395h		;33ef
l33f1h:
	ld a,h			;33f1
l33f2h:
	jr nz,l33e6h		;33f2
	ld a,h			;33f4
	add hl,de			;33f5
	ret p			;33f6
l33f7h:
	ld a,h			;33f7
	ld a,(de)			;33f8
l33f9h:
	xor 07ch		;33f9
	dec de			;33fb
l33fch:
	call pe,sub_207ch		;33fc
	jp pe,sub_207ch		;33ff
	ret pe			;3402
l3403h:
	ld a,h			;3403
	jr nz,l33ech		;3404
l3406h:
	ld a,h			;3406
	jr nz,$-28		;3407
	ld a,h			;3409
	jr nz,l33eeh		;340a
	ld a,h			;340c
l340dh:
	jr nz,l33efh		;340d
	ld a,h			;340f
	jr nz,$-34		;3410
l3412h:
	ld a,h			;3412
	jr nz,l33f1h		;3413
	ld a,h			;3415
	jr nz,l33f2h		;3416
	ld a,h			;3418
	jr nz,l33e5h		;3419
	ld a,h			;341b
l341ch:
	add hl,de			;341c
	call z,01a7ch		;341d
	adc a,07ch		;3420
	dec de			;3422
	ret nc			;3423
	ld a,h			;3424
	jr nz,l33f9h		;3425
	ld a,h			;3427
	jr nz,$-44		;3428
	ld a,h			;342a
	jr nz,l3403h		;342b
	ld a,h			;342d
	jr nz,$-40		;342e
l3430h:
	ld a,h			;3430
	jr nz,l340dh		;3431
l3433h:
	ld a,h			;3433
	jr nz,l3412h		;3434
	ld a,h			;3436
	jr nz,$-34		;3437
	ld a,h			;3439
	jr nz,l341ch		;343a
	ld a,h			;343c
	jr nz,$-30		;343d
	ld a,h			;343f
	jr nz,l3476h		;3440
	ld a,l			;3442
	dec e			;3443
	ld (l1e7dh),a		;3444
	jr nc,l34c6h		;3447
	rra			;3449
	ld l,07dh		;344a
	jr nz,$+44		;344c
	ld a,l			;344e
	jr nz,l347bh		;344f
	ld a,l			;3451
	jr nz,l347ch		;3452
	ld a,l			;3454
	jr nz,$+38		;3455
	ld a,l			;3457
	jr nz,l347eh		;3458
	ld a,l			;345a
	jr nz,l347fh		;345b
	ld a,l			;345d
	jr nz,$+32		;345e
	ld a,l			;3460
	jr nz,l3481h		;3461
	ld a,l			;3463
	jr nz,l3482h		;3464
	ld a,l			;3466
	jr nz,l3471h		;3467
	ld a,l			;3469
	dec e			;346a
	ld a,(bc)			;346b
	ld a,l			;346c
	ld e,00ch		;346d
	ld a,l			;346f
	rra			;3470
l3471h:
	ld c,07dh		;3471
	jr nz,l3485h		;3473
	ld a,l			;3475
l3476h:
	jr nz,l348ah		;3476
	ld a,l			;3478
sub_3479h:
	jr nz,$+20		;3479
l347bh:
	ld a,l			;347b
l347ch:
	jr nz,l3494h		;347c
l347eh:
	ld a,l			;347e
l347fh:
	jr nz,l3499h		;347f
l3481h:
	ld a,l			;3481
l3482h:
	jr nz,$+26		;3482
	ld a,l			;3484
l3485h:
	jr nz,l34a3h		;3485
	ld a,l			;3487
	jr nz,l34a8h		;3488
l348ah:
	ld a,l			;348a
	jr nz,$+32		;348b
	ld a,l			;348d
	jr nz,l3506h		;348e
	ld a,l			;3490
	ld (l7d74h),hl		;3491
l3494h:
	inc hl			;3494
	ld (hl),d			;3495
l3496h:
	ld a,l			;3496
	inc h			;3497
l3498h:
	ld (hl),b			;3498
l3499h:
	ld a,l			;3499
l349ah:
	jr nz,l350ah		;349a
l349ch:
	ld a,l			;349c
l349dh:
	jr nz,l350bh		;349d
l349fh:
	ld a,l			;349f
l34a0h:
	jr nz,l350ch		;34a0
l34a2h:
	ld a,l			;34a2
l34a3h:
	jr nz,$+104		;34a3
	ld a,l			;34a5
	jr nz,l350eh		;34a6
l34a8h:
	ld a,l			;34a8
	jr nz,l350fh		;34a9
	ld a,l			;34ab
l34ach:
	jr nz,$+98		;34ac
	ld a,l			;34ae
	jr nz,l3511h		;34af
l34b1h:
	ld a,l			;34b1
	jr nz,l3512h		;34b2
	ld a,l			;34b4
	jr nz,l34fdh		;34b5
	ld a,l			;34b7
	ld (l7d48h),hl		;34b8
l34bbh:
	inc hl			;34bb
	ld c,d			;34bc
	ld a,l			;34bd
	inc h			;34be
	ld c,h			;34bf
l34c0h:
	ld a,l			;34c0
	jr nz,l3511h		;34c1
	ld a,l			;34c3
	jr nz,$+80		;34c4
l34c6h:
	ld a,l			;34c6
	jr nz,l351bh		;34c7
	ld a,l			;34c9
	jr nz,l3520h		;34ca
	ld a,l			;34cc
	jr nz,$+86		;34cd
	ld a,l			;34cf
	jr nz,l352ah		;34d0
	ld a,l			;34d2
	jr nz,$+90		;34d3
	ld a,l			;34d5
	jr nz,l3534h		;34d6
	ld a,l			;34d8
	jr nz,$+94		;34d9
	ld a,l			;34db
	jr nz,l3496h		;34dc
	ld a,l			;34de
	ld h,0b6h		;34df
	ld a,l			;34e1
	daa			;34e2
	or h			;34e3
	ld a,l			;34e4
	jr z,l3499h		;34e5
	ld a,l			;34e7
	jr nz,l349ah		;34e8
	ld a,l			;34ea
	jr nz,$-82		;34eb
	ld a,l			;34ed
	jr nz,l349ch		;34ee
	ld a,l			;34f0
	jr nz,l349dh		;34f1
	ld a,l			;34f3
	jr nz,$-88		;34f4
	ld a,l			;34f6
	jr nz,l349fh		;34f7
	ld a,l			;34f9
	jr nz,l34a0h		;34fa
l34fch:
	ld a,l			;34fc
l34fdh:
	jr nz,$-94		;34fd
	ld a,l			;34ff
	jr nz,l34a2h		;3500
	ld a,l			;3502
	jr nz,$-124		;3503
	ld a,l			;3505
l3506h:
	ld h,086h		;3506
	ld a,l			;3508
	daa			;3509
l350ah:
	adc a,b			;350a
l350bh:
	ld a,l			;350b
l350ch:
	jr z,l3498h		;350c
l350eh:
	ld a,l			;350e
l350fh:
	jr nz,l349dh		;350f
l3511h:
	ld a,l			;3511
l3512h:
	jr nz,l34a2h		;3512
	ld a,l			;3514
l3515h:
	jr nz,$-112		;3515
	ld a,l			;3517
	jr nz,l34ach		;3518
	ld a,l			;351a
l351bh:
	jr nz,l34b1h		;351b
	ld a,l			;351d
	jr nz,$-106		;351e
l3520h:
	ld a,l			;3520
	jr nz,l34bbh		;3521
	ld a,l			;3523
	jr nz,l34c0h		;3524
l3526h:
	ld a,l			;3526
	jr nz,$-100		;3527
l3529h:
	ld a,l			;3529
l352ah:
	jr nz,l3526h		;352a
l352ch:
	ld a,l			;352c
l352dh:
	ld hl,(07df8h)		;352d
l3530h:
	dec hl			;3530
l3531h:
	or 07dh		;3531
l3533h:
	inc l			;3533
l3534h:
	call p,l207dh		;3534
l3537h:
	jp p,l207dh		;3537
	ret p			;353a
	ld a,l			;353b
	jr nz,l352ch		;353c
	ld a,l			;353e
	jr nz,l352dh		;353f
	ld a,l			;3541
l3542h:
	jr nz,$-22		;3542
	ld a,l			;3544
	jr nz,$-24		;3545
l3547h:
	ld a,l			;3547
	jr nz,l3530h		;3548
	ld a,l			;354a
	jr nz,l3531h		;354b
	ld a,l			;354d
	jr nz,$-30		;354e
	ld a,l			;3550
l3551h:
	jr nz,l3515h		;3551
	ld a,l			;3553
	ld hl,(l7dc4h)		;3554
	dec hl			;3557
	add a,07dh		;3558
	inc l			;355a
	ret z			;355b
	ld a,l			;355c
	jr nz,l3529h		;355d
	ld a,l			;355f
	jr nz,$-52		;3560
	ld a,l			;3562
	jr nz,l3533h		;3563
	ld a,l			;3565
	jr nz,$-48		;3566
	ld a,l			;3568
	jr nz,$-46		;3569
	ld a,l			;356b
	jr nz,l3542h		;356c
	ld a,l			;356e
	jr nz,l3547h		;356f
	ld a,l			;3571
	jr nz,$-40		;3572
	ld a,l			;3574
	jr nz,l3551h		;3575
	ld a,l			;3577
	jr nz,$+33		;3578
	jp p,l7ec2h		;357a
	or a			;357d
	ret nz			;357e
	ld hl,00000h		;357f
	ld a,(0c010h)		;3582
	add a,a			;3585
	add a,l			;3586
	ld l,a			;3587
	ld de,l78d5h		;3588
	add hl,de			;358b
	ld e,(hl)			;358c
	inc hl			;358d
	ld d,(hl)			;358e
	ld a,(0c011h)		;358f
	ld h,000h		;3592
	ld l,a			;3594
	ld c,a			;3595
	add hl,de			;3596
	ld a,(hl)			;3597
	cp 0ffh		;3598
	jp nz,l34a3h+1		;359a
	xor a			;359d
	ld (0c011h),a		;359e
	jp 03492h		;35a1
	ld e,c			;35a4
	inc e			;35a5
	ld d,a			;35a6
	and 00fh		;35a7
	cp 004h		;35a9
	jr nc,l35b4h		;35ab
	inc hl			;35ad
	inc e			;35ae
	ld c,(hl)			;35af
	ld hl,0c2f1h		;35b0
	ld (hl),c			;35b3
l35b4h:
	ld hl,0c2f0h		;35b4
	ld (hl),d			;35b7
	ld hl,00000h		;35b8
	ld a,(0c2f7h)		;35bb
	ld (0c2f4h),a		;35be
	nop			;35c1
	nop			;35c2
	nop			;35c3
	ld a,e			;35c4
	ld (0c011h),a		;35c5
	ld a,0ffh		;35c8
	ld (0c2f2h),a		;35ca
	ld a,d			;35cd
	and 01fh		;35ce
	ld l,a			;35d0
l35d1h:
	ld h,000h		;35d1
	add hl,hl			;35d3
	ld bc,l34fch		;35d4
	add hl,bc			;35d7
	ld c,(hl)			;35d8
	inc hl			;35d9
	ld b,(hl)			;35da
	ld (0c2f5h),bc		;35db
	bit 5,d		;35df
	jr nz,l35f0h		;35e1
	bit 7,d		;35e3
	jr nz,l35f6h		;35e5
	bit 6,d		;35e7
	ret z			;35e9
	ld a,005h		;35ea
	ld (0c04bh),a		;35ec
	ret			;35ef
l35f0h:
	ld a,003h		;35f0
	ld (0c06ch),a		;35f2
	ret			;35f5
l35f6h:
	ld a,003h		;35f6
	ld (0c06dh),a		;35f8
	ret			;35fb
	nop			;35fc
	nop			;35fd
	nop			;35fe
	nop			;35ff
	nop			;3600
	ld (bc),a			;3601
	ld b,b			;3602
	ld bc,00000h		;3603
l3606h:
	nop			;3606
	nop			;3607
	nop			;3608
	ld (bc),a			;3609
	ld b,b			;360a
	ld bc,l0200h		;360b
	ld b,b			;360e
	ld bc,l0200h		;360f
	nop			;3612
	nop			;3613
	nop			;3614
sub_3615h:
	nop			;3615
	nop			;3616
	nop			;3617
l3618h:
	nop			;3618
	nop			;3619
	nop			;361a
	nop			;361b
	nop			;361c
	nop			;361d
	nop			;361e
	nop			;361f
	nop			;3620
	cp 0c0h		;3621
	cp 000h		;3623
	nop			;3625
	nop			;3626
	nop			;3627
	nop			;3628
l3629h:
	cp 0c0h		;3629
	cp 000h		;362b
sub_362dh:
	cp 0c0h		;362d
	cp 000h		;362f
	cp 011h		;3631
	ld b,h			;3633
	dec (hl)			;3634
	ld hl,l7880h		;3635
l3638h:
	call 0062fh		;3638
	ld de,l3ca9h		;363b
	ld hl,l7980h		;363e
	jp 0062fh		;3641
	add hl,bc			;3644
	jr nz,l3667h		;3645
	jr nz,l35d1h		;3647
	adc a,c			;3649
	adc a,d			;364a
	adc a,e			;364b
	adc a,h			;364c
	jr nz,$+32		;364d
	sub c			;364f
	sub d			;3650
	sub e			;3651
	sub h			;3652
	jr nz,$+32		;3653
	jr nz,l3677h		;3655
	jr nz,l3679h		;3657
sub_3659h:
	jr nz,$+32		;3659
	jr nz,$+32		;365b
	jr nz,$+32		;365d
	jr nz,$+32		;365f
	jr nz,$+32		;3661
	jr nz,$+32		;3663
	jr nz,$+32		;3665
l3667h:
	jr nz,l35f6h		;3667
	adc a,(hl)			;3669
	adc a,a			;366a
	sub b			;366b
	jr nz,l368eh		;366c
	jr nz,$-107		;366e
	sub (hl)			;3670
	sub a			;3671
	sbc a,b			;3672
	sbc a,c			;3673
	jr nz,l3696h		;3674
	sub c			;3676
l3677h:
	sub d			;3677
	sub e			;3678
l3679h:
	sub h			;3679
	jr nz,$+32		;367a
	jr nz,$+32		;367c
	jr nz,$+32		;367e
	jr nz,l36a2h		;3680
	jr nz,l36a4h		;3682
	jr nz,$+32		;3684
sub_3686h:
	jr nz,$+32		;3686
	jr nz,$+32		;3688
	jr nz,$+32		;368a
	jr nz,$+32		;368c
l368eh:
	jr nz,$+32		;368e
	jr nz,$+32		;3690
	jr nz,$+32		;3692
	jr nz,$+32		;3694
l3696h:
	sub l			;3696
	sub (hl)			;3697
	sub a			;3698
	sbc a,b			;3699
	sbc a,c			;369a
	jr nz,l36bdh		;369b
	jr nz,l36bfh		;369d
	jr nz,l3629h		;369f
	adc a,c			;36a1
l36a2h:
	adc a,d			;36a2
	adc a,e			;36a3
l36a4h:
	adc a,h			;36a4
	jr nz,l36c7h		;36a5
	jr nz,$+32		;36a7
	jr nz,$+32		;36a9
	jr nz,l36cdh		;36ab
	jr nz,l36cfh		;36ad
	jr nz,l36d1h		;36af
	jr nz,l36d3h		;36b1
	jr nz,$+32		;36b3
	jr nz,l36d7h		;36b5
	jr nz,$+32		;36b7
	jr nz,$+32		;36b9
	jr nz,l36ddh		;36bb
l36bdh:
	jr nz,l36dfh		;36bd
l36bfh:
	jr nz,$-115		;36bf
	adc a,(hl)			;36c1
l36c2h:
	adc a,a			;36c2
	sub b			;36c3
	jr nz,l36c6h		;36c4
l36c6h:
	ld c,a			;36c6
l36c7h:
	ld a,(0c000h)		;36c7
	and 004h		;36ca
	ret nz			;36cc
l36cdh:
	ld a,c			;36cd
	add a,a			;36ce
l36cfh:
	add a,c			;36cf
	ld c,a			;36d0
l36d1h:
	ld b,000h		;36d1
l36d3h:
	ld hl,03646h		;36d3
	add hl,bc			;36d6
l36d7h:
	ld de,0c006h		;36d7
	ld b,003h		;36da
	or a			;36dc
l36ddh:
	ld a,(de)			;36dd
	adc a,(hl)			;36de
l36dfh:
	daa			;36df
	ld (de),a			;36e0
	dec de			;36e1
	dec hl			;36e2
	djnz l36ddh		;36e3
	ld a,0ffh		;36e5
	ld (0c072h),a		;36e7
	ret			;36ea
l36ebh:
	ld de,0c006h		;36eb
	ld hl,0c4c3h		;36ee
	ld b,003h		;36f1
	xor a			;36f3
l36f4h:
	ld a,(de)			;36f4
	sbc a,(hl)			;36f5
	dec hl			;36f6
	dec de			;36f7
	djnz l36f4h		;36f8
	ret c			;36fa
	inc de			;36fb
	inc hl			;36fc
	ex de,hl			;36fd
	ld bc,00003h		;36fe
	ldir		;3701
	ret			;3703
	ld hl,0c072h		;3704
	ld a,(hl)			;3707
sub_3708h:
	or a			;3708
	ret z			;3709
	ld (hl),000h		;370a
	ld hl,l780ch		;370c
	call 00018h		;370f
	ld hl,0c004h		;3712
	ld bc,00300h		;3715
l3718h:
	ld a,(hl)			;3718
	rrca			;3719
	rrca			;371a
	rrca			;371b
	rrca			;371c
	call sub_362dh		;371d
	ld a,b			;3720
	dec a			;3721
	jr nz,l3725h		;3722
	ld c,b			;3724
l3725h:
	ld a,(hl)			;3725
	call sub_362dh		;3726
	inc hl			;3729
	djnz l3718h		;372a
	ret			;372c
	and 00fh		;372d
	jr nz,l3738h		;372f
	cp c			;3731
	jr nz,l3738h		;3732
l3734h:
	ld a,020h		;3734
	jr l373bh		;3736
l3738h:
	add a,030h		;3738
	ld c,a			;373a
l373bh:
	out (0beh),a		;373b
	ld a,009h		;373d
	push af			;373f
	pop af			;3740
	out (0beh),a		;3741
	ret			;3743
	nop			;3744
	nop			;3745
	ld bc,00000h		;3746
	ld (bc),a			;3749
	nop			;374a
	nop			;374b
	inc bc			;374c
	nop			;374d
	nop			;374e
	inc b			;374f
	nop			;3750
	ld bc,00000h		;3751
	ld bc,00000h		;3754
	nop			;3757
	jr nc,l377bh		;3758
	add a,h			;375a
	ld a,e			;375b
	ld de,l36ddh		;375c
	ld bc,00207h		;375f
	call sub_3708h		;3762
	ld hl,l7bb6h		;3765
	ld de,l36ddh		;3768
l376bh:
	ld bc,00207h		;376b
	call sub_3708h		;376e
	ld a,004h		;3771
	ld (0c049h),a		;3773
	ld a,0aeh		;3776
	ld (0c04ah),a		;3778
l377bh:
	ld a,005h		;377b
	ld (0c064h),a		;377d
	ld a,086h		;3780
	ld (0c100h),a		;3782
	ret			;3785
	ld a,(0c049h)		;3786
	or a			;3789
	ret z			;378a
	ld hl,0c04ah		;378b
	dec (hl)			;378e
	ret nz			;378f
	ld (hl),030h		;3790
	dec a			;3792
	ld (0c049h),a		;3793
	jp z,l36c2h		;3796
	dec a			;3799
	ld c,a			;379a
	add a,a			;379b
	add a,a			;379c
	add a,c			;379d
sub_379eh:
	ld l,a			;379e
	ld h,000h		;379f
	ld de,036f9h		;37a1
	add hl,de			;37a4
	ld c,(hl)			;37a5
	inc hl			;37a6
	ld e,(hl)			;37a7
	inc hl			;37a8
	ld d,(hl)			;37a9
	inc hl			;37aa
	ld a,(hl)			;37ab
	inc hl			;37ac
	ld h,(hl)			;37ad
	ld l,a			;37ae
	ld b,002h		;37af
	push hl			;37b1
	push de			;37b2
	push bc			;37b3
	call sub_3708h		;37b4
	pop bc			;37b7
	pop de			;37b8
	pop hl			;37b9
	ld a,l			;37ba
	add a,032h		;37bb
	ld l,a			;37bd
	call sub_3708h		;37be
	ret			;37c1
	ld hl,l7b84h		;37c2
	ld de,l0100h		;37c5
	ld bc,00207h		;37c8
	call 03723h		;37cb
	ld hl,l7bb6h		;37ce
	ld bc,00207h		;37d1
	call 03723h		;37d4
	ld a,00ah		;37d7
	ld (0c064h),a		;37d9
	ret			;37dc
	ld (hl),h			;37dd
	ld (hl),l			;37de
	ld a,b			;37df
	ld a,c			;37e0
	ld a,(hl)			;37e1
	ld a,a			;37e2
	add a,b			;37e3
	add a,c			;37e4
	ld a,b			;37e5
	ld a,c			;37e6
	add a,h			;37e7
	add a,l			;37e8
	add a,(hl)			;37e9
	add a,a			;37ea
	halt			;37eb
	ld (hl),a			;37ec
	ld a,b			;37ed
	ld a,c			;37ee
	ld a,d			;37ef
	ld a,e			;37f0
	ld a,h			;37f1
	ld a,l			;37f2
	ld a,(hl)			;37f3
	ld a,a			;37f4
	add a,b			;37f5
sub_37f6h:
	add a,c			;37f6
	add a,d			;37f7
	add a,e			;37f8
	inc bc			;37f9
	di			;37fa
	ld (hl),004h		;37fb
	ld a,h			;37fd
	inc bc			;37fe
	.DB 0edh;next byte illegal after ed		;37ff
l3800h:
	ld (hl),0c4h		;3800
	ld a,e			;3802
	ld bc,l36ebh		;3803
	call nz,0c57bh		;3806
	rst 18h			;3809
l380ah:
	ld a,(de)			;380a
	out (0beh),a		;380b
	ld a,009h		;380d
	push af			;380f
	pop af			;3810
	out (0beh),a		;3811
	inc de			;3813
	djnz l380ah		;3814
	pop bc			;3816
	ld a,l			;3817
	add a,040h		;3818
	ld l,a			;381a
	ld a,h			;381b
l381ch:
	adc a,000h		;381c
l381eh:
	ld h,a			;381e
	dec c			;381f
	jr nz,$-26		;3820
	ret			;3822
l3823h:
	push bc			;3823
	rst 18h			;3824
l3825h:
	ld a,e			;3825
	out (0beh),a		;3826
	ld a,d			;3828
	push af			;3829
	pop af			;382a
	out (0beh),a		;382b
	djnz l3825h		;382d
	pop bc			;382f
l3830h:
	ld a,l			;3830
	add a,040h		;3831
	ld l,a			;3833
	ld a,h			;3834
	adc a,000h		;3835
	ld h,a			;3837
	dec c			;3838
l3839h:
	jr nz,l3823h		;3839
	ret			;383b
	ld hl,0c071h		;383c
	ld a,(0c318h)		;383f
	cp (hl)			;3842
sub_3843h:
	ret z			;3843
	ld (hl),a			;3844
	add a,a			;3845
	add a,a			;3846
	ld l,a			;3847
	ld h,000h		;3848
	ld de,l376bh		;384a
	add hl,de			;384d
	ex de,hl			;384e
	ld hl,l7822h		;384f
	rst 18h			;3852
	ld a,(de)			;3853
	out (0beh),a		;3854
	inc de			;3856
	push af			;3857
	pop af			;3858
	ld a,(de)			;3859
	out (0beh),a		;385a
	inc de			;385c
	ld hl,l7862h		;385d
	rst 18h			;3860
	ld a,(de)			;3861
	out (0beh),a		;3862
	inc de			;3864
	push af			;3865
	pop af			;3866
	ld a,(de)			;3867
	out (0beh),a		;3868
	ret			;386a
	ld (hl),b			;386b
	add hl,bc			;386c
	ld (hl),d			;386d
	dec c			;386e
	ld (hl),c			;386f
sub_3870h:
	add hl,bc			;3870
	ld (hl),c			;3871
	dec c			;3872
	ld (hl),d			;3873
	add hl,bc			;3874
	ld (hl),b			;3875
	dec c			;3876
	ld hl,l7874h		;3877
	rst 18h			;387a
	ld hl,0c060h		;387b
	ld a,(hl)			;387e
	or 030h		;387f
	out (0beh),a		;3881
	ld a,009h		;3883
	push af			;3885
	pop af			;3886
	out (0beh),a		;3887
	ld a,051h		;3889
	push af			;388b
	pop af			;388c
	out (0beh),a		;388d
	ld a,009h		;388f
	push af			;3891
	pop af			;3892
	out (0beh),a		;3893
	ld hl,0c061h		;3895
	ld bc,l0101h		;3898
	jp l3618h		;389b
	ld hl,(0c060h)		;389e
	ld a,l			;38a1
sub_38a2h:
	or h			;38a2
	ret z			;38a3
	ld hl,(0c02ah)		;38a4
	ld de,(0c062h)		;38a7
	add hl,de			;38ab
	ld (0c062h),hl		;38ac
	ld a,h			;38af
	cp 008h		;38b0
	ret c			;38b2
	xor a			;38b3
	ld (0c063h),a		;38b4
	ld hl,0c061h		;38b7
	ld a,(hl)			;38ba
	sbc a,001h		;38bb
	daa			;38bd
	ld (hl),a			;38be
	dec hl			;38bf
	ld a,(hl)			;38c0
	sbc a,000h		;38c1
	daa			;38c3
	ld (hl),a			;38c4
	or a			;38c5
	jr nz,l38d3h		;38c6
	inc hl			;38c8
	ld a,(hl)			;38c9
	cp 004h		;38ca
	jr nz,l38d3h		;38cc
	ld a,001h		;38ce
	ld (0c066h),a		;38d0
l38d3h:
	ld hl,(0c02ah)		;38d3
	ld c,004h		;38d6
	ld a,h			;38d8
	or a			;38d9
	ld a,l			;38da
	jr z,l38e9h		;38db
	cp 02ch		;38dd
	jr nc,l38f2h		;38df
	dec c			;38e1
	cp 015h		;38e2
	jr nc,l38f2h		;38e4
	dec c			;38e6
	jr l38f2h		;38e7
l38e9h:
	ld c,001h		;38e9
	cp 096h		;38eb
	jr nc,l38f2h		;38ed
	dec c			;38ef
	or a			;38f0
	ret z			;38f1
l38f2h:
	ld a,c			;38f2
	jp 035c6h		;38f3
	ld a,(0c069h)		;38f6
	or a			;38f9
	ret nz			;38fa
	ld a,(0c068h)		;38fb
	or a			;38fe
	ret z			;38ff
	dec a			;3900
l3901h:
	jr nz,l3912h		;3901
l3903h:
	ld a,(0c007h)		;3903
	cp 004h		;3906
	ld a,000h		;3908
	jr nz,l3912h		;390a
l390ch:
	ld a,003h		;390c
	ld (0c06ah),a		;390e
	xor a			;3911
l3912h:
	ld (0c068h),a		;3912
	add a,a			;3915
	add a,a			;3916
	add a,a			;3917
	add a,a			;3918
	ld l,a			;3919
	ld h,000h		;391a
	add hl,hl			;391c
	add hl,hl			;391d
	ex de,hl			;391e
	ld a,(0c007h)		;391f
	add a,a			;3922
	ld l,a			;3923
	ld h,000h		;3924
	ld bc,l3839h		;3926
	add hl,bc			;3929
	ld c,(hl)			;392a
	inc hl			;392b
	ld b,(hl)			;392c
	ld hl,l5d40h		;392d
	add hl,de			;3930
l3931h:
	ex de,hl			;3931
	add hl,bc			;3932
	ld bc,040beh		;3933
	jp 00020h		;3936
	nop			;3939
	rst 0			;393a
	add a,b			;393b
	ret z			;393c
	add a,b			;393d
	jp z,0cd40h		;393e
	nop			;3941
	rst 0			;3942
	ld a,(0c069h)		;3943
	or a			;3946
	ret z			;3947
	dec a			;3948
	ld (0c069h),a		;3949
	add a,a			;394c
	add a,a			;394d
	add a,a			;394e
	add a,a			;394f
	ld l,a			;3950
	ld h,000h		;3951
	add hl,hl			;3953
	add hl,hl			;3954
	add hl,hl			;3955
	ex de,hl			;3956
l3957h:
	ld hl,0d000h		;3957
	ld a,(0c06eh)		;395a
	or a			;395d
	jr nz,l3963h		;395e
	ld hl,0d8a0h		;3960
l3963h:
	add hl,de			;3963
	ex de,hl			;3964
	ld bc,l4cc0h		;3965
	add hl,bc			;3968
	ld bc,l80beh		;3969
	ex de,hl			;396c
	jp 00020h		;396d
	ld a,(0c069h)		;3970
	or a			;3973
	ret nz			;3974
	ld a,(0c06ah)		;3975
	or a			;3978
	ret z			;3979
	dec a			;397a
l397bh:
	ld (0c06ah),a		;397b
	add a,a			;397e
	add a,a			;397f
	add a,a			;3980
l3981h:
	add a,a			;3981
	ld l,a			;3982
	ld h,000h		;3983
	add hl,hl			;3985
	add hl,hl			;3986
	ex de,hl			;3987
	ld hl,0d700h		;3988
	ld a,(0c007h)		;398b
	cp 004h		;398e
	jr z,l3995h		;3990
	ld hl,0d7e0h		;3992
l3995h:
	add hl,de			;3995
	ex de,hl			;3996
	ld bc,04400h		;3997
	add hl,bc			;399a
	ld bc,040beh		;399b
	ex de,hl			;399e
	jp 00020h		;399f
	ld hl,(0c02ah)		;39a2
	ld de,(0c057h)		;39a5
l39a9h:
	add hl,de			;39a9
	ld (0c057h),hl		;39aa
	ld a,h			;39ad
	cp d			;39ae
	jr nz,l39bdh		;39af
	ld hl,(0c05ah)		;39b1
	ld de,(0c05ch)		;39b4
	add hl,de			;39b8
	ld (0c05ah),hl		;39b9
	ret			;39bc
l39bdh:
	ld hl,(0c2f5h)		;39bd
	bit 7,h		;39c0
	jr z,l39dch		;39c2
	ld a,l			;39c4
	cpl			;39c5
	ld l,a			;39c6
	ld a,h			;39c7
	cpl			;39c8
	ld h,a			;39c9
	inc hl			;39ca
	ld a,l			;39cb
	srl h		;39cc
	rra			;39ce
	srl h		;39cf
	rra			;39d1
	neg		;39d2
	ld e,a			;39d4
	ld d,0ffh		;39d5
	jr nz,l39e6h		;39d7
	inc d			;39d9
	jr l39e6h		;39da
l39dch:
	ld a,l			;39dc
	srl h		;39dd
	rra			;39df
	srl h		;39e0
	rra			;39e2
	ld d,000h		;39e3
	ld e,a			;39e5
l39e6h:
	ld hl,(0c05ch)		;39e6
	add hl,de			;39e9
	ld de,(0c05ah)		;39ea
	add hl,de			;39ee
	ld (0c05ah),hl		;39ef
	ld hl,(0c2f5h)		;39f2
	ld d,l			;39f5
	ld c,h			;39f6
	ld a,(0c053h)		;39f7
	add a,d			;39fa
	ld (0c053h),a		;39fb
	ld hl,(0c051h)		;39fe
	ld d,h			;3a01
	ld e,l			;3a02
	ld b,000h		;3a03
	bit 7,c		;3a05
	jr z,l3a0bh		;3a07
	ld b,0ffh		;3a09
l3a0bh:
	adc hl,bc		;3a0b
	or a			;3a0d
	sbc hl,de		;3a0e
	ld a,l			;3a10
	ld (0c026h),a		;3a11
	ld a,(0c026h)		;3a14
	or a			;3a17
	ret z			;3a18
	ld e,a			;3a19
	ld d,000h		;3a1a
	jp p,03920h		;3a1c
	dec d			;3a1f
	ld c,e			;3a20
	ld hl,(0c051h)		;3a21
	ex de,hl			;3a24
	add hl,de			;3a25
	res 1,h		;3a26
	ld a,h			;3a28
	cp d			;3a29
	jr z,l3a42h		;3a2a
	push hl			;3a2c
	push de			;3a2d
	ld a,(0c04bh)		;3a2e
	add a,a			;3a31
	ld e,a			;3a32
	ld d,000h		;3a33
	ld hl,0399dh		;3a35
	add hl,de			;3a38
	ld e,(hl)			;3a39
l3a3ah:
	inc hl			;3a3a
	ld d,(hl)			;3a3b
	ex de,hl			;3a3c
	ld (0c04dh),hl		;3a3d
	pop de			;3a40
	pop hl			;3a41
l3a42h:
	ld (0c051h),hl		;3a42
	ld a,e			;3a45
	and 0f8h		;3a46
	ld b,a			;3a48
l3a49h:
	ld a,l			;3a49
	and 0f8h		;3a4a
	cp b			;3a4c
	ret z			;3a4d
	ld a,(0c026h)		;3a4e
	or a			;3a51
	ld a,l			;3a52
	jp p,l3957h		;3a53
	ld a,e			;3a56
	rrca			;3a57
l3a58h:
	rrca			;3a58
l3a59h:
	and 03eh		;3a59
	ld c,a			;3a5b
l3a5ch:
	ld b,000h		;3a5c
	ex de,hl			;3a5e
	ld hl,07a40h		;3a5f
l3a62h:
	add hl,bc			;3a62
l3a63h:
	ex de,hl			;3a63
	srl h		;3a64
	rr l		;3a66
	ld a,l			;3a68
	rra			;3a69
	rra			;3a6a
	and 03fh		;3a6b
	ld c,a			;3a6d
	ld a,(0c026h)		;3a6e
	or a			;3a71
	jp p,l397bh		;3a72
	ld a,c			;3a75
	add a,021h		;3a76
	and 03fh		;3a78
	ld c,a			;3a7a
	ld a,c			;3a7b
	add a,a			;3a7c
	add a,c			;3a7d
	ld c,a			;3a7e
l3a7fh:
	ld b,000h		;3a7f
	ld hl,(0c04dh)		;3a81
	add hl,bc			;3a84
	ex de,hl			;3a85
	rst 18h			;3a86
l3a87h:
	ld a,(de)			;3a87
	out (0beh),a		;3a88
	inc de			;3a8a
l3a8bh:
	ld a,l			;3a8b
	add a,040h		;3a8c
	ld l,a			;3a8e
	rst 18h			;3a8f
	ld a,(de)			;3a90
	out (0beh),a		;3a91
	inc de			;3a93
	ld a,l			;3a94
	add a,040h		;3a95
	ld l,a			;3a97
	rst 18h			;3a98
	ld a,(de)			;3a99
	out (0beh),a		;3a9a
	ret			;3a9c
	xor c			;3a9d
	add hl,sp			;3a9e
	ld l,c			;3a9f
	ld a,(l3b29h)		;3aa0
	jp (hl)			;3aa3
	dec sp			;3aa4
	xor c			;3aa5
	add hl,sp			;3aa6
	xor d			;3aa7
	inc a			;3aa8
	jr nz,$+32		;3aa9
	jr nz,l3acdh		;3aab
	jr nz,l3a49h		;3aad
	jr nz,l3ad1h		;3aaf
	sbc a,e			;3ab1
	jr nz,l3ad4h		;3ab2
	sbc a,h			;3ab4
	jr nz,l3a58h		;3ab5
	sbc a,l			;3ab7
	jr nz,l3a5ch		;3ab8
	sbc a,(hl)			;3aba
	jr nz,l3a59h		;3abb
	sbc a,a			;3abd
	jr nz,l3a63h		;3abe
l3ac0h:
	and b			;3ac0
	jr nz,$-92		;3ac1
	sbc a,(hl)			;3ac3
	jr nz,l3a62h		;3ac4
	sbc a,(hl)			;3ac6
	jr nz,$-100		;3ac7
	sbc a,a			;3ac9
l3acah:
	jr nz,$-93		;3aca
	and b			;3acc
l3acdh:
	sbc a,d			;3acd
	sbc a,l			;3ace
	sbc a,l			;3acf
	and l			;3ad0
l3ad1h:
	sbc a,l			;3ad1
	sbc a,(hl)			;3ad2
	and (hl)			;3ad3
l3ad4h:
	sbc a,(hl)			;3ad4
	sbc a,a			;3ad5
	and a			;3ad6
	sbc a,a			;3ad7
	and b			;3ad8
	jr nz,l3a7fh		;3ad9
	sbc a,(hl)			;3adb
	jr nz,$-91		;3adc
	sbc a,a			;3ade
	jr nz,l3a87h		;3adf
	and b			;3ae1
	jr nz,l3a8bh		;3ae2
	sbc a,l			;3ae4
	jr nz,$+32		;3ae5
	and b			;3ae7
	jr nz,l3b0ah		;3ae8
	and h			;3aea
	jr nz,$+32		;3aeb
	sbc a,h			;3aed
	jr nz,$+32		;3aee
	and e			;3af0
l3af1h:
	jr nz,$+32		;3af1
	sbc a,l			;3af3
	jr nz,$+32		;3af4
	and h			;3af6
	jr nz,$+32		;3af7
	and l			;3af9
	jr nz,$+32		;3afa
l3afch:
	and (hl)			;3afc
	jr nz,$+32		;3afd
	and a			;3aff
l3b00h:
	jr nz,$+32		;3b00
	jr nz,l3b24h		;3b02
	jr nz,l3b26h		;3b04
	jr nz,$+32		;3b06
	jr nz,l3b2ah		;3b08
l3b0ah:
	jr nz,l3b2ch		;3b0a
	jr nz,l3b2eh		;3b0c
	xor b			;3b0e
	jr nz,$+32		;3b0f
	xor b			;3b11
	jr nz,$+32		;3b12
	xor d			;3b14
	jr nz,l3ac0h		;3b15
	xor e			;3b17
	jr nz,$+32		;3b18
	xor e			;3b1a
	jr nz,$+32		;3b1b
	xor e			;3b1d
l3b1eh:
	jr nz,$+32		;3b1e
	xor e			;3b20
	jr nz,$+32		;3b21
	xor b			;3b23
l3b24h:
	jr nz,$+32		;3b24
l3b26h:
	xor b			;3b26
	jr nz,$+32		;3b27
l3b29h:
	xor b			;3b29
l3b2ah:
	jr nz,$+32		;3b2a
l3b2ch:
	jr nz,l3b4eh		;3b2c
l3b2eh:
	jr nz,l3acah		;3b2e
	jr nz,$+32		;3b30
	sbc a,e			;3b32
	jr nz,$+32		;3b33
	sbc a,h			;3b35
	jr nz,$+32		;3b36
	sbc a,l			;3b38
	jr nz,$+32		;3b39
	and h			;3b3b
	jr nz,$+32		;3b3c
	and l			;3b3e
	jr nz,$+32		;3b3f
	and (hl)			;3b41
	jr nz,$+32		;3b42
	and a			;3b44
	jr nz,$+32		;3b45
	sbc a,d			;3b47
	jr nz,l3b6ah		;3b48
	sbc a,e			;3b4a
	jr nz,$+32		;3b4b
	sbc a,h			;3b4d
l3b4eh:
	jr nz,l3af1h		;3b4e
	sbc a,l			;3b50
	jr nz,$-94		;3b51
	sbc a,(hl)			;3b53
	jr nz,$-100		;3b54
l3b56h:
	sbc a,a			;3b56
	jr nz,l3afch		;3b57
	sbc a,l			;3b59
	jr nz,l3b00h		;3b5a
	sbc a,(hl)			;3b5c
	jr nz,$-90		;3b5d
	sbc a,a			;3b5f
	jr nz,$+32		;3b60
	and h			;3b62
	jr nz,$+32		;3b63
	and (hl)			;3b65
l3b66h:
	jr nz,$+32		;3b66
	jr nz,l3b8ah		;3b68
l3b6ah:
	jr nz,l3b1eh		;3b6a
	jr nz,$+32		;3b6c
	sbc a,e			;3b6e
	jr nz,$+32		;3b6f
	sbc a,h			;3b71
	jr nz,$+32		;3b72
	sbc a,l			;3b74
	jr nz,$+32		;3b75
	and h			;3b77
	jr nz,$+32		;3b78
	and l			;3b7a
	jr nz,$+32		;3b7b
	and (hl)			;3b7d
	jr nz,$+32		;3b7e
	xor h			;3b80
	jr nz,$+32		;3b81
	xor h			;3b83
	jr nz,$+32		;3b84
	xor h			;3b86
	jr nz,$+32		;3b87
	xor h			;3b89
l3b8ah:
	jr nz,$+32		;3b8a
	xor l			;3b8c
	jr nz,$+32		;3b8d
	xor (hl)			;3b8f
	jr nz,$+32		;3b90
	xor h			;3b92
	jr nz,$+32		;3b93
	xor h			;3b95
	jr nz,$+32		;3b96
	xor h			;3b98
	jr nz,$+32		;3b99
	xor h			;3b9b
	jr nz,$+32		;3b9c
	or b			;3b9e
	jr nz,$+32		;3b9f
	xor (hl)			;3ba1
	jr nz,$+32		;3ba2
	xor h			;3ba4
	jr nz,$+32		;3ba5
	xor h			;3ba7
	jr nz,$+32		;3ba8
	xor h			;3baa
	jr nz,$+32		;3bab
	xor h			;3bad
	jr nz,$+32		;3bae
	xor h			;3bb0
	jr nz,$+32		;3bb1
	sbc a,d			;3bb3
	jr nz,$+32		;3bb4
	sbc a,e			;3bb6
	jr nz,$+32		;3bb7
	sbc a,h			;3bb9
	jr nz,l3b56h		;3bba
	sbc a,l			;3bbc
	jr nz,l3b66h		;3bbd
	sbc a,(hl)			;3bbf
	jr nz,$+32		;3bc0
	and h			;3bc2
	jr nz,$+32		;3bc3
	and l			;3bc5
	jr nz,$+32		;3bc6
	and (hl)			;3bc8
	jr nz,$+32		;3bc9
	sbc a,d			;3bcb
	jr nz,$+32		;3bcc
	sbc a,e			;3bce
	jr nz,$+32		;3bcf
	and l			;3bd1
	jr nz,$+32		;3bd2
	and (hl)			;3bd4
	jr nz,$+32		;3bd5
	xor h			;3bd7
	jr nz,$+32		;3bd8
	xor h			;3bda
	jr nz,$+32		;3bdb
	xor h			;3bdd
	jr nz,$+32		;3bde
	xor h			;3be0
	jr nz,$+32		;3be1
	xor a			;3be3
	jr nz,$+32		;3be4
	xor h			;3be6
	jr nz,$+32		;3be7
	xor h			;3be9
	jr nz,$+32		;3bea
	xor h			;3bec
	jr nz,$+32		;3bed
	xor h			;3bef
	jr nz,$+32		;3bf0
	xor h			;3bf2
	jr nz,$+32		;3bf3
	xor h			;3bf5
	jr nz,$+32		;3bf6
	xor h			;3bf8
	jr nz,$+32		;3bf9
	xor h			;3bfb
	jr nz,$+32		;3bfc
	xor h			;3bfe
l3bffh:
	jr nz,$+32		;3bff
	xor h			;3c01
	jr nz,$+32		;3c02
	xor a			;3c04
	jr nz,$+32		;3c05
l3c07h:
	xor h			;3c07
	jr nz,$+32		;3c08
	xor h			;3c0a
	jr nz,l3c2dh		;3c0b
	or c			;3c0d
	jr nz,$+32		;3c0e
	xor (hl)			;3c10
	jr nz,$+32		;3c11
	xor h			;3c13
	jr nz,$+32		;3c14
	xor h			;3c16
	jr nz,$+32		;3c17
l3c19h:
	xor h			;3c19
	jr nz,$+32		;3c1a
	sbc a,d			;3c1c
l3c1dh:
	jr nz,l3c3fh		;3c1d
	and d			;3c1f
	jr nz,$+32		;3c20
	and l			;3c22
	jr nz,l3c45h		;3c23
l3c25h:
	and (hl)			;3c25
l3c26h:
	jr nz,$+32		;3c26
	and a			;3c28
	jr nz,l3c4bh		;3c29
	jr nz,l3c4dh		;3c2b
l3c2dh:
	jr nz,l3c4fh		;3c2d
	jr nz,l3c51h		;3c2f
	or d			;3c31
	jr nz,l3c54h		;3c32
	or e			;3c34
	jr nz,$+32		;3c35
	or h			;3c37
	jr nz,$+32		;3c38
	or l			;3c3a
l3c3bh:
	jr nz,$+32		;3c3b
	jr nz,l3c5fh		;3c3d
l3c3fh:
	jr nz,l3c61h		;3c3f
	jr nz,$+32		;3c41
	jr nz,l3c65h		;3c43
l3c45h:
	jr nz,l3c67h		;3c45
	jr nz,$+32		;3c47
	jr nz,l3c6bh		;3c49
l3c4bh:
	jr nz,l3bffh		;3c4b
l3c4dh:
	jr nz,l3c07h		;3c4d
l3c4fh:
	or e			;3c4f
l3c50h:
	or (hl)			;3c50
l3c51h:
	cp c			;3c51
	cp e			;3c52
	or a			;3c53
l3c54h:
	cp d			;3c54
	cp h			;3c55
	jr nz,$+32		;3c56
l3c58h:
	or h			;3c58
	jr nz,$+32		;3c59
	or l			;3c5b
	jr nz,$+32		;3c5c
l3c5eh:
	or d			;3c5e
l3c5fh:
	jr nz,l3c19h		;3c5f
l3c61h:
	or e			;3c61
l3c62h:
	jr nz,l3c1dh		;3c62
	cp e			;3c64
l3c65h:
	jr nz,$-70		;3c65
l3c67h:
	cp h			;3c67
	jr nz,l3c25h		;3c68
	cp e			;3c6a
l3c6bh:
	jr nz,$-70		;3c6b
	cp e			;3c6d
	jr nz,l3c26h		;3c6e
	cp c			;3c70
	jr nz,$-73		;3c71
	cp d			;3c73
	jr nz,$-72		;3c74
	or e			;3c76
	jr nz,l3c2dh		;3c77
	cp e			;3c79
l3c7ah:
	jr nz,$-70		;3c7a
	cp e			;3c7c
	jr nz,$+32		;3c7d
	or h			;3c7f
	jr nz,$+32		;3c80
l3c82h:
	or l			;3c82
	jr nz,$+32		;3c83
	jr nz,l3ca7h		;3c85
	jr nz,l3ca9h		;3c87
	jr nz,$+32		;3c89
	jr nz,l3cadh		;3c8b
	jr nz,l3cafh		;3c8d
l3c8fh:
	jr nz,$+32		;3c8f
	or d			;3c91
	jr nz,$-72		;3c92
	or e			;3c94
l3c95h:
	jr nz,l3c50h		;3c95
	cp e			;3c97
	jr nz,l3c54h		;3c98
	cp h			;3c9a
	jr nz,$+32		;3c9b
	or h			;3c9d
	jr nz,l3c58h		;3c9e
	or e			;3ca0
	jr nz,$-70		;3ca1
	cp e			;3ca3
	jr nz,$-76		;3ca4
	cp h			;3ca6
l3ca7h:
	jr nz,$+32		;3ca7
l3ca9h:
	or h			;3ca9
	jr nz,l3c5eh		;3caa
	cp e			;3cac
l3cadh:
	jr nz,l3c62h		;3cad
l3cafh:
	cp h			;3caf
	jr nz,$-70		;3cb0
	cp h			;3cb2
	jr nz,$-73		;3cb3
	cp d			;3cb5
	jr nz,$+32		;3cb6
	or h			;3cb8
	jr nz,l3cdbh		;3cb9
	or l			;3cbb
	jr nz,$+32		;3cbc
	jr nz,l3ce0h		;3cbe
	jr nz,l3ce2h		;3cc0
	jr nz,$+32		;3cc2
	jr nz,l3ce6h		;3cc4
	jr nz,l3c7ah		;3cc6
	jr nz,l3c82h		;3cc8
	or e			;3cca
	or (hl)			;3ccb
	cp c			;3ccc
	cp e			;3ccd
	or a			;3cce
	cp d			;3ccf
	cp h			;3cd0
	jr nz,l3cf3h		;3cd1
	or h			;3cd3
	jr nz,$+32		;3cd4
	or l			;3cd6
	jr nz,l3cf9h		;3cd7
	jr nz,$+32		;3cd9
l3cdbh:
	jr nz,l3c8fh		;3cdb
	jr nz,l3c95h		;3cdd
	cp c			;3cdf
l3ce0h:
	jr nz,$-73		;3ce0
l3ce2h:
	cp d			;3ce2
	jr nz,$+32		;3ce3
	or h			;3ce5
l3ce6h:
	jr nz,$+32		;3ce6
	or l			;3ce8
	jr nz,$+32		;3ce9
	cp l			;3ceb
	jr nz,$+32		;3cec
	cp l			;3cee
	cp (hl)			;3cef
	cp a			;3cf0
	ret p			;3cf1
	push af			;3cf2
l3cf3h:
	ret p			;3cf3
	call p,0bfbeh		;3cf4
	ret p			;3cf7
	pop af			;3cf8
l3cf9h:
	call p,sub_20bfh		;3cf9
l3cfch:
	di			;3cfc
	ret p			;3cfd
	or 0f7h		;3cfe
	jp p,0f0beh		;3d00
	cp a			;3d03
	jr nz,l3d26h		;3d04
	cp l			;3d06
	jr nz,l3cfch		;3d07
	ret p			;3d09
	jr nz,$+32		;3d0a
	cp l			;3d0c
	jr nz,$+32		;3d0d
	cp l			;3d0f
	or 0f4h		;3d10
	cp a			;3d12
	ret p			;3d13
	cp a			;3d14
	ret p			;3d15
l3d16h:
	push af			;3d16
	ret p			;3d17
	call p,0bff0h		;3d18
	call p,0f0beh		;3d1b
	ret p			;3d1e
	jr nz,l3d16h		;3d1f
	cp a			;3d21
	pop af			;3d22
	ret p			;3d23
	ret p			;3d24
	pop af			;3d25
l3d26h:
	cp a			;3d26
	cp a			;3d27
	jr nz,$+32		;3d28
	push af			;3d2a
	or 0f7h		;3d2b
	call p,0f0beh		;3d2d
	cp a			;3d30
	push af			;3d31
l3d32h:
	call p,0f3f4h		;3d32
	cp a			;3d35
	cp a			;3d36
	cp (hl)			;3d37
	ret p			;3d38
	call p,sub_2020h		;3d39
	cp l			;3d3c
	jr nz,l3d32h		;3d3d
	ret p			;3d3f
	jr nz,l3d62h		;3d40
	cp l			;3d42
l3d43h:
	jr nz,$+32		;3d43
	cp l			;3d45
	jr nz,$+32		;3d46
	cp l			;3d48
	jr nz,$+32		;3d49
	cp l			;3d4b
	pop af			;3d4c
	cp a			;3d4d
	cp a			;3d4e
	cp (hl)			;3d4f
	call p,0f1f0h		;3d50
	ret p			;3d53
	cp a			;3d54
	cp a			;3d55
	ret p			;3d56
	call p,0bff5h		;3d57
	ret p			;3d5a
	cp (hl)			;3d5b
	call p,0f6bfh		;3d5c
	ret p			;3d5f
	cp a			;3d60
	di			;3d61
l3d62h:
	cp a			;3d62
l3d63h:
	ret p			;3d63
	jr nz,$-13		;3d64
	call p,0f520h		;3d66
	call p,sub_2020h		;3d69
	cp l			;3d6c
	jr nz,l3d8fh		;3d6d
	cp l			;3d6f
	jr nz,l3d63h		;3d70
	ret p			;3d72
	jr nz,$-11		;3d73
	cp a			;3d75
	cp (hl)			;3d76
sub_3d77h:
	ret p			;3d77
	cp a			;3d78
	pop af			;3d79
	call p,0f5f4h		;3d7a
	cp a			;3d7d
	cp a			;3d7e
	ret p			;3d7f
	call p,020f4h		;3d80
	di			;3d83
	ret p			;3d84
	or 0bfh		;3d85
	call p,0bff5h		;3d87
	ret p			;3d8a
	jr nz,$-11		;3d8b
	cp a			;3d8d
	pop af			;3d8e
l3d8fh:
	cp a			;3d8f
	ret p			;3d90
	cp (hl)			;3d91
	call p,0f0f4h		;3d92
	ret p			;3d95
	ret p			;3d96
l3d97h:
	jr nz,$-13		;3d97
	cp a			;3d99
l3d9ah:
	cp (hl)			;3d9a
	cp a			;3d9b
	ret p			;3d9c
	jr nz,$-11		;3d9d
	cp a			;3d9f
	jr nz,l3d97h		;3da0
	call p,0f0f1h		;3da2
	cp a			;3da5
	jr nz,l3dc8h		;3da6
	cp l			;3da8
	add hl,bc			;3da9
	jr nz,l3dcch		;3daa
	jr nz,l3dceh		;3dac
	jr nz,l3dd0h		;3dae
	jr nz,l3dd2h		;3db0
	jr nz,l3dd4h		;3db2
	jr nz,l3dd6h		;3db4
	jr nz,l3dd8h		;3db6
	jr nz,l3ddah		;3db8
l3dbah:
	jr nz,l3ddch		;3dba
	jr nz,l3ddeh		;3dbc
	jr nz,l3de0h		;3dbe
	jr nz,l3de2h		;3dc0
	jr nz,l3de4h		;3dc2
	jr nz,l3de6h		;3dc4
	jr nz,l3de8h		;3dc6
l3dc8h:
	jr nz,l3deah		;3dc8
	jr nz,l3dech		;3dca
l3dcch:
	jr nz,l3deeh		;3dcc
l3dceh:
	jr nz,l3df0h		;3dce
l3dd0h:
	jr nz,l3df2h		;3dd0
l3dd2h:
	jr nz,l3df4h		;3dd2
l3dd4h:
	jr nz,l3df6h		;3dd4
l3dd6h:
	jr nz,l3df8h		;3dd6
l3dd8h:
	jr nz,l3dfah		;3dd8
l3ddah:
	jr nz,l3dfch		;3dda
l3ddch:
	jr nz,l3dfeh		;3ddc
l3ddeh:
	jr nz,l3e00h		;3dde
l3de0h:
	jr nz,l3e02h		;3de0
l3de2h:
	jr nz,l3e04h		;3de2
l3de4h:
	jr nz,l3e06h		;3de4
l3de6h:
	jr nz,l3e08h		;3de6
l3de8h:
	jr nz,l3e0ah		;3de8
l3deah:
	jr nz,l3e0ch		;3dea
l3dech:
	jr nz,l3e0eh		;3dec
l3deeh:
	jr nz,l3e10h		;3dee
l3df0h:
	jr nz,l3e12h		;3df0
l3df2h:
	jr nz,l3e14h		;3df2
l3df4h:
	jr nz,l3e16h		;3df4
l3df6h:
	jr nz,l3e18h		;3df6
l3df8h:
	jr nz,l3e1ah		;3df8
l3dfah:
	jr nz,l3e1ch		;3dfa
l3dfch:
	jr nz,l3e1eh		;3dfc
l3dfeh:
	jr nz,l3e20h		;3dfe
l3e00h:
	jr nz,l3e22h		;3e00
l3e02h:
	jr nz,l3e24h		;3e02
l3e04h:
	jr nz,l3e26h		;3e04
l3e06h:
	jr nz,l3e28h		;3e06
l3e08h:
	jr nz,l3e2ah		;3e08
l3e0ah:
	jr nz,l3e2ch		;3e0a
l3e0ch:
	jr nz,l3e2eh		;3e0c
l3e0eh:
	jr nz,l3e30h		;3e0e
l3e10h:
	jr nz,l3e32h		;3e10
l3e12h:
	jr nz,l3e34h		;3e12
l3e14h:
	jr nz,l3e36h		;3e14
l3e16h:
	jr nz,l3e38h		;3e16
l3e18h:
	jr nz,l3e3ah		;3e18
l3e1ah:
	jr nz,l3e3ch		;3e1a
l3e1ch:
	jr nz,l3e3eh		;3e1c
l3e1eh:
	jr nz,l3e40h		;3e1e
l3e20h:
	jr nz,l3e42h		;3e20
l3e22h:
	jr nz,l3e44h		;3e22
l3e24h:
	jr nz,l3e46h		;3e24
l3e26h:
	jr nz,l3e48h		;3e26
l3e28h:
	jr nz,l3e4ah		;3e28
l3e2ah:
	jr nz,l3e4ch		;3e2a
l3e2ch:
	jr nz,l3e4eh		;3e2c
l3e2eh:
	jr nz,l3e50h		;3e2e
l3e30h:
	jr nz,l3e52h		;3e30
l3e32h:
	jr nz,l3e54h		;3e32
l3e34h:
	jr nz,l3e56h		;3e34
l3e36h:
	jr nz,l3e58h		;3e36
l3e38h:
	jr nz,l3e5ah		;3e38
l3e3ah:
	jr nz,l3e5ch		;3e3a
l3e3ch:
	jr nz,l3e5eh		;3e3c
l3e3eh:
	jr nz,l3e60h		;3e3e
l3e40h:
	jr nz,l3e62h		;3e40
l3e42h:
	jr nz,l3e64h		;3e42
l3e44h:
	jr nz,l3e66h		;3e44
l3e46h:
	jr nz,l3e68h		;3e46
l3e48h:
	jr nz,l3e6ah		;3e48
l3e4ah:
	jr nz,$+32		;3e4a
l3e4ch:
	jr nz,l3e6eh		;3e4c
l3e4eh:
	jr nz,$+32		;3e4e
l3e50h:
	jr nz,l3e72h		;3e50
l3e52h:
	jr nz,l3e74h		;3e52
l3e54h:
	jr nz,$+32		;3e54
l3e56h:
	jr nz,l3e78h		;3e56
l3e58h:
	jr nz,l3e7ah		;3e58
l3e5ah:
	jr nz,l3e7ch		;3e5a
l3e5ch:
	jr nz,l3e7eh		;3e5c
l3e5eh:
	jr nz,$+32		;3e5e
l3e60h:
	jr nz,l3e82h		;3e60
l3e62h:
	jr nz,$+32		;3e62
l3e64h:
	jr nz,$+32		;3e64
l3e66h:
	jr nz,$+32		;3e66
l3e68h:
	jr nz,l3e8ah		;3e68
l3e6ah:
	nop			;3e6a
	ld a,(0c05eh)		;3e6b
l3e6eh:
	ld b,a			;3e6e
	ld a,(0c007h)		;3e6f
l3e72h:
	cp b			;3e72
	ret z			;3e73
l3e74h:
	ld (0c05eh),a		;3e74
	add a,a			;3e77
l3e78h:
	add a,a			;3e78
	push af			;3e79
l3e7ah:
	add a,a			;3e7a
	ld l,a			;3e7b
l3e7ch:
	ld h,000h		;3e7c
l3e7eh:
	ld de,l3ddah		;3e7e
	add hl,de			;3e81
l3e82h:
	ld de,0c010h		;3e82
	ld b,008h		;3e85
	call 00020h		;3e87
l3e8ah:
	pop af			;3e8a
	ld l,a			;3e8b
	ld h,000h		;3e8c
	ld de,l3e02h		;3e8e
	add hl,de			;3e91
	ld de,0c000h		;3e92
l3e95h:
	ld b,004h		;3e95
	jp 00020h		;3e97
	inc d			;3e9a
	inc b			;3e9b
	ex af,af'			;3e9c
	inc c			;3e9d
	ccf			;3e9e
	ccf			;3e9f
	inc bc			;3ea0
	inc bc			;3ea1
	ccf			;3ea2
	ccf			;3ea3
	ccf			;3ea4
	ccf			;3ea5
	inc d			;3ea6
	inc d			;3ea7
	inc d			;3ea8
	inc d			;3ea9
	jr c,l3each		;3eaa
l3each:
	nop			;3eac
	inc l			;3ead
	jr z,l3ed4h		;3eae
	nop			;3eb0
	inc c			;3eb1
	ccf			;3eb2
	daa			;3eb3
	jr nc,l3ebeh		;3eb4
	nop			;3eb6
	inc bc			;3eb7
	rrca			;3eb8
	dec d			;3eb9
	nop			;3eba
	inc b			;3ebb
	ex af,af'			;3ebc
	inc c			;3ebd
l3ebeh:
	dec d			;3ebe
	dec d			;3ebf
	dec d			;3ec0
	add hl,de			;3ec1
	ccf			;3ec2
	add hl,de			;3ec3
	ccf			;3ec4
	ccf			;3ec5
	nop			;3ec6
	inc bc			;3ec7
	rrca			;3ec8
	inc bc			;3ec9
	nop			;3eca
	ccf			;3ecb
	add hl,hl			;3ecc
	dec h			;3ecd
	dec d			;3ece
	inc d			;3ecf
	djnz l3ed2h		;3ed0
l3ed2h:
	rrca			;3ed2
	daa			;3ed3
l3ed4h:
	jr nc,$+8		;3ed4
	nop			;3ed6
	inc bc			;3ed7
	ccf			;3ed8
	nop			;3ed9
	jr c,l3edch		;3eda
l3edch:
	ld hl,(l080ch)		;3edc
	inc b			;3edf
	ccf			;3ee0
	ld hl,(00038h)		;3ee1
	ld hl,(l181ch)		;3ee4
	inc d			;3ee7
	ccf			;3ee8
	ld hl,(00038h)		;3ee9
	ld hl,(l0a0bh)		;3eec
	ld b,03fh		;3eef
	ld hl,(00010h)		;3ef1
	ld hl,(l2615h)		;3ef4
	nop			;3ef7
	djnz l3f0ah		;3ef8
	rlca			;3efa
	nop			;3efb
	ld hl,(l0a0dh+1)		;3efc
	ld b,01fh		;3eff
	dec de			;3f01
	inc d			;3f02
	inc b			;3f03
	ex af,af'			;3f04
	inc c			;3f05
	inc d			;3f06
	dec b			;3f07
	add hl,bc			;3f08
	dec c			;3f09
l3f0ah:
	inc d			;3f0a
	ld b,00ah		;3f0b
	ld c,014h		;3f0d
l3f0fh:
	djnz $+32		;3f0f
	jr nc,$+20		;3f11
	ld d,01ah		;3f13
	dec de			;3f15
	ld bc,0003ch		;3f16
	ld a,(0c000h)		;3f19
	and 004h		;3f1c
	jr nz,l3f2dh		;3f1e
	ld a,001h		;3f20
	ld (0c064h),a		;3f22
	ld bc,00438h		;3f25
	ld a,089h		;3f28
	ld (0c100h),a		;3f2a
l3f2dh:
	rst 8			;3f2d
	push bc			;3f2e
	call sub_2509h		;3f2f
	pop bc			;3f32
	ld a,(0c001h)		;3f33
	cpl			;3f36
	ld e,a			;3f37
	ld a,(0c01ah)		;3f38
	and e			;3f3b
	and 030h		;3f3c
	jr nz,l3f45h		;3f3e
	dec bc			;3f40
	ld a,b			;3f41
	or c			;3f42
	jr nz,l3f2dh		;3f43
l3f45h:
	call 035ebh		;3f45
	jp 000beh		;3f48
	ld hl,0c064h		;3f4b
	ld a,(hl)			;3f4e
	or a			;3f4f
	ret z			;3f50
	ld (hl),000h		;3f51
	add a,a			;3f53
	add a,a			;3f54
	ld l,a			;3f55
	ld h,000h		;3f56
	ld de,l3e95h		;3f58
	add hl,de			;3f5b
	ld e,(hl)			;3f5c
	inc hl			;3f5d
	ld d,(hl)			;3f5e
	inc hl			;3f5f
	ld a,(hl)			;3f60
	inc hl			;3f61
	ld h,(hl)			;3f62
	ld l,a			;3f63
	ld a,(0c051h)		;3f64
	rrca			;3f67
	rrca			;3f68
	and 03eh		;3f69
	ld c,a			;3f6b
	ld b,000h		;3f6c
	add hl,bc			;3f6e
	ld a,h			;3f6f
	cp 07ah		;3f70
	jr c,l3f7ah		;3f72
	ld h,079h		;3f74
	ld a,l			;3f76
	sub 040h		;3f77
sub_3f79h:
	ld l,a			;3f79
l3f7ah:
	call 00018h		;3f7a
l3f7dh:
	ld a,(de)			;3f7d
l3f7eh:
	or a			;3f7e
l3f7fh:
	ret z			;3f7f
l3f80h:
	out (0beh),a		;3f80
sub_3f82h:
	inc de			;3f82
	inc hl			;3f83
	inc hl			;3f84
	push af			;3f85
	pop af			;3f86
l3f87h:
	ld a,009h		;3f87
	out (0beh),a		;3f89
	ld a,h			;3f8b
	cp 07ah		;3f8c
	jr c,l3f7dh		;3f8e
	ld hl,079c0h		;3f90
	call 00018h		;3f93
	jr l3f7dh		;3f96
	ret			;3f98
	pop bc			;3f99
	ld a,0d6h		;3f9a
	ld a,c			;3f9c
	srl (hl)		;3f9d
	ret nc			;3f9f
	ld a,c			;3fa0
	call c,0c63eh		;3fa1
	ld a,c			;3fa4
	or 03eh		;3fa5
	ret nz			;3fa7
	ld a,c			;3fa8
	rla			;3fa9
	ccf			;3faa
	call z,sub_2b79h		;3fab
	ccf			;3fae
	call z,sub_3f79h		;3faf
	ccf			;3fb2
	add a,079h		;3fb3
	ld e,e			;3fb5
	ccf			;3fb6
	jp z,07279h		;3fb7
	ccf			;3fba
	call z,0fb79h		;3fbb
	ld a,0c6h		;3fbe
	ld a,c			;3fc0
	ld b,a			;3fc1
	ld b,c			;3fc2
	ld c,l			;3fc3
	ld b,l			;3fc4
	jr nz,l4016h		;3fc5
	ld d,(hl)			;3fc7
	ld b,l			;3fc8
	ld d,d			;3fc9
	nop			;3fca
	ld b,e			;3fcb
	ld c,a			;3fcc
	ld c,(hl)			;3fcd
	ld b,a			;3fce
	ld d,d			;3fcf
	ld b,c			;3fd0
	ld d,h			;3fd1
	ld d,l			;3fd2
	ld c,h			;3fd3
	ld b,c			;3fd4
	ld d,h			;3fd5
	ld c,c			;3fd6
	ld c,a			;3fd7
	ld c,(hl)			;3fd8
	ld d,e			;3fd9
	ld a,(l42feh+2)		;3fda
	ld c,b			;3fdd
	ld b,c			;3fde
	ld c,h			;3fdf
	ld c,h			;3fe0
	ld b,l			;3fe1
	ld c,(hl)			;3fe2
	ld b,a			;3fe3
	ld b,l			;3fe4
	jr nz,l403bh		;3fe5
	ld c,b			;3fe7
	ld b,l			;3fe8
	jr nz,l4039h		;3fe9
	ld b,l			;3feb
	ld e,b			;3fec
	ld d,h			;3fed
	jr nz,l4033h		;3fee
	ld c,a			;3ff0
	ld d,l			;3ff1
	ld d,d			;3ff2
	ld d,e			;3ff3
	ld b,l			;3ff4
	nop			;3ff5
	jr nz,$+32		;3ff6
	jr nz,l401ah		;3ff8
	jr nz,l401ch		;3ffa
	jr nz,l401eh		;3ffc
	jr nz,l4020h		;3ffe
l4000h:
	jr nz,l4022h		;4000
l4002h:
	jr nz,l4024h		;4002
	jr nz,l4026h		;4004
	jr nz,l4028h		;4006
	jr nz,l402ah		;4008
	jr nz,l402ch		;400a
	jr nz,l402eh		;400c
	jr nz,l4030h		;400e
	jr nz,l4032h		;4010
	jr nz,l4034h		;4012
	jr nz,l4036h		;4014
l4016h:
	nop			;4016
	ld l,05ah		;4017
	ld e,e			;4019
l401ah:
	jr nz,l406fh		;401a
l401ch:
	ld d,h			;401c
	ld b,c			;401d
l401eh:
	ld b,a			;401e
	ld b,l			;401f
l4020h:
	jr nz,l405dh		;4020
l4022h:
	ld b,e			;4022
	ld c,c			;4023
l4024h:
	ld d,d			;4024
	ld b,e			;4025
l4026h:
	ld d,l			;4026
	ld c,c			;4027
l4028h:
	ld d,h			;4028
	dec sp			;4029
l402ah:
	nop			;402a
	cpl			;402b
l402ch:
	ld e,h			;402c
	ld e,l			;402d
l402eh:
	jr nz,l4083h		;402e
l4030h:
	ld d,h			;4030
	ld b,c			;4031
l4032h:
	ld b,a			;4032
l4033h:
	ld b,l			;4033
l4034h:
	jr nz,l4071h		;4034
l4036h:
	ld d,e			;4036
	ld b,l			;4037
	ld b,c			;4038
l4039h:
	ld d,e			;4039
	ld c,c			;403a
l403bh:
	ld b,h			;403b
	ld b,l			;403c
	dec sp			;403d
	nop			;403e
	inc a			;403f
	ld e,(hl)			;4040
	ld e,l			;4041
	jr nz,l4097h		;4042
	ld d,h			;4044
	ld b,c			;4045
	ld b,a			;4046
	ld b,l			;4047
	jr nz,l4085h		;4048
	ld c,l			;404a
	ld c,a			;404b
	ld c,(hl)			;404c
	ld d,l			;404d
	ld c,l			;404e
sub_404fh:
	ld b,l			;404f
	ld c,(hl)			;4050
	ld d,h			;4051
	jr nz,l40aah		;4052
	ld b,c			;4054
	ld c,h			;4055
	ld c,h			;4056
	ld b,l			;4057
	ld e,c			;4058
	dec sp			;4059
	nop			;405a
	ld b,b			;405b
	ld e,e			;405c
l405dh:
	ld e,a			;405d
	jr nz,$+83		;405e
	ld d,h			;4060
	ld b,c			;4061
	ld b,a			;4062
	ld b,l			;4063
	jr nz,$+59		;4064
	ld b,e			;4066
	ld c,c			;4067
	ld d,h			;4068
	ld e,c			;4069
	jr nz,$+78		;406a
	ld c,c			;406c
	ld b,a			;406d
	ld c,b			;406e
l406fh:
	ld d,h			;406f
	dec sp			;4070
l4071h:
	nop			;4071
	ld c,h			;4072
	ld b,c			;4073
	ld d,e			;4074
	ld d,h			;4075
	jr nz,l40cbh		;4076
	ld d,h			;4078
	ld b,c			;4079
	ld b,a			;407a
	ld b,l			;407b
	jr nz,$+59		;407c
	ld b,e			;407e
	ld c,c			;407f
	ld d,d			;4080
sub_4081h:
	ld b,e			;4081
	ld d,l			;4082
l4083h:
	ld c,c			;4083
	ld d,h			;4084
l4085h:
	dec sp			;4085
	nop			;4086
	ld a,002h		;4087
	ld (0c064h),a		;4089
	ld hl,0c380h		;408c
	ld de,0001fh		;408f
	ld b,004h		;4092
	xor a			;4094
l4095h:
	ld (hl),a			;4095
	inc hl			;4096
l4097h:
	ld (hl),a			;4097
	add hl,de			;4098
	djnz l4095h		;4099
	ld bc,l012ch		;409b
	ld a,088h		;409e
	ld (0c100h),a		;40a0
l40a3h:
	rst 8			;40a3
	push bc			;40a4
	call sub_2509h		;40a5
	pop bc			;40a8
	dec bc			;40a9
l40aah:
	ld a,c			;40aa
	or b			;40ab
	jr nz,l40a3h		;40ac
	ld a,(0c00dh)		;40ae
	or a			;40b1
	jr nz,l40c1h		;40b2
l40b4h:
	rst 8			;40b4
	call sub_2509h		;40b5
	ld hl,(0c31ah)		;40b8
	ld a,l			;40bb
	or h			;40bc
	jr nz,l40b4h		;40bd
	jr l40e7h		;40bf
l40c1h:
	ld b,01eh		;40c1
l40c3h:
	rst 8			;40c3
	push bc			;40c4
	call sub_2509h		;40c5
	pop bc			;40c8
	djnz l40c3h		;40c9
l40cbh:
	ld hl,0c00dh		;40cb
l40ceh:
	push hl			;40ce
	ld b,008h		;40cf
l40d1h:
	rst 8			;40d1
	push bc			;40d2
	call sub_2509h		;40d3
	pop bc			;40d6
	djnz l40d1h		;40d7
	ld a,005h		;40d9
	call 035c6h		;40db
	ld a,087h		;40de
	ld (0c100h),a		;40e0
	pop hl			;40e3
l40e4h:
	dec (hl)			;40e4
	jr nz,l40ceh		;40e5
l40e7h:
	ld b,078h		;40e7
l40e9h:
	rst 8			;40e9
	push bc			;40ea
	call sub_2509h		;40eb
	pop bc			;40ee
	djnz l40e9h		;40ef
	ld a,003h		;40f1
	ld (0c064h),a		;40f3
l40f6h:
	rst 8			;40f6
	call sub_2509h		;40f7
	ld hl,(0c31ah)		;40fa
	ld a,l			;40fd
	or h			;40fe
	jr nz,l40f6h		;40ff
	ld b,0b4h		;4101
l4103h:
	rst 8			;4103
	push bc			;4104
	call sub_2509h		;4105
	pop bc			;4108
	djnz l4103h		;4109
	ld a,004h		;410b
	ld (0c064h),a		;410d
	ld hl,0c010h		;4110
	ld a,(hl)			;4113
	inc a			;4114
	cp 008h		;4115
	jr c,l4133h		;4117
	ld a,(0c4c0h)		;4119
	inc a			;411c
	cp 003h		;411d
	jr c,l412fh		;411f
	ld a,(0c074h)		;4121
	sub 002h		;4124
	cp 032h		;4126
	jr c,l4132h		;4128
	ld (0c074h),a		;412a
	jr l4132h		;412d
l412fh:
	ld (0c4c0h),a		;412f
l4132h:
	xor a			;4132
l4133h:
	ld (hl),a			;4133
	ld a,03ch		;4134
	ld (0c00dh),a		;4136
	rst 8			;4139
	ld a,080h		;413a
sub_413ch:
	ld (0c000h),a		;413c
	ld a,064h		;413f
	ld (0c067h),a		;4141
	ld a,003h		;4144
	ld (0c06ah),a		;4146
	jp l010dh		;4149
	jp l412fh+2		;414c
l414fh:
	ld a,(0c100h)		;414f
	cp 081h		;4152
	jr z,l4165h		;4154
	call sub_43c0h		;4156
	call sub_4239h		;4159
	ld ix,0c150h		;415c
	ld b,00ch		;4160
	jp l4469h		;4162
l4165h:
	call sub_4081h		;4165
	call sub_4239h		;4168
	ld ix,(0c108h)		;416b
	call sub_413ch		;416f
	ld ix,(0c10ah)		;4172
	call sub_413ch		;4176
	ld ix,0c150h		;4179
	call 041d1h		;417d
	ret			;4180
	ld hl,(0c101h)		;4181
	ld a,l			;4184
	or h			;4185
	ret z			;4186
	jp (hl)			;4187
	ld bc,00003h		;4188
	call 040f5h		;418b
	ld hl,l4727h+1		;418e
	ld (0c173h),hl		;4191
	ld hl,l476fh+1		;4194
	ld (0c193h),hl		;4197
	ld hl,0c170h		;419a
	ld de,0c190h		;419d
	jr l4203h		;41a0
	ld hl,0474fh		;41a2
	ld (0c173h),hl		;41a5
	ld hl,l4794h		;41a8
	ld (0c193h),hl		;41ab
	jr l420ah		;41ae
	ld bc,l0101h+1		;41b0
	call 040f5h		;41b3
	ld hl,l47b4h+1		;41b6
	ld (0c1b3h),hl		;41b9
	ld hl,l47cah		;41bc
	ld (0c1d3h),hl		;41bf
	ld hl,0c1b0h		;41c2
	ld de,0c1d0h		;41c5
	jr l4203h		;41c8
	ld bc,l0101h+1		;41ca
	call 040f5h		;41cd
	ld hl,l47e2h		;41d0
	ld (0c1f3h),hl		;41d3
	ld hl,l47f5h		;41d6
	ld (0c213h),hl		;41d9
	ld hl,0c1f0h		;41dc
	ld de,0c210h		;41df
	jr l4203h		;41e2
	ld bc,l0200h		;41e4
	call 040f5h		;41e7
	ld hl,l480ch		;41ea
	ld (0c233h),hl		;41ed
	ld hl,0c230h		;41f0
	jr l4207h		;41f3
	ld a,(0c107h)		;41f5
	and c			;41f8
	jr z,l41feh		;41f9
	pop af			;41fb
	jr l420ah		;41fc
l41feh:
	or b			;41fe
	ld (0c107h),a		;41ff
	ret			;4202
l4203h:
	ld (0c10ah),de		;4203
l4207h:
	ld (0c108h),hl		;4207
l420ah:
	ld hl,00000h		;420a
	ld (0c101h),hl		;420d
	ret			;4210
	call 0461ch		;4211
	ld a,0e7h		;4214
	out (07fh),a		;4216
	ld a,088h		;4218
	ld (0c150h),a		;421a
	ld hl,00080h		;421d
	ld (0c15fh),hl		;4220
	ld hl,l033dh		;4223
	ld (0c11fh),hl		;4226
	ld de,0c130h		;4229
	ld hl,0c110h		;422c
	jr l4203h		;422f
	ld hl,046cbh		;4231
	ld de,0c110h		;4234
	ld b,00ah		;4237
sub_4239h:
	jp 0444bh		;4239
sub_423ch:
	ld a,(ix+00bh)		;423c
	inc a			;423f
	ld (ix+00bh),a		;4240
	sub (ix+00ah)		;4243
	jp nz,041d1h		;4246
	ld e,(ix+003h)		;4249
	ld d,(ix+004h)		;424c
	ld a,(de)			;424f
	inc de			;4250
	cp 0e0h		;4251
	jp nc,0417bh		;4253
	ld (ix+010h),a		;4256
	ld a,(de)			;4259
	inc de			;425a
	ld (ix+00fh),a		;425b
	bit 5,(ix+000h)		;425e
	jr z,l4269h		;4262
	ld a,(de)			;4264
	inc de			;4265
	ld (ix+011h),a		;4266
l4269h:
	ld a,(de)			;4269
	inc de			;426a
	ld (ix+00ah),a		;426b
	ld (ix+003h),e		;426e
	ld (ix+004h),d		;4271
	xor a			;4274
	ld (ix+00bh),a		;4275
	jp 041d1h		;4278
	cp 0e0h		;427b
	jr z,l4292h		;427d
	cp 0e1h		;427f
	jr z,l42afh		;4281
	cp 0e8h		;4283
	jr z,l429ah		;4285
	cp 0e9h		;4287
	jr z,l42a1h		;4289
	cp 0e5h		;428b
	jr z,l42a8h		;428d
	jp 041d1h		;428f
l4292h:
	ld a,(de)			;4292
	ld (ix+008h),a		;4293
	inc de			;4296
	jp l414fh		;4297
l429ah:
	set 5,(ix+000h)		;429a
	jp l414fh		;429e
l42a1h:
	res 5,(ix+000h)		;42a1
	jp l414fh		;42a5
l42a8h:
	ex de,hl			;42a8
	ld e,(hl)			;42a9
	inc hl			;42aa
	ld d,(hl)			;42ab
	jp l414fh		;42ac
l42afh:
	call sub_4612h		;42af
	ld a,(de)			;42b2
	ld hl,l460eh		;42b3
	ld c,a			;42b6
	ld b,000h		;42b7
	add hl,bc			;42b9
	ld a,(0c107h)		;42ba
	and (hl)			;42bd
	ld (0c107h),a		;42be
	xor a			;42c1
	ld (ix+00bh),a		;42c2
	ld hl,0c110h		;42c5
	ld (0c108h),hl		;42c8
	ld hl,0c130h		;42cb
	ld (0c10ah),hl		;42ce
	ld e,(ix+00fh)		;42d1
	ld d,(ix+010h)		;42d4
	ld a,e			;42d7
	or d			;42d8
	jr nz,l42e0h		;42d9
	ld l,00fh		;42db
	jp 04230h		;42dd
l42e0h:
	bit 5,(ix+000h)		;42e0
	jr z,l42feh		;42e4
	ld a,e			;42e6
	ld c,(ix+011h)		;42e7
	sub c			;42ea
	bit 7,c		;42eb
	jr z,l42f4h		;42ed
	jr c,l42f7h		;42ef
	inc d			;42f1
	jr l42f7h		;42f2
l42f4h:
	jr nc,l42f7h		;42f4
	dec d			;42f6
l42f7h:
	ld e,a			;42f7
	ld (ix+00fh),e		;42f8
	ld (ix+010h),d		;42fb
l42feh:
	ld a,(ix+007h)		;42fe
l4301h:
	or a			;4301
	jr z,l430fh		;4302
	ld hl,l481dh		;4304
	call sub_4493h		;4307
	call sub_44a1h		;430a
	jr l4316h		;430d
l430fh:
	ld a,(ix+008h)		;430f
	cpl			;4312
	and 00fh		;4313
	ld l,a			;4315
l4316h:
	ld a,(ix+001h)		;4316
	cp 0e0h		;4319
	jr nz,l431fh		;431b
	ld a,0c0h		;431d
l431fh:
	ld c,a			;431f
	ld a,e			;4320
	and 00fh		;4321
	or c			;4323
	out (07fh),a		;4324
	ld a,e			;4326
	and 0f0h		;4327
	or d			;4329
	rrca			;432a
	rrca			;432b
	rrca			;432c
	rrca			;432d
	out (07fh),a		;432e
	ld a,(ix+001h)		;4330
	add a,010h		;4333
	or l			;4335
	out (07fh),a		;4336
	ret			;4338
	ld a,(0c104h)		;4339
l433ch:
	inc a			;433c
	ld (0c104h),a		;433d
	ld a,(0c290h)		;4340
	or a			;4343
	ret nz			;4344
	ld a,(0c31dh)		;4345
	ld c,a			;4348
	ld b,000h		;4349
	ld hl,l433ch		;434b
	call l42afh+2		;434e
	ld a,(0c31fh)		;4351
	or a			;4354
	jr nz,l4376h		;4355
	ld de,(0c15fh)		;4357
	sbc hl,de		;435b
	jr c,l4364h		;435d
	jr z,l4365h		;435f
	inc de			;4361
	jr l4365h		;4362
l4364h:
	dec de			;4364
l4365h:
	ex de,hl			;4365
	ld a,(0c104h)		;4366
	and 001h		;4369
	jr z,l4372h		;436b
	ld de,00020h		;436d
	jr l4375h		;4370
l4372h:
	ld de,0ffe0h		;4372
l4375h:
	add hl,de			;4375
l4376h:
	ld (0c15fh),hl		;4376
	ld a,(0c250h)		;4379
	or a			;437c
	ret nz			;437d
	ld hl,042b8h		;437e
l4381h:
	call l42afh+2		;4381
	ld a,(0c31fh)		;4384
	or a			;4387
	jr z,l4390h		;4388
	xor a			;438a
	ld (0c31fh),a		;438b
	jr l43a1h		;438e
l4390h:
	ld de,(0c11fh)		;4390
	sbc hl,de		;4394
	jr c,l439eh		;4396
	jr z,l43a0h		;4398
	inc de			;439a
	inc de			;439b
	jr l43a0h		;439c
l439eh:
	dec de			;439e
	dec de			;439f
l43a0h:
	ex de,hl			;43a0
l43a1h:
	ld (0c11fh),hl		;43a1
	ld a,l			;43a4
	add a,064h		;43a5
	ld (0c13fh),a		;43a7
	ld a,000h		;43aa
	adc a,h			;43ac
	ld (0c140h),a		;43ad
	ret			;43b0
	add hl,bc			;43b1
	add hl,bc			;43b2
	ld a,(hl)			;43b3
	inc hl			;43b4
	ld h,(hl)			;43b5
	ld l,a			;43b6
	ret			;43b7
	ld c,l			;43b8
	inc bc			;43b9
	dec a			;43ba
	inc bc			;43bb
	dec l			;43bc
	inc bc			;43bd
	ld e,003h		;43be
sub_43c0h:
	ld c,003h		;43c0
	rst 38h			;43c2
	ld (bc),a			;43c3
	ret p			;43c4
	ld (bc),a			;43c5
	jp po,0d402h		;43c6
	ld (bc),a			;43c9
	rst 0			;43ca
	ld (bc),a			;43cb
	cp d			;43cc
	ld (bc),a			;43cd
	xor e			;43ce
	ld (bc),a			;43cf
	sbc a,a			;43d0
	ld (bc),a			;43d1
	sub d			;43d2
	ld (bc),a			;43d3
	add a,l			;43d4
	ld (bc),a			;43d5
	ld a,c			;43d6
	ld (bc),a			;43d7
	ld l,l			;43d8
	ld (bc),a			;43d9
	ld h,c			;43da
	ld (bc),a			;43db
	ld d,(hl)			;43dc
	ld (bc),a			;43dd
	ld c,d			;43de
	ld (bc),a			;43df
	ccf			;43e0
l43e1h:
	ld (bc),a			;43e1
	inc (hl)			;43e2
	ld (bc),a			;43e3
	add hl,hl			;43e4
	ld (bc),a			;43e5
	ld e,002h		;43e6
	inc d			;43e8
	ld (bc),a			;43e9
	ld a,(bc)			;43ea
	ld (bc),a			;43eb
	nop			;43ec
	ld (bc),a			;43ed
	rst 30h			;43ee
	ld bc,l01ech		;43ef
	ex (sp),hl			;43f2
	ld bc,l01dah		;43f3
	pop de			;43f6
	ld bc,l01c8h		;43f7
	ret nz			;43fa
	ld bc,001b7h		;43fb
	xor a			;43fe
	ld bc,001a7h		;43ff
	sbc a,a			;4402
	ld bc,00196h		;4403
	adc a,a			;4406
	ld bc,00187h		;4407
	add a,b			;440a
	ld bc,l0179h		;440b
	ld (hl),d			;440e
	ld bc,l016ah		;440f
	ld h,h			;4412
	ld bc,0015dh		;4413
	ld d,(hl)			;4416
	ld bc,l0150h		;4417
	ld c,c			;441a
	ld bc,00143h		;441b
	dec a			;441e
	ld bc,00137h		;441f
	jr nc,l4425h		;4422
	dec l			;4424
l4425h:
	ld bc,00126h		;4425
	rra			;4428
	ld bc,l0119h+1		;4429
	dec d			;442c
	ld bc,0010fh		;442d
	ld a,(bc)			;4430
	ld bc,00105h		;4431
	nop			;4434
	ld bc,000fch		;4435
	ret m			;4438
	nop			;4439
	jp p,08a00h		;443a
	ld bc,00182h		;443d
	ld a,d			;4440
	ld bc,l0171h+1		;4441
	ld l,d			;4444
	ld bc,l0162h		;4445
	ld e,d			;4448
	ld bc,l0153h		;4449
	ld c,h			;444c
	ld bc,00145h		;444d
	ld a,001h		;4450
	scf			;4452
	ld bc,l0130h		;4453
	ld hl,(l2401h)		;4456
	ld bc,l011eh		;4459
	jr l445fh		;445c
	ld (de),a			;445e
l445fh:
	ld bc,l010dh		;445f
	add hl,bc			;4462
	ld bc,00104h		;4463
	sbc a,a			;4466
	nop			;4467
	sbc a,d			;4468
l4469h:
	nop			;4469
	sub l			;446a
	nop			;446b
	sub b			;446c
	nop			;446d
	adc a,h			;446e
	nop			;446f
	adc a,b			;4470
	nop			;4471
	add a,h			;4472
	nop			;4473
	add a,b			;4474
	nop			;4475
	ld a,h			;4476
	nop			;4477
	ld a,b			;4478
	nop			;4479
sub_447ah:
	ld (hl),h			;447a
	nop			;447b
	ld (hl),b			;447c
	nop			;447d
	ld l,h			;447e
	nop			;447f
	ld l,b			;4480
	nop			;4481
	ld h,h			;4482
	nop			;4483
	ld h,c			;4484
	nop			;4485
	ld e,(hl)			;4486
	nop			;4487
	ld e,e			;4488
	nop			;4489
	ld e,b			;448a
	nop			;448b
	ld d,l			;448c
	nop			;448d
	ld d,d			;448e
	nop			;448f
	ld c,a			;4490
	nop			;4491
	ld c,h			;4492
sub_4493h:
	nop			;4493
	ld c,c			;4494
	nop			;4495
	ld b,(hl)			;4496
	nop			;4497
	ld b,e			;4498
	nop			;4499
	ld b,b			;449a
	nop			;449b
	dec a			;449c
	nop			;449d
	ld a,(l3800h)		;449e
sub_44a1h:
	nop			;44a1
	ld (hl),000h		;44a2
	inc (hl)			;44a4
	nop			;44a5
	ld (03000h),a		;44a6
	nop			;44a9
	ld l,000h		;44aa
	inc l			;44ac
	nop			;44ad
	ld hl,(l2800h)		;44ae
	nop			;44b1
	daa			;44b2
	nop			;44b3
	ld h,000h		;44b4
	dec h			;44b6
	nop			;44b7
	inc h			;44b8
	nop			;44b9
	inc hl			;44ba
	nop			;44bb
	ld (l2100h),hl		;44bc
	nop			;44bf
	bit 7,a		;44c0
	jp z,0461ch		;44c2
	cp 094h		;44c5
	jp nc,0461ch		;44c7
	sub 080h		;44ca
	ret z			;44cc
	ld c,a			;44cd
	ld b,000h		;44ce
	ld hl,l43e1h		;44d0
	add hl,bc			;44d3
	add hl,bc			;44d4
	ld c,(hl)			;44d5
sub_44d6h:
	inc hl			;44d6
	ld b,(hl)			;44d7
	ld de,0001fh		;44d8
	add hl,de			;44db
l44dch:
	ld a,(hl)			;44dc
	inc hl			;44dd
	ld h,(hl)			;44de
	ld l,a			;44df
	jp (hl)			;44e0
	ld h,e			;44e1
	ld b,h			;44e2
	ld h,e			;44e3
	ld b,h			;44e4
	ld h,e			;44e5
	ld b,h			;44e6
	ld h,e			;44e7
	ld b,h			;44e8
	ld h,e			;44e9
	ld b,h			;44ea
	ld h,e			;44eb
	ld b,h			;44ec
	sub c			;44ed
	ld c,b			;44ee
	in a,(048h)		;44ef
	pop af			;44f1
	ld c,b			;44f2
	ld (hl),a			;44f3
	ld c,c			;44f4
	xor b			;44f5
	ld c,d			;44f6
	ld l,l			;44f7
	ld c,h			;44f8
	sbc a,c			;44f9
	ld c,h			;44fa
	xor c			;44fb
	ld c,h			;44fc
	ld h,e			;44fd
	ld b,h			;44fe
	cp b			;44ff
	ld c,h			;4500
	ld h,e			;4501
	ld b,h			;4502
	ld h,e			;4503
	ld b,h			;4504
	ld h,e			;4505
	ld b,h			;4506
	ld h,e			;4507
	ld b,h			;4508
	ld h,e			;4509
	ld b,h			;450a
	jr c,l4551h		;450b
	ld hl,02144h		;450d
	ld b,h			;4510
l4511h:
	ld h,044h		;4511
l4513h:
	ld h,044h		;4513
	ld h,044h		;4515
	dec hl			;4517
	ld b,h			;4518
	ld b,c			;4519
	ld b,h			;451a
	ld b,c			;451b
	ld b,h			;451c
	ld h,e			;451d
	ld b,h			;451e
	ld h,044h		;451f
	ld de,0c250h		;4521
	jr l4547h		;4524
	ld de,0c250h		;4526
	jr l452eh		;4529
	ld de,0c270h		;452b
l452eh:
	push bc			;452e
	xor a			;452f
	ld (0c150h),a		;4530
	call 04629h		;4533
	jr l4548h		;4536
	xor a			;4538
	ld (0c150h),a		;4539
	call 04629h		;453c
	jr l4563h		;453f
	call 04637h		;4541
	ld de,0c2b0h		;4544
l4547h:
	push bc			;4547
l4548h:
	pop hl			;4548
	ld b,(hl)			;4549
	inc hl			;454a
l454bh:
	push bc			;454b
l454ch:
	ld bc,00009h		;454c
	ldir		;454f
l4551h:
	ld a,020h		;4551
	ld (de),a			;4553
	inc de			;4554
	ld a,001h		;4555
	ld (de),a			;4557
	inc de			;4558
	xor a			;4559
	ld b,015h		;455a
l455ch:
	ld (de),a			;455c
	inc de			;455d
	djnz l455ch		;455e
	pop bc			;4560
	djnz l454bh		;4561
l4563h:
	ld a,080h		;4563
	ld (0c100h),a		;4565
	ret			;4568
l4569h:
	push bc			;4569
	bit 7,(ix+000h)		;456a
	call nz,sub_447ah		;456e
	ld de,00020h		;4571
	add ix,de		;4574
	pop bc			;4576
	djnz l4569h		;4577
	ret			;4579
	ld a,(ix+00bh)		;457a
	inc a			;457d
	ld (ix+00bh),a		;457e
	sub (ix+00ah)		;4581
	call z,sub_44d6h		;4584
	bit 2,(ix+000h)		;4587
	jp z,041d1h		;458b
	ld l,00fh		;458e
	jp 04230h		;4590
	dec a			;4593
	ld c,a			;4594
	ld b,000h		;4595
	add hl,bc			;4597
	add hl,bc			;4598
	ld a,(hl)			;4599
	inc hl			;459a
	ld h,(hl)			;459b
l459ch:
	ld l,a			;459c
	ret			;459d
l459eh:
	ld (ix+00dh),a		;459e
l45a1h:
	push hl			;45a1
	ld a,(ix+00dh)		;45a2
	srl a		;45a5
	push af			;45a7
	ld c,a			;45a8
	ld b,000h		;45a9
	add hl,bc			;45ab
	pop af			;45ac
	ld a,(hl)			;45ad
	pop hl			;45ae
	jr c,l45c5h		;45af
	rrca			;45b1
	rrca			;45b2
	rrca			;45b3
	rrca			;45b4
	or a			;45b5
	jr z,l459eh		;45b6
	cp 010h		;45b8
	jr nz,l45c1h		;45ba
	dec (ix+00dh)		;45bc
	jr l45a1h		;45bf
l45c1h:
	cp 020h		;45c1
	jr z,l45d0h		;45c3
l45c5h:
	inc (ix+00dh)		;45c5
	or 0f0h		;45c8
	add a,(ix+008h)		;45ca
	inc a			;45cd
	jr c,l45d1h		;45ce
l45d0h:
	xor a			;45d0
l45d1h:
	cpl			;45d1
	and 00fh		;45d2
	ld l,a			;45d4
	ret			;45d5
	ld e,(ix+003h)		;45d6
	ld d,(ix+004h)		;45d9
	ld a,(de)			;45dc
	inc de			;45dd
	cp 0e0h		;45de
	jp nc,04532h		;45e0
	bit 4,(ix+000h)		;45e3
	jp nz,0452ch		;45e7
	or a			;45ea
	jp p,l4513h		;45eb
	sub 080h		;45ee
	jr z,l45f5h		;45f0
	add a,(ix+005h)		;45f2
l45f5h:
	ld hl,04640h		;45f5
	ld c,a			;45f8
	ld b,000h		;45f9
	add hl,bc			;45fb
	add hl,bc			;45fc
	ld a,(hl)			;45fd
	ld (ix+00fh),a		;45fe
	inc hl			;4601
	ld a,(hl)			;4602
	ld (ix+010h),a		;4603
	bit 5,(ix+000h)		;4606
	jr z,l4625h		;460a
	ld a,(de)			;460c
	inc de			;460d
l460eh:
	ld (ix+011h),a		;460e
	ld a,(de)			;4611
sub_4612h:
	inc de			;4612
	ld (ix+00ah),a		;4613
l4616h:
	xor a			;4616
	ld (ix+00dh),a		;4617
	ld (ix+003h),e		;461a
	ld (ix+004h),d		;461d
	xor a			;4620
	ld (ix+00bh),a		;4621
	ret			;4624
l4625h:
	ld a,(de)			;4625
	or a			;4626
	jp p,l4511h+1		;4627
	jr l4616h		;462a
	ld (0c100h),a		;462c
	jp l4511h		;462f
	cp 0eeh		;4632
	ret z			;4634
	ld hl,l4548h		;4635
	push hl			;4638
	and 01fh		;4639
	ld hl,l454ch		;463b
	ld c,a			;463e
	ld b,000h		;463f
	add hl,bc			;4641
	add hl,bc			;4642
	ld a,(hl)			;4643
	inc hl			;4644
	ld h,(hl)			;4645
	ld l,a			;4646
	jp (hl)			;4647
	inc de			;4648
	jp l44dch		;4649
	ld (hl),b			;464c
	ld b,l			;464d
	call p,sub_7545h		;464e
	ld b,l			;4651
	ld a,a			;4652
	ld b,l			;4653
	ld a,c			;4654
	ld b,l			;4655
	sbc a,h			;4656
	ld b,l			;4657
	and d			;4658
	ld b,l			;4659
	cp l			;465a
	ld b,l			;465b
	ret pe			;465c
	ld b,l			;465d
	xor 045h		;465e
	ret nc			;4660
	ld b,l			;4661
	ld l,b			;4662
	ld b,l			;4663
	add a,h			;4664
	ld b,l			;4665
	adc a,(hl)			;4666
	ld b,l			;4667
	ld a,(de)			;4668
	add a,(ix+005h)		;4669
	ld (ix+005h),a		;466c
	ret			;466f
	ld a,(de)			;4670
	ld (ix+008h),a		;4671
	ret			;4674
	ld a,0e3h		;4675
	jr l467bh		;4677
	ld a,0e7h		;4679
l467bh:
	out (07fh),a		;467b
	dec de			;467d
	ret			;467e
	ld a,(de)			;467f
	ld (ix+007h),a		;4680
l4683h:
	ret			;4683
	set 4,(ix+000h)		;4684
	set 2,(ix+000h)		;4688
	jr l469ah		;468c
	res 4,(ix+000h)		;468e
	res 2,(ix+000h)		;4692
	xor a			;4696
	ld (0c2b0h),a		;4697
l469ah:
	dec de			;469a
	ret			;469b
	ex de,hl			;469c
	ld e,(hl)			;469d
	inc hl			;469e
	ld d,(hl)			;469f
	dec de			;46a0
	ret			;46a1
	ld a,(de)			;46a2
	ld c,a			;46a3
	inc de			;46a4
	ld a,(de)			;46a5
	ld b,a			;46a6
	push bc			;46a7
	push ix		;46a8
	pop hl			;46aa
	dec (ix+009h)		;46ab
	ld c,(ix+009h)		;46ae
	dec (ix+009h)		;46b1
	ld b,000h		;46b4
	add hl,bc			;46b6
	ld (hl),d			;46b7
	dec hl			;46b8
	ld (hl),e			;46b9
	pop de			;46ba
	dec de			;46bb
	ret			;46bc
	push ix		;46bd
	pop hl			;46bf
	ld c,(ix+009h)		;46c0
	ld b,000h		;46c3
	add hl,bc			;46c5
	ld e,(hl)			;46c6
	inc hl			;46c7
	ld d,(hl)			;46c8
	inc (ix+009h)		;46c9
	inc (ix+009h)		;46cc
	ret			;46cf
	ld a,(de)			;46d0
	inc de			;46d1
	add a,012h		;46d2
	ld c,a			;46d4
	ld b,000h		;46d5
	push ix		;46d7
	pop hl			;46d9
	add hl,bc			;46da
	ld a,(hl)			;46db
	or a			;46dc
	jr nz,l46e1h		;46dd
	ld a,(de)			;46df
	ld (hl),a			;46e0
l46e1h:
	inc de			;46e1
	dec (hl)			;46e2
	jp nz,l459ch		;46e3
	inc de			;46e6
	ret			;46e7
	set 5,(ix+000h)		;46e8
	dec de			;46ec
	ret			;46ed
	res 5,(ix+000h)		;46ee
	dec de			;46f2
	ret			;46f3
	call sub_4612h		;46f4
	ld a,(de)			;46f7
	ld hl,l460eh		;46f8
	ld c,a			;46fb
	ld b,000h		;46fc
	add hl,bc			;46fe
	ld a,(0c107h)		;46ff
	and (hl)			;4702
	ld (0c107h),a		;4703
	ld a,000h		;4706
	ld (ix+000h),a		;4708
	pop hl			;470b
	pop hl			;470c
	ret			;470d
	rst 38h			;470e
	nop			;470f
	cp 0fdh		;4710
	ld a,(ix+001h)		;4712
	add a,010h		;4715
	or 00fh		;4717
	out (07fh),a		;4719
	ret			;471b
	ld hl,0c250h		;471c
	ld de,0c251h		;471f
	ld bc,0007fh		;4722
l4725h:
	ld (hl),000h		;4725
l4727h:
	ldir		;4727
	ld hl,04633h		;4729
	ld c,07fh		;472c
	ld b,004h		;472e
	otir		;4730
	ret			;4732
	sbc a,a			;4733
	cp a			;4734
	rst 18h			;4735
	rst 38h			;4736
	ld a,0dfh		;4737
	out (07fh),a		;4739
	ld a,0ffh		;473b
	out (07fh),a		;473d
	ret			;473f
	nop			;4740
	nop			;4741
	rst 38h			;4742
	inc bc			;4743
	rst 0			;4744
	inc bc			;4745
	sub b			;4746
	inc bc			;4747
	ld e,l			;4748
	inc bc			;4749
	dec l			;474a
	inc bc			;474b
	rst 38h			;474c
	ld (bc),a			;474d
	call nc,0ab02h		;474e
	ld (bc),a			;4751
	add a,l			;4752
	ld (bc),a			;4753
	ld h,c			;4754
	ld (bc),a			;4755
	ccf			;4756
	ld (bc),a			;4757
	ld e,002h		;4758
	nop			;475a
	ld (bc),a			;475b
	ex (sp),hl			;475c
	ld bc,l01c8h		;475d
	xor a			;4760
	ld bc,00196h		;4761
	add a,b			;4764
	ld bc,l016ah		;4765
	ld d,(hl)			;4768
	ld bc,00143h		;4769
	jr nc,l476fh		;476c
	rra			;476e
l476fh:
	ld bc,0010fh		;476f
	nop			;4772
	ld bc,000f2h		;4773
	call po,0d700h		;4776
	nop			;4779
	rlc b		;477a
	ret nz			;477c
	nop			;477d
	or l			;477e
	nop			;477f
	xor e			;4780
	nop			;4781
	and c			;4782
	nop			;4783
	sbc a,b			;4784
	nop			;4785
	sub b			;4786
	nop			;4787
	adc a,b			;4788
	nop			;4789
	add a,b			;478a
	nop			;478b
	ld a,c			;478c
	nop			;478d
	ld (hl),d			;478e
	nop			;478f
	ld l,h			;4790
	nop			;4791
	ld h,(hl)			;4792
	nop			;4793
l4794h:
	ld h,b			;4794
	nop			;4795
	ld e,e			;4796
	nop			;4797
	ld d,l			;4798
	nop			;4799
	ld d,c			;479a
	nop			;479b
	ld c,h			;479c
	nop			;479d
	ld c,b			;479e
	nop			;479f
	ld b,h			;47a0
	nop			;47a1
	ld b,b			;47a2
	nop			;47a3
	inc a			;47a4
	nop			;47a5
	add hl,sp			;47a6
	nop			;47a7
	ld (hl),000h		;47a8
	inc sp			;47aa
	nop			;47ab
	jr nc,l47aeh		;47ac
l47aeh:
	dec l			;47ae
	nop			;47af
	dec hl			;47b0
	nop			;47b1
	jr z,l47b4h		;47b2
l47b4h:
	ld h,000h		;47b4
	inc h			;47b6
	nop			;47b7
	ld (l2000h),hl		;47b8
	nop			;47bb
	ld e,000h		;47bc
	inc e			;47be
	nop			;47bf
	dec de			;47c0
	nop			;47c1
	add hl,de			;47c2
	nop			;47c3
	djnz l47c6h		;47c4
l47c6h:
	ld c,000h		;47c6
	dec b			;47c8
	nop			;47c9
l47cah:
	rst 38h			;47ca
	ex af,af'			;47cb
	add a,b			;47cc
	ld bc,l4725h		;47cd
	nop			;47d0
	nop			;47d1
	nop			;47d2
	ld a,(bc)			;47d3
	ex af,af'			;47d4
	and b			;47d5
	ld bc,l4725h+1		;47d6
	nop			;47d9
	nop			;47da
	nop			;47db
	ex af,af'			;47dc
	ex af,af'			;47dd
	ret po			;47de
	ld bc,l4727h		;47df
l47e2h:
	nop			;47e2
	nop			;47e3
	nop			;47e4
	add hl,bc			;47e5
	ex af,af'			;47e6
	add a,b			;47e7
	ld bc,l4727h+1		;47e8
	nop			;47eb
	nop			;47ec
	nop			;47ed
	rrca			;47ee
	ex af,af'			;47ef
	and b			;47f0
	ld bc,l476fh+1		;47f1
	nop			;47f4
l47f5h:
	nop			;47f5
	nop			;47f6
	ld c,008h		;47f7
	add a,b			;47f9
	ld bc,l47b4h+1		;47fa
	nop			;47fd
	nop			;47fe
	nop			;47ff
	dec c			;4800
	ex af,af'			;4801
	and b			;4802
	ld bc,l47cah		;4803
	nop			;4806
	nop			;4807
	nop			;4808
	inc c			;4809
	ex af,af'			;480a
	add a,b			;480b
l480ch:
	ld bc,l47e2h		;480c
	nop			;480f
	nop			;4810
	nop			;4811
	inc c			;4812
	ex af,af'			;4813
	and b			;4814
	ld bc,l47f5h		;4815
	nop			;4818
	nop			;4819
	nop			;481a
	ld a,(bc)			;481b
	ex af,af'			;481c
l481dh:
	add a,b			;481d
	ld bc,l480ch		;481e
	nop			;4821
	nop			;4822
	nop			;4823
	rrca			;4824
	xor 0eeh		;4825
	xor 0e9h		;4827
	ret po			;4829
	inc b			;482a
	nop			;482b
	nop			;482c
	inc bc			;482d
	ld bc,0029dh		;482e
	ret po			;4831
	ld b,001h		;4832
	sbc a,h			;4834
	inc b			;4835
	ret po			;4836
	add hl,bc			;4837
	ld bc,l049ch		;4838
	ret po			;483b
	dec bc			;483c
	ld bc,l049ch		;483d
	ret pe			;4840
	ld bc,l019fh		;4841
	inc b			;4844
	jp (hl)			;4845
	ld bc,l0a9bh		;4846
	ld bc,l0a9ch		;4849
	push hl			;484c
	ld b,(hl)			;484d
	ld b,a			;484e
	ret pe			;484f
	ret po			;4850
	ld a,(bc)			;4851
	ld bc,0fb91h		;4852
	ex af,af'			;4855
	jp (hl)			;4856
	ld bc,l08b9h		;4857
	ret po			;485a
	ex af,af'			;485b
	ld bc,l08b9h		;485c
	ret po			;485f
	ld b,001h		;4860
	cp c			;4862
	ld a,(bc)			;4863
	ret po			;4864
	inc b			;4865
	ld bc,00cb9h		;4866
	ret po			;4869
	ld (bc),a			;486a
	ld bc,00cb9h		;486b
	pop hl			;486e
	ld (bc),a			;486f
	jp (hl)			;4870
	ret po			;4871
	inc b			;4872
	ld bc,l0493h+1		;4873
	ret po			;4876
	ld b,001h		;4877
	sub e			;4879
	inc b			;487a
	ret po			;487b
	ex af,af'			;487c
	ld bc,l0493h		;487d
	ret po			;4880
	add hl,bc			;4881
	ld bc,l0493h+1		;4882
	ret pe			;4885
	ld bc,00194h		;4886
	ld (bc),a			;4889
	jp (hl)			;488a
	ld bc,00892h		;488b
	ld bc,00891h		;488e
	push hl			;4891
	adc a,e			;4892
	ld b,a			;4893
	ret pe			;4894
	ret po			;4895
	ld a,(bc)			;4896
	ld bc,0fca4h		;4897
	ex af,af'			;489a
	jp (hl)			;489b
	ld bc,l08c7h+1		;489c
	ret po			;489f
	rlca			;48a0
	ld bc,l08c7h+1		;48a1
l48a4h:
	ret po			;48a4
	dec b			;48a5
	ld bc,l0ac7h		;48a6
	ret po			;48a9
	inc bc			;48aa
	ld bc,l0cc8h+1		;48ab
	ret po			;48ae
	ld (bc),a			;48af
	ld bc,l0cc8h		;48b0
	pop hl			;48b3
	ld (bc),a			;48b4
	jp (hl)			;48b5
	inc bc			;48b6
	ld h,b			;48b7
	ld bc,l5001h		;48b8
	ld bc,l4000h+1		;48bb
	ld bc,0a000h		;48be
	ld bc,0f003h		;48c1
	ld bc,00000h		;48c4
	ld bc,002e1h		;48c7
	jp (hl)			;48ca
	nop			;48cb
	nop			;48cc
	ld bc,l6203h		;48cd
	ld bc,l5201h		;48d0
	ld bc,l4301h		;48d3
	ld bc,0a000h		;48d6
	ld bc,0f303h		;48d9
	ld bc,00000h		;48dc
	ld bc,002e1h		;48df
	ret pe			;48e2
	nop			;48e3
	jp nz,0040ch		;48e4
	nop			;48e7
	pop bc			;48e8
	rrca			;48e9
	inc bc			;48ea
	nop			;48eb
	ret nz			;48ec
	inc c			;48ed
	inc b			;48ee
	nop			;48ef
	cp c			;48f0
	rrca			;48f1
	inc bc			;48f2
	pop hl			;48f3
	ld (bc),a			;48f4
	jp (hl)			;48f5
	nop			;48f6
	nop			;48f7
	ld bc,000e8h		;48f8
	push bc			;48fb
	inc c			;48fc
	inc b			;48fd
	nop			;48fe
	jp 0030fh		;48ff
	nop			;4902
	pop bc			;4903
	inc c			;4904
	inc b			;4905
	nop			;4906
	cp a			;4907
	rrca			;4908
	inc bc			;4909
	pop hl			;490a
	ld (bc),a			;490b
	jp (hl)			;490c
l490dh:
	nop			;490d
	jr nc,l4912h		;490e
	ret po			;4910
	dec c			;4911
l4912h:
	nop			;4912
	jr nc,l4917h		;4913
	ret po			;4915
	dec bc			;4916
l4917h:
	nop			;4917
	jr nc,l491dh		;4918
	pop hl			;491a
	inc bc			;491b
	rst 38h			;491c
l491dh:
	dec l			;491d
	ld c,b			;491e
	ld c,l			;491f
	ld c,b			;4920
	ld d,b			;4921
	ld c,b			;4922
	ld l,b			;4923
	ld c,b			;4924
	ld (hl),c			;4925
	ld c,b			;4926
	ld a,b			;4927
	ld c,b			;4928
	add a,a			;4929
	ld c,b			;492a
	adc a,l			;492b
	ld c,b			;492c
	rst 38h			;492d
	rst 38h			;492e
	rst 38h			;492f
l4930h:
	xor 0eeh		;4930
	.DB 0ddh,0ddh,0cch	;illegal sequence		;4932
	call z,0bbbbh		;4935
	xor d			;4938
	xor d			;4939
	sbc a,c			;493a
	sbc a,c			;493b
	adc a,b			;493c
	adc a,b			;493d
	ld (hl),a			;493e
	ld (hl),a			;493f
	ld (hl),a			;4940
	ld h,(hl)			;4941
	ld h,(hl)			;4942
	ld h,(hl)			;4943
	ld d,l			;4944
	ld d,l			;4945
	ld d,l			;4946
	ld b,h			;4947
	ld b,e			;4948
	inc sp			;4949
	ld (l0221h+1),a		;494a
	sub (iy+002h)		;494d
	rst 38h			;4950
	.DB 0edh;next byte illegal after ed		;4951
	call c,0a9bbh		;4952
l4955h:
	sbc a,b			;4955
	ld (hl),a			;4956
	cp e			;4957
	xor d			;4958
	sbc a,c			;4959
	adc a,b			;495a
	ld (hl),a			;495b
	ld h,(hl)			;495c
	ld d,l			;495d
	ld (hl),a			;495e
	halt			;495f
	ld h,(hl)			;4960
	ld d,l			;4961
	ld d,h			;4962
	ld b,h			;4963
	inc sp			;4964
	ld (00211h),hl		;4965
	.DB 0edh;next byte illegal after ed		;4968
	res 5,c		;4969
	add a,a			;496b
	halt			;496c
	ld d,h			;496d
	ld (l0221h),a		;496e
	rst 38h			;4971
	xor 0dch		;4972
	cp e			;4974
	xor c			;4975
	add a,a			;4976
	ld bc,0ffdeh		;4977
	rst 38h			;497a
	xor 0ddh		;497b
	call z,0aabbh		;497d
	sbc a,c			;4980
	adc a,b			;4981
	ld (hl),a			;4982
	ld h,(hl)			;4983
	ld d,l			;4984
	ld b,h			;4985
	ld bc,0a8fdh		;4986
	ld h,h			;4989
	inc sp			;498a
	ld hl,0ff02h		;498b
	xor 0dch		;498e
	ld bc,l8002h		;4990
l4993h:
	add a,b			;4993
	ld bc,l48a4h		;4994
	nop			;4997
	nop			;4998
	ld (bc),a			;4999
	rrca			;499a
	add a,b			;499b
	and b			;499c
	ld bc,048c6h		;499d
	nop			;49a0
	nop			;49a1
	ld (bc),a			;49a2
	ld c,0c3h		;49a3
	inc c			;49a5
l49a6h:
	jp pe,l0dfeh+2		;49a6
	and h			;49a9
	ld c,b			;49aa
	jp 0e306h		;49ab
	ld bc,l06a5h		;49ae
	ex (sp),hl			;49b1
	ld (bc),a			;49b2
	jp 0ea0ch		;49b3
	nop			;49b6
	inc bc			;49b7
	or e			;49b8
	ld c,b			;49b9
	jp 0e306h		;49ba
	ld bc,l06a5h		;49bd
	add a,b			;49c0
	inc h			;49c1
	or c			;49c2
	jr nc,l49a6h		;49c3
	nop			;49c5
	add a,b			;49c6
	ld bc,00bc2h		;49c7
	jp pe,l1300h		;49ca
	add a,048h		;49cd
	add a,b			;49cf
	dec h			;49d0
	ex (sp),hl			;49d1
	ld bc,0b1e8h		;49d2
	rst 38h			;49d5
	ld bc,l2fe9h		;49d6
	pop hl			;49d9
	nop			;49da
	ld bc,sub_8088h		;49db
	ld bc,048e5h		;49de
	nop			;49e1
	nop			;49e2
	nop			;49e3
	rrca			;49e4
	or (hl)			;49e5
	ld (bc),a			;49e6
	ret po			;49e7
	dec c			;49e8
	or (hl)			;49e9
	ld (bc),a			;49ea
	ret po			;49eb
	dec bc			;49ec
	or (hl)			;49ed
	inc bc			;49ee
	pop hl			;49ef
l49f0h:
	inc bc			;49f0
	inc bc			;49f1
	add a,b			;49f2
	add a,b			;49f3
	ld bc,l490dh		;49f4
	call p,00300h		;49f7
	inc c			;49fa
	add a,b			;49fb
	and b			;49fc
	ld bc,l4930h		;49fd
	call p,00300h		;4a00
	dec bc			;4a03
	add a,b			;4a04
	ret nz			;4a05
	ld bc,04953h		;4a06
	call p,00300h		;4a09
	inc c			;4a0c
	and d			;4a0d
	ld c,007h		;4a0e
	rlca			;4a10
	rlca			;4a11
	rlca			;4a12
	and b			;4a13
	ld c,007h		;4a14
	sbc a,c			;4a16
	sbc a,l			;4a17
	and b			;4a18
	jp pe,l0200h		;4a19
	dec c			;4a1c
	ld c,c			;4a1d
	and e			;4a1e
	ld c,007h		;4a1f
	sbc a,e			;4a21
	sbc a,(hl)			;4a22
	and e			;4a23
	and l			;4a24
	ld c,007h		;4a25
	rlca			;4a27
	rlca			;4a28
	rlca			;4a29
	ex (sp),hl			;4a2a
	ex af,af'			;4a2b
	xor d			;4a2c
	ld b,(hl)			;4a2d
	pop hl			;4a2e
	ld bc,00e9eh		;4a2f
	rlca			;4a32
	rlca			;4a33
	rlca			;4a34
	rlca			;4a35
	sbc a,l			;4a36
	ld c,007h		;4a37
	rlca			;4a39
	rlca			;4a3a
	rlca			;4a3b
	jp pe,l0200h		;4a3c
	jr nc,l4a8ah		;4a3f
	sbc a,(hl)			;4a41
	ld c,007h		;4a42
	adc a,a			;4a44
	sub d			;4a45
	sub a			;4a46
	and b			;4a47
	ld c,007h		;4a48
	rlca			;4a4a
	rlca			;4a4b
	rlca			;4a4c
	ex (sp),hl			;4a4d
	ex af,af'			;4a4e
	and l			;4a4f
	ld b,(hl)			;4a50
	pop hl			;4a51
	ld bc,00e8dh		;4a52
	rlca			;4a55
	rlca			;4a56
	rlca			;4a57
	rlca			;4a58
	ld c,007h		;4a59
	rlca			;4a5b
	rlca			;4a5c
	rlca			;4a5d
	jp pe,l0200h		;4a5e
	ld d,e			;4a61
	ld c,c			;4a62
	adc a,a			;4a63
	ld c,007h		;4a64
	rlca			;4a66
	rlca			;4a67
	sub c			;4a68
	ld c,007h		;4a69
	rlca			;4a6b
	rlca			;4a6c
	rlca			;4a6d
	sub d			;4a6e
	dec d			;4a6f
	adc a,l			;4a70
	ex (sp),hl			;4a71
	ex af,af'			;4a72
	sub d			;4a73
	inc e			;4a74
	pop hl			;4a75
	ld bc,l8003h		;4a76
	add a,b			;4a79
	ld bc,l4993h		;4a7a
	call p,sub_0600h		;4a7d
	inc c			;4a80
	add a,b			;4a81
	and b			;4a82
	ld bc,l49f0h		;4a83
	call p,sub_0600h		;4a86
	inc c			;4a89
l4a8ah:
	add a,b			;4a8a
	ret nz			;4a8b
	ld bc,04a40h		;4a8c
	nop			;4a8f
	nop			;4a90
	inc bc			;4a91
	dec c			;4a92
	and a			;4a93
	dec d			;4a94
	rlca			;4a95
	and (hl)			;4a96
	and a			;4a97
	and (hl)			;4a98
	dec d			;4a99
	rlca			;4a9a
	and h			;4a9b
	and (hl)			;4a9c
	and a			;4a9d
	dec d			;4a9e
	and (hl)			;4a9f
	and h			;4aa0
	ld c,007h		;4aa1
	and (hl)			;4aa3
	dec d			;4aa4
	inc hl			;4aa5
	rlca			;4aa6
	and h			;4aa7
	inc e			;4aa8
	and d			;4aa9
	rlca			;4aaa
	and h			;4aab
	and (hl)			;4aac
	dec d			;4aad
	and h			;4aae
	and d			;4aaf
	and (hl)			;4ab0
	and d			;4ab1
	rlca			;4ab2
	and 0e7h		;4ab3
	ld c,c			;4ab5
	and h			;4ab6
	rlca			;4ab7
	and 0e7h		;4ab8
	ld c,c			;4aba
	and d			;4abb
	rlca			;4abc
	and 0e7h		;4abd
	ld c,c			;4abf
	and a			;4ac0
	dec d			;4ac1
	and (hl)			;4ac2
	and d			;4ac3
l4ac4h:
	and h			;4ac4
	and d			;4ac5
	inc e			;4ac6
	rlca			;4ac7
	rlca			;4ac8
	and h			;4ac9
	ld c,0a6h		;4aca
	sbc a,e			;4acc
	and h			;4acd
	inc e			;4ace
	rlca			;4acf
	rlca			;4ad0
	ld hl,(00ea6h)		;4ad1
	rlca			;4ad4
	sbc a,a			;4ad5
	and d			;4ad6
	and (hl)			;4ad7
	and h			;4ad8
	ld c,0a6h		;4ad9
	and a			;4adb
	ex (sp),hl			;4adc
	ex af,af'			;4add
	xor c			;4ade
	inc e			;4adf
	ret po			;4ae0
	dec bc			;4ae1
	ex (sp),hl			;4ae2
	ld bc,0e123h		;4ae3
	ld bc,l0707h		;4ae6
	rlca			;4ae9
	rlca			;4aea
	rlca			;4aeb
	dec d			;4aec
	ld c,007h		;4aed
	rst 20h			;4aef
	sbc a,l			;4af0
	dec d			;4af1
	rlca			;4af2
	rlca			;4af3
	rlca			;4af4
	dec d			;4af5
	rlca			;4af6
	rlca			;4af7
	rlca			;4af8
	sbc a,l			;4af9
	dec d			;4afa
	dec d			;4afb
	ld c,007h		;4afc
	dec d			;4afe
	sbc a,h			;4aff
	inc hl			;4b00
	rlca			;4b01
	inc e			;4b02
	sbc a,b			;4b03
	rlca			;4b04
	and d			;4b05
	sbc a,h			;4b06
	dec d			;4b07
	sbc a,h			;4b08
	sbc a,h			;4b09
	sbc a,h			;4b0a
	sbc a,a			;4b0b
	rlca			;4b0c
	and 0e7h		;4b0d
	ld c,c			;4b0f
	and c			;4b10
	rlca			;4b11
	and 0e7h		;4b12
	ld c,c			;4b14
	sbc a,a			;4b15
	rlca			;4b16
	and 0e7h		;4b17
	ld c,c			;4b19
	and c			;4b1a
	dec d			;4b1b
	and c			;4b1c
	sbc a,a			;4b1d
	and c			;4b1e
	sbc a,a			;4b1f
	inc e			;4b20
	rlca			;4b21
	rlca			;4b22
	ld c,00eh		;4b23
	ld c,0a1h		;4b25
	inc e			;4b27
	rlca			;4b28
	rlca			;4b29
	ld hl,(00ea2h)		;4b2a
	rlca			;4b2d
	sub (hl)			;4b2e
	sbc a,d			;4b2f
	sbc a,l			;4b30
	and c			;4b31
	ld c,0a2h		;4b32
	and h			;4b34
	ex (sp),hl			;4b35
	ex af,af'			;4b36
	and (hl)			;4b37
	inc e			;4b38
	ret po			;4b39
	dec bc			;4b3a
	ex (sp),hl			;4b3b
	ld bc,0e123h		;4b3c
	ld bc,0078ah		;4b3f
	and 09ch		;4b42
	ld c,d			;4b44
	add a,l			;4b45
	rlca			;4b46
	adc a,d			;4b47
	adc a,(hl)			;4b48
	adc a,d			;4b49
	adc a,(hl)			;4b4a
	sub c			;4b4b
	sub c			;4b4c
	sub (hl)			;4b4d
	sbc a,d			;4b4e
	sbc a,d			;4b4f
	sbc a,l			;4b50
	and d			;4b51
	add a,a			;4b52
	inc hl			;4b53
	rlca			;4b54
	rlca			;4b55
	rlca			;4b56
	rlca			;4b57
	rlca			;4b58
	rlca			;4b59
	rlca			;4b5a
	add a,a			;4b5b
	rlca			;4b5c
	rlca			;4b5d
	rlca			;4b5e
	rlca			;4b5f
	rlca			;4b60
	rlca			;4b61
	rlca			;4b62
	rlca			;4b63
	rlca			;4b64
	dec d			;4b65
	add a,e			;4b66
	rlca			;4b67
	and 09ch		;4b68
	ld c,d			;4b6a
	sbc a,l			;4b6b
	rlca			;4b6c
	and 0e7h		;4b6d
	ld c,c			;4b6f
	add a,e			;4b70
	rlca			;4b71
	and 09ch		;4b72
	ld c,d			;4b74
	add a,l			;4b75
	rlca			;4b76
	and 09ch		;4b77
	ld c,d			;4b79
	add a,e			;4b7a
	inc e			;4b7b
	rlca			;4b7c
	rlca			;4b7d
	add a,e			;4b7e
	ld c,085h		;4b7f
	add a,a			;4b81
l4b82h:
	add a,l			;4b82
	inc e			;4b83
	rlca			;4b84
	rlca			;4b85
	ld hl,(00e87h)		;4b86
l4b89h:
	rlca			;4b89
	rlca			;4b8a
	adc a,d			;4b8b
	add a,d			;4b8c
l4b8dh:
	add a,l			;4b8d
	ld c,087h		;4b8e
	adc a,c			;4b90
	ex (sp),hl			;4b91
	ex af,af'			;4b92
l4b93h:
	adc a,d			;4b93
	inc e			;4b94
	ret po			;4b95
	dec bc			;4b96
	ex (sp),hl			;4b97
	ld bc,0e123h		;4b98
	ld bc,l0707h		;4b9b
	rlca			;4b9e
	rlca			;4b9f
	rlca			;4ba0
	rlca			;4ba1
	rlca			;4ba2
l4ba3h:
	rlca			;4ba3
l4ba4h:
	rlca			;4ba4
	rlca			;4ba5
	rlca			;4ba6
	rst 20h			;4ba7
	inc bc			;4ba8
l4ba9h:
	add a,b			;4ba9
l4baah:
	add a,b			;4baa
	ld bc,l4ac4h		;4bab
	rst 30h			;4bae
	nop			;4baf
l4bb0h:
	inc bc			;4bb0
	rrca			;4bb1
	add a,b			;4bb2
	and b			;4bb3
	ld bc,04b40h		;4bb4
	rst 30h			;4bb7
	nop			;4bb8
	inc bc			;4bb9
	ld c,080h		;4bba
	ret nz			;4bbc
	ld bc,04be0h		;4bbd
	inc bc			;4bc0
	nop			;4bc1
	dec b			;4bc2
	rrca			;4bc3
	and 031h		;4bc4
	ld c,e			;4bc6
	jp pe,00300h		;4bc7
	call nz,0e64ah		;4bca
	jr l4c1ah		;4bcd
	sbc a,c			;4bcf
	ld c,b			;4bd0
	ret po			;4bd1
	ld a,(bc)			;4bd2
	ex (sp),hl			;4bd3
	nop			;4bd4
	ld h,b			;4bd5
	ex (sp),hl			;4bd6
	inc bc			;4bd7
	ret po			;4bd8
	rrca			;4bd9
	sbc a,c			;4bda
	ex af,af'			;4bdb
	djnz l4c06h		;4bdc
	ex af,af'			;4bde
	djnz l4b82h		;4bdf
	jr z,l4bf3h		;4be1
	djnz $-93		;4be3
	jr nz,l4befh		;4be5
	djnz l4b89h		;4be7
	ld c,b			;4be9
	and c			;4bea
	jr nz,$+16		;4beb
	djnz l4b8dh		;4bed
l4befh:
	jr nz,$+16		;4bef
	djnz l4b93h		;4bf1
l4bf3h:
	ld c,b			;4bf3
	ex af,af'			;4bf4
l4bf5h:
	ex af,af'			;4bf5
	jr l4c08h		;4bf6
	sbc a,c			;4bf8
	jr z,$+16		;4bf9
	and c			;4bfb
l4bfch:
	jr z,l4c0eh		;4bfc
l4bfeh:
	djnz l4ba3h		;4bfe
l4c00h:
	jr nz,l4c0ah		;4c00
	djnz l4ba4h		;4c02
	jr z,l4c16h		;4c04
l4c06h:
	djnz l4ba9h		;4c06
l4c08h:
	jr nz,l4c1ah		;4c08
l4c0ah:
	djnz l4baah		;4c0a
l4c0ch:
	jr nz,$+16		;4c0c
l4c0eh:
	djnz l4bb0h		;4c0e
	ld c,b			;4c10
	djnz l4c2bh		;4c11
	ex af,af'			;4c13
	ex af,af'			;4c14
l4c15h:
	push hl			;4c15
l4c16h:
	call nz,0a84ah		;4c16
	ex af,af'			;4c19
l4c1ah:
	xor b			;4c1a
l4c1bh:
	and a			;4c1b
	xor b			;4c1c
	djnz $-86		;4c1d
l4c1fh:
	ex (sp),hl			;4c1f
	dec b			;4c20
	xor h			;4c21
l4c22h:
	ld c,b			;4c22
	ret po			;4c23
l4c24h:
	ld a,(bc)			;4c24
	ex (sp),hl			;4c25
	nop			;4c26
l4c27h:
	jr z,l4c0ch		;4c27
	dec b			;4c29
	ret po			;4c2a
l4c2bh:
	rrca			;4c2b
l4c2ch:
	sbc a,h			;4c2c
	ex af,af'			;4c2d
	add a,b			;4c2e
l4c2fh:
	ex af,af'			;4c2f
	rst 20h			;4c30
	xor b			;4c31
l4c32h:
	ex af,af'			;4c32
l4c33h:
	xor b			;4c33
	and a			;4c34
	xor b			;4c35
	djnz $-86		;4c36
	xor b			;4c38
	and a			;4c39
l4c3ah:
	xor b			;4c3a
	and a			;4c3b
	ex af,af'			;4c3c
l4c3dh:
	and l			;4c3d
	djnz l4c27h		;4c3e
	and 0d7h		;4c40
	ld c,e			;4c42
	and 0cbh		;4c43
	ld c,e			;4c45
	and 0a9h		;4c46
	ld c,e			;4c48
	sbc a,c			;4c49
	ld c,b			;4c4a
	ret po			;4c4b
	rlca			;4c4c
	ex (sp),hl			;4c4d
	nop			;4c4e
	ld h,b			;4c4f
	ex (sp),hl			;4c50
	dec b			;4c51
	ret po			;4c52
	dec c			;4c53
	sbc a,c			;4c54
	ex af,af'			;4c55
	sbc a,e			;4c56
	djnz l4bf5h		;4c57
	jr z,l4c63h		;4c59
	sbc a,e			;4c5b
	djnz $-103		;4c5c
	jr z,l4bfch		;4c5e
	djnz l4c00h		;4c60
	sbc a,e			;4c62
l4c63h:
	jr nz,l4bfeh		;4c63
	ex af,af'			;4c65
	sbc a,e			;4c66
	djnz l4c00h		;4c67
	ld c,b			;4c69
	sbc a,c			;4c6a
	jr nz,l4c08h		;4c6b
	djnz $-100		;4c6d
	sbc a,e			;4c6f
	jr nz,$-103		;4c70
	djnz l4c0ch		;4c72
	sbc a,e			;4c74
	ld c,b			;4c75
	sbc a,c			;4c76
	ex af,af'			;4c77
	sbc a,c			;4c78
	sbc a,b			;4c79
	jr l4c15h		;4c7a
l4c7ch:
	djnz l4c1ah		;4c7c
	jr z,l4c1bh		;4c7e
l4c80h:
	djnz l4c1bh		;4c80
	jr z,l4c1fh		;4c82
	djnz l4c22h		;4c84
	sbc a,e			;4c86
	jr nz,l4c22h		;4c87
	ex af,af'			;4c89
	sbc a,e			;4c8a
l4c8bh:
	djnz l4c24h		;4c8b
	jr z,$-103		;4c8d
	djnz l4c2ch		;4c8f
	sbc a,c			;4c91
	jr nz,l4c2fh		;4c92
	djnz l4c32h		;4c94
l4c96h:
	sbc a,e			;4c96
	jr nz,l4c32h		;4c97
	djnz l4c33h		;4c99
	sbc a,e			;4c9b
l4c9ch:
	ld b,b			;4c9c
	add a,b			;4c9d
	ex af,af'			;4c9e
	sbc a,c			;4c9f
	djnz l4c3ah		;4ca0
	jr l4c3dh		;4ca2
	ex af,af'			;4ca4
	sbc a,e			;4ca5
l4ca6h:
	push hl			;4ca6
	ld b,b			;4ca7
	ld c,e			;4ca8
	and l			;4ca9
	ex af,af'			;4caa
	ex af,af'			;4cab
	ex af,af'			;4cac
	djnz l4cbfh		;4cad
	ex (sp),hl			;4caf
	dec b			;4cb0
	and l			;4cb1
l4cb2h:
	ld c,b			;4cb2
l4cb3h:
	ret po			;4cb3
	rlca			;4cb4
	ex (sp),hl			;4cb5
	nop			;4cb6
	jr z,l4c9ch		;4cb7
	dec b			;4cb9
	ret po			;4cba
	rrca			;4cbb
	sbc a,c			;4cbc
	djnz l4ca6h		;4cbd
l4cbfh:
	and b			;4cbf
l4cc0h:
	ex af,af'			;4cc0
l4cc1h:
	ex af,af'			;4cc1
	ex af,af'			;4cc2
	djnz l4cd5h		;4cc3
	djnz l4cd7h		;4cc5
	djnz l4cd1h		;4cc7
	djnz l4cb2h		;4cc9
	and l			;4ccb
	ex af,af'			;4ccc
	ex af,af'			;4ccd
	ex af,af'			;4cce
	djnz $+16		;4ccf
l4cd1h:
	djnz l4ce3h		;4cd1
	djnz l4cddh		;4cd3
l4cd5h:
	djnz $-25		;4cd5
l4cd7h:
	and 0bfh		;4cd7
	ld c,e			;4cd9
	jp pe,l0200h		;4cda
l4cddh:
	rst 10h			;4cdd
	ld c,e			;4cde
	rst 20h			;4cdf
l4ce0h:
	and 03dh		;4ce0
	ld c,h			;4ce2
l4ce3h:
	adc a,l			;4ce3
	ex af,af'			;4ce4
	jp pe,l1400h		;4ce5
	ex (sp),hl			;4ce8
	ld c,e			;4ce9
	adc a,b			;4cea
	ex af,af'			;4ceb
l4cech:
	adc a,e			;4cec
	djnz l4c7ch		;4ced
l4cefh:
	ex af,af'			;4cef
	adc a,l			;4cf0
	ex af,af'			;4cf1
	adc a,l			;4cf2
	ex af,af'			;4cf3
sub_4cf4h:
	jp pe,sub_0600h		;4cf4
	jp p,0894bh		;4cf7
	djnz $-119		;4cfa
	ex af,af'			;4cfc
	jp pe,sub_0600h		;4cfd
	ei			;4d00
	ld c,e			;4d01
	adc a,e			;4d02
	djnz $-117		;4d03
	ex af,af'			;4d05
	jp pe,sub_0600h		;4d06
	inc b			;4d09
	ld c,h			;4d0a
	adc a,b			;4d0b
	djnz l4c96h		;4d0c
	ex af,af'			;4d0e
	jp pe,l0700h		;4d0f
	dec c			;4d12
	ld c,h			;4d13
	adc a,c			;4d14
	ex af,af'			;4d15
	jp pe,00800h		;4d16
	inc d			;4d19
	ld c,h			;4d1a
	add a,(hl)			;4d1b
	ex af,af'			;4d1c
	jp pe,sub_0600h		;4d1d
	dec de			;4d20
	ld c,h			;4d21
	add a,a			;4d22
	ex af,af'			;4d23
	add a,b			;4d24
	adc a,b			;4d25
	ex af,af'			;4d26
	jp pe,l0700h		;4d27
	dec h			;4d2a
	ld c,h			;4d2b
	adc a,b			;4d2c
	djnz l4d3fh		;4d2d
	ex af,af'			;4d2f
	ex af,af'			;4d30
l4d31h:
	adc a,e			;4d31
	djnz l4cc1h		;4d32
	ex af,af'			;4d34
	jp pe,l0200h+1		;4d35
	ret p			;4d38
	ld c,e			;4d39
	push hl			;4d3a
	ret po			;4d3b
	ld c,e			;4d3c
	adc a,e			;4d3d
	ex af,af'			;4d3e
l4d3fh:
	adc a,l			;4d3f
	ex af,af'			;4d40
	jp pe,l0efeh+2		;4d41
	ccf			;4d44
	ld c,h			;4d45
	jp pe,l0203h		;4d46
	dec a			;4d49
	ld c,h			;4d4a
	adc a,b			;4d4b
	ex af,af'			;4d4c
	adc a,c			;4d4d
	ex af,af'			;4d4e
	jp pe,l0efeh+2		;4d4f
	ld c,l			;4d52
	ld c,h			;4d53
l4d54h:
	jp pe,l0203h		;4d54
	ld c,e			;4d57
	ld c,h			;4d58
	adc a,c			;4d59
	ex af,af'			;4d5a
	ex af,af'			;4d5b
	ex af,af'			;4d5c
	djnz l4cefh		;4d5d
	djnz $-115		;4d5f
	ex af,af'			;4d61
	rst 20h			;4d62
	ex af,af'			;4d63
	ex af,af'			;4d64
	djnz l4d77h		;4d65
	djnz l4d79h		;4d67
	djnz l4d73h		;4d69
	djnz l4d54h		;4d6b
	ld (bc),a			;4d6d
	and b			;4d6e
	and b			;4d6f
	ld bc,l4c80h		;4d70
l4d73h:
	nop			;4d73
	nop			;4d74
	inc bc			;4d75
	inc c			;4d76
l4d77h:
	and b			;4d77
	ret po			;4d78
l4d79h:
	ld bc,l4c8bh		;4d79
	nop			;4d7c
	nop			;4d7d
	nop			;4d7e
	rrca			;4d7f
	add a,d			;4d80
	call m,08104h		;4d81
	djnz $+31		;4d84
	jp (hl)			;4d86
	adc a,l			;4d87
	ld (001e1h),a		;4d88
	call po,0fbbdh		;4d8b
	inc b			;4d8e
	and d			;4d8f
	inc bc			;4d90
	rra			;4d91
	ex (sp),hl			;4d92
	ld bc,0b2e9h		;4d93
	ld (001e1h),a		;4d96
	ld bc,0e0a0h		;4d99
	ld bc,04ca3h		;4d9c
	nop			;4d9f
	nop			;4da0
	rlca			;4da1
	rrca			;4da2
	call po,0fdb1h		;4da3
	inc c			;4da6
	pop hl			;4da7
	nop			;4da8
	ld bc,0e080h		;4da9
	ld bc,l4cb3h		;4dac
	nop			;4daf
	nop			;4db0
	inc b			;4db1
	rrca			;4db2
	call po,l0cc0h		;4db3
	pop hl			;4db6
	nop			;4db7
	inc bc			;4db8
	add a,b			;4db9
	add a,b			;4dba
	ld bc,04cd4h		;4dbb
	rst 30h			;4dbe
	nop			;4dbf
l4dc0h:
	inc bc			;4dc0
	inc c			;4dc1
	add a,b			;4dc2
	and b			;4dc3
	ld bc,l4ce0h		;4dc4
	rst 30h			;4dc7
	nop			;4dc8
	inc bc			;4dc9
	dec bc			;4dca
	add a,b			;4dcb
l4dcch:
	ret nz			;4dcc
	ld bc,l4cech		;4dcd
	inc bc			;4dd0
	nop			;4dd1
	dec b			;4dd2
l4dd3h:
	inc c			;4dd3
	and 031h		;4dd4
	ld c,e			;4dd6
	and 018h		;4dd7
	ld c,e			;4dd9
	ex (sp),hl			;4dda
	inc bc			;4ddb
	sbc a,c			;4ddc
	jr nz,l4dc0h		;4ddd
	ld bc,0cbe6h		;4ddf
	ld c,e			;4de2
	and 0a9h		;4de3
	ld c,e			;4de5
	ex (sp),hl			;4de6
	inc bc			;4de7
	sbc a,c			;4de8
	jr nz,l4dcch		;4de9
	ld bc,04be6h		;4deb
	ld c,h			;4dee
	add a,b			;4def
	jr l4dd3h		;4df0
	ld bc,04fffh		;4df2
	ld a,(0c2f0h)		;4df5
	and 01fh		;4df8
	ld e,a			;4dfa
	ld d,000h		;4dfb
	ld hl,l4d31h		;4dfd
	add hl,de			;4e00
	ld a,(hl)			;4e01
	or a			;4e02
	ret p			;4e03
	cp 0ffh		;4e04
	ret z			;4e06
	ld d,a			;4e07
	and 00fh		;4e08
	ld b,a			;4e0a
	bit 6,d		;4e0b
	jr nz,l4e1fh		;4e0d
	bit 5,d		;4e0f
	jr nz,l4e28h		;4e11
	ld a,(0c2f4h)		;4e13
	cp c			;4e16
	jr c,l4e1bh		;4e17
l4e19h:
	ld a,b			;4e19
	ret			;4e1a
l4e1bh:
	ld a,002h		;4e1b
	sub b			;4e1d
	ret			;4e1e
l4e1fh:
	ld a,(0c2f4h)		;4e1f
	cp c			;4e22
	jr nc,l4e19h		;4e23
	ld a,001h		;4e25
	ret			;4e27
l4e28h:
	ld a,(0c2f4h)		;4e28
	cp c			;4e2b
	jr c,l4e19h		;4e2c
	ld a,001h		;4e2e
	ret			;4e30
	rst 38h			;4e31
	ld bc,l0200h+2		;4e32
	jp nz,002c2h		;4e35
	ld (bc),a			;4e38
	and d			;4e39
	and d			;4e3a
	add a,b			;4e3b
	rst 38h			;4e3c
	rst 38h			;4e3d
	rst 38h			;4e3e
	rst 38h			;4e3f
	rst 38h			;4e40
	rst 38h			;4e41
	rst 38h			;4e42
	nop			;4e43
	nop			;4e44
	ret nz			;4e45
	ret nz			;4e46
	nop			;4e47
	nop			;4e48
	and b			;4e49
	and b			;4e4a
	add a,d			;4e4b
	rst 38h			;4e4c
	rst 38h			;4e4d
	rst 38h			;4e4e
	rst 38h			;4e4f
	rst 38h			;4e50
	bit 7,(ix+001h)		;4e51
	jr nz,l4e81h		;4e55
	xor a			;4e57
	ld (ix+003h),a		;4e58
	ld (ix+004h),a		;4e5b
	ld (ix+010h),a		;4e5e
	ld de,l4eaah		;4e61
	ld a,(ix+000h)		;4e64
	cp 005h		;4e67
	jr nc,l4e79h		;4e69
	ld a,(0c007h)		;4e6b
	add a,a			;4e6e
l4e6fh:
	bit 0,(ix+000h)		;4e6f
	jr z,l4e76h		;4e73
	inc a			;4e75
l4e76h:
	ld de,l4eb5h		;4e76
l4e79h:
	ld l,a			;4e79
	ld h,000h		;4e7a
	add hl,de			;4e7c
	ld a,(hl)			;4e7d
	ld (ix+011h),a		;4e7e
l4e81h:
	ld a,(ix+000h)		;4e81
	cp 005h		;4e84
	jr nz,l4e8dh		;4e86
	ld a,03ch		;4e88
	ld (0c067h),a		;4e8a
l4e8dh:
	ld (ix+001h),080h		;4e8d
	ld a,(0c31bh)		;4e91
	rrca			;4e94
	ld a,(0c31ah)		;4e95
	rra			;4e98
	or a			;4e99
	rra			;4e9a
	ld c,(ix+003h)		;4e9b
	ld b,000h		;4e9e
	ld hl,02dceh		;4ea0
	add hl,bc			;4ea3
	ld h,(hl)			;4ea4
	ld e,a			;4ea5
	call sub_0623h		;4ea6
	ld a,h			;4ea9
l4eaah:
	or a			;4eaa
	rra			;4eab
	ld b,a			;4eac
	ld a,l			;4ead
	rra			;4eae
	add a,(ix+004h)		;4eaf
	ld (ix+004h),a		;4eb2
l4eb5h:
	ld a,b			;4eb5
	adc a,(ix+003h)		;4eb6
	ld (ix+003h),a		;4eb9
	ld c,a			;4ebc
	ld a,(ix+000h)		;4ebd
	cp 005h		;4ec0
	jr nz,l4f20h		;4ec2
	ld a,c			;4ec4
	cp 058h		;4ec5
	jr c,l4f2dh		;4ec7
	ld a,(ix+010h)		;4ec9
	or a			;4ecc
	ld a,c			;4ecd
	jr nz,l4f20h		;4ece
	ld (ix+010h),a		;4ed0
	ld a,(0c007h)		;4ed3
	inc a			;4ed6
	cp 005h		;4ed7
	jr c,l4ee6h		;4ed9
	ld hl,0c000h		;4edb
	set 5,(hl)		;4ede
	xor a			;4ee0
	ld (0c011h),a		;4ee1
	jr l4f15h		;4ee4
l4ee6h:
	ld b,a			;4ee6
	ld a,(0c00dh)		;4ee7
	ld hl,0c074h		;4eea
	add a,(hl)			;4eed
	cp 064h		;4eee
	jr c,l4ef4h		;4ef0
	ld a,063h		;4ef2
l4ef4h:
	ld (0c00dh),a		;4ef4
	ld a,001h		;4ef7
	ld (0c00ch),a		;4ef9
	ld hl,00004h		;4efc
	ld (0c060h),hl		;4eff
	ld a,(0c011h)		;4f02
	add a,002h		;4f05
	ld (0c011h),a		;4f07
	ld a,014h		;4f0a
	ld (0c078h),a		;4f0c
	ld a,003h		;4f0f
	ld (0c079h),a		;4f11
	ld a,b			;4f14
l4f15h:
	ld (0c007h),a		;4f15
	ld (0c04bh),a		;4f18
	xor a			;4f1b
	ld (0c2f2h),a		;4f1c
	ld a,c			;4f1f
l4f20h:
	ld a,c			;4f20
	cp 087h		;4f21
	jr c,l4f2dh		;4f23
	ld hl,0c068h		;4f25
	ld (hl),00bh		;4f28
	jp l2558h		;4f2a
l4f2dh:
	add a,05fh		;4f2d
	ld (ix+002h),a		;4f2f
	ld hl,l2edeh		;4f32
	ld b,000h		;4f35
	add hl,bc			;4f37
	ld a,(hl)			;4f38
	bit 0,(ix+000h)		;4f39
	jr nz,l4f42h		;4f3d
	neg		;4f3f
	dec b			;4f41
l4f42h:
	add a,07ch		;4f42
	ld (ix+005h),a		;4f44
	ld a,000h		;4f47
	adc a,b			;4f49
	ld (ix+008h),a		;4f4a
	ld a,c			;4f4d
	cp 060h		;4f4e
	jr c,l4f63h		;4f50
	ld b,000h		;4f52
	ld hl,0c55fh		;4f54
	add hl,bc			;4f57
	ld a,(0c5bfh)		;4f58
	or a			;4f5b
	jp p,04e60h		;4f5c
	dec b			;4f5f
	ld a,(hl)			;4f60
	jr l4f6fh		;4f61
l4f63h:
	ld b,000h		;4f63
	ld hl,0c55fh		;4f65
	add hl,bc			;4f68
	ld a,(hl)			;4f69
	or a			;4f6a
	jp p,l4e6fh		;4f6b
	dec b			;4f6e
l4f6fh:
	add a,(ix+005h)		;4f6f
	ld (ix+006h),a		;4f72
	ld a,b			;4f75
	adc a,(ix+008h)		;4f76
	ld (ix+007h),a		;4f79
	ld b,000h		;4f7c
	ld hl,02e56h		;4f7e
	add hl,bc			;4f81
	ld a,(hl)			;4f82
	add a,(ix+011h)		;4f83
	ld (ix+00ah),a		;4f86
	ld a,(ix+007h)		;4f89
	or a			;4f8c
	ret nz			;4f8d
	ld a,(ix+003h)		;4f8e
	cp 04ch		;4f91
	ret c			;4f93
	cp 064h		;4f94
	ret nc			;4f96
	ld hl,0c310h		;4f97
	ld a,(ix+006h)		;4f9a
	bit 0,(ix+000h)		;4f9d
	jr nz,l4fa8h		;4fa1
	cp (hl)			;4fa3
	ret c			;4fa4
	inc hl			;4fa5
	jr l4fabh		;4fa6
l4fa8h:
	inc hl			;4fa8
	cp (hl)			;4fa9
	ret nc			;4faa
l4fabh:
	inc hl			;4fab
	ld (hl),001h		;4fac
	ret			;4fae
	ld c,c			;4faf
	ld c,a			;4fb0
	ld c,c			;4fb1
	ld c,a			;4fb2
	ld d,l			;4fb3
	ld e,e			;4fb4
	rra			;4fb5
	add hl,de			;4fb6
	dec hl			;4fb7
	dec h			;4fb8
	scf			;4fb9
	ld sp,l3d43h		;4fba
	rra			;4fbd
	add hl,de			;4fbe
	bit 7,(ix+001h)		;4fbf
	jr nz,l4fd2h		;4fc3
	ld (ix+00ah),061h		;4fc5
	ld (ix+010h),000h		;4fc9
	ld a,08bh		;4fcd
	ld (0c100h),a		;4fcf
l4fd2h:
	ld (ix+001h),080h		;4fd2
	ld a,0ffh		;4fd6
	ld (0c067h),a		;4fd8
	ld hl,(0c31ah)		;4fdb
	ld de,0fff8h		;4fde
	add hl,de			;4fe1
	jr c,l4fe7h		;4fe2
	ld hl,00000h		;4fe4
l4fe7h:
	ld (0c31ah),hl		;4fe7
	inc (ix+010h)		;4fea
	ld a,(0c310h)		;4fed
	cp 009h		;4ff0
	ret c			;4ff2
	ld a,000h		;4ff3
	ld (0c310h),a		;4ff5
	inc (ix+00ah)		;4ff8
	ld a,(0c30ah)		;4ffb
	cp 06bh		;4ffe
	ret c			;5000
l5001h:
	ld a,001h		;5001
	ld (0c300h),a		;5003
	ld a,041h		;5006
	ld (0c301h),a		;5008
	ld a,00eh		;500b
	ld (0c069h),a		;500d
	xor a			;5010
	ld (0c06eh),a		;5011
	ret			;5014
	ld c,0ffh		;5015
	ld b,000h		;5017
	ld a,(0c075h)		;5019
	or a			;501c
	ld a,(0c013h)		;501d
	jr nz,l508ah		;5020
	cp 035h		;5022
	jr nc,l5027h		;5024
	dec b			;5026
l5027h:
	cp 073h		;5027
	jr c,l502ch		;5029
	dec b			;502b
l502ch:
	ld a,b			;502c
	ld (0c075h),a		;502d
	ld hl,(0c31ah)		;5030
	ld de,0ff24h		;5033
	add hl,de			;5036
	jr nc,l509eh		;5037
	push bc			;5039
	ld ix,0c320h		;503a
	ld de,00020h		;503e
	ld b,003h		;5041
	ld hl,00000h		;5043
	ld c,l			;5046
l5047h:
	ld a,(ix+000h)		;5047
	or a			;504a
	jr z,l5059h		;504b
	ld a,(ix+003h)		;504d
	cp c			;5050
	jr c,l5059h		;5051
	ld c,a			;5053
	ld h,(ix+008h)		;5054
	ld l,0ffh		;5057
l5059h:
	add ix,de		;5059
	djnz l5047h		;505b
	ld a,c			;505d
	pop bc			;505e
	cp 030h		;505f
	jr c,l509eh		;5061
	ld a,l			;5063
	or a			;5064
	jr z,l509eh		;5065
	ld a,h			;5067
	or a			;5068
	jp p,04f7bh		;5069
	cp 0a0h		;506c
	jr c,l509eh		;506e
	ld a,(0c013h)		;5070
	cp 044h		;5073
	jr c,l509eh		;5075
	res 3,c		;5077
	jr l509eh		;5079
	cp 060h		;507b
	jr nc,l509eh		;507d
	ld a,(0c013h)		;507f
	cp 064h		;5082
	jr nc,l509eh		;5084
	res 2,c		;5086
	jr l509eh		;5088
l508ah:
	cp 050h		;508a
	jr nc,l5092h		;508c
	res 2,c		;508e
	jr l509eh		;5090
l5092h:
	cp 058h		;5092
	jr c,l509ah		;5094
	res 3,c		;5096
	jr l509eh		;5098
l509ah:
	xor a			;509a
	ld (0c075h),a		;509b
l509eh:
	xor a			;509e
	ld de,(0c31ah)		;509f
	ld hl,0ffa6h		;50a3
	add hl,de			;50a6
	jr nc,l50aah		;50a7
	inc a			;50a9
l50aah:
	ld hl,0ff4ch		;50aa
	add hl,de			;50ad
	jr nc,l50b1h		;50ae
	inc a			;50b0
l50b1h:
	ld (0c318h),a		;50b1
	ld hl,(0c2f5h)		;50b4
	bit 7,h		;50b7
	jr z,l50c2h		;50b9
	ld a,l			;50bb
	cpl			;50bc
	ld l,a			;50bd
	ld a,h			;50be
	cpl			;50bf
	ld h,a			;50c0
	inc hl			;50c1
l50c2h:
	ld a,l			;50c2
	or h			;50c3
	jr z,l50dfh		;50c4
	ld de,0fe80h		;50c6
	add hl,de			;50c9
	jr nc,l50d1h		;50ca
	ld hl,0ff01h		;50cc
	jr l50d4h		;50cf
l50d1h:
	ld hl,0feedh		;50d1
l50d4h:
	ld de,(0c31ah)		;50d4
	add hl,de			;50d8
	jr nc,l50dfh		;50d9
	res 4,c		;50db
	jr l50e1h		;50dd
l50dfh:
	res 5,c		;50df
l50e1h:
	ld a,c			;50e1
	ret			;50e2
	dec bc			;50e3
	rst 38h			;50e4
	add a,d			;50e5
	nop			;50e6
	rst 38h			;50e7
	inc bc			;50e8
	nop			;50e9
	inc bc			;50ea
	rst 38h			;50eb
	add a,d			;50ec
	nop			;50ed
	rst 38h			;50ee
	inc bc			;50ef
	nop			;50f0
	add a,l			;50f1
	cp 0fch		;50f2
	ret m			;50f4
	nop			;50f5
	ret nz			;50f6
	dec c			;50f7
	nop			;50f8
	add a,d			;50f9
	rst 38h			;50fa
	nop			;50fb
	ld (bc),a			;50fc
	rst 38h			;50fd
	add a,d			;50fe
	nop			;50ff
	rst 38h			;5100
	ld (bc),a			;5101
	nop			;5102
	add a,d			;5103
	rst 38h			;5104
	nop			;5105
	ld (bc),a			;5106
	rst 38h			;5107
	add a,d			;5108
	nop			;5109
	ret m			;510a
	ld (bc),a			;510b
	nop			;510c
	add a,e			;510d
	ret po			;510e
	nop			;510f
	add a,b			;5110
	ld b,000h		;5111
	add a,l			;5113
	ex af,af'			;5114
	nop			;5115
	ex af,af'			;5116
	nop			;5117
	ex af,af'			;5118
	inc b			;5119
	rst 38h			;511a
	adc a,b			;511b
	cp 0fch		;511c
	ret m			;511e
	rst 38h			;511f
	ret p			;5120
	ret po			;5121
	ret nz			;5122
	add a,b			;5123
	inc bc			;5124
	nop			;5125
	adc a,c			;5126
	add a,b			;5127
	nop			;5128
	ex af,af'			;5129
	nop			;512a
	ex af,af'			;512b
	nop			;512c
	ex af,af'			;512d
	nop			;512e
	ex af,af'			;512f
	inc b			;5130
	rst 38h			;5131
	sub h			;5132
	call m,0f0ffh		;5133
	rst 38h			;5136
	ret po			;5137
	cp 000h		;5138
	ret m			;513a
	nop			;513b
	ret po			;513c
	nop			;513d
	add a,b			;513e
	nop			;513f
	jr l5142h		;5140
l5142h:
	jr l5144h		;5142
l5144h:
	jr l5146h		;5144
l5146h:
	jr l514ah		;5146
	rst 38h			;5148
	add a,c			;5149
l514ah:
	cp 002h		;514a
	rst 38h			;514c
	add a,d			;514d
	ret p			;514e
	ret nz			;514f
	ld (bc),a			;5150
	rst 38h			;5151
	ld (bc),a			;5152
	nop			;5153
	add a,d			;5154
	ret m			;5155
	ret p			;5156
	ld (bc),a			;5157
	nop			;5158
	add a,d			;5159
	add a,b			;515a
	inc e			;515b
	ld (bc),a			;515c
	nop			;515d
	ld (bc),a			;515e
	inc e			;515f
	ld (bc),a			;5160
	nop			;5161
	add a,h			;5162
	inc e			;5163
	rst 38h			;5164
	cp 0fch		;5165
	ld (bc),a			;5167
	rst 38h			;5168
	add a,h			;5169
	ret nz			;516a
	add a,b			;516b
	nop			;516c
	rst 38h			;516d
	ld (bc),a			;516e
	nop			;516f
	add a,d			;5170
	ret m			;5171
	ret p			;5172
	inc bc			;5173
	nop			;5174
	add a,c			;5175
	inc e			;5176
	ld (bc),a			;5177
	nop			;5178
	ld (bc),a			;5179
	inc e			;517a
	inc bc			;517b
	nop			;517c
	dec bc			;517d
	rst 38h			;517e
	add a,e			;517f
	ret po			;5180
	ret nz			;5181
	add a,b			;5182
	inc bc			;5183
	rst 38h			;5184
	add a,d			;5185
	cp 0fch		;5186
	inc bc			;5188
	nop			;5189
	add a,d			;518a
	ret nz			;518b
	add a,b			;518c
	inc bc			;518d
	inc a			;518e
	inc bc			;518f
	nop			;5190
	ld (bc),a			;5191
	inc a			;5192
	add hl,bc			;5193
	rst 38h			;5194
	add a,h			;5195
	ret p			;5196
	ret po			;5197
	ret nz			;5198
	add a,b			;5199
	inc b			;519a
	rst 38h			;519b
	inc b			;519c
	nop			;519d
	add a,h			;519e
	ret po			;519f
	ret nz			;51a0
	add a,b			;51a1
	inc a			;51a2
	inc b			;51a3
	nop			;51a4
	inc bc			;51a5
	inc a			;51a6
	inc b			;51a7
	rst 38h			;51a8
	add a,c			;51a9
	cp 004h		;51aa
	rst 38h			;51ac
	add a,h			;51ad
	ret po			;51ae
	ret nz			;51af
	add a,b			;51b0
	nop			;51b1
	inc b			;51b2
	rst 38h			;51b3
	inc b			;51b4
	nop			;51b5
	add a,e			;51b6
	ret po			;51b7
	ret nz			;51b8
	add a,b			;51b9
	ex af,af'			;51ba
	nop			;51bb
	add a,c			;51bc
	ld a,004h		;51bd
	nop			;51bf
l51c0h:
	inc bc			;51c0
	ld a,003h		;51c1
	rst 38h			;51c3
	add a,e			;51c4
	cp 0fch		;51c5
	ret m			;51c7
	inc bc			;51c8
	rst 38h			;51c9
	add a,c			;51ca
	ret nz			;51cb
	inc b			;51cc
	nop			;51cd
	inc bc			;51ce
	rst 38h			;51cf
	dec b			;51d0
	nop			;51d1
	add a,e			;51d2
	ret nz			;51d3
	add a,b			;51d4
	ld a,(hl)			;51d5
	dec b			;51d6
	nop			;51d7
	ld (bc),a			;51d8
	ld a,(hl)			;51d9
	inc b			;51da
	rst 38h			;51db
	add a,h			;51dc
	ret m			;51dd
	ret p			;51de
	ret nz			;51df
	add a,b			;51e0
	inc b			;51e1
	rst 38h			;51e2
	inc b			;51e3
	nop			;51e4
	add a,h			;51e5
	rst 38h			;51e6
	cp 0fch		;51e7
	ret m			;51e9
	inc b			;51ea
	nop			;51eb
	inc b			;51ec
	ld a,(hl)			;51ed
	inc b			;51ee
	nop			;51ef
	add a,d			;51f0
	rst 38h			;51f1
	cp 006h		;51f2
	rst 38h			;51f4
	ld (bc),a			;51f5
	nop			;51f6
	ld b,0ffh		;51f7
	ld (bc),a			;51f9
	nop			;51fa
	add a,(hl)			;51fb
	call m,0f0f8h		;51fc
	ret po			;51ff
	ret nz			;5200
l5201h:
	add a,b			;5201
	ld (bc),a			;5202
	nop			;5203
	ld b,07eh		;5204
	ld a,a			;5206
	nop			;5207
	ld a,a			;5208
	nop			;5209
	ld a,a			;520a
	nop			;520b
	ld a,a			;520c
	nop			;520d
	dec d			;520e
	nop			;520f
	add a,c			;5210
	inc a			;5211
	ld (bc),a			;5212
	ld a,d			;5213
	add a,(hl)			;5214
	inc a			;5215
	nop			;5216
	inc a			;5217
	ld a,d			;5218
	nop			;5219
	inc a			;521a
	ld (bc),a			;521b
	ld a,d			;521c
	add a,(hl)			;521d
	inc a			;521e
	nop			;521f
	inc a			;5220
	ld a,d			;5221
	nop			;5222
	inc a			;5223
	ld (bc),a			;5224
	ld a,d			;5225
	add a,h			;5226
	inc a			;5227
	nop			;5228
	inc a			;5229
	ld a,d			;522a
	ex af,af'			;522b
	nop			;522c
	inc bc			;522d
	ret po			;522e
	inc bc			;522f
	rst 38h			;5230
	add a,l			;5231
	call m,007f8h		;5232
	inc bc			;5235
	ld bc,0f803h		;5236
	add a,d			;5239
	jr c,l5254h		;523a
	ld b,0f0h		;523c
	add a,d			;523e
	ret m			;523f
	call m,00806h		;5240
	sub d			;5243
	jr l527eh		;5244
	di			;5246
	ret p			;5247
	rst 30h			;5248
	ret p			;5249
	rst 30h			;524a
	ret p			;524b
	ei			;524c
	call m,l08c7h+1		;524d
	ret pe			;5250
	ex af,af'			;5251
	ret pe			;5252
	ex af,af'			;5253
l5254h:
	ret c			;5254
	jr c,l5259h		;5255
	rst 38h			;5257
	add a,d			;5258
l5259h:
	call m,l04f8h		;5259
	ret p			;525c
	ld (bc),a			;525d
	ret m			;525e
	add a,d			;525f
	jr c,l527ah		;5260
	inc b			;5262
	ex af,af'			;5263
	ld (bc),a			;5264
	ret p			;5265
	add a,d			;5266
	ret m			;5267
	call m,0ff02h		;5268
	add a,d			;526b
	call m,002f8h		;526c
	ex af,af'			;526f
	add a,d			;5270
	jr $+56		;5271
	ld (bc),a			;5273
	ret m			;5274
	add a,d			;5275
	jr c,l5290h		;5276
	ld (bc),a			;5278
	rst 38h			;5279
l527ah:
	add a,(hl)			;527a
	call m,0f3f8h		;527b
l527eh:
	ret p			;527e
	rst 30h			;527f
	ret p			;5280
	ld (bc),a			;5281
	ret m			;5282
	adc a,d			;5283
	jr c,l529eh		;5284
	ret z			;5286
	ex af,af'			;5287
	ret pe			;5288
	ex af,af'			;5289
	rst 30h			;528a
	ret p			;528b
	ei			;528c
	call m,0ff02h		;528d
l5290h:
	add a,(hl)			;5290
	call m,0e8f8h		;5291
	ex af,af'			;5294
	ret c			;5295
	jr c,l529ah		;5296
	ret m			;5298
	add a,l			;5299
l529ah:
	jr c,l52b4h		;529a
	ret p			;529c
	pop af			;529d
l529eh:
	di			;529e
	inc bc			;529f
	ret p			;52a0
	adc a,d			;52a1
	ret m			;52a2
	call m,0c808h		;52a3
	ret pe			;52a6
	ld l,b			;52a7
	jr z,l52b2h		;52a8
	jr l52e4h		;52aa
	dec b			;52ac
	rst 38h			;52ad
	add a,e			;52ae
	rra			;52af
	sbc a,a			;52b0
	rst 18h			;52b1
l52b2h:
	dec b			;52b2
	ret m			;52b3
l52b4h:
	ld b,0ffh		;52b4
	add a,l			;52b6
	rst 28h			;52b7
	adc a,a			;52b8
	rrca			;52b9
	rlca			;52ba
	ret nz			;52bb
	inc b			;52bc
	rst 8			;52bd
	ld (bc),a			;52be
	rst 0			;52bf
	add a,d			;52c0
	rst 8			;52c1
	rra			;52c2
	dec b			;52c3
	nop			;52c4
	adc a,b			;52c5
	ld (bc),a			;52c6
	rlca			;52c7
	rrca			;52c8
	nop			;52c9
	inc bc			;52ca
	ld b,008h		;52cb
	djnz l52d1h		;52cd
	nop			;52cf
	add a,e			;52d0
l52d1h:
	ret nz			;52d1
	nop			;52d2
	add a,b			;52d3
	add hl,bc			;52d4
	nop			;52d5
	add a,c			;52d6
	inc c			;52d7
	inc b			;52d8
	inc bc			;52d9
	dec b			;52da
	nop			;52db
	add a,l			;52dc
	ld b,0feh		;52dd
	call m,sub_1f3fh		;52df
	ld (bc),a			;52e2
	rlca			;52e3
l52e4h:
	inc b			;52e4
	nop			;52e5
	add a,e			;52e6
	ret nz			;52e7
	call m,002feh		;52e8
	rst 38h			;52eb
	add a,d			;52ec
	ccf			;52ed
	rrca			;52ee
	ld (bc),a			;52ef
	nop			;52f0
	add a,e			;52f1
	rrca			;52f2
	ccf			;52f3
	.DB 0fdh,002h,0e0h	;illegal sequence		;52f4
	ld (bc),a			;52f7
	nop			;52f8
	add a,h			;52f9
	rrca			;52fa
	cp 0fch		;52fb
	ret p			;52fd
	dec bc			;52fe
	nop			;52ff
	add a,c			;5300
	ld bc,00006h		;5301
	ld (bc),a			;5304
	add a,b			;5305
	ld (bc),a			;5306
	nop			;5307
	add a,c			;5308
	inc bc			;5309
	ex af,af'			;530a
	nop			;530b
	add a,l			;530c
	add a,b			;530d
	ret nz			;530e
	ld b,b			;530f
	add a,b			;5310
	inc c			;5311
	inc b			;5312
	nop			;5313
	add a,e			;5314
	ld bc,l03ffh		;5315
	dec b			;5318
	nop			;5319
	add a,h			;531a
	ret nz			;531b
	ret p			;531c
	rst 38h			;531d
	inc c			;531e
	ld (bc),a			;531f
	nop			;5320
	add a,c			;5321
	ld b,b			;5322
	ld (bc),a			;5323
	add a,b			;5324
	add a,e			;5325
	ld b,b			;5326
	ret p			;5327
	rra			;5328
	inc b			;5329
	nop			;532a
	adc a,e			;532b
	djnz $+56		;532c
	rst 38h			;532e
	rst 20h			;532f
	nop			;5330
	inc bc			;5331
	ld e,038h		;5332
	ld l,b			;5334
	ret po			;5335
	ret nz			;5336
	ex af,af'			;5337
	nop			;5338
	add a,c			;5339
	ld sp,hl			;533a
	inc bc			;533b
	nop			;533c
	and e			;533d
	inc bc			;533e
	rra			;533f
	ld a,c			;5340
	and b			;5341
	rst 20h			;5342
	nop			;5343
	rlca			;5344
	rrca			;5345
	ret m			;5346
	rrca			;5347
	cp 0f8h		;5348
	ret p			;534a
	adc a,d			;534b
	djnz l5355h		;534c
	ld (hl),a			;534e
	di			;534f
	adc a,a			;5350
	jr $+96		;5351
	inc c			;5353
	ld a,b			;5354
l5355h:
	ld e,c			;5355
	ei			;5356
	and 08bh		;5357
	.DB 0fdh,000h,00dh	;illegal sequence		;5359
	ld a,a			;535c
	.DB 0ddh,07fh,0fdh	;illegal sequence		;535d
	jp po,l0200h+2		;5360
	add a,a			;5363
	jp 0cd0fh		;5364
	ret c			;5367
	sbc a,a			;5368
	ld a,a			;5369
	ld b,(hl)			;536a
	rlca			;536b
	nop			;536c
	add a,d			;536d
	inc bc			;536e
	ld b,004h		;536f
	nop			;5371
	adc a,l			;5372
	rrca			;5373
	rst 38h			;5374
	cp 000h		;5375
	rrca			;5377
	ei			;5378
	ld a,(hl)			;5379
	call c,0fc14h		;537a
	ex de,hl			;537d
	jp l027eh+2		;537e
	ret nz			;5381
	add a,l			;5382
	ld l,b			;5383
	scf			;5384
	call c,sub_7cf7h		;5385
	inc b			;5388
	nop			;5389
	add a,h			;538a
	ret nz			;538b
	rst 28h			;538c
	pop de			;538d
	ld a,(hl)			;538e
	dec b			;538f
	nop			;5390
	add a,e			;5391
	add a,b			;5392
	adc a,07dh		;5393
	ld b,000h		;5395
	add a,d			;5397
	inc b			;5398
	add a,(hl)			;5399
	rlca			;539a
	nop			;539b
	add a,c			;539c
	rst 28h			;539d
	inc bc			;539e
	nop			;539f
	add a,c			;53a0
	ld (bc),a			;53a1
	ld (bc),a			;53a2
	ld bc,l0200h+2		;53a3
	add a,d			;53a6
	nop			;53a7
	rst 38h			;53a8
	inc bc			;53a9
	add a,b			;53aa
	add a,c			;53ab
	adc a,(hl)			;53ac
	ld (bc),a			;53ad
	adc a,b			;53ae
	add a,d			;53af
	nop			;53b0
	rst 38h			;53b1
	ld b,010h		;53b2
	dec bc			;53b4
	nop			;53b5
	add a,h			;53b6
	ld bc,l3606h		;53b7
	ld b,c			;53ba
	inc b			;53bb
l53bch:
	nop			;53bc
l53bdh:
	add a,h			;53bd
	add a,b			;53be
	jr nz,l53bdh		;53bf
	djnz l53c7h		;53c1
	nop			;53c3
	add a,h			;53c4
	jr c,l542bh		;53c5
l53c7h:
	jp m,l0224h		;53c7
	nop			;53ca
	add a,(hl)			;53cb
	dec bc			;53cc
	dec e			;53cd
	dec de			;53ce
	add hl,sp			;53cf
	ld a,a			;53d0
	jr z,l53d5h		;53d1
	nop			;53d3
	add a,c			;53d4
l53d5h:
	ex af,af'			;53d5
	ld (bc),a			;53d6
	ld a,(bc)			;53d7
	add a,d			;53d8
	dec de			;53d9
	ld a,l			;53da
	rlca			;53db
	nop			;53dc
	sub c			;53dd
	ld a,(bc)			;53de
	ld h,048h		;53df
	ld a,(bc)			;53e1
	inc de			;53e2
	ld de,l2535h		;53e3
	ld (de),a			;53e6
	inc hl			;53e7
	ld b,l			;53e8
	nop			;53e9
	jr nz,l53bch		;53ea
	xor 0efh		;53ec
	ld l,h			;53ee
	ld (bc),a			;53ef
	ld l,b			;53f0
	dec b			;53f1
	nop			;53f2
l53f3h:
	add a,l			;53f3
	ld b,b			;53f4
	jr l53feh		;53f5
	ld l,a			;53f7
	rst 28h			;53f8
	inc b			;53f9
	.DB 0edh;next byte illegal after ed		;53fa
	add a,e			;53fb
	xor 0d6h		;53fc
l53feh:
	ret pe			;53fe
	rlca			;53ff
	call pe,00104h		;5400
	ld (bc),a			;5403
	ld (bc),a			;5404
	add a,e			;5405
	ld b,005h		;5406
	sub 003h		;5408
	ld d,h			;540a
	ld (bc),a			;540b
	xor e			;540c
	add a,d			;540d
	out (0d7h),a		;540e
	ld (bc),a			;5410
	or d			;5411
	ld (bc),a			;5412
	sub d			;5413
	add a,l			;5414
	ld e,b			;5415
	ld c,b			;5416
	ld a,c			;5417
	ld (hl),e			;5418
	jp nz,0c402h		;5419
	ld (bc),a			;541c
	ld d,l			;541d
	ld (bc),a			;541e
	inc c			;541f
	add a,(hl)			;5420
	ld a,(de)			;5421
	ld e,l			;5422
	ld c,c			;5423
	inc b			;5424
	ld d,h			;5425
	ld d,(hl)			;5426
	ld (bc),a			;5427
	xor e			;5428
	add a,c			;5429
	dec de			;542a
l542bh:
	ld b,000h		;542b
	add a,c			;542d
	jr nz,l5438h		;542e
	nop			;5430
	add a,a			;5431
	add a,d			;5432
	nop			;5433
	jr l5436h		;5434
l5436h:
	inc b			;5436
	nop			;5437
l5438h:
	jr nz,l543dh		;5438
	nop			;543a
	add a,c			;543b
	ex af,af'			;543c
l543dh:
	inc bc			;543d
	nop			;543e
	add a,e			;543f
	jr z,l5442h		;5440
l5442h:
	jr nc,l5446h		;5442
	jr l53c7h		;5444
l5446h:
	nop			;5446
	ld (bc),a			;5447
	jr l544dh		;5448
	nop			;544a
	adc a,b			;544b
	ld (hl),h			;544c
l544dh:
	ld b,h			;544d
	inc a			;544e
	jp z,088f6h		;544f
	ld b,d			;5452
	add a,d			;5453
	inc bc			;5454
	nop			;5455
	add a,e			;5456
	add a,d			;5457
	nop			;5458
	djnz $+3		;5459
	nop			;545b
	add a,a			;545c
	jr nz,l545fh		;545d
l545fh:
	jr nz,l5461h		;545f
l5461h:
	inc b			;5461
	nop			;5462
	djnz l5468h		;5463
	nop			;5465
	add a,(hl)			;5466
	add a,d			;5467
l5468h:
	nop			;5468
	ex af,af'			;5469
	nop			;546a
	inc b			;546b
	nop			;546c
	inc bc			;546d
	djnz l53f3h		;546e
	nop			;5470
	jr $+40		;5471
	ld (bc),a			;5473
	ex af,af'			;5474
	add a,h			;5475
	jr z,l5498h		;5476
	jr z,l5482h		;5478
	ld (bc),a			;547a
	jr z,l53feh		;547b
	ld c,h			;547d
	nop			;547e
	ex af,af'			;547f
	rst 38h			;5480
	inc bc			;5481
l5482h:
	nop			;5482
	add a,d			;5483
	rst 38h			;5484
	nop			;5485
	inc bc			;5486
	rst 38h			;5487
	inc bc			;5488
	nop			;5489
	add a,d			;548a
	rst 38h			;548b
	nop			;548c
	inc bc			;548d
	rst 38h			;548e
	adc a,b			;548f
	nop			;5490
	ld (bc),a			;5491
	nop			;5492
	ret m			;5493
	nop			;5494
	ret po			;5495
	nop			;5496
	add a,b			;5497
l5498h:
	ex af,af'			;5498
	nop			;5499
	ld c,0ffh		;549a
	adc a,d			;549c
	call m,0f8ffh		;549d
	cp 0e0h		;54a0
	ret m			;54a2
	add a,b			;54a3
	ret po			;54a4
	nop			;54a5
	add a,b			;54a6
	ex af,af'			;54a7
	nop			;54a8
	inc b			;54a9
	rst 38h			;54aa
	add a,e			;54ab
	cp 0ffh		;54ac
	ret m			;54ae
	ld (bc),a			;54af
	ret p			;54b0
	add a,l			;54b1
	cp 0c0h		;54b2
	ret m			;54b4
	nop			;54b5
	ret po			;54b6
	ld a,(bc)			;54b7
	nop			;54b8
	inc bc			;54b9
	rst 38h			;54ba
	add a,c			;54bb
	cp 002h		;54bc
	rst 38h			;54be
	add a,h			;54bf
	ret p			;54c0
	ret po			;54c1
	rst 38h			;54c2
	cp 002h		;54c3
	nop			;54c5
	add a,d			;54c6
	ret p			;54c7
	ret po			;54c8
	ld (bc),a			;54c9
	nop			;54ca
	ld (bc),a			;54cb
	jr l54d0h		;54cc
	nop			;54ce
	ld (bc),a			;54cf
l54d0h:
	jr l54d4h		;54d0
	nop			;54d2
	dec b			;54d3
l54d4h:
	rst 38h			;54d4
	add a,d			;54d5
	ret p			;54d6
	ret nz			;54d7
	ld (bc),a			;54d8
	add a,b			;54d9
	add a,h			;54da
	cp 0fch		;54db
	ret m			;54dd
	ret p			;54de
	inc b			;54df
	nop			;54e0
	inc b			;54e1
	inc e			;54e2
	inc bc			;54e3
	nop			;54e4
	dec b			;54e5
	rst 38h			;54e6
	add a,d			;54e7
	ret nz			;54e8
	add a,b			;54e9
	ld (bc),a			;54ea
	nop			;54eb
	add a,h			;54ec
	cp 0fch		;54ed
	ret m			;54ef
	ret p			;54f0
	inc b			;54f1
	nop			;54f2
	inc b			;54f3
	inc e			;54f4
	inc bc			;54f5
	nop			;54f6
	ex af,af'			;54f7
	rst 38h			;54f8
	add a,e			;54f9
	cp 0fch		;54fa
	ret p			;54fc
	dec b			;54fd
	rst 38h			;54fe
	inc bc			;54ff
	nop			;5500
	add a,l			;5501
	ret m			;5502
	ret p			;5503
	ret po			;5504
	ret nz			;5505
	add a,b			;5506
	inc bc			;5507
	nop			;5508
	dec b			;5509
	inc a			;550a
	ld b,0ffh		;550b
	add a,a			;550d
	call m,0fff8h		;550e
l5511h:
	ret p			;5511
	ret po			;5512
	ret nz			;5513
	add a,b			;5514
	inc bc			;5515
	nop			;5516
	add a,c			;5517
	rst 38h			;5518
	rlca			;5519
	nop			;551a
	add a,c			;551b
	inc a			;551c
	rlca			;551d
	nop			;551e
	ex af,af'			;551f
	rst 38h			;5520
	add a,c			;5521
	ret p			;5522
	rlca			;5523
	rst 38h			;5524
	adc a,b			;5525
	nop			;5526
	cp 0fch		;5527
	ret m			;5529
	ret p			;552a
	ret po			;552b
	ret nz			;552c
	add a,b			;552d
	add hl,bc			;552e
	nop			;552f
l5530h:
	rlca			;5530
	ld a,003h		;5531
	rst 38h			;5533
	add a,a			;5534
	cp 0fch		;5535
	ret m			;5537
	ret p			;5538
	ret po			;5539
	rst 38h			;553a
	ret nz			;553b
	ld b,000h		;553c
	add a,c			;553e
	rst 38h			;553f
	rlca			;5540
	nop			;5541
	add a,c			;5542
	ld a,(hl)			;5543
	rlca			;5544
	nop			;5545
	ld (bc),a			;5546
	rst 38h			;5547
	add a,d			;5548
	cp 0fch		;5549
	inc b			;554b
	rst 38h			;554c
	add a,c			;554d
	add a,b			;554e
	inc bc			;554f
	nop			;5550
	inc b			;5551
	rst 38h			;5552
	inc b			;5553
	nop			;5554
	add a,h			;5555
	ret p			;5556
	ret po			;5557
	ret nz			;5558
	add a,b			;5559
	inc b			;555a
	nop			;555b
	inc b			;555c
	ld a,(hl)			;555d
	ld de,087ffh		;555e
	cp 0fch		;5561
	ret m			;5563
	ret p			;5564
	ret po			;5565
	ret nz			;5566
	add a,b			;5567
	ex af,af'			;5568
	ld a,(hl)			;5569
	djnz l556ch		;556a
l556ch:
	add a,d			;556c
	jr c,l55bbh		;556d
	inc bc			;556f
	add a,085h		;5570
	ld h,h			;5572
	jr c,l5575h		;5573
l5575h:
	jr l55afh		;5575
	inc b			;5577
	jr l5511h		;5578
	ld a,(hl)			;557a
	nop			;557b
	ld a,h			;557c
	add a,00eh		;557d
	inc a			;557f
	ld a,b			;5580
	ret po			;5581
	cp 000h		;5582
	ld a,(hl)			;5584
	inc c			;5585
	jr l55c4h		;5586
	ld b,0c6h		;5588
	ld a,h			;558a
	nop			;558b
	inc e			;558c
	inc a			;558d
	ld l,h			;558e
	call z,002feh		;558f
	inc c			;5592
	add a,h			;5593
	nop			;5594
	call m,0fcc0h		;5595
	ld (bc),a			;5598
	ld b,087h		;5599
	add a,07ch		;559b
	nop			;559d
	inc a			;559e
	ld h,b			;559f
	ret nz			;55a0
	call m,0c602h		;55a1
	add a,(hl)			;55a4
	ld a,h			;55a5
	nop			;55a6
	cp 0c6h		;55a7
	inc c			;55a9
	jr l55afh		;55aa
	jr nc,l5530h		;55ac
	nop			;55ae
l55afh:
	ld a,h			;55af
	ld (bc),a			;55b0
	add a,081h		;55b1
	ld a,h			;55b3
	ld (bc),a			;55b4
	add a,083h		;55b5
	ld a,h			;55b7
	nop			;55b8
	ld a,h			;55b9
	ld (bc),a			;55ba
l55bbh:
	add a,084h		;55bb
	ld a,(hl)			;55bd
	ld b,00ch		;55be
	ld a,b			;55c0
	ld (08100h),hl		;55c1
l55c4h:
	inc a			;55c4
	dec b			;55c5
	ld b,d			;55c6
	add a,c			;55c7
	nop			;55c8
	ld b,042h		;55c9
	add a,c			;55cb
	inc a			;55cc
	ld a,a			;55cd
	nop			;55ce
	rrca			;55cf
	nop			;55d0
	ld (bc),a			;55d1
	jr l5646h		;55d2
	nop			;55d4
	ld b,002h		;55d5
	add a,c			;55d7
	nop			;55d8
	rlca			;55d9
	ld (bc),a			;55da
	ld (bc),a			;55db
	nop			;55dc
	add a,c			;55dd
	inc a			;55de
	dec b			;55df
	ld (bc),a			;55e0
	add a,c			;55e1
	inc a			;55e2
	ld b,040h		;55e3
	add a,d			;55e5
	ld a,000h		;55e6
	ld b,002h		;55e8
	add a,c			;55ea
	inc a			;55eb
	ld (bc),a			;55ec
	nop			;55ed
	add a,c			;55ee
	ld (bc),a			;55ef
	dec b			;55f0
	ld b,d			;55f1
	add a,e			;55f2
	inc a			;55f3
	nop			;55f4
	inc a			;55f5
	dec b			;55f6
	ld b,b			;55f7
	add a,e			;55f8
	inc a			;55f9
	nop			;55fa
	inc a			;55fb
	dec b			;55fc
	ld (bc),a			;55fd
	ld (bc),a			;55fe
	nop			;55ff
	add a,c			;5600
	inc a			;5601
	dec b			;5602
	ld b,d			;5603
	add a,c			;5604
	inc a			;5605
	ld a,(l0200h)		;5606
	inc b			;5609
	ld (bc),a			;560a
	nop			;560b
	add a,h			;560c
	inc a			;560d
	ld a,d			;560e
	nop			;560f
	inc a			;5610
	ld (bc),a			;5611
	ld a,d			;5612
	add a,c			;5613
	inc a			;5614
	ld (bc),a			;5615
	nop			;5616
	add a,e			;5617
	inc b			;5618
	nop			;5619
	inc a			;561a
	ld (bc),a			;561b
	ld a,d			;561c
	add a,h			;561d
	inc a			;561e
	nop			;561f
	inc a			;5620
	ld a,d			;5621
	ex af,af'			;5622
	nop			;5623
	rlca			;5624
	rst 38h			;5625
	add a,c			;5626
	call m,0ff07h		;5627
	add a,e			;562a
	ccf			;562b
	ei			;562c
	rst 30h			;562d
	ld b,0ffh		;562e
	add a,d			;5630
	rst 18h			;5631
	rst 28h			;5632
	ld b,0ffh		;5633
	sub b			;5635
	ei			;5636
	ret p			;5637
	rst 30h			;5638
	ret p			;5639
	rst 30h			;563a
	ret p			;563b
	ei			;563c
	call m,sub_0fdfh		;563d
	rst 28h			;5640
	rrca			;5641
	rst 28h			;5642
	rrca			;5643
	rst 18h			;5644
	ccf			;5645
l5646h:
	inc bc			;5646
	rst 38h			;5647
	add a,e			;5648
	call m,0f7fbh		;5649
	dec b			;564c
	rst 38h			;564d
	add a,e			;564e
	ccf			;564f
	rst 18h			;5650
	rst 28h			;5651
	add hl,bc			;5652
	rst 38h			;5653
	add a,c			;5654
	call m,0ff07h		;5655
	add a,c			;5658
	ccf			;5659
	inc bc			;565a
	rst 38h			;565b
	add a,l			;565c
	call m,0f0fbh		;565d
	rst 30h			;5660
	ret p			;5661
	inc bc			;5662
	rst 38h			;5663
	adc a,c			;5664
	ccf			;5665
	rst 18h			;5666
	rrca			;5667
	rst 28h			;5668
	rrca			;5669
	rst 30h			;566a
	ret p			;566b
	ei			;566c
	call m,0ff03h		;566d
	add a,l			;5670
	call m,sub_0fefh		;5671
	rst 18h			;5674
	ccf			;5675
	inc bc			;5676
	rst 38h			;5677
	add a,e			;5678
	ccf			;5679
	ei			;567a
	rst 30h			;567b
	ld b,0ffh		;567c
	add a,d			;567e
	rst 18h			;567f
	rst 28h			;5680
	dec bc			;5681
	rst 38h			;5682
	add a,e			;5683
	rra			;5684
	sbc a,a			;5685
	rst 18h			;5686
	dec bc			;5687
	rst 38h			;5688
	add a,l			;5689
	rst 28h			;568a
	adc a,a			;568b
	rrca			;568c
	rlca			;568d
	ret nz			;568e
	inc b			;568f
	rst 38h			;5690
	ld (bc),a			;5691
	rst 30h			;5692
	add a,d			;5693
	rst 28h			;5694
	rra			;5695
	inc bc			;5696
	nop			;5697
	add a,(hl)			;5698
	ld bc,l0703h		;5699
	rrca			;569c
	ld a,a			;569d
	rra			;569e
	ld (bc),a			;569f
	ld a,a			;56a0
	dec b			;56a1
	rst 38h			;56a2
	add a,d			;56a3
	add a,b			;56a4
	rst 30h			;56a5
	ld b,0ffh		;56a6
	add a,d			;56a8
	rrca			;56a9
	ccf			;56aa
	ld b,0ffh		;56ab
	add a,h			;56ad
	ret nz			;56ae
	ret p			;56af
	ret m			;56b0
	call m,0fe03h		;56b1
	add a,e			;56b4
	call m,01f7fh		;56b5
	ld (bc),a			;56b8
	rlca			;56b9
	inc b			;56ba
	nop			;56bb
	dec b			;56bc
	rst 38h			;56bd
	add a,e			;56be
	ccf			;56bf
	rrca			;56c0
	nop			;56c1
	inc bc			;56c2
	rst 38h			;56c3
	add a,c			;56c4
	.DB 0fdh,002h,0e0h	;illegal sequence		;56c5
	ld (bc),a			;56c8
	nop			;56c9
	add a,h			;56ca
	rst 38h			;56cb
	cp 0fch		;56cc
	ret p			;56ce
	dec bc			;56cf
	nop			;56d0
	add a,c			;56d1
	rrca			;56d2
	inc bc			;56d3
	nop			;56d4
	add a,e			;56d5
	ld bc,l7f3fh		;56d6
	ld (bc),a			;56d9
	rst 38h			;56da
	ld (bc),a			;56db
	nop			;56dc
	add a,c			;56dd
	ccf			;56de
	dec b			;56df
	rst 38h			;56e0
	inc bc			;56e1
	nop			;56e2
	add a,l			;56e3
	add a,b			;56e4
	ret nz			;56e5
	ret p			;56e6
	ret m			;56e7
	rst 38h			;56e8
	ld (bc),a			;56e9
	ccf			;56ea
	inc bc			;56eb
	ld a,a			;56ec
	add a,e			;56ed
	rst 38h			;56ee
	inc bc			;56ef
	nop			;56f0
	rlca			;56f1
	rst 38h			;56f2
	add a,c			;56f3
	inc c			;56f4
	rlca			;56f5
	rst 38h			;56f6
	add a,c			;56f7
	rra			;56f8
	rlca			;56f9
	rst 38h			;56fa
	add a,h			;56fb
	rst 20h			;56fc
	ret po			;56fd
	rst 38h			;56fe
	cp 002h		;56ff
	ret m			;5701
	add a,d			;5702
	ret po			;5703
	ret nz			;5704
	ex af,af'			;5705
	nop			;5706
	add a,c			;5707
	ld sp,hl			;5708
	inc bc			;5709
	nop			;570a
	adc a,a			;570b
	ld (bc),a			;570c
	ld e,078h		;570d
	add a,b			;570f
	rlca			;5710
	nop			;5711
	ld b,008h		;5712
	jr l5725h		;5714
	ld (hl),b			;5716
	ret nz			;5717
	add a,b			;5718
	ex af,af'			;5719
	djnz l571eh		;571a
	nop			;571c
	sub c			;571d
l571eh:
	inc bc			;571e
	rrca			;571f
	jr l5782h		;5720
	inc c			;5722
	ld a,b			;5723
	ld b,c			;5724
l5725h:
	jp 08886h		;5725
	call m,l0d00h		;5728
	ld a,a			;572b
	ret nz			;572c
	nop			;572d
	ld bc,l0203h		;572e
	add a,l			;5731
	ret nz			;5732
	nop			;5733
	ld b,c			;5734
	ret nz			;5735
	add a,b			;5736
	add hl,bc			;5737
	nop			;5738
l5739h:
	add a,d			;5739
l573ah:
	inc bc			;573a
	ld b,004h		;573b
	nop			;573d
	add a,e			;573e
	rrca			;573f
	call m,002c0h		;5740
	nop			;5743
	add a,a			;5744
	ei			;5745
	ld a,(hl)			;5746
	inc e			;5747
	djnz l573ah		;5748
	ex (sp),hl			;574a
	jp l8002h		;574b
	add a,(hl)			;574e
	ret nz			;574f
	ld l,b			;5750
	scf			;5751
	ret nc			;5752
	ld (hl),b			;5753
	inc a			;5754
	inc b			;5755
	nop			;5756
	add a,h			;5757
	ret nz			;5758
	ret po			;5759
	djnz l57bah		;575a
	ld b,000h		;575c
	add a,d			;575e
	ld c,001h		;575f
	ld b,000h		;5761
	add a,d			;5763
	inc b			;5764
	add a,(hl)			;5765
	rlca			;5766
	nop			;5767
	add a,c			;5768
	rst 28h			;5769
	inc bc			;576a
	nop			;576b
	add a,c			;576c
	ld (bc),a			;576d
	ld (bc),a			;576e
	ld bc,l0200h+2		;576f
	add a,d			;5772
	nop			;5773
	rst 38h			;5774
	inc bc			;5775
	add a,b			;5776
	add a,c			;5777
	adc a,(hl)			;5778
	ld (bc),a			;5779
	adc a,b			;577a
	add a,d			;577b
	nop			;577c
	rst 38h			;577d
	ld b,010h		;577e
	rlca			;5780
	nop			;5781
l5782h:
	add a,c			;5782
	rst 38h			;5783
	inc bc			;5784
	nop			;5785
	add a,l			;5786
	ld bc,l3606h		;5787
	ei			;578a
	rst 38h			;578b
	inc bc			;578c
	nop			;578d
	add a,l			;578e
	add a,b			;578f
	nop			;5790
	inc b			;5791
	cp 0ffh		;5792
	inc bc			;5794
	nop			;5795
	adc a,b			;5796
	jr nz,$+96		;5797
	ret c			;5799
	ld a,a			;579a
	rst 38h			;579b
	nop			;579c
	ld (bc),a			;579d
	inc c			;579e
	ld (bc),a			;579f
	add hl,de			;57a0
	add a,h			;57a1
	ld a,a			;57a2
	cp a			;57a3
	rst 38h			;57a4
	nop			;57a5
	inc bc			;57a6
	ex af,af'			;57a7
	add a,h			;57a8
	djnz l581bh		;57a9
	xor 0ffh		;57ab
	dec b			;57ad
	nop			;57ae
	add a,d			;57af
	ld a,(bc)			;57b0
	ld h,002h		;57b1
	ex af,af'			;57b3
	ld (bc),a			;57b4
	djnz l5739h		;57b5
	inc (hl)			;57b7
	inc h			;57b8
	inc de			;57b9
l57bah:
	nop			;57ba
	add a,c			;57bb
	ld l,l			;57bc
	dec b			;57bd
	.DB 0edh;next byte illegal after ed		;57be
	add a,d			;57bf
	xor 0d6h		;57c0
	ex af,af'			;57c2
	ret pe			;57c3
	inc b			;57c4
	ld bc,l0200h+2		;57c5
	add a,e			;57c8
	ld b,005h		;57c9
	sub 003h		;57cb
	ld d,h			;57cd
	add a,h			;57ce
	xor c			;57cf
	add hl,hl			;57d0
	sub c			;57d1
	sub l			;57d2
	inc b			;57d3
	add a,b			;57d4
	ld (bc),a			;57d5
	ld b,b			;57d6
	ld (bc),a			;57d7
	ld h,b			;57d8
	add a,c			;57d9
	add a,b			;57da
	ld (bc),a			;57db
	ld b,b			;57dc
	ld (bc),a			;57dd
	ld d,c			;57de
	ld b,000h		;57df
	ld (bc),a			;57e1
	ld d,b			;57e2
	add hl,bc			;57e3
	nop			;57e4
	add a,c			;57e5
	inc b			;57e6
	ex af,af'			;57e7
	nop			;57e8
	sub c			;57e9
	jr z,l57ech		;57ea
l57ech:
	ld d,h			;57ec
	nop			;57ed
	inc d			;57ee
	nop			;57ef
	ld b,b			;57f0
	nop			;57f1
	inc b			;57f2
	nop			;57f3
	ld c,b			;57f4
	nop			;57f5
	jr nz,l57f8h		;57f6
l57f8h:
	jr nz,l57fah		;57f8
l57fah:
	inc d			;57fa
	rlca			;57fb
	nop			;57fc
	add a,c			;57fd
	ld (00002h),hl		;57fe
	add a,d			;5801
	ld b,b			;5802
	ex af,af'			;5803
	ld (bc),a			;5804
	nop			;5805
	add a,c			;5806
	ld b,b			;5807
	inc b			;5808
	nop			;5809
	adc a,l			;580a
	jr z,l580dh		;580b
l580dh:
	ld d,b			;580d
	nop			;580e
	ld b,h			;580f
	nop			;5810
	djnz l5813h		;5811
l5813h:
	ld l,b			;5813
	nop			;5814
	ex af,af'			;5815
	nop			;5816
	ld d,h			;5817
	inc bc			;5818
	nop			;5819
	add a,c			;581a
l581bh:
	jr z,$+3		;581b
	nop			;581d
	add a,d			;581e
	jr nz,l5831h		;581f
	ex af,af'			;5821
	nop			;5822
	add a,h			;5823
	djnz l584eh		;5824
	djnz l5848h		;5826
	inc bc			;5828
	nop			;5829
	nop			;582a
	rla			;582b
	nop			;582c
	ld (bc),a			;582d
	ld bc,0028fh		;582e
l5831h:
	inc b			;5831
	jr l5864h		;5832
	ld h,b			;5834
	ret nz			;5835
	add a,b			;5836
	nop			;5837
	ex af,af'			;5838
	nop			;5839
	ex af,af'			;583a
	nop			;583b
	ex af,af'			;583c
	nop			;583d
	ex af,af'			;583e
	ld c,000h		;583f
	add a,c			;5841
	inc bc			;5842
	ld (bc),a			;5843
	rlca			;5844
	adc a,c			;5845
	ld c,01ch		;5846
l5848h:
	jr c,l58bah		;5848
	ret po			;584a
	ret nz			;584b
	add a,b			;584c
	nop			;584d
l584eh:
	ex af,af'			;584e
	ld (bc),a			;584f
	nop			;5850
	ld (bc),a			;5851
	ex af,af'			;5852
	ld b,000h		;5853
	add a,e			;5855
	ld bc,l0703h		;5856
	ld (bc),a			;5859
	rrca			;585a
	add a,a			;585b
	ld e,03ch		;585c
	ld a,b			;585e
	ret p			;585f
	ret po			;5860
	ret nz			;5861
	add a,b			;5862
	ld (bc),a			;5863
l5864h:
	ex af,af'			;5864
	ld (bc),a			;5865
	nop			;5866
	ld (bc),a			;5867
	ex af,af'			;5868
	dec b			;5869
	nop			;586a
	add a,h			;586b
	ld bc,l0703h		;586c
	rrca			;586f
	ld (bc),a			;5870
	rra			;5871
	add a,a			;5872
	ld a,0fch		;5873
	ret m			;5875
	ret p			;5876
	ret po			;5877
	ret nz			;5878
	add a,b			;5879
	ld (bc),a			;587a
	nop			;587b
	inc b			;587c
	jr $+4		;587d
	nop			;587f
	add a,l			;5880
	ld bc,l0703h		;5881
	rrca			;5884
	ccf			;5885
	ld (bc),a			;5886
	ld a,a			;5887
	add a,a			;5888
	cp 0fch		;5889
	ret m			;588b
	ret p			;588c
	ret po			;588d
	ret nz			;588e
	add a,b			;588f
	dec b			;5890
	nop			;5891
	inc bc			;5892
	inc e			;5893
	add a,a			;5894
	nop			;5895
	ld bc,l0703h		;5896
	rra			;5899
	ccf			;589a
	ld a,a			;589b
	ld (bc),a			;589c
	rst 38h			;589d
	add a,a			;589e
	cp 0fch		;589f
	ret m			;58a1
	ret p			;58a2
	ret po			;58a3
	ret nz			;58a4
	add a,b			;58a5
	dec b			;58a6
	inc e			;58a7
	ld a,(bc)			;58a8
	nop			;58a9
	ld (bc),a			;58aa
	ld bc,00385h		;58ab
	rrca			;58ae
	rra			;58af
	ccf			;58b0
	ld a,a			;58b1
	inc bc			;58b2
	rst 38h			;58b3
	add a,a			;58b4
	cp 0fch		;58b5
	ret m			;58b7
	ret p			;58b8
	ret po			;58b9
l58bah:
	ret nz			;58ba
	add a,b			;58bb
	ld c,000h		;58bc
	add a,c			;58be
	inc bc			;58bf
	ld (bc),a			;58c0
	rlca			;58c1
	add a,h			;58c2
	rrca			;58c3
	rra			;58c4
	ccf			;58c5
	ld a,a			;58c6
	inc b			;58c7
	rst 38h			;58c8
	adc a,b			;58c9
	cp 0fch		;58ca
	ret m			;58cc
	ret p			;58cd
	ret po			;58ce
	ret nz			;58cf
	add a,b			;58d0
	nop			;58d1
	rlca			;58d2
	inc a			;58d3
	inc b			;58d4
	nop			;58d5
	add a,e			;58d6
	ld bc,l0703h		;58d7
	ld (bc),a			;58da
	rrca			;58db
	add a,e			;58dc
	rra			;58dd
	ccf			;58de
	ld a,a			;58df
	dec b			;58e0
	rst 38h			;58e1
	add a,a			;58e2
	cp 0fch		;58e3
	ret m			;58e5
	ret p			;58e6
	ret po			;58e7
	ret nz			;58e8
	add a,b			;58e9
	ex af,af'			;58ea
	nop			;58eb
	ex af,af'			;58ec
	ld a,003h		;58ed
	nop			;58ef
	add a,h			;58f0
	ld bc,l0703h		;58f1
	rrca			;58f4
	ld (bc),a			;58f5
	rra			;58f6
	add a,c			;58f7
	ccf			;58f8
	rlca			;58f9
	rst 38h			;58fa
	adc a,b			;58fb
	cp 0fch		;58fc
	ret m			;58fe
	ret p			;58ff
	ret po			;5900
	ret nz			;5901
	add a,b			;5902
	ld a,(hl)			;5903
l5904h:
	add hl,bc			;5904
	nop			;5905
	add a,l			;5906
	ld bc,l0703h		;5907
	rrca			;590a
	ccf			;590b
	ld (bc),a			;590c
	ld a,a			;590d
	ex af,af'			;590e
	rst 38h			;590f
	add a,a			;5910
	cp 0fch		;5911
	ret m			;5913
	ret p			;5914
	ret po			;5915
	ret nz			;5916
	add a,b			;5917
	add hl,bc			;5918
	nop			;5919
	add a,(hl)			;591a
	ld bc,l0703h		;591b
	rra			;591e
	ccf			;591f
	ld a,a			;5920
	ld a,(bc)			;5921
	rst 38h			;5922
	add a,a			;5923
	cp 0fch		;5924
	ret m			;5926
	ret p			;5927
	ret po			;5928
	ret nz			;5929
	add a,b			;592a
l592bh:
	ex af,af'			;592b
	nop			;592c
	ld (bc),a			;592d
	inc b			;592e
	add a,c			;592f
	inc h			;5930
	inc bc			;5931
	inc b			;5932
	adc a,l			;5933
	ld bc,l027eh+1		;5934
	add hl,sp			;5937
	pop hl			;5938
	inc bc			;5939
	ld b,01ch		;593a
	ld bc,03cffh		;593c
	ld a,(hl)			;593f
	rst 28h			;5940
	ld (bc),a			;5941
	rst 20h			;5942
	add a,h			;5943
	rst 30h			;5944
	ld a,(hl)			;5945
	inc a			;5946
	inc e			;5947
	ld (bc),a			;5948
	inc a			;5949
	inc bc			;594a
sub_594bh:
	inc e			;594b
	ld (bc),a			;594c
	ld a,a			;594d
	add a,(hl)			;594e
	ld a,(hl)			;594f
	rst 38h			;5950
	rst 28h			;5951
	ccf			;5952
	ld a,(hl)			;5953
	call m,0ff02h		;5954
	ld (bc),a			;5957
	ld a,a			;5958
	adc a,d			;5959
	ld e,03eh		;595a
	ccf			;595c
	rst 20h			;595d
	rst 38h			;595e
	ld a,(hl)			;595f
	ld e,03eh		;5960
	ld a,(hl)			;5962
	cp 002h		;5963
	rst 38h			;5965
	ld (bc),a			;5966
	ld c,003h		;5967
	cp 08dh		;5969
	rst 38h			;596b
	rlca			;596c
	rst 20h			;596d
	rst 38h			;596e
	ld a,(hl)			;596f
	ld a,07eh		;5970
	ret p			;5972
	cp 0ffh		;5973
l5975h:
	rst 20h			;5975
	rst 38h			;5976
	ld a,(hl)			;5977
	ld (bc),a			;5978
	rst 38h			;5979
	add a,e			;597a
	rst 28h			;597b
	ld e,03ch		;597c
	inc bc			;597e
	jr c,l5904h		;597f
	ld a,(hl)			;5981
	rst 38h			;5982
	rst 20h			;5983
	ld (bc),a			;5984
	rst 38h			;5985
	add a,d			;5986
	rst 20h			;5987
	rst 38h			;5988
	ld (bc),a			;5989
	ld a,(hl)			;598a
	adc a,b			;598b
	rst 38h			;598c
	rst 20h			;598d
	rst 38h			;598e
	ld a,a			;598f
	rrca			;5990
	ld a,(hl)			;5991
	ld a,h			;5992
	inc b			;5993
	inc bc			;5994
	ld (bc),a			;5995
	add a,h			;5996
	ld h,01ch		;5997
	inc b			;5999
	inc e			;599a
	inc bc			;599b
	nop			;599c
	add a,d			;599d
	ld (bc),a			;599e
	ld a,(hl)			;599f
	inc bc			;59a0
	nop			;59a1
	adc a,d			;59a2
	ld bc,l0673h		;59a3
	ld (bc),a			;59a6
	add hl,sp			;59a7
	ld hl,07e83h		;59a8
	ld bc,l0603h		;59ab
	rlca			;59ae
	djnz $-1		;59af
	ld (bc),a			;59b1
	ld (bc),a			;59b2
	sbc a,c			;59b3
	ld (de),a			;59b4
	ld (0f301h),a		;59b5
	ld (bc),a			;59b8
	ld c,004h		;59b9
	ld (de),a			;59bb
	add hl,sp			;59bc
	ld hl,l3901h		;59bd
	ld hl,002e7h		;59c0
	add hl,sp			;59c3
	ld hl,l3903h		;59c4
	ld hl,0fe03h		;59c7
	ld (bc),a			;59ca
	add hl,de			;59cb
	scf			;59cc
	ld (bc),a			;59cd
	jr nz,$-122		;59ce
	sub c			;59d0
	ld b,e			;59d1
	ld a,004h		;59d2
	ld (00229h),a		;59d4
	ld hl,l2390h		;59d7
	ld b,0fch		;59da
	ld bc,l203fh		;59dc
	inc b			;59df
	inc a			;59e0
	jr nz,l59e4h		;59e1
	rst 38h			;59e3
l59e4h:
	ld bc,l203fh		;59e4
	inc b			;59e7
	inc a			;59e8
	ld (bc),a			;59e9
	jr nz,l5975h		;59ea
	ret po			;59ec
	ld bc,l301fh		;59ed
	ld hl,09129h		;59f0
	ld b,c			;59f3
	ccf			;59f4
	inc bc			;59f5
	ld hl,00182h		;59f6
	add hl,sp			;59f9
	ld (bc),a			;59fa
	ld hl,0e783h		;59fb
	ld bc,00467h		;59fe
	inc b			;5a01
	add a,d			;5a02
	ld bc,0057fh		;5a03
	ld bc,0218bh		;5a06
	add a,e			;5a09
	ld a,(hl)			;5a0a
	ld hl,02623h		;5a0b
	inc c			;5a0e
	inc b			;5a0f
	ld (0ef31h),hl		;5a10
	ld b,020h		;5a13
	add a,h			;5a15
	ld bc,l21ffh		;5a16
	ld de,l0101h+1		;5a19
	adc a,(hl)			;5a1c
	add hl,hl			;5a1d
	add hl,sp			;5a1e
	ld hl,l21e7h		;5a1f
	ld de,l0109h		;5a22
	ld hl,02931h		;5a25
	rst 20h			;5a28
	ld (bc),a			;5a29
	add hl,sp			;5a2a
	inc b			;5a2b
l5a2ch:
	ld hl,08384h		;5a2c
	ld a,(hl)			;5a2f
	ld (bc),a			;5a30
l5a31h:
	add hl,sp			;5a31
	ld (bc),a			;5a32
	ld hl,00384h		;5a33
	ld a,020h		;5a36
	ret po			;5a38
	dec b			;5a39
	nop			;5a3a
	inc bc			;5a3b
	inc e			;5a3c
	add a,d			;5a3d
	ld (bc),a			;5a3e
	add hl,sp			;5a3f
	ld (bc),a			;5a40
	ld hl,l078eh		;5a41
	ld (0ef31h),hl		;5a44
	inc b			;5a47
	ld (0822eh),a		;5a48
	ld a,c			;5a4b
	ld hl,07e83h		;5a4c
	ld bc,00567h		;5a4f
	inc b			;5a52
	add a,c			;5a53
	inc e			;5a54
	ld b,021h		;5a55
	add a,d			;5a57
	add a,e			;5a58
	ld a,(hl)			;5a59
	inc bc			;5a5a
	ld hl,l1185h		;5a5b
	add a,e			;5a5e
	ld b,(hl)			;5a5f
	inc l			;5a60
	jr $+2		;5a61
	ld hl,l2981h		;5a63
	ld (bc),a			;5a66
	ld bc,0938bh		;5a67
	ld a,(l2166h)		;5a6a
	ld de,l4683h		;5a6d
	ld (bc),a			;5a70
	ld de,0e739h		;5a71
	inc bc			;5a74
	ld de,l4381h+1		;5a75
l5a78h:
	ld h,002h		;5a78
	inc b			;5a7a
	add a,c			;5a7b
	inc e			;5a7c
	ld (bc),a			;5a7d
	nop			;5a7e
	add a,(hl)			;5a7f
	ld bc,0821fh		;5a80
	ld (hl),c			;5a83
	inc bc			;5a84
	cp 002h		;5a85
	ex af,af'			;5a87
	add a,d			;5a88
	ld (bc),a			;5a89
	adc a,002h		;5a8a
	ex af,af'			;5a8c
	add a,d			;5a8d
	inc h			;5a8e
	inc e			;5a8f
	ld (bc),a			;5a90
	nop			;5a91
	add a,d			;5a92
	ld (bc),a			;5a93
	add hl,sp			;5a94
	inc bc			;5a95
	ld hl,0e781h		;5a96
	inc bc			;5a99
	ld bc,l3981h		;5a9a
	ld (bc),a			;5a9d
	ld hl,08182h		;5a9e
	ld a,a			;5aa1
	ld (bc),a			;5aa2
	nop			;5aa3
	add a,e			;5aa4
	ld (bc),a			;5aa5
	add hl,sp			;5aa6
	daa			;5aa7
	ld (bc),a			;5aa8
	jr nz,l5a2ch		;5aa9
	ret po			;5aab
	ld (bc),a			;5aac
	jr nz,l5a31h		;5aad
	ld (bc),a			;5aaf
	add hl,sp			;5ab0
	inc bc			;5ab1
	ld hl,0e781h		;5ab2
	ld c,b			;5ab5
	rst 38h			;5ab6
	adc a,b			;5ab7
	nop			;5ab8
	jr nz,$+36		;5ab9
	inc l			;5abb
	add hl,de			;5abc
	add hl,hl			;5abd
	dec (hl)			;5abe
	ld l,a			;5abf
	inc bc			;5ac0
	nop			;5ac1
	adc a,d			;5ac2
	jr nz,l5b16h		;5ac3
	ld d,e			;5ac5
	ld d,(hl)			;5ac6
	call m,01000h		;5ac7
	ld d,b			;5aca
	call nz,0029ah		;5acb
	ld (de),a			;5ace
	add a,h			;5acf
	ld (hl),000h		;5ad0
	jr nz,$+35		;5ad2
	ld (bc),a			;5ad4
	ld (00c82h),hl		;5ad5
	ld a,e			;5ad8
	ld (bc),a			;5ad9
	nop			;5ada
	add a,(hl)			;5adb
	sub c			;5adc
	ld de,l4955h		;5add
	.DB 0ddh,0b3h,003h	;illegal sequence		;5ae0
	nop			;5ae3
	add a,d			;5ae4
	inc b			;5ae5
	.DB 0ddh,002h,011h	;illegal sequence		;5ae6
	add a,d			;5ae9
	ld (de),a			;5aea
	ld sp,00002h		;5aeb
	add a,a			;5aee
	ld b,d			;5aef
	xor l			;5af0
	add hl,hl			;5af1
	inc hl			;5af2
	ld l,(hl)			;5af3
	ret c			;5af4
	ld a,(hl)			;5af5
	ld b,0ffh		;5af6
	add a,e			;5af8
	ei			;5af9
	ld a,(hl)			;5afa
	rst 38h			;5afb
	ld (bc),a			;5afc
	ei			;5afd
	inc b			;5afe
	rst 38h			;5aff
	add a,d			;5b00
	ld a,(hl)			;5b01
	rst 38h			;5b02
	ld (bc),a			;5b03
	ei			;5b04
	inc bc			;5b05
	rst 38h			;5b06
	add a,c			;5b07
	ei			;5b08
	ex af,af'			;5b09
	rst 38h			;5b0a
	add a,d			;5b0b
	ccf			;5b0c
	ld a,a			;5b0d
	ld b,0ffh		;5b0e
	add a,e			;5b10
	ret m			;5b11
	call m,sub_65feh		;5b12
	rst 38h			;5b15
l5b16h:
	add a,d			;5b16
	call m,l04f8h		;5b17
	ret p			;5b1a
	add a,h			;5b1b
	ret m			;5b1c
	call m,sub_1f3fh		;5b1d
	inc b			;5b20
	rrca			;5b21
	add a,d			;5b22
	rra			;5b23
	ccf			;5b24
	ld b,0ffh		;5b25
	add a,d			;5b27
	ld a,a			;5b28
	ccf			;5b29
	ld b,0ffh		;5b2a
	add a,d			;5b2c
	cp 0fch		;5b2d
	inc bc			;5b2f
	rrca			;5b30
	add a,d			;5b31
	rra			;5b32
	ld a,a			;5b33
	ld (bc),a			;5b34
	rst 38h			;5b35
	add a,c			;5b36
	ccf			;5b37
	inc b			;5b38
	ret p			;5b39
	ld (bc),a			;5b3a
	ret m			;5b3b
	add a,d			;5b3c
	ret p			;5b3d
	ret po			;5b3e
	inc bc			;5b3f
	nop			;5b40
	add a,(hl)			;5b41
	ld bc,l0703h		;5b42
	rrca			;5b45
	ld a,a			;5b46
	rra			;5b47
	ld (bc),a			;5b48
	ld a,a			;5b49
	dec b			;5b4a
	rst 38h			;5b4b
	add a,d			;5b4c
	add a,b			;5b4d
	rst 30h			;5b4e
	ld b,0ffh		;5b4f
	add a,d			;5b51
	rrca			;5b52
	ccf			;5b53
	ld b,0ffh		;5b54
	add a,h			;5b56
	ret nz			;5b57
	ret p			;5b58
	ret m			;5b59
	call m,0fe03h		;5b5a
	add a,e			;5b5d
	call m,01f7fh		;5b5e
	ld (bc),a			;5b61
	rlca			;5b62
	inc b			;5b63
	nop			;5b64
	dec b			;5b65
	rst 38h			;5b66
	add a,e			;5b67
	ccf			;5b68
	rrca			;5b69
	nop			;5b6a
	inc bc			;5b6b
	rst 38h			;5b6c
	add a,c			;5b6d
	.DB 0fdh,002h,0e0h	;illegal sequence		;5b6e
	ld (bc),a			;5b71
	nop			;5b72
	add a,h			;5b73
	rst 38h			;5b74
	cp 0fch		;5b75
	ret p			;5b77
	dec bc			;5b78
	nop			;5b79
	add a,c			;5b7a
	rrca			;5b7b
	inc bc			;5b7c
	nop			;5b7d
	add a,e			;5b7e
	ld bc,l7f3fh		;5b7f
	ld (bc),a			;5b82
	rst 38h			;5b83
	ld (bc),a			;5b84
	nop			;5b85
	add a,c			;5b86
	ccf			;5b87
	dec b			;5b88
	rst 38h			;5b89
	inc bc			;5b8a
	nop			;5b8b
	add a,l			;5b8c
	add a,b			;5b8d
	ret nz			;5b8e
	ret p			;5b8f
l5b90h:
	ret m			;5b90
	rst 38h			;5b91
	ld (bc),a			;5b92
	ccf			;5b93
	inc bc			;5b94
	ld a,a			;5b95
	add a,e			;5b96
	rst 38h			;5b97
	inc bc			;5b98
	nop			;5b99
	rlca			;5b9a
	rst 38h			;5b9b
	add a,c			;5b9c
	inc c			;5b9d
	rlca			;5b9e
	rst 38h			;5b9f
	add a,c			;5ba0
	rra			;5ba1
	rlca			;5ba2
	rst 38h			;5ba3
	add a,h			;5ba4
	rst 20h			;5ba5
	ret po			;5ba6
	rst 38h			;5ba7
	cp 002h		;5ba8
	ret m			;5baa
	add a,d			;5bab
	ret po			;5bac
	ret nz			;5bad
	rlca			;5bae
	nop			;5baf
	add a,d			;5bb0
	rrca			;5bb1
	ld b,003h		;5bb2
	nop			;5bb4
	adc a,a			;5bb5
	ld bc,08721h		;5bb6
	ld a,a			;5bb9
	ret m			;5bba
	nop			;5bbb
	add hl,bc			;5bbc
	ld (hl),a			;5bbd
	rst 20h			;5bbe
	ret p			;5bbf
	adc a,a			;5bc0
	ccf			;5bc1
	ld a,a			;5bc2
	rst 30h			;5bc3
	rst 28h			;5bc4
	ld (bc),a			;5bc5
	rst 38h			;5bc6
	sub c			;5bc7
	call m,0e7f0h		;5bc8
	sbc a,a			;5bcb
	di			;5bcc
	add a,a			;5bcd
	cp (hl)			;5bce
	inc a			;5bcf
	ld a,c			;5bd0
	ld (hl),a			;5bd1
	inc bc			;5bd2
	rst 38h			;5bd3
	jp p,l3f80h		;5bd4
	rst 38h			;5bd7
	cp 003h		;5bd8
	.DB 0fdh,085h	;add a,iyl		;5bda
	ccf			;5bdc
	rst 38h			;5bdd
	cp (hl)			;5bde
	ccf			;5bdf
	ld a,a			;5be0
	inc bc			;5be1
	rst 38h			;5be2
	dec b			;5be3
	nop			;5be4
	add a,e			;5be5
	ld bc,l390ch		;5be6
	inc b			;5be9
	nop			;5bea
	sub h			;5beb
	djnz l5bf1h		;5bec
	ccf			;5bee
	rst 38h			;5bef
	rra			;5bf0
l5bf1h:
	inc b			;5bf1
	add a,c			;5bf2
	ex (sp),hl			;5bf3
	rst 28h			;5bf4
	rrca			;5bf5
	inc e			;5bf6
	inc a			;5bf7
	nop			;5bf8
	ld b,b			;5bf9
	jr nc,l5b90h		;5bfa
	ret z			;5bfc
	cpl			;5bfd
	adc a,a			;5bfe
	jp 00004h		;5bff
	add a,h			;5c02
	jr c,l5c24h		;5c03
	rst 28h			;5c05
	and c			;5c06
	dec b			;5c07
	nop			;5c08
	add a,e			;5c09
	ret nz			;5c0a
	pop af			;5c0b
	cp 006h		;5c0c
	nop			;5c0e
	add a,d			;5c0f
	jp z,l0779h		;5c10
	nop			;5c13
	add a,c			;5c14
	rst 28h			;5c15
	inc bc			;5c16
	nop			;5c17
	add a,e			;5c18
	ld (bc),a			;5c19
	rrca			;5c1a
	ld bc,l0200h+2		;5c1b
	add a,d			;5c1e
	nop			;5c1f
	rst 38h			;5c20
	inc bc			;5c21
	add a,b			;5c22
	add a,c			;5c23
l5c24h:
	adc a,(hl)			;5c24
	ld (bc),a			;5c25
	adc a,b			;5c26
	add a,d			;5c27
	nop			;5c28
	rst 38h			;5c29
	ld b,010h		;5c2a
	inc c			;5c2c
	nop			;5c2d
	add a,e			;5c2e
	ld bc,0fb4fh		;5c2f
	dec b			;5c32
	nop			;5c33
	add a,e			;5c34
	ret po			;5c35
	call m,004feh		;5c36
	nop			;5c39
	add a,h			;5c3a
l5c3bh:
	jr l5c59h		;5c3b
	ld a,07fh		;5c3d
	ld (bc),a			;5c3f
	nop			;5c40
	add a,(hl)			;5c41
	dec c			;5c42
	inc de			;5c43
	ld b,026h		;5c44
	ld a,a			;5c46
	cp a			;5c47
	ld (bc),a			;5c48
	nop			;5c49
	add a,(hl)			;5c4a
	inc b			;5c4b
	ld b,016h		;5c4c
	cpl			;5c4e
	rrca			;5c4f
	xor 006h		;5c50
	nop			;5c52
	add a,h			;5c53
	inc b			;5c54
	add hl,de			;5c55
	rst 30h			;5c56
	rlca			;5c57
	ld (bc),a			;5c58
l5c59h:
	rrca			;5c59
	add a,e			;5c5a
	dec bc			;5c5b
l5c5ch:
	dec de			;5c5c
	ld a,a			;5c5d
	ld (bc),a			;5c5e
	rst 38h			;5c5f
	add a,h			;5c60
l5c61h:
	add a,b			;5c61
	ret po			;5c62
	ret p			;5c63
	cp 004h		;5c64
	rst 38h			;5c66
	dec b			;5c67
	nop			;5c68
	add a,e			;5c69
	ret po			;5c6a
	call m,sub_06ffh		;5c6b
	ld (de),a			;5c6e
	add a,e			;5c6f
	ld de,l7029h		;5c70
	rlca			;5c73
	ld (hl),h			;5c74
	inc b			;5c75
	nop			;5c76
	inc bc			;5c77
	ld bc,l0282h		;5c78
	add hl,hl			;5c7b
	inc bc			;5c7c
	xor e			;5c7d
	add a,h			;5c7e
	ld d,(hl)			;5c7f
	sub 06eh		;5c80
	ld l,d			;5c82
	inc bc			;5c83
	ld a,(hl)			;5c84
	add a,c			;5c85
	ld a,a			;5c86
	ld (bc),a			;5c87
	cp a			;5c88
	ld (bc),a			;5c89
	sbc a,a			;5c8a
	add a,c			;5c8b
	ld a,a			;5c8c
	ld (bc),a			;5c8d
	cp a			;5c8e
	ld (bc),a			;5c8f
	xor (hl)			;5c90
	ld b,0ffh		;5c91
	ld (bc),a			;5c93
	xor a			;5c94
	inc bc			;5c95
	rst 38h			;5c96
	ld b,000h		;5c97
	add a,c			;5c99
	inc h			;5c9a
	ex af,af'			;5c9b
	nop			;5c9c
	sub c			;5c9d
	xor d			;5c9e
	cp 0ceh		;5c9f
	cp 0fah		;5ca1
	cp 0eah		;5ca3
	cp 0d6h		;5ca5
	cp 0e2h		;5ca7
	cp 0eah		;5ca9
	cp 08eh		;5cab
	cp 0a6h		;5cad
	rlca			;5caf
	jr l5c3bh		;5cb0
	ld a,(l747ch)		;5cb2
	ld a,h			;5cb5
	jp po,0eefeh		;5cb6
	ld b,082h		;5cb9
	inc bc			;5cbb
	nop			;5cbc
	adc a,l			;5cbd
	xor d			;5cbe
	cp 0e6h		;5cbf
	cp 0eeh		;5cc1
	cp 0fah		;5cc3
	cp 0ceh		;5cc5
	cp 0deh		;5cc7
	cp 0ceh		;5cc9
	inc bc			;5ccb
	nop			;5ccc
	add a,l			;5ccd
	xor d			;5cce
	cp 0aah		;5ccf
	cp 0b6h		;5cd1
	dec b			;5cd3
	djnz l5c5ch		;5cd4
	jr c,l5d00h		;5cd6
	jr c,$+24		;5cd8
	jr c,l5cf4h		;5cda
	inc bc			;5cdc
	jr c,l5c61h		;5cdd
	jr z,l5d3dh		;5cdf
	nop			;5ce1
	jr nz,l5ce4h		;5ce2
l5ce4h:
	ex af,af'			;5ce4
	ex af,af'			;5ce5
	jr l5ce8h		;5ce6
l5ce8h:
	ex af,af'			;5ce8
	ex af,af'			;5ce9
l5ceah:
	djnz l5cech		;5cea
l5cech:
	ex af,af'			;5cec
	ex af,af'			;5ced
	djnz l5cf0h		;5cee
l5cf0h:
	ex af,af'			;5cf0
	jr $+16		;5cf1
	nop			;5cf3
l5cf4h:
	ex af,af'			;5cf4
	inc e			;5cf5
	djnz l5cf8h		;5cf6
l5cf8h:
	ex af,af'			;5cf8
	inc e			;5cf9
	jr l5cfch		;5cfa
l5cfch:
	ex af,af'			;5cfc
	inc a			;5cfd
	jr l5d00h		;5cfe
l5d00h:
	ex af,af'			;5d00
	inc a			;5d01
	jr nz,l5d04h		;5d02
l5d04h:
	ex af,af'			;5d04
	ld a,018h		;5d05
	nop			;5d07
	ex af,af'			;5d08
	ld a,(hl)			;5d09
	jr l5d0ch		;5d0a
l5d0ch:
	ex af,af'			;5d0c
	ld a,(hl)			;5d0d
	jr l5d10h		;5d0e
l5d10h:
	ex af,af'			;5d10
	ld a,(hl)			;5d11
	add a,c			;5d12
	inc e			;5d13
	ld (bc),a			;5d14
	inc a			;5d15
	inc bc			;5d16
	inc e			;5d17
	ld (bc),a			;5d18
	ld a,a			;5d19
	add a,(hl)			;5d1a
	ld a,(hl)			;5d1b
	rst 38h			;5d1c
	rst 28h			;5d1d
	ccf			;5d1e
	ld a,(hl)			;5d1f
	call m,0ff02h		;5d20
	add a,e			;5d23
	inc a			;5d24
	ld a,(hl)			;5d25
	rst 28h			;5d26
	ld (bc),a			;5d27
	rst 20h			;5d28
	add a,h			;5d29
	rst 30h			;5d2a
	ld a,(hl)			;5d2b
	inc a			;5d2c
	inc e			;5d2d
	ld (bc),a			;5d2e
	inc a			;5d2f
	inc bc			;5d30
	inc e			;5d31
	ld (bc),a			;5d32
	ld a,a			;5d33
	add a,(hl)			;5d34
	ld a,(hl)			;5d35
	rst 38h			;5d36
	rst 28h			;5d37
	ccf			;5d38
	ld a,(hl)			;5d39
	call m,0ff02h		;5d3a
l5d3dh:
	ld (bc),a			;5d3d
	ld a,a			;5d3e
	adc a,d			;5d3f
l5d40h:
	ld e,03eh		;5d40
	ccf			;5d42
	rst 20h			;5d43
	rst 38h			;5d44
	ld a,(hl)			;5d45
	ld e,03eh		;5d46
	ld a,(hl)			;5d48
	cp 002h		;5d49
	rst 38h			;5d4b
	ld (bc),a			;5d4c
	ld c,003h		;5d4d
	cp 08dh		;5d4f
	rst 38h			;5d51
	rlca			;5d52
	rst 20h			;5d53
	rst 38h			;5d54
	ld a,(hl)			;5d55
	ld a,07eh		;5d56
	ret p			;5d58
	cp 0ffh		;5d59
	rst 20h			;5d5b
	rst 38h			;5d5c
	ld a,(hl)			;5d5d
	ld (bc),a			;5d5e
	rst 38h			;5d5f
	add a,e			;5d60
	rst 28h			;5d61
	ld e,03ch		;5d62
	inc bc			;5d64
	jr c,l5ceah		;5d65
	ld a,(hl)			;5d67
	rst 38h			;5d68
	rst 20h			;5d69
	ld (bc),a			;5d6a
	rst 38h			;5d6b
	add a,d			;5d6c
	rst 20h			;5d6d
	rst 38h			;5d6e
	ld (bc),a			;5d6f
	ld a,(hl)			;5d70
	adc a,b			;5d71
	rst 38h			;5d72
	rst 20h			;5d73
	rst 38h			;5d74
	ld a,a			;5d75
	rrca			;5d76
	ld a,(hl)			;5d77
	ld a,h			;5d78
	inc e			;5d79
	inc b			;5d7a
	ld a,003h		;5d7b
	inc e			;5d7d
	inc bc			;5d7e
	nop			;5d7f
	ld (bc),a			;5d80
	ld a,(hl)			;5d81
	inc bc			;5d82
	nop			;5d83
	ld (bc),a			;5d84
	ld a,a			;5d85
	adc a,b			;5d86
	ld e,03eh		;5d87
	ccf			;5d89
	rst 20h			;5d8a
	rst 38h			;5d8b
	ld a,(hl)			;5d8c
	ld bc,l0603h		;5d8d
	rlca			;5d90
	djnz $-1		;5d91
	add a,h			;5d93
	ld e,03eh		;5d94
	ld a,(hl)			;5d96
	cp 002h		;5d97
	rst 38h			;5d99
	ld (bc),a			;5d9a
	ld c,084h		;5d9b
	inc a			;5d9d
	ld a,(hl)			;5d9e
	rst 38h			;5d9f
	rst 20h			;5da0
	ld (bc),a			;5da1
	rst 38h			;5da2
	ld (bc),a			;5da3
	rst 20h			;5da4
	add a,e			;5da5
	cp 0ffh		;5da6
	rst 20h			;5da8
	ld (bc),a			;5da9
	rst 38h			;5daa
	add a,(hl)			;5dab
	rst 20h			;5dac
	rst 38h			;5dad
	cp 03eh		;5dae
	ld a,a			;5db0
	rst 30h			;5db1
	ld (bc),a			;5db2
	ret po			;5db3
	add a,(hl)			;5db4
	rst 30h			;5db5
	ld a,a			;5db6
	ld a,0fch		;5db7
	cp 0efh		;5db9
	ld (bc),a			;5dbb
	rst 20h			;5dbc
	add a,e			;5dbd
	rst 28h			;5dbe
	cp 0fch		;5dbf
	ld (bc),a			;5dc1
	rst 38h			;5dc2
	add a,c			;5dc3
	ret po			;5dc4
	ld (bc),a			;5dc5
	call m,0e081h		;5dc6
	inc b			;5dc9
	rst 38h			;5dca
	add a,c			;5dcb
	ret po			;5dcc
	ld (bc),a			;5dcd
	call m,0e003h		;5dce
	add a,e			;5dd1
	ccf			;5dd2
	ld a,a			;5dd3
	ret p			;5dd4
	ld (bc),a			;5dd5
	rst 28h			;5dd6
	add a,e			;5dd7
	rst 30h			;5dd8
	ld a,a			;5dd9
	ccf			;5dda
	inc bc			;5ddb
	rst 20h			;5ddc
	ld (bc),a			;5ddd
	rst 38h			;5dde
	inc bc			;5ddf
	rst 20h			;5de0
	ld (bc),a			;5de1
	ld a,a			;5de2
	inc b			;5de3
	inc e			;5de4
	ld (bc),a			;5de5
l5de6h:
	ld a,a			;5de6
	dec b			;5de7
	rlca			;5de8
	add a,(hl)			;5de9
	rst 20h			;5dea
	rst 38h			;5deb
	ld a,(hl)			;5dec
	rst 20h			;5ded
	rst 28h			;5dee
	cp 002h		;5def
	call m,0fe83h		;5df1
	rst 38h			;5df4
	rst 28h			;5df5
	ld b,0e0h		;5df6
	ld (bc),a			;5df8
	rst 38h			;5df9
	add a,c			;5dfa
	rst 20h			;5dfb
	dec b			;5dfc
	rst 38h			;5dfd
	inc bc			;5dfe
	rst 20h			;5dff
	add a,c			;5e00
	rst 30h			;5e01
	inc b			;5e02
	rst 38h			;5e03
	add a,h			;5e04
	rst 28h			;5e05
	rst 20h			;5e06
sub_5e07h:
	ld a,(hl)			;5e07
	rst 38h			;5e08
	inc b			;5e09
	rst 20h			;5e0a
	add a,h			;5e0b
	rst 38h			;5e0c
	ld a,(hl)			;5e0d
	cp 0ffh		;5e0e
	ld (bc),a			;5e10
	rst 20h			;5e11
	add a,d			;5e12
	rst 38h			;5e13
	cp 002h		;5e14
	ret po			;5e16
	dec b			;5e17
	nop			;5e18
	inc bc			;5e19
	inc e			;5e1a
	sub b			;5e1b
	cp 0ffh		;5e1c
	rst 20h			;5e1e
	rst 28h			;5e1f
	rst 38h			;5e20
	cp 0ffh		;5e21
	rst 28h			;5e23
	ld a,h			;5e24
	cp 0eeh		;5e25
	cp 07fh		;5e27
	rst 20h			;5e29
	rst 38h			;5e2a
	ld a,(hl)			;5e2b
	ld (bc),a			;5e2c
	ld a,a			;5e2d
	ld b,01ch		;5e2e
	ld b,0e7h		;5e30
	add a,d			;5e32
	rst 38h			;5e33
	ld a,(hl)			;5e34
	inc bc			;5e35
	rst 20h			;5e36
	ld (bc),a			;5e37
	rst 38h			;5e38
	add a,e			;5e39
	ld a,(hl)			;5e3a
	inc a			;5e3b
	jr l5e40h		;5e3c
	rst 20h			;5e3e
	inc b			;5e3f
l5e40h:
	rst 38h			;5e40
	add a,e			;5e41
	ld a,(hl)			;5e42
	ld h,(hl)			;5e43
	rst 20h			;5e44
	ld (bc),a			;5e45
	rst 38h			;5e46
	ld (bc),a			;5e47
	ld a,(hl)			;5e48
	ld (bc),a			;5e49
	rst 38h			;5e4a
	add a,c			;5e4b
	rst 20h			;5e4c
	inc bc			;5e4d
	ld (hl),a			;5e4e
	add a,d			;5e4f
	ld a,a			;5e50
	ld a,003h		;5e51
	inc e			;5e53
	ld (bc),a			;5e54
	nop			;5e55
	add a,(hl)			;5e56
	ld a,a			;5e57
	rst 38h			;5e58
	cp 07fh		;5e59
	rst 38h			;5e5b
	cp 002h		;5e5c
	jr c,l5e62h		;5e5e
	cp 002h		;5e60
l5e62h:
	jr c,l5de6h		;5e62
	inc a			;5e64
	inc e			;5e65
	ld (bc),a			;5e66
	nop			;5e67
	add a,d			;5e68
	cp 0ffh		;5e69
	inc b			;5e6b
	rst 20h			;5e6c
	ld (bc),a			;5e6d
	rlca			;5e6e
	add a,d			;5e6f
	ld a,a			;5e70
	rst 38h			;5e71
	ld (bc),a			;5e72
	rst 20h			;5e73
	add a,d			;5e74
	rst 38h			;5e75
	ld a,a			;5e76
	ld (bc),a			;5e77
	nop			;5e78
	add a,e			;5e79
	cp 0ffh		;5e7a
	rst 20h			;5e7c
	dec b			;5e7d
	ret po			;5e7e
	add a,d			;5e7f
	cp 0ffh		;5e80
	inc b			;5e82
	rst 20h			;5e83
	ld c,b			;5e84
	rst 38h			;5e85
	add a,h			;5e86
	nop			;5e87
	ld h,b			;5e88
	ld l,h			;5e89
	ld a,a			;5e8a
l5e8bh:
	ld (bc),a			;5e8b
	ld a,e			;5e8c
	add a,d			;5e8d
	ld a,a			;5e8e
	ld l,a			;5e8f
	inc bc			;5e90
	nop			;5e91
	adc a,d			;5e92
	pop hl			;5e93
	di			;5e94
	rst 30h			;5e95
	cp 0fch		;5e96
	nop			;5e98
	jr nc,l5e8bh		;5e99
	call m,sub_03beh		;5e9b
	ld (hl),083h		;5e9e
	nop			;5ea0
	ld h,e			;5ea1
	ld h,a			;5ea2
	ld (bc),a			;5ea3
	ld h,(hl)			;5ea4
	add a,d			;5ea5
	ld a,a			;5ea6
	ld a,e			;5ea7
	ld (bc),a			;5ea8
	nop			;5ea9
	ld (bc),a			;5eaa
	or e			;5eab
	inc bc			;5eac
	rst 38h			;5ead
	add a,c			;5eae
	or e			;5eaf
	inc bc			;5eb0
	nop			;5eb1
	add a,d			;5eb2
	.DB 0fdh,0ffh,003h	;illegal sequence		;5eb3
	inc sp			;5eb6
	add a,c			;5eb7
	ld sp,00002h		;5eb8
	add a,a			;5ebb
	sbc a,0ffh		;5ebc
	ld a,e			;5ebe
	ld a,a			;5ebf
	cp 0d8h		;5ec0
	ld a,(hl)			;5ec2
	rlca			;5ec3
	rst 38h			;5ec4
	add a,c			;5ec5
	ld a,(hl)			;5ec6
	rlca			;5ec7
	rst 38h			;5ec8
	add a,c			;5ec9
	ld a,(hl)			;5eca
	rrca			;5ecb
	rst 38h			;5ecc
	inc bc			;5ecd
	nop			;5ece
	inc b			;5ecf
	ret po			;5ed0
	add a,c			;5ed1
	ex (sp),hl			;5ed2
	rlca			;5ed3
	nop			;5ed4
	add a,h			;5ed5
	ret nz			;5ed6
	rst 20h			;5ed7
	xor 0ech		;5ed8
	inc bc			;5eda
	rst 28h			;5edb
	adc a,e			;5edc
	rst 20h			;5edd
	ex (sp),hl			;5ede
	ret po			;5edf
	jr nc,l5ef2h		;5ee0
	sub b			;5ee2
	ret nc			;5ee3
	ret p			;5ee4
	ret po			;5ee5
	ret nz			;5ee6
	rst 20h			;5ee7
	dec b			;5ee8
	rst 28h			;5ee9
	add a,e			;5eea
	rst 20h			;5eeb
	ex (sp),hl			;5eec
	ret po			;5eed
	dec b			;5eee
	ret p			;5eef
	add a,d			;5ef0
	ret po			;5ef1
l5ef2h:
	ret nz			;5ef2
	inc bc			;5ef3
	ret po			;5ef4
	add a,l			;5ef5
	ex (sp),hl			;5ef6
	rst 20h			;5ef7
	xor 0ech		;5ef8
	rst 28h			;5efa
	inc bc			;5efb
	nop			;5efc
	add a,l			;5efd
	ret nz			;5efe
	ret po			;5eff
	jr nc,l5f12h		;5f00
	sub b			;5f02
l5f03h:
	ld (bc),a			;5f03
	rst 28h			;5f04
	add a,d			;5f05
	rst 20h			;5f06
	ex (sp),hl			;5f07
	inc bc			;5f08
	ret po			;5f09
	add a,l			;5f0a
	ex (sp),hl			;5f0b
	ret nc			;5f0c
	ret p			;5f0d
	ret po			;5f0e
	ret nz			;5f0f
	inc bc			;5f10
	nop			;5f11
l5f12h:
	add a,c			;5f12
	ret nz			;5f13
	inc bc			;5f14
	ret po			;5f15
	add a,d			;5f16
	ex (sp),hl			;5f17
	rst 20h			;5f18
	inc bc			;5f19
	rst 28h			;5f1a
	inc bc			;5f1b
	nop			;5f1c
	add a,d			;5f1d
	ret nz			;5f1e
	ret po			;5f1f
	inc bc			;5f20
	ret p			;5f21
	ld (bc),a			;5f22
	rst 28h			;5f23
	add a,d			;5f24
	rst 20h			;5f25
	ex (sp),hl			;5f26
	inc bc			;5f27
	ret po			;5f28
	add a,c			;5f29
	ex (sp),hl			;5f2a
	ld (bc),a			;5f2b
	ret p			;5f2c
	add a,d			;5f2d
	ret po			;5f2e
	ret nz			;5f2f
	inc bc			;5f30
	nop			;5f31
	add a,d			;5f32
	ret nz			;5f33
	rst 20h			;5f34
	dec b			;5f35
	rst 28h			;5f36
	add a,e			;5f37
	rst 20h			;5f38
	ex (sp),hl			;5f39
l5f3ah:
	ret po			;5f3a
	dec b			;5f3b
	ret p			;5f3c
	add a,d			;5f3d
	ret po			;5f3e
	ret nz			;5f3f
	dec b			;5f40
	ret po			;5f41
	add a,e			;5f42
	rst 38h			;5f43
	ld a,a			;5f44
	ccf			;5f45
	dec b			;5f46
	nop			;5f47
	inc bc			;5f48
	ret m			;5f49
	inc bc			;5f4a
	inc c			;5f4b
	add a,d			;5f4c
	inc e			;5f4d
	ld a,h			;5f4e
	ld (bc),a			;5f4f
	call m,l3f80h+1		;5f50
	inc b			;5f53
	nop			;5f54
	ld (bc),a			;5f55
	ex af,af'			;5f56
	add a,d			;5f57
	djnz l5f3ah		;5f58
	ld a,a			;5f5a
l5f5bh:
	nop			;5f5b
	ld a,a			;5f5c
	nop			;5f5d
	ld (bc),a			;5f5e
	nop			;5f5f
	ld (bc),a			;5f60
	jr l5f67h		;5f61
	djnz l5f67h		;5f63
	rst 38h			;5f65
	inc bc			;5f66
l5f67h:
	nop			;5f67
	add a,c			;5f68
	ld c,002h		;5f69
	rra			;5f6b
	ld (bc),a			;5f6c
	ld c,002h		;5f6d
	rst 38h			;5f6f
	add a,c			;5f70
	ret nz			;5f71
	rlca			;5f72
	rst 38h			;5f73
	add a,c			;5f74
	jr l5f7bh		;5f75
	rst 38h			;5f77
	add a,c			;5f78
	scf			;5f79
	rlca			;5f7a
l5f7bh:
	nop			;5f7b
	add a,c			;5f7c
	rst 38h			;5f7d
	ld b,000h		;5f7e
	add a,d			;5f80
	cp (hl)			;5f81
	rst 38h			;5f82
	ld b,000h		;5f83
	add a,d			;5f85
	rst 28h			;5f86
	rst 38h			;5f87
	ld b,000h		;5f88
	add a,d			;5f8a
	in a,(0ffh)		;5f8b
	ld b,000h		;5f8d
	add a,d			;5f8f
	rst 10h			;5f90
	rst 38h			;5f91
	ld b,000h		;5f92
	ld (bc),a			;5f94
	rst 38h			;5f95
	djnz l5f98h		;5f96
l5f98h:
	add a,e			;5f98
	add a,b			;5f99
	ret nz			;5f9a
	jr nz,l5f9fh		;5f9b
	djnz l5fa2h		;5f9d
l5f9fh:
	sub b			;5f9f
	djnz l5fa2h		;5fa0
l5fa2h:
	ex af,af'			;5fa2
	djnz l5fb5h		;5fa3
	nop			;5fa5
	inc bc			;5fa6
	ex af,af'			;5fa7
	add a,c			;5fa8
	add hl,bc			;5fa9
	ld (bc),a			;5faa
l5fabh:
	dec b			;5fab
	ld (bc),a			;5fac
	inc b			;5fad
	rlca			;5fae
	nop			;5faf
	add a,e			;5fb0
	inc b			;5fb1
	ld (bc),a			;5fb2
	ld b,002h		;5fb3
l5fb5h:
	inc bc			;5fb5
	add a,c			;5fb6
	ld bc,00009h		;5fb7
	add a,c			;5fba
l5fbbh:
	and h			;5fbb
	ex af,af'			;5fbc
	nop			;5fbd
	add a,l			;5fbe
	xor d			;5fbf
	cp 0eeh		;5fc0
	cp 0dah		;5fc2
	inc bc			;5fc4
	cp 083h		;5fc5
	cp (hl)			;5fc7
	cp 0f6h		;5fc8
	inc bc			;5fca
	cp 083h		;5fcb
	sbc a,0feh		;5fcd
	xor 007h		;5fcf
	jr l5f5bh		;5fd1
	cp d			;5fd3
	jr nz,l5fdeh		;5fd4
	ld d,b			;5fd6
	inc d			;5fd7
	ld b,h			;5fd8
	nop			;5fd9
	add a,b			;5fda
	inc b			;5fdb
	nop			;5fdc
	adc a,c			;5fdd
l5fdeh:
	xor d			;5fde
	cp 0eah		;5fdf
	cp 0deh		;5fe1
	cp 0f6h		;5fe3
	cp 0deh		;5fe5
	inc bc			;5fe7
	cp 081h		;5fe8
	xor 003h		;5fea
	nop			;5fec
	add a,c			;5fed
	xor d			;5fee
	inc b			;5fef
	cp 090h		;5ff0
	djnz l5ff4h		;5ff2
l5ff4h:
	djnz l5ff6h		;5ff4
l5ff6h:
	jr z,$+8		;5ff6
	djnz l5ffah		;5ff8
l5ffah:
	jr nz,$+16		;5ffa
	ex af,af'			;5ffc
	djnz l6027h		;5ffd
	jr nz,l6011h		;5fff
	jr z,l6003h		;6001
l6003h:
	ld (de),a			;6003
	nop			;6004
	sub b			;6005
	inc a			;6006
l6007h:
	ld h,(hl)			;6007
	ld b,d			;6008
	nop			;6009
	add a,c			;600a
	jp l3c65h+1		;600b
	jr l6010h		;600e
l6010h:
	add a,c			;6010
l6011h:
	nop			;6011
	inc a			;6012
	rst 38h			;6013
	nop			;6014
	ld b,d			;6015
	ld c,000h		;6016
	add a,l			;6018
	inc a			;6019
	ld a,(hl)			;601a
	rst 38h			;601b
	rst 20h			;601c
	jp 00004h		;601d
	add a,e			;6020
	inc a			;6021
	jp l0480h+1		;6022
	nop			;6025
	ld (bc),a			;6026
l6027h:
	jr l5fabh		;6027
	nop			;6029
	inc a			;602a
	dec c			;602b
	nop			;602c
	ld (bc),a			;602d
	jr l5fb5h		;602e
	nop			;6030
	inc h			;6031
	ld h,(hl)			;6032
	nop			;6033
	inc a			;6034
	ld (bc),a			;6035
	inc h			;6036
	ld (bc),a			;6037
	jr l5fbbh		;6038
	inc h			;603a
	inc c			;603b
	nop			;603c
	add a,a			;603d
	djnz l6040h		;603e
l6040h:
	jr z,l6052h		;6040
	jr c,l606ch		;6042
	djnz l6053h		;6044
	nop			;6046
	inc bc			;6047
	djnz l60ach		;6048
	nop			;604a
	adc a,b			;604b
	ld a,(hl)			;604c
	rst 20h			;604d
	ret po			;604e
	rst 28h			;604f
	rst 20h			;6050
	ld a,a			;6051
l6052h:
	nop			;6052
l6053h:
	ld a,(hl)			;6053
	inc b			;6054
	rst 20h			;6055
	add a,c			;6056
	ld a,(hl)			;6057
	dec bc			;6058
	nop			;6059
	adc a,h			;605a
	ex af,af'			;605b
	nop			;605c
	ex af,af'			;605d
	nop			;605e
	ex af,af'			;605f
	nop			;6060
	ld b,00eh		;6061
	inc c			;6063
	jr l6076h		;6064
	nop			;6066
	ld (bc),a			;6067
	ld h,b			;6068
	add hl,bc			;6069
	nop			;606a
	adc a,c			;606b
l606ch:
	ld a,060h		;606c
	ld h,(hl)			;606e
	ld a,000h		;606f
	inc a			;6071
	ld h,(hl)			;6072
	inc a			;6073
	nop			;6074
	ld (bc),a			;6075
l6076h:
	inc b			;6076
	ld (bc),a			;6077
	ex af,af'			;6078
	add a,d			;6079
	nop			;607a
	djnz l607fh		;607b
	nop			;607d
	add a,h			;607e
l607fh:
	jr l6091h		;607f
	jr l6083h		;6081
l6083h:
	ld (bc),a			;6083
	jr l6007h		;6084
	nop			;6086
	ld (bc),a			;6087
	ex af,af'			;6088
	add a,d			;6089
	nop			;608a
	djnz l6092h		;608b
	nop			;608d
	adc a,c			;608e
	inc b			;608f
	inc c			;6090
l6091h:
	inc e			;6091
l6092h:
	ccf			;6092
	ld a,a			;6093
l6094h:
	ccf			;6094
	inc e			;6095
	inc c			;6096
	inc b			;6097
	ld a,(bc)			;6098
	nop			;6099
	add a,c			;609a
	ret po			;609b
	ld (bc),a			;609c
	ret m			;609d
	add a,c			;609e
	inc a			;609f
	dec b			;60a0
	inc e			;60a1
	ld b,000h		;60a2
	add a,(hl)			;60a4
	jr nz,l6107h		;60a5
	call m,sub_67feh		;60a7
	inc hl			;60aa
	ld (bc),a			;60ab
l60ach:
	inc bc			;60ac
	ld a,(bc)			;60ad
	nop			;60ae
	add a,e			;60af
	jr nz,l612ah		;60b0
	inc h			;60b2
	ld (bc),a			;60b3
	inc b			;60b4
	ld (de),a			;60b5
	nop			;60b6
	add a,d			;60b7
	djnz $+8		;60b8
	dec bc			;60ba
	nop			;60bb
	add a,c			;60bc
	ld bc,00003h		;60bd
	add a,d			;60c0
	jr nz,l60c8h		;60c1
	add hl,bc			;60c3
	nop			;60c4
	add a,c			;60c5
	jr nz,l60cah		;60c6
l60c8h:
	nop			;60c8
	add a,h			;60c9
l60cah:
	ld a,d			;60ca
	ex af,af'			;60cb
	ld (00d20h),a		;60cc
	nop			;60cf
	ld (bc),a			;60d0
	ld (bc),a			;60d1
	adc a,b			;60d2
	dec b			;60d3
	nop			;60d4
	inc e			;60d5
	ld a,(hl)			;60d6
	ld a,a			;60d7
	di			;60d8
	ret nz			;60d9
	add a,b			;60da
	ld (bc),a			;60db
	nop			;60dc
	add a,a			;60dd
	ld bc,l0203h		;60de
	ld a,(0c74ch)		;60e1
	add a,b			;60e4
	add hl,bc			;60e5
	nop			;60e6
	add a,l			;60e7
	add a,b			;60e8
	nop			;60e9
	ret po			;60ea
	nop			;60eb
	call m,l0200h+2		;60ec
	add a,c			;60ef
	ex af,af'			;60f0
	inc b			;60f1
	djnz l6076h		;60f2
	jr nc,l6117h		;60f4
	ld (bc),a			;60f6
	inc hl			;60f7
	sub a			;60f8
	ld h,e			;60f9
	ld b,e			;60fa
	ld b,c			;60fb
	ld b,b			;60fc
	jr nz,l612fh		;60fd
	inc c			;60ff
	nop			;6100
	ld c,01fh		;6101
	ld a,l			;6103
	call m,0e3f7h		;6104
l6107h:
	rst 0			;6107
	rst 28h			;6108
	inc a			;6109
	cp h			;610a
	ret m			;610b
	ld sp,hl			;610c
	ld a,l			;610d
	inc b			;610e
	nop			;610f
	ld (bc),a			;6110
	djnz l6094h		;6111
	add a,b			;6113
	ld (bc),a			;6114
	ret nz			;6115
	inc bc			;6116
l6117h:
	ret po			;6117
	add a,c			;6118
	jr nc,l611dh		;6119
	nop			;611b
	add a,(hl)			;611c
l611dh:
	and b			;611d
	or b			;611e
	add hl,sp			;611f
	jp m,l2078h		;6120
	rrca			;6123
	nop			;6124
	add a,c			;6125
	inc bc			;6126
	ld (bc),a			;6127
	nop			;6128
	add a,d			;6129
l612ah:
	inc c			;612a
	ex af,af'			;612b
	inc d			;612c
	nop			;612d
	ld (bc),a			;612e
l612fh:
	ld bc,0028fh		;612f
	ld bc,00807h		;6132
	nop			;6135
	rrca			;6136
	rra			;6137
	ld a,034h		;6138
	ld (hl),03fh		;613a
	ld e,01ch		;613c
	dec bc			;613e
	dec de			;613f
	ld (bc),a			;6140
	inc de			;6141
	add a,h			;6142
	ld bc,l1218h		;6143
	ld bc,00003h		;6146
	add a,l			;6149
	jr l6188h		;614a
	ld a,(hl)			;614c
	ld a,b			;614d
	ld b,b			;614e
	inc bc			;614f
	nop			;6150
	add a,l			;6151
	ld bc,l0402h		;6152
	inc d			;6155
	ex af,af'			;6156
l6157h:
	add hl,bc			;6157
	nop			;6158
	add a,a			;6159
	ld h,b			;615a
	sbc a,b			;615b
	nop			;615c
	ret nz			;615d
	ld a,h			;615e
	ld bc,l0338h		;615f
	ld bc,l0203h+2		;6162
	add a,c			;6165
	ld bc,00007h		;6166
	adc a,e			;6169
	rrca			;616a
	ld e,03bh		;616b
	ld (hl),e			;616d
	ld a,(hl)			;616e
	inc l			;616f
	inc a			;6170
	ld e,006h		;6171
	add a,b			;6173
	nop			;6174
	ld (bc),a			;6175
	ld bc,00003h		;6176
	add a,d			;6179
	sub b			;617a
	ret nc			;617b
	ld (bc),a			;617c
	ret nz			;617d
	adc a,b			;617e
	ld h,b			;617f
	nop			;6180
	ret nz			;6181
	ret po			;6182
	ld l,h			;6183
	ld d,b			;6184
	jr c,l6157h		;6185
	dec b			;6187
l6188h:
	nop			;6188
	ld (bc),a			;6189
	inc bc			;618a
	add a,d			;618b
	ld b,004h		;618c
	inc bc			;618e
	nop			;618f
	add a,l			;6190
	ld bc,l0c12h		;6191
	djnz l61b6h		;6194
	ld (bc),a			;6196
	rrca			;6197
	add a,(hl)			;6198
	ld e,01ah		;6199
	rrca			;619b
	ld c,006h		;619c
	dec b			;619e
	ld (bc),a			;619f
	ld bc,l0482h		;61a0
	ld bc,00007h		;61a3
	adc a,(hl)			;61a6
	ld h,b			;61a7
	ret p			;61a8
	ret po			;61a9
	add a,b			;61aa
	nop			;61ab
	rrca			;61ac
	ex af,af'			;61ad
	ld de,01713h		;61ae
	dec d			;61b1
	inc de			;61b2
	ld bc,0050ch		;61b3
l61b6h:
	nop			;61b6
	adc a,c			;61b7
	add a,b			;61b8
	ld h,b			;61b9
	ret po			;61ba
	ld h,b			;61bb
	ret po			;61bc
	ld h,b			;61bd
	sub b			;61be
	cp h			;61bf
	ld a,h			;61c0
	ld (bc),a			;61c1
	djnz $+4		;61c2
	nop			;61c4
	add a,e			;61c5
	ld bc,l0203h		;61c6
	inc bc			;61c9
	nop			;61ca
	adc a,b			;61cb
	inc b			;61cc
	add hl,bc			;61cd
	ld b,01bh		;61ce
	rla			;61d0
	inc c			;61d1
	rlca			;61d2
	ld (bc),a			;61d3
	ld (bc),a			;61d4
	nop			;61d5
	add a,d			;61d6
l61d7h:
	ld c,008h		;61d7
	inc bc			;61d9
	nop			;61da
	add a,d			;61db
	inc bc			;61dc
	nop			;61dd
	ld (bc),a			;61de
	add hl,bc			;61df
	ld (bc),a			;61e0
	ex af,af'			;61e1
	add a,c			;61e2
	inc b			;61e3
	rlca			;61e4
	nop			;61e5
	adc a,d			;61e6
	ld b,b			;61e7
	ld (hl),b			;61e8
	ld l,b			;61e9
	ret m			;61ea
	or b			;61eb
	ret nz			;61ec
	call c,sub_1a1ch		;61ed
	inc b			;61f0
	dec bc			;61f1
	nop			;61f2
	add a,(hl)			;61f3
	ld b,b			;61f4
	djnz l622fh		;61f5
	inc e			;61f7
	ex af,af'			;61f8
	ld (bc),a			;61f9
	add hl,hl			;61fa
	nop			;61fb
	add a,d			;61fc
	ld (bc),a			;61fd
	inc bc			;61fe
	ld (bc),a			;61ff
	dec b			;6200
	add a,c			;6201
	ex af,af'			;6202
l6203h:
	ld (bc),a			;6203
	djnz l6209h		;6204
	nop			;6206
	add a,d			;6207
	inc e			;6208
l6209h:
	ld (l4002h),a		;6209
	adc a,b			;620c
	ld bc,00c07h		;620d
	ex af,af'			;6210
	jr l6234h		;6211
	add a,087h		;6213
	ex af,af'			;6215
	nop			;6216
	and e			;6217
	ret nz			;6218
	jr c,l6227h		;6219
	inc b			;621b
	ret z			;621c
	ld a,0c3h		;621d
	dec e			;621f
	ld (hl),l			;6220
	nop			;6221
	ret nz			;6222
	jr nz,l6248h		;6223
	daa			;6225
	rlca			;6226
l6227h:
	ld c,(hl)			;6227
	ld c,h			;6228
	ld e,h			;6229
	inc e			;622a
	jr c,l625dh		;622b
	ld l,05fh		;622d
l622fh:
	ld c,a			;622f
	ld (l300eh),a		;6230
	ld h,b			;6233
l6234h:
	add a,b			;6234
	djnz l6237h		;6235
l6237h:
	ld b,b			;6237
	ld (bc),a			;6238
l6239h:
	nop			;6239
	ex af,af'			;623a
	ld (bc),a			;623b
	nop			;623c
	ld (bc),a			;623d
	ld bc,06082h		;623e
	ret m			;6241
	ld (bc),a			;6242
	ret po			;6243
	add a,d			;6244
	ld b,b			;6245
	jr nc,l624ah		;6246
l6248h:
	djnz l624ch		;6248
l624ah:
	jr l61d7h		;624a
l624ch:
	ex af,af'			;624c
	inc b			;624d
	ld bc,0b0a0h		;624e
	add hl,sp			;6251
	jp m,0c078h		;6252
	ld c,001h		;6255
	dec c			;6257
	nop			;6258
	add a,l			;6259
	add a,e			;625a
	nop			;625b
	ld b,b			;625c
l625dh:
	inc l			;625d
	jr $+14		;625e
	nop			;6260
	add a,d			;6261
	ld bc,l0302h		;6262
	nop			;6265
	adc a,b			;6266
	ex af,af'			;6267
	jr l6296h		;6268
	ld h,a			;626a
	add a,e			;626b
	add a,b			;626c
	djnz l6277h		;626d
	ld (bc),a			;626f
	nop			;6270
	add a,d			;6271
	ret po			;6272
	djnz l6277h		;6273
	nop			;6275
	adc a,d			;6276
l6277h:
	inc c			;6277
	dec de			;6278
	ld sp,0c460h		;6279
	add a,h			;627c
	dec bc			;627d
	nop			;627e
	inc bc			;627f
	ld a,b			;6280
	ex af,af'			;6281
	nop			;6282
	ld (bc),a			;6283
	add a,b			;6284
	ld (bc),a			;6285
	ld b,b			;6286
	sub c			;6287
	ret p			;6288
	ex af,af'			;6289
	call po,sub_1114h		;628a
	inc de			;628d
	daa			;628e
	ld h,04eh		;628f
	ld e,b			;6291
	ld c,(hl)			;6292
	ld h,h			;6293
	inc sp			;6294
	dec bc			;6295
l6296h:
	ld bc,l0101h+1		;6296
	inc bc			;6299
	nop			;629a
	add a,e			;629b
	ret nz			;629c
	add a,d			;629d
l629eh:
	djnz l62a2h		;629e
	nop			;62a0
	add a,c			;62a1
l62a2h:
	add hl,bc			;62a2
	inc bc			;62a3
	nop			;62a4
	add a,a			;62a5
	add a,e			;62a6
	jp 04363h		;62a7
	ld bc,l4000h		;62aa
	ld (bc),a			;62ad
	inc d			;62ae
	add a,c			;62af
	nop			;62b0
	ld (bc),a			;62b1
	jr l62b6h		;62b2
	djnz l6239h		;62b4
l62b6h:
	ex af,af'			;62b6
	ret z			;62b7
	call po,0e002h		;62b8
	add a,(hl)			;62bb
	call nc,0f014h		;62bc
	ret po			;62bf
	jr z,$+28		;62c0
	dec d			;62c2
	nop			;62c3
	sbc a,c			;62c4
	inc bc			;62c5
	ld b,00ch		;62c6
	add hl,bc			;62c8
	djnz $+1		;62c9
	ld b,00ch		;62cb
	ld bc,08270h		;62cd
	ret nz			;62d0
	nop			;62d1
	ret nz			;62d2
	ld b,d			;62d3
	ld b,b			;62d4
	jr nz,l630ah		;62d5
	inc hl			;62d7
	inc bc			;62d8
	ld b,e			;62d9
	ld b,c			;62da
	ld e,b			;62db
	ld (00011h),a		;62dc
	djnz l62e1h		;62df
l62e1h:
	adc a,c			;62e1
	inc a			;62e2
	ld b,d			;62e3
	add a,c			;62e4
	nop			;62e5
	jr $-1		;62e6
	ld a,(hl)			;62e8
	inc a			;62e9
	jr l62f3h		;62ea
	nop			;62ec
	add a,d			;62ed
	add a,c			;62ee
	jp 00012h		;62ef
	add a,c			;62f2
l62f3h:
	jr l6300h		;62f3
	rst 38h			;62f5
	add a,c			;62f6
	inc h			;62f7
	ld (bc),a			;62f8
	ld e,d			;62f9
	add a,c			;62fa
	ld a,(hl)			;62fb
	rrca			;62fc
	nop			;62fd
	add a,d			;62fe
	ld a,(hl)			;62ff
l6300h:
	rst 38h			;6300
	ld (bc),a			;6301
	ld a,(hl)			;6302
	add a,h			;6303
	ld b,d			;6304
	jr l6307h		;6305
l6307h:
	inc h			;6307
	ld (bc),a			;6308
	inc a			;6309
l630ah:
	dec c			;630a
	nop			;630b
	add a,l			;630c
	jr c,l638bh		;630d
	jr z,l6311h		;630f
l6311h:
	jr c,l6321h		;6311
	nop			;6313
	inc bc			;6314
	djnz $+4		;6315
l6317h:
	nop			;6317
	add a,a			;6318
	inc d			;6319
	jr nz,l632ch		;631a
	jr l629eh		;631c
	jr nc,l6320h		;631e
l6320h:
	ld (bc),a			;6320
l6321h:
	inc b			;6321
	ld (bc),a			;6322
	ld (bc),a			;6323
	dec b			;6324
l6325h:
	nop			;6325
	adc a,d			;6326
	ld (l0802h+2),hl		;6327
	rra			;632a
	ld (bc),a			;632b
l632ch:
	jr c,$+24		;632c
	inc c			;632e
	inc b			;632f
	ld (bc),a			;6330
	ld a,a			;6331
	nop			;6332
	ld l,l			;6333
	nop			;6334
	add a,c			;6335
	ld bc,00003h		;6336
	add a,d			;6339
	jr nz,l6341h		;633a
	add hl,bc			;633c
	nop			;633d
	add a,c			;633e
	jr nz,l6343h		;633f
l6341h:
	nop			;6341
	add a,h			;6342
l6343h:
	ld a,d			;6343
	ex af,af'			;6344
	ld (l0720h),a		;6345
	nop			;6348
	add a,d			;6349
	ld bc,l0203h		;634a
	rlca			;634d
	ld (bc),a			;634e
	rrca			;634f
	ld (bc),a			;6350
	rra			;6351
	add a,c			;6352
	dec e			;6353
	dec b			;6354
	nop			;6355
	add a,d			;6356
	rlca			;6357
	ccf			;6358
	ld b,0ffh		;6359
	add a,c			;635b
	cp 002h		;635c
	rst 38h			;635e
	ld b,000h		;635f
	add a,e			;6361
	ret nz			;6362
	ret m			;6363
	call m,0fe02h		;6364
	add a,d			;6367
	call m,sub_023eh		;6368
	rst 38h			;636b
	add a,e			;636c
	rst 30h			;636d
	rrca			;636e
	rst 18h			;636f
	inc bc			;6370
	ccf			;6371
	add a,d			;6372
	ld a,a			;6373
	ld a,(hl)			;6374
	inc bc			;6375
	ld a,h			;6376
	add a,e			;6377
	ld a,b			;6378
	ld (hl),b			;6379
	ld l,(hl)			;637a
	ld (bc),a			;637b
	ld a,a			;637c
	add a,l			;637d
	ld a,0feh		;637e
	ret p			;6380
	ret po			;6381
	add a,b			;6382
	ld (bc),a			;6383
	nop			;6384
	add a,d			;6385
	ex af,af'			;6386
	djnz $+4		;6387
	nop			;6389
	ld (bc),a			;638a
l638bh:
	ld bc,06082h		;638b
	ret m			;638e
	ld (bc),a			;638f
	ret p			;6390
	add a,c			;6391
	ld b,b			;6392
	ld (bc),a			;6393
	jr nc,l6317h		;6394
l6396h:
	djnz l639ah		;6396
	jr l6325h		;6398
l639ah:
	ex af,af'			;639a
	inc b			;639b
	ld bc,0f0e0h		;639c
	jp (hl)			;639f
	ex de,hl			;63a0
	ld c,b			;63a1
	ret po			;63a2
	ld c,001h		;63a3
	dec c			;63a5
	nop			;63a6
	add a,(hl)			;63a7
	add a,e			;63a8
	nop			;63a9
	ld b,b			;63aa
	ld l,01fh		;63ab
	ld bc,0000fh		;63ad
	add a,h			;63b0
	ld bc,l0703h		;63b1
	rrca			;63b4
	ld (bc),a			;63b5
	rra			;63b6
	add a,e			;63b7
	ld a,01dh		;63b8
	rra			;63ba
	ld (bc),a			;63bb
	rrca			;63bc
	add a,h			;63bd
	ld (hl),b			;63be
	add a,b			;63bf
	ret nz			;63c0
l63c1h:
	ld bc,l4002h		;63c1
	adc a,d			;63c4
	ld h,b			;63c5
	jr nz,l63fbh		;63c6
	ld hl,04200h		;63c8
	ld b,e			;63cb
	ld e,e			;63cc
	dec sp			;63cd
	add hl,de			;63ce
	ld b,000h		;63cf
	add a,e			;63d1
	ld bc,l3f0fh		;63d2
	inc bc			;63d5
	ld a,a			;63d6
	inc bc			;63d7
	rst 38h			;63d8
	add a,c			;63d9
l63dah:
	ld e,a			;63da
	ld b,000h		;63db
	adc a,d			;63dd
	ret nz			;63de
	ret p			;63df
	ret m			;63e0
	call m,0d8bch		;63e1
	ret po			;63e4
	call m,0c1ffh		;63e5
	inc bc			;63e8
	inc bc			;63e9
	inc bc			;63ea
	rlca			;63eb
	add a,c			;63ec
	ld b,002h		;63ed
	rlca			;63ef
	add a,c			;63f0
	inc bc			;63f1
	ld b,000h		;63f2
	add a,l			;63f4
	ret p			;63f5
	ret po			;63f6
	ret nz			;63f7
	add a,h			;63f8
	add a,b			;63f9
	ld (bc),a			;63fa
l63fbh:
	nop			;63fb
	add a,h			;63fc
	ret nz			;63fd
	ret nc			;63fe
	adc a,(hl)			;63ff
	or h			;6400
	ld (bc),a			;6401
	ld bc,l0281h		;6402
	ld (bc),a			;6405
	nop			;6406
	add a,c			;6407
	ld (hl),b			;6408
	inc bc			;6409
	djnz l6396h		;640a
	nop			;640c
	jr nc,$-60		;640d
	ret nz			;640f
	inc a			;6410
	ld (hl),h			;6411
	inc a			;6412
	jp nc,l10a0h		;6413
	ld b,000h		;6416
	sub a			;6418
	ld bc,01f07h		;6419
	ccf			;641c
	ld a,a			;641d
	ld (hl),a			;641e
	ld a,a			;641f
	rra			;6420
	ccf			;6421
	jr nc,$+16		;6422
	jr nz,$+1		;6424
	djnz l6448h		;6426
	ex af,af'			;6428
	ld de,00b02h		;6429
	dec c			;642c
	add hl,bc			;642d
	ld b,002h		;642e
	rlca			;6430
	nop			;6431
	add a,a			;6432
	ld c,03fh		;6433
	ld a,l			;6435
	rst 38h			;6436
	rst 18h			;6437
	sbc a,01ch		;6438
	inc bc			;643a
	jr l63c1h		;643b
	djnz l645dh		;643d
	inc c			;643f
	ld bc,00003h		;6440
	adc a,h			;6443
	ret nz			;6444
	ret po			;6445
	jr nc,l6468h		;6446
l6448h:
	djnz l63dah		;6448
	ex af,af'			;644a
	jr nc,l6479h		;644b
	sbc a,b			;644d
	djnz l6470h		;644e
	ld b,000h		;6450
	add a,d			;6452
	inc bc			;6453
	rrca			;6454
	ld (bc),a			;6455
	rra			;6456
	add a,a			;6457
	dec de			;6458
	rrca			;6459
	inc e			;645a
	djnz l6466h		;645b
l645dh:
	ex af,af'			;645d
	inc b			;645e
	inc bc			;645f
	nop			;6460
	add a,c			;6461
	inc bc			;6462
	ld (bc),a			;6463
	rrca			;6464
	adc a,b			;6465
l6466h:
	rla			;6466
	rrca			;6467
l6468h:
	rlca			;6468
	ld c,00ch		;6469
	ex af,af'			;646b
	dec c			;646c
	inc b			;646d
	dec b			;646e
	nop			;646f
l6470h:
	adc a,h			;6470
	add a,b			;6471
	ret po			;6472
	ld (hl),b			;6473
	ret p			;6474
	adc a,b			;6475
	inc c			;6476
	ld b,b			;6477
	inc b			;6478
l6479h:
	rra			;6479
	sub h			;647a
	ld a,(de)			;647b
	inc b			;647c
	dec bc			;647d
	nop			;647e
	add a,(hl)			;647f
	jr nc,l64fah		;6480
	ld h,h			;6482
	inc h			;6483
	inc e			;6484
	nop			;6485
	ld (bc),a			;6486
	ex af,af'			;6487
	ld (bc),a			;6488
	inc b			;6489
	ld (bc),a			;648a
	nop			;648b
	add a,c			;648c
	add a,b			;648d
	inc c			;648e
	nop			;648f
	ld (bc),a			;6490
	add a,b			;6491
	ld (de),a			;6492
	nop			;6493
	add a,h			;6494
	ld bc,l0503h		;6495
	inc b			;6498
	ld (bc),a			;6499
	ex af,af'			;649a
	add a,c			;649b
	djnz l64a1h		;649c
	nop			;649e
	adc a,b			;649f
	inc e			;64a0
l64a1h:
	ld h,d			;64a1
	add a,c			;64a2
	add a,b			;64a3
	rlca			;64a4
	ccf			;64a5
	cp 0f8h		;64a6
	ld (bc),a			;64a8
	ret p			;64a9
	add a,d			;64aa
	ret po			;64ab
	ret nz			;64ac
	add hl,bc			;64ad
	nop			;64ae
	add a,e			;64af
	ret nz			;64b0
	jr c,l64b7h		;64b1
	ld (bc),a			;64b3
	ld (bc),a			;64b4
	add a,c			;64b5
	inc b			;64b6
l64b7h:
	ld a,(bc)			;64b7
	nop			;64b8
	add a,d			;64b9
	ld bc,l0203h		;64ba
	ld (bc),a			;64bd
	rlca			;64be
	nop			;64bf
	adc a,(hl)			;64c0
	ld c,018h		;64c1
	ld a,b			;64c3
	ret p			;64c4
	ret nz			;64c5
	ret			;64c6
	sub e			;64c7
	inc bc			;64c8
	inc c			;64c9
	inc e			;64ca
	jr l6506h		;64cb
	ld a,l			;64cd
	inc b			;64ce
	inc b			;64cf
	nop			;64d0
	add a,e			;64d1
	ex af,af'			;64d2
	jr z,l653dh		;64d3
	ld (bc),a			;64d5
	call po,l348ah		;64d6
	ld (bc),a			;64d9
	nop			;64da
	ret po			;64db
	ret p			;64dc
	jp (hl)			;64dd
	ex de,hl			;64de
	ld c,b			;64df
	rrca			;64e0
	ld de,0000eh		;64e1
	add a,c			;64e4
	inc bc			;64e5
	ld (bc),a			;64e6
	add a,b			;64e7
	add a,e			;64e8
	ld c,(hl)			;64e9
	cpl			;64ea
	ld bc,0000ah		;64eb
	add a,d			;64ee
	ld bc,l0200h+2		;64ef
	inc b			;64f2
	adc a,b			;64f3
	nop			;64f4
	inc bc			;64f5
	rrca			;64f6
	rra			;64f7
	scf			;64f8
	ld h,a			;64f9
l64fah:
	jp l0480h		;64fa
	nop			;64fd
	adc a,d			;64fe
	ret po			;64ff
	djnz l650ah		;6500
	nop			;6502
	ret p			;6503
l6504h:
	cp 0f3h		;6504
l6506h:
	ret po			;6506
	ret nz			;6507
	add a,b			;6508
	dec b			;6509
l650ah:
	nop			;650a
	add a,c			;650b
	rlca			;650c
	rlca			;650d
	nop			;650e
	add a,c			;650f
	add a,b			;6510
	ld (bc),a			;6511
	ld b,b			;6512
	ld (bc),a			;6513
	jr nz,l6519h		;6514
	nop			;6516
	add a,c			;6517
	add a,b			;6518
l6519h:
	inc bc			;6519
	nop			;651a
	ld (bc),a			;651b
	ld bc,00004h		;651c
	add a,e			;651f
	inc b			;6520
	ld b,001h		;6521
	inc b			;6523
	nop			;6524
	sub b			;6525
	ccf			;6526
	ld (hl),d			;6527
	ret p			;6528
l6529h:
	adc a,h			;6529
	nop			;652a
	add hl,bc			;652b
	inc b			;652c
	ex af,af'			;652d
	jr $+123		;652e
	dec sp			;6530
	sbc a,d			;6531
	adc a,e			;6532
	pop bc			;6533
	ld b,b			;6534
	jr nz,l653ah		;6535
	nop			;6537
	ld (bc),a			;6538
	inc b			;6539
l653ah:
	add a,a			;653a
	ret pe			;653b
	ld l,b			;653c
l653dh:
	inc (hl)			;653d
	call nc,0b0e0h		;653e
	jr z,$+2		;6541
	call p,0f082h		;6543
	call po,sub_0d02h		;6546
	add a,d			;6549
	inc bc			;654a
	ld bc,00012h		;654b
	add a,l			;654e
	inc bc			;654f
	inc b			;6550
	ex af,af'			;6551
	nop			;6552
	djnz l655ah		;6553
	nop			;6555
	adc a,l			;6556
	rrca			;6557
	ld e,020h		;6558
l655ah:
	ld bc,08600h		;655a
	cp (hl)			;655d
	call c,sub_594bh		;655e
	ld d,b			;6561
	ld (de),a			;6562
	inc bc			;6563
	ld (bc),a			;6564
	dec de			;6565
	add a,c			;6566
	add hl,bc			;6567
	nop			;6568
	djnz $-1		;6569
	ld (bc),a			;656b
	nop			;656c
	sub b			;656d
	inc a			;656e
	ld a,(hl)			;656f
	ld h,(hl)			;6570
	nop			;6571
	add a,c			;6572
	jp l3c65h+1		;6573
	jr l6578h		;6576
l6578h:
	add a,c			;6578
	nop			;6579
	inc a			;657a
	rst 38h			;657b
	cp l			;657c
	rst 38h			;657d
	ld (bc),a			;657e
	inc a			;657f
	add a,c			;6580
	ld a,(hl)			;6581
	ld (bc),a			;6582
	inc a			;6583
	add a,c			;6584
	jr l6590h		;6585
	nop			;6587
	add a,l			;6588
	ld b,d			;6589
	rst 20h			;658a
	rst 38h			;658b
	rst 20h			;658c
	jr l6591h		;658d
	rst 38h			;658f
l6590h:
	add a,c			;6590
l6591h:
	jp 00008h		;6591
	add a,d			;6594
	inc a			;6595
	inc h			;6596
	dec b			;6597
	jr l65a4h		;6598
	nop			;659a
	add a,e			;659b
	jr l65dah		;659c
	ld h,(hl)			;659e
	ld (bc),a			;659f
	nop			;65a0
	add a,e			;65a1
	inc a			;65a2
	ld e,d			;65a3
l65a4h:
	inc a			;65a4
	ld (bc),a			;65a5
	jr l6529h		;65a6
	nop			;65a8
	inc bc			;65a9
	jr l65b5h		;65aa
	nop			;65ac
	add a,l			;65ad
	djnz l65d8h		;65ae
	ld l,h			;65b0
	djnz l65dbh		;65b1
	rrca			;65b3
	nop			;65b4
l65b5h:
	inc bc			;65b5
	jr $+4		;65b6
	nop			;65b8
	add a,a			;65b9
	inc d			;65ba
	jr nz,l65cdh		;65bb
	jr $-128		;65bd
	jr nc,l65c1h		;65bf
l65c1h:
	ld (bc),a			;65c1
	inc b			;65c2
	ld (bc),a			;65c3
	ld (bc),a			;65c4
	dec b			;65c5
	nop			;65c6
	adc a,d			;65c7
	ld (l0802h+2),hl		;65c8
	rra			;65cb
	ld (bc),a			;65cc
l65cdh:
	jr c,l65e7h		;65cd
	inc c			;65cf
	inc b			;65d0
	ld (bc),a			;65d1
	ld b,h			;65d2
	nop			;65d3
	adc a,b			;65d4
	ld a,(hl)			;65d5
	rst 20h			;65d6
	ret po			;65d7
l65d8h:
	rst 28h			;65d8
	rst 20h			;65d9
l65dah:
	ld a,a			;65da
l65dbh:
	nop			;65db
	ld a,(hl)			;65dc
	inc b			;65dd
	rst 20h			;65de
	add a,c			;65df
	ld a,(hl)			;65e0
	dec bc			;65e1
	nop			;65e2
	adc a,h			;65e3
	ex af,af'			;65e4
	nop			;65e5
	ex af,af'			;65e6
l65e7h:
	nop			;65e7
	ex af,af'			;65e8
	nop			;65e9
	ld b,00eh		;65ea
	inc c			;65ec
	jr l65ffh		;65ed
	nop			;65ef
	ld (bc),a			;65f0
	ld h,b			;65f1
	add hl,bc			;65f2
	nop			;65f3
	adc a,c			;65f4
	ld a,060h		;65f5
	ld h,(hl)			;65f7
	ld a,000h		;65f8
	inc a			;65fa
	ld h,(hl)			;65fb
	inc a			;65fc
	nop			;65fd
sub_65feh:
	ld (bc),a			;65fe
l65ffh:
	inc b			;65ff
	ld (bc),a			;6600
	ex af,af'			;6601
	add a,d			;6602
	nop			;6603
	djnz l6608h		;6604
	nop			;6606
	add a,h			;6607
l6608h:
	jr l661ah		;6608
	jr l660ch		;660a
l660ch:
	ld (bc),a			;660c
	jr l6590h		;660d
	nop			;660f
	ld (bc),a			;6610
	ex af,af'			;6611
	add a,d			;6612
	nop			;6613
	djnz l661bh		;6614
	nop			;6616
	adc a,c			;6617
	inc b			;6618
	inc c			;6619
l661ah:
	inc e			;661a
l661bh:
	ccf			;661b
	ld a,a			;661c
	ccf			;661d
	inc e			;661e
	inc c			;661f
	inc b			;6620
	ld a,(bc)			;6621
	nop			;6622
	add a,c			;6623
	ret po			;6624
	ld (bc),a			;6625
	ret m			;6626
	add a,c			;6627
	inc a			;6628
	dec b			;6629
	inc e			;662a
	ld b,000h		;662b
	add a,(hl)			;662d
	jr nz,$+96		;662e
	call m,sub_67feh		;6630
	inc hl			;6633
	ld (bc),a			;6634
	inc bc			;6635
	ld a,(bc)			;6636
	nop			;6637
	add a,e			;6638
	jr nz,$+120		;6639
	inc h			;663b
	ld (bc),a			;663c
	inc b			;663d
	ld (de),a			;663e
	nop			;663f
	add a,d			;6640
	djnz $+8		;6641
	dec bc			;6643
	nop			;6644
	add a,c			;6645
	ld bc,00003h		;6646
	add a,d			;6649
	jr nz,l6651h		;664a
	add hl,bc			;664c
	nop			;664d
	add a,c			;664e
	jr nz,l6653h		;664f
l6651h:
	nop			;6651
	add a,h			;6652
l6653h:
	ld a,d			;6653
	ex af,af'			;6654
	ld (l0820h),a		;6655
	nop			;6658
	add a,c			;6659
	ld bc,l0302h		;665a
	add a,l			;665d
	rlca			;665e
	dec b			;665f
	ld a,(bc)			;6660
	ld a,(de)			;6661
	ld d,002h		;6662
	nop			;6664
	add a,(hl)			;6665
	ld (bc),a			;6666
	ld h,e			;6667
	rst 38h			;6668
	ret m			;6669
	add a,03fh		;666a
	inc bc			;666c
	rst 38h			;666d
	add a,e			;666e
	add a,(hl)			;666f
	ld (bc),a			;6670
	ld bc,00009h		;6671
	add a,(hl)			;6674
	add a,b			;6675
	ret m			;6676
	call m,0e81ch		;6677
	ret nz			;667a
	ld (bc),a			;667b
	nop			;667c
	add a,e			;667d
	ex af,af'			;667e
	nop			;667f
	ret po			;6680
	inc b			;6681
	nop			;6682
	add a,d			;6683
	ld bc,l0302h+1		;6684
	ld (bc),a			;6687
	add a,d			;6688
	ex af,af'			;6689
	djnz l668eh		;668a
	nop			;668c
	ld (bc),a			;668d
l668eh:
	ld bc,l0f8fh		;668e
	jr l670dh		;6691
	ex (sp),hl			;6693
	ret z			;6694
	sbc a,l			;6695
	cp c			;6696
	inc de			;6697
	rst 0			;6698
	ld e,a			;6699
	rra			;669a
	ccf			;669b
	ld a,a			;669c
	add a,a			;669d
	ld b,002h		;669e
	nop			;66a0
	add a,c			;66a1
	jr nc,l66a6h		;66a2
	nop			;66a4
	add a,c			;66a5
l66a6h:
	ld h,b			;66a6
	ld (bc),a			;66a7
	ret po			;66a8
	adc a,h			;66a9
	ret p			;66aa
	ret m			;66ab
	cp 0b7h		;66ac
	cp e			;66ae
	ld l,0ech		;66af
	rst 8			;66b1
	djnz l66b4h		;66b2
l66b4h:
	ld e,07fh		;66b4
	ld (bc),a			;66b6
	rst 38h			;66b7
	add a,e			;66b8
	ld a,a			;66b9
	ccf			;66ba
	inc bc			;66bb
	rlca			;66bc
	nop			;66bd
	add a,(hl)			;66be
	ld (hl),a			;66bf
	ld (hl),e			;66c0
	add hl,sp			;66c1
	sub c			;66c2
	jp 002fdh		;66c3
	rst 38h			;66c6
	add a,c			;66c7
	cp 00eh		;66c8
	nop			;66ca
	add a,a			;66cb
	inc bc			;66cc
	inc b			;66cd
	dec de			;66ce
	rla			;66cf
	cpl			;66d0
	ld c,018h		;66d1
	ld (bc),a			;66d3
	nop			;66d4
	add a,(hl)			;66d5
	adc a,a			;66d6
	ld a,h			;66d7
	ld hl,l09cbh		;66d8
	inc b			;66db
	ld (bc),a			;66dc
	rra			;66dd
	adc a,b			;66de
	rrca			;66df
	add hl,de			;66e0
	jr c,l671dh		;66e1
	add hl,sp			;66e3
	jr nz,l66e8h		;66e4
	dec bc			;66e6
	inc b			;66e7
l66e8h:
	nop			;66e8
	adc a,c			;66e9
	inc b			;66ea
	ld b,(hl)			;66eb
	ld l,(hl)			;66ec
	ld (hl),c			;66ed
	rlca			;66ee
	rra			;66ef
	inc a			;66f0
	jr c,$+96		;66f1
	ld (bc),a			;66f3
	ld d,b			;66f4
	ex af,af'			;66f5
	nop			;66f6
	add a,h			;66f7
	ret nz			;66f8
	ret p			;66f9
	ret m			;66fa
	ret c			;66fb
	inc b			;66fc
	nop			;66fd
	add a,c			;66fe
	ld a,006h		;66ff
	nop			;6701
	add a,c			;6702
	ld bc,00005h		;6703
	sub (hl)			;6706
	ld bc,00107h		;6707
	nop			;670a
	inc c			;670b
	add hl,de			;670c
l670dh:
	inc (hl)			;670d
	ld l,l			;670e
	ld b,e			;670f
	rla			;6710
	rrca			;6711
	ld e,026h		;6712
	ld b,c			;6714
	ld b,e			;6715
	ld a,(0fdfah)		;6716
	rst 38h			;6719
	rra			;671a
	nop			;671b
	ld h,b			;671c
l671dh:
	ld (bc),a			;671d
	ret nz			;671e
	adc a,h			;671f
	ret po			;6720
	add a,b			;6721
	ret c			;6722
	call z,05ca0h		;6723
	ld a,h			;6726
	ld a,07eh		;6727
	cp 0efh		;6729
	add a,(hl)			;672b
	ld (bc),a			;672c
	nop			;672d
	adc a,c			;672e
	ld (bc),a			;672f
	rlca			;6730
	ld b,001h		;6731
	rlca			;6733
	ld l,054h		;6734
	jr c,l6798h		;6736
	ld (bc),a			;6738
	nop			;6739
	adc a,h			;673a
	rrca			;673b
	ld h,001h		;673c
	dec h			;673e
	ld (bc),a			;673f
	rrca			;6740
	dec b			;6741
	rlca			;6742
	inc b			;6743
	rlca			;6744
	nop			;6745
	dec b			;6746
l6747h:
	ld (bc),a			;6747
	inc bc			;6748
	ld (bc),a			;6749
	ld bc,l0302h		;674a
	add a,(hl)			;674d
	ld bc,01020h		;674e
	sub b			;6751
	sbc a,033h		;6752
	ld (bc),a			;6754
	ld h,b			;6755
	add a,d			;6756
	and c			;6757
	inc bc			;6758
	ld (bc),a			;6759
	ld b,084h		;675a
	nop			;675c
	add hl,bc			;675d
	nop			;675e
	ld (bc),a			;675f
	ld b,000h		;6760
	add a,h			;6762
	add a,b			;6763
	sub b			;6764
	jr nz,l6747h		;6765
	ld (bc),a			;6767
	ret p			;6768
	add a,l			;6769
	ld l,b			;676a
	ld (hl),h			;676b
	ld l,047h		;676c
	ei			;676e
	inc bc			;676f
	nop			;6770
	adc a,l			;6771
	ld (bc),a			;6772
	inc bc			;6773
	nop			;6774
	inc bc			;6775
	ld c,01ch		;6776
	inc c			;6778
	nop			;6779
	inc bc			;677a
	ld c,003h		;677b
l677dh:
	ld b,003h		;677d
	ld (bc),a			;677f
	nop			;6780
	adc a,d			;6781
	ld b,00ch		;6782
	rlca			;6784
	ld c,018h		;6785
	ex af,af'			;6787
	nop			;6788
	ld bc,l03ffh+1		;6789
	ld (bc),a			;678c
	ld (bc),a			;678d
	add a,d			;678e
	nop			;678f
	inc bc			;6790
	inc b			;6791
	nop			;6792
	adc a,h			;6793
	ret nz			;6794
	ret po			;6795
	nop			;6796
	ld d,b			;6797
l6798h:
	ret nz			;6798
	call c,0f830h		;6799
	ld d,a			;679c
	ld l,d			;679d
	scf			;679e
	ei			;679f
	ld a,(bc)			;67a0
	nop			;67a1
	add a,h			;67a2
	ld (hl),b			;67a3
	ld d,b			;67a4
	ld a,b			;67a5
	djnz l67aah		;67a6
	nop			;67a8
	add a,d			;67a9
l67aah:
	ex af,af'			;67aa
	ret m			;67ab
	inc b			;67ac
	call m,0fe83h		;67ad
	ld a,(hl)			;67b0
	sbc a,h			;67b1
	rlca			;67b2
	nop			;67b3
	ld (bc),a			;67b4
	ret m			;67b5
	inc b			;67b6
	call m,sub_7c82h		;67b7
	jr c,l67cdh		;67ba
	nop			;67bc
	add a,d			;67bd
	ld (bc),a			;67be
	inc bc			;67bf
	ld (bc),a			;67c0
	dec b			;67c1
	add a,e			;67c2
	ex af,af'			;67c3
	djnz l67d8h		;67c4
	inc bc			;67c6
	nop			;67c7
	adc a,h			;67c8
	inc e			;67c9
	ld a,078h		;67ca
	ld b,b			;67cc
l67cdh:
	ld bc,00c07h		;67cd
	ex af,af'			;67d0
	jr $+33		;67d1
	rst 0			;67d3
	add a,a			;67d4
	ex af,af'			;67d5
	nop			;67d6
	sub e			;67d7
l67d8h:
	ret nz			;67d8
	jr c,l67e7h		;67d9
	inc b			;67db
	ret z			;67dc
	cp 0c3h		;67dd
	dec e			;67df
	ld a,l			;67e0
	nop			;67e1
	ret po			;67e2
	jr nz,$+35		;67e3
	daa			;67e5
	rlca			;67e6
l67e7h:
	ld c,(hl)			;67e7
	ld c,h			;67e8
	ld e,h			;67e9
	inc e			;67ea
	ld (bc),a			;67eb
	jr c,l677dh		;67ec
	ld a,05fh		;67ee
	ld c,a			;67f0
	inc sp			;67f1
	rrca			;67f2
	ld sp,08260h		;67f3
	inc bc			;67f6
	ex af,af'			;67f7
	inc e			;67f8
	jr c,l680bh		;67f9
	jp 00243h		;67fb
sub_67feh:
	rlca			;67fe
	add a,e			;67ff
	inc bc			;6800
	ex (sp),hl			;6801
	cp 002h		;6802
	ret po			;6804
	add a,d			;6805
	ld (hl),b			;6806
	jr c,l680bh		;6807
	jr l680dh		;6809
l680bh:
	inc e			;680b
	adc a,c			;680c
l680dh:
	call z,0fffeh		;680d
	or a			;6810
	cp e			;6811
	ld l,0ech		;6812
	rst 8			;6814
	rst 18h			;6815
	ld (bc),a			;6816
	rra			;6817
	add a,c			;6818
	ld a,a			;6819
	ld (bc),a			;681a
l681bh:
	rst 38h			;681b
	add a,e			;681c
	ld a,a			;681d
	ccf			;681e
	inc bc			;681f
	rlca			;6820
	nop			;6821
	add a,(hl)			;6822
	rst 30h			;6823
	di			;6824
	ld sp,hl			;6825
	pop af			;6826
	di			;6827
	.DB 0fdh,002h,0ffh	;illegal sequence		;6828
	add a,c			;682b
	cp 00ah		;682c
	nop			;682e
	add a,d			;682f
	ld bc,l0302h+1		;6830
	nop			;6833
	adc a,b			;6834
	ex af,af'			;6835
	jr l6864h		;6836
	ld h,a			;6838
	add a,e			;6839
	sub b			;683a
	djnz l6845h		;683b
	ld (bc),a			;683d
	nop			;683e
	add a,d			;683f
	ret po			;6840
	ret p			;6841
	ld (bc),a			;6842
	nop			;6843
	adc a,d			;6844
l6845h:
	inc c			;6845
	dec de			;6846
	ld sp,0c460h		;6847
	add a,(hl)			;684a
	rrca			;684b
	nop			;684c
	inc bc			;684d
	ld a,b			;684e
	ex af,af'			;684f
	nop			;6850
	ld (bc),a			;6851
l6852h:
	add a,b			;6852
	ld (bc),a			;6853
	ld b,b			;6854
	sub c			;6855
	ret p			;6856
	ex af,af'			;6857
	call po,sub_1174h		;6858
	inc de			;685b
	daa			;685c
	ld h,04eh		;685d
	ld e,(hl)			;685f
	ld c,(hl)			;6860
	ld h,(hl)			;6861
	scf			;6862
l6863h:
	rrca			;6863
l6864h:
	rlca			;6864
	inc bc			;6865
	ld bc,00003h		;6866
	add a,e			;6869
	ret nz			;686a
	add a,b			;686b
	inc b			;686c
	ld (bc),a			;686d
	ld c,082h		;686e
	ld b,b			;6870
	ld h,e			;6871
	ld (bc),a			;6872
	rlca			;6873
	sbc a,c			;6874
	add a,a			;6875
	rst 0			;6876
	jp po,0f9f3h		;6877
	ld a,c			;687a
	ld a,a			;687b
	inc (hl)			;687c
	inc d			;687d
	ret c			;687e
l687fh:
	ld e,h			;687f
	inc e			;6880
	jr l681bh		;6881
	call z,0fcech		;6883
	cp h			;6886
	inc l			;6887
	ret nc			;6888
	djnz l687fh		;6889
	call m,sub_7333h		;688b
	inc b			;688e
	rst 38h			;688f
	add a,d			;6890
	ld a,a			;6891
	ld e,00fh		;6892
	nop			;6894
	sbc a,c			;6895
	inc bc			;6896
	ld b,00ch		;6897
	add hl,bc			;6899
	ld de,l0603h		;689a
	inc c			;689d
	ld bc,0e0f0h		;689e
	pop bc			;68a1
	set 1,c		;68a2
	ret nz			;68a4
	pop bc			;68a5
	ex (sp),hl			;68a6
	ld (hl),a			;68a7
	ld h,c			;68a8
	ld l,b			;68a9
	ld l,d			;68aa
	ld a,c			;68ab
	ld h,b			;68ac
	ld (0001bh),hl		;68ad
	djnz $-1		;68b0
	add a,d			;68b2
	inc a			;68b3
	ld a,(hl)			;68b4
	djnz $-1		;68b5
	inc bc			;68b7
	ld a,(hl)			;68b8
	ld (bc),a			;68b9
	inc a			;68ba
	add a,c			;68bb
	jr l68c6h		;68bc
	nop			;68be
	add a,d			;68bf
	inc a			;68c0
	ld a,(hl)			;68c1
	ld c,0ffh		;68c2
	add a,h			;68c4
	ld h,(hl)			;68c5
l68c6h:
	ld a,(hl)			;68c6
	ld h,(hl)			;68c7
	ld a,(hl)			;68c8
	inc b			;68c9
	jr l68d5h		;68ca
	nop			;68cc
	ld (bc),a			;68cd
	jr l6852h		;68ce
	ld a,(hl)			;68d0
	rst 38h			;68d1
	ld b,07eh		;68d2
	add a,d			;68d4
l68d5h:
	inc a			;68d5
	inc h			;68d6
	inc bc			;68d7
	jr $+9		;68d8
	nop			;68da
	add a,e			;68db
	djnz l6916h		;68dc
	ld a,h			;68de
	ld (bc),a			;68df
	jr c,l6863h		;68e0
	jr z,l68f1h		;68e2
	nop			;68e4
	add a,c			;68e5
	ex af,af'			;68e6
	inc bc			;68e7
	jr $+2		;68e8
	ld bc,00384h		;68ea
	ld b,e			;68ed
	scf			;68ee
	ccf			;68ef
	ld (bc),a			;68f0
l68f1h:
	rra			;68f1
	sub c			;68f2
	rst 38h			;68f3
	ccf			;68f4
	rra			;68f5
	ccf			;68f6
	ld h,a			;68f7
	add a,e			;68f8
	inc bc			;68f9
	ld bc,l8000h		;68fa
	add a,c			;68fd
	add a,0feh		;68fe
	call m,0fff8h		;6900
	cp 002h		;6903
	ret m			;6905
	add a,l			;6906
	call m,08ebch		;6907
	ld (bc),a			;690a
	nop			;690b
	djnz $-1		;690c
	add hl,bc			;690e
	nop			;690f
	rlca			;6910
	ld a,h			;6911
	inc b			;6912
	nop			;6913
	inc c			;6914
	rst 38h			;6915
l6916h:
	ld c,000h		;6916
	ld (bc),a			;6918
	jr l692bh		;6919
	rst 38h			;691b
	add hl,bc			;691c
	nop			;691d
	rlca			;691e
	ld a,00eh		;691f
	rst 38h			;6921
	ld (bc),a			;6922
	nop			;6923
	ld b,b			;6924
	rst 38h			;6925
	ld (bc),a			;6926
	nop			;6927
	inc c			;6928
	rst 38h			;6929
	rlca			;692a
l692bh:
	nop			;692b
	rlca			;692c
	rst 38h			;692d
	djnz l6930h		;692e
l6930h:
	inc b			;6930
	ld a,(hl)			;6931
	ld a,(bc)			;6932
	nop			;6933
	add a,(hl)			;6934
	ld bc,l04ffh+1		;6935
	rlca			;6938
	ld a,0d7h		;6939
	ex af,af'			;693b
	nop			;693c
	adc a,b			;693d
	ld c,b			;693e
	jr nz,$+24		;693f
	ld h,(hl)			;6941
	ei			;6942
	call c,0acf6h		;6943
	rlca			;6946
	nop			;6947
	add a,d			;6948
	ld bc,l0203h		;6949
	rlca			;694c
	ld (bc),a			;694d
	rrca			;694e
	inc bc			;694f
	rra			;6950
	add a,h			;6951
	nop			;6952
	inc e			;6953
	ld a,(hl)			;6954
	ld a,a			;6955
	inc c			;6956
	rst 38h			;6957
	ld b,000h		;6958
	add a,e			;695a
	ret nz			;695b
	ret m			;695c
	call m,0fe02h		;695d
	add a,d			;6960
	call m,003feh		;6961
	rst 38h			;6964
	add a,d			;6965
	rrca			;6966
	rst 38h			;6967
	inc bc			;6968
	ccf			;6969
	dec b			;696a
	ld a,a			;696b
	add a,e			;696c
	ld a,e			;696d
	ld a,c			;696e
	ld a,(hl)			;696f
	ld (bc),a			;6970
	ld a,a			;6971
	add a,c			;6972
	ccf			;6973
	dec c			;6974
	rst 38h			;6975
	add a,e			;6976
	ld a,a			;6977
	rst 20h			;6978
	rst 38h			;6979
	inc bc			;697a
	ret p			;697b
	inc bc			;697c
	ret m			;697d
	inc bc			;697e
	call m,0fe82h		;697f
	rst 38h			;6982
	ld (bc),a			;6983
	cp a			;6984
	add a,h			;6985
	cpl			;6986
	rst 28h			;6987
	rst 8			;6988
	rst 38h			;6989
	ld (bc),a			;698a
	rra			;698b
	add a,c			;698c
	ld a,a			;698d
	ld (bc),a			;698e
	rst 38h			;698f
	add a,e			;6990
	ld a,a			;6991
	ccf			;6992
	inc bc			;6993
	rlca			;6994
	nop			;6995
	dec b			;6996
	rst 38h			;6997
	add a,c			;6998
	.DB 0fdh,002h,0ffh	;illegal sequence		;6999
	add a,c			;699c
	cp 00ch		;699d
	nop			;699f
	add a,h			;69a0
	ld bc,l0703h		;69a1
	rrca			;69a4
	ld (bc),a			;69a5
	rra			;69a6
	add a,c			;69a7
	ccf			;69a8
	ld (bc),a			;69a9
	rra			;69aa
	ld (bc),a			;69ab
	rrca			;69ac
	ex af,af'			;69ad
	rst 38h			;69ae
	adc a,b			;69af
	ld a,a			;69b0
	ld a,l			;69b1
	ld a,h			;69b2
	ld a,(hl)			;69b3
	ld a,l			;69b4
	ld a,h			;69b5
	ld a,01fh		;69b6
	inc bc			;69b8
	nop			;69b9
	add a,e			;69ba
	jr l69f9h		;69bb
	ld a,(hl)			;69bd
	ld (bc),a			;69be
	ld a,a			;69bf
	add a,c			;69c0
	ccf			;69c1
	inc bc			;69c2
	ld a,a			;69c3
	inc bc			;69c4
	rst 38h			;69c5
	add a,c			;69c6
	ld e,a			;69c7
	ld b,000h		;69c8
	add a,e			;69ca
	ret nz			;69cb
	ret p			;69cc
	ret m			;69cd
	ld (bc),a			;69ce
	call m,0d883h		;69cf
	ret po			;69d2
	call m,0ff02h		;69d3
	inc bc			;69d6
	inc bc			;69d7
	ld b,007h		;69d8
	add a,c			;69da
	inc bc			;69db
	ld (bc),a			;69dc
	nop			;69dd
	add a,h			;69de
	ld bc,00107h		;69df
	nop			;69e2
	dec b			;69e3
	rst 38h			;69e4
	ld (bc),a			;69e5
	ccf			;69e6
	add a,d			;69e7
	rst 18h			;69e8
	rst 30h			;69e9
	ld (bc),a			;69ea
	rst 38h			;69eb
	add a,c			;69ec
	ccf			;69ed
	inc bc			;69ee
	rst 38h			;69ef
	add a,c			;69f0
	rra			;69f1
	dec b			;69f2
	ret p			;69f3
	add a,(hl)			;69f4
	ret m			;69f5
	call m,0acdch		;69f6
l69f9h:
	call c,sub_03fch		;69f9
	cp 083h		;69fc
	rst 28h			;69fe
	add a,(hl)			;69ff
	nop			;6a00
	ld (bc),a			;6a01
	inc bc			;6a02
	inc bc			;6a03
	rlca			;6a04
	add a,d			;6a05
	rra			;6a06
	ccf			;6a07
	inc bc			;6a08
	ld a,a			;6a09
	add a,c			;6a0a
	rra			;6a0b
	rlca			;6a0c
	ccf			;6a0d
	add a,a			;6a0e
	dec e			;6a0f
	rra			;6a10
	inc c			;6a11
	rrca			;6a12
	ld c,00fh		;6a13
	rlca			;6a15
	dec b			;6a16
	inc bc			;6a17
	add a,(hl)			;6a18
	ld bc,0f060h		;6a19
	cp 0ffh		;6a1c
	ld a,a			;6a1e
	inc bc			;6a1f
	rst 38h			;6a20
	inc bc			;6a21
	rra			;6a22
	add a,l			;6a23
	dec de			;6a24
	add hl,de			;6a25
	ld e,00fh		;6a26
	ld bc,00003h		;6a28
	add a,d			;6a2b
	ret nz			;6a2c
	ret po			;6a2d
	inc b			;6a2e
	ret p			;6a2f
	add a,a			;6a30
	ret m			;6a31
	ret p			;6a32
	ld l,h			;6a33
	call p,sub_67feh		;6a34
	ei			;6a37
	ld (bc),a			;6a38
	nop			;6a39
	add a,c			;6a3a
	ld bc,l0302h+1		;6a3b
	add a,c			;6a3e
	rrca			;6a3f
	inc bc			;6a40
	rra			;6a41
	add a,c			;6a42
	rrca			;6a43
	ld (bc),a			;6a44
	rra			;6a45
	inc bc			;6a46
	rrca			;6a47
l6a48h:
	ld (bc),a			;6a48
	nop			;6a49
	add a,c			;6a4a
	ld c,003h		;6a4b
	rrca			;6a4d
	adc a,d			;6a4e
	rra			;6a4f
	rrca			;6a50
	rlca			;6a51
	rrca			;6a52
	dec c			;6a53
	inc c			;6a54
	rrca			;6a55
	rlca			;6a56
	nop			;6a57
	inc bc			;6a58
	inc bc			;6a59
	nop			;6a5a
	add a,d			;6a5b
	add a,b			;6a5c
	ret po			;6a5d
	ld (bc),a			;6a5e
	ret p			;6a5f
	add a,c			;6a60
	ret m			;6a61
	inc bc			;6a62
	call m,0ff85h		;6a63
	rst 10h			;6a66
	cp 077h		;6a67
	ei			;6a69
	ld a,(bc)			;6a6a
	nop			;6a6b
	adc a,b			;6a6c
	ld (hl),b			;6a6d
	ld a,b			;6a6e
	ld a,h			;6a6f
	inc a			;6a70
	jr l6a73h		;6a71
l6a73h:
	ex af,af'			;6a73
	ret m			;6a74
	inc b			;6a75
	call m,0fe83h		;6a76
	ld a,(hl)			;6a79
	sbc a,h			;6a7a
	rlca			;6a7b
	nop			;6a7c
	ld b,0fch		;6a7d
	add a,d			;6a7f
	ld a,h			;6a80
	jr c,l6a92h		;6a81
	nop			;6a83
	add a,d			;6a84
	ld bc,l0203h		;6a85
	rlca			;6a88
	ld (bc),a			;6a89
	rrca			;6a8a
	inc bc			;6a8b
	rra			;6a8c
	add a,e			;6a8d
	nop			;6a8e
	inc e			;6a8f
	ld a,(hl)			;6a90
	dec c			;6a91
l6a92h:
	rst 38h			;6a92
	ld b,000h		;6a93
	add a,e			;6a95
	ret nz			;6a96
	ret m			;6a97
	call m,0fe02h		;6a98
	add a,d			;6a9b
	call m,003feh		;6a9c
	rst 38h			;6a9f
	add a,d			;6aa0
	rrca			;6aa1
	rst 38h			;6aa2
	inc b			;6aa3
	ccf			;6aa4
	inc b			;6aa5
	ld a,a			;6aa6
	ld (bc),a			;6aa7
	ld a,c			;6aa8
	add a,c			;6aa9
	ld a,(hl)			;6aaa
	ld (bc),a			;6aab
	ld a,a			;6aac
	add a,c			;6aad
	ccf			;6aae
	dec c			;6aaf
	rst 38h			;6ab0
	add a,e			;6ab1
	ld a,a			;6ab2
	rst 20h			;6ab3
	rst 38h			;6ab4
	inc bc			;6ab5
	ret p			;6ab6
	inc bc			;6ab7
	ret m			;6ab8
	inc bc			;6ab9
	call m,0fe82h		;6aba
	rst 38h			;6abd
	ld (bc),a			;6abe
	cp a			;6abf
	add a,h			;6ac0
	cpl			;6ac1
	rst 28h			;6ac2
	rst 8			;6ac3
	rst 38h			;6ac4
	ld (bc),a			;6ac5
	rra			;6ac6
	add a,c			;6ac7
	ld a,a			;6ac8
	ld (bc),a			;6ac9
	rst 38h			;6aca
	add a,e			;6acb
	ld a,a			;6acc
	ccf			;6acd
	inc bc			;6ace
	rlca			;6acf
	nop			;6ad0
	dec b			;6ad1
	rst 38h			;6ad2
	add a,c			;6ad3
	.DB 0fdh,002h,0ffh	;illegal sequence		;6ad4
	add a,c			;6ad7
	cp 007h		;6ad8
	nop			;6ada
	add a,d			;6adb
	ld bc,l0402h+1		;6adc
	rlca			;6adf
	add a,h			;6ae0
	rrca			;6ae1
	rra			;6ae2
	ccf			;6ae3
	ld a,a			;6ae4
	inc b			;6ae5
	rst 38h			;6ae6
	add a,h			;6ae7
	ld a,a			;6ae8
	rrca			;6ae9
	ret po			;6aea
	ret p			;6aeb
	inc bc			;6aec
	ret m			;6aed
	add a,c			;6aee
	cp 00ah		;6aef
	rst 38h			;6af1
	rlca			;6af2
	nop			;6af3
	add a,c			;6af4
	add a,b			;6af5
	ld (bc),a			;6af6
	ret nz			;6af7
	ld (bc),a			;6af8
	ret po			;6af9
	add a,d			;6afa
	ret p			;6afb
	ret m			;6afc
	ld (bc),a			;6afd
	call m,l1f01h+1		;6afe
	ld (bc),a			;6b01
	ccf			;6b02
	inc b			;6b03
	ld a,a			;6b04
	add a,l			;6b05
	ccf			;6b06
	rrca			;6b07
	rlca			;6b08
	inc bc			;6b09
	ld bc,00003h		;6b0a
	dec bc			;6b0d
	rst 38h			;6b0e
	add a,c			;6b0f
	cp 002h		;6b10
	rst 38h			;6b12
	ld (bc),a			;6b13
	ld a,a			;6b14
	ld (bc),a			;6b15
	call m,0f881h		;6b16
	ld (bc),a			;6b19
	call m,0f802h		;6b1a
	inc bc			;6b1d
	call m,0bc84h		;6b1e
	inc a			;6b21
	call c,0021ch		;6b22
	call m,sub_3f82h		;6b25
	ld a,a			;6b28
	inc b			;6b29
	rst 38h			;6b2a
	add a,d			;6b2b
	ld a,a			;6b2c
	ld e,00eh		;6b2d
	nop			;6b2f
	add a,d			;6b30
	inc bc			;6b31
	rlca			;6b32
	ld (bc),a			;6b33
	rrca			;6b34
	ld (bc),a			;6b35
	rra			;6b36
	add a,d			;6b37
	rrca			;6b38
l6b39h:
	rlca			;6b39
	ld (bc),a			;6b3a
	rrca			;6b3b
l6b3ch:
	ex af,af'			;6b3c
	rst 38h			;6b3d
	adc a,b			;6b3e
	ld a,a			;6b3f
	ld a,l			;6b40
	ld a,h			;6b41
	ld a,(hl)			;6b42
	ld a,l			;6b43
	ld a,h			;6b44
	ld a,01fh		;6b45
	nop			;6b47
	ld a,(bc)			;6b48
	nop			;6b49
	ld b,008h		;6b4a
	inc b			;6b4c
	nop			;6b4d
	add a,c			;6b4e
	inc b			;6b4f
	ld a,(bc)			;6b50
	inc d			;6b51
	add a,c			;6b52
	djnz l6b63h		;6b53
	ld (l3082h),a		;6b55
	djnz $+13		;6b58
	nop			;6b5a
	add a,c			;6b5b
	ld (l3202h),hl		;6b5c
	ld c,063h		;6b5f
	add a,e			;6b61
	ld h,d			;6b62
l6b63h:
	jr nz,$+2		;6b63
	ld (bc),a			;6b65
	ld bc,l4381h		;6b66
	inc c			;6b69
	ld h,e			;6b6a
	inc c			;6b6b
	nop			;6b6c
	add a,e			;6b6d
	jr l6b84h		;6b6e
	jr z,l6b7eh		;6b70
	nop			;6b72
	add a,h			;6b73
	jr c,l6bd0h		;6b74
	ld e,h			;6b76
	inc l			;6b77
l6b78h:
	rlca			;6b78
	nop			;6b79
	add a,l			;6b7a
	add a,b			;6b7b
	nop			;6b7c
	ret po			;6b7d
l6b7eh:
	ret nc			;6b7e
	ret c			;6b7f
	ld (bc),a			;6b80
	ld (hl),b			;6b81
	add a,e			;6b82
	sub b			;6b83
l6b84h:
	ret po			;6b84
	ld b,b			;6b85
l6b86h:
	ld b,000h		;6b86
	adc a,c			;6b88
	inc bc			;6b89
	ld c,01dh		;6b8a
	rrca			;6b8c
	inc hl			;6b8d
	rlca			;6b8e
	dec de			;6b8f
	dec bc			;6b90
	dec b			;6b91
	inc b			;6b92
	nop			;6b93
	adc a,l			;6b94
	add a,b			;6b95
	ret p			;6b96
	jr nz,l6b39h		;6b97
	inc b			;6b99
	ret pe			;6b9a
	sbc a,0ceh		;6b9b
	halt			;6b9d
	jr z,l6b3ch		;6b9e
	ret nz			;6ba0
	ld b,b			;6ba1
	ld (bc),a			;6ba2
	nop			;6ba3
	add a,c			;6ba4
	ld bc,l0702h		;6ba5
	xor e			;6ba8
	djnz l6c2ah		;6ba9
	ld a,01dh		;6bab
	ld l,a			;6bad
	inc hl			;6bae
	ld h,a			;6baf
	dec sp			;6bb0
	dec bc			;6bb1
	dec c			;6bb2
	ex af,af'			;6bb3
	nop			;6bb4
	ld h,b			;6bb5
	inc l			;6bb6
	adc a,b			;6bb7
	call m,0a026h		;6bb8
	rlca			;6bbb
	ret pe			;6bbc
	rst 18h			;6bbd
	adc a,077h		;6bbe
	add hl,hl			;6bc0
	sbc a,(hl)			;6bc1
	ret nz			;6bc2
	ld b,b			;6bc3
	inc bc			;6bc4
	add hl,de			;6bc5
	dec a			;6bc6
	ld d,a			;6bc7
	ld h,a			;6bc8
	ret nc			;6bc9
	ld a,a			;6bca
	ld a,09dh		;6bcb
	ld l,a			;6bcd
	inc hl			;6bce
	rst 20h			;6bcf
l6bd0h:
	dec sp			;6bd0
	dec bc			;6bd1
	dec c			;6bd2
	ex af,af'			;6bd3
	inc c			;6bd4
	nop			;6bd5
	add a,c			;6bd6
	jr nc,l6bdbh		;6bd7
	jr $+9		;6bd9
l6bdbh:
	nop			;6bdb
	add a,l			;6bdc
	ex af,af'			;6bdd
	djnz l6b78h		;6bde
	inc e			;6be0
	ld a,b			;6be1
	inc bc			;6be2
	jr $-126		;6be3
	add a,b			;6be5
	ld b,b			;6be6
	ld (bc),a			;6be7
	add a,b			;6be8
	adc a,b			;6be9
	ret nz			;6bea
	adc a,b			;6beb
	ret z			;6bec
	call z,0b8fch		;6bed
	ret nz			;6bf0
	ld b,b			;6bf1
	inc bc			;6bf2
	ret nz			;6bf3
	inc b			;6bf4
	nop			;6bf5
	ld (bc),a			;6bf6
	ld bc,l1100h+2		;6bf7
	ld (bc),a			;6bfa
	add hl,de			;6bfb
	ld (bc),a			;6bfc
	rra			;6bfd
	inc b			;6bfe
	ld bc,0008eh		;6bff
	ret nz			;6c02
	ret po			;6c03
	jr nz,l6b86h		;6c04
	ret nz			;6c06
	pop bc			;6c07
	jp po,0e3c3h		;6c08
	jp 0bfffh		;6c0b
	sbc a,002h		;6c0e
	ret po			;6c10
	add a,d			;6c11
	and b			;6c12
	nop			;6c13
	ld (bc),a			;6c14
	ld bc,l0382h		;6c15
	inc hl			;6c18
	ld (bc),a			;6c19
	ld b,e			;6c1a
	dec b			;6c1b
	ld h,e			;6c1c
	inc bc			;6c1d
	ld a,a			;6c1e
	add a,d			;6c1f
	inc bc			;6c20
	inc a			;6c21
	ld b,03eh		;6c22
	add hl,bc			;6c24
	nop			;6c25
	add a,h			;6c26
	inc e			;6c27
	ld a,032h		;6c28
l6c2ah:
	ld a,c			;6c2a
	ld (bc),a			;6c2b
	ld a,l			;6c2c
	add a,a			;6c2d
	ld a,a			;6c2e
	ld a,l			;6c2f
	ld a,a			;6c30
	ld a,l			;6c31
	ld a,a			;6c32
	ld a,e			;6c33
	ld a,l			;6c34
	ld (bc),a			;6c35
	ld a,a			;6c36
	add a,h			;6c37
	ld a,e			;6c38
	ld a,l			;6c39
	ld a,a			;6c3a
	cp 002h		;6c3b
	rst 38h			;6c3d
	adc a,b			;6c3e
	.DB 0fdh,0ffh,07eh	;illegal sequence		;6c3f
	ld a,a			;6c42
	ld a,l			;6c43
	ld a,a			;6c44
	ld a,e			;6c45
	ld a,l			;6c46
	ld (bc),a			;6c47
	ld a,a			;6c48
	add a,e			;6c49
	nop			;6c4a
	jr nc,l6cb5h		;6c4b
	ld (bc),a			;6c4d
	ld (hl),b			;6c4e
	add a,d			;6c4f
	ld a,b			;6c50
	ld l,b			;6c51
	ld (bc),a			;6c52
	ld a,b			;6c53
	add a,e			;6c54
	ld l,b			;6c55
	ld a,h			;6c56
	ld (hl),a			;6c57
	inc bc			;6c58
	ld a,a			;6c59
	add a,c			;6c5a
	rra			;6c5b
	ld (bc),a			;6c5c
	nop			;6c5d
	add a,d			;6c5e
	inc c			;6c5f
	ld a,(de)			;6c60
	ld (bc),a			;6c61
	inc e			;6c62
	add a,a			;6c63
	ld e,01ah		;6c64
	ld e,0fah		;6c66
	cp 0fch		;6c68
	ret p			;6c6a
	dec a			;6c6b
	nop			;6c6c
	add a,a			;6c6d
	inc b			;6c6e
	ex af,af'			;6c6f
	djnz l6c92h		;6c70
	ld b,b			;6c72
	nop			;6c73
	ld b,b			;6c74
	add hl,bc			;6c75
	nop			;6c76
	add a,a			;6c77
	jr nz,l6c8ah		;6c78
	ex af,af'			;6c7a
	inc b			;6c7b
l6c7ch:
	ld (bc),a			;6c7c
	nop			;6c7d
	ld (bc),a			;6c7e
	djnz l6c91h		;6c7f
	rlca			;6c81
	nop			;6c82
	add a,a			;6c83
	ld bc,l0402h		;6c84
	ex af,af'			;6c87
	djnz l6caah		;6c88
l6c8ah:
	nop			;6c8a
	ld (bc),a			;6c8b
	ld b,b			;6c8c
	ld b,000h		;6c8d
	add a,c			;6c8f
	ld b,b			;6c90
l6c91h:
	rrca			;6c91
l6c92h:
	nop			;6c92
	add a,c			;6c93
	ld (bc),a			;6c94
	djnz l6c97h		;6c95
l6c97h:
	add a,a			;6c97
	add a,b			;6c98
	ld b,b			;6c99
	jr nz,l6cach		;6c9a
	ex af,af'			;6c9c
	inc b			;6c9d
	nop			;6c9e
	ld (bc),a			;6c9f
	ld (bc),a			;6ca0
	djnz l6cb7h		;6ca1
	add a,l			;6ca3
	nop			;6ca4
	jp 0c07ch		;6ca5
	add a,b			;6ca8
	dec bc			;6ca9
l6caah:
	nop			;6caa
	add a,(hl)			;6cab
l6cach:
	ld (hl),c			;6cac
	ld l,c			;6cad
	rst 38h			;6cae
	rst 18h			;6caf
	ld l,(hl)			;6cb0
	add a,00ah		;6cb1
	nop			;6cb3
	add a,(hl)			;6cb4
l6cb5h:
	inc h			;6cb5
	ex af,af'			;6cb6
l6cb7h:
	jr nc,l6c7ch		;6cb7
	ld a,a			;6cb9
	sub h			;6cba
	ld a,(bc)			;6cbb
	nop			;6cbc
	add a,(hl)			;6cbd
	add a,b			;6cbe
	ret nz			;6cbf
	ld (hl),b			;6cc0
	ld bc,0dff3h		;6cc1
	ld a,(bc)			;6cc4
	nop			;6cc5
	add a,(hl)			;6cc6
	or b			;6cc7
	jr nz,l6cfah		;6cc8
	inc c			;6cca
	ccf			;6ccb
	ld a,e			;6ccc
	ld a,(bc)			;6ccd
	nop			;6cce
	add a,l			;6ccf
	rra			;6cd0
	ccf			;6cd1
	rlca			;6cd2
	ld e,00eh		;6cd3
	djnz l6cd7h		;6cd5
l6cd7h:
	add a,l			;6cd7
	ret			;6cd8
	ld h,h			;6cd9
	jr nc,l6c7ch		;6cda
	add a,b			;6cdc
	ld (bc),a			;6cdd
	nop			;6cde
	add a,(hl)			;6cdf
	ld h,b			;6ce0
	inc l			;6ce1
	and h			;6ce2
	nop			;6ce3
	ld (bc),a			;6ce4
	adc a,d			;6ce5
	ld (bc),a			;6ce6
	ret z			;6ce7
	add a,l			;6ce8
	ret pe			;6ce9
	ret p			;6cea
	or 0ffh		;6ceb
	adc a,a			;6ced
	ld (bc),a			;6cee
	rst 0			;6cef
	adc a,a			;6cf0
	add a,04eh		;6cf1
	ld e,a			;6cf3
	ld (hl),e			;6cf4
	ld a,(l67cdh+2)		;6cf5
	cpl			;6cf8
	rst 38h			;6cf9
l6cfah:
	exx			;6cfa
	call m,0167ch		;6cfb
	dec bc			;6cfe
	add hl,bc			;6cff
	ld (bc),a			;6d00
	inc b			;6d01
	ld (bc),a			;6d02
	ld bc,l128ch		;6d03
	ld d,001h		;6d06
	adc a,(hl)			;6d08
	ret po			;6d09
	ret nz			;6d0a
	rlca			;6d0b
	rra			;6d0c
	inc c			;6d0d
	ld h,b			;6d0e
l6d0fh:
	ret nz			;6d0f
	add a,b			;6d10
l6d11h:
	ld b,000h		;6d11
	add a,d			;6d13
	ret c			;6d14
	cp b			;6d15
	ld (bc),a			;6d16
	ld a,a			;6d17
	adc a,b			;6d18
	add a,a			;6d19
	ld e,03eh		;6d1a
l6d1ch:
	ld a,(hl)			;6d1c
	call m,0c4f0h		;6d1d
	call z,0c802h		;6d20
	add a,e			;6d23
	ex af,af'			;6d24
	inc h			;6d25
	inc c			;6d26
	ld (bc),a			;6d27
	ld b,08bh		;6d28
	jr $+83		;6d2a
	rst 30h			;6d2c
	or 07eh		;6d2d
	sbc a,(hl)			;6d2f
l6d30h:
	ld e,a			;6d30
	ld c,c			;6d31
	sbc a,a			;6d32
	cp a			;6d33
	adc a,d			;6d34
	ld (bc),a			;6d35
	rrca			;6d36
	ld (bc),a			;6d37
	nop			;6d38
	add a,(hl)			;6d39
	ld (bc),a			;6d3a
	inc c			;6d3b
	ld h,h			;6d3c
	jr c,l6d0fh		;6d3d
	ret po			;6d3f
	ld (bc),a			;6d40
	ld b,b			;6d41
	ld (bc),a			;6d42
	add a,b			;6d43
	ld b,000h		;6d44
	adc a,(hl)			;6d46
	ld b,b			;6d47
	ret nz			;6d48
	and b			;6d49
	ld e,b			;6d4a
	sbc a,c			;6d4b
	ld e,018h		;6d4c
	rra			;6d4e
	rlca			;6d4f
	ld sp,03efdh		;6d50
	sbc a,00eh		;6d53
	inc b			;6d55
	nop			;6d56
	adc a,h			;6d57
	ld bc,sub_0600h		;6d58
	rlca			;6d5b
	inc bc			;6d5c
	add hl,bc			;6d5d
	dec e			;6d5e
	adc a,0c6h		;6d5f
	ld d,(hl)			;6d61
	daa			;6d62
	dec e			;6d63
	ld b,000h		;6d64
	add a,d			;6d66
	djnz $+32		;6d67
	ld (bc),a			;6d69
	ret nz			;6d6a
	add a,l			;6d6b
	add a,b			;6d6c
	nop			;6d6d
	jr nz,l6d30h		;6d6e
	ld b,b			;6d70
	inc b			;6d71
	nop			;6d72
	adc a,l			;6d73
	add a,b			;6d74
	nop			;6d75
	jr c,l6df4h		;6d76
	call nz,09f87h		;6d78
	ld (hl),c			;6d7b
	ld h,d			;6d7c
	ld h,e			;6d7d
	ld h,03ch		;6d7e
	ret c			;6d80
	inc bc			;6d81
	nop			;6d82
	add a,a			;6d83
	dec bc			;6d84
	ld de,01900h		;6d85
	ld de,l3830h		;6d88
	inc bc			;6d8b
	jr nc,l6d11h		;6d8c
	djnz l6d1ch		;6d8e
	inc c			;6d90
	inc h			;6d91
	nop			;6d92
	add a,d			;6d93
	inc bc			;6d94
	rlca			;6d95
	ld (bc),a			;6d96
	inc bc			;6d97
	sub d			;6d98
	rlca			;6d99
	rrca			;6d9a
	ld h,02ch		;6d9b
	inc a			;6d9d
	jr $+62		;6d9e
	ld e,01fh		;6da0
	rrca			;6da2
	ld c,0f8h		;6da3
	jp p,0e2f0h		;6da5
	xor 0b0h		;6da8
	jr nz,l6db1h		;6daa
	nop			;6dac
l6dadh:
	add a,d			;6dad
	add a,b			;6dae
	ld b,b			;6daf
	ld (bc),a			;6db0
l6db1h:
	ld h,b			;6db1
	add a,a			;6db2
	ld b,b			;6db3
	ccf			;6db4
	rra			;6db5
	inc b			;6db6
l6db7h:
	ld e,(hl)			;6db7
	ld b,a			;6db8
	ld bc,00007h		;6db9
	sbc a,h			;6dbc
	ld b,b			;6dbd
	ld a,b			;6dbe
	ret p			;6dbf
	ret nz			;6dc0
	or b			;6dc1
	nop			;6dc2
	ld c,b			;6dc3
	call nz,sub_7ff8h		;6dc4
	rlca			;6dc7
	add a,l			;6dc8
	ld b,c			;6dc9
	rrca			;6dca
	inc bc			;6dcb
	ld c,08fh		;6dcc
	xor 0d0h		;6dce
	ld de,l3f7eh		;6dd0
	ld a,07eh		;6dd3
	ld a,l			;6dd5
	ld a,c			;6dd6
	jr l6de9h		;6dd7
	ld (bc),a			;6dd9
	inc bc			;6dda
	add a,c			;6ddb
	ld bc,00004h		;6ddc
	add a,c			;6ddf
	ret nz			;6de0
	inc b			;6de1
	nop			;6de2
	add a,a			;6de3
	add a,b			;6de4
	ret po			;6de5
	ret nz			;6de6
	ld e,0e7h		;6de7
l6de9h:
	ret po			;6de9
	ld a,a			;6dea
	dec bc			;6deb
	nop			;6dec
	adc a,h			;6ded
	ld b,004h		;6dee
	nop			;6df0
	ld a,c			;6df1
	ret pe			;6df2
	ld b,a			;6df3
l6df4h:
	rra			;6df4
	ld e,a			;6df5
	dec e			;6df6
	inc hl			;6df7
	ld l,e			;6df8
	ld h,d			;6df9
	ld (bc),a			;6dfa
	ld h,h			;6dfb
	add a,d			;6dfc
	adc a,b			;6dfd
	ld e,h			;6dfe
	ld (bc),a			;6dff
	ld a,b			;6e00
	add a,c			;6e01
	or b			;6e02
	ld (bc),a			;6e03
	nop			;6e04
	add a,c			;6e05
	ld a,(hl)			;6e06
	ld (bc),a			;6e07
	rst 20h			;6e08
	add a,c			;6e09
	rst 38h			;6e0a
	ld (bc),a			;6e0b
	rst 20h			;6e0c
	add a,c			;6e0d
	nop			;6e0e
	dec b			;6e0f
	ret po			;6e10
	add a,c			;6e11
	rst 38h			;6e12
	inc bc			;6e13
	nop			;6e14
	adc a,l			;6e15
	ld a,060h		;6e16
	ld h,(hl)			;6e18
	ld a,000h		;6e19
	inc a			;6e1b
	ld h,(hl)			;6e1c
	inc a			;6e1d
	nop			;6e1e
	inc a			;6e1f
	ld a,(hl)			;6e20
	ld h,(hl)			;6e21
	nop			;6e22
	ld (bc),a			;6e23
	ld h,b			;6e24
	add a,c			;6e25
	ld a,(hl)			;6e26
	ld (bc),a			;6e27
	nop			;6e28
	ld (bc),a			;6e29
	jr l6dadh		;6e2a
	nop			;6e2c
	ld (bc),a			;6e2d
	jr l6db1h		;6e2e
	nop			;6e30
	ld (bc),a			;6e31
	jr l6db7h		;6e32
	nop			;6e34
	djnz l6e4fh		;6e35
	inc bc			;6e37
	nop			;6e38
	nop			;6e39
	ex af,af'			;6e3a
	nop			;6e3b
	ld (bc),a			;6e3c
	jr l6e45h		;6e3d
	ex af,af'			;6e3f
	ld (bc),a			;6e40
	nop			;6e41
	add a,d			;6e42
	jr l6e81h		;6e43
l6e45h:
	dec bc			;6e45
	inc e			;6e46
	add a,c			;6e47
	jr l6e58h		;6e48
	ld (hl),082h		;6e4a
	inc (hl)			;6e4c
	djnz l6e59h		;6e4d
l6e4fh:
	nop			;6e4f
	add a,c			;6e50
	inc e			;6e51
	inc bc			;6e52
	ld a,002h		;6e53
	ld (hl),00eh		;6e55
	ld h,a			;6e57
l6e58h:
	add a,e			;6e58
l6e59h:
	ld h,(hl)			;6e59
	inc h			;6e5a
	ld a,003h		;6e5b
	ld a,a			;6e5d
l6e5eh:
	inc c			;6e5e
	ld h,a			;6e5f
	inc c			;6e60
	nop			;6e61
	add a,e			;6e62
	jr l6e79h		;6e63
	jr z,l6e72h		;6e65
	nop			;6e67
	add a,l			;6e68
	ex af,af'			;6e69
	jr c,l6ec6h		;6e6a
	ld e,h			;6e6c
	inc l			;6e6d
	rlca			;6e6e
	nop			;6e6f
	add a,d			;6e70
	add a,b			;6e71
l6e72h:
	and b			;6e72
	ld (bc),a			;6e73
	ret p			;6e74
	add a,c			;6e75
	ret c			;6e76
	ld (bc),a			;6e77
	ld (hl),b			;6e78
l6e79h:
	add a,e			;6e79
	sub b			;6e7a
	ret po			;6e7b
	ld b,b			;6e7c
	ld b,000h		;6e7d
	adc a,c			;6e7f
	inc bc			;6e80
l6e81h:
	rrca			;6e81
	dec e			;6e82
	rrca			;6e83
	inc hl			;6e84
	rlca			;6e85
	dec de			;6e86
	dec bc			;6e87
	dec b			;6e88
	inc b			;6e89
	nop			;6e8a
	adc a,l			;6e8b
	and b			;6e8c
	ret p			;6e8d
	ld h,b			;6e8e
	call p,0fcbch		;6e8f
	cp 0ceh		;6e92
	halt			;6e94
	jr z,$-100		;6e95
	ret nz			;6e97
	ld b,b			;6e98
	ld (bc),a			;6e99
	nop			;6e9a
	add a,c			;6e9b
	ld bc,l0702h		;6e9c
	xor e			;6e9f
	ld de,l3f7fh		;6ea0
	dec e			;6ea3
	ld l,a			;6ea4
	inc hl			;6ea5
	ld h,a			;6ea6
	dec sp			;6ea7
	dec bc			;6ea8
	dec c			;6ea9
	ex af,af'			;6eaa
	nop			;6eab
	ld h,b			;6eac
	inc a			;6ead
	cp b			;6eae
	call m,0f466h		;6eaf
l6eb2h:
	cp a			;6eb2
	call m,0ceffh		;6eb3
	ld (hl),a			;6eb6
	add hl,hl			;6eb7
	sbc a,(hl)			;6eb8
	ret nz			;6eb9
	ld b,b			;6eba
	inc bc			;6ebb
	add hl,de			;6ebc
	dec a			;6ebd
	ld d,a			;6ebe
	ld h,a			;6ebf
	pop de			;6ec0
	ld a,a			;6ec1
	ccf			;6ec2
	sbc a,l			;6ec3
	ld l,a			;6ec4
	inc hl			;6ec5
l6ec6h:
	rst 20h			;6ec6
	dec sp			;6ec7
	dec bc			;6ec8
	dec c			;6ec9
	ex af,af'			;6eca
	dec bc			;6ecb
	nop			;6ecc
	add a,d			;6ecd
	djnz l6f00h		;6ece
	ld (bc),a			;6ed0
	jr $+9		;6ed1
	nop			;6ed3
	add a,l			;6ed4
	ex af,af'			;6ed5
	jr l6eb2h		;6ed6
	inc e			;6ed8
	ld a,b			;6ed9
	inc bc			;6eda
	jr l6e5eh		;6edb
	add a,b			;6edd
	inc bc			;6ede
	ret nz			;6edf
	add a,c			;6ee0
	ret z			;6ee1
	inc bc			;6ee2
	call z,0fc82h		;6ee3
	ret m			;6ee6
	dec b			;6ee7
	ret nz			;6ee8
	inc b			;6ee9
	nop			;6eea
	add a,d			;6eeb
	ld bc,l0411h		;6eec
	add hl,de			;6eef
	ld (bc),a			;6ef0
	rra			;6ef1
	inc b			;6ef2
	ld bc,00082h		;6ef3
	ret nz			;6ef6
	inc b			;6ef7
	ret po			;6ef8
	dec b			;6ef9
	ex (sp),hl			;6efa
	ld (bc),a			;6efb
	rst 38h			;6efc
	add a,c			;6efd
	cp 003h		;6efe
l6f00h:
	ret po			;6f00
	add a,c			;6f01
	nop			;6f02
	ld (bc),a			;6f03
	ld bc,l0381h		;6f04
	ex af,af'			;6f07
	ld h,e			;6f08
	inc bc			;6f09
	ld a,a			;6f0a
	add a,c			;6f0b
sub_6f0ch:
	inc bc			;6f0c
	rlca			;6f0d
	ld a,009h		;6f0e
	nop			;6f10
	add a,c			;6f11
	inc e			;6f12
	ld (bc),a			;6f13
	ld a,00fh		;6f14
	ld a,a			;6f16
	dec b			;6f17
	rst 38h			;6f18
	ex af,af'			;6f19
	ld a,a			;6f1a
	add a,d			;6f1b
	nop			;6f1c
	jr nc,l6f27h		;6f1d
	ld a,b			;6f1f
	add a,c			;6f20
	ld a,h			;6f21
	inc b			;6f22
	ld a,a			;6f23
	add a,c			;6f24
	rra			;6f25
l6f26h:
	ld (bc),a			;6f26
l6f27h:
	nop			;6f27
	add a,c			;6f28
	inc c			;6f29
	ld b,01eh		;6f2a
	ld (bc),a			;6f2c
	cp 082h		;6f2d
	call m,00ef0h		;6f2f
	nop			;6f32
	add a,d			;6f33
	jr l6f66h		;6f34
	ld c,000h		;6f36
	add a,d			;6f38
	jr l6f47h		;6f39
	dec e			;6f3b
	nop			;6f3c
	add a,a			;6f3d
	inc b			;6f3e
	ex af,af'			;6f3f
	inc de			;6f40
	ld h,04ch		;6f41
	jr l6f95h		;6f43
	add hl,bc			;6f45
	nop			;6f46
l6f47h:
	add a,a			;6f47
	jr nz,l6f5ah		;6f48
	ret z			;6f4a
	ld h,h			;6f4b
	ld (l0a18h),a		;6f4c
	djnz l6f61h		;6f4f
	rlca			;6f51
	nop			;6f52
	adc a,c			;6f53
	ld bc,l0402h		;6f54
	add hl,bc			;6f57
	inc de			;6f58
	daa			;6f59
l6f5ah:
	ld c,048h		;6f5a
	ld b,b			;6f5c
	ld b,000h		;6f5d
	add a,(hl)			;6f5f
	ld b,b			;6f60
l6f61h:
	nop			;6f61
	ld (hl),b			;6f62
	ret po			;6f63
	ret nz			;6f64
	add a,b			;6f65
l6f66h:
	ld a,(bc)			;6f66
	nop			;6f67
	add a,(hl)			;6f68
	ld (bc),a			;6f69
	nop			;6f6a
	ld c,007h		;6f6b
	inc bc			;6f6d
	ld bc,0000bh		;6f6e
	adc a,c			;6f71
	add a,b			;6f72
	ld b,b			;6f73
	jr nz,$-112		;6f74
	ret z			;6f76
	call po,01270h		;6f77
	ld (bc),a			;6f7a
	djnz l6f91h		;6f7b
	add a,l			;6f7d
	ret m			;6f7e
	inc a			;6f7f
	ld b,b			;6f80
	ret nz			;6f81
	add a,b			;6f82
	dec bc			;6f83
	nop			;6f84
	ld (bc),a			;6f85
	cp (hl)			;6f86
	add a,h			;6f87
	ld l,(hl)			;6f88
	pop de			;6f89
	ld l,(hl)			;6f8a
	add a,00ah		;6f8b
	nop			;6f8d
	add a,h			;6f8e
	inc bc			;6f8f
	ld d,a			;6f90
l6f91h:
	rrca			;6f91
	inc a			;6f92
	inc c			;6f93
	nop			;6f94
l6f95h:
	add a,l			;6f95
	inc c			;6f96
	jr l6f26h		;6f97
	cp 00ch		;6f99
	dec bc			;6f9b
	nop			;6f9c
	add a,(hl)			;6f9d
	rst 0			;6f9e
	call nc,0f1cdh		;6f9f
	ret po			;6fa2
	ld (hl),b			;6fa3
	ld a,(bc)			;6fa4
	nop			;6fa5
	add a,l			;6fa6
	inc b			;6fa7
	ld c,(hl)			;6fa8
	ld a,a			;6fa9
	ld bc,l0e0fh		;6faa
	nop			;6fad
	add a,(hl)			;6fae
	add a,b			;6faf
	call m,09a36h		;6fb0
	ret z			;6fb3
	ld b,b			;6fb4
	inc bc			;6fb5
	nop			;6fb6
	adc a,l			;6fb7
	ld h,b			;6fb8
	inc l			;6fb9
	inc h			;6fba
	ret po			;6fbb
	jp p,0f8fah		;6fbc
	call m,07fffh		;6fbf
	add hl,sp			;6fc2
	inc h			;6fc3
	ld (hl),d			;6fc4
	ld (bc),a			;6fc5
	ld a,091h		;6fc6
	inc a			;6fc8
	cp d			;6fc9
	inc hl			;6fca
	adc a,h			;6fcb
	push af			;6fcc
	rst 0			;6fcd
	pop hl			;6fce
	ret p			;6fcf
	ld sp,hl			;6fd0
	ccf			;6fd1
	rlca			;6fd2
	add a,e			;6fd3
	ld l,c			;6fd4
	ld (hl),h			;6fd5
	ld (hl),0f3h		;6fd6
	inc sp			;6fd8
	ld (bc),a			;6fd9
	ld h,(hl)			;6fda
	sbc a,(hl)			;6fdb
	dec b			;6fdc
	ld h,c			;6fdd
	ccf			;6fde
	di			;6fdf
	rst 18h			;6fe0
	ccf			;6fe1
	ret m			;6fe2
	ret po			;6fe3
	di			;6fe4
	add a,(hl)			;6fe5
	nop			;6fe6
l6fe7h:
	inc e			;6fe7
	ccf			;6fe8
	inc a			;6fe9
	jr c,l6ffch		;6fea
	ld a,024h		;6fec
	rst 10h			;6fee
l6fefh:
	adc a,(hl)			;6fef
	dec a			;6ff0
	ld (hl),e			;6ff1
	ld a,d			;6ff2
	ei			;6ff3
	pop iy		;6ff4
	jp 063c7h		;6ff6
	inc bc			;6ff9
	ld (bc),a			;6ffa
	rlca			;6ffb
l6ffch:
	adc a,b			;6ffc
	add a,0c3h		;6ffd
	inc c			;6fff
	ld b,01eh		;7000
	ccf			;7002
	ld a,04eh		;7003
	ld (bc),a			;7005
	ld l,l			;7006
	adc a,b			;7007
	dec c			;7008
	add a,h			;7009
	adc a,a			;700a
	add hl,de			;700b
	or e			;700c
	add a,a			;700d
	dec bc			;700e
	add hl,bc			;700f
	inc bc			;7010
	nop			;7011
	add a,l			;7012
	inc c			;7013
	ld h,h			;7014
	jr c,l6fe7h		;7015
	ret po			;7017
	ld (bc),a			;7018
	ld b,b			;7019
	ld (bc),a			;701a
	add a,b			;701b
	ld b,000h		;701c
	add a,c			;701e
	ld h,b			;701f
	ld (bc),a			;7020
	ld (hl),b			;7021
	adc a,e			;7022
	ret z			;7023
	adc a,c			;7024
	ld e,010h		;7025
	rra			;7027
	rlca			;7028
l7029h:
	ld sp,03efdh		;7029
	sbc a,0eeh		;702c
	inc b			;702e
	nop			;702f
	adc a,h			;7030
	ld bc,l0903h		;7031
	ex af,af'			;7034
	inc e			;7035
	rra			;7036
	di			;7037
	ret p			;7038
	ld a,d			;7039
	ld a,(de)			;703a
	inc bc			;703b
	inc e			;703c
	inc bc			;703d
	nop			;703e
	ld (bc),a			;703f
	inc b			;7040
	add a,e			;7041
	ld c,01ah		;7042
	ld hl,(0d302h)		;7044
	add a,c			;7047
	sub c			;7048
	inc bc			;7049
	nop			;704a
	add a,d			;704b
	add a,b			;704c
	sbc a,003h		;704d
	nop			;704f
	adc a,b			;7050
	add a,b			;7051
	ret po			;7052
	ret z			;7053
	call nz,0fbf8h		;7054
	ret po			;7057
	ld e,(hl)			;7058
	ld (bc),a			;7059
	ld a,h			;705a
	add a,e			;705b
	add hl,sp			;705c
	inc sp			;705d
	rst 10h			;705e
	inc bc			;705f
	nop			;7060
	add a,c			;7061
	ex af,af'			;7062
	ld (bc),a			;7063
	add hl,de			;7064
	add a,e			;7065
	ld bc,l2811h		;7066
	inc b			;7069
	jr nz,l6fefh		;706a
	nop			;706c
	adc a,h			;706d
	inc c			;706e
	daa			;706f
	nop			;7070
	add a,c			;7071
	inc b			;7072
	ld (bc),a			;7073
	nop			;7074
	add a,c			;7075
	ld bc,l0302h		;7076
	add a,e			;7079
	rlca			;707a
	ld bc,l031fh+2		;707b
	nop			;707e
	add a,c			;707f
	inc b			;7080
	ld (bc),a			;7081
	inc c			;7082
	adc a,d			;7083
	inc e			;7084
	djnz $+14		;7085
	adc a,0b8h		;7087
	ld e,d			;7089
	nop			;708a
	jr nc,l7093h		;708b
	ld a,h			;708d
	inc b			;708e
	nop			;708f
	ld (bc),a			;7090
	ld b,b			;7091
	adc a,d			;7092
l7093h:
	ld h,e			;7093
	ld hl,l3430h		;7094
	dec sp			;7097
	add hl,sp			;7098
	rrca			;7099
	ld (hl),a			;709a
	ld h,0f7h		;709b
	ld b,000h		;709d
	adc a,d			;709f
	add a,b			;70a0
	sub b			;70a1
	jr l70a4h		;70a2
l70a4h:
	add a,b			;70a4
	ret m			;70a5
	ld a,d			;70a6
	cp (hl)			;70a7
	ld b,b			;70a8
	ld l,h			;70a9
	ld (bc),a			;70aa
	ld (hl),b			;70ab
	add a,l			;70ac
	ld de,l0203h		;70ad
	ld bc,l0200h		;70b0
	ld bc,l0200h+2		;70b3
	dec b			;70b6
	nop			;70b7
	sub d			;70b8
	jr l70f7h		;70b9
	ld l,h			;70bb
	ld a,b			;70bc
	inc l			;70bd
	inc c			;70be
	ld l,a			;70bf
	jp nz,l51c0h		;70c0
	inc e			;70c3
l70c4h:
	inc a			;70c4
	ld bc,l0700h		;70c5
	nop			;70c8
	cp a			;70c9
	dec sp			;70ca
	ld (bc),a			;70cb
	ld bc,l0802h		;70cc
	adc a,d			;70cf
	dec de			;70d0
	rlca			;70d1
	inc sp			;70d2
	ex (sp),hl			;70d3
	jp c,083f9h		;70d4
	rlca			;70d7
	add a,(hl)			;70d8
	nop			;70d9
	inc bc			;70da
	add a,b			;70db
	adc a,b			;70dc
	jp po,090c0h		;70dd
	sbc a,h			;70e0
	sbc a,b			;70e1
	jr l7154h		;70e2
	and b			;70e4
	ld (bc),a			;70e5
	add a,b			;70e6
	inc sp			;70e7
	nop			;70e8
	nop			;70e9
	ex af,af'			;70ea
	nop			;70eb
	ex af,af'			;70ec
	jr l70f1h		;70ed
	nop			;70ef
	add a,c			;70f0
l70f1h:
	jr l70ffh		;70f1
	inc a			;70f3
	add a,c			;70f4
	jr l7105h		;70f5
l70f7h:
	halt			;70f7
	add a,d			;70f8
	inc (hl)			;70f9
	djnz l7106h		;70fa
l70fch:
	nop			;70fc
	add a,c			;70fd
	inc a			;70fe
l70ffh:
	inc bc			;70ff
	ld a,(hl)			;7100
l7101h:
	ld (bc),a			;7101
	halt			;7102
	ld c,0e7h		;7103
l7105h:
	add a,e			;7105
l7106h:
	ld h,(hl)			;7106
	inc h			;7107
	ld a,(hl)			;7108
	inc bc			;7109
	rst 38h			;710a
	inc c			;710b
	rst 20h			;710c
	inc c			;710d
	nop			;710e
l710fh:
	add a,h			;710f
	djnz $+44		;7110
	inc a			;7112
	jr c,l711fh		;7113
	nop			;7115
	add a,(hl)			;7116
	jr $+4		;7117
	ld (hl),066h		;7119
	ld (hl),h			;711b
	jr c,l7124h		;711c
	nop			;711e
l711fh:
	adc a,d			;711f
	add a,b			;7120
	and b			;7121
	djnz l70c4h		;7122
l7124h:
	ret nc			;7124
	add a,b			;7125
	ret nc			;7126
	sub b			;7127
	and b			;7128
	add a,b			;7129
	ld b,000h		;712a
l712ch:
	ld (bc),a			;712c
	ld bc,l1188h		;712d
	jr l716eh		;7130
	ex af,af'			;7132
	ld d,01ch		;7133
	ld e,00fh		;7135
	inc bc			;7137
	nop			;7138
	adc a,l			;7139
	jr nz,l70fch		;713a
	ret po			;713c
	call nc,014b8h		;713d
	and h			;7140
	call nc,0dc82h		;7141
	sbc a,b			;7144
	sub b			;7145
	and b			;7146
	ld (bc),a			;7147
	nop			;7148
	xor (hl)			;7149
	ld (bc),a			;714a
	inc bc			;714b
	add hl,de			;714c
	add hl,hl			;714d
	ld (hl),l			;714e
	ld b,c			;714f
	ld (hl),c			;7150
	ld a,b			;7151
	ld a,h			;7152
	ld c,b			;7153
l7154h:
	halt			;7154
	ld a,h			;7155
	halt			;7156
	rla			;7157
	add a,b			;7158
	ret po			;7159
	jr nc,l7194h		;715a
	call nz,0d4e0h		;715c
	cp c			;715f
	inc d			;7160
	and l			;7161
	call nc,0df83h		;7162
	sbc a,d			;7165
	sbc a,b			;7166
	and b			;7167
	dec b			;7168
	rlca			;7169
	ld (l592bh),a		;716a
	jp (hl)			;716d
l716eh:
	push af			;716e
	ld b,c			;716f
	ld (hl),c			;7170
	ret m			;7171
	call m,0f6c8h		;7172
	ld a,h			;7175
	halt			;7176
	rla			;7177
	dec bc			;7178
	nop			;7179
	add a,d			;717a
	djnz l719dh		;717b
	ld (bc),a			;717d
	jr z,l7101h		;717e
	djnz l718ah		;7180
	nop			;7182
	add a,(hl)			;7183
	djnz l71aeh		;7184
	ld h,d			;7186
	and d			;7187
	add a,(hl)			;7188
	ret po			;7189
l718ah:
	ld (bc),a			;718a
	jr nz,l710fh		;718b
	nop			;718d
	add a,b			;718e
	ld (bc),a			;718f
	ld b,b			;7190
	adc a,b			;7191
	ex af,af'			;7192
	ld d,h			;7193
l7194h:
	inc d			;7194
	djnz l7197h		;7195
l7197h:
	ld b,h			;7197
	jr c,$-128		;7198
	inc bc			;719a
	nop			;719b
	add a,d			;719c
l719dh:
	add a,b			;719d
	nop			;719e
	ld (bc),a			;719f
	ld bc,l0282h		;71a0
	ld (de),a			;71a3
	ld (bc),a			;71a4
	ld hl,(l2202h)		;71a5
	ld (bc),a			;71a8
	jr nz,l712ch		;71a9
	ld e,003h		;71ab
	ld (bc),a			;71ad
l71aeh:
	add a,c			;71ae
	ld bc,00002h		;71af
	adc a,a			;71b2
	ret nz			;71b3
	ld h,b			;71b4
	jr nz,$+34		;71b5
	rlca			;71b7
	inc h			;71b8
	inc b			;71b9
	inc h			;71ba
	nop			;71bb
	ld b,b			;71bc
	ccf			;71bd
	ld e,000h		;71be
	ld b,b			;71c0
	ld bc,l0302h		;71c1
	add a,d			;71c4
	ld b,046h		;71c5
	ld (bc),a			;71c7
	and 005h		;71c8
	add a,085h		;71ca
	jp nz,0fcc0h		;71cc
	ld a,(hl)			;71cf
	ld h,d			;71d0
	ld b,060h		;71d1
	add a,c			;71d3
	inc a			;71d4
	ex af,af'			;71d5
	nop			;71d6
	add a,c			;71d7
	jr nz,l71dch		;71d8
	ld l,h			;71da
	add a,c			;71db
l71dch:
	add a,002h		;71dc
	jp nz,0c087h		;71de
	jp nz,0c2c0h		;71e1
	ret nz			;71e4
	call nz,002c2h		;71e5
	ret nz			;71e8
	add a,h			;71e9
	call nz,0c0c2h		;71ea
	ld bc,00002h		;71ed
	adc a,b			;71f0
	ld b,d			;71f1
	ret nz			;71f2
	pop bc			;71f3
	ret nz			;71f4
	jp nz,0c4c0h		;71f5
	jp nz,0c002h		;71f8
	add a,e			;71fb
	ld a,(hl)			;71fc
	ld b,b			;71fd
	ret nc			;71fe
	ld (bc),a			;71ff
	ret z			;7200
	add a,d			;7201
	ret nz			;7202
	ret nc			;7203
	ld (bc),a			;7204
	ret nz			;7205
	add a,e			;7206
	ret nc			;7207
	ret nz			;7208
	ret z			;7209
	ld (bc),a			;720a
	ret nz			;720b
	add a,(hl)			;720c
	ret po			;720d
	ld a,a			;720e
	rra			;720f
	nop			;7210
	djnz l7247h		;7211
	ld (bc),a			;7213
	ld (l3086h+2),a		;7214
	inc (hl)			;7217
	jr nz,l721eh		;7218
	ld (bc),a			;721a
l721bh:
	ld c,0fch		;721b
	ret p			;721d
l721eh:
	dec bc			;721e
	nop			;721f
	add a,h			;7220
	jr l7243h		;7221
	ld e,b			;7223
	or b			;7224
	inc b			;7225
	add a,b			;7226
	ex af,af'			;7227
	nop			;7228
	add a,h			;7229
	jr l7230h		;722a
	ld a,(de)			;722c
	dec c			;722d
	inc b			;722e
	ld (bc),a			;722f
l7230h:
	ex af,af'			;7230
	djnz l7243h		;7231
	nop			;7233
	adc a,b			;7234
	rlca			;7235
	inc c			;7236
	dec de			;7237
	scf			;7238
	ld l,(hl)			;7239
	call c,0f0b8h		;723a
	ex af,af'			;723d
	nop			;723e
	adc a,b			;723f
	ret po			;7240
	jr nc,l721bh		;7241
l7243h:
	call pe,03b76h		;7243
	dec e			;7246
l7247h:
	rrca			;7247
	djnz l727ah		;7248
	ld b,000h		;724a
	adc a,d			;724c
	ld bc,l0603h		;724d
	dec c			;7250
	dec de			;7251
	scf			;7252
	ld l,a			;7253
	ld e,(hl)			;7254
	ret c			;7255
	ret nc			;7256
	dec b			;7257
	nop			;7258
	add a,a			;7259
	ld (hl),b			;725a
	ret nz			;725b
	ld (hl),b			;725c
	ret p			;725d
	ret po			;725e
	ret nz			;725f
	add a,b			;7260
	add hl,bc			;7261
	nop			;7262
	add a,a			;7263
	ld c,003h		;7264
	ld c,00fh		;7266
	rlca			;7268
	inc bc			;7269
	ld bc,0000ah		;726a
	adc a,d			;726d
	add a,b			;726e
	ret nz			;726f
	ld h,b			;7270
	or b			;7271
	ret c			;7272
	call pe,sub_7af6h		;7273
	dec de			;7276
	dec bc			;7277
	djnz l72aeh		;7278
l727ah:
	add a,a			;727a
	ret m			;727b
	rst 38h			;727c
	call m,0c0e0h		;727d
	ret m			;7280
	ret p			;7281
	add hl,bc			;7282
	nop			;7283
	ld (bc),a			;7284
	cp a			;7285
	dec b			;7286
	rst 38h			;7287
	add hl,bc			;7288
	nop			;7289
	adc a,b			;728a
	inc hl			;728b
	ld d,a			;728c
	ccf			;728d
	rst 38h			;728e
	ld a,b			;728f
	ld l,e			;7290
	rst 38h			;7291
	call m,00008h		;7292
	add a,e			;7295
	adc a,h			;7296
	ret c			;7297
	.DB 0fdh,002h,0ffh	;illegal sequence		;7298
	add a,c			;729b
	cp 002h		;729c
	rst 38h			;729e
	ex af,af'			;729f
	nop			;72a0
	adc a,b			;72a1
	rst 30h			;72a2
	call p,0f5cdh		;72a3
	rst 20h			;72a6
	rst 38h			;72a7
	ld a,a			;72a8
	ld bc,00008h		;72a9
	add a,(hl)			;72ac
	rra			;72ad
l72aeh:
	ld a,a			;72ae
	rst 38h			;72af
	ld a,a			;72b0
	ccf			;72b1
	rrca			;72b2
	dec c			;72b3
	nop			;72b4
	sub c			;72b5
	add a,b			;72b6
	call m,0feffh		;72b7
	ret m			;72ba
	ret p			;72bb
	ret po			;72bc
	add a,b			;72bd
	ret nz			;72be
	ret p			;72bf
	cp 0ffh		;72c0
	call m,0fafeh		;72c2
	ret m			;72c5
	call m,0ff09h		;72c6
	add a,c			;72c9
	ld a,a			;72ca
	ld (bc),a			;72cb
	rst 38h			;72cc
	add a,d			;72cd
	rst 8			;72ce
	rst 20h			;72cf
	inc bc			;72d0
	rst 38h			;72d1
	add a,d			;72d2
	rst 8			;72d3
	ex de,hl			;72d4
	ld (bc),a			;72d5
	ld a,a			;72d6
	add a,e			;72d7
	ccf			;72d8
	rst 30h			;72d9
	scf			;72da
	ld (bc),a			;72db
	ld h,(hl)			;72dc
	add a,e			;72dd
	dec d			;72de
	ld (hl),c			;72df
	ccf			;72e0
	ld b,0ffh		;72e1
	adc a,h			;72e3
	and 0c0h		;72e4
	sbc a,h			;72e6
	ccf			;72e7
	inc a			;72e8
	jr c,l72fbh		;72e9
	ld a,024h		;72eb
	rst 38h			;72ed
l72eeh:
	cp 0bfh		;72ee
	ld b,0ffh		;72f0
	add a,d			;72f2
	rst 30h			;72f3
	rst 20h			;72f4
	inc bc			;72f5
	rst 8			;72f6
	add a,e			;72f7
	adc a,0e7h		;72f8
	ccf			;72fa
l72fbh:
	ld (bc),a			;72fb
	rra			;72fc
	add a,d			;72fd
	ccf			;72fe
	ld a,a			;72ff
	dec b			;7300
	rst 38h			;7301
	add a,e			;7302
	rst 18h			;7303
	sbc a,c			;7304
	cp a			;7305
	ld (bc),a			;7306
	adc a,a			;7307
	add a,c			;7308
	rrca			;7309
	ld (bc),a			;730a
	nop			;730b
	add a,h			;730c
	ld (bc),a			;730d
	inc c			;730e
	ld a,h			;730f
	ret m			;7310
	ld (bc),a			;7311
	ret p			;7312
	add a,c			;7313
	ret po			;7314
	ld (bc),a			;7315
	ret nz			;7316
	ld (bc),a			;7317
	add a,b			;7318
	dec b			;7319
	nop			;731a
	add a,c			;731b
	ld h,b			;731c
	ld (bc),a			;731d
	ret p			;731e
	add a,d			;731f
	ret m			;7320
	ld sp,hl			;7321
	inc bc			;7322
	sbc a,a			;7323
	add a,d			;7324
	cp a			;7325
	ld a,a			;7326
	inc b			;7327
	rst 38h			;7328
	inc b			;7329
	nop			;732a
	add a,d			;732b
	ld bc,l0203h		;732c
	rrca			;732f
	ld (bc),a			;7330
	rra			;7331
	inc bc			;7332
sub_7333h:
	rst 38h			;7333
	add a,e			;7334
	ld e,a			;7335
	daa			;7336
	rra			;7337
	inc bc			;7338
	nop			;7339
	ld (bc),a			;733a
	inc b			;733b
	add a,e			;733c
	ld c,01ah		;733d
	ld a,(0f302h)		;733f
	add a,e			;7342
	pop af			;7343
	ld h,b			;7344
	jr nz,l7349h		;7345
	ret nz			;7347
	add a,c			;7348
l7349h:
	sbc a,002h		;7349
	nop			;734b
	add a,h			;734c
	add a,b			;734d
	ret po			;734e
	ret p			;734f
	ret m			;7350
	ld (bc),a			;7351
	call m,0ff03h		;7352
	add a,e			;7355
	cp 0ffh		;7356
	ld a,a			;7358
	ld (bc),a			;7359
	rst 38h			;735a
	add a,l			;735b
	nop			;735c
	ld b,00fh		;735d
	dec de			;735f
	dec e			;7360
	ld (bc),a			;7361
	rra			;7362
	add a,d			;7363
	dec de			;7364
	dec sp			;7365
	ld (bc),a			;7366
	add hl,sp			;7367
	ld (bc),a			;7368
	jr c,l72eeh		;7369
	ret m			;736b
	rst 18h			;736c
	ld l,a			;736d
	inc h			;736e
	nop			;736f
	add a,e			;7370
	inc bc			;7371
	rlca			;7372
	inc bc			;7373
	ld (bc),a			;7374
	rlca			;7375
	sbc a,b			;7376
	rrca			;7377
	daa			;7378
	cpl			;7379
	ccf			;737a
	rra			;737b
	rrca			;737c
	daa			;737d
	rra			;737e
	dec bc			;737f
	ld a,(bc)			;7380
	call m,0eccch		;7381
	cp (hl)			;7384
	cp 0beh		;7385
	xor 0b8h		;7387
	ld e,d			;7389
	nop			;738a
	jr nc,l7393h		;738b
	call m,sub_023eh+2		;738d
	ld h,b			;7390
	add a,h			;7391
	ld b,b			;7392
l7393h:
	ld b,a			;7393
	ld e,a			;7394
	ld h,a			;7395
	ld (bc),a			;7396
	ld (hl),a			;7397
	adc a,(hl)			;7398
	dec (hl)			;7399
	dec sp			;739a
	add hl,sp			;739b
	rrca			;739c
l739dh:
	ld (hl),a			;739d
	ld h,0f7h		;739e
	nop			;73a0
l73a1h:
	ld b,b			;73a1
	ld a,b			;73a2
	ret p			;73a3
	ret nz			;73a4
	or b			;73a5
	add a,b			;73a6
l73a7h:
	ld (bc),a			;73a7
	ret c			;73a8
	add a,c			;73a9
	ret m			;73aa
	inc b			;73ab
	rst 38h			;73ac
	add a,e			;73ad
	ld c,c			;73ae
	ld l,a			;73af
	halt			;73b0
	ld (bc),a			;73b1
	rst 38h			;73b2
	add a,l			;73b3
	out (003h),a		;73b4
	ld a,a			;73b6
	ld a,03dh		;73b7
	ld (bc),a			;73b9
	ld a,a			;73ba
	add a,e			;73bb
	ld a,e			;73bc
	jr l73cfh		;73bd
	ld (bc),a			;73bf
	inc bc			;73c0
	adc a,e			;73c1
	ld bc,03c18h		;73c2
	ld l,h			;73c5
	ld a,b			;73c6
	call pe,sub_6f0ch		;73c7
	jp nz,0d1c0h		;73ca
	ld (bc),a			;73cd
	cp h			;73ce
l73cfh:
	add a,(hl)			;73cf
	add hl,de			;73d0
	pop bc			;73d1
	rst 20h			;73d2
	ld a,h			;73d3
	cp a			;73d4
	dec sp			;73d5
	ld (bc),a			;73d6
	ld bc,l0802h		;73d7
	sbc a,b			;73da
	dec de			;73db
	rlca			;73dc
	inc sp			;73dd
	ex (sp),hl			;73de
	jp c,083fbh		;73df
	rlca			;73e2
	rst 30h			;73e3
	ld l,b			;73e4
	jp 0c098h		;73e5
	rst 20h			;73e8
	ex (sp),hl			;73e9
	di			;73ea
	cp 0fch		;73eb
	ld e,h			;73ed
	ret m			;73ee
	or h			;73ef
	add a,b			;73f0
	ret nz			;73f1
	or b			;73f2
	ld (bc),a			;73f3
	nop			;73f4
	add a,c			;73f5
	ld a,(hl)			;73f6
	ld (bc),a			;73f7
	rst 20h			;73f8
	add a,c			;73f9
	rst 38h			;73fa
	ld (bc),a			;73fb
	rst 20h			;73fc
	add a,c			;73fd
	nop			;73fe
	dec b			;73ff
	ret po			;7400
	add a,c			;7401
	rst 38h			;7402
	inc bc			;7403
	nop			;7404
	adc a,l			;7405
	ld a,060h		;7406
	ld h,(hl)			;7408
	ld a,000h		;7409
	inc a			;740b
	ld h,(hl)			;740c
	inc a			;740d
	nop			;740e
	inc a			;740f
	ld a,(hl)			;7410
	ld h,(hl)			;7411
	nop			;7412
	ld (bc),a			;7413
	ld h,b			;7414
	add a,c			;7415
	ld a,(hl)			;7416
	ld (bc),a			;7417
	nop			;7418
	ld (bc),a			;7419
	jr l739dh		;741a
	nop			;741c
	ld (bc),a			;741d
	jr l73a1h		;741e
	nop			;7420
	ld (bc),a			;7421
	jr l73a7h		;7422
	nop			;7424
	djnz l743fh		;7425
	inc bc			;7427
	nop			;7428
	nop			;7429
	ex af,af'			;742a
	nop			;742b
	ex af,af'			;742c
	jr l7431h		;742d
	nop			;742f
	add a,c			;7430
l7431h:
	jr l743fh		;7431
	inc a			;7433
	add a,c			;7434
	jr l7445h		;7435
	ld a,(hl)			;7437
	add a,d			;7438
	inc a			;7439
	jr l7446h		;743a
	nop			;743c
	add a,c			;743d
	inc a			;743e
l743fh:
	dec b			;743f
	ld a,(hl)			;7440
	ld c,0ffh		;7441
	add a,e			;7443
	ld a,(hl)			;7444
l7445h:
	inc a			;7445
l7446h:
	ld a,(hl)			;7446
	rrca			;7447
	rst 38h			;7448
	inc c			;7449
	nop			;744a
	add a,c			;744b
	jr l7450h		;744c
	inc a			;744e
	add a,c			;744f
l7450h:
	jr c,l745ch		;7450
	nop			;7452
l7453h:
	add a,d			;7453
	jr l7492h		;7454
	ld (bc),a			;7456
	ld a,(hl)			;7457
	add a,d			;7458
	ld a,h			;7459
	jr c,l7462h		;745a
l745ch:
	nop			;745c
	add a,d			;745d
	add a,b			;745e
	and b			;745f
	ld (bc),a			;7460
	ret p			;7461
l7462h:
	add a,c			;7462
	ret c			;7463
	ld (bc),a			;7464
	ret p			;7465
	add a,e			;7466
	sub b			;7467
	ret po			;7468
	ret nz			;7469
	ld b,000h		;746a
	add a,(hl)			;746c
	inc bc			;746d
	rrca			;746e
	dec e			;746f
	rra			;7470
	ccf			;7471
	rrca			;7472
	inc bc			;7473
	rra			;7474
	add a,c			;7475
	rrca			;7476
	inc bc			;7477
	nop			;7478
	adc a,l			;7479
	and b			;747a
	ret p			;747b
l747ch:
	ret po			;747c
	call p,0fcbch		;747d
	cp 0deh		;7480
	or 0fch		;7482
	sbc a,h			;7484
	ret nc			;7485
	ret po			;7486
	ld (bc),a			;7487
	nop			;7488
	add a,h			;7489
	inc bc			;748a
	rlca			;748b
	rra			;748c
	add hl,sp			;748d
	ld (bc),a			;748e
	ld a,a			;748f
	add a,c			;7490
	ld a,l			;7491
l7492h:
	ld (bc),a			;7492
	ld a,a			;7493
	add a,c			;7494
	ld l,a			;7495
	inc bc			;7496
	ld a,a			;7497
	sub h			;7498
	rra			;7499
	add a,b			;749a
	ret po			;749b
	inc a			;749c
	cp b			;749d
	call m,0f4e6h		;749e
	cp a			;74a1
	call m,0deffh		;74a2
	rst 30h			;74a5
	rst 38h			;74a6
	sbc a,(hl)			;74a7
	ret c			;74a8
	ret po			;74a9
	rlca			;74aa
	rra			;74ab
	ccf			;74ac
	ld (bc),a			;74ad
	ld a,a			;74ae
	add a,h			;74af
	ld sp,hl			;74b0
	rst 38h			;74b1
	ld a,a			;74b2
	.DB 0fdh,002h,0ffh	;illegal sequence		;74b3
	add a,d			;74b6
	rst 28h			;74b7
	rst 38h			;74b8
	ld (bc),a			;74b9
	ld a,a			;74ba
	add a,c			;74bb
	rra			;74bc
	dec bc			;74bd
	nop			;74be
	add a,d			;74bf
	djnz $+48		;74c0
	ld (bc),a			;74c2
	jr c,l7446h		;74c3
	djnz l74cfh		;74c5
	nop			;74c7
	add a,(hl)			;74c8
	jr l7503h		;74c9
	jp m,0febeh		;74cb
	ret m			;74ce
l74cfh:
	ld (bc),a			;74cf
	jr c,l7453h		;74d0
	add a,b			;74d2
	inc bc			;74d3
	ret nz			;74d4
	add a,c			;74d5
	ret z			;74d6
	inc bc			;74d7
	call c,0fc02h		;74d8
	add a,c			;74db
	ret m			;74dc
	inc b			;74dd
	ret nz			;74de
	add a,d			;74df
	add a,b			;74e0
	nop			;74e1
	ld (bc),a			;74e2
	ld bc,l0382h		;74e3
	inc de			;74e6
	inc b			;74e7
	dec sp			;74e8
	ld (bc),a			;74e9
	ccf			;74ea
	add a,c			;74eb
	rra			;74ec
	inc bc			;74ed
	inc bc			;74ee
	add a,d			;74ef
	ld bc,l04c0h		;74f0
	ret po			;74f3
	add a,c			;74f4
	ex (sp),hl			;74f5
	inc b			;74f6
	rst 20h			;74f7
	inc bc			;74f8
	rst 38h			;74f9
	add a,c			;74fa
	cp 002h		;74fb
	ret po			;74fd
	add a,c			;74fe
	ld bc,l0302h		;74ff
	add a,d			;7502
l7503h:
	rlca			;7503
	ld h,a			;7504
	rlca			;7505
	rst 20h			;7506
	inc bc			;7507
	rst 38h			;7508
	add a,c			;7509
	ld a,a			;750a
	rlca			;750b
	ld a,(hl)			;750c
	add a,c			;750d
	inc a			;750e
	ex af,af'			;750f
	nop			;7510
	add a,c			;7511
	inc a			;7512
	ld (bc),a			;7513
	ld a,(hl)			;7514
	inc e			;7515
	rst 38h			;7516
	add a,d			;7517
	ld a,(hl)			;7518
	ld (hl),b			;7519
	ex af,af'			;751a
	ret m			;751b
	add a,c			;751c
	call m,0ff04h		;751d
	add a,h			;7520
	ld a,a			;7521
	rra			;7522
	nop			;7523
	inc e			;7524
	ld b,03eh		;7525
	inc bc			;7527
	cp 082h		;7528
	call m,sub_0bf0h		;752a
	nop			;752d
	add a,h			;752e
	jr l7569h		;752f
	ld a,b			;7531
	ret p			;7532
	inc b			;7533
	ret nz			;7534
	ex af,af'			;7535
	nop			;7536
	add a,h			;7537
	jr l7556h		;7538
	ld e,00fh		;753a
	inc b			;753c
	inc bc			;753d
	ex af,af'			;753e
	jr l7551h		;753f
	nop			;7541
	adc a,b			;7542
	rlca			;7543
	rrca			;7544
sub_7545h:
	rra			;7545
	ccf			;7546
	ld a,(hl)			;7547
	call m,0f0f8h		;7548
	ex af,af'			;754b
	nop			;754c
	adc a,b			;754d
	ret po			;754e
	ret p			;754f
	ret m			;7550
l7551h:
	call m,l3f7eh		;7551
	rra			;7554
	rrca			;7555
l7556h:
	djnz l7590h		;7556
	ld b,000h		;7558
	adc a,d			;755a
	ld bc,l0703h		;755b
	rrca			;755e
	rra			;755f
	ccf			;7560
	ld a,a			;7561
	ld a,(hl)			;7562
	ret m			;7563
	ret p			;7564
	dec b			;7565
	nop			;7566
	add a,c			;7567
	ld (hl),b			;7568
l7569h:
	inc bc			;7569
	ret p			;756a
	add a,e			;756b
	ret po			;756c
	ret nz			;756d
	add a,b			;756e
	add hl,bc			;756f
	nop			;7570
	add a,c			;7571
	ld c,003h		;7572
	rrca			;7574
	add a,e			;7575
	rlca			;7576
	inc bc			;7577
	ld bc,0000ah		;7578
	adc a,d			;757b
	add a,b			;757c
	ret nz			;757d
	ret po			;757e
	ret p			;757f
	ret m			;7580
	call m,sub_7efeh		;7581
	rra			;7584
	rrca			;7585
	djnz l75c4h		;7586
	add a,a			;7588
l7589h:
	ret m			;7589
	rst 38h			;758a
	call m,0c0e0h		;758b
	ret m			;758e
	ret p			;758f
l7590h:
	add hl,bc			;7590
	nop			;7591
	rlca			;7592
	rst 38h			;7593
	add hl,bc			;7594
	nop			;7595
	inc b			;7596
	rst 38h			;7597
	add a,c			;7598
	ld a,a			;7599
	ld (bc),a			;759a
	rst 38h			;759b
	add a,c			;759c
	call m,00008h		;759d
	ex af,af'			;75a0
	rst 38h			;75a1
	ex af,af'			;75a2
	nop			;75a3
	ld b,0ffh		;75a4
	add a,d			;75a6
	ld a,a			;75a7
	ld bc,00008h		;75a8
	add a,(hl)			;75ab
	rra			;75ac
l75adh:
	ld a,a			;75ad
	rst 38h			;75ae
	ld a,a			;75af
	ccf			;75b0
	rrca			;75b1
	dec c			;75b2
	nop			;75b3
	adc a,l			;75b4
	add a,b			;75b5
	call m,0feffh		;75b6
	ret m			;75b9
	ret p			;75ba
	ret po			;75bb
	add a,b			;75bc
	ret nz			;75bd
	ret p			;75be
	cp 0ffh		;75bf
	call m,0fe02h		;75c1
l75c4h:
	ld a,0ffh		;75c4
	add a,c			;75c6
	ccf			;75c7
	ld (bc),a			;75c8
	rra			;75c9
	add a,d			;75ca
	ccf			;75cb
	ld a,a			;75cc
	dec b			;75cd
	rst 38h			;75ce
	add a,e			;75cf
	rst 18h			;75d0
	sbc a,a			;75d1
	cp a			;75d2
	ld (bc),a			;75d3
	adc a,a			;75d4
	add a,c			;75d5
	rrca			;75d6
	ld (bc),a			;75d7
	nop			;75d8
	add a,h			;75d9
	ld (bc),a			;75da
	inc c			;75db
	ld a,h			;75dc
	ret m			;75dd
	ld (bc),a			;75de
	ret p			;75df
	add a,c			;75e0
	ret po			;75e1
	ld (bc),a			;75e2
	ret nz			;75e3
	ld (bc),a			;75e4
	add a,b			;75e5
	dec b			;75e6
	nop			;75e7
	add a,c			;75e8
	ld h,b			;75e9
	ld (bc),a			;75ea
	ret p			;75eb
	add a,d			;75ec
	ret m			;75ed
	ld sp,hl			;75ee
	inc bc			;75ef
	sbc a,a			;75f0
	add a,d			;75f1
	cp a			;75f2
	ld a,a			;75f3
	inc b			;75f4
	rst 38h			;75f5
	inc b			;75f6
	nop			;75f7
	add a,d			;75f8
	ld bc,l0203h		;75f9
	rrca			;75fc
	ld (bc),a			;75fd
	rra			;75fe
	ld b,0ffh		;75ff
	inc bc			;7601
	nop			;7602
	ld (bc),a			;7603
	inc b			;7604
	add a,e			;7605
	ld c,01eh		;7606
	ld a,008h		;7608
	rst 38h			;760a
	ld (bc),a			;760b
	nop			;760c
	add a,h			;760d
	add a,b			;760e
	ret po			;760f
	ret p			;7610
	ret m			;7611
	ld (bc),a			;7612
	call m,0ff05h		;7613
	add a,c			;7616
	ld a,a			;7617
	ld (bc),a			;7618
	rst 38h			;7619
	add a,l			;761a
	nop			;761b
	ld b,00fh		;761c
	dec de			;761e
	dec e			;761f
	ld (bc),a			;7620
	rra			;7621
	add a,d			;7622
	dec de			;7623
	dec sp			;7624
	ld (bc),a			;7625
	add hl,sp			;7626
	ld (bc),a			;7627
	jr c,l75adh		;7628
	ret m			;762a
	rst 38h			;762b
	ld a,a			;762c
	inc h			;762d
	nop			;762e
	add a,e			;762f
	inc bc			;7630
	rlca			;7631
	inc bc			;7632
	ld (bc),a			;7633
	rlca			;7634
	add a,l			;7635
	rrca			;7636
	daa			;7637
	cpl			;7638
	ccf			;7639
	rra			;763a
	ld (bc),a			;763b
	ccf			;763c
	add a,c			;763d
	rra			;763e
	ld (bc),a			;763f
	rrca			;7640
	dec c			;7641
	rst 38h			;7642
	add a,c			;7643
	ld b,b			;7644
	ld (bc),a			;7645
	ret po			;7646
	add a,c			;7647
	ret nz			;7648
	inc c			;7649
	rst 38h			;764a
	adc a,d			;764b
	nop			;764c
	ld b,b			;764d
	ld a,b			;764e
	ret p			;764f
	ret nz			;7650
	or b			;7651
	add a,b			;7652
	ret c			;7653
	call c,sub_06f8h		;7654
	rst 38h			;7657
	add a,c			;7658
	ld a,a			;7659
	ld (bc),a			;765a
	rst 38h			;765b
	add a,e			;765c
	rst 18h			;765d
	rra			;765e
	ld a,a			;765f
	ld (bc),a			;7660
	ccf			;7661
	inc bc			;7662
	ld a,a			;7663
	add a,d			;7664
	rra			;7665
	inc de			;7666
	ld (bc),a			;7667
	inc bc			;7668
	add a,c			;7669
	ld bc,0ff0fh		;766a
	add a,c			;766d
	ld a,a			;766e
	rrca			;766f
	rst 38h			;7670
	add a,c			;7671
	ret pe			;7672
	ld b,0ffh		;7673
	add a,c			;7675
	cp 002h		;7676
	call m,0f882h		;7678
	call m,0f802h		;767b
	add a,c			;767e
	or b			;767f
l7680h:
	ld (bc),a			;7680
	nop			;7681
	rrca			;7682
	rst 38h			;7683
	add a,c			;7684
	nop			;7685
	jr nz,$-1		;7686
	nop			;7688
	rlca			;7689
	nop			;768a
	add a,c			;768b
	ex af,af'			;768c
	rlca			;768d
	nop			;768e
	add a,c			;768f
	inc b			;7690
	djnz l7693h		;7691
l7693h:
	add a,d			;7693
	inc c			;7694
	ld c,006h		;7695
	rrca			;7697
	add a,e			;7698
	inc c			;7699
	inc e			;769a
	inc a			;769b
	dec b			;769c
	call m,00005h		;769d
	add a,a			;76a0
	ld bc,l0703h		;76a1
	inc c			;76a4
	inc e			;76a5
	inc a			;76a6
	ld a,h			;76a7
	inc b			;76a8
	call m,00008h		;76a9
	add a,d			;76ac
	inc c			;76ad
	ld c,006h		;76ae
	rrca			;76b0
	add a,h			;76b1
	inc c			;76b2
	inc e			;76b3
	inc a			;76b4
	ld a,h			;76b5
	inc bc			;76b6
	call m,0f881h		;76b7
	inc bc			;76ba
	nop			;76bb
	add a,l			;76bc
	add a,b			;76bd
	pop bc			;76be
	ex (sp),hl			;76bf
	rst 30h			;76c0
	rst 38h			;76c1
	inc bc			;76c2
	rrca			;76c3
	add a,l			;76c4
	ld c,a			;76c5
	rst 8			;76c6
	rst 0			;76c7
	jp l08c1h		;76c8
	call m,00f84h		;76cb
	rra			;76ce
	ccf			;76cf
	ld a,a			;76d0
	inc bc			;76d1
	rst 38h			;76d2
	add a,c			;76d3
	ei			;76d4
	ex af,af'			;76d5
	call m,00f84h		;76d6
	rra			;76d9
	ccf			;76da
	ld a,a			;76db
	inc b			;76dc
	rst 38h			;76dd
	adc a,h			;76de
	rrca			;76df
	rra			;76e0
	ccf			;76e1
	ld a,a			;76e2
	rst 38h			;76e3
	cp 0fch		;76e4
	ret m			;76e6
	ret p			;76e7
	ret po			;76e8
	ret nz			;76e9
	add a,b			;76ea
	inc b			;76eb
	nop			;76ec
	add a,h			;76ed
	rrca			;76ee
	rra			;76ef
	ccf			;76f0
	ld a,a			;76f1
	inc c			;76f2
	rst 38h			;76f3
	inc bc			;76f4
	ret nz			;76f5
	add a,a			;76f6
	pop bc			;76f7
	jp 0cfc7h		;76f8
	rst 18h			;76fb
	call m,sub_067ch		;76fc
	call m,0f382h		;76ff
	pop hl			;7702
	inc bc			;7703
	ret nz			;7704
	add a,e			;7705
	pop bc			;7706
	jp 003c7h		;7707
	call m,07c81h		;770a
	inc b			;770d
	call m,0ff08h		;770e
	add a,d			;7711
	ret p			;7712
	ret po			;7713
	inc b			;7714
	ret nz			;7715
	add a,a			;7716
	pop bc			;7717
	ex (sp),hl			;7718
	inc b			;7719
	inc c			;771a
	inc e			;771b
	inc a			;771c
	ld a,h			;771d
	inc bc			;771e
	call m,0ff82h		;771f
	rst 28h			;7722
	ld b,0cfh		;7723
	rlca			;7725
	rst 38h			;7726
	add a,c			;7727
	rst 28h			;7728
	ex af,af'			;7729
	call m,0cf82h		;772a
	rst 18h			;772d
	ld c,0ffh		;772e
	ex af,af'			;7730
	call m,0f781h		;7731
	rlca			;7734
	rst 38h			;7735
	ex af,af'			;7736
	call m,0cf08h		;7737
	ld (bc),a			;773a
	rst 38h			;773b
	adc a,c			;773c
	rst 18h			;773d
	rst 8			;773e
	rst 28h			;773f
	rst 30h			;7740
	rst 18h			;7741
	rst 8			;7742
	rst 18h			;7743
	jp sub_03beh+3		;7744
	ret nz			;7747
	add a,d			;7748
	pop bc			;7749
	jp 0fc04h		;774a
	add a,c			;774d
	ld a,h			;774e
	inc bc			;774f
	call m,0ff03h		;7750
	adc a,c			;7753
	ld a,a			;7754
	ccf			;7755
	ld e,00ch		;7756
	nop			;7758
	ret p			;7759
	ret po			;775a
	ret nz			;775b
	add a,b			;775c
	inc b			;775d
	nop			;775e
	add a,e			;775f
	rst 0			;7760
	jp sub_03beh+3		;7761
	ret nz			;7764
	add a,l			;7765
	pop bc			;7766
	jp 0c3c7h		;7767
	pop bc			;776a
	dec b			;776b
	ret nz			;776c
	add a,h			;776d
	ret m			;776e
	ret p			;776f
	ret po			;7770
	ret nz			;7771
	inc b			;7772
	nop			;7773
	add a,c			;7774
	rst 0			;7775
	ld (bc),a			;7776
	jp 0c103h		;7777
	ld (bc),a			;777a
	ret nz			;777b
	add a,l			;777c
	ret m			;777d
	ret p			;777e
	ret po			;777f
	ret nz			;7780
	add a,b			;7781
	inc bc			;7782
	nop			;7783
	add a,e			;7784
	rst 0			;7785
	rst 8			;7786
	rst 18h			;7787
	inc bc			;7788
	rst 38h			;7789
	add a,d			;778a
	cp 0fch		;778b
	inc b			;778d
	rst 38h			;778e
	add a,h			;778f
	ld a,a			;7790
	ccf			;7791
	ld e,00ch		;7792
	inc b			;7794
	ret nz			;7795
	add a,c			;7796
	add a,b			;7797
	ld a,a			;7798
	nop			;7799
	ld a,a			;779a
	nop			;779b
	dec e			;779c
	nop			;779d
	nop			;779e
	inc bc			;779f
	nop			;77a0
	add a,l			;77a1
	ld bc,l0703h		;77a2
	rrca			;77a5
	rlca			;77a6
	ld (bc),a			;77a7
	nop			;77a8
	add a,h			;77a9
	ret nz			;77aa
	ret po			;77ab
	ret p			;77ac
	ret m			;77ad
	ld (bc),a			;77ae
	call m,00003h		;77af
	add a,l			;77b2
	ld bc,l0703h		;77b3
	rrca			;77b6
	rra			;77b7
	ld b,000h		;77b8
	add a,h			;77ba
	inc c			;77bb
	ld e,003h		;77bc
	ld bc,00006h		;77be
	inc bc			;77c1
	call m,sub_7c04h+1		;77c2
	add a,d			;77c5
	ccf			;77c6
	ld a,a			;77c7
	ld b,0ffh		;77c8
	ex af,af'			;77ca
	call m,00004h		;77cb
	add a,(hl)			;77ce
	ld (bc),a			;77cf
	rlca			;77d0
	rrca			;77d1
	rra			;77d2
	inc bc			;77d3
	ld bc,00004h		;77d4
	add a,d			;77d7
	add a,b			;77d8
	ret nz			;77d9
	rlca			;77da
	call m,0f88bh		;77db
	ccf			;77de
	ld a,a			;77df
	rst 38h			;77e0
	ld a,a			;77e1
	ld a,01dh		;77e2
	dec bc			;77e4
	rlca			;77e5
	nop			;77e6
	add a,b			;77e7
	inc bc			;77e8
	ret nz			;77e9
	add a,e			;77ea
	ret z			;77eb
	call c,sub_08feh		;77ec
	ld a,h			;77ef
	dec b			;77f0
	rst 38h			;77f1
	add a,e			;77f2
	cp 0fch		;77f3
	ret m			;77f5
	inc b			;77f6
	call m,sub_7c04h		;77f7
	add a,c			;77fa
	ret po			;77fb
	inc bc			;77fc
	ret p			;77fd
	inc bc			;77fe
	ret m			;77ff
l7800h:
	add a,c			;7800
	call m,0ff05h		;7801
	adc a,e			;7804
	cp 0fch		;7805
	ld sp,hl			;7807
	ret p			;7808
	ret po			;7809
	ret nz			;780a
	add a,b			;780b
l780ch:
	jr nz,$+112		;780c
	ret m			;780e
	call m,0ff05h		;780f
	add a,e			;7812
	cp 0fch		;7813
	ret m			;7815
	ex af,af'			;7816
	rlca			;7817
	ex af,af'			;7818
	rst 38h			;7819
	add a,c			;781a
	ld a,h			;781b
	rlca			;781c
	call m,0f084h		;781d
	and 0cfh		;7820
l7822h:
	rst 18h			;7822
	inc b			;7823
	rst 38h			;7824
	inc bc			;7825
	ld a,h			;7826
	rlca			;7827
	call m,0fe03h		;7828
	inc bc			;782b
	rst 38h			;782c
	add a,h			;782d
	di			;782e
	rst 20h			;782f
	rst 8			;7830
	rst 18h			;7831
	inc bc			;7832
	rst 38h			;7833
	add a,c			;7834
	rst 18h			;7835
	ex af,af'			;7836
	call m,0f082h		;7837
	ret po			;783a
	ld b,0c0h		;783b
	inc bc			;783d
	rst 38h			;783e
	add a,l			;783f
	cp 0fch		;7840
	ret m			;7842
	ret p			;7843
	ret po			;7844
	ld (bc),a			;7845
	call m,sub_7c06h		;7846
	dec b			;7849
	rst 38h			;784a
	add a,e			;784b
	cp 0fch		;784c
l784eh:
	ret m			;784e
	ex af,af'			;784f
	rst 38h			;7850
	ex af,af'			;7851
	call m,0cf06h		;7852
	add a,d			;7855
	adc a,0cch		;7856
	dec b			;7858
	call m,sub_7c03h		;7859
	ex af,af'			;785c
	ret nz			;785d
	inc b			;785e
	rst 38h			;785f
	add a,d			;7860
	rst 18h			;7861
l7862h:
	rst 8			;7862
	ld (bc),a			;7863
	rst 0			;7864
	add a,e			;7865
	ret z			;7866
	call c,sub_05feh		;7867
	rst 38h			;786a
	inc b			;786b
	ld a,h			;786c
	inc b			;786d
	call m,sub_0705h		;786e
	add a,a			;7871
	ld b,004h		;7872
l7874h:
	nop			;7874
	ret p			;7875
	ret po			;7876
	ret nz			;7877
	add a,b			;7878
	inc b			;7879
	nop			;787a
	add a,e			;787b
	ret z			;787c
	call c,sub_05feh		;787d
l7880h:
	rst 38h			;7880
	ex af,af'			;7881
	ret nz			;7882
	add a,h			;7883
	ld a,b			;7884
	ld (hl),b			;7885
	ld h,b			;7886
	ld b,b			;7887
	inc b			;7888
	nop			;7889
	inc bc			;788a
	jp 0c103h		;788b
	ld (bc),a			;788e
	ret nz			;788f
	add a,l			;7890
	ret m			;7891
	ret p			;7892
	ret po			;7893
	ret nz			;7894
	add a,b			;7895
	inc bc			;7896
	nop			;7897
	ld b,0ffh		;7898
	add a,d			;789a
	cp 0fch		;789b
	ld b,007h		;789d
	add a,d			;789f
	ld b,004h		;78a0
	inc b			;78a2
	ret nz			;78a3
	add a,c			;78a4
	add a,b			;78a5
	ld a,a			;78a6
	nop			;78a7
	ld a,a			;78a8
	nop			;78a9
	dec e			;78aa
	nop			;78ab
	nop			;78ac
	ld a,a			;78ad
	nop			;78ae
	ld a,a			;78af
	nop			;78b0
	add hl,bc			;78b1
	nop			;78b2
	add a,c			;78b3
	jr nz,l78d6h		;78b4
	nop			;78b6
	ld (bc),a			;78b7
	jr nz,$+3		;78b8
	jr nc,l78bfh		;78ba
	jr c,$+56		;78bc
	nop			;78be
l78bfh:
	ld (bc),a			;78bf
	inc a			;78c0
	add a,h			;78c1
	inc e			;78c2
	ld c,006h		;78c3
	ld (bc),a			;78c5
	ld a,a			;78c6
	nop			;78c7
	ld a,a			;78c8
	nop			;78c9
l78cah:
	inc a			;78ca
	nop			;78cb
	nop			;78cc
	ld a,a			;78cd
	nop			;78ce
	ld a,a			;78cf
	nop			;78d0
	ld a,a			;78d1
	nop			;78d2
	add hl,de			;78d3
	nop			;78d4
l78d5h:
	add a,d			;78d5
l78d6h:
	rra			;78d6
	ccf			;78d7
	ld b,000h		;78d8
	add a,d			;78da
	rst 38h			;78db
	cp 007h		;78dc
	nop			;78de
	add a,c			;78df
	ld bc,00006h		;78e0
	ld (bc),a			;78e3
	ret po			;78e4
	ld b,000h		;78e5
	ld (bc),a			;78e7
	jr c,l78f0h		;78e8
	nop			;78ea
	add a,d			;78eb
	rlca			;78ec
	rrca			;78ed
	ld b,000h		;78ee
l78f0h:
	ld (bc),a			;78f0
	ccf			;78f1
	ld b,000h		;78f2
	add a,d			;78f4
	cp 0ffh		;78f5
	ld b,000h		;78f7
	ld (bc),a			;78f9
	jr c,l7902h		;78fa
	nop			;78fc
	add a,d			;78fd
	rlca			;78fe
	inc e			;78ff
	ld (bc),a			;7900
	nop			;7901
l7902h:
	add a,c			;7902
	ccf			;7903
	inc b			;7904
	inc c			;7905
	add a,c			;7906
	dec e			;7907
	ld (bc),a			;7908
	nop			;7909
	add a,c			;790a
	rst 38h			;790b
	inc b			;790c
	call z,0dc85h		;790d
	jr c,l7982h		;7910
	ld a,a			;7912
	ccf			;7913
	ld (bc),a			;7914
	nop			;7915
	add a,d			;7916
	ld a,a			;7917
	rst 38h			;7918
	ld (bc),a			;7919
	nop			;791a
l791bh:
	adc a,b			;791b
	call m,l0efeh		;791c
	inc e			;791f
	call m,038f8h		;7920
	ld (hl),b			;7923
	ld (bc),a			;7924
	ld a,a			;7925
	add a,h			;7926
	ret p			;7927
	ret po			;7928
	rst 38h			;7929
	ld a,a			;792a
	ld (bc),a			;792b
	nop			;792c
	add a,d			;792d
	cp 0fch		;792e
	ld (bc),a			;7930
	nop			;7931
	add a,e			;7932
	call m,038f8h		;7933
	inc bc			;7936
	ld (hl),b			;7937
	ld (bc),a			;7938
	ret po			;7939
	add a,d			;793a
	rst 38h			;793b
	ld a,a			;793c
	ld (bc),a			;793d
	nop			;793e
	sub h			;793f
	ld a,(hl)			;7940
	call m,l381ch		;7941
	ret m			;7944
	ret p			;7945
	inc bc			;7946
	rlca			;7947
	ld c,01dh		;7948
	dec sp			;794a
	ld (hl),b			;794b
	ret po			;794c
	ret nz			;794d
	ret p			;794e
	jr nc,l7989h		;794f
	ret m			;7951
	call m,0021ch		;7952
	ld c,003h		;7955
	ld a,h			;7957
	add a,e			;7958
	halt			;7959
	rst 30h			;795a
	rst 20h			;795b
	ld (bc),a			;795c
	ex (sp),hl			;795d
	adc a,b			;795e
	ld e,03eh		;795f
	ld a,(hl)			;7961
	xor 0deh		;7962
	call c,sub_1c9ch		;7964
	ld (bc),a			;7967
	ld (hl),b			;7968
	add a,e			;7969
	ld (hl),a			;796a
	ld (hl),e			;796b
	pop af			;796c
	inc bc			;796d
	ret po			;796e
	adc a,l			;796f
	rlca			;7970
	ld c,0feh		;7971
	call m,0e0c0h		;7973
	ld (hl),b			;7976
	jr c,l79f1h		;7977
	ld (hl),c			;7979
	ld (hl),a			;797a
	ld (hl),e			;797b
	pop af			;797c
	inc bc			;797d
	ret po			;797e
l797fh:
	adc a,b			;797f
l7980h:
	ld (hl),b			;7980
	ret nz			;7981
l7982h:
	nop			;7982
	add a,b			;7983
	ret nz			;7984
	ret po			;7985
	ld a,b			;7986
	inc e			;7987
	inc bc			;7988
l7989h:
	add hl,de			;7989
	add a,c			;798a
	dec sp			;798b
	inc bc			;798c
	inc sp			;798d
	add a,c			;798e
	rst 38h			;798f
	inc bc			;7990
	sbc a,b			;7991
	add a,c			;7992
	cp b			;7993
	inc bc			;7994
	jr nc,l791bh		;7995
	call m,sub_423ch		;7997
	sbc a,c			;799a
	ld (bc),a			;799b
	and c			;799c
	adc a,(hl)			;799d
	sbc a,c			;799e
	ld b,d			;799f
	inc a			;79a0
	ccf			;79a1
	ld a,a			;79a2
	ld h,b			;79a3
	ld a,(hl)			;79a4
	ccf			;79a5
	inc bc			;79a6
	ld a,a			;79a7
	ld a,(hl)			;79a8
	ccf			;79a9
	ld a,a			;79aa
	ld h,b			;79ab
	ld (bc),a			;79ac
	ld a,(hl)			;79ad
	add a,d			;79ae
	ld h,b			;79af
	ld a,a			;79b0
	ld (bc),a			;79b1
	ccf			;79b2
	add a,d			;79b3
	ld a,a			;79b4
	ld h,b			;79b5
	ld (bc),a			;79b6
	ld l,a			;79b7
	add a,e			;79b8
	ld h,e			;79b9
	ld a,a			;79ba
	ccf			;79bb
	ld (bc),a			;79bc
	inc e			;79bd
	add a,c			;79be
	ld a,002h		;79bf
	ld (hl),085h		;79c1
	ld h,e			;79c3
	ld l,a			;79c4
	rst 28h			;79c5
	nop			;79c6
	ld a,l			;79c7
	inc b			;79c8
	ld de,00003h		;79c9
	add a,e			;79cc
	djnz l797fh		;79cd
	ld d,b			;79cf
	ld (bc),a			;79d0
	djnz l79d5h		;79d1
	nop			;79d3
	nop			;79d4
l79d5h:
	dec b			;79d5
	ld a,c			;79d6
	or (hl)			;79d7
	ld a,c			;79d8
	ld a,h			;79d9
	ld a,d			;79da
	ld b,e			;79db
	ld a,e			;79dc
	or 07bh		;79dd
	xor a			;79df
	ld a,h			;79e0
	ld l,(hl)			;79e1
	ld a,l			;79e2
	inc (hl)			;79e3
	ld a,(hl)			;79e4
	dec b			;79e5
	ld a,c			;79e6
	or (hl)			;79e7
	ld a,c			;79e8
	ld a,h			;79e9
	ld a,d			;79ea
	ld b,e			;79eb
	ld a,e			;79ec
	or 07bh		;79ed
	xor a			;79ef
	ld a,h			;79f0
l79f1h:
	ld l,(hl)			;79f1
	ld a,l			;79f2
	inc (hl)			;79f3
	ld a,(hl)			;79f4
	dec b			;79f5
	ld a,c			;79f6
	or (hl)			;79f7
	ld a,c			;79f8
	ld a,h			;79f9
	ld a,d			;79fa
	ld b,e			;79fb
	ld a,e			;79fc
	or 07bh		;79fd
	xor a			;79ff
	ld a,h			;7a00
	ld l,(hl)			;7a01
	ld a,l			;7a02
	inc (hl)			;7a03
	ld a,(hl)			;7a04
	ld bc,08115h		;7a05
	inc b			;7a08
	dec b			;7a09
	inc bc			;7a0a
	inc d			;7a0b
	add hl,bc			;7a0c
	ld bc,08113h		;7a0d
	inc b			;7a10
	dec b			;7a11
	inc bc			;7a12
	ld d,009h		;7a13
	ld bc,l210fh+1		;7a15
	inc b			;7a18
	dec d			;7a19
	ld d,e			;7a1a
	ld e,019h		;7a1b
	ld bc,l01c8h		;7a1d
	ld c,021h		;7a20
	ex af,af'			;7a22
	dec d			;7a23
	inc de			;7a24
	rrca			;7a25
	rla			;7a26
	ld (de),a			;7a27
	rrca			;7a28
	ld d,013h		;7a29
	ld a,(bc)			;7a2b
	add hl,de			;7a2c
	ld hl,l1505h+1		;7a2d
	inc de			;7a30
	inc b			;7a31
	rla			;7a32
	ld (de),a			;7a33
	ld a,(bc)			;7a34
	jr $+1		;7a35
	ld de,00881h		;7a37
	dec b			;7a3a
	inc bc			;7a3b
	ld (de),a			;7a3c
	rlca			;7a3d
	ld b,d			;7a3e
	ld d,008h		;7a3f
	ld bc,l01c8h		;7a41
	dec bc			;7a44
	add a,c			;7a45
	ld b,005h		;7a46
	inc bc			;7a48
	ld de,l0109h		;7a49
	add hl,bc			;7a4c
	add a,c			;7a4d
	ld b,004h		;7a4e
	ld (bc),a			;7a50
	ld a,(bc)			;7a51
	ld b,003h		;7a52
	ld a,(bc)			;7a54
	add hl,bc			;7a55
	add a,c			;7a56
	dec b			;7a57
	inc b			;7a58
	ld (bc),a			;7a59
	dec bc			;7a5a
	ex af,af'			;7a5b
	ld bc,0810ah		;7a5c
	ex af,af'			;7a5f
	dec b			;7a60
	inc bc			;7a61
	ld a,(bc)			;7a62
	rlca			;7a63
	ld b,d			;7a64
	inc d			;7a65
	ex af,af'			;7a66
	ld bc,l01c8h		;7a67
	rrca			;7a6a
	ld hl,l1409h		;7a6b
	ld (de),a			;7a6e
	ld a,(bc)			;7a6f
	jr $+33		;7a70
	dec b			;7a72
	inc d			;7a73
	ld (de),a			;7a74
	ld a,(bc)			;7a75
	ld a,(de)			;7a76
	ld (bc),a			;7a77
	ld a,(bc)			;7a78
	ex af,af'			;7a79
	dec b			;7a7a
	rlca			;7a7b
	ld (bc),a			;7a7c
	rrca			;7a7d
	ex af,af'			;7a7e
	ld bc,l2112h		;7a7f
	add hl,bc			;7a82
	inc d			;7a83
	ld d,d			;7a84
	ld e,018h		;7a85
	ld bc,l01c8h		;7a87
	ld a,(bc)			;7a8a
	add a,c			;7a8b
	inc b			;7a8c
	inc b			;7a8d
	ld (bc),a			;7a8e
	ld a,(bc)			;7a8f
	ex af,af'			;7a90
	ld hl,l1404h		;7a91
	ld (de),a			;7a94
	ld a,(bc)			;7a95
	sub d			;7a96
	ld b,01ah		;7a97
	ld (bc),a			;7a99
	dec b			;7a9a
	ld (l0a06h),hl		;7a9b
	ld (de),a			;7a9e
	dec b			;7a9f
	ld d,013h		;7aa0
	ld a,(bc)			;7aa2
	add hl,de			;7aa3
	ld bc,08105h		;7aa4
	ld b,005h		;7aa7
	inc bc			;7aa9
	dec b			;7aaa
	rlca			;7aab
	ld (bc),a			;7aac
	inc b			;7aad
	ld (l0a06h),hl		;7aae
	ld d,d			;7ab1
	ld (de),a			;7ab2
	jr l7ab6h		;7ab3
	ret z			;7ab5
l7ab6h:
	ld bc,l2115h		;7ab6
	inc b			;7ab9
	dec d			;7aba
	inc de			;7abb
	inc d			;7abc
	add hl,de			;7abd
	ld bc,l210fh		;7abe
	inc b			;7ac1
	dec d			;7ac2
	inc de			;7ac3
	ld d,019h		;7ac4
	ld bc,08110h		;7ac6
	inc b			;7ac9
	dec b			;7aca
	ld b,e			;7acb
l7acch:
	ld e,009h		;7acc
	ld bc,l01c8h		;7ace
	dec bc			;7ad1
	ld hl,l1505h+1		;7ad2
	inc de			;7ad5
	ld de,l0119h		;7ad6
l7ad9h:
	add hl,bc			;7ad9
	ld hl,l1406h		;7ada
	ld (de),a			;7add
	ld a,(bc)			;7ade
	ld d,013h		;7adf
	ld a,(bc)			;7ae1
	add hl,de			;7ae2
	ld hl,l1405h		;7ae3
	ld (de),a			;7ae6
	dec bc			;7ae7
	jr l7aebh		;7ae8
	ld a,(bc)			;7aea
l7aebh:
	ld hl,01508h		;7aeb
	inc de			;7aee
	ld a,(bc)			;7aef
	rla			;7af0
	ld d,d			;7af1
	inc d			;7af2
	jr sub_7af6h		;7af3
	ret z			;7af5
sub_7af6h:
	ld bc,l210ah		;7af6
	inc b			;7af9
	dec d			;7afa
	inc de			;7afb
	add hl,bc			;7afc
	rla			;7afd
	ld (de),a			;7afe
	add hl,bc			;7aff
l7b00h:
	ld d,013h		;7b00
	add hl,bc			;7b02
	rla			;7b03
	ld (de),a			;7b04
	dec b			;7b05
	sub d			;7b06
	ld b,01ah		;7b07
	ld (bc),a			;7b09
	ex af,af'			;7b0a
	ld b,003h		;7b0b
	ex af,af'			;7b0d
	add hl,bc			;7b0e
	ld bc,08105h		;7b0f
	dec b			;7b12
	inc b			;7b13
	ld (bc),a			;7b14
	ex af,af'			;7b15
	ld (l0a06h),hl		;7b16
	ld (de),a			;7b19
	ld c,018h		;7b1a
	ld hl,l1406h		;7b1c
	ld d,d			;7b1f
	ld (de),a			;7b20
	ld d,019h		;7b21
	ld bc,l01c8h		;7b23
	ld a,(bc)			;7b26
	ld hl,l1406h		;7b27
	ld (de),a			;7b2a
	rrca			;7b2b
	jr $+33		;7b2c
	ld b,015h		;7b2e
	inc de			;7b30
	ld b,017h		;7b31
	ld (de),a			;7b33
	ld a,(bc)			;7b34
	jr $-127		;7b35
	inc b			;7b37
	inc b			;7b38
	ld (bc),a			;7b39
	dec bc			;7b3a
	ld (l0a06h),hl		;7b3b
	ld (de),a			;7b3e
	ld a,(bc)			;7b3f
	sub d			;7b40
	dec b			;7b41
	ld a,(de)			;7b42
	ld b,003h		;7b43
	ld a,(bc)			;7b45
	add hl,bc			;7b46
	add a,c			;7b47
	ex af,af'			;7b48
	inc b			;7b49
	ld b,d			;7b4a
	inc d			;7b4b
	ex af,af'			;7b4c
	ld bc,l01c8h		;7b4d
	ld a,(bc)			;7b50
	ld hl,l1404h		;7b51
	ld (de),a			;7b54
	rrca			;7b55
	jr l7ad9h		;7b56
	inc b			;7b58
	inc b			;7b59
	ld (bc),a			;7b5a
	ld a,(bc)			;7b5b
	ld (l0a06h),hl		;7b5c
	ld (de),a			;7b5f
	dec b			;7b60
	sub d			;7b61
	ld b,01ah		;7b62
	ld (bc),a			;7b64
	ex af,af'			;7b65
	ld b,003h		;7b66
	ld a,(bc)			;7b68
	add hl,bc			;7b69
	ld bc,l2105h		;7b6a
	ld b,015h		;7b6d
	inc de			;7b6f
	dec b			;7b70
	rla			;7b71
	ld (de),a			;7b72
	inc b			;7b73
	sub d			;7b74
	ld b,01ah		;7b75
	ld b,d			;7b77
	ld (de),a			;7b78
	ex af,af'			;7b79
	ld bc,l01c8h		;7b7a
	inc c			;7b7d
	add a,c			;7b7e
	ld b,005h		;7b7f
	inc bc			;7b81
	ld a,(bc)			;7b82
	rlca			;7b83
l7b84h:
	ld (bc),a			;7b84
	dec c			;7b85
	ld b,003h		;7b86
	ld a,(bc)			;7b88
	add hl,bc			;7b89
	add a,c			;7b8a
	ld b,005h		;7b8b
	inc bc			;7b8d
	ld b,007h		;7b8e
	ld (bc),a			;7b90
	ld a,(bc)			;7b91
	ex af,af'			;7b92
	ld bc,l210ch		;7b93
	ex af,af'			;7b96
	dec d			;7b97
	inc de			;7b98
	ld (de),a			;7b99
	rla			;7b9a
	ld d,d			;7b9b
	ld d,018h		;7b9c
	ld bc,l01c8h		;7b9e
	ld a,(bc)			;7ba1
	add a,c			;7ba2
	ld b,004h		;7ba3
	ld (bc),a			;7ba5
	rrca			;7ba6
	ex af,af'			;7ba7
	add a,c			;7ba8
	dec b			;7ba9
	inc b			;7baa
	ld (bc),a			;7bab
	dec b			;7bac
	ld (l0a06h),hl		;7bad
	ld (de),a			;7bb0
	ld a,(bc)			;7bb1
	jr l7bc9h		;7bb2
	rla			;7bb4
	ld (de),a			;7bb5
l7bb6h:
	rrca			;7bb6
	jr l7bbah		;7bb7
	rrca			;7bb9
l7bbah:
	add a,c			;7bba
	rlca			;7bbb
	inc b			;7bbc
	ld b,d			;7bbd
	rra			;7bbe
	ex af,af'			;7bbf
	ld bc,l01c8h		;7bc0
	ld a,(bc)			;7bc3
	add a,c			;7bc4
	inc b			;7bc5
	inc b			;7bc6
	ld (bc),a			;7bc7
	ld a,(bc)			;7bc8
l7bc9h:
	ex af,af'			;7bc9
	add a,c			;7bca
	ld b,005h		;7bcb
	inc bc			;7bcd
	inc b			;7bce
	rlca			;7bcf
	ld (bc),a			;7bd0
	ld a,(bc)			;7bd1
	ex af,af'			;7bd2
	ld hl,l1406h		;7bd3
	ld (de),a			;7bd6
	ld a,(bc)			;7bd7
	sub d			;7bd8
	ld b,01ah		;7bd9
	ld (bc),a			;7bdb
	dec b			;7bdc
	ld (l0a05h),hl		;7bdd
	ld d,013h		;7be0
	ld a,(bc)			;7be2
	add hl,de			;7be3
	ld hl,l1406h		;7be4
	ld d,d			;7be7
	inc d			;7be8
	jr l7bech		;7be9
	ret z			;7beb
l7bech:
	ld bc,0810fh		;7bec
	inc b			;7bef
	inc b			;7bf0
	ld (bc),a			;7bf1
	rrca			;7bf2
	ld (l0a05h),hl		;7bf3
	ld (de),a			;7bf6
	ld a,(bc)			;7bf7
	ld d,013h		;7bf8
	ld a,(bc)			;7bfa
	add hl,de			;7bfb
	add a,c			;7bfc
	dec b			;7bfd
	inc b			;7bfe
	ld (bc),a			;7bff
	dec b			;7c00
	ld a,(bc)			;7c01
	ld (de),a			;7c02
sub_7c03h:
	ld a,(bc)			;7c03
sub_7c04h:
	jr l7c07h		;7c04
sub_7c06h:
	ld a,(bc)			;7c06
l7c07h:
	ld hl,l1408h		;7c07
	ld (de),a			;7c0a
	ld a,(bc)			;7c0b
	sub d			;7c0c
	dec b			;7c0d
	ld a,(de)			;7c0e
	ld b,d			;7c0f
	inc d			;7c10
	ex af,af'			;7c11
	ld bc,l01c8h		;7c12
	ld a,(bc)			;7c15
	add a,c			;7c16
	inc b			;7c17
	dec b			;7c18
	inc bc			;7c19
	add hl,bc			;7c1a
	rlca			;7c1b
l7c1ch:
	ld (bc),a			;7c1c
	ex af,af'			;7c1d
	ld b,003h		;7c1e
	add hl,bc			;7c20
	rlca			;7c21
	ld (bc),a			;7c22
	ex af,af'			;7c23
l7c24h:
	ld (l0a06h),hl		;7c24
	ld (de),a			;7c27
	ex af,af'			;7c28
	ld d,013h		;7c29
	dec b			;7c2b
	add hl,de			;7c2c
	ld bc,l2105h		;7c2d
	dec b			;7c30
	inc d			;7c31
	ld (de),a			;7c32
	dec b			;7c33
	sub d			;7c34
	ld b,01ah		;7c35
	ld (bc),a			;7c37
	ld a,(bc)			;7c38
	ex af,af'			;7c39
	add a,c			;7c3a
	ld b,004h		;7c3b
	ld b,d			;7c3d
	ld (de),a			;7c3e
	ld b,009h		;7c3f
	ld bc,l01c8h		;7c41
	ld de,00881h		;7c44
	inc b			;7c47
	ld (bc),a			;7c48
	inc c			;7c49
	ld (l0a06h),hl		;7c4a
	ld (de),a			;7c4d
	inc d			;7c4e
	ld d,017h		;7c4f
	jr l7c54h		;7c51
	inc d			;7c53
l7c54h:
	add a,c			;7c54
	ex af,af'			;7c55
	dec b			;7c56
	inc bc			;7c57
	rrca			;7c58
	rlca			;7c59
	ld b,d			;7c5a
	ld e,008h		;7c5b
	ld bc,l01c8h		;7c5d
	rrca			;7c60
	ld hl,l1404h		;7c61
	ld (de),a			;7c64
	rrca			;7c65
	sub d			;7c66
	dec b			;7c67
	ld a,(de)			;7c68
	ld (bc),a			;7c69
	rrca			;7c6a
	ld b,003h		;7c6b
	ld a,(bc)			;7c6d
	add hl,bc			;7c6e
	ld hl,l1405h		;7c6f
	ld (de),a			;7c72
	dec b			;7c73
	ld a,(de)			;7c74
	ld (bc),a			;7c75
	ld a,(bc)			;7c76
	ex af,af'			;7c77
	ld bc,0810ah		;7c78
	ex af,af'			;7c7b
	inc b			;7c7c
	ld (bc),a			;7c7d
	ld a,(bc)			;7c7e
	ld (l0a05h),hl		;7c7f
sub_7c82h:
	ld d,d			;7c82
	inc d			;7c83
	jr l7c87h		;7c84
	ret z			;7c86
l7c87h:
	ld bc,l210ah		;7c87
	ld b,014h		;7c8a
	ld (de),a			;7c8c
	rrca			;7c8d
	jr l7cb1h		;7c8e
	ld b,015h		;7c90
	inc de			;7c92
	ld b,017h		;7c93
	ld (de),a			;7c95
	ld a,(bc)			;7c96
	jr $+1		;7c97
	djnz l7c1ch		;7c99
	inc b			;7c9b
	inc b			;7c9c
	ld (bc),a			;7c9d
	inc d			;7c9e
	ex af,af'			;7c9f
	ld bc,l210ch		;7ca0
	ex af,af'			;7ca3
	dec d			;7ca4
	ld d,e			;7ca5
	ld e,019h		;7ca6
	ld bc,l01c8h		;7ca8
	ld a,(de)			;7cab
	add a,c			;7cac
	inc b			;7cad
	inc b			;7cae
	ld (bc),a			;7caf
	inc de			;7cb0
l7cb1h:
	ld (l0a06h),hl		;7cb1
	ld (de),a			;7cb4
	add hl,de			;7cb5
	ld d,013h		;7cb6
	ld (de),a			;7cb8
	rla			;7cb9
	ld (de),a			;7cba
	ld (de),a			;7cbb
	sub d			;7cbc
	ld b,01ah		;7cbd
	ld (bc),a			;7cbf
	djnz l7cc8h		;7cc0
	ld b,e			;7cc2
	ld e,009h		;7cc3
	ld bc,l01c8h		;7cc5
l7cc8h:
	ld a,(bc)			;7cc8
	ld hl,01504h		;7cc9
	inc de			;7ccc
	add hl,bc			;7ccd
	rla			;7cce
	ld (de),a			;7ccf
	add hl,bc			;7cd0
	ld d,013h		;7cd1
	add hl,bc			;7cd3
	rla			;7cd4
	ld (de),a			;7cd5
	dec b			;7cd6
	sub d			;7cd7
	ld b,01ah		;7cd8
	ld (bc),a			;7cda
	ex af,af'			;7cdb
	ld b,003h		;7cdc
	ex af,af'			;7cde
	add hl,bc			;7cdf
	ld bc,08105h		;7ce0
	dec b			;7ce3
	inc b			;7ce4
	ld (bc),a			;7ce5
	ex af,af'			;7ce6
	ld (l0a06h),hl		;7ce7
	ld (de),a			;7cea
	ld c,018h		;7ceb
	ld hl,l1406h		;7ced
	ld d,d			;7cf0
	ld (de),a			;7cf1
	ld d,019h		;7cf2
	ld bc,l01c8h		;7cf4
sub_7cf7h:
	dec bc			;7cf7
	ld hl,l1505h+1		;7cf8
	inc de			;7cfb
	ld a,(bc)			;7cfc
	add hl,de			;7cfd
	ld bc,l2105h		;7cfe
	ld b,014h		;7d01
	ld (de),a			;7d03
	ld a,(bc)			;7d04
	ld d,013h		;7d05
	ld a,(bc)			;7d07
	add hl,de			;7d08
	ld hl,l1405h		;7d09
	ld (de),a			;7d0c
	dec bc			;7d0d
	jr l7d11h		;7d0e
	ld a,(bc)			;7d10
l7d11h:
	ld hl,01508h		;7d11
	inc de			;7d14
	ld a,(bc)			;7d15
	rla			;7d16
	ld d,d			;7d17
	inc d			;7d18
	jr l7d1ch		;7d19
	ret z			;7d1b
l7d1ch:
	ld bc,08111h		;7d1c
	rlca			;7d1f
	inc b			;7d20
	ld (bc),a			;7d21
	jr l7d46h		;7d22
	ld b,00ah		;7d24
	ld d,013h		;7d26
	inc d			;7d28
	add hl,de			;7d29
	ld bc,l210fh+1		;7d2a
	ex af,af'			;7d2d
	dec d			;7d2e
	inc de			;7d2f
	add hl,bc			;7d30
	rla			;7d31
	ld (de),a			;7d32
	ld c,092h		;7d33
	ld b,01ah		;7d35
	ld b,d			;7d37
	inc d			;7d38
	ex af,af'			;7d39
	ld bc,l01c8h		;7d3a
	rrca			;7d3d
	add a,c			;7d3e
	ld b,005h		;7d3f
	inc bc			;7d41
	rrca			;7d42
	rlca			;7d43
	ld (bc),a			;7d44
	rrca			;7d45
l7d46h:
	ld b,003h		;7d46
l7d48h:
	add hl,bc			;7d48
	add hl,bc			;7d49
	ld hl,l1405h		;7d4a
	ld (de),a			;7d4d
	dec b			;7d4e
	ld a,(de)			;7d4f
	ld (bc),a			;7d50
	dec b			;7d51
	ex af,af'			;7d52
	ld bc,l210bh		;7d53
	inc b			;7d56
	inc d			;7d57
	ld (de),a			;7d58
	add hl,bc			;7d59
	ld d,053h		;7d5a
	ld e,019h		;7d5c
	ld bc,l01c8h		;7d5e
	ld (de),a			;7d61
	add a,c			;7d62
	inc b			;7d63
	inc b			;7d64
l7d65h:
	ld (bc),a			;7d65
	ld (de),a			;7d66
	ld (l0a06h),hl		;7d67
	ld (de),a			;7d6a
	inc d			;7d6b
	ld d,013h		;7d6c
	ld a,(bc)			;7d6e
	rla			;7d6f
	ld (de),a			;7d70
	inc d			;7d71
	jr $-127		;7d72
l7d74h:
	ld b,004h		;7d74
	ld (bc),a			;7d76
	inc c			;7d77
	ld b,003h		;7d78
	ld a,(bc)			;7d7a
	rlca			;7d7b
	ld b,d			;7d7c
	inc d			;7d7d
	ex af,af'			;7d7e
	ld bc,l01c8h		;7d7f
	ld a,(bc)			;7d82
	add a,c			;7d83
	dec b			;7d84
	dec b			;7d85
	inc bc			;7d86
	ld a,(bc)			;7d87
	rlca			;7d88
	ld (bc),a			;7d89
	ld a,(bc)			;7d8a
	ld (l0a06h),hl		;7d8b
	ld (de),a			;7d8e
	dec b			;7d8f
	ld d,013h		;7d90
	dec b			;7d92
	add hl,de			;7d93
	ld bc,l2108h		;7d94
	inc b			;7d97
	inc d			;7d98
	ld (de),a			;7d99
	ld a,(bc)			;7d9a
	ld d,013h		;7d9b
	dec b			;7d9d
l7d9eh:
	rla			;7d9e
	ld (de),a			;7d9f
	rlca			;7da0
	sub d			;7da1
	ld b,01ah		;7da2
	ld (bc),a			;7da4
	ld a,(bc)			;7da5
	ex af,af'			;7da6
	ld hl,l1406h		;7da7
	ld d,d			;7daa
	ld (de),a			;7dab
	jr l7dafh		;7dac
	ret z			;7dae
l7dafh:
	ld bc,0810fh		;7daf
	ex af,af'			;7db2
	inc b			;7db3
	ld (bc),a			;7db4
	rrca			;7db5
	ld (l0a06h),hl		;7db6
	ld (de),a			;7db9
	inc d			;7dba
	ld d,017h		;7dbb
	jr l7dc0h		;7dbd
	inc d			;7dbf
l7dc0h:
	add a,c			;7dc0
	ex af,af'			;7dc1
	dec b			;7dc2
	inc bc			;7dc3
l7dc4h:
	rrca			;7dc4
	rlca			;7dc5
	ld b,d			;7dc6
	ld e,008h		;7dc7
	ld bc,l01c8h		;7dc9
	ld de,l0721h		;7dcc
	inc d			;7dcf
	ld (de),a			;7dd0
	jr l7d65h		;7dd1
	ld b,01ah		;7dd3
	ld b,003h		;7dd5
	inc d			;7dd7
	add hl,bc			;7dd8
	ld bc,08110h		;7dd9
	ex af,af'			;7ddc
	dec b			;7ddd
l7ddeh:
	inc bc			;7dde
	add hl,bc			;7ddf
	rlca			;7de0
	ld (bc),a			;7de1
	ld c,022h		;7de2
	ld b,00ah		;7de4
	ld d,d			;7de6
	inc d			;7de7
	jr l7debh		;7de8
	ret z			;7dea
l7debh:
	ld bc,l210dh		;7deb
	inc b			;7dee
	inc d			;7def
	ld (de),a			;7df0
	ld (de),a			;7df1
	sub d			;7df2
	ld b,01ah		;7df3
	ld (bc),a			;7df5
	inc d			;7df6
	ld b,003h		;7df7
	ld a,(bc)			;7df9
	rlca			;7dfa
	ld (bc),a			;7dfb
	inc d			;7dfc
	ex af,af'			;7dfd
	ld hl,l1406h		;7dfe
	ld (de),a			;7e01
	djnz $+22		;7e02
	inc de			;7e04
	ld a,(bc)			;7e05
	rla			;7e06
	ld d,d			;7e07
	inc d			;7e08
	jr l7e0ch		;7e09
	ret z			;7e0b
l7e0ch:
	ld bc,l2105h		;7e0c
	dec b			;7e0f
	inc d			;7e10
	ld (de),a			;7e11
	rlca			;7e12
	sub d			;7e13
	ld b,01ah		;7e14
	ld (bc),a			;7e16
	inc b			;7e17
	ld (l0a06h),hl		;7e18
	jr l7d9eh		;7e1b
	ld b,004h		;7e1d
	ld (bc),a			;7e1f
	dec b			;7e20
	ld b,003h		;7e21
	dec b			;7e23
	rlca			;7e24
	ld (bc),a			;7e25
	inc b			;7e26
	ld (l0a06h),hl		;7e27
	ld (de),a			;7e2a
	rlca			;7e2b
	jr l7e2fh		;7e2c
	inc b			;7e2e
l7e2fh:
	ld hl,01504h		;7e2f
	inc de			;7e32
	inc b			;7e33
	rla			;7e34
	ld (de),a			;7e35
	inc b			;7e36
	sub d			;7e37
	ld b,01ah		;7e38
	ld b,d			;7e3a
	inc d			;7e3b
	ld b,009h		;7e3c
	ld bc,l01c8h		;7e3e
	ld a,(bc)			;7e41
	ld hl,l1505h		;7e42
	inc de			;7e45
	dec b			;7e46
	rla			;7e47
	ld (de),a			;7e48
	ld a,(bc)			;7e49
	sub d			;7e4a
	ld b,01ah		;7e4b
	ld (bc),a			;7e4d
	dec b			;7e4e
	ld b,003h		;7e4f
	dec b			;7e51
	add hl,bc			;7e52
	ld bc,08105h		;7e53
	inc b			;7e56
	inc b			;7e57
	ld (bc),a			;7e58
	ld a,(bc)			;7e59
	ld b,003h		;7e5a
	dec b			;7e5c
	rlca			;7e5d
	ld (bc),a			;7e5e
	rlca			;7e5f
	ld (l0a06h),hl		;7e60
	ld (de),a			;7e63
	ld a,(bc)			;7e64
	jr l7e88h		;7e65
	ld b,014h		;7e67
	ld d,d			;7e69
	ld (de),a			;7e6a
	jr l7e6eh		;7e6b
	ret z			;7e6d
l7e6eh:
	ld bc,0810ah		;7e6e
	inc b			;7e71
	inc b			;7e72
	ld (bc),a			;7e73
	ld a,(bc)			;7e74
	ld b,003h		;7e75
	ld a,(bc)			;7e77
	add hl,bc			;7e78
	ld bc,l210ah		;7e79
	inc b			;7e7c
	inc d			;7e7d
	ld (de),a			;7e7e
	ld de,08118h		;7e7f
	ld b,004h		;7e82
	ld (bc),a			;7e84
	inc c			;7e85
	ld b,003h		;7e86
l7e88h:
	dec bc			;7e88
	rlca			;7e89
	ld b,d			;7e8a
	inc d			;7e8b
	ld b,003h		;7e8c
	ld a,(bc)			;7e8e
	add hl,bc			;7e8f
	ld bc,l01c8h		;7e90
	ld de,l0681h		;7e93
	inc b			;7e96
	ld (bc),a			;7e97
	rrca			;7e98
	ld b,003h		;7e99
	ld a,(bc)			;7e9b
	rlca			;7e9c
	ld (bc),a			;7e9d
	inc b			;7e9e
	ld (l0a06h),hl		;7e9f
	ld (de),a			;7ea2
	rlca			;7ea3
	sub d			;7ea4
	ld b,01ah		;7ea5
	ld (bc),a			;7ea7
	rrca			;7ea8
	ex af,af'			;7ea9
	ld bc,l210ch		;7eaa
	dec b			;7ead
	dec d			;7eae
	inc de			;7eaf
	add hl,bc			;7eb0
	rla			;7eb1
	ld d,d			;7eb2
	inc d			;7eb3
	ld d,013h		;7eb4
	ld a,(bc)			;7eb6
	add hl,de			;7eb7
	ld bc,l01c8h		;7eb8
	ld a,(bc)			;7ebb
	add a,c			;7ebc
	ld b,005h		;7ebd
	inc bc			;7ebf
	rrca			;7ec0
	rlca			;7ec1
l7ec2h:
	ld (bc),a			;7ec2
	rrca			;7ec3
	ld b,003h		;7ec4
l7ec6h:
	dec b			;7ec6
	add hl,bc			;7ec7
	ld hl,l1405h		;7ec8
	ld (de),a			;7ecb
	ex af,af'			;7ecc
	ld a,(de)			;7ecd
	ld (bc),a			;7ece
	ld a,(bc)			;7ecf
	ex af,af'			;7ed0
	ld bc,l210bh		;7ed1
	inc b			;7ed4
	inc d			;7ed5
	ld (de),a			;7ed6
	add hl,bc			;7ed7
	ld d,053h		;7ed8
	ld e,019h		;7eda
	ld bc,l01c8h		;7edc
	ld a,(bc)			;7edf
	add a,c			;7ee0
	dec b			;7ee1
	dec b			;7ee2
	inc bc			;7ee3
	ld a,(bc)			;7ee4
	rlca			;7ee5
	ld (bc),a			;7ee6
	ld a,(bc)			;7ee7
	ld (l0a06h),hl		;7ee8
	ld (de),a			;7eeb
	dec b			;7eec
	ld d,013h		;7eed
	dec b			;7eef
	add hl,de			;7ef0
	ld bc,l2108h		;7ef1
	inc b			;7ef4
	inc d			;7ef5
	ld (de),a			;7ef6
	ld a,(bc)			;7ef7
	ld d,013h		;7ef8
	dec b			;7efa
	rla			;7efb
	ld (de),a			;7efc
	rlca			;7efd
sub_7efeh:
	sub d			;7efe
	ld b,01ah		;7eff
	ld (bc),a			;7f01
	ld a,(bc)			;7f02
	ex af,af'			;7f03
	ld hl,l1406h		;7f04
	ld d,d			;7f07
	ld (de),a			;7f08
	jr l7f0ch		;7f09
	ret z			;7f0b
l7f0ch:
	ld bc,l2112h		;7f0c
	ld b,014h		;7f0f
	ld (de),a			;7f11
	ld c,016h		;7f12
	inc de			;7f14
l7f15h:
	ld a,(bc)			;7f15
	rla			;7f16
	ld (de),a			;7f17
	inc b			;7f18
	sub d			;7f19
	ld b,01ah		;7f1a
	ld (bc),a			;7f1c
l7f1dh:
	inc b			;7f1d
	ld (l0a06h),hl		;7f1e
	ld (de),a			;7f21
	rrca			;7f22
	jr $+1		;7f23
	ld c,081h		;7f25
	dec b			;7f27
	dec b			;7f28
	inc bc			;7f29
	add hl,bc			;7f2a
	rlca			;7f2b
	ld b,d			;7f2c
	inc d			;7f2d
	ld b,003h		;7f2e
	ld a,(bc)			;7f30
	add hl,bc			;7f31
	ld bc,l01c8h		;7f32
	dec b			;7f35
	ld hl,l1405h		;7f36
	ld (de),a			;7f39
	rlca			;7f3a
	sub d			;7f3b
	ld b,01ah		;7f3c
	ld (bc),a			;7f3e
l7f3fh:
	inc b			;7f3f
l7f40h:
	ld (l0a06h),hl		;7f40
	jr l7ec6h		;7f43
	ld b,004h		;7f45
	ld (bc),a			;7f47
l7f48h:
	dec b			;7f48
	ld b,003h		;7f49
	dec b			;7f4b
	rlca			;7f4c
	ld (bc),a			;7f4d
	inc b			;7f4e
	ld (l0a06h),hl		;7f4f
	ld (de),a			;7f52
	rlca			;7f53
	jr l7f57h		;7f54
	inc b			;7f56
l7f57h:
	ld hl,01504h		;7f57
	inc de			;7f5a
	inc b			;7f5b
	rla			;7f5c
	ld (de),a			;7f5d
	inc b			;7f5e
	sub d			;7f5f
	ld b,01ah		;7f60
	ld b,d			;7f62
	inc d			;7f63
	ld b,009h		;7f64
	ld bc,l01c8h		;7f66
	ld a,(bc)			;7f69
	ld hl,l1505h		;7f6a
	inc de			;7f6d
	dec b			;7f6e
	rla			;7f6f
	ld (de),a			;7f70
	ld a,(bc)			;7f71
	sub d			;7f72
	ld b,01ah		;7f73
	ld (bc),a			;7f75
	dec b			;7f76
	ld b,003h		;7f77
	dec b			;7f79
	add hl,bc			;7f7a
	ld bc,08105h		;7f7b
	inc b			;7f7e
	inc b			;7f7f
l7f80h:
	ld (bc),a			;7f80
	ld a,(bc)			;7f81
	ld b,003h		;7f82
	dec b			;7f84
	rlca			;7f85
	ld (bc),a			;7f86
	rlca			;7f87
	ld (l0a06h),hl		;7f88
	ld (de),a			;7f8b
	ld a,(bc)			;7f8c
	jr l7fb0h		;7f8d
	ld b,014h		;7f8f
	ld d,d			;7f91
	ld (de),a			;7f92
	jr l7f96h		;7f93
	ret z			;7f95
l7f96h:
	ld bc,l210ah		;7f96
	ld b,015h		;7f99
	inc de			;7f9b
	ld b,017h		;7f9c
	ld (de),a			;7f9e
	ld a,(bc)			;7f9f
	ld d,013h		;7fa0
	dec b			;7fa2
	add hl,de			;7fa3
	add a,c			;7fa4
	dec b			;7fa5
	inc b			;7fa6
	ld (bc),a			;7fa7
	dec b			;7fa8
	ld a,(bc)			;7fa9
l7faah:
	ld (de),a			;7faa
	dec b			;7fab
	jr l7fafh		;7fac
	ld a,(bc)			;7fae
l7fafh:
	add a,c			;7faf
l7fb0h:
	inc b			;7fb0
	inc b			;7fb1
	ld (bc),a			;7fb2
	dec b			;7fb3
	ld b,043h		;7fb4
	ld e,009h		;7fb6
	ld bc,l01c8h		;7fb8
	ld a,(bc)			;7fbb
	add a,c			;7fbc
	inc b			;7fbd
	dec b			;7fbe
	inc bc			;7fbf
	add hl,bc			;7fc0
	rlca			;7fc1
	ld (bc),a			;7fc2
	ex af,af'			;7fc3
	ld b,003h		;7fc4
	add hl,bc			;7fc6
	rlca			;7fc7
	ld (bc),a			;7fc8
	ex af,af'			;7fc9
	ld (l0a06h),hl		;7fca
	ld (de),a			;7fcd
	ex af,af'			;7fce
	ld d,013h		;7fcf
	dec b			;7fd1
	add hl,de			;7fd2
	ld bc,l2105h		;7fd3
	dec b			;7fd6
	inc d			;7fd7
	ld (de),a			;7fd8
	dec b			;7fd9
	sub d			;7fda
	ld b,01ah		;7fdb
	ld (bc),a			;7fdd
	ld a,(bc)			;7fde
	ex af,af'			;7fdf
	add a,c			;7fe0
	ld b,004h		;7fe1
	ld b,d			;7fe3
	ld (de),a			;7fe4
	ld b,009h		;7fe5
	ld bc,l01c8h		;7fe7
	dec b			;7fea
	add a,c			;7feb
	dec b			;7fec
	inc b			;7fed
	ld (bc),a			;7fee
	rlca			;7fef
	ld (l0a06h),hl		;7ff0
	ld (de),a			;7ff3
	dec b			;7ff4
	sub d			;7ff5
	ld b,01ah		;7ff6
sub_7ff8h:
	ex af,af'			;7ff8
	ld hl,l1406h		;7ff9
	ld (de),a			;7ffc
	dec b			;7ffd
	ld d,013h		;7ffe
l8000h:
	dec b			;8000
	rla			;8001
l8002h:
	ld (de),a			;8002
l8003h:
	inc b			;8003
sub_8004h:
	sub d			;8004
	ld b,01ah		;8005
	ld (bc),a			;8007
sub_8008h:
	rlca			;8008
	ex af,af'			;8009
sub_800ah:
	ld bc,08104h		;800a
	inc b			;800d
l800eh:
	dec b			;800e
	inc bc			;800f
	inc b			;8010
	rlca			;8011
	ld (bc),a			;8012
	inc b			;8013
	ld (l0a06h),hl		;8014
	ld d,d			;8017
	inc d			;8018
	ld d,019h		;8019
	ld bc,l31c8h		;801b
	nop			;801e
	call nz,00021h		;801f
	ret nz			;8022
	ld de,0c001h		;8023
	ld bc,l03ffh+1		;8026
	ld (hl),000h		;8029
	ldir		;802b
	call l412fh+2		;802d
	call 007feh		;8030
	ld a,002h		;8033
	out (0bfh),a		;8035
	ld a,080h		;8037
	out (0bfh),a		;8039
	ld a,0e2h		;803b
	out (0bfh),a		;803d
	ld a,081h		;803f
	out (0bfh),a		;8041
	ld a,08ah		;8043
	ld (0c100h),a		;8045
	ei			;8048
	rst 8			;8049
	jp l7f48h		;804a
	rst 38h			;804d
	rst 38h			;804e
	rst 38h			;804f
l8050h:
	rst 38h			;8050
	rst 38h			;8051
	rst 38h			;8052
	rst 38h			;8053
	rst 38h			;8054
	rst 38h			;8055
	rst 38h			;8056
	rst 38h			;8057
	rst 38h			;8058
	rst 38h			;8059
	rst 38h			;805a
	rst 38h			;805b
	rst 38h			;805c
	rst 38h			;805d
	rst 38h			;805e
	rst 38h			;805f
l8060h:
	rst 38h			;8060
	rst 38h			;8061
	rst 38h			;8062
	rst 38h			;8063
	rst 38h			;8064
	rst 38h			;8065
	rst 38h			;8066
	rst 38h			;8067
	rst 38h			;8068
	rst 38h			;8069
	rst 38h			;806a
	rst 38h			;806b
	rst 38h			;806c
	rst 38h			;806d
	rst 38h			;806e
	rst 38h			;806f
	rst 38h			;8070
	rst 38h			;8071
	rst 38h			;8072
	rst 38h			;8073
	rst 38h			;8074
	rst 38h			;8075
	rst 38h			;8076
	rst 38h			;8077
	rst 38h			;8078
	rst 38h			;8079
	rst 38h			;807a
	rst 38h			;807b
	rst 38h			;807c
	rst 38h			;807d
	rst 38h			;807e
	rst 38h			;807f
	rst 38h			;8080
	rst 38h			;8081
sub_8082h:
	rst 38h			;8082
	rst 38h			;8083
	rst 38h			;8084
	rst 38h			;8085
	rst 38h			;8086
	rst 38h			;8087
sub_8088h:
	rst 38h			;8088
	rst 38h			;8089
	rst 38h			;808a
	rst 38h			;808b
	rst 38h			;808c
	rst 38h			;808d
	rst 38h			;808e
	rst 38h			;808f
	rst 38h			;8090
	rst 38h			;8091
	rst 38h			;8092
	rst 38h			;8093
	rst 38h			;8094
	rst 38h			;8095
	rst 38h			;8096
	rst 38h			;8097
	rst 38h			;8098
	rst 38h			;8099
	rst 38h			;809a
	rst 38h			;809b
	rst 38h			;809c
	rst 38h			;809d
	rst 38h			;809e
	rst 38h			;809f
	rst 38h			;80a0
	rst 38h			;80a1
	rst 38h			;80a2
	rst 38h			;80a3
	rst 38h			;80a4
	rst 38h			;80a5
	rst 38h			;80a6
	rst 38h			;80a7
	rst 38h			;80a8
	rst 38h			;80a9
	rst 38h			;80aa
	rst 38h			;80ab
	rst 38h			;80ac
	rst 38h			;80ad
	rst 38h			;80ae
	rst 38h			;80af
	rst 38h			;80b0
	rst 38h			;80b1
	rst 38h			;80b2
	rst 38h			;80b3
	rst 38h			;80b4
	rst 38h			;80b5
	rst 38h			;80b6
	rst 38h			;80b7
	rst 38h			;80b8
	rst 38h			;80b9
	rst 38h			;80ba
	rst 38h			;80bb
	rst 38h			;80bc
	rst 38h			;80bd
l80beh:
	rst 38h			;80be
	rst 38h			;80bf
	rst 38h			;80c0
	rst 38h			;80c1
	rst 38h			;80c2
	rst 38h			;80c3
	rst 38h			;80c4
	rst 38h			;80c5
	rst 38h			;80c6
	rst 38h			;80c7
	rst 38h			;80c8
	rst 38h			;80c9
	rst 38h			;80ca
	rst 38h			;80cb
	rst 38h			;80cc
	rst 38h			;80cd
	rst 38h			;80ce
	rst 38h			;80cf
	rst 38h			;80d0
	rst 38h			;80d1
	rst 38h			;80d2
	rst 38h			;80d3
	rst 38h			;80d4
	rst 38h			;80d5
	rst 38h			;80d6
	rst 38h			;80d7
	rst 38h			;80d8
	rst 38h			;80d9
	rst 38h			;80da
	rst 38h			;80db
	rst 38h			;80dc
	rst 38h			;80dd
	rst 38h			;80de
	rst 38h			;80df
	rst 38h			;80e0
	rst 38h			;80e1
	rst 38h			;80e2
	rst 38h			;80e3
	rst 38h			;80e4
	rst 38h			;80e5
	rst 38h			;80e6
	rst 38h			;80e7
	rst 38h			;80e8
	rst 38h			;80e9
l80eah:
	rst 38h			;80ea
	ld c,b			;80eb
	ld l,04fh		;80ec
l80eeh:
	jr nz,$+83		;80ee
l80f0h:
	ld b,l			;80f0
	ld d,b			;80f1
l80f2h:
	ld l,020h		;80f2
l80f4h:
	ld sp,l2031h		;80f4
	ld sp,l3839h		;80f7
	dec (hl)			;80fa
	jr nz,l80ffh		;80fb
	dec b			;80fd
	nop			;80fe
l80ffh:
	inc a			;80ff
