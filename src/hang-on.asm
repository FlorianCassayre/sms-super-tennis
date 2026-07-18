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
l0006h:
	jr init		;0006
l0008h:
	ei			;0008
l0009h:
	ld hl,0c002h		;0009
loop_splash:
	ld a,(hl)			;000c
	or a			;000d
l000eh:
	jr z,loop_splash		;000e
l0010h:
	xor a			;0010
l0011h:
	ld (hl),a			;0011
l0012h:
	ld (0c02dh),a		;0012
	ret			;0015
	ld c,b			;0016
	ld c,a			;0017
sub_0018h:
	ld a,l			;0018
	out (0bfh),a		;0019
l001bh:
	ld a,h			;001b
	out (0bfh),a		;001c
	ret			;001e
l001fh:
	rst 38h			;001f
l0020h:
	ex de,hl			;0020
sub_0021h:
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
l0109h:
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
sub_021ch:
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
sub_023eh:
	ld a,(0c4c0h)		;023e
	add a,031h		;0241
l0243h:
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
l0281h:
	inc hl			;0281
l0282h:
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
sub_02f8h:
	djnz l02efh		;02f8
	ld c,0f0h		;02fa
	dec d			;02fc
l02fdh:
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
l0321h:
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
l0382h:
	jr c,l0393h		;0382
l0384h:
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
l03c7h:
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
l0402h:
	xor a			;0402
l0403h:
	ld (hl),a			;0403
	ld (0c015h),a		;0404
	call sub_06cch		;0407
	di			;040a
	call sub_069ah		;040b
	ld hl,l04d8h		;040e
l0411h:
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
l0480h:
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
.DB $50 $55 $53 $48 $20 $53 $54 $41 $52 $54 $20 $42 $55 $54 $54 $4F $4E ; "PUSH START BUTTON"			;04fd
	nop			;050e
	add hl,bc			;050f
	ld c,h			;0510
	ld b,l			;0511
	ld d,(hl)			;0512
	ld b,l			;0513
	ld c,h			;0514
	nop			;0515
	add hl,bc			;0516
	ld c,b			;0517
	ld c,c			;0518
	dec sp			;0519
	ld d,e			;051a
	ld b,e			;051b
	ld c,a			;051c
	ld d,d			;051d
	ld b,l			;051e
	nop			;051f
	add hl,bc			;0520
	ld c,a			;0521
	ld d,d			;0522
	ld c,c			;0523
	ld b,a			;0524
	ld c,c			;0525
	ld c,(hl)			;0526
	ld b,c			;0527
	ld c,h			;0528
	jr nz,l0572h		;0529
	ld b,c			;052b
	ld c,l			;052c
	ld b,l			;052d
	jr nz,l04deh		;052e
	jr nz,$-81		;0530
	or b			;0532
	or c			;0533
	or d			;0534
	nop			;0535
	add hl,bc			;0536
	ld d,d			;0537
	ld b,l			;0538
	ld d,b			;0539
	ld d,d			;053a
	ld c,a			;053b
	ld b,a			;053c
	ld d,d			;053d
	ld b,c			;053e
	ld c,l			;053f
	ld c,l			;0540
	ld b,l			;0541
	ld b,h			;0542
	jr nz,l058ch		;0543
	ld b,c			;0545
	ld c,l			;0546
	ld b,l			;0547
	jr nz,$-82		;0548
	jr nz,l04fbh		;054a
	or b			;054c
	or c			;054d
	or d			;054e
	nop			;054f
	ld bc,l3931h		;0550
	jr c,l058ah		;0553
	nop			;0555
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
l057fh:
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
sub_05feh:
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
l0673h:
	call sub_0646h		;0673
	ex de,hl			;0676
	inc hl			;0677
	inc de			;0678
	dec bc			;0679
	ld a,b			;067a
	or c			;067b
sub_067ch:
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
l0702h:
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
l0720h:
	ex af,af'			;0720
l0721h:
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
l0779h:
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
l078eh:
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
l0804h:
	ld a,d			;0804
	or e			;0805
sub_0806h:
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
l0881h:
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
l08c1h:
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
l09cbh:
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
l0a06h:
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
l0a18h:
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
sub_0bf0h:
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
l0c82h:
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
sub_0d02h:
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
l0d20h:
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
.DB $01 $01 $05
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
sub_0fdfh:
	cp 006h		;0fdf
	jr z,l0fe9h		;0fe1
	dec a			;0fe3
	jr z,l0fe9h		;0fe4
	ld de,0fee3h		;0fe6
l0fe9h:
	ld hl,(0c31ah)		;0fe9
	add hl,de			;0fec
	jr nc,l0ff2h		;0fed
sub_0fefh:
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
l1020h:
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
l10a0h:
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
l1102h:
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
sub_1114h:
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
sub_1174h:
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
l1218h:
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
sub_1270h:
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
l128ch:
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
l1405h:
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
l1506h:
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
sub_167ch:
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
l1713h:
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
l1900h:
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
sub_1a1ch:
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
sub_1c9ch:
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
l1f07h:
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
sub_1f3fh:
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
l203fh:
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
l2078h:
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
l2105h:
	ld b,006h		;2105
	dec b			;2107
l2108h:
	dec b			;2108
	dec b			;2109
l210ah:
	inc b			;210a
l210bh:
	inc b			;210b
l210ch:
	inc b			;210c
l210dh:
	inc bc			;210d
	inc bc			;210e
l210fh:
	inc bc			;210f
l2110h:
	ld (bc),a			;2110
	ld (bc),a			;2111
l2112h:
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
l218bh:
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
l21e7h:
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
l21ffh:
	jr z,l2227h		;21ff
	dec h			;2201
l2202h:
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
l2390h:
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
l2811h:
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
l2981h:
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
l301fh:
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
l3082h:
	ld a,b			;3082
	ld a,b			;3083
	ld a,b			;3084
	ld a,b			;3085
	ld a,b			;3086
	ld a,b			;3087
l3088h:
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
l31c8h:
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
l3202h:
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
l3830h:
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
l3901h:
	ld d,h			;3901
	ld e,l			;3902
l3903h:
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
l3981h:
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
sub_3b76h:
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
l3c18h:
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
l3c66h:
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
	ld b,a			;3ec1
	ld b,c			;3ec2
	ld c,l			;3ec3
	ld b,l			;3ec4
	jr nz,l3f16h		;3ec5
	ld d,(hl)			;3ec7
	ld b,l			;3ec8
	ld d,d			;3ec9
	nop			;3eca
	ld b,e			;3ecb
	ld c,a			;3ecc
	ld c,(hl)			;3ecd
	ld b,a			;3ece
	ld d,d			;3ecf
	ld b,c			;3ed0
	ld d,h			;3ed1
	ld d,l			;3ed2
	ld c,h			;3ed3
	ld b,c			;3ed4
	ld d,h			;3ed5
	ld c,c			;3ed6
	ld c,a			;3ed7
	ld c,(hl)			;3ed8
	ld d,e			;3ed9
	ld a,(04300h)		;3eda
	ld c,b			;3edd
	ld b,c			;3ede
	ld c,h			;3edf
	ld c,h			;3ee0
	ld b,l			;3ee1
	ld c,(hl)			;3ee2
	ld b,a			;3ee3
	ld b,l			;3ee4
	jr nz,l3f3bh		;3ee5
	ld c,b			;3ee7
	ld b,l			;3ee8
	jr nz,l3f39h		;3ee9
	ld b,l			;3eeb
	ld e,b			;3eec
	ld d,h			;3eed
	jr nz,l3f33h		;3eee
	ld c,a			;3ef0
	ld d,l			;3ef1
	ld d,d			;3ef2
	ld d,e			;3ef3
	ld b,l			;3ef4
	nop			;3ef5
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
l3f7eh:
	ld b,e			;3f7e
l3f7fh:
	ld c,c			;3f7f
l3f80h:
	ld d,d			;3f80
sub_3f81h:
	ld b,e			;3f81
sub_3f82h:
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
sub_423ch:
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
l4363h:
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
l4381h:
	nop			;4381
l4382h:
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
l4683h:
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
l4955h:
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
	rst 38h			;5000
l5001h:
	ld (bc),a			;5001
	nop			;5002
	add a,d			;5003
	rst 38h			;5004
	nop			;5005
	ld (bc),a			;5006
	rst 38h			;5007
	add a,d			;5008
	nop			;5009
	ret m			;500a
	ld (bc),a			;500b
	nop			;500c
	add a,e			;500d
	ret po			;500e
	nop			;500f
	add a,b			;5010
	ld b,000h		;5011
	add a,l			;5013
	ex af,af'			;5014
	nop			;5015
	ex af,af'			;5016
	nop			;5017
	ex af,af'			;5018
	inc b			;5019
	rst 38h			;501a
	adc a,b			;501b
	cp 0fch		;501c
	ret m			;501e
	rst 38h			;501f
	ret p			;5020
	ret po			;5021
	ret nz			;5022
	add a,b			;5023
	inc bc			;5024
	nop			;5025
	adc a,c			;5026
	add a,b			;5027
	nop			;5028
	ex af,af'			;5029
	nop			;502a
	ex af,af'			;502b
	nop			;502c
	ex af,af'			;502d
	nop			;502e
	ex af,af'			;502f
	inc b			;5030
	rst 38h			;5031
	sub h			;5032
	call m,0f0ffh		;5033
	rst 38h			;5036
	ret po			;5037
	cp 000h		;5038
	ret m			;503a
	nop			;503b
	ret po			;503c
	nop			;503d
	add a,b			;503e
	nop			;503f
	jr l5042h		;5040
l5042h:
	jr l5044h		;5042
l5044h:
	jr l5046h		;5044
l5046h:
	jr l504ah		;5046
	rst 38h			;5048
	add a,c			;5049
l504ah:
	cp 002h		;504a
	rst 38h			;504c
	add a,d			;504d
	ret p			;504e
	ret nz			;504f
	ld (bc),a			;5050
	rst 38h			;5051
	ld (bc),a			;5052
	nop			;5053
	add a,d			;5054
	ret m			;5055
	ret p			;5056
	ld (bc),a			;5057
	nop			;5058
	add a,d			;5059
	add a,b			;505a
	inc e			;505b
	ld (bc),a			;505c
	nop			;505d
	ld (bc),a			;505e
	inc e			;505f
	ld (bc),a			;5060
	nop			;5061
	add a,h			;5062
	inc e			;5063
	rst 38h			;5064
	cp 0fch		;5065
	ld (bc),a			;5067
	rst 38h			;5068
	add a,h			;5069
	ret nz			;506a
	add a,b			;506b
	nop			;506c
	rst 38h			;506d
	ld (bc),a			;506e
	nop			;506f
	add a,d			;5070
	ret m			;5071
	ret p			;5072
	inc bc			;5073
	nop			;5074
	add a,c			;5075
	inc e			;5076
	ld (bc),a			;5077
	nop			;5078
	ld (bc),a			;5079
	inc e			;507a
	inc bc			;507b
	nop			;507c
	dec bc			;507d
	rst 38h			;507e
	add a,e			;507f
	ret po			;5080
	ret nz			;5081
	add a,b			;5082
	inc bc			;5083
	rst 38h			;5084
	add a,d			;5085
	cp 0fch		;5086
	inc bc			;5088
	nop			;5089
	add a,d			;508a
	ret nz			;508b
	add a,b			;508c
	inc bc			;508d
	inc a			;508e
	inc bc			;508f
	nop			;5090
	ld (bc),a			;5091
	inc a			;5092
	add hl,bc			;5093
	rst 38h			;5094
	add a,h			;5095
	ret p			;5096
	ret po			;5097
	ret nz			;5098
	add a,b			;5099
	inc b			;509a
	rst 38h			;509b
	inc b			;509c
	nop			;509d
	add a,h			;509e
	ret po			;509f
	ret nz			;50a0
	add a,b			;50a1
	inc a			;50a2
	inc b			;50a3
	nop			;50a4
	inc bc			;50a5
	inc a			;50a6
	inc b			;50a7
	rst 38h			;50a8
	add a,c			;50a9
	cp 004h		;50aa
	rst 38h			;50ac
	add a,h			;50ad
	ret po			;50ae
	ret nz			;50af
	add a,b			;50b0
	nop			;50b1
	inc b			;50b2
	rst 38h			;50b3
	inc b			;50b4
	nop			;50b5
	add a,e			;50b6
	ret po			;50b7
	ret nz			;50b8
	add a,b			;50b9
	ex af,af'			;50ba
	nop			;50bb
	add a,c			;50bc
	ld a,004h		;50bd
	nop			;50bf
	inc bc			;50c0
	ld a,003h		;50c1
	rst 38h			;50c3
	add a,e			;50c4
	cp 0fch		;50c5
	ret m			;50c7
	inc bc			;50c8
	rst 38h			;50c9
	add a,c			;50ca
	ret nz			;50cb
	inc b			;50cc
	nop			;50cd
	inc bc			;50ce
	rst 38h			;50cf
	dec b			;50d0
	nop			;50d1
	add a,e			;50d2
	ret nz			;50d3
	add a,b			;50d4
	ld a,(hl)			;50d5
	dec b			;50d6
	nop			;50d7
	ld (bc),a			;50d8
	ld a,(hl)			;50d9
	inc b			;50da
	rst 38h			;50db
	add a,h			;50dc
	ret m			;50dd
	ret p			;50de
	ret nz			;50df
	add a,b			;50e0
	inc b			;50e1
	rst 38h			;50e2
	inc b			;50e3
	nop			;50e4
	add a,h			;50e5
	rst 38h			;50e6
	cp 0fch		;50e7
	ret m			;50e9
	inc b			;50ea
	nop			;50eb
	inc b			;50ec
	ld a,(hl)			;50ed
	inc b			;50ee
	nop			;50ef
	add a,d			;50f0
	rst 38h			;50f1
	cp 006h		;50f2
	rst 38h			;50f4
	ld (bc),a			;50f5
	nop			;50f6
	ld b,0ffh		;50f7
	ld (bc),a			;50f9
	nop			;50fa
	add a,(hl)			;50fb
	call m,0f0f8h		;50fc
	ret po			;50ff
	ret nz			;5100
	add a,b			;5101
	ld (bc),a			;5102
	nop			;5103
	ld b,07eh		;5104
	ld a,a			;5106
	nop			;5107
	ld a,a			;5108
	nop			;5109
	ld a,a			;510a
	nop			;510b
	ld a,a			;510c
	nop			;510d
	dec d			;510e
	nop			;510f
	add a,c			;5110
	inc a			;5111
	ld (bc),a			;5112
	ld a,d			;5113
	add a,(hl)			;5114
	inc a			;5115
	nop			;5116
	inc a			;5117
	ld a,d			;5118
	nop			;5119
	inc a			;511a
	ld (bc),a			;511b
	ld a,d			;511c
	add a,(hl)			;511d
	inc a			;511e
	nop			;511f
	inc a			;5120
	ld a,d			;5121
	nop			;5122
	inc a			;5123
	ld (bc),a			;5124
	ld a,d			;5125
	add a,h			;5126
	inc a			;5127
	nop			;5128
	inc a			;5129
	ld a,d			;512a
	ex af,af'			;512b
	nop			;512c
	inc bc			;512d
	ret po			;512e
	inc bc			;512f
	rst 38h			;5130
	add a,l			;5131
	call m,007f8h		;5132
	inc bc			;5135
	ld bc,0f803h		;5136
	add a,d			;5139
	jr c,l5154h		;513a
	ld b,0f0h		;513c
	add a,d			;513e
	ret m			;513f
	call m,sub_0806h		;5140
	sub d			;5143
	jr l517eh		;5144
	di			;5146
	ret p			;5147
	rst 30h			;5148
	ret p			;5149
	rst 30h			;514a
	ret p			;514b
	ei			;514c
	call m,l08c8h		;514d
	ret pe			;5150
	ex af,af'			;5151
	ret pe			;5152
	ex af,af'			;5153
l5154h:
	ret c			;5154
	jr c,l5159h		;5155
	rst 38h			;5157
	add a,d			;5158
l5159h:
	call m,004f8h		;5159
	ret p			;515c
	ld (bc),a			;515d
	ret m			;515e
	add a,d			;515f
	jr c,l517ah		;5160
	inc b			;5162
	ex af,af'			;5163
	ld (bc),a			;5164
	ret p			;5165
	add a,d			;5166
	ret m			;5167
	call m,0ff02h		;5168
	add a,d			;516b
	call m,sub_02f8h		;516c
	ex af,af'			;516f
	add a,d			;5170
	jr $+56		;5171
	ld (bc),a			;5173
	ret m			;5174
	add a,d			;5175
	jr c,l5190h		;5176
	ld (bc),a			;5178
	rst 38h			;5179
l517ah:
	add a,(hl)			;517a
	call m,0f3f8h		;517b
l517eh:
	ret p			;517e
	rst 30h			;517f
	ret p			;5180
	ld (bc),a			;5181
	ret m			;5182
	adc a,d			;5183
	jr c,l519eh		;5184
	ret z			;5186
	ex af,af'			;5187
	ret pe			;5188
	ex af,af'			;5189
	rst 30h			;518a
	ret p			;518b
	ei			;518c
	call m,0ff02h		;518d
l5190h:
	add a,(hl)			;5190
	call m,0e8f8h		;5191
	ex af,af'			;5194
	ret c			;5195
	jr c,l519ah		;5196
	ret m			;5198
	add a,l			;5199
l519ah:
	jr c,l51b4h		;519a
	ret p			;519c
	pop af			;519d
l519eh:
	di			;519e
	inc bc			;519f
	ret p			;51a0
	adc a,d			;51a1
	ret m			;51a2
	call m,0c808h		;51a3
	ret pe			;51a6
	ld l,b			;51a7
	jr z,l51b2h		;51a8
	jr l51e4h		;51aa
	dec b			;51ac
	rst 38h			;51ad
	add a,e			;51ae
	rra			;51af
	sbc a,a			;51b0
	rst 18h			;51b1
l51b2h:
	dec b			;51b2
	ret m			;51b3
l51b4h:
	ld b,0ffh		;51b4
	add a,l			;51b6
	rst 28h			;51b7
	adc a,a			;51b8
	rrca			;51b9
	rlca			;51ba
	ret nz			;51bb
	inc b			;51bc
	rst 8			;51bd
	ld (bc),a			;51be
	rst 0			;51bf
l51c0h:
	add a,d			;51c0
	rst 8			;51c1
	rra			;51c2
	dec b			;51c3
	nop			;51c4
	adc a,b			;51c5
	ld (bc),a			;51c6
	rlca			;51c7
	rrca			;51c8
	nop			;51c9
	inc bc			;51ca
	ld b,008h		;51cb
	djnz l51d1h		;51cd
	nop			;51cf
	add a,e			;51d0
l51d1h:
	ret nz			;51d1
	nop			;51d2
	add a,b			;51d3
	add hl,bc			;51d4
	nop			;51d5
	add a,c			;51d6
	inc c			;51d7
	inc b			;51d8
	inc bc			;51d9
	dec b			;51da
	nop			;51db
	add a,l			;51dc
	ld b,0feh		;51dd
	call m,sub_1f3fh		;51df
	ld (bc),a			;51e2
	rlca			;51e3
l51e4h:
	inc b			;51e4
	nop			;51e5
	add a,e			;51e6
	ret nz			;51e7
	call m,l02fdh+1		;51e8
	rst 38h			;51eb
	add a,d			;51ec
	ccf			;51ed
	rrca			;51ee
	ld (bc),a			;51ef
	nop			;51f0
	add a,e			;51f1
	rrca			;51f2
	ccf			;51f3
	.DB 0fdh,002h,0e0h	;illegal sequence		;51f4
	ld (bc),a			;51f7
	nop			;51f8
	add a,h			;51f9
	rrca			;51fa
	cp 0fch		;51fb
	ret p			;51fd
	dec bc			;51fe
	nop			;51ff
	add a,c			;5200
l5201h:
	ld bc,l0006h		;5201
	ld (bc),a			;5204
	add a,b			;5205
	ld (bc),a			;5206
	nop			;5207
	add a,c			;5208
	inc bc			;5209
	ex af,af'			;520a
	nop			;520b
	add a,l			;520c
	add a,b			;520d
	ret nz			;520e
	ld b,b			;520f
	add a,b			;5210
	inc c			;5211
	inc b			;5212
	nop			;5213
	add a,e			;5214
	ld bc,l03ffh		;5215
	dec b			;5218
	nop			;5219
	add a,h			;521a
	ret nz			;521b
	ret p			;521c
	rst 38h			;521d
	inc c			;521e
	ld (bc),a			;521f
	nop			;5220
	add a,c			;5221
	ld b,b			;5222
	ld (bc),a			;5223
	add a,b			;5224
	add a,e			;5225
	ld b,b			;5226
	ret p			;5227
	rra			;5228
	inc b			;5229
	nop			;522a
	adc a,e			;522b
	djnz $+56		;522c
	rst 38h			;522e
	rst 20h			;522f
	nop			;5230
	inc bc			;5231
	ld e,038h		;5232
	ld l,b			;5234
	ret po			;5235
	ret nz			;5236
	ex af,af'			;5237
	nop			;5238
	add a,c			;5239
	ld sp,hl			;523a
	inc bc			;523b
	nop			;523c
	and e			;523d
	inc bc			;523e
	rra			;523f
	ld a,c			;5240
	and b			;5241
	rst 20h			;5242
	nop			;5243
	rlca			;5244
	rrca			;5245
	ret m			;5246
	rrca			;5247
	cp 0f8h		;5248
	ret p			;524a
	adc a,d			;524b
	djnz l5255h		;524c
	ld (hl),a			;524e
	di			;524f
	adc a,a			;5250
	jr $+96		;5251
	inc c			;5253
	ld a,b			;5254
l5255h:
	ld e,c			;5255
	ei			;5256
	and 08bh		;5257
	.DB 0fdh,000h,00dh	;illegal sequence		;5259
	ld a,a			;525c
	.DB 0ddh,07fh,0fdh	;illegal sequence		;525d
	jp po,l0202h		;5260
	add a,a			;5263
	jp 0cd0fh		;5264
	ret c			;5267
	sbc a,a			;5268
	ld a,a			;5269
	ld b,(hl)			;526a
	rlca			;526b
	nop			;526c
	add a,d			;526d
	inc bc			;526e
	ld b,004h		;526f
	nop			;5271
	adc a,l			;5272
	rrca			;5273
	rst 38h			;5274
	cp 000h		;5275
	rrca			;5277
	ei			;5278
	ld a,(hl)			;5279
	call c,0fc14h		;527a
	ex de,hl			;527d
	jp l027fh+1		;527e
	ret nz			;5281
	add a,l			;5282
	ld l,b			;5283
	scf			;5284
	call c,sub_7cf7h		;5285
	inc b			;5288
	nop			;5289
	add a,h			;528a
	ret nz			;528b
	rst 28h			;528c
	pop de			;528d
	ld a,(hl)			;528e
	dec b			;528f
	nop			;5290
	add a,e			;5291
	add a,b			;5292
	adc a,07dh		;5293
	ld b,000h		;5295
	add a,d			;5297
	inc b			;5298
	add a,(hl)			;5299
	rlca			;529a
	nop			;529b
	add a,c			;529c
	rst 28h			;529d
	inc bc			;529e
	nop			;529f
	add a,c			;52a0
	ld (bc),a			;52a1
	ld (bc),a			;52a2
	ld bc,l0202h		;52a3
	add a,d			;52a6
	nop			;52a7
	rst 38h			;52a8
	inc bc			;52a9
	add a,b			;52aa
	add a,c			;52ab
	adc a,(hl)			;52ac
	ld (bc),a			;52ad
	adc a,b			;52ae
	add a,d			;52af
	nop			;52b0
	rst 38h			;52b1
	ld b,010h		;52b2
	dec bc			;52b4
	nop			;52b5
	add a,h			;52b6
	ld bc,sub_3604h+2		;52b7
	ld b,c			;52ba
	inc b			;52bb
l52bch:
	nop			;52bc
l52bdh:
	add a,h			;52bd
	add a,b			;52be
	jr nz,l52bdh		;52bf
	djnz l52c7h		;52c1
	nop			;52c3
	add a,h			;52c4
	jr c,l532bh		;52c5
l52c7h:
	jp m,l0222h+2		;52c7
	nop			;52ca
	add a,(hl)			;52cb
	dec bc			;52cc
	dec e			;52cd
	dec de			;52ce
	add hl,sp			;52cf
	ld a,a			;52d0
	jr z,l52d5h		;52d1
	nop			;52d3
	add a,c			;52d4
l52d5h:
	ex af,af'			;52d5
	ld (bc),a			;52d6
	ld a,(bc)			;52d7
	add a,d			;52d8
	dec de			;52d9
	ld a,l			;52da
	rlca			;52db
	nop			;52dc
	sub c			;52dd
	ld a,(bc)			;52de
	ld h,048h		;52df
	ld a,(bc)			;52e1
	inc de			;52e2
	ld de,02535h		;52e3
	ld (de),a			;52e6
	inc hl			;52e7
	ld b,l			;52e8
	nop			;52e9
	jr nz,l52bch		;52ea
	xor 0efh		;52ec
	ld l,h			;52ee
	ld (bc),a			;52ef
	ld l,b			;52f0
	dec b			;52f1
	nop			;52f2
l52f3h:
	add a,l			;52f3
	ld b,b			;52f4
	jr l52feh		;52f5
	ld l,a			;52f7
	rst 28h			;52f8
	inc b			;52f9
	.DB 0edh;next byte illegal after ed		;52fa
	add a,e			;52fb
	xor 0d6h		;52fc
l52feh:
	ret pe			;52fe
	rlca			;52ff
	call pe,00104h		;5300
	ld (bc),a			;5303
	ld (bc),a			;5304
	add a,e			;5305
	ld b,005h		;5306
	sub 003h		;5308
	ld d,h			;530a
	ld (bc),a			;530b
	xor e			;530c
	add a,d			;530d
	out (0d7h),a		;530e
	ld (bc),a			;5310
	or d			;5311
	ld (bc),a			;5312
	sub d			;5313
	add a,l			;5314
	ld e,b			;5315
	ld c,b			;5316
	ld a,c			;5317
	ld (hl),e			;5318
	jp nz,0c402h		;5319
	ld (bc),a			;531c
	ld d,l			;531d
	ld (bc),a			;531e
	inc c			;531f
	add a,(hl)			;5320
	ld a,(de)			;5321
	ld e,l			;5322
	ld c,c			;5323
	inc b			;5324
	ld d,h			;5325
	ld d,(hl)			;5326
	ld (bc),a			;5327
	xor e			;5328
	add a,c			;5329
	dec de			;532a
l532bh:
	ld b,000h		;532b
	add a,c			;532d
	jr nz,l5338h		;532e
	nop			;5330
	add a,a			;5331
	add a,d			;5332
	nop			;5333
	jr l5336h		;5334
l5336h:
	inc b			;5336
	nop			;5337
l5338h:
	jr nz,l533dh		;5338
	nop			;533a
	add a,c			;533b
	ex af,af'			;533c
l533dh:
	inc bc			;533d
	nop			;533e
	add a,e			;533f
	jr z,l5342h		;5340
l5342h:
	jr nc,l5346h		;5342
	jr l52c7h		;5344
l5346h:
	nop			;5346
	ld (bc),a			;5347
	jr l534dh		;5348
	nop			;534a
	adc a,b			;534b
	ld (hl),h			;534c
l534dh:
	ld b,h			;534d
	inc a			;534e
	jp z,088f6h		;534f
	ld b,d			;5352
	add a,d			;5353
	inc bc			;5354
	nop			;5355
	add a,e			;5356
	add a,d			;5357
	nop			;5358
	djnz $+3		;5359
	nop			;535b
	add a,a			;535c
	jr nz,l535fh		;535d
l535fh:
	jr nz,l5361h		;535f
l5361h:
	inc b			;5361
	nop			;5362
	djnz l5368h		;5363
	nop			;5365
	add a,(hl)			;5366
	add a,d			;5367
l5368h:
	nop			;5368
	ex af,af'			;5369
	nop			;536a
	inc b			;536b
	nop			;536c
	inc bc			;536d
	djnz l52f3h		;536e
	nop			;5370
	jr $+40		;5371
	ld (bc),a			;5373
	ex af,af'			;5374
	add a,h			;5375
	jr z,l5398h		;5376
	jr z,l5382h		;5378
	ld (bc),a			;537a
	jr z,l52feh		;537b
	ld c,h			;537d
	nop			;537e
	ex af,af'			;537f
	rst 38h			;5380
	inc bc			;5381
l5382h:
	nop			;5382
	add a,d			;5383
	rst 38h			;5384
	nop			;5385
	inc bc			;5386
	rst 38h			;5387
	inc bc			;5388
	nop			;5389
	add a,d			;538a
	rst 38h			;538b
	nop			;538c
	inc bc			;538d
	rst 38h			;538e
	adc a,b			;538f
	nop			;5390
	ld (bc),a			;5391
	nop			;5392
	ret m			;5393
	nop			;5394
	ret po			;5395
	nop			;5396
	add a,b			;5397
l5398h:
	ex af,af'			;5398
	nop			;5399
	ld c,0ffh		;539a
	adc a,d			;539c
	call m,0f8ffh		;539d
	cp 0e0h		;53a0
	ret m			;53a2
	add a,b			;53a3
	ret po			;53a4
	nop			;53a5
	add a,b			;53a6
	ex af,af'			;53a7
	nop			;53a8
	inc b			;53a9
	rst 38h			;53aa
	add a,e			;53ab
	cp 0ffh		;53ac
	ret m			;53ae
	ld (bc),a			;53af
	ret p			;53b0
	add a,l			;53b1
	cp 0c0h		;53b2
	ret m			;53b4
	nop			;53b5
	ret po			;53b6
	ld a,(bc)			;53b7
	nop			;53b8
	inc bc			;53b9
	rst 38h			;53ba
	add a,c			;53bb
	cp 002h		;53bc
	rst 38h			;53be
	add a,h			;53bf
	ret p			;53c0
	ret po			;53c1
	rst 38h			;53c2
	cp 002h		;53c3
	nop			;53c5
	add a,d			;53c6
	ret p			;53c7
	ret po			;53c8
	ld (bc),a			;53c9
	nop			;53ca
	ld (bc),a			;53cb
	jr l53d0h		;53cc
	nop			;53ce
	ld (bc),a			;53cf
l53d0h:
	jr l53d4h		;53d0
	nop			;53d2
	dec b			;53d3
l53d4h:
	rst 38h			;53d4
	add a,d			;53d5
	ret p			;53d6
	ret nz			;53d7
	ld (bc),a			;53d8
	add a,b			;53d9
	add a,h			;53da
	cp 0fch		;53db
	ret m			;53dd
	ret p			;53de
	inc b			;53df
	nop			;53e0
	inc b			;53e1
	inc e			;53e2
	inc bc			;53e3
	nop			;53e4
	dec b			;53e5
	rst 38h			;53e6
	add a,d			;53e7
	ret nz			;53e8
	add a,b			;53e9
	ld (bc),a			;53ea
	nop			;53eb
	add a,h			;53ec
	cp 0fch		;53ed
	ret m			;53ef
	ret p			;53f0
	inc b			;53f1
	nop			;53f2
	inc b			;53f3
	inc e			;53f4
	inc bc			;53f5
	nop			;53f6
	ex af,af'			;53f7
	rst 38h			;53f8
	add a,e			;53f9
	cp 0fch		;53fa
	ret p			;53fc
	dec b			;53fd
	rst 38h			;53fe
	inc bc			;53ff
	nop			;5400
	add a,l			;5401
	ret m			;5402
	ret p			;5403
	ret po			;5404
	ret nz			;5405
	add a,b			;5406
	inc bc			;5407
	nop			;5408
	dec b			;5409
	inc a			;540a
	ld b,0ffh		;540b
	add a,a			;540d
	call m,0fff8h		;540e
l5411h:
	ret p			;5411
	ret po			;5412
	ret nz			;5413
	add a,b			;5414
	inc bc			;5415
	nop			;5416
	add a,c			;5417
	rst 38h			;5418
	rlca			;5419
	nop			;541a
	add a,c			;541b
	inc a			;541c
	rlca			;541d
	nop			;541e
	ex af,af'			;541f
	rst 38h			;5420
	add a,c			;5421
	ret p			;5422
	rlca			;5423
	rst 38h			;5424
	adc a,b			;5425
	nop			;5426
	cp 0fch		;5427
	ret m			;5429
	ret p			;542a
	ret po			;542b
	ret nz			;542c
	add a,b			;542d
	add hl,bc			;542e
	nop			;542f
l5430h:
	rlca			;5430
	ld a,003h		;5431
	rst 38h			;5433
	add a,a			;5434
	cp 0fch		;5435
	ret m			;5437
	ret p			;5438
	ret po			;5439
	rst 38h			;543a
	ret nz			;543b
	ld b,000h		;543c
	add a,c			;543e
	rst 38h			;543f
	rlca			;5440
	nop			;5441
	add a,c			;5442
	ld a,(hl)			;5443
	rlca			;5444
	nop			;5445
	ld (bc),a			;5446
	rst 38h			;5447
	add a,d			;5448
	cp 0fch		;5449
	inc b			;544b
	rst 38h			;544c
	add a,c			;544d
	add a,b			;544e
	inc bc			;544f
	nop			;5450
	inc b			;5451
	rst 38h			;5452
	inc b			;5453
	nop			;5454
	add a,h			;5455
	ret p			;5456
	ret po			;5457
	ret nz			;5458
	add a,b			;5459
	inc b			;545a
	nop			;545b
	inc b			;545c
	ld a,(hl)			;545d
	ld de,087ffh		;545e
	cp 0fch		;5461
	ret m			;5463
	ret p			;5464
	ret po			;5465
	ret nz			;5466
	add a,b			;5467
	ex af,af'			;5468
	ld a,(hl)			;5469
	djnz l546ch		;546a
l546ch:
	add a,d			;546c
	jr c,l54bbh		;546d
	inc bc			;546f
	add a,085h		;5470
	ld h,h			;5472
	jr c,l5475h		;5473
l5475h:
	jr l54afh		;5475
	inc b			;5477
	jr l5411h		;5478
	ld a,(hl)			;547a
	nop			;547b
	ld a,h			;547c
	add a,00eh		;547d
	inc a			;547f
	ld a,b			;5480
	ret po			;5481
	cp 000h		;5482
	ld a,(hl)			;5484
	inc c			;5485
	jr l54c4h		;5486
	ld b,0c6h		;5488
	ld a,h			;548a
	nop			;548b
	inc e			;548c
	inc a			;548d
	ld l,h			;548e
	call z,l02fdh+1		;548f
	inc c			;5492
	add a,h			;5493
	nop			;5494
	call m,0fcc0h		;5495
	ld (bc),a			;5498
	ld b,087h		;5499
	add a,07ch		;549b
	nop			;549d
	inc a			;549e
	ld h,b			;549f
	ret nz			;54a0
	call m,0c602h		;54a1
	add a,(hl)			;54a4
	ld a,h			;54a5
	nop			;54a6
	cp 0c6h		;54a7
	inc c			;54a9
	jr l54afh		;54aa
	jr nc,l5430h		;54ac
	nop			;54ae
l54afh:
	ld a,h			;54af
	ld (bc),a			;54b0
	add a,081h		;54b1
	ld a,h			;54b3
	ld (bc),a			;54b4
	add a,083h		;54b5
	ld a,h			;54b7
	nop			;54b8
	ld a,h			;54b9
	ld (bc),a			;54ba
l54bbh:
	add a,084h		;54bb
	ld a,(hl)			;54bd
	ld b,00ch		;54be
	ld a,b			;54c0
	ld (08100h),hl		;54c1
