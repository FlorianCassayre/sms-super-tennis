sub_menu_update_ball_out_of_bounds:
	ld a,(0c518h)		; 3a 18 c5 ;0e04
	or a			; b7 ;0e07
	ret nz			; c0 ;0e08
	ld a,(0c040h)		; 3a 40 c0 ;0e09
	bit 0,a		; cb 47 ;0e0c
	jr z,l0e3bh		; 28 2b ;0e0e
	ld a,(0c041h)		; 3a 41 c0 ;0e10
	add a,a			; 87 ;0e13
	ld e,a			; 5f ;0e14
	add a,a			; 87 ;0e15
	add a,e			; 83 ;0e16
	ld e,a			; 5f ;0e17
	ld d,000h		; 16 00 ;0e18
	ld hl,l0dd0h		; 21 d0 0d ;0e1a
	add hl,de			; 19 ;0e1d
	ld a,(0c509h)		; 3a 09 c5 ;0e1e
	cp (hl)			; be ;0e21
	jr c,l0e6fh		; 38 4b ;0e22
	inc hl			; 23 ;0e24
	cp (hl)			; be ;0e25
	jr nc,l0e6fh		; 30 47 ;0e26
	inc hl			; 23 ;0e28
	ld a,(0c044h)		; 3a 44 c0 ;0e29
	add a,a			; 87 ;0e2c
	ld e,a			; 5f ;0e2d
	add hl,de			; 19 ;0e2e
	ld a,(0c50bh)		; 3a 0b c5 ;0e2f
	cp (hl)			; be ;0e32
	jr c,l0e6fh		; 38 3a ;0e33
	inc hl			; 23 ;0e35
	cp (hl)			; be ;0e36
	jr c,l0e67h		; 38 2e ;0e37
	jr l0e6fh		; 18 34 ;0e39
l0e3bh:
	ld a,(0c042h)		; 3a 42 c0 ;0e3b
	add a,a			; 87 ;0e3e
	ld e,a			; 5f ;0e3f
	add a,a			; 87 ;0e40
	add a,e			; 83 ;0e41
	ld e,a			; 5f ;0e42
	ld d,000h		; 16 00 ;0e43
	ld hl,l0de8h		; 21 e8 0d ;0e45
	add hl,de			; 19 ;0e48
	ld a,(0c509h)		; 3a 09 c5 ;0e49
	cp (hl)			; be ;0e4c
	jr c,l0e6bh		; 38 1c ;0e4d
	inc hl			; 23 ;0e4f
	cp (hl)			; be ;0e50
	jr nc,l0e6bh		; 30 18 ;0e51
	inc hl			; 23 ;0e53
	ld a,(0c000h)		; 3a 00 c0 ;0e54
	bit 7,a		; cb 7f ;0e57
	jr z,l0e5dh		; 28 02 ;0e59
	inc hl			; 23 ;0e5b
	inc hl			; 23 ;0e5c
l0e5dh:
	ld a,(0c50bh)		; 3a 0b c5 ;0e5d
	cp (hl)			; be ;0e60
	jr c,l0e6bh		; 38 08 ;0e61
	inc hl			; 23 ;0e63
	cp (hl)			; be ;0e64
	jr nc,l0e6bh		; 30 04 ;0e65
l0e67h:
	ld a,002h		; 3e 02 ;0e67
	jr l0e7bh		; 18 10 ;0e69
l0e6bh:
	ld a,001h		; 3e 01 ;0e6b
	jr l0e71h		; 18 02 ;0e6d
l0e6fh:
	ld a,003h		; 3e 03 ;0e6f
l0e71h:
	ld hl,0c000h		; 21 00 c0 ;0e71
	res 0,(hl)		; cb 86 ;0e74
	ld hl,0c518h		; 21 18 c5 ;0e76
	ld (hl),002h		; 36 02 ;0e79
l0e7bh:
	ld (0c519h),a		; 32 19 c5 ;0e7b
	ret			; c9 ;0e7e
