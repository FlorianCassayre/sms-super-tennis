sub_23ffh:
	bit 1,(ix+001h)		; dd cb 01 4e ;23ff
	ld hl,entities.player.1.bottom.type		; 21 02 c2 ;2403
	ld e,004h		; 1e 04 ;2406
	jr nz,l240fh		; 20 05 ;2408
	ld hl,entities.player.2.bottom.type		; 21 82 c2 ;240a
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
	.DB $01		;2458
	.DB $0c		;2459
	.DB $05		;245a
	.DB $04		;245b
	.DB $05		;245c
	.DB $00		;245d
	.DB $05		;245e
	.DB $04		;245f
	.DB $05		;2460
	.DB $00		;2461
	.DB $01		;2462
	.DB $08		;2463
	.DB $05		;2464
	.DB $00		;2465
	.DB $01		;2466
	.DB $04		;2467
	.DB $01		;2468
	.DB $0c		;2469
	.DB $01		;246a
	.DB $08		;246b
	.DB $00		;246c
	.DB $88		;246d
	.DB $00		;246e
	.DB $60		;246f
	.DB $00		;2470
	.DB $88		;2471
	.DB $00		;2472
	.DB $a0		;2473
	.DB $00		;2474
	.DB $b0		;2475
	.DB $00		;2476
	.DB $60		;2477
	.DB $00		;2478
	.DB $b0		;2479
	.DB $00		;247a
	.DB $a0		;247b