l54c4h:
	inc a			;54c4
	dec b			;54c5
	ld b,d			;54c6
	add a,c			;54c7
	nop			;54c8
	ld b,042h		;54c9
	add a,c			;54cb
	inc a			;54cc
	ld a,a			;54cd
	nop			;54ce
	rrca			;54cf
	nop			;54d0
	ld (bc),a			;54d1
	jr l5546h		;54d2
	nop			;54d4
	ld b,002h		;54d5
	add a,c			;54d7
	nop			;54d8
	rlca			;54d9
	ld (bc),a			;54da
	ld (bc),a			;54db
	nop			;54dc
	add a,c			;54dd
	inc a			;54de
	dec b			;54df
	ld (bc),a			;54e0
	add a,c			;54e1
	inc a			;54e2
	ld b,040h		;54e3
	add a,d			;54e5
	ld a,000h		;54e6
	ld b,002h		;54e8
	add a,c			;54ea
	inc a			;54eb
	ld (bc),a			;54ec
	nop			;54ed
	add a,c			;54ee
	ld (bc),a			;54ef
	dec b			;54f0
	ld b,d			;54f1
	add a,e			;54f2
	inc a			;54f3
	nop			;54f4
	inc a			;54f5
	dec b			;54f6
	ld b,b			;54f7
	add a,e			;54f8
	inc a			;54f9
	nop			;54fa
	inc a			;54fb
	dec b			;54fc
	ld (bc),a			;54fd
	ld (bc),a			;54fe
	nop			;54ff
	add a,c			;5500
	inc a			;5501
	dec b			;5502
	ld b,d			;5503
	add a,c			;5504
	inc a			;5505
	ld a,(l01ffh+1)		;5506
	inc b			;5509
	ld (bc),a			;550a
	nop			;550b
	add a,h			;550c
	inc a			;550d
	ld a,d			;550e
	nop			;550f
	inc a			;5510
	ld (bc),a			;5511
	ld a,d			;5512
	add a,c			;5513
	inc a			;5514
	ld (bc),a			;5515
	nop			;5516
	add a,e			;5517
	inc b			;5518
	nop			;5519
	inc a			;551a
	ld (bc),a			;551b
	ld a,d			;551c
	add a,h			;551d
	inc a			;551e
	nop			;551f
	inc a			;5520
	ld a,d			;5521
	ex af,af'			;5522
	nop			;5523
	rlca			;5524
	rst 38h			;5525
	add a,c			;5526
	call m,0ff07h		;5527
	add a,e			;552a
	ccf			;552b
	ei			;552c
	rst 30h			;552d
	ld b,0ffh		;552e
	add a,d			;5530
	rst 18h			;5531
	rst 28h			;5532
	ld b,0ffh		;5533
	sub b			;5535
	ei			;5536
	ret p			;5537
	rst 30h			;5538
	ret p			;5539
	rst 30h			;553a
	ret p			;553b
	ei			;553c
	call m,sub_0fdfh		;553d
	rst 28h			;5540
	rrca			;5541
	rst 28h			;5542
	rrca			;5543
	rst 18h			;5544
	ccf			;5545
l5546h:
	inc bc			;5546
	rst 38h			;5547
	add a,e			;5548
	call m,0f7fbh		;5549
	dec b			;554c
	rst 38h			;554d
	add a,e			;554e
	ccf			;554f
	rst 18h			;5550
	rst 28h			;5551
	add hl,bc			;5552
	rst 38h			;5553
	add a,c			;5554
	call m,0ff07h		;5555
	add a,c			;5558
	ccf			;5559
	inc bc			;555a
	rst 38h			;555b
	add a,l			;555c
	call m,0f0fbh		;555d
	rst 30h			;5560
	ret p			;5561
	inc bc			;5562
	rst 38h			;5563
	adc a,c			;5564
	ccf			;5565
	rst 18h			;5566
	rrca			;5567
	rst 28h			;5568
	rrca			;5569
	rst 30h			;556a
	ret p			;556b
	ei			;556c
	call m,0ff03h		;556d
	add a,l			;5570
	call m,sub_0fefh		;5571
	rst 18h			;5574
	ccf			;5575
	inc bc			;5576
	rst 38h			;5577
	add a,e			;5578
	ccf			;5579
	ei			;557a
	rst 30h			;557b
	ld b,0ffh		;557c
	add a,d			;557e
	rst 18h			;557f
	rst 28h			;5580
	dec bc			;5581
	rst 38h			;5582
	add a,e			;5583
	rra			;5584
	sbc a,a			;5585
	rst 18h			;5586
	dec bc			;5587
	rst 38h			;5588
	add a,l			;5589
	rst 28h			;558a
	adc a,a			;558b
	rrca			;558c
	rlca			;558d
	ret nz			;558e
	inc b			;558f
	rst 38h			;5590
	ld (bc),a			;5591
	rst 30h			;5592
	add a,d			;5593
	rst 28h			;5594
	rra			;5595
	inc bc			;5596
	nop			;5597
	add a,(hl)			;5598
	ld bc,l0702h+1		;5599
	rrca			;559c
	ld a,a			;559d
	rra			;559e
	ld (bc),a			;559f
	ld a,a			;55a0
	dec b			;55a1
	rst 38h			;55a2
	add a,d			;55a3
	add a,b			;55a4
	rst 30h			;55a5
	ld b,0ffh		;55a6
	add a,d			;55a8
	rrca			;55a9
	ccf			;55aa
	ld b,0ffh		;55ab
	add a,h			;55ad
	ret nz			;55ae
	ret p			;55af
	ret m			;55b0
	call m,0fe03h		;55b1
	add a,e			;55b4
	call m,l1f7fh		;55b5
	ld (bc),a			;55b8
	rlca			;55b9
	inc b			;55ba
	nop			;55bb
	dec b			;55bc
	rst 38h			;55bd
	add a,e			;55be
	ccf			;55bf
	rrca			;55c0
	nop			;55c1
	inc bc			;55c2
	rst 38h			;55c3
	add a,c			;55c4
	.DB 0fdh,002h,0e0h	;illegal sequence		;55c5
	ld (bc),a			;55c8
	nop			;55c9
	add a,h			;55ca
	rst 38h			;55cb
	cp 0fch		;55cc
	ret p			;55ce
	dec bc			;55cf
	nop			;55d0
	add a,c			;55d1
	rrca			;55d2
	inc bc			;55d3
	nop			;55d4
	add a,e			;55d5
	ld bc,l7f3fh		;55d6
	ld (bc),a			;55d9
	rst 38h			;55da
	ld (bc),a			;55db
	nop			;55dc
	add a,c			;55dd
	ccf			;55de
	dec b			;55df
	rst 38h			;55e0
	inc bc			;55e1
	nop			;55e2
	add a,l			;55e3
	add a,b			;55e4
	ret nz			;55e5
	ret p			;55e6
	ret m			;55e7
	rst 38h			;55e8
	ld (bc),a			;55e9
	ccf			;55ea
	inc bc			;55eb
	ld a,a			;55ec
	add a,e			;55ed
	rst 38h			;55ee
	inc bc			;55ef
	nop			;55f0
	rlca			;55f1
	rst 38h			;55f2
	add a,c			;55f3
	inc c			;55f4
	rlca			;55f5
	rst 38h			;55f6
	add a,c			;55f7
	rra			;55f8
	rlca			;55f9
	rst 38h			;55fa
	add a,h			;55fb
	rst 20h			;55fc
	ret po			;55fd
	rst 38h			;55fe
	cp 002h		;55ff
	ret m			;5601
	add a,d			;5602
	ret po			;5603
	ret nz			;5604
	ex af,af'			;5605
	nop			;5606
	add a,c			;5607
	ld sp,hl			;5608
	inc bc			;5609
	nop			;560a
	adc a,a			;560b
	ld (bc),a			;560c
	ld e,078h		;560d
	add a,b			;560f
	rlca			;5610
	nop			;5611
	ld b,008h		;5612
	jr l5625h		;5614
	ld (hl),b			;5616
	ret nz			;5617
	add a,b			;5618
	ex af,af'			;5619
	djnz l561eh		;561a
	nop			;561c
	sub c			;561d
l561eh:
	inc bc			;561e
	rrca			;561f
	jr l5682h		;5620
	inc c			;5622
	ld a,b			;5623
	ld b,c			;5624
l5625h:
	jp 08886h		;5625
	call m,l0cfeh+2		;5628
	ld a,a			;562b
	ret nz			;562c
	nop			;562d
	ld bc,l0202h+1		;562e
	add a,l			;5631
	ret nz			;5632
	nop			;5633
	ld b,c			;5634
	ret nz			;5635
	add a,b			;5636
	add hl,bc			;5637
	nop			;5638
l5639h:
	add a,d			;5639
l563ah:
	inc bc			;563a
	ld b,004h		;563b
	nop			;563d
	add a,e			;563e
	rrca			;563f
	call m,002c0h		;5640
	nop			;5643
	add a,a			;5644
	ei			;5645
	ld a,(hl)			;5646
	inc e			;5647
	djnz l563ah		;5648
	ex (sp),hl			;564a
	jp 08002h		;564b
	add a,(hl)			;564e
	ret nz			;564f
	ld l,b			;5650
	scf			;5651
	ret nc			;5652
	ld (hl),b			;5653
	inc a			;5654
	inc b			;5655
	nop			;5656
	add a,h			;5657
	ret nz			;5658
	ret po			;5659
	djnz l56bah		;565a
	ld b,000h		;565c
	add a,d			;565e
	ld c,001h		;565f
	ld b,000h		;5661
	add a,d			;5663
	inc b			;5664
	add a,(hl)			;5665
	rlca			;5666
	nop			;5667
	add a,c			;5668
	rst 28h			;5669
	inc bc			;566a
	nop			;566b
	add a,c			;566c
	ld (bc),a			;566d
	ld (bc),a			;566e
	ld bc,l0202h		;566f
	add a,d			;5672
	nop			;5673
	rst 38h			;5674
	inc bc			;5675
	add a,b			;5676
	add a,c			;5677
	adc a,(hl)			;5678
	ld (bc),a			;5679
	adc a,b			;567a
	add a,d			;567b
	nop			;567c
	rst 38h			;567d
	ld b,010h		;567e
	rlca			;5680
	nop			;5681
l5682h:
	add a,c			;5682
	rst 38h			;5683
	inc bc			;5684
	nop			;5685
	add a,l			;5686
	ld bc,sub_3604h+2		;5687
	ei			;568a
	rst 38h			;568b
	inc bc			;568c
	nop			;568d
	add a,l			;568e
	add a,b			;568f
	nop			;5690
	inc b			;5691
	cp 0ffh		;5692
	inc bc			;5694
	nop			;5695
	adc a,b			;5696
	jr nz,$+96		;5697
	ret c			;5699
	ld a,a			;569a
	rst 38h			;569b
	nop			;569c
	ld (bc),a			;569d
	inc c			;569e
	ld (bc),a			;569f
	add hl,de			;56a0
	add a,h			;56a1
	ld a,a			;56a2
	cp a			;56a3
	rst 38h			;56a4
	nop			;56a5
	inc bc			;56a6
	ex af,af'			;56a7
	add a,h			;56a8
	djnz l571bh		;56a9
	xor 0ffh		;56ab
	dec b			;56ad
	nop			;56ae
	add a,d			;56af
	ld a,(bc)			;56b0
	ld h,002h		;56b1
	ex af,af'			;56b3
	ld (bc),a			;56b4
	djnz l5639h		;56b5
	inc (hl)			;56b7
	inc h			;56b8
	inc de			;56b9
l56bah:
	nop			;56ba
	add a,c			;56bb
	ld l,l			;56bc
	dec b			;56bd
	.DB 0edh;next byte illegal after ed		;56be
	add a,d			;56bf
	xor 0d6h		;56c0
	ex af,af'			;56c2
	ret pe			;56c3
	inc b			;56c4
	ld bc,l0202h		;56c5
	add a,e			;56c8
	ld b,005h		;56c9
	sub 003h		;56cb
	ld d,h			;56cd
	add a,h			;56ce
	xor c			;56cf
	add hl,hl			;56d0
	sub c			;56d1
	sub l			;56d2
	inc b			;56d3
	add a,b			;56d4
	ld (bc),a			;56d5
	ld b,b			;56d6
	ld (bc),a			;56d7
	ld h,b			;56d8
	add a,c			;56d9
	add a,b			;56da
	ld (bc),a			;56db
	ld b,b			;56dc
	ld (bc),a			;56dd
	ld d,c			;56de
	ld b,000h		;56df
	ld (bc),a			;56e1
	ld d,b			;56e2
	add hl,bc			;56e3
	nop			;56e4
	add a,c			;56e5
	inc b			;56e6
	ex af,af'			;56e7
	nop			;56e8
	sub c			;56e9
	jr z,l56ech		;56ea
l56ech:
	ld d,h			;56ec
	nop			;56ed
	inc d			;56ee
	nop			;56ef
	ld b,b			;56f0
	nop			;56f1
	inc b			;56f2
	nop			;56f3
	ld c,b			;56f4
	nop			;56f5
	jr nz,l56f8h		;56f6
l56f8h:
	jr nz,l56fah		;56f8
l56fah:
	inc d			;56fa
	rlca			;56fb
	nop			;56fc
	add a,c			;56fd
	ld (l0001h+1),hl		;56fe
	add a,d			;5701
	ld b,b			;5702
	ex af,af'			;5703
	ld (bc),a			;5704
	nop			;5705
	add a,c			;5706
	ld b,b			;5707
	inc b			;5708
	nop			;5709
	adc a,l			;570a
	jr z,l570dh		;570b
l570dh:
	ld d,b			;570d
	nop			;570e
	ld b,h			;570f
	nop			;5710
	djnz l5713h		;5711
l5713h:
	ld l,b			;5713
	nop			;5714
	ex af,af'			;5715
	nop			;5716
	ld d,h			;5717
	inc bc			;5718
	nop			;5719
	add a,c			;571a
l571bh:
	jr z,$+3		;571b
	nop			;571d
	add a,d			;571e
	jr nz,l5731h		;571f
	ex af,af'			;5721
	nop			;5722
	add a,h			;5723
	djnz l574eh		;5724
	djnz l5748h		;5726
	inc bc			;5728
	nop			;5729
	nop			;572a
	rla			;572b
	nop			;572c
	ld (bc),a			;572d
	ld bc,l028fh		;572e
l5731h:
	inc b			;5731
	jr l5764h		;5732
	ld h,b			;5734
	ret nz			;5735
	add a,b			;5736
	nop			;5737
	ex af,af'			;5738
	nop			;5739
	ex af,af'			;573a
	nop			;573b
	ex af,af'			;573c
	nop			;573d
	ex af,af'			;573e
	ld c,000h		;573f
	add a,c			;5741
	inc bc			;5742
	ld (bc),a			;5743
	rlca			;5744
	adc a,c			;5745
	ld c,01ch		;5746
l5748h:
	jr c,l57bah		;5748
	ret po			;574a
	ret nz			;574b
	add a,b			;574c
	nop			;574d
l574eh:
	ex af,af'			;574e
	ld (bc),a			;574f
	nop			;5750
	ld (bc),a			;5751
	ex af,af'			;5752
	ld b,000h		;5753
	add a,e			;5755
	ld bc,l0702h+1		;5756
	ld (bc),a			;5759
	rrca			;575a
	add a,a			;575b
	ld e,03ch		;575c
	ld a,b			;575e
	ret p			;575f
	ret po			;5760
	ret nz			;5761
	add a,b			;5762
	ld (bc),a			;5763
l5764h:
	ex af,af'			;5764
	ld (bc),a			;5765
	nop			;5766
	ld (bc),a			;5767
	ex af,af'			;5768
	dec b			;5769
	nop			;576a
	add a,h			;576b
	ld bc,l0702h+1		;576c
	rrca			;576f
	ld (bc),a			;5770
	rra			;5771
	add a,a			;5772
	ld a,0fch		;5773
	ret m			;5775
	ret p			;5776
	ret po			;5777
	ret nz			;5778
	add a,b			;5779
	ld (bc),a			;577a
	nop			;577b
	inc b			;577c
	jr $+4		;577d
	nop			;577f
	add a,l			;5780
	ld bc,l0702h+1		;5781
	rrca			;5784
	ccf			;5785
	ld (bc),a			;5786
	ld a,a			;5787
	add a,a			;5788
	cp 0fch		;5789
	ret m			;578b
	ret p			;578c
	ret po			;578d
	ret nz			;578e
	add a,b			;578f
	dec b			;5790
	nop			;5791
	inc bc			;5792
	inc e			;5793
	add a,a			;5794
	nop			;5795
	ld bc,l0702h+1		;5796
	rra			;5799
	ccf			;579a
	ld a,a			;579b
	ld (bc),a			;579c
	rst 38h			;579d
	add a,a			;579e
	cp 0fch		;579f
	ret m			;57a1
	ret p			;57a2
	ret po			;57a3
	ret nz			;57a4
	add a,b			;57a5
	dec b			;57a6
	inc e			;57a7
	ld a,(bc)			;57a8
	nop			;57a9
	ld (bc),a			;57aa
	ld bc,l0384h+1		;57ab
	rrca			;57ae
	rra			;57af
	ccf			;57b0
	ld a,a			;57b1
	inc bc			;57b2
	rst 38h			;57b3
	add a,a			;57b4
	cp 0fch		;57b5
	ret m			;57b7
	ret p			;57b8
	ret po			;57b9
l57bah:
	ret nz			;57ba
	add a,b			;57bb
	ld c,000h		;57bc
	add a,c			;57be
	inc bc			;57bf
	ld (bc),a			;57c0
	rlca			;57c1
	add a,h			;57c2
	rrca			;57c3
	rra			;57c4
	ccf			;57c5
	ld a,a			;57c6
	inc b			;57c7
	rst 38h			;57c8
	adc a,b			;57c9
	cp 0fch		;57ca
	ret m			;57cc
	ret p			;57cd
	ret po			;57ce
	ret nz			;57cf
	add a,b			;57d0
	nop			;57d1
	rlca			;57d2
	inc a			;57d3
	inc b			;57d4
	nop			;57d5
	add a,e			;57d6
	ld bc,l0702h+1		;57d7
	ld (bc),a			;57da
	rrca			;57db
	add a,e			;57dc
	rra			;57dd
	ccf			;57de
	ld a,a			;57df
	dec b			;57e0
	rst 38h			;57e1
	add a,a			;57e2
	cp 0fch		;57e3
	ret m			;57e5
	ret p			;57e6
	ret po			;57e7
	ret nz			;57e8
	add a,b			;57e9
	ex af,af'			;57ea
	nop			;57eb
	ex af,af'			;57ec
	ld a,003h		;57ed
	nop			;57ef
	add a,h			;57f0
	ld bc,l0702h+1		;57f1
	rrca			;57f4
	ld (bc),a			;57f5
	rra			;57f6
	add a,c			;57f7
	ccf			;57f8
	rlca			;57f9
	rst 38h			;57fa
	adc a,b			;57fb
	cp 0fch		;57fc
	ret m			;57fe
	ret p			;57ff
	ret po			;5800
	ret nz			;5801
	add a,b			;5802
	ld a,(hl)			;5803
l5804h:
	add hl,bc			;5804
	nop			;5805
	add a,l			;5806
	ld bc,l0702h+1		;5807
	rrca			;580a
	ccf			;580b
	ld (bc),a			;580c
	ld a,a			;580d
	ex af,af'			;580e
	rst 38h			;580f
	add a,a			;5810
	cp 0fch		;5811
	ret m			;5813
	ret p			;5814
	ret po			;5815
	ret nz			;5816
	add a,b			;5817
	add hl,bc			;5818
	nop			;5819
	add a,(hl)			;581a
	ld bc,l0702h+1		;581b
	rra			;581e
	ccf			;581f
	ld a,a			;5820
	ld a,(bc)			;5821
	rst 38h			;5822
	add a,a			;5823
	cp 0fch		;5824
	ret m			;5826
	ret p			;5827
	ret po			;5828
	ret nz			;5829
	add a,b			;582a
	ex af,af'			;582b
	nop			;582c
	ld (bc),a			;582d
	inc b			;582e
	add a,c			;582f
	inc h			;5830
	inc bc			;5831
	inc b			;5832
	adc a,l			;5833
	ld bc,l027fh		;5834
	add hl,sp			;5837
	pop hl			;5838
	inc bc			;5839
	ld b,01ch		;583a
	ld bc,l3cfeh+1		;583c
	ld a,(hl)			;583f
	rst 28h			;5840
	ld (bc),a			;5841
	rst 20h			;5842
	add a,h			;5843
	rst 30h			;5844
	ld a,(hl)			;5845
	inc a			;5846
	inc e			;5847
	ld (bc),a			;5848
	inc a			;5849
	inc bc			;584a
	inc e			;584b
	ld (bc),a			;584c
	ld a,a			;584d
	add a,(hl)			;584e
	ld a,(hl)			;584f
	rst 38h			;5850
	rst 28h			;5851
	ccf			;5852
	ld a,(hl)			;5853
	call m,0ff02h		;5854
	ld (bc),a			;5857
	ld a,a			;5858
	adc a,d			;5859
	ld e,03eh		;585a
	ccf			;585c
	rst 20h			;585d
	rst 38h			;585e
	ld a,(hl)			;585f
	ld e,03eh		;5860
	ld a,(hl)			;5862
	cp 002h		;5863
	rst 38h			;5865
	ld (bc),a			;5866
	ld c,003h		;5867
	cp 08dh		;5869
	rst 38h			;586b
	rlca			;586c
	rst 20h			;586d
	rst 38h			;586e
	ld a,(hl)			;586f
	ld a,07eh		;5870
	ret p			;5872
	cp 0ffh		;5873
l5875h:
	rst 20h			;5875
	rst 38h			;5876
	ld a,(hl)			;5877
	ld (bc),a			;5878
	rst 38h			;5879
	add a,e			;587a
	rst 28h			;587b
	ld e,03ch		;587c
	inc bc			;587e
	jr c,l5804h		;587f
	ld a,(hl)			;5881
	rst 38h			;5882
	rst 20h			;5883
	ld (bc),a			;5884
	rst 38h			;5885
	add a,d			;5886
	rst 20h			;5887
	rst 38h			;5888
	ld (bc),a			;5889
	ld a,(hl)			;588a
	adc a,b			;588b
	rst 38h			;588c
	rst 20h			;588d
	rst 38h			;588e
	ld a,a			;588f
	rrca			;5890
	ld a,(hl)			;5891
	ld a,h			;5892
	inc b			;5893
	inc bc			;5894
	ld (bc),a			;5895
	add a,h			;5896
	ld h,01ch		;5897
	inc b			;5899
	inc e			;589a
	inc bc			;589b
	nop			;589c
	add a,d			;589d
	ld (bc),a			;589e
	ld a,(hl)			;589f
	inc bc			;58a0
	nop			;58a1
	adc a,d			;58a2
	ld bc,l0673h		;58a3
	ld (bc),a			;58a6
	add hl,sp			;58a7
	ld hl,07e83h		;58a8
	ld bc,l0603h		;58ab
	rlca			;58ae
	djnz $-1		;58af
	ld (bc),a			;58b1
	ld (bc),a			;58b2
	sbc a,c			;58b3
	ld (de),a			;58b4
	ld (0f301h),a		;58b5
	ld (bc),a			;58b8
	ld c,004h		;58b9
	ld (de),a			;58bb
	add hl,sp			;58bc
	ld hl,l3901h		;58bd
	ld hl,002e7h		;58c0
	add hl,sp			;58c3
	ld hl,l3903h		;58c4
	ld hl,0fe03h		;58c7
	ld (bc),a			;58ca
	add hl,de			;58cb
	scf			;58cc
	ld (bc),a			;58cd
	jr nz,$-122		;58ce
	sub c			;58d0
	ld b,e			;58d1
	ld a,004h		;58d2
	ld (00229h),a		;58d4
	ld hl,l2390h		;58d7
	ld b,0fch		;58da
	ld bc,l203fh		;58dc
	inc b			;58df
	inc a			;58e0
	jr nz,l58e4h		;58e1
	rst 38h			;58e3
l58e4h:
	ld bc,l203fh		;58e4
	inc b			;58e7
	inc a			;58e8
	ld (bc),a			;58e9
	jr nz,l5875h		;58ea
	ret po			;58ec
	ld bc,l301fh		;58ed
	ld hl,09129h		;58f0
	ld b,c			;58f3
	ccf			;58f4
	inc bc			;58f5
	ld hl,l0182h		;58f6
	add hl,sp			;58f9
	ld (bc),a			;58fa
	ld hl,0e783h		;58fb
	ld bc,l0464h+3		;58fe
	inc b			;5901
	add a,d			;5902
	ld bc,l057fh		;5903
	ld bc,l218bh		;5906
	add a,e			;5909
	ld a,(hl)			;590a
	ld hl,l2622h+1		;590b
	inc c			;590e
	inc b			;590f
	ld (0ef31h),hl		;5910
	ld b,020h		;5913
	add a,h			;5915
	ld bc,l21ffh		;5916
	ld de,l0100h+2		;5919
	adc a,(hl)			;591c
	add hl,hl			;591d
	add hl,sp			;591e
	ld hl,l21e7h		;591f
	ld de,l0109h		;5922
	ld hl,02931h		;5925
	rst 20h			;5928
	ld (bc),a			;5929
	add hl,sp			;592a
l592bh:
	inc b			;592b
l592ch:
	ld hl,08384h		;592c
	ld a,(hl)			;592f
	ld (bc),a			;5930
l5931h:
	add hl,sp			;5931
	ld (bc),a			;5932
	ld hl,l0384h		;5933
	ld a,020h		;5936
	ret po			;5938
	dec b			;5939
	nop			;593a
	inc bc			;593b
	inc e			;593c
	add a,d			;593d
	ld (bc),a			;593e
	add hl,sp			;593f
	ld (bc),a			;5940
	ld hl,l078eh		;5941
	ld (0ef31h),hl		;5944
	inc b			;5947
	ld (0822eh),a		;5948
sub_594bh:
	ld a,c			;594b
	ld hl,07e83h		;594c
	ld bc,00567h		;594f
	inc b			;5952
	add a,c			;5953
	inc e			;5954
	ld b,021h		;5955
	add a,d			;5957
	add a,e			;5958
	ld a,(hl)			;5959
	inc bc			;595a
	ld hl,l1185h		;595b
	add a,e			;595e
	ld b,(hl)			;595f
	inc l			;5960
	jr $+2		;5961
	ld hl,l2981h		;5963
	ld (bc),a			;5966
	ld bc,0938bh		;5967
	ld a,(02166h)		;596a
	ld de,l4683h		;596d
	ld (bc),a			;5970
	ld de,0e739h		;5971
	inc bc			;5974
	ld de,l4382h		;5975
	ld h,002h		;5978
	inc b			;597a
	add a,c			;597b
	inc e			;597c
	ld (bc),a			;597d
	nop			;597e
	add a,(hl)			;597f
	ld bc,0821fh		;5980
	ld (hl),c			;5983
	inc bc			;5984
	cp 002h		;5985
	ex af,af'			;5987
	add a,d			;5988
	ld (bc),a			;5989
	adc a,002h		;598a
	ex af,af'			;598c
	add a,d			;598d
	inc h			;598e
	inc e			;598f
	ld (bc),a			;5990
	nop			;5991
	add a,d			;5992
	ld (bc),a			;5993
	add hl,sp			;5994
	inc bc			;5995
	ld hl,0e781h		;5996
	inc bc			;5999
	ld bc,l3981h		;599a
	ld (bc),a			;599d
	ld hl,08182h		;599e
	ld a,a			;59a1
	ld (bc),a			;59a2
	nop			;59a3
	add a,e			;59a4
	ld (bc),a			;59a5
	add hl,sp			;59a6
	daa			;59a7
	ld (bc),a			;59a8
	jr nz,l592ch		;59a9
	ret po			;59ab
	ld (bc),a			;59ac
	jr nz,l5931h		;59ad
	ld (bc),a			;59af
	add hl,sp			;59b0
	inc bc			;59b1
	ld hl,0e781h		;59b2
	ld c,b			;59b5
	rst 38h			;59b6
	adc a,b			;59b7
	nop			;59b8
	jr nz,$+36		;59b9
	inc l			;59bb
	add hl,de			;59bc
	add hl,hl			;59bd
	dec (hl)			;59be
	ld l,a			;59bf
	inc bc			;59c0
	nop			;59c1
	adc a,d			;59c2
	jr nz,l5a16h		;59c3
	ld d,e			;59c5
	ld d,(hl)			;59c6
	call m,l1000h		;59c7
	ld d,b			;59ca
	call nz,sub_029ah		;59cb
	ld (de),a			;59ce
	add a,h			;59cf
	ld (hl),000h		;59d0
	jr nz,$+35		;59d2
	ld (bc),a			;59d4
	ld (l0c82h),hl		;59d5
	ld a,e			;59d8
	ld (bc),a			;59d9
	nop			;59da
	add a,(hl)			;59db
	sub c			;59dc
	ld de,l4955h		;59dd
	.DB 0ddh,0b3h,003h	;illegal sequence		;59e0
	nop			;59e3
	add a,d			;59e4
	inc b			;59e5
	.DB 0ddh,002h,011h	;illegal sequence		;59e6
	add a,d			;59e9
	ld (de),a			;59ea
	ld sp,l0001h+1		;59eb
	add a,a			;59ee
	ld b,d			;59ef
	xor l			;59f0
	add hl,hl			;59f1
	inc hl			;59f2
	ld l,(hl)			;59f3
	ret c			;59f4
	ld a,(hl)			;59f5
	ld b,0ffh		;59f6
	add a,e			;59f8
	ei			;59f9
	ld a,(hl)			;59fa
	rst 38h			;59fb
	ld (bc),a			;59fc
	ei			;59fd
	inc b			;59fe
	rst 38h			;59ff
	add a,d			;5a00
	ld a,(hl)			;5a01
	rst 38h			;5a02
	ld (bc),a			;5a03
	ei			;5a04
	inc bc			;5a05
	rst 38h			;5a06
	add a,c			;5a07
	ei			;5a08
	ex af,af'			;5a09
	rst 38h			;5a0a
	add a,d			;5a0b
	ccf			;5a0c
	ld a,a			;5a0d
	ld b,0ffh		;5a0e
	add a,e			;5a10
	ret m			;5a11
	call m,sub_65feh		;5a12
	rst 38h			;5a15
l5a16h:
	add a,d			;5a16
	call m,004f8h		;5a17
	ret p			;5a1a
	add a,h			;5a1b
	ret m			;5a1c
	call m,sub_1f3fh		;5a1d
	inc b			;5a20
	rrca			;5a21
	add a,d			;5a22
	rra			;5a23
	ccf			;5a24
	ld b,0ffh		;5a25
	add a,d			;5a27
	ld a,a			;5a28
	ccf			;5a29
	ld b,0ffh		;5a2a
	add a,d			;5a2c
	cp 0fch		;5a2d
	inc bc			;5a2f
	rrca			;5a30
	add a,d			;5a31
	rra			;5a32
	ld a,a			;5a33
	ld (bc),a			;5a34
	rst 38h			;5a35
	add a,c			;5a36
	ccf			;5a37
	inc b			;5a38
	ret p			;5a39
	ld (bc),a			;5a3a
	ret m			;5a3b
	add a,d			;5a3c
	ret p			;5a3d
	ret po			;5a3e
	inc bc			;5a3f
	nop			;5a40
	add a,(hl)			;5a41
	ld bc,l0702h+1		;5a42
	rrca			;5a45
	ld a,a			;5a46
	rra			;5a47
	ld (bc),a			;5a48
	ld a,a			;5a49
	dec b			;5a4a
	rst 38h			;5a4b
	add a,d			;5a4c
	add a,b			;5a4d
	rst 30h			;5a4e
	ld b,0ffh		;5a4f
	add a,d			;5a51
	rrca			;5a52
	ccf			;5a53
	ld b,0ffh		;5a54
	add a,h			;5a56
	ret nz			;5a57
	ret p			;5a58
	ret m			;5a59
	call m,0fe03h		;5a5a
	add a,e			;5a5d
	call m,l1f7fh		;5a5e
	ld (bc),a			;5a61
	rlca			;5a62
	inc b			;5a63
	nop			;5a64
	dec b			;5a65
	rst 38h			;5a66
	add a,e			;5a67
	ccf			;5a68
	rrca			;5a69
	nop			;5a6a
	inc bc			;5a6b
	rst 38h			;5a6c
	add a,c			;5a6d
	.DB 0fdh,002h,0e0h	;illegal sequence		;5a6e
	ld (bc),a			;5a71
	nop			;5a72
	add a,h			;5a73
	rst 38h			;5a74
	cp 0fch		;5a75
	ret p			;5a77
l5a78h:
	dec bc			;5a78
	nop			;5a79
	add a,c			;5a7a
	rrca			;5a7b
	inc bc			;5a7c
	nop			;5a7d
	add a,e			;5a7e
	ld bc,l7f3fh		;5a7f
	ld (bc),a			;5a82
	rst 38h			;5a83
	ld (bc),a			;5a84
	nop			;5a85
	add a,c			;5a86
	ccf			;5a87
	dec b			;5a88
	rst 38h			;5a89
	inc bc			;5a8a
	nop			;5a8b
	add a,l			;5a8c
	add a,b			;5a8d
	ret nz			;5a8e
	ret p			;5a8f
l5a90h:
	ret m			;5a90
	rst 38h			;5a91
	ld (bc),a			;5a92
	ccf			;5a93
	inc bc			;5a94
	ld a,a			;5a95
	add a,e			;5a96
	rst 38h			;5a97
	inc bc			;5a98
	nop			;5a99
	rlca			;5a9a
	rst 38h			;5a9b
	add a,c			;5a9c
	inc c			;5a9d
	rlca			;5a9e
	rst 38h			;5a9f
	add a,c			;5aa0
	rra			;5aa1
	rlca			;5aa2
	rst 38h			;5aa3
	add a,h			;5aa4
	rst 20h			;5aa5
	ret po			;5aa6
	rst 38h			;5aa7
	cp 002h		;5aa8
	ret m			;5aaa
	add a,d			;5aab
	ret po			;5aac
	ret nz			;5aad
	rlca			;5aae
	nop			;5aaf
	add a,d			;5ab0
	rrca			;5ab1
	ld b,003h		;5ab2
	nop			;5ab4
	adc a,a			;5ab5
	ld bc,08721h		;5ab6
	ld a,a			;5ab9
	ret m			;5aba
	nop			;5abb
	add hl,bc			;5abc
	ld (hl),a			;5abd
	rst 20h			;5abe
	ret p			;5abf
	adc a,a			;5ac0
	ccf			;5ac1
	ld a,a			;5ac2
	rst 30h			;5ac3
	rst 28h			;5ac4
	ld (bc),a			;5ac5
	rst 38h			;5ac6
	sub c			;5ac7
	call m,0e7f0h		;5ac8
	sbc a,a			;5acb
	di			;5acc
	add a,a			;5acd
	cp (hl)			;5ace
	inc a			;5acf
	ld a,c			;5ad0
	ld (hl),a			;5ad1
	inc bc			;5ad2
	rst 38h			;5ad3
	jp p,l3f80h		;5ad4
	rst 38h			;5ad7
	cp 003h		;5ad8
	.DB 0fdh,085h	;add a,iyl		;5ada
	ccf			;5adc
	rst 38h			;5add
	cp (hl)			;5ade
	ccf			;5adf
	ld a,a			;5ae0
	inc bc			;5ae1
	rst 38h			;5ae2
	dec b			;5ae3
	nop			;5ae4
	add a,e			;5ae5
	ld bc,l390bh+1		;5ae6
	inc b			;5ae9
	nop			;5aea
	sub h			;5aeb
	djnz l5af1h		;5aec
	ccf			;5aee
	rst 38h			;5aef
	rra			;5af0
l5af1h:
	inc b			;5af1
	add a,c			;5af2
	ex (sp),hl			;5af3
	rst 28h			;5af4
	rrca			;5af5
	inc e			;5af6
	inc a			;5af7
	nop			;5af8
	ld b,b			;5af9
	jr nc,l5a90h		;5afa
	ret z			;5afc
	cpl			;5afd
	adc a,a			;5afe
	jp l0003h+1		;5aff
	add a,h			;5b02
	jr c,l5b24h		;5b03
	rst 28h			;5b05
	and c			;5b06
	dec b			;5b07
	nop			;5b08
	add a,e			;5b09
	ret nz			;5b0a
	pop af			;5b0b
	cp 006h		;5b0c
	nop			;5b0e
	add a,d			;5b0f
	jp z,l0779h		;5b10
	nop			;5b13
	add a,c			;5b14
	rst 28h			;5b15
	inc bc			;5b16
	nop			;5b17
	add a,e			;5b18
	ld (bc),a			;5b19
	rrca			;5b1a
	ld bc,l0202h		;5b1b
	add a,d			;5b1e
	nop			;5b1f
	rst 38h			;5b20
	inc bc			;5b21
	add a,b			;5b22
	add a,c			;5b23
