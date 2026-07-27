sub_render_sprites:
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
	jr nz,+		; 20 02 ;056e
	ld a,0d8h		; 3e d8 ;0570
+:
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
	jr z,+		; 28 06 ;0580
	add a,c			; 81 ;0582
	ld (hl),a			; 77 ;0583
	jr c,+++		; 38 0a ;0584
	jr ++		; 18 04 ;0586
+:
	add a,c			; 81 ;0588
	ld (hl),a			; 77 ;0589
	jr nc,+++		; 30 04 ;058a
++:
	exx			; d9 ;058c
	ld (hl),0d8h		; 36 d8 ;058d
	exx			; d9 ;058f
+++:
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
