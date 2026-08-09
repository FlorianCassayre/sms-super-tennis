sub_2298h_collision:
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
	jr nc,+		; 30 05 ;22bf
	call sub_neg_hl		; cd 19 23 ;22c1
	ld b,004h		; 06 04 ;22c4
+:
	ld a,b			; 78 ;22c6
	ld de,01000h		; 11 00 10 ;22c7
	cp 004h		; fe 04 ;22ca
	jr z,+		; 28 03 ;22cc
	ld de,l1800h		; 11 00 18 ;22ce
+:
	xor a			; af ;22d1
	sbc hl,de		; ed 52 ;22d2
	jr z,++		; 28 1d ;22d4
	jr nc,l22f5h		; 30 1d ;22d6
	call sub_neg_hl		; cd 19 23 ;22d8
	ld a,h			; 7c ;22db
	cp 004h		; fe 04 ;22dc
	jr c,++		; 38 13 ;22de
	ld a,c			; 79 ;22e0
	bit 2,b		; cb 50 ;22e1
	jr nz,+		; 20 03 ;22e3
	neg		; ed 44 ;22e5
	ld d,a			; 57 ;22e7
+:
	exx			; d9 ;22e8
	push hl			; e5 ;22e9
	exx			; d9 ;22ea
	pop hl			; e1 ;22eb
	add hl,de			; 19 ;22ec
	ld (ix+00ch),l		; dd 75 0c ;22ed
	ld (ix+00dh),h		; dd 74 0d ;22f0
++:
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
	jr c,+		; 38 05 ;2304
	ld c,002h		; 0e 02 ;2306
	call sub_neg_hl		; cd 19 23 ;2308
+:
	ld de,00800h		; 11 00 08 ;230b
	xor a			; af ;230e
	sbc hl,de		; ed 52 ;230f
	jr nc,+		; 30 02 ;2311
	ld c,000h		; 0e 00 ;2313
+:
	xor a			; af ;2315
	or c			; b1 ;2316
	or b			; b0 ;2317
	ret			; c9 ;2318