l5b24h:
	adc a,(hl)			;5b24
	ld (bc),a			;5b25
	adc a,b			;5b26
	add a,d			;5b27
	nop			;5b28
	rst 38h			;5b29
	ld b,010h		;5b2a
	inc c			;5b2c
	nop			;5b2d
	add a,e			;5b2e
	ld bc,0fb4fh		;5b2f
	dec b			;5b32
	nop			;5b33
	add a,e			;5b34
	ret po			;5b35
.DB $FC $FE $04
	nop			;5b39
	add a,h			;5b3a
l5b3bh:
	jr l5b59h		;5b3b
	ld a,07fh		;5b3d
	ld (bc),a			;5b3f
	nop			;5b40
	add a,(hl)			;5b41
	dec c			;5b42
	inc de			;5b43
	ld b,026h		;5b44
	ld a,a			;5b46
	cp a			;5b47
	ld (bc),a			;5b48
	nop			;5b49
	add a,(hl)			;5b4a
	inc b			;5b4b
	ld b,016h		;5b4c
	cpl			;5b4e
	rrca			;5b4f
	xor 006h		;5b50
	nop			;5b52
	add a,h			;5b53
	inc b			;5b54
	add hl,de			;5b55
	rst 30h			;5b56
	rlca			;5b57
	ld (bc),a			;5b58
l5b59h:
	rrca			;5b59
	add a,e			;5b5a
	dec bc			;5b5b
l5b5ch:
	dec de			;5b5c
	ld a,a			;5b5d
	ld (bc),a			;5b5e
	rst 38h			;5b5f
	add a,h			;5b60
l5b61h:
	add a,b			;5b61
	ret po			;5b62
	ret p			;5b63
	cp 004h		;5b64
	rst 38h			;5b66
	dec b			;5b67
	nop			;5b68
	add a,e			;5b69
	ret po			;5b6a
	call m,sub_06ffh		;5b6b
	ld (de),a			;5b6e
	add a,e			;5b6f
	ld de,l7029h		;5b70
	rlca			;5b73
	ld (hl),h			;5b74
	inc b			;5b75
	nop			;5b76
	inc bc			;5b77
	ld bc,l0282h		;5b78
	add hl,hl			;5b7b
	inc bc			;5b7c
	xor e			;5b7d
	add a,h			;5b7e
	ld d,(hl)			;5b7f
	sub 06eh		;5b80
	ld l,d			;5b82
	inc bc			;5b83
	ld a,(hl)			;5b84
	add a,c			;5b85
	ld a,a			;5b86
	ld (bc),a			;5b87
	cp a			;5b88
	ld (bc),a			;5b89
	sbc a,a			;5b8a
	add a,c			;5b8b
	ld a,a			;5b8c
	ld (bc),a			;5b8d
	cp a			;5b8e
	ld (bc),a			;5b8f
	xor (hl)			;5b90
	ld b,0ffh		;5b91
	ld (bc),a			;5b93
	xor a			;5b94
	inc bc			;5b95
	rst 38h			;5b96
	ld b,000h		;5b97
	add a,c			;5b99
	inc h			;5b9a
	ex af,af'			;5b9b
	nop			;5b9c
	sub c			;5b9d
	xor d			;5b9e
	cp 0ceh		;5b9f
	cp 0fah		;5ba1
	cp 0eah		;5ba3
	cp 0d6h		;5ba5
	cp 0e2h		;5ba7
	cp 0eah		;5ba9
	cp 08eh		;5bab
	cp 0a6h		;5bad
	rlca			;5baf
	jr l5b3bh		;5bb0
	ld a,(l747ch)		;5bb2
	ld a,h			;5bb5
	jp po,0eefeh		;5bb6
	ld b,082h		;5bb9
	inc bc			;5bbb
	nop			;5bbc
	adc a,l			;5bbd
	xor d			;5bbe
	cp 0e6h		;5bbf
	cp 0eeh		;5bc1
	cp 0fah		;5bc3
	cp 0ceh		;5bc5
	cp 0deh		;5bc7
	cp 0ceh		;5bc9
	inc bc			;5bcb
	nop			;5bcc
	add a,l			;5bcd
	xor d			;5bce
	cp 0aah		;5bcf
	cp 0b6h		;5bd1
	dec b			;5bd3
	djnz l5b5ch		;5bd4
	jr c,l5c00h		;5bd6
	jr c,$+24		;5bd8
	jr c,l5bf4h		;5bda
	inc bc			;5bdc
	jr c,l5b61h		;5bdd
	jr z,l5c3dh		;5bdf
	nop			;5be1
	jr nz,l5be4h		;5be2
l5be4h:
	ex af,af'			;5be4
	ex af,af'			;5be5
	jr l5be8h		;5be6
l5be8h:
	ex af,af'			;5be8
	ex af,af'			;5be9
l5beah:
	djnz l5bech		;5bea
l5bech:
	ex af,af'			;5bec
	ex af,af'			;5bed
	djnz l5bf0h		;5bee
l5bf0h:
	ex af,af'			;5bf0
	jr $+16		;5bf1
	nop			;5bf3
l5bf4h:
	ex af,af'			;5bf4
	inc e			;5bf5
	djnz l5bf8h		;5bf6
l5bf8h:
	ex af,af'			;5bf8
	inc e			;5bf9
	jr l5bfch		;5bfa
l5bfch:
	ex af,af'			;5bfc
	inc a			;5bfd
	jr l5c00h		;5bfe
l5c00h:
	ex af,af'			;5c00
	inc a			;5c01
	jr nz,l5c04h		;5c02
l5c04h:
	ex af,af'			;5c04
	ld a,018h		;5c05
	nop			;5c07
	ex af,af'			;5c08
	ld a,(hl)			;5c09
	jr l5c0ch		;5c0a
l5c0ch:
	ex af,af'			;5c0c
	ld a,(hl)			;5c0d
	jr l5c10h		;5c0e
l5c10h:
	ex af,af'			;5c10
	ld a,(hl)			;5c11
	add a,c			;5c12
	inc e			;5c13
	ld (bc),a			;5c14
	inc a			;5c15
	inc bc			;5c16
	inc e			;5c17
	ld (bc),a			;5c18
	ld a,a			;5c19
	add a,(hl)			;5c1a
	ld a,(hl)			;5c1b
	rst 38h			;5c1c
	rst 28h			;5c1d
	ccf			;5c1e
	ld a,(hl)			;5c1f
	call m,0ff02h		;5c20
	add a,e			;5c23
	inc a			;5c24
	ld a,(hl)			;5c25
	rst 28h			;5c26
	ld (bc),a			;5c27
	rst 20h			;5c28
	add a,h			;5c29
	rst 30h			;5c2a
	ld a,(hl)			;5c2b
	inc a			;5c2c
	inc e			;5c2d
	ld (bc),a			;5c2e
	inc a			;5c2f
	inc bc			;5c30
	inc e			;5c31
	ld (bc),a			;5c32
	ld a,a			;5c33
	add a,(hl)			;5c34
	ld a,(hl)			;5c35
	rst 38h			;5c36
	rst 28h			;5c37
	ccf			;5c38
	ld a,(hl)			;5c39
	call m,0ff02h		;5c3a
l5c3dh:
	ld (bc),a			;5c3d
	ld a,a			;5c3e
	adc a,d			;5c3f
	ld e,03eh		;5c40
	ccf			;5c42
	rst 20h			;5c43
	rst 38h			;5c44
	ld a,(hl)			;5c45
	ld e,03eh		;5c46
	ld a,(hl)			;5c48
	cp 002h		;5c49
	rst 38h			;5c4b
	ld (bc),a			;5c4c
	ld c,003h		;5c4d
	cp 08dh		;5c4f
	rst 38h			;5c51
	rlca			;5c52
	rst 20h			;5c53
	rst 38h			;5c54
	ld a,(hl)			;5c55
	ld a,07eh		;5c56
	ret p			;5c58
	cp 0ffh		;5c59
	rst 20h			;5c5b
	rst 38h			;5c5c
	ld a,(hl)			;5c5d
	ld (bc),a			;5c5e
	rst 38h			;5c5f
	add a,e			;5c60
	rst 28h			;5c61
	ld e,03ch		;5c62
	inc bc			;5c64
	jr c,l5beah		;5c65
	ld a,(hl)			;5c67
	rst 38h			;5c68
	rst 20h			;5c69
	ld (bc),a			;5c6a
	rst 38h			;5c6b
	add a,d			;5c6c
	rst 20h			;5c6d
	rst 38h			;5c6e
	ld (bc),a			;5c6f
	ld a,(hl)			;5c70
	adc a,b			;5c71
	rst 38h			;5c72
	rst 20h			;5c73
	rst 38h			;5c74
	ld a,a			;5c75
	rrca			;5c76
	ld a,(hl)			;5c77
	ld a,h			;5c78
	inc e			;5c79
	inc b			;5c7a
	ld a,003h		;5c7b
	inc e			;5c7d
	inc bc			;5c7e
	nop			;5c7f
	ld (bc),a			;5c80
	ld a,(hl)			;5c81
	inc bc			;5c82
	nop			;5c83
	ld (bc),a			;5c84
	ld a,a			;5c85
	adc a,b			;5c86
	ld e,03eh		;5c87
	ccf			;5c89
	rst 20h			;5c8a
	rst 38h			;5c8b
	ld a,(hl)			;5c8c
	ld bc,l0603h		;5c8d
	rlca			;5c90
	djnz $-1		;5c91
	add a,h			;5c93
	ld e,03eh		;5c94
	ld a,(hl)			;5c96
	cp 002h		;5c97
	rst 38h			;5c99
	ld (bc),a			;5c9a
	ld c,084h		;5c9b
	inc a			;5c9d
	ld a,(hl)			;5c9e
	rst 38h			;5c9f
sub_5ca0h:
	rst 20h			;5ca0
	ld (bc),a			;5ca1
	rst 38h			;5ca2
	ld (bc),a			;5ca3
	rst 20h			;5ca4
	add a,e			;5ca5
	cp 0ffh		;5ca6
	rst 20h			;5ca8
	ld (bc),a			;5ca9
	rst 38h			;5caa
	add a,(hl)			;5cab
	rst 20h			;5cac
	rst 38h			;5cad
	cp 03eh		;5cae
	ld a,a			;5cb0
	rst 30h			;5cb1
	ld (bc),a			;5cb2
	ret po			;5cb3
	add a,(hl)			;5cb4
	rst 30h			;5cb5
	ld a,a			;5cb6
	ld a,0fch		;5cb7
	cp 0efh		;5cb9
	ld (bc),a			;5cbb
	rst 20h			;5cbc
	add a,e			;5cbd
	rst 28h			;5cbe
	cp 0fch		;5cbf
	ld (bc),a			;5cc1
	rst 38h			;5cc2
	add a,c			;5cc3
	ret po			;5cc4
	ld (bc),a			;5cc5
	call m,0e081h		;5cc6
	inc b			;5cc9
	rst 38h			;5cca
	add a,c			;5ccb
	ret po			;5ccc
	ld (bc),a			;5ccd
	call m,0e003h		;5cce
	add a,e			;5cd1
	ccf			;5cd2
	ld a,a			;5cd3
	ret p			;5cd4
	ld (bc),a			;5cd5
	rst 28h			;5cd6
	add a,e			;5cd7
	rst 30h			;5cd8
	ld a,a			;5cd9
	ccf			;5cda
	inc bc			;5cdb
	rst 20h			;5cdc
	ld (bc),a			;5cdd
	rst 38h			;5cde
	inc bc			;5cdf
	rst 20h			;5ce0
	ld (bc),a			;5ce1
	ld a,a			;5ce2
	inc b			;5ce3
	inc e			;5ce4
	ld (bc),a			;5ce5
l5ce6h:
	ld a,a			;5ce6
	dec b			;5ce7
	rlca			;5ce8
	add a,(hl)			;5ce9
	rst 20h			;5cea
	rst 38h			;5ceb
	ld a,(hl)			;5cec
	rst 20h			;5ced
	rst 28h			;5cee
	cp 002h		;5cef
	call m,0fe83h		;5cf1
	rst 38h			;5cf4
	rst 28h			;5cf5
	ld b,0e0h		;5cf6
	ld (bc),a			;5cf8
	rst 38h			;5cf9
	add a,c			;5cfa
	rst 20h			;5cfb
	dec b			;5cfc
	rst 38h			;5cfd
	inc bc			;5cfe
	rst 20h			;5cff
l5d00h:
	add a,c			;5d00
	rst 30h			;5d01
	inc b			;5d02
	rst 38h			;5d03
	add a,h			;5d04
	rst 28h			;5d05
	rst 20h			;5d06
	ld a,(hl)			;5d07
	rst 38h			;5d08
	inc b			;5d09
	rst 20h			;5d0a
	add a,h			;5d0b
	rst 38h			;5d0c
	ld a,(hl)			;5d0d
	cp 0ffh		;5d0e
	ld (bc),a			;5d10
	rst 20h			;5d11
	add a,d			;5d12
	rst 38h			;5d13
	cp 002h		;5d14
	ret po			;5d16
	dec b			;5d17
	nop			;5d18
	inc bc			;5d19
	inc e			;5d1a
	sub b			;5d1b
	cp 0ffh		;5d1c
	rst 20h			;5d1e
	rst 28h			;5d1f
	rst 38h			;5d20
	cp 0ffh		;5d21
	rst 28h			;5d23
	ld a,h			;5d24
	cp 0eeh		;5d25
	cp 07fh		;5d27
	rst 20h			;5d29
	rst 38h			;5d2a
	ld a,(hl)			;5d2b
	ld (bc),a			;5d2c
	ld a,a			;5d2d
	ld b,01ch		;5d2e
	ld b,0e7h		;5d30
	add a,d			;5d32
	rst 38h			;5d33
	ld a,(hl)			;5d34
	inc bc			;5d35
	rst 20h			;5d36
	ld (bc),a			;5d37
	rst 38h			;5d38
	add a,e			;5d39
	ld a,(hl)			;5d3a
	inc a			;5d3b
	jr l5d40h		;5d3c
	rst 20h			;5d3e
	inc b			;5d3f
l5d40h:
	rst 38h			;5d40
	add a,e			;5d41
	ld a,(hl)			;5d42
	ld h,(hl)			;5d43
	rst 20h			;5d44
	ld (bc),a			;5d45
	rst 38h			;5d46
	ld (bc),a			;5d47
	ld a,(hl)			;5d48
	ld (bc),a			;5d49
	rst 38h			;5d4a
	add a,c			;5d4b
	rst 20h			;5d4c
	inc bc			;5d4d
	ld (hl),a			;5d4e
	add a,d			;5d4f
	ld a,a			;5d50
	ld a,003h		;5d51
	inc e			;5d53
	ld (bc),a			;5d54
	nop			;5d55
	add a,(hl)			;5d56
	ld a,a			;5d57
	rst 38h			;5d58
	cp 07fh		;5d59
	rst 38h			;5d5b
	cp 002h		;5d5c
	jr c,l5d62h		;5d5e
	cp 002h		;5d60
l5d62h:
	jr c,l5ce6h		;5d62
	inc a			;5d64
	inc e			;5d65
	ld (bc),a			;5d66
	nop			;5d67
	add a,d			;5d68
	cp 0ffh		;5d69
	inc b			;5d6b
	rst 20h			;5d6c
	ld (bc),a			;5d6d
	rlca			;5d6e
	add a,d			;5d6f
	ld a,a			;5d70
	rst 38h			;5d71
	ld (bc),a			;5d72
	rst 20h			;5d73
	add a,d			;5d74
	rst 38h			;5d75
	ld a,a			;5d76
	ld (bc),a			;5d77
	nop			;5d78
	add a,e			;5d79
	cp 0ffh		;5d7a
	rst 20h			;5d7c
	dec b			;5d7d
	ret po			;5d7e
	add a,d			;5d7f
	cp 0ffh		;5d80
	inc b			;5d82
	rst 20h			;5d83
	ld c,b			;5d84
	rst 38h			;5d85
	add a,h			;5d86
	nop			;5d87
	ld h,b			;5d88
	ld l,h			;5d89
	ld a,a			;5d8a
l5d8bh:
	ld (bc),a			;5d8b
	ld a,e			;5d8c
	add a,d			;5d8d
	ld a,a			;5d8e
	ld l,a			;5d8f
	inc bc			;5d90
	nop			;5d91
	adc a,d			;5d92
	pop hl			;5d93
	di			;5d94
	rst 30h			;5d95
	cp 0fch		;5d96
	nop			;5d98
	jr nc,l5d8bh		;5d99
	call m,003beh		;5d9b
	ld (hl),083h		;5d9e
	nop			;5da0
	ld h,e			;5da1
	ld h,a			;5da2
	ld (bc),a			;5da3
	ld h,(hl)			;5da4
	add a,d			;5da5
	ld a,a			;5da6
	ld a,e			;5da7
	ld (bc),a			;5da8
	nop			;5da9
	ld (bc),a			;5daa
	or e			;5dab
	inc bc			;5dac
	rst 38h			;5dad
	add a,c			;5dae
	or e			;5daf
	inc bc			;5db0
	nop			;5db1
	add a,d			;5db2
	.DB 0fdh,0ffh,003h	;illegal sequence		;5db3
	inc sp			;5db6
	add a,c			;5db7
	ld sp,l0001h+1		;5db8
	add a,a			;5dbb
	sbc a,0ffh		;5dbc
	ld a,e			;5dbe
	ld a,a			;5dbf
	cp 0d8h		;5dc0
	ld a,(hl)			;5dc2
	rlca			;5dc3
	rst 38h			;5dc4
	add a,c			;5dc5
	ld a,(hl)			;5dc6
	rlca			;5dc7
	rst 38h			;5dc8
	add a,c			;5dc9
	ld a,(hl)			;5dca
	rrca			;5dcb
	rst 38h			;5dcc
	inc bc			;5dcd
	nop			;5dce
	inc b			;5dcf
	ret po			;5dd0
	add a,c			;5dd1
	ex (sp),hl			;5dd2
	rlca			;5dd3
	nop			;5dd4
	add a,h			;5dd5
	ret nz			;5dd6
	rst 20h			;5dd7
	xor 0ech		;5dd8
	inc bc			;5dda
	rst 28h			;5ddb
	adc a,e			;5ddc
	rst 20h			;5ddd
	ex (sp),hl			;5dde
	ret po			;5ddf
	jr nc,l5df2h		;5de0
	sub b			;5de2
	ret nc			;5de3
	ret p			;5de4
	ret po			;5de5
	ret nz			;5de6
	rst 20h			;5de7
	dec b			;5de8
	rst 28h			;5de9
	add a,e			;5dea
	rst 20h			;5deb
	ex (sp),hl			;5dec
	ret po			;5ded
	dec b			;5dee
	ret p			;5def
	add a,d			;5df0
	ret po			;5df1
l5df2h:
	ret nz			;5df2
	inc bc			;5df3
	ret po			;5df4
	add a,l			;5df5
	ex (sp),hl			;5df6
	rst 20h			;5df7
	xor 0ech		;5df8
	rst 28h			;5dfa
	inc bc			;5dfb
	nop			;5dfc
	add a,l			;5dfd
	ret nz			;5dfe
	ret po			;5dff
	jr nc,l5e12h		;5e00
	sub b			;5e02
	ld (bc),a			;5e03
	rst 28h			;5e04
	add a,d			;5e05
	rst 20h			;5e06
sub_5e07h:
	ex (sp),hl			;5e07
	inc bc			;5e08
	ret po			;5e09
	add a,l			;5e0a
	ex (sp),hl			;5e0b
	ret nc			;5e0c
	ret p			;5e0d
	ret po			;5e0e
	ret nz			;5e0f
	inc bc			;5e10
	nop			;5e11
l5e12h:
	add a,c			;5e12
	ret nz			;5e13
	inc bc			;5e14
	ret po			;5e15
	add a,d			;5e16
	ex (sp),hl			;5e17
	rst 20h			;5e18
	inc bc			;5e19
	rst 28h			;5e1a
	inc bc			;5e1b
	nop			;5e1c
	add a,d			;5e1d
	ret nz			;5e1e
	ret po			;5e1f
	inc bc			;5e20
	ret p			;5e21
	ld (bc),a			;5e22
	rst 28h			;5e23
	add a,d			;5e24
	rst 20h			;5e25
	ex (sp),hl			;5e26
	inc bc			;5e27
	ret po			;5e28
	add a,c			;5e29
	ex (sp),hl			;5e2a
	ld (bc),a			;5e2b
	ret p			;5e2c
	add a,d			;5e2d
	ret po			;5e2e
	ret nz			;5e2f
	inc bc			;5e30
	nop			;5e31
	add a,d			;5e32
	ret nz			;5e33
	rst 20h			;5e34
	dec b			;5e35
	rst 28h			;5e36
	add a,e			;5e37
	rst 20h			;5e38
	ex (sp),hl			;5e39
l5e3ah:
	ret po			;5e3a
	dec b			;5e3b
	ret p			;5e3c
	add a,d			;5e3d
	ret po			;5e3e
	ret nz			;5e3f
	dec b			;5e40
	ret po			;5e41
	add a,e			;5e42
	rst 38h			;5e43
	ld a,a			;5e44
	ccf			;5e45
	dec b			;5e46
	nop			;5e47
	inc bc			;5e48
	ret m			;5e49
	inc bc			;5e4a
	inc c			;5e4b
	add a,d			;5e4c
	inc e			;5e4d
	ld a,h			;5e4e
	ld (bc),a			;5e4f
	call m,sub_3f81h		;5e50
	inc b			;5e53
	nop			;5e54
	ld (bc),a			;5e55
	ex af,af'			;5e56
	add a,d			;5e57
	djnz l5e3ah		;5e58
	ld a,a			;5e5a
l5e5bh:
	nop			;5e5b
	ld a,a			;5e5c
	nop			;5e5d
	ld (bc),a			;5e5e
	nop			;5e5f
	ld (bc),a			;5e60
	jr l5e67h		;5e61
	djnz l5e67h		;5e63
	rst 38h			;5e65
	inc bc			;5e66
l5e67h:
	nop			;5e67
	add a,c			;5e68
	ld c,002h		;5e69
	rra			;5e6b
	ld (bc),a			;5e6c
	ld c,002h		;5e6d
	rst 38h			;5e6f
	add a,c			;5e70
	ret nz			;5e71
	rlca			;5e72
	rst 38h			;5e73
	add a,c			;5e74
	jr l5e7bh		;5e75
	rst 38h			;5e77
	add a,c			;5e78
	scf			;5e79
	rlca			;5e7a
l5e7bh:
	nop			;5e7b
	add a,c			;5e7c
	rst 38h			;5e7d
	ld b,000h		;5e7e
	add a,d			;5e80
	cp (hl)			;5e81
	rst 38h			;5e82
	ld b,000h		;5e83
	add a,d			;5e85
	rst 28h			;5e86
	rst 38h			;5e87
	ld b,000h		;5e88
	add a,d			;5e8a
	in a,(0ffh)		;5e8b
	ld b,000h		;5e8d
	add a,d			;5e8f
	rst 10h			;5e90
	rst 38h			;5e91
	ld b,000h		;5e92
	ld (bc),a			;5e94
	rst 38h			;5e95
	djnz l5e98h		;5e96
l5e98h:
	add a,e			;5e98
	add a,b			;5e99
	ret nz			;5e9a
	jr nz,l5e9fh		;5e9b
	djnz l5ea2h		;5e9d
l5e9fh:
	sub b			;5e9f
	djnz l5ea2h		;5ea0
l5ea2h:
	ex af,af'			;5ea2
	djnz l5eb5h		;5ea3
	nop			;5ea5
	inc bc			;5ea6
	ex af,af'			;5ea7
	add a,c			;5ea8
	add hl,bc			;5ea9
	ld (bc),a			;5eaa
l5eabh:
	dec b			;5eab
	ld (bc),a			;5eac
	inc b			;5ead
	rlca			;5eae
	nop			;5eaf
	add a,e			;5eb0
	inc b			;5eb1
	ld (bc),a			;5eb2
	ld b,002h		;5eb3
l5eb5h:
	inc bc			;5eb5
	add a,c			;5eb6
	ld bc,l0009h		;5eb7
	add a,c			;5eba
l5ebbh:
	and h			;5ebb
	ex af,af'			;5ebc
	nop			;5ebd
	add a,l			;5ebe
	xor d			;5ebf
	cp 0eeh		;5ec0
	cp 0dah		;5ec2
	inc bc			;5ec4
	cp 083h		;5ec5
	cp (hl)			;5ec7
	cp 0f6h		;5ec8
	inc bc			;5eca
	cp 083h		;5ecb
	sbc a,0feh		;5ecd
	xor 007h		;5ecf
	jr l5e5bh		;5ed1
	cp d			;5ed3
	jr nz,l5edeh		;5ed4
	ld d,b			;5ed6
	inc d			;5ed7
	ld b,h			;5ed8
	nop			;5ed9
	add a,b			;5eda
	inc b			;5edb
	nop			;5edc
	adc a,c			;5edd
l5edeh:
	xor d			;5ede
	cp 0eah		;5edf
	cp 0deh		;5ee1
	cp 0f6h		;5ee3
	cp 0deh		;5ee5
	inc bc			;5ee7
	cp 081h		;5ee8
	xor 003h		;5eea
	nop			;5eec
	add a,c			;5eed
	xor d			;5eee
	inc b			;5eef
	cp 090h		;5ef0
	djnz l5ef4h		;5ef2
l5ef4h:
	djnz l5ef6h		;5ef4
l5ef6h:
	jr z,$+8		;5ef6
	djnz l5efah		;5ef8
l5efah:
	jr nz,$+16		;5efa
	ex af,af'			;5efc
	djnz l5f27h		;5efd
	jr nz,l5f11h		;5eff
	jr z,l5f03h		;5f01
l5f03h:
	ld (de),a			;5f03
	nop			;5f04
	sub b			;5f05
	inc a			;5f06
l5f07h:
	ld h,(hl)			;5f07
	ld b,d			;5f08
	nop			;5f09
	add a,c			;5f0a
	jp l3c66h		;5f0b
	jr l5f10h		;5f0e
l5f10h:
	add a,c			;5f10
l5f11h:
	nop			;5f11
	inc a			;5f12
	rst 38h			;5f13
	nop			;5f14
	ld b,d			;5f15
	ld c,000h		;5f16
	add a,l			;5f18
	inc a			;5f19
	ld a,(hl)			;5f1a
	rst 38h			;5f1b
	rst 20h			;5f1c
	jp l0003h+1		;5f1d
	add a,e			;5f20
	inc a			;5f21
	jp l0480h+1		;5f22
	nop			;5f25
	ld (bc),a			;5f26
l5f27h:
	jr l5eabh		;5f27
	nop			;5f29
	inc a			;5f2a
	dec c			;5f2b
	nop			;5f2c
	ld (bc),a			;5f2d
	jr l5eb5h		;5f2e
	nop			;5f30
	inc h			;5f31
	ld h,(hl)			;5f32
	nop			;5f33
	inc a			;5f34
	ld (bc),a			;5f35
	inc h			;5f36
	ld (bc),a			;5f37
	jr l5ebbh		;5f38
	inc h			;5f3a
	inc c			;5f3b
	nop			;5f3c
	add a,a			;5f3d
	djnz l5f40h		;5f3e
l5f40h:
	jr z,l5f52h		;5f40
	jr c,l5f6ch		;5f42
	djnz l5f53h		;5f44
	nop			;5f46
	inc bc			;5f47
	djnz l5fach		;5f48
	nop			;5f4a
	adc a,b			;5f4b
	ld a,(hl)			;5f4c
	rst 20h			;5f4d
	ret po			;5f4e
	rst 28h			;5f4f
	rst 20h			;5f50
	ld a,a			;5f51
l5f52h:
	nop			;5f52
l5f53h:
	ld a,(hl)			;5f53
	inc b			;5f54
	rst 20h			;5f55
	add a,c			;5f56
	ld a,(hl)			;5f57
	dec bc			;5f58
	nop			;5f59
	adc a,h			;5f5a
	ex af,af'			;5f5b
	nop			;5f5c
	ex af,af'			;5f5d
	nop			;5f5e
	ex af,af'			;5f5f
	nop			;5f60
	ld b,00eh		;5f61
	inc c			;5f63
	jr l5f76h		;5f64
	nop			;5f66
	ld (bc),a			;5f67
	ld h,b			;5f68
	add hl,bc			;5f69
	nop			;5f6a
	adc a,c			;5f6b
l5f6ch:
	ld a,060h		;5f6c
	ld h,(hl)			;5f6e
	ld a,000h		;5f6f
	inc a			;5f71
	ld h,(hl)			;5f72
	inc a			;5f73
	nop			;5f74
	ld (bc),a			;5f75
l5f76h:
	inc b			;5f76
	ld (bc),a			;5f77
	ex af,af'			;5f78
	add a,d			;5f79
	nop			;5f7a
	djnz l5f7fh		;5f7b
	nop			;5f7d
	add a,h			;5f7e
l5f7fh:
	jr l5f91h		;5f7f
	jr l5f83h		;5f81
l5f83h:
	ld (bc),a			;5f83
	jr l5f07h		;5f84
	nop			;5f86
	ld (bc),a			;5f87
	ex af,af'			;5f88
	add a,d			;5f89
	nop			;5f8a
	djnz l5f92h		;5f8b
	nop			;5f8d
	adc a,c			;5f8e
	inc b			;5f8f
	inc c			;5f90
l5f91h:
	inc e			;5f91
l5f92h:
	ccf			;5f92
	ld a,a			;5f93
l5f94h:
	ccf			;5f94
	inc e			;5f95
	inc c			;5f96
	inc b			;5f97
	ld a,(bc)			;5f98
	nop			;5f99
	add a,c			;5f9a
	ret po			;5f9b
	ld (bc),a			;5f9c
	ret m			;5f9d
	add a,c			;5f9e
	inc a			;5f9f
	dec b			;5fa0
	inc e			;5fa1
	ld b,000h		;5fa2
	add a,(hl)			;5fa4
	jr nz,l6007h		;5fa5
	call m,sub_67feh		;5fa7
	inc hl			;5faa
	ld (bc),a			;5fab
l5fach:
	inc bc			;5fac
	ld a,(bc)			;5fad
	nop			;5fae
	add a,e			;5faf
	jr nz,l602ah		;5fb0
	inc h			;5fb2
	ld (bc),a			;5fb3
	inc b			;5fb4
	ld (de),a			;5fb5
	nop			;5fb6
	add a,d			;5fb7
	djnz $+8		;5fb8
	dec bc			;5fba
	nop			;5fbb
	add a,c			;5fbc
	ld bc,l0003h		;5fbd
	add a,d			;5fc0
	jr nz,l5fc8h		;5fc1
	add hl,bc			;5fc3
	nop			;5fc4
	add a,c			;5fc5
	jr nz,l5fcah		;5fc6
l5fc8h:
	nop			;5fc8
	add a,h			;5fc9
l5fcah:
	ld a,d			;5fca
	ex af,af'			;5fcb
	ld (l0d20h),a		;5fcc
	nop			;5fcf
	ld (bc),a			;5fd0
	ld (bc),a			;5fd1
	adc a,b			;5fd2
	dec b			;5fd3
	nop			;5fd4
	inc e			;5fd5
	ld a,(hl)			;5fd6
	ld a,a			;5fd7
	di			;5fd8
	ret nz			;5fd9
	add a,b			;5fda
	ld (bc),a			;5fdb
	nop			;5fdc
	add a,a			;5fdd
	ld bc,l0202h+1		;5fde
	ld a,(0c74ch)		;5fe1
	add a,b			;5fe4
	add hl,bc			;5fe5
	nop			;5fe6
	add a,l			;5fe7
	add a,b			;5fe8
	nop			;5fe9
	ret po			;5fea
	nop			;5feb
	call m,l0202h		;5fec
	add a,c			;5fef
	ex af,af'			;5ff0
	inc b			;5ff1
	djnz l5f76h		;5ff2
	jr nc,l6017h		;5ff4
	ld (bc),a			;5ff6
	inc hl			;5ff7
	sub a			;5ff8
	ld h,e			;5ff9
	ld b,e			;5ffa
	ld b,c			;5ffb
	ld b,b			;5ffc
	jr nz,l602fh		;5ffd
	inc c			;5fff
l6000h:
	nop			;6000
	ld c,01fh		;6001
	ld a,l			;6003
	call m,0e3f7h		;6004
l6007h:
	rst 0			;6007
	rst 28h			;6008
	inc a			;6009
	cp h			;600a
	ret m			;600b
	ld sp,hl			;600c
	ld a,l			;600d
	inc b			;600e
	nop			;600f
	ld (bc),a			;6010
	djnz l5f94h		;6011
	add a,b			;6013
	ld (bc),a			;6014
	ret nz			;6015
	inc bc			;6016
l6017h:
	ret po			;6017
	add a,c			;6018
	jr nc,l601dh		;6019
	nop			;601b
	add a,(hl)			;601c
l601dh:
	and b			;601d
	or b			;601e
	add hl,sp			;601f
	jp m,l2078h		;6020
	rrca			;6023
	nop			;6024
	add a,c			;6025
	inc bc			;6026
	ld (bc),a			;6027
	nop			;6028
	add a,d			;6029
l602ah:
	inc c			;602a
	ex af,af'			;602b
	inc d			;602c
	nop			;602d
	ld (bc),a			;602e
l602fh:
	ld bc,l028fh		;602f
	ld bc,sub_0806h+1		;6032
	nop			;6035
	rrca			;6036
	rra			;6037
	ld a,034h		;6038
	ld (hl),03fh		;603a
	ld e,01ch		;603c
	dec bc			;603e
	dec de			;603f
	ld (bc),a			;6040
	inc de			;6041
	add a,h			;6042
	ld bc,l1218h		;6043
	ld bc,l0003h		;6046
	add a,l			;6049
	jr l6088h		;604a
	ld a,(hl)			;604c
	ld a,b			;604d
	ld b,b			;604e
	inc bc			;604f
	nop			;6050
	add a,l			;6051
	ld bc,l0402h		;6052
	inc d			;6055
	ex af,af'			;6056
l6057h:
	add hl,bc			;6057
	nop			;6058
	add a,a			;6059
	ld h,b			;605a
	sbc a,b			;605b
	nop			;605c
	ret nz			;605d
	ld a,h			;605e
	ld bc,00338h		;605f
	ld bc,l0202h+3		;6062
	add a,c			;6065
	ld bc,l0006h+1		;6066
	adc a,e			;6069
	rrca			;606a
	ld e,03bh		;606b
	ld (hl),e			;606d
	ld a,(hl)			;606e
	inc l			;606f
	inc a			;6070
	ld e,006h		;6071
	add a,b			;6073
	nop			;6074
	ld (bc),a			;6075
	ld bc,l0003h		;6076
	add a,d			;6079
	sub b			;607a
	ret nc			;607b
	ld (bc),a			;607c
	ret nz			;607d
	adc a,b			;607e
	ld h,b			;607f
	nop			;6080
	ret nz			;6081
l6082h:
	ret po			;6082
	ld l,h			;6083
	ld d,b			;6084
	jr c,l6057h		;6085
	dec b			;6087
l6088h:
	nop			;6088
	ld (bc),a			;6089
	inc bc			;608a
	add a,d			;608b
	ld b,004h		;608c
	inc bc			;608e
	nop			;608f
	add a,l			;6090
	ld bc,00c12h		;6091
	djnz l60b6h		;6094
	ld (bc),a			;6096
	rrca			;6097
	add a,(hl)			;6098
	ld e,01ah		;6099
	rrca			;609b
	ld c,006h		;609c
	dec b			;609e
	ld (bc),a			;609f
	ld bc,l0480h+2		;60a0
	ld bc,l0006h+1		;60a3
	adc a,(hl)			;60a6
	ld h,b			;60a7
	ret p			;60a8
	ret po			;60a9
	add a,b			;60aa
	nop			;60ab
	rrca			;60ac
	ex af,af'			;60ad
	ld de,l1713h		;60ae
	dec d			;60b1
	inc de			;60b2
