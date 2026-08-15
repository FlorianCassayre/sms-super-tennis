sub_game_cpu_evaluate_y_dist_2:
	ld a,(0c518h)		;23aa
	and a			;23ad
	ld b,000h		;23ae
	jr nz,l23fbh		;23b0
	ld a,(0c519h)		;23b2
	and a			;23b5
	jr nz,l23beh		;23b6
	ld a,(0c51dh)		;23b8
	and a			;23bb
	jr nz,l23fbh		;23bc
l23beh:
	ld a,(entities.ball.y_pos + 1)		;23be
	ld e,a			;23c1
	ld a,(ix+00bh)		;23c2
	sub e			;23c5
	jr nc,l23cah		;23c6
	neg		;23c8
l23cah:
	ld b,a			;23ca
	ld a,(ix+02eh)		;23cb
	ld e,a			;23ce
	ld c,010h		;23cf
	cp 001h		;23d1
	ld a,b			;23d3
	ld b,000h		;23d4
	jr c,l23dah		;23d6
	ld c,018h		;23d8
l23dah:
	cp c			;23da
	jr nc,l23fbh		;23db
	ld b,001h		;23dd
	ld a,e			;23df
	cp 006h		;23e0
	jr c,l23fbh		;23e2
	ld a,(0c401h)		;23e4
	cp 01ah		;23e7
	jr nz,l23f3h		;23e9
	ld a,r		;23eb
	cp 03fh		;23ed
	ld b,002h		;23ef
	jr nc,l23fbh		;23f1
l23f3h:
	ld a,r		;23f3
	cp 030h		;23f5
	jr c,l23fbh		;23f7
	ld b,001h		;23f9
l23fbh:
	ld (ix+018h),b		;23fb
	ret			;23fe
