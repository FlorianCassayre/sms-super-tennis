sub_player_ball_collision:
	ld a,(0c000h)		; 3a 00 c0 ;1878
	rrca			; 0f ;187b
	ret nc			; d0 ;187c
	ld hl,l19cbh		; 21 cb 19 ;187d
	ld ix,0c300h		; dd 21 00 c3 ;1880
	call sub_17f1h_aabb		; cd f1 17 ;1884
	ld (0c082h),bc		; ed 43 82 c0 ;1887
	ld (0c084h),de		; ed 53 84 c0 ;188b
	ld a,(0c312h)		; 3a 12 c3 ;188f
	rrca			; 0f ;1892
	jr c,+		; 38 0a ;1893
	ld iy,PLAYER_BOTTOM		; fd 21 00 c2 ;1895
	ld ix,PLAYER_TOP		; dd 21 80 c2 ;1899
	jr ++		; 18 08 ;189d
+:
	ld iy,0c240h		; fd 21 40 c2 ;189f
	ld ix,0c2c0h		; dd 21 c0 c2 ;18a3
++:
	ld a,(0c000h)		; 3a 00 c0 ;18a7
	rlca			; 07 ;18aa
	jr nc,+		; 30 04 ;18ab
	call sub_racket_hit_trajectory		; cd b5 18 ;18ad
	ret c			; d8 ;18b0
+:
	push iy		; fd e5 ;18b1
	pop ix		; dd e1 ;18b3
sub_racket_hit_trajectory:
	bit 7,(ix+019h)		; dd cb 19 7e ;18b5
	jp z,l1967h		; ca 67 19 ;18b9
	ld a,(0c040h)		; 3a 40 c0 ;18bc
	rlca			; 07 ;18bf
	jp nc,l1967h		; d2 67 19 ;18c0
	ld hl,019dbh		; 21 db 19 ;18c3
	ld a,(ix+01eh)		; dd 7e 1e ;18c6
	call 017ebh		; cd eb 17 ;18c9
	ld (0c08eh),bc		; ed 43 8e c0 ;18cc
	ld (0c090h),de		; ed 53 90 c0 ;18d0
	call sub_1806h_bound_check		; cd 06 18 ;18d4
	ld a,e			; 7b ;18d7
	or a			; b7 ;18d8
	jp z,l1967h		; ca 67 19 ;18d9
	ld hl,01a1dh		; 21 1d 1a ;18dc
	ld a,(ix+01eh)		; dd 7e 1e ;18df
	add a,a			; 87 ;18e2
	ld e,a			; 5f ;18e3
	ld d,000h		; 16 00 ;18e4
	add hl,de			; 19 ;18e6
	ld a,(ix+00bh)		; dd 7e 0b ;18e7
	add a,(hl)			; 86 ;18ea
	ld b,a			; 47 ;18eb
	inc hl			; 23 ;18ec
	add a,(hl)			; 86 ;18ed
	ld c,a			; 4f ;18ee
	ld a,(0c34bh)		; 3a 4b c3 ;18ef
	cp c			; b9 ;18f2
	jp c,l1967h		; da 67 19 ;18f3
	inc hl			; 23 ;18f6
	cp b			; b8 ;18f7
	jp nc,l1967h		; d2 67 19 ;18f8
	ld hl,0c040h		; 21 40 c0 ;18fb
	bit 0,(hl)		; cb 46 ;18fe
	jr z,+++		; 28 4f ;1900
	ld bc,01a3fh		; 01 3f 1a ;1902
	ld a,(0c000h)		; 3a 00 c0 ;1905
	bit 7,a		; cb 7f ;1908
	jr z,+		; 28 09 ;190a
	ld a,(0c044h)		; 3a 44 c0 ;190c
	or a			; b7 ;190f
	jr z,+		; 28 03 ;1910
	ld bc,l1a4fh		; 01 4f 1a ;1912
+:
	ld a,(0c041h)		; 3a 41 c0 ;1915
	add a,a			; 87 ;1918
	add a,a			; 87 ;1919
	ld e,a			; 5f ;191a
	ld d,000h		; 16 00 ;191b
	ld h,d			; 62 ;191d
	ld l,(ix+001h)		; dd 6e 01 ;191e
	add hl,de			; 19 ;1921
	add hl,bc			; 09 ;1922
	ld a,(hl)			; 7e ;1923
	or a			; b7 ;1924
	jp z,+++		; ca 51 19 ;1925
	dec a			; 3d ;1928
	jp z,l1967h		; ca 67 19 ;1929
	ld hl,0c040h		; 21 40 c0 ;192c
	res 0,(hl)		; cb 86 ;192f
	dec a			; 3d ;1931
	jr z,+		; 28 0d ;1932
	ld a,(0c519h)		; 3a 19 c5 ;1934
	or a			; b7 ;1937
	jr z,++		; 28 0d ;1938
	cp 002h		; fe 02 ;193a
	jr z,++		; 28 09 ;193c
	jp l1967h		; c3 67 19 ;193e
+:
	ld a,(0c519h)		; 3a 19 c5 ;1941
	or a			; b7 ;1944
	jr nz,+++		; 20 0a ;1945
++:
	ld a,004h		; 3e 04 ;1947
	ld (0c518h),a		; 32 18 c5 ;1949
	ld hl,0c000h		; 21 00 c0 ;194c
	res 0,(hl)		; cb 86 ;194f
+++:
	set 7,(ix+01dh)		; dd cb 1d fe ;1951
	xor a			; af ;1955
	ld (0c303h),a		; 32 03 c3 ;1956
	ld (BALL_STATE),a		; 32 17 c5 ;1959
	ld (0c519h),a		; 32 19 c5 ;195c
	ld a,(ix+001h)		; dd 7e 01 ;195f
	ld (0c042h),a		; 32 42 c0 ;1962
	scf			; 37 ;1965
	ret			; c9 ;1966