.DB $01 $0C $05
l60b6h:
	nop			;60b6
	adc a,c			;60b7
	add a,b			;60b8
	ld h,b			;60b9
	ret po			;60ba
	ld h,b			;60bb
	ret po			;60bc
	ld h,b			;60bd
	sub b			;60be
	cp h			;60bf
	ld a,h			;60c0
	ld (bc),a			;60c1
	djnz $+4		;60c2
	nop			;60c4
	add a,e			;60c5
	ld bc,l0202h+1		;60c6
	inc bc			;60c9
	nop			;60ca
	adc a,b			;60cb
	inc b			;60cc
	add hl,bc			;60cd
	ld b,01bh		;60ce
	rla			;60d0
	inc c			;60d1
	rlca			;60d2
	ld (bc),a			;60d3
	ld (bc),a			;60d4
	nop			;60d5
	add a,d			;60d6
l60d7h:
	ld c,008h		;60d7
	inc bc			;60d9
	nop			;60da
	add a,d			;60db
	inc bc			;60dc
	nop			;60dd
	ld (bc),a			;60de
	add hl,bc			;60df
	ld (bc),a			;60e0
	ex af,af'			;60e1
	add a,c			;60e2
	inc b			;60e3
	rlca			;60e4
	nop			;60e5
	adc a,d			;60e6
	ld b,b			;60e7
	ld (hl),b			;60e8
	ld l,b			;60e9
	ret m			;60ea
	or b			;60eb
	ret nz			;60ec
	call c,sub_1a1ch		;60ed
	inc b			;60f0
	dec bc			;60f1
	nop			;60f2
	add a,(hl)			;60f3
	ld b,b			;60f4
	djnz l612fh		;60f5
	inc e			;60f7
	ex af,af'			;60f8
	ld (bc),a			;60f9
	add hl,hl			;60fa
	nop			;60fb
	add a,d			;60fc
	ld (bc),a			;60fd
	inc bc			;60fe
	ld (bc),a			;60ff
	dec b			;6100
	add a,c			;6101
	ex af,af'			;6102
	ld (bc),a			;6103
	djnz l6109h		;6104
	nop			;6106
	add a,d			;6107
	inc e			;6108
l6109h:
	ld (l4001h+1),a		;6109
	adc a,b			;610c
	ld bc,00c07h		;610d
	ex af,af'			;6110
	jr l6134h		;6111
	add a,087h		;6113
	ex af,af'			;6115
	nop			;6116
	and e			;6117
	ret nz			;6118
	jr c,l6127h		;6119
	inc b			;611b
	ret z			;611c
	ld a,0c3h		;611d
	dec e			;611f
	ld (hl),l			;6120
	nop			;6121
	ret nz			;6122
	jr nz,l6148h		;6123
	daa			;6125
	rlca			;6126
l6127h:
	ld c,(hl)			;6127
	ld c,h			;6128
	ld e,h			;6129
	inc e			;612a
	jr c,l615dh		;612b
	ld l,05fh		;612d
l612fh:
	ld c,a			;612f
	ld (0300eh),a		;6130
	ld h,b			;6133
l6134h:
	add a,b			;6134
	djnz l6137h		;6135
l6137h:
	ld b,b			;6137
	ld (bc),a			;6138
l6139h:
	nop			;6139
	ex af,af'			;613a
	ld (bc),a			;613b
	nop			;613c
	ld (bc),a			;613d
	ld bc,l6082h		;613e
	ret m			;6141
	ld (bc),a			;6142
	ret po			;6143
	add a,d			;6144
	ld b,b			;6145
	jr nc,l614ah		;6146
l6148h:
	djnz l614ch		;6148
l614ah:
	jr l60d7h		;614a
l614ch:
	ex af,af'			;614c
	inc b			;614d
	ld bc,0b0a0h		;614e
	add hl,sp			;6151
	jp m,0c078h		;6152
	ld c,001h		;6155
	dec c			;6157
	nop			;6158
	add a,l			;6159
	add a,e			;615a
	nop			;615b
	ld b,b			;615c
l615dh:
	inc l			;615d
	jr $+14		;615e
	nop			;6160
	add a,d			;6161
	ld bc,l0302h		;6162
	nop			;6165
	adc a,b			;6166
	ex af,af'			;6167
	jr l6196h		;6168
	ld h,a			;616a
	add a,e			;616b
	add a,b			;616c
	djnz l6177h		;616d
	ld (bc),a			;616f
	nop			;6170
	add a,d			;6171
	ret po			;6172
	djnz l6177h		;6173
	nop			;6175
	adc a,d			;6176
l6177h:
	inc c			;6177
	dec de			;6178
	ld sp,0c460h		;6179
	add a,h			;617c
	dec bc			;617d
	nop			;617e
	inc bc			;617f
	ld a,b			;6180
	ex af,af'			;6181
	nop			;6182
	ld (bc),a			;6183
	add a,b			;6184
	ld (bc),a			;6185
	ld b,b			;6186
	sub c			;6187
	ret p			;6188
	ex af,af'			;6189
	call po,sub_1114h		;618a
	inc de			;618d
	daa			;618e
	ld h,04eh		;618f
	ld e,b			;6191
	ld c,(hl)			;6192
	ld h,h			;6193
	inc sp			;6194
	dec bc			;6195
l6196h:
	ld bc,l0100h+2		;6196
	inc bc			;6199
	nop			;619a
	add a,e			;619b
	ret nz			;619c
	add a,d			;619d
l619eh:
	djnz l61a2h		;619e
	nop			;61a0
	add a,c			;61a1
l61a2h:
	add hl,bc			;61a2
	inc bc			;61a3
	nop			;61a4
	add a,a			;61a5
	add a,e			;61a6
	jp l4363h		;61a7
	ld bc,04000h		;61aa
	ld (bc),a			;61ad
	inc d			;61ae
	add a,c			;61af
	nop			;61b0
	ld (bc),a			;61b1
	jr l61b6h		;61b2
	djnz l6139h		;61b4
l61b6h:
	ex af,af'			;61b6
	ret z			;61b7
	call po,0e002h		;61b8
	add a,(hl)			;61bb
	call nc,0f014h		;61bc
	ret po			;61bf
	jr z,$+28		;61c0
	dec d			;61c2
	nop			;61c3
	sbc a,c			;61c4
	inc bc			;61c5
	ld b,00ch		;61c6
	add hl,bc			;61c8
	djnz $+1		;61c9
	ld b,00ch		;61cb
	ld bc,08270h		;61cd
	ret nz			;61d0
	nop			;61d1
	ret nz			;61d2
	ld b,d			;61d3
	ld b,b			;61d4
	jr nz,l620ah		;61d5
	inc hl			;61d7
	inc bc			;61d8
	ld b,e			;61d9
	ld b,c			;61da
	ld e,b			;61db
	ld (l0011h),a		;61dc
	djnz l61e1h		;61df
l61e1h:
	adc a,c			;61e1
	inc a			;61e2
	ld b,d			;61e3
	add a,c			;61e4
	nop			;61e5
	jr $-1		;61e6
	ld a,(hl)			;61e8
	inc a			;61e9
	jr l61f3h		;61ea
	nop			;61ec
	add a,d			;61ed
	add a,c			;61ee
	jp l0012h		;61ef
	add a,c			;61f2
l61f3h:
	jr l6200h		;61f3
	rst 38h			;61f5
	add a,c			;61f6
	inc h			;61f7
	ld (bc),a			;61f8
	ld e,d			;61f9
	add a,c			;61fa
	ld a,(hl)			;61fb
	rrca			;61fc
	nop			;61fd
	add a,d			;61fe
	ld a,(hl)			;61ff
l6200h:
	rst 38h			;6200
	ld (bc),a			;6201
	ld a,(hl)			;6202
l6203h:
	add a,h			;6203
	ld b,d			;6204
	jr l6207h		;6205
l6207h:
	inc h			;6207
	ld (bc),a			;6208
	inc a			;6209
l620ah:
	dec c			;620a
	nop			;620b
	add a,l			;620c
	jr c,l628bh		;620d
	jr z,l6211h		;620f
l6211h:
	jr c,l6221h		;6211
	nop			;6213
	inc bc			;6214
	djnz $+4		;6215
l6217h:
	nop			;6217
	add a,a			;6218
	inc d			;6219
	jr nz,l622ch		;621a
	jr l619eh		;621c
	jr nc,l6220h		;621e
l6220h:
	ld (bc),a			;6220
l6221h:
	inc b			;6221
	ld (bc),a			;6222
	ld (bc),a			;6223
	dec b			;6224
l6225h:
	nop			;6225
	adc a,d			;6226
	ld (l0804h),hl		;6227
	rra			;622a
	ld (bc),a			;622b
l622ch:
	jr c,$+24		;622c
	inc c			;622e
	inc b			;622f
	ld (bc),a			;6230
	ld a,a			;6231
	nop			;6232
	ld l,l			;6233
	nop			;6234
	add a,c			;6235
	ld bc,l0003h		;6236
	add a,d			;6239
	jr nz,l6241h		;623a
	add hl,bc			;623c
	nop			;623d
	add a,c			;623e
	jr nz,l6243h		;623f
l6241h:
	nop			;6241
	add a,h			;6242
l6243h:
	ld a,d			;6243
	ex af,af'			;6244
	ld (l0720h),a		;6245
	nop			;6248
	add a,d			;6249
	ld bc,l0202h+1		;624a
	rlca			;624d
	ld (bc),a			;624e
	rrca			;624f
	ld (bc),a			;6250
	rra			;6251
	add a,c			;6252
	dec e			;6253
	dec b			;6254
	nop			;6255
	add a,d			;6256
	rlca			;6257
	ccf			;6258
	ld b,0ffh		;6259
	add a,c			;625b
	cp 002h		;625c
	rst 38h			;625e
	ld b,000h		;625f
	add a,e			;6261
	ret nz			;6262
	ret m			;6263
	call m,0fe02h		;6264
	add a,d			;6267
	call m,sub_023eh		;6268
	rst 38h			;626b
	add a,e			;626c
	rst 30h			;626d
	rrca			;626e
	rst 18h			;626f
	inc bc			;6270
	ccf			;6271
	add a,d			;6272
	ld a,a			;6273
	ld a,(hl)			;6274
	inc bc			;6275
	ld a,h			;6276
	add a,e			;6277
	ld a,b			;6278
	ld (hl),b			;6279
	ld l,(hl)			;627a
	ld (bc),a			;627b
	ld a,a			;627c
	add a,l			;627d
	ld a,0feh		;627e
	ret p			;6280
	ret po			;6281
	add a,b			;6282
	ld (bc),a			;6283
	nop			;6284
	add a,d			;6285
	ex af,af'			;6286
	djnz $+4		;6287
	nop			;6289
	ld (bc),a			;628a
l628bh:
	ld bc,l6082h		;628b
	ret m			;628e
	ld (bc),a			;628f
	ret p			;6290
	add a,c			;6291
	ld b,b			;6292
	ld (bc),a			;6293
	jr nc,l6217h		;6294
l6296h:
	djnz l629ah		;6296
	jr l6225h		;6298
l629ah:
	ex af,af'			;629a
	inc b			;629b
	ld bc,0f0e0h		;629c
	jp (hl)			;629f
	ex de,hl			;62a0
	ld c,b			;62a1
	ret po			;62a2
	ld c,001h		;62a3
	dec c			;62a5
	nop			;62a6
	add a,(hl)			;62a7
	add a,e			;62a8
	nop			;62a9
	ld b,b			;62aa
	ld l,01fh		;62ab
	ld bc,l000eh+1		;62ad
	add a,h			;62b0
	ld bc,l0702h+1		;62b1
	rrca			;62b4
	ld (bc),a			;62b5
	rra			;62b6
	add a,e			;62b7
	ld a,01dh		;62b8
	rra			;62ba
	ld (bc),a			;62bb
	rrca			;62bc
	add a,h			;62bd
	ld (hl),b			;62be
	add a,b			;62bf
	ret nz			;62c0
l62c1h:
	ld bc,l4001h+1		;62c1
	adc a,d			;62c4
	ld h,b			;62c5
	jr nz,l62fbh		;62c6
	ld hl,l41feh+2		;62c8
	ld b,e			;62cb
	ld e,e			;62cc
	dec sp			;62cd
	add hl,de			;62ce
	ld b,000h		;62cf
	add a,e			;62d1
	ld bc,03f0fh		;62d2
	inc bc			;62d5
	ld a,a			;62d6
	inc bc			;62d7
	rst 38h			;62d8
	add a,c			;62d9
l62dah:
	ld e,a			;62da
	ld b,000h		;62db
	adc a,d			;62dd
	ret nz			;62de
	ret p			;62df
	ret m			;62e0
	call m,0d8bch		;62e1
	ret po			;62e4
	call m,0c1ffh		;62e5
	inc bc			;62e8
	inc bc			;62e9
	inc bc			;62ea
	rlca			;62eb
	add a,c			;62ec
	ld b,002h		;62ed
	rlca			;62ef
	add a,c			;62f0
	inc bc			;62f1
	ld b,000h		;62f2
	add a,l			;62f4
	ret p			;62f5
	ret po			;62f6
	ret nz			;62f7
	add a,h			;62f8
	add a,b			;62f9
	ld (bc),a			;62fa
l62fbh:
	nop			;62fb
	add a,h			;62fc
	ret nz			;62fd
	ret nc			;62fe
	adc a,(hl)			;62ff
	or h			;6300
	ld (bc),a			;6301
	ld bc,l0281h		;6302
	ld (bc),a			;6305
	nop			;6306
	add a,c			;6307
	ld (hl),b			;6308
	inc bc			;6309
	djnz l6296h		;630a
	nop			;630c
	jr nc,$-60		;630d
	ret nz			;630f
	inc a			;6310
	ld (hl),h			;6311
	inc a			;6312
	jp nc,l10a0h		;6313
	ld b,000h		;6316
	sub a			;6318
	ld bc,l1f07h		;6319
	ccf			;631c
	ld a,a			;631d
	ld (hl),a			;631e
	ld a,a			;631f
	rra			;6320
	ccf			;6321
	jr nc,$+16		;6322
	jr nz,$+1		;6324
	djnz l6348h		;6326
	ex af,af'			;6328
	ld de,00b02h		;6329
	dec c			;632c
	add hl,bc			;632d
	ld b,002h		;632e
	rlca			;6330
	nop			;6331
	add a,a			;6332
	ld c,03fh		;6333
	ld a,l			;6335
	rst 38h			;6336
	rst 18h			;6337
	sbc a,01ch		;6338
	inc bc			;633a
	jr l62c1h		;633b
	djnz l635dh		;633d
	inc c			;633f
	ld bc,l0003h		;6340
	adc a,h			;6343
	ret nz			;6344
	ret po			;6345
	jr nc,l6368h		;6346
l6348h:
	djnz l62dah		;6348
	ex af,af'			;634a
	jr nc,l6379h		;634b
	sbc a,b			;634d
	djnz l6370h		;634e
	ld b,000h		;6350
	add a,d			;6352
	inc bc			;6353
	rrca			;6354
	ld (bc),a			;6355
	rra			;6356
	add a,a			;6357
	dec de			;6358
	rrca			;6359
	inc e			;635a
	djnz l6366h		;635b
l635dh:
	ex af,af'			;635d
	inc b			;635e
	inc bc			;635f
	nop			;6360
	add a,c			;6361
	inc bc			;6362
	ld (bc),a			;6363
	rrca			;6364
	adc a,b			;6365
l6366h:
	rla			;6366
	rrca			;6367
l6368h:
	rlca			;6368
	ld c,00ch		;6369
	ex af,af'			;636b
	dec c			;636c
	inc b			;636d
	dec b			;636e
	nop			;636f
l6370h:
	adc a,h			;6370
	add a,b			;6371
	ret po			;6372
	ld (hl),b			;6373
	ret p			;6374
	adc a,b			;6375
	inc c			;6376
	ld b,b			;6377
	inc b			;6378
l6379h:
	rra			;6379
	sub h			;637a
	ld a,(de)			;637b
	inc b			;637c
	dec bc			;637d
	nop			;637e
	add a,(hl)			;637f
	jr nc,l63fah		;6380
	ld h,h			;6382
	inc h			;6383
	inc e			;6384
	nop			;6385
	ld (bc),a			;6386
	ex af,af'			;6387
	ld (bc),a			;6388
	inc b			;6389
	ld (bc),a			;638a
	nop			;638b
	add a,c			;638c
	add a,b			;638d
	inc c			;638e
	nop			;638f
	ld (bc),a			;6390
	add a,b			;6391
	ld (de),a			;6392
	nop			;6393
	add a,h			;6394
.DB $01 $03 $05
	inc b			;6398
	ld (bc),a			;6399
	ex af,af'			;639a
	add a,c			;639b
	djnz l63a1h		;639c
	nop			;639e
	adc a,b			;639f
	inc e			;63a0
l63a1h:
	ld h,d			;63a1
	add a,c			;63a2
	add a,b			;63a3
	rlca			;63a4
	ccf			;63a5
	cp 0f8h		;63a6
	ld (bc),a			;63a8
	ret p			;63a9
	add a,d			;63aa
	ret po			;63ab
	ret nz			;63ac
	add hl,bc			;63ad
	nop			;63ae
	add a,e			;63af
	ret nz			;63b0
	jr c,l63b7h		;63b1
	ld (bc),a			;63b3
	ld (bc),a			;63b4
	add a,c			;63b5
	inc b			;63b6
l63b7h:
	ld a,(bc)			;63b7
	nop			;63b8
	add a,d			;63b9
	ld bc,l0202h+1		;63ba
	ld (bc),a			;63bd
	rlca			;63be
	nop			;63bf
	adc a,(hl)			;63c0
	ld c,018h		;63c1
	ld a,b			;63c3
	ret p			;63c4
	ret nz			;63c5
	ret			;63c6
l63c7h:
	sub e			;63c7
	inc bc			;63c8
	inc c			;63c9
	inc e			;63ca
	jr l6406h		;63cb
	ld a,l			;63cd
	inc b			;63ce
	inc b			;63cf
	nop			;63d0
	add a,e			;63d1
	ex af,af'			;63d2
	jr z,l643dh		;63d3
	ld (bc),a			;63d5
	call po,0348ah		;63d6
	ld (bc),a			;63d9
	nop			;63da
	ret po			;63db
	ret p			;63dc
	jp (hl)			;63dd
	ex de,hl			;63de
	ld c,b			;63df
	rrca			;63e0
	ld de,l000eh		;63e1
	add a,c			;63e4
	inc bc			;63e5
	ld (bc),a			;63e6
	add a,b			;63e7
	add a,e			;63e8
	ld c,(hl)			;63e9
	cpl			;63ea
	ld bc,l0009h+1		;63eb
	add a,d			;63ee
	ld bc,l0202h		;63ef
	inc b			;63f2
	adc a,b			;63f3
	nop			;63f4
	inc bc			;63f5
	rrca			;63f6
	rra			;63f7
	scf			;63f8
	ld h,a			;63f9
l63fah:
	jp l0480h		;63fa
	nop			;63fd
	adc a,d			;63fe
	ret po			;63ff
	djnz l640ah		;6400
	nop			;6402
	ret p			;6403
	cp 0f3h		;6404
l6406h:
	ret po			;6406
	ret nz			;6407
	add a,b			;6408
	dec b			;6409
l640ah:
	nop			;640a
	add a,c			;640b
	rlca			;640c
	rlca			;640d
	nop			;640e
	add a,c			;640f
	add a,b			;6410
	ld (bc),a			;6411
	ld b,b			;6412
	ld (bc),a			;6413
	jr nz,l6419h		;6414
	nop			;6416
	add a,c			;6417
	add a,b			;6418
l6419h:
	inc bc			;6419
	nop			;641a
	ld (bc),a			;641b
	ld bc,l0003h+1		;641c
	add a,e			;641f
	inc b			;6420
	ld b,001h		;6421
	inc b			;6423
	nop			;6424
	sub b			;6425
	ccf			;6426
	ld (hl),d			;6427
	ret p			;6428
l6429h:
	adc a,h			;6429
	nop			;642a
	add hl,bc			;642b
	inc b			;642c
	ex af,af'			;642d
	jr $+123		;642e
	dec sp			;6430
	sbc a,d			;6431
	adc a,e			;6432
	pop bc			;6433
	ld b,b			;6434
	jr nz,l643ah		;6435
	nop			;6437
	ld (bc),a			;6438
	inc b			;6439
l643ah:
	add a,a			;643a
	ret pe			;643b
	ld l,b			;643c
l643dh:
	inc (hl)			;643d
	call nc,0b0e0h		;643e
	jr z,$+2		;6441
	call p,0f082h		;6443
	call po,sub_0d02h		;6446
	add a,d			;6449
	inc bc			;644a
	ld bc,l0012h		;644b
	add a,l			;644e
	inc bc			;644f
	inc b			;6450
	ex af,af'			;6451
	nop			;6452
	djnz l645ah		;6453
	nop			;6455
	adc a,l			;6456
	rrca			;6457
	ld e,020h		;6458
l645ah:
	ld bc,08600h		;645a
	cp (hl)			;645d
	call c,sub_594bh		;645e
	ld d,b			;6461
	ld (de),a			;6462
	inc bc			;6463
	ld (bc),a			;6464
	dec de			;6465
	add a,c			;6466
	add hl,bc			;6467
	nop			;6468
	djnz $-1		;6469
	ld (bc),a			;646b
	nop			;646c
	sub b			;646d
	inc a			;646e
	ld a,(hl)			;646f
	ld h,(hl)			;6470
	nop			;6471
	add a,c			;6472
	jp l3c66h		;6473
	jr l6478h		;6476
l6478h:
	add a,c			;6478
	nop			;6479
	inc a			;647a
	rst 38h			;647b
	cp l			;647c
	rst 38h			;647d
	ld (bc),a			;647e
	inc a			;647f
	add a,c			;6480
	ld a,(hl)			;6481
	ld (bc),a			;6482
	inc a			;6483
	add a,c			;6484
	jr l6490h		;6485
	nop			;6487
	add a,l			;6488
	ld b,d			;6489
	rst 20h			;648a
	rst 38h			;648b
	rst 20h			;648c
	jr l6491h		;648d
	rst 38h			;648f
l6490h:
	add a,c			;6490
l6491h:
	jp l0008h		;6491
	add a,d			;6494
	inc a			;6495
	inc h			;6496
	dec b			;6497
	jr l64a4h		;6498
	nop			;649a
	add a,e			;649b
	jr l64dah		;649c
	ld h,(hl)			;649e
	ld (bc),a			;649f
	nop			;64a0
	add a,e			;64a1
	inc a			;64a2
	ld e,d			;64a3
l64a4h:
	inc a			;64a4
	ld (bc),a			;64a5
	jr l6429h		;64a6
	nop			;64a8
	inc bc			;64a9
	jr l64b5h		;64aa
	nop			;64ac
	add a,l			;64ad
	djnz l64d8h		;64ae
	ld l,h			;64b0
	djnz l64dbh		;64b1
	rrca			;64b3
	nop			;64b4
l64b5h:
	inc bc			;64b5
	jr $+4		;64b6
	nop			;64b8
	add a,a			;64b9
	inc d			;64ba
	jr nz,l64cdh		;64bb
	jr $-128		;64bd
	jr nc,l64c1h		;64bf
l64c1h:
	ld (bc),a			;64c1
	inc b			;64c2
	ld (bc),a			;64c3
	ld (bc),a			;64c4
	dec b			;64c5
	nop			;64c6
	adc a,d			;64c7
	ld (l0804h),hl		;64c8
	rra			;64cb
	ld (bc),a			;64cc
l64cdh:
	jr c,l64e7h		;64cd
	inc c			;64cf
	inc b			;64d0
	ld (bc),a			;64d1
	ld b,h			;64d2
	nop			;64d3
	adc a,b			;64d4
	ld a,(hl)			;64d5
	rst 20h			;64d6
	ret po			;64d7
l64d8h:
	rst 28h			;64d8
	rst 20h			;64d9
l64dah:
	ld a,a			;64da
l64dbh:
	nop			;64db
	ld a,(hl)			;64dc
	inc b			;64dd
	rst 20h			;64de
	add a,c			;64df
	ld a,(hl)			;64e0
	dec bc			;64e1
	nop			;64e2
	adc a,h			;64e3
	ex af,af'			;64e4
	nop			;64e5
	ex af,af'			;64e6
l64e7h:
	nop			;64e7
	ex af,af'			;64e8
	nop			;64e9
	ld b,00eh		;64ea
	inc c			;64ec
	jr l64ffh		;64ed
	nop			;64ef
	ld (bc),a			;64f0
	ld h,b			;64f1
	add hl,bc			;64f2
	nop			;64f3
	adc a,c			;64f4
	ld a,060h		;64f5
	ld h,(hl)			;64f7
	ld a,000h		;64f8
	inc a			;64fa
	ld h,(hl)			;64fb
	inc a			;64fc
	nop			;64fd
	ld (bc),a			;64fe
l64ffh:
	inc b			;64ff
	ld (bc),a			;6500
	ex af,af'			;6501
	add a,d			;6502
	nop			;6503
l6504h:
	djnz l6508h		;6504
	nop			;6506
	add a,h			;6507
l6508h:
	jr l651ah		;6508
	jr l650ch		;650a
l650ch:
	ld (bc),a			;650c
	jr l6490h		;650d
	nop			;650f
	ld (bc),a			;6510
	ex af,af'			;6511
	add a,d			;6512
	nop			;6513
	djnz l651bh		;6514
	nop			;6516
	adc a,c			;6517
	inc b			;6518
	inc c			;6519
l651ah:
	inc e			;651a
l651bh:
	ccf			;651b
	ld a,a			;651c
	ccf			;651d
	inc e			;651e
	inc c			;651f
	inc b			;6520
	ld a,(bc)			;6521
	nop			;6522
	add a,c			;6523
	ret po			;6524
	ld (bc),a			;6525
	ret m			;6526
	add a,c			;6527
	inc a			;6528
	dec b			;6529
	inc e			;652a
	ld b,000h		;652b
	add a,(hl)			;652d
	jr nz,$+96		;652e
	call m,sub_67feh		;6530
	inc hl			;6533
	ld (bc),a			;6534
	inc bc			;6535
	ld a,(bc)			;6536
	nop			;6537
	add a,e			;6538
	jr nz,$+120		;6539
	inc h			;653b
	ld (bc),a			;653c
	inc b			;653d
	ld (de),a			;653e
	nop			;653f
	add a,d			;6540
	djnz $+8		;6541
	dec bc			;6543
	nop			;6544
	add a,c			;6545
	ld bc,l0003h		;6546
	add a,d			;6549
	jr nz,l6551h		;654a
	add hl,bc			;654c
	nop			;654d
	add a,c			;654e
	jr nz,l6553h		;654f
l6551h:
	nop			;6551
	add a,h			;6552
l6553h:
	ld a,d			;6553
	ex af,af'			;6554
	ld (l0820h),a		;6555
	nop			;6558
	add a,c			;6559
	ld bc,l0302h		;655a
	add a,l			;655d
	rlca			;655e
	dec b			;655f
	ld a,(bc)			;6560
	ld a,(de)			;6561
	ld d,002h		;6562
	nop			;6564
	add a,(hl)			;6565
	ld (bc),a			;6566
	ld h,e			;6567
	rst 38h			;6568
	ret m			;6569
	add a,03fh		;656a
	inc bc			;656c
	rst 38h			;656d
	add a,e			;656e
	add a,(hl)			;656f
	ld (bc),a			;6570
	ld bc,l0009h		;6571
	add a,(hl)			;6574
	add a,b			;6575
	ret m			;6576
	call m,0e81ch		;6577
	ret nz			;657a
	ld (bc),a			;657b
	nop			;657c
	add a,e			;657d
	ex af,af'			;657e
	nop			;657f
	ret po			;6580
	inc b			;6581
	nop			;6582
	add a,d			;6583
	ld bc,l0302h+1		;6584
	ld (bc),a			;6587
	add a,d			;6588
	ex af,af'			;6589
	djnz l658eh		;658a
	nop			;658c
	ld (bc),a			;658d
l658eh:
	ld bc,00f8fh		;658e
	jr l660dh		;6591
	ex (sp),hl			;6593
	ret z			;6594
	sbc a,l			;6595
	cp c			;6596
	inc de			;6597
	rst 0			;6598
	ld e,a			;6599
	rra			;659a
	ccf			;659b
	ld a,a			;659c
	add a,a			;659d
	ld b,002h		;659e
	nop			;65a0
	add a,c			;65a1
	jr nc,l65a6h		;65a2
	nop			;65a4
	add a,c			;65a5
l65a6h:
	ld h,b			;65a6
	ld (bc),a			;65a7
	ret po			;65a8
	adc a,h			;65a9
	ret p			;65aa
	ret m			;65ab
	cp 0b7h		;65ac
	cp e			;65ae
	ld l,0ech		;65af
	rst 8			;65b1
	djnz l65b4h		;65b2
l65b4h:
	ld e,07fh		;65b4
	ld (bc),a			;65b6
	rst 38h			;65b7
	add a,e			;65b8
	ld a,a			;65b9
	ccf			;65ba
	inc bc			;65bb
	rlca			;65bc
	nop			;65bd
	add a,(hl)			;65be
	ld (hl),a			;65bf
	ld (hl),e			;65c0
	add hl,sp			;65c1
	sub c			;65c2
	jp l02fdh		;65c3
	rst 38h			;65c6
	add a,c			;65c7
	cp 00eh		;65c8
	nop			;65ca
	add a,a			;65cb
	inc bc			;65cc
	inc b			;65cd
	dec de			;65ce
	rla			;65cf
	cpl			;65d0
	ld c,018h		;65d1
	ld (bc),a			;65d3
	nop			;65d4
	add a,(hl)			;65d5
	adc a,a			;65d6
	ld a,h			;65d7
	ld hl,l09cbh		;65d8
	inc b			;65db
	ld (bc),a			;65dc
	rra			;65dd
	adc a,b			;65de
	rrca			;65df
	add hl,de			;65e0
	jr c,l661dh		;65e1
	add hl,sp			;65e3
	jr nz,l65e8h		;65e4
	dec bc			;65e6
	inc b			;65e7
l65e8h:
	nop			;65e8
	adc a,c			;65e9
	inc b			;65ea
	ld b,(hl)			;65eb
	ld l,(hl)			;65ec
	ld (hl),c			;65ed
	rlca			;65ee
	rra			;65ef
	inc a			;65f0
	jr c,$+96		;65f1
	ld (bc),a			;65f3
	ld d,b			;65f4
	ex af,af'			;65f5
	nop			;65f6
	add a,h			;65f7
	ret nz			;65f8
	ret p			;65f9
	ret m			;65fa
	ret c			;65fb
	inc b			;65fc
	nop			;65fd
sub_65feh:
	add a,c			;65fe
	ld a,006h		;65ff
	nop			;6601
	add a,c			;6602
	ld bc,l0003h+2		;6603
	sub (hl)			;6606
	ld bc,00107h		;6607
	nop			;660a
	inc c			;660b
	add hl,de			;660c
l660dh:
	inc (hl)			;660d
	ld l,l			;660e
	ld b,e			;660f
	rla			;6610
	rrca			;6611
	ld e,026h		;6612
	ld b,c			;6614
	ld b,e			;6615
	ld a,(0fdfah)		;6616
	rst 38h			;6619
	rra			;661a
	nop			;661b
	ld h,b			;661c
l661dh:
	ld (bc),a			;661d
	ret nz			;661e
	adc a,h			;661f
	ret po			;6620
	add a,b			;6621
	ret c			;6622
	call z,sub_5ca0h		;6623
	ld a,h			;6626
	ld a,07eh		;6627
	cp 0efh		;6629
	add a,(hl)			;662b
	ld (bc),a			;662c
	nop			;662d
	adc a,c			;662e
	ld (bc),a			;662f
	rlca			;6630
	ld b,001h		;6631
	rlca			;6633
	ld l,054h		;6634
	jr c,l6698h		;6636
	ld (bc),a			;6638
	nop			;6639
	adc a,h			;663a
	rrca			;663b
	ld h,001h		;663c
	dec h			;663e
	ld (bc),a			;663f
	rrca			;6640
	dec b			;6641
	rlca			;6642
	inc b			;6643
	rlca			;6644
	nop			;6645
	dec b			;6646
l6647h:
	ld (bc),a			;6647
	inc bc			;6648
	ld (bc),a			;6649
	ld bc,l0302h		;664a
	add a,(hl)			;664d
	ld bc,l1020h		;664e
	sub b			;6651
	sbc a,033h		;6652
	ld (bc),a			;6654
	ld h,b			;6655
	add a,d			;6656
	and c			;6657
	inc bc			;6658
	ld (bc),a			;6659
	ld b,084h		;665a
	nop			;665c
	add hl,bc			;665d
	nop			;665e
	ld (bc),a			;665f
	ld b,000h		;6660
	add a,h			;6662
	add a,b			;6663
	sub b			;6664
	jr nz,l6647h		;6665
	ld (bc),a			;6667
	ret p			;6668
	add a,l			;6669
	ld l,b			;666a
	ld (hl),h			;666b
	ld l,047h		;666c
	ei			;666e
	inc bc			;666f
	nop			;6670
	adc a,l			;6671
	ld (bc),a			;6672
	inc bc			;6673
	nop			;6674
	inc bc			;6675
	ld c,01ch		;6676
	inc c			;6678
	nop			;6679
	inc bc			;667a
	ld c,003h		;667b
l667dh:
	ld b,003h		;667d
	ld (bc),a			;667f
	nop			;6680
	adc a,d			;6681
	ld b,00ch		;6682
	rlca			;6684
	ld c,018h		;6685
	ex af,af'			;6687
	nop			;6688
	ld bc,l03ffh+1		;6689
	ld (bc),a			;668c
	ld (bc),a			;668d
	add a,d			;668e
	nop			;668f
	inc bc			;6690
	inc b			;6691
	nop			;6692
	adc a,h			;6693
	ret nz			;6694
	ret po			;6695
	nop			;6696
	ld d,b			;6697
l6698h:
	ret nz			;6698
	call c,0f830h		;6699
	ld d,a			;669c
	ld l,d			;669d
	scf			;669e
	ei			;669f
	ld a,(bc)			;66a0
	nop			;66a1
	add a,h			;66a2
	ld (hl),b			;66a3
	ld d,b			;66a4
	ld a,b			;66a5
	djnz l66aah		;66a6
	nop			;66a8
	add a,d			;66a9
l66aah:
	ex af,af'			;66aa
	ret m			;66ab
	inc b			;66ac
	call m,0fe83h		;66ad
	ld a,(hl)			;66b0
	sbc a,h			;66b1
	rlca			;66b2
	nop			;66b3
	ld (bc),a			;66b4
	ret m			;66b5
	inc b			;66b6
	call m,sub_7c82h		;66b7
	jr c,l66cdh		;66ba
	nop			;66bc
	add a,d			;66bd
	ld (bc),a			;66be
	inc bc			;66bf
	ld (bc),a			;66c0
	dec b			;66c1
	add a,e			;66c2
	ex af,af'			;66c3
	djnz l66d8h		;66c4
	inc bc			;66c6
	nop			;66c7
	adc a,h			;66c8
	inc e			;66c9
	ld a,078h		;66ca
	ld b,b			;66cc
l66cdh:
	ld bc,00c07h		;66cd
	ex af,af'			;66d0
	jr $+33		;66d1
	rst 0			;66d3
	add a,a			;66d4
	ex af,af'			;66d5
	nop			;66d6
	sub e			;66d7
l66d8h:
	ret nz			;66d8
	jr c,l66e7h		;66d9
	inc b			;66db
	ret z			;66dc
	cp 0c3h		;66dd
	dec e			;66df
	ld a,l			;66e0
	nop			;66e1
	ret po			;66e2
	jr nz,$+35		;66e3
	daa			;66e5
	rlca			;66e6
l66e7h:
	ld c,(hl)			;66e7
	ld c,h			;66e8
	ld e,h			;66e9
	inc e			;66ea
	ld (bc),a			;66eb
	jr c,l667dh		;66ec
	ld a,05fh		;66ee
	ld c,a			;66f0
	inc sp			;66f1
	rrca			;66f2
	ld sp,08260h		;66f3
	inc bc			;66f6
	ex af,af'			;66f7
	inc e			;66f8
	jr c,l670bh		;66f9
	jp l0243h		;66fb
	rlca			;66fe
	add a,e			;66ff
	inc bc			;6700
	ex (sp),hl			;6701
	cp 002h		;6702
	ret po			;6704
	add a,d			;6705
	ld (hl),b			;6706
	jr c,l670bh		;6707
	jr l670dh		;6709
