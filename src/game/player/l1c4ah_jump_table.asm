l1c4ah_jump_table:
	.DW l1c56h		;1c4a
	.DW l1cf7h		;1c4c
	.DW l1d27h		;1c4e
	.DW l1c9ch		;1c50
	.DW sub_1d89h		;1c52
	.DW l1d57h		;1c54
l1c56h:
	ld a,(ix+028h)		; dd 7e 28 ;1c56
	and 003h		; e6 03 ;1c59
	jr z,l1c64h		; 28 07 ;1c5b
	ld (ix+025h),002h		; dd 36 25 02 ;1c5d
	jp l1d27h		; c3 27 1d ;1c61
l1c64h:
	ld a,(ix + player_t.input_dirs)		; dd 7e 15 ;1c64
	and a			; a7 ;1c67
	jr nz,l1c95h		; 20 2b ;1c68
	ld a,(ix+027h)		; dd 7e 27 ;1c6a
	and a			; a7 ;1c6d
	jr z,l1c78h		; 28 08 ;1c6e
	bit 7,a		; cb 7f ;1c70
	jr nz,l1c95h		; 20 21 ;1c72
	set 7,(ix+027h)		; dd cb 27 fe ;1c74
l1c78h:
	ld a,(ix+023h)		; dd 7e 23 ;1c78
	and a			; a7 ;1c7b
	jr nz,l1c92h		; 20 14 ;1c7c
	ld (ix+022h),000h		; dd 36 22 00 ;1c7e
	ld (ix+023h),0ffh		; dd 36 23 ff ;1c82
	call sub_game_racket_update_hitbox		; cd bf 2b ;1c86
	ld a,(ix+016h)		; dd 7e 16 ;1c89
	ld (ix+017h),a		; dd 77 17 ;1c8c
	ld (ix + player_t.render_facing_dir),a		; dd 77 20 ;1c8f
l1c92h:
	jp sub_game_player_update_animation		; c3 69 2a ;1c92
l1c95h:
	ld (ix+025h),001h		; dd 36 25 01 ;1c95
	jp l1cf7h		; c3 f7 1c ;1c99
l1c9ch:
	ld a,(ix+028h)		; dd 7e 28 ;1c9c
	and 003h		; e6 03 ;1c9f
	jr z,l1caah		; 28 07 ;1ca1
	ld (ix+025h),004h		; dd 36 25 04 ;1ca3
	jp sub_1d89h		; c3 89 1d ;1ca7
l1caah:
	ld a,(ix+015h)		; dd 7e 15 ;1caa
	ld c,a			; 4f ;1cad
	and 00ch		; e6 0c ;1cae
	jr nz,l1ccdh		; 20 1b ;1cb0
	ld a,(ix+027h)		; dd 7e 27 ;1cb2
	and a			; a7 ;1cb5
	jr z,l1cc6h		; 28 0e ;1cb6
	push bc			; c5 ;1cb8
	call sub_game_racket_update_hitbox		; cd bf 2b ;1cb9
	pop bc			; c1 ;1cbc
	ld a,(ix+016h)		; dd 7e 16 ;1cbd
	ld b,(ix+017h)		; dd 46 17 ;1cc0
	cp b			; b8 ;1cc3
	jr nz,l1cf0h		; 20 2a ;1cc4
l1cc6h:
	ld a,c			; 79 ;1cc6
	and 003h		; e6 03 ;1cc7
	jr z,l1ceah		; 28 1f ;1cc9
	jr l1cdch		; 18 0f ;1ccb
l1ccdh:
	call sub_game_racket_update_hitbox		; cd bf 2b ;1ccd
	ld a,(ix+016h)		; dd 7e 16 ;1cd0
	ld b,(ix+017h)		; dd 46 17 ;1cd3
	cp b			; b8 ;1cd6
	jr nz,l1cf0h		; 20 17 ;1cd7
	ld (ix+020h),a		; dd 77 20 ;1cd9
