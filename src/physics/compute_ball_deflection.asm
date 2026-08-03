sub_compute_ball_deflection:
	ld a,e			; 7b ;160a
l160bh:
	sub 018h		; d6 18 ;160b
	jr nc,+		; 30 02 ;160d
	ld a,000h		; 3e 00 ;160f
+:
	ld e,a			; 5f ;1611
	ld d,000h		; 16 00 ;1612
	ld hl,0d0e8h		; 21 e8 d0 ;1614
	add hl,de			; 19 ;1617
	ld a,(hl)			; 7e ;1618
	ld (0c51ah),a		; 32 1a c5 ;1619
	ld a,(0c509h)		; 3a 09 c5 ;161c
	sub (hl)			; 96 ;161f
	jr nc,+		; 30 02 ;1620
	neg		; ed 44 ;1622
+:
	ld d,a			; 57 ;1624
	ld e,000h		; 1e 00 ;1625
	ld bc,(VEL_X)		; ed 4b 0c c5 ;1627
	bit 7,b		; cb 78 ;162b
	jr z,+		; 28 08 ;162d
	xor a			; af ;162f
	ld hl,0		; 21 00 00 ;1630
	sbc hl,bc		; ed 42 ;1633
	push hl			; e5 ;1635
	pop bc			; c1 ;1636
+:
	ld hl,0		; 21 00 00 ;1637
	call sub_div_hl_de_bc		; cd 0b 04 ;163a
	ld b,e			; 43 ;163d
	ld c,h			; 4c ;163e
	ld de,(VEL_Z)		; ed 5b 0e c5 ;163f
	push de			; d5 ;1643
	bit 7,d		; cb 7a ;1644
	jr z,+		; 28 07 ;1646
	xor a			; af ;1648
	ld hl,0		; 21 00 00 ;1649
	sbc hl,de		; ed 52 ;164c
	ex de,hl			; eb ;164e
+:
	call sub_mul_de_bc		; cd f7 03 ;164f
	ld d,e			; 53 ;1652
	ld e,h			; 5c ;1653
	pop hl			; e1 ;1654
	bit 7,h		; cb 7c ;1655
	jr z,+		; 28 07 ;1657
	xor a			; af ;1659
	ld hl,0		; 21 00 00 ;165a
	sbc hl,de		; ed 52 ;165d
	ex de,hl			; eb ;165f
+:
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
	jr nc,+		; 30 07 ;1684
	xor a			; af ;1686
	ex de,hl			; eb ;1687
	ld hl,0		; 21 00 00 ;1688
	sbc hl,de		; ed 52 ;168b
+:
	push hl			; e5 ;168d
	exx			; d9 ;168e
	pop bc			; c1 ;168f
	call sub_mul_de_bc		; cd f7 03 ;1690
	pop af			; f1 ;1693
	ld d,e			; 53 ;1694
	ld e,h			; 5c ;1695
	ld hl,08000h		; 21 00 80 ;1696
	jr nc,+		; 30 07 ;1699
	xor a			; af ;169b
	adc hl,de		; ed 5a ;169c
	jr c,+++		; 38 09 ;169e
	jr ++		; 18 05 ;16a0
+:
	xor a			; af ;16a2
	sbc hl,de		; ed 52 ;16a3
	jr c,++++		; 38 05 ;16a5
++:
	ld a,h			; 7c ;16a7
	ret			; c9 ;16a8
+++:
	ld a,0ffh		; 3e ff ;16a9
	ret			; c9 ;16ab
++++:
	ld a,000h		; 3e 00 ;16ac
	ret			; c9 ;16ae