l670bh:
	inc e			;670b
	adc a,c			;670c
l670dh:
	call z,0fffeh		;670d
	or a			;6710
	cp e			;6711
	ld l,0ech		;6712
	rst 8			;6714
	rst 18h			;6715
	ld (bc),a			;6716
	rra			;6717
	add a,c			;6718
	ld a,a			;6719
	ld (bc),a			;671a
l671bh:
	rst 38h			;671b
	add a,e			;671c
	ld a,a			;671d
	ccf			;671e
	inc bc			;671f
	rlca			;6720
	nop			;6721
	add a,(hl)			;6722
	rst 30h			;6723
	di			;6724
	ld sp,hl			;6725
	pop af			;6726
	di			;6727
	.DB 0fdh,002h,0ffh	;illegal sequence		;6728
	add a,c			;672b
	cp 00ah		;672c
	nop			;672e
	add a,d			;672f
	ld bc,l0302h+1		;6730
	nop			;6733
	adc a,b			;6734
	ex af,af'			;6735
	jr l6764h		;6736
	ld h,a			;6738
	add a,e			;6739
	sub b			;673a
	djnz l6745h		;673b
	ld (bc),a			;673d
	nop			;673e
	add a,d			;673f
	ret po			;6740
	ret p			;6741
	ld (bc),a			;6742
	nop			;6743
	adc a,d			;6744
l6745h:
	inc c			;6745
	dec de			;6746
	ld sp,0c460h		;6747
	add a,(hl)			;674a
	rrca			;674b
	nop			;674c
	inc bc			;674d
	ld a,b			;674e
	ex af,af'			;674f
	nop			;6750
	ld (bc),a			;6751
l6752h:
	add a,b			;6752
	ld (bc),a			;6753
	ld b,b			;6754
	sub c			;6755
	ret p			;6756
	ex af,af'			;6757
	call po,sub_1174h		;6758
	inc de			;675b
	daa			;675c
	ld h,04eh		;675d
	ld e,(hl)			;675f
	ld c,(hl)			;6760
	ld h,(hl)			;6761
	scf			;6762
l6763h:
	rrca			;6763
l6764h:
	rlca			;6764
	inc bc			;6765
	ld bc,l0003h		;6766
	add a,e			;6769
	ret nz			;676a
	add a,b			;676b
	inc b			;676c
	ld (bc),a			;676d
	ld c,082h		;676e
	ld b,b			;6770
	ld h,e			;6771
	ld (bc),a			;6772
	rlca			;6773
	sbc a,c			;6774
	add a,a			;6775
	rst 0			;6776
	jp po,0f9f3h		;6777
	ld a,c			;677a
	ld a,a			;677b
	inc (hl)			;677c
	inc d			;677d
	ret c			;677e
l677fh:
	ld e,h			;677f
	inc e			;6780
	jr l671bh		;6781
	call z,0fcech		;6783
	cp h			;6786
	inc l			;6787
	ret nc			;6788
	djnz l677fh		;6789
	call m,sub_7333h		;678b
	inc b			;678e
	rst 38h			;678f
	add a,d			;6790
	ld a,a			;6791
	ld e,00fh		;6792
	nop			;6794
	sbc a,c			;6795
	inc bc			;6796
	ld b,00ch		;6797
	add hl,bc			;6799
	ld de,l0603h		;679a
	inc c			;679d
	ld bc,0e0f0h		;679e
	pop bc			;67a1
	set 1,c		;67a2
	ret nz			;67a4
	pop bc			;67a5
	ex (sp),hl			;67a6
	ld (hl),a			;67a7
	ld h,c			;67a8
	ld l,b			;67a9
	ld l,d			;67aa
	ld a,c			;67ab
	ld h,b			;67ac
	ld (l001bh),hl		;67ad
	djnz $-1		;67b0
	add a,d			;67b2
	inc a			;67b3
	ld a,(hl)			;67b4
	djnz $-1		;67b5
	inc bc			;67b7
	ld a,(hl)			;67b8
	ld (bc),a			;67b9
	inc a			;67ba
	add a,c			;67bb
	jr l67c6h		;67bc
	nop			;67be
	add a,d			;67bf
	inc a			;67c0
	ld a,(hl)			;67c1
	ld c,0ffh		;67c2
	add a,h			;67c4
	ld h,(hl)			;67c5
l67c6h:
	ld a,(hl)			;67c6
	ld h,(hl)			;67c7
	ld a,(hl)			;67c8
	inc b			;67c9
	jr l67d5h		;67ca
	nop			;67cc
	ld (bc),a			;67cd
	jr l6752h		;67ce
	ld a,(hl)			;67d0
	rst 38h			;67d1
	ld b,07eh		;67d2
	add a,d			;67d4
l67d5h:
	inc a			;67d5
	inc h			;67d6
	inc bc			;67d7
	jr $+9		;67d8
	nop			;67da
	add a,e			;67db
	djnz l6816h		;67dc
	ld a,h			;67de
	ld (bc),a			;67df
	jr c,l6763h		;67e0
	jr z,l67f1h		;67e2
	nop			;67e4
	add a,c			;67e5
	ex af,af'			;67e6
	inc bc			;67e7
	jr $+2		;67e8
	ld bc,l0384h		;67ea
	ld b,e			;67ed
	scf			;67ee
	ccf			;67ef
	ld (bc),a			;67f0
l67f1h:
	rra			;67f1
	sub c			;67f2
	rst 38h			;67f3
	ccf			;67f4
	rra			;67f5
	ccf			;67f6
	ld h,a			;67f7
	add a,e			;67f8
	inc bc			;67f9
	ld bc,08000h		;67fa
	add a,c			;67fd
sub_67feh:
	add a,0feh		;67fe
	call m,0fff8h		;6800
	cp 002h		;6803
	ret m			;6805
	add a,l			;6806
	call m,08ebch		;6807
	ld (bc),a			;680a
	nop			;680b
	djnz $-1		;680c
	add hl,bc			;680e
	nop			;680f
	rlca			;6810
	ld a,h			;6811
	inc b			;6812
	nop			;6813
	inc c			;6814
	rst 38h			;6815
l6816h:
	ld c,000h		;6816
	ld (bc),a			;6818
	jr l682bh		;6819
	rst 38h			;681b
	add hl,bc			;681c
	nop			;681d
	rlca			;681e
	ld a,00eh		;681f
	rst 38h			;6821
	ld (bc),a			;6822
	nop			;6823
	ld b,b			;6824
	rst 38h			;6825
	ld (bc),a			;6826
	nop			;6827
	inc c			;6828
	rst 38h			;6829
	rlca			;682a
l682bh:
	nop			;682b
	rlca			;682c
	rst 38h			;682d
	djnz l6830h		;682e
l6830h:
	inc b			;6830
	ld a,(hl)			;6831
	ld a,(bc)			;6832
	nop			;6833
	add a,(hl)			;6834
.DB $01 $00 $05
	rlca			;6838
	ld a,0d7h		;6839
	ex af,af'			;683b
	nop			;683c
	adc a,b			;683d
	ld c,b			;683e
	jr nz,$+24		;683f
	ld h,(hl)			;6841
	ei			;6842
	call c,0acf6h		;6843
	rlca			;6846
	nop			;6847
	add a,d			;6848
	ld bc,l0202h+1		;6849
	rlca			;684c
	ld (bc),a			;684d
	rrca			;684e
	inc bc			;684f
	rra			;6850
	add a,h			;6851
	nop			;6852
	inc e			;6853
	ld a,(hl)			;6854
	ld a,a			;6855
	inc c			;6856
	rst 38h			;6857
	ld b,000h		;6858
	add a,e			;685a
	ret nz			;685b
	ret m			;685c
	call m,0fe02h		;685d
	add a,d			;6860
	call m,003feh		;6861
	rst 38h			;6864
	add a,d			;6865
	rrca			;6866
	rst 38h			;6867
	inc bc			;6868
	ccf			;6869
	dec b			;686a
	ld a,a			;686b
	add a,e			;686c
	ld a,e			;686d
	ld a,c			;686e
	ld a,(hl)			;686f
	ld (bc),a			;6870
	ld a,a			;6871
	add a,c			;6872
	ccf			;6873
	dec c			;6874
	rst 38h			;6875
	add a,e			;6876
	ld a,a			;6877
	rst 20h			;6878
	rst 38h			;6879
	inc bc			;687a
	ret p			;687b
	inc bc			;687c
	ret m			;687d
	inc bc			;687e
	call m,0fe82h		;687f
	rst 38h			;6882
	ld (bc),a			;6883
	cp a			;6884
	add a,h			;6885
	cpl			;6886
	rst 28h			;6887
	rst 8			;6888
	rst 38h			;6889
	ld (bc),a			;688a
	rra			;688b
	add a,c			;688c
	ld a,a			;688d
	ld (bc),a			;688e
	rst 38h			;688f
	add a,e			;6890
	ld a,a			;6891
	ccf			;6892
	inc bc			;6893
	rlca			;6894
	nop			;6895
	dec b			;6896
	rst 38h			;6897
	add a,c			;6898
	.DB 0fdh,002h,0ffh	;illegal sequence		;6899
	add a,c			;689c
	cp 00ch		;689d
	nop			;689f
	add a,h			;68a0
	ld bc,l0702h+1		;68a1
	rrca			;68a4
	ld (bc),a			;68a5
	rra			;68a6
	add a,c			;68a7
	ccf			;68a8
	ld (bc),a			;68a9
	rra			;68aa
	ld (bc),a			;68ab
	rrca			;68ac
	ex af,af'			;68ad
	rst 38h			;68ae
	adc a,b			;68af
	ld a,a			;68b0
	ld a,l			;68b1
	ld a,h			;68b2
	ld a,(hl)			;68b3
	ld a,l			;68b4
	ld a,h			;68b5
	ld a,01fh		;68b6
	inc bc			;68b8
	nop			;68b9
	add a,e			;68ba
	jr l68f9h		;68bb
	ld a,(hl)			;68bd
	ld (bc),a			;68be
	ld a,a			;68bf
	add a,c			;68c0
	ccf			;68c1
	inc bc			;68c2
	ld a,a			;68c3
	inc bc			;68c4
	rst 38h			;68c5
	add a,c			;68c6
	ld e,a			;68c7
	ld b,000h		;68c8
	add a,e			;68ca
	ret nz			;68cb
	ret p			;68cc
	ret m			;68cd
	ld (bc),a			;68ce
	call m,0d883h		;68cf
	ret po			;68d2
	call m,0ff02h		;68d3
	inc bc			;68d6
	inc bc			;68d7
	ld b,007h		;68d8
	add a,c			;68da
	inc bc			;68db
	ld (bc),a			;68dc
	nop			;68dd
	add a,h			;68de
	ld bc,00107h		;68df
	nop			;68e2
	dec b			;68e3
	rst 38h			;68e4
	ld (bc),a			;68e5
	ccf			;68e6
	add a,d			;68e7
	rst 18h			;68e8
	rst 30h			;68e9
	ld (bc),a			;68ea
	rst 38h			;68eb
	add a,c			;68ec
	ccf			;68ed
	inc bc			;68ee
	rst 38h			;68ef
	add a,c			;68f0
	rra			;68f1
	dec b			;68f2
	ret p			;68f3
	add a,(hl)			;68f4
	ret m			;68f5
	call m,0acdch		;68f6
l68f9h:
	call c,003fch		;68f9
	cp 083h		;68fc
	rst 28h			;68fe
	add a,(hl)			;68ff
	nop			;6900
	ld (bc),a			;6901
	inc bc			;6902
	inc bc			;6903
	rlca			;6904
	add a,d			;6905
	rra			;6906
	ccf			;6907
	inc bc			;6908
	ld a,a			;6909
	add a,c			;690a
	rra			;690b
	rlca			;690c
	ccf			;690d
	add a,a			;690e
	dec e			;690f
	rra			;6910
	inc c			;6911
	rrca			;6912
	ld c,00fh		;6913
	rlca			;6915
	dec b			;6916
	inc bc			;6917
	add a,(hl)			;6918
	ld bc,0f060h		;6919
	cp 0ffh		;691c
	ld a,a			;691e
	inc bc			;691f
	rst 38h			;6920
	inc bc			;6921
	rra			;6922
	add a,l			;6923
	dec de			;6924
	add hl,de			;6925
	ld e,00fh		;6926
	ld bc,l0003h		;6928
	add a,d			;692b
	ret nz			;692c
	ret po			;692d
	inc b			;692e
	ret p			;692f
	add a,a			;6930
	ret m			;6931
	ret p			;6932
	ld l,h			;6933
	call p,sub_67feh		;6934
	ei			;6937
	ld (bc),a			;6938
	nop			;6939
	add a,c			;693a
	ld bc,l0302h+1		;693b
	add a,c			;693e
	rrca			;693f
	inc bc			;6940
	rra			;6941
	add a,c			;6942
	rrca			;6943
	ld (bc),a			;6944
	rra			;6945
	inc bc			;6946
	rrca			;6947
	ld (bc),a			;6948
	nop			;6949
	add a,c			;694a
	ld c,003h		;694b
	rrca			;694d
	adc a,d			;694e
	rra			;694f
	rrca			;6950
	rlca			;6951
	rrca			;6952
	dec c			;6953
	inc c			;6954
	rrca			;6955
	rlca			;6956
	nop			;6957
	inc bc			;6958
	inc bc			;6959
	nop			;695a
	add a,d			;695b
	add a,b			;695c
	ret po			;695d
	ld (bc),a			;695e
	ret p			;695f
	add a,c			;6960
	ret m			;6961
	inc bc			;6962
	call m,0ff85h		;6963
	rst 10h			;6966
	cp 077h		;6967
	ei			;6969
	ld a,(bc)			;696a
	nop			;696b
	adc a,b			;696c
	ld (hl),b			;696d
	ld a,b			;696e
	ld a,h			;696f
	inc a			;6970
	jr l6973h		;6971
l6973h:
	ex af,af'			;6973
	ret m			;6974
	inc b			;6975
	call m,0fe83h		;6976
	ld a,(hl)			;6979
	sbc a,h			;697a
	rlca			;697b
	nop			;697c
	ld b,0fch		;697d
	add a,d			;697f
	ld a,h			;6980
	jr c,l6992h		;6981
	nop			;6983
	add a,d			;6984
	ld bc,l0202h+1		;6985
	rlca			;6988
	ld (bc),a			;6989
	rrca			;698a
	inc bc			;698b
	rra			;698c
	add a,e			;698d
	nop			;698e
	inc e			;698f
	ld a,(hl)			;6990
	dec c			;6991
l6992h:
	rst 38h			;6992
	ld b,000h		;6993
	add a,e			;6995
	ret nz			;6996
	ret m			;6997
	call m,0fe02h		;6998
	add a,d			;699b
	call m,003feh		;699c
	rst 38h			;699f
	add a,d			;69a0
	rrca			;69a1
	rst 38h			;69a2
	inc b			;69a3
	ccf			;69a4
	inc b			;69a5
	ld a,a			;69a6
	ld (bc),a			;69a7
	ld a,c			;69a8
	add a,c			;69a9
	ld a,(hl)			;69aa
	ld (bc),a			;69ab
	ld a,a			;69ac
	add a,c			;69ad
	ccf			;69ae
	dec c			;69af
	rst 38h			;69b0
	add a,e			;69b1
	ld a,a			;69b2
	rst 20h			;69b3
	rst 38h			;69b4
	inc bc			;69b5
	ret p			;69b6
	inc bc			;69b7
	ret m			;69b8
	inc bc			;69b9
	call m,0fe82h		;69ba
	rst 38h			;69bd
	ld (bc),a			;69be
	cp a			;69bf
	add a,h			;69c0
	cpl			;69c1
	rst 28h			;69c2
	rst 8			;69c3
	rst 38h			;69c4
	ld (bc),a			;69c5
	rra			;69c6
	add a,c			;69c7
	ld a,a			;69c8
	ld (bc),a			;69c9
	rst 38h			;69ca
	add a,e			;69cb
	ld a,a			;69cc
	ccf			;69cd
	inc bc			;69ce
	rlca			;69cf
	nop			;69d0
	dec b			;69d1
	rst 38h			;69d2
	add a,c			;69d3
	.DB 0fdh,002h,0ffh	;illegal sequence		;69d4
	add a,c			;69d7
	cp 007h		;69d8
	nop			;69da
	add a,d			;69db
	ld bc,l0403h		;69dc
	rlca			;69df
	add a,h			;69e0
	rrca			;69e1
	rra			;69e2
	ccf			;69e3
	ld a,a			;69e4
	inc b			;69e5
	rst 38h			;69e6
	add a,h			;69e7
	ld a,a			;69e8
	rrca			;69e9
	ret po			;69ea
	ret p			;69eb
	inc bc			;69ec
	ret m			;69ed
	add a,c			;69ee
	cp 00ah		;69ef
	rst 38h			;69f1
	rlca			;69f2
	nop			;69f3
	add a,c			;69f4
	add a,b			;69f5
	ld (bc),a			;69f6
	ret nz			;69f7
	ld (bc),a			;69f8
	ret po			;69f9
	add a,d			;69fa
	ret p			;69fb
	ret m			;69fc
	ld (bc),a			;69fd
	call m,l1f02h		;69fe
	ld (bc),a			;6a01
	ccf			;6a02
	inc b			;6a03
	ld a,a			;6a04
	add a,l			;6a05
	ccf			;6a06
	rrca			;6a07
	rlca			;6a08
	inc bc			;6a09
	ld bc,l0003h		;6a0a
	dec bc			;6a0d
	rst 38h			;6a0e
	add a,c			;6a0f
	cp 002h		;6a10
	rst 38h			;6a12
	ld (bc),a			;6a13
	ld a,a			;6a14
	ld (bc),a			;6a15
	call m,0f881h		;6a16
	ld (bc),a			;6a19
	call m,0f802h		;6a1a
	inc bc			;6a1d
	call m,0bc84h		;6a1e
	inc a			;6a21
	call c,sub_021ch		;6a22
	call m,sub_3f82h		;6a25
	ld a,a			;6a28
	inc b			;6a29
	rst 38h			;6a2a
	add a,d			;6a2b
	ld a,a			;6a2c
	ld e,00eh		;6a2d
	nop			;6a2f
	add a,d			;6a30
	inc bc			;6a31
	rlca			;6a32
	ld (bc),a			;6a33
	rrca			;6a34
	ld (bc),a			;6a35
	rra			;6a36
	add a,d			;6a37
	rrca			;6a38
l6a39h:
	rlca			;6a39
	ld (bc),a			;6a3a
	rrca			;6a3b
l6a3ch:
	ex af,af'			;6a3c
	rst 38h			;6a3d
	adc a,b			;6a3e
	ld a,a			;6a3f
	ld a,l			;6a40
	ld a,h			;6a41
	ld a,(hl)			;6a42
	ld a,l			;6a43
	ld a,h			;6a44
	ld a,01fh		;6a45
	nop			;6a47
l6a48h:
	ld a,(bc)			;6a48
	nop			;6a49
	ld b,008h		;6a4a
	inc b			;6a4c
	nop			;6a4d
	add a,c			;6a4e
	inc b			;6a4f
	ld a,(bc)			;6a50
	inc d			;6a51
	add a,c			;6a52
	djnz l6a63h		;6a53
	ld (l3082h),a		;6a55
	djnz $+13		;6a58
	nop			;6a5a
	add a,c			;6a5b
	ld (l3202h),hl		;6a5c
	ld c,063h		;6a5f
	add a,e			;6a61
	ld h,d			;6a62
l6a63h:
	jr nz,$+2		;6a63
	ld (bc),a			;6a65
	ld bc,l4381h		;6a66
	inc c			;6a69
	ld h,e			;6a6a
	inc c			;6a6b
	nop			;6a6c
	add a,e			;6a6d
	jr l6a84h		;6a6e
	jr z,l6a7eh		;6a70
	nop			;6a72
	add a,h			;6a73
	jr c,l6ad0h		;6a74
	ld e,h			;6a76
	inc l			;6a77
l6a78h:
	rlca			;6a78
	nop			;6a79
	add a,l			;6a7a
	add a,b			;6a7b
	nop			;6a7c
	ret po			;6a7d
l6a7eh:
	ret nc			;6a7e
	ret c			;6a7f
	ld (bc),a			;6a80
	ld (hl),b			;6a81
	add a,e			;6a82
	sub b			;6a83
l6a84h:
	ret po			;6a84
	ld b,b			;6a85
l6a86h:
	ld b,000h		;6a86
	adc a,c			;6a88
	inc bc			;6a89
	ld c,01dh		;6a8a
	rrca			;6a8c
	inc hl			;6a8d
	rlca			;6a8e
	dec de			;6a8f
	dec bc			;6a90
	dec b			;6a91
	inc b			;6a92
	nop			;6a93
	adc a,l			;6a94
	add a,b			;6a95
	ret p			;6a96
	jr nz,l6a39h		;6a97
	inc b			;6a99
	ret pe			;6a9a
	sbc a,0ceh		;6a9b
	halt			;6a9d
	jr z,l6a3ch		;6a9e
	ret nz			;6aa0
	ld b,b			;6aa1
	ld (bc),a			;6aa2
	nop			;6aa3
	add a,c			;6aa4
	ld bc,l0702h		;6aa5
	xor e			;6aa8
	djnz l6b2ah		;6aa9
	ld a,01dh		;6aab
	ld l,a			;6aad
	inc hl			;6aae
	ld h,a			;6aaf
	dec sp			;6ab0
	dec bc			;6ab1
	dec c			;6ab2
	ex af,af'			;6ab3
	nop			;6ab4
	ld h,b			;6ab5
	inc l			;6ab6
	adc a,b			;6ab7
	call m,0a026h		;6ab8
	rlca			;6abb
	ret pe			;6abc
	rst 18h			;6abd
	adc a,077h		;6abe
	add hl,hl			;6ac0
	sbc a,(hl)			;6ac1
	ret nz			;6ac2
	ld b,b			;6ac3
	inc bc			;6ac4
	add hl,de			;6ac5
	dec a			;6ac6
	ld d,a			;6ac7
	ld h,a			;6ac8
	ret nc			;6ac9
	ld a,a			;6aca
	ld a,09dh		;6acb
	ld l,a			;6acd
	inc hl			;6ace
	rst 20h			;6acf
l6ad0h:
	dec sp			;6ad0
	dec bc			;6ad1
	dec c			;6ad2
	ex af,af'			;6ad3
	inc c			;6ad4
	nop			;6ad5
	add a,c			;6ad6
	jr nc,l6adbh		;6ad7
	jr $+9		;6ad9
l6adbh:
	nop			;6adb
	add a,l			;6adc
	ex af,af'			;6add
	djnz l6a78h		;6ade
	inc e			;6ae0
	ld a,b			;6ae1
	inc bc			;6ae2
	jr $-126		;6ae3
	add a,b			;6ae5
	ld b,b			;6ae6
	ld (bc),a			;6ae7
	add a,b			;6ae8
	adc a,b			;6ae9
	ret nz			;6aea
	adc a,b			;6aeb
	ret z			;6aec
	call z,0b8fch		;6aed
	ret nz			;6af0
	ld b,b			;6af1
	inc bc			;6af2
	ret nz			;6af3
	inc b			;6af4
	nop			;6af5
	ld (bc),a			;6af6
	ld bc,l1102h		;6af7
	ld (bc),a			;6afa
	add hl,de			;6afb
	ld (bc),a			;6afc
	rra			;6afd
	inc b			;6afe
	ld bc,0008eh		;6aff
	ret nz			;6b02
	ret po			;6b03
	jr nz,l6a86h		;6b04
	ret nz			;6b06
	pop bc			;6b07
	jp po,0e3c3h		;6b08
	jp 0bfffh		;6b0b
	sbc a,002h		;6b0e
	ret po			;6b10
	add a,d			;6b11
	and b			;6b12
	nop			;6b13
	ld (bc),a			;6b14
	ld bc,l0382h		;6b15
	inc hl			;6b18
	ld (bc),a			;6b19
	ld b,e			;6b1a
	dec b			;6b1b
	ld h,e			;6b1c
	inc bc			;6b1d
	ld a,a			;6b1e
	add a,d			;6b1f
	inc bc			;6b20
	inc a			;6b21
	ld b,03eh		;6b22
	add hl,bc			;6b24
	nop			;6b25
	add a,h			;6b26
	inc e			;6b27
	ld a,032h		;6b28
l6b2ah:
	ld a,c			;6b2a
	ld (bc),a			;6b2b
	ld a,l			;6b2c
	add a,a			;6b2d
	ld a,a			;6b2e
	ld a,l			;6b2f
	ld a,a			;6b30
	ld a,l			;6b31
	ld a,a			;6b32
	ld a,e			;6b33
	ld a,l			;6b34
	ld (bc),a			;6b35
	ld a,a			;6b36
	add a,h			;6b37
	ld a,e			;6b38
	ld a,l			;6b39
	ld a,a			;6b3a
	cp 002h		;6b3b
	rst 38h			;6b3d
	adc a,b			;6b3e
	.DB 0fdh,0ffh,07eh	;illegal sequence		;6b3f
	ld a,a			;6b42
	ld a,l			;6b43
	ld a,a			;6b44
	ld a,e			;6b45
	ld a,l			;6b46
	ld (bc),a			;6b47
	ld a,a			;6b48
	add a,e			;6b49
	nop			;6b4a
	jr nc,l6bb5h		;6b4b
	ld (bc),a			;6b4d
	ld (hl),b			;6b4e
	add a,d			;6b4f
	ld a,b			;6b50
	ld l,b			;6b51
	ld (bc),a			;6b52
	ld a,b			;6b53
	add a,e			;6b54
	ld l,b			;6b55
	ld a,h			;6b56
	ld (hl),a			;6b57
	inc bc			;6b58
	ld a,a			;6b59
	add a,c			;6b5a
	rra			;6b5b
	ld (bc),a			;6b5c
	nop			;6b5d
	add a,d			;6b5e
	inc c			;6b5f
	ld a,(de)			;6b60
	ld (bc),a			;6b61
	inc e			;6b62
	add a,a			;6b63
	ld e,01ah		;6b64
	ld e,0fah		;6b66
	cp 0fch		;6b68
	ret p			;6b6a
	dec a			;6b6b
	nop			;6b6c
	add a,a			;6b6d
	inc b			;6b6e
	ex af,af'			;6b6f
	djnz l6b92h		;6b70
	ld b,b			;6b72
	nop			;6b73
	ld b,b			;6b74
	add hl,bc			;6b75
	nop			;6b76
	add a,a			;6b77
	jr nz,l6b8ah		;6b78
	ex af,af'			;6b7a
	inc b			;6b7b
l6b7ch:
	ld (bc),a			;6b7c
	nop			;6b7d
	ld (bc),a			;6b7e
	djnz l6b91h		;6b7f
	rlca			;6b81
	nop			;6b82
	add a,a			;6b83
	ld bc,l0402h		;6b84
	ex af,af'			;6b87
	djnz l6baah		;6b88
l6b8ah:
	nop			;6b8a
	ld (bc),a			;6b8b
	ld b,b			;6b8c
	ld b,000h		;6b8d
	add a,c			;6b8f
	ld b,b			;6b90
l6b91h:
	rrca			;6b91
l6b92h:
	nop			;6b92
	add a,c			;6b93
	ld (bc),a			;6b94
	djnz l6b97h		;6b95
l6b97h:
	add a,a			;6b97
	add a,b			;6b98
	ld b,b			;6b99
	jr nz,l6bach		;6b9a
	ex af,af'			;6b9c
	inc b			;6b9d
	nop			;6b9e
	ld (bc),a			;6b9f
	ld (bc),a			;6ba0
	djnz l6bb7h		;6ba1
	add a,l			;6ba3
	nop			;6ba4
	jp 0c07ch		;6ba5
	add a,b			;6ba8
	dec bc			;6ba9
l6baah:
	nop			;6baa
	add a,(hl)			;6bab
l6bach:
	ld (hl),c			;6bac
	ld l,c			;6bad
	rst 38h			;6bae
	rst 18h			;6baf
	ld l,(hl)			;6bb0
	add a,00ah		;6bb1
	nop			;6bb3
	add a,(hl)			;6bb4
l6bb5h:
	inc h			;6bb5
	ex af,af'			;6bb6
l6bb7h:
	jr nc,l6b7ch		;6bb7
	ld a,a			;6bb9
	sub h			;6bba
	ld a,(bc)			;6bbb
	nop			;6bbc
	add a,(hl)			;6bbd
	add a,b			;6bbe
	ret nz			;6bbf
	ld (hl),b			;6bc0
	ld bc,0dff3h		;6bc1
	ld a,(bc)			;6bc4
	nop			;6bc5
	add a,(hl)			;6bc6
	or b			;6bc7
	jr nz,l6bfah		;6bc8
	inc c			;6bca
	ccf			;6bcb
	ld a,e			;6bcc
	ld a,(bc)			;6bcd
	nop			;6bce
	add a,l			;6bcf
	rra			;6bd0
	ccf			;6bd1
	rlca			;6bd2
	ld e,00eh		;6bd3
	djnz l6bd7h		;6bd5
l6bd7h:
	add a,l			;6bd7
	ret			;6bd8
	ld h,h			;6bd9
	jr nc,l6b7ch		;6bda
	add a,b			;6bdc
	ld (bc),a			;6bdd
	nop			;6bde
	add a,(hl)			;6bdf
	ld h,b			;6be0
	inc l			;6be1
	and h			;6be2
	nop			;6be3
	ld (bc),a			;6be4
	adc a,d			;6be5
	ld (bc),a			;6be6
	ret z			;6be7
	add a,l			;6be8
	ret pe			;6be9
	ret p			;6bea
	or 0ffh		;6beb
	adc a,a			;6bed
	ld (bc),a			;6bee
	rst 0			;6bef
	adc a,a			;6bf0
	add a,04eh		;6bf1
	ld e,a			;6bf3
	ld (hl),e			;6bf4
	ld a,(067cfh)		;6bf5
	cpl			;6bf8
	rst 38h			;6bf9
l6bfah:
	exx			;6bfa
	call m,sub_167ch		;6bfb
	dec bc			;6bfe
	add hl,bc			;6bff
l6c00h:
	ld (bc),a			;6c00
	inc b			;6c01
	ld (bc),a			;6c02
	ld bc,l128ch		;6c03
	ld d,001h		;6c06
	adc a,(hl)			;6c08
	ret po			;6c09
	ret nz			;6c0a
	rlca			;6c0b
	rra			;6c0c
	inc c			;6c0d
	ld h,b			;6c0e
l6c0fh:
	ret nz			;6c0f
	add a,b			;6c10
l6c11h:
	ld b,000h		;6c11
	add a,d			;6c13
	ret c			;6c14
	cp b			;6c15
	ld (bc),a			;6c16
	ld a,a			;6c17
	adc a,b			;6c18
	add a,a			;6c19
	ld e,03eh		;6c1a
l6c1ch:
	ld a,(hl)			;6c1c
	call m,0c4f0h		;6c1d
	call z,0c802h		;6c20
	add a,e			;6c23
	ex af,af'			;6c24
	inc h			;6c25
	inc c			;6c26
	ld (bc),a			;6c27
	ld b,08bh		;6c28
	jr $+83		;6c2a
	rst 30h			;6c2c
	or 07eh		;6c2d
	sbc a,(hl)			;6c2f
l6c30h:
	ld e,a			;6c30
	ld c,c			;6c31
	sbc a,a			;6c32
	cp a			;6c33
	adc a,d			;6c34
	ld (bc),a			;6c35
	rrca			;6c36
	ld (bc),a			;6c37
	nop			;6c38
	add a,(hl)			;6c39
	ld (bc),a			;6c3a
	inc c			;6c3b
	ld h,h			;6c3c
	jr c,l6c0fh		;6c3d
	ret po			;6c3f
	ld (bc),a			;6c40
	ld b,b			;6c41
	ld (bc),a			;6c42
	add a,b			;6c43
	ld b,000h		;6c44
	adc a,(hl)			;6c46
	ld b,b			;6c47
	ret nz			;6c48
	and b			;6c49
	ld e,b			;6c4a
	sbc a,c			;6c4b
	ld e,018h		;6c4c
	rra			;6c4e
	rlca			;6c4f
	ld sp,03efdh		;6c50
	sbc a,00eh		;6c53
	inc b			;6c55
	nop			;6c56
	adc a,h			;6c57
	ld bc,sub_0600h		;6c58
	rlca			;6c5b
	inc bc			;6c5c
	add hl,bc			;6c5d
	dec e			;6c5e
	adc a,0c6h		;6c5f
	ld d,(hl)			;6c61
	daa			;6c62
	dec e			;6c63
	ld b,000h		;6c64
	add a,d			;6c66
	djnz $+32		;6c67
	ld (bc),a			;6c69
	ret nz			;6c6a
	add a,l			;6c6b
	add a,b			;6c6c
	nop			;6c6d
	jr nz,l6c30h		;6c6e
	ld b,b			;6c70
	inc b			;6c71
	nop			;6c72
	adc a,l			;6c73
	add a,b			;6c74
	nop			;6c75
	jr c,l6cf4h		;6c76
	call nz,09f87h		;6c78
	ld (hl),c			;6c7b
	ld h,d			;6c7c
	ld h,e			;6c7d
	ld h,03ch		;6c7e
	ret c			;6c80
	inc bc			;6c81
	nop			;6c82
	add a,a			;6c83
	dec bc			;6c84
	ld de,l1900h		;6c85
	ld de,l3830h		;6c88
	inc bc			;6c8b
	jr nc,l6c11h		;6c8c
	djnz l6c1ch		;6c8e
	inc c			;6c90
	inc h			;6c91
	nop			;6c92
	add a,d			;6c93
	inc bc			;6c94
	rlca			;6c95
	ld (bc),a			;6c96
	inc bc			;6c97
	sub d			;6c98
	rlca			;6c99
	rrca			;6c9a
	ld h,02ch		;6c9b
	inc a			;6c9d
	jr $+62		;6c9e
	ld e,01fh		;6ca0
	rrca			;6ca2
	ld c,0f8h		;6ca3
	jp p,0e2f0h		;6ca5
	xor 0b0h		;6ca8
	jr nz,l6cb1h		;6caa
	nop			;6cac
l6cadh:
	add a,d			;6cad
	add a,b			;6cae
	ld b,b			;6caf
	ld (bc),a			;6cb0
l6cb1h:
	ld h,b			;6cb1
	add a,a			;6cb2
	ld b,b			;6cb3
	ccf			;6cb4
	rra			;6cb5
	inc b			;6cb6
l6cb7h:
	ld e,(hl)			;6cb7
	ld b,a			;6cb8
	ld bc,l0006h+1		;6cb9
	sbc a,h			;6cbc
	ld b,b			;6cbd
	ld a,b			;6cbe
	ret p			;6cbf
	ret nz			;6cc0
	or b			;6cc1
	nop			;6cc2
	ld c,b			;6cc3
	call nz,07ff8h		;6cc4
	rlca			;6cc7
	add a,l			;6cc8
	ld b,c			;6cc9
	rrca			;6cca
	inc bc			;6ccb
	ld c,08fh		;6ccc
	xor 0d0h		;6cce
	ld de,l3f7eh		;6cd0
	ld a,07eh		;6cd3
	ld a,l			;6cd5
	ld a,c			;6cd6
	jr l6ce9h		;6cd7
	ld (bc),a			;6cd9
	inc bc			;6cda
	add a,c			;6cdb
	ld bc,l0003h+1		;6cdc
	add a,c			;6cdf
	ret nz			;6ce0
	inc b			;6ce1
	nop			;6ce2
	add a,a			;6ce3
	add a,b			;6ce4
	ret po			;6ce5
	ret nz			;6ce6
	ld e,0e7h		;6ce7
l6ce9h:
	ret po			;6ce9
	ld a,a			;6cea
	dec bc			;6ceb
	nop			;6cec
	adc a,h			;6ced
	ld b,004h		;6cee
	nop			;6cf0
	ld a,c			;6cf1
	ret pe			;6cf2
	ld b,a			;6cf3
