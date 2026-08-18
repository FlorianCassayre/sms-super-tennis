sub_aabb_intersection_classify_x:
	ld a,(state.aabb_1.x_min)
	cp e
	jr z,l186fh
	jr c,l1863h
	cp d
	jr z,l1875h
	jr c,l1875h
	jr l186dh
l1863h:
	ld a,(state.aabb_1.x_max)
	cp e
	jr z,l1872h
	jr nc,l1872h
	jr l186dh
l186dh:
	xor a
	ret
l186fh:
	ld a,001h
	ret
l1872h:
	ld a,002h
	ret
l1875h:
	ld a,003h
	ret
