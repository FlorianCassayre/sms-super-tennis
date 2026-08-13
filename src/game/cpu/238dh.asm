sub_238dh:
	ld a,(iy+02fh)		;238d
	cp 004h		;2390
	ld hl,0a000h		;2392
	jr c,l239ah		;2395
	ld hl,05000h		;2397
l239ah:
	bit 0,(ix+001h)		;239a
	ld de,04c00h		;239e
	jr nz,l23a6h		;23a1
	ld de,08800h		;23a3
l23a6h:
	call sub_221eh_collision_broad		;23a6
	ret			;23a9