l6cf4h:
	rra			;6cf4
	ld e,a			;6cf5
	dec e			;6cf6
	inc hl			;6cf7
	ld l,e			;6cf8
	ld h,d			;6cf9
	ld (bc),a			;6cfa
	ld h,h			;6cfb
	add a,d			;6cfc
	adc a,b			;6cfd
	ld e,h			;6cfe
	ld (bc),a			;6cff
	ld a,b			;6d00
	add a,c			;6d01
	or b			;6d02
	ld (bc),a			;6d03
	nop			;6d04
	add a,c			;6d05
	ld a,(hl)			;6d06
	ld (bc),a			;6d07
	rst 20h			;6d08
	add a,c			;6d09
	rst 38h			;6d0a
	ld (bc),a			;6d0b
	rst 20h			;6d0c
	add a,c			;6d0d
	nop			;6d0e
	dec b			;6d0f
	ret po			;6d10
	add a,c			;6d11
	rst 38h			;6d12
	inc bc			;6d13
	nop			;6d14
	adc a,l			;6d15
	ld a,060h		;6d16
	ld h,(hl)			;6d18
	ld a,000h		;6d19
	inc a			;6d1b
	ld h,(hl)			;6d1c
	inc a			;6d1d
	nop			;6d1e
	inc a			;6d1f
	ld a,(hl)			;6d20
	ld h,(hl)			;6d21
	nop			;6d22
	ld (bc),a			;6d23
	ld h,b			;6d24
	add a,c			;6d25
	ld a,(hl)			;6d26
	ld (bc),a			;6d27
	nop			;6d28
	ld (bc),a			;6d29
	jr l6cadh		;6d2a
	nop			;6d2c
	ld (bc),a			;6d2d
	jr l6cb1h		;6d2e
	nop			;6d30
	ld (bc),a			;6d31
	jr l6cb7h		;6d32
	nop			;6d34
	djnz l6d4fh		;6d35
	inc bc			;6d37
	nop			;6d38
	nop			;6d39
	ex af,af'			;6d3a
	nop			;6d3b
	ld (bc),a			;6d3c
	jr l6d45h		;6d3d
	ex af,af'			;6d3f
	ld (bc),a			;6d40
	nop			;6d41
	add a,d			;6d42
	jr l6d81h		;6d43
l6d45h:
	dec bc			;6d45
	inc e			;6d46
	add a,c			;6d47
	jr l6d58h		;6d48
	ld (hl),082h		;6d4a
	inc (hl)			;6d4c
	djnz l6d59h		;6d4d
l6d4fh:
	nop			;6d4f
	add a,c			;6d50
	inc e			;6d51
	inc bc			;6d52
	ld a,002h		;6d53
	ld (hl),00eh		;6d55
	ld h,a			;6d57
l6d58h:
	add a,e			;6d58
l6d59h:
	ld h,(hl)			;6d59
	inc h			;6d5a
	ld a,003h		;6d5b
	ld a,a			;6d5d
l6d5eh:
	inc c			;6d5e
	ld h,a			;6d5f
	inc c			;6d60
	nop			;6d61
	add a,e			;6d62
	jr l6d79h		;6d63
	jr z,l6d72h		;6d65
	nop			;6d67
	add a,l			;6d68
	ex af,af'			;6d69
	jr c,l6dc6h		;6d6a
	ld e,h			;6d6c
	inc l			;6d6d
	rlca			;6d6e
	nop			;6d6f
	add a,d			;6d70
	add a,b			;6d71
l6d72h:
	and b			;6d72
	ld (bc),a			;6d73
	ret p			;6d74
	add a,c			;6d75
	ret c			;6d76
	ld (bc),a			;6d77
	ld (hl),b			;6d78
l6d79h:
	add a,e			;6d79
	sub b			;6d7a
	ret po			;6d7b
	ld b,b			;6d7c
	ld b,000h		;6d7d
	adc a,c			;6d7f
	inc bc			;6d80
l6d81h:
	rrca			;6d81
	dec e			;6d82
	rrca			;6d83
	inc hl			;6d84
	rlca			;6d85
	dec de			;6d86
	dec bc			;6d87
	dec b			;6d88
	inc b			;6d89
	nop			;6d8a
	adc a,l			;6d8b
	and b			;6d8c
	ret p			;6d8d
	ld h,b			;6d8e
	call p,0fcbch		;6d8f
	cp 0ceh		;6d92
	halt			;6d94
	jr z,$-100		;6d95
	ret nz			;6d97
	ld b,b			;6d98
	ld (bc),a			;6d99
	nop			;6d9a
	add a,c			;6d9b
	ld bc,l0702h		;6d9c
	xor e			;6d9f
	ld de,l3f7fh		;6da0
	dec e			;6da3
	ld l,a			;6da4
	inc hl			;6da5
	ld h,a			;6da6
	dec sp			;6da7
	dec bc			;6da8
	dec c			;6da9
	ex af,af'			;6daa
	nop			;6dab
	ld h,b			;6dac
	inc a			;6dad
	cp b			;6dae
	call m,0f466h		;6daf
l6db2h:
	cp a			;6db2
	call m,0ceffh		;6db3
	ld (hl),a			;6db6
	add hl,hl			;6db7
	sbc a,(hl)			;6db8
	ret nz			;6db9
	ld b,b			;6dba
	inc bc			;6dbb
	add hl,de			;6dbc
	dec a			;6dbd
	ld d,a			;6dbe
	ld h,a			;6dbf
	pop de			;6dc0
	ld a,a			;6dc1
	ccf			;6dc2
	sbc a,l			;6dc3
	ld l,a			;6dc4
	inc hl			;6dc5
l6dc6h:
	rst 20h			;6dc6
	dec sp			;6dc7
	dec bc			;6dc8
	dec c			;6dc9
	ex af,af'			;6dca
	dec bc			;6dcb
	nop			;6dcc
	add a,d			;6dcd
	djnz l6e00h		;6dce
	ld (bc),a			;6dd0
	jr $+9		;6dd1
	nop			;6dd3
	add a,l			;6dd4
	ex af,af'			;6dd5
	jr l6db2h		;6dd6
	inc e			;6dd8
	ld a,b			;6dd9
	inc bc			;6dda
	jr l6d5eh		;6ddb
	add a,b			;6ddd
	inc bc			;6dde
	ret nz			;6ddf
	add a,c			;6de0
	ret z			;6de1
	inc bc			;6de2
	call z,0fc82h		;6de3
	ret m			;6de6
	dec b			;6de7
	ret nz			;6de8
	inc b			;6de9
	nop			;6dea
	add a,d			;6deb
	ld bc,l0411h		;6dec
	add hl,de			;6def
	ld (bc),a			;6df0
	rra			;6df1
	inc b			;6df2
	ld bc,00082h		;6df3
	ret nz			;6df6
	inc b			;6df7
	ret po			;6df8
	dec b			;6df9
	ex (sp),hl			;6dfa
	ld (bc),a			;6dfb
	rst 38h			;6dfc
	add a,c			;6dfd
	cp 003h		;6dfe
l6e00h:
	ret po			;6e00
	add a,c			;6e01
	nop			;6e02
	ld (bc),a			;6e03
	ld bc,00381h		;6e04
	ex af,af'			;6e07
	ld h,e			;6e08
	inc bc			;6e09
	ld a,a			;6e0a
	add a,c			;6e0b
	inc bc			;6e0c
	rlca			;6e0d
	ld a,009h		;6e0e
	nop			;6e10
	add a,c			;6e11
	inc e			;6e12
	ld (bc),a			;6e13
	ld a,00fh		;6e14
	ld a,a			;6e16
	dec b			;6e17
	rst 38h			;6e18
	ex af,af'			;6e19
	ld a,a			;6e1a
	add a,d			;6e1b
	nop			;6e1c
	jr nc,l6e27h		;6e1d
	ld a,b			;6e1f
	add a,c			;6e20
	ld a,h			;6e21
	inc b			;6e22
	ld a,a			;6e23
	add a,c			;6e24
	rra			;6e25
l6e26h:
	ld (bc),a			;6e26
l6e27h:
	nop			;6e27
	add a,c			;6e28
	inc c			;6e29
	ld b,01eh		;6e2a
	ld (bc),a			;6e2c
	cp 082h		;6e2d
	call m,00ef0h		;6e2f
	nop			;6e32
	add a,d			;6e33
	jr l6e66h		;6e34
	ld c,000h		;6e36
	add a,d			;6e38
	jr l6e47h		;6e39
	dec e			;6e3b
	nop			;6e3c
	add a,a			;6e3d
	inc b			;6e3e
	ex af,af'			;6e3f
	inc de			;6e40
	ld h,04ch		;6e41
	jr l6e95h		;6e43
	add hl,bc			;6e45
	nop			;6e46
l6e47h:
	add a,a			;6e47
	jr nz,l6e5ah		;6e48
	ret z			;6e4a
	ld h,h			;6e4b
	ld (l0a18h),a		;6e4c
	djnz l6e61h		;6e4f
	rlca			;6e51
	nop			;6e52
	adc a,c			;6e53
	ld bc,l0402h		;6e54
	add hl,bc			;6e57
	inc de			;6e58
	daa			;6e59
l6e5ah:
	ld c,048h		;6e5a
	ld b,b			;6e5c
	ld b,000h		;6e5d
	add a,(hl)			;6e5f
	ld b,b			;6e60
l6e61h:
	nop			;6e61
	ld (hl),b			;6e62
	ret po			;6e63
	ret nz			;6e64
	add a,b			;6e65
l6e66h:
	ld a,(bc)			;6e66
	nop			;6e67
	add a,(hl)			;6e68
	ld (bc),a			;6e69
	nop			;6e6a
	ld c,007h		;6e6b
	inc bc			;6e6d
	ld bc,l0009h+2		;6e6e
	adc a,c			;6e71
	add a,b			;6e72
	ld b,b			;6e73
	jr nz,$-112		;6e74
	ret z			;6e76
	call po,sub_1270h		;6e77
	ld (bc),a			;6e7a
	djnz l6e91h		;6e7b
	add a,l			;6e7d
	ret m			;6e7e
	inc a			;6e7f
	ld b,b			;6e80
	ret nz			;6e81
	add a,b			;6e82
	dec bc			;6e83
	nop			;6e84
	ld (bc),a			;6e85
	cp (hl)			;6e86
	add a,h			;6e87
	ld l,(hl)			;6e88
	pop de			;6e89
	ld l,(hl)			;6e8a
	add a,00ah		;6e8b
	nop			;6e8d
	add a,h			;6e8e
	inc bc			;6e8f
	ld d,a			;6e90
l6e91h:
	rrca			;6e91
	inc a			;6e92
	inc c			;6e93
	nop			;6e94
l6e95h:
	add a,l			;6e95
	inc c			;6e96
	jr l6e26h		;6e97
	cp 00ch		;6e99
	dec bc			;6e9b
	nop			;6e9c
	add a,(hl)			;6e9d
	rst 0			;6e9e
	call nc,0f1cdh		;6e9f
	ret po			;6ea2
	ld (hl),b			;6ea3
	ld a,(bc)			;6ea4
	nop			;6ea5
	add a,l			;6ea6
	inc b			;6ea7
	ld c,(hl)			;6ea8
	ld a,a			;6ea9
	ld bc,l0e0eh+1		;6eaa
	nop			;6ead
	add a,(hl)			;6eae
	add a,b			;6eaf
	call m,09a36h		;6eb0
	ret z			;6eb3
	ld b,b			;6eb4
	inc bc			;6eb5
	nop			;6eb6
	adc a,l			;6eb7
	ld h,b			;6eb8
	inc l			;6eb9
	inc h			;6eba
	ret po			;6ebb
	jp p,0f8fah		;6ebc
	call m,sub_7fffh		;6ebf
	add hl,sp			;6ec2
	inc h			;6ec3
	ld (hl),d			;6ec4
	ld (bc),a			;6ec5
	ld a,091h		;6ec6
	inc a			;6ec8
	cp d			;6ec9
	inc hl			;6eca
	adc a,h			;6ecb
	push af			;6ecc
	rst 0			;6ecd
	pop hl			;6ece
	ret p			;6ecf
	ld sp,hl			;6ed0
	ccf			;6ed1
	rlca			;6ed2
	add a,e			;6ed3
	ld l,c			;6ed4
	ld (hl),h			;6ed5
	ld (hl),0f3h		;6ed6
	inc sp			;6ed8
	ld (bc),a			;6ed9
	ld h,(hl)			;6eda
	sbc a,(hl)			;6edb
	dec b			;6edc
	ld h,c			;6edd
	ccf			;6ede
	di			;6edf
	rst 18h			;6ee0
	ccf			;6ee1
	ret m			;6ee2
	ret po			;6ee3
	di			;6ee4
	add a,(hl)			;6ee5
	nop			;6ee6
l6ee7h:
	inc e			;6ee7
	ccf			;6ee8
	inc a			;6ee9
	jr c,l6efch		;6eea
	ld a,024h		;6eec
	rst 10h			;6eee
l6eefh:
	adc a,(hl)			;6eef
	dec a			;6ef0
	ld (hl),e			;6ef1
	ld a,d			;6ef2
	ei			;6ef3
	pop iy		;6ef4
	jp l63c7h		;6ef6
	inc bc			;6ef9
	ld (bc),a			;6efa
	rlca			;6efb
l6efch:
	adc a,b			;6efc
	add a,0c3h		;6efd
	inc c			;6eff
	ld b,01eh		;6f00
	ccf			;6f02
	ld a,04eh		;6f03
	ld (bc),a			;6f05
	ld l,l			;6f06
	adc a,b			;6f07
	dec c			;6f08
	add a,h			;6f09
	adc a,a			;6f0a
	add hl,de			;6f0b
sub_6f0ch:
	or e			;6f0c
	add a,a			;6f0d
	dec bc			;6f0e
	add hl,bc			;6f0f
	inc bc			;6f10
	nop			;6f11
	add a,l			;6f12
	inc c			;6f13
	ld h,h			;6f14
	jr c,l6ee7h		;6f15
	ret po			;6f17
	ld (bc),a			;6f18
	ld b,b			;6f19
	ld (bc),a			;6f1a
	add a,b			;6f1b
	ld b,000h		;6f1c
	add a,c			;6f1e
	ld h,b			;6f1f
	ld (bc),a			;6f20
	ld (hl),b			;6f21
	adc a,e			;6f22
	ret z			;6f23
	adc a,c			;6f24
	ld e,010h		;6f25
	rra			;6f27
	rlca			;6f28
	ld sp,03efdh		;6f29
	sbc a,0eeh		;6f2c
	inc b			;6f2e
	nop			;6f2f
	adc a,h			;6f30
	ld bc,l0903h		;6f31
	ex af,af'			;6f34
	inc e			;6f35
	rra			;6f36
	di			;6f37
	ret p			;6f38
	ld a,d			;6f39
	ld a,(de)			;6f3a
	inc bc			;6f3b
	inc e			;6f3c
	inc bc			;6f3d
	nop			;6f3e
	ld (bc),a			;6f3f
	inc b			;6f40
	add a,e			;6f41
	ld c,01ah		;6f42
	ld hl,(0d302h)		;6f44
	add a,c			;6f47
	sub c			;6f48
	inc bc			;6f49
	nop			;6f4a
	add a,d			;6f4b
	add a,b			;6f4c
	sbc a,003h		;6f4d
	nop			;6f4f
	adc a,b			;6f50
	add a,b			;6f51
	ret po			;6f52
	ret z			;6f53
	call nz,0fbf8h		;6f54
	ret po			;6f57
	ld e,(hl)			;6f58
	ld (bc),a			;6f59
	ld a,h			;6f5a
	add a,e			;6f5b
	add hl,sp			;6f5c
	inc sp			;6f5d
	rst 10h			;6f5e
	inc bc			;6f5f
	nop			;6f60
	add a,c			;6f61
	ex af,af'			;6f62
	ld (bc),a			;6f63
	add hl,de			;6f64
	add a,e			;6f65
	ld bc,l2811h		;6f66
	inc b			;6f69
	jr nz,l6eefh		;6f6a
	nop			;6f6c
	adc a,h			;6f6d
	inc c			;6f6e
	daa			;6f6f
	nop			;6f70
	add a,c			;6f71
	inc b			;6f72
	ld (bc),a			;6f73
	nop			;6f74
	add a,c			;6f75
	ld bc,l0302h		;6f76
	add a,e			;6f79
	rlca			;6f7a
	ld bc,l0321h		;6f7b
	nop			;6f7e
	add a,c			;6f7f
	inc b			;6f80
	ld (bc),a			;6f81
	inc c			;6f82
	adc a,d			;6f83
	inc e			;6f84
	djnz $+14		;6f85
	adc a,0b8h		;6f87
	ld e,d			;6f89
	nop			;6f8a
	jr nc,l6f93h		;6f8b
	ld a,h			;6f8d
	inc b			;6f8e
	nop			;6f8f
	ld (bc),a			;6f90
	ld b,b			;6f91
	adc a,d			;6f92
l6f93h:
	ld h,e			;6f93
	ld hl,l3430h		;6f94
	dec sp			;6f97
	add hl,sp			;6f98
	rrca			;6f99
	ld (hl),a			;6f9a
	ld h,0f7h		;6f9b
	ld b,000h		;6f9d
	adc a,d			;6f9f
	add a,b			;6fa0
	sub b			;6fa1
	jr l6fa4h		;6fa2
l6fa4h:
	add a,b			;6fa4
	ret m			;6fa5
	ld a,d			;6fa6
	cp (hl)			;6fa7
	ld b,b			;6fa8
	ld l,h			;6fa9
	ld (bc),a			;6faa
	ld (hl),b			;6fab
	add a,l			;6fac
	ld de,l0202h+1		;6fad
	ld bc,l01ffh+1		;6fb0
	ld bc,l0202h		;6fb3
	dec b			;6fb6
	nop			;6fb7
	sub d			;6fb8
	jr l6ff7h		;6fb9
	ld l,h			;6fbb
	ld a,b			;6fbc
	inc l			;6fbd
	inc c			;6fbe
	ld l,a			;6fbf
	jp nz,l51c0h		;6fc0
	inc e			;6fc3
l6fc4h:
	inc a			;6fc4
	ld bc,sub_06ffh+1		;6fc5
	nop			;6fc8
	cp a			;6fc9
	dec sp			;6fca
	ld (bc),a			;6fcb
	ld bc,l0800h+2		;6fcc
	adc a,d			;6fcf
	dec de			;6fd0
	rlca			;6fd1
	inc sp			;6fd2
	ex (sp),hl			;6fd3
	jp c,083f9h		;6fd4
	rlca			;6fd7
	add a,(hl)			;6fd8
	nop			;6fd9
	inc bc			;6fda
	add a,b			;6fdb
	adc a,b			;6fdc
	jp po,090c0h		;6fdd
	sbc a,h			;6fe0
	sbc a,b			;6fe1
	jr l7054h		;6fe2
	and b			;6fe4
	ld (bc),a			;6fe5
	add a,b			;6fe6
	inc sp			;6fe7
	nop			;6fe8
	nop			;6fe9
	ex af,af'			;6fea
	nop			;6feb
	ex af,af'			;6fec
	jr l6ff1h		;6fed
	nop			;6fef
	add a,c			;6ff0
l6ff1h:
	jr l6fffh		;6ff1
	inc a			;6ff3
	add a,c			;6ff4
	jr l7005h		;6ff5
l6ff7h:
	halt			;6ff7
	add a,d			;6ff8
	inc (hl)			;6ff9
	djnz l7006h		;6ffa
l6ffch:
	nop			;6ffc
	add a,c			;6ffd
	inc a			;6ffe
l6fffh:
	inc bc			;6fff
	ld a,(hl)			;7000
l7001h:
	ld (bc),a			;7001
	halt			;7002
	ld c,0e7h		;7003
l7005h:
	add a,e			;7005
l7006h:
	ld h,(hl)			;7006
	inc h			;7007
	ld a,(hl)			;7008
	inc bc			;7009
	rst 38h			;700a
	inc c			;700b
	rst 20h			;700c
	inc c			;700d
	nop			;700e
l700fh:
	add a,h			;700f
	djnz $+44		;7010
	inc a			;7012
	jr c,l701fh		;7013
	nop			;7015
	add a,(hl)			;7016
	jr $+4		;7017
	ld (hl),066h		;7019
	ld (hl),h			;701b
	jr c,l7024h		;701c
	nop			;701e
l701fh:
	adc a,d			;701f
	add a,b			;7020
	and b			;7021
	djnz l6fc4h		;7022
l7024h:
	ret nc			;7024
	add a,b			;7025
	ret nc			;7026
	sub b			;7027
	and b			;7028
l7029h:
	add a,b			;7029
	ld b,000h		;702a
l702ch:
	ld (bc),a			;702c
	ld bc,01188h		;702d
	jr l706eh		;7030
	ex af,af'			;7032
	ld d,01ch		;7033
	ld e,00fh		;7035
	inc bc			;7037
	nop			;7038
	adc a,l			;7039
	jr nz,l6ffch		;703a
	ret po			;703c
	call nc,l14b7h+1		;703d
	and h			;7040
	call nc,0dc82h		;7041
	sbc a,b			;7044
	sub b			;7045
	and b			;7046
	ld (bc),a			;7047
	nop			;7048
	xor (hl)			;7049
	ld (bc),a			;704a
	inc bc			;704b
	add hl,de			;704c
	add hl,hl			;704d
	ld (hl),l			;704e
	ld b,c			;704f
	ld (hl),c			;7050
	ld a,b			;7051
	ld a,h			;7052
	ld c,b			;7053
l7054h:
	halt			;7054
	ld a,h			;7055
	halt			;7056
	rla			;7057
	add a,b			;7058
	ret po			;7059
	jr nc,l7094h		;705a
	call nz,0d4e0h		;705c
	cp c			;705f
	inc d			;7060
	and l			;7061
	call nc,0df83h		;7062
	sbc a,d			;7065
	sbc a,b			;7066
	and b			;7067
	dec b			;7068
	rlca			;7069
	ld (l592bh),a		;706a
	jp (hl)			;706d
l706eh:
	push af			;706e
	ld b,c			;706f
	ld (hl),c			;7070
	ret m			;7071
	call m,0f6c8h		;7072
	ld a,h			;7075
	halt			;7076
	rla			;7077
	dec bc			;7078
	nop			;7079
	add a,d			;707a
	djnz l709dh		;707b
	ld (bc),a			;707d
	jr z,l7001h		;707e
	djnz l708ah		;7080
	nop			;7082
	add a,(hl)			;7083
	djnz l70aeh		;7084
	ld h,d			;7086
	and d			;7087
	add a,(hl)			;7088
	ret po			;7089
l708ah:
	ld (bc),a			;708a
	jr nz,l700fh		;708b
	nop			;708d
	add a,b			;708e
	ld (bc),a			;708f
	ld b,b			;7090
	adc a,b			;7091
	ex af,af'			;7092
	ld d,h			;7093
l7094h:
	inc d			;7094
	djnz l7097h		;7095
l7097h:
	ld b,h			;7097
	jr c,$-128		;7098
	inc bc			;709a
	nop			;709b
	add a,d			;709c
l709dh:
	add a,b			;709d
	nop			;709e
	ld (bc),a			;709f
	ld bc,l0282h		;70a0
	ld (de),a			;70a3
	ld (bc),a			;70a4
	ld hl,(l2202h)		;70a5
	ld (bc),a			;70a8
	jr nz,l702ch		;70a9
	ld e,003h		;70ab
	ld (bc),a			;70ad
l70aeh:
	add a,c			;70ae
	ld bc,l0001h+1		;70af
	adc a,a			;70b2
	ret nz			;70b3
	ld h,b			;70b4
	jr nz,$+34		;70b5
	rlca			;70b7
	inc h			;70b8
	inc b			;70b9
	inc h			;70ba
	nop			;70bb
	ld b,b			;70bc
	ccf			;70bd
	ld e,000h		;70be
	ld b,b			;70c0
	ld bc,l0302h		;70c1
	add a,d			;70c4
	ld b,046h		;70c5
	ld (bc),a			;70c7
	and 005h		;70c8
	add a,085h		;70ca
	jp nz,0fcc0h		;70cc
	ld a,(hl)			;70cf
	ld h,d			;70d0
	ld b,060h		;70d1
	add a,c			;70d3
	inc a			;70d4
	ex af,af'			;70d5
	nop			;70d6
	add a,c			;70d7
	jr nz,l70dch		;70d8
	ld l,h			;70da
	add a,c			;70db
l70dch:
	add a,002h		;70dc
	jp nz,0c087h		;70de
	jp nz,0c2c0h		;70e1
	ret nz			;70e4
	call nz,l02c2h		;70e5
	ret nz			;70e8
	add a,h			;70e9
	call nz,0c0c2h		;70ea
	ld bc,l0001h+1		;70ed
	adc a,b			;70f0
	ld b,d			;70f1
	ret nz			;70f2
	pop bc			;70f3
	ret nz			;70f4
	jp nz,0c4c0h		;70f5
	jp nz,0c002h		;70f8
	add a,e			;70fb
	ld a,(hl)			;70fc
	ld b,b			;70fd
	ret nc			;70fe
	ld (bc),a			;70ff
	ret z			;7100
	add a,d			;7101
	ret nz			;7102
	ret nc			;7103
	ld (bc),a			;7104
	ret nz			;7105
	add a,e			;7106
	ret nc			;7107
	ret nz			;7108
	ret z			;7109
	ld (bc),a			;710a
	ret nz			;710b
	add a,(hl)			;710c
	ret po			;710d
	ld a,a			;710e
	rra			;710f
	nop			;7110
	djnz l7147h		;7111
	ld (bc),a			;7113
	ld (l3088h),a		;7114
	inc (hl)			;7117
	jr nz,l711eh		;7118
	ld (bc),a			;711a
l711bh:
	ld c,0fch		;711b
	ret p			;711d
l711eh:
	dec bc			;711e
	nop			;711f
	add a,h			;7120
	jr l7143h		;7121
	ld e,b			;7123
	or b			;7124
	inc b			;7125
	add a,b			;7126
	ex af,af'			;7127
	nop			;7128
	add a,h			;7129
	jr l7130h		;712a
	ld a,(de)			;712c
	dec c			;712d
	inc b			;712e
	ld (bc),a			;712f
l7130h:
	ex af,af'			;7130
	djnz l7143h		;7131
	nop			;7133
	adc a,b			;7134
	rlca			;7135
	inc c			;7136
	dec de			;7137
	scf			;7138
	ld l,(hl)			;7139
	call c,0f0b8h		;713a
	ex af,af'			;713d
	nop			;713e
	adc a,b			;713f
	ret po			;7140
	jr nc,l711bh		;7141
l7143h:
	call pe,sub_3b76h		;7143
	dec e			;7146
l7147h:
	rrca			;7147
	djnz l717ah		;7148
	ld b,000h		;714a
	adc a,d			;714c
	ld bc,l0603h		;714d
	dec c			;7150
	dec de			;7151
	scf			;7152
	ld l,a			;7153
	ld e,(hl)			;7154
	ret c			;7155
	ret nc			;7156
	dec b			;7157
	nop			;7158
	add a,a			;7159
	ld (hl),b			;715a
	ret nz			;715b
	ld (hl),b			;715c
	ret p			;715d
	ret po			;715e
	ret nz			;715f
	add a,b			;7160
	add hl,bc			;7161
	nop			;7162
	add a,a			;7163
	ld c,003h		;7164
	ld c,00fh		;7166
	rlca			;7168
	inc bc			;7169
	ld bc,l0009h+1		;716a
	adc a,d			;716d
	add a,b			;716e
	ret nz			;716f
	ld h,b			;7170
	or b			;7171
	ret c			;7172
	call pe,sub_7af6h		;7173
	dec de			;7176
	dec bc			;7177
	djnz l71aeh		;7178
l717ah:
	add a,a			;717a
	ret m			;717b
	rst 38h			;717c
	call m,0c0e0h		;717d
	ret m			;7180
	ret p			;7181
	add hl,bc			;7182
	nop			;7183
	ld (bc),a			;7184
	cp a			;7185
	dec b			;7186
	rst 38h			;7187
	add hl,bc			;7188
	nop			;7189
	adc a,b			;718a
	inc hl			;718b
	ld d,a			;718c
	ccf			;718d
	rst 38h			;718e
	ld a,b			;718f
	ld l,e			;7190
	rst 38h			;7191
	call m,l0008h		;7192
	add a,e			;7195
	adc a,h			;7196
	ret c			;7197
	.DB 0fdh,002h,0ffh	;illegal sequence		;7198
	add a,c			;719b
	cp 002h		;719c
	rst 38h			;719e
	ex af,af'			;719f
	nop			;71a0
	adc a,b			;71a1
	rst 30h			;71a2
	call p,0f5cdh		;71a3
	rst 20h			;71a6
	rst 38h			;71a7
	ld a,a			;71a8
	ld bc,l0008h		;71a9
	add a,(hl)			;71ac
	rra			;71ad
l71aeh:
	ld a,a			;71ae
	rst 38h			;71af
	ld a,a			;71b0
	ccf			;71b1
	rrca			;71b2
	dec c			;71b3
	nop			;71b4
	sub c			;71b5
	add a,b			;71b6
	call m,0feffh		;71b7
	ret m			;71ba
	ret p			;71bb
	ret po			;71bc
	add a,b			;71bd
	ret nz			;71be
	ret p			;71bf
	cp 0ffh		;71c0
	call m,0fafeh		;71c2
	ret m			;71c5
	call m,0ff09h		;71c6
	add a,c			;71c9
	ld a,a			;71ca
	ld (bc),a			;71cb
	rst 38h			;71cc
	add a,d			;71cd
	rst 8			;71ce
	rst 20h			;71cf
	inc bc			;71d0
	rst 38h			;71d1
	add a,d			;71d2
	rst 8			;71d3
	ex de,hl			;71d4
	ld (bc),a			;71d5
	ld a,a			;71d6
	add a,e			;71d7
	ccf			;71d8
	rst 30h			;71d9
	scf			;71da
	ld (bc),a			;71db
	ld h,(hl)			;71dc
	add a,e			;71dd
	dec d			;71de
	ld (hl),c			;71df
	ccf			;71e0
	ld b,0ffh		;71e1
	adc a,h			;71e3
	and 0c0h		;71e4
	sbc a,h			;71e6
	ccf			;71e7
	inc a			;71e8
	jr c,l71fbh		;71e9
	ld a,024h		;71eb
	rst 38h			;71ed
l71eeh:
	cp 0bfh		;71ee
	ld b,0ffh		;71f0
	add a,d			;71f2
	rst 30h			;71f3
	rst 20h			;71f4
	inc bc			;71f5
	rst 8			;71f6
	add a,e			;71f7
	adc a,0e7h		;71f8
	ccf			;71fa
l71fbh:
	ld (bc),a			;71fb
	rra			;71fc
	add a,d			;71fd
	ccf			;71fe
	ld a,a			;71ff
	dec b			;7200
	rst 38h			;7201
	add a,e			;7202
	rst 18h			;7203
	sbc a,c			;7204
	cp a			;7205
	ld (bc),a			;7206
	adc a,a			;7207
	add a,c			;7208
	rrca			;7209
	ld (bc),a			;720a
	nop			;720b
	add a,h			;720c
	ld (bc),a			;720d
	inc c			;720e
	ld a,h			;720f
	ret m			;7210
	ld (bc),a			;7211
	ret p			;7212
	add a,c			;7213
	ret po			;7214
	ld (bc),a			;7215
	ret nz			;7216
	ld (bc),a			;7217
	add a,b			;7218
	dec b			;7219
	nop			;721a
	add a,c			;721b
	ld h,b			;721c
	ld (bc),a			;721d
	ret p			;721e
	add a,d			;721f
	ret m			;7220
	ld sp,hl			;7221
	inc bc			;7222
	sbc a,a			;7223
	add a,d			;7224
	cp a			;7225
	ld a,a			;7226
	inc b			;7227
	rst 38h			;7228
	inc b			;7229
	nop			;722a
	add a,d			;722b
	ld bc,l0202h+1		;722c
	rrca			;722f
	ld (bc),a			;7230
	rra			;7231
	inc bc			;7232
	rst 38h			;7233
	add a,e			;7234
	ld e,a			;7235
	daa			;7236
	rra			;7237
	inc bc			;7238
	nop			;7239
	ld (bc),a			;723a
	inc b			;723b
	add a,e			;723c
	ld c,01ah		;723d
	ld a,(0f302h)		;723f
	add a,e			;7242
	pop af			;7243
	ld h,b			;7244
	jr nz,l7249h		;7245
	ret nz			;7247
	add a,c			;7248
l7249h:
	sbc a,002h		;7249
	nop			;724b
	add a,h			;724c
	add a,b			;724d
	ret po			;724e
	ret p			;724f
	ret m			;7250
	ld (bc),a			;7251
	call m,0ff03h		;7252
	add a,e			;7255
	cp 0ffh		;7256
	ld a,a			;7258
	ld (bc),a			;7259
	rst 38h			;725a
	add a,l			;725b
	nop			;725c
	ld b,00fh		;725d
	dec de			;725f
	dec e			;7260
	ld (bc),a			;7261
	rra			;7262
	add a,d			;7263
	dec de			;7264
	dec sp			;7265
	ld (bc),a			;7266
	add hl,sp			;7267
	ld (bc),a			;7268
	jr c,l71eeh		;7269
	ret m			;726b
	rst 18h			;726c
	ld l,a			;726d
	inc h			;726e
	nop			;726f
	add a,e			;7270
	inc bc			;7271
	rlca			;7272
	inc bc			;7273
	ld (bc),a			;7274
	rlca			;7275
	sbc a,b			;7276
	rrca			;7277
	daa			;7278
l7279h:
	cpl			;7279
	ccf			;727a
	rra			;727b
	rrca			;727c
	daa			;727d
	rra			;727e
	dec bc			;727f
	ld a,(bc)			;7280
	call m,0eccch		;7281
	cp (hl)			;7284
	cp 0beh		;7285
	xor 0b8h		;7287
	ld e,d			;7289
	nop			;728a
	jr nc,l7293h		;728b
	call m,sub_023eh+2		;728d
	ld h,b			;7290
	add a,h			;7291
	ld b,b			;7292
l7293h:
	ld b,a			;7293
	ld e,a			;7294
	ld h,a			;7295
	ld (bc),a			;7296
	ld (hl),a			;7297
	adc a,(hl)			;7298
	dec (hl)			;7299
	dec sp			;729a
	add hl,sp			;729b
	rrca			;729c
l729dh:
	ld (hl),a			;729d
	ld h,0f7h		;729e
	nop			;72a0
l72a1h:
	ld b,b			;72a1
	ld a,b			;72a2
	ret p			;72a3
	ret nz			;72a4
	or b			;72a5
	add a,b			;72a6
l72a7h:
	ld (bc),a			;72a7
	ret c			;72a8
	add a,c			;72a9
	ret m			;72aa
	inc b			;72ab
	rst 38h			;72ac
	add a,e			;72ad
	ld c,c			;72ae
	ld l,a			;72af
	halt			;72b0
	ld (bc),a			;72b1
	rst 38h			;72b2
	add a,l			;72b3
	out (003h),a		;72b4
	ld a,a			;72b6
	ld a,03dh		;72b7
	ld (bc),a			;72b9
	ld a,a			;72ba
	add a,e			;72bb
	ld a,e			;72bc
	jr l72cfh		;72bd
	ld (bc),a			;72bf
	inc bc			;72c0
	adc a,e			;72c1
	ld bc,l3c18h		;72c2
	ld l,h			;72c5
	ld a,b			;72c6
	call pe,sub_6f0ch		;72c7
	jp nz,0d1c0h		;72ca
	ld (bc),a			;72cd
	cp h			;72ce
