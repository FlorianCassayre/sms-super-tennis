sub_aabb_intersection:
	ld bc,(state.aabb_2.y_min)
	ld de,(state.aabb_2.x_min)
	ld a,(state.aabb_1.y_min)
	cp c
	jr z,l1818h
	jr nc,l1824h
	jr l1838h
l1818h:
	call sub_aabb_intersection_classify_x
	ld hl,aabb_intersection_type_1
	ld e,a
	ld d,000h
	add hl,de
	ld e,(hl)
	ret
l1824h:
	cp b
	jr z,l182ch
	jr c,l182ch
	xor a
	jr l182fh
l182ch:
	call sub_aabb_intersection_classify_x
l182fh:
	ld e,a
	ld d,000h
	ld hl,aabb_intersection_type_2
	add hl,de
	ld e,(hl)
	ret
l1838h:
	ld a,(state.aabb_1.y_max)
	cp c
	jr z,l1843h
	jr nc,l184fh
	xor a
	jr l1846h
l1843h:
	call sub_aabb_intersection_classify_x
l1846h:
	ld e,a
	ld d,000h
	ld hl,aabb_intersection_type_3
	add hl,de
	ld e,(hl)
	ret
l184fh:
	cp b
	jr c,l1843h
	jr l182ch
