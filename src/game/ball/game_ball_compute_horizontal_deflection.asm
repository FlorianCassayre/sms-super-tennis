sub_game_ball_compute_horizontal_deflection:
	ld a,e			;160a
l160bh:
	sub 018h		;160b
	jr nc,+		;160d
	ld a,000h		;160f
+:
	ld e,a			;1611
	ld d,000h		;1612
	ld hl,0d0e8h		;1614
	add hl,de			;1617
	ld a,(hl)			;1618
	ld (0c51ah),a		;1619
	ld a,(ball.y_pos + 1)		;161c
	sub (hl)			;161f
	jr nc,+		;1620
	neg		;1622
+:
	ld d,a			;1624
	ld e,000h		;1625
	ld bc,(ball.y_vel)		;1627
	bit 7,b		;162b
	jr z,+		;162d
	xor a			;162f
	ld hl,0		;1630
	sbc hl,bc		;1633
	push hl			;1635
	pop bc			;1636
+:
	ld hl,0		;1637
	call sub_div_hl_de_bc		;163a
	ld b,e			;163d
	ld c,h			;163e
	ld de,(ball.x_vel)		;163f
	push de			;1643
	bit 7,d		;1644
	jr z,+		;1646
	xor a			;1648
	ld hl,0		;1649
	sbc hl,de		;164c
	ex de,hl			;164e
+:
	call sub_mul_de_bc		;164f
	ld d,e			;1652
	ld e,h			;1653
	pop hl			;1654
	bit 7,h		;1655
	jr z,+		;1657
	xor a			;1659
	ld hl,0		;165a
	sbc hl,de		;165d
	ex de,hl			;165f
+:
	ld hl,(ball.x_pos)		;1660
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
	jr nc,+		;1684
	xor a			;1686
	ex de,hl			;1687
	ld hl,0		;1688
	sbc hl,de		;168b
+:
	push hl			;168d
	exx			;168e
	pop bc			;168f
	call sub_mul_de_bc		;1690
	pop af			;1693
	ld d,e			;1694
	ld e,h			;1695
	ld hl,08000h		;1696
	jr nc,+		;1699
	xor a			;169b
	adc hl,de		;169c
	jr c,+++		;169e
	jr ++		;16a0
+:
	xor a			;16a2
	sbc hl,de		;16a3
	jr c,++++		;16a5
++:
	ld a,h			;16a7
	ret			;16a8
+++:
	ld a,0ffh		;16a9
	ret			;16ab
++++:
	ld a,000h		;16ac
	ret			;16ae
