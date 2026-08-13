sub_1806h_bound_check:
	ld bc,(0c08eh)		;1806
	ld de,(0c090h)		;180a
	ld a,(0c082h)		;180e
	cp c			;1811
	jr z,l1818h		;1812
	jr nc,l1824h		;1814
	jr l1838h		;1816
l1818h:
	call sub_classify_zone		;1818
	ld hl,l1769h		;181b
	ld e,a			;181e
	ld d,000h		;181f
	add hl,de			;1821
	ld e,(hl)			;1822
	ret			;1823
l1824h:
	cp b			;1824
	jr z,l182ch		;1825
	jr c,l182ch		;1827
	xor a			;1829
	jr l182fh		;182a
l182ch:
	call sub_classify_zone		;182c
l182fh:
	ld e,a			;182f
	ld d,000h		;1830
	ld hl,l176dh		;1832
	add hl,de			;1835
	ld e,(hl)			;1836
	ret			;1837
l1838h:
	ld a,(0c083h)		;1838
	cp c			;183b
	jr z,l1843h		;183c
	jr nc,l184fh		;183e
	xor a			;1840
	jr l1846h		;1841
l1843h:
	call sub_classify_zone		;1843
l1846h:
	ld e,a			;1846
	ld d,000h		;1847
	ld hl,l1771h		;1849
	add hl,de			;184c
	ld e,(hl)			;184d
	ret			;184e
l184fh:
	cp b			;184f
	jr c,l1843h		;1850
	jr l182ch		;1852
