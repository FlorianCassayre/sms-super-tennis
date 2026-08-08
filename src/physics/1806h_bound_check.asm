sub_1806h_bound_check:
	ld bc,(0c08eh)		; ed 4b 8e c0 ;1806
	ld de,(0c090h)		; ed 5b 90 c0 ;180a
	ld a,(0c082h)		; 3a 82 c0 ;180e
	cp c			; b9 ;1811
	jr z,l1818h		; 28 04 ;1812
	jr nc,l1824h		; 30 0e ;1814
	jr l1838h		; 18 20 ;1816
l1818h:
	call sub_classify_zone		; cd 54 18 ;1818
	ld hl,l1769h		; 21 69 17 ;181b
	ld e,a			; 5f ;181e
	ld d,000h		; 16 00 ;181f
	add hl,de			; 19 ;1821
	ld e,(hl)			; 5e ;1822
	ret			; c9 ;1823
l1824h:
	cp b			; b8 ;1824
	jr z,l182ch		; 28 05 ;1825
	jr c,l182ch		; 38 03 ;1827
	xor a			; af ;1829
	jr l182fh		; 18 03 ;182a
l182ch:
	call sub_classify_zone		; cd 54 18 ;182c
l182fh:
	ld e,a			; 5f ;182f
	ld d,000h		; 16 00 ;1830
	ld hl,l176dh		; 21 6d 17 ;1832
	add hl,de			; 19 ;1835
	ld e,(hl)			; 5e ;1836
	ret			; c9 ;1837
l1838h:
	ld a,(0c083h)		; 3a 83 c0 ;1838
	cp c			; b9 ;183b
	jr z,l1843h		; 28 05 ;183c
	jr nc,l184fh		; 30 0f ;183e
	xor a			; af ;1840
	jr l1846h		; 18 03 ;1841
l1843h:
	call sub_classify_zone		; cd 54 18 ;1843
l1846h:
	ld e,a			; 5f ;1846
	ld d,000h		; 16 00 ;1847
	ld hl,l1771h		; 21 71 17 ;1849
	add hl,de			; 19 ;184c
	ld e,(hl)			; 5e ;184d
	ret			; c9 ;184e
l184fh:
	cp b			; b8 ;184f
	jr c,l1843h		; 38 f1 ;1850
	jr l182ch		; 18 d8 ;1852
