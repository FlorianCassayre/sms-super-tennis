sub_vdp_build_sprite_buffer:
	ld hl,0c140h		; 21 40 c1 ;0a10
	exx			; d9 ;0a13
	ld hl,0c100h		; 21 00 c1 ;0a14
	ld c,033h		; 0e 33 ;0a17
	ld b,020h		; 06 20 ;0a19
	exx			; d9 ;0a1b
	xor a			; af ;0a1c
	ld (0c492h),a		; 32 92 c4 ;0a1d
	ld b,003h		; 06 03 ;0a20
	ld de,GUI_GAME_SETTINGS		; 11 47 c0 ;0a22
-:
	push bc			; c5 ;0a25
	ld a,(GUI_CURSOR_Y)		; 3a 91 c4 ;0a26
	ld b,a			; 47 ;0a29
	ld a,(0c492h)		; 3a 92 c4 ;0a2a
	cp b			; b8 ;0a2d
	jr nz,+		; 20 0a ;0a2e
	ld a,(0c496h)		; 3a 96 c4 ;0a30
	and 01fh		; e6 1f ;0a33
	cp 00fh		; fe 0f ;0a35
	jp c,++		; da 45 0a ;0a37
+:
	ld c,028h		; 0e 28 ;0a3a
	ld b,084h		; 06 84 ;0a3c
	ld a,(de)			; 1a ;0a3e
	call sub_mul_a_c_add_b		; cd a5 0a ;0a3f
	call sub_0a85h_sprite_offset		; cd 85 0a ;0a42
++:
	exx			; d9 ;0a45
	ld a,c			; 79 ;0a46
	add a,b			; 80 ;0a47
	ld c,a			; 4f ;0a48
	exx			; d9 ;0a49
	inc de			; 13 ;0a4a
	ld a,(0c492h)		; 3a 92 c4 ;0a4b
	inc a			; 3c ;0a4e
	ld (0c492h),a		; 32 92 c4 ;0a4f
	pop bc			; c1 ;0a52
	djnz -		; 10 d0 ;0a53
	ld a,(0c491h)		; 3a 91 c4 ;0a55
	ld b,a			; 47 ;0a58
	ld a,(0c492h)		; 3a 92 c4 ;0a59
	cp b			; b8 ;0a5c
	jr nz,+		; 20 0a ;0a5d
	ld a,(0c496h)		; 3a 96 c4 ;0a5f
	and 01fh		; e6 1f ;0a62
	cp 00fh		; fe 0f ;0a64
	jp c,++		; da 78 0a ;0a66
+:
	ld c,020h		; 0e 20 ;0a69
	ld b,03ch		; 06 3c ;0a6b
	ld a,(de)			; 1a ;0a6d
	call sub_mul_a_c_add_b		; cd a5 0a ;0a6e
	exx			; d9 ;0a71
	ld c,09bh		; 0e 9b ;0a72
	exx			; d9 ;0a74
	call sub_0a85h_sprite_offset		; cd 85 0a ;0a75
++:
	ld a,0d0h		; 3e d0 ;0a78
	ld (hl),a			; 77 ;0a7a
	exx			; d9 ;0a7b
	ld (hl),a			; 77 ;0a7c
	exx			; d9 ;0a7d
	ld hl,0c089h		; 21 89 c0 ;0a7e
	set 7,(hl)		; cb fe ;0a81
	ei			; fb ;0a83
	ret			; c9 ;0a84
