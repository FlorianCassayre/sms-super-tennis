sub_game_player_update_animation:
	ld a,(ix+023h)		; dd 7e 23 ;2a69
	and a			; a7 ;2a6c
	ret z			; c8 ;2a6d
	ld a,(ix+022h)		; dd 7e 22 ;2a6e
	bit 7,a		; cb 7f ;2a71
	jr nz,+++		; 20 6a ;2a73
	set 7,(ix+022h)		; dd cb 22 fe ;2a75
	ld e,a			; 5f ;2a79
	ld a,(ix + player_t.side_state)		; dd 7e 01 ;2a7a
	ld c,a			; 4f ;2a7d
	and 001h		; e6 01 ;2a7e
	ld b,000h		; 06 00 ;2a80
	jr z,+		; 28 04 ;2a82
	ld b,018h		; 06 18 ;2a84
	jr ++		; 18 07 ;2a86
+:
	ld a,c			; 79 ;2a88
	and 002h		; e6 02 ;2a89
	jr z,++		; 28 02 ;2a8b
	ld b,00ch		; 06 0c ;2a8d
++:
	ld a,(ix + player_t.render_facing_dir)		; dd 7e 20 ;2a8f
	and 001h		; e6 01 ;2a92
	jr z,+		; 28 02 ;2a94
	ld a,024h		; 3e 24 ;2a96
+:
	add a,e			; 83 ;2a98
	add a,b			; 80 ;2a99
	add a,a			; 87 ;2a9a
	ld e,a			; 5f ;2a9b
	ld d,000h		; 16 00 ;2a9c
	ld hl,data_animation_attributes		; 21 2f 2b ;2a9e
	add hl,de			; 19 ;2aa1
	ld e,(hl)			; 5e ;2aa2
	inc hl			; 23 ;2aa3
	ld d,(hl)			; 56 ;2aa4
	ex de,hl			; eb ;2aa5
	ld a,(hl)			; 7e ;2aa6
	ld (ix+009h),a		; dd 77 09 ;2aa7
	inc hl			; 23 ;2aaa
	ld e,(hl)			; 5e ;2aab
	ld a,(0c04ah)		; 3a 4a c0 ;2aac
	rra			; 1f ;2aaf
	and 003h		; e6 03 ;2ab0
	ld d,a			; 57 ;2ab2
	ld a,e			; 7b ;2ab3
	sub d			; 92 ;2ab4
	ld (ix+019h),a		; dd 77 19 ;2ab5
	inc hl			; 23 ;2ab8
	ld a,(hl)			; 7e ;2ab9
	ld (ix+01ah),a		; dd 77 1a ;2aba
	inc hl			; 23 ;2abd
	ld a,(hl)			; 7e ;2abe
	ld (ix+01bh),a		; dd 77 1b ;2abf
	inc hl			; 23 ;2ac2
	ld a,(hl)			; 7e ;2ac3
	ld (ix+01eh),a		; dd 77 1e ;2ac4
	inc hl			; 23 ;2ac7
	ld (ix+02bh),l		; dd 75 2b ;2ac8
	ld (ix+02ch),h		; dd 74 2c ;2acb
	ld a,(hl)			; 7e ;2ace
	ld (ix+004h),a		; dd 77 04 ;2acf
	inc hl			; 23 ;2ad2
	ld a,(hl)			; 7e ;2ad3
	sub d			; 92 ;2ad4
	jr z,+		; 28 02 ;2ad5
	jr nc,++		; 30 02 ;2ad7
+:
	ld a,001h		; 3e 01 ;2ad9
++:
	ld (ix+008h),a		; dd 77 08 ;2adb
	ret			; c9 ;2ade
+++:
	bit 7,(ix+019h)		; dd cb 19 7e ;2adf
	jr z,+		; 28 0a ;2ae3
	ld a,(ix+01ah)		; dd 7e 1a ;2ae5
	sub 001h		; d6 01 ;2ae8
	jr c,++		; 38 06 ;2aea
	ld (ix+01ah),a		; dd 77 1a ;2aec
+:
	dec (ix+019h)		; dd 35 19 ;2aef
++:
	dec (ix+008h)		; dd 35 08 ;2af2
	ret nz			; c0 ;2af5
	dec (ix+009h)		; dd 35 09 ;2af6
	jr nz,+		; 20 05 ;2af9
	ld (ix+023h),000h		; dd 36 23 00 ;2afb
	ret			; c9 ;2aff
+:
	ld l,(ix+02bh)		; dd 6e 2b ;2b00
	ld h,(ix+02ch)		; dd 66 2c ;2b03
	inc hl			; 23 ;2b06
	inc hl			; 23 ;2b07
	ld (ix+02bh),l		; dd 75 2b ;2b08
	ld (ix+02ch),h		; dd 74 2c ;2b0b
	ld a,(hl)			; 7e ;2b0e
	ld (ix+004h),a		; dd 77 04 ;2b0f
	inc hl			; 23 ;2b12
	ld a,(hl)			; 7e ;2b13
	ld e,a			; 5f ;2b14
	ld a,(0c04ah)		; 3a 4a c0 ;2b15
	rra			; 1f ;2b18
	and 003h		; e6 03 ;2b19
	ld d,a			; 57 ;2b1b
	ld a,e			; 7b ;2b1c
	sub d			; 92 ;2b1d
	jr z,+		; 28 02 ;2b1e
	jr nc,++		; 30 02 ;2b20
+:
	ld a,001h		; 3e 01 ;2b22
++:
	ld (ix+008h),a		; dd 77 08 ;2b24
	ld a,(ix+019h)		; dd 7e 19 ;2b27
	sub d			; 92 ;2b2a
	ld (ix+019h),a		; dd 77 19 ;2b2b
	ret			; c9 ;2b2e
