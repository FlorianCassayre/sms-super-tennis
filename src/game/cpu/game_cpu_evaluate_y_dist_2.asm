sub_game_cpu_evaluate_y_dist_2:
	ld a,(0c518h)		; 3a 18 c5 ;23aa
	and a			; a7 ;23ad
	ld b,000h		; 06 00 ;23ae
	jr nz,l23fbh		; 20 49 ;23b0
	ld a,(0c519h)		; 3a 19 c5 ;23b2
	and a			; a7 ;23b5
	jr nz,l23beh		; 20 06 ;23b6
	ld a,(0c51dh)		; 3a 1d c5 ;23b8
	and a			; a7 ;23bb
	jr nz,l23fbh		; 20 3d ;23bc
l23beh:
	ld a,(0c30bh)		; 3a 0b c3 ;23be
	ld e,a			; 5f ;23c1
	ld a,(ix+00bh)		; dd 7e 0b ;23c2
	sub e			; 93 ;23c5
	jr nc,l23cah		; 30 02 ;23c6
	neg		; ed 44 ;23c8
l23cah:
	ld b,a			; 47 ;23ca
	ld a,(ix+02eh)		; dd 7e 2e ;23cb
	ld e,a			; 5f ;23ce
	ld c,010h		; 0e 10 ;23cf
	cp 001h		; fe 01 ;23d1
	ld a,b			; 78 ;23d3
	ld b,000h		; 06 00 ;23d4
	jr c,l23dah		; 38 02 ;23d6
	ld c,018h		; 0e 18 ;23d8
l23dah:
	cp c			; b9 ;23da
	jr nc,l23fbh		; 30 1e ;23db
	ld b,001h		; 06 01 ;23dd
	ld a,e			; 7b ;23df
	cp 006h		; fe 06 ;23e0
	jr c,l23fbh		; 38 17 ;23e2
	ld a,(0c401h)		; 3a 01 c4 ;23e4
	cp 01ah		; fe 1a ;23e7
	jr nz,l23f3h		; 20 08 ;23e9
	ld a,r		; ed 5f ;23eb
	cp 03fh		; fe 3f ;23ed
	ld b,002h		; 06 02 ;23ef
	jr nc,l23fbh		; 30 08 ;23f1
l23f3h:
	ld a,r		; ed 5f ;23f3
	cp 030h		; fe 30 ;23f5
	jr c,l23fbh		; 38 02 ;23f7
	ld b,001h		; 06 01 ;23f9
l23fbh:
	ld (ix+018h),b		; dd 70 18 ;23fb
	ret			; c9 ;23fe
