sub_2320h_ball:
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