l1cdch:
	ld a,(ix+023h)		; dd 7e 23 ;1cdc
	and a			; a7 ;1cdf
	jr nz,l1ceah		; 20 08 ;1ce0
	ld (ix+022h),002h		; dd 36 22 02 ;1ce2
	ld (ix+023h),0ffh		; dd 36 23 ff ;1ce6
l1ceah:
	call sub_game_player_apply_movement		; cd a1 26 ;1cea
	jp sub_game_player_update_animation		; c3 69 2a ;1ced
l1cf0h:
	ld (ix+025h),005h		; dd 36 25 05 ;1cf0
	jp l1d57h		; c3 57 1d ;1cf4
l1cf7h:
	ld a,(ix+025h)		; dd 7e 25 ;1cf7
	bit 7,a		; cb 7f ;1cfa
	jr nz,l1d17h		; 20 19 ;1cfc
	set 7,a		; cb ff ;1cfe
l1d00h:
	ld (ix+025h),a		; dd 77 25 ;1d00
	ld (ix+022h),00ah		; dd 36 22 0a ;1d03
	ld (ix+023h),0ffh		; dd 36 23 ff ;1d07
	call sub_game_racket_update_hitbox		; cd bf 2b ;1d0b
	ld a,(ix+016h)		; dd 7e 16 ;1d0e
	ld (ix+017h),a		; dd 77 17 ;1d11
	ld (ix+020h),a		; dd 77 20 ;1d14
l1d17h:
	call sub_game_player_apply_movement		; cd a1 26 ;1d17
	call sub_game_player_update_animation		; cd 69 2a ;1d1a
	ld a,(ix+023h)		; dd 7e 23 ;1d1d
	and a			; a7 ;1d20
	ret nz			; c0 ;1d21
	ld (ix+025h),003h		; dd 36 25 03 ;1d22
	ret			; c9 ;1d26
l1d27h:
	ld a,(ix+025h)		; dd 7e 25 ;1d27
	bit 7,a		; cb 7f ;1d2a
	jr nz,l1d47h		; 20 19 ;1d2c
	set 7,a		; cb ff ;1d2e
	ld (ix+025h),a		; dd 77 25 ;1d30
	ld (ix+022h),00ah		; dd 36 22 0a ;1d33
	ld (ix+023h),0ffh		; dd 36 23 ff ;1d37
	call sub_game_racket_update_hitbox		; cd bf 2b ;1d3b
	ld a,(ix+016h)		; dd 7e 16 ;1d3e
	ld (ix+017h),a		; dd 77 17 ;1d41
	ld (ix+020h),a		; dd 77 20 ;1d44
l1d47h:
	call sub_game_player_apply_movement		; cd a1 26 ;1d47
	call sub_game_player_update_animation		; cd 69 2a ;1d4a
	ld a,(ix+023h)		; dd 7e 23 ;1d4d
	and a			; a7 ;1d50
	ret nz			; c0 ;1d51
	ld (ix+025h),004h		; dd 36 25 04 ;1d52
	ret			; c9 ;1d56
l1d57h:
	ld a,(ix+025h)		; dd 7e 25 ;1d57
	bit 7,a		; cb 7f ;1d5a
	jr nz,l1d73h		; 20 15 ;1d5c
	set 7,(ix+025h)		; dd cb 25 fe ;1d5e
	call sub_game_racket_update_hitbox		; cd bf 2b ;1d62
	ld a,(ix+016h)		; dd 7e 16 ;1d65
	ld (ix+020h),a		; dd 77 20 ;1d68
	ld (ix+022h),00bh		; dd 36 22 0b ;1d6b
	ld (ix+023h),0ffh		; dd 36 23 ff ;1d6f
l1d73h:
	call sub_game_player_apply_movement		; cd a1 26 ;1d73
	call sub_game_player_update_animation		; cd 69 2a ;1d76
	ld a,(ix+023h)		; dd 7e 23 ;1d79
	and a			; a7 ;1d7c
	ret nz			; c0 ;1d7d
	ld a,(ix+016h)		; dd 7e 16 ;1d7e
	ld (ix+017h),a		; dd 77 17 ;1d81
	ld (ix+025h),003h		; dd 36 25 03 ;1d84
	ret			; c9 ;1d88
