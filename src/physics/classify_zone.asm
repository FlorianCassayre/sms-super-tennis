sub_classify_zone:
	ld a,(0c084h)		; 3a 84 c0 ;1854
	cp e			; bb ;1857
	jr z,l186fh		; 28 15 ;1858
	jr c,l1863h		; 38 07 ;185a
	cp d			; ba ;185c
	jr z,l1875h		; 28 16 ;185d
	jr c,l1875h		; 38 14 ;185f
	jr l186dh		; 18 0a ;1861
l1863h:
	ld a,(0c085h)		; 3a 85 c0 ;1863
	cp e			; bb ;1866
	jr z,l1872h		; 28 09 ;1867
	jr nc,l1872h		; 30 07 ;1869
	jr l186dh		; 18 00 ;186b
l186dh:
	xor a			; af ;186d
	ret			; c9 ;186e
l186fh:
	ld a,001h		; 3e 01 ;186f
	ret			; c9 ;1871
l1872h:
	ld a,002h		; 3e 02 ;1872
	ret			; c9 ;1874
l1875h:
	ld a,003h		; 3e 03 ;1875
	ret			; c9 ;1877