l72cfh:
	add a,(hl)			;72cf
	add hl,de			;72d0
	pop bc			;72d1
	rst 20h			;72d2
	ld a,h			;72d3
	cp a			;72d4
	dec sp			;72d5
	ld (bc),a			;72d6
	ld bc,l0800h+2		;72d7
	sbc a,b			;72da
	dec de			;72db
	rlca			;72dc
	inc sp			;72dd
	ex (sp),hl			;72de
	jp c,083fbh		;72df
	rlca			;72e2
	rst 30h			;72e3
	ld l,b			;72e4
	jp 0c098h		;72e5
	rst 20h			;72e8
	ex (sp),hl			;72e9
	di			;72ea
	cp 0fch		;72eb
	ld e,h			;72ed
	ret m			;72ee
	or h			;72ef
	add a,b			;72f0
	ret nz			;72f1
	or b			;72f2
	ld (bc),a			;72f3
	nop			;72f4
	add a,c			;72f5
	ld a,(hl)			;72f6
	ld (bc),a			;72f7
	rst 20h			;72f8
	add a,c			;72f9
	rst 38h			;72fa
	ld (bc),a			;72fb
	rst 20h			;72fc
	add a,c			;72fd
	nop			;72fe
	dec b			;72ff
	ret po			;7300
	add a,c			;7301
	rst 38h			;7302
	inc bc			;7303
	nop			;7304
	adc a,l			;7305
	ld a,060h		;7306
	ld h,(hl)			;7308
	ld a,000h		;7309
	inc a			;730b
	ld h,(hl)			;730c
	inc a			;730d
	nop			;730e
	inc a			;730f
	ld a,(hl)			;7310
	ld h,(hl)			;7311
	nop			;7312
	ld (bc),a			;7313
	ld h,b			;7314
	add a,c			;7315
	ld a,(hl)			;7316
	ld (bc),a			;7317
	nop			;7318
	ld (bc),a			;7319
	jr l729dh		;731a
	nop			;731c
	ld (bc),a			;731d
	jr l72a1h		;731e
	nop			;7320
	ld (bc),a			;7321
	jr l72a7h		;7322
	nop			;7324
	djnz l733fh		;7325
	inc bc			;7327
	nop			;7328
	nop			;7329
	ex af,af'			;732a
	nop			;732b
	ex af,af'			;732c
	jr l7331h		;732d
	nop			;732f
	add a,c			;7330
l7331h:
	jr l733fh		;7331
sub_7333h:
	inc a			;7333
	add a,c			;7334
	jr l7345h		;7335
	ld a,(hl)			;7337
	add a,d			;7338
	inc a			;7339
	jr l7346h		;733a
	nop			;733c
	add a,c			;733d
	inc a			;733e
l733fh:
	dec b			;733f
	ld a,(hl)			;7340
	ld c,0ffh		;7341
	add a,e			;7343
	ld a,(hl)			;7344
l7345h:
	inc a			;7345
l7346h:
	ld a,(hl)			;7346
	rrca			;7347
	rst 38h			;7348
	inc c			;7349
	nop			;734a
	add a,c			;734b
	jr l7350h		;734c
	inc a			;734e
	add a,c			;734f
l7350h:
	jr c,l735ch		;7350
	nop			;7352
l7353h:
	add a,d			;7353
	jr l7392h		;7354
	ld (bc),a			;7356
	ld a,(hl)			;7357
	add a,d			;7358
	ld a,h			;7359
	jr c,l7362h		;735a
l735ch:
	nop			;735c
	add a,d			;735d
	add a,b			;735e
	and b			;735f
	ld (bc),a			;7360
	ret p			;7361
l7362h:
	add a,c			;7362
	ret c			;7363
	ld (bc),a			;7364
	ret p			;7365
	add a,e			;7366
	sub b			;7367
	ret po			;7368
	ret nz			;7369
	ld b,000h		;736a
	add a,(hl)			;736c
	inc bc			;736d
	rrca			;736e
	dec e			;736f
	rra			;7370
	ccf			;7371
	rrca			;7372
	inc bc			;7373
	rra			;7374
	add a,c			;7375
	rrca			;7376
	inc bc			;7377
	nop			;7378
	adc a,l			;7379
	and b			;737a
	ret p			;737b
	ret po			;737c
	call p,0fcbch		;737d
	cp 0deh		;7380
	or 0fch		;7382
	sbc a,h			;7384
	ret nc			;7385
	ret po			;7386
	ld (bc),a			;7387
	nop			;7388
	add a,h			;7389
	inc bc			;738a
	rlca			;738b
	rra			;738c
	add hl,sp			;738d
	ld (bc),a			;738e
	ld a,a			;738f
	add a,c			;7390
	ld a,l			;7391
l7392h:
	ld (bc),a			;7392
	ld a,a			;7393
	add a,c			;7394
	ld l,a			;7395
	inc bc			;7396
	ld a,a			;7397
	sub h			;7398
	rra			;7399
	add a,b			;739a
	ret po			;739b
	inc a			;739c
	cp b			;739d
	call m,0f4e6h		;739e
	cp a			;73a1
	call m,0deffh		;73a2
	rst 30h			;73a5
	rst 38h			;73a6
	sbc a,(hl)			;73a7
	ret c			;73a8
	ret po			;73a9
	rlca			;73aa
	rra			;73ab
	ccf			;73ac
	ld (bc),a			;73ad
	ld a,a			;73ae
	add a,h			;73af
	ld sp,hl			;73b0
	rst 38h			;73b1
	ld a,a			;73b2
	.DB 0fdh,002h,0ffh	;illegal sequence		;73b3
	add a,d			;73b6
	rst 28h			;73b7
	rst 38h			;73b8
	ld (bc),a			;73b9
	ld a,a			;73ba
	add a,c			;73bb
	rra			;73bc
	dec bc			;73bd
	nop			;73be
	add a,d			;73bf
	djnz $+48		;73c0
	ld (bc),a			;73c2
	jr c,l7346h		;73c3
	djnz l73cfh		;73c5
	nop			;73c7
	add a,(hl)			;73c8
	jr l7403h		;73c9
	jp m,0febeh		;73cb
	ret m			;73ce
l73cfh:
	ld (bc),a			;73cf
	jr c,l7353h		;73d0
	add a,b			;73d2
	inc bc			;73d3
	ret nz			;73d4
	add a,c			;73d5
	ret z			;73d6
	inc bc			;73d7
	call c,0fc02h		;73d8
	add a,c			;73db
	ret m			;73dc
	inc b			;73dd
	ret nz			;73de
	add a,d			;73df
	add a,b			;73e0
	nop			;73e1
	ld (bc),a			;73e2
	ld bc,l0382h		;73e3
	inc de			;73e6
	inc b			;73e7
	dec sp			;73e8
	ld (bc),a			;73e9
	ccf			;73ea
	add a,c			;73eb
	rra			;73ec
	inc bc			;73ed
	inc bc			;73ee
	add a,d			;73ef
	ld bc,l04c0h		;73f0
	ret po			;73f3
	add a,c			;73f4
	ex (sp),hl			;73f5
	inc b			;73f6
	rst 20h			;73f7
	inc bc			;73f8
	rst 38h			;73f9
	add a,c			;73fa
	cp 002h		;73fb
	ret po			;73fd
	add a,c			;73fe
	ld bc,l0302h		;73ff
	add a,d			;7402
l7403h:
	rlca			;7403
	ld h,a			;7404
	rlca			;7405
	rst 20h			;7406
	inc bc			;7407
	rst 38h			;7408
	add a,c			;7409
	ld a,a			;740a
	rlca			;740b
	ld a,(hl)			;740c
	add a,c			;740d
	inc a			;740e
	ex af,af'			;740f
	nop			;7410
	add a,c			;7411
	inc a			;7412
	ld (bc),a			;7413
	ld a,(hl)			;7414
	inc e			;7415
	rst 38h			;7416
	add a,d			;7417
	ld a,(hl)			;7418
	ld (hl),b			;7419
	ex af,af'			;741a
	ret m			;741b
	add a,c			;741c
	call m,0ff04h		;741d
	add a,h			;7420
	ld a,a			;7421
	rra			;7422
	nop			;7423
	inc e			;7424
	ld b,03eh		;7425
	inc bc			;7427
	cp 082h		;7428
	call m,sub_0bf0h		;742a
	nop			;742d
	add a,h			;742e
	jr l7469h		;742f
	ld a,b			;7431
	ret p			;7432
	inc b			;7433
	ret nz			;7434
	ex af,af'			;7435
	nop			;7436
	add a,h			;7437
	jr l7456h		;7438
	ld e,00fh		;743a
	inc b			;743c
	inc bc			;743d
	ex af,af'			;743e
	jr l7451h		;743f
	nop			;7441
	adc a,b			;7442
	rlca			;7443
	rrca			;7444
	rra			;7445
	ccf			;7446
	ld a,(hl)			;7447
	call m,0f0f8h		;7448
	ex af,af'			;744b
	nop			;744c
	adc a,b			;744d
	ret po			;744e
	ret p			;744f
	ret m			;7450
l7451h:
	call m,l3f7eh		;7451
	rra			;7454
	rrca			;7455
l7456h:
	djnz l7490h		;7456
	ld b,000h		;7458
	adc a,d			;745a
	ld bc,l0702h+1		;745b
	rrca			;745e
	rra			;745f
	ccf			;7460
	ld a,a			;7461
	ld a,(hl)			;7462
	ret m			;7463
	ret p			;7464
	dec b			;7465
	nop			;7466
	add a,c			;7467
	ld (hl),b			;7468
l7469h:
	inc bc			;7469
	ret p			;746a
	add a,e			;746b
	ret po			;746c
	ret nz			;746d
	add a,b			;746e
	add hl,bc			;746f
	nop			;7470
	add a,c			;7471
	ld c,003h		;7472
	rrca			;7474
	add a,e			;7475
	rlca			;7476
	inc bc			;7477
	ld bc,l0009h+1		;7478
	adc a,d			;747b
l747ch:
	add a,b			;747c
	ret nz			;747d
	ret po			;747e
	ret p			;747f
	ret m			;7480
	call m,sub_7efeh		;7481
	rra			;7484
	rrca			;7485
	djnz l74c4h		;7486
	add a,a			;7488
	ret m			;7489
	rst 38h			;748a
	call m,0c0e0h		;748b
	ret m			;748e
	ret p			;748f
l7490h:
	add hl,bc			;7490
	nop			;7491
	rlca			;7492
	rst 38h			;7493
	add hl,bc			;7494
	nop			;7495
	inc b			;7496
	rst 38h			;7497
	add a,c			;7498
	ld a,a			;7499
	ld (bc),a			;749a
	rst 38h			;749b
	add a,c			;749c
	call m,l0008h		;749d
	ex af,af'			;74a0
	rst 38h			;74a1
	ex af,af'			;74a2
	nop			;74a3
	ld b,0ffh		;74a4
	add a,d			;74a6
	ld a,a			;74a7
	ld bc,l0008h		;74a8
	add a,(hl)			;74ab
	rra			;74ac
l74adh:
	ld a,a			;74ad
	rst 38h			;74ae
	ld a,a			;74af
	ccf			;74b0
	rrca			;74b1
	dec c			;74b2
	nop			;74b3
	adc a,l			;74b4
	add a,b			;74b5
	call m,0feffh		;74b6
	ret m			;74b9
	ret p			;74ba
	ret po			;74bb
	add a,b			;74bc
	ret nz			;74bd
	ret p			;74be
	cp 0ffh		;74bf
	call m,0fe02h		;74c1
l74c4h:
	ld a,0ffh		;74c4
	add a,c			;74c6
	ccf			;74c7
	ld (bc),a			;74c8
	rra			;74c9
	add a,d			;74ca
	ccf			;74cb
	ld a,a			;74cc
	dec b			;74cd
	rst 38h			;74ce
	add a,e			;74cf
	rst 18h			;74d0
	sbc a,a			;74d1
	cp a			;74d2
	ld (bc),a			;74d3
	adc a,a			;74d4
	add a,c			;74d5
	rrca			;74d6
	ld (bc),a			;74d7
	nop			;74d8
	add a,h			;74d9
	ld (bc),a			;74da
	inc c			;74db
	ld a,h			;74dc
	ret m			;74dd
	ld (bc),a			;74de
	ret p			;74df
	add a,c			;74e0
	ret po			;74e1
	ld (bc),a			;74e2
	ret nz			;74e3
	ld (bc),a			;74e4
	add a,b			;74e5
	dec b			;74e6
	nop			;74e7
	add a,c			;74e8
	ld h,b			;74e9
	ld (bc),a			;74ea
	ret p			;74eb
	add a,d			;74ec
	ret m			;74ed
	ld sp,hl			;74ee
	inc bc			;74ef
	sbc a,a			;74f0
	add a,d			;74f1
	cp a			;74f2
	ld a,a			;74f3
	inc b			;74f4
	rst 38h			;74f5
	inc b			;74f6
	nop			;74f7
	add a,d			;74f8
	ld bc,l0202h+1		;74f9
	rrca			;74fc
	ld (bc),a			;74fd
	rra			;74fe
	ld b,0ffh		;74ff
	inc bc			;7501
	nop			;7502
	ld (bc),a			;7503
	inc b			;7504
	add a,e			;7505
	ld c,01eh		;7506
	ld a,008h		;7508
	rst 38h			;750a
	ld (bc),a			;750b
	nop			;750c
	add a,h			;750d
	add a,b			;750e
	ret po			;750f
	ret p			;7510
	ret m			;7511
	ld (bc),a			;7512
	call m,0ff05h		;7513
	add a,c			;7516
	ld a,a			;7517
	ld (bc),a			;7518
	rst 38h			;7519
	add a,l			;751a
	nop			;751b
	ld b,00fh		;751c
	dec de			;751e
	dec e			;751f
	ld (bc),a			;7520
	rra			;7521
	add a,d			;7522
	dec de			;7523
	dec sp			;7524
	ld (bc),a			;7525
	add hl,sp			;7526
	ld (bc),a			;7527
	jr c,l74adh		;7528
	ret m			;752a
	rst 38h			;752b
	ld a,a			;752c
	inc h			;752d
	nop			;752e
	add a,e			;752f
	inc bc			;7530
	rlca			;7531
	inc bc			;7532
	ld (bc),a			;7533
	rlca			;7534
	add a,l			;7535
	rrca			;7536
	daa			;7537
	cpl			;7538
	ccf			;7539
	rra			;753a
	ld (bc),a			;753b
	ccf			;753c
	add a,c			;753d
	rra			;753e
	ld (bc),a			;753f
	rrca			;7540
	dec c			;7541
	rst 38h			;7542
	add a,c			;7543
	ld b,b			;7544
sub_7545h:
	ld (bc),a			;7545
	ret po			;7546
	add a,c			;7547
	ret nz			;7548
	inc c			;7549
	rst 38h			;754a
	adc a,d			;754b
	nop			;754c
	ld b,b			;754d
	ld a,b			;754e
	ret p			;754f
	ret nz			;7550
	or b			;7551
	add a,b			;7552
	ret c			;7553
	call c,006f8h		;7554
	rst 38h			;7557
	add a,c			;7558
	ld a,a			;7559
	ld (bc),a			;755a
	rst 38h			;755b
	add a,e			;755c
	rst 18h			;755d
	rra			;755e
	ld a,a			;755f
	ld (bc),a			;7560
	ccf			;7561
	inc bc			;7562
	ld a,a			;7563
	add a,d			;7564
	rra			;7565
	inc de			;7566
	ld (bc),a			;7567
	inc bc			;7568
	add a,c			;7569
	ld bc,0ff0fh		;756a
	add a,c			;756d
	ld a,a			;756e
	rrca			;756f
	rst 38h			;7570
	add a,c			;7571
	ret pe			;7572
	ld b,0ffh		;7573
	add a,c			;7575
	cp 002h		;7576
	call m,0f882h		;7578
	call m,0f802h		;757b
	add a,c			;757e
	or b			;757f
	ld (bc),a			;7580
	nop			;7581
	rrca			;7582
	rst 38h			;7583
	add a,c			;7584
	nop			;7585
	jr nz,$-1		;7586
	nop			;7588
l7589h:
	rlca			;7589
	nop			;758a
	add a,c			;758b
	ex af,af'			;758c
	rlca			;758d
	nop			;758e
	add a,c			;758f
	inc b			;7590
	djnz l7593h		;7591
l7593h:
	add a,d			;7593
	inc c			;7594
	ld c,006h		;7595
	rrca			;7597
	add a,e			;7598
	inc c			;7599
	inc e			;759a
	inc a			;759b
	dec b			;759c
	call m,l0003h+2		;759d
	add a,a			;75a0
	ld bc,l0702h+1		;75a1
	inc c			;75a4
	inc e			;75a5
	inc a			;75a6
	ld a,h			;75a7
	inc b			;75a8
	call m,l0008h		;75a9
	add a,d			;75ac
	inc c			;75ad
	ld c,006h		;75ae
	rrca			;75b0
	add a,h			;75b1
	inc c			;75b2
	inc e			;75b3
	inc a			;75b4
	ld a,h			;75b5
	inc bc			;75b6
	call m,0f881h		;75b7
	inc bc			;75ba
	nop			;75bb
	add a,l			;75bc
	add a,b			;75bd
	pop bc			;75be
	ex (sp),hl			;75bf
	rst 30h			;75c0
	rst 38h			;75c1
	inc bc			;75c2
	rrca			;75c3
	add a,l			;75c4
	ld c,a			;75c5
	rst 8			;75c6
	rst 0			;75c7
	jp l08c1h		;75c8
	call m,l0f82h+2		;75cb
	rra			;75ce
	ccf			;75cf
	ld a,a			;75d0
	inc bc			;75d1
	rst 38h			;75d2
	add a,c			;75d3
	ei			;75d4
	ex af,af'			;75d5
	call m,l0f82h+2		;75d6
	rra			;75d9
	ccf			;75da
	ld a,a			;75db
	inc b			;75dc
	rst 38h			;75dd
	adc a,h			;75de
	rrca			;75df
	rra			;75e0
	ccf			;75e1
	ld a,a			;75e2
	rst 38h			;75e3
	cp 0fch		;75e4
	ret m			;75e6
	ret p			;75e7
	ret po			;75e8
	ret nz			;75e9
	add a,b			;75ea
	inc b			;75eb
	nop			;75ec
	add a,h			;75ed
	rrca			;75ee
	rra			;75ef
	ccf			;75f0
	ld a,a			;75f1
	inc c			;75f2
	rst 38h			;75f3
	inc bc			;75f4
	ret nz			;75f5
	add a,a			;75f6
	pop bc			;75f7
	jp 0cfc7h		;75f8
	rst 18h			;75fb
	call m,sub_067ch		;75fc
	call m,0f382h		;75ff
	pop hl			;7602
	inc bc			;7603
	ret nz			;7604
	add a,e			;7605
	pop bc			;7606
	jp l03c7h		;7607
	call m,07c81h		;760a
	inc b			;760d
	call m,0ff08h		;760e
	add a,d			;7611
	ret p			;7612
	ret po			;7613
	inc b			;7614
	ret nz			;7615
	add a,a			;7616
	pop bc			;7617
	ex (sp),hl			;7618
	inc b			;7619
	inc c			;761a
	inc e			;761b
	inc a			;761c
	ld a,h			;761d
	inc bc			;761e
	call m,0ff82h		;761f
	rst 28h			;7622
	ld b,0cfh		;7623
	rlca			;7625
	rst 38h			;7626
	add a,c			;7627
	rst 28h			;7628
	ex af,af'			;7629
	call m,0cf82h		;762a
	rst 18h			;762d
	ld c,0ffh		;762e
	ex af,af'			;7630
	call m,0f781h		;7631
	rlca			;7634
	rst 38h			;7635
	ex af,af'			;7636
	call m,0cf08h		;7637
	ld (bc),a			;763a
	rst 38h			;763b
	adc a,c			;763c
	rst 18h			;763d
	rst 8			;763e
	rst 28h			;763f
	rst 30h			;7640
	rst 18h			;7641
	rst 8			;7642
	rst 18h			;7643
	jp 003c1h		;7644
	ret nz			;7647
	add a,d			;7648
	pop bc			;7649
	jp 0fc04h		;764a
	add a,c			;764d
	ld a,h			;764e
	inc bc			;764f
	call m,0ff03h		;7650
	adc a,c			;7653
	ld a,a			;7654
	ccf			;7655
	ld e,00ch		;7656
	nop			;7658
	ret p			;7659
	ret po			;765a
	ret nz			;765b
	add a,b			;765c
	inc b			;765d
	nop			;765e
	add a,e			;765f
	rst 0			;7660
	jp 003c1h		;7661
	ret nz			;7664
	add a,l			;7665
	pop bc			;7666
	jp 0c3c7h		;7667
	pop bc			;766a
	dec b			;766b
	ret nz			;766c
	add a,h			;766d
	ret m			;766e
	ret p			;766f
	ret po			;7670
	ret nz			;7671
	inc b			;7672
	nop			;7673
	add a,c			;7674
	rst 0			;7675
	ld (bc),a			;7676
	jp 0c103h		;7677
	ld (bc),a			;767a
	ret nz			;767b
	add a,l			;767c
	ret m			;767d
	ret p			;767e
	ret po			;767f
l7680h:
	ret nz			;7680
	add a,b			;7681
	inc bc			;7682
	nop			;7683
	add a,e			;7684
	rst 0			;7685
	rst 8			;7686
	rst 18h			;7687
	inc bc			;7688
	rst 38h			;7689
	add a,d			;768a
	cp 0fch		;768b
	inc b			;768d
	rst 38h			;768e
	add a,h			;768f
	ld a,a			;7690
	ccf			;7691
	ld e,00ch		;7692
	inc b			;7694
	ret nz			;7695
	add a,c			;7696
	add a,b			;7697
	ld a,a			;7698
	nop			;7699
	ld a,a			;769a
	nop			;769b
	dec e			;769c
	nop			;769d
	nop			;769e
	inc bc			;769f
	nop			;76a0
	add a,l			;76a1
	ld bc,l0702h+1		;76a2
	rrca			;76a5
	rlca			;76a6
	ld (bc),a			;76a7
	nop			;76a8
	add a,h			;76a9
	ret nz			;76aa
	ret po			;76ab
	ret p			;76ac
	ret m			;76ad
	ld (bc),a			;76ae
	call m,l0003h		;76af
	add a,l			;76b2
	ld bc,l0702h+1		;76b3
	rrca			;76b6
	rra			;76b7
	ld b,000h		;76b8
	add a,h			;76ba
	inc c			;76bb
	ld e,003h		;76bc
	ld bc,l0006h		;76be
	inc bc			;76c1
	call m,sub_7c05h		;76c2
	add a,d			;76c5
	ccf			;76c6
	ld a,a			;76c7
	ld b,0ffh		;76c8
	ex af,af'			;76ca
	call m,l0003h+1		;76cb
	add a,(hl)			;76ce
	ld (bc),a			;76cf
	rlca			;76d0
	rrca			;76d1
	rra			;76d2
	inc bc			;76d3
	ld bc,l0003h+1		;76d4
	add a,d			;76d7
	add a,b			;76d8
	ret nz			;76d9
	rlca			;76da
	call m,0f88bh		;76db
	ccf			;76de
	ld a,a			;76df
	rst 38h			;76e0
	ld a,a			;76e1
	ld a,01dh		;76e2
	dec bc			;76e4
	rlca			;76e5
	nop			;76e6
	add a,b			;76e7
	inc bc			;76e8
	ret nz			;76e9
	add a,e			;76ea
	ret z			;76eb
	call c,008feh		;76ec
	ld a,h			;76ef
	dec b			;76f0
	rst 38h			;76f1
	add a,e			;76f2
	cp 0fch		;76f3
	ret m			;76f5
	inc b			;76f6
	call m,sub_7c04h		;76f7
	add a,c			;76fa
	ret po			;76fb
	inc bc			;76fc
	ret p			;76fd
	inc bc			;76fe
	ret m			;76ff
	add a,c			;7700
	call m,0ff05h		;7701
	adc a,e			;7704
	cp 0fch		;7705
	ld sp,hl			;7707
	ret p			;7708
	ret po			;7709
	ret nz			;770a
	add a,b			;770b
	jr nz,$+112		;770c
	ret m			;770e
	call m,0ff05h		;770f
	add a,e			;7712
	cp 0fch		;7713
	ret m			;7715
	ex af,af'			;7716
	rlca			;7717
	ex af,af'			;7718
	rst 38h			;7719
	add a,c			;771a
	ld a,h			;771b
	rlca			;771c
	call m,0f084h		;771d
	and 0cfh		;7720
	rst 18h			;7722
	inc b			;7723
	rst 38h			;7724
	inc bc			;7725
	ld a,h			;7726
	rlca			;7727
	call m,0fe03h		;7728
	inc bc			;772b
	rst 38h			;772c
	add a,h			;772d
	di			;772e
	rst 20h			;772f
	rst 8			;7730
	rst 18h			;7731
	inc bc			;7732
	rst 38h			;7733
	add a,c			;7734
	rst 18h			;7735
	ex af,af'			;7736
	call m,0f082h		;7737
	ret po			;773a
	ld b,0c0h		;773b
	inc bc			;773d
	rst 38h			;773e
	add a,l			;773f
	cp 0fch		;7740
	ret m			;7742
	ret p			;7743
	ret po			;7744
	ld (bc),a			;7745
	call m,sub_7c05h+1		;7746
	dec b			;7749
	rst 38h			;774a
	add a,e			;774b
	cp 0fch		;774c
	ret m			;774e
	ex af,af'			;774f
	rst 38h			;7750
	ex af,af'			;7751
	call m,0cf06h		;7752
	add a,d			;7755
	adc a,0cch		;7756
	dec b			;7758
	call m,sub_7c03h		;7759
	ex af,af'			;775c
	ret nz			;775d
	inc b			;775e
	rst 38h			;775f
	add a,d			;7760
	rst 18h			;7761
	rst 8			;7762
	ld (bc),a			;7763
	rst 0			;7764
	add a,e			;7765
	ret z			;7766
	call c,sub_05feh		;7767
	rst 38h			;776a
	inc b			;776b
	ld a,h			;776c
	inc b			;776d
	call m,sub_0705h		;776e
	add a,a			;7771
	ld b,004h		;7772
	nop			;7774
	ret p			;7775
	ret po			;7776
	ret nz			;7777
	add a,b			;7778
	inc b			;7779
	nop			;777a
	add a,e			;777b
	ret z			;777c
	call c,sub_05feh		;777d
	rst 38h			;7780
	ex af,af'			;7781
	ret nz			;7782
	add a,h			;7783
	ld a,b			;7784
	ld (hl),b			;7785
	ld h,b			;7786
	ld b,b			;7787
	inc b			;7788
	nop			;7789
	inc bc			;778a
	jp 0c103h		;778b
	ld (bc),a			;778e
	ret nz			;778f
	add a,l			;7790
	ret m			;7791
	ret p			;7792
	ret po			;7793
	ret nz			;7794
	add a,b			;7795
	inc bc			;7796
	nop			;7797
	ld b,0ffh		;7798
	add a,d			;779a
	cp 0fch		;779b
	ld b,007h		;779d
	add a,d			;779f
	ld b,004h		;77a0
	inc b			;77a2
	ret nz			;77a3
	add a,c			;77a4
	add a,b			;77a5
	ld a,a			;77a6
	nop			;77a7
	ld a,a			;77a8
	nop			;77a9
	dec e			;77aa
	nop			;77ab
	nop			;77ac
	ld a,a			;77ad
	nop			;77ae
	ld a,a			;77af
	nop			;77b0
	add hl,bc			;77b1
	nop			;77b2
	add a,c			;77b3
	jr nz,l77d6h		;77b4
	nop			;77b6
	ld (bc),a			;77b7
	jr nz,$+3		;77b8
	jr nc,l77bfh		;77ba
	jr c,$+56		;77bc
	nop			;77be
l77bfh:
	ld (bc),a			;77bf
	inc a			;77c0
	add a,h			;77c1
	inc e			;77c2
	ld c,006h		;77c3
	ld (bc),a			;77c5
	ld a,a			;77c6
	nop			;77c7
	ld a,a			;77c8
	nop			;77c9
	inc a			;77ca
	nop			;77cb
	nop			;77cc
	ld a,a			;77cd
	nop			;77ce
	ld a,a			;77cf
	nop			;77d0
	ld a,a			;77d1
	nop			;77d2
	add hl,de			;77d3
	nop			;77d4
	add a,d			;77d5
l77d6h:
	rra			;77d6
	ccf			;77d7
	ld b,000h		;77d8
	add a,d			;77da
	rst 38h			;77db
	cp 007h		;77dc
	nop			;77de
	add a,c			;77df
	ld bc,l0006h		;77e0
	ld (bc),a			;77e3
	ret po			;77e4
	ld b,000h		;77e5
	ld (bc),a			;77e7
	jr c,l77f0h		;77e8
	nop			;77ea
	add a,d			;77eb
	rlca			;77ec
	rrca			;77ed
	ld b,000h		;77ee
l77f0h:
	ld (bc),a			;77f0
	ccf			;77f1
	ld b,000h		;77f2
	add a,d			;77f4
	cp 0ffh		;77f5
	ld b,000h		;77f7
	ld (bc),a			;77f9
	jr c,l7802h		;77fa
	nop			;77fc
	add a,d			;77fd
	rlca			;77fe
	inc e			;77ff
l7800h:
	ld (bc),a			;7800
	nop			;7801
l7802h:
	add a,c			;7802
	ccf			;7803
	inc b			;7804
	inc c			;7805
	add a,c			;7806
	dec e			;7807
	ld (bc),a			;7808
	nop			;7809
	add a,c			;780a
	rst 38h			;780b
l780ch:
	inc b			;780c
	call z,0dc85h		;780d
	jr c,l7882h		;7810
	ld a,a			;7812
	ccf			;7813
	ld (bc),a			;7814
	nop			;7815
	add a,d			;7816
	ld a,a			;7817
	rst 38h			;7818
	ld (bc),a			;7819
	nop			;781a
l781bh:
	adc a,b			;781b
	call m,00efeh		;781c
	inc e			;781f
	call m,038f8h		;7820
	ld (hl),b			;7823
	ld (bc),a			;7824
	ld a,a			;7825
	add a,h			;7826
	ret p			;7827
	ret po			;7828
	rst 38h			;7829
	ld a,a			;782a
	ld (bc),a			;782b
	nop			;782c
	add a,d			;782d
	cp 0fch		;782e
	ld (bc),a			;7830
	nop			;7831
	add a,e			;7832
	call m,038f8h		;7833
	inc bc			;7836
	ld (hl),b			;7837
l7838h:
	ld (bc),a			;7838
	ret po			;7839
	add a,d			;783a
	rst 38h			;783b
	ld a,a			;783c
	ld (bc),a			;783d
	nop			;783e
	sub h			;783f
	ld a,(hl)			;7840
	call m,l381ch		;7841
	ret m			;7844
	ret p			;7845
	inc bc			;7846
	rlca			;7847
	ld c,01dh		;7848
	dec sp			;784a
	ld (hl),b			;784b
	ret po			;784c
	ret nz			;784d
l784eh:
	ret p			;784e
	jr nc,l7889h		;784f
	ret m			;7851
	call m,sub_021ch		;7852
	ld c,003h		;7855
	ld a,h			;7857
	add a,e			;7858
	halt			;7859
	rst 30h			;785a
	rst 20h			;785b
	ld (bc),a			;785c
	ex (sp),hl			;785d
	adc a,b			;785e
	ld e,03eh		;785f
	ld a,(hl)			;7861
l7862h:
	xor 0deh		;7862
	call c,sub_1c9ch		;7864
	ld (bc),a			;7867
	ld (hl),b			;7868
	add a,e			;7869
	ld (hl),a			;786a
	ld (hl),e			;786b
	pop af			;786c
	inc bc			;786d
	ret po			;786e
	adc a,l			;786f
	rlca			;7870
	ld c,0feh		;7871
	call m,0e0c0h		;7873
	ld (hl),b			;7876
	jr c,l78f1h		;7877
	ld (hl),c			;7879
	ld (hl),a			;787a
	ld (hl),e			;787b
	pop af			;787c
	inc bc			;787d
	ret po			;787e
l787fh:
	adc a,b			;787f
l7880h:
	ld (hl),b			;7880
	ret nz			;7881
l7882h:
	nop			;7882
	add a,b			;7883
	ret nz			;7884
	ret po			;7885
	ld a,b			;7886
	inc e			;7887
	inc bc			;7888
l7889h:
	add hl,de			;7889
	add a,c			;788a
	dec sp			;788b
	inc bc			;788c
	inc sp			;788d
	add a,c			;788e
	rst 38h			;788f
	inc bc			;7890
	sbc a,b			;7891
	add a,c			;7892
	cp b			;7893
	inc bc			;7894
	jr nc,l781bh		;7895
	call m,sub_423ch		;7897
	sbc a,c			;789a
	ld (bc),a			;789b
	and c			;789c
	adc a,(hl)			;789d
	sbc a,c			;789e
	ld b,d			;789f
	inc a			;78a0
	ccf			;78a1
	ld a,a			;78a2
	ld h,b			;78a3
	ld a,(hl)			;78a4
	ccf			;78a5
	inc bc			;78a6
	ld a,a			;78a7
	ld a,(hl)			;78a8
	ccf			;78a9
	ld a,a			;78aa
	ld h,b			;78ab
	ld (bc),a			;78ac
	ld a,(hl)			;78ad
	add a,d			;78ae
	ld h,b			;78af
	ld a,a			;78b0
	ld (bc),a			;78b1
	ccf			;78b2
	add a,d			;78b3
	ld a,a			;78b4
	ld h,b			;78b5
	ld (bc),a			;78b6
	ld l,a			;78b7
	add a,e			;78b8
	ld h,e			;78b9
	ld a,a			;78ba
	ccf			;78bb
	ld (bc),a			;78bc
	inc e			;78bd
	add a,c			;78be
	ld a,002h		;78bf
	ld (hl),085h		;78c1
	ld h,e			;78c3
	ld l,a			;78c4
	rst 28h			;78c5
	nop			;78c6
	ld a,l			;78c7
	inc b			;78c8
	ld de,l0003h		;78c9
	add a,e			;78cc
	djnz l787fh		;78cd
	ld d,b			;78cf
	ld (bc),a			;78d0
	djnz l78d5h		;78d1
	nop			;78d3
	nop			;78d4
l78d5h:
	dec b			;78d5
	ld a,c			;78d6
	or (hl)			;78d7
	ld a,c			;78d8
	ld a,h			;78d9
	ld a,d			;78da
	ld b,e			;78db
	ld a,e			;78dc
	or 07bh		;78dd
	xor a			;78df
	ld a,h			;78e0
	ld l,(hl)			;78e1
	ld a,l			;78e2
	inc (hl)			;78e3
	ld a,(hl)			;78e4
	dec b			;78e5
	ld a,c			;78e6
	or (hl)			;78e7
	ld a,c			;78e8
	ld a,h			;78e9
	ld a,d			;78ea
	ld b,e			;78eb
	ld a,e			;78ec
	or 07bh		;78ed
	xor a			;78ef
	ld a,h			;78f0
