sub_vdp_build_sprite_buffer:
	ld hl,0c140h		;0a10
	exx			;0a13
	ld hl,0c100h		;0a14
	ld c,033h		;0a17
	ld b,020h		;0a19
	exx			;0a1b
	xor a			;0a1c
	ld (0c492h),a		;0a1d
	ld b,003h		;0a20
	ld de,game_settings		;0a22
-:
	push bc			;0a25
	ld a,(gui.cursor_y)		;0a26
	ld b,a			;0a29
	ld a,(0c492h)		;0a2a
	cp b			;0a2d
	jr nz,+		;0a2e
	ld a,(0c496h)		;0a30
	and 01fh		;0a33
	cp 00fh		;0a35
	jp c,++		;0a37
+:
	ld c,028h		;0a3a
	ld b,084h		;0a3c
	ld a,(de)			;0a3e
	call sub_mul_a_c_add_b		;0a3f
	call sub_graphics_sprite_apply_xy_offset		;0a42
++:
	exx			;0a45
	ld a,c			;0a46
	add a,b			;0a47
	ld c,a			;0a48
	exx			;0a49
	inc de			;0a4a
	ld a,(0c492h)		;0a4b
	inc a			;0a4e
	ld (0c492h),a		;0a4f
	pop bc			;0a52
	djnz -		;0a53
	ld a,(0c491h)		;0a55
	ld b,a			;0a58
	ld a,(0c492h)		;0a59
	cp b			;0a5c
	jr nz,+		;0a5d
	ld a,(0c496h)		;0a5f
	and 01fh		;0a62
	cp 00fh		;0a64
	jp c,++		;0a66
+:
	ld c,020h		;0a69
	ld b,03ch		;0a6b
	ld a,(de)			;0a6d
	call sub_mul_a_c_add_b		;0a6e
	exx			;0a71
	ld c,09bh		;0a72
	exx			;0a74
	call sub_graphics_sprite_apply_xy_offset		;0a75
++:
	ld a,0d0h		;0a78
	ld (hl),a			;0a7a
	exx			;0a7b
	ld (hl),a			;0a7c
	exx			;0a7d
	ld hl,game.sound_wait_flag		;0a7e
	set 7,(hl)		;0a81
	ei			;0a83
	ret			;0a84
