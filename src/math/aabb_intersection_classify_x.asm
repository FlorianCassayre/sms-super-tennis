sub_aabb_intersection_classify_x:
	ld a,(state.aabb_1.x_min)		;1854
	cp e			;1857
	jr z,l186fh		;1858
	jr c,l1863h		;185a
	cp d			;185c
	jr z,l1875h		;185d
	jr c,l1875h		;185f
	jr l186dh		;1861
l1863h:
	ld a,(state.aabb_1.x_max)		;1863
	cp e			;1866
	jr z,l1872h		;1867
	jr nc,l1872h		;1869
	jr l186dh		;186b
l186dh:
	xor a			;186d
	ret			;186e
l186fh:
	ld a,001h		;186f
	ret			;1871
l1872h:
	ld a,002h		;1872
	ret			;1874
l1875h:
	ld a,003h		;1875
	ret			;1877