l78f1h:
	ld l,(hl)			;78f1
	ld a,l			;78f2
	inc (hl)			;78f3
	ld a,(hl)			;78f4
	dec b			;78f5
	ld a,c			;78f6
	or (hl)			;78f7
	ld a,c			;78f8
	ld a,h			;78f9
	ld a,d			;78fa
	ld b,e			;78fb
	ld a,e			;78fc
	or 07bh		;78fd
	xor a			;78ff
	ld a,h			;7900
	ld l,(hl)			;7901
	ld a,l			;7902
	inc (hl)			;7903
	ld a,(hl)			;7904
	ld bc,08115h		;7905
	inc b			;7908
	dec b			;7909
	inc bc			;790a
	inc d			;790b
	add hl,bc			;790c
	ld bc,08113h		;790d
	inc b			;7910
	dec b			;7911
	inc bc			;7912
	ld d,009h		;7913
	ld bc,l2110h		;7915
	inc b			;7918
	dec d			;7919
	ld d,e			;791a
	ld e,019h		;791b
	ld bc,001c8h		;791d
	ld c,021h		;7920
	ex af,af'			;7922
	dec d			;7923
	inc de			;7924
	rrca			;7925
	rla			;7926
	ld (de),a			;7927
	rrca			;7928
	ld d,013h		;7929
	ld a,(bc)			;792b
	add hl,de			;792c
	ld hl,l1506h		;792d
	inc de			;7930
	inc b			;7931
	rla			;7932
	ld (de),a			;7933
	ld a,(bc)			;7934
	jr $+1		;7935
	ld de,l0881h		;7937
	dec b			;793a
	inc bc			;793b
	ld (de),a			;793c
	rlca			;793d
	ld b,d			;793e
	ld d,008h		;793f
	ld bc,001c8h		;7941
	dec bc			;7944
	add a,c			;7945
	ld b,005h		;7946
	inc bc			;7948
	ld de,l0109h		;7949
	add hl,bc			;794c
	add a,c			;794d
	ld b,004h		;794e
	ld (bc),a			;7950
	ld a,(bc)			;7951
	ld b,003h		;7952
	ld a,(bc)			;7954
	add hl,bc			;7955
	add a,c			;7956
	dec b			;7957
	inc b			;7958
	ld (bc),a			;7959
	dec bc			;795a
	ex af,af'			;795b
	ld bc,0810ah		;795c
	ex af,af'			;795f
	dec b			;7960
	inc bc			;7961
	ld a,(bc)			;7962
	rlca			;7963
	ld b,d			;7964
	inc d			;7965
	ex af,af'			;7966
	ld bc,001c8h		;7967
	rrca			;796a
	ld hl,01409h		;796b
	ld (de),a			;796e
	ld a,(bc)			;796f
	jr $+33		;7970
	dec b			;7972
	inc d			;7973
	ld (de),a			;7974
	ld a,(bc)			;7975
	ld a,(de)			;7976
	ld (bc),a			;7977
	ld a,(bc)			;7978
	ex af,af'			;7979
	dec b			;797a
	rlca			;797b
	ld (bc),a			;797c
	rrca			;797d
	ex af,af'			;797e
	ld bc,l2112h		;797f
	add hl,bc			;7982
	inc d			;7983
	ld d,d			;7984
	ld e,018h		;7985
	ld bc,001c8h		;7987
	ld a,(bc)			;798a
	add a,c			;798b
	inc b			;798c
	inc b			;798d
	ld (bc),a			;798e
	ld a,(bc)			;798f
	ex af,af'			;7990
	ld hl,01404h		;7991
	ld (de),a			;7994
	ld a,(bc)			;7995
	sub d			;7996
	ld b,01ah		;7997
	ld (bc),a			;7999
	dec b			;799a
	ld (l0a06h),hl		;799b
	ld (de),a			;799e
	dec b			;799f
	ld d,013h		;79a0
	ld a,(bc)			;79a2
	add hl,de			;79a3
	ld bc,08105h		;79a4
	ld b,005h		;79a7
	inc bc			;79a9
	dec b			;79aa
	rlca			;79ab
	ld (bc),a			;79ac
	inc b			;79ad
	ld (l0a06h),hl		;79ae
	ld d,d			;79b1
	ld (de),a			;79b2
	jr l79b6h		;79b3
	ret z			;79b5
l79b6h:
	ld bc,02115h		;79b6
	inc b			;79b9
	dec d			;79ba
	inc de			;79bb
	inc d			;79bc
	add hl,de			;79bd
	ld bc,l210fh		;79be
	inc b			;79c1
	dec d			;79c2
	inc de			;79c3
	ld d,019h		;79c4
	ld bc,08110h		;79c6
	inc b			;79c9
	dec b			;79ca
	ld b,e			;79cb
	ld e,009h		;79cc
	ld bc,001c8h		;79ce
	dec bc			;79d1
	ld hl,l1506h		;79d2
	inc de			;79d5
	ld de,l0118h+1		;79d6
l79d9h:
	add hl,bc			;79d9
	ld hl,l1405h+1		;79da
	ld (de),a			;79dd
	ld a,(bc)			;79de
	ld d,013h		;79df
	ld a,(bc)			;79e1
	add hl,de			;79e2
	ld hl,l1405h		;79e3
	ld (de),a			;79e6
	dec bc			;79e7
	jr l79ebh		;79e8
	ld a,(bc)			;79ea
l79ebh:
	ld hl,01508h		;79eb
	inc de			;79ee
	ld a,(bc)			;79ef
	rla			;79f0
	ld d,d			;79f1
	inc d			;79f2
	jr l79f6h		;79f3
	ret z			;79f5
l79f6h:
	ld bc,l210ah		;79f6
	inc b			;79f9
	dec d			;79fa
	inc de			;79fb
	add hl,bc			;79fc
	rla			;79fd
	ld (de),a			;79fe
	add hl,bc			;79ff
	ld d,013h		;7a00
	add hl,bc			;7a02
	rla			;7a03
	ld (de),a			;7a04
	dec b			;7a05
	sub d			;7a06
	ld b,01ah		;7a07
	ld (bc),a			;7a09
	ex af,af'			;7a0a
	ld b,003h		;7a0b
	ex af,af'			;7a0d
	add hl,bc			;7a0e
	ld bc,08105h		;7a0f
	dec b			;7a12
	inc b			;7a13
	ld (bc),a			;7a14
	ex af,af'			;7a15
	ld (l0a06h),hl		;7a16
	ld (de),a			;7a19
	ld c,018h		;7a1a
	ld hl,l1405h+1		;7a1c
	ld d,d			;7a1f
	ld (de),a			;7a20
	ld d,019h		;7a21
	ld bc,001c8h		;7a23
	ld a,(bc)			;7a26
	ld hl,l1405h+1		;7a27
	ld (de),a			;7a2a
	rrca			;7a2b
	jr $+33		;7a2c
	ld b,015h		;7a2e
	inc de			;7a30
	ld b,017h		;7a31
	ld (de),a			;7a33
	ld a,(bc)			;7a34
	jr $-127		;7a35
	inc b			;7a37
	inc b			;7a38
	ld (bc),a			;7a39
	dec bc			;7a3a
	ld (l0a06h),hl		;7a3b
	ld (de),a			;7a3e
	ld a,(bc)			;7a3f
l7a40h:
	sub d			;7a40
	dec b			;7a41
	ld a,(de)			;7a42
	ld b,003h		;7a43
	ld a,(bc)			;7a45
	add hl,bc			;7a46
	add a,c			;7a47
	ex af,af'			;7a48
	inc b			;7a49
	ld b,d			;7a4a
	inc d			;7a4b
	ex af,af'			;7a4c
	ld bc,001c8h		;7a4d
	ld a,(bc)			;7a50
	ld hl,01404h		;7a51
	ld (de),a			;7a54
	rrca			;7a55
	jr l79d9h		;7a56
	inc b			;7a58
	inc b			;7a59
	ld (bc),a			;7a5a
	ld a,(bc)			;7a5b
	ld (l0a06h),hl		;7a5c
	ld (de),a			;7a5f
	dec b			;7a60
	sub d			;7a61
	ld b,01ah		;7a62
	ld (bc),a			;7a64
	ex af,af'			;7a65
	ld b,003h		;7a66
	ld a,(bc)			;7a68
	add hl,bc			;7a69
	ld bc,l2105h		;7a6a
	ld b,015h		;7a6d
	inc de			;7a6f
	dec b			;7a70
	rla			;7a71
	ld (de),a			;7a72
	inc b			;7a73
	sub d			;7a74
	ld b,01ah		;7a75
	ld b,d			;7a77
	ld (de),a			;7a78
	ex af,af'			;7a79
	ld bc,001c8h		;7a7a
	inc c			;7a7d
	add a,c			;7a7e
	ld b,005h		;7a7f
	inc bc			;7a81
	ld a,(bc)			;7a82
	rlca			;7a83
	ld (bc),a			;7a84
	dec c			;7a85
	ld b,003h		;7a86
	ld a,(bc)			;7a88
	add hl,bc			;7a89
	add a,c			;7a8a
	ld b,005h		;7a8b
	inc bc			;7a8d
	ld b,007h		;7a8e
	ld (bc),a			;7a90
	ld a,(bc)			;7a91
	ex af,af'			;7a92
	ld bc,l210ch		;7a93
	ex af,af'			;7a96
	dec d			;7a97
	inc de			;7a98
	ld (de),a			;7a99
	rla			;7a9a
	ld d,d			;7a9b
	ld d,018h		;7a9c
	ld bc,001c8h		;7a9e
	ld a,(bc)			;7aa1
	add a,c			;7aa2
	ld b,004h		;7aa3
	ld (bc),a			;7aa5
	rrca			;7aa6
	ex af,af'			;7aa7
	add a,c			;7aa8
	dec b			;7aa9
	inc b			;7aaa
	ld (bc),a			;7aab
	dec b			;7aac
	ld (l0a06h),hl		;7aad
	ld (de),a			;7ab0
	ld a,(bc)			;7ab1
	jr l7ac9h		;7ab2
	rla			;7ab4
	ld (de),a			;7ab5
	rrca			;7ab6
	jr l7abah		;7ab7
	rrca			;7ab9
l7abah:
	add a,c			;7aba
	rlca			;7abb
	inc b			;7abc
	ld b,d			;7abd
	rra			;7abe
	ex af,af'			;7abf
	ld bc,001c8h		;7ac0
	ld a,(bc)			;7ac3
	add a,c			;7ac4
	inc b			;7ac5
	inc b			;7ac6
	ld (bc),a			;7ac7
	ld a,(bc)			;7ac8
l7ac9h:
	ex af,af'			;7ac9
	add a,c			;7aca
	ld b,005h		;7acb
	inc bc			;7acd
	inc b			;7ace
	rlca			;7acf
	ld (bc),a			;7ad0
	ld a,(bc)			;7ad1
	ex af,af'			;7ad2
	ld hl,l1405h+1		;7ad3
	ld (de),a			;7ad6
	ld a,(bc)			;7ad7
	sub d			;7ad8
	ld b,01ah		;7ad9
	ld (bc),a			;7adb
	dec b			;7adc
	ld (00a05h),hl		;7add
	ld d,013h		;7ae0
	ld a,(bc)			;7ae2
	add hl,de			;7ae3
	ld hl,l1405h+1		;7ae4
	ld d,d			;7ae7
	inc d			;7ae8
	jr l7aech		;7ae9
	ret z			;7aeb
l7aech:
	ld bc,0810fh		;7aec
	inc b			;7aef
	inc b			;7af0
	ld (bc),a			;7af1
	rrca			;7af2
	ld (00a05h),hl		;7af3
sub_7af6h:
	ld (de),a			;7af6
	ld a,(bc)			;7af7
	ld d,013h		;7af8
	ld a,(bc)			;7afa
	add hl,de			;7afb
	add a,c			;7afc
	dec b			;7afd
	inc b			;7afe
	ld (bc),a			;7aff
l7b00h:
	dec b			;7b00
	ld a,(bc)			;7b01
	ld (de),a			;7b02
	ld a,(bc)			;7b03
	jr l7b07h		;7b04
	ld a,(bc)			;7b06
l7b07h:
	ld hl,01408h		;7b07
	ld (de),a			;7b0a
	ld a,(bc)			;7b0b
	sub d			;7b0c
	dec b			;7b0d
	ld a,(de)			;7b0e
	ld b,d			;7b0f
	inc d			;7b10
	ex af,af'			;7b11
	ld bc,001c8h		;7b12
	ld a,(bc)			;7b15
	add a,c			;7b16
	inc b			;7b17
	dec b			;7b18
	inc bc			;7b19
	add hl,bc			;7b1a
	rlca			;7b1b
l7b1ch:
	ld (bc),a			;7b1c
	ex af,af'			;7b1d
	ld b,003h		;7b1e
	add hl,bc			;7b20
	rlca			;7b21
	ld (bc),a			;7b22
	ex af,af'			;7b23
	ld (l0a06h),hl		;7b24
	ld (de),a			;7b27
	ex af,af'			;7b28
	ld d,013h		;7b29
	dec b			;7b2b
	add hl,de			;7b2c
	ld bc,l2105h		;7b2d
	dec b			;7b30
	inc d			;7b31
	ld (de),a			;7b32
	dec b			;7b33
	sub d			;7b34
	ld b,01ah		;7b35
	ld (bc),a			;7b37
	ld a,(bc)			;7b38
	ex af,af'			;7b39
	add a,c			;7b3a
	ld b,004h		;7b3b
	ld b,d			;7b3d
	ld (de),a			;7b3e
	ld b,009h		;7b3f
	ld bc,001c8h		;7b41
	ld de,l0881h		;7b44
	inc b			;7b47
	ld (bc),a			;7b48
	inc c			;7b49
	ld (l0a06h),hl		;7b4a
	ld (de),a			;7b4d
	inc d			;7b4e
	ld d,017h		;7b4f
	jr l7b54h		;7b51
	inc d			;7b53
l7b54h:
	add a,c			;7b54
	ex af,af'			;7b55
	dec b			;7b56
	inc bc			;7b57
	rrca			;7b58
	rlca			;7b59
	ld b,d			;7b5a
	ld e,008h		;7b5b
	ld bc,001c8h		;7b5d
	rrca			;7b60
	ld hl,01404h		;7b61
	ld (de),a			;7b64
	rrca			;7b65
	sub d			;7b66
	dec b			;7b67
	ld a,(de)			;7b68
	ld (bc),a			;7b69
	rrca			;7b6a
	ld b,003h		;7b6b
	ld a,(bc)			;7b6d
	add hl,bc			;7b6e
	ld hl,l1405h		;7b6f
	ld (de),a			;7b72
	dec b			;7b73
	ld a,(de)			;7b74
	ld (bc),a			;7b75
	ld a,(bc)			;7b76
	ex af,af'			;7b77
	ld bc,0810ah		;7b78
	ex af,af'			;7b7b
	inc b			;7b7c
	ld (bc),a			;7b7d
	ld a,(bc)			;7b7e
	ld (00a05h),hl		;7b7f
	ld d,d			;7b82
	inc d			;7b83
l7b84h:
	jr l7b87h		;7b84
	ret z			;7b86
l7b87h:
	ld bc,l210ah		;7b87
	ld b,014h		;7b8a
	ld (de),a			;7b8c
	rrca			;7b8d
	jr l7bb1h		;7b8e
	ld b,015h		;7b90
	inc de			;7b92
	ld b,017h		;7b93
	ld (de),a			;7b95
	ld a,(bc)			;7b96
	jr $+1		;7b97
	djnz l7b1ch		;7b99
	inc b			;7b9b
	inc b			;7b9c
	ld (bc),a			;7b9d
	inc d			;7b9e
	ex af,af'			;7b9f
	ld bc,l210ch		;7ba0
	ex af,af'			;7ba3
	dec d			;7ba4
	ld d,e			;7ba5
	ld e,019h		;7ba6
	ld bc,001c8h		;7ba8
	ld a,(de)			;7bab
	add a,c			;7bac
	inc b			;7bad
	inc b			;7bae
	ld (bc),a			;7baf
	inc de			;7bb0
l7bb1h:
	ld (l0a06h),hl		;7bb1
	ld (de),a			;7bb4
	add hl,de			;7bb5
l7bb6h:
	ld d,013h		;7bb6
	ld (de),a			;7bb8
	rla			;7bb9
	ld (de),a			;7bba
	ld (de),a			;7bbb
	sub d			;7bbc
	ld b,01ah		;7bbd
	ld (bc),a			;7bbf
	djnz l7bc8h		;7bc0
	ld b,e			;7bc2
	ld e,009h		;7bc3
	ld bc,001c8h		;7bc5
l7bc8h:
	ld a,(bc)			;7bc8
	ld hl,01504h		;7bc9
	inc de			;7bcc
	add hl,bc			;7bcd
	rla			;7bce
	ld (de),a			;7bcf
	add hl,bc			;7bd0
	ld d,013h		;7bd1
	add hl,bc			;7bd3
l7bd4h:
	rla			;7bd4
	ld (de),a			;7bd5
	dec b			;7bd6
	sub d			;7bd7
	ld b,01ah		;7bd8
	ld (bc),a			;7bda
	ex af,af'			;7bdb
	ld b,003h		;7bdc
	ex af,af'			;7bde
	add hl,bc			;7bdf
	ld bc,08105h		;7be0
	dec b			;7be3
	inc b			;7be4
	ld (bc),a			;7be5
	ex af,af'			;7be6
	ld (l0a06h),hl		;7be7
	ld (de),a			;7bea
	ld c,018h		;7beb
	ld hl,l1405h+1		;7bed
	ld d,d			;7bf0
	ld (de),a			;7bf1
	ld d,019h		;7bf2
	ld bc,001c8h		;7bf4
	dec bc			;7bf7
	ld hl,l1506h		;7bf8
	inc de			;7bfb
	ld a,(bc)			;7bfc
	add hl,de			;7bfd
	ld bc,l2105h		;7bfe
	ld b,014h		;7c01
sub_7c03h:
	ld (de),a			;7c03
sub_7c04h:
	ld a,(bc)			;7c04
sub_7c05h:
	ld d,013h		;7c05
	ld a,(bc)			;7c07
	add hl,de			;7c08
	ld hl,l1405h		;7c09
	ld (de),a			;7c0c
	dec bc			;7c0d
	jr l7c11h		;7c0e
	ld a,(bc)			;7c10
l7c11h:
	ld hl,01508h		;7c11
	inc de			;7c14
	ld a,(bc)			;7c15
	rla			;7c16
	ld d,d			;7c17
	inc d			;7c18
	jr l7c1ch		;7c19
	ret z			;7c1b
l7c1ch:
	ld bc,08111h		;7c1c
	rlca			;7c1f
	inc b			;7c20
	ld (bc),a			;7c21
	jr l7c46h		;7c22
l7c24h:
	ld b,00ah		;7c24
	ld d,013h		;7c26
	inc d			;7c28
	add hl,de			;7c29
	ld bc,l2110h		;7c2a
	ex af,af'			;7c2d
	dec d			;7c2e
	inc de			;7c2f
	add hl,bc			;7c30
	rla			;7c31
	ld (de),a			;7c32
	ld c,092h		;7c33
	ld b,01ah		;7c35
	ld b,d			;7c37
	inc d			;7c38
	ex af,af'			;7c39
	ld bc,001c8h		;7c3a
	rrca			;7c3d
	add a,c			;7c3e
	ld b,005h		;7c3f
	inc bc			;7c41
	rrca			;7c42
	rlca			;7c43
	ld (bc),a			;7c44
	rrca			;7c45
l7c46h:
	ld b,003h		;7c46
	add hl,bc			;7c48
	add hl,bc			;7c49
	ld hl,l1405h		;7c4a
	ld (de),a			;7c4d
	dec b			;7c4e
	ld a,(de)			;7c4f
	ld (bc),a			;7c50
	dec b			;7c51
	ex af,af'			;7c52
	ld bc,l210bh		;7c53
	inc b			;7c56
	inc d			;7c57
	ld (de),a			;7c58
	add hl,bc			;7c59
	ld d,053h		;7c5a
	ld e,019h		;7c5c
	ld bc,001c8h		;7c5e
	ld (de),a			;7c61
	add a,c			;7c62
	inc b			;7c63
	inc b			;7c64
l7c65h:
	ld (bc),a			;7c65
	ld (de),a			;7c66
	ld (l0a06h),hl		;7c67
	ld (de),a			;7c6a
	inc d			;7c6b
	ld d,013h		;7c6c
	ld a,(bc)			;7c6e
	rla			;7c6f
	ld (de),a			;7c70
	inc d			;7c71
	jr $-127		;7c72
	ld b,004h		;7c74
	ld (bc),a			;7c76
	inc c			;7c77
	ld b,003h		;7c78
	ld a,(bc)			;7c7a
	rlca			;7c7b
	ld b,d			;7c7c
	inc d			;7c7d
	ex af,af'			;7c7e
	ld bc,001c8h		;7c7f
sub_7c82h:
	ld a,(bc)			;7c82
	add a,c			;7c83
	dec b			;7c84
	dec b			;7c85
	inc bc			;7c86
	ld a,(bc)			;7c87
	rlca			;7c88
	ld (bc),a			;7c89
	ld a,(bc)			;7c8a
	ld (l0a06h),hl		;7c8b
	ld (de),a			;7c8e
	dec b			;7c8f
	ld d,013h		;7c90
	dec b			;7c92
	add hl,de			;7c93
	ld bc,l2108h		;7c94
	inc b			;7c97
	inc d			;7c98
	ld (de),a			;7c99
	ld a,(bc)			;7c9a
	ld d,013h		;7c9b
	dec b			;7c9d
l7c9eh:
	rla			;7c9e
	ld (de),a			;7c9f
	rlca			;7ca0
	sub d			;7ca1
l7ca2h:
	ld b,01ah		;7ca2
	ld (bc),a			;7ca4
	ld a,(bc)			;7ca5
	ex af,af'			;7ca6
	ld hl,l1405h+1		;7ca7
	ld d,d			;7caa
	ld (de),a			;7cab
	jr l7cafh		;7cac
	ret z			;7cae
l7cafh:
	ld bc,0810fh		;7caf
	ex af,af'			;7cb2
	inc b			;7cb3
	ld (bc),a			;7cb4
	rrca			;7cb5
	ld (l0a06h),hl		;7cb6
	ld (de),a			;7cb9
	inc d			;7cba
	ld d,017h		;7cbb
	jr l7cc0h		;7cbd
	inc d			;7cbf
l7cc0h:
	add a,c			;7cc0
	ex af,af'			;7cc1
	dec b			;7cc2
	inc bc			;7cc3
	rrca			;7cc4
	rlca			;7cc5
	ld b,d			;7cc6
	ld e,008h		;7cc7
	ld bc,001c8h		;7cc9
	ld de,l0721h		;7ccc
	inc d			;7ccf
	ld (de),a			;7cd0
	jr l7c65h		;7cd1
	ld b,01ah		;7cd3
	ld b,003h		;7cd5
	inc d			;7cd7
	add hl,bc			;7cd8
	ld bc,08110h		;7cd9
	ex af,af'			;7cdc
	dec b			;7cdd
	inc bc			;7cde
	add hl,bc			;7cdf
	rlca			;7ce0
	ld (bc),a			;7ce1
	ld c,022h		;7ce2
	ld b,00ah		;7ce4
	ld d,d			;7ce6
	inc d			;7ce7
	jr l7cebh		;7ce8
	ret z			;7cea
l7cebh:
	ld bc,l210dh		;7ceb
	inc b			;7cee
	inc d			;7cef
	ld (de),a			;7cf0
	ld (de),a			;7cf1
	sub d			;7cf2
	ld b,01ah		;7cf3
	ld (bc),a			;7cf5
	inc d			;7cf6
sub_7cf7h:
	ld b,003h		;7cf7
	ld a,(bc)			;7cf9
	rlca			;7cfa
	ld (bc),a			;7cfb
	inc d			;7cfc
	ex af,af'			;7cfd
	ld hl,l1405h+1		;7cfe
	ld (de),a			;7d01
	djnz $+22		;7d02
	inc de			;7d04
	ld a,(bc)			;7d05
	rla			;7d06
	ld d,d			;7d07
	inc d			;7d08
	jr l7d0ch		;7d09
	ret z			;7d0b
l7d0ch:
	ld bc,l2105h		;7d0c
	dec b			;7d0f
	inc d			;7d10
	ld (de),a			;7d11
	rlca			;7d12
	sub d			;7d13
	ld b,01ah		;7d14
	ld (bc),a			;7d16
	inc b			;7d17
	ld (l0a06h),hl		;7d18
	jr l7c9eh		;7d1b
	ld b,004h		;7d1d
	ld (bc),a			;7d1f
	dec b			;7d20
	ld b,003h		;7d21
	dec b			;7d23
	rlca			;7d24
	ld (bc),a			;7d25
	inc b			;7d26
	ld (l0a06h),hl		;7d27
	ld (de),a			;7d2a
	rlca			;7d2b
	jr l7d2fh		;7d2c
	inc b			;7d2e
l7d2fh:
	ld hl,01504h		;7d2f
	inc de			;7d32
	inc b			;7d33
	rla			;7d34
	ld (de),a			;7d35
	inc b			;7d36
	sub d			;7d37
	ld b,01ah		;7d38
	ld b,d			;7d3a
	inc d			;7d3b
	ld b,009h		;7d3c
	ld bc,001c8h		;7d3e
	ld a,(bc)			;7d41
	ld hl,01505h		;7d42
	inc de			;7d45
	dec b			;7d46
	rla			;7d47
l7d48h:
	ld (de),a			;7d48
	ld a,(bc)			;7d49
	sub d			;7d4a
	ld b,01ah		;7d4b
	ld (bc),a			;7d4d
	dec b			;7d4e
	ld b,003h		;7d4f
	dec b			;7d51
	add hl,bc			;7d52
	ld bc,08105h		;7d53
	inc b			;7d56
	inc b			;7d57
	ld (bc),a			;7d58
	ld a,(bc)			;7d59
	ld b,003h		;7d5a
	dec b			;7d5c
	rlca			;7d5d
	ld (bc),a			;7d5e
	rlca			;7d5f
	ld (l0a06h),hl		;7d60
	ld (de),a			;7d63
	ld a,(bc)			;7d64
	jr l7d88h		;7d65
	ld b,014h		;7d67
	ld d,d			;7d69
	ld (de),a			;7d6a
	jr l7d6eh		;7d6b
	ret z			;7d6d
l7d6eh:
	ld bc,0810ah		;7d6e
	inc b			;7d71
	inc b			;7d72
	ld (bc),a			;7d73
l7d74h:
	ld a,(bc)			;7d74
	ld b,003h		;7d75
	ld a,(bc)			;7d77
	add hl,bc			;7d78
	ld bc,l210ah		;7d79
	inc b			;7d7c
	inc d			;7d7d
	ld (de),a			;7d7e
	ld de,08118h		;7d7f
	ld b,004h		;7d82
	ld (bc),a			;7d84
	inc c			;7d85
	ld b,003h		;7d86
l7d88h:
	dec bc			;7d88
	rlca			;7d89
	ld b,d			;7d8a
	inc d			;7d8b
	ld b,003h		;7d8c
	ld a,(bc)			;7d8e
	add hl,bc			;7d8f
	ld bc,001c8h		;7d90
	ld de,sub_067fh+2		;7d93
	inc b			;7d96
	ld (bc),a			;7d97
	rrca			;7d98
	ld b,003h		;7d99
	ld a,(bc)			;7d9b
	rlca			;7d9c
	ld (bc),a			;7d9d
	inc b			;7d9e
	ld (l0a06h),hl		;7d9f
	ld (de),a			;7da2
	rlca			;7da3
	sub d			;7da4
	ld b,01ah		;7da5
	ld (bc),a			;7da7
	rrca			;7da8
	ex af,af'			;7da9
	ld bc,l210ch		;7daa
	dec b			;7dad
	dec d			;7dae
	inc de			;7daf
	add hl,bc			;7db0
	rla			;7db1
	ld d,d			;7db2
	inc d			;7db3
	ld d,013h		;7db4
	ld a,(bc)			;7db6
	add hl,de			;7db7
	ld bc,001c8h		;7db8
	ld a,(bc)			;7dbb
	add a,c			;7dbc
	ld b,005h		;7dbd
	inc bc			;7dbf
	rrca			;7dc0
	rlca			;7dc1
	ld (bc),a			;7dc2
	rrca			;7dc3
l7dc4h:
	ld b,003h		;7dc4
l7dc6h:
	dec b			;7dc6
	add hl,bc			;7dc7
	ld hl,l1405h		;7dc8
	ld (de),a			;7dcb
	ex af,af'			;7dcc
	ld a,(de)			;7dcd
	ld (bc),a			;7dce
	ld a,(bc)			;7dcf
	ex af,af'			;7dd0
	ld bc,l210bh		;7dd1
	inc b			;7dd4
	inc d			;7dd5
	ld (de),a			;7dd6
	add hl,bc			;7dd7
	ld d,053h		;7dd8
	ld e,019h		;7dda
	ld bc,001c8h		;7ddc
	ld a,(bc)			;7ddf
	add a,c			;7de0
	dec b			;7de1
	dec b			;7de2
	inc bc			;7de3
	ld a,(bc)			;7de4
	rlca			;7de5
	ld (bc),a			;7de6
	ld a,(bc)			;7de7
	ld (l0a06h),hl		;7de8
	ld (de),a			;7deb
	dec b			;7dec
	ld d,013h		;7ded
	dec b			;7def
	add hl,de			;7df0
	ld bc,l2108h		;7df1
	inc b			;7df4
	inc d			;7df5
	ld (de),a			;7df6
	ld a,(bc)			;7df7
l7df8h:
	ld d,013h		;7df8
	dec b			;7dfa
	rla			;7dfb
	ld (de),a			;7dfc
	rlca			;7dfd
	sub d			;7dfe
	ld b,01ah		;7dff
	ld (bc),a			;7e01
	ld a,(bc)			;7e02
	ex af,af'			;7e03
	ld hl,l1405h+1		;7e04
	ld d,d			;7e07
	ld (de),a			;7e08
	jr l7e0ch		;7e09
	ret z			;7e0b
l7e0ch:
	ld bc,l2112h		;7e0c
	ld b,014h		;7e0f
	ld (de),a			;7e11
	ld c,016h		;7e12
	inc de			;7e14
	ld a,(bc)			;7e15
	rla			;7e16
	ld (de),a			;7e17
	inc b			;7e18
	sub d			;7e19
	ld b,01ah		;7e1a
	ld (bc),a			;7e1c
	inc b			;7e1d
	ld (l0a06h),hl		;7e1e
	ld (de),a			;7e21
	rrca			;7e22
	jr $+1		;7e23
	ld c,081h		;7e25
	dec b			;7e27
	dec b			;7e28
	inc bc			;7e29
	add hl,bc			;7e2a
	rlca			;7e2b
	ld b,d			;7e2c
	inc d			;7e2d
	ld b,003h		;7e2e
	ld a,(bc)			;7e30
	add hl,bc			;7e31
	ld bc,001c8h		;7e32
	dec b			;7e35
	ld hl,l1405h		;7e36
	ld (de),a			;7e39
	rlca			;7e3a
	sub d			;7e3b
	ld b,01ah		;7e3c
	ld (bc),a			;7e3e
	inc b			;7e3f
	ld (l0a06h),hl		;7e40
	jr l7dc6h		;7e43
	ld b,004h		;7e45
	ld (bc),a			;7e47
	dec b			;7e48
	ld b,003h		;7e49
	dec b			;7e4b
	rlca			;7e4c
	ld (bc),a			;7e4d
	inc b			;7e4e
	ld (l0a06h),hl		;7e4f
	ld (de),a			;7e52
	rlca			;7e53
	jr l7e57h		;7e54
	inc b			;7e56
l7e57h:
	ld hl,01504h		;7e57
	inc de			;7e5a
	inc b			;7e5b
	rla			;7e5c
	ld (de),a			;7e5d
	inc b			;7e5e
	sub d			;7e5f
	ld b,01ah		;7e60
	ld b,d			;7e62
	inc d			;7e63
	ld b,009h		;7e64
	ld bc,001c8h		;7e66
	ld a,(bc)			;7e69
	ld hl,01505h		;7e6a
	inc de			;7e6d
	dec b			;7e6e
	rla			;7e6f
	ld (de),a			;7e70
	ld a,(bc)			;7e71
	sub d			;7e72
	ld b,01ah		;7e73
	ld (bc),a			;7e75
	dec b			;7e76
	ld b,003h		;7e77
	dec b			;7e79
	add hl,bc			;7e7a
	ld bc,08105h		;7e7b
	inc b			;7e7e
	inc b			;7e7f
	ld (bc),a			;7e80
	ld a,(bc)			;7e81
	ld b,003h		;7e82
	dec b			;7e84
	rlca			;7e85
	ld (bc),a			;7e86
	rlca			;7e87
	ld (l0a06h),hl		;7e88
	ld (de),a			;7e8b
	ld a,(bc)			;7e8c
	jr l7eb0h		;7e8d
	ld b,014h		;7e8f
	ld d,d			;7e91
	ld (de),a			;7e92
	jr l7e96h		;7e93
	ret z			;7e95
l7e96h:
	ld bc,l210ah		;7e96
	ld b,015h		;7e99
	inc de			;7e9b
	ld b,017h		;7e9c
	ld (de),a			;7e9e
	ld a,(bc)			;7e9f
	ld d,013h		;7ea0
	dec b			;7ea2
	add hl,de			;7ea3
	add a,c			;7ea4
	dec b			;7ea5
	inc b			;7ea6
	ld (bc),a			;7ea7
	dec b			;7ea8
	ld a,(bc)			;7ea9
	ld (de),a			;7eaa
	dec b			;7eab
	jr l7eafh		;7eac
	ld a,(bc)			;7eae
l7eafh:
	add a,c			;7eaf
l7eb0h:
	inc b			;7eb0
	inc b			;7eb1
	ld (bc),a			;7eb2
	dec b			;7eb3
	ld b,043h		;7eb4
	ld e,009h		;7eb6
	ld bc,001c8h		;7eb8
	ld a,(bc)			;7ebb
	add a,c			;7ebc
	inc b			;7ebd
	dec b			;7ebe
	inc bc			;7ebf
	add hl,bc			;7ec0
	rlca			;7ec1
l7ec2h:
	ld (bc),a			;7ec2
	ex af,af'			;7ec3
	ld b,003h		;7ec4
	add hl,bc			;7ec6
	rlca			;7ec7
	ld (bc),a			;7ec8
	ex af,af'			;7ec9
	ld (l0a06h),hl		;7eca
	ld (de),a			;7ecd
	ex af,af'			;7ece
	ld d,013h		;7ecf
	dec b			;7ed1
	add hl,de			;7ed2
	ld bc,l2105h		;7ed3
	dec b			;7ed6
	inc d			;7ed7
	ld (de),a			;7ed8
	dec b			;7ed9
	sub d			;7eda
	ld b,01ah		;7edb
	ld (bc),a			;7edd
	ld a,(bc)			;7ede
	ex af,af'			;7edf
	add a,c			;7ee0
	ld b,004h		;7ee1
	ld b,d			;7ee3
	ld (de),a			;7ee4
	ld b,009h		;7ee5
	ld bc,001c8h		;7ee7
	dec b			;7eea
	add a,c			;7eeb
	dec b			;7eec
	inc b			;7eed
	ld (bc),a			;7eee
	rlca			;7eef
	ld (l0a06h),hl		;7ef0
	ld (de),a			;7ef3
	dec b			;7ef4
	sub d			;7ef5
	ld b,01ah		;7ef6
	ex af,af'			;7ef8
	ld hl,l1405h+1		;7ef9
	ld (de),a			;7efc
	dec b			;7efd
sub_7efeh:
	ld d,013h		;7efe
l7f00h:
	dec b			;7f00
	rla			;7f01
	ld (de),a			;7f02
	inc b			;7f03
	sub d			;7f04
	ld b,01ah		;7f05
	ld (bc),a			;7f07
	rlca			;7f08
	ex af,af'			;7f09
	ld bc,08104h		;7f0a
	inc b			;7f0d
	dec b			;7f0e
	inc bc			;7f0f
	inc b			;7f10
	rlca			;7f11
	ld (bc),a			;7f12
	inc b			;7f13
	ld (l0a06h),hl		;7f14
	ld d,d			;7f17
	inc d			;7f18
	ld d,019h		;7f19
	ld bc,l31c8h		;7f1b
	nop			;7f1e
	call nz,sub_0021h		;7f1f
	ret nz			;7f22
	ld de,0c001h		;7f23
	ld bc,l03ffh+1		;7f26
	ld (hl),000h		;7f29
	ldir		;7f2b
	call sub_4131h		;7f2d
	call sub_07feh		;7f30
	ld a,002h		;7f33
	out (0bfh),a		;7f35
	ld a,080h		;7f37
	out (0bfh),a		;7f39
	ld a,0e2h		;7f3b
	out (0bfh),a		;7f3d
l7f3fh:
	ld a,081h		;7f3f
	out (0bfh),a		;7f41
	ld a,08ah		;7f43
	ld (0c100h),a		;7f45
l7f48h:
	ei			;7f48
	rst 8			;7f49
	jp l7f48h		;7f4a
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
l7f80h:
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
l7faah:
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
	ld c,b			;7feb
	ld l,04fh		;7fec
	jr nz,$+83		;7fee
	ld b,l			;7ff0
	ld d,b			;7ff1
	ld l,020h		;7ff2
	ld sp,02031h		;7ff4
	ld sp,l3839h		;7ff7
	dec (hl)			;7ffa
	jr nz,sub_7fffh		;7ffb
	dec b			;7ffd
	nop			;7ffe
sub_7fffh:
	inc a			;7fff
